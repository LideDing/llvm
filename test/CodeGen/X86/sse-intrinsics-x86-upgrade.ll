; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i686-apple-darwin -mattr=+sse2 | FileCheck %s

define void @test_x86_sse_storeu_ps(i8* %a0, <4 x float> %a1) {
; CHECK-LABEL: test_x86_sse_storeu_ps:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    movl {{[0-9]+}}(%esp), %eax
; CHECK-NEXT:    movups %xmm0, (%eax)
; CHECK-NEXT:    retl
  call void @llvm.x86.sse.storeu.ps(i8* %a0, <4 x float> %a1)
  ret void
}
declare void @llvm.x86.sse.storeu.ps(i8*, <4 x float>) nounwind


define <4 x float> @test_x86_sse_add_ss(<4 x float> %a0, <4 x float> %a1) {
; CHECK-LABEL: test_x86_sse_add_ss:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    addss %xmm1, %xmm0
; CHECK-NEXT:    retl
  %res = call <4 x float> @llvm.x86.sse.add.ss(<4 x float> %a0, <4 x float> %a1) ; <<4 x float>> [#uses=1]
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse.add.ss(<4 x float>, <4 x float>) nounwind readnone


define <4 x float> @test_x86_sse_sub_ss(<4 x float> %a0, <4 x float> %a1) {
; CHECK-LABEL: test_x86_sse_sub_ss:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    subss %xmm1, %xmm0
; CHECK-NEXT:    retl
  %res = call <4 x float> @llvm.x86.sse.sub.ss(<4 x float> %a0, <4 x float> %a1) ; <<4 x float>> [#uses=1]
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse.sub.ss(<4 x float>, <4 x float>) nounwind readnone


define <4 x float> @test_x86_sse_mul_ss(<4 x float> %a0, <4 x float> %a1) {
; CHECK-LABEL: test_x86_sse_mul_ss:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    mulss %xmm1, %xmm0
; CHECK-NEXT:    retl
  %res = call <4 x float> @llvm.x86.sse.mul.ss(<4 x float> %a0, <4 x float> %a1) ; <<4 x float>> [#uses=1]
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse.mul.ss(<4 x float>, <4 x float>) nounwind readnone


define <4 x float> @test_x86_sse_div_ss(<4 x float> %a0, <4 x float> %a1) {
; CHECK-LABEL: test_x86_sse_div_ss:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    divss %xmm1, %xmm0
; CHECK-NEXT:    retl
  %res = call <4 x float> @llvm.x86.sse.div.ss(<4 x float> %a0, <4 x float> %a1) ; <<4 x float>> [#uses=1]
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse.div.ss(<4 x float>, <4 x float>) nounwind readnone

