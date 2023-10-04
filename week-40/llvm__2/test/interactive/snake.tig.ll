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

%coord$0 = type { i64, i64 }
%p_part$1 = type { i64, i64, i8* }
%$locals_isHead$11 = type { %$locals_tigermain*, i64, i64 }
%$locals_checkPart$36 = type { %$locals_isBody$12*, i8* }
%$locals_isBody$12 = type { %$locals_tigermain*, i8*, i8*, i64, i64 }
%$locals_isWall$13 = type { %$locals_tigermain*, i64, i64 }
%$locals_isTile$14 = type { %$locals_tigermain*, i64, i64 }
%$locals_isLegalMove$15 = type { %$locals_tigermain*, i64, i64 }
%$locals_isFruit$16 = type { %$locals_tigermain*, i64, i64 }
%$locals_isBorder$17 = type { %$locals_tigermain*, i64, i64 }
%$locals_mod$18 = type { %$locals_tigermain*, i64, i64, i64, i64 }
%$locals_randomCoord$19 = type { %$locals_tigermain*, i64, i64, i64, i64 }
%$locals_updateScreen$20 = type { %$locals_tigermain* }
%$locals_printborder$21 = type { %$locals_tigermain*, i64, i64, i8*, i64, i64 }
%$locals_printboard$22 = type { %$locals_tigermain*, i64, i64 }
%$locals_printcontrols$23 = type { %$locals_tigermain* }
%$locals_f$64 = type { %$locals_printint$24*, i64 }
%$locals_printint$24 = type { %$locals_tigermain*, i64, i64 }
%$locals_f$67 = type { %$locals_i2s$25*, i64 }
%$locals_i2s$25 = type { %$locals_tigermain*, i64, i64 }
%$locals_handleFruit$26 = type { %$locals_tigermain* }
%$locals_handleMovement$27 = type { %$locals_tigermain*, i64, i64, i8* }
%$locals_updatePlayer$28 = type { %$locals_tigermain*, i8*, i64, i64 }
%$locals_skipto$29 = type { %$locals_tigermain* }
%$locals_gameLoop$30 = type { %$locals_tigermain* }
%$locals_tigermain = type { i8*, i64, i64, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i8*, i64, i8*, i64, i64 }

@str_$_1437 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_1392 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_1372 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"q"}
@str_$_1353 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_1158 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"s"}
@str_$_1116 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"w"}
@str_$_1074 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"d"}
@str_$_1031 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_880 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_866 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_860 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_813 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_795 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"-"}
@str_$_777 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_733 = global { i64, [71 x i8] } {i64 71, [71 x i8] c"\09\09  w = up, s = down, a = left, d = right\0A\09\09\09  Press enter to confirm\0A\0A"}
@str_$_723 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_714 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"  "}
@str_$_709 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"  "}
@str_$_693 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"# "}
@str_$_677 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"o "}
@str_$_661 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"@ "}
@str_$_645 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"X "}
@str_$_614 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"\09\09\09"}
@str_$_591 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"\09\09\09"}
@str_$_582 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"  "}
@str_$_577 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"  "}
@str_$_572 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_528 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"# "}
@str_$_499 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_456 = global { i64, [8 x i8] } {i64 8, [8 x i8] c" Score: "}
@str_$_444 = global { i64, [7 x i8] } {i64 7, [7 x i8] c"\1B[2J\1B[H"}
@str_$_439 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_434 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_429 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_420 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}

define i64 @isHead$11 (%$locals_tigermain* %$sl, i64 %x$31, i64 %y$32) {
 %temp_$_27 = alloca i64
 %locals_$_0 = alloca %$locals_isHead$11
 %arg_$_24 = getelementptr %$locals_isHead$11, %$locals_isHead$11* %locals_$_0, i32 0, i32 2
 store i64 %y$32, i64* %arg_$_24
 %arg_$_25 = getelementptr %$locals_isHead$11, %$locals_isHead$11* %locals_$_0, i32 0, i32 1
 store i64 %x$31, i64* %arg_$_25
 %arg_$_26 = getelementptr %$locals_isHead$11, %$locals_isHead$11* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_26
 %var_ptr_$_31 = getelementptr %$locals_isHead$11, %$locals_isHead$11* %locals_$_0, i32 0, i32 1
 %res_$_32 = load i64, i64* %var_ptr_$_31
 %lnk_$_33 = getelementptr %$locals_isHead$11, %$locals_isHead$11* %locals_$_0, i32 0, i32 0
 %load_$_34 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_33
 %var_ptr_$_35 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_34, i32 0, i32 25
 %load_$_36 = load i8*, i8** %var_ptr_$_35
 %record_ptr_$_37 = bitcast i8* %load_$_36 to %p_part$1*
 %int_of_ptr_$_40 = ptrtoint i8* %load_$_36 to i64
 %cnd_$_41 = icmp eq i64 %int_of_ptr_$_40, 0
 br i1 %cnd_$_41, label %thn_$_38, label %mrg_$_39
thn_$_38:
 call i64 @recFieldError ()
 br label %mrg_$_39
mrg_$_39:
 %field_ptr_$_42 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_37, i32 0, i32 0
 %res_$_43 = load i64, i64* %field_ptr_$_42
 %temp_$_44 = icmp eq i64 %res_$_32, %res_$_43
 %temp_$_45 = zext i1 %temp_$_44 to i64
 %cnd_$_46 = icmp ne i64 %temp_$_45, 0
 br i1 %cnd_$_46, label %thn_$_28, label %els_$_29
thn_$_28:
 %var_ptr_$_47 = getelementptr %$locals_isHead$11, %$locals_isHead$11* %locals_$_0, i32 0, i32 2
 %res_$_48 = load i64, i64* %var_ptr_$_47
 %lnk_$_49 = getelementptr %$locals_isHead$11, %$locals_isHead$11* %locals_$_0, i32 0, i32 0
 %load_$_50 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_49
 %var_ptr_$_51 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_50, i32 0, i32 25
 %load_$_52 = load i8*, i8** %var_ptr_$_51
 %record_ptr_$_53 = bitcast i8* %load_$_52 to %p_part$1*
 %int_of_ptr_$_56 = ptrtoint i8* %load_$_52 to i64
 %cnd_$_57 = icmp eq i64 %int_of_ptr_$_56, 0
 br i1 %cnd_$_57, label %thn_$_54, label %mrg_$_55
thn_$_54:
 call i64 @recFieldError ()
 br label %mrg_$_55
mrg_$_55:
 %field_ptr_$_58 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_53, i32 0, i32 1
 %res_$_59 = load i64, i64* %field_ptr_$_58
 %temp_$_60 = icmp eq i64 %res_$_48, %res_$_59
 %temp_$_61 = zext i1 %temp_$_60 to i64
 store i64 %temp_$_61, i64* %temp_$_27
 br label %mrg_$_30
els_$_29:
 store i64 0, i64* %temp_$_27
 br label %mrg_$_30
mrg_$_30:
 %res_$_62 = load i64, i64* %temp_$_27
 ret i64 %res_$_62
}

define i64 @checkPart$36 (%$locals_isBody$12* %$sl, i8* %p$37) {
 %temp_$_80 = alloca i64
 %temp_$_76 = alloca i64
 %temp_$_65 = alloca i64
 %locals_$_1 = alloca %$locals_checkPart$36
 %arg_$_63 = getelementptr %$locals_checkPart$36, %$locals_checkPart$36* %locals_$_1, i32 0, i32 1
 store i8* %p$37, i8** %arg_$_63
 %arg_$_64 = getelementptr %$locals_checkPart$36, %$locals_checkPart$36* %locals_$_1, i32 0, i32 0
 store %$locals_isBody$12* %$sl, %$locals_isBody$12** %arg_$_64
 %var_ptr_$_69 = getelementptr %$locals_checkPart$36, %$locals_checkPart$36* %locals_$_1, i32 0, i32 1
 %res_$_70 = load i8*, i8** %var_ptr_$_69
 %left_int_$_71 = ptrtoint i8* %res_$_70 to i64
 %right_int_$_72 = ptrtoint i8* null to i64
 %cnd_$_73 = icmp eq i64 %left_int_$_71, %right_int_$_72
 %zext_$_74 = zext i1 %cnd_$_73 to i64
 %cnd_$_75 = icmp ne i64 %zext_$_74, 0
 br i1 %cnd_$_75, label %thn_$_66, label %els_$_67
thn_$_66:
 store i64 0, i64* %temp_$_65
 br label %mrg_$_68
els_$_67:
 %lnk_$_84 = getelementptr %$locals_checkPart$36, %$locals_checkPart$36* %locals_$_1, i32 0, i32 0
 %load_$_85 = load %$locals_isBody$12*, %$locals_isBody$12** %lnk_$_84
 %var_ptr_$_86 = getelementptr %$locals_isBody$12, %$locals_isBody$12* %load_$_85, i32 0, i32 3
 %res_$_87 = load i64, i64* %var_ptr_$_86
 %var_ptr_$_88 = getelementptr %$locals_checkPart$36, %$locals_checkPart$36* %locals_$_1, i32 0, i32 1
 %load_$_89 = load i8*, i8** %var_ptr_$_88
 %record_ptr_$_90 = bitcast i8* %load_$_89 to %p_part$1*
 %int_of_ptr_$_93 = ptrtoint i8* %load_$_89 to i64
 %cnd_$_94 = icmp eq i64 %int_of_ptr_$_93, 0
 br i1 %cnd_$_94, label %thn_$_91, label %mrg_$_92
thn_$_91:
 call i64 @recFieldError ()
 br label %mrg_$_92
mrg_$_92:
 %field_ptr_$_95 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_90, i32 0, i32 0
 %res_$_96 = load i64, i64* %field_ptr_$_95
 %temp_$_97 = icmp eq i64 %res_$_87, %res_$_96
 %temp_$_98 = zext i1 %temp_$_97 to i64
 %cnd_$_99 = icmp ne i64 %temp_$_98, 0
 br i1 %cnd_$_99, label %thn_$_81, label %els_$_82
thn_$_81:
 %lnk_$_100 = getelementptr %$locals_checkPart$36, %$locals_checkPart$36* %locals_$_1, i32 0, i32 0
 %load_$_101 = load %$locals_isBody$12*, %$locals_isBody$12** %lnk_$_100
 %var_ptr_$_102 = getelementptr %$locals_isBody$12, %$locals_isBody$12* %load_$_101, i32 0, i32 4
 %res_$_103 = load i64, i64* %var_ptr_$_102
 %var_ptr_$_104 = getelementptr %$locals_checkPart$36, %$locals_checkPart$36* %locals_$_1, i32 0, i32 1
 %load_$_105 = load i8*, i8** %var_ptr_$_104
 %record_ptr_$_106 = bitcast i8* %load_$_105 to %p_part$1*
 %int_of_ptr_$_109 = ptrtoint i8* %load_$_105 to i64
 %cnd_$_110 = icmp eq i64 %int_of_ptr_$_109, 0
 br i1 %cnd_$_110, label %thn_$_107, label %mrg_$_108
thn_$_107:
 call i64 @recFieldError ()
 br label %mrg_$_108
mrg_$_108:
 %field_ptr_$_111 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_106, i32 0, i32 1
 %res_$_112 = load i64, i64* %field_ptr_$_111
 %temp_$_113 = icmp eq i64 %res_$_103, %res_$_112
 %temp_$_114 = zext i1 %temp_$_113 to i64
 store i64 %temp_$_114, i64* %temp_$_80
 br label %mrg_$_83
els_$_82:
 store i64 0, i64* %temp_$_80
 br label %mrg_$_83
mrg_$_83:
 %res_$_115 = load i64, i64* %temp_$_80
 %cnd_$_116 = icmp ne i64 %res_$_115, 0
 br i1 %cnd_$_116, label %thn_$_77, label %els_$_78
thn_$_77:
 store i64 1, i64* %temp_$_76
 br label %mrg_$_79
els_$_78:
 %lnk_$_117 = getelementptr %$locals_checkPart$36, %$locals_checkPart$36* %locals_$_1, i32 0, i32 0
 %load_$_118 = load %$locals_isBody$12*, %$locals_isBody$12** %lnk_$_117
 %var_ptr_$_119 = getelementptr %$locals_checkPart$36, %$locals_checkPart$36* %locals_$_1, i32 0, i32 1
 %load_$_120 = load i8*, i8** %var_ptr_$_119
 %record_ptr_$_121 = bitcast i8* %load_$_120 to %p_part$1*
 %int_of_ptr_$_124 = ptrtoint i8* %load_$_120 to i64
 %cnd_$_125 = icmp eq i64 %int_of_ptr_$_124, 0
 br i1 %cnd_$_125, label %thn_$_122, label %mrg_$_123
thn_$_122:
 call i64 @recFieldError ()
 br label %mrg_$_123
mrg_$_123:
 %field_ptr_$_126 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_121, i32 0, i32 2
 %res_$_127 = load i8*, i8** %field_ptr_$_126
 %ret_$_128 = call i64 @checkPart$36 (%$locals_isBody$12* %load_$_118, i8* %res_$_127)
 store i64 %ret_$_128, i64* %temp_$_76
 br label %mrg_$_79
mrg_$_79:
 %res_$_129 = load i64, i64* %temp_$_76
 store i64 %res_$_129, i64* %temp_$_65
 br label %mrg_$_68
mrg_$_68:
 %res_$_130 = load i64, i64* %temp_$_65
 ret i64 %res_$_130
}

define i64 @isBody$12 (%$locals_tigermain* %$sl, i64 %x$33, i64 %y$34) {
 %locals_$_2 = alloca %$locals_isBody$12
 %arg_$_131 = getelementptr %$locals_isBody$12, %$locals_isBody$12* %locals_$_2, i32 0, i32 4
 store i64 %y$34, i64* %arg_$_131
 %arg_$_132 = getelementptr %$locals_isBody$12, %$locals_isBody$12* %locals_$_2, i32 0, i32 3
 store i64 %x$33, i64* %arg_$_132
 %arg_$_133 = getelementptr %$locals_isBody$12, %$locals_isBody$12* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_133
 %lnk_$_134 = getelementptr %$locals_isBody$12, %$locals_isBody$12* %locals_$_2, i32 0, i32 0
 %load_$_135 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_134
 %var_ptr_$_136 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_135, i32 0, i32 25
 %load_$_137 = load i8*, i8** %var_ptr_$_136
 %record_ptr_$_138 = bitcast i8* %load_$_137 to %p_part$1*
 %int_of_ptr_$_141 = ptrtoint i8* %load_$_137 to i64
 %cnd_$_142 = icmp eq i64 %int_of_ptr_$_141, 0
 br i1 %cnd_$_142, label %thn_$_139, label %mrg_$_140
thn_$_139:
 call i64 @recFieldError ()
 br label %mrg_$_140
mrg_$_140:
 %field_ptr_$_143 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_138, i32 0, i32 2
 %res_$_144 = load i8*, i8** %field_ptr_$_143
 %temp_$_145 = getelementptr %$locals_isBody$12, %$locals_isBody$12* %locals_$_2, i32 0, i32 2
 store i8* %res_$_144, i8** %temp_$_145
 %var_ptr_$_146 = getelementptr %$locals_isBody$12, %$locals_isBody$12* %locals_$_2, i32 0, i32 2
 %res_$_147 = load i8*, i8** %var_ptr_$_146
 %ret_$_148 = call i64 @checkPart$36 (%$locals_isBody$12* %locals_$_2, i8* %res_$_147)
 ret i64 %ret_$_148
}

define i64 @isWall$13 (%$locals_tigermain* %$sl, i64 %x$38, i64 %y$39) {
 %temp_$_160 = alloca i64
 %temp_$_156 = alloca i64
 %temp_$_152 = alloca i64
 %locals_$_3 = alloca %$locals_isWall$13
 %arg_$_149 = getelementptr %$locals_isWall$13, %$locals_isWall$13* %locals_$_3, i32 0, i32 2
 store i64 %y$39, i64* %arg_$_149
 %arg_$_150 = getelementptr %$locals_isWall$13, %$locals_isWall$13* %locals_$_3, i32 0, i32 1
 store i64 %x$38, i64* %arg_$_150
 %arg_$_151 = getelementptr %$locals_isWall$13, %$locals_isWall$13* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_151
 %var_ptr_$_164 = getelementptr %$locals_isWall$13, %$locals_isWall$13* %locals_$_3, i32 0, i32 1
 %res_$_165 = load i64, i64* %var_ptr_$_164
 %temp_$_166 = sub i64 0, 1
 %temp_$_167 = icmp eq i64 %res_$_165, %temp_$_166
 %temp_$_168 = zext i1 %temp_$_167 to i64
 %cnd_$_169 = icmp ne i64 %temp_$_168, 0
 br i1 %cnd_$_169, label %thn_$_161, label %els_$_162
thn_$_161:
 store i64 1, i64* %temp_$_160
 br label %mrg_$_163
els_$_162:
 %var_ptr_$_170 = getelementptr %$locals_isWall$13, %$locals_isWall$13* %locals_$_3, i32 0, i32 1
 %res_$_171 = load i64, i64* %var_ptr_$_170
 %lnk_$_172 = getelementptr %$locals_isWall$13, %$locals_isWall$13* %locals_$_3, i32 0, i32 0
 %load_$_173 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_172
 %var_ptr_$_174 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_173, i32 0, i32 33
 %res_$_175 = load i64, i64* %var_ptr_$_174
 %temp_$_176 = add i64 %res_$_175, 1
 %temp_$_177 = icmp eq i64 %res_$_171, %temp_$_176
 %temp_$_178 = zext i1 %temp_$_177 to i64
 store i64 %temp_$_178, i64* %temp_$_160
 br label %mrg_$_163
mrg_$_163:
 %res_$_179 = load i64, i64* %temp_$_160
 %cnd_$_180 = icmp ne i64 %res_$_179, 0
 br i1 %cnd_$_180, label %thn_$_157, label %els_$_158
thn_$_157:
 store i64 1, i64* %temp_$_156
 br label %mrg_$_159
els_$_158:
 %var_ptr_$_181 = getelementptr %$locals_isWall$13, %$locals_isWall$13* %locals_$_3, i32 0, i32 2
 %res_$_182 = load i64, i64* %var_ptr_$_181
 %temp_$_183 = sub i64 0, 1
 %temp_$_184 = icmp eq i64 %res_$_182, %temp_$_183
 %temp_$_185 = zext i1 %temp_$_184 to i64
 store i64 %temp_$_185, i64* %temp_$_156
 br label %mrg_$_159
mrg_$_159:
 %res_$_186 = load i64, i64* %temp_$_156
 %cnd_$_187 = icmp ne i64 %res_$_186, 0
 br i1 %cnd_$_187, label %thn_$_153, label %els_$_154
thn_$_153:
 store i64 1, i64* %temp_$_152
 br label %mrg_$_155
els_$_154:
 %var_ptr_$_188 = getelementptr %$locals_isWall$13, %$locals_isWall$13* %locals_$_3, i32 0, i32 2
 %res_$_189 = load i64, i64* %var_ptr_$_188
 %lnk_$_190 = getelementptr %$locals_isWall$13, %$locals_isWall$13* %locals_$_3, i32 0, i32 0
 %load_$_191 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_190
 %var_ptr_$_192 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_191, i32 0, i32 32
 %res_$_193 = load i64, i64* %var_ptr_$_192
 %temp_$_194 = add i64 %res_$_193, 1
 %temp_$_195 = icmp eq i64 %res_$_189, %temp_$_194
 %temp_$_196 = zext i1 %temp_$_195 to i64
 store i64 %temp_$_196, i64* %temp_$_152
 br label %mrg_$_155
mrg_$_155:
 %res_$_197 = load i64, i64* %temp_$_152
 ret i64 %res_$_197
}

define i64 @isTile$14 (%$locals_tigermain* %$sl, i64 %x$40, i64 %y$41) {
 %temp_$_209 = alloca i64
 %temp_$_205 = alloca i64
 %temp_$_201 = alloca i64
 %locals_$_4 = alloca %$locals_isTile$14
 %arg_$_198 = getelementptr %$locals_isTile$14, %$locals_isTile$14* %locals_$_4, i32 0, i32 2
 store i64 %y$41, i64* %arg_$_198
 %arg_$_199 = getelementptr %$locals_isTile$14, %$locals_isTile$14* %locals_$_4, i32 0, i32 1
 store i64 %x$40, i64* %arg_$_199
 %arg_$_200 = getelementptr %$locals_isTile$14, %$locals_isTile$14* %locals_$_4, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_200
 %var_ptr_$_213 = getelementptr %$locals_isTile$14, %$locals_isTile$14* %locals_$_4, i32 0, i32 1
 %res_$_214 = load i64, i64* %var_ptr_$_213
 %temp_$_215 = icmp sge i64 %res_$_214, 0
 %temp_$_216 = zext i1 %temp_$_215 to i64
 %cnd_$_217 = icmp ne i64 %temp_$_216, 0
 br i1 %cnd_$_217, label %thn_$_210, label %els_$_211
thn_$_210:
 %var_ptr_$_218 = getelementptr %$locals_isTile$14, %$locals_isTile$14* %locals_$_4, i32 0, i32 1
 %res_$_219 = load i64, i64* %var_ptr_$_218
 %lnk_$_220 = getelementptr %$locals_isTile$14, %$locals_isTile$14* %locals_$_4, i32 0, i32 0
 %load_$_221 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_220
 %var_ptr_$_222 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_221, i32 0, i32 33
 %res_$_223 = load i64, i64* %var_ptr_$_222
 %temp_$_224 = icmp sle i64 %res_$_219, %res_$_223
 %temp_$_225 = zext i1 %temp_$_224 to i64
 store i64 %temp_$_225, i64* %temp_$_209
 br label %mrg_$_212
els_$_211:
 store i64 0, i64* %temp_$_209
 br label %mrg_$_212
mrg_$_212:
 %res_$_226 = load i64, i64* %temp_$_209
 %cnd_$_227 = icmp ne i64 %res_$_226, 0
 br i1 %cnd_$_227, label %thn_$_206, label %els_$_207
thn_$_206:
 %var_ptr_$_228 = getelementptr %$locals_isTile$14, %$locals_isTile$14* %locals_$_4, i32 0, i32 2
 %res_$_229 = load i64, i64* %var_ptr_$_228
 %temp_$_230 = icmp sge i64 %res_$_229, 0
 %temp_$_231 = zext i1 %temp_$_230 to i64
 store i64 %temp_$_231, i64* %temp_$_205
 br label %mrg_$_208
els_$_207:
 store i64 0, i64* %temp_$_205
 br label %mrg_$_208
mrg_$_208:
 %res_$_232 = load i64, i64* %temp_$_205
 %cnd_$_233 = icmp ne i64 %res_$_232, 0
 br i1 %cnd_$_233, label %thn_$_202, label %els_$_203
thn_$_202:
 %var_ptr_$_234 = getelementptr %$locals_isTile$14, %$locals_isTile$14* %locals_$_4, i32 0, i32 2
 %res_$_235 = load i64, i64* %var_ptr_$_234
 %lnk_$_236 = getelementptr %$locals_isTile$14, %$locals_isTile$14* %locals_$_4, i32 0, i32 0
 %load_$_237 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_236
 %var_ptr_$_238 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_237, i32 0, i32 32
 %res_$_239 = load i64, i64* %var_ptr_$_238
 %temp_$_240 = icmp sle i64 %res_$_235, %res_$_239
 %temp_$_241 = zext i1 %temp_$_240 to i64
 store i64 %temp_$_241, i64* %temp_$_201
 br label %mrg_$_204
els_$_203:
 store i64 0, i64* %temp_$_201
 br label %mrg_$_204
mrg_$_204:
 %res_$_242 = load i64, i64* %temp_$_201
 ret i64 %res_$_242
}

define i64 @isLegalMove$15 (%$locals_tigermain* %$sl, i64 %x$42, i64 %y$43) {
 %temp_$_250 = alloca i64
 %temp_$_246 = alloca i64
 %locals_$_5 = alloca %$locals_isLegalMove$15
 %arg_$_243 = getelementptr %$locals_isLegalMove$15, %$locals_isLegalMove$15* %locals_$_5, i32 0, i32 2
 store i64 %y$43, i64* %arg_$_243
 %arg_$_244 = getelementptr %$locals_isLegalMove$15, %$locals_isLegalMove$15* %locals_$_5, i32 0, i32 1
 store i64 %x$42, i64* %arg_$_244
 %arg_$_245 = getelementptr %$locals_isLegalMove$15, %$locals_isLegalMove$15* %locals_$_5, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_245
 %lnk_$_254 = getelementptr %$locals_isLegalMove$15, %$locals_isLegalMove$15* %locals_$_5, i32 0, i32 0
 %load_$_255 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_254
 %var_ptr_$_256 = getelementptr %$locals_isLegalMove$15, %$locals_isLegalMove$15* %locals_$_5, i32 0, i32 1
 %res_$_257 = load i64, i64* %var_ptr_$_256
 %var_ptr_$_258 = getelementptr %$locals_isLegalMove$15, %$locals_isLegalMove$15* %locals_$_5, i32 0, i32 2
 %res_$_259 = load i64, i64* %var_ptr_$_258
 %ret_$_260 = call i64 @isWall$13 (%$locals_tigermain* %load_$_255, i64 %res_$_257, i64 %res_$_259)
 %cnd_$_261 = icmp ne i64 %ret_$_260, 0
 br i1 %cnd_$_261, label %thn_$_251, label %els_$_252
thn_$_251:
 store i64 1, i64* %temp_$_250
 br label %mrg_$_253
els_$_252:
 %lnk_$_262 = getelementptr %$locals_isLegalMove$15, %$locals_isLegalMove$15* %locals_$_5, i32 0, i32 0
 %load_$_263 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_262
 %var_ptr_$_264 = getelementptr %$locals_isLegalMove$15, %$locals_isLegalMove$15* %locals_$_5, i32 0, i32 1
 %res_$_265 = load i64, i64* %var_ptr_$_264
 %var_ptr_$_266 = getelementptr %$locals_isLegalMove$15, %$locals_isLegalMove$15* %locals_$_5, i32 0, i32 2
 %res_$_267 = load i64, i64* %var_ptr_$_266
 %ret_$_268 = call i64 @isBody$12 (%$locals_tigermain* %load_$_263, i64 %res_$_265, i64 %res_$_267)
 store i64 %ret_$_268, i64* %temp_$_250
 br label %mrg_$_253
mrg_$_253:
 %res_$_269 = load i64, i64* %temp_$_250
 %cnd_$_270 = icmp ne i64 %res_$_269, 0
 br i1 %cnd_$_270, label %thn_$_247, label %els_$_248
thn_$_247:
 store i64 0, i64* %temp_$_246
 br label %mrg_$_249
els_$_248:
 store i64 1, i64* %temp_$_246
 br label %mrg_$_249
mrg_$_249:
 %res_$_271 = load i64, i64* %temp_$_246
 ret i64 %res_$_271
}

define i64 @isFruit$16 (%$locals_tigermain* %$sl, i64 %x$44, i64 %y$45) {
 %temp_$_275 = alloca i64
 %locals_$_6 = alloca %$locals_isFruit$16
 %arg_$_272 = getelementptr %$locals_isFruit$16, %$locals_isFruit$16* %locals_$_6, i32 0, i32 2
 store i64 %y$45, i64* %arg_$_272
 %arg_$_273 = getelementptr %$locals_isFruit$16, %$locals_isFruit$16* %locals_$_6, i32 0, i32 1
 store i64 %x$44, i64* %arg_$_273
 %arg_$_274 = getelementptr %$locals_isFruit$16, %$locals_isFruit$16* %locals_$_6, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_274
 %var_ptr_$_279 = getelementptr %$locals_isFruit$16, %$locals_isFruit$16* %locals_$_6, i32 0, i32 1
 %res_$_280 = load i64, i64* %var_ptr_$_279
 %lnk_$_281 = getelementptr %$locals_isFruit$16, %$locals_isFruit$16* %locals_$_6, i32 0, i32 0
 %load_$_282 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_281
 %var_ptr_$_283 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_282, i32 0, i32 29
 %load_$_284 = load i8*, i8** %var_ptr_$_283
 %record_ptr_$_285 = bitcast i8* %load_$_284 to %coord$0*
 %int_of_ptr_$_288 = ptrtoint i8* %load_$_284 to i64
 %cnd_$_289 = icmp eq i64 %int_of_ptr_$_288, 0
 br i1 %cnd_$_289, label %thn_$_286, label %mrg_$_287
thn_$_286:
 call i64 @recFieldError ()
 br label %mrg_$_287
mrg_$_287:
 %field_ptr_$_290 = getelementptr %coord$0, %coord$0* %record_ptr_$_285, i32 0, i32 0
 %res_$_291 = load i64, i64* %field_ptr_$_290
 %temp_$_292 = icmp eq i64 %res_$_280, %res_$_291
 %temp_$_293 = zext i1 %temp_$_292 to i64
 %cnd_$_294 = icmp ne i64 %temp_$_293, 0
 br i1 %cnd_$_294, label %thn_$_276, label %els_$_277
thn_$_276:
 %var_ptr_$_295 = getelementptr %$locals_isFruit$16, %$locals_isFruit$16* %locals_$_6, i32 0, i32 2
 %res_$_296 = load i64, i64* %var_ptr_$_295
 %lnk_$_297 = getelementptr %$locals_isFruit$16, %$locals_isFruit$16* %locals_$_6, i32 0, i32 0
 %load_$_298 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_297
 %var_ptr_$_299 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_298, i32 0, i32 29
 %load_$_300 = load i8*, i8** %var_ptr_$_299
 %record_ptr_$_301 = bitcast i8* %load_$_300 to %coord$0*
 %int_of_ptr_$_304 = ptrtoint i8* %load_$_300 to i64
 %cnd_$_305 = icmp eq i64 %int_of_ptr_$_304, 0
 br i1 %cnd_$_305, label %thn_$_302, label %mrg_$_303
thn_$_302:
 call i64 @recFieldError ()
 br label %mrg_$_303
mrg_$_303:
 %field_ptr_$_306 = getelementptr %coord$0, %coord$0* %record_ptr_$_301, i32 0, i32 1
 %res_$_307 = load i64, i64* %field_ptr_$_306
 %temp_$_308 = icmp eq i64 %res_$_296, %res_$_307
 %temp_$_309 = zext i1 %temp_$_308 to i64
 store i64 %temp_$_309, i64* %temp_$_275
 br label %mrg_$_278
els_$_277:
 store i64 0, i64* %temp_$_275
 br label %mrg_$_278
mrg_$_278:
 %res_$_310 = load i64, i64* %temp_$_275
 ret i64 %res_$_310
}

define i64 @isBorder$17 (%$locals_tigermain* %$sl, i64 %x$46, i64 %y$47) {
 %temp_$_318 = alloca i64
 %temp_$_314 = alloca i64
 %locals_$_7 = alloca %$locals_isBorder$17
 %arg_$_311 = getelementptr %$locals_isBorder$17, %$locals_isBorder$17* %locals_$_7, i32 0, i32 2
 store i64 %y$47, i64* %arg_$_311
 %arg_$_312 = getelementptr %$locals_isBorder$17, %$locals_isBorder$17* %locals_$_7, i32 0, i32 1
 store i64 %x$46, i64* %arg_$_312
 %arg_$_313 = getelementptr %$locals_isBorder$17, %$locals_isBorder$17* %locals_$_7, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_313
 %var_ptr_$_322 = getelementptr %$locals_isBorder$17, %$locals_isBorder$17* %locals_$_7, i32 0, i32 1
 %res_$_323 = load i64, i64* %var_ptr_$_322
 %temp_$_324 = sub i64 0, 1
 %temp_$_325 = icmp eq i64 %res_$_323, %temp_$_324
 %temp_$_326 = zext i1 %temp_$_325 to i64
 %cnd_$_327 = icmp ne i64 %temp_$_326, 0
 br i1 %cnd_$_327, label %thn_$_319, label %els_$_320
thn_$_319:
 store i64 1, i64* %temp_$_318
 br label %mrg_$_321
els_$_320:
 %var_ptr_$_328 = getelementptr %$locals_isBorder$17, %$locals_isBorder$17* %locals_$_7, i32 0, i32 1
 %res_$_329 = load i64, i64* %var_ptr_$_328
 %lnk_$_330 = getelementptr %$locals_isBorder$17, %$locals_isBorder$17* %locals_$_7, i32 0, i32 0
 %load_$_331 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_330
 %var_ptr_$_332 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_331, i32 0, i32 33
 %res_$_333 = load i64, i64* %var_ptr_$_332
 %temp_$_334 = add i64 %res_$_333, 1
 %temp_$_335 = icmp eq i64 %res_$_329, %temp_$_334
 %temp_$_336 = zext i1 %temp_$_335 to i64
 store i64 %temp_$_336, i64* %temp_$_318
 br label %mrg_$_321
mrg_$_321:
 %res_$_337 = load i64, i64* %temp_$_318
 %cnd_$_338 = icmp ne i64 %res_$_337, 0
 br i1 %cnd_$_338, label %thn_$_315, label %els_$_316
thn_$_315:
 store i64 1, i64* %temp_$_314
 br label %mrg_$_317
els_$_316:
 %var_ptr_$_339 = getelementptr %$locals_isBorder$17, %$locals_isBorder$17* %locals_$_7, i32 0, i32 2
 %res_$_340 = load i64, i64* %var_ptr_$_339
 %temp_$_341 = icmp eq i64 %res_$_340, 0
 %temp_$_342 = zext i1 %temp_$_341 to i64
 store i64 %temp_$_342, i64* %temp_$_314
 br label %mrg_$_317
mrg_$_317:
 %res_$_343 = load i64, i64* %temp_$_314
 ret i64 %res_$_343
}

define i64 @mod$18 (%$locals_tigermain* %$sl, i64 %i$48, i64 %lim$49) {
 %locals_$_8 = alloca %$locals_mod$18
 %arg_$_344 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 4
 store i64 %lim$49, i64* %arg_$_344
 %arg_$_345 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 3
 store i64 %i$48, i64* %arg_$_345
 %arg_$_346 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_346
 %var_ptr_$_349 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 3
 %res_$_350 = load i64, i64* %var_ptr_$_349
 %var_ptr_$_351 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 4
 %res_$_352 = load i64, i64* %var_ptr_$_351
 %cnd_$_353 = icmp eq i64 %res_$_352, 0
 br i1 %cnd_$_353, label %thn_$_347, label %mrg_$_348
thn_$_347:
 call i64 @divisionByZero ()
 br label %mrg_$_348
mrg_$_348:
 %temp_$_354 = sdiv i64 %res_$_350, %res_$_352
 %temp_$_355 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 2
 store i64 %temp_$_354, i64* %temp_$_355
 %var_ptr_$_356 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 3
 %res_$_357 = load i64, i64* %var_ptr_$_356
 %var_ptr_$_358 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 4
 %res_$_359 = load i64, i64* %var_ptr_$_358
 %var_ptr_$_360 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 2
 %res_$_361 = load i64, i64* %var_ptr_$_360
 %temp_$_362 = mul i64 %res_$_359, %res_$_361
 %temp_$_363 = sub i64 %res_$_357, %temp_$_362
 %temp_$_364 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 1
 store i64 %temp_$_363, i64* %temp_$_364
 %var_ptr_$_365 = getelementptr %$locals_mod$18, %$locals_mod$18* %locals_$_8, i32 0, i32 1
 %res_$_366 = load i64, i64* %var_ptr_$_365
 ret i64 %res_$_366
}

define i8* @randomCoord$19 (%$locals_tigermain* %$sl, i64 %seed_x$52, i64 %seed_y$53) {
 %locals_$_9 = alloca %$locals_randomCoord$19
 %arg_$_367 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 4
 store i64 %seed_y$53, i64* %arg_$_367
 %arg_$_368 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 3
 store i64 %seed_x$52, i64* %arg_$_368
 %arg_$_369 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_369
 %lnk_$_370 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 0
 %load_$_371 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_370
 %var_ptr_$_372 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 3
 %res_$_373 = load i64, i64* %var_ptr_$_372
 %temp_$_374 = call i64 @exponent (i64 %res_$_373, i64 5)
 %var_ptr_$_375 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 4
 %res_$_376 = load i64, i64* %var_ptr_$_375
 %temp_$_377 = call i64 @exponent (i64 %res_$_376, i64 3)
 %temp_$_378 = add i64 %temp_$_374, %temp_$_377
 %temp_$_379 = add i64 %temp_$_378, 7
 %lnk_$_380 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 0
 %load_$_381 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_380
 %var_ptr_$_382 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_381, i32 0, i32 33
 %res_$_383 = load i64, i64* %var_ptr_$_382
 %ret_$_384 = call i64 @mod$18 (%$locals_tigermain* %load_$_371, i64 %temp_$_379, i64 %res_$_383)
 %temp_$_385 = add i64 0, %ret_$_384
 %temp_$_386 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 2
 store i64 %temp_$_385, i64* %temp_$_386
 %lnk_$_387 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 0
 %load_$_388 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_387
 %var_ptr_$_389 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 4
 %res_$_390 = load i64, i64* %var_ptr_$_389
 %temp_$_391 = call i64 @exponent (i64 %res_$_390, i64 3)
 %var_ptr_$_392 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 3
 %res_$_393 = load i64, i64* %var_ptr_$_392
 %temp_$_394 = call i64 @exponent (i64 %res_$_393, i64 2)
 %temp_$_395 = add i64 %temp_$_391, %temp_$_394
 %temp_$_396 = add i64 %temp_$_395, 17
 %lnk_$_397 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 0
 %load_$_398 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_397
 %var_ptr_$_399 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_398, i32 0, i32 32
 %res_$_400 = load i64, i64* %var_ptr_$_399
 %ret_$_401 = call i64 @mod$18 (%$locals_tigermain* %load_$_388, i64 %temp_$_396, i64 %res_$_400)
 %temp_$_402 = add i64 0, %ret_$_401
 %temp_$_403 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 1
 store i64 %temp_$_402, i64* %temp_$_403
 %size_ptr_$_404 = getelementptr %coord$0, %coord$0* null, i32 1
 %size_$_405 = ptrtoint %coord$0* %size_ptr_$_404 to i64
 %record_ptr_$_406 = call i8* @allocRecord (i64 %size_$_405)
 %rec_$_407 = bitcast i8* %record_ptr_$_406 to %coord$0*
 %var_ptr_$_408 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 2
 %res_$_409 = load i64, i64* %var_ptr_$_408
 %field_ptr_$_410 = getelementptr %coord$0, %coord$0* %rec_$_407, i32 0, i32 0
 store i64 %res_$_409, i64* %field_ptr_$_410
 %var_ptr_$_411 = getelementptr %$locals_randomCoord$19, %$locals_randomCoord$19* %locals_$_9, i32 0, i32 1
 %res_$_412 = load i64, i64* %var_ptr_$_411
 %field_ptr_$_413 = getelementptr %coord$0, %coord$0* %rec_$_407, i32 0, i32 1
 store i64 %res_$_412, i64* %field_ptr_$_413
 ret i8* %record_ptr_$_406
}

define void @updateScreen$20 (%$locals_tigermain* %$sl) {
 %locals_$_10 = alloca %$locals_updateScreen$20
 %arg_$_414 = getelementptr %$locals_updateScreen$20, %$locals_updateScreen$20* %locals_$_10, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_414
 %lnk_$_441 = getelementptr %$locals_updateScreen$20, %$locals_updateScreen$20* %locals_$_10, i32 0, i32 0
 %load_$_442 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_441
 %temp_$_445 = bitcast { i64, [7 x i8] }* @str_$_444 to i8*
 call void @print (i8* null, i8* %temp_$_445)
 %lnk_$_436 = getelementptr %$locals_updateScreen$20, %$locals_updateScreen$20* %locals_$_10, i32 0, i32 0
 %load_$_437 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_436
 %temp_$_440 = bitcast { i64, [1 x i8] }* @str_$_439 to i8*
 call void @print (i8* null, i8* %temp_$_440)
 %lnk_$_431 = getelementptr %$locals_updateScreen$20, %$locals_updateScreen$20* %locals_$_10, i32 0, i32 0
 %load_$_432 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_431
 %temp_$_435 = bitcast { i64, [1 x i8] }* @str_$_434 to i8*
 call void @print (i8* null, i8* %temp_$_435)
 %lnk_$_426 = getelementptr %$locals_updateScreen$20, %$locals_updateScreen$20* %locals_$_10, i32 0, i32 0
 %load_$_427 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_426
 %temp_$_430 = bitcast { i64, [1 x i8] }* @str_$_429 to i8*
 call void @print (i8* null, i8* %temp_$_430)
 %lnk_$_424 = getelementptr %$locals_updateScreen$20, %$locals_updateScreen$20* %locals_$_10, i32 0, i32 0
 %load_$_425 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_424
 call void @printborder$21 (%$locals_tigermain* %load_$_425)
 %lnk_$_422 = getelementptr %$locals_updateScreen$20, %$locals_updateScreen$20* %locals_$_10, i32 0, i32 0
 %load_$_423 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_422
 call void @printboard$22 (%$locals_tigermain* %load_$_423)
 %lnk_$_417 = getelementptr %$locals_updateScreen$20, %$locals_updateScreen$20* %locals_$_10, i32 0, i32 0
 %load_$_418 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_417
 %temp_$_421 = bitcast { i64, [1 x i8] }* @str_$_420 to i8*
 call void @print (i8* null, i8* %temp_$_421)
 %lnk_$_415 = getelementptr %$locals_updateScreen$20, %$locals_updateScreen$20* %locals_$_10, i32 0, i32 0
 %load_$_416 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_415
 call void @printcontrols$23 (%$locals_tigermain* %load_$_416)
 %lnk_$_446 = getelementptr %$locals_updateScreen$20, %$locals_updateScreen$20* %locals_$_10, i32 0, i32 0
 %load_$_447 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_446
 call void @flush (i8* null)
 ret void
}

define void @printborder$21 (%$locals_tigermain* %$sl) {
 %temp_$_533 = alloca i64
 %locals_$_11 = alloca %$locals_printborder$21
 %arg_$_449 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_449
 %temp_$_450 = sub i64 0, 1
 %temp_$_451 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 5
 store i64 %temp_$_450, i64* %temp_$_451
 %temp_$_452 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 4
 store i64 0, i64* %temp_$_452
 %lnk_$_453 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_454 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_453
 %temp_$_457 = bitcast { i64, [8 x i8] }* @str_$_456 to i8*
 %lnk_$_458 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_459 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_458
 %lnk_$_460 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_461 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_460
 %var_ptr_$_462 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_461, i32 0, i32 30
 %res_$_463 = load i64, i64* %var_ptr_$_462
 %ret_$_464 = call i8* @i2s$25 (%$locals_tigermain* %load_$_459, i64 %res_$_463)
 %ret_$_465 = call i8* @concat (i8* null, i8* %temp_$_457, i8* %ret_$_464)
 %temp_$_466 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 3
 store i8* %ret_$_465, i8** %temp_$_466
 %lnk_$_467 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_468 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_467
 %var_ptr_$_470 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 3
 %res_$_471 = load i8*, i8** %var_ptr_$_470
 %ret_$_472 = call i64 @size (i8* null, i8* %res_$_471)
 %temp_$_473 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 2
 store i64 %ret_$_472, i64* %temp_$_473
 %lnk_$_474 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_475 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_474
 %var_ptr_$_476 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 2
 %res_$_477 = load i64, i64* %var_ptr_$_476
 %ret_$_478 = call i64 @mod$18 (%$locals_tigermain* %load_$_475, i64 %res_$_477, i64 2)
 %temp_$_479 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 1
 store i64 %ret_$_478, i64* %temp_$_479
 br label %test_$_480
test_$_480:
 %var_ptr_$_483 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 4
 %res_$_484 = load i64, i64* %var_ptr_$_483
 %lnk_$_485 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_486 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_485
 %var_ptr_$_487 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_486, i32 0, i32 28
 %res_$_488 = load i64, i64* %var_ptr_$_487
 %temp_$_489 = icmp sle i64 %res_$_484, %res_$_488
 %temp_$_490 = zext i1 %temp_$_489 to i64
 %cnd_$_491 = icmp ne i64 %temp_$_490, 0
 br i1 %cnd_$_491, label %body_$_481, label %mrg_$_482
body_$_481:
 %lnk_$_588 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_589 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_588
 %temp_$_592 = bitcast { i64, [3 x i8] }* @str_$_591 to i8*
 call void @print (i8* null, i8* %temp_$_592)
 br label %test_$_501
test_$_501:
 %var_ptr_$_504 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 5
 %res_$_505 = load i64, i64* %var_ptr_$_504
 %lnk_$_506 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_507 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_506
 %var_ptr_$_508 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_507, i32 0, i32 33
 %res_$_509 = load i64, i64* %var_ptr_$_508
 %temp_$_510 = add i64 %res_$_509, 1
 %temp_$_511 = icmp sle i64 %res_$_505, %temp_$_510
 %temp_$_512 = zext i1 %temp_$_511 to i64
 %cnd_$_513 = icmp ne i64 %temp_$_512, 0
 br i1 %cnd_$_513, label %body_$_502, label %mrg_$_503
body_$_502:
 %lnk_$_517 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_518 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_517
 %var_ptr_$_519 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 5
 %res_$_520 = load i64, i64* %var_ptr_$_519
 %var_ptr_$_521 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 4
 %res_$_522 = load i64, i64* %var_ptr_$_521
 %ret_$_523 = call i64 @isBorder$17 (%$locals_tigermain* %load_$_518, i64 %res_$_520, i64 %res_$_522)
 %cnd_$_524 = icmp ne i64 %ret_$_523, 0
 br i1 %cnd_$_524, label %thn_$_514, label %els_$_515
thn_$_514:
 %lnk_$_525 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_526 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_525
 %temp_$_529 = bitcast { i64, [2 x i8] }* @str_$_528 to i8*
 call void @print (i8* null, i8* %temp_$_529)
 br label %mrg_$_516
els_$_515:
 %var_ptr_$_537 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 4
 %res_$_538 = load i64, i64* %var_ptr_$_537
 %temp_$_539 = icmp eq i64 %res_$_538, 2
 %temp_$_540 = zext i1 %temp_$_539 to i64
 %cnd_$_541 = icmp ne i64 %temp_$_540, 0
 br i1 %cnd_$_541, label %thn_$_534, label %els_$_535
thn_$_534:
 %var_ptr_$_542 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 5
 %res_$_543 = load i64, i64* %var_ptr_$_542
 %temp_$_544 = icmp eq i64 %res_$_543, 3
 %temp_$_545 = zext i1 %temp_$_544 to i64
 store i64 %temp_$_545, i64* %temp_$_533
 br label %mrg_$_536
els_$_535:
 store i64 0, i64* %temp_$_533
 br label %mrg_$_536
mrg_$_536:
 %res_$_546 = load i64, i64* %temp_$_533
 %cnd_$_547 = icmp ne i64 %res_$_546, 0
 br i1 %cnd_$_547, label %thn_$_530, label %els_$_531
thn_$_530:
 %lnk_$_558 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_559 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_558
 %var_ptr_$_561 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 3
 %res_$_562 = load i8*, i8** %var_ptr_$_561
 call void @print (i8* null, i8* %res_$_562)
 %var_ptr_$_548 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 5
 %res_$_549 = load i64, i64* %var_ptr_$_548
 %var_ptr_$_552 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 2
 %res_$_553 = load i64, i64* %var_ptr_$_552
 %cnd_$_554 = icmp eq i64 2, 0
 br i1 %cnd_$_554, label %thn_$_550, label %mrg_$_551
thn_$_550:
 call i64 @divisionByZero ()
 br label %mrg_$_551
mrg_$_551:
 %temp_$_555 = sdiv i64 %res_$_553, 2
 %temp_$_556 = add i64 %res_$_549, %temp_$_555
 %var_ptr_$_557 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 5
 store i64 %temp_$_556, i64* %var_ptr_$_557
 %var_ptr_$_566 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 1
 %res_$_567 = load i64, i64* %var_ptr_$_566
 %cnd_$_568 = icmp ne i64 %res_$_567, 0
 br i1 %cnd_$_568, label %thn_$_563, label %els_$_564
thn_$_563:
 %lnk_$_569 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_570 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_569
 %temp_$_573 = bitcast { i64, [1 x i8] }* @str_$_572 to i8*
 call void @print (i8* null, i8* %temp_$_573)
 br label %mrg_$_565
els_$_564:
 %lnk_$_574 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_575 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_574
 %temp_$_578 = bitcast { i64, [2 x i8] }* @str_$_577 to i8*
 call void @print (i8* null, i8* %temp_$_578)
 br label %mrg_$_565
mrg_$_565:
 br label %mrg_$_532
els_$_531:
 %lnk_$_579 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_580 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_579
 %temp_$_583 = bitcast { i64, [2 x i8] }* @str_$_582 to i8*
 call void @print (i8* null, i8* %temp_$_583)
 br label %mrg_$_532
mrg_$_532:
 br label %mrg_$_516
mrg_$_516:
 %var_ptr_$_584 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 5
 %res_$_585 = load i64, i64* %var_ptr_$_584
 %temp_$_586 = add i64 %res_$_585, 1
 %var_ptr_$_587 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 5
 store i64 %temp_$_586, i64* %var_ptr_$_587
 br label %test_$_501
mrg_$_503:
 %lnk_$_496 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 0
 %load_$_497 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_496
 %temp_$_500 = bitcast { i64, [1 x i8] }* @str_$_499 to i8*
 call void @print (i8* null, i8* %temp_$_500)
 %var_ptr_$_492 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 4
 %res_$_493 = load i64, i64* %var_ptr_$_492
 %temp_$_494 = add i64 %res_$_493, 1
 %var_ptr_$_495 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 4
 store i64 %temp_$_494, i64* %var_ptr_$_495
 %temp_$_593 = sub i64 0, 1
 %var_ptr_$_594 = getelementptr %$locals_printborder$21, %$locals_printborder$21* %locals_$_11, i32 0, i32 5
 store i64 %temp_$_593, i64* %var_ptr_$_594
 br label %test_$_480
mrg_$_482:
 ret void
}

define void @printboard$22 (%$locals_tigermain* %$sl) {
 %locals_$_12 = alloca %$locals_printboard$22
 %arg_$_595 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_595
 %temp_$_596 = sub i64 0, 1
 %temp_$_597 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 2
 store i64 %temp_$_596, i64* %temp_$_597
 br label %test_$_598
test_$_598:
 %var_ptr_$_601 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 2
 %res_$_602 = load i64, i64* %var_ptr_$_601
 %lnk_$_603 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_604 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_603
 %var_ptr_$_605 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_604, i32 0, i32 32
 %res_$_606 = load i64, i64* %var_ptr_$_605
 %temp_$_607 = add i64 %res_$_606, 1
 %temp_$_608 = icmp sle i64 %res_$_602, %temp_$_607
 %temp_$_609 = zext i1 %temp_$_608 to i64
 %cnd_$_610 = icmp ne i64 %temp_$_609, 0
 br i1 %cnd_$_610, label %body_$_599, label %mrg_$_600
body_$_599:
 %lnk_$_611 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_612 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_611
 %temp_$_615 = bitcast { i64, [3 x i8] }* @str_$_614 to i8*
 call void @print (i8* null, i8* %temp_$_615)
 %temp_$_616 = sub i64 0, 1
 %temp_$_617 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 1
 store i64 %temp_$_616, i64* %temp_$_617
 br label %test_$_618
test_$_618:
 %var_ptr_$_621 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 1
 %res_$_622 = load i64, i64* %var_ptr_$_621
 %lnk_$_623 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_624 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_623
 %var_ptr_$_625 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_624, i32 0, i32 33
 %res_$_626 = load i64, i64* %var_ptr_$_625
 %temp_$_627 = add i64 %res_$_626, 1
 %temp_$_628 = icmp sle i64 %res_$_622, %temp_$_627
 %temp_$_629 = zext i1 %temp_$_628 to i64
 %cnd_$_630 = icmp ne i64 %temp_$_629, 0
 br i1 %cnd_$_630, label %body_$_619, label %mrg_$_620
body_$_619:
 %lnk_$_634 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_635 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_634
 %var_ptr_$_636 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 1
 %res_$_637 = load i64, i64* %var_ptr_$_636
 %var_ptr_$_638 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 2
 %res_$_639 = load i64, i64* %var_ptr_$_638
 %ret_$_640 = call i64 @isHead$11 (%$locals_tigermain* %load_$_635, i64 %res_$_637, i64 %res_$_639)
 %cnd_$_641 = icmp ne i64 %ret_$_640, 0
 br i1 %cnd_$_641, label %thn_$_631, label %els_$_632
thn_$_631:
 %lnk_$_642 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_643 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_642
 %temp_$_646 = bitcast { i64, [2 x i8] }* @str_$_645 to i8*
 call void @print (i8* null, i8* %temp_$_646)
 br label %mrg_$_633
els_$_632:
 %lnk_$_650 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_651 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_650
 %var_ptr_$_652 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 1
 %res_$_653 = load i64, i64* %var_ptr_$_652
 %var_ptr_$_654 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 2
 %res_$_655 = load i64, i64* %var_ptr_$_654
 %ret_$_656 = call i64 @isFruit$16 (%$locals_tigermain* %load_$_651, i64 %res_$_653, i64 %res_$_655)
 %cnd_$_657 = icmp ne i64 %ret_$_656, 0
 br i1 %cnd_$_657, label %thn_$_647, label %els_$_648
thn_$_647:
 %lnk_$_658 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_659 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_658
 %temp_$_662 = bitcast { i64, [2 x i8] }* @str_$_661 to i8*
 call void @print (i8* null, i8* %temp_$_662)
 br label %mrg_$_649
els_$_648:
 %lnk_$_666 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_667 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_666
 %var_ptr_$_668 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 1
 %res_$_669 = load i64, i64* %var_ptr_$_668
 %var_ptr_$_670 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 2
 %res_$_671 = load i64, i64* %var_ptr_$_670
 %ret_$_672 = call i64 @isBody$12 (%$locals_tigermain* %load_$_667, i64 %res_$_669, i64 %res_$_671)
 %cnd_$_673 = icmp ne i64 %ret_$_672, 0
 br i1 %cnd_$_673, label %thn_$_663, label %els_$_664
thn_$_663:
 %lnk_$_674 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_675 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_674
 %temp_$_678 = bitcast { i64, [2 x i8] }* @str_$_677 to i8*
 call void @print (i8* null, i8* %temp_$_678)
 br label %mrg_$_665
els_$_664:
 %lnk_$_682 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_683 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_682
 %var_ptr_$_684 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 1
 %res_$_685 = load i64, i64* %var_ptr_$_684
 %var_ptr_$_686 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 2
 %res_$_687 = load i64, i64* %var_ptr_$_686
 %ret_$_688 = call i64 @isWall$13 (%$locals_tigermain* %load_$_683, i64 %res_$_685, i64 %res_$_687)
 %cnd_$_689 = icmp ne i64 %ret_$_688, 0
 br i1 %cnd_$_689, label %thn_$_679, label %els_$_680
thn_$_679:
 %lnk_$_690 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_691 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_690
 %temp_$_694 = bitcast { i64, [2 x i8] }* @str_$_693 to i8*
 call void @print (i8* null, i8* %temp_$_694)
 br label %mrg_$_681
els_$_680:
 %lnk_$_698 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_699 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_698
 %var_ptr_$_700 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 1
 %res_$_701 = load i64, i64* %var_ptr_$_700
 %var_ptr_$_702 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 2
 %res_$_703 = load i64, i64* %var_ptr_$_702
 %ret_$_704 = call i64 @isTile$14 (%$locals_tigermain* %load_$_699, i64 %res_$_701, i64 %res_$_703)
 %cnd_$_705 = icmp ne i64 %ret_$_704, 0
 br i1 %cnd_$_705, label %thn_$_695, label %els_$_696
thn_$_695:
 %lnk_$_706 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_707 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_706
 %temp_$_710 = bitcast { i64, [2 x i8] }* @str_$_709 to i8*
 call void @print (i8* null, i8* %temp_$_710)
 br label %mrg_$_697
els_$_696:
 %lnk_$_711 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_712 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_711
 %temp_$_715 = bitcast { i64, [2 x i8] }* @str_$_714 to i8*
 call void @print (i8* null, i8* %temp_$_715)
 br label %mrg_$_697
mrg_$_697:
 br label %mrg_$_681
mrg_$_681:
 br label %mrg_$_665
mrg_$_665:
 br label %mrg_$_649
mrg_$_649:
 br label %mrg_$_633
mrg_$_633:
 %var_ptr_$_716 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 1
 %res_$_717 = load i64, i64* %var_ptr_$_716
 %temp_$_718 = add i64 %res_$_717, 1
 %var_ptr_$_719 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 1
 store i64 %temp_$_718, i64* %var_ptr_$_719
 br label %test_$_618
mrg_$_620:
 %lnk_$_720 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 0
 %load_$_721 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_720
 %temp_$_724 = bitcast { i64, [1 x i8] }* @str_$_723 to i8*
 call void @print (i8* null, i8* %temp_$_724)
 %var_ptr_$_725 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 2
 %res_$_726 = load i64, i64* %var_ptr_$_725
 %temp_$_727 = add i64 %res_$_726, 1
 %var_ptr_$_728 = getelementptr %$locals_printboard$22, %$locals_printboard$22* %locals_$_12, i32 0, i32 2
 store i64 %temp_$_727, i64* %var_ptr_$_728
 br label %test_$_598
mrg_$_600:
 ret void
}

define void @printcontrols$23 (%$locals_tigermain* %$sl) {
 %locals_$_13 = alloca %$locals_printcontrols$23
 %arg_$_729 = getelementptr %$locals_printcontrols$23, %$locals_printcontrols$23* %locals_$_13, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_729
 %lnk_$_730 = getelementptr %$locals_printcontrols$23, %$locals_printcontrols$23* %locals_$_13, i32 0, i32 0
 %load_$_731 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_730
 %temp_$_734 = bitcast { i64, [71 x i8] }* @str_$_733 to i8*
 call void @print (i8* null, i8* %temp_$_734)
 ret void
}

define void @f$64 (%$locals_printint$24* %$sl, i64 %i$65) {
 %locals_$_14 = alloca %$locals_f$64
 %arg_$_735 = getelementptr %$locals_f$64, %$locals_f$64* %locals_$_14, i32 0, i32 1
 store i64 %i$65, i64* %arg_$_735
 %arg_$_736 = getelementptr %$locals_f$64, %$locals_f$64* %locals_$_14, i32 0, i32 0
 store %$locals_printint$24* %$sl, %$locals_printint$24** %arg_$_736
 %var_ptr_$_739 = getelementptr %$locals_f$64, %$locals_f$64* %locals_$_14, i32 0, i32 1
 %res_$_740 = load i64, i64* %var_ptr_$_739
 %temp_$_741 = icmp sgt i64 %res_$_740, 0
 %temp_$_742 = zext i1 %temp_$_741 to i64
 %cnd_$_743 = icmp ne i64 %temp_$_742, 0
 br i1 %cnd_$_743, label %thn_$_737, label %mrg_$_738
thn_$_737:
 %lnk_$_744 = getelementptr %$locals_f$64, %$locals_f$64* %locals_$_14, i32 0, i32 0
 %load_$_745 = load %$locals_printint$24*, %$locals_printint$24** %lnk_$_744
 %var_ptr_$_748 = getelementptr %$locals_f$64, %$locals_f$64* %locals_$_14, i32 0, i32 1
 %res_$_749 = load i64, i64* %var_ptr_$_748
 %cnd_$_750 = icmp eq i64 10, 0
 br i1 %cnd_$_750, label %thn_$_746, label %mrg_$_747
thn_$_746:
 call i64 @divisionByZero ()
 br label %mrg_$_747
mrg_$_747:
 %temp_$_751 = sdiv i64 %res_$_749, 10
 call void @f$64 (%$locals_printint$24* %load_$_745, i64 %temp_$_751)
 %lnk_$_752 = getelementptr %$locals_f$64, %$locals_f$64* %locals_$_14, i32 0, i32 0
 %load_$_753 = load %$locals_printint$24*, %$locals_printint$24** %lnk_$_752
 %lnk_$_754 = getelementptr %$locals_printint$24, %$locals_printint$24* %load_$_753, i32 0, i32 0
 %load_$_755 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_754
 %lnk_$_757 = getelementptr %$locals_f$64, %$locals_f$64* %locals_$_14, i32 0, i32 0
 %load_$_758 = load %$locals_printint$24*, %$locals_printint$24** %lnk_$_757
 %lnk_$_759 = getelementptr %$locals_printint$24, %$locals_printint$24* %load_$_758, i32 0, i32 0
 %load_$_760 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_759
 %var_ptr_$_762 = getelementptr %$locals_f$64, %$locals_f$64* %locals_$_14, i32 0, i32 1
 %res_$_763 = load i64, i64* %var_ptr_$_762
 %var_ptr_$_766 = getelementptr %$locals_f$64, %$locals_f$64* %locals_$_14, i32 0, i32 1
 %res_$_767 = load i64, i64* %var_ptr_$_766
 %cnd_$_768 = icmp eq i64 10, 0
 br i1 %cnd_$_768, label %thn_$_764, label %mrg_$_765
thn_$_764:
 call i64 @divisionByZero ()
 br label %mrg_$_765
mrg_$_765:
 %temp_$_769 = sdiv i64 %res_$_767, 10
 %temp_$_770 = mul i64 %temp_$_769, 10
 %temp_$_771 = sub i64 %res_$_763, %temp_$_770
 %lnk_$_772 = getelementptr %$locals_f$64, %$locals_f$64* %locals_$_14, i32 0, i32 0
 %load_$_773 = load %$locals_printint$24*, %$locals_printint$24** %lnk_$_772
 %lnk_$_774 = getelementptr %$locals_printint$24, %$locals_printint$24* %load_$_773, i32 0, i32 0
 %load_$_775 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_774
 %temp_$_778 = bitcast { i64, [1 x i8] }* @str_$_777 to i8*
 %ret_$_779 = call i64 @ord (i8* null, i8* %temp_$_778)
 %temp_$_780 = add i64 %temp_$_771, %ret_$_779
 %ret_$_781 = call i8* @chr (i8* null, i64 %temp_$_780)
 call void @print (i8* null, i8* %ret_$_781)
 br label %mrg_$_738
mrg_$_738:
 ret void
}

define void @printint$24 (%$locals_tigermain* %$sl, i64 %i$63) {
 %locals_$_15 = alloca %$locals_printint$24
 %arg_$_782 = getelementptr %$locals_printint$24, %$locals_printint$24* %locals_$_15, i32 0, i32 2
 store i64 %i$63, i64* %arg_$_782
 %arg_$_783 = getelementptr %$locals_printint$24, %$locals_printint$24* %locals_$_15, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_783
 %var_ptr_$_787 = getelementptr %$locals_printint$24, %$locals_printint$24* %locals_$_15, i32 0, i32 2
 %res_$_788 = load i64, i64* %var_ptr_$_787
 %temp_$_789 = icmp slt i64 %res_$_788, 0
 %temp_$_790 = zext i1 %temp_$_789 to i64
 %cnd_$_791 = icmp ne i64 %temp_$_790, 0
 br i1 %cnd_$_791, label %thn_$_784, label %els_$_785
thn_$_784:
 %lnk_$_792 = getelementptr %$locals_printint$24, %$locals_printint$24* %locals_$_15, i32 0, i32 0
 %load_$_793 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_792
 %temp_$_796 = bitcast { i64, [1 x i8] }* @str_$_795 to i8*
 call void @print (i8* null, i8* %temp_$_796)
 %var_ptr_$_797 = getelementptr %$locals_printint$24, %$locals_printint$24* %locals_$_15, i32 0, i32 2
 %res_$_798 = load i64, i64* %var_ptr_$_797
 %temp_$_799 = sub i64 0, %res_$_798
 call void @f$64 (%$locals_printint$24* %locals_$_15, i64 %temp_$_799)
 br label %mrg_$_786
els_$_785:
 %var_ptr_$_803 = getelementptr %$locals_printint$24, %$locals_printint$24* %locals_$_15, i32 0, i32 2
 %res_$_804 = load i64, i64* %var_ptr_$_803
 %temp_$_805 = icmp sgt i64 %res_$_804, 0
 %temp_$_806 = zext i1 %temp_$_805 to i64
 %cnd_$_807 = icmp ne i64 %temp_$_806, 0
 br i1 %cnd_$_807, label %thn_$_800, label %els_$_801
thn_$_800:
 %var_ptr_$_808 = getelementptr %$locals_printint$24, %$locals_printint$24* %locals_$_15, i32 0, i32 2
 %res_$_809 = load i64, i64* %var_ptr_$_808
 call void @f$64 (%$locals_printint$24* %locals_$_15, i64 %res_$_809)
 br label %mrg_$_802
els_$_801:
 %lnk_$_810 = getelementptr %$locals_printint$24, %$locals_printint$24* %locals_$_15, i32 0, i32 0
 %load_$_811 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_810
 %temp_$_814 = bitcast { i64, [1 x i8] }* @str_$_813 to i8*
 call void @print (i8* null, i8* %temp_$_814)
 br label %mrg_$_802
mrg_$_802:
 br label %mrg_$_786
mrg_$_786:
 ret void
}

define i8* @f$67 (%$locals_i2s$25* %$sl, i64 %i$68) {
 %temp_$_817 = alloca i8*
 %locals_$_16 = alloca %$locals_f$67
 %arg_$_815 = getelementptr %$locals_f$67, %$locals_f$67* %locals_$_16, i32 0, i32 1
 store i64 %i$68, i64* %arg_$_815
 %arg_$_816 = getelementptr %$locals_f$67, %$locals_f$67* %locals_$_16, i32 0, i32 0
 store %$locals_i2s$25* %$sl, %$locals_i2s$25** %arg_$_816
 %var_ptr_$_821 = getelementptr %$locals_f$67, %$locals_f$67* %locals_$_16, i32 0, i32 1
 %res_$_822 = load i64, i64* %var_ptr_$_821
 %temp_$_823 = icmp sgt i64 %res_$_822, 0
 %temp_$_824 = zext i1 %temp_$_823 to i64
 %cnd_$_825 = icmp ne i64 %temp_$_824, 0
 br i1 %cnd_$_825, label %thn_$_818, label %els_$_819
thn_$_818:
 %lnk_$_826 = getelementptr %$locals_f$67, %$locals_f$67* %locals_$_16, i32 0, i32 0
 %load_$_827 = load %$locals_i2s$25*, %$locals_i2s$25** %lnk_$_826
 %lnk_$_828 = getelementptr %$locals_i2s$25, %$locals_i2s$25* %load_$_827, i32 0, i32 0
 %load_$_829 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_828
 %lnk_$_831 = getelementptr %$locals_f$67, %$locals_f$67* %locals_$_16, i32 0, i32 0
 %load_$_832 = load %$locals_i2s$25*, %$locals_i2s$25** %lnk_$_831
 %var_ptr_$_835 = getelementptr %$locals_f$67, %$locals_f$67* %locals_$_16, i32 0, i32 1
 %res_$_836 = load i64, i64* %var_ptr_$_835
 %cnd_$_837 = icmp eq i64 10, 0
 br i1 %cnd_$_837, label %thn_$_833, label %mrg_$_834
thn_$_833:
 call i64 @divisionByZero ()
 br label %mrg_$_834
mrg_$_834:
 %temp_$_838 = sdiv i64 %res_$_836, 10
 %ret_$_839 = call i8* @f$67 (%$locals_i2s$25* %load_$_832, i64 %temp_$_838)
 %lnk_$_840 = getelementptr %$locals_f$67, %$locals_f$67* %locals_$_16, i32 0, i32 0
 %load_$_841 = load %$locals_i2s$25*, %$locals_i2s$25** %lnk_$_840
 %lnk_$_842 = getelementptr %$locals_i2s$25, %$locals_i2s$25* %load_$_841, i32 0, i32 0
 %load_$_843 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_842
 %var_ptr_$_845 = getelementptr %$locals_f$67, %$locals_f$67* %locals_$_16, i32 0, i32 1
 %res_$_846 = load i64, i64* %var_ptr_$_845
 %var_ptr_$_849 = getelementptr %$locals_f$67, %$locals_f$67* %locals_$_16, i32 0, i32 1
 %res_$_850 = load i64, i64* %var_ptr_$_849
 %cnd_$_851 = icmp eq i64 10, 0
 br i1 %cnd_$_851, label %thn_$_847, label %mrg_$_848
thn_$_847:
 call i64 @divisionByZero ()
 br label %mrg_$_848
mrg_$_848:
 %temp_$_852 = sdiv i64 %res_$_850, 10
 %temp_$_853 = mul i64 %temp_$_852, 10
 %temp_$_854 = sub i64 %res_$_846, %temp_$_853
 %lnk_$_855 = getelementptr %$locals_f$67, %$locals_f$67* %locals_$_16, i32 0, i32 0
 %load_$_856 = load %$locals_i2s$25*, %$locals_i2s$25** %lnk_$_855
 %lnk_$_857 = getelementptr %$locals_i2s$25, %$locals_i2s$25* %load_$_856, i32 0, i32 0
 %load_$_858 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_857
 %temp_$_861 = bitcast { i64, [1 x i8] }* @str_$_860 to i8*
 %ret_$_862 = call i64 @ord (i8* null, i8* %temp_$_861)
 %temp_$_863 = add i64 %temp_$_854, %ret_$_862
 %ret_$_864 = call i8* @chr (i8* null, i64 %temp_$_863)
 %ret_$_865 = call i8* @concat (i8* null, i8* %ret_$_839, i8* %ret_$_864)
 store i8* %ret_$_865, i8** %temp_$_817
 br label %mrg_$_820
els_$_819:
 %temp_$_867 = bitcast { i64, [0 x i8] }* @str_$_866 to i8*
 store i8* %temp_$_867, i8** %temp_$_817
 br label %mrg_$_820
mrg_$_820:
 %res_$_868 = load i8*, i8** %temp_$_817
 ret i8* %res_$_868
}

define i8* @i2s$25 (%$locals_tigermain* %$sl, i64 %i$66) {
 %temp_$_871 = alloca i8*
 %locals_$_17 = alloca %$locals_i2s$25
 %arg_$_869 = getelementptr %$locals_i2s$25, %$locals_i2s$25* %locals_$_17, i32 0, i32 2
 store i64 %i$66, i64* %arg_$_869
 %arg_$_870 = getelementptr %$locals_i2s$25, %$locals_i2s$25* %locals_$_17, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_870
 %var_ptr_$_875 = getelementptr %$locals_i2s$25, %$locals_i2s$25* %locals_$_17, i32 0, i32 2
 %res_$_876 = load i64, i64* %var_ptr_$_875
 %temp_$_877 = icmp eq i64 %res_$_876, 0
 %temp_$_878 = zext i1 %temp_$_877 to i64
 %cnd_$_879 = icmp ne i64 %temp_$_878, 0
 br i1 %cnd_$_879, label %thn_$_872, label %els_$_873
thn_$_872:
 %temp_$_881 = bitcast { i64, [1 x i8] }* @str_$_880 to i8*
 store i8* %temp_$_881, i8** %temp_$_871
 br label %mrg_$_874
els_$_873:
 %var_ptr_$_882 = getelementptr %$locals_i2s$25, %$locals_i2s$25* %locals_$_17, i32 0, i32 2
 %res_$_883 = load i64, i64* %var_ptr_$_882
 %ret_$_884 = call i8* @f$67 (%$locals_i2s$25* %locals_$_17, i64 %res_$_883)
 store i8* %ret_$_884, i8** %temp_$_871
 br label %mrg_$_874
mrg_$_874:
 %res_$_885 = load i8*, i8** %temp_$_871
 ret i8* %res_$_885
}

define void @handleFruit$26 (%$locals_tigermain* %$sl) {
 %locals_$_18 = alloca %$locals_handleFruit$26
 %arg_$_886 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_886
 %size_ptr_$_923 = getelementptr %p_part$1, %p_part$1* null, i32 1
 %size_$_924 = ptrtoint %p_part$1* %size_ptr_$_923 to i64
 %record_ptr_$_925 = call i8* @allocRecord (i64 %size_$_924)
 %rec_$_926 = bitcast i8* %record_ptr_$_925 to %p_part$1*
 %lnk_$_927 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_928 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_927
 %var_ptr_$_929 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_928, i32 0, i32 29
 %load_$_930 = load i8*, i8** %var_ptr_$_929
 %record_ptr_$_931 = bitcast i8* %load_$_930 to %coord$0*
 %int_of_ptr_$_934 = ptrtoint i8* %load_$_930 to i64
 %cnd_$_935 = icmp eq i64 %int_of_ptr_$_934, 0
 br i1 %cnd_$_935, label %thn_$_932, label %mrg_$_933
thn_$_932:
 call i64 @recFieldError ()
 br label %mrg_$_933
mrg_$_933:
 %field_ptr_$_936 = getelementptr %coord$0, %coord$0* %record_ptr_$_931, i32 0, i32 0
 %res_$_937 = load i64, i64* %field_ptr_$_936
 %field_ptr_$_938 = getelementptr %p_part$1, %p_part$1* %rec_$_926, i32 0, i32 0
 store i64 %res_$_937, i64* %field_ptr_$_938
 %lnk_$_939 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_940 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_939
 %var_ptr_$_941 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_940, i32 0, i32 29
 %load_$_942 = load i8*, i8** %var_ptr_$_941
 %record_ptr_$_943 = bitcast i8* %load_$_942 to %coord$0*
 %int_of_ptr_$_946 = ptrtoint i8* %load_$_942 to i64
 %cnd_$_947 = icmp eq i64 %int_of_ptr_$_946, 0
 br i1 %cnd_$_947, label %thn_$_944, label %mrg_$_945
thn_$_944:
 call i64 @recFieldError ()
 br label %mrg_$_945
mrg_$_945:
 %field_ptr_$_948 = getelementptr %coord$0, %coord$0* %record_ptr_$_943, i32 0, i32 1
 %res_$_949 = load i64, i64* %field_ptr_$_948
 %field_ptr_$_950 = getelementptr %p_part$1, %p_part$1* %rec_$_926, i32 0, i32 1
 store i64 %res_$_949, i64* %field_ptr_$_950
 %lnk_$_951 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_952 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_951
 %var_ptr_$_953 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_952, i32 0, i32 25
 %res_$_954 = load i8*, i8** %var_ptr_$_953
 %field_ptr_$_955 = getelementptr %p_part$1, %p_part$1* %rec_$_926, i32 0, i32 2
 store i8* %res_$_954, i8** %field_ptr_$_955
 %lnk_$_956 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_957 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_956
 %var_ptr_$_958 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_957, i32 0, i32 25
 store i8* %record_ptr_$_925, i8** %var_ptr_$_958
 %lnk_$_895 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_896 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_895
 %lnk_$_897 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_898 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_897
 %var_ptr_$_899 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_898, i32 0, i32 29
 %load_$_900 = load i8*, i8** %var_ptr_$_899
 %record_ptr_$_901 = bitcast i8* %load_$_900 to %coord$0*
 %int_of_ptr_$_904 = ptrtoint i8* %load_$_900 to i64
 %cnd_$_905 = icmp eq i64 %int_of_ptr_$_904, 0
 br i1 %cnd_$_905, label %thn_$_902, label %mrg_$_903
thn_$_902:
 call i64 @recFieldError ()
 br label %mrg_$_903
mrg_$_903:
 %field_ptr_$_906 = getelementptr %coord$0, %coord$0* %record_ptr_$_901, i32 0, i32 0
 %res_$_907 = load i64, i64* %field_ptr_$_906
 %lnk_$_908 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_909 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_908
 %var_ptr_$_910 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_909, i32 0, i32 29
 %load_$_911 = load i8*, i8** %var_ptr_$_910
 %record_ptr_$_912 = bitcast i8* %load_$_911 to %coord$0*
 %int_of_ptr_$_915 = ptrtoint i8* %load_$_911 to i64
 %cnd_$_916 = icmp eq i64 %int_of_ptr_$_915, 0
 br i1 %cnd_$_916, label %thn_$_913, label %mrg_$_914
thn_$_913:
 call i64 @recFieldError ()
 br label %mrg_$_914
mrg_$_914:
 %field_ptr_$_917 = getelementptr %coord$0, %coord$0* %record_ptr_$_912, i32 0, i32 1
 %res_$_918 = load i64, i64* %field_ptr_$_917
 %ret_$_919 = call i8* @randomCoord$19 (%$locals_tigermain* %load_$_896, i64 %res_$_907, i64 %res_$_918)
 %lnk_$_920 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_921 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_920
 %var_ptr_$_922 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_921, i32 0, i32 29
 store i8* %ret_$_919, i8** %var_ptr_$_922
 %lnk_$_887 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_888 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_887
 %var_ptr_$_889 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_888, i32 0, i32 30
 %res_$_890 = load i64, i64* %var_ptr_$_889
 %temp_$_891 = add i64 %res_$_890, 1
 %lnk_$_892 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_893 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_892
 %var_ptr_$_894 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_893, i32 0, i32 30
 store i64 %temp_$_891, i64* %var_ptr_$_894
 br label %test_$_959
test_$_959:
 %lnk_$_962 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_963 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_962
 %lnk_$_964 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_965 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_964
 %var_ptr_$_966 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_965, i32 0, i32 29
 %load_$_967 = load i8*, i8** %var_ptr_$_966
 %record_ptr_$_968 = bitcast i8* %load_$_967 to %coord$0*
 %int_of_ptr_$_971 = ptrtoint i8* %load_$_967 to i64
 %cnd_$_972 = icmp eq i64 %int_of_ptr_$_971, 0
 br i1 %cnd_$_972, label %thn_$_969, label %mrg_$_970
thn_$_969:
 call i64 @recFieldError ()
 br label %mrg_$_970
mrg_$_970:
 %field_ptr_$_973 = getelementptr %coord$0, %coord$0* %record_ptr_$_968, i32 0, i32 0
 %res_$_974 = load i64, i64* %field_ptr_$_973
 %lnk_$_975 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_976 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_975
 %var_ptr_$_977 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_976, i32 0, i32 29
 %load_$_978 = load i8*, i8** %var_ptr_$_977
 %record_ptr_$_979 = bitcast i8* %load_$_978 to %coord$0*
 %int_of_ptr_$_982 = ptrtoint i8* %load_$_978 to i64
 %cnd_$_983 = icmp eq i64 %int_of_ptr_$_982, 0
 br i1 %cnd_$_983, label %thn_$_980, label %mrg_$_981
thn_$_980:
 call i64 @recFieldError ()
 br label %mrg_$_981
mrg_$_981:
 %field_ptr_$_984 = getelementptr %coord$0, %coord$0* %record_ptr_$_979, i32 0, i32 1
 %res_$_985 = load i64, i64* %field_ptr_$_984
 %ret_$_986 = call i64 @isHead$11 (%$locals_tigermain* %load_$_963, i64 %res_$_974, i64 %res_$_985)
 %cnd_$_987 = icmp ne i64 %ret_$_986, 0
 br i1 %cnd_$_987, label %body_$_960, label %mrg_$_961
body_$_960:
 %lnk_$_988 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_989 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_988
 %lnk_$_990 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_991 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_990
 %var_ptr_$_992 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_991, i32 0, i32 29
 %load_$_993 = load i8*, i8** %var_ptr_$_992
 %record_ptr_$_994 = bitcast i8* %load_$_993 to %coord$0*
 %int_of_ptr_$_997 = ptrtoint i8* %load_$_993 to i64
 %cnd_$_998 = icmp eq i64 %int_of_ptr_$_997, 0
 br i1 %cnd_$_998, label %thn_$_995, label %mrg_$_996
thn_$_995:
 call i64 @recFieldError ()
 br label %mrg_$_996
mrg_$_996:
 %field_ptr_$_999 = getelementptr %coord$0, %coord$0* %record_ptr_$_994, i32 0, i32 0
 %res_$_1000 = load i64, i64* %field_ptr_$_999
 %temp_$_1001 = add i64 %res_$_1000, 5
 %lnk_$_1002 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_1003 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1002
 %var_ptr_$_1004 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1003, i32 0, i32 29
 %load_$_1005 = load i8*, i8** %var_ptr_$_1004
 %record_ptr_$_1006 = bitcast i8* %load_$_1005 to %coord$0*
 %int_of_ptr_$_1009 = ptrtoint i8* %load_$_1005 to i64
 %cnd_$_1010 = icmp eq i64 %int_of_ptr_$_1009, 0
 br i1 %cnd_$_1010, label %thn_$_1007, label %mrg_$_1008
thn_$_1007:
 call i64 @recFieldError ()
 br label %mrg_$_1008
mrg_$_1008:
 %field_ptr_$_1011 = getelementptr %coord$0, %coord$0* %record_ptr_$_1006, i32 0, i32 1
 %res_$_1012 = load i64, i64* %field_ptr_$_1011
 %temp_$_1013 = add i64 %res_$_1012, 3
 %ret_$_1014 = call i8* @randomCoord$19 (%$locals_tigermain* %load_$_989, i64 %temp_$_1001, i64 %temp_$_1013)
 %lnk_$_1015 = getelementptr %$locals_handleFruit$26, %$locals_handleFruit$26* %locals_$_18, i32 0, i32 0
 %load_$_1016 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1015
 %var_ptr_$_1017 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1016, i32 0, i32 29
 store i8* %ret_$_1014, i8** %var_ptr_$_1017
 br label %test_$_959
mrg_$_961:
 ret void
}

define void @handleMovement$27 (%$locals_tigermain* %$sl, i8* %buffer$69) {
 %temp_$_1193 = alloca i64
 %temp_$_1152 = alloca i64
 %temp_$_1110 = alloca i64
 %temp_$_1068 = alloca i64
 %temp_$_1025 = alloca i64
 %locals_$_19 = alloca %$locals_handleMovement$27
 %arg_$_1018 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 3
 store i8* %buffer$69, i8** %arg_$_1018
 %arg_$_1019 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_1019
 %temp_$_1020 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 2
 store i64 0, i64* %temp_$_1020
 %temp_$_1021 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 1
 store i64 0, i64* %temp_$_1021
 %var_ptr_$_1029 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 3
 %res_$_1030 = load i8*, i8** %var_ptr_$_1029
 %temp_$_1032 = bitcast { i64, [1 x i8] }* @str_$_1031 to i8*
 %temp_$_1033 = call i64 @stringEqual (i8* %res_$_1030, i8* %temp_$_1032)
 %cnd_$_1034 = icmp ne i64 %temp_$_1033, 0
 br i1 %cnd_$_1034, label %thn_$_1026, label %els_$_1027
thn_$_1026:
 %lnk_$_1035 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1036 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1035
 %lnk_$_1037 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1038 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1037
 %var_ptr_$_1039 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1038, i32 0, i32 25
 %load_$_1040 = load i8*, i8** %var_ptr_$_1039
 %record_ptr_$_1041 = bitcast i8* %load_$_1040 to %p_part$1*
 %int_of_ptr_$_1044 = ptrtoint i8* %load_$_1040 to i64
 %cnd_$_1045 = icmp eq i64 %int_of_ptr_$_1044, 0
 br i1 %cnd_$_1045, label %thn_$_1042, label %mrg_$_1043
thn_$_1042:
 call i64 @recFieldError ()
 br label %mrg_$_1043
mrg_$_1043:
 %field_ptr_$_1046 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1041, i32 0, i32 0
 %res_$_1047 = load i64, i64* %field_ptr_$_1046
 %temp_$_1048 = sub i64 %res_$_1047, 1
 %lnk_$_1049 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1050 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1049
 %var_ptr_$_1051 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1050, i32 0, i32 25
 %load_$_1052 = load i8*, i8** %var_ptr_$_1051
 %record_ptr_$_1053 = bitcast i8* %load_$_1052 to %p_part$1*
 %int_of_ptr_$_1056 = ptrtoint i8* %load_$_1052 to i64
 %cnd_$_1057 = icmp eq i64 %int_of_ptr_$_1056, 0
 br i1 %cnd_$_1057, label %thn_$_1054, label %mrg_$_1055
thn_$_1054:
 call i64 @recFieldError ()
 br label %mrg_$_1055
mrg_$_1055:
 %field_ptr_$_1058 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1053, i32 0, i32 1
 %res_$_1059 = load i64, i64* %field_ptr_$_1058
 %ret_$_1060 = call i64 @isLegalMove$15 (%$locals_tigermain* %load_$_1036, i64 %temp_$_1048, i64 %res_$_1059)
 store i64 %ret_$_1060, i64* %temp_$_1025
 br label %mrg_$_1028
els_$_1027:
 store i64 0, i64* %temp_$_1025
 br label %mrg_$_1028
mrg_$_1028:
 %res_$_1061 = load i64, i64* %temp_$_1025
 %cnd_$_1062 = icmp ne i64 %res_$_1061, 0
 br i1 %cnd_$_1062, label %thn_$_1022, label %els_$_1023
thn_$_1022:
 %temp_$_1063 = sub i64 0, 1
 %var_ptr_$_1064 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 2
 store i64 %temp_$_1063, i64* %var_ptr_$_1064
 br label %mrg_$_1024
els_$_1023:
 %var_ptr_$_1072 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 3
 %res_$_1073 = load i8*, i8** %var_ptr_$_1072
 %temp_$_1075 = bitcast { i64, [1 x i8] }* @str_$_1074 to i8*
 %temp_$_1076 = call i64 @stringEqual (i8* %res_$_1073, i8* %temp_$_1075)
 %cnd_$_1077 = icmp ne i64 %temp_$_1076, 0
 br i1 %cnd_$_1077, label %thn_$_1069, label %els_$_1070
thn_$_1069:
 %lnk_$_1078 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1079 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1078
 %lnk_$_1080 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1081 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1080
 %var_ptr_$_1082 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1081, i32 0, i32 25
 %load_$_1083 = load i8*, i8** %var_ptr_$_1082
 %record_ptr_$_1084 = bitcast i8* %load_$_1083 to %p_part$1*
 %int_of_ptr_$_1087 = ptrtoint i8* %load_$_1083 to i64
 %cnd_$_1088 = icmp eq i64 %int_of_ptr_$_1087, 0
 br i1 %cnd_$_1088, label %thn_$_1085, label %mrg_$_1086
thn_$_1085:
 call i64 @recFieldError ()
 br label %mrg_$_1086
mrg_$_1086:
 %field_ptr_$_1089 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1084, i32 0, i32 0
 %res_$_1090 = load i64, i64* %field_ptr_$_1089
 %temp_$_1091 = add i64 %res_$_1090, 1
 %lnk_$_1092 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1093 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1092
 %var_ptr_$_1094 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1093, i32 0, i32 25
 %load_$_1095 = load i8*, i8** %var_ptr_$_1094
 %record_ptr_$_1096 = bitcast i8* %load_$_1095 to %p_part$1*
 %int_of_ptr_$_1099 = ptrtoint i8* %load_$_1095 to i64
 %cnd_$_1100 = icmp eq i64 %int_of_ptr_$_1099, 0
 br i1 %cnd_$_1100, label %thn_$_1097, label %mrg_$_1098
thn_$_1097:
 call i64 @recFieldError ()
 br label %mrg_$_1098
mrg_$_1098:
 %field_ptr_$_1101 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1096, i32 0, i32 1
 %res_$_1102 = load i64, i64* %field_ptr_$_1101
 %ret_$_1103 = call i64 @isLegalMove$15 (%$locals_tigermain* %load_$_1079, i64 %temp_$_1091, i64 %res_$_1102)
 store i64 %ret_$_1103, i64* %temp_$_1068
 br label %mrg_$_1071
els_$_1070:
 store i64 0, i64* %temp_$_1068
 br label %mrg_$_1071
mrg_$_1071:
 %res_$_1104 = load i64, i64* %temp_$_1068
 %cnd_$_1105 = icmp ne i64 %res_$_1104, 0
 br i1 %cnd_$_1105, label %thn_$_1065, label %els_$_1066
thn_$_1065:
 %var_ptr_$_1106 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 2
 store i64 1, i64* %var_ptr_$_1106
 br label %mrg_$_1067
els_$_1066:
 %var_ptr_$_1114 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 3
 %res_$_1115 = load i8*, i8** %var_ptr_$_1114
 %temp_$_1117 = bitcast { i64, [1 x i8] }* @str_$_1116 to i8*
 %temp_$_1118 = call i64 @stringEqual (i8* %res_$_1115, i8* %temp_$_1117)
 %cnd_$_1119 = icmp ne i64 %temp_$_1118, 0
 br i1 %cnd_$_1119, label %thn_$_1111, label %els_$_1112
thn_$_1111:
 %lnk_$_1120 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1121 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1120
 %lnk_$_1122 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1123 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1122
 %var_ptr_$_1124 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1123, i32 0, i32 25
 %load_$_1125 = load i8*, i8** %var_ptr_$_1124
 %record_ptr_$_1126 = bitcast i8* %load_$_1125 to %p_part$1*
 %int_of_ptr_$_1129 = ptrtoint i8* %load_$_1125 to i64
 %cnd_$_1130 = icmp eq i64 %int_of_ptr_$_1129, 0
 br i1 %cnd_$_1130, label %thn_$_1127, label %mrg_$_1128
thn_$_1127:
 call i64 @recFieldError ()
 br label %mrg_$_1128
mrg_$_1128:
 %field_ptr_$_1131 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1126, i32 0, i32 0
 %res_$_1132 = load i64, i64* %field_ptr_$_1131
 %lnk_$_1133 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1134 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1133
 %var_ptr_$_1135 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1134, i32 0, i32 25
 %load_$_1136 = load i8*, i8** %var_ptr_$_1135
 %record_ptr_$_1137 = bitcast i8* %load_$_1136 to %p_part$1*
 %int_of_ptr_$_1140 = ptrtoint i8* %load_$_1136 to i64
 %cnd_$_1141 = icmp eq i64 %int_of_ptr_$_1140, 0
 br i1 %cnd_$_1141, label %thn_$_1138, label %mrg_$_1139
thn_$_1138:
 call i64 @recFieldError ()
 br label %mrg_$_1139
mrg_$_1139:
 %field_ptr_$_1142 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1137, i32 0, i32 1
 %res_$_1143 = load i64, i64* %field_ptr_$_1142
 %temp_$_1144 = sub i64 %res_$_1143, 1
 %ret_$_1145 = call i64 @isLegalMove$15 (%$locals_tigermain* %load_$_1121, i64 %res_$_1132, i64 %temp_$_1144)
 store i64 %ret_$_1145, i64* %temp_$_1110
 br label %mrg_$_1113
els_$_1112:
 store i64 0, i64* %temp_$_1110
 br label %mrg_$_1113
mrg_$_1113:
 %res_$_1146 = load i64, i64* %temp_$_1110
 %cnd_$_1147 = icmp ne i64 %res_$_1146, 0
 br i1 %cnd_$_1147, label %thn_$_1107, label %els_$_1108
thn_$_1107:
 %temp_$_1148 = sub i64 0, 1
 %var_ptr_$_1149 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 1
 store i64 %temp_$_1148, i64* %var_ptr_$_1149
 br label %mrg_$_1109
els_$_1108:
 %var_ptr_$_1156 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 3
 %res_$_1157 = load i8*, i8** %var_ptr_$_1156
 %temp_$_1159 = bitcast { i64, [1 x i8] }* @str_$_1158 to i8*
 %temp_$_1160 = call i64 @stringEqual (i8* %res_$_1157, i8* %temp_$_1159)
 %cnd_$_1161 = icmp ne i64 %temp_$_1160, 0
 br i1 %cnd_$_1161, label %thn_$_1153, label %els_$_1154
thn_$_1153:
 %lnk_$_1162 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1163 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1162
 %lnk_$_1164 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1165 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1164
 %var_ptr_$_1166 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1165, i32 0, i32 25
 %load_$_1167 = load i8*, i8** %var_ptr_$_1166
 %record_ptr_$_1168 = bitcast i8* %load_$_1167 to %p_part$1*
 %int_of_ptr_$_1171 = ptrtoint i8* %load_$_1167 to i64
 %cnd_$_1172 = icmp eq i64 %int_of_ptr_$_1171, 0
 br i1 %cnd_$_1172, label %thn_$_1169, label %mrg_$_1170
thn_$_1169:
 call i64 @recFieldError ()
 br label %mrg_$_1170
mrg_$_1170:
 %field_ptr_$_1173 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1168, i32 0, i32 0
 %res_$_1174 = load i64, i64* %field_ptr_$_1173
 %lnk_$_1175 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1176 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1175
 %var_ptr_$_1177 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1176, i32 0, i32 25
 %load_$_1178 = load i8*, i8** %var_ptr_$_1177
 %record_ptr_$_1179 = bitcast i8* %load_$_1178 to %p_part$1*
 %int_of_ptr_$_1182 = ptrtoint i8* %load_$_1178 to i64
 %cnd_$_1183 = icmp eq i64 %int_of_ptr_$_1182, 0
 br i1 %cnd_$_1183, label %thn_$_1180, label %mrg_$_1181
thn_$_1180:
 call i64 @recFieldError ()
 br label %mrg_$_1181
mrg_$_1181:
 %field_ptr_$_1184 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1179, i32 0, i32 1
 %res_$_1185 = load i64, i64* %field_ptr_$_1184
 %temp_$_1186 = add i64 %res_$_1185, 1
 %ret_$_1187 = call i64 @isLegalMove$15 (%$locals_tigermain* %load_$_1163, i64 %res_$_1174, i64 %temp_$_1186)
 store i64 %ret_$_1187, i64* %temp_$_1152
 br label %mrg_$_1155
els_$_1154:
 store i64 0, i64* %temp_$_1152
 br label %mrg_$_1155
mrg_$_1155:
 %res_$_1188 = load i64, i64* %temp_$_1152
 %cnd_$_1189 = icmp ne i64 %res_$_1188, 0
 br i1 %cnd_$_1189, label %thn_$_1150, label %mrg_$_1151
thn_$_1150:
 %var_ptr_$_1190 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 1
 store i64 1, i64* %var_ptr_$_1190
 br label %mrg_$_1151
mrg_$_1151:
 br label %mrg_$_1109
mrg_$_1109:
 br label %mrg_$_1067
mrg_$_1067:
 br label %mrg_$_1024
mrg_$_1024:
 %var_ptr_$_1197 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 2
 %res_$_1198 = load i64, i64* %var_ptr_$_1197
 %temp_$_1199 = icmp ne i64 %res_$_1198, 0
 %temp_$_1200 = zext i1 %temp_$_1199 to i64
 %cnd_$_1201 = icmp ne i64 %temp_$_1200, 0
 br i1 %cnd_$_1201, label %thn_$_1194, label %els_$_1195
thn_$_1194:
 store i64 1, i64* %temp_$_1193
 br label %mrg_$_1196
els_$_1195:
 %var_ptr_$_1202 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 1
 %res_$_1203 = load i64, i64* %var_ptr_$_1202
 %temp_$_1204 = icmp ne i64 %res_$_1203, 0
 %temp_$_1205 = zext i1 %temp_$_1204 to i64
 store i64 %temp_$_1205, i64* %temp_$_1193
 br label %mrg_$_1196
mrg_$_1196:
 %res_$_1206 = load i64, i64* %temp_$_1193
 %cnd_$_1207 = icmp ne i64 %res_$_1206, 0
 br i1 %cnd_$_1207, label %thn_$_1191, label %mrg_$_1192
thn_$_1191:
 %lnk_$_1213 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1214 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1213
 %lnk_$_1215 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1216 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1215
 %var_ptr_$_1217 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1216, i32 0, i32 25
 %load_$_1218 = load i8*, i8** %var_ptr_$_1217
 %record_ptr_$_1219 = bitcast i8* %load_$_1218 to %p_part$1*
 %int_of_ptr_$_1222 = ptrtoint i8* %load_$_1218 to i64
 %cnd_$_1223 = icmp eq i64 %int_of_ptr_$_1222, 0
 br i1 %cnd_$_1223, label %thn_$_1220, label %mrg_$_1221
thn_$_1220:
 call i64 @recFieldError ()
 br label %mrg_$_1221
mrg_$_1221:
 %field_ptr_$_1224 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1219, i32 0, i32 0
 %res_$_1225 = load i64, i64* %field_ptr_$_1224
 %var_ptr_$_1226 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 2
 %res_$_1227 = load i64, i64* %var_ptr_$_1226
 %temp_$_1228 = add i64 %res_$_1225, %res_$_1227
 %lnk_$_1229 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1230 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1229
 %var_ptr_$_1231 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1230, i32 0, i32 25
 %load_$_1232 = load i8*, i8** %var_ptr_$_1231
 %record_ptr_$_1233 = bitcast i8* %load_$_1232 to %p_part$1*
 %int_of_ptr_$_1236 = ptrtoint i8* %load_$_1232 to i64
 %cnd_$_1237 = icmp eq i64 %int_of_ptr_$_1236, 0
 br i1 %cnd_$_1237, label %thn_$_1234, label %mrg_$_1235
thn_$_1234:
 call i64 @recFieldError ()
 br label %mrg_$_1235
mrg_$_1235:
 %field_ptr_$_1238 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1233, i32 0, i32 1
 %res_$_1239 = load i64, i64* %field_ptr_$_1238
 %var_ptr_$_1240 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 1
 %res_$_1241 = load i64, i64* %var_ptr_$_1240
 %temp_$_1242 = add i64 %res_$_1239, %res_$_1241
 %ret_$_1243 = call i64 @isFruit$16 (%$locals_tigermain* %load_$_1214, i64 %temp_$_1228, i64 %temp_$_1242)
 %cnd_$_1244 = icmp ne i64 %ret_$_1243, 0
 br i1 %cnd_$_1244, label %thn_$_1210, label %els_$_1211
thn_$_1210:
 %lnk_$_1245 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1246 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1245
 call void @handleFruit$26 (%$locals_tigermain* %load_$_1246)
 br label %mrg_$_1212
els_$_1211:
 %lnk_$_1247 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1248 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1247
 %lnk_$_1249 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1250 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1249
 %var_ptr_$_1251 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1250, i32 0, i32 25
 %res_$_1252 = load i8*, i8** %var_ptr_$_1251
 %lnk_$_1253 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1254 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1253
 %var_ptr_$_1255 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1254, i32 0, i32 25
 %load_$_1256 = load i8*, i8** %var_ptr_$_1255
 %record_ptr_$_1257 = bitcast i8* %load_$_1256 to %p_part$1*
 %int_of_ptr_$_1260 = ptrtoint i8* %load_$_1256 to i64
 %cnd_$_1261 = icmp eq i64 %int_of_ptr_$_1260, 0
 br i1 %cnd_$_1261, label %thn_$_1258, label %mrg_$_1259
thn_$_1258:
 call i64 @recFieldError ()
 br label %mrg_$_1259
mrg_$_1259:
 %field_ptr_$_1262 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1257, i32 0, i32 0
 %res_$_1263 = load i64, i64* %field_ptr_$_1262
 %var_ptr_$_1264 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 2
 %res_$_1265 = load i64, i64* %var_ptr_$_1264
 %temp_$_1266 = add i64 %res_$_1263, %res_$_1265
 %lnk_$_1267 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1268 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1267
 %var_ptr_$_1269 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1268, i32 0, i32 25
 %load_$_1270 = load i8*, i8** %var_ptr_$_1269
 %record_ptr_$_1271 = bitcast i8* %load_$_1270 to %p_part$1*
 %int_of_ptr_$_1274 = ptrtoint i8* %load_$_1270 to i64
 %cnd_$_1275 = icmp eq i64 %int_of_ptr_$_1274, 0
 br i1 %cnd_$_1275, label %thn_$_1272, label %mrg_$_1273
thn_$_1272:
 call i64 @recFieldError ()
 br label %mrg_$_1273
mrg_$_1273:
 %field_ptr_$_1276 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1271, i32 0, i32 1
 %res_$_1277 = load i64, i64* %field_ptr_$_1276
 %var_ptr_$_1278 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 1
 %res_$_1279 = load i64, i64* %var_ptr_$_1278
 %temp_$_1280 = add i64 %res_$_1277, %res_$_1279
 call void @updatePlayer$28 (%$locals_tigermain* %load_$_1248, i8* %res_$_1252, i64 %temp_$_1266, i64 %temp_$_1280)
 br label %mrg_$_1212
mrg_$_1212:
 %lnk_$_1208 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1209 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1208
 call void @updateScreen$20 (%$locals_tigermain* %load_$_1209)
 %lnk_$_1281 = getelementptr %$locals_handleMovement$27, %$locals_handleMovement$27* %locals_$_19, i32 0, i32 0
 %load_$_1282 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1281
 call void @skipto$29 (%$locals_tigermain* %load_$_1282)
 br label %mrg_$_1192
mrg_$_1192:
 ret void
}

define void @updatePlayer$28 (%$locals_tigermain* %$sl, i8* %p$72, i64 %x$73, i64 %y$74) {
 %locals_$_20 = alloca %$locals_updatePlayer$28
 %arg_$_1283 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 3
 store i64 %y$74, i64* %arg_$_1283
 %arg_$_1284 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 2
 store i64 %x$73, i64* %arg_$_1284
 %arg_$_1285 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 1
 store i8* %p$72, i8** %arg_$_1285
 %arg_$_1286 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_1286
 %var_ptr_$_1289 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 1
 %res_$_1290 = load i8*, i8** %var_ptr_$_1289
 %left_int_$_1291 = ptrtoint i8* %res_$_1290 to i64
 %right_int_$_1292 = ptrtoint i8* null to i64
 %cnd_$_1293 = icmp ne i64 %left_int_$_1291, %right_int_$_1292
 %zext_$_1294 = zext i1 %cnd_$_1293 to i64
 %cnd_$_1295 = icmp ne i64 %zext_$_1294, 0
 br i1 %cnd_$_1295, label %thn_$_1287, label %mrg_$_1288
thn_$_1287:
 %lnk_$_1306 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 0
 %load_$_1307 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1306
 %var_ptr_$_1308 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 1
 %load_$_1309 = load i8*, i8** %var_ptr_$_1308
 %record_ptr_$_1310 = bitcast i8* %load_$_1309 to %p_part$1*
 %int_of_ptr_$_1313 = ptrtoint i8* %load_$_1309 to i64
 %cnd_$_1314 = icmp eq i64 %int_of_ptr_$_1313, 0
 br i1 %cnd_$_1314, label %thn_$_1311, label %mrg_$_1312
thn_$_1311:
 call i64 @recFieldError ()
 br label %mrg_$_1312
mrg_$_1312:
 %field_ptr_$_1315 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1310, i32 0, i32 2
 %res_$_1316 = load i8*, i8** %field_ptr_$_1315
 %var_ptr_$_1317 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 1
 %load_$_1318 = load i8*, i8** %var_ptr_$_1317
 %record_ptr_$_1319 = bitcast i8* %load_$_1318 to %p_part$1*
 %int_of_ptr_$_1322 = ptrtoint i8* %load_$_1318 to i64
 %cnd_$_1323 = icmp eq i64 %int_of_ptr_$_1322, 0
 br i1 %cnd_$_1323, label %thn_$_1320, label %mrg_$_1321
thn_$_1320:
 call i64 @recFieldError ()
 br label %mrg_$_1321
mrg_$_1321:
 %field_ptr_$_1324 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1319, i32 0, i32 0
 %res_$_1325 = load i64, i64* %field_ptr_$_1324
 %var_ptr_$_1326 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 1
 %load_$_1327 = load i8*, i8** %var_ptr_$_1326
 %record_ptr_$_1328 = bitcast i8* %load_$_1327 to %p_part$1*
 %int_of_ptr_$_1331 = ptrtoint i8* %load_$_1327 to i64
 %cnd_$_1332 = icmp eq i64 %int_of_ptr_$_1331, 0
 br i1 %cnd_$_1332, label %thn_$_1329, label %mrg_$_1330
thn_$_1329:
 call i64 @recFieldError ()
 br label %mrg_$_1330
mrg_$_1330:
 %field_ptr_$_1333 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1328, i32 0, i32 1
 %res_$_1334 = load i64, i64* %field_ptr_$_1333
 call void @updatePlayer$28 (%$locals_tigermain* %load_$_1307, i8* %res_$_1316, i64 %res_$_1325, i64 %res_$_1334)
 %var_ptr_$_1296 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 2
 %res_$_1297 = load i64, i64* %var_ptr_$_1296
 %var_ptr_$_1298 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 1
 %load_$_1299 = load i8*, i8** %var_ptr_$_1298
 %record_ptr_$_1300 = bitcast i8* %load_$_1299 to %p_part$1*
 %int_of_ptr_$_1303 = ptrtoint i8* %load_$_1299 to i64
 %cnd_$_1304 = icmp eq i64 %int_of_ptr_$_1303, 0
 br i1 %cnd_$_1304, label %thn_$_1301, label %mrg_$_1302
thn_$_1301:
 call i64 @recFieldError ()
 br label %mrg_$_1302
mrg_$_1302:
 %field_ptr_$_1305 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1300, i32 0, i32 0
 store i64 %res_$_1297, i64* %field_ptr_$_1305
 %var_ptr_$_1335 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 3
 %res_$_1336 = load i64, i64* %var_ptr_$_1335
 %var_ptr_$_1337 = getelementptr %$locals_updatePlayer$28, %$locals_updatePlayer$28* %locals_$_20, i32 0, i32 1
 %load_$_1338 = load i8*, i8** %var_ptr_$_1337
 %record_ptr_$_1339 = bitcast i8* %load_$_1338 to %p_part$1*
 %int_of_ptr_$_1342 = ptrtoint i8* %load_$_1338 to i64
 %cnd_$_1343 = icmp eq i64 %int_of_ptr_$_1342, 0
 br i1 %cnd_$_1343, label %thn_$_1340, label %mrg_$_1341
thn_$_1340:
 call i64 @recFieldError ()
 br label %mrg_$_1341
mrg_$_1341:
 %field_ptr_$_1344 = getelementptr %p_part$1, %p_part$1* %record_ptr_$_1339, i32 0, i32 1
 store i64 %res_$_1336, i64* %field_ptr_$_1344
 br label %mrg_$_1288
mrg_$_1288:
 ret void
}

define void @skipto$29 (%$locals_tigermain* %$sl) {
 %locals_$_21 = alloca %$locals_skipto$29
 %arg_$_1345 = getelementptr %$locals_skipto$29, %$locals_skipto$29* %locals_$_21, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_1345
 br label %test_$_1346
test_$_1346:
 %lnk_$_1349 = getelementptr %$locals_skipto$29, %$locals_skipto$29* %locals_$_21, i32 0, i32 0
 %load_$_1350 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1349
 %var_ptr_$_1351 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1350, i32 0, i32 31
 %res_$_1352 = load i8*, i8** %var_ptr_$_1351
 %temp_$_1354 = bitcast { i64, [1 x i8] }* @str_$_1353 to i8*
 %temp_$_1355 = call i64 @stringNotEq (i8* %res_$_1352, i8* %temp_$_1354)
 %cnd_$_1356 = icmp ne i64 %temp_$_1355, 0
 br i1 %cnd_$_1356, label %body_$_1347, label %mrg_$_1348
body_$_1347:
 %lnk_$_1357 = getelementptr %$locals_skipto$29, %$locals_skipto$29* %locals_$_21, i32 0, i32 0
 %load_$_1358 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1357
 %ret_$_1360 = call i8* @getChar (i8* null)
 %lnk_$_1361 = getelementptr %$locals_skipto$29, %$locals_skipto$29* %locals_$_21, i32 0, i32 0
 %load_$_1362 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1361
 %var_ptr_$_1363 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1362, i32 0, i32 31
 store i8* %ret_$_1360, i8** %var_ptr_$_1363
 br label %test_$_1346
mrg_$_1348:
 ret void
}

define void @gameLoop$30 (%$locals_tigermain* %$sl) {
 %locals_$_22 = alloca %$locals_gameLoop$30
 %arg_$_1364 = getelementptr %$locals_gameLoop$30, %$locals_gameLoop$30* %locals_$_22, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_1364
 br label %test_$_1365
test_$_1365:
 %lnk_$_1368 = getelementptr %$locals_gameLoop$30, %$locals_gameLoop$30* %locals_$_22, i32 0, i32 0
 %load_$_1369 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1368
 %var_ptr_$_1370 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1369, i32 0, i32 31
 %res_$_1371 = load i8*, i8** %var_ptr_$_1370
 %temp_$_1373 = bitcast { i64, [1 x i8] }* @str_$_1372 to i8*
 %temp_$_1374 = call i64 @stringNotEq (i8* %res_$_1371, i8* %temp_$_1373)
 %cnd_$_1375 = icmp ne i64 %temp_$_1374, 0
 br i1 %cnd_$_1375, label %body_$_1366, label %mrg_$_1367
body_$_1366:
 %lnk_$_1376 = getelementptr %$locals_gameLoop$30, %$locals_gameLoop$30* %locals_$_22, i32 0, i32 0
 %load_$_1377 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1376
 %ret_$_1379 = call i8* @getChar (i8* null)
 %lnk_$_1380 = getelementptr %$locals_gameLoop$30, %$locals_gameLoop$30* %locals_$_22, i32 0, i32 0
 %load_$_1381 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1380
 %var_ptr_$_1382 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1381, i32 0, i32 31
 store i8* %ret_$_1379, i8** %var_ptr_$_1382
 %lnk_$_1383 = getelementptr %$locals_gameLoop$30, %$locals_gameLoop$30* %locals_$_22, i32 0, i32 0
 %load_$_1384 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1383
 %lnk_$_1385 = getelementptr %$locals_gameLoop$30, %$locals_gameLoop$30* %locals_$_22, i32 0, i32 0
 %load_$_1386 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1385
 %var_ptr_$_1387 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1386, i32 0, i32 31
 %res_$_1388 = load i8*, i8** %var_ptr_$_1387
 call void @handleMovement$27 (%$locals_tigermain* %load_$_1384, i8* %res_$_1388)
 br label %test_$_1365
mrg_$_1367:
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_23 = alloca %$locals_tigermain
 %arg_$_1389 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_1389
 %temp_$_1390 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 33
 store i64 10, i64* %temp_$_1390
 %temp_$_1391 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 32
 store i64 10, i64* %temp_$_1391
 %temp_$_1393 = bitcast { i64, [0 x i8] }* @str_$_1392 to i8*
 %temp_$_1394 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 31
 store i8* %temp_$_1393, i8** %temp_$_1394
 %temp_$_1395 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 30
 store i64 0, i64* %temp_$_1395
 %temp_$_1396 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 29
 store i8* null, i8** %temp_$_1396
 %temp_$_1397 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 28
 store i64 3, i64* %temp_$_1397
 %temp_$_1398 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 27
 store i64 5, i64* %temp_$_1398
 %temp_$_1399 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 26
 store i64 5, i64* %temp_$_1399
 %size_ptr_$_1400 = getelementptr %p_part$1, %p_part$1* null, i32 1
 %size_$_1401 = ptrtoint %p_part$1* %size_ptr_$_1400 to i64
 %record_ptr_$_1402 = call i8* @allocRecord (i64 %size_$_1401)
 %rec_$_1403 = bitcast i8* %record_ptr_$_1402 to %p_part$1*
 %var_ptr_$_1404 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 27
 %res_$_1405 = load i64, i64* %var_ptr_$_1404
 %field_ptr_$_1406 = getelementptr %p_part$1, %p_part$1* %rec_$_1403, i32 0, i32 0
 store i64 %res_$_1405, i64* %field_ptr_$_1406
 %var_ptr_$_1407 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 26
 %res_$_1408 = load i64, i64* %var_ptr_$_1407
 %field_ptr_$_1409 = getelementptr %p_part$1, %p_part$1* %rec_$_1403, i32 0, i32 1
 store i64 %res_$_1408, i64* %field_ptr_$_1409
 %size_ptr_$_1410 = getelementptr %p_part$1, %p_part$1* null, i32 1
 %size_$_1411 = ptrtoint %p_part$1* %size_ptr_$_1410 to i64
 %record_ptr_$_1412 = call i8* @allocRecord (i64 %size_$_1411)
 %rec_$_1413 = bitcast i8* %record_ptr_$_1412 to %p_part$1*
 %var_ptr_$_1414 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 27
 %res_$_1415 = load i64, i64* %var_ptr_$_1414
 %field_ptr_$_1416 = getelementptr %p_part$1, %p_part$1* %rec_$_1413, i32 0, i32 0
 store i64 %res_$_1415, i64* %field_ptr_$_1416
 %var_ptr_$_1417 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 26
 %res_$_1418 = load i64, i64* %var_ptr_$_1417
 %temp_$_1419 = add i64 %res_$_1418, 1
 %field_ptr_$_1420 = getelementptr %p_part$1, %p_part$1* %rec_$_1413, i32 0, i32 1
 store i64 %temp_$_1419, i64* %field_ptr_$_1420
 %size_ptr_$_1421 = getelementptr %p_part$1, %p_part$1* null, i32 1
 %size_$_1422 = ptrtoint %p_part$1* %size_ptr_$_1421 to i64
 %record_ptr_$_1423 = call i8* @allocRecord (i64 %size_$_1422)
 %rec_$_1424 = bitcast i8* %record_ptr_$_1423 to %p_part$1*
 %var_ptr_$_1425 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 27
 %res_$_1426 = load i64, i64* %var_ptr_$_1425
 %field_ptr_$_1427 = getelementptr %p_part$1, %p_part$1* %rec_$_1424, i32 0, i32 0
 store i64 %res_$_1426, i64* %field_ptr_$_1427
 %var_ptr_$_1428 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 26
 %res_$_1429 = load i64, i64* %var_ptr_$_1428
 %temp_$_1430 = add i64 %res_$_1429, 2
 %field_ptr_$_1431 = getelementptr %p_part$1, %p_part$1* %rec_$_1424, i32 0, i32 1
 store i64 %temp_$_1430, i64* %field_ptr_$_1431
 %field_ptr_$_1432 = getelementptr %p_part$1, %p_part$1* %rec_$_1424, i32 0, i32 2
 store i8* null, i8** %field_ptr_$_1432
 %field_ptr_$_1433 = getelementptr %p_part$1, %p_part$1* %rec_$_1413, i32 0, i32 2
 store i8* %record_ptr_$_1423, i8** %field_ptr_$_1433
 %field_ptr_$_1434 = getelementptr %p_part$1, %p_part$1* %rec_$_1403, i32 0, i32 2
 store i8* %record_ptr_$_1412, i8** %field_ptr_$_1434
 %temp_$_1435 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 25
 store i8* %record_ptr_$_1402, i8** %temp_$_1435
 %var_ptr_$_1441 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 33
 %res_$_1442 = load i64, i64* %var_ptr_$_1441
 %cnd_$_1443 = icmp eq i64 2, 0
 br i1 %cnd_$_1443, label %thn_$_1439, label %mrg_$_1440
thn_$_1439:
 call i64 @divisionByZero ()
 br label %mrg_$_1440
mrg_$_1440:
 %temp_$_1444 = sdiv i64 %res_$_1442, 2
 %var_ptr_$_1447 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 32
 %res_$_1448 = load i64, i64* %var_ptr_$_1447
 %cnd_$_1449 = icmp eq i64 3, 0
 br i1 %cnd_$_1449, label %thn_$_1445, label %mrg_$_1446
thn_$_1445:
 call i64 @divisionByZero ()
 br label %mrg_$_1446
mrg_$_1446:
 %temp_$_1450 = sdiv i64 %res_$_1448, 3
 %ret_$_1451 = call i8* @randomCoord$19 (%$locals_tigermain* %locals_$_23, i64 %temp_$_1444, i64 %temp_$_1450)
 %var_ptr_$_1452 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_23, i32 0, i32 29
 store i8* %ret_$_1451, i8** %var_ptr_$_1452
 %temp_$_1438 = bitcast { i64, [1 x i8] }* @str_$_1437 to i8*
 call void @print (i8* null, i8* %temp_$_1438)
 call void @updateScreen$20 (%$locals_tigermain* %locals_$_23)
 call void @gameLoop$30 (%$locals_tigermain* %locals_$_23)
 ret void
}
