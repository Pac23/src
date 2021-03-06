; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; NOTE: Assertions have been autogenerated by update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-apple-darwin -mattr=+avx512vl -mattr=+avx512vbmi --show-mc-encoding| FileCheck %s
declare <16 x i8> @llvm.x86.avx512.mask.permvar.qi.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_permvar_qi_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3) {
; CHECK-LABEL: test_int_x86_avx512_mask_permvar_qi_128:
; CHECK:       ## BB#0:
; CHECK-NEXT:    kmovd %edi, %k1 ## encoding: [0xc5,0xfb,0x92,0xcf]
; CHECK-NEXT:    vpermb %xmm0, %xmm1, %xmm3 ## encoding: [0x62,0xf2,0x75,0x08,0x8d,0xd8]
; CHECK-NEXT:    vpermb %xmm0, %xmm1, %xmm2 {%k1} ## encoding: [0x62,0xf2,0x75,0x09,0x8d,0xd0]
; CHECK-NEXT:    vpermb %xmm0, %xmm1, %xmm0 {%k1} {z} ## encoding: [0x62,0xf2,0x75,0x89,0x8d,0xc0]
; CHECK-NEXT:    vpaddb %xmm3, %xmm0, %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf9,0xfc,0xc3]
; CHECK-NEXT:    vpaddb %xmm0, %xmm2, %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xe9,0xfc,0xc0]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = call <16 x i8> @llvm.x86.avx512.mask.permvar.qi.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.permvar.qi.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> zeroinitializer, i16 %x3)
  %res2 = call <16 x i8> @llvm.x86.avx512.mask.permvar.qi.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 -1)
  %res3 = add <16 x i8> %res, %res1
  %res4 = add <16 x i8> %res3, %res2
  ret <16 x i8> %res4
}

declare <32 x i8> @llvm.x86.avx512.mask.permvar.qi.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

define <32 x i8>@test_int_x86_avx512_mask_permvar_qi_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
; CHECK-LABEL: test_int_x86_avx512_mask_permvar_qi_256:
; CHECK:       ## BB#0:
; CHECK-NEXT:    kmovd %edi, %k1 ## encoding: [0xc5,0xfb,0x92,0xcf]
; CHECK-NEXT:    vpermb %ymm0, %ymm1, %ymm2 {%k1} ## encoding: [0x62,0xf2,0x75,0x29,0x8d,0xd0]
; CHECK-NEXT:    vpermb %ymm0, %ymm1, %ymm3 {%k1} {z} ## encoding: [0x62,0xf2,0x75,0xa9,0x8d,0xd8]
; CHECK-NEXT:    vpermb %ymm0, %ymm1, %ymm0 ## encoding: [0x62,0xf2,0x75,0x28,0x8d,0xc0]
; CHECK-NEXT:    vpaddb %ymm0, %ymm3, %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xe5,0xfc,0xc0]
; CHECK-NEXT:    vpaddb %ymm0, %ymm2, %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xed,0xfc,0xc0]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = call <32 x i8> @llvm.x86.avx512.mask.permvar.qi.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.permvar.qi.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> zeroinitializer, i32 %x3)
  %res2 = call <32 x i8> @llvm.x86.avx512.mask.permvar.qi.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res3 = add <32 x i8> %res, %res1
  %res4 = add <32 x i8> %res3, %res2
  ret <32 x i8> %res4
}

declare <16 x i8> @llvm.x86.avx512.mask.pmultishift.qb.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_pmultishift_qb_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3) {
; CHECK-LABEL: test_int_x86_avx512_mask_pmultishift_qb_128:
; CHECK:       ## BB#0:
; CHECK-NEXT:    kmovd %edi, %k1 ## encoding: [0xc5,0xfb,0x92,0xcf]
; CHECK-NEXT:    vpmultishiftqb %xmm1, %xmm0, %xmm3 ## encoding: [0x62,0xf2,0xfd,0x08,0x83,0xd9]
; CHECK-NEXT:    vpmultishiftqb %xmm1, %xmm0, %xmm2 {%k1} ## encoding: [0x62,0xf2,0xfd,0x09,0x83,0xd1]
; CHECK-NEXT:    vpmultishiftqb %xmm1, %xmm0, %xmm0 {%k1} {z} ## encoding: [0x62,0xf2,0xfd,0x89,0x83,0xc1]
; CHECK-NEXT:    vpaddb %xmm3, %xmm0, %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf9,0xfc,0xc3]
; CHECK-NEXT:    vpaddb %xmm0, %xmm2, %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xe9,0xfc,0xc0]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = call <16 x i8> @llvm.x86.avx512.mask.pmultishift.qb.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmultishift.qb.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> zeroinitializer, i16 %x3)
  %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmultishift.qb.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 -1)
  %res3 = add <16 x i8> %res, %res1
  %res4 = add <16 x i8> %res3, %res2
  ret <16 x i8> %res4
}

declare <32 x i8> @llvm.x86.avx512.mask.pmultishift.qb.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

define <32 x i8>@test_int_x86_avx512_mask_pmultishift_qb_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
; CHECK-LABEL: test_int_x86_avx512_mask_pmultishift_qb_256:
; CHECK:       ## BB#0:
; CHECK-NEXT:    kmovd %edi, %k1 ## encoding: [0xc5,0xfb,0x92,0xcf]
; CHECK-NEXT:    vpmultishiftqb %ymm1, %ymm0, %ymm2 {%k1} ## encoding: [0x62,0xf2,0xfd,0x29,0x83,0xd1]
; CHECK-NEXT:    vpmultishiftqb %ymm1, %ymm0, %ymm3 {%k1} {z} ## encoding: [0x62,0xf2,0xfd,0xa9,0x83,0xd9]
; CHECK-NEXT:    vpmultishiftqb %ymm1, %ymm0, %ymm0 ## encoding: [0x62,0xf2,0xfd,0x28,0x83,0xc1]
; CHECK-NEXT:    vpaddb %ymm0, %ymm3, %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xe5,0xfc,0xc0]
; CHECK-NEXT:    vpaddb %ymm0, %ymm2, %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xed,0xfc,0xc0]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = call <32 x i8> @llvm.x86.avx512.mask.pmultishift.qb.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.pmultishift.qb.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> zeroinitializer, i32 %x3)
  %res2 = call <32 x i8> @llvm.x86.avx512.mask.pmultishift.qb.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res3 = add <32 x i8> %res, %res1
  %res4 = add <32 x i8> %res3, %res2
  ret <32 x i8> %res4
}

declare <16 x i8> @llvm.x86.avx512.mask.vpermi2var.qi.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_vpermi2var_qi_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3) {
; CHECK-LABEL: test_int_x86_avx512_mask_vpermi2var_qi_128:
; CHECK:       ## BB#0:
; CHECK-NEXT:    kmovd %edi, %k1 ## encoding: [0xc5,0xfb,0x92,0xcf]
; CHECK-NEXT:    vmovdqa %xmm1, %xmm3 ## EVEX TO VEX Compression encoding: [0xc5,0xf9,0x6f,0xd9]
; CHECK-NEXT:    vpermi2b %xmm2, %xmm0, %xmm3 ## encoding: [0x62,0xf2,0x7d,0x08,0x75,0xda]
; CHECK-NEXT:    vpermi2b %xmm2, %xmm0, %xmm1 {%k1} ## encoding: [0x62,0xf2,0x7d,0x09,0x75,0xca]
; CHECK-NEXT:    vpxor %xmm4, %xmm4, %xmm4 ## EVEX TO VEX Compression encoding: [0xc5,0xd9,0xef,0xe4]
; CHECK-NEXT:    vpermi2b %xmm2, %xmm0, %xmm4 {%k1} {z} ## encoding: [0x62,0xf2,0x7d,0x89,0x75,0xe2]
; CHECK-NEXT:    vpaddb %xmm3, %xmm4, %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xd9,0xfc,0xc3]
; CHECK-NEXT:    vpaddb %xmm0, %xmm1, %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf1,0xfc,0xc0]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = call <16 x i8> @llvm.x86.avx512.mask.vpermi2var.qi.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.vpermi2var.qi.128(<16 x i8> %x0, <16 x i8> zeroinitializer, <16 x i8> %x2, i16 %x3)
  %res2 = call <16 x i8> @llvm.x86.avx512.mask.vpermi2var.qi.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 -1)
  %res3 = add <16 x i8> %res, %res1
  %res4 = add <16 x i8> %res3, %res2
  ret <16 x i8> %res4
}

declare <32 x i8> @llvm.x86.avx512.mask.vpermi2var.qi.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

define <32 x i8>@test_int_x86_avx512_mask_vpermi2var_qi_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
; CHECK-LABEL: test_int_x86_avx512_mask_vpermi2var_qi_256:
; CHECK:       ## BB#0:
; CHECK-NEXT:    kmovd %edi, %k1 ## encoding: [0xc5,0xfb,0x92,0xcf]
; CHECK-NEXT:    vmovdqa %ymm1, %ymm3 ## EVEX TO VEX Compression encoding: [0xc5,0xfd,0x6f,0xd9]
; CHECK-NEXT:    vpermi2b %ymm2, %ymm0, %ymm3 {%k1} ## encoding: [0x62,0xf2,0x7d,0x29,0x75,0xda]
; CHECK-NEXT:    vpermi2b %ymm2, %ymm0, %ymm1 ## encoding: [0x62,0xf2,0x7d,0x28,0x75,0xca]
; CHECK-NEXT:    vpxor %ymm4, %ymm4, %ymm4 ## EVEX TO VEX Compression encoding: [0xc5,0xdd,0xef,0xe4]
; CHECK-NEXT:    vpermi2b %ymm2, %ymm0, %ymm4 {%k1} {z} ## encoding: [0x62,0xf2,0x7d,0xa9,0x75,0xe2]
; CHECK-NEXT:    vpaddb %ymm1, %ymm4, %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xdd,0xfc,0xc1]
; CHECK-NEXT:    vpaddb %ymm0, %ymm3, %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xe5,0xfc,0xc0]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = call <32 x i8> @llvm.x86.avx512.mask.vpermi2var.qi.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.vpermi2var.qi.256(<32 x i8> %x0, <32 x i8> zeroinitializer, <32 x i8> %x2, i32 %x3)
  %res2 = call <32 x i8> @llvm.x86.avx512.mask.vpermi2var.qi.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res3 = add <32 x i8> %res, %res1
  %res4 = add <32 x i8> %res3, %res2
  ret <32 x i8> %res4
}

declare <16 x i8> @llvm.x86.avx512.mask.vpermt2var.qi.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_vpermt2var_qi_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3) {
; CHECK-LABEL: test_int_x86_avx512_mask_vpermt2var_qi_128:
; CHECK:       ## BB#0:
; CHECK-NEXT:    kmovd %edi, %k1 ## encoding: [0xc5,0xfb,0x92,0xcf]
; CHECK-NEXT:    vmovdqa %xmm1, %xmm3 ## EVEX TO VEX Compression encoding: [0xc5,0xf9,0x6f,0xd9]
; CHECK-NEXT:    vpermt2b %xmm2, %xmm0, %xmm3 ## encoding: [0x62,0xf2,0x7d,0x08,0x7d,0xda]
; CHECK-NEXT:    vpermt2b %xmm2, %xmm0, %xmm1 {%k1} ## encoding: [0x62,0xf2,0x7d,0x09,0x7d,0xca]
; CHECK-NEXT:    vpxor %xmm4, %xmm4, %xmm4 ## EVEX TO VEX Compression encoding: [0xc5,0xd9,0xef,0xe4]
; CHECK-NEXT:    vpermt2b %xmm2, %xmm0, %xmm4 {%k1} {z} ## encoding: [0x62,0xf2,0x7d,0x89,0x7d,0xe2]
; CHECK-NEXT:    vpaddb %xmm3, %xmm4, %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xd9,0xfc,0xc3]
; CHECK-NEXT:    vpaddb %xmm0, %xmm1, %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf1,0xfc,0xc0]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = call <16 x i8> @llvm.x86.avx512.mask.vpermt2var.qi.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.vpermt2var.qi.128(<16 x i8> %x0, <16 x i8> zeroinitializer, <16 x i8> %x2, i16 %x3)
  %res2 = call <16 x i8> @llvm.x86.avx512.mask.vpermt2var.qi.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 -1)
  %res3 = add <16 x i8> %res, %res1
  %res4 = add <16 x i8> %res3, %res2
  ret <16 x i8> %res4
}

declare <32 x i8> @llvm.x86.avx512.mask.vpermt2var.qi.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

define <32 x i8>@test_int_x86_avx512_mask_vpermt2var_qi_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
; CHECK-LABEL: test_int_x86_avx512_mask_vpermt2var_qi_256:
; CHECK:       ## BB#0:
; CHECK-NEXT:    kmovd %edi, %k1 ## encoding: [0xc5,0xfb,0x92,0xcf]
; CHECK-NEXT:    vmovdqa %ymm1, %ymm3 ## EVEX TO VEX Compression encoding: [0xc5,0xfd,0x6f,0xd9]
; CHECK-NEXT:    vpermt2b %ymm2, %ymm0, %ymm3 {%k1} ## encoding: [0x62,0xf2,0x7d,0x29,0x7d,0xda]
; CHECK-NEXT:    vpermt2b %ymm2, %ymm0, %ymm1 ## encoding: [0x62,0xf2,0x7d,0x28,0x7d,0xca]
; CHECK-NEXT:    vpxor %ymm4, %ymm4, %ymm4 ## EVEX TO VEX Compression encoding: [0xc5,0xdd,0xef,0xe4]
; CHECK-NEXT:    vpermt2b %ymm2, %ymm0, %ymm4 {%k1} {z} ## encoding: [0x62,0xf2,0x7d,0xa9,0x7d,0xe2]
; CHECK-NEXT:    vpaddb %ymm1, %ymm4, %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xdd,0xfc,0xc1]
; CHECK-NEXT:    vpaddb %ymm0, %ymm3, %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xe5,0xfc,0xc0]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = call <32 x i8> @llvm.x86.avx512.mask.vpermt2var.qi.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.vpermt2var.qi.256(<32 x i8> %x0, <32 x i8> zeroinitializer, <32 x i8> %x2, i32 %x3)
  %res2 = call <32 x i8> @llvm.x86.avx512.mask.vpermt2var.qi.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res3 = add <32 x i8> %res, %res1
  %res4 = add <32 x i8> %res3, %res2
  ret <32 x i8> %res4
}

declare <16 x i8> @llvm.x86.avx512.maskz.vpermt2var.qi.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_maskz_vpermt2var_qi_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3) {
; CHECK-LABEL: test_int_x86_avx512_maskz_vpermt2var_qi_128:
; CHECK:       ## BB#0:
; CHECK-NEXT:    kmovd %edi, %k1 ## encoding: [0xc5,0xfb,0x92,0xcf]
; CHECK-NEXT:    vpermi2b %xmm2, %xmm1, %xmm0 {%k1} {z} ## encoding: [0x62,0xf2,0x75,0x89,0x75,0xc2]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = call <16 x i8> @llvm.x86.avx512.maskz.vpermt2var.qi.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3)
  ret <16 x i8> %res
}

declare <32 x i8> @llvm.x86.avx512.maskz.vpermt2var.qi.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

define <32 x i8>@test_int_x86_avx512_maskz_vpermt2var_qi_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
; CHECK-LABEL: test_int_x86_avx512_maskz_vpermt2var_qi_256:
; CHECK:       ## BB#0:
; CHECK-NEXT:    kmovd %edi, %k1 ## encoding: [0xc5,0xfb,0x92,0xcf]
; CHECK-NEXT:    vpermi2b %ymm2, %ymm1, %ymm0 {%k1} {z} ## encoding: [0x62,0xf2,0x75,0xa9,0x75,0xc2]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = call <32 x i8> @llvm.x86.avx512.maskz.vpermt2var.qi.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  ret <32 x i8> %res
}
