import yaml
import os
import sys

#sys.argv[1] = a directory to start the search
#sys.argv[2] = string to search for in filename
#sys.argv[3] = sclk freq
#sys.argv[4] = 0 is for legacy, 1 is for MFMA

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

# def calculatePeak(filename,frequency):
#     cuMap = {"arcturus":120,"vega10":64,"vega20":64}
#     for key in cuMap:
#         if key in filename:
#             numCu = cuMap[key]
#             print("numCu: ",numCu)
#     typeMap = {"H":4,"S":2,"D":1}
#     mfmaMap = {"H":4,"S":2,"D":1}
#     for key in typeMap:
#         if key in filename:
#             multiplier = typeMap[key]
#             if "arcturus" in filename:
#                 multiplier = multiplier*mfmaMap[key]
#             print("multiplier: ",multiplier)
#     peakGflops = 64*multiplier*numCu*frequency/1000
#     print("peakGFlops:",peakGflops) 
#     return peakGflops
	
def getArchPeakGFlopsBase(arch,frequency):
    cuMap = {"arcturus":120,"vega10":64,"vega20":64}
	numCu = cuMap[arch]    
	peakGflops = 64*numCu*frequency/1000	
	print("numCu: ",numCu)
    print("arch PeakGFlops Base:",peakGflops) 
    return peakGflops	
	
def getDataTypeMultiplier(dataType):
    # BF is not supported in non-MFMA, for MFMA, treat it the same as H 
    typeMap = {"H":4,"BF":4,"S":2,"D":1}
	multiplier = typeMap[dataType] if dataType in typeMap else 1
	print("type multiplier: ",multiplier)
	return multiplier
	
def getMFMAMultiplier(arch,isMFMA,dataType):
    mfmaMap = {"H":4,"BF":2,"S":1}
	multiplier = mfmaMap[dataType] if arch == 'arcturus' and isMFMA and dataType in mfmaMap else 1
    print("mfma multiplier: ",multiplier)
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
		
files = allFiles(sys.argv[1])
architect = sys.argv[2]
isForMFMA = sys.argv[4]
peakGFlopsBase = getArchPeakGFlopsBase(architect, sys.argv[3])

for f in files:
    if architect in f:
        print(f)
        with open(f) as y:
            data = yaml.safe_load(y)
			dataType = getDataType(data[4]['DataType'])
			typeMult = getDataTypeMultiplier(dataType)
			mfmaMult = getMFMAMultiplier(architect, isForMFMA, dataType)
			peakGFlops = peakGFlopsBase*typeMult*mfmaMult
			print("PeakGFlops:",peakGflops) 
            for i in range(0,len(data[7])):
                data[7][i][1][1] = round(100*data[7][i][1][1]/peakGFlops,3)
                print(data[7][i][1][1])
        with open(f, "w") as y:
            yaml.safe_dump(data,y,default_flow_style=None)
			
# for f in files:
#     if sys.argv[2] in f:
#         print(f)
#         with open(f) as y:
#             data = yaml.safe_load(y)
#             for i in range(0,len(data[7])):
#                 data[7][i][1][1] = round(100*data[7][i][1][1]/calculatePeak(f,int(sys.argv[3])),3)
#                 print(data[7][i][1][1])
#         with open(f, "w") as y:
#             yaml.safe_dump(data,y,default_flow_style=None)
