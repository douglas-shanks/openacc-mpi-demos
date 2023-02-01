; ModuleID = 'The Accel Module'
source_filename = "The Accel Module"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: noinline
define amdgpu_kernel void @"saxpy_acc_$ck_L29_2"(i64 %"$$arg_dvmbr_p2_t341", i64 %"$$arg_dvmbr_p4_t352", i64 %"$$arg_ptr_acc_y_t5_t363", i64 %"$$arg_ptr_acc_x_t7_t374", i32 %"$$_arg_acc_n_t14_t385") #0 !dbg !6 !scalarlevel !10 !cachelevel !11 !fplevel !10 {
", bb80":
  %r = tail call i64 @__ockl_get_local_size(i32 0), !dbg !12 ; saxpy_acc.f90:29
  %r6 = trunc i64 %r to i32, !dbg !12 ; saxpy_acc.f90:29
  %r8 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !12 ; saxpy_acc.f90:29
  %r9 = trunc i64 %r8 to i32, !dbg !12 ; saxpy_acc.f90:29
  %r10 = mul i32 %r6, %r9, !dbg !12 ; saxpy_acc.f90:29
  %r12 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !12 ; saxpy_acc.f90:29
  %r13 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !12 ; saxpy_acc.f90:29
  %r14 = mul i32 %r12, %r6, !dbg !12 ; saxpy_acc.f90:29
  %r15 = add i32 %r13, %r14, !dbg !12 ; saxpy_acc.f90:29
  %r20.not = icmp slt i32 %r15, %"$$_arg_acc_n_t14_t385", !dbg !12 ; saxpy_acc.f90:29
  br i1 %r20.not, label %"file saxpy_acc.f90, line 30, bb34", label %"file saxpy_acc.f90, line 31, bb90", !dbg !12 ; saxpy_acc.f90:29

"file saxpy_acc.f90, line 30, bb34":              ; preds = %", bb80"
  %r25.neg = mul i64 %"$$arg_dvmbr_p2_t341", -4, !dbg !13 ; saxpy_acc.f90:30
  %r26 = add i64 %r25.neg, %"$$arg_ptr_acc_y_t5_t363", !dbg !13 ; saxpy_acc.f90:30
  %r29.neg = mul i64 %"$$arg_dvmbr_p4_t352", -4, !dbg !13 ; saxpy_acc.f90:30
  %r30 = add i64 %r29.neg, %"$$arg_ptr_acc_x_t7_t374", !dbg !13 ; saxpy_acc.f90:30
  br label %"file saxpy_acc.f90, line 31, in inner loop at depth 0, bb3862", !dbg !13 ; saxpy_acc.f90:30

"file saxpy_acc.f90, line 31, in inner loop at depth 0, bb3862": ; preds = %"file saxpy_acc.f90, line 31, in inner loop at depth 0, bb3862", %"file saxpy_acc.f90, line 30, bb34"
  %"$$i_l29_2_t25.0" = phi i32 [ %r15, %"file saxpy_acc.f90, line 30, bb34" ], [ %r55, %"file saxpy_acc.f90, line 31, in inner loop at depth 0, bb3862" ], !dbg !14 ; saxpy_acc.f90:0
  %r34 = inttoptr i64 %r30 to float*, !dbg !13 ; saxpy_acc.f90:30
  %cic-gep-idxcast = sext i32 %"$$i_l29_2_t25.0" to i64, !dbg !13 ; saxpy_acc.f90:30
  %r35 = getelementptr float, float* %r34, i64 %cic-gep-idxcast, !dbg !13 ; saxpy_acc.f90:30
  %r36 = getelementptr float, float* %r35, i64 1, !dbg !13 ; saxpy_acc.f90:30
  %r37 = addrspacecast float* %r36 to float addrspace(1)*, !dbg !13 ; saxpy_acc.f90:30
  %r38 = load float, float addrspace(1)* %r37, align 4, !dbg !13, !CrayMri !15, !looptrips !16, !autoprefetch !17 ; saxpy_acc.f90:30
  %r41 = inttoptr i64 %r26 to float*, !dbg !13 ; saxpy_acc.f90:30
  %cic-gep-idxcast63 = sext i32 %"$$i_l29_2_t25.0" to i64, !dbg !13 ; saxpy_acc.f90:30
  %r42 = getelementptr float, float* %r41, i64 %cic-gep-idxcast63, !dbg !13 ; saxpy_acc.f90:30
  %r43 = getelementptr float, float* %r42, i64 1, !dbg !13 ; saxpy_acc.f90:30
  %r44 = addrspacecast float* %r43 to float addrspace(1)*, !dbg !13 ; saxpy_acc.f90:30
  %r45 = load float, float addrspace(1)* %r44, align 4, !dbg !13, !CrayMri !18, !looptrips !16, !autoprefetch !17 ; saxpy_acc.f90:30
  %r46 = tail call float @llvm.amdgcn.fmad.ftz.f32(float 2.000000e+00, float %r38, float %r45), !dbg !13 ; saxpy_acc.f90:30
  %r49 = inttoptr i64 %r26 to float*, !dbg !13 ; saxpy_acc.f90:30
  %cic-gep-idxcast64 = sext i32 %"$$i_l29_2_t25.0" to i64, !dbg !13 ; saxpy_acc.f90:30
  %r50 = getelementptr float, float* %r49, i64 %cic-gep-idxcast64, !dbg !13 ; saxpy_acc.f90:30
  %r51 = getelementptr float, float* %r50, i64 1, !dbg !13 ; saxpy_acc.f90:30
  %r52 = addrspacecast float* %r51 to float addrspace(1)*, !dbg !13 ; saxpy_acc.f90:30
  store float %r46, float addrspace(1)* %r52, align 4, !dbg !13, !CrayMri !19, !looptrips !16, !autoprefetch !17 ; saxpy_acc.f90:30
  %r55 = add i32 %r10, %"$$i_l29_2_t25.0", !dbg !20 ; saxpy_acc.f90:31
  %r58.not = icmp slt i32 %r55, %"$$_arg_acc_n_t14_t385", !dbg !20 ; saxpy_acc.f90:31
  br i1 %r58.not, label %"file saxpy_acc.f90, line 31, in inner loop at depth 0, bb3862", label %"file saxpy_acc.f90, line 31, bb90", !dbg !20 ; saxpy_acc.f90:31

"file saxpy_acc.f90, line 31, bb90":              ; preds = %"file saxpy_acc.f90, line 31, in inner loop at depth 0, bb3862", %", bb80"
  ret void, !dbg !20 ; saxpy_acc.f90:31
}

declare i64 @__ockl_get_local_size(i32)

declare i64 @__ockl_get_num_groups(i32)

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.amdgcn.fmad.ftz.f32(float, float, float) #1

; Function Attrs: noinline
define amdgpu_kernel void @"saxpy_acc_$ck_L29_2_cce$noloop$form"(i64 %"$$arg_dvmbr_p2_t391", i64 %"$$arg_dvmbr_p4_t402", i64 %"$$arg_ptr_acc_y_t5_t413", i64 %"$$arg_ptr_acc_x_t7_t424", i32 %"$$_arg_acc_n_t15_t435") #0 !dbg !21 !scalarlevel !10 !cachelevel !11 !fplevel !10 {
", bb84":
  %r = tail call i64 @__ockl_get_local_size(i32 0), !dbg !22 ; saxpy_acc.f90:29
  %r6 = trunc i64 %r to i32, !dbg !22 ; saxpy_acc.f90:29
  %r7 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !22 ; saxpy_acc.f90:29
  %r8 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !22 ; saxpy_acc.f90:29
  %r9 = mul i32 %r7, %r6, !dbg !22 ; saxpy_acc.f90:29
  %r10 = add i32 %r8, %r9, !dbg !22 ; saxpy_acc.f90:29
  %r13.not = icmp slt i32 %r10, %"$$_arg_acc_n_t15_t435", !dbg !22 ; saxpy_acc.f90:29
  br i1 %r13.not, label %"file saxpy_acc.f90, line 29, bb43", label %"file saxpy_acc.f90, line 31, bb92", !dbg !22 ; saxpy_acc.f90:29

"file saxpy_acc.f90, line 29, bb43":              ; preds = %", bb84"
  %0 = trunc i64 %"$$arg_dvmbr_p2_t391" to i32, !dbg !23 ; saxpy_acc.f90:30
  %r20 = sub i32 %r10, %0, !dbg !23 ; saxpy_acc.f90:30
  %r23 = sext i32 %r10 to i64, !dbg !23 ; saxpy_acc.f90:30
  %r25 = sub i64 %r23, %"$$arg_dvmbr_p4_t402", !dbg !23 ; saxpy_acc.f90:30
  %r26 = inttoptr i64 %"$$arg_ptr_acc_x_t7_t424" to float*, !dbg !23 ; saxpy_acc.f90:30
  %r27 = getelementptr float, float* %r26, i64 %r25, !dbg !23 ; saxpy_acc.f90:30
  %r28 = getelementptr float, float* %r27, i64 1, !dbg !23 ; saxpy_acc.f90:30
  %r29 = addrspacecast float* %r28 to float addrspace(1)*, !dbg !23 ; saxpy_acc.f90:30
  %r30 = load float, float addrspace(1)* %r29, align 4, !dbg !23, !CrayMri !24 ; saxpy_acc.f90:30
  %r33 = fadd float %r30, %r30, !dbg !23 ; saxpy_acc.f90:30
  %r36 = inttoptr i64 %"$$arg_ptr_acc_y_t5_t413" to float*, !dbg !23 ; saxpy_acc.f90:30
  %cic-gep-idxcast = sext i32 %r20 to i64, !dbg !23 ; saxpy_acc.f90:30
  %r37 = getelementptr float, float* %r36, i64 %cic-gep-idxcast, !dbg !23 ; saxpy_acc.f90:30
  %r38 = getelementptr float, float* %r37, i64 1, !dbg !23 ; saxpy_acc.f90:30
  %r39 = addrspacecast float* %r38 to float addrspace(1)*, !dbg !23 ; saxpy_acc.f90:30
  %r40 = load float, float addrspace(1)* %r39, align 4, !dbg !23, !CrayMri !25 ; saxpy_acc.f90:30
  %r41 = fadd float %r33, %r40, !dbg !23 ; saxpy_acc.f90:30
  %r44 = inttoptr i64 %"$$arg_ptr_acc_y_t5_t413" to float*, !dbg !23 ; saxpy_acc.f90:30
  %cic-gep-idxcast48 = sext i32 %r20 to i64, !dbg !23 ; saxpy_acc.f90:30
  %r45 = getelementptr float, float* %r44, i64 %cic-gep-idxcast48, !dbg !23 ; saxpy_acc.f90:30
  %r46 = getelementptr float, float* %r45, i64 1, !dbg !23 ; saxpy_acc.f90:30
  %r47 = addrspacecast float* %r46 to float addrspace(1)*, !dbg !23 ; saxpy_acc.f90:30
  store float %r41, float addrspace(1)* %r47, align 4, !dbg !23, !CrayMri !26 ; saxpy_acc.f90:30
  br label %"file saxpy_acc.f90, line 31, bb92", !dbg !23 ; saxpy_acc.f90:30

"file saxpy_acc.f90, line 31, bb92":              ; preds = %"file saxpy_acc.f90, line 29, bb43", %", bb84"
  ret void, !dbg !27 ; saxpy_acc.f90:31
}

attributes #0 = { noinline "amdgpu-flat-work-group-size"="1,1024" "amdgpu-implicitarg-num-bytes"="56" "uniform-work-group-size"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}
!nvvm.annotations = !{!3, !4}
!PDGFunctionMap = !{!5}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_Fortran90, file: !2, producer: "Cray Fortran : Version 15.0.1", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug)
!2 = !DIFile(filename: "saxpy_acc.f90", directory: "/home/users/shanks/openacc-mpi-demos")
!3 = !{void (i64, i64, i64, i64, i32)* @"saxpy_acc_$ck_L29_2", !"kernel", i32 1}
!4 = !{void (i64, i64, i64, i64, i32)* @"saxpy_acc_$ck_L29_2_cce$noloop$form", !"kernel", i32 1}
!5 = !{i32 8, !"saxpy_acc_$ck_L29_2_cce$noloop$form"}
!6 = distinct !DISubprogram(name: "saxpy_acc_$ck_L29_2", linkageName: "saxpy_acc_$ck_L29_2", scope: !2, file: !2, line: 29, type: !7, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{}
!10 = !{i64 2}
!11 = !{i64 0}
!12 = !DILocation(line: 29, scope: !6)
!13 = !DILocation(line: 30, scope: !6)
!14 = !DILocation(line: 0, scope: !6)
!15 = !{i64 2937757630613}
!16 = !{i64 9223372036854775807}
!17 = !{i32 1}
!18 = !{i64 2933462663317}
!19 = !{i64 18017331972145301}
!20 = !DILocation(line: 31, scope: !6)
!21 = distinct !DISubprogram(name: "saxpy_acc_$ck_L29_2_cce$noloop$form", linkageName: "saxpy_acc_$ck_L29_2_cce$noloop$form", scope: !2, file: !2, line: 29, type: !7, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !9)
!22 = !DILocation(line: 29, scope: !21)
!23 = !DILocation(line: 30, scope: !21)
!24 = !{i64 2959232467184}
!25 = !{i64 2954937499807}
!26 = !{i64 18017353446981791}
!27 = !DILocation(line: 31, scope: !21)
