; ModuleID = 'The Accel Module'
source_filename = "The Accel Module"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: noinline
define amdgpu_kernel void @"saxpy_acc_mpi_$ck_L88_2"(i64 %"$$arg_dvmbr_p2_t341", i64 %"$$arg_dvmbr_p4_t352", i64 %"$$arg_ptr_acc_y_local_t5_t363", i64 %"$$arg_ptr_acc_x_local_t7_t374", i32 %"$$_arg_acc_len_local_t14_t385") #0 !dbg !6 !scalarlevel !10 !cachelevel !11 !fplevel !10 {
", bb81":
  %r = tail call i64 @__ockl_get_local_size(i32 0), !dbg !12 ; saxpy_acc_mpi.f90:88
  %r6 = trunc i64 %r to i32, !dbg !12 ; saxpy_acc_mpi.f90:88
  %r8 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !12 ; saxpy_acc_mpi.f90:88
  %r9 = trunc i64 %r8 to i32, !dbg !12 ; saxpy_acc_mpi.f90:88
  %r10 = mul i32 %r6, %r9, !dbg !12 ; saxpy_acc_mpi.f90:88
  %r12 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !12 ; saxpy_acc_mpi.f90:88
  %r13 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !12 ; saxpy_acc_mpi.f90:88
  %r14 = mul i32 %r12, %r6, !dbg !12 ; saxpy_acc_mpi.f90:88
  %r15 = add i32 %r13, %r14, !dbg !12 ; saxpy_acc_mpi.f90:88
  %r20.not = icmp slt i32 %r15, %"$$_arg_acc_len_local_t14_t385", !dbg !12 ; saxpy_acc_mpi.f90:88
  br i1 %r20.not, label %"file saxpy_acc_mpi.f90, line 89, bb30", label %"file saxpy_acc_mpi.f90, line 90, bb91", !dbg !12 ; saxpy_acc_mpi.f90:88

"file saxpy_acc_mpi.f90, line 89, bb30":          ; preds = %", bb81"
  %r25.neg = mul i64 %"$$arg_dvmbr_p2_t341", -4, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r26 = add i64 %r25.neg, %"$$arg_ptr_acc_y_local_t5_t363", !dbg !13 ; saxpy_acc_mpi.f90:89
  %r29.neg = mul i64 %"$$arg_dvmbr_p4_t352", -4, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r30 = add i64 %r29.neg, %"$$arg_ptr_acc_x_local_t7_t374", !dbg !13 ; saxpy_acc_mpi.f90:89
  br label %"file saxpy_acc_mpi.f90, line 90, in inner loop at depth 0, bb3462", !dbg !13 ; saxpy_acc_mpi.f90:89

"file saxpy_acc_mpi.f90, line 90, in inner loop at depth 0, bb3462": ; preds = %"file saxpy_acc_mpi.f90, line 90, in inner loop at depth 0, bb3462", %"file saxpy_acc_mpi.f90, line 89, bb30"
  %"$$i_l88_2_t25.0" = phi i32 [ %r15, %"file saxpy_acc_mpi.f90, line 89, bb30" ], [ %r55, %"file saxpy_acc_mpi.f90, line 90, in inner loop at depth 0, bb3462" ], !dbg !14 ; saxpy_acc_mpi.f90:0
  %r34 = inttoptr i64 %r30 to float*, !dbg !13 ; saxpy_acc_mpi.f90:89
  %cic-gep-idxcast = sext i32 %"$$i_l88_2_t25.0" to i64, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r35 = getelementptr float, float* %r34, i64 %cic-gep-idxcast, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r36 = getelementptr float, float* %r35, i64 1, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r37 = addrspacecast float* %r36 to float addrspace(1)*, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r38 = load float, float addrspace(1)* %r37, align 4, !dbg !13, !CrayMri !15, !looptrips !16, !autoprefetch !17 ; saxpy_acc_mpi.f90:89
  %r41 = inttoptr i64 %r26 to float*, !dbg !13 ; saxpy_acc_mpi.f90:89
  %cic-gep-idxcast63 = sext i32 %"$$i_l88_2_t25.0" to i64, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r42 = getelementptr float, float* %r41, i64 %cic-gep-idxcast63, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r43 = getelementptr float, float* %r42, i64 1, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r44 = addrspacecast float* %r43 to float addrspace(1)*, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r45 = load float, float addrspace(1)* %r44, align 4, !dbg !13, !CrayMri !18, !looptrips !16, !autoprefetch !17 ; saxpy_acc_mpi.f90:89
  %r46 = tail call float @llvm.amdgcn.fmad.ftz.f32(float 2.000000e+00, float %r38, float %r45), !dbg !13 ; saxpy_acc_mpi.f90:89
  %r49 = inttoptr i64 %r26 to float*, !dbg !13 ; saxpy_acc_mpi.f90:89
  %cic-gep-idxcast64 = sext i32 %"$$i_l88_2_t25.0" to i64, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r50 = getelementptr float, float* %r49, i64 %cic-gep-idxcast64, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r51 = getelementptr float, float* %r50, i64 1, !dbg !13 ; saxpy_acc_mpi.f90:89
  %r52 = addrspacecast float* %r51 to float addrspace(1)*, !dbg !13 ; saxpy_acc_mpi.f90:89
  store float %r46, float addrspace(1)* %r52, align 4, !dbg !13, !CrayMri !19, !looptrips !16, !autoprefetch !17 ; saxpy_acc_mpi.f90:89
  %r55 = add i32 %r10, %"$$i_l88_2_t25.0", !dbg !20 ; saxpy_acc_mpi.f90:90
  %r58.not = icmp slt i32 %r55, %"$$_arg_acc_len_local_t14_t385", !dbg !20 ; saxpy_acc_mpi.f90:90
  br i1 %r58.not, label %"file saxpy_acc_mpi.f90, line 90, in inner loop at depth 0, bb3462", label %"file saxpy_acc_mpi.f90, line 90, bb91", !dbg !20 ; saxpy_acc_mpi.f90:90

"file saxpy_acc_mpi.f90, line 90, bb91":          ; preds = %"file saxpy_acc_mpi.f90, line 90, in inner loop at depth 0, bb3462", %", bb81"
  ret void, !dbg !20 ; saxpy_acc_mpi.f90:90
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
define amdgpu_kernel void @"saxpy_acc_mpi_$ck_L88_2_cce$noloop$form"(i64 %"$$arg_dvmbr_p2_t391", i64 %"$$arg_dvmbr_p4_t402", i64 %"$$arg_ptr_acc_y_local_t5_t413", i64 %"$$arg_ptr_acc_x_local_t7_t424", i32 %"$$_arg_acc_len_local_t15_t435") #0 !dbg !21 !scalarlevel !10 !cachelevel !11 !fplevel !10 {
", bb85":
  %r = tail call i64 @__ockl_get_local_size(i32 0), !dbg !22 ; saxpy_acc_mpi.f90:88
  %r6 = trunc i64 %r to i32, !dbg !22 ; saxpy_acc_mpi.f90:88
  %r7 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !22 ; saxpy_acc_mpi.f90:88
  %r8 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !22 ; saxpy_acc_mpi.f90:88
  %r9 = mul i32 %r7, %r6, !dbg !22 ; saxpy_acc_mpi.f90:88
  %r10 = add i32 %r8, %r9, !dbg !22 ; saxpy_acc_mpi.f90:88
  %r13.not = icmp slt i32 %r10, %"$$_arg_acc_len_local_t15_t435", !dbg !22 ; saxpy_acc_mpi.f90:88
  br i1 %r13.not, label %"file saxpy_acc_mpi.f90, line 88, bb39", label %"file saxpy_acc_mpi.f90, line 90, bb93", !dbg !22 ; saxpy_acc_mpi.f90:88

"file saxpy_acc_mpi.f90, line 88, bb39":          ; preds = %", bb85"
  %0 = trunc i64 %"$$arg_dvmbr_p2_t391" to i32, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r20 = sub i32 %r10, %0, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r23 = sext i32 %r10 to i64, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r25 = sub i64 %r23, %"$$arg_dvmbr_p4_t402", !dbg !23 ; saxpy_acc_mpi.f90:89
  %r26 = inttoptr i64 %"$$arg_ptr_acc_x_local_t7_t424" to float*, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r27 = getelementptr float, float* %r26, i64 %r25, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r28 = getelementptr float, float* %r27, i64 1, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r29 = addrspacecast float* %r28 to float addrspace(1)*, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r30 = load float, float addrspace(1)* %r29, align 4, !dbg !23, !CrayMri !24 ; saxpy_acc_mpi.f90:89
  %r33 = fadd float %r30, %r30, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r36 = inttoptr i64 %"$$arg_ptr_acc_y_local_t5_t413" to float*, !dbg !23 ; saxpy_acc_mpi.f90:89
  %cic-gep-idxcast = sext i32 %r20 to i64, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r37 = getelementptr float, float* %r36, i64 %cic-gep-idxcast, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r38 = getelementptr float, float* %r37, i64 1, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r39 = addrspacecast float* %r38 to float addrspace(1)*, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r40 = load float, float addrspace(1)* %r39, align 4, !dbg !23, !CrayMri !25 ; saxpy_acc_mpi.f90:89
  %r41 = fadd float %r33, %r40, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r44 = inttoptr i64 %"$$arg_ptr_acc_y_local_t5_t413" to float*, !dbg !23 ; saxpy_acc_mpi.f90:89
  %cic-gep-idxcast48 = sext i32 %r20 to i64, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r45 = getelementptr float, float* %r44, i64 %cic-gep-idxcast48, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r46 = getelementptr float, float* %r45, i64 1, !dbg !23 ; saxpy_acc_mpi.f90:89
  %r47 = addrspacecast float* %r46 to float addrspace(1)*, !dbg !23 ; saxpy_acc_mpi.f90:89
  store float %r41, float addrspace(1)* %r47, align 4, !dbg !23, !CrayMri !26 ; saxpy_acc_mpi.f90:89
  br label %"file saxpy_acc_mpi.f90, line 90, bb93", !dbg !23 ; saxpy_acc_mpi.f90:89

"file saxpy_acc_mpi.f90, line 90, bb93":          ; preds = %"file saxpy_acc_mpi.f90, line 88, bb39", %", bb85"
  ret void, !dbg !27 ; saxpy_acc_mpi.f90:90
}

attributes #0 = { noinline "amdgpu-flat-work-group-size"="1,1024" "amdgpu-implicitarg-num-bytes"="56" "uniform-work-group-size"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}
!nvvm.annotations = !{!3, !4}
!PDGFunctionMap = !{!5}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_Fortran90, file: !2, producer: "Cray Fortran : Version 15.0.1", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug)
!2 = !DIFile(filename: "saxpy_acc_mpi.f90", directory: "/home/users/shanks/openacc-mpi-demos")
!3 = !{void (i64, i64, i64, i64, i32)* @"saxpy_acc_mpi_$ck_L88_2", !"kernel", i32 1}
!4 = !{void (i64, i64, i64, i64, i32)* @"saxpy_acc_mpi_$ck_L88_2_cce$noloop$form", !"kernel", i32 1}
!5 = !{i32 324, !"saxpy_acc_mpi_$ck_L88_2_cce$noloop$form"}
!6 = distinct !DISubprogram(name: "saxpy_acc_mpi_$ck_L88_2", linkageName: "saxpy_acc_mpi_$ck_L88_2", scope: !2, file: !2, line: 88, type: !7, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{}
!10 = !{i64 2}
!11 = !{i64 0}
!12 = !DILocation(line: 88, scope: !6)
!13 = !DILocation(line: 89, scope: !6)
!14 = !DILocation(line: 0, scope: !6)
!15 = !{i64 3264175145107}
!16 = !{i64 9223372036854775807}
!17 = !{i32 1}
!18 = !{i64 3259880177811}
!19 = !{i64 18017658389659795}
!20 = !DILocation(line: 90, scope: !6)
!21 = distinct !DISubprogram(name: "saxpy_acc_mpi_$ck_L88_2_cce$noloop$form", linkageName: "saxpy_acc_mpi_$ck_L88_2_cce$noloop$form", scope: !2, file: !2, line: 88, type: !7, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !9)
!22 = !DILocation(line: 88, scope: !21)
!23 = !DILocation(line: 89, scope: !21)
!24 = !{i64 3285649981708}
!25 = !{i64 3281355014301}
!26 = !{i64 18017679864496285}
!27 = !DILocation(line: 90, scope: !21)
