; ModuleID = 'tmp.cpp'
source_filename = "tmp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z5printi(i32 noundef %b) #0 !dbg !10 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !15, !DIExpression(), !16)
  %0 = load i32, ptr %b.addr, align 4, !dbg !17
  %cmp = icmp eq i32 %0, 3, !dbg !19
  br i1 %cmp, label %if.then, label %if.else, !dbg !19

if.then:                                          ; preds = %entry
  store i32 2, ptr %b.addr, align 4, !dbg !20
  br label %if.end, !dbg !21

if.else:                                          ; preds = %entry
  store i32 4, ptr %b.addr, align 4, !dbg !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !23
}

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #1 !dbg !24 {
entry:
  %a = alloca i32, align 4
    #dbg_declare(ptr %a, !27, !DIExpression(), !28)
  %0 = load i32, ptr %a, align 4, !dbg !29
  call void @_Z5printi(i32 noundef %0), !dbg !30
  ret i32 0, !dbg !31
}

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 20.0.0git (git@github.com:aleksapaunovic-htec/llvm-project.git 01dcc41cb856b6ed095a26315faa47d2ae9ce105)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "tmp.cpp", directory: "/home/aleksa/llvm-project", checksumkind: CSK_MD5, checksum: "808bd66b3b093c1309e4cbc1b8576251")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 20.0.0git (git@github.com:aleksapaunovic-htec/llvm-project.git 01dcc41cb856b6ed095a26315faa47d2ae9ce105)"}
!10 = distinct !DISubprogram(name: "print", linkageName: "_Z5printi", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "b", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!16 = !DILocation(line: 1, column: 16, scope: !10)
!17 = !DILocation(line: 2, column: 5, scope: !18)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 2, column: 5)
!19 = !DILocation(line: 2, column: 7, scope: !18)
!20 = !DILocation(line: 2, column: 15, scope: !18)
!21 = !DILocation(line: 2, column: 13, scope: !18)
!22 = !DILocation(line: 3, column: 9, scope: !18)
!23 = !DILocation(line: 4, column: 1, scope: !10)
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !25, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!25 = !DISubroutineType(types: !26)
!26 = !{!13}
!27 = !DILocalVariable(name: "a", scope: !24, file: !1, line: 7, type: !13)
!28 = !DILocation(line: 7, column: 6, scope: !24)
!29 = !DILocation(line: 8, column: 8, scope: !24)
!30 = !DILocation(line: 8, column: 2, scope: !24)
!31 = !DILocation(line: 9, column: 1, scope: !24)
