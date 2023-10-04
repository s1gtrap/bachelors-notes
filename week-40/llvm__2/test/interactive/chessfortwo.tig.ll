target triple = "x86_64-pc-linux-gnu"

declare i8* @allocRecord(i64)
declare i8* @initArray (i64, i64, i8*)
declare i64 @arrInxError (i64)
declare i64 @recFieldError()
declare i64 @divisionByZero()
declare i64 @stringEqual (i8*, i8*)
declare i64 @stringNotEq (i8*, i8*)
declare i64 @stringLess (i8*, i8*)
declare i64 @stringLessEq (i8*, i8*)
declare i64 @stringGreater (i8*, i8*)
declare i64 @stringGreaterEq (i8*, i8*)
declare i64 @exponent(i64, i64)
declare void @print      (i8*, i8*)
declare void @flush      (i8*)
declare i8*  @getChar    (i8*)
declare i64  @ord        (i8*, i8*)
declare i8*  @chr        (i8*, i64)
declare i64  @size       (i8*, i8*)
declare i8*  @substring  (i8*, i8*, i64, i64)
declare i8*  @concat     (i8*, i8*, i8*)
declare i64  @not        (i8*, i64)
declare void @tigerexit  (i8*, i64)

%Color$0 = type i64
%Piece$3 = type i64
%PieceFaces$11 = type i8*
%ChessBoard$13 = type i8*
%$locals_getColorAt$16 = type { %$locals_tigermain*, i64, i64 }
%$locals_getPieceAt$17 = type { %$locals_tigermain*, i64, i64 }
%$locals_setAt$18 = type { %$locals_tigermain*, i64, i64, i64, i64 }
%$locals_movePiece$19 = type { %$locals_tigermain*, i64, i64, i64, i64 }
%$locals_isEmpty$20 = type { %$locals_tigermain*, i64, i64 }
%$locals_printBoard$21 = type { %$locals_tigermain*, i64, i64, i64, i64 }
%$locals_initBoard$22 = type { %$locals_tigermain*, i64 }
%$locals_readCommand$43 = type { %$locals_tigermain*, i8*, i8* }
%$locals_printHelp$44 = type { %$locals_tigermain* }
%$locals_isValidMove$45 = type { %$locals_tigermain*, i64, i64, i64, i64 }
%$locals_evalCommand$46 = type { %$locals_tigermain*, i64, i64, i64, i64, i8* }
%$locals_tigermain = type { i8*, i8*, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@str_$_1174 = global { i64, [21 x i8] } {i64 21, [21 x i8] c"\0ATell me what to do: "}
@str_$_1157 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"p"}
@str_$_1145 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"k"}
@str_$_1133 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"b"}
@str_$_1121 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"r"}
@str_$_1109 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"q"}
@str_$_1097 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"w"}
@str_$_1085 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"P"}
@str_$_1073 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"K"}
@str_$_1061 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"B"}
@str_$_1049 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"R"}
@str_$_1037 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"Q"}
@str_$_1025 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"W"}
@str_$_1023 = global { i64, [28 x i8] } {i64 28, [28 x i8] c"Press any key to continue..\0A"}
@str_$_1017 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_998 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_986 = global { i64, [24 x i8] } {i64 24, [24 x i8] c"Command not recognized.."}
@str_$_979 = global { i64, [29 x i8] } {i64 29, [29 x i8] c"Invalid move! Out of bounds!\0A"}
@str_$_938 = global { i64, [52 x i8] } {i64 52, [52 x i8] c"Invalid move! Cannot move piece onto same location.\0A"}
@str_$_830 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"1"}
@str_$_812 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_793 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"1"}
@str_$_775 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_746 = global { i64, [24 x i8] } {i64 24, [24 x i8] c"\0A...Resetting board...\0A\0A"}
@str_$_737 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"reset"}
@str_$_726 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"help"}
@str_$_715 = global { i64, [38 x i8] } {i64 38, [38 x i8] c"Invalid move! This is not your piece.."}
@str_$_692 = global { i64, [38 x i8] } {i64 38, [38 x i8] c"Invalid move! there is no piece here.."}
@str_$_670 = global { i64, [87 x i8] } {i64 87, [87 x i8] c"\09[a-h][1-8][a-h][1-8] -- moves the piece at the first position, to the second position\0A"}
@str_$_665 = global { i64, [20 x i8] } {i64 20, [20 x i8] c"Available commands:\0A"}
@str_$_660 = global { i64, [25 x i8] } {i64 25, [25 x i8] c"\09help -- shows this text\0A"}
@str_$_655 = global { i64, [27 x i8] } {i64 27, [27 x i8] c"\09reset -- resets the board\0A"}
@str_$_631 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_623 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_410 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_405 = global { i64, [21 x i8] } {i64 21, [21 x i8] c"player ^black^ turn\0A\0A"}
@str_$_400 = global { i64, [23 x i8] } {i64 23, [23 x i8] c"player \\/WHITE\\/ turn\0A\0A"}
@str_$_381 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"  "}
@str_$_367 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_356 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_342 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_333 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_328 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_317 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"1"}
@str_$_270 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_265 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"  "}
@str_$_240 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_229 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"1"}
@str_$_209 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"  "}
@str_$_195 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_184 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}

define i64 @getColorAt$16 (%$locals_tigermain* %$sl, i64 %x$23, i64 %y$24) {
 %locals_$_0 = alloca %$locals_getColorAt$16
 %arg_$_12 = getelementptr %$locals_getColorAt$16, %$locals_getColorAt$16* %locals_$_0, i32 0, i32 2
 store i64 %y$24, i64* %arg_$_12
 %arg_$_13 = getelementptr %$locals_getColorAt$16, %$locals_getColorAt$16* %locals_$_0, i32 0, i32 1
 store i64 %x$23, i64* %arg_$_13
 %arg_$_14 = getelementptr %$locals_getColorAt$16, %$locals_getColorAt$16* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_14
 %lnk_$_15 = getelementptr %$locals_getColorAt$16, %$locals_getColorAt$16* %locals_$_0, i32 0, i32 0
 %load_$_16 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_15
 %var_ptr_$_17 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_16, i32 0, i32 22
 %var_ptr_$_18 = getelementptr %$locals_getColorAt$16, %$locals_getColorAt$16* %locals_$_0, i32 0, i32 1
 %res_$_19 = load i64, i64* %var_ptr_$_18
 %var_ptr_$_20 = getelementptr %$locals_getColorAt$16, %$locals_getColorAt$16* %locals_$_0, i32 0, i32 2
 %res_$_21 = load i64, i64* %var_ptr_$_20
 %temp_$_22 = mul i64 %res_$_21, 8
 %temp_$_23 = add i64 %res_$_19, %temp_$_22
 %temp_$_24 = mul i64 %temp_$_23, 2
 %load_$_25 = load i8*, i8** %var_ptr_$_17
 %len_ptr_$_28 = bitcast i8* %load_$_25 to i64*
 %len_ptr_$_29 = getelementptr i64, i64* %len_ptr_$_28, i32 -1
 %len_$_30 = load i64, i64* %len_ptr_$_29
 %cnd_$_31 = icmp sle i64 %len_$_30, %temp_$_24
 br i1 %cnd_$_31, label %thn_$_26, label %mrg_$_27
thn_$_26:
 call i64 @arrInxError (i64 %temp_$_24)
 br label %mrg_$_27
mrg_$_27:
 %array_ptr_$_32 = bitcast i8* %load_$_25 to i64*
 %entry_ptr_$_33 = getelementptr i64, i64* %array_ptr_$_32, i64 %temp_$_24
 %res_$_34 = load i64, i64* %entry_ptr_$_33
 ret i64 %res_$_34
}

define i64 @getPieceAt$17 (%$locals_tigermain* %$sl, i64 %x$25, i64 %y$26) {
 %locals_$_1 = alloca %$locals_getPieceAt$17
 %arg_$_35 = getelementptr %$locals_getPieceAt$17, %$locals_getPieceAt$17* %locals_$_1, i32 0, i32 2
 store i64 %y$26, i64* %arg_$_35
 %arg_$_36 = getelementptr %$locals_getPieceAt$17, %$locals_getPieceAt$17* %locals_$_1, i32 0, i32 1
 store i64 %x$25, i64* %arg_$_36
 %arg_$_37 = getelementptr %$locals_getPieceAt$17, %$locals_getPieceAt$17* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_37
 %lnk_$_38 = getelementptr %$locals_getPieceAt$17, %$locals_getPieceAt$17* %locals_$_1, i32 0, i32 0
 %load_$_39 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_38
 %var_ptr_$_40 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_39, i32 0, i32 22
 %var_ptr_$_41 = getelementptr %$locals_getPieceAt$17, %$locals_getPieceAt$17* %locals_$_1, i32 0, i32 1
 %res_$_42 = load i64, i64* %var_ptr_$_41
 %var_ptr_$_43 = getelementptr %$locals_getPieceAt$17, %$locals_getPieceAt$17* %locals_$_1, i32 0, i32 2
 %res_$_44 = load i64, i64* %var_ptr_$_43
 %temp_$_45 = mul i64 %res_$_44, 8
 %temp_$_46 = add i64 %res_$_42, %temp_$_45
 %temp_$_47 = mul i64 %temp_$_46, 2
 %temp_$_48 = add i64 %temp_$_47, 1
 %load_$_49 = load i8*, i8** %var_ptr_$_40
 %len_ptr_$_52 = bitcast i8* %load_$_49 to i64*
 %len_ptr_$_53 = getelementptr i64, i64* %len_ptr_$_52, i32 -1
 %len_$_54 = load i64, i64* %len_ptr_$_53
 %cnd_$_55 = icmp sle i64 %len_$_54, %temp_$_48
 br i1 %cnd_$_55, label %thn_$_50, label %mrg_$_51
thn_$_50:
 call i64 @arrInxError (i64 %temp_$_48)
 br label %mrg_$_51
mrg_$_51:
 %array_ptr_$_56 = bitcast i8* %load_$_49 to i64*
 %entry_ptr_$_57 = getelementptr i64, i64* %array_ptr_$_56, i64 %temp_$_48
 %res_$_58 = load i64, i64* %entry_ptr_$_57
 ret i64 %res_$_58
}

define void @setAt$18 (%$locals_tigermain* %$sl, i64 %x$27, i64 %y$28, i64 %col$29, i64 %p$30) {
 %locals_$_2 = alloca %$locals_setAt$18
 %arg_$_59 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 4
 store i64 %p$30, i64* %arg_$_59
 %arg_$_60 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 3
 store i64 %col$29, i64* %arg_$_60
 %arg_$_61 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 2
 store i64 %y$28, i64* %arg_$_61
 %arg_$_62 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 1
 store i64 %x$27, i64* %arg_$_62
 %arg_$_63 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_63
 %var_ptr_$_64 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 3
 %res_$_65 = load i64, i64* %var_ptr_$_64
 %lnk_$_66 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 0
 %load_$_67 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_66
 %var_ptr_$_68 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_67, i32 0, i32 22
 %var_ptr_$_69 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 1
 %res_$_70 = load i64, i64* %var_ptr_$_69
 %var_ptr_$_71 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 2
 %res_$_72 = load i64, i64* %var_ptr_$_71
 %temp_$_73 = mul i64 %res_$_72, 8
 %temp_$_74 = add i64 %res_$_70, %temp_$_73
 %temp_$_75 = mul i64 %temp_$_74, 2
 %load_$_76 = load i8*, i8** %var_ptr_$_68
 %len_ptr_$_79 = bitcast i8* %load_$_76 to i64*
 %len_ptr_$_80 = getelementptr i64, i64* %len_ptr_$_79, i32 -1
 %len_$_81 = load i64, i64* %len_ptr_$_80
 %cnd_$_82 = icmp sle i64 %len_$_81, %temp_$_75
 br i1 %cnd_$_82, label %thn_$_77, label %mrg_$_78
thn_$_77:
 call i64 @arrInxError (i64 %temp_$_75)
 br label %mrg_$_78
mrg_$_78:
 %array_ptr_$_83 = bitcast i8* %load_$_76 to i64*
 %entry_ptr_$_84 = getelementptr i64, i64* %array_ptr_$_83, i64 %temp_$_75
 store i64 %res_$_65, i64* %entry_ptr_$_84
 %var_ptr_$_85 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 4
 %res_$_86 = load i64, i64* %var_ptr_$_85
 %lnk_$_87 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 0
 %load_$_88 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_87
 %var_ptr_$_89 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_88, i32 0, i32 22
 %var_ptr_$_90 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 1
 %res_$_91 = load i64, i64* %var_ptr_$_90
 %var_ptr_$_92 = getelementptr %$locals_setAt$18, %$locals_setAt$18* %locals_$_2, i32 0, i32 2
 %res_$_93 = load i64, i64* %var_ptr_$_92
 %temp_$_94 = mul i64 %res_$_93, 8
 %temp_$_95 = add i64 %res_$_91, %temp_$_94
 %temp_$_96 = mul i64 %temp_$_95, 2
 %temp_$_97 = add i64 %temp_$_96, 1
 %load_$_98 = load i8*, i8** %var_ptr_$_89
 %len_ptr_$_101 = bitcast i8* %load_$_98 to i64*
 %len_ptr_$_102 = getelementptr i64, i64* %len_ptr_$_101, i32 -1
 %len_$_103 = load i64, i64* %len_ptr_$_102
 %cnd_$_104 = icmp sle i64 %len_$_103, %temp_$_97
 br i1 %cnd_$_104, label %thn_$_99, label %mrg_$_100
thn_$_99:
 call i64 @arrInxError (i64 %temp_$_97)
 br label %mrg_$_100
mrg_$_100:
 %array_ptr_$_105 = bitcast i8* %load_$_98 to i64*
 %entry_ptr_$_106 = getelementptr i64, i64* %array_ptr_$_105, i64 %temp_$_97
 store i64 %res_$_86, i64* %entry_ptr_$_106
 ret void
}

define void @movePiece$19 (%$locals_tigermain* %$sl, i64 %x0$31, i64 %y0$32, i64 %x1$33, i64 %y1$34) {
 %locals_$_3 = alloca %$locals_movePiece$19
 %arg_$_107 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 4
 store i64 %y1$34, i64* %arg_$_107
 %arg_$_108 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 3
 store i64 %x1$33, i64* %arg_$_108
 %arg_$_109 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 2
 store i64 %y0$32, i64* %arg_$_109
 %arg_$_110 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 1
 store i64 %x0$31, i64* %arg_$_110
 %arg_$_111 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_111
 %lnk_$_112 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 0
 %load_$_113 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_112
 %var_ptr_$_114 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 3
 %res_$_115 = load i64, i64* %var_ptr_$_114
 %var_ptr_$_116 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 4
 %res_$_117 = load i64, i64* %var_ptr_$_116
 %lnk_$_118 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 0
 %load_$_119 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_118
 %var_ptr_$_120 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 1
 %res_$_121 = load i64, i64* %var_ptr_$_120
 %var_ptr_$_122 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 2
 %res_$_123 = load i64, i64* %var_ptr_$_122
 %ret_$_124 = call i64 @getColorAt$16 (%$locals_tigermain* %load_$_119, i64 %res_$_121, i64 %res_$_123)
 %lnk_$_125 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 0
 %load_$_126 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_125
 %var_ptr_$_127 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 1
 %res_$_128 = load i64, i64* %var_ptr_$_127
 %var_ptr_$_129 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 2
 %res_$_130 = load i64, i64* %var_ptr_$_129
 %ret_$_131 = call i64 @getPieceAt$17 (%$locals_tigermain* %load_$_126, i64 %res_$_128, i64 %res_$_130)
 call void @setAt$18 (%$locals_tigermain* %load_$_113, i64 %res_$_115, i64 %res_$_117, i64 %ret_$_124, i64 %ret_$_131)
 %lnk_$_132 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 0
 %load_$_133 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_132
 %var_ptr_$_134 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 1
 %res_$_135 = load i64, i64* %var_ptr_$_134
 %var_ptr_$_136 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 2
 %res_$_137 = load i64, i64* %var_ptr_$_136
 %lnk_$_138 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 0
 %load_$_139 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_138
 %var_ptr_$_140 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_139, i32 0, i32 24
 %res_$_141 = load i64, i64* %var_ptr_$_140
 %lnk_$_142 = getelementptr %$locals_movePiece$19, %$locals_movePiece$19* %locals_$_3, i32 0, i32 0
 %load_$_143 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_142
 %var_ptr_$_144 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_143, i32 0, i32 32
 %res_$_145 = load i64, i64* %var_ptr_$_144
 call void @setAt$18 (%$locals_tigermain* %load_$_133, i64 %res_$_135, i64 %res_$_137, i64 %res_$_141, i64 %res_$_145)
 ret void
}

define i64 @isEmpty$20 (%$locals_tigermain* %$sl, i64 %x$35, i64 %y$36) {
 %locals_$_4 = alloca %$locals_isEmpty$20
 %arg_$_146 = getelementptr %$locals_isEmpty$20, %$locals_isEmpty$20* %locals_$_4, i32 0, i32 2
 store i64 %y$36, i64* %arg_$_146
 %arg_$_147 = getelementptr %$locals_isEmpty$20, %$locals_isEmpty$20* %locals_$_4, i32 0, i32 1
 store i64 %x$35, i64* %arg_$_147
 %arg_$_148 = getelementptr %$locals_isEmpty$20, %$locals_isEmpty$20* %locals_$_4, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_148
 %lnk_$_149 = getelementptr %$locals_isEmpty$20, %$locals_isEmpty$20* %locals_$_4, i32 0, i32 0
 %load_$_150 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_149
 %var_ptr_$_151 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_150, i32 0, i32 22
 %var_ptr_$_152 = getelementptr %$locals_isEmpty$20, %$locals_isEmpty$20* %locals_$_4, i32 0, i32 1
 %res_$_153 = load i64, i64* %var_ptr_$_152
 %var_ptr_$_154 = getelementptr %$locals_isEmpty$20, %$locals_isEmpty$20* %locals_$_4, i32 0, i32 2
 %res_$_155 = load i64, i64* %var_ptr_$_154
 %temp_$_156 = mul i64 %res_$_155, 8
 %temp_$_157 = add i64 %res_$_153, %temp_$_156
 %temp_$_158 = mul i64 %temp_$_157, 2
 %load_$_159 = load i8*, i8** %var_ptr_$_151
 %len_ptr_$_162 = bitcast i8* %load_$_159 to i64*
 %len_ptr_$_163 = getelementptr i64, i64* %len_ptr_$_162, i32 -1
 %len_$_164 = load i64, i64* %len_ptr_$_163
 %cnd_$_165 = icmp sle i64 %len_$_164, %temp_$_158
 br i1 %cnd_$_165, label %thn_$_160, label %mrg_$_161
thn_$_160:
 call i64 @arrInxError (i64 %temp_$_158)
 br label %mrg_$_161
mrg_$_161:
 %array_ptr_$_166 = bitcast i8* %load_$_159 to i64*
 %entry_ptr_$_167 = getelementptr i64, i64* %array_ptr_$_166, i64 %temp_$_158
 %res_$_168 = load i64, i64* %entry_ptr_$_167
 %temp_$_169 = icmp eq i64 %res_$_168, 6
 %temp_$_170 = zext i1 %temp_$_169 to i64
 ret i64 %temp_$_170
}

define void @printBoard$21 (%$locals_tigermain* %$sl) {
 %locals_$_5 = alloca %$locals_printBoard$21
 %arg_$_171 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_171
 %lnk_$_386 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_387 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_386
 %var_ptr_$_388 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_387, i32 0, i32 21
 %res_$_389 = load i64, i64* %var_ptr_$_388
 %lnk_$_390 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_391 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_390
 %var_ptr_$_392 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_391, i32 0, i32 31
 %res_$_393 = load i64, i64* %var_ptr_$_392
 %temp_$_394 = icmp eq i64 %res_$_389, %res_$_393
 %temp_$_395 = zext i1 %temp_$_394 to i64
 %cnd_$_396 = icmp ne i64 %temp_$_395, 0
 br i1 %cnd_$_396, label %thn_$_383, label %els_$_384
thn_$_383:
 %lnk_$_397 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_398 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_397
 %temp_$_401 = bitcast { i64, [23 x i8] }* @str_$_400 to i8*
 call void @print (i8* null, i8* %temp_$_401)
 br label %mrg_$_385
els_$_384:
 %lnk_$_402 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_403 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_402
 %temp_$_406 = bitcast { i64, [21 x i8] }* @str_$_405 to i8*
 call void @print (i8* null, i8* %temp_$_406)
 br label %mrg_$_385
mrg_$_385:
 %lnk_$_378 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_379 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_378
 %temp_$_382 = bitcast { i64, [2 x i8] }* @str_$_381 to i8*
 call void @print (i8* null, i8* %temp_$_382)
 %temp_$_344 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 4
 store i64 0, i64* %temp_$_344
 br label %test_$_345
test_$_345:
 %var_ptr_$_348 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 4
 %res_$_349 = load i64, i64* %var_ptr_$_348
 %temp_$_350 = icmp sle i64 %res_$_349, 7
 %temp_$_351 = zext i1 %temp_$_350 to i64
 %cnd_$_352 = icmp ne i64 %temp_$_351, 0
 br i1 %cnd_$_352, label %body_$_346, label %mrg_$_347
body_$_346:
 %lnk_$_353 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_354 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_353
 %temp_$_357 = bitcast { i64, [1 x i8] }* @str_$_356 to i8*
 call void @print (i8* null, i8* %temp_$_357)
 %lnk_$_358 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_359 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_358
 %lnk_$_361 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_362 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_361
 %lnk_$_364 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_365 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_364
 %temp_$_368 = bitcast { i64, [1 x i8] }* @str_$_367 to i8*
 %ret_$_369 = call i64 @ord (i8* null, i8* %temp_$_368)
 %var_ptr_$_370 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 4
 %res_$_371 = load i64, i64* %var_ptr_$_370
 %temp_$_372 = add i64 %ret_$_369, %res_$_371
 %ret_$_373 = call i8* @chr (i8* null, i64 %temp_$_372)
 call void @print (i8* null, i8* %ret_$_373)
 %var_ptr_$_374 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 4
 %res_$_375 = load i64, i64* %var_ptr_$_374
 %temp_$_376 = add i64 %res_$_375, 1
 %var_ptr_$_377 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 4
 store i64 %temp_$_376, i64* %var_ptr_$_377
 br label %test_$_345
mrg_$_347:
 %lnk_$_339 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_340 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_339
 %temp_$_343 = bitcast { i64, [1 x i8] }* @str_$_342 to i8*
 call void @print (i8* null, i8* %temp_$_343)
 %temp_$_211 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 3
 store i64 0, i64* %temp_$_211
 br label %test_$_212
test_$_212:
 %var_ptr_$_215 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 3
 %res_$_216 = load i64, i64* %var_ptr_$_215
 %temp_$_217 = icmp sle i64 %res_$_216, 7
 %temp_$_218 = zext i1 %temp_$_217 to i64
 %cnd_$_219 = icmp ne i64 %temp_$_218, 0
 br i1 %cnd_$_219, label %body_$_213, label %mrg_$_214
body_$_213:
 %lnk_$_325 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_326 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_325
 %temp_$_329 = bitcast { i64, [1 x i8] }* @str_$_328 to i8*
 call void @print (i8* null, i8* %temp_$_329)
 %lnk_$_308 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_309 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_308
 %lnk_$_311 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_312 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_311
 %lnk_$_314 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_315 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_314
 %temp_$_318 = bitcast { i64, [1 x i8] }* @str_$_317 to i8*
 %ret_$_319 = call i64 @ord (i8* null, i8* %temp_$_318)
 %var_ptr_$_320 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 3
 %res_$_321 = load i64, i64* %var_ptr_$_320
 %temp_$_322 = sub i64 7, %res_$_321
 %temp_$_323 = add i64 %ret_$_319, %temp_$_322
 %ret_$_324 = call i8* @chr (i8* null, i64 %temp_$_323)
 call void @print (i8* null, i8* %ret_$_324)
 %temp_$_242 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 2
 store i64 0, i64* %temp_$_242
 br label %test_$_243
test_$_243:
 %var_ptr_$_246 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 2
 %res_$_247 = load i64, i64* %var_ptr_$_246
 %temp_$_248 = icmp sle i64 %res_$_247, 7
 %temp_$_249 = zext i1 %temp_$_248 to i64
 %cnd_$_250 = icmp ne i64 %temp_$_249, 0
 br i1 %cnd_$_250, label %body_$_244, label %mrg_$_245
body_$_244:
 %lnk_$_254 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_255 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_254
 %var_ptr_$_256 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 2
 %res_$_257 = load i64, i64* %var_ptr_$_256
 %var_ptr_$_258 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 3
 %res_$_259 = load i64, i64* %var_ptr_$_258
 %ret_$_260 = call i64 @isEmpty$20 (%$locals_tigermain* %load_$_255, i64 %res_$_257, i64 %res_$_259)
 %cnd_$_261 = icmp ne i64 %ret_$_260, 0
 br i1 %cnd_$_261, label %thn_$_251, label %els_$_252
thn_$_251:
 %lnk_$_262 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_263 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_262
 %temp_$_266 = bitcast { i64, [2 x i8] }* @str_$_265 to i8*
 call void @print (i8* null, i8* %temp_$_266)
 br label %mrg_$_253
els_$_252:
 %lnk_$_267 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_268 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_267
 %temp_$_271 = bitcast { i64, [1 x i8] }* @str_$_270 to i8*
 call void @print (i8* null, i8* %temp_$_271)
 %lnk_$_272 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_273 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_272
 %lnk_$_275 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_276 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_275
 %var_ptr_$_277 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_276, i32 0, i32 23
 %lnk_$_278 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_279 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_278
 %var_ptr_$_280 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 2
 %res_$_281 = load i64, i64* %var_ptr_$_280
 %var_ptr_$_282 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 3
 %res_$_283 = load i64, i64* %var_ptr_$_282
 %ret_$_284 = call i64 @getPieceAt$17 (%$locals_tigermain* %load_$_279, i64 %res_$_281, i64 %res_$_283)
 %lnk_$_285 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_286 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_285
 %var_ptr_$_287 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 2
 %res_$_288 = load i64, i64* %var_ptr_$_287
 %var_ptr_$_289 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 3
 %res_$_290 = load i64, i64* %var_ptr_$_289
 %ret_$_291 = call i64 @getColorAt$16 (%$locals_tigermain* %load_$_286, i64 %res_$_288, i64 %res_$_290)
 %temp_$_292 = mul i64 %ret_$_291, 6
 %temp_$_293 = add i64 %ret_$_284, %temp_$_292
 %load_$_294 = load i8*, i8** %var_ptr_$_277
 %len_ptr_$_297 = bitcast i8* %load_$_294 to i64*
 %len_ptr_$_298 = getelementptr i64, i64* %len_ptr_$_297, i32 -1
 %len_$_299 = load i64, i64* %len_ptr_$_298
 %cnd_$_300 = icmp sle i64 %len_$_299, %temp_$_293
 br i1 %cnd_$_300, label %thn_$_295, label %mrg_$_296
thn_$_295:
 call i64 @arrInxError (i64 %temp_$_293)
 br label %mrg_$_296
mrg_$_296:
 %array_ptr_$_301 = bitcast i8* %load_$_294 to i8**
 %entry_ptr_$_302 = getelementptr i8*, i8** %array_ptr_$_301, i64 %temp_$_293
 %res_$_303 = load i8*, i8** %entry_ptr_$_302
 call void @print (i8* null, i8* %res_$_303)
 br label %mrg_$_253
mrg_$_253:
 %var_ptr_$_304 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 2
 %res_$_305 = load i64, i64* %var_ptr_$_304
 %temp_$_306 = add i64 %res_$_305, 1
 %var_ptr_$_307 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 2
 store i64 %temp_$_306, i64* %var_ptr_$_307
 br label %test_$_243
mrg_$_245:
 %lnk_$_237 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_238 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_237
 %temp_$_241 = bitcast { i64, [1 x i8] }* @str_$_240 to i8*
 call void @print (i8* null, i8* %temp_$_241)
 %lnk_$_220 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_221 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_220
 %lnk_$_223 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_224 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_223
 %lnk_$_226 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_227 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_226
 %temp_$_230 = bitcast { i64, [1 x i8] }* @str_$_229 to i8*
 %ret_$_231 = call i64 @ord (i8* null, i8* %temp_$_230)
 %var_ptr_$_232 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 3
 %res_$_233 = load i64, i64* %var_ptr_$_232
 %temp_$_234 = sub i64 7, %res_$_233
 %temp_$_235 = add i64 %ret_$_231, %temp_$_234
 %ret_$_236 = call i8* @chr (i8* null, i64 %temp_$_235)
 call void @print (i8* null, i8* %ret_$_236)
 %lnk_$_330 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_331 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_330
 %temp_$_334 = bitcast { i64, [1 x i8] }* @str_$_333 to i8*
 call void @print (i8* null, i8* %temp_$_334)
 %var_ptr_$_335 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 3
 %res_$_336 = load i64, i64* %var_ptr_$_335
 %temp_$_337 = add i64 %res_$_336, 1
 %var_ptr_$_338 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 3
 store i64 %temp_$_337, i64* %var_ptr_$_338
 br label %test_$_212
mrg_$_214:
 %lnk_$_206 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_207 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_206
 %temp_$_210 = bitcast { i64, [2 x i8] }* @str_$_209 to i8*
 call void @print (i8* null, i8* %temp_$_210)
 %temp_$_172 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 1
 store i64 0, i64* %temp_$_172
 br label %test_$_173
test_$_173:
 %var_ptr_$_176 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 1
 %res_$_177 = load i64, i64* %var_ptr_$_176
 %temp_$_178 = icmp sle i64 %res_$_177, 7
 %temp_$_179 = zext i1 %temp_$_178 to i64
 %cnd_$_180 = icmp ne i64 %temp_$_179, 0
 br i1 %cnd_$_180, label %body_$_174, label %mrg_$_175
body_$_174:
 %lnk_$_181 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_182 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_181
 %temp_$_185 = bitcast { i64, [1 x i8] }* @str_$_184 to i8*
 call void @print (i8* null, i8* %temp_$_185)
 %lnk_$_186 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_187 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_186
 %lnk_$_189 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_190 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_189
 %lnk_$_192 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_193 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_192
 %temp_$_196 = bitcast { i64, [1 x i8] }* @str_$_195 to i8*
 %ret_$_197 = call i64 @ord (i8* null, i8* %temp_$_196)
 %var_ptr_$_198 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 1
 %res_$_199 = load i64, i64* %var_ptr_$_198
 %temp_$_200 = add i64 %ret_$_197, %res_$_199
 %ret_$_201 = call i8* @chr (i8* null, i64 %temp_$_200)
 call void @print (i8* null, i8* %ret_$_201)
 %var_ptr_$_202 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 1
 %res_$_203 = load i64, i64* %var_ptr_$_202
 %temp_$_204 = add i64 %res_$_203, 1
 %var_ptr_$_205 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 1
 store i64 %temp_$_204, i64* %var_ptr_$_205
 br label %test_$_173
mrg_$_175:
 %lnk_$_407 = getelementptr %$locals_printBoard$21, %$locals_printBoard$21* %locals_$_5, i32 0, i32 0
 %load_$_408 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_407
 %temp_$_411 = bitcast { i64, [1 x i8] }* @str_$_410 to i8*
 call void @print (i8* null, i8* %temp_$_411)
 ret void
}

define void @initBoard$22 (%$locals_tigermain* %$sl) {
 %locals_$_6 = alloca %$locals_initBoard$22
 %arg_$_412 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_412
 %temp_$_573 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 1
 store i64 0, i64* %temp_$_573
 br label %test_$_574
test_$_574:
 %var_ptr_$_577 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 1
 %res_$_578 = load i64, i64* %var_ptr_$_577
 %temp_$_579 = icmp sle i64 %res_$_578, 7
 %temp_$_580 = zext i1 %temp_$_579 to i64
 %cnd_$_581 = icmp ne i64 %temp_$_580, 0
 br i1 %cnd_$_581, label %body_$_575, label %mrg_$_576
body_$_575:
 %lnk_$_582 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_583 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_582
 %var_ptr_$_584 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 1
 %res_$_585 = load i64, i64* %var_ptr_$_584
 %lnk_$_586 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_587 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_586
 %var_ptr_$_588 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_587, i32 0, i32 32
 %res_$_589 = load i64, i64* %var_ptr_$_588
 %lnk_$_590 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_591 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_590
 %var_ptr_$_592 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_591, i32 0, i32 30
 %res_$_593 = load i64, i64* %var_ptr_$_592
 call void @setAt$18 (%$locals_tigermain* %load_$_583, i64 %res_$_585, i64 1, i64 %res_$_589, i64 %res_$_593)
 %lnk_$_594 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_595 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_594
 %var_ptr_$_596 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 1
 %res_$_597 = load i64, i64* %var_ptr_$_596
 %lnk_$_598 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_599 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_598
 %var_ptr_$_600 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_599, i32 0, i32 31
 %res_$_601 = load i64, i64* %var_ptr_$_600
 %lnk_$_602 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_603 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_602
 %var_ptr_$_604 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_603, i32 0, i32 30
 %res_$_605 = load i64, i64* %var_ptr_$_604
 call void @setAt$18 (%$locals_tigermain* %load_$_595, i64 %res_$_597, i64 6, i64 %res_$_601, i64 %res_$_605)
 %var_ptr_$_606 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 1
 %res_$_607 = load i64, i64* %var_ptr_$_606
 %temp_$_608 = add i64 %res_$_607, 1
 %var_ptr_$_609 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 1
 store i64 %temp_$_608, i64* %var_ptr_$_609
 br label %test_$_574
mrg_$_576:
 %lnk_$_563 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_564 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_563
 %lnk_$_565 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_566 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_565
 %var_ptr_$_567 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_566, i32 0, i32 32
 %res_$_568 = load i64, i64* %var_ptr_$_567
 %lnk_$_569 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_570 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_569
 %var_ptr_$_571 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_570, i32 0, i32 27
 %res_$_572 = load i64, i64* %var_ptr_$_571
 call void @setAt$18 (%$locals_tigermain* %load_$_564, i64 0, i64 0, i64 %res_$_568, i64 %res_$_572)
 %lnk_$_553 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_554 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_553
 %lnk_$_555 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_556 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_555
 %var_ptr_$_557 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_556, i32 0, i32 32
 %res_$_558 = load i64, i64* %var_ptr_$_557
 %lnk_$_559 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_560 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_559
 %var_ptr_$_561 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_560, i32 0, i32 27
 %res_$_562 = load i64, i64* %var_ptr_$_561
 call void @setAt$18 (%$locals_tigermain* %load_$_554, i64 7, i64 0, i64 %res_$_558, i64 %res_$_562)
 %lnk_$_543 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_544 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_543
 %lnk_$_545 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_546 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_545
 %var_ptr_$_547 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_546, i32 0, i32 32
 %res_$_548 = load i64, i64* %var_ptr_$_547
 %lnk_$_549 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_550 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_549
 %var_ptr_$_551 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_550, i32 0, i32 29
 %res_$_552 = load i64, i64* %var_ptr_$_551
 call void @setAt$18 (%$locals_tigermain* %load_$_544, i64 1, i64 0, i64 %res_$_548, i64 %res_$_552)
 %lnk_$_533 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_534 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_533
 %lnk_$_535 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_536 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_535
 %var_ptr_$_537 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_536, i32 0, i32 32
 %res_$_538 = load i64, i64* %var_ptr_$_537
 %lnk_$_539 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_540 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_539
 %var_ptr_$_541 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_540, i32 0, i32 29
 %res_$_542 = load i64, i64* %var_ptr_$_541
 call void @setAt$18 (%$locals_tigermain* %load_$_534, i64 6, i64 0, i64 %res_$_538, i64 %res_$_542)
 %lnk_$_523 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_524 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_523
 %lnk_$_525 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_526 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_525
 %var_ptr_$_527 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_526, i32 0, i32 32
 %res_$_528 = load i64, i64* %var_ptr_$_527
 %lnk_$_529 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_530 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_529
 %var_ptr_$_531 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_530, i32 0, i32 28
 %res_$_532 = load i64, i64* %var_ptr_$_531
 call void @setAt$18 (%$locals_tigermain* %load_$_524, i64 2, i64 0, i64 %res_$_528, i64 %res_$_532)
 %lnk_$_513 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_514 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_513
 %lnk_$_515 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_516 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_515
 %var_ptr_$_517 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_516, i32 0, i32 32
 %res_$_518 = load i64, i64* %var_ptr_$_517
 %lnk_$_519 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_520 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_519
 %var_ptr_$_521 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_520, i32 0, i32 28
 %res_$_522 = load i64, i64* %var_ptr_$_521
 call void @setAt$18 (%$locals_tigermain* %load_$_514, i64 5, i64 0, i64 %res_$_518, i64 %res_$_522)
 %lnk_$_503 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_504 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_503
 %lnk_$_505 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_506 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_505
 %var_ptr_$_507 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_506, i32 0, i32 32
 %res_$_508 = load i64, i64* %var_ptr_$_507
 %lnk_$_509 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_510 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_509
 %var_ptr_$_511 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_510, i32 0, i32 26
 %res_$_512 = load i64, i64* %var_ptr_$_511
 call void @setAt$18 (%$locals_tigermain* %load_$_504, i64 3, i64 0, i64 %res_$_508, i64 %res_$_512)
 %lnk_$_493 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_494 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_493
 %lnk_$_495 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_496 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_495
 %var_ptr_$_497 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_496, i32 0, i32 32
 %res_$_498 = load i64, i64* %var_ptr_$_497
 %lnk_$_499 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_500 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_499
 %var_ptr_$_501 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_500, i32 0, i32 25
 %res_$_502 = load i64, i64* %var_ptr_$_501
 call void @setAt$18 (%$locals_tigermain* %load_$_494, i64 4, i64 0, i64 %res_$_498, i64 %res_$_502)
 %lnk_$_483 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_484 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_483
 %lnk_$_485 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_486 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_485
 %var_ptr_$_487 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_486, i32 0, i32 31
 %res_$_488 = load i64, i64* %var_ptr_$_487
 %lnk_$_489 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_490 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_489
 %var_ptr_$_491 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_490, i32 0, i32 27
 %res_$_492 = load i64, i64* %var_ptr_$_491
 call void @setAt$18 (%$locals_tigermain* %load_$_484, i64 0, i64 7, i64 %res_$_488, i64 %res_$_492)
 %lnk_$_473 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_474 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_473
 %lnk_$_475 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_476 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_475
 %var_ptr_$_477 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_476, i32 0, i32 31
 %res_$_478 = load i64, i64* %var_ptr_$_477
 %lnk_$_479 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_480 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_479
 %var_ptr_$_481 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_480, i32 0, i32 27
 %res_$_482 = load i64, i64* %var_ptr_$_481
 call void @setAt$18 (%$locals_tigermain* %load_$_474, i64 7, i64 7, i64 %res_$_478, i64 %res_$_482)
 %lnk_$_463 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_464 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_463
 %lnk_$_465 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_466 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_465
 %var_ptr_$_467 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_466, i32 0, i32 31
 %res_$_468 = load i64, i64* %var_ptr_$_467
 %lnk_$_469 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_470 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_469
 %var_ptr_$_471 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_470, i32 0, i32 29
 %res_$_472 = load i64, i64* %var_ptr_$_471
 call void @setAt$18 (%$locals_tigermain* %load_$_464, i64 1, i64 7, i64 %res_$_468, i64 %res_$_472)
 %lnk_$_453 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_454 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_453
 %lnk_$_455 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_456 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_455
 %var_ptr_$_457 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_456, i32 0, i32 31
 %res_$_458 = load i64, i64* %var_ptr_$_457
 %lnk_$_459 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_460 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_459
 %var_ptr_$_461 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_460, i32 0, i32 29
 %res_$_462 = load i64, i64* %var_ptr_$_461
 call void @setAt$18 (%$locals_tigermain* %load_$_454, i64 6, i64 7, i64 %res_$_458, i64 %res_$_462)
 %lnk_$_443 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_444 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_443
 %lnk_$_445 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_446 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_445
 %var_ptr_$_447 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_446, i32 0, i32 31
 %res_$_448 = load i64, i64* %var_ptr_$_447
 %lnk_$_449 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_450 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_449
 %var_ptr_$_451 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_450, i32 0, i32 28
 %res_$_452 = load i64, i64* %var_ptr_$_451
 call void @setAt$18 (%$locals_tigermain* %load_$_444, i64 2, i64 7, i64 %res_$_448, i64 %res_$_452)
 %lnk_$_433 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_434 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_433
 %lnk_$_435 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_436 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_435
 %var_ptr_$_437 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_436, i32 0, i32 31
 %res_$_438 = load i64, i64* %var_ptr_$_437
 %lnk_$_439 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_440 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_439
 %var_ptr_$_441 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_440, i32 0, i32 28
 %res_$_442 = load i64, i64* %var_ptr_$_441
 call void @setAt$18 (%$locals_tigermain* %load_$_434, i64 5, i64 7, i64 %res_$_438, i64 %res_$_442)
 %lnk_$_423 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_424 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_423
 %lnk_$_425 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_426 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_425
 %var_ptr_$_427 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_426, i32 0, i32 31
 %res_$_428 = load i64, i64* %var_ptr_$_427
 %lnk_$_429 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_430 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_429
 %var_ptr_$_431 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_430, i32 0, i32 25
 %res_$_432 = load i64, i64* %var_ptr_$_431
 call void @setAt$18 (%$locals_tigermain* %load_$_424, i64 3, i64 7, i64 %res_$_428, i64 %res_$_432)
 %lnk_$_413 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_414 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_413
 %lnk_$_415 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_416 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_415
 %var_ptr_$_417 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_416, i32 0, i32 31
 %res_$_418 = load i64, i64* %var_ptr_$_417
 %lnk_$_419 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_420 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_419
 %var_ptr_$_421 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_420, i32 0, i32 26
 %res_$_422 = load i64, i64* %var_ptr_$_421
 call void @setAt$18 (%$locals_tigermain* %load_$_414, i64 4, i64 7, i64 %res_$_418, i64 %res_$_422)
 %lnk_$_610 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_611 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_610
 %var_ptr_$_612 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_611, i32 0, i32 31
 %res_$_613 = load i64, i64* %var_ptr_$_612
 %lnk_$_614 = getelementptr %$locals_initBoard$22, %$locals_initBoard$22* %locals_$_6, i32 0, i32 0
 %load_$_615 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_614
 %var_ptr_$_616 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_615, i32 0, i32 21
 store i64 %res_$_613, i64* %var_ptr_$_616
 ret void
}

define i8* @readCommand$43 (%$locals_tigermain* %$sl) {
 %locals_$_7 = alloca %$locals_readCommand$43
 %arg_$_617 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_617
 %lnk_$_618 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 0
 %load_$_619 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_618
 %ret_$_621 = call i8* @getChar (i8* null)
 %temp_$_622 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 2
 store i8* %ret_$_621, i8** %temp_$_622
 %temp_$_624 = bitcast { i64, [0 x i8] }* @str_$_623 to i8*
 %temp_$_625 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 1
 store i8* %temp_$_624, i8** %temp_$_625
 br label %test_$_626
test_$_626:
 %var_ptr_$_629 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 2
 %res_$_630 = load i8*, i8** %var_ptr_$_629
 %temp_$_632 = bitcast { i64, [1 x i8] }* @str_$_631 to i8*
 %temp_$_633 = call i64 @stringNotEq (i8* %res_$_630, i8* %temp_$_632)
 %cnd_$_634 = icmp ne i64 %temp_$_633, 0
 br i1 %cnd_$_634, label %body_$_627, label %mrg_$_628
body_$_627:
 %lnk_$_635 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 0
 %load_$_636 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_635
 %var_ptr_$_638 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 1
 %res_$_639 = load i8*, i8** %var_ptr_$_638
 %var_ptr_$_640 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 2
 %res_$_641 = load i8*, i8** %var_ptr_$_640
 %ret_$_642 = call i8* @concat (i8* null, i8* %res_$_639, i8* %res_$_641)
 %var_ptr_$_643 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 1
 store i8* %ret_$_642, i8** %var_ptr_$_643
 %lnk_$_644 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 0
 %load_$_645 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_644
 %ret_$_647 = call i8* @getChar (i8* null)
 %var_ptr_$_648 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 2
 store i8* %ret_$_647, i8** %var_ptr_$_648
 br label %test_$_626
mrg_$_628:
 %var_ptr_$_649 = getelementptr %$locals_readCommand$43, %$locals_readCommand$43* %locals_$_7, i32 0, i32 1
 %res_$_650 = load i8*, i8** %var_ptr_$_649
 ret i8* %res_$_650
}

define void @printHelp$44 (%$locals_tigermain* %$sl) {
 %locals_$_8 = alloca %$locals_printHelp$44
 %arg_$_651 = getelementptr %$locals_printHelp$44, %$locals_printHelp$44* %locals_$_8, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_651
 %lnk_$_662 = getelementptr %$locals_printHelp$44, %$locals_printHelp$44* %locals_$_8, i32 0, i32 0
 %load_$_663 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_662
 %temp_$_666 = bitcast { i64, [20 x i8] }* @str_$_665 to i8*
 call void @print (i8* null, i8* %temp_$_666)
 %lnk_$_657 = getelementptr %$locals_printHelp$44, %$locals_printHelp$44* %locals_$_8, i32 0, i32 0
 %load_$_658 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_657
 %temp_$_661 = bitcast { i64, [25 x i8] }* @str_$_660 to i8*
 call void @print (i8* null, i8* %temp_$_661)
 %lnk_$_652 = getelementptr %$locals_printHelp$44, %$locals_printHelp$44* %locals_$_8, i32 0, i32 0
 %load_$_653 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_652
 %temp_$_656 = bitcast { i64, [27 x i8] }* @str_$_655 to i8*
 call void @print (i8* null, i8* %temp_$_656)
 %lnk_$_667 = getelementptr %$locals_printHelp$44, %$locals_printHelp$44* %locals_$_8, i32 0, i32 0
 %load_$_668 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_667
 %temp_$_671 = bitcast { i64, [87 x i8] }* @str_$_670 to i8*
 call void @print (i8* null, i8* %temp_$_671)
 ret void
}

define i64 @isValidMove$45 (%$locals_tigermain* %$sl, i64 %x0$49, i64 %y0$50, i64 %x1$51, i64 %y1$52) {
 %temp_$_694 = alloca i64
 %temp_$_677 = alloca i64
 %locals_$_9 = alloca %$locals_isValidMove$45
 %arg_$_672 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 4
 store i64 %y1$52, i64* %arg_$_672
 %arg_$_673 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 3
 store i64 %x1$51, i64* %arg_$_673
 %arg_$_674 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 2
 store i64 %y0$50, i64* %arg_$_674
 %arg_$_675 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 1
 store i64 %x0$49, i64* %arg_$_675
 %arg_$_676 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_676
 %lnk_$_681 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 0
 %load_$_682 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_681
 %var_ptr_$_683 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 1
 %res_$_684 = load i64, i64* %var_ptr_$_683
 %var_ptr_$_685 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 2
 %res_$_686 = load i64, i64* %var_ptr_$_685
 %ret_$_687 = call i64 @isEmpty$20 (%$locals_tigermain* %load_$_682, i64 %res_$_684, i64 %res_$_686)
 %cnd_$_688 = icmp ne i64 %ret_$_687, 0
 br i1 %cnd_$_688, label %thn_$_678, label %els_$_679
thn_$_678:
 %lnk_$_689 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 0
 %load_$_690 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_689
 %temp_$_693 = bitcast { i64, [38 x i8] }* @str_$_692 to i8*
 call void @print (i8* null, i8* %temp_$_693)
 store i64 0, i64* %temp_$_677
 br label %mrg_$_680
els_$_679:
 %lnk_$_698 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 0
 %load_$_699 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_698
 %var_ptr_$_700 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 1
 %res_$_701 = load i64, i64* %var_ptr_$_700
 %var_ptr_$_702 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 2
 %res_$_703 = load i64, i64* %var_ptr_$_702
 %ret_$_704 = call i64 @getColorAt$16 (%$locals_tigermain* %load_$_699, i64 %res_$_701, i64 %res_$_703)
 %lnk_$_705 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 0
 %load_$_706 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_705
 %var_ptr_$_707 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_706, i32 0, i32 21
 %res_$_708 = load i64, i64* %var_ptr_$_707
 %temp_$_709 = icmp ne i64 %ret_$_704, %res_$_708
 %temp_$_710 = zext i1 %temp_$_709 to i64
 %cnd_$_711 = icmp ne i64 %temp_$_710, 0
 br i1 %cnd_$_711, label %thn_$_695, label %els_$_696
thn_$_695:
 %lnk_$_712 = getelementptr %$locals_isValidMove$45, %$locals_isValidMove$45* %locals_$_9, i32 0, i32 0
 %load_$_713 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_712
 %temp_$_716 = bitcast { i64, [38 x i8] }* @str_$_715 to i8*
 call void @print (i8* null, i8* %temp_$_716)
 store i64 0, i64* %temp_$_694
 br label %mrg_$_697
els_$_696:
 store i64 1, i64* %temp_$_694
 br label %mrg_$_697
mrg_$_697:
 %res_$_717 = load i64, i64* %temp_$_694
 store i64 %res_$_717, i64* %temp_$_677
 br label %mrg_$_680
mrg_$_680:
 %res_$_718 = load i64, i64* %temp_$_677
 ret i64 %res_$_718
}

define void @evalCommand$46 (%$locals_tigermain* %$sl, i8* %command$53) {
 %temp_$_916 = alloca i64
 %temp_$_862 = alloca i64
 %temp_$_858 = alloca i64
 %temp_$_854 = alloca i64
 %temp_$_850 = alloca i64
 %temp_$_846 = alloca i64
 %temp_$_842 = alloca i64
 %temp_$_838 = alloca i64
 %locals_$_10 = alloca %$locals_evalCommand$46
 %arg_$_719 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 5
 store i8* %command$53, i8** %arg_$_719
 %arg_$_720 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_720
 %var_ptr_$_724 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 5
 %res_$_725 = load i8*, i8** %var_ptr_$_724
 %temp_$_727 = bitcast { i64, [4 x i8] }* @str_$_726 to i8*
 %temp_$_728 = call i64 @stringEqual (i8* %res_$_725, i8* %temp_$_727)
 %cnd_$_729 = icmp ne i64 %temp_$_728, 0
 br i1 %cnd_$_729, label %thn_$_721, label %els_$_722
thn_$_721:
 %lnk_$_730 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_731 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_730
 call void @printHelp$44 (%$locals_tigermain* %load_$_731)
 br label %mrg_$_723
els_$_722:
 %var_ptr_$_735 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 5
 %res_$_736 = load i8*, i8** %var_ptr_$_735
 %temp_$_738 = bitcast { i64, [5 x i8] }* @str_$_737 to i8*
 %temp_$_739 = call i64 @stringEqual (i8* %res_$_736, i8* %temp_$_738)
 %cnd_$_740 = icmp ne i64 %temp_$_739, 0
 br i1 %cnd_$_740, label %thn_$_732, label %els_$_733
thn_$_732:
 %lnk_$_743 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_744 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_743
 %temp_$_747 = bitcast { i64, [24 x i8] }* @str_$_746 to i8*
 call void @print (i8* null, i8* %temp_$_747)
 %lnk_$_741 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_742 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_741
 call void @initBoard$22 (%$locals_tigermain* %load_$_742)
 %lnk_$_748 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_749 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_748
 call void @printBoard$21 (%$locals_tigermain* %load_$_749)
 br label %mrg_$_734
els_$_733:
 %lnk_$_753 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_754 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_753
 %var_ptr_$_756 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 5
 %res_$_757 = load i8*, i8** %var_ptr_$_756
 %ret_$_758 = call i64 @size (i8* null, i8* %res_$_757)
 %temp_$_759 = icmp eq i64 %ret_$_758, 4
 %temp_$_760 = zext i1 %temp_$_759 to i64
 %cnd_$_761 = icmp ne i64 %temp_$_760, 0
 br i1 %cnd_$_761, label %thn_$_750, label %els_$_751
thn_$_750:
 %lnk_$_762 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_763 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_762
 %lnk_$_765 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_766 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_765
 %var_ptr_$_768 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 5
 %res_$_769 = load i8*, i8** %var_ptr_$_768
 %ret_$_770 = call i8* @substring (i8* null, i8* %res_$_769, i64 0, i64 1)
 %ret_$_771 = call i64 @ord (i8* null, i8* %ret_$_770)
 %lnk_$_772 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_773 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_772
 %temp_$_776 = bitcast { i64, [1 x i8] }* @str_$_775 to i8*
 %ret_$_777 = call i64 @ord (i8* null, i8* %temp_$_776)
 %temp_$_778 = sub i64 %ret_$_771, %ret_$_777
 %temp_$_779 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 4
 store i64 %temp_$_778, i64* %temp_$_779
 %lnk_$_780 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_781 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_780
 %lnk_$_783 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_784 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_783
 %var_ptr_$_786 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 5
 %res_$_787 = load i8*, i8** %var_ptr_$_786
 %ret_$_788 = call i8* @substring (i8* null, i8* %res_$_787, i64 1, i64 1)
 %ret_$_789 = call i64 @ord (i8* null, i8* %ret_$_788)
 %lnk_$_790 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_791 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_790
 %temp_$_794 = bitcast { i64, [1 x i8] }* @str_$_793 to i8*
 %ret_$_795 = call i64 @ord (i8* null, i8* %temp_$_794)
 %temp_$_796 = sub i64 %ret_$_789, %ret_$_795
 %temp_$_797 = sub i64 7, %temp_$_796
 %temp_$_798 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 3
 store i64 %temp_$_797, i64* %temp_$_798
 %lnk_$_799 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_800 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_799
 %lnk_$_802 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_803 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_802
 %var_ptr_$_805 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 5
 %res_$_806 = load i8*, i8** %var_ptr_$_805
 %ret_$_807 = call i8* @substring (i8* null, i8* %res_$_806, i64 2, i64 1)
 %ret_$_808 = call i64 @ord (i8* null, i8* %ret_$_807)
 %lnk_$_809 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_810 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_809
 %temp_$_813 = bitcast { i64, [1 x i8] }* @str_$_812 to i8*
 %ret_$_814 = call i64 @ord (i8* null, i8* %temp_$_813)
 %temp_$_815 = sub i64 %ret_$_808, %ret_$_814
 %temp_$_816 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 2
 store i64 %temp_$_815, i64* %temp_$_816
 %lnk_$_817 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_818 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_817
 %lnk_$_820 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_821 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_820
 %var_ptr_$_823 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 5
 %res_$_824 = load i8*, i8** %var_ptr_$_823
 %ret_$_825 = call i8* @substring (i8* null, i8* %res_$_824, i64 3, i64 1)
 %ret_$_826 = call i64 @ord (i8* null, i8* %ret_$_825)
 %lnk_$_827 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_828 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_827
 %temp_$_831 = bitcast { i64, [1 x i8] }* @str_$_830 to i8*
 %ret_$_832 = call i64 @ord (i8* null, i8* %temp_$_831)
 %temp_$_833 = sub i64 %ret_$_826, %ret_$_832
 %temp_$_834 = sub i64 7, %temp_$_833
 %temp_$_835 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 1
 store i64 %temp_$_834, i64* %temp_$_835
 %var_ptr_$_866 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 4
 %res_$_867 = load i64, i64* %var_ptr_$_866
 %temp_$_868 = icmp sge i64 %res_$_867, 0
 %temp_$_869 = zext i1 %temp_$_868 to i64
 %cnd_$_870 = icmp ne i64 %temp_$_869, 0
 br i1 %cnd_$_870, label %thn_$_863, label %els_$_864
thn_$_863:
 %var_ptr_$_871 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 4
 %res_$_872 = load i64, i64* %var_ptr_$_871
 %temp_$_873 = icmp sle i64 %res_$_872, 7
 %temp_$_874 = zext i1 %temp_$_873 to i64
 store i64 %temp_$_874, i64* %temp_$_862
 br label %mrg_$_865
els_$_864:
 store i64 0, i64* %temp_$_862
 br label %mrg_$_865
mrg_$_865:
 %res_$_875 = load i64, i64* %temp_$_862
 %cnd_$_876 = icmp ne i64 %res_$_875, 0
 br i1 %cnd_$_876, label %thn_$_859, label %els_$_860
thn_$_859:
 %var_ptr_$_877 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 2
 %res_$_878 = load i64, i64* %var_ptr_$_877
 %temp_$_879 = icmp sge i64 %res_$_878, 0
 %temp_$_880 = zext i1 %temp_$_879 to i64
 store i64 %temp_$_880, i64* %temp_$_858
 br label %mrg_$_861
els_$_860:
 store i64 0, i64* %temp_$_858
 br label %mrg_$_861
mrg_$_861:
 %res_$_881 = load i64, i64* %temp_$_858
 %cnd_$_882 = icmp ne i64 %res_$_881, 0
 br i1 %cnd_$_882, label %thn_$_855, label %els_$_856
thn_$_855:
 %var_ptr_$_883 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 2
 %res_$_884 = load i64, i64* %var_ptr_$_883
 %temp_$_885 = icmp sle i64 %res_$_884, 7
 %temp_$_886 = zext i1 %temp_$_885 to i64
 store i64 %temp_$_886, i64* %temp_$_854
 br label %mrg_$_857
els_$_856:
 store i64 0, i64* %temp_$_854
 br label %mrg_$_857
mrg_$_857:
 %res_$_887 = load i64, i64* %temp_$_854
 %cnd_$_888 = icmp ne i64 %res_$_887, 0
 br i1 %cnd_$_888, label %thn_$_851, label %els_$_852
thn_$_851:
 %var_ptr_$_889 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 3
 %res_$_890 = load i64, i64* %var_ptr_$_889
 %temp_$_891 = icmp sge i64 %res_$_890, 0
 %temp_$_892 = zext i1 %temp_$_891 to i64
 store i64 %temp_$_892, i64* %temp_$_850
 br label %mrg_$_853
els_$_852:
 store i64 0, i64* %temp_$_850
 br label %mrg_$_853
mrg_$_853:
 %res_$_893 = load i64, i64* %temp_$_850
 %cnd_$_894 = icmp ne i64 %res_$_893, 0
 br i1 %cnd_$_894, label %thn_$_847, label %els_$_848
thn_$_847:
 %var_ptr_$_895 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 3
 %res_$_896 = load i64, i64* %var_ptr_$_895
 %temp_$_897 = icmp sle i64 %res_$_896, 7
 %temp_$_898 = zext i1 %temp_$_897 to i64
 store i64 %temp_$_898, i64* %temp_$_846
 br label %mrg_$_849
els_$_848:
 store i64 0, i64* %temp_$_846
 br label %mrg_$_849
mrg_$_849:
 %res_$_899 = load i64, i64* %temp_$_846
 %cnd_$_900 = icmp ne i64 %res_$_899, 0
 br i1 %cnd_$_900, label %thn_$_843, label %els_$_844
thn_$_843:
 %var_ptr_$_901 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 1
 %res_$_902 = load i64, i64* %var_ptr_$_901
 %temp_$_903 = icmp sge i64 %res_$_902, 0
 %temp_$_904 = zext i1 %temp_$_903 to i64
 store i64 %temp_$_904, i64* %temp_$_842
 br label %mrg_$_845
els_$_844:
 store i64 0, i64* %temp_$_842
 br label %mrg_$_845
mrg_$_845:
 %res_$_905 = load i64, i64* %temp_$_842
 %cnd_$_906 = icmp ne i64 %res_$_905, 0
 br i1 %cnd_$_906, label %thn_$_839, label %els_$_840
thn_$_839:
 %var_ptr_$_907 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 1
 %res_$_908 = load i64, i64* %var_ptr_$_907
 %temp_$_909 = icmp sle i64 %res_$_908, 7
 %temp_$_910 = zext i1 %temp_$_909 to i64
 store i64 %temp_$_910, i64* %temp_$_838
 br label %mrg_$_841
els_$_840:
 store i64 0, i64* %temp_$_838
 br label %mrg_$_841
mrg_$_841:
 %res_$_911 = load i64, i64* %temp_$_838
 %cnd_$_912 = icmp ne i64 %res_$_911, 0
 br i1 %cnd_$_912, label %thn_$_836, label %mrg_$_837
thn_$_836:
 %var_ptr_$_920 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 4
 %res_$_921 = load i64, i64* %var_ptr_$_920
 %var_ptr_$_922 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 2
 %res_$_923 = load i64, i64* %var_ptr_$_922
 %temp_$_924 = icmp eq i64 %res_$_921, %res_$_923
 %temp_$_925 = zext i1 %temp_$_924 to i64
 %cnd_$_926 = icmp ne i64 %temp_$_925, 0
 br i1 %cnd_$_926, label %thn_$_917, label %els_$_918
thn_$_917:
 %var_ptr_$_927 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 3
 %res_$_928 = load i64, i64* %var_ptr_$_927
 %var_ptr_$_929 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 1
 %res_$_930 = load i64, i64* %var_ptr_$_929
 %temp_$_931 = icmp eq i64 %res_$_928, %res_$_930
 %temp_$_932 = zext i1 %temp_$_931 to i64
 store i64 %temp_$_932, i64* %temp_$_916
 br label %mrg_$_919
els_$_918:
 store i64 0, i64* %temp_$_916
 br label %mrg_$_919
mrg_$_919:
 %res_$_933 = load i64, i64* %temp_$_916
 %cnd_$_934 = icmp ne i64 %res_$_933, 0
 br i1 %cnd_$_934, label %thn_$_913, label %els_$_914
thn_$_913:
 %lnk_$_935 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_936 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_935
 %temp_$_939 = bitcast { i64, [52 x i8] }* @str_$_938 to i8*
 call void @print (i8* null, i8* %temp_$_939)
 br label %mrg_$_915
els_$_914:
 %lnk_$_943 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_944 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_943
 %var_ptr_$_945 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 4
 %res_$_946 = load i64, i64* %var_ptr_$_945
 %var_ptr_$_947 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 3
 %res_$_948 = load i64, i64* %var_ptr_$_947
 %var_ptr_$_949 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 2
 %res_$_950 = load i64, i64* %var_ptr_$_949
 %var_ptr_$_951 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 1
 %res_$_952 = load i64, i64* %var_ptr_$_951
 %ret_$_953 = call i64 @isValidMove$45 (%$locals_tigermain* %load_$_944, i64 %res_$_946, i64 %res_$_948, i64 %res_$_950, i64 %res_$_952)
 %cnd_$_954 = icmp ne i64 %ret_$_953, 0
 br i1 %cnd_$_954, label %thn_$_940, label %els_$_941
thn_$_940:
 %lnk_$_955 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_956 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_955
 %var_ptr_$_957 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 4
 %res_$_958 = load i64, i64* %var_ptr_$_957
 %var_ptr_$_959 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 3
 %res_$_960 = load i64, i64* %var_ptr_$_959
 %var_ptr_$_961 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 2
 %res_$_962 = load i64, i64* %var_ptr_$_961
 %var_ptr_$_963 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 1
 %res_$_964 = load i64, i64* %var_ptr_$_963
 call void @movePiece$19 (%$locals_tigermain* %load_$_956, i64 %res_$_958, i64 %res_$_960, i64 %res_$_962, i64 %res_$_964)
 %lnk_$_965 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_966 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_965
 %lnk_$_968 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_969 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_968
 %var_ptr_$_970 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_969, i32 0, i32 21
 %res_$_971 = load i64, i64* %var_ptr_$_970
 %ret_$_972 = call i64 @not (i8* null, i64 %res_$_971)
 %lnk_$_973 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_974 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_973
 %var_ptr_$_975 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_974, i32 0, i32 21
 store i64 %ret_$_972, i64* %var_ptr_$_975
 br label %mrg_$_942
els_$_941:
 %lnk_$_976 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_977 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_976
 %temp_$_980 = bitcast { i64, [29 x i8] }* @str_$_979 to i8*
 call void @print (i8* null, i8* %temp_$_980)
 br label %mrg_$_942
mrg_$_942:
 br label %mrg_$_915
mrg_$_915:
 br label %mrg_$_837
mrg_$_837:
 %lnk_$_981 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_982 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_981
 call void @printBoard$21 (%$locals_tigermain* %load_$_982)
 br label %mrg_$_752
els_$_751:
 %lnk_$_983 = getelementptr %$locals_evalCommand$46, %$locals_evalCommand$46* %locals_$_10, i32 0, i32 0
 %load_$_984 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_983
 %temp_$_987 = bitcast { i64, [24 x i8] }* @str_$_986 to i8*
 call void @print (i8* null, i8* %temp_$_987)
 br label %mrg_$_752
mrg_$_752:
 br label %mrg_$_734
mrg_$_734:
 br label %mrg_$_723
mrg_$_723:
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_11 = alloca %$locals_tigermain
 %arg_$_988 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_988
 %temp_$_989 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 32
 store i64 0, i64* %temp_$_989
 %temp_$_990 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 31
 store i64 1, i64* %temp_$_990
 %temp_$_991 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 30
 store i64 0, i64* %temp_$_991
 %temp_$_992 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 29
 store i64 1, i64* %temp_$_992
 %temp_$_993 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 28
 store i64 2, i64* %temp_$_993
 %temp_$_994 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 27
 store i64 3, i64* %temp_$_994
 %temp_$_995 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 26
 store i64 4, i64* %temp_$_995
 %temp_$_996 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 25
 store i64 5, i64* %temp_$_996
 %temp_$_997 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 24
 store i64 6, i64* %temp_$_997
 %temp_$_999 = bitcast { i64, [0 x i8] }* @str_$_998 to i8*
 %init_ptr_$_1000 = alloca i8*
 store i8* %temp_$_999, i8** %init_ptr_$_1000
 %init_ptr_$_1001 = bitcast i8** %init_ptr_$_1000 to i8*
 %init_size_ptr_$_1002 = getelementptr i8*, i8** null, i32 1
 %init_size_$_1003 = ptrtoint i8** %init_size_ptr_$_1002 to i64
 %array_ptr_$_1004 = call i8* @initArray (i64 12, i64 %init_size_$_1003, i8* %init_ptr_$_1001)
 %temp_$_1005 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 store i8* %array_ptr_$_1004, i8** %temp_$_1005
 %init_ptr_$_1006 = alloca i64
 store i64 6, i64* %init_ptr_$_1006
 %init_ptr_$_1007 = bitcast i64* %init_ptr_$_1006 to i8*
 %temp_$_1008 = mul i64 8, 8
 %temp_$_1009 = mul i64 %temp_$_1008, 2
 %init_size_ptr_$_1010 = getelementptr i64, i64* null, i32 1
 %init_size_$_1011 = ptrtoint i64* %init_size_ptr_$_1010 to i64
 %array_ptr_$_1012 = call i8* @initArray (i64 %temp_$_1009, i64 %init_size_$_1011, i8* %init_ptr_$_1007)
 %temp_$_1013 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 22
 store i8* %array_ptr_$_1012, i8** %temp_$_1013
 %var_ptr_$_1014 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 31
 %res_$_1015 = load i64, i64* %var_ptr_$_1014
 %temp_$_1016 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 21
 store i64 %res_$_1015, i64* %temp_$_1016
 %temp_$_1018 = bitcast { i64, [0 x i8] }* @str_$_1017 to i8*
 %temp_$_1019 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 6
 store i8* %temp_$_1018, i8** %temp_$_1019
 %temp_$_1158 = bitcast { i64, [1 x i8] }* @str_$_1157 to i8*
 %var_ptr_$_1159 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1160 = load i8*, i8** %var_ptr_$_1159
 %len_ptr_$_1163 = bitcast i8* %load_$_1160 to i64*
 %len_ptr_$_1164 = getelementptr i64, i64* %len_ptr_$_1163, i32 -1
 %len_$_1165 = load i64, i64* %len_ptr_$_1164
 %cnd_$_1166 = icmp sle i64 %len_$_1165, 0
 br i1 %cnd_$_1166, label %thn_$_1161, label %mrg_$_1162
thn_$_1161:
 call i64 @arrInxError (i64 0)
 br label %mrg_$_1162
mrg_$_1162:
 %array_ptr_$_1167 = bitcast i8* %load_$_1160 to i8**
 %entry_ptr_$_1168 = getelementptr i8*, i8** %array_ptr_$_1167, i32 0
 store i8* %temp_$_1158, i8** %entry_ptr_$_1168
 %temp_$_1146 = bitcast { i64, [1 x i8] }* @str_$_1145 to i8*
 %var_ptr_$_1147 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1148 = load i8*, i8** %var_ptr_$_1147
 %len_ptr_$_1151 = bitcast i8* %load_$_1148 to i64*
 %len_ptr_$_1152 = getelementptr i64, i64* %len_ptr_$_1151, i32 -1
 %len_$_1153 = load i64, i64* %len_ptr_$_1152
 %cnd_$_1154 = icmp sle i64 %len_$_1153, 1
 br i1 %cnd_$_1154, label %thn_$_1149, label %mrg_$_1150
thn_$_1149:
 call i64 @arrInxError (i64 1)
 br label %mrg_$_1150
mrg_$_1150:
 %array_ptr_$_1155 = bitcast i8* %load_$_1148 to i8**
 %entry_ptr_$_1156 = getelementptr i8*, i8** %array_ptr_$_1155, i32 1
 store i8* %temp_$_1146, i8** %entry_ptr_$_1156
 %temp_$_1134 = bitcast { i64, [1 x i8] }* @str_$_1133 to i8*
 %var_ptr_$_1135 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1136 = load i8*, i8** %var_ptr_$_1135
 %len_ptr_$_1139 = bitcast i8* %load_$_1136 to i64*
 %len_ptr_$_1140 = getelementptr i64, i64* %len_ptr_$_1139, i32 -1
 %len_$_1141 = load i64, i64* %len_ptr_$_1140
 %cnd_$_1142 = icmp sle i64 %len_$_1141, 2
 br i1 %cnd_$_1142, label %thn_$_1137, label %mrg_$_1138
thn_$_1137:
 call i64 @arrInxError (i64 2)
 br label %mrg_$_1138
mrg_$_1138:
 %array_ptr_$_1143 = bitcast i8* %load_$_1136 to i8**
 %entry_ptr_$_1144 = getelementptr i8*, i8** %array_ptr_$_1143, i32 2
 store i8* %temp_$_1134, i8** %entry_ptr_$_1144
 %temp_$_1122 = bitcast { i64, [1 x i8] }* @str_$_1121 to i8*
 %var_ptr_$_1123 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1124 = load i8*, i8** %var_ptr_$_1123
 %len_ptr_$_1127 = bitcast i8* %load_$_1124 to i64*
 %len_ptr_$_1128 = getelementptr i64, i64* %len_ptr_$_1127, i32 -1
 %len_$_1129 = load i64, i64* %len_ptr_$_1128
 %cnd_$_1130 = icmp sle i64 %len_$_1129, 3
 br i1 %cnd_$_1130, label %thn_$_1125, label %mrg_$_1126
thn_$_1125:
 call i64 @arrInxError (i64 3)
 br label %mrg_$_1126
mrg_$_1126:
 %array_ptr_$_1131 = bitcast i8* %load_$_1124 to i8**
 %entry_ptr_$_1132 = getelementptr i8*, i8** %array_ptr_$_1131, i32 3
 store i8* %temp_$_1122, i8** %entry_ptr_$_1132
 %temp_$_1110 = bitcast { i64, [1 x i8] }* @str_$_1109 to i8*
 %var_ptr_$_1111 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1112 = load i8*, i8** %var_ptr_$_1111
 %len_ptr_$_1115 = bitcast i8* %load_$_1112 to i64*
 %len_ptr_$_1116 = getelementptr i64, i64* %len_ptr_$_1115, i32 -1
 %len_$_1117 = load i64, i64* %len_ptr_$_1116
 %cnd_$_1118 = icmp sle i64 %len_$_1117, 4
 br i1 %cnd_$_1118, label %thn_$_1113, label %mrg_$_1114
thn_$_1113:
 call i64 @arrInxError (i64 4)
 br label %mrg_$_1114
mrg_$_1114:
 %array_ptr_$_1119 = bitcast i8* %load_$_1112 to i8**
 %entry_ptr_$_1120 = getelementptr i8*, i8** %array_ptr_$_1119, i32 4
 store i8* %temp_$_1110, i8** %entry_ptr_$_1120
 %temp_$_1098 = bitcast { i64, [1 x i8] }* @str_$_1097 to i8*
 %var_ptr_$_1099 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1100 = load i8*, i8** %var_ptr_$_1099
 %len_ptr_$_1103 = bitcast i8* %load_$_1100 to i64*
 %len_ptr_$_1104 = getelementptr i64, i64* %len_ptr_$_1103, i32 -1
 %len_$_1105 = load i64, i64* %len_ptr_$_1104
 %cnd_$_1106 = icmp sle i64 %len_$_1105, 5
 br i1 %cnd_$_1106, label %thn_$_1101, label %mrg_$_1102
thn_$_1101:
 call i64 @arrInxError (i64 5)
 br label %mrg_$_1102
mrg_$_1102:
 %array_ptr_$_1107 = bitcast i8* %load_$_1100 to i8**
 %entry_ptr_$_1108 = getelementptr i8*, i8** %array_ptr_$_1107, i32 5
 store i8* %temp_$_1098, i8** %entry_ptr_$_1108
 %temp_$_1086 = bitcast { i64, [1 x i8] }* @str_$_1085 to i8*
 %var_ptr_$_1087 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1088 = load i8*, i8** %var_ptr_$_1087
 %len_ptr_$_1091 = bitcast i8* %load_$_1088 to i64*
 %len_ptr_$_1092 = getelementptr i64, i64* %len_ptr_$_1091, i32 -1
 %len_$_1093 = load i64, i64* %len_ptr_$_1092
 %cnd_$_1094 = icmp sle i64 %len_$_1093, 6
 br i1 %cnd_$_1094, label %thn_$_1089, label %mrg_$_1090
thn_$_1089:
 call i64 @arrInxError (i64 6)
 br label %mrg_$_1090
mrg_$_1090:
 %array_ptr_$_1095 = bitcast i8* %load_$_1088 to i8**
 %entry_ptr_$_1096 = getelementptr i8*, i8** %array_ptr_$_1095, i32 6
 store i8* %temp_$_1086, i8** %entry_ptr_$_1096
 %temp_$_1074 = bitcast { i64, [1 x i8] }* @str_$_1073 to i8*
 %var_ptr_$_1075 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1076 = load i8*, i8** %var_ptr_$_1075
 %len_ptr_$_1079 = bitcast i8* %load_$_1076 to i64*
 %len_ptr_$_1080 = getelementptr i64, i64* %len_ptr_$_1079, i32 -1
 %len_$_1081 = load i64, i64* %len_ptr_$_1080
 %cnd_$_1082 = icmp sle i64 %len_$_1081, 7
 br i1 %cnd_$_1082, label %thn_$_1077, label %mrg_$_1078
thn_$_1077:
 call i64 @arrInxError (i64 7)
 br label %mrg_$_1078
mrg_$_1078:
 %array_ptr_$_1083 = bitcast i8* %load_$_1076 to i8**
 %entry_ptr_$_1084 = getelementptr i8*, i8** %array_ptr_$_1083, i32 7
 store i8* %temp_$_1074, i8** %entry_ptr_$_1084
 %temp_$_1062 = bitcast { i64, [1 x i8] }* @str_$_1061 to i8*
 %var_ptr_$_1063 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1064 = load i8*, i8** %var_ptr_$_1063
 %len_ptr_$_1067 = bitcast i8* %load_$_1064 to i64*
 %len_ptr_$_1068 = getelementptr i64, i64* %len_ptr_$_1067, i32 -1
 %len_$_1069 = load i64, i64* %len_ptr_$_1068
 %cnd_$_1070 = icmp sle i64 %len_$_1069, 8
 br i1 %cnd_$_1070, label %thn_$_1065, label %mrg_$_1066
thn_$_1065:
 call i64 @arrInxError (i64 8)
 br label %mrg_$_1066
mrg_$_1066:
 %array_ptr_$_1071 = bitcast i8* %load_$_1064 to i8**
 %entry_ptr_$_1072 = getelementptr i8*, i8** %array_ptr_$_1071, i32 8
 store i8* %temp_$_1062, i8** %entry_ptr_$_1072
 %temp_$_1050 = bitcast { i64, [1 x i8] }* @str_$_1049 to i8*
 %var_ptr_$_1051 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1052 = load i8*, i8** %var_ptr_$_1051
 %len_ptr_$_1055 = bitcast i8* %load_$_1052 to i64*
 %len_ptr_$_1056 = getelementptr i64, i64* %len_ptr_$_1055, i32 -1
 %len_$_1057 = load i64, i64* %len_ptr_$_1056
 %cnd_$_1058 = icmp sle i64 %len_$_1057, 9
 br i1 %cnd_$_1058, label %thn_$_1053, label %mrg_$_1054
thn_$_1053:
 call i64 @arrInxError (i64 9)
 br label %mrg_$_1054
mrg_$_1054:
 %array_ptr_$_1059 = bitcast i8* %load_$_1052 to i8**
 %entry_ptr_$_1060 = getelementptr i8*, i8** %array_ptr_$_1059, i32 9
 store i8* %temp_$_1050, i8** %entry_ptr_$_1060
 %temp_$_1038 = bitcast { i64, [1 x i8] }* @str_$_1037 to i8*
 %var_ptr_$_1039 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1040 = load i8*, i8** %var_ptr_$_1039
 %len_ptr_$_1043 = bitcast i8* %load_$_1040 to i64*
 %len_ptr_$_1044 = getelementptr i64, i64* %len_ptr_$_1043, i32 -1
 %len_$_1045 = load i64, i64* %len_ptr_$_1044
 %cnd_$_1046 = icmp sle i64 %len_$_1045, 10
 br i1 %cnd_$_1046, label %thn_$_1041, label %mrg_$_1042
thn_$_1041:
 call i64 @arrInxError (i64 10)
 br label %mrg_$_1042
mrg_$_1042:
 %array_ptr_$_1047 = bitcast i8* %load_$_1040 to i8**
 %entry_ptr_$_1048 = getelementptr i8*, i8** %array_ptr_$_1047, i32 10
 store i8* %temp_$_1038, i8** %entry_ptr_$_1048
 %temp_$_1026 = bitcast { i64, [1 x i8] }* @str_$_1025 to i8*
 %var_ptr_$_1027 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_11, i32 0, i32 23
 %load_$_1028 = load i8*, i8** %var_ptr_$_1027
 %len_ptr_$_1031 = bitcast i8* %load_$_1028 to i64*
 %len_ptr_$_1032 = getelementptr i64, i64* %len_ptr_$_1031, i32 -1
 %len_$_1033 = load i64, i64* %len_ptr_$_1032
 %cnd_$_1034 = icmp sle i64 %len_$_1033, 11
 br i1 %cnd_$_1034, label %thn_$_1029, label %mrg_$_1030
thn_$_1029:
 call i64 @arrInxError (i64 11)
 br label %mrg_$_1030
mrg_$_1030:
 %array_ptr_$_1035 = bitcast i8* %load_$_1028 to i8**
 %entry_ptr_$_1036 = getelementptr i8*, i8** %array_ptr_$_1035, i32 11
 store i8* %temp_$_1026, i8** %entry_ptr_$_1036
 call void @initBoard$22 (%$locals_tigermain* %locals_$_11)
 call void @printHelp$44 (%$locals_tigermain* %locals_$_11)
 %temp_$_1024 = bitcast { i64, [28 x i8] }* @str_$_1023 to i8*
 call void @print (i8* null, i8* %temp_$_1024)
 %ret_$_1021 = call i8* @getChar (i8* null)
 call void @printBoard$21 (%$locals_tigermain* %locals_$_11)
 br label %test_$_1169
test_$_1169:
 %cnd_$_1172 = icmp ne i64 1, 0
 br i1 %cnd_$_1172, label %body_$_1170, label %mrg_$_1171
body_$_1170:
 %temp_$_1175 = bitcast { i64, [21 x i8] }* @str_$_1174 to i8*
 call void @print (i8* null, i8* %temp_$_1175)
 %ret_$_1176 = call i8* @readCommand$43 (%$locals_tigermain* %locals_$_11)
 call void @evalCommand$46 (%$locals_tigermain* %locals_$_11, i8* %ret_$_1176)
 br label %test_$_1169
mrg_$_1171:
 ret void
}
