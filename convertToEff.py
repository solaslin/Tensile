import yaml
import os
import sys

#sys.argv[1] = a directory to start the search
#sys.argv[2] = a directory for output
#sys.argv[3] = string to search for in filename (architecture)
#sys.argv[4] = sclk freq

def ensurePath(path):
  if not os.path.exists(path):
    os.makedirs(path)
  return path

def allFiles(startDir):
    current = os.listdir(startDir)
    files = []
    for filename in current:
        fullPath = os.path.join(startDir,filename)
        if os.path.isdir(fullPath):
            files = files + allFiles(fullPath)
        else:
            files.append(fullPath)
    return files

def getArchPeakGFlopsBase(archName,frequency):
    cuMap = {"arcturus":120,"vega10":64,"vega20":64}
    numCu = cuMap[archName]
    peakGflops = 64*numCu*frequency/1000
    print("Num Cu: ",numCu)
    # print("Arch PeakGFlops: {:f}. (Will multiply Type/MFMA scalar) ".format(peakGflops))
    return peakGflops

def getMultiplier(archName,isMFMA,dataType):
    typeMap = {"H":4,"S":2,"D":1}       # BF is not supported
    mfmaMap = {"H":16,"BF":8,"S":4}     # D is not supported
    multiplier = mfmaMap[dataType] if isMFMA else typeMap[dataType]
    return multiplier

def getDataType(typeValue):
    if typeValue == 0:
        return "S"
    if typeValue == 1:
        return "D"
    if typeValue == 4:
        return "H"
    if typeValue == 7:
        return "BF"

print('Convert for Architecture: {:s} with SCLK = {:s}MHz'.format(sys.argv[3], sys.argv[4]) )

startFolder = sys.argv[1]
outFolder = ensurePath(sys.argv[2])
arch = sys.argv[3]
peakGFlopsBase = getArchPeakGFlopsBase(arch, int(sys.argv[4]))

files = allFiles(startFolder)
for f in files:
    if arch in f:
        print(f)
        with open(f) as y:
            data = yaml.safe_load(y)
            dataType = getDataType(data[4]['DataType'])
            for i in range(0,len(data[7])):
                # get the kernel ID of this problem
                kernelID = data[7][i][1][0]
                # check if this kernel is MFMA (since it's possible that one merged yaml is mixed with mfma and legacy)
                isForMFMA = ('EnableMatrixInstruction' in data[5][kernelID]) and (data[5][kernelID]['EnableMatrixInstruction'] == True)
                multiplier = getMultiplier(arch, isForMFMA, dataType)
                peakGFlops = peakGFlopsBase*multiplier
                # print("PeakGFlops:",peakGFlops) 
                data[7][i][1][1] = round(100*data[7][i][1][1]/peakGFlops,3)
                if data[7][i][1][1] > 100:
                    print("Efficiency {:f} exceeds 100, please check kernel {:d}:".format(data[7][i][1][1], kernelID))  
                # print(data[7][i][1][1])
        # setup output folder
        relativePath = os.path.relpath(f,startFolder)
        outFullpath = os.path.join(outFolder,relativePath)
        ensurePath(os.path.dirname(outFullpath))        
        with open(outFullpath, "w") as y:
            yaml.safe_dump(data,y,default_flow_style=None)