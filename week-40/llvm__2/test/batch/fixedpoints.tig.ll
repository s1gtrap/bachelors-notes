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

%fp$0 = type i64
%$locals_mul$2 = type { %$locals_tigermain*, i64, i64 }
%$locals_div$3 = type { %$locals_tigermain*, i64, i64 }
%$locals_fix$4 = type { %$locals_tigermain*, i64 }
%$locals_base$5 = type { %$locals_tigermain*, i64, i64 }
%$locals_str$6 = type { %$locals_tigermain*, i64, i64, i64, i64, i8*, i64 }
%$locals_sqrt$7 = type { %$locals_tigermain*, i64, i64, i64, i64 }
%$locals_sin$8 = type { %$locals_tigermain*, i64, i64, i64, i64 }
%$locals_fstr$9 = type { %$locals_tigermain*, i64, i8*, i8*, i64 }
%$locals_tigermain = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@str_$_528 = global { i64, [25 x i8] } {i64 25, [25 x i8] c"32 bits is not enough :(\0A"}
@str_$_525 = global { i64, [31 x i8] } {i64 31, [31 x i8] c"Calculating a few squareroots:\0A"}
@str_$_518 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_515 = global { i64, [7 x i8] } {i64 7, [7 x i8] c"\09sqrt( "}
@str_$_508 = global { i64, [5 x i8] } {i64 5, [5 x i8] c" ) = "}
@str_$_490 = global { i64, [19 x i8] } {i64 19, [19 x i8] c"Maybe a sinewave?:\0A"}
@str_$_483 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_480 = global { i64, [6 x i8] } {i64 6, [6 x i8] c"\09sin( "}
@str_$_469 = global { i64, [5 x i8] } {i64 5, [5 x i8] c" ) = "}
@str_$_392 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_354 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"."}
@str_$_330 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"-"}
@str_$_315 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_116 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_87 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_85 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"-"}

define i64 @mul$2 (%$locals_tigermain* %$sl, i64 %a$10, i64 %b$11) {
 %locals_$_0 = alloca %$locals_mul$2
 %arg_$_9 = getelementptr %$locals_mul$2, %$locals_mul$2* %locals_$_0, i32 0, i32 2
 store i64 %b$11, i64* %arg_$_9
 %arg_$_10 = getelementptr %$locals_mul$2, %$locals_mul$2* %locals_$_0, i32 0, i32 1
 store i64 %a$10, i64* %arg_$_10
 %arg_$_11 = getelementptr %$locals_mul$2, %$locals_mul$2* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_11
 %var_ptr_$_14 = getelementptr %$locals_mul$2, %$locals_mul$2* %locals_$_0, i32 0, i32 1
 %res_$_15 = load i64, i64* %var_ptr_$_14
 %var_ptr_$_16 = getelementptr %$locals_mul$2, %$locals_mul$2* %locals_$_0, i32 0, i32 2
 %res_$_17 = load i64, i64* %var_ptr_$_16
 %temp_$_18 = mul i64 %res_$_15, %res_$_17
 %lnk_$_19 = getelementptr %$locals_mul$2, %$locals_mul$2* %locals_$_0, i32 0, i32 0
 %load_$_20 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_19
 %var_ptr_$_21 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_20, i32 0, i32 13
 %res_$_22 = load i64, i64* %var_ptr_$_21
 %cnd_$_23 = icmp eq i64 %res_$_22, 0
 br i1 %cnd_$_23, label %thn_$_12, label %mrg_$_13
thn_$_12:
 call i64 @divisionByZero ()
 br label %mrg_$_13
mrg_$_13:
 %temp_$_24 = sdiv i64 %temp_$_18, %res_$_22
 ret i64 %temp_$_24
}

define i64 @div$3 (%$locals_tigermain* %$sl, i64 %a$12, i64 %b$13) {
 %locals_$_1 = alloca %$locals_div$3
 %arg_$_25 = getelementptr %$locals_div$3, %$locals_div$3* %locals_$_1, i32 0, i32 2
 store i64 %b$13, i64* %arg_$_25
 %arg_$_26 = getelementptr %$locals_div$3, %$locals_div$3* %locals_$_1, i32 0, i32 1
 store i64 %a$12, i64* %arg_$_26
 %arg_$_27 = getelementptr %$locals_div$3, %$locals_div$3* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_27
 %var_ptr_$_30 = getelementptr %$locals_div$3, %$locals_div$3* %locals_$_1, i32 0, i32 1
 %res_$_31 = load i64, i64* %var_ptr_$_30
 %lnk_$_32 = getelementptr %$locals_div$3, %$locals_div$3* %locals_$_1, i32 0, i32 0
 %load_$_33 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_32
 %var_ptr_$_34 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_33, i32 0, i32 13
 %res_$_35 = load i64, i64* %var_ptr_$_34
 %temp_$_36 = mul i64 %res_$_31, %res_$_35
 %var_ptr_$_37 = getelementptr %$locals_div$3, %$locals_div$3* %locals_$_1, i32 0, i32 2
 %res_$_38 = load i64, i64* %var_ptr_$_37
 %cnd_$_39 = icmp eq i64 %res_$_38, 0
 br i1 %cnd_$_39, label %thn_$_28, label %mrg_$_29
thn_$_28:
 call i64 @divisionByZero ()
 br label %mrg_$_29
mrg_$_29:
 %temp_$_40 = sdiv i64 %temp_$_36, %res_$_38
 ret i64 %temp_$_40
}

define i64 @fix$4 (%$locals_tigermain* %$sl, i64 %x$14) {
 %locals_$_2 = alloca %$locals_fix$4
 %arg_$_41 = getelementptr %$locals_fix$4, %$locals_fix$4* %locals_$_2, i32 0, i32 1
 store i64 %x$14, i64* %arg_$_41
 %arg_$_42 = getelementptr %$locals_fix$4, %$locals_fix$4* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_42
 %var_ptr_$_43 = getelementptr %$locals_fix$4, %$locals_fix$4* %locals_$_2, i32 0, i32 1
 %res_$_44 = load i64, i64* %var_ptr_$_43
 %lnk_$_45 = getelementptr %$locals_fix$4, %$locals_fix$4* %locals_$_2, i32 0, i32 0
 %load_$_46 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_45
 %var_ptr_$_47 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_46, i32 0, i32 13
 %res_$_48 = load i64, i64* %var_ptr_$_47
 %temp_$_49 = mul i64 %res_$_44, %res_$_48
 ret i64 %temp_$_49
}

define i64 @base$5 (%$locals_tigermain* %$sl, i64 %v$15) {
 %locals_$_3 = alloca %$locals_base$5
 %arg_$_50 = getelementptr %$locals_base$5, %$locals_base$5* %locals_$_3, i32 0, i32 2
 store i64 %v$15, i64* %arg_$_50
 %arg_$_51 = getelementptr %$locals_base$5, %$locals_base$5* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_51
 %temp_$_52 = getelementptr %$locals_base$5, %$locals_base$5* %locals_$_3, i32 0, i32 1
 store i64 1, i64* %temp_$_52
 br label %test_$_53
test_$_53:
 %var_ptr_$_58 = getelementptr %$locals_base$5, %$locals_base$5* %locals_$_3, i32 0, i32 2
 %res_$_59 = load i64, i64* %var_ptr_$_58
 %cnd_$_60 = icmp eq i64 10, 0
 br i1 %cnd_$_60, label %thn_$_56, label %mrg_$_57
thn_$_56:
 call i64 @divisionByZero ()
 br label %mrg_$_57
mrg_$_57:
 %temp_$_61 = sdiv i64 %res_$_59, 10
 %var_ptr_$_62 = getelementptr %$locals_base$5, %$locals_base$5* %locals_$_3, i32 0, i32 2
 store i64 %temp_$_61, i64* %var_ptr_$_62
 %var_ptr_$_63 = getelementptr %$locals_base$5, %$locals_base$5* %locals_$_3, i32 0, i32 2
 %res_$_64 = load i64, i64* %var_ptr_$_63
 %temp_$_65 = icmp sge i64 %res_$_64, 1
 %temp_$_66 = zext i1 %temp_$_65 to i64
 %cnd_$_67 = icmp ne i64 %temp_$_66, 0
 br i1 %cnd_$_67, label %body_$_54, label %mrg_$_55
body_$_54:
 %var_ptr_$_68 = getelementptr %$locals_base$5, %$locals_base$5* %locals_$_3, i32 0, i32 1
 %res_$_69 = load i64, i64* %var_ptr_$_68
 %temp_$_70 = mul i64 %res_$_69, 10
 %var_ptr_$_71 = getelementptr %$locals_base$5, %$locals_base$5* %locals_$_3, i32 0, i32 1
 store i64 %temp_$_70, i64* %var_ptr_$_71
 br label %test_$_53
mrg_$_55:
 %var_ptr_$_72 = getelementptr %$locals_base$5, %$locals_base$5* %locals_$_3, i32 0, i32 1
 %res_$_73 = load i64, i64* %var_ptr_$_72
 ret i64 %res_$_73
}

define i8* @str$6 (%$locals_tigermain* %$sl, i64 %v$17) {
 %temp_$_91 = alloca i64
 %temp_$_76 = alloca i8*
 %locals_$_4 = alloca %$locals_str$6
 %arg_$_74 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 6
 store i64 %v$17, i64* %arg_$_74
 %arg_$_75 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_75
 %var_ptr_$_80 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 6
 %res_$_81 = load i64, i64* %var_ptr_$_80
 %temp_$_82 = icmp slt i64 %res_$_81, 0
 %temp_$_83 = zext i1 %temp_$_82 to i64
 %cnd_$_84 = icmp ne i64 %temp_$_83, 0
 br i1 %cnd_$_84, label %thn_$_77, label %els_$_78
thn_$_77:
 %temp_$_86 = bitcast { i64, [1 x i8] }* @str_$_85 to i8*
 store i8* %temp_$_86, i8** %temp_$_76
 br label %mrg_$_79
els_$_78:
 %temp_$_88 = bitcast { i64, [0 x i8] }* @str_$_87 to i8*
 store i8* %temp_$_88, i8** %temp_$_76
 br label %mrg_$_79
mrg_$_79:
 %res_$_89 = load i8*, i8** %temp_$_76
 %temp_$_90 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 5
 store i8* %res_$_89, i8** %temp_$_90
 %var_ptr_$_95 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 6
 %res_$_96 = load i64, i64* %var_ptr_$_95
 %temp_$_97 = icmp slt i64 %res_$_96, 0
 %temp_$_98 = zext i1 %temp_$_97 to i64
 %cnd_$_99 = icmp ne i64 %temp_$_98, 0
 br i1 %cnd_$_99, label %thn_$_92, label %els_$_93
thn_$_92:
 %var_ptr_$_100 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 6
 %res_$_101 = load i64, i64* %var_ptr_$_100
 %temp_$_102 = sub i64 0, %res_$_101
 store i64 %temp_$_102, i64* %temp_$_91
 br label %mrg_$_94
els_$_93:
 %var_ptr_$_103 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 6
 %res_$_104 = load i64, i64* %var_ptr_$_103
 store i64 %res_$_104, i64* %temp_$_91
 br label %mrg_$_94
mrg_$_94:
 %res_$_105 = load i64, i64* %temp_$_91
 %temp_$_106 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 4
 store i64 %res_$_105, i64* %temp_$_106
 %lnk_$_107 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 0
 %load_$_108 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_107
 %var_ptr_$_109 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 4
 %res_$_110 = load i64, i64* %var_ptr_$_109
 %ret_$_111 = call i64 @base$5 (%$locals_tigermain* %load_$_108, i64 %res_$_110)
 %temp_$_112 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 3
 store i64 %ret_$_111, i64* %temp_$_112
 %lnk_$_113 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 0
 %load_$_114 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_113
 %temp_$_117 = bitcast { i64, [1 x i8] }* @str_$_116 to i8*
 %ret_$_118 = call i64 @ord (i8* null, i8* %temp_$_117)
 %temp_$_119 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 2
 store i64 %ret_$_118, i64* %temp_$_119
 br label %test_$_120
test_$_120:
 %var_ptr_$_123 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 3
 %res_$_124 = load i64, i64* %var_ptr_$_123
 %temp_$_125 = icmp ne i64 %res_$_124, 0
 %temp_$_126 = zext i1 %temp_$_125 to i64
 %cnd_$_127 = icmp ne i64 %temp_$_126, 0
 br i1 %cnd_$_127, label %body_$_121, label %mrg_$_122
body_$_121:
 %var_ptr_$_130 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 4
 %res_$_131 = load i64, i64* %var_ptr_$_130
 %var_ptr_$_132 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 3
 %res_$_133 = load i64, i64* %var_ptr_$_132
 %cnd_$_134 = icmp eq i64 %res_$_133, 0
 br i1 %cnd_$_134, label %thn_$_128, label %mrg_$_129
thn_$_128:
 call i64 @divisionByZero ()
 br label %mrg_$_129
mrg_$_129:
 %temp_$_135 = sdiv i64 %res_$_131, %res_$_133
 %temp_$_136 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 1
 store i64 %temp_$_135, i64* %temp_$_136
 %var_ptr_$_144 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 4
 %res_$_145 = load i64, i64* %var_ptr_$_144
 %var_ptr_$_146 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 3
 %res_$_147 = load i64, i64* %var_ptr_$_146
 %var_ptr_$_148 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 1
 %res_$_149 = load i64, i64* %var_ptr_$_148
 %temp_$_150 = mul i64 %res_$_147, %res_$_149
 %temp_$_151 = sub i64 %res_$_145, %temp_$_150
 %var_ptr_$_152 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 4
 store i64 %temp_$_151, i64* %var_ptr_$_152
 %var_ptr_$_139 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 3
 %res_$_140 = load i64, i64* %var_ptr_$_139
 %cnd_$_141 = icmp eq i64 10, 0
 br i1 %cnd_$_141, label %thn_$_137, label %mrg_$_138
thn_$_137:
 call i64 @divisionByZero ()
 br label %mrg_$_138
mrg_$_138:
 %temp_$_142 = sdiv i64 %res_$_140, 10
 %var_ptr_$_143 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 3
 store i64 %temp_$_142, i64* %var_ptr_$_143
 %lnk_$_153 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 0
 %load_$_154 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_153
 %var_ptr_$_156 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 5
 %res_$_157 = load i8*, i8** %var_ptr_$_156
 %lnk_$_158 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 0
 %load_$_159 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_158
 %var_ptr_$_161 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 2
 %res_$_162 = load i64, i64* %var_ptr_$_161
 %var_ptr_$_163 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 1
 %res_$_164 = load i64, i64* %var_ptr_$_163
 %temp_$_165 = add i64 %res_$_162, %res_$_164
 %ret_$_166 = call i8* @chr (i8* null, i64 %temp_$_165)
 %ret_$_167 = call i8* @concat (i8* null, i8* %res_$_157, i8* %ret_$_166)
 %var_ptr_$_168 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 5
 store i8* %ret_$_167, i8** %var_ptr_$_168
 br label %test_$_120
mrg_$_122:
 %var_ptr_$_169 = getelementptr %$locals_str$6, %$locals_str$6* %locals_$_4, i32 0, i32 5
 %res_$_170 = load i8*, i8** %var_ptr_$_169
 ret i8* %res_$_170
}

define i64 @sqrt$7 (%$locals_tigermain* %$sl, i64 %x$23) {
 %locals_$_5 = alloca %$locals_sqrt$7
 %arg_$_171 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 4
 store i64 %x$23, i64* %arg_$_171
 %arg_$_172 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_172
 %lnk_$_173 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 0
 %load_$_174 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_173
 %ret_$_175 = call i64 @fix$4 (%$locals_tigermain* %load_$_174, i64 2)
 %temp_$_176 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 3
 store i64 %ret_$_175, i64* %temp_$_176
 %lnk_$_177 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 0
 %load_$_178 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_177
 %var_ptr_$_179 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 4
 %res_$_180 = load i64, i64* %var_ptr_$_179
 %var_ptr_$_181 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 3
 %res_$_182 = load i64, i64* %var_ptr_$_181
 %ret_$_183 = call i64 @div$3 (%$locals_tigermain* %load_$_178, i64 %res_$_180, i64 %res_$_182)
 %temp_$_184 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 2
 store i64 %ret_$_183, i64* %temp_$_184
 %temp_$_185 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 1
 store i64 0, i64* %temp_$_185
 br label %test_$_186
test_$_186:
 %var_ptr_$_189 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 1
 %res_$_190 = load i64, i64* %var_ptr_$_189
 %temp_$_191 = icmp sle i64 %res_$_190, 10
 %temp_$_192 = zext i1 %temp_$_191 to i64
 %cnd_$_193 = icmp ne i64 %temp_$_192, 0
 br i1 %cnd_$_193, label %body_$_187, label %mrg_$_188
body_$_187:
 %lnk_$_194 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 0
 %load_$_195 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_194
 %var_ptr_$_196 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 2
 %res_$_197 = load i64, i64* %var_ptr_$_196
 %lnk_$_198 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 0
 %load_$_199 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_198
 %var_ptr_$_200 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 4
 %res_$_201 = load i64, i64* %var_ptr_$_200
 %var_ptr_$_202 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 2
 %res_$_203 = load i64, i64* %var_ptr_$_202
 %ret_$_204 = call i64 @div$3 (%$locals_tigermain* %load_$_199, i64 %res_$_201, i64 %res_$_203)
 %temp_$_205 = add i64 %res_$_197, %ret_$_204
 %var_ptr_$_206 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 3
 %res_$_207 = load i64, i64* %var_ptr_$_206
 %ret_$_208 = call i64 @div$3 (%$locals_tigermain* %load_$_195, i64 %temp_$_205, i64 %res_$_207)
 %var_ptr_$_209 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 2
 store i64 %ret_$_208, i64* %var_ptr_$_209
 %var_ptr_$_210 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 1
 %res_$_211 = load i64, i64* %var_ptr_$_210
 %temp_$_212 = add i64 %res_$_211, 1
 %var_ptr_$_213 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 1
 store i64 %temp_$_212, i64* %var_ptr_$_213
 br label %test_$_186
mrg_$_188:
 %var_ptr_$_214 = getelementptr %$locals_sqrt$7, %$locals_sqrt$7* %locals_$_5, i32 0, i32 2
 %res_$_215 = load i64, i64* %var_ptr_$_214
 ret i64 %res_$_215
}

define i64 @sin$8 (%$locals_tigermain* %$sl, i64 %x$27) {
 %locals_$_6 = alloca %$locals_sin$8
 %arg_$_216 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 4
 store i64 %x$27, i64* %arg_$_216
 %arg_$_217 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_217
 %lnk_$_218 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_219 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_218
 %var_ptr_$_220 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 4
 %res_$_221 = load i64, i64* %var_ptr_$_220
 %lnk_$_222 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_223 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_222
 %var_ptr_$_224 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 4
 %res_$_225 = load i64, i64* %var_ptr_$_224
 %var_ptr_$_226 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 4
 %res_$_227 = load i64, i64* %var_ptr_$_226
 %ret_$_228 = call i64 @mul$2 (%$locals_tigermain* %load_$_223, i64 %res_$_225, i64 %res_$_227)
 %ret_$_229 = call i64 @mul$2 (%$locals_tigermain* %load_$_219, i64 %res_$_221, i64 %ret_$_228)
 %temp_$_230 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 store i64 %ret_$_229, i64* %temp_$_230
 %lnk_$_231 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_232 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_231
 %var_ptr_$_233 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 4
 %res_$_234 = load i64, i64* %var_ptr_$_233
 %var_ptr_$_235 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 4
 %res_$_236 = load i64, i64* %var_ptr_$_235
 %ret_$_237 = call i64 @mul$2 (%$locals_tigermain* %load_$_232, i64 %res_$_234, i64 %res_$_236)
 %temp_$_238 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 2
 store i64 %ret_$_237, i64* %temp_$_238
 %lnk_$_239 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_240 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_239
 %var_ptr_$_241 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 %res_$_242 = load i64, i64* %var_ptr_$_241
 %lnk_$_243 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_244 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_243
 %ret_$_245 = call i64 @fix$4 (%$locals_tigermain* %load_$_244, i64 6)
 %ret_$_246 = call i64 @div$3 (%$locals_tigermain* %load_$_240, i64 %res_$_242, i64 %ret_$_245)
 %temp_$_247 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 1
 store i64 %ret_$_246, i64* %temp_$_247
 %lnk_$_300 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_301 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_300
 %var_ptr_$_302 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 %res_$_303 = load i64, i64* %var_ptr_$_302
 %var_ptr_$_304 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 2
 %res_$_305 = load i64, i64* %var_ptr_$_304
 %ret_$_306 = call i64 @mul$2 (%$locals_tigermain* %load_$_301, i64 %res_$_303, i64 %res_$_305)
 %var_ptr_$_307 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 store i64 %ret_$_306, i64* %var_ptr_$_307
 %var_ptr_$_288 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 1
 %res_$_289 = load i64, i64* %var_ptr_$_288
 %lnk_$_290 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_291 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_290
 %var_ptr_$_292 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 %res_$_293 = load i64, i64* %var_ptr_$_292
 %lnk_$_294 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_295 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_294
 %ret_$_296 = call i64 @fix$4 (%$locals_tigermain* %load_$_295, i64 120)
 %ret_$_297 = call i64 @div$3 (%$locals_tigermain* %load_$_291, i64 %res_$_293, i64 %ret_$_296)
 %temp_$_298 = add i64 %res_$_289, %ret_$_297
 %var_ptr_$_299 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 1
 store i64 %temp_$_298, i64* %var_ptr_$_299
 %lnk_$_280 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_281 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_280
 %var_ptr_$_282 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 %res_$_283 = load i64, i64* %var_ptr_$_282
 %var_ptr_$_284 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 2
 %res_$_285 = load i64, i64* %var_ptr_$_284
 %ret_$_286 = call i64 @mul$2 (%$locals_tigermain* %load_$_281, i64 %res_$_283, i64 %res_$_285)
 %var_ptr_$_287 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 store i64 %ret_$_286, i64* %var_ptr_$_287
 %var_ptr_$_268 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 1
 %res_$_269 = load i64, i64* %var_ptr_$_268
 %lnk_$_270 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_271 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_270
 %var_ptr_$_272 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 %res_$_273 = load i64, i64* %var_ptr_$_272
 %lnk_$_274 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_275 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_274
 %ret_$_276 = call i64 @fix$4 (%$locals_tigermain* %load_$_275, i64 5040)
 %ret_$_277 = call i64 @div$3 (%$locals_tigermain* %load_$_271, i64 %res_$_273, i64 %ret_$_276)
 %temp_$_278 = sub i64 %res_$_269, %ret_$_277
 %var_ptr_$_279 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 1
 store i64 %temp_$_278, i64* %var_ptr_$_279
 %lnk_$_260 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_261 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_260
 %var_ptr_$_262 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 %res_$_263 = load i64, i64* %var_ptr_$_262
 %var_ptr_$_264 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 2
 %res_$_265 = load i64, i64* %var_ptr_$_264
 %ret_$_266 = call i64 @mul$2 (%$locals_tigermain* %load_$_261, i64 %res_$_263, i64 %res_$_265)
 %var_ptr_$_267 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 store i64 %ret_$_266, i64* %var_ptr_$_267
 %var_ptr_$_248 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 1
 %res_$_249 = load i64, i64* %var_ptr_$_248
 %lnk_$_250 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_251 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_250
 %var_ptr_$_252 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 3
 %res_$_253 = load i64, i64* %var_ptr_$_252
 %lnk_$_254 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 0
 %load_$_255 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_254
 %ret_$_256 = call i64 @fix$4 (%$locals_tigermain* %load_$_255, i64 362880)
 %ret_$_257 = call i64 @div$3 (%$locals_tigermain* %load_$_251, i64 %res_$_253, i64 %ret_$_256)
 %temp_$_258 = sub i64 %res_$_249, %ret_$_257
 %var_ptr_$_259 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 1
 store i64 %temp_$_258, i64* %var_ptr_$_259
 %var_ptr_$_308 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 4
 %res_$_309 = load i64, i64* %var_ptr_$_308
 %var_ptr_$_310 = getelementptr %$locals_sin$8, %$locals_sin$8* %locals_$_6, i32 0, i32 1
 %res_$_311 = load i64, i64* %var_ptr_$_310
 %temp_$_312 = sub i64 %res_$_309, %res_$_311
 ret i64 %temp_$_312
}

define i8* @fstr$9 (%$locals_tigermain* %$sl, i64 %x$31) {
 %temp_$_378 = alloca i8*
 %locals_$_7 = alloca %$locals_fstr$9
 %arg_$_313 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 4
 store i64 %x$31, i64* %arg_$_313
 %arg_$_314 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_314
 %temp_$_316 = bitcast { i64, [0 x i8] }* @str_$_315 to i8*
 %temp_$_317 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 3
 store i8* %temp_$_316, i8** %temp_$_317
 %var_ptr_$_320 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 4
 %res_$_321 = load i64, i64* %var_ptr_$_320
 %temp_$_322 = icmp slt i64 %res_$_321, 0
 %temp_$_323 = zext i1 %temp_$_322 to i64
 %cnd_$_324 = icmp ne i64 %temp_$_323, 0
 br i1 %cnd_$_324, label %thn_$_318, label %mrg_$_319
thn_$_318:
 %var_ptr_$_325 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 4
 %res_$_326 = load i64, i64* %var_ptr_$_325
 %temp_$_327 = sub i64 0, 1
 %temp_$_328 = mul i64 %res_$_326, %temp_$_327
 %var_ptr_$_329 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 4
 store i64 %temp_$_328, i64* %var_ptr_$_329
 %temp_$_331 = bitcast { i64, [1 x i8] }* @str_$_330 to i8*
 %var_ptr_$_332 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 3
 store i8* %temp_$_331, i8** %var_ptr_$_332
 br label %mrg_$_319
mrg_$_319:
 %lnk_$_333 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_334 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_333
 %var_ptr_$_336 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 3
 %res_$_337 = load i8*, i8** %var_ptr_$_336
 %lnk_$_338 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_339 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_338
 %lnk_$_341 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_342 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_341
 %var_ptr_$_345 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 4
 %res_$_346 = load i64, i64* %var_ptr_$_345
 %lnk_$_347 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_348 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_347
 %var_ptr_$_349 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_348, i32 0, i32 13
 %res_$_350 = load i64, i64* %var_ptr_$_349
 %cnd_$_351 = icmp eq i64 %res_$_350, 0
 br i1 %cnd_$_351, label %thn_$_343, label %mrg_$_344
thn_$_343:
 call i64 @divisionByZero ()
 br label %mrg_$_344
mrg_$_344:
 %temp_$_352 = sdiv i64 %res_$_346, %res_$_350
 %ret_$_353 = call i8* @str$6 (%$locals_tigermain* %load_$_342, i64 %temp_$_352)
 %temp_$_355 = bitcast { i64, [1 x i8] }* @str_$_354 to i8*
 %ret_$_356 = call i8* @concat (i8* null, i8* %ret_$_353, i8* %temp_$_355)
 %ret_$_357 = call i8* @concat (i8* null, i8* %res_$_337, i8* %ret_$_356)
 %temp_$_358 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 2
 store i8* %ret_$_357, i8** %temp_$_358
 %var_ptr_$_359 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 4
 %res_$_360 = load i64, i64* %var_ptr_$_359
 %var_ptr_$_363 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 4
 %res_$_364 = load i64, i64* %var_ptr_$_363
 %lnk_$_365 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_366 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_365
 %var_ptr_$_367 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_366, i32 0, i32 13
 %res_$_368 = load i64, i64* %var_ptr_$_367
 %cnd_$_369 = icmp eq i64 %res_$_368, 0
 br i1 %cnd_$_369, label %thn_$_361, label %mrg_$_362
thn_$_361:
 call i64 @divisionByZero ()
 br label %mrg_$_362
mrg_$_362:
 %temp_$_370 = sdiv i64 %res_$_364, %res_$_368
 %lnk_$_371 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_372 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_371
 %var_ptr_$_373 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_372, i32 0, i32 13
 %res_$_374 = load i64, i64* %var_ptr_$_373
 %temp_$_375 = mul i64 %temp_$_370, %res_$_374
 %temp_$_376 = sub i64 %res_$_360, %temp_$_375
 %temp_$_377 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 1
 store i64 %temp_$_376, i64* %temp_$_377
 %var_ptr_$_382 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 1
 %res_$_383 = load i64, i64* %var_ptr_$_382
 %temp_$_384 = icmp eq i64 %res_$_383, 0
 %temp_$_385 = zext i1 %temp_$_384 to i64
 %cnd_$_386 = icmp ne i64 %temp_$_385, 0
 br i1 %cnd_$_386, label %thn_$_379, label %els_$_380
thn_$_379:
 %lnk_$_387 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_388 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_387
 %var_ptr_$_390 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 2
 %res_$_391 = load i8*, i8** %var_ptr_$_390
 %temp_$_393 = bitcast { i64, [1 x i8] }* @str_$_392 to i8*
 %ret_$_394 = call i8* @concat (i8* null, i8* %res_$_391, i8* %temp_$_393)
 store i8* %ret_$_394, i8** %temp_$_378
 br label %mrg_$_381
els_$_380:
 br label %test_$_395
test_$_395:
 %var_ptr_$_398 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 1
 %res_$_399 = load i64, i64* %var_ptr_$_398
 %temp_$_400 = icmp sgt i64 %res_$_399, 0
 %temp_$_401 = zext i1 %temp_$_400 to i64
 %cnd_$_402 = icmp ne i64 %temp_$_401, 0
 br i1 %cnd_$_402, label %body_$_396, label %mrg_$_397
body_$_396:
 %lnk_$_403 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_404 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_403
 %var_ptr_$_406 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 2
 %res_$_407 = load i8*, i8** %var_ptr_$_406
 %lnk_$_408 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_409 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_408
 %var_ptr_$_412 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 1
 %res_$_413 = load i64, i64* %var_ptr_$_412
 %temp_$_414 = mul i64 %res_$_413, 10
 %lnk_$_415 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_416 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_415
 %var_ptr_$_417 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_416, i32 0, i32 13
 %res_$_418 = load i64, i64* %var_ptr_$_417
 %cnd_$_419 = icmp eq i64 %res_$_418, 0
 br i1 %cnd_$_419, label %thn_$_410, label %mrg_$_411
thn_$_410:
 call i64 @divisionByZero ()
 br label %mrg_$_411
mrg_$_411:
 %temp_$_420 = sdiv i64 %temp_$_414, %res_$_418
 %ret_$_421 = call i8* @str$6 (%$locals_tigermain* %load_$_409, i64 %temp_$_420)
 %ret_$_422 = call i8* @concat (i8* null, i8* %res_$_407, i8* %ret_$_421)
 %var_ptr_$_423 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 2
 store i8* %ret_$_422, i8** %var_ptr_$_423
 %var_ptr_$_424 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 1
 %res_$_425 = load i64, i64* %var_ptr_$_424
 %temp_$_426 = mul i64 %res_$_425, 10
 %var_ptr_$_429 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 1
 %res_$_430 = load i64, i64* %var_ptr_$_429
 %temp_$_431 = mul i64 %res_$_430, 10
 %lnk_$_432 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_433 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_432
 %var_ptr_$_434 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_433, i32 0, i32 13
 %res_$_435 = load i64, i64* %var_ptr_$_434
 %cnd_$_436 = icmp eq i64 %res_$_435, 0
 br i1 %cnd_$_436, label %thn_$_427, label %mrg_$_428
thn_$_427:
 call i64 @divisionByZero ()
 br label %mrg_$_428
mrg_$_428:
 %temp_$_437 = sdiv i64 %temp_$_431, %res_$_435
 %lnk_$_438 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 0
 %load_$_439 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_438
 %var_ptr_$_440 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_439, i32 0, i32 13
 %res_$_441 = load i64, i64* %var_ptr_$_440
 %temp_$_442 = mul i64 %temp_$_437, %res_$_441
 %temp_$_443 = sub i64 %temp_$_426, %temp_$_442
 %var_ptr_$_444 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 1
 store i64 %temp_$_443, i64* %var_ptr_$_444
 br label %test_$_395
mrg_$_397:
 %var_ptr_$_445 = getelementptr %$locals_fstr$9, %$locals_fstr$9* %locals_$_7, i32 0, i32 2
 %res_$_446 = load i8*, i8** %var_ptr_$_445
 store i8* %res_$_446, i8** %temp_$_378
 br label %mrg_$_381
mrg_$_381:
 %res_$_447 = load i8*, i8** %temp_$_378
 ret i8* %res_$_447
}

define void @tigermain (i8* %$sl) {
 %locals_$_8 = alloca %$locals_tigermain
 %arg_$_448 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_448
 %temp_$_449 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 13
 store i64 128, i64* %temp_$_449
 %temp_$_526 = bitcast { i64, [31 x i8] }* @str_$_525 to i8*
 call void @print (i8* null, i8* %temp_$_526)
 %temp_$_492 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 2
 store i64 2, i64* %temp_$_492
 br label %test_$_493
test_$_493:
 %var_ptr_$_496 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 2
 %res_$_497 = load i64, i64* %var_ptr_$_496
 %temp_$_498 = icmp sle i64 %res_$_497, 10
 %temp_$_499 = zext i1 %temp_$_498 to i64
 %cnd_$_500 = icmp ne i64 %temp_$_499, 0
 br i1 %cnd_$_500, label %body_$_494, label %mrg_$_495
body_$_494:
 %temp_$_516 = bitcast { i64, [7 x i8] }* @str_$_515 to i8*
 call void @print (i8* null, i8* %temp_$_516)
 %var_ptr_$_511 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 2
 %res_$_512 = load i64, i64* %var_ptr_$_511
 %ret_$_513 = call i8* @str$6 (%$locals_tigermain* %locals_$_8, i64 %res_$_512)
 call void @print (i8* null, i8* %ret_$_513)
 %temp_$_509 = bitcast { i64, [5 x i8] }* @str_$_508 to i8*
 call void @print (i8* null, i8* %temp_$_509)
 %var_ptr_$_502 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 2
 %res_$_503 = load i64, i64* %var_ptr_$_502
 %ret_$_504 = call i64 @fix$4 (%$locals_tigermain* %locals_$_8, i64 %res_$_503)
 %ret_$_505 = call i64 @sqrt$7 (%$locals_tigermain* %locals_$_8, i64 %ret_$_504)
 %ret_$_506 = call i8* @fstr$9 (%$locals_tigermain* %locals_$_8, i64 %ret_$_505)
 call void @print (i8* null, i8* %ret_$_506)
 %temp_$_519 = bitcast { i64, [1 x i8] }* @str_$_518 to i8*
 call void @print (i8* null, i8* %temp_$_519)
 %var_ptr_$_520 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 2
 %res_$_521 = load i64, i64* %var_ptr_$_520
 %temp_$_522 = add i64 %res_$_521, 1
 %var_ptr_$_523 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 2
 store i64 %temp_$_522, i64* %var_ptr_$_523
 br label %test_$_493
mrg_$_495:
 %temp_$_491 = bitcast { i64, [19 x i8] }* @str_$_490 to i8*
 call void @print (i8* null, i8* %temp_$_491)
 %temp_$_450 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 store i64 0, i64* %temp_$_450
 br label %test_$_451
test_$_451:
 %var_ptr_$_454 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 %res_$_455 = load i64, i64* %var_ptr_$_454
 %temp_$_456 = icmp sle i64 %res_$_455, 30
 %temp_$_457 = zext i1 %temp_$_456 to i64
 %cnd_$_458 = icmp ne i64 %temp_$_457, 0
 br i1 %cnd_$_458, label %body_$_452, label %mrg_$_453
body_$_452:
 %temp_$_481 = bitcast { i64, [6 x i8] }* @str_$_480 to i8*
 call void @print (i8* null, i8* %temp_$_481)
 %var_ptr_$_472 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 %res_$_473 = load i64, i64* %var_ptr_$_472
 %temp_$_474 = mul i64 %res_$_473, 10
 %ret_$_475 = call i64 @fix$4 (%$locals_tigermain* %locals_$_8, i64 %temp_$_474)
 %ret_$_476 = call i64 @fix$4 (%$locals_tigermain* %locals_$_8, i64 100)
 %ret_$_477 = call i64 @div$3 (%$locals_tigermain* %locals_$_8, i64 %ret_$_475, i64 %ret_$_476)
 %ret_$_478 = call i8* @fstr$9 (%$locals_tigermain* %locals_$_8, i64 %ret_$_477)
 call void @print (i8* null, i8* %ret_$_478)
 %temp_$_470 = bitcast { i64, [5 x i8] }* @str_$_469 to i8*
 call void @print (i8* null, i8* %temp_$_470)
 %var_ptr_$_460 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 %res_$_461 = load i64, i64* %var_ptr_$_460
 %temp_$_462 = mul i64 %res_$_461, 10
 %ret_$_463 = call i64 @fix$4 (%$locals_tigermain* %locals_$_8, i64 %temp_$_462)
 %ret_$_464 = call i64 @fix$4 (%$locals_tigermain* %locals_$_8, i64 100)
 %ret_$_465 = call i64 @div$3 (%$locals_tigermain* %locals_$_8, i64 %ret_$_463, i64 %ret_$_464)
 %ret_$_466 = call i64 @sin$8 (%$locals_tigermain* %locals_$_8, i64 %ret_$_465)
 %ret_$_467 = call i8* @fstr$9 (%$locals_tigermain* %locals_$_8, i64 %ret_$_466)
 call void @print (i8* null, i8* %ret_$_467)
 %temp_$_484 = bitcast { i64, [1 x i8] }* @str_$_483 to i8*
 call void @print (i8* null, i8* %temp_$_484)
 %var_ptr_$_485 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 %res_$_486 = load i64, i64* %var_ptr_$_485
 %temp_$_487 = add i64 %res_$_486, 1
 %var_ptr_$_488 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 store i64 %temp_$_487, i64* %var_ptr_$_488
 br label %test_$_451
mrg_$_453:
 %temp_$_529 = bitcast { i64, [25 x i8] }* @str_$_528 to i8*
 call void @print (i8* null, i8* %temp_$_529)
 ret void
}
