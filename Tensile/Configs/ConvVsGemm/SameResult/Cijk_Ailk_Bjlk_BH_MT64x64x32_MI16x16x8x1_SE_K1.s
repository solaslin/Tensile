

/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureCOV3
.amdgcn_target "amdgcn-amd-amdhsa--gfx908+sram-ecc"
.text
.protected Cijk_Ailk_Bjlk_BH_MT64x64x32_MI16x16x8x1_SE_K1
.globl Cijk_Ailk_Bjlk_BH_MT64x64x32_MI16x16x8x1_SE_K1
.p2align 8
.type Cijk_Ailk_Bjlk_BH_MT64x64x32_MI16x16x8x1_SE_K1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cijk_Ailk_Bjlk_BH_MT64x64x32_MI16x16x8x1_SE_K1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_next_free_vgpr 64 // vgprs
  .amdhsa_next_free_sgpr 65 // sgprs
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
/* ThreadTile= 8 x 2 */
/* SubGroup= 8 x 32 */
/* VectorWidth=2 */
/* GlobalLoadVectorWidthA=2, GlobalLoadVectorWidthB=2 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=False */
.amdgpu_metadata
---
amdhsa.version:
  - 1
  - 0
amdhsa.kernels:
  - .name: Cijk_Ailk_Bjlk_BH_MT64x64x32_MI16x16x8x1_SE_K1
    .symbol: 'Cijk_Ailk_Bjlk_BH_MT64x64x32_MI16x16x8x1_SE_K1.kd'
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
      - .name:            strideD0
        .size:            4
        .offset:          60
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideD1
        .size:            4
        .offset:          64
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC0
        .size:            4
        .offset:          68
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC1
        .size:            4
        .offset:          72
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA0
        .size:            4
        .offset:          76
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA1
        .size:            4
        .offset:          80
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB0
        .size:            4
        .offset:          84
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB1
        .size:            4
        .offset:          88
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree0
        .size:            4
        .offset:          92
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree1
        .size:            4
        .offset:          96
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree2
        .size:            4
        .offset:          100
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesSum0
        .size:            4
        .offset:          104
        .value_kind:      by_value
        .value_type:      u32
      - .name:            OrigStaggerUIter
        .size:            4
        .offset:          108
        .value_kind:      by_value
        .value_type:      i32
      - .name:            NumWorkGroups0
        .size:            4
        .offset:          112
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumWorkGroups1
        .size:            4
        .offset:          116
        .value_kind:      by_value
        .value_type:      u32
      - .name:            MagicNumberProblemNumGroupTiles0
        .size:            4
        .offset:          120
        .value_kind:      by_value
        .value_type:      u32
      - .name:            GridNumWorkGroups0
        .size:            4
        .offset:          124
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumFullBlocks
        .size:            4
        .offset:          128
        .value_kind:      by_value
        .value_type:      u32
      - .name:            WgmRemainder1
        .size:            4
        .offset:          132
        .value_kind:      by_value
        .value_type:      u32
      - .name:            MagicNumberWgmRemainder1
        .size:            4
        .offset:          136
        .value_kind:      by_value
        .value_type:      u32
      - .name:            padding
        .size:            4
        .offset:          140
        .value_kind:      by_value
        .value_type:      u32
    .group_segment_fixed_size:   16384
    .kernarg_segment_align:      8
    .kernarg_segment_size:       144
    .max_flat_workgroup_size:    256
    .private_segment_fixed_size: 0
    .sgpr_count:                 65
    .sgpr_spill_count:           0
    .vgpr_count:                 64
    .vgpr_spill_count:           0
    .wavefront_size:             64
...
.end_amdgpu_metadata
Cijk_Ailk_Bjlk_BH_MT64x64x32_MI16x16x8x1_SE_K1:

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
.set vgprValuA_X1_I0, 2
.set vgprG2LA, 4
.set vgprValuB_X0_I0, 8
.set vgprValuB_X1_I0, 10
.set vgprG2LB, 12
.set vgprLocalWriteAddrA, 16
.set vgprLocalWriteAddrB, 17
.set vgprGlobalReadOffsetA, 18
.set vgprGlobalReadOffsetB, 22
.set vgprLocalReadAddrA, 26
.set vgprLocalReadAddrB, 27
.set vgprSerial, 28
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
.set sgprStridesD, 37
.set sgprStridesC, 39
.set sgprStridesA, 41
.set sgprStridesB, 43
.set sgprSizesFree, 45
.set sgprSizesSum, 48
.set sgprOrigStaggerUIter, 49
.set sgprNumWorkGroups0, 50
.set sgprNumWorkGroups1, 51
.set sgprMagicNumberProblemNumGroupTiles0, 52
.set sgprGridNumWorkGroups0, 53
.set sgprNumFullBlocks, 54
.set sgprWgmRemainder1, 55
.set sgprMagicNumberWgmRemainder1, 56
.set sgprShadowLimitA, 52
.set sgprShadowLimitB, 58
.set sgprGlobalReadIncsA, 37
.set sgprGlobalReadIncsB, 38
.set sgprWaveId, 49
/* max SGPR=65 */

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
.set SrdShiftLeftA, 2
.set SrdShiftLeftB, 2
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
_v_add_u32 v[\vgprAddr+0], 0x2, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffset1J:req vgprOffsetL:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideBL], v[\vgprOffsetL] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc, v[\vgprOffset1J], v[\vgprTmp+0] // accumulate K lower
_v_add_u32 v[\vgprAddr+0], 0x2, v[\vgprAddr+0]     // add prepad for pointer shift
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
s_load_dword s56, s[sgprKernArgAddress:sgprKernArgAddress+1], 0x88 // 
s_waitcnt lgkmcnt(0)                               // wait for 140 bytes of kern args
v_lshrrev_b32  v0, 0x6, v[vgprSerial]              // Wavefront Serial Id
v_readfirstlane_b32 s[sgprWaveId], v0              // WaveId


/******************************************/
/* Local Read Addresses                   */
/******************************************/


/* local read addresses: tile assignments a */

/*lr0I = serial % SG0I*/
v_and_b32 v2, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v1, 15, v2                               // 1. N offset: nIdx = wtid % MI_N(16)
v_lshrrev_b32 v0, 4, v2                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v0, 0, v0                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v0, 4, v0                            // 2. block offset: bnOffset = bnIdx * strideBlock(16)
v_add_u32 v1, v0, v1                               // 3. add N and block offset: bnOffset = block and N offset
v_lshrrev_b32 v2, 4, v2                            // 4. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v2, 7, v2                            // 4. K offset: lrKOffset = kIdx * mStride(128)
v_add_u32 v1, v2, v1                               // 5. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v0, 6, v[vgprSerial]                 // 6. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v0, 1, v0                                // 6. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshlrev_b32 v0, 4, v0                            // 6. wave offset in M dimen: wOffset = wtid0 * W0Stride(16)
v_add_u32 v1, v0, v1                               // 7. final local read offset: flrOffset = lrOffset + WOffset


/* local read addresses: tile assignments b */

/*lr1J = (serial / SG1J) % SG1J*/
v_and_b32 v3, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v2, 15, v3                               // 1. N offset: nIdx = wtid % MI_N(16)
v_lshrrev_b32 v0, 4, v3                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v0, 0, v0                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v0, 4, v0                            // 2. block offset: bnOffset = bnIdx * strideBlock(16)
v_add_u32 v2, v0, v2                               // 3. add N and block offset: bnOffset = block and N offset
v_lshrrev_b32 v3, 4, v3                            // 4. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v3, 7, v3                            // 4. K offset: lrKOffset = kIdx * mStride(128)
v_add_u32 v2, v3, v2                               // 5. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v0, 7, v[vgprSerial]                 // 6. wave offset in N dimen: wtid = tid / dividedForWaveId(128)
v_and_b32 v0, 1, v0                                // 6. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshlrev_b32 v0, 4, v0                            // 6. wave offset in M dimen: wOffset = wtid0 * W0Stride(16)
v_add_u32 v2, v0, v2                               // 7. final local read offset: flrOffset = lrOffset + WOffset


/* local read addresses: final offsets a */

v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s57, 64                                  // LSU offset: stirde = MT0(64) + PAD0(0)
v_mul_lo_u32 v0, s57, v0                           // LSU offset: lsuoffset = sgid*(MT0+PAD)
_v_add_lshl_u32 v[vgprLocalReadAddrA], v0, v1, 0x1 // Final Offset: offset = (lro0*VW+lsuoffset)*bpe


/* local read addresses: final offsets b */

v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s57, 64                                  // LSU offset: stirde = MT1(64) + PAD1(0)
v_mul_lo_u32 v0, s57, v0                           // LSU offset: lsuoffset = sgid*(MT1+PAD)
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

/* LVCA = 32 */
/* v0 = (local)groA-tile = serial%LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial/LVCA */
v_lshrrev_b32 v1, 5, v[vgprSerial]                 // v1 = v[vgprSerial] / 32
v_and_b32 v0, 31, v[vgprSerial]                    // v0 = v[vgprSerial] % 32
/* gro-tile *= glvw */
v_lshlrev_b32 v0, 1, v0                            // v0 = v0 * 2


/* global read addresses: tile offset assignment b */

/* LVCB = 32 */
/* v2 = (local)groB-tile = serial%LVCB (note (wgB*MTB) will be added to SRD) */
/* v3 = groB-unroll = serial/LVCB */
v_lshrrev_b32 v3, 5, v[vgprSerial]                 // v3 = v[vgprSerial] / 32
v_and_b32 v2, 31, v[vgprSerial]                    // v2 = v[vgprSerial] % 32
/* gro-tile *= glvw */
v_lshlrev_b32 v2, 1, v2                            // v2 = v2 * 2


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
_v_add_co_u32 v7, vcc, 8, v6                       // groAL_1 + LSPA
_v_add_co_u32 v8, vcc, 8, v7                       // groAL_2 + LSPA
_v_add_co_u32 v9, vcc, 8, v8                       // groAL_3 + LSPA


/* global read addresses: unroll offsets b */

v_mov_b32 v10, v3                                  // groBL_0
_v_add_co_u32 v11, vcc, 8, v10                     // groBL_1 + LSPB
_v_add_co_u32 v12, vcc, 8, v11                     // groBL_2 + LSPB
_v_add_co_u32 v13, vcc, 8, v12                     // groBL_3 + LSPB


/* global read addresses: shift a */

s_mul_i32 s57, s[sgprWorkGroup0], 64               // WorkGroup[01] * MT
s_sub_u32 s57, s[sgprSizeI], s57                   // edge = Size0I - WG*MT
s_sub_u32 s57, s57, 2                              // edge -= margin
v_mov_b32 v14, s57                                 // edge vgpr = Size0I-2
_v_add_co_u32 v15, vcc, v14, 2                     // add srdShiftLift
_v_add_co_u32 v29, vcc, v4, 2                      // 
v_cmp_lt_u32 s[60:61], v29, v15                    // offset < edge
v_cndmask_b32 v4, v14, v4, s[60:61]                // offset = (offset < edge) ? offset : edge


/* global read addresses: shift b */

s_mul_i32 s57, s[sgprWorkGroup1], 64               // WorkGroup[01] * MT
s_sub_u32 s57, s[sgprSizeJ], s57                   // edge = Size1J - WG*MT
s_sub_u32 s57, s57, 2                              // edge -= margin
v_mov_b32 v14, s57                                 // edge vgpr = Size1J-2
_v_add_co_u32 v15, vcc, v14, 2                     // add srdShiftLift
_v_add_co_u32 v29, vcc, v5, 2                      // 
v_cmp_lt_u32 s[60:61], v29, v15                    // offset < edge
v_cndmask_b32 v5, v14, v5, s[60:61]                // offset = (offset < edge) ? offset : edge


/* global read addresses: final offsets a */

GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  4,  6, 29 // gROA_0_0_0_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+1,  4,  7, 29 // gROA_0_0_1_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+2,  4,  8, 29 // gROA_0_0_2_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+3,  4,  9, 29 // gROA_0_0_3_0


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  5, 10, 6 // gROB_0_0_0_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+1,  5, 11, 6 // gROB_0_0_1_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+2,  5, 12, 6 // gROB_0_0_2_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+3,  5, 13, 6 // gROB_0_0_3_0


/* global read addresses: addresses a */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s63, s[sgprWorkGroup0], 64            // WorkGroup[01] * MT
s_mul_i32 s62, s[sgprWorkGroup0], 64               // WorkGroup[01] * MT
s_sub_u32 s[sgprShadowLimitA+0], s[sgprTensor2dSizeA], s62 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprTensor2dSizeA+1], s63 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 4 // extend limit for pre-pad
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
s_sub_u32 s[sgprSrdA+0], s[sgprSrdA+0], 4          // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdA+1], s[sgprSrdA+1], 0         // pre-pad to make room for possible pointer shift
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: addresses b */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s63, s[sgprWorkGroup1], 64            // WorkGroup[01] * MT
s_mul_i32 s62, s[sgprWorkGroup1], 64               // WorkGroup[01] * MT
s_sub_u32 s[sgprShadowLimitB+0], s[sgprTensor2dSizeB], s62 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprTensor2dSizeB+1], s63 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 4 // extend limit for pre-pad
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
s_sub_u32 s[sgprSrdB+0], s[sgprSrdB+0], 4          // pre-pad to make room for possible pointer shift
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


buffer_load_dword v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dword v[vgprG2LA+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dword v[vgprG2LA+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dword v[vgprG2LA+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_3_0


buffer_load_dword v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dword v[vgprG2LB+1], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dword v[vgprG2LB+2], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dword v[vgprG2LB+3], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_3_0


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

ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:1024 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 1024
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:2048 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 2048
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:3072 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 3072


/* local write b */

ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:1024 // lwoB_0_0_1_0 = (0*LSCB) + (1*LSPB)(*MT1J+PAD) = 1024
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:2048 // lwoB_0_0_2_0 = (0*LSCB) + (2*LSPB)(*MT1J+PAD) = 2048
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:3072 // lwoB_0_0_3_0 = (0*LSCB) + (3*LSPB)(*MT1J+PAD) = 3072


/* local write swap a */



/* local write swap b */




s_waitcnt lgkmcnt(0)                               // 0prefetch wait for local write

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //


/* local read prefetch a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v29, v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v30, v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read prefetch b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v31, v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v32, v[vgprLocalReadAddrB] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->512 */


/* local read inc b */

/* N/A, lro->512 */



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

buffer_load_dword v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write dataAtIter=-1 numReadsIter=1 numPrefetchIter=0 skipReadsIter=1 readsPerIter=8 old=8, new=0 newLW=0 newLR=0
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v29 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v31 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:3]
ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v33, v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
buffer_load_dword v[vgprG2LA+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v30 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+1], v[vgprValuB_X0_I0+1], v32 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+0+0+0], a[4:7]
ds_read_u16_d16_hi v35, v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1088 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v34, v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0
buffer_load_dword v[vgprG2LA+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_2_0
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+1+0+0], a[8:11]
ds_read_u16 v[vgprValuB_X1_I0+1], v[vgprLocalReadAddrB] offset:1088 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v36, v[vgprLocalReadAddrB] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0
buffer_load_dword v[vgprG2LA+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_3_0
buffer_load_dword v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dword v[vgprG2LB+1], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dword v[vgprG2LB+2], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dword v[vgprG2LB+3], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_3_0
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+1+0+0], a[12:15]


/* iter 1 */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v29, v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0

/* global read inc A loopL */
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s[sgprGlobalReadIncsA+0] // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], 0        // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s[sgprGlobalReadIncsA+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(7)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:8192 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 8192
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write dataAtIter=0 numReadsIter=2 numPrefetchIter=0 skipReadsIter=1 readsPerIter=8 old=8, new=3 newLW=1 newLR=2
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v33 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v35 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:3]
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v31, v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0

/* global read inc B loopL */
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s[sgprGlobalReadIncsB+0] // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], 0        // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s[sgprGlobalReadIncsB+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(6)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:9216 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 9216
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v34 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+1], v[vgprValuB_X1_I0+1], v36 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+0+0+0], a[4:7]
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:2112 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v30, v[vgprLocalReadAddrA] offset:2240 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(5)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:10240 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 10240
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+1+0+0], a[8:11]
ds_read_u16 v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:2112 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v32, v[vgprLocalReadAddrB] offset:2240 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(4)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:11264 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 11264
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+1+0+0], a[12:15]


/* iter 2 (localWrite + swap local pointers iteration) */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v33, v[vgprLocalReadAddrA] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(3)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:8192 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 8192
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=1 numReadsIter=3 numPrefetchIter=0 skipReadsIter=1 readsPerIter=8 old=15, new=4 newLW=2 newLR=2
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v29 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v31 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:3]
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v35, v[vgprLocalReadAddrB] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:9216 // lwoB_0_0_1_0 = (0*LSCB) + (1*LSPB)(*MT1J+PAD) = 9216
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v30 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+1], v[vgprValuB_X0_I0+1], v32 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+0+0+0], a[4:7]
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:3136 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v34, v[vgprLocalReadAddrA] offset:3264 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:10240 // lwoB_0_0_2_0 = (0*LSCB) + (2*LSPB)(*MT1J+PAD) = 10240
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+1+0+0], a[8:11]
ds_read_u16 v[vgprValuB_X1_I0+1], v[vgprLocalReadAddrB] offset:3136 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v36, v[vgprLocalReadAddrB] offset:3264 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:11264 // lwoB_0_0_3_0 = (0*LSCB) + (3*LSPB)(*MT1J+PAD) = 11264

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
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+1+0+0], a[12:15]


/* iter 3 */

s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //
s_waitcnt lgkmcnt(1)                               // wait for prior local read local write dataAtIter=2 numReadsIter=3 numPrefetchIter=1 skipReadsIter=1 readsPerIter=8 old=8, new=1 newLW=1 newLR=0
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v33 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v35 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:3]
ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:8192 // L -> Reg lro=0 swapByteOffset=8192 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v29, v[vgprLocalReadAddrA] offset:8320 // L -> Reg lro=0 swapByteOffset=8192 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:8192 // L -> Reg lro=0 swapByteOffset=8192 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v34 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+1], v[vgprValuB_X1_I0+1], v36 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+0+0+0], a[4:7]
ds_read_u16_d16_hi v31, v[vgprLocalReadAddrB] offset:8320 // L -> Reg lro=0 swapByteOffset=8192 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:8256 // L -> Reg lro=0 swapByteOffset=8192 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v30, v[vgprLocalReadAddrA] offset:8384 // L -> Reg lro=0 swapByteOffset=8192 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+1+0+0], a[8:11]
ds_read_u16 v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:8256 // L -> Reg lro=0 swapByteOffset=8192 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v32, v[vgprLocalReadAddrB] offset:8384 // L -> Reg lro=0 swapByteOffset=8192 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+1+0+0], a[12:15]




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

buffer_load_dword v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write dataAtIter=-1 numReadsIter=1 numPrefetchIter=0 skipReadsIter=1 readsPerIter=8 old=8, new=0 newLW=0 newLR=0
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v29 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v31 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:3]
ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:9216 // L -> Reg lro=512 swapByteOffset=8192 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v33, v[vgprLocalReadAddrA] offset:9344 // L -> Reg lro=512 swapByteOffset=8192 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:9216 // L -> Reg lro=512 swapByteOffset=8192 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
buffer_load_dword v[vgprG2LA+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v30 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+1], v[vgprValuB_X0_I0+1], v32 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+0+0+0], a[4:7]
ds_read_u16_d16_hi v35, v[vgprLocalReadAddrB] offset:9344 // L -> Reg lro=512 swapByteOffset=8192 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:9280 // L -> Reg lro=512 swapByteOffset=8192 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v34, v[vgprLocalReadAddrA] offset:9408 // L -> Reg lro=512 swapByteOffset=8192 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0
buffer_load_dword v[vgprG2LA+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_2_0
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+1+0+0], a[8:11]
ds_read_u16 v[vgprValuB_X1_I0+1], v[vgprLocalReadAddrB] offset:9280 // L -> Reg lro=512 swapByteOffset=8192 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v36, v[vgprLocalReadAddrB] offset:9408 // L -> Reg lro=512 swapByteOffset=8192 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0
buffer_load_dword v[vgprG2LA+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_3_0
buffer_load_dword v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dword v[vgprG2LB+1], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dword v[vgprG2LB+2], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dword v[vgprG2LB+3], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_3_0
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+1+0+0], a[12:15]


/* iter 1 */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:10240 // L -> Reg lro=1024 swapByteOffset=8192 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v29, v[vgprLocalReadAddrA] offset:10368 // L -> Reg lro=1024 swapByteOffset=8192 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0

/* global read inc A loopL */
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s[sgprGlobalReadIncsA+0] // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], 0        // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s[sgprGlobalReadIncsA+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(7)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write dataAtIter=0 numReadsIter=2 numPrefetchIter=0 skipReadsIter=1 readsPerIter=8 old=8, new=3 newLW=1 newLR=2
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v33 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v35 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:3]
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:10240 // L -> Reg lro=1024 swapByteOffset=8192 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v31, v[vgprLocalReadAddrB] offset:10368 // L -> Reg lro=1024 swapByteOffset=8192 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0

/* global read inc B loopL */
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s[sgprGlobalReadIncsB+0] // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], 0        // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s[sgprGlobalReadIncsB+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(6)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:1024 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 1024
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v34 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+1], v[vgprValuB_X1_I0+1], v36 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+0+0+0], a[4:7]
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:10304 // L -> Reg lro=1024 swapByteOffset=8192 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v30, v[vgprLocalReadAddrA] offset:10432 // L -> Reg lro=1024 swapByteOffset=8192 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(5)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:2048 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 2048
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+1+0+0], a[8:11]
ds_read_u16 v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:10304 // L -> Reg lro=1024 swapByteOffset=8192 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v32, v[vgprLocalReadAddrB] offset:10432 // L -> Reg lro=1024 swapByteOffset=8192 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(4)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:3072 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 3072
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+1+0+0], a[12:15]


/* iter 2 (localWrite + swap local pointers iteration) */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:11264 // L -> Reg lro=1536 swapByteOffset=8192 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v33, v[vgprLocalReadAddrA] offset:11392 // L -> Reg lro=1536 swapByteOffset=8192 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(3)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write dataAtIter=1 numReadsIter=3 numPrefetchIter=0 skipReadsIter=1 readsPerIter=8 old=15, new=4 newLW=2 newLR=2
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v29 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v31 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:3]
ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:11264 // L -> Reg lro=1536 swapByteOffset=8192 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v35, v[vgprLocalReadAddrB] offset:11392 // L -> Reg lro=1536 swapByteOffset=8192 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:1024 // lwoB_0_0_1_0 = (0*LSCB) + (1*LSPB)(*MT1J+PAD) = 1024
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v30 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+1], v[vgprValuB_X0_I0+1], v32 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+0+0+0], a[4:7]
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:11328 // L -> Reg lro=1536 swapByteOffset=8192 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v34, v[vgprLocalReadAddrA] offset:11456 // L -> Reg lro=1536 swapByteOffset=8192 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:2048 // lwoB_0_0_2_0 = (0*LSCB) + (2*LSPB)(*MT1J+PAD) = 2048
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+1+0+0], a[8:11]
ds_read_u16 v[vgprValuB_X1_I0+1], v[vgprLocalReadAddrB] offset:11328 // L -> Reg lro=1536 swapByteOffset=8192 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v36, v[vgprLocalReadAddrB] offset:11456 // L -> Reg lro=1536 swapByteOffset=8192 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:3072 // lwoB_0_0_3_0 = (0*LSCB) + (3*LSPB)(*MT1J+PAD) = 3072

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
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+1+0+0], a[12:15]


/* iter 3 */

s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //
s_waitcnt lgkmcnt(1)                               // wait for prior local read local write dataAtIter=2 numReadsIter=3 numPrefetchIter=1 skipReadsIter=1 readsPerIter=8 old=8, new=1 newLW=1 newLR=0
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v33 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v35 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:3]
ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v29, v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v34 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+1], v[vgprValuB_X1_I0+1], v36 // pack two half Vgpr to one Vgpr
s_nop  1                                           // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+0+0+0], a[4:7]
ds_read_u16_d16_hi v31, v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v30, v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+1+0+0], a[8:11]
ds_read_u16 v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v32, v[vgprLocalReadAddrB] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+1+0+0], a[12:15]




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

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v33, v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1088 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v34, v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v35, v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+1], v[vgprLocalReadAddrB] offset:1088 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v36, v[vgprLocalReadAddrB] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->1024 */


/* local read inc b */

/* N/A, lro->1024 */

s_waitcnt lgkmcnt(8)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v29 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v30 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v31 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+1], v[vgprValuB_X0_I0+1], v32 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:3]
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+0+0+0], a[4:7]
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+1+0+0], a[8:11]
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+1+0+0], a[12:15]


/* iter 1 */


/* local read a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v29, v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:2112 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v30, v[vgprLocalReadAddrA] offset:2240 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v31, v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:2112 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v32, v[vgprLocalReadAddrB] offset:2240 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->1536 */


/* local read inc b */

/* N/A, lro->1536 */

s_waitcnt lgkmcnt(8)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v33 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v34 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v35 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+1], v[vgprValuB_X1_I0+1], v36 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:3]
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+0+0+0], a[4:7]
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+1+0+0], a[8:11]
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+1+0+0], a[12:15]


/* iter 2 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v33, v[vgprLocalReadAddrA] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:3136 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v34, v[vgprLocalReadAddrA] offset:3264 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v35, v[vgprLocalReadAddrB] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+1], v[vgprLocalReadAddrB] offset:3136 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v36, v[vgprLocalReadAddrB] offset:3264 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->2048 */


/* local read inc b */

/* N/A, lro->2048 */

s_waitcnt lgkmcnt(8)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v29 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v30 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v31 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+1], v[vgprValuB_X0_I0+1], v32 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:3]
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+0+0+0], a[4:7]
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+1+0+0], a[8:11]
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+1+0+0], a[12:15]


/* iter 3 */

s_waitcnt lgkmcnt(0)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v33 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v34 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v35 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+1], v[vgprValuB_X1_I0+1], v36 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:3]
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+0+0+0], a[4:7]
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+1+0+0], a[8:11]
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+1+0+0], a[12:15]

/* Stores for OptNLL */
Summation_End_13:
/* endSummation: remove C-tile [29, 29) from pool */
/* endSummation: add vgpr [0...26) to pool */
.set ShadowLimitA, UNDEF
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
.set ShadowLimitB, UNDEF
s_nop 8

/* Mapping of Acc register -> C Vgpr register */
/* computeStoreVgprs */
v_lshrrev_b32 v3, 6, v[vgprSerial]                 // v3 = v[vgprSerial] / 64
v_lshrrev_b32 v1, 1, v3                            // v1 = v3 / 2
v_mul_lo_u32 v1, 0x10, v1                          // wave coordination offset 1
v_and_b32 v4, 15, v[vgprSerial]                    // v4 = v[vgprSerial] % 16
v_add_u32 v1, v4, v1                               // coordination 1 = wave_id1 + tid1
v_mul_lo_u32 v2, v1, s[sgprStridesC]               //  offset 1
v_and_b32 v4, 1, v3                                // v4 = v3 % 2
v_mul_lo_u32 v4, 0x10, v4                          // wave coordination offset 0
v_and_b32 v0, 63, v[vgprSerial]                    // v0 = v[vgprSerial] % 64
v_lshrrev_b32 v0, 4, v0                            // v0 = v0 / 16
v_lshlrev_b32 v0, 0x2, v0                          // thread0 * 4 : mfma output 4 continuous outputs
v_add_u32 v0, v4, v0                               // coordination 0 = wave_id0 + tid0
s_mul_i32 s52, 64, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v0, s52, v0                              // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s52, 64, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v1, s52, v1                              // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1
/* Store Remap Local Write adderss */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x10, v4                         // coord1 offset of LDS for each Wave
v_and_b32 v4, 0xf, v[vgprSerial]                   // coord1 offset of LDS for each thread
v_add_u32 v4, v12, v4                              // coord1 offset in MacroTile
v_mov_b32 v10, 0x44                                // lds stride = MT0 + PAD
v_mul_lo_u32 v8, v4, v10                           // lds coord1 offset = Col-id* lds stride
v_lshrrev_b32 v9, 6, v3                            // v9 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_lshrrev_b32 v11, 0x4, v3                         // tid / matrixInstN
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= 4 (each thread hold 4 element)
v_mad_u32_u24 v11, 16, v9, v11                     // coord0 += waveCoord0 * wave M shape(blockM*MiM)
_v_add_lshl_u32 v6, v8, v11, 0x1                   // local write C address

/* Store Remap Local Read address */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // v4 = v[vgprSerial] / 64
v_and_b32 v3, 63, v[vgprSerial]                    // v3 = v[vgprSerial] % 64
v_mul_lo_u32 v12, 0x8, v4                          // coord1 offset of LDS for each Wave
v_lshrrev_b32 v9, 0x4, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
v_mul_lo_u32 v8, v5, v10                           // lds coord1 offset = Col-id* lds stride
v_and_b32 v11, 0xf, v3                             // coord0 offset of LDS for each thread
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= gwvw (each thread hold gwvw element)
_v_add_lshl_u32 v7, v8, v11, 0x1                   // local read C address

/* Store Remap global write coord0 and coord1 */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x10, v4                         // coord1 offset of global memory for each Wave
v_lshrrev_b32 v4, 6, v3                            // v4 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_mad_u32_u24 v12, 8, v4, v12                      // waveCoord1 += waveCoord0 * MiN / WaveGroupM
v_lshrrev_b32 v9, 0x4, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
s_mul_i32 s52, 0x40, s[sgprWorkGroup0]             // s52 = wg0*MT0
v_add_co_u32 v3, vcc, s52, v11                     // coord0 = coord0 + wg0 * MT0
s_mul_i32 s53, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
_v_add_co_u32 v4, vcc, s53, v5                     // coord1 = tid1*VW + wg1*MT1

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //StoreRemap Start
GW_B0_E0_16:

/* edge=0, allocate 2 sgpr. perBatch=2 perElement=0 elementsPerBatch=2 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v10, v2, v0, 0x1                   // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
v_accvgpr_read_b32 v[vgprValuC+11], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+12], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+14], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+15], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+16], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+17], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+18], acc7 // copy areg to vreg[7]
s_nop 1                                            // 2 wait states required before reading vgpr

/* apply mask, calc new C and issue writes */
v_mov_b32 v20, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v21, 0x7fff0000                          // fp32 Nan
v_mov_b32 v22, 0x7fff                              // rounding bias for bfloat16
v_cmp_u_f32 s[52:53], v[vgprValuC+11], v[vgprValuC+11] // check Nan
v_bfe_u32 v19, v[vgprValuC+11], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+11], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+11], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+11], 16, v[vgprValuC+11] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+12], v[vgprValuC+12] // check Nan
v_bfe_u32 v19, v[vgprValuC+12], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+12], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+12], v19, v21, s[52:53]  // 
v_and_or_b32 v11, v[vgprValuC+12], v20, v[vgprValuC+11] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v19, v[vgprValuC+13], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+13], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+13], 16, v[vgprValuC+13] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v19, v[vgprValuC+14], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+14], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v19, v21, s[52:53]  // 
v_and_or_b32 v12, v[vgprValuC+14], v20, v[vgprValuC+13] // pack two bf16 to dword
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cmp_u_f32 s[52:53], v[vgprValuC+15], v[vgprValuC+15] // check Nan
v_bfe_u32 v19, v[vgprValuC+15], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+15], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+15], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+15], 16, v[vgprValuC+15] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v19, v[vgprValuC+16], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+16], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v19, v21, s[52:53]  // 
v_and_or_b32 v15, v[vgprValuC+16], v20, v[vgprValuC+15] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v19, v[vgprValuC+17], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+17], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+17], 16, v[vgprValuC+17] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v19, v[vgprValuC+18], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+18], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v19, v21, s[52:53]  // 
v_and_or_b32 v16, v[vgprValuC+18], v20, v[vgprValuC+17] // pack two bf16 to dword
ds_write_b64 v6, v[15:16], offset:64               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:544               // storeRemap lr

v_mov_b32 v15, v5                                  // coord1
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw4); (1,1,0,0:vw4)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
v_accvgpr_read_b32 v[vgprValuC+11], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+12], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+13], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+14], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+15], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+16], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+17], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+18], acc15 // copy areg to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* apply mask, calc new C and issue writes */
v_mov_b32 v20, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v21, 0x7fff0000                          // fp32 Nan
v_mov_b32 v22, 0x7fff                              // rounding bias for bfloat16

/* StoreRemap: shift coord1 address */
s_mul_i32 s52, s[sgprStrideD1J], 64                // scale StrideD *= numRows(32) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s52       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
v_mov_b32 v8, 32                                   // set shift rows
v_add_u32 v4, v4, v8                               // shift storeRemap coord1
v_cmp_u_f32 s[52:53], v[vgprValuC+11], v[vgprValuC+11] // check Nan
v_bfe_u32 v19, v[vgprValuC+11], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+11], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+11], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+11], 16, v[vgprValuC+11] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+12], v[vgprValuC+12] // check Nan
v_bfe_u32 v19, v[vgprValuC+12], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+12], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+12], v19, v21, s[52:53]  // 
v_and_or_b32 v11, v[vgprValuC+12], v20, v[vgprValuC+11] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v19, v[vgprValuC+13], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+13], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+13], 16, v[vgprValuC+13] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v19, v[vgprValuC+14], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+14], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v19, v21, s[52:53]  // 
v_and_or_b32 v12, v[vgprValuC+14], v20, v[vgprValuC+13] // pack two bf16 to dword
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cmp_u_f32 s[52:53], v[vgprValuC+15], v[vgprValuC+15] // check Nan
v_bfe_u32 v19, v[vgprValuC+15], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+15], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+15], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+15], 16, v[vgprValuC+15] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v19, v[vgprValuC+16], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+16], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v19, v21, s[52:53]  // 
v_and_or_b32 v15, v[vgprValuC+16], v20, v[vgprValuC+15] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v19, v[vgprValuC+17], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+17], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+17], 16, v[vgprValuC+17] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v19, v[vgprValuC+18], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+18], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v19, v21, s[52:53]  // 
v_and_or_b32 v16, v[vgprValuC+18], v20, v[vgprValuC+17] // pack two bf16 to dword
ds_write_b64 v6, v[15:16], offset:64               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:544               // storeRemap lr

v_mov_b32 v15, v5                                  // coord1
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_18                           // jump to end
label_GW_End_18:

s_endpgm                                           // Kernel End
OptNLL_End_12:




/* iter 0 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v33, v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1088 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v34, v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v35, v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+1], v[vgprLocalReadAddrB] offset:1088 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v36, v[vgprLocalReadAddrB] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->1024 */


/* local read inc b */

/* N/A, lro->1024 */

s_waitcnt lgkmcnt(8)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v29 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v30 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v31 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+1], v[vgprValuB_X0_I0+1], v32 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:3]
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+0+0+0], a[4:7]
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+1+0+0], a[8:11]
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+1+0+0], a[12:15]


/* iter 1 */


/* local read a */

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v29, v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:2112 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v30, v[vgprLocalReadAddrA] offset:2240 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v31, v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:2112 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v32, v[vgprLocalReadAddrB] offset:2240 // L -> Reg lro=1024 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->1536 */


/* local read inc b */

/* N/A, lro->1536 */

s_waitcnt lgkmcnt(8)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v33 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v34 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v35 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+1], v[vgprValuB_X1_I0+1], v36 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:3]
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+0+0+0], a[4:7]
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+1+0+0], a[8:11]
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+1+0+0], a[12:15]


/* iter 2 */


/* local read a */

ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v33, v[vgprLocalReadAddrA] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:3136 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v34, v[vgprLocalReadAddrA] offset:3264 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X1_I0+0], v[vgprLocalReadAddrB] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v35, v[vgprLocalReadAddrB] offset:3200 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuB_X1_I0+1], v[vgprLocalReadAddrB] offset:3136 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v36, v[vgprLocalReadAddrB] offset:3264 // L -> Reg lro=1536 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=1 iui=0


/* local read inc a */

/* N/A, lro->2048 */


/* local read inc b */

/* N/A, lro->2048 */

s_waitcnt lgkmcnt(8)                               // 7wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v29 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v30 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v31 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+1], v[vgprValuB_X0_I0+1], v32 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:3]
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+0+0+0], a[4:7]
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+1+0+0], a[8:11]
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+1+0+0], a[12:15]


/* iter 3 */

s_waitcnt lgkmcnt(0)                               // 7wait for local read

v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v33 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v34 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+0], v[vgprValuB_X1_I0+0], v35 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X1_I0+1], v[vgprValuB_X1_I0+1], v36 // pack two half Vgpr to one Vgpr

s_nop 1
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+0+0+0], a[0:3]
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+0+0+0], a[4:7]
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X1_I0+0+0+0], v[vgprValuB_X1_I0+1+0+0], a[8:11]
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X1_I0+1+0+0], v[vgprValuB_X1_I0+1+0+0], a[12:15]

label_0004:


/******************************************/
/* Tail Loop                              */
/******************************************/


/* local write reset offsets a */



/* local write reset offsets b */



//numIterL = (((sizeL % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterL], 31, s[sgprSizesSum+0] // s[sgprLoopCounterL] = s[sgprSizesSum+0] % 32
s_and_b32 s[sgprNumRemainderSumElementsL], 7, s[sgprLoopCounterL] // s[sgprNumRemainderSumElementsL] = s[sgprLoopCounterL] % 8
s_cmp_eq_u32 s[sgprLoopCounterL], 0x0              // numIterL == 0
s_cbranch_scc1 label_0006                          // skip to end of tail loop b/c numIter==0


/* Update M0 for DTLDS */



/* global read a */

/* g2l=0, load component 0 */
buffer_load_short_d16 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load half buffer value
/* g2l=0, load component 1 */
buffer_load_short_d16_hi v29, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+0], v[vgprG2LA+0+0], v29 // HasEccHalf: pack
/* g2l=1, load component 0 */
buffer_load_short_d16 v[vgprG2LA+1+0], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load half buffer value
/* g2l=1, load component 1 */
buffer_load_short_d16_hi v29, v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+1+0], v[vgprG2LA+1+0], v29 // HasEccHalf: pack
/* g2l=2, load component 0 */
buffer_load_short_d16 v[vgprG2LA+2+0], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load half buffer value
/* g2l=2, load component 1 */
buffer_load_short_d16_hi v29, v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+2+0], v[vgprG2LA+2+0], v29 // HasEccHalf: pack
/* g2l=3, load component 0 */
buffer_load_short_d16 v[vgprG2LA+3+0], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load half buffer value
/* g2l=3, load component 1 */
buffer_load_short_d16_hi v29, v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+3+0], v[vgprG2LA+3+0], v29 // HasEccHalf: pack


/* Update M0 for DTLDS */



/* global read b */

/* g2l=0, load component 0 */
buffer_load_short_d16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load half buffer value
/* g2l=0, load component 1 */
buffer_load_short_d16_hi v29, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+0], v[vgprG2LB+0+0], v29 // HasEccHalf: pack
/* g2l=1, load component 0 */
buffer_load_short_d16 v[vgprG2LB+1+0], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load half buffer value
/* g2l=1, load component 1 */
buffer_load_short_d16_hi v29, v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+1+0], v[vgprG2LB+1+0], v29 // HasEccHalf: pack
/* g2l=2, load component 0 */
buffer_load_short_d16 v[vgprG2LB+2+0], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load half buffer value
/* g2l=2, load component 1 */
buffer_load_short_d16_hi v29, v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+2+0], v[vgprG2LB+2+0], v29 // HasEccHalf: pack
/* g2l=3, load component 0 */
buffer_load_short_d16 v[vgprG2LB+3+0], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load half buffer value
/* g2l=3, load component 1 */
buffer_load_short_d16_hi v29, v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+3+0], v[vgprG2LB+3+0], v29 // HasEccHalf: pack

s_waitcnt vmcnt(0)                                 // 2wait for global read

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //




/* local write a */

ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:1024 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 1024
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:2048 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 2048
ds_write_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:3072 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 3072


/* local write b */

ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:1024 // lwoB_0_0_1_0 = (0*LSCB) + (1*LSPB)(*MT1J+PAD) = 1024
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:2048 // lwoB_0_0_2_0 = (0*LSCB) + (2*LSPB)(*MT1J+PAD) = 2048
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:3072 // lwoB_0_0_3_0 = (0*LSCB) + (3*LSPB)(*MT1J+PAD) = 3072

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

ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v29, v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v30, v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_u16 v[vgprValuB_X0_I0+0], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v31, v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuB_X0_I0+1], v[vgprLocalReadAddrB] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v32, v[vgprLocalReadAddrB] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=32 vIdx=1 rIdx=1 oIdx=0 buffer=0 iui=0


/* local read inc a */

s_mov_b32 s57, 0x400                               // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc, s57, v[vgprLocalReadAddrA] // lrA += 1024 (LSU*(MT+PAD)*bpe)


/* local read inc b */

s_mov_b32 s57, 0x400                               // inc
_v_add_co_u32 v[vgprLocalReadAddrB], vcc, s57, v[vgprLocalReadAddrB] // lrB += 1024 (LSU*(MT+PAD)*bpe)

s_waitcnt lgkmcnt(0)                               // 4wait for local read

v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v29 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v30 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+0], v[vgprValuB_X0_I0+0], v31 // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuB_X0_I0+1], v[vgprValuB_X0_I0+1], v32 // pack two half Vgpr to one Vgpr

v_and_b32 v29, 63, v[vgprSerial]                   // v29 = v[vgprSerial] % 64
v_lshrrev_b32 v29, 4, v29                          // v29 = v29 / 16
v_lshlrev_b32 v29, 1, v29                          // v29 = v29 * 2
v_cmp_ge_i32 s[60:61], v29, s[sgprLoopCounterL]    // check K index >= Size L
v_cndmask_b32 v[vgprValuA_X0_I0+0+0], v[vgprValuA_X0_I0+0+0], 0x0, s[60:61] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+1+0], v[vgprValuA_X0_I0+1+0], 0x0, s[60:61] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+0], v[vgprValuB_X0_I0+0+0], 0x0, s[60:61] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+1+0], v[vgprValuB_X0_I0+1+0], 0x0, s[60:61] // set 0 if K_idx >= sizeL
v_sub_u32 v29, s[sgprLoopCounterL], v29            // get distance between size and k index
v_cmp_lt_i32 s[60:61], v29, 2                      // set partial 0 if distance less than input per thread
s_and_b32 s62, s[sgprLoopCounterL], 1              // get inputs for edge thread
s_sub_u32 s62, 2, s62                              // use shift to fill 0 for outside element
s_lshl_b32 s62, s62, 4                             // use shift to fill 0 for outside element
v_lshlrev_b32 v30, s62, v[vgprValuA_X0_I0+0+0+0]   // 
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+0], v[vgprValuA_X0_I0+0+0+0+0], v30, s[60:61] // 
v_lshlrev_b32 v30, s62, v[vgprValuA_X0_I0+1+0+0]   // 
v_cndmask_b32 v[vgprValuA_X0_I0+1+0+0+0], v[vgprValuA_X0_I0+1+0+0+0], v30, s[60:61] // 
v_lshlrev_b32 v30, s62, v[vgprValuB_X0_I0+0+0+0]   // 
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+0], v[vgprValuB_X0_I0+0+0+0+0], v30, s[60:61] // 
v_lshlrev_b32 v30, s62, v[vgprValuB_X0_I0+1+0+0]   // 
v_cndmask_b32 v[vgprValuB_X0_I0+1+0+0+0], v[vgprValuB_X0_I0+1+0+0+0], v30, s[60:61] // 
s_nop 1
v_mfma_f32_16x16x8bf16 a[0:3], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], a[0:3]
v_mfma_f32_16x16x8bf16 a[4:7], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+0+0+0], a[4:7]
v_mfma_f32_16x16x8bf16 a[8:11], v[vgprValuA_X0_I0+0+0+0], v[vgprValuB_X0_I0+1+0+0], a[8:11]
v_mfma_f32_16x16x8bf16 a[12:15], v[vgprValuA_X0_I0+1+0+0], v[vgprValuB_X0_I0+1+0+0], a[12:15]


/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x8 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x8 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL==0
s_cbranch_scc0 label_0005                          // restart LoopL
label_0006:

Summation_End_21:
/* endSummation: remove C-tile [29, 29) from pool */
/* endSummation: add vgpr [0...26) to pool */
.set ShadowLimitA, UNDEF
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
.set ShadowLimitB, UNDEF
s_nop 8

/* Mapping of Acc register -> C Vgpr register */


/* shift vector components d0 */

v_mov_b32 v3, s[sgprWorkGroup0]                    // 
v_mul_i32_i24 v3, -0x40, v3                        // wg*MT
_v_add_co_u32 v3, vcc, s[sgprSizesFree+0], v3      // wgMT = Size - wg*MT
v_mov_b32 v4, 0x40                                 // MT
v_cmp_lt_u32 s[52:53], v3, v4                      // wgMT < MT
v_cndmask_b32 v3, v4, v3, s[52:53]                 // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v5, 6, v[vgprSerial]                 // v5 = v[vgprSerial] / 64
v_and_b32 v5, 1, v5                                // v5 = v5 % 2
v_lshrrev_b32 v6, 4, v3                            // v6 = v3 / 16
v_and_b32 v6, 1, v6                                // v6 = v6 % 2
v_cmp_eq_u32 s[52:53], v6, v5                      // wave_id0 == block_belong_to_wave0?
v_cndmask_b32 v3, v4, v3, s[52:53]                 // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v4, 4, v3                            // v4 = v3 / 16
v_sub_u32 v4, v4, v5                               // 
v_and_b32 v5, 3, v3                                // v5 = v3 % 4
v_lshrrev_b32 v6, 2, v3                            // v6 = v3 / 4
v_and_b32 v6, 3, v6                                // v6 = v6 % 4
v_lshrrev_b32 v7, 4, v[vgprSerial]                 // v7 = v[vgprSerial] / 16
v_and_b32 v7, 3, v7                                // v7 = v7 % 4
v_and_b32 v8, 1, v3                                // v8 = v3 % 2
v_cmp_eq_u32 vcc, v8, 0x1                          // wgMT%VW == 1
s_cbranch_vccnz label_0022                         // shift d0 r=1
s_branch label_0029                                // no shifting

/******************************************/
/* shift d0 r=1                           */
/******************************************/
label_0022:
v_cmp_eq_u32 vcc, v4, 0x0                          // wgMT/8 == 0
s_cbranch_vccnz label_0023                         // shift d0, r=1, v=0
v_cmp_eq_u32 vcc, v4, 0x2                          // wgMT/8 == 1
s_cbranch_vccnz label_0026                         // shift d0, r=1, v=1

/* shift d0 r=1 v=0 */
label_0023:
v_cmpx_eq_u32 s[52:53], v7, v6                     // (serial % 64) / 32 == (wgMT/4)%2
v_cmp_eq_u32 vcc, v5, 0x1                          // wgMT % 4 == 1
s_cbranch_vccnz label_0024                         // shift d0, r=1, v=0, o=0
v_cmp_eq_u32 vcc, v5, 0x3                          // wgMT % 4 == 3
s_cbranch_vccnz label_0025                         // shift d0, r=1, v=0, o=1
label_0024:
v_accvgpr_read_b32 v0, acc1                        // 
s_nop 1                                            // v_accvgpr read vgpr after write vgpr: 2 wait states
v_accvgpr_write_b32 acc0, v0                       // acc0 = acc1
v_accvgpr_read_b32 v0, acc9                        // 
s_nop 1                                            // v_accvgpr read vgpr after write vgpr: 2 wait states
v_accvgpr_write_b32 acc8, v0                       // acc8 = acc9
label_0025:
v_accvgpr_read_b32 v0, acc3                        // 
s_nop 1                                            // v_accvgpr read vgpr after write vgpr: 2 wait states
v_accvgpr_write_b32 acc2, v0                       // acc2 = acc3
v_accvgpr_read_b32 v0, acc11                       // 
s_nop 1                                            // v_accvgpr read vgpr after write vgpr: 2 wait states
v_accvgpr_write_b32 acc10, v0                      // acc10 = acc11
s_mov_b64 s[52:53], 0xFFFFFFFFFFFFFFFF             // to restore all threads active
s_or_saveexec_b64 vcc, s[52:53]                    // all threads active
s_branch label_0029                                // done shifting

/* shift d0 r=1 v=1 */
label_0026:
v_cmpx_eq_u32 s[52:53], v7, v6                     // (serial % 64) / 32 == (wgMT/4)%2
v_cmp_eq_u32 vcc, v5, 0x1                          // wgMT % 4 == 1
s_cbranch_vccnz label_0027                         // shift d0, r=1, v=1, o=0
v_cmp_eq_u32 vcc, v5, 0x3                          // wgMT % 4 == 3
s_cbranch_vccnz label_0028                         // shift d0, r=1, v=1, o=1
label_0027:
v_accvgpr_read_b32 v0, acc5                        // 
s_nop 1                                            // v_accvgpr read vgpr after write vgpr: 2 wait states
v_accvgpr_write_b32 acc4, v0                       // acc4 = acc5
v_accvgpr_read_b32 v0, acc13                       // 
s_nop 1                                            // v_accvgpr read vgpr after write vgpr: 2 wait states
v_accvgpr_write_b32 acc12, v0                      // acc12 = acc13
label_0028:
v_accvgpr_read_b32 v0, acc7                        // 
s_nop 1                                            // v_accvgpr read vgpr after write vgpr: 2 wait states
v_accvgpr_write_b32 acc6, v0                       // acc6 = acc7
v_accvgpr_read_b32 v0, acc15                       // 
s_nop 1                                            // v_accvgpr read vgpr after write vgpr: 2 wait states
v_accvgpr_write_b32 acc14, v0                      // acc14 = acc15
s_mov_b64 s[52:53], 0xFFFFFFFFFFFFFFFF             // to restore all threads active
s_or_saveexec_b64 vcc, s[52:53]                    // all threads active
s_branch label_0029                                // done shifting
label_0029: // end shift0



/* not-LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v3, 6, v[vgprSerial]                 // v3 = v[vgprSerial] / 64
v_lshrrev_b32 v1, 1, v3                            // v1 = v3 / 2
v_mul_lo_u32 v1, 0x10, v1                          // wave coordination offset 1
v_and_b32 v4, 15, v[vgprSerial]                    // v4 = v[vgprSerial] % 16
v_add_u32 v1, v4, v1                               // coordination 1 = wave_id1 + tid1
v_mul_lo_u32 v2, v1, s[sgprStridesC]               //  offset 1
v_and_b32 v4, 1, v3                                // v4 = v3 % 2
v_mul_lo_u32 v4, 0x10, v4                          // wave coordination offset 0
v_and_b32 v0, 63, v[vgprSerial]                    // v0 = v[vgprSerial] % 64
v_lshrrev_b32 v0, 4, v0                            // v0 = v0 / 16
v_lshlrev_b32 v0, 0x2, v0                          // thread0 * 4 : mfma output 4 continuous outputs
v_add_u32 v0, v4, v0                               // coordination 0 = wave_id0 + tid0
s_mul_i32 s52, 64, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v0, s52, v0                              // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s52, 64, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v1, s52, v1                              // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1
/* Store Remap Local Write adderss */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x10, v4                         // coord1 offset of LDS for each Wave
v_and_b32 v4, 0xf, v[vgprSerial]                   // coord1 offset of LDS for each thread
v_add_u32 v4, v12, v4                              // coord1 offset in MacroTile
v_mov_b32 v10, 0x44                                // lds stride = MT0 + PAD
v_mul_lo_u32 v8, v4, v10                           // lds coord1 offset = Col-id* lds stride
v_lshrrev_b32 v9, 6, v3                            // v9 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_lshrrev_b32 v11, 0x4, v3                         // tid / matrixInstN
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= 4 (each thread hold 4 element)
v_mad_u32_u24 v11, 16, v9, v11                     // coord0 += waveCoord0 * wave M shape(blockM*MiM)
_v_add_lshl_u32 v6, v8, v11, 0x1                   // local write C address

/* Store Remap Local Read address */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // v4 = v[vgprSerial] / 64
v_and_b32 v3, 63, v[vgprSerial]                    // v3 = v[vgprSerial] % 64
v_mul_lo_u32 v12, 0x8, v4                          // coord1 offset of LDS for each Wave
v_lshrrev_b32 v9, 0x4, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
v_mul_lo_u32 v8, v5, v10                           // lds coord1 offset = Col-id* lds stride
v_and_b32 v11, 0xf, v3                             // coord0 offset of LDS for each thread
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= gwvw (each thread hold gwvw element)
_v_add_lshl_u32 v7, v8, v11, 0x1                   // local read C address

/* Store Remap global write coord0 and coord1 */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x10, v4                         // coord1 offset of global memory for each Wave
v_lshrrev_b32 v4, 6, v3                            // v4 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_mad_u32_u24 v12, 8, v4, v12                      // waveCoord1 += waveCoord0 * MiN / WaveGroupM
v_lshrrev_b32 v9, 0x4, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
s_mul_i32 s52, 0x40, s[sgprWorkGroup0]             // s52 = wg0*MT0
v_add_co_u32 v3, vcc, s52, v11                     // coord0 = coord0 + wg0 * MT0
s_mul_i32 s53, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
_v_add_co_u32 v4, vcc, s53, v5                     // coord1 = tid1*VW + wg1*MT1

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //StoreRemap Start


/* not-LocalSplitU: global write */

s_and_b32 s52, 63, s[sgprSizeI]                    // s52 = s[sgprSizeI] % 64
s_add_u32 s54, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s54                // wg0 >= nwg0-1 ?
s_cselect_b32 s52, s52, 0                          // set rMT0
s_cmpk_gt_u32 s52, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_41                         // jump if edges required
s_and_b32 s52, 63, s[sgprSizeJ]                    // s52 = s[sgprSizeJ] % 64
s_add_u32 s54, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s54                // wg1 >= nwg1-1
s_cselect_b32 s52, s52, 0                          // set rMT1
s_cmpk_gt_u32 s52, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_41                         // jump if edges required
GW_B0_E0_38:

/* edge=0, allocate 2 sgpr. perBatch=2 perElement=0 elementsPerBatch=2 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v10, v2, v0, 0x1                   // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
v_accvgpr_read_b32 v[vgprValuC+11], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+12], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+14], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+15], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+16], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+17], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+18], acc7 // copy areg to vreg[7]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 0, 0, 0), (0, 1, 0, 0)] */
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha

/* apply mask, calc new C and issue writes */
v_mov_b32 v20, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v21, 0x7fff0000                          // fp32 Nan
v_mov_b32 v22, 0x7fff                              // rounding bias for bfloat16
v_cmp_u_f32 s[52:53], v[vgprValuC+11], v[vgprValuC+11] // check Nan
v_bfe_u32 v19, v[vgprValuC+11], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+11], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+11], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+11], 16, v[vgprValuC+11] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+12], v[vgprValuC+12] // check Nan
v_bfe_u32 v19, v[vgprValuC+12], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+12], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+12], v19, v21, s[52:53]  // 
v_and_or_b32 v11, v[vgprValuC+12], v20, v[vgprValuC+11] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v19, v[vgprValuC+13], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+13], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+13], 16, v[vgprValuC+13] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v19, v[vgprValuC+14], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+14], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v19, v21, s[52:53]  // 
v_and_or_b32 v12, v[vgprValuC+14], v20, v[vgprValuC+13] // pack two bf16 to dword
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cmp_u_f32 s[52:53], v[vgprValuC+15], v[vgprValuC+15] // check Nan
v_bfe_u32 v19, v[vgprValuC+15], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+15], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+15], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+15], 16, v[vgprValuC+15] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v19, v[vgprValuC+16], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+16], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v19, v21, s[52:53]  // 
v_and_or_b32 v15, v[vgprValuC+16], v20, v[vgprValuC+15] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v19, v[vgprValuC+17], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+17], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+17], 16, v[vgprValuC+17] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v19, v[vgprValuC+18], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+18], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v19, v21, s[52:53]  // 
v_and_or_b32 v16, v[vgprValuC+18], v20, v[vgprValuC+17] // pack two bf16 to dword
ds_write_b64 v6, v[15:16], offset:64               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:544               // storeRemap lr

v_mov_b32 v15, v5                                  // coord1
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw4); (1,1,0,0:vw4)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
v_accvgpr_read_b32 v[vgprValuC+11], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+12], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+13], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+14], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+15], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+16], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+17], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+18], acc15 // copy areg to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(1, 0, 0, 0), (1, 1, 0, 0)] */
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha

/* apply mask, calc new C and issue writes */
v_mov_b32 v20, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v21, 0x7fff0000                          // fp32 Nan
v_mov_b32 v22, 0x7fff                              // rounding bias for bfloat16

/* StoreRemap: shift coord1 address */
s_mul_i32 s52, s[sgprStrideD1J], 64                // scale StrideD *= numRows(32) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s52       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
v_mov_b32 v8, 32                                   // set shift rows
v_add_u32 v4, v4, v8                               // shift storeRemap coord1
v_cmp_u_f32 s[52:53], v[vgprValuC+11], v[vgprValuC+11] // check Nan
v_bfe_u32 v19, v[vgprValuC+11], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+11], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+11], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+11], 16, v[vgprValuC+11] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+12], v[vgprValuC+12] // check Nan
v_bfe_u32 v19, v[vgprValuC+12], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+12], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+12], v19, v21, s[52:53]  // 
v_and_or_b32 v11, v[vgprValuC+12], v20, v[vgprValuC+11] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v19, v[vgprValuC+13], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+13], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+13], 16, v[vgprValuC+13] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v19, v[vgprValuC+14], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+14], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v19, v21, s[52:53]  // 
v_and_or_b32 v12, v[vgprValuC+14], v20, v[vgprValuC+13] // pack two bf16 to dword
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cmp_u_f32 s[52:53], v[vgprValuC+15], v[vgprValuC+15] // check Nan
v_bfe_u32 v19, v[vgprValuC+15], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+15], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+15], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+15], 16, v[vgprValuC+15] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v19, v[vgprValuC+16], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+16], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v19, v21, s[52:53]  // 
v_and_or_b32 v15, v[vgprValuC+16], v20, v[vgprValuC+15] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v19, v[vgprValuC+17], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+17], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v19, v21, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+17], 16, v[vgprValuC+17] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v19, v[vgprValuC+18], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v19, v[vgprValuC+18], v19, v22          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v19, v21, s[52:53]  // 
v_and_or_b32 v16, v[vgprValuC+18], v20, v[vgprValuC+17] // pack two bf16 to dword
ds_write_b64 v6, v[15:16], offset:64               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:544               // storeRemap lr

v_mov_b32 v15, v5                                  // coord1
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v15, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v15, v15, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v15, v15, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v15, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_43                           // jump to end
GW_B0_E1_41:

/* edge=0, allocate 10 sgpr. perBatch=6 perElement=2 elementsPerBatch=2 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSharedMask=0 optSrdIncForRow=1 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */

/* shift vector components d1 */
v_bfi_b32 v8, 1, 0, v1                             // coord1 & ~(vw-1)
v_bfi_b32 v9, 1, 0, s[sgprSizesFree+1]             // sizeFree & ~(vw-1)
v_cmp_eq_u32 s[52:53], v8, v9                      // if coord1 is in edge glvw
v_and_b32 v9, s[sgprSizesFree+1], 1                // sizeFree mod VW
v_cmp_gt_u32 s[54:55], v9, 0                       // this problem is not multiple size of glvw
s_and_b64 s[52:53], s[52:53], s[54:55]             // AND both conditions
v_add_u32 v8, v1, v9                               // shift coord1
v_bfi_b32 v8, 1, v8, s[sgprSizesFree+1]            // new coord1 = (shift coord1 & (vw-1)) |  (sizeFree & ~(vw-1))
v_sub_i32 v9, v8, v1                               // shift how many column
v_cndmask_b32 v1, v1, v8, s[52:53]                 // set new coord1 if meet conditions
v_mad_i32_i24 v8, s[sgprStrideC1J], v9, v2         // new rowStart address += shift column * StridesC
v_cndmask_b32 v2, v2, v8, s[52:53]                 // set new rowStart if meet conditions
v_mov_b32 v8, 0x88                                 // lds byte stride = (MT0 + PAD) * bpe
v_mad_i32_i24 v8, v8, v9, v6                       // new lds write address += shift column * Lds byte Stride
v_cndmask_b32 v6, v6, v8, s[52:53]                 // set new rowStart if meet conditions

_v_add_lshl_u32 v10, v2, v0, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_v_add_co_u32 v8, vcc, v0, 32                      // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v15, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_accvgpr_read_b32 v[vgprValuC+11], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+12], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+14], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+16], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+17], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+18], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+19], acc7 // copy areg to vreg[7]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 0, 0, 0), (0, 1, 0, 0)] */
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha

/* apply mask, calc new C and issue writes */
v_mov_b32 v21, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v22, 0x7fff0000                          // fp32 Nan
v_mov_b32 v23, 0x7fff                              // rounding bias for bfloat16
v_cmp_u_f32 s[52:53], v[vgprValuC+11], v[vgprValuC+11] // check Nan
v_bfe_u32 v20, v[vgprValuC+11], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+11], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+11], v20, v22, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+11], 16, v[vgprValuC+11] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+12], v[vgprValuC+12] // check Nan
v_bfe_u32 v20, v[vgprValuC+12], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+12], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+12], v20, v22, s[52:53]  // 
v_and_or_b32 v11, v[vgprValuC+12], v21, v[vgprValuC+11] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v20, v[vgprValuC+13], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+13], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v20, v22, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+13], 16, v[vgprValuC+13] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v20, v[vgprValuC+14], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+14], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v20, v22, s[52:53]  // 
v_and_or_b32 v12, v[vgprValuC+14], v21, v[vgprValuC+13] // pack two bf16 to dword
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cmp_u_f32 s[52:53], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v20, v[vgprValuC+16], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+16], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v20, v22, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+16], 16, v[vgprValuC+16] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v20, v[vgprValuC+17], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+17], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v20, v22, s[52:53]  // 
v_and_or_b32 v16, v[vgprValuC+17], v21, v[vgprValuC+16] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v20, v[vgprValuC+18], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+18], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v20, v22, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+18], 16, v[vgprValuC+18] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v20, v[vgprValuC+19], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+19], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v20, v22, s[52:53]  // 
v_and_or_b32 v17, v[vgprValuC+19], v21, v[vgprValuC+18] // pack two bf16 to dword
ds_write_b64 v6, v[16:17], offset:64               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[10:11], v7, offset:0                 // storeRemap lr
ds_read_b64 v[12:13], v7, offset:544               // storeRemap lr

s_waitcnt lgkmcnt(1)                               // wait for LDS read
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v14, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short v10, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v14, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short_d16_hi v10, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v14, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short v11, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v14, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short_d16_hi v11, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(0)                               // wait for LDS read
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v14, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short v12, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v14, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short_d16_hi v12, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v14, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short v13, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v14, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short_d16_hi v13, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSharedMask=0 optSrdIncForRow=1 */

/******************************************/
/* Global Write Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw4); (1,1,0,0:vw4)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
_v_add_co_u32 v1, vcc, v1, 32                      // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* shift vector components d1 */
v_bfi_b32 v8, 1, 0, v1                             // coord1 & ~(vw-1)
v_bfi_b32 v9, 1, 0, s[sgprSizesFree+1]             // sizeFree & ~(vw-1)
v_cmp_eq_u32 s[52:53], v8, v9                      // if coord1 is in edge glvw
v_and_b32 v9, s[sgprSizesFree+1], 1                // sizeFree mod VW
v_cmp_gt_u32 s[54:55], v9, 0                       // this problem is not multiple size of glvw
s_and_b64 s[52:53], s[52:53], s[54:55]             // AND both conditions
v_add_u32 v8, v1, v9                               // shift coord1
v_bfi_b32 v8, 1, v8, s[sgprSizesFree+1]            // new coord1 = (shift coord1 & (vw-1)) |  (sizeFree & ~(vw-1))
v_sub_i32 v9, v8, v1                               // shift how many column
v_cndmask_b32 v1, v1, v8, s[52:53]                 // set new coord1 if meet conditions
v_mad_i32_i24 v8, s[sgprStrideC1J], v9, v2         // new rowStart address += shift column * StridesC
v_cndmask_b32 v2, v2, v8, s[52:53]                 // set new rowStart if meet conditions
v_mov_b32 v8, 0x88                                 // lds byte stride = (MT0 + PAD) * bpe
v_mad_i32_i24 v8, v8, v9, v6                       // new lds write address += shift column * Lds byte Stride
v_cndmask_b32 v6, v6, v8, s[52:53]                 // set new rowStart if meet conditions

_v_add_lshl_u32 v10, v2, v0, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
_v_add_co_u32 v8, vcc, v0, 32                      // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v15, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_accvgpr_read_b32 v[vgprValuC+11], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+12], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+13], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+14], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+16], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+17], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+18], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+19], acc15 // copy areg to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(1, 0, 0, 0), (1, 1, 0, 0)] */
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha

/* apply mask, calc new C and issue writes */
v_mov_b32 v21, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v22, 0x7fff0000                          // fp32 Nan
v_mov_b32 v23, 0x7fff                              // rounding bias for bfloat16

/* StoreRemap: shift coord1 address */
s_mul_i32 s52, s[sgprStrideD1J], 64                // scale StrideD *= numRows(32) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s52       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
v_mov_b32 v8, 32                                   // set shift rows
v_add_u32 v4, v4, v8                               // shift storeRemap coord1
v_cmp_u_f32 s[52:53], v[vgprValuC+11], v[vgprValuC+11] // check Nan
v_bfe_u32 v20, v[vgprValuC+11], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+11], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+11], v20, v22, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+11], 16, v[vgprValuC+11] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+12], v[vgprValuC+12] // check Nan
v_bfe_u32 v20, v[vgprValuC+12], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+12], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+12], v20, v22, s[52:53]  // 
v_and_or_b32 v11, v[vgprValuC+12], v21, v[vgprValuC+11] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v20, v[vgprValuC+13], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+13], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v20, v22, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+13], 16, v[vgprValuC+13] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v20, v[vgprValuC+14], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+14], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v20, v22, s[52:53]  // 
v_and_or_b32 v12, v[vgprValuC+14], v21, v[vgprValuC+13] // pack two bf16 to dword
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cmp_u_f32 s[52:53], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v20, v[vgprValuC+16], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+16], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v20, v22, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+16], 16, v[vgprValuC+16] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v20, v[vgprValuC+17], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+17], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v20, v22, s[52:53]  // 
v_and_or_b32 v16, v[vgprValuC+17], v21, v[vgprValuC+16] // pack two bf16 to dword
v_cmp_u_f32 s[52:53], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v20, v[vgprValuC+18], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+18], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v20, v22, s[52:53]  // 
v_lshrrev_b32 v[vgprValuC+18], 16, v[vgprValuC+18] // convert C to bf16
v_cmp_u_f32 s[52:53], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v20, v[vgprValuC+19], 16, 1              // Non-Nan case: store lsb of bf16
v_add3_u32 v20, v[vgprValuC+19], v20, v23          // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v20, v22, s[52:53]  // 
v_and_or_b32 v17, v[vgprValuC+19], v21, v[vgprValuC+18] // pack two bf16 to dword
ds_write_b64 v6, v[16:17], offset:64               // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[10:11], v7, offset:0                 // storeRemap lr
ds_read_b64 v[12:13], v7, offset:544               // storeRemap lr

s_waitcnt lgkmcnt(1)                               // wait for LDS read
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v14, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short v10, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v14, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short_d16_hi v10, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v14, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short v11, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v14, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short_d16_hi v11, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(0)                               // wait for LDS read
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v14, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short v12, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v14, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short_d16_hi v12, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v14, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short v13, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v14, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[52:53], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[54:55], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[54:55], s[52:53], s[54:55]             // in0 && in1
v_mul_lo_u32 v14, v14, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v14, v14, v8, 0x1                  // scale to BPE
v_cndmask_b32 v14, -1, v14, s[54:55]               // clip if OOB. offset
buffer_store_short_d16_hi v13, v14, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_43                           // jump to end
label_GW_End_43:

label_0045:  /// KernelEnd
s_endpgm                                           // Kernel End


