

/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureCOV3
.amdgcn_target "amdgcn-amd-amdhsa--gfx908+sram-ecc"
.text
.protected Cijk_Ailk_Bjlk_BBH_MT64x64x32_MI32x32x4x1_SE_K1
.globl Cijk_Ailk_Bjlk_BBH_MT64x64x32_MI32x32x4x1_SE_K1
.p2align 8
.type Cijk_Ailk_Bjlk_BBH_MT64x64x32_MI32x32x4x1_SE_K1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cijk_Ailk_Bjlk_BBH_MT64x64x32_MI32x32x4x1_SE_K1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_next_free_vgpr 64 // vgprs
  .amdhsa_next_free_sgpr 68 // sgprs
  .amdhsa_group_segment_fixed_size 16384 // lds bytes
  .amdhsa_private_segment_fixed_size 0
  .amdhsa_system_sgpr_workgroup_id_x 1
  .amdhsa_system_sgpr_workgroup_id_y 1
  .amdhsa_system_sgpr_workgroup_id_z 1
  .amdhsa_system_vgpr_workitem_id 0
.end_amdhsa_kernel
.text

/******************************************/
/* Optimizations and Config:              */
/******************************************/
/* ThreadTile= 16 x 1 */
/* SubGroup= 4 x 64 */
/* VectorWidth=2 */
/* GlobalLoadVectorWidthA=8, GlobalLoadVectorWidthB=8 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=False */
.amdgpu_metadata
---
amdhsa.version:
  - 1
  - 0
amdhsa.kernels:
  - .name: Cijk_Ailk_Bjlk_BBH_MT64x64x32_MI32x32x4x1_SE_K1
    .symbol: 'Cijk_Ailk_Bjlk_BBH_MT64x64x32_MI32x32x4x1_SE_K1.kd'
    .language:                   OpenCL C
    .language_version:
      - 2
      - 0
    .args:
      - .name:            sizeC
        .size:            8
        .offset:          0
        .value_kind:      by_value
        .value_type:      u64
      - .name:            sizeA
        .size:            8
        .offset:          8
        .value_kind:      by_value
        .value_type:      u64
      - .name:            sizeB
        .size:            8
        .offset:          16
        .value_kind:      by_value
        .value_type:      u64
      - .name:            D
        .size:            8
        .offset:          24
        .value_kind:      global_buffer
        .value_type:      struct
        .address_space:   generic
      - .name:            C
        .size:            8
        .offset:          32
        .value_kind:      global_buffer
        .value_type:      struct
        .address_space:   generic
      - .name:            A
        .size:            8
        .offset:          40
        .value_kind:      global_buffer
        .value_type:      struct
        .address_space:   generic
      - .name:            B
        .size:            8
        .offset:          48
        .value_kind:      global_buffer
        .value_type:      struct
        .address_space:   generic
      - .name:            alpha
        .size:            4
        .offset:          56
        .value_kind:      by_value
        .value_type:      f32
      - .name:            beta
        .size:            4
        .offset:          60
        .value_kind:      by_value
        .value_type:      f32
      - .name:            strideD0
        .size:            4
        .offset:          64
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideD1
        .size:            4
        .offset:          68
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC0
        .size:            4
        .offset:          72
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC1
        .size:            4
        .offset:          76
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA0
        .size:            4
        .offset:          80
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA1
        .size:            4
        .offset:          84
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB0
        .size:            4
        .offset:          88
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB1
        .size:            4
        .offset:          92
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree0
        .size:            4
        .offset:          96
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree1
        .size:            4
        .offset:          100
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree2
        .size:            4
        .offset:          104
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesSum0
        .size:            4
        .offset:          108
        .value_kind:      by_value
        .value_type:      u32
      - .name:            OrigStaggerUIter
        .size:            4
        .offset:          112
        .value_kind:      by_value
        .value_type:      i32
      - .name:            NumWorkGroups0
        .size:            4
        .offset:          116
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumWorkGroups1
        .size:            4
        .offset:          120
        .value_kind:      by_value
        .value_type:      u32
      - .name:            MagicNumberProblemNumGroupTiles0
        .size:            4
        .offset:          124
        .value_kind:      by_value
        .value_type:      u32
      - .name:            GridNumWorkGroups0
        .size:            4
        .offset:          128
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumFullBlocks
        .size:            4
        .offset:          132
        .value_kind:      by_value
        .value_type:      u32
      - .name:            WgmRemainder1
        .size:            4
        .offset:          136
        .value_kind:      by_value
        .value_type:      u32
      - .name:            MagicNumberWgmRemainder1
        .size:            4
        .offset:          140
        .value_kind:      by_value
        .value_type:      u32
      - .name:            padding
        .size:            4
        .offset:          144
        .value_kind:      by_value
        .value_type:      u32
    .group_segment_fixed_size:   16384
    .kernarg_segment_align:      8
    .kernarg_segment_size:       152
    .max_flat_workgroup_size:    256
    .private_segment_fixed_size: 0
    .sgpr_count:                 68
    .sgpr_spill_count:           0
    .vgpr_count:                 64
    .vgpr_spill_count:           0
    .wavefront_size:             64
...
.end_amdgpu_metadata
Cijk_Ailk_Bjlk_BBH_MT64x64x32_MI32x32x4x1_SE_K1:

/******************************************/
/* Asm syntax workarounds                 */
/******************************************/
.macro _v_add_co_u32 dst:req, cc:req, src0:req, src1:req, dpp=
   v_add_co_u32 \dst, \cc, \src0, \src1 \dpp
.endm

.macro _v_add_u32 dst:req, src0:req, src1:req, dpp=
   v_add_u32 \dst, \src0, \src1 \dpp
.endm

.macro _v_sub_co_u32 dst:req, cc:req, src0:req, src1:req, dpp=
   v_sub_co_u32 \dst, \cc, \src0, \src1 \dpp
.endm

.macro _v_sub_u32 dst:req, src0:req, src1:req, dpp=
   v_sub_u32 \dst, \src0, \src1 \dpp
.endm

.macro _v_addc_co_u32 dst:req, ccOut:req, src0:req, ccIn:req, src1:req, dpp=
   v_addc_co_u32 \dst, \ccOut, \src0, \ccIn, \src1 \dpp
.endm

.macro _v_add_lshl_u32 dst:req, src0:req, src1:req, shiftCnt:req
    v_add_lshl_u32 \dst, \src0, \src1, \shiftCnt
.endm

.macro _v_lshl_add_u32 dst:req, src0:req, src1:req, shiftCnt:req
    v_lshl_add_u32 \dst, \src0, \src1, \shiftCnt
.endm

.macro _v_cmpx_lt_i16 dst, src0, src1=
   v_cmpx_lt_i16 \dst \src0 \src1 
.endm

.macro _v_cmpx_lt_i32 dst, src0, src1=
   v_cmpx_lt_i32 \dst \src0 \src1 
.endm

.macro _v_cmpx_lt_i64 dst, src0, src1=
   v_cmpx_lt_i64 \dst \src0 \src1 
.endm

.macro _v_cmpx_lt_u16 dst, src0, src1=
   v_cmpx_lt_u16 \dst \src0 \src1 
.endm

.macro _v_cmpx_lt_u32 dst, src0, src1=
   v_cmpx_lt_u32 \dst \src0 \src1 
.endm

.macro _v_cmpx_lt_u64 dst, src0, src1=
   v_cmpx_lt_u64 \dst \src0 \src1 
.endm

.macro _v_cmpx_eq_i16 dst, src0, src1=
   v_cmpx_eq_i16 \dst \src0 \src1 
.endm

.macro _v_cmpx_eq_i32 dst, src0, src1=
   v_cmpx_eq_i32 \dst \src0 \src1 
.endm

.macro _v_cmpx_eq_i64 dst, src0, src1=
   v_cmpx_eq_i64 \dst \src0 \src1 
.endm

.macro _v_cmpx_eq_u16 dst, src0, src1=
   v_cmpx_eq_u16 \dst \src0 \src1 
.endm

.macro _v_cmpx_eq_u32 dst, src0, src1=
   v_cmpx_eq_u32 \dst \src0 \src1 
.endm

.macro _v_cmpx_eq_u64 dst, src0, src1=
   v_cmpx_eq_u64 \dst \src0 \src1 
.endm

.macro _v_cmpx_le_i16 dst, src0, src1=
   v_cmpx_le_i16 \dst \src0 \src1 
.endm

.macro _v_cmpx_le_i32 dst, src0, src1=
   v_cmpx_le_i32 \dst \src0 \src1 
.endm

.macro _v_cmpx_le_i64 dst, src0, src1=
   v_cmpx_le_i64 \dst \src0 \src1 
.endm

.macro _v_cmpx_le_u16 dst, src0, src1=
   v_cmpx_le_u16 \dst \src0 \src1 
.endm

.macro _v_cmpx_le_u32 dst, src0, src1=
   v_cmpx_le_u32 \dst \src0 \src1 
.endm

.macro _v_cmpx_le_u64 dst, src0, src1=
   v_cmpx_le_u64 \dst \src0 \src1 
.endm

.macro _v_cmpx_gt_i16 dst, src0, src1=
   v_cmpx_gt_i16 \dst \src0 \src1 
.endm

.macro _v_cmpx_gt_i32 dst, src0, src1=
   v_cmpx_gt_i32 \dst \src0 \src1 
.endm

.macro _v_cmpx_gt_i64 dst, src0, src1=
   v_cmpx_gt_i64 \dst \src0 \src1 
.endm

.macro _v_cmpx_gt_u16 dst, src0, src1=
   v_cmpx_gt_u16 \dst \src0 \src1 
.endm

.macro _v_cmpx_gt_u32 dst, src0, src1=
   v_cmpx_gt_u32 \dst \src0 \src1 
.endm

.macro _v_cmpx_gt_u64 dst, src0, src1=
   v_cmpx_gt_u64 \dst \src0 \src1 
.endm

.macro _v_cmpx_lg_i16 dst, src0, src1=
   v_cmpx_lg_i16 \dst \src0 \src1 
.endm

.macro _v_cmpx_lg_i32 dst, src0, src1=
   v_cmpx_lg_i32 \dst \src0 \src1 
.endm

.macro _v_cmpx_lg_i64 dst, src0, src1=
   v_cmpx_lg_i64 \dst \src0 \src1 
.endm

.macro _v_cmpx_lg_u16 dst, src0, src1=
   v_cmpx_lg_u16 \dst \src0 \src1 
.endm

.macro _v_cmpx_lg_u32 dst, src0, src1=
   v_cmpx_lg_u32 \dst \src0 \src1 
.endm

.macro _v_cmpx_lg_u64 dst, src0, src1=
   v_cmpx_lg_u64 \dst \src0 \src1 
.endm

.macro _v_cmpx_ge_i16 dst, src0, src1=
   v_cmpx_ge_i16 \dst \src0 \src1 
.endm

.macro _v_cmpx_ge_i32 dst, src0, src1=
   v_cmpx_ge_i32 \dst \src0 \src1 
.endm

.macro _v_cmpx_ge_i64 dst, src0, src1=
   v_cmpx_ge_i64 \dst \src0 \src1 
.endm

.macro _v_cmpx_ge_u16 dst, src0, src1=
   v_cmpx_ge_u16 \dst \src0 \src1 
.endm

.macro _v_cmpx_ge_u32 dst, src0, src1=
   v_cmpx_ge_u32 \dst \src0 \src1 
.endm

.macro _v_cmpx_ge_u64 dst, src0, src1=
   v_cmpx_ge_u64 \dst \src0 \src1 
.endm

.macro _v_cmpx_o_i16 dst, src0, src1=
   v_cmpx_o_i16 \dst \src0 \src1 
.endm

.macro _v_cmpx_o_i32 dst, src0, src1=
   v_cmpx_o_i32 \dst \src0 \src1 
.endm

.macro _v_cmpx_o_i64 dst, src0, src1=
   v_cmpx_o_i64 \dst \src0 \src1 
.endm

.macro _v_cmpx_o_u16 dst, src0, src1=
   v_cmpx_o_u16 \dst \src0 \src1 
.endm

.macro _v_cmpx_o_u32 dst, src0, src1=
   v_cmpx_o_u32 \dst \src0 \src1 
.endm

.macro _v_cmpx_o_u64 dst, src0, src1=
   v_cmpx_o_u64 \dst \src0 \src1 
.endm

.macro _v_cmpx_u_i16 dst, src0, src1=
   v_cmpx_u_i16 \dst \src0 \src1 
.endm

.macro _v_cmpx_u_i32 dst, src0, src1=
   v_cmpx_u_i32 \dst \src0 \src1 
.endm

.macro _v_cmpx_u_i64 dst, src0, src1=
   v_cmpx_u_i64 \dst \src0 \src1 
.endm

.macro _v_cmpx_u_u16 dst, src0, src1=
   v_cmpx_u_u16 \dst \src0 \src1 
.endm

.macro _v_cmpx_u_u32 dst, src0, src1=
   v_cmpx_u_u32 \dst \src0 \src1 
.endm

.macro _v_cmpx_u_u64 dst, src0, src1=
   v_cmpx_u_u64 \dst \src0 \src1 
.endm

/******************************************/
/* Magic div and mod functions            */
/******************************************/
.macro V_MAGIC_DIV dstIdx:req, dividend:req, magicNumber:req, magicShift:req, magicA:req
    v_mul_hi_u32 v[\dstIdx+1], \dividend, \magicNumber
    v_mul_lo_u32 v[\dstIdx+0], \dividend, \magicA
    v_add_u32 v[\dstIdx+0], v[\dstIdx+0], v[\dstIdx+1]
    v_lshrrev_b32 v[\dstIdx+0], \magicShift, v[\dstIdx+0]
.endm

/******************************************/
/* VGPR Assignments                       */
/******************************************/
/* ValuC range: [0-0), overlapValuC enabled, serializedStore enabled */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 0
.set vgprValuA_X1_I0, 1
.set vgprG2LA, 2
.set vgprValuB_X0_I0, 6
.set vgprValuB_X1_I0, 7
.set vgprG2LB, 8
.set vgprLocalWriteAddrA, 12
.set vgprLocalWriteAddrB, 13
.set vgprGlobalReadOffsetA, 14
.set vgprGlobalReadOffsetB, 15
.set vgprLocalReadAddrA, 16
.set vgprLocalReadAddrB, 17
.set vgprSerial, 18
/* Num VGPR=64 */
/* Num AccVGPR=16 */

/******************************************/
/* SGPR Assignments                       */
/******************************************/
.set sgprKernArgAddress, 0
.set sgprWorkGroup0, 2
.set sgprWorkGroup1, 3
.set sgprWorkGroup2, 4
.set sgprLoopCounterL, 5
.set sgprNumRemainderSumElementsL, 6
.set sgprOrigLoopCounter, 7
.set sgprSrdA, 8
.set sgprSrdB, 12
.set sgprSrdD, 16
.set sgprSrdC, 20
.set sgprTensor2dSizeA, 24
.set sgprTensor2dSizeB, 26
.set sgprAddressD, 28
.set sgprAddressC, 30
.set sgprAddressA, 32
.set sgprAddressB, 34
.set sgprAlpha, 36
.set sgprBeta, 37
.set sgprStridesD, 38
.set sgprStridesC, 40
.set sgprStridesA, 42
.set sgprStridesB, 44
.set sgprSizesFree, 46
.set sgprSizesSum, 49
.set sgprOrigStaggerUIter, 50
.set sgprNumWorkGroups0, 51
.set sgprNumWorkGroups1, 52
.set sgprMagicNumberProblemNumGroupTiles0, 53
.set sgprGridNumWorkGroups0, 54
.set sgprNumFullBlocks, 55
.set sgprWgmRemainder1, 56
.set sgprMagicNumberWgmRemainder1, 57
.set sgprShadowLimitA, 38
.set sgprShadowLimitB, 58
.set sgprGlobalReadIncsA, 50
.set sgprGlobalReadIncsB, 53
.set sgprWaveId, 54
/* max SGPR=68 */

/* Size Assignments */
.set sgprSizeI, sgprSizesFree+0
.set sgprSizeJ, sgprSizesFree+1
.set sgprSizeK, sgprSizesFree+2
.set sgprSizeL, sgprSizesSum+0

/* Stride Assignments */
.set constStrideD0I, 1
.set sgprStrideD1J, sgprStridesC+0
.set sgprStrideDK, sgprStridesC+1
.set constStrideC0I, 1
.set sgprStrideC1J, sgprStridesC+0
.set sgprStrideCK, sgprStridesC+1
.set constStrideA0I, 1
.set sgprStrideAL, sgprStridesA+0
.set sgprStrideAK, sgprStridesA+1
.set constStrideB1J, 1
.set sgprStrideBL, sgprStridesB+0
.set sgprStrideBK, sgprStridesB+1

.set MT0, 64
.set MT1, 64
.set DepthU, 32
.set GSU, 1
.set BpeA, 2
.set BpeALog2, 1
.set BpeB, 2
.set BpeBLog2, 1
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 8
.set SrdShiftLeftB, 8
/* 2GB limit - set offsets to -1 to exceed this and clamp */
.set BufferLimit, 0x80000000
.set BufferOOB, 0x80000000

/******************************************/
/* Bits 127:96 of SRD.                    */
/* hex: 0x00020000                        */
/* dst_sel_x (3b): 0                      */
/* dst_sel_y (3b): 0                      */
/* dst_sel_z (3b): 0                      */
/* dst_sel_w (3b): 0                      */
/* num_format (3b): 0                     */
/* data_format (4b): 4                    */
/* user_vm_enable (1b): 0                 */
/* user_vm_mode (1b): 0                   */
/* index_stride (2b): 0                   */
/* add_tid_enable (1b): 0                 */
/* _unusedA (3b): 0                       */
/* nv (1b): 0                             */
/* _unusedB (2b): 0                       */
/* type (2b): 0                           */
/******************************************/
.set Srd127_96, 0x00020000

/* Global Offset A */
.macro GLOBAL_OFFSET_A vgprAddr:req vgprOffset0I:req vgprOffsetL:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideAL], v[\vgprOffsetL] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc, v[\vgprOffset0I], v[\vgprTmp+0] // accumulate K lower
_v_add_u32 v[\vgprAddr+0], 0x8, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffset1J:req vgprOffsetL:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideBL], v[\vgprOffsetL] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc, v[\vgprOffset1J], v[\vgprTmp+0] // accumulate K lower
_v_add_u32 v[\vgprAddr+0], 0x8, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/******************************************/
/* Dynamic Scalar Divide: vQuotient=vDividend/vDivisor; vRemainder=vDividend%vDivisor; */
/******************************************/
.macro DYNAMIC_VECTOR_DIVIDE vQuotient vRemainder vDividend vDivisor vTmp0 vTmp1 sTmp
v_cvt_f32_u32 v[\vQuotient], v[\vDivisor]          // 
v_rcp_f32 v[\vQuotient], v[\vQuotient]             // 
v_mul_f32 v[\vQuotient], 0x4f800000, v[\vQuotient] // 
v_cvt_u32_f32 v[\vQuotient], v[\vQuotient]         // 
v_mul_lo_u32 v[\vRemainder], v[\vDivisor], v[\vQuotient] // 
v_mul_hi_u32 v[\vTmp0], v[\vDivisor], v[\vQuotient] // 
_v_sub_co_u32 v[\vTmp1], vcc, 0x0, v[\vRemainder]  // 
v_cmp_ne_i32 s[\sTmp:\sTmp+1], 0x0, v[\vTmp0]      // 
v_cndmask_b32 v[\vRemainder], v[\vTmp1], v[\vRemainder], s[\sTmp:\sTmp+1] // 
v_mul_hi_u32 v[\vRemainder], v[\vRemainder], v[\vQuotient] // 
_v_sub_co_u32 v[\vTmp0], vcc, v[\vQuotient], v[\vRemainder] // 
_v_add_co_u32 v[\vQuotient], vcc, v[\vQuotient], v[\vRemainder] // 
v_cndmask_b32 v[\vQuotient], v[\vQuotient], v[\vTmp0], s[\sTmp:\sTmp+1] // 
v_mul_hi_u32 v[\vQuotient], v[\vQuotient], v[\vDividend] // 
v_mul_lo_u32 v[\vRemainder], v[\vQuotient], v[\vDivisor] // 
_v_sub_co_u32 v[\vTmp0], vcc, v[\vDividend], v[\vRemainder] // 
v_cmp_ge_u32 s[\sTmp:\sTmp+1], v[\vDividend], v[\vRemainder] // 
_v_add_co_u32 v[\vRemainder], vcc, 0x1, v[\vQuotient] // 
_v_add_co_u32 v[\vTmp1], vcc, -1, v[\vQuotient]    // 
v_cmp_le_u32 vcc, v[\vDivisor], v[\vTmp0]          // 
s_and_b64 vcc, s[\sTmp:\sTmp+1], vcc               // 
v_cndmask_b32 v[\vQuotient], v[\vQuotient], v[\vRemainder], vcc // 
v_cndmask_b32 v[\vQuotient], v[\vTmp1], v[\vQuotient], s[\sTmp:\sTmp+1] // 
v_cmp_ne_i32 vcc, 0x0, v[\vDivisor]                // 
v_cndmask_b32 v[\vQuotient], -1, v[\vQuotient], vcc // final result
v_mul_lo_u32 v[\vRemainder], v[\vQuotient], v[\vDivisor] // 
_v_sub_co_u32 v[\vRemainder], vcc, v[\vDividend], v[\vRemainder] // final result
.endm



/******************************************/
/* Allocate Resources                     */
/******************************************/

s_mov_b32 m0, 0x4000                               // LDS clamp at 16384 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id

/* Load Kernel Args */
s_load_dwordx16 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x8 // 
s_load_dwordx16 s[40:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x48 // 
s_load_dwordx2 s[56:57], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x88 // 
s_waitcnt lgkmcnt(0)                               // wait for 144 bytes of kern args
v_lshrrev_b32  v0, 0x6, v[vgprSerial]              // Wavefront Serial Id
v_readfirstlane_b32 s[sgprWaveId], v0              // WaveId


/******************************************/
/* Local Read Addresses                   */
/******************************************/


/* local read addresses: tile assignments a */

/*lr0I = serial % SG0I*/
v_and_b32 v2, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v1, 31, v2                               // 1. N offset: nIdx = wtid % MI_N(32)
v_lshrrev_b32 v0, 5, v2                            // 2. block offset: bnIdx = wtid / dividedForBlkId(32)
v_and_b32 v0, 0, v0                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v0, 5, v0                            // 2. block offset: bnOffset = bnIdx * strideBlock(32)
v_add_u32 v1, v0, v1                               // 3. add N and block offset: bnOffset = block and N offset
v_lshrrev_b32 v2, 5, v2                            // 4. K offset: kIdx = wtid / (MIN(32) * MIBB(1))
v_lshlrev_b32 v2, 7, v2                            // 4. K offset: lrKOffset = kIdx * mStride(128)
v_add_u32 v1, v2, v1                               // 5. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v0, 6, v[vgprSerial]                 // 6. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v0, 1, v0                                // 6. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshlrev_b32 v0, 5, v0                            // 6. wave offset in M dimen: wOffset = wtid0 * W0Stride(32)
v_add_u32 v1, v0, v1                               // 7. final local read offset: flrOffset = lrOffset + WOffset


/* local read addresses: tile assignments b */

/*lr1J = (serial / SG1J) % SG1J*/
v_and_b32 v3, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v2, 31, v3                               // 1. N offset: nIdx = wtid % MI_N(32)
v_lshrrev_b32 v0, 5, v3                            // 2. block offset: bnIdx = wtid / dividedForBlkId(32)
v_and_b32 v0, 0, v0                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v0, 5, v0                            // 2. block offset: bnOffset = bnIdx * strideBlock(32)
v_add_u32 v2, v0, v2                               // 3. add N and block offset: bnOffset = block and N offset
v_lshrrev_b32 v3, 5, v3                            // 4. K offset: kIdx = wtid / (MIN(32) * MIBB(1))
v_lshlrev_b32 v3, 7, v3                            // 4. K offset: lrKOffset = kIdx * mStride(128)
v_add_u32 v2, v3, v2                               // 5. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v0, 7, v[vgprSerial]                 // 6. wave offset in N dimen: wtid = tid / dividedForWaveId(128)
v_and_b32 v0, 1, v0                                // 6. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshlrev_b32 v0, 5, v0                            // 6. wave offset in M dimen: wOffset = wtid0 * W0Stride(32)
v_add_u32 v2, v0, v2                               // 7. final local read offset: flrOffset = lrOffset + WOffset


/* local read addresses: final offsets a */

v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s60, 64                                  // LSU offset: stirde = MT0(64) + PAD0(0)
v_mul_lo_u32 v0, s60, v0                           // LSU offset: lsuoffset = sgid*(MT0+PAD)
_v_add_lshl_u32 v[vgprLocalReadAddrA], v0, v1, 0x1 // Final Offset: offset = (lro0*VW+lsuoffset)*bpe


/* local read addresses: final offsets b */

v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s60, 64                                  // LSU offset: stirde = MT1(64) + PAD1(0)
v_mul_lo_u32 v0, s60, v0                           // LSU offset: lsuoffset = sgid*(MT1+PAD)
_v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v2, 0x1 // Final Offset: offset = (lro1*VW+lsuoffset)*bpe


/* local read addresses: declare addresses a */

/* N/A */


/* local read addresses: declare addresses b */

_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, 0x1000, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)



/******************************************/
/* Begin setupNewTile                     */
/******************************************/


/* global read addresses: work-group */

/* graWorkGroup mapping */


/* global read addresses: tile offset assignment a */

/* LVCA = 8 */
/* v0 = (local)groA-tile = serial%LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial/LVCA */
v_lshrrev_b32 v1, 3, v[vgprSerial]                 // v1 = v[vgprSerial] / 8
v_and_b32 v0, 7, v[vgprSerial]                     // v0 = v[vgprSerial] % 8
/* gro-tile *= glvw */
v_lshlrev_b32 v0, 3, v0                            // v0 = v0 * 8


/* global read addresses: tile offset assignment b */

/* LVCB = 8 */
/* v2 = (local)groB-tile = serial%LVCB (note (wgB*MTB) will be added to SRD) */
/* v3 = groB-unroll = serial/LVCB */
v_lshrrev_b32 v3, 3, v[vgprSerial]                 // v3 = v[vgprSerial] / 8
v_and_b32 v2, 7, v[vgprSerial]                     // v2 = v[vgprSerial] % 8
/* gro-tile *= glvw */
v_lshlrev_b32 v2, 3, v2                            // v2 = v2 * 8


/* global read addresses: unroll assignment a */

/* v1 */


/* global read addresses: unroll assignment b */

/* v3 */


/* global read addresses: other free assignments */

/* s[sgprWorkGroup2] */


/* global read addresses: tile offsets a */

v_mov_b32 v4, v0                                   // groA0I_0


/* global read addresses: tile offsets b */

v_mov_b32 v5, v2                                   // groB1J_0


/* global read addresses: unroll offsets a */

v_mov_b32 v6, v1                                   // groAL_0


/* global read addresses: unroll offsets b */

v_mov_b32 v7, v3                                   // groBL_0


/* global read addresses: shift b */

s_mul_i32 s60, s[sgprWorkGroup1], 64               // WorkGroup[01] * MT
s_sub_u32 s60, s[sgprSizeJ], s60                   // edge = Size1J - WG*MT
s_sub_u32 s60, s60, 8                              // edge -= margin
v_mov_b32 v8, s60                                  // edge vgpr = Size1J-8
_v_add_co_u32 v9, vcc, v8, 8                       // add srdShiftLift
_v_add_co_u32 v10, vcc, v5, 8                      // 
v_cmp_lt_u32 s[60:61], v10, v9                     // offset < edge
v_cndmask_b32 v5, v8, v5, s[60:61]                 // offset = (offset < edge) ? offset : edge


/* global read addresses: final offsets a */

GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  4,  6, 8 // gROA_0_0_0_0


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  5,  7, 8 // gROB_0_0_0_0


/* global read addresses: addresses a */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s63, s[sgprWorkGroup0], 64            // WorkGroup[01] * MT
s_mul_i32 s62, s[sgprWorkGroup0], 64               // WorkGroup[01] * MT
s_sub_u32 s[sgprShadowLimitA+0], s[sgprTensor2dSizeA], s62 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprTensor2dSizeA+1], s63 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s61, s[sgprStrideAK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s60, s[sgprStrideAK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s62, s62, s60                            // accum wg term to tilestart
s_addc_u32 s63, s63, s61                           // accum wg term to tilestart
s_lshl_b64 s[62:63], s[62:63], 1                   // tileStart *= BPE
s_add_u32 s[sgprSrdA+0], s[sgprAddressA+0], s62    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprAddressA+1], s63   // SRD base = Address+ tileStart1
s_sub_u32 s[sgprSrdA+0], s[sgprSrdA+0], 16         // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdA+1], s[sgprSrdA+1], 0         // pre-pad to make room for possible pointer shift
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: addresses b */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s63, s[sgprWorkGroup1], 64            // WorkGroup[01] * MT
s_mul_i32 s62, s[sgprWorkGroup1], 64               // WorkGroup[01] * MT
s_sub_u32 s[sgprShadowLimitB+0], s[sgprTensor2dSizeB], s62 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprTensor2dSizeB+1], s63 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s61, s[sgprStrideBK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s60, s[sgprStrideBK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s62, s62, s60                            // accum wg term to tilestart
s_addc_u32 s63, s63, s61                           // accum wg term to tilestart
s_lshl_b64 s[62:63], s[62:63], 1                   // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprAddressB+0], s62    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprAddressB+1], s63   // SRD base = Address+ tileStart1
s_sub_u32 s[sgprSrdB+0], s[sgprSrdB+0], 16         // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdB+1], s[sgprSrdB+1], 0         // pre-pad to make room for possible pointer shift
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: increments a */

s_mul_i32 s[sgprGlobalReadIncsA+0], DepthU*BpeA, s[sgprStrideAL] // incrA unrollIdx)


/* global read addresses: increments b */

s_mul_i32 s[sgprGlobalReadIncsB+0], DepthU*BpeB, s[sgprStrideBL] // incrB unrollIdx)


/******************************************/
/* Local Write Addresses                  */
/******************************************/

/* lwaTileAssignmentA = v0 */

/* lwaTileAssignmentB = v2 */

/* lwaUnrollAssignmentA = v1 */

/* lwaUnrollAssignmentB = v3 */


/* local write addresses: first offset a */

v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x40, v1     // lwAL**(MTA + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x1 // lwFOA = (lwAA + lwAL*(MT0I+PAD))*bpe


/* local write addresses: first offset b */

v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x40, v3     // lwBL**(MTB + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrB], v2, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBL*(MT1J+PAD))*bpe
_v_add_co_u32 v[vgprLocalWriteAddrB], vcc, 0x1000, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBL*MT1J + LDS_OFFSET_B=2048*2







/* declare loop num iterations */


s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum+0], 5 // s[sgprLoopCounterL] = s[sgprSizesSum+0] / 32
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterL] // copy loop counter

/* local read addresses: init pointers a */


/* localReadInitPointers */

/* local read addresses: init pointers b */


/* localReadInitPointers */


/* prefetch: global -> local */

s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?
s_cbranch_scc1 ShadowInitStart_8                   // skip to ShadowInitStart iter b/c numIter==0


buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0


buffer_load_dwordx4 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0


/* global read inc A loopL */
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s[sgprGlobalReadIncsA+0] // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], 0        // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s[sgprGlobalReadIncsA+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s[sgprGlobalReadIncsB+0] // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], 0        // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s[sgprGlobalReadIncsB+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32


/******************************************/
/* End setupNewTile                       */
/******************************************/

ShadowInitStart_8: // 

s_mov_b32 s[sgprSrdD+0], s[sgprAddressD+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdD+1], s[sgprAddressD+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdD+2], 0x80000000                // 
s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD

s_mov_b32 s[sgprSrdC+0], s[sgprAddressC+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdC+1], s[sgprAddressC+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdC+2], 0x80000000                // 
s_mov_b32 s[sgprSrdC+3], Srd127_96                 // Set bits 127_96 in post-loop SRD


s_mul_i32 s62, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s61, s62, s[sgprStrideC1J]            // CScale s62 by Stride
s_mul_i32 s60, s62, s[sgprStrideC1J]               // CScale s62 by Stride
s_lshl_b64 s[60:61], s[60:61], 1                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s60        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s61       // add hi to SRD
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s60        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s61       // add hi to SRD

s_mul_hi_u32 s61, s[sgprWorkGroup2], s[sgprStrideCK] // CScale s[sgprWorkGroup2] by Stride
s_mul_i32 s60, s[sgprWorkGroup2], s[sgprStrideCK]  // CScale s[sgprWorkGroup2] by Stride
s_lshl_b64 s[60:61], s[60:61], 1                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s60        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s61       // add hi to SRD
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s60        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s61       // add hi to SRD


v_accvgpr_write acc0, 0x0                          // init Acc vgprs
v_accvgpr_write acc1, 0x0                          // init Acc vgprs
v_accvgpr_write acc2, 0x0                          // init Acc vgprs
v_accvgpr_write acc3, 0x0                          // init Acc vgprs
v_accvgpr_write acc4, 0x0                          // init Acc vgprs
v_accvgpr_write acc5, 0x0                          // init Acc vgprs
v_accvgpr_write acc6, 0x0                          // init Acc vgprs
v_accvgpr_write acc7, 0x0                          // init Acc vgprs
v_accvgpr_write acc8, 0x0                          // init Acc vgprs
v_accvgpr_write acc9, 0x0                          // init Acc vgprs
v_accvgpr_write acc10, 0x0                         // init Acc vgprs
v_accvgpr_write acc11, 0x0                         // init Acc vgprs
v_accvgpr_write acc12, 0x0                         // init Acc vgprs
v_accvgpr_write acc13, 0x0                         // init Acc vgprs
v_accvgpr_write acc14, 0x0                         // init Acc vgprs
v_accvgpr_write acc15, 0x0                         // init Acc vgprs

s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?
s_cbranch_scc1 label_0004                          // after InitC, skip to end of prefetch last iter b/c numIter==0

s_waitcnt vmcnt(0)                                 // 8wait for global read


/* local write a */

ds_write_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0


/* local write b */

ds_write_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0


/* local write swap a */



/* local write swap b */




s_waitcnt lgkmcnt(0)                               // 0prefetch wait for local write

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //


/* local read prefetch a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read prefetch b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->256 */


/* local read inc b */

/* N/A, lro->256 */



/******************************************/
/* Unrolled Loop(s) - Begin               */
/******************************************/

openLoopL_9:
s_cmp_le_u32 s[sgprLoopCounterL], 0x1              // LoopCounterL < EndCounter
s_cbranch_scc1 label_0002                          // don't enter LoopL
label_0001:


/******************************************/
/* Unroll Loop 1/2 - Begin                */
/******************************************/

label_0010: // LoopCopy1 





/* iter 0 */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:640 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:640 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=-1 numReadsIter=1 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=4 newLW=0 newLR=4
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 1 */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
buffer_load_dwordx4 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=0 numReadsIter=2 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=4 newLW=0 newLR=4
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 2 */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:1664 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:1664 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s[sgprGlobalReadIncsA+0] // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], 0        // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s[sgprGlobalReadIncsA+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=1 numReadsIter=3 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=4 newLW=0 newLR=4
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 3 */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0

/* global read inc B loopL */
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s[sgprGlobalReadIncsB+0] // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], 0        // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s[sgprGlobalReadIncsB+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=2 numReadsIter=4 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=4 newLW=0 newLR=4
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 4 */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:2688 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:2688 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
/* sched write - iter 4 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:8192 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 8192
s_waitcnt lgkmcnt(5)                               // wait for prior local read local write dataAtIter=3 numReadsIter=5 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=5 newLW=1 newLR=4
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 5 */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:8192 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 8192
s_waitcnt lgkmcnt(6)                               // wait for prior local read local write dataAtIter=4 numReadsIter=6 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=6 newLW=2 newLR=4
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 6 (localWrite + swap local pointers iteration) */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:3712 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:3712 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0

/* local write swap offsets a */

/* local write swap offsets b */

/* local read swap offsets a */

/* local read swap internal offset -> 8192 */

/* local read swap offsets b */

/* local read swap internal offset -> 8192 */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(5)                               // wait for prior local read local write dataAtIter=5 numReadsIter=7 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=6, new=5 newLW=1 newLR=4
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 7 */

s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //
ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:8192 // L -> Reg lro=0 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:8320 // L -> Reg lro=0 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:8192 // L -> Reg lro=0 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:8320 // L -> Reg lro=0 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=6 numReadsIter=7 numPrefetchIter=1 skipReadsIter=1 readsPerIter=4 old=4, new=4 newLW=0 newLR=4
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]




/******************************************/
/* Unrolled Loop - End 1/2                */
/******************************************/


/* closeLoop loopL finalLoop=0 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL
s_cmp_eq_i32 s[sgprLoopCounterL], 0x1              // counterL==1
s_cbranch_scc1 label_0003                          // exit LoopL


/******************************************/
/* Unroll Loop 2/2 - Begin                */
/******************************************/

label_0011: // LoopCopy2 





/* iter 0 */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:8704 // L -> Reg lro=256 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:8832 // L -> Reg lro=256 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:8704 // L -> Reg lro=256 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:8832 // L -> Reg lro=256 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=-1 numReadsIter=1 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=4 newLW=0 newLR=4
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 1 */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:9216 // L -> Reg lro=512 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:9344 // L -> Reg lro=512 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:9216 // L -> Reg lro=512 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:9344 // L -> Reg lro=512 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
buffer_load_dwordx4 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=0 numReadsIter=2 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=4 newLW=0 newLR=4
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 2 */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:9728 // L -> Reg lro=768 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:9856 // L -> Reg lro=768 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:9728 // L -> Reg lro=768 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:9856 // L -> Reg lro=768 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s[sgprGlobalReadIncsA+0] // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], 0        // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s[sgprGlobalReadIncsA+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=1 numReadsIter=3 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=4 newLW=0 newLR=4
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 3 */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:10240 // L -> Reg lro=1024 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:10368 // L -> Reg lro=1024 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:10240 // L -> Reg lro=1024 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:10368 // L -> Reg lro=1024 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0

/* global read inc B loopL */
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s[sgprGlobalReadIncsB+0] // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], 0        // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s[sgprGlobalReadIncsB+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=2 numReadsIter=4 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=4 newLW=0 newLR=4
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 4 */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:10752 // L -> Reg lro=1280 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:10880 // L -> Reg lro=1280 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:10752 // L -> Reg lro=1280 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:10880 // L -> Reg lro=1280 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
/* sched write - iter 4 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
s_waitcnt lgkmcnt(5)                               // wait for prior local read local write dataAtIter=3 numReadsIter=5 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=5 newLW=1 newLR=4
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 5 */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:11264 // L -> Reg lro=1536 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:11392 // L -> Reg lro=1536 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:11264 // L -> Reg lro=1536 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:11392 // L -> Reg lro=1536 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0
s_waitcnt lgkmcnt(6)                               // wait for prior local read local write dataAtIter=4 numReadsIter=6 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=4, new=6 newLW=2 newLR=4
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 6 (localWrite + swap local pointers iteration) */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:11776 // L -> Reg lro=1792 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:11904 // L -> Reg lro=1792 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:11776 // L -> Reg lro=1792 swapByteOffset=8192 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:11904 // L -> Reg lro=1792 swapByteOffset=8192 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0

/* local write swap offsets a */

/* local write swap offsets b */

/* local read swap offsets a */

/* local read swap internal offset -> 0 */

/* local read swap offsets b */

/* local read swap internal offset -> 0 */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(5)                               // wait for prior local read local write dataAtIter=5 numReadsIter=7 numPrefetchIter=0 skipReadsIter=1 readsPerIter=4 old=6, new=5 newLW=1 newLR=4
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 7 */

s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //
ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=6 numReadsIter=7 numPrefetchIter=1 skipReadsIter=1 readsPerIter=4 old=4, new=4 newLW=0 newLR=4
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]




/******************************************/
/* Unrolled Loop - End 2/2 (final)        */
/******************************************/


/* closeLoop loopL finalLoop=1 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL
s_cmp_eq_i32 s[sgprLoopCounterL], 0x1              // counterL==1
s_cbranch_scc0 label_0001                          // restart LoopL
s_branch label_0002                                // exit unroll loopL (and skip oddexit)
label_0003: // unroll loop odditer exit

/* Select high bank of LDS */
v_xor_b32 v[vgprLocalReadAddrA], 0x2000, v[vgprLocalReadAddrA] // swap Red Blk
v_xor_b32 v[vgprLocalReadAddrB], 0x2000, v[vgprLocalReadAddrB] // swap Red Blk
label_0002:


/******************************************/
/* Opt NoLoadLoop - Begin                  */
/******************************************/

s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 OptNLL_End_12                       // Branch if Beta is not zero

s_cmp_eq_u32 s[sgprAlpha], 1.0                     // Alpha == 1.0 ?
s_cbranch_scc0 OptNLL_End_12                       // branch if alpha != 1

s_and_b32 s60, 63, s[sgprSizeI]                    // s60 = s[sgprSizeI] % 64
s_add_u32 s62, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s62                // wg0 >= nwg0-1 ?
s_cselect_b32 s60, s60, 0                          // set rMT0
s_cmpk_gt_u32 s60, 0x0                             // rMT0 > 0
s_cbranch_scc1 OptNLL_End_12                       // jump if edges required
s_and_b32 s60, 63, s[sgprSizeJ]                    // s60 = s[sgprSizeJ] % 64
s_add_u32 s62, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s62                // wg1 >= nwg1-1
s_cselect_b32 s60, s60, 0                          // set rMT1
s_cmpk_gt_u32 s60, 0x0                             // rMT1 > 0
s_cbranch_scc1 OptNLL_End_12                       // jump if edges required

s_and_b32 s61, 31, s[sgprSizesSum+0]               // s61 = s[sgprSizesSum+0] % 32
s_cmp_eq_u32 s61, 0x0                              // numIterL == 0
s_cbranch_scc0 OptNLL_End_12                       // skip if tail loop required


/* iter 0 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:640 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:640 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->512 */


/* local read inc b */

/* N/A, lro->512 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 1 */


/* local read a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->768 */


/* local read inc b */

/* N/A, lro->768 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 2 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:1664 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:1664 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->1024 */


/* local read inc b */

/* N/A, lro->1024 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 3 */


/* local read a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->1280 */


/* local read inc b */

/* N/A, lro->1280 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 4 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:2688 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:2688 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->1536 */


/* local read inc b */

/* N/A, lro->1536 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 5 */


/* local read a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->1792 */


/* local read inc b */

/* N/A, lro->1792 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 6 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:3712 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:3712 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->2048 */


/* local read inc b */

/* N/A, lro->2048 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 7 */

s_waitcnt lgkmcnt(0)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]

/* Stores for OptNLL */
Summation_End_13:
/* endSummation: remove C-tile [19, 19) from pool */
/* endSummation: add vgpr [0...16) to pool */
.set GlobalReadIncsB, UNDEF
.set WaveId, UNDEF
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
.set ShadowLimitB, UNDEF
s_nop 16

/* Mapping of Acc register -> C Vgpr register */
/* computeStoreVgprs */
v_lshrrev_b32 v3, 6, v[vgprSerial]                 // v3 = v[vgprSerial] / 64
v_lshrrev_b32 v1, 1, v3                            // v1 = v3 / 2
v_mul_lo_u32 v1, 0x20, v1                          // wave coordination offset 1
v_and_b32 v4, 31, v[vgprSerial]                    // v4 = v[vgprSerial] % 32
v_add_u32 v1, v4, v1                               // coordination 1 = wave_id1 + tid1
v_mul_lo_u32 v2, v1, s[sgprStridesC]               //  offset 1
v_and_b32 v4, 1, v3                                // v4 = v3 % 2
v_mul_lo_u32 v4, 0x20, v4                          // wave coordination offset 0
v_and_b32 v0, 63, v[vgprSerial]                    // v0 = v[vgprSerial] % 64
v_lshrrev_b32 v0, 5, v0                            // v0 = v0 / 32
v_lshlrev_b32 v0, 0x2, v0                          // thread0 * 4 : mfma output 4 continuous outputs
v_add_u32 v0, v4, v0                               // coordination 0 = wave_id0 + tid0
s_mul_i32 s53, 64, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v0, s53, v0                              // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s53, 64, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v1, s53, v1                              // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1
/* Store Remap Local Write adderss */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x20, v4                         // coord1 offset of LDS for each Wave
v_and_b32 v4, 0x1f, v[vgprSerial]                  // coord1 offset of LDS for each thread
v_add_u32 v4, v12, v4                              // coord1 offset in MacroTile
v_mov_b32 v10, 0x44                                // lds stride = MT0 + PAD
v_mul_lo_u32 v8, v4, v10                           // lds coord1 offset = Col-id* lds stride
v_lshrrev_b32 v9, 6, v3                            // v9 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_lshrrev_b32 v11, 0x5, v3                         // tid / matrixInstN
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= 4 (each thread hold 4 element)
v_mad_u32_u24 v11, 32, v9, v11                     // coord0 += waveCoord0 * wave M shape(blockM*MiM)
_v_add_lshl_u32 v6, v8, v11, 0x1                   // local write C address

/* Store Remap Local Read address */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // v4 = v[vgprSerial] / 64
v_and_b32 v3, 63, v[vgprSerial]                    // v3 = v[vgprSerial] % 64
v_mul_lo_u32 v12, 0x10, v4                         // coord1 offset of LDS for each Wave
v_lshrrev_b32 v9, 0x4, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
v_mul_lo_u32 v8, v5, v10                           // lds coord1 offset = Col-id* lds stride
v_and_b32 v11, 0xf, v3                             // coord0 offset of LDS for each thread
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= gwvw (each thread hold gwvw element)
_v_add_lshl_u32 v7, v8, v11, 0x1                   // local read C address

/* Store Remap global write coord0 and coord1 */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x20, v4                         // coord1 offset of global memory for each Wave
v_lshrrev_b32 v4, 6, v3                            // v4 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_mad_u32_u24 v12, 16, v4, v12                     // waveCoord1 += waveCoord0 * MiN / WaveGroupM
v_lshrrev_b32 v9, 0x4, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
s_mul_i32 s54, 0x40, s[sgprWorkGroup0]             // s54 = wg0*MT0
v_add_co_u32 v3, vcc, s54, v11                     // coord0 = coord0 + wg0 * MT0
s_mul_i32 s55, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
_v_add_co_u32 v4, vcc, s55, v5                     // coord1 = tid1*VW + wg1*MT1

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //StoreRemap Start
GW_B0_E0_16:

/* edge=0, allocate 2 sgpr. perBatch=2 perElement=0 elementsPerBatch=4 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v10, v2, v0, 0x1                   // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
v_accvgpr_read_b32 v[vgprValuC+11], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+12], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+14], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+19], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+20], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+21], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+22], acc7 // copy areg to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+23], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+24], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+25], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+26], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+27], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+28], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+29], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+30], acc15 // copy areg to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* apply mask, calc new C and issue writes */
v_mov_b32 v32, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v33, 0x7fff0000                          // fp32 Nan
v_mov_b32 v34, 0x7fff                              // rounding bias for bfloat16
v_cmp_u_f32 s[54:55], v[vgprValuC+11], v[vgprValuC+11] // check Nan
v_bfe_u32 v31, v[vgprValuC+11], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+11], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+11], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+11], 16, v[vgprValuC+11] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+12], v[vgprValuC+12] // check Nan
v_bfe_u32 v31, v[vgprValuC+12], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+12], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+12], v31, v33, s[54:55]  // 
v_and_or_b32 v11, v[vgprValuC+12], v32, v[vgprValuC+11] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v31, v[vgprValuC+13], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+13], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+13], 16, v[vgprValuC+13] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v31, v[vgprValuC+14], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+14], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v31, v33, s[54:55]  // 
v_and_or_b32 v12, v[vgprValuC+14], v32, v[vgprValuC+13] // pack two bf16 to dword
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cmp_u_f32 s[54:55], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v31, v[vgprValuC+19], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+19], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+19], 16, v[vgprValuC+19] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v31, v[vgprValuC+20], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+20], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v31, v33, s[54:55]  // 
v_and_or_b32 v19, v[vgprValuC+20], v32, v[vgprValuC+19] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v31, v[vgprValuC+21], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+21], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+21], 16, v[vgprValuC+21] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v31, v[vgprValuC+22], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+22], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v31, v33, s[54:55]  // 
v_and_or_b32 v20, v[vgprValuC+22], v32, v[vgprValuC+21] // pack two bf16 to dword
ds_write_b64 v6, v[19:20], offset:16               // storeRemap lw
v_cmp_u_f32 s[54:55], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v31, v[vgprValuC+23], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+23], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+23], 16, v[vgprValuC+23] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v31, v[vgprValuC+24], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+24], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v31, v33, s[54:55]  // 
v_and_or_b32 v23, v[vgprValuC+24], v32, v[vgprValuC+23] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v31, v[vgprValuC+25], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+25], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+25], 16, v[vgprValuC+25] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v31, v[vgprValuC+26], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+26], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v31, v33, s[54:55]  // 
v_and_or_b32 v24, v[vgprValuC+26], v32, v[vgprValuC+25] // pack two bf16 to dword
ds_write_b64 v6, v[23:24], offset:32               // storeRemap lw
v_cmp_u_f32 s[54:55], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v31, v[vgprValuC+27], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+27], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+27], 16, v[vgprValuC+27] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v31, v[vgprValuC+28], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+28], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v31, v33, s[54:55]  // 
v_and_or_b32 v27, v[vgprValuC+28], v32, v[vgprValuC+27] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v31, v[vgprValuC+29], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+29], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+29], 16, v[vgprValuC+29] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v31, v[vgprValuC+30], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+30], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v31, v33, s[54:55]  // 
v_and_or_b32 v28, v[vgprValuC+30], v32, v[vgprValuC+29] // pack two bf16 to dword
ds_write_b64 v6, v[27:28], offset:48               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:544               // storeRemap lr
ds_read_b64 v[19:20], v7, offset:1088              // storeRemap lr
ds_read_b64 v[21:22], v7, offset:1632              // storeRemap lr

v_mov_b32 v15, v5                                  // coord1
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(3)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(2)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 8                               // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[19:20], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 12                              // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[21:22], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_18                           // jump to end
label_GW_End_18:

s_endpgm                                           // Kernel End
OptNLL_End_12:




/* iter 0 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:640 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:640 // L -> Reg lro=256 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->512 */


/* local read inc b */

/* N/A, lro->512 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 1 */


/* local read a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->768 */


/* local read inc b */

/* N/A, lro->768 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 2 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:1664 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:1664 // L -> Reg lro=768 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->1024 */


/* local read inc b */

/* N/A, lro->1024 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 3 */


/* local read a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->1280 */


/* local read inc b */

/* N/A, lro->1280 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 4 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:2688 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:2688 // L -> Reg lro=1280 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->1536 */


/* local read inc b */

/* N/A, lro->1536 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 5 */


/* local read a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->1792 */


/* local read inc b */

/* N/A, lro->1792 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]


/* iter 6 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v21, v[vgprLocalReadAddrA] offset:3712 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v22, v[vgprLocalReadAddrB] offset:3712 // L -> Reg lro=1792 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->2048 */


/* local read inc b */

/* N/A, lro->2048 */

s_waitcnt lgkmcnt(4)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* iter 7 */

s_waitcnt lgkmcnt(0)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v21 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v22 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:15]

label_0004:


/******************************************/
/* Tail Loop                              */
/******************************************/


/* local write reset offsets a */



/* local write reset offsets b */



//numIterL = (((sizeL % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterL], 31, s[sgprSizesSum+0] // s[sgprLoopCounterL] = s[sgprSizesSum+0] % 32
s_and_b32 s[sgprNumRemainderSumElementsL], 3, s[sgprLoopCounterL] // s[sgprNumRemainderSumElementsL] = s[sgprLoopCounterL] % 4
s_cmp_eq_u32 s[sgprLoopCounterL], 0x0              // numIterL == 0
s_cbranch_scc1 label_0006                          // skip to end of tail loop b/c numIter==0


/* Update M0 for DTLDS */



/* global read a */

/* g2l=0, load component 0 */
buffer_load_short_d16 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load half buffer value
/* g2l=0, load component 1 */
buffer_load_short_d16_hi v19, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+0], v[vgprG2LA+0+0], v19 // HasEccHalf: pack
/* g2l=0, load component 2 */
buffer_load_short_d16 v[vgprG2LA+0+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:4 // load half buffer value
/* g2l=0, load component 3 */
buffer_load_short_d16_hi v19, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:6 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+1], v[vgprG2LA+0+1], v19 // HasEccHalf: pack
/* g2l=0, load component 4 */
buffer_load_short_d16 v[vgprG2LA+0+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:8 // load half buffer value
/* g2l=0, load component 5 */
buffer_load_short_d16_hi v19, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:10 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+2], v[vgprG2LA+0+2], v19 // HasEccHalf: pack
/* g2l=0, load component 6 */
buffer_load_short_d16 v[vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:12 // load half buffer value
/* g2l=0, load component 7 */
buffer_load_short_d16_hi v19, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:14 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+3], v[vgprG2LA+0+3], v19 // HasEccHalf: pack


/* Update M0 for DTLDS */



/* global read b */

/* g2l=0, load component 0 */
buffer_load_short_d16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load half buffer value
/* g2l=0, load component 1 */
buffer_load_short_d16_hi v19, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+0], v[vgprG2LB+0+0], v19 // HasEccHalf: pack
/* g2l=0, load component 2 */
buffer_load_short_d16 v[vgprG2LB+0+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:4 // load half buffer value
/* g2l=0, load component 3 */
buffer_load_short_d16_hi v19, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:6 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+1], v[vgprG2LB+0+1], v19 // HasEccHalf: pack
/* g2l=0, load component 4 */
buffer_load_short_d16 v[vgprG2LB+0+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:8 // load half buffer value
/* g2l=0, load component 5 */
buffer_load_short_d16_hi v19, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:10 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+2], v[vgprG2LB+0+2], v19 // HasEccHalf: pack
/* g2l=0, load component 6 */
buffer_load_short_d16 v[vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:12 // load half buffer value
/* g2l=0, load component 7 */
buffer_load_short_d16_hi v19, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:14 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+3], v[vgprG2LB+0+3], v19 // HasEccHalf: pack

s_waitcnt vmcnt(0)                                 // 2wait for global read

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //




/* local write a */

ds_write_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0


/* local write b */

ds_write_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0

s_waitcnt lgkmcnt(0)                               // 5wait for local write

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //


/* local read reset offsets a */


/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrA], 0x1fff, v[vgprLocalReadAddrA] // reset Red,Blk -> Red


/* local read reset offsets b */


/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrB], 0x1fff, v[vgprLocalReadAddrB] // reset Red,Blk -> Red


/* local read init pointers a */


/* localReadInitPointers */


/* local read init pointers b */


/* localReadInitPointers */


/* tail loop: macs */

s_cmp_le_u32 s[sgprLoopCounterL], 0x0              // LoopCounterL < EndCounter
s_cbranch_scc1 label_0006                          // don't enter LoopL
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment
label_0005:


/* local read a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v19, v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v20, v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

s_mov_b32 s60, 0x200                               // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc, s60, v[vgprLocalReadAddrA] // lrA += 512 (LSU*(MT+PAD)*bpe)


/* local read inc b */

s_mov_b32 s60, 0x200                               // inc
_v_add_co_u32 v[vgprLocalReadAddrB], vcc, s60, v[vgprLocalReadAddrB] // lrB += 512 (LSU*(MT+PAD)*bpe)

s_waitcnt lgkmcnt(0)                               // 4wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v19 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v20 // pack two half Vgpr to one Vgpr

v_and_b32 v19, 63, v[vgprSerial]                   // v19 = v[vgprSerial] % 64
v_lshrrev_b32 v19, 5, v19                          // v19 = v19 / 32
v_lshlrev_b32 v19, 1, v19                          // v19 = v19 * 2
v_cmp_ge_i32 s[60:61], v19, s[sgprLoopCounterL]    // check K index >= Size L
v_cndmask_b32 v[vgprValuA_X0_I0+0+0], v[vgprValuA_X0_I0+0+0], 0x0, s[60:61] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+0], v[vgprValuB_X0_I0+0+0], 0x0, s[60:61] // set 0 if K_idx >= sizeL
v_sub_u32 v19, s[sgprLoopCounterL], v19            // get distance between size and k index
v_cmp_lt_i32 s[60:61], v19, 2                      // set partial 0 if distance less than input per thread
s_and_b32 s62, s[sgprLoopCounterL], 1              // get inputs for edge thread
s_sub_u32 s62, 2, s62                              // use shift to fill 0 for outside element
s_lshl_b32 s62, s62, 4                             // use shift to fill 0 for outside element
v_lshlrev_b32 v20, s62, v[vgprValuA_X0_I0+0+0+0]   // 
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+0], v[vgprValuA_X0_I0+0+0+0+0], v20, s[60:61] // 
v_lshlrev_b32 v20, s62, v[vgprValuB_X0_I0+0+0+0]   // 
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+0], v[vgprValuB_X0_I0+0+0+0+0], v20, s[60:61] // 
s_nop 1
v_mfma_f32_32x32x4bf16 a[0:15], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:15]


/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x4 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x4 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL==0
s_cbranch_scc0 label_0005                          // restart LoopL
label_0006:

Summation_End_21:
/* endSummation: remove C-tile [19, 19) from pool */
/* endSummation: add vgpr [0...16) to pool */
.set GlobalReadIncsB, UNDEF
.set WaveId, UNDEF
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
.set ShadowLimitB, UNDEF
s_nop 16

/* Mapping of Acc register -> C Vgpr register */



/* not-LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v3, 6, v[vgprSerial]                 // v3 = v[vgprSerial] / 64
v_lshrrev_b32 v1, 1, v3                            // v1 = v3 / 2
v_mul_lo_u32 v1, 0x20, v1                          // wave coordination offset 1
v_and_b32 v4, 31, v[vgprSerial]                    // v4 = v[vgprSerial] % 32
v_add_u32 v1, v4, v1                               // coordination 1 = wave_id1 + tid1
v_mul_lo_u32 v2, v1, s[sgprStridesC]               //  offset 1
v_and_b32 v4, 1, v3                                // v4 = v3 % 2
v_mul_lo_u32 v4, 0x20, v4                          // wave coordination offset 0
v_and_b32 v0, 63, v[vgprSerial]                    // v0 = v[vgprSerial] % 64
v_lshrrev_b32 v0, 5, v0                            // v0 = v0 / 32
v_lshlrev_b32 v0, 0x2, v0                          // thread0 * 4 : mfma output 4 continuous outputs
v_add_u32 v0, v4, v0                               // coordination 0 = wave_id0 + tid0
s_mul_i32 s53, 64, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v0, s53, v0                              // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s53, 64, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v1, s53, v1                              // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1
/* Store Remap Local Write adderss */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x20, v4                         // coord1 offset of LDS for each Wave
v_and_b32 v4, 0x1f, v[vgprSerial]                  // coord1 offset of LDS for each thread
v_add_u32 v4, v12, v4                              // coord1 offset in MacroTile
v_mov_b32 v10, 0x44                                // lds stride = MT0 + PAD
v_mul_lo_u32 v8, v4, v10                           // lds coord1 offset = Col-id* lds stride
v_lshrrev_b32 v9, 6, v3                            // v9 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_lshrrev_b32 v11, 0x5, v3                         // tid / matrixInstN
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= 4 (each thread hold 4 element)
v_mad_u32_u24 v11, 32, v9, v11                     // coord0 += waveCoord0 * wave M shape(blockM*MiM)
_v_add_lshl_u32 v6, v8, v11, 0x1                   // local write C address

/* Store Remap Local Read address */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // v4 = v[vgprSerial] / 64
v_and_b32 v3, 63, v[vgprSerial]                    // v3 = v[vgprSerial] % 64
v_mul_lo_u32 v12, 0x10, v4                         // coord1 offset of LDS for each Wave
v_lshrrev_b32 v9, 0x4, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
v_mul_lo_u32 v8, v5, v10                           // lds coord1 offset = Col-id* lds stride
v_and_b32 v11, 0xf, v3                             // coord0 offset of LDS for each thread
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= gwvw (each thread hold gwvw element)
_v_add_lshl_u32 v7, v8, v11, 0x1                   // local read C address

/* Store Remap global write coord0 and coord1 */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x20, v4                         // coord1 offset of global memory for each Wave
v_lshrrev_b32 v4, 6, v3                            // v4 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_mad_u32_u24 v12, 16, v4, v12                     // waveCoord1 += waveCoord0 * MiN / WaveGroupM
v_lshrrev_b32 v9, 0x4, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
s_mul_i32 s54, 0x40, s[sgprWorkGroup0]             // s54 = wg0*MT0
v_add_co_u32 v3, vcc, s54, v11                     // coord0 = coord0 + wg0 * MT0
s_mul_i32 s55, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
_v_add_co_u32 v4, vcc, s55, v5                     // coord1 = tid1*VW + wg1*MT1

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //StoreRemap Start


/* not-LocalSplitU: global write */

s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 GW_Beta_36                          // Branch if Beta is not zero

s_and_b32 s54, 63, s[sgprSizeI]                    // s54 = s[sgprSizeI] % 64
s_add_u32 s56, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s56                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_27                         // jump if edges required
s_and_b32 s54, 63, s[sgprSizeJ]                    // s54 = s[sgprSizeJ] % 64
s_add_u32 s56, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s56                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_27                         // jump if edges required
GW_B0_E0_24:

/* edge=0, allocate 2 sgpr. perBatch=2 perElement=0 elementsPerBatch=4 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v10, v2, v0, 0x1                   // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
v_accvgpr_read_b32 v[vgprValuC+11], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+12], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+14], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+19], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+20], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+21], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+22], acc7 // copy areg to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+23], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+24], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+25], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+26], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+27], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+28], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+29], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+30], acc15 // copy areg to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0)] */
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha

/* apply mask, calc new C and issue writes */
v_mov_b32 v32, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v33, 0x7fff0000                          // fp32 Nan
v_mov_b32 v34, 0x7fff                              // rounding bias for bfloat16
v_cmp_u_f32 s[54:55], v[vgprValuC+11], v[vgprValuC+11] // check Nan
v_bfe_u32 v31, v[vgprValuC+11], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+11], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+11], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+11], 16, v[vgprValuC+11] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+12], v[vgprValuC+12] // check Nan
v_bfe_u32 v31, v[vgprValuC+12], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+12], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+12], v31, v33, s[54:55]  // 
v_and_or_b32 v11, v[vgprValuC+12], v32, v[vgprValuC+11] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v31, v[vgprValuC+13], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+13], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+13], 16, v[vgprValuC+13] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v31, v[vgprValuC+14], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+14], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v31, v33, s[54:55]  // 
v_and_or_b32 v12, v[vgprValuC+14], v32, v[vgprValuC+13] // pack two bf16 to dword
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cmp_u_f32 s[54:55], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v31, v[vgprValuC+19], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+19], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+19], 16, v[vgprValuC+19] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v31, v[vgprValuC+20], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+20], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v31, v33, s[54:55]  // 
v_and_or_b32 v19, v[vgprValuC+20], v32, v[vgprValuC+19] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v31, v[vgprValuC+21], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+21], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+21], 16, v[vgprValuC+21] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v31, v[vgprValuC+22], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+22], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v31, v33, s[54:55]  // 
v_and_or_b32 v20, v[vgprValuC+22], v32, v[vgprValuC+21] // pack two bf16 to dword
ds_write_b64 v6, v[19:20], offset:16               // storeRemap lw
v_cmp_u_f32 s[54:55], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v31, v[vgprValuC+23], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+23], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+23], 16, v[vgprValuC+23] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v31, v[vgprValuC+24], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+24], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v31, v33, s[54:55]  // 
v_and_or_b32 v23, v[vgprValuC+24], v32, v[vgprValuC+23] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v31, v[vgprValuC+25], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+25], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+25], 16, v[vgprValuC+25] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v31, v[vgprValuC+26], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+26], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v31, v33, s[54:55]  // 
v_and_or_b32 v24, v[vgprValuC+26], v32, v[vgprValuC+25] // pack two bf16 to dword
ds_write_b64 v6, v[23:24], offset:32               // storeRemap lw
v_cmp_u_f32 s[54:55], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v31, v[vgprValuC+27], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+27], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+27], 16, v[vgprValuC+27] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v31, v[vgprValuC+28], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+28], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v31, v33, s[54:55]  // 
v_and_or_b32 v27, v[vgprValuC+28], v32, v[vgprValuC+27] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v31, v[vgprValuC+29], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+29], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v31, v33, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+29], 16, v[vgprValuC+29] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v31, v[vgprValuC+30], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v31, v[vgprValuC+30], v31, v34          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v31, v33, s[54:55]  // 
v_and_or_b32 v28, v[vgprValuC+30], v32, v[vgprValuC+29] // pack two bf16 to dword
ds_write_b64 v6, v[27:28], offset:48               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:544               // storeRemap lr
ds_read_b64 v[19:20], v7, offset:1088              // storeRemap lr
ds_read_b64 v[21:22], v7, offset:1632              // storeRemap lr

v_mov_b32 v15, v5                                  // coord1
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(3)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(2)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 8                               // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[19:20], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 12                              // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[21:22], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_35                           // jump to end
GW_B0_E1_27:

/* edge=0, allocate 14 sgpr. perBatch=6 perElement=2 elementsPerBatch=4 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSharedMask=0 optSrdIncForRow=1 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */

/* shift vector components d1 */
v_bfi_b32 v8, 7, 0, v1                             // coord1 & ~(vw-1)
v_bfi_b32 v9, 7, 0, s[sgprSizesFree+1]             // sizeFree & ~(vw-1)
v_cmp_eq_u32 s[54:55], v8, v9                      // if coord1 is in edge glvw
v_and_b32 v9, s[sgprSizesFree+1], 7                // sizeFree mod VW
v_cmp_gt_u32 s[56:57], v9, 0                       // this problem is not multiple size of glvw
s_and_b64 s[54:55], s[54:55], s[56:57]             // AND both conditions
v_add_u32 v8, v1, v9                               // shift coord1
v_bfi_b32 v8, 7, v8, s[sgprSizesFree+1]            // new coord1 = (shift coord1 & (vw-1)) |  (sizeFree & ~(vw-1))
v_sub_i32 v9, v8, v1                               // shift how many column
v_cndmask_b32 v1, v1, v8, s[54:55]                 // set new coord1 if meet conditions
v_mad_i32_i24 v8, s[sgprStrideC1J], v9, v2         // new rowStart address += shift column * StridesC
v_cndmask_b32 v2, v2, v8, s[54:55]                 // set new rowStart if meet conditions
v_mov_b32 v8, 0x88                                 // lds byte stride = (MT0 + PAD) * bpe
v_mad_i32_i24 v8, v8, v9, v6                       // new lds write address += shift column * Lds byte Stride
v_cndmask_b32 v6, v6, v8, s[54:55]                 // set new rowStart if meet conditions

_v_add_lshl_u32 v10, v2, v0, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_v_add_co_u32 v8, vcc, v0, 8                       // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v15, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
_v_add_co_u32 v8, vcc, v0, 16                      // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v23, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
_v_add_co_u32 v8, vcc, v0, 24                      // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v28, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_accvgpr_read_b32 v[vgprValuC+11], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+12], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+14], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+19], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+20], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+21], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+22], acc7 // copy areg to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+24], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+25], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+26], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+27], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+29], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+30], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+31], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+32], acc15 // copy areg to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0)] */
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha

/* apply mask, calc new C and issue writes */
v_mov_b32 v34, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v35, 0x7fff0000                          // fp32 Nan
v_mov_b32 v36, 0x7fff                              // rounding bias for bfloat16
v_cmp_u_f32 s[54:55], v[vgprValuC+11], v[vgprValuC+11] // check Nan
v_bfe_u32 v33, v[vgprValuC+11], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+11], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+11], v33, v35, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+11], 16, v[vgprValuC+11] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+12], v[vgprValuC+12] // check Nan
v_bfe_u32 v33, v[vgprValuC+12], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+12], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+12], v33, v35, s[54:55]  // 
v_and_or_b32 v11, v[vgprValuC+12], v34, v[vgprValuC+11] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v33, v[vgprValuC+13], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+13], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v33, v35, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+13], 16, v[vgprValuC+13] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v33, v[vgprValuC+14], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+14], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v33, v35, s[54:55]  // 
v_and_or_b32 v12, v[vgprValuC+14], v34, v[vgprValuC+13] // pack two bf16 to dword
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cmp_u_f32 s[54:55], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v33, v[vgprValuC+19], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+19], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v33, v35, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+19], 16, v[vgprValuC+19] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v33, v[vgprValuC+20], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+20], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v33, v35, s[54:55]  // 
v_and_or_b32 v19, v[vgprValuC+20], v34, v[vgprValuC+19] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v33, v[vgprValuC+21], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+21], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v33, v35, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+21], 16, v[vgprValuC+21] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v33, v[vgprValuC+22], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+22], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v33, v35, s[54:55]  // 
v_and_or_b32 v20, v[vgprValuC+22], v34, v[vgprValuC+21] // pack two bf16 to dword
ds_write_b64 v6, v[19:20], offset:16               // storeRemap lw
v_cmp_u_f32 s[54:55], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v33, v[vgprValuC+24], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+24], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v33, v35, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+24], 16, v[vgprValuC+24] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v33, v[vgprValuC+25], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+25], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v33, v35, s[54:55]  // 
v_and_or_b32 v24, v[vgprValuC+25], v34, v[vgprValuC+24] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v33, v[vgprValuC+26], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+26], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v33, v35, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+26], 16, v[vgprValuC+26] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v33, v[vgprValuC+27], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+27], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v33, v35, s[54:55]  // 
v_and_or_b32 v25, v[vgprValuC+27], v34, v[vgprValuC+26] // pack two bf16 to dword
ds_write_b64 v6, v[24:25], offset:32               // storeRemap lw
v_cmp_u_f32 s[54:55], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v33, v[vgprValuC+29], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+29], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v33, v35, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+29], 16, v[vgprValuC+29] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v33, v[vgprValuC+30], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+30], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v33, v35, s[54:55]  // 
v_and_or_b32 v29, v[vgprValuC+30], v34, v[vgprValuC+29] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v33, v[vgprValuC+31], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+31], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v33, v35, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+31], 16, v[vgprValuC+31] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v33, v[vgprValuC+32], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v33, v[vgprValuC+32], v33, v36          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v33, v35, s[54:55]  // 
v_and_or_b32 v30, v[vgprValuC+32], v34, v[vgprValuC+31] // pack two bf16 to dword
ds_write_b64 v6, v[29:30], offset:48               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[10:11], v7, offset:0                 // storeRemap lr
ds_read_b64 v[12:13], v7, offset:544               // storeRemap lr
ds_read_b64 v[14:15], v7, offset:1088              // storeRemap lr
ds_read_b64 v[19:20], v7, offset:1632              // storeRemap lr

s_waitcnt lgkmcnt(3)                               // wait for LDS read
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v21, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v21, v21, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v21, v21, v8, 0x1                  // scale to BPE
v_cndmask_b32 v21, -1, v21, s[56:57]               // clip if OOB. offset
buffer_store_dwordx2 v[10:11], v21, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(2)                               // wait for LDS read
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v21, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v21, v21, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v21, v21, v8, 0x1                  // scale to BPE
v_cndmask_b32 v21, -1, v21, s[56:57]               // clip if OOB. offset
buffer_store_dwordx2 v[12:13], v21, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(1)                               // wait for LDS read
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v21, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v21, v21, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v21, v21, v8, 0x1                  // scale to BPE
v_cndmask_b32 v21, -1, v21, s[56:57]               // clip if OOB. offset
buffer_store_dwordx2 v[14:15], v21, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(0)                               // wait for LDS read
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v21, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v21, v21, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v21, v21, v8, 0x1                  // scale to BPE
v_cndmask_b32 v21, -1, v21, s[56:57]               // clip if OOB. offset
buffer_store_dwordx2 v[19:20], v21, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_35                           // jump to end
GW_Beta_36:
s_and_b32 s54, 63, s[sgprSizeI]                    // s54 = s[sgprSizeI] % 64
s_add_u32 s56, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s56                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B1_E1_34                         // jump if edges required
s_and_b32 s54, 63, s[sgprSizeJ]                    // s54 = s[sgprSizeJ] % 64
s_add_u32 s56, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s56                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B1_E1_34                         // jump if edges required
GW_B1_E0_31:

/* edge=0, allocate 2 sgpr. perBatch=2 perElement=0 elementsPerBatch=4 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v10, v2, v0, 0x1                   // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
buffer_load_dwordx2 v[11:12], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
buffer_load_dwordx2 v[13:14], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:16 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
buffer_load_dwordx2 v[27:28], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:32 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
buffer_load_dwordx2 v[33:34], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:48 // load C for beta calc
v_accvgpr_read_b32 v[vgprValuC+19], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+20], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+21], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+22], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+23], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+24], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+25], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+26], acc7 // copy areg to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+29], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+30], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+31], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+32], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+35], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+36], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+37], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+38], acc15 // copy areg to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0)] */
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha

/* apply mask, calc new C and issue writes */
v_mov_b32 v40, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v41, 0x7fff0000                          // fp32 Nan
v_mov_b32 v42, 0x7fff                              // rounding bias for bfloat16

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 4 - 0 + 0 - 1
v_lshlrev_b32 v8, 16, v11                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+19], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v11, v40                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+20], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v8, 16, v12                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+21], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v12, v40                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+22], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_cmp_u_f32 s[54:55], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v39, v[vgprValuC+19], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+19], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v39, v41, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+19], 16, v[vgprValuC+19] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v39, v[vgprValuC+20], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+20], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v39, v41, s[54:55]  // 
v_and_or_b32 v19, v[vgprValuC+20], v40, v[vgprValuC+19] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v39, v[vgprValuC+21], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+21], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v39, v41, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+21], 16, v[vgprValuC+21] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v39, v[vgprValuC+22], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+22], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v39, v41, s[54:55]  // 
v_and_or_b32 v20, v[vgprValuC+22], v40, v[vgprValuC+21] // pack two bf16 to dword
ds_write_b64 v6, v[19:20], offset:0                // storeRemap lw

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 4 - 1 + 0 - 1
v_lshlrev_b32 v8, 16, v13                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+23], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v13, v40                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+24], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v8, 16, v14                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+25], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v14, v40                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+26], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_cmp_u_f32 s[54:55], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v39, v[vgprValuC+23], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+23], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v39, v41, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+23], 16, v[vgprValuC+23] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v39, v[vgprValuC+24], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+24], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v39, v41, s[54:55]  // 
v_and_or_b32 v23, v[vgprValuC+24], v40, v[vgprValuC+23] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v39, v[vgprValuC+25], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+25], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v39, v41, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+25], 16, v[vgprValuC+25] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v39, v[vgprValuC+26], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+26], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v39, v41, s[54:55]  // 
v_and_or_b32 v24, v[vgprValuC+26], v40, v[vgprValuC+25] // pack two bf16 to dword
ds_write_b64 v6, v[23:24], offset:16               // storeRemap lw

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 4 - 2 + 0 - 1
v_lshlrev_b32 v8, 16, v27                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+29], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v27, v40                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+30], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v8, 16, v28                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+31], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v28, v40                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+32], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_cmp_u_f32 s[54:55], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v39, v[vgprValuC+29], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+29], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v39, v41, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+29], 16, v[vgprValuC+29] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v39, v[vgprValuC+30], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+30], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v39, v41, s[54:55]  // 
v_and_or_b32 v29, v[vgprValuC+30], v40, v[vgprValuC+29] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v39, v[vgprValuC+31], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+31], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v39, v41, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+31], 16, v[vgprValuC+31] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v39, v[vgprValuC+32], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+32], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v39, v41, s[54:55]  // 
v_and_or_b32 v30, v[vgprValuC+32], v40, v[vgprValuC+31] // pack two bf16 to dword
ds_write_b64 v6, v[29:30], offset:32               // storeRemap lw

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 4 - 3 + 0 - 1
v_lshlrev_b32 v8, 16, v33                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+35], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v33, v40                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+36], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v8, 16, v34                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+37], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v34, v40                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+38], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_cmp_u_f32 s[54:55], v[vgprValuC+35], v[vgprValuC+35] // check Nan
v_bfe_u32 v39, v[vgprValuC+35], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+35], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+35], v39, v41, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+35], 16, v[vgprValuC+35] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+36], v[vgprValuC+36] // check Nan
v_bfe_u32 v39, v[vgprValuC+36], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+36], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+36], v39, v41, s[54:55]  // 
v_and_or_b32 v35, v[vgprValuC+36], v40, v[vgprValuC+35] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+37], v[vgprValuC+37] // check Nan
v_bfe_u32 v39, v[vgprValuC+37], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+37], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+37], v39, v41, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+37], 16, v[vgprValuC+37] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+38], v[vgprValuC+38] // check Nan
v_bfe_u32 v39, v[vgprValuC+38], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v39, v[vgprValuC+38], v39, v42          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+38], v39, v41, s[54:55]  // 
v_and_or_b32 v36, v[vgprValuC+38], v40, v[vgprValuC+37] // pack two bf16 to dword
ds_write_b64 v6, v[35:36], offset:48               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:544               // storeRemap lr
ds_read_b64 v[19:20], v7, offset:1088              // storeRemap lr
ds_read_b64 v[21:22], v7, offset:1632              // storeRemap lr

v_mov_b32 v15, v5                                  // coord1
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(3)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(2)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 8                               // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[19:20], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 12                              // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[21:22], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_35                           // jump to end
GW_B1_E1_34:

/* edge=1, allocate 14 sgpr. perBatch=6 perElement=2 elementsPerBatch=4 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSharedMask=0 optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */

/* shift vector components d1 */
v_bfi_b32 v8, 7, 0, v1                             // coord1 & ~(vw-1)
v_bfi_b32 v9, 7, 0, s[sgprSizesFree+1]             // sizeFree & ~(vw-1)
v_cmp_eq_u32 s[54:55], v8, v9                      // if coord1 is in edge glvw
v_and_b32 v9, s[sgprSizesFree+1], 7                // sizeFree mod VW
v_cmp_gt_u32 s[56:57], v9, 0                       // this problem is not multiple size of glvw
s_and_b64 s[54:55], s[54:55], s[56:57]             // AND both conditions
v_add_u32 v8, v1, v9                               // shift coord1
v_bfi_b32 v8, 7, v8, s[sgprSizesFree+1]            // new coord1 = (shift coord1 & (vw-1)) |  (sizeFree & ~(vw-1))
v_sub_i32 v9, v8, v1                               // shift how many column
v_cndmask_b32 v1, v1, v8, s[54:55]                 // set new coord1 if meet conditions
v_mad_i32_i24 v8, s[sgprStrideC1J], v9, v2         // new rowStart address += shift column * StridesC
v_cndmask_b32 v2, v2, v8, s[54:55]                 // set new rowStart if meet conditions
v_mov_b32 v8, 0x88                                 // lds byte stride = (MT0 + PAD) * bpe
v_mad_i32_i24 v8, v8, v9, v6                       // new lds write address += shift column * Lds byte Stride
v_cndmask_b32 v6, v6, v8, s[54:55]                 // set new rowStart if meet conditions

v_cmp_lt_u32 s[54:55], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[60:61], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[60:61], s[54:55], s[60:61]             // in0 && in1
_v_add_lshl_u32 v10, v2, v0, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v10, -1, v10, s[60:61]               // clip if OOB. offset
buffer_load_dwordx2 v[11:12], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_v_add_co_u32 v8, vcc, v0, 8                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[54:55], s[62:63]             // in0 && in1
_v_add_lshl_u32 v13, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, -1, v13, s[62:63]               // clip if OOB. offset
buffer_load_dwordx2 v[14:15], v13, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
_v_add_co_u32 v8, vcc, v0, 16                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[64:65], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[64:65], s[54:55], s[64:65]             // in0 && in1
_v_add_lshl_u32 v27, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v27, -1, v27, s[64:65]               // clip if OOB. offset
buffer_load_dwordx2 v[28:29], v27, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
_v_add_co_u32 v8, vcc, v0, 24                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[66:67], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[66:67], s[54:55], s[66:67]             // in0 && in1
_v_add_lshl_u32 v34, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, -1, v34, s[66:67]               // clip if OOB. offset
buffer_load_dwordx2 v[35:36], v34, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
v_accvgpr_read_b32 v[vgprValuC+19], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+20], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+21], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+22], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+23], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+24], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+25], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+26], acc7 // copy areg to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+30], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+31], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+32], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+33], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+37], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+38], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+39], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+40], acc15 // copy areg to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0)] */
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
s_waitcnt vmcnt(0)                                 // wait C

/* apply mask, calc new C and issue writes */
v_mov_b32 v42, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v43, 0x7fff0000                          // fp32 Nan
v_mov_b32 v44, 0x7fff                              // rounding bias for bfloat16
v_lshlrev_b32 v8, 16, v11                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+19], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v11, v42                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+20], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v8, 16, v12                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+21], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v12, v42                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+22], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_cmp_u_f32 s[54:55], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v41, v[vgprValuC+19], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+19], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v41, v43, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+19], 16, v[vgprValuC+19] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v41, v[vgprValuC+20], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+20], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v41, v43, s[54:55]  // 
v_and_or_b32 v19, v[vgprValuC+20], v42, v[vgprValuC+19] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v41, v[vgprValuC+21], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+21], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v41, v43, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+21], 16, v[vgprValuC+21] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v41, v[vgprValuC+22], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+22], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v41, v43, s[54:55]  // 
v_and_or_b32 v20, v[vgprValuC+22], v42, v[vgprValuC+21] // pack two bf16 to dword
ds_write_b64 v6, v[19:20], offset:0                // storeRemap lw
v_lshlrev_b32 v8, 16, v14                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+23], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v14, v42                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+24], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v8, 16, v15                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+25], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v15, v42                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+26], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_cmp_u_f32 s[54:55], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v41, v[vgprValuC+23], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+23], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v41, v43, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+23], 16, v[vgprValuC+23] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v41, v[vgprValuC+24], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+24], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v41, v43, s[54:55]  // 
v_and_or_b32 v23, v[vgprValuC+24], v42, v[vgprValuC+23] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v41, v[vgprValuC+25], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+25], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v41, v43, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+25], 16, v[vgprValuC+25] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v41, v[vgprValuC+26], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+26], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v41, v43, s[54:55]  // 
v_and_or_b32 v24, v[vgprValuC+26], v42, v[vgprValuC+25] // pack two bf16 to dword
ds_write_b64 v6, v[23:24], offset:16               // storeRemap lw
v_lshlrev_b32 v8, 16, v28                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+30], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v28, v42                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+31], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v8, 16, v29                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+32], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v29, v42                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+33], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_cmp_u_f32 s[54:55], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v41, v[vgprValuC+30], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+30], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v41, v43, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+30], 16, v[vgprValuC+30] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v41, v[vgprValuC+31], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+31], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v41, v43, s[54:55]  // 
v_and_or_b32 v30, v[vgprValuC+31], v42, v[vgprValuC+30] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v41, v[vgprValuC+32], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+32], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v41, v43, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+32], 16, v[vgprValuC+32] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+33], v[vgprValuC+33] // check Nan
v_bfe_u32 v41, v[vgprValuC+33], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+33], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+33], v41, v43, s[54:55]  // 
v_and_or_b32 v31, v[vgprValuC+33], v42, v[vgprValuC+32] // pack two bf16 to dword
ds_write_b64 v6, v[30:31], offset:32               // storeRemap lw
v_lshlrev_b32 v8, 16, v35                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+37], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v35, v42                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+38], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v8, 16, v36                          // convert bf16 to fp32
v_mac_f32 v[vgprValuC+39], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_and_b32 v8, v36, v42                             // convert bf16 to fp32
v_mac_f32 v[vgprValuC+40], v8, s[sgprBeta]         // finalSum = sum*alpha + C*beta
v_cmp_u_f32 s[54:55], v[vgprValuC+37], v[vgprValuC+37] // check Nan
v_bfe_u32 v41, v[vgprValuC+37], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+37], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+37], v41, v43, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+37], 16, v[vgprValuC+37] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+38], v[vgprValuC+38] // check Nan
v_bfe_u32 v41, v[vgprValuC+38], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+38], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+38], v41, v43, s[54:55]  // 
v_and_or_b32 v37, v[vgprValuC+38], v42, v[vgprValuC+37] // pack two bf16 to dword
v_cmp_u_f32 s[54:55], v[vgprValuC+39], v[vgprValuC+39] // check Nan
v_bfe_u32 v41, v[vgprValuC+39], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+39], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+39], v41, v43, s[54:55]  // 
v_lshrrev_b32 v[vgprValuC+39], 16, v[vgprValuC+39] // convert C to bf16
v_cmp_u_f32 s[54:55], v[vgprValuC+40], v[vgprValuC+40] // check Nan
v_bfe_u32 v41, v[vgprValuC+40], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v41, v[vgprValuC+40], v41, v44          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+40], v41, v43, s[54:55]  // 
v_and_or_b32 v38, v[vgprValuC+40], v42, v[vgprValuC+39] // pack two bf16 to dword
ds_write_b64 v6, v[37:38], offset:48               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[10:11], v7, offset:0                 // storeRemap lr
ds_read_b64 v[12:13], v7, offset:544               // storeRemap lr
ds_read_b64 v[14:15], v7, offset:1088              // storeRemap lr
ds_read_b64 v[19:20], v7, offset:1632              // storeRemap lr

s_waitcnt lgkmcnt(3)                               // wait for LDS read
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v21, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v21, v21, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v21, v21, v8, 0x1                  // scale to BPE
v_cndmask_b32 v21, -1, v21, s[56:57]               // clip if OOB. offset
buffer_store_dwordx2 v[10:11], v21, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(2)                               // wait for LDS read
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v21, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v21, v21, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v21, v21, v8, 0x1                  // scale to BPE
v_cndmask_b32 v21, -1, v21, s[56:57]               // clip if OOB. offset
buffer_store_dwordx2 v[12:13], v21, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(1)                               // wait for LDS read
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v21, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v21, v21, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v21, v21, v8, 0x1                  // scale to BPE
v_cndmask_b32 v21, -1, v21, s[56:57]               // clip if OOB. offset
buffer_store_dwordx2 v[14:15], v21, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(0)                               // wait for LDS read
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v21, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v21, v21, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v21, v21, v8, 0x1                  // scale to BPE
v_cndmask_b32 v21, -1, v21, s[56:57]               // clip if OOB. offset
buffer_store_dwordx2 v[19:20], v21, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_35                           // jump to end
label_GW_End_35:

label_0037:  /// KernelEnd
s_endpgm                                           // Kernel End


