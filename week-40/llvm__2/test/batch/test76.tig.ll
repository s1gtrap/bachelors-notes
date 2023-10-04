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

%bool$0 = type i64
%$locals_chk$3 = type { %$locals_tigermain*, i64, i64, i8* }
%$locals_fill$4 = type { %$locals_tigermain*, i64, i64, i8* }
%$locals_newl$5 = type { %$locals_tigermain* }
%$locals_XT$18 = type { %$locals_TstBool$6* }
%$locals_XF$19 = type { %$locals_TstBool$6* }
%$locals_Q$20 = type { %$locals_TstBool$6* }
%$locals_FF$28 = type { %$locals_F$21*, i64 }
%$locals_F$21 = type { %$locals_TstBool$6*, i64, i64, i64, i64, i64, i64, i8* }
%$locals_TstBool$6 = type { %$locals_tigermain*, i8*, i64, i64, i64, i64, i64, i64, i64 }
%$locals_tigermain = type { i8*, i8*, i8*, i64, i64, i64, i64 }

@str_$_994 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"9"}
@str_$_962 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_957 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"."}
@str_$_946 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"."}
@str_$_941 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"b"}
@str_$_919 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"c"}
@str_$_898 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"d"}
@str_$_881 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"e"}
@str_$_871 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"f"}
@str_$_852 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"g"}
@str_$_833 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"h"}
@str_$_814 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"i"}
@str_$_795 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"j"}
@str_$_778 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"k"}
@str_$_761 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"l"}
@str_$_744 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"m"}
@str_$_725 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"n"}
@str_$_707 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"o"}
@str_$_694 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"p"}
@str_$_681 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"q"}
@str_$_671 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"r"}
@str_$_661 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"s"}
@str_$_651 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"t"}
@str_$_641 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"u"}
@str_$_623 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"v"}
@str_$_600 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"w"}
@str_$_584 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"x"}
@str_$_563 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"y"}
@str_$_547 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"z"}
@str_$_525 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_505 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"1"}
@str_$_485 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"2"}
@str_$_463 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"3"}
@str_$_441 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"4"}
@str_$_421 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"5"}
@str_$_401 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"6"}
@str_$_381 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"7"}
@str_$_361 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"8"}
@str_$_196 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_186 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"9"}
@str_$_157 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_134 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"9"}
@str_$_122 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_99 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"z"}
@str_$_70 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_51 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"z"}
@str_$_39 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_32 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"."}

define void @chk$3 (%$locals_tigermain* %$sl, i64 %a$7, i64 %b$8, i8* %msg$9) {
 %locals_$_0 = alloca %$locals_chk$3
 %arg_$_10 = getelementptr %$locals_chk$3, %$locals_chk$3* %locals_$_0, i32 0, i32 3
 store i8* %msg$9, i8** %arg_$_10
 %arg_$_11 = getelementptr %$locals_chk$3, %$locals_chk$3* %locals_$_0, i32 0, i32 2
 store i64 %b$8, i64* %arg_$_11
 %arg_$_12 = getelementptr %$locals_chk$3, %$locals_chk$3* %locals_$_0, i32 0, i32 1
 store i64 %a$7, i64* %arg_$_12
 %arg_$_13 = getelementptr %$locals_chk$3, %$locals_chk$3* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_13
 %var_ptr_$_17 = getelementptr %$locals_chk$3, %$locals_chk$3* %locals_$_0, i32 0, i32 1
 %res_$_18 = load i64, i64* %var_ptr_$_17
 %var_ptr_$_19 = getelementptr %$locals_chk$3, %$locals_chk$3* %locals_$_0, i32 0, i32 2
 %res_$_20 = load i64, i64* %var_ptr_$_19
 %temp_$_21 = icmp eq i64 %res_$_18, %res_$_20
 %temp_$_22 = zext i1 %temp_$_21 to i64
 %cnd_$_23 = icmp ne i64 %temp_$_22, 0
 br i1 %cnd_$_23, label %thn_$_14, label %els_$_15
thn_$_14:
 %lnk_$_24 = getelementptr %$locals_chk$3, %$locals_chk$3* %locals_$_0, i32 0, i32 0
 %load_$_25 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_24
 %var_ptr_$_27 = getelementptr %$locals_chk$3, %$locals_chk$3* %locals_$_0, i32 0, i32 3
 %res_$_28 = load i8*, i8** %var_ptr_$_27
 call void @print (i8* null, i8* %res_$_28)
 br label %mrg_$_16
els_$_15:
 %lnk_$_29 = getelementptr %$locals_chk$3, %$locals_chk$3* %locals_$_0, i32 0, i32 0
 %load_$_30 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_29
 %temp_$_33 = bitcast { i64, [1 x i8] }* @str_$_32 to i8*
 call void @print (i8* null, i8* %temp_$_33)
 br label %mrg_$_16
mrg_$_16:
 ret void
}

define void @fill$4 (%$locals_tigermain* %$sl, i8* %first$10) {
 %temp_$_150 = alloca i64
 %temp_$_146 = alloca i64
 %temp_$_142 = alloca i64
 %temp_$_63 = alloca i64
 %temp_$_59 = alloca i64
 %locals_$_1 = alloca %$locals_fill$4
 %arg_$_34 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 3
 store i8* %first$10, i8** %arg_$_34
 %arg_$_35 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_35
 %lnk_$_36 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_37 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_36
 %temp_$_40 = bitcast { i64, [1 x i8] }* @str_$_39 to i8*
 %ret_$_41 = call i64 @ord (i8* null, i8* %temp_$_40)
 %temp_$_42 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 2
 store i64 %ret_$_41, i64* %temp_$_42
 br label %test_$_43
test_$_43:
 %var_ptr_$_46 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 2
 %res_$_47 = load i64, i64* %var_ptr_$_46
 %lnk_$_48 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_49 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_48
 %temp_$_52 = bitcast { i64, [1 x i8] }* @str_$_51 to i8*
 %ret_$_53 = call i64 @ord (i8* null, i8* %temp_$_52)
 %temp_$_54 = icmp sle i64 %res_$_47, %ret_$_53
 %temp_$_55 = zext i1 %temp_$_54 to i64
 %cnd_$_56 = icmp ne i64 %temp_$_55, 0
 br i1 %cnd_$_56, label %body_$_44, label %mrg_$_45
body_$_44:
 %lnk_$_67 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_68 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_67
 %temp_$_71 = bitcast { i64, [1 x i8] }* @str_$_70 to i8*
 %ret_$_72 = call i64 @ord (i8* null, i8* %temp_$_71)
 %lnk_$_73 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_74 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_73
 %var_ptr_$_76 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 3
 %res_$_77 = load i8*, i8** %var_ptr_$_76
 %ret_$_78 = call i64 @ord (i8* null, i8* %res_$_77)
 %temp_$_79 = icmp sle i64 %ret_$_72, %ret_$_78
 %temp_$_80 = zext i1 %temp_$_79 to i64
 %cnd_$_81 = icmp ne i64 %temp_$_80, 0
 br i1 %cnd_$_81, label %thn_$_64, label %els_$_65
thn_$_64:
 %lnk_$_82 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_83 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_82
 %var_ptr_$_85 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 3
 %res_$_86 = load i8*, i8** %var_ptr_$_85
 %ret_$_87 = call i64 @ord (i8* null, i8* %res_$_86)
 %var_ptr_$_88 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 2
 %res_$_89 = load i64, i64* %var_ptr_$_88
 %temp_$_90 = icmp sle i64 %ret_$_87, %res_$_89
 %temp_$_91 = zext i1 %temp_$_90 to i64
 store i64 %temp_$_91, i64* %temp_$_63
 br label %mrg_$_66
els_$_65:
 store i64 0, i64* %temp_$_63
 br label %mrg_$_66
mrg_$_66:
 %res_$_92 = load i64, i64* %temp_$_63
 %cnd_$_93 = icmp ne i64 %res_$_92, 0
 br i1 %cnd_$_93, label %thn_$_60, label %els_$_61
thn_$_60:
 %var_ptr_$_94 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 2
 %res_$_95 = load i64, i64* %var_ptr_$_94
 %lnk_$_96 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_97 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_96
 %temp_$_100 = bitcast { i64, [1 x i8] }* @str_$_99 to i8*
 %ret_$_101 = call i64 @ord (i8* null, i8* %temp_$_100)
 %temp_$_102 = icmp sle i64 %res_$_95, %ret_$_101
 %temp_$_103 = zext i1 %temp_$_102 to i64
 store i64 %temp_$_103, i64* %temp_$_59
 br label %mrg_$_62
els_$_61:
 store i64 0, i64* %temp_$_59
 br label %mrg_$_62
mrg_$_62:
 %res_$_104 = load i64, i64* %temp_$_59
 %cnd_$_105 = icmp ne i64 %res_$_104, 0
 br i1 %cnd_$_105, label %thn_$_57, label %mrg_$_58
thn_$_57:
 %lnk_$_106 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_107 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_106
 %lnk_$_109 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_110 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_109
 %var_ptr_$_112 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 2
 %res_$_113 = load i64, i64* %var_ptr_$_112
 %ret_$_114 = call i8* @chr (i8* null, i64 %res_$_113)
 call void @print (i8* null, i8* %ret_$_114)
 br label %mrg_$_58
mrg_$_58:
 %var_ptr_$_115 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 2
 %res_$_116 = load i64, i64* %var_ptr_$_115
 %temp_$_117 = add i64 %res_$_116, 1
 %var_ptr_$_118 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 2
 store i64 %temp_$_117, i64* %var_ptr_$_118
 br label %test_$_43
mrg_$_45:
 %lnk_$_119 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_120 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_119
 %temp_$_123 = bitcast { i64, [1 x i8] }* @str_$_122 to i8*
 %ret_$_124 = call i64 @ord (i8* null, i8* %temp_$_123)
 %temp_$_125 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 1
 store i64 %ret_$_124, i64* %temp_$_125
 br label %test_$_126
test_$_126:
 %var_ptr_$_129 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 1
 %res_$_130 = load i64, i64* %var_ptr_$_129
 %lnk_$_131 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_132 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_131
 %temp_$_135 = bitcast { i64, [1 x i8] }* @str_$_134 to i8*
 %ret_$_136 = call i64 @ord (i8* null, i8* %temp_$_135)
 %temp_$_137 = icmp sle i64 %res_$_130, %ret_$_136
 %temp_$_138 = zext i1 %temp_$_137 to i64
 %cnd_$_139 = icmp ne i64 %temp_$_138, 0
 br i1 %cnd_$_139, label %body_$_127, label %mrg_$_128
body_$_127:
 %lnk_$_154 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_155 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_154
 %temp_$_158 = bitcast { i64, [1 x i8] }* @str_$_157 to i8*
 %ret_$_159 = call i64 @ord (i8* null, i8* %temp_$_158)
 %lnk_$_160 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_161 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_160
 %var_ptr_$_163 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 3
 %res_$_164 = load i8*, i8** %var_ptr_$_163
 %ret_$_165 = call i64 @ord (i8* null, i8* %res_$_164)
 %temp_$_166 = icmp sle i64 %ret_$_159, %ret_$_165
 %temp_$_167 = zext i1 %temp_$_166 to i64
 %cnd_$_168 = icmp ne i64 %temp_$_167, 0
 br i1 %cnd_$_168, label %thn_$_151, label %els_$_152
thn_$_151:
 %lnk_$_169 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_170 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_169
 %var_ptr_$_172 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 3
 %res_$_173 = load i8*, i8** %var_ptr_$_172
 %ret_$_174 = call i64 @ord (i8* null, i8* %res_$_173)
 %var_ptr_$_175 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 1
 %res_$_176 = load i64, i64* %var_ptr_$_175
 %temp_$_177 = icmp sle i64 %ret_$_174, %res_$_176
 %temp_$_178 = zext i1 %temp_$_177 to i64
 store i64 %temp_$_178, i64* %temp_$_150
 br label %mrg_$_153
els_$_152:
 store i64 0, i64* %temp_$_150
 br label %mrg_$_153
mrg_$_153:
 %res_$_179 = load i64, i64* %temp_$_150
 %cnd_$_180 = icmp ne i64 %res_$_179, 0
 br i1 %cnd_$_180, label %thn_$_147, label %els_$_148
thn_$_147:
 %var_ptr_$_181 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 1
 %res_$_182 = load i64, i64* %var_ptr_$_181
 %lnk_$_183 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_184 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_183
 %temp_$_187 = bitcast { i64, [1 x i8] }* @str_$_186 to i8*
 %ret_$_188 = call i64 @ord (i8* null, i8* %temp_$_187)
 %temp_$_189 = icmp sle i64 %res_$_182, %ret_$_188
 %temp_$_190 = zext i1 %temp_$_189 to i64
 store i64 %temp_$_190, i64* %temp_$_146
 br label %mrg_$_149
els_$_148:
 store i64 0, i64* %temp_$_146
 br label %mrg_$_149
mrg_$_149:
 %res_$_191 = load i64, i64* %temp_$_146
 %cnd_$_192 = icmp ne i64 %res_$_191, 0
 br i1 %cnd_$_192, label %thn_$_143, label %els_$_144
thn_$_143:
 store i64 1, i64* %temp_$_142
 br label %mrg_$_145
els_$_144:
 %lnk_$_193 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_194 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_193
 %temp_$_197 = bitcast { i64, [1 x i8] }* @str_$_196 to i8*
 %ret_$_198 = call i64 @ord (i8* null, i8* %temp_$_197)
 %lnk_$_199 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_200 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_199
 %var_ptr_$_202 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 3
 %res_$_203 = load i8*, i8** %var_ptr_$_202
 %ret_$_204 = call i64 @ord (i8* null, i8* %res_$_203)
 %temp_$_205 = icmp sle i64 %ret_$_198, %ret_$_204
 %temp_$_206 = zext i1 %temp_$_205 to i64
 store i64 %temp_$_206, i64* %temp_$_142
 br label %mrg_$_145
mrg_$_145:
 %res_$_207 = load i64, i64* %temp_$_142
 %cnd_$_208 = icmp ne i64 %res_$_207, 0
 br i1 %cnd_$_208, label %thn_$_140, label %mrg_$_141
thn_$_140:
 %lnk_$_209 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_210 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_209
 %lnk_$_212 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 0
 %load_$_213 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_212
 %var_ptr_$_215 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 1
 %res_$_216 = load i64, i64* %var_ptr_$_215
 %ret_$_217 = call i8* @chr (i8* null, i64 %res_$_216)
 call void @print (i8* null, i8* %ret_$_217)
 br label %mrg_$_141
mrg_$_141:
 %var_ptr_$_218 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 1
 %res_$_219 = load i64, i64* %var_ptr_$_218
 %temp_$_220 = add i64 %res_$_219, 1
 %var_ptr_$_221 = getelementptr %$locals_fill$4, %$locals_fill$4* %locals_$_1, i32 0, i32 1
 store i64 %temp_$_220, i64* %var_ptr_$_221
 br label %test_$_126
mrg_$_128:
 ret void
}

define void @newl$5 (%$locals_tigermain* %$sl) {
 %locals_$_2 = alloca %$locals_newl$5
 %arg_$_222 = getelementptr %$locals_newl$5, %$locals_newl$5* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_222
 %lnk_$_223 = getelementptr %$locals_newl$5, %$locals_newl$5* %locals_$_2, i32 0, i32 0
 %load_$_224 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_223
 %lnk_$_226 = getelementptr %$locals_newl$5, %$locals_newl$5* %locals_$_2, i32 0, i32 0
 %load_$_227 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_226
 %ret_$_229 = call i8* @chr (i8* null, i64 10)
 call void @print (i8* null, i8* %ret_$_229)
 ret void
}

define i64 @XT$18 (%$locals_TstBool$6* %$sl) {
 %locals_$_3 = alloca %$locals_XT$18
 %arg_$_230 = getelementptr %$locals_XT$18, %$locals_XT$18* %locals_$_3, i32 0, i32 0
 store %$locals_TstBool$6* %$sl, %$locals_TstBool$6** %arg_$_230
 %lnk_$_231 = getelementptr %$locals_XT$18, %$locals_XT$18* %locals_$_3, i32 0, i32 0
 %load_$_232 = load %$locals_TstBool$6*, %$locals_TstBool$6** %lnk_$_231
 %lnk_$_233 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %load_$_232, i32 0, i32 0
 %load_$_234 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_233
 %var_ptr_$_235 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_234, i32 0, i32 6
 %res_$_236 = load i64, i64* %var_ptr_$_235
 ret i64 %res_$_236
}

define i64 @XF$19 (%$locals_TstBool$6* %$sl) {
 %locals_$_4 = alloca %$locals_XF$19
 %arg_$_237 = getelementptr %$locals_XF$19, %$locals_XF$19* %locals_$_4, i32 0, i32 0
 store %$locals_TstBool$6* %$sl, %$locals_TstBool$6** %arg_$_237
 %lnk_$_238 = getelementptr %$locals_XF$19, %$locals_XF$19* %locals_$_4, i32 0, i32 0
 %load_$_239 = load %$locals_TstBool$6*, %$locals_TstBool$6** %lnk_$_238
 %lnk_$_240 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %load_$_239, i32 0, i32 0
 %load_$_241 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_240
 %var_ptr_$_242 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_241, i32 0, i32 5
 %res_$_243 = load i64, i64* %var_ptr_$_242
 ret i64 %res_$_243
}

define i64 @Q$20 (%$locals_TstBool$6* %$sl) {
 %locals_$_5 = alloca %$locals_Q$20
 %arg_$_244 = getelementptr %$locals_Q$20, %$locals_Q$20* %locals_$_5, i32 0, i32 0
 store %$locals_TstBool$6* %$sl, %$locals_TstBool$6** %arg_$_244
 %lnk_$_245 = getelementptr %$locals_Q$20, %$locals_Q$20* %locals_$_5, i32 0, i32 0
 %load_$_246 = load %$locals_TstBool$6*, %$locals_TstBool$6** %lnk_$_245
 %var_ptr_$_247 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %load_$_246, i32 0, i32 5
 %res_$_248 = load i64, i64* %var_ptr_$_247
 %lnk_$_249 = getelementptr %$locals_Q$20, %$locals_Q$20* %locals_$_5, i32 0, i32 0
 %load_$_250 = load %$locals_TstBool$6*, %$locals_TstBool$6** %lnk_$_249
 %var_ptr_$_251 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %load_$_250, i32 0, i32 4
 %res_$_252 = load i64, i64* %var_ptr_$_251
 %temp_$_253 = icmp eq i64 %res_$_248, %res_$_252
 %temp_$_254 = zext i1 %temp_$_253 to i64
 ret i64 %temp_$_254
}

define i64 @FF$28 (%$locals_F$21* %$sl, i64 %b$29) {
 %locals_$_6 = alloca %$locals_FF$28
 %arg_$_255 = getelementptr %$locals_FF$28, %$locals_FF$28* %locals_$_6, i32 0, i32 1
 store i64 %b$29, i64* %arg_$_255
 %arg_$_256 = getelementptr %$locals_FF$28, %$locals_FF$28* %locals_$_6, i32 0, i32 0
 store %$locals_F$21* %$sl, %$locals_F$21** %arg_$_256
 %var_ptr_$_257 = getelementptr %$locals_FF$28, %$locals_FF$28* %locals_$_6, i32 0, i32 1
 %res_$_258 = load i64, i64* %var_ptr_$_257
 ret i64 %res_$_258
}

define void @F$21 (%$locals_TstBool$6* %$sl, i64 %b1$22, i64 %b2$23, i8* %ch$24) {
 %temp_$_311 = alloca i64
 %temp_$_292 = alloca i64
 %locals_$_7 = alloca %$locals_F$21
 %arg_$_259 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 7
 store i8* %ch$24, i8** %arg_$_259
 %arg_$_260 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 6
 store i64 %b2$23, i64* %arg_$_260
 %arg_$_261 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 5
 store i64 %b1$22, i64* %arg_$_261
 %arg_$_262 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 0
 store %$locals_TstBool$6* %$sl, %$locals_TstBool$6** %arg_$_262
 %lnk_$_263 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 0
 %load_$_264 = load %$locals_TstBool$6*, %$locals_TstBool$6** %lnk_$_263
 %lnk_$_265 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %load_$_264, i32 0, i32 0
 %load_$_266 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_265
 %var_ptr_$_267 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_266, i32 0, i32 5
 %res_$_268 = load i64, i64* %var_ptr_$_267
 %temp_$_269 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 4
 store i64 %res_$_268, i64* %temp_$_269
 %lnk_$_270 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 0
 %load_$_271 = load %$locals_TstBool$6*, %$locals_TstBool$6** %lnk_$_270
 %lnk_$_272 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %load_$_271, i32 0, i32 0
 %load_$_273 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_272
 %var_ptr_$_274 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_273, i32 0, i32 5
 %res_$_275 = load i64, i64* %var_ptr_$_274
 %temp_$_276 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 3
 store i64 %res_$_275, i64* %temp_$_276
 %lnk_$_277 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 0
 %load_$_278 = load %$locals_TstBool$6*, %$locals_TstBool$6** %lnk_$_277
 %lnk_$_279 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %load_$_278, i32 0, i32 0
 %load_$_280 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_279
 %var_ptr_$_281 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_280, i32 0, i32 5
 %res_$_282 = load i64, i64* %var_ptr_$_281
 %temp_$_283 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 2
 store i64 %res_$_282, i64* %temp_$_283
 %var_ptr_$_296 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 5
 %res_$_297 = load i64, i64* %var_ptr_$_296
 %ret_$_298 = call i64 @FF$28 (%$locals_F$21* %locals_$_7, i64 %res_$_297)
 %cnd_$_299 = icmp ne i64 %ret_$_298, 0
 br i1 %cnd_$_299, label %thn_$_293, label %els_$_294
thn_$_293:
 %var_ptr_$_300 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 6
 %res_$_301 = load i64, i64* %var_ptr_$_300
 %ret_$_302 = call i64 @FF$28 (%$locals_F$21* %locals_$_7, i64 %res_$_301)
 store i64 %ret_$_302, i64* %temp_$_292
 br label %mrg_$_295
els_$_294:
 store i64 0, i64* %temp_$_292
 br label %mrg_$_295
mrg_$_295:
 %res_$_303 = load i64, i64* %temp_$_292
 %var_ptr_$_304 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 4
 store i64 %res_$_303, i64* %var_ptr_$_304
 %var_ptr_$_288 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 5
 %res_$_289 = load i64, i64* %var_ptr_$_288
 %ret_$_290 = call i64 @FF$28 (%$locals_F$21* %locals_$_7, i64 %res_$_289)
 %var_ptr_$_291 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 3
 store i64 %ret_$_290, i64* %var_ptr_$_291
 %var_ptr_$_284 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 6
 %res_$_285 = load i64, i64* %var_ptr_$_284
 %ret_$_286 = call i64 @FF$28 (%$locals_F$21* %locals_$_7, i64 %res_$_285)
 %var_ptr_$_287 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 2
 store i64 %ret_$_286, i64* %var_ptr_$_287
 %lnk_$_305 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 0
 %load_$_306 = load %$locals_TstBool$6*, %$locals_TstBool$6** %lnk_$_305
 %lnk_$_307 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %load_$_306, i32 0, i32 0
 %load_$_308 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_307
 %var_ptr_$_309 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 4
 %res_$_310 = load i64, i64* %var_ptr_$_309
 %var_ptr_$_315 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 3
 %res_$_316 = load i64, i64* %var_ptr_$_315
 %cnd_$_317 = icmp ne i64 %res_$_316, 0
 br i1 %cnd_$_317, label %thn_$_312, label %els_$_313
thn_$_312:
 %var_ptr_$_318 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 2
 %res_$_319 = load i64, i64* %var_ptr_$_318
 store i64 %res_$_319, i64* %temp_$_311
 br label %mrg_$_314
els_$_313:
 store i64 0, i64* %temp_$_311
 br label %mrg_$_314
mrg_$_314:
 %res_$_320 = load i64, i64* %temp_$_311
 %var_ptr_$_321 = getelementptr %$locals_F$21, %$locals_F$21* %locals_$_7, i32 0, i32 7
 %res_$_322 = load i8*, i8** %var_ptr_$_321
 call void @chk$3 (%$locals_tigermain* %load_$_308, i64 %res_$_310, i64 %res_$_320, i8* %res_$_322)
 ret void
}

define void @TstBool$6 (%$locals_tigermain* %$sl) {
 %temp_$_976 = alloca i64
 %temp_$_343 = alloca i64
 %temp_$_365 = alloca i64
 %temp_$_385 = alloca i64
 %temp_$_405 = alloca i64
 %temp_$_425 = alloca i64
 %temp_$_445 = alloca i64
 %temp_$_467 = alloca i64
 %temp_$_489 = alloca i64
 %temp_$_509 = alloca i64
 %temp_$_731 = alloca i64
 %temp_$_748 = alloca i64
 %temp_$_765 = alloca i64
 %temp_$_782 = alloca i64
 %temp_$_799 = alloca i64
 %temp_$_818 = alloca i64
 %temp_$_837 = alloca i64
 %temp_$_856 = alloca i64
 %temp_$_900 = alloca i64
 %temp_$_921 = alloca i64
 %locals_$_8 = alloca %$locals_TstBool$6
 %arg_$_323 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_323
 %lnk_$_324 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_325 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_324
 %var_ptr_$_326 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_325, i32 0, i32 5
 %res_$_327 = load i64, i64* %var_ptr_$_326
 %temp_$_328 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 store i64 %res_$_327, i64* %temp_$_328
 %lnk_$_329 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_330 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_329
 %var_ptr_$_331 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_330, i32 0, i32 5
 %res_$_332 = load i64, i64* %var_ptr_$_331
 %temp_$_333 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 7
 store i64 %res_$_332, i64* %temp_$_333
 %lnk_$_334 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_335 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_334
 %var_ptr_$_336 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_335, i32 0, i32 5
 %res_$_337 = load i64, i64* %var_ptr_$_336
 %temp_$_338 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 6
 store i64 %res_$_337, i64* %temp_$_338
 %temp_$_339 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 5
 store i64 0, i64* %temp_$_339
 %temp_$_340 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 4
 store i64 0, i64* %temp_$_340
 %lnk_$_969 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_970 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_969
 %var_ptr_$_971 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_970, i32 0, i32 5
 %res_$_972 = load i64, i64* %var_ptr_$_971
 %var_ptr_$_973 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 store i64 %res_$_972, i64* %var_ptr_$_973
 %lnk_$_964 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_965 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_964
 %var_ptr_$_966 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_965, i32 0, i32 6
 %res_$_967 = load i64, i64* %var_ptr_$_966
 %var_ptr_$_968 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 7
 store i64 %res_$_967, i64* %var_ptr_$_968
 %var_ptr_$_951 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_952 = load i64, i64* %var_ptr_$_951
 %cnd_$_953 = icmp ne i64 %res_$_952, 0
 br i1 %cnd_$_953, label %thn_$_948, label %els_$_949
thn_$_948:
 %lnk_$_954 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_955 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_954
 %temp_$_958 = bitcast { i64, [1 x i8] }* @str_$_957 to i8*
 call void @print (i8* null, i8* %temp_$_958)
 br label %mrg_$_950
els_$_949:
 %lnk_$_959 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_960 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_959
 %temp_$_963 = bitcast { i64, [1 x i8] }* @str_$_962 to i8*
 call void @print (i8* null, i8* %temp_$_963)
 br label %mrg_$_950
mrg_$_950:
 %var_ptr_$_935 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 7
 %res_$_936 = load i64, i64* %var_ptr_$_935
 %cnd_$_937 = icmp ne i64 %res_$_936, 0
 br i1 %cnd_$_937, label %thn_$_932, label %els_$_933
thn_$_932:
 %lnk_$_938 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_939 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_938
 %temp_$_942 = bitcast { i64, [1 x i8] }* @str_$_941 to i8*
 call void @print (i8* null, i8* %temp_$_942)
 br label %mrg_$_934
els_$_933:
 %lnk_$_943 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_944 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_943
 %temp_$_947 = bitcast { i64, [1 x i8] }* @str_$_946 to i8*
 call void @print (i8* null, i8* %temp_$_947)
 br label %mrg_$_934
mrg_$_934:
 %var_ptr_$_925 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_926 = load i64, i64* %var_ptr_$_925
 %cnd_$_927 = icmp ne i64 %res_$_926, 0
 br i1 %cnd_$_927, label %thn_$_922, label %els_$_923
thn_$_922:
 store i64 1, i64* %temp_$_921
 br label %mrg_$_924
els_$_923:
 %var_ptr_$_928 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 7
 %res_$_929 = load i64, i64* %var_ptr_$_928
 store i64 %res_$_929, i64* %temp_$_921
 br label %mrg_$_924
mrg_$_924:
 %res_$_930 = load i64, i64* %temp_$_921
 %var_ptr_$_931 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 6
 store i64 %res_$_930, i64* %var_ptr_$_931
 %lnk_$_911 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_912 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_911
 %var_ptr_$_913 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 6
 %res_$_914 = load i64, i64* %var_ptr_$_913
 %lnk_$_915 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_916 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_915
 %var_ptr_$_917 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_916, i32 0, i32 6
 %res_$_918 = load i64, i64* %var_ptr_$_917
 %temp_$_920 = bitcast { i64, [1 x i8] }* @str_$_919 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_912, i64 %res_$_914, i64 %res_$_918, i8* %temp_$_920)
 %var_ptr_$_904 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_905 = load i64, i64* %var_ptr_$_904
 %cnd_$_906 = icmp ne i64 %res_$_905, 0
 br i1 %cnd_$_906, label %thn_$_901, label %els_$_902
thn_$_901:
 %var_ptr_$_907 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 7
 %res_$_908 = load i64, i64* %var_ptr_$_907
 store i64 %res_$_908, i64* %temp_$_900
 br label %mrg_$_903
els_$_902:
 store i64 0, i64* %temp_$_900
 br label %mrg_$_903
mrg_$_903:
 %res_$_909 = load i64, i64* %temp_$_900
 %var_ptr_$_910 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 6
 store i64 %res_$_909, i64* %var_ptr_$_910
 %lnk_$_890 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_891 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_890
 %var_ptr_$_892 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 6
 %res_$_893 = load i64, i64* %var_ptr_$_892
 %lnk_$_894 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_895 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_894
 %var_ptr_$_896 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_895, i32 0, i32 5
 %res_$_897 = load i64, i64* %var_ptr_$_896
 %temp_$_899 = bitcast { i64, [1 x i8] }* @str_$_898 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_891, i64 %res_$_893, i64 %res_$_897, i8* %temp_$_899)
 %lnk_$_883 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_884 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_883
 %var_ptr_$_886 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 7
 %res_$_887 = load i64, i64* %var_ptr_$_886
 %ret_$_888 = call i64 @not (i8* null, i64 %res_$_887)
 %var_ptr_$_889 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 6
 store i64 %ret_$_888, i64* %var_ptr_$_889
 %lnk_$_873 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_874 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_873
 %var_ptr_$_875 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 6
 %res_$_876 = load i64, i64* %var_ptr_$_875
 %lnk_$_877 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_878 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_877
 %var_ptr_$_879 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_878, i32 0, i32 5
 %res_$_880 = load i64, i64* %var_ptr_$_879
 %temp_$_882 = bitcast { i64, [1 x i8] }* @str_$_881 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_874, i64 %res_$_876, i64 %res_$_880, i8* %temp_$_882)
 %lnk_$_854 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_855 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_854
 %lnk_$_860 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_861 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_860
 %var_ptr_$_862 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_861, i32 0, i32 5
 %res_$_863 = load i64, i64* %var_ptr_$_862
 %cnd_$_864 = icmp ne i64 %res_$_863, 0
 br i1 %cnd_$_864, label %thn_$_857, label %els_$_858
thn_$_857:
 store i64 1, i64* %temp_$_856
 br label %mrg_$_859
els_$_858:
 %ret_$_865 = call i64 @XT$18 (%$locals_TstBool$6* %locals_$_8)
 store i64 %ret_$_865, i64* %temp_$_856
 br label %mrg_$_859
mrg_$_859:
 %res_$_866 = load i64, i64* %temp_$_856
 %lnk_$_867 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_868 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_867
 %var_ptr_$_869 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_868, i32 0, i32 6
 %res_$_870 = load i64, i64* %var_ptr_$_869
 %temp_$_872 = bitcast { i64, [1 x i8] }* @str_$_871 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_855, i64 %res_$_866, i64 %res_$_870, i8* %temp_$_872)
 %lnk_$_835 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_836 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_835
 %lnk_$_841 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_842 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_841
 %var_ptr_$_843 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_842, i32 0, i32 6
 %res_$_844 = load i64, i64* %var_ptr_$_843
 %cnd_$_845 = icmp ne i64 %res_$_844, 0
 br i1 %cnd_$_845, label %thn_$_838, label %els_$_839
thn_$_838:
 %ret_$_846 = call i64 @XT$18 (%$locals_TstBool$6* %locals_$_8)
 store i64 %ret_$_846, i64* %temp_$_837
 br label %mrg_$_840
els_$_839:
 store i64 0, i64* %temp_$_837
 br label %mrg_$_840
mrg_$_840:
 %res_$_847 = load i64, i64* %temp_$_837
 %lnk_$_848 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_849 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_848
 %var_ptr_$_850 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_849, i32 0, i32 6
 %res_$_851 = load i64, i64* %var_ptr_$_850
 %temp_$_853 = bitcast { i64, [1 x i8] }* @str_$_852 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_836, i64 %res_$_847, i64 %res_$_851, i8* %temp_$_853)
 %lnk_$_816 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_817 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_816
 %ret_$_822 = call i64 @XT$18 (%$locals_TstBool$6* %locals_$_8)
 %cnd_$_823 = icmp ne i64 %ret_$_822, 0
 br i1 %cnd_$_823, label %thn_$_819, label %els_$_820
thn_$_819:
 store i64 1, i64* %temp_$_818
 br label %mrg_$_821
els_$_820:
 %lnk_$_824 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_825 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_824
 %var_ptr_$_826 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_825, i32 0, i32 5
 %res_$_827 = load i64, i64* %var_ptr_$_826
 store i64 %res_$_827, i64* %temp_$_818
 br label %mrg_$_821
mrg_$_821:
 %res_$_828 = load i64, i64* %temp_$_818
 %lnk_$_829 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_830 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_829
 %var_ptr_$_831 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_830, i32 0, i32 6
 %res_$_832 = load i64, i64* %var_ptr_$_831
 %temp_$_834 = bitcast { i64, [1 x i8] }* @str_$_833 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_817, i64 %res_$_828, i64 %res_$_832, i8* %temp_$_834)
 %lnk_$_797 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_798 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_797
 %ret_$_803 = call i64 @XT$18 (%$locals_TstBool$6* %locals_$_8)
 %cnd_$_804 = icmp ne i64 %ret_$_803, 0
 br i1 %cnd_$_804, label %thn_$_800, label %els_$_801
thn_$_800:
 %lnk_$_805 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_806 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_805
 %var_ptr_$_807 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_806, i32 0, i32 6
 %res_$_808 = load i64, i64* %var_ptr_$_807
 store i64 %res_$_808, i64* %temp_$_799
 br label %mrg_$_802
els_$_801:
 store i64 0, i64* %temp_$_799
 br label %mrg_$_802
mrg_$_802:
 %res_$_809 = load i64, i64* %temp_$_799
 %lnk_$_810 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_811 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_810
 %var_ptr_$_812 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_811, i32 0, i32 6
 %res_$_813 = load i64, i64* %var_ptr_$_812
 %temp_$_815 = bitcast { i64, [1 x i8] }* @str_$_814 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_798, i64 %res_$_809, i64 %res_$_813, i8* %temp_$_815)
 %lnk_$_780 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_781 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_780
 %var_ptr_$_786 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_787 = load i64, i64* %var_ptr_$_786
 %cnd_$_788 = icmp ne i64 %res_$_787, 0
 br i1 %cnd_$_788, label %thn_$_783, label %els_$_784
thn_$_783:
 store i64 1, i64* %temp_$_782
 br label %mrg_$_785
els_$_784:
 %ret_$_789 = call i64 @XT$18 (%$locals_TstBool$6* %locals_$_8)
 store i64 %ret_$_789, i64* %temp_$_782
 br label %mrg_$_785
mrg_$_785:
 %res_$_790 = load i64, i64* %temp_$_782
 %lnk_$_791 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_792 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_791
 %var_ptr_$_793 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_792, i32 0, i32 6
 %res_$_794 = load i64, i64* %var_ptr_$_793
 %temp_$_796 = bitcast { i64, [1 x i8] }* @str_$_795 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_781, i64 %res_$_790, i64 %res_$_794, i8* %temp_$_796)
 %lnk_$_763 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_764 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_763
 %ret_$_769 = call i64 @XT$18 (%$locals_TstBool$6* %locals_$_8)
 %cnd_$_770 = icmp ne i64 %ret_$_769, 0
 br i1 %cnd_$_770, label %thn_$_766, label %els_$_767
thn_$_766:
 store i64 1, i64* %temp_$_765
 br label %mrg_$_768
els_$_767:
 %var_ptr_$_771 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_772 = load i64, i64* %var_ptr_$_771
 store i64 %res_$_772, i64* %temp_$_765
 br label %mrg_$_768
mrg_$_768:
 %res_$_773 = load i64, i64* %temp_$_765
 %lnk_$_774 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_775 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_774
 %var_ptr_$_776 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_775, i32 0, i32 6
 %res_$_777 = load i64, i64* %var_ptr_$_776
 %temp_$_779 = bitcast { i64, [1 x i8] }* @str_$_778 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_764, i64 %res_$_773, i64 %res_$_777, i8* %temp_$_779)
 %lnk_$_746 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_747 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_746
 %var_ptr_$_752 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 7
 %res_$_753 = load i64, i64* %var_ptr_$_752
 %cnd_$_754 = icmp ne i64 %res_$_753, 0
 br i1 %cnd_$_754, label %thn_$_749, label %els_$_750
thn_$_749:
 %ret_$_755 = call i64 @XT$18 (%$locals_TstBool$6* %locals_$_8)
 store i64 %ret_$_755, i64* %temp_$_748
 br label %mrg_$_751
els_$_750:
 store i64 0, i64* %temp_$_748
 br label %mrg_$_751
mrg_$_751:
 %res_$_756 = load i64, i64* %temp_$_748
 %lnk_$_757 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_758 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_757
 %var_ptr_$_759 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_758, i32 0, i32 6
 %res_$_760 = load i64, i64* %var_ptr_$_759
 %temp_$_762 = bitcast { i64, [1 x i8] }* @str_$_761 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_747, i64 %res_$_756, i64 %res_$_760, i8* %temp_$_762)
 %lnk_$_729 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_730 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_729
 %var_ptr_$_735 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_736 = load i64, i64* %var_ptr_$_735
 %cnd_$_737 = icmp ne i64 %res_$_736, 0
 br i1 %cnd_$_737, label %thn_$_732, label %els_$_733
thn_$_732:
 %ret_$_738 = call i64 @XT$18 (%$locals_TstBool$6* %locals_$_8)
 store i64 %ret_$_738, i64* %temp_$_731
 br label %mrg_$_734
els_$_733:
 store i64 0, i64* %temp_$_731
 br label %mrg_$_734
mrg_$_734:
 %res_$_739 = load i64, i64* %temp_$_731
 %lnk_$_740 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_741 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_740
 %var_ptr_$_742 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_741, i32 0, i32 5
 %res_$_743 = load i64, i64* %var_ptr_$_742
 %temp_$_745 = bitcast { i64, [1 x i8] }* @str_$_744 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_730, i64 %res_$_739, i64 %res_$_743, i8* %temp_$_745)
 %var_ptr_$_728 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 5
 store i64 111, i64* %var_ptr_$_728
 %var_ptr_$_727 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 4
 store i64 222, i64* %var_ptr_$_727
 %lnk_$_709 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_710 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_709
 %lnk_$_711 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_712 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_711
 %var_ptr_$_714 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 5
 %res_$_715 = load i64, i64* %var_ptr_$_714
 %var_ptr_$_716 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 4
 %res_$_717 = load i64, i64* %var_ptr_$_716
 %temp_$_718 = icmp eq i64 %res_$_715, %res_$_717
 %temp_$_719 = zext i1 %temp_$_718 to i64
 %ret_$_720 = call i64 @not (i8* null, i64 %temp_$_719)
 %lnk_$_721 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_722 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_721
 %var_ptr_$_723 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_722, i32 0, i32 6
 %res_$_724 = load i64, i64* %var_ptr_$_723
 %temp_$_726 = bitcast { i64, [1 x i8] }* @str_$_725 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_710, i64 %ret_$_720, i64 %res_$_724, i8* %temp_$_726)
 %lnk_$_696 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_697 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_696
 %lnk_$_698 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_699 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_698
 %ret_$_701 = call i64 @Q$20 (%$locals_TstBool$6* %locals_$_8)
 %ret_$_702 = call i64 @not (i8* null, i64 %ret_$_701)
 %lnk_$_703 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_704 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_703
 %var_ptr_$_705 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_704, i32 0, i32 6
 %res_$_706 = load i64, i64* %var_ptr_$_705
 %temp_$_708 = bitcast { i64, [1 x i8] }* @str_$_707 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_697, i64 %ret_$_702, i64 %res_$_706, i8* %temp_$_708)
 %lnk_$_683 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_684 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_683
 %lnk_$_685 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_686 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_685
 %ret_$_688 = call i64 @XT$18 (%$locals_TstBool$6* %locals_$_8)
 %ret_$_689 = call i64 @not (i8* null, i64 %ret_$_688)
 %lnk_$_690 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_691 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_690
 %var_ptr_$_692 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_691, i32 0, i32 5
 %res_$_693 = load i64, i64* %var_ptr_$_692
 %temp_$_695 = bitcast { i64, [1 x i8] }* @str_$_694 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_684, i64 %ret_$_689, i64 %res_$_693, i8* %temp_$_695)
 %lnk_$_673 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_674 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_673
 %var_ptr_$_675 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_674, i32 0, i32 6
 %res_$_676 = load i64, i64* %var_ptr_$_675
 %lnk_$_677 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_678 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_677
 %var_ptr_$_679 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_678, i32 0, i32 6
 %res_$_680 = load i64, i64* %var_ptr_$_679
 %temp_$_682 = bitcast { i64, [1 x i8] }* @str_$_681 to i8*
 call void @F$21 (%$locals_TstBool$6* %locals_$_8, i64 %res_$_676, i64 %res_$_680, i8* %temp_$_682)
 %lnk_$_663 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_664 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_663
 %var_ptr_$_665 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_664, i32 0, i32 6
 %res_$_666 = load i64, i64* %var_ptr_$_665
 %lnk_$_667 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_668 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_667
 %var_ptr_$_669 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_668, i32 0, i32 5
 %res_$_670 = load i64, i64* %var_ptr_$_669
 %temp_$_672 = bitcast { i64, [1 x i8] }* @str_$_671 to i8*
 call void @F$21 (%$locals_TstBool$6* %locals_$_8, i64 %res_$_666, i64 %res_$_670, i8* %temp_$_672)
 %lnk_$_653 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_654 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_653
 %var_ptr_$_655 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_654, i32 0, i32 5
 %res_$_656 = load i64, i64* %var_ptr_$_655
 %lnk_$_657 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_658 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_657
 %var_ptr_$_659 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_658, i32 0, i32 6
 %res_$_660 = load i64, i64* %var_ptr_$_659
 %temp_$_662 = bitcast { i64, [1 x i8] }* @str_$_661 to i8*
 call void @F$21 (%$locals_TstBool$6* %locals_$_8, i64 %res_$_656, i64 %res_$_660, i8* %temp_$_662)
 %lnk_$_643 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_644 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_643
 %var_ptr_$_645 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_644, i32 0, i32 5
 %res_$_646 = load i64, i64* %var_ptr_$_645
 %lnk_$_647 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_648 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_647
 %var_ptr_$_649 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_648, i32 0, i32 5
 %res_$_650 = load i64, i64* %var_ptr_$_649
 %temp_$_652 = bitcast { i64, [1 x i8] }* @str_$_651 to i8*
 call void @F$21 (%$locals_TstBool$6* %locals_$_8, i64 %res_$_646, i64 %res_$_650, i8* %temp_$_652)
 %lnk_$_625 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_626 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_625
 %lnk_$_627 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_628 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_627
 %var_ptr_$_629 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_628, i32 0, i32 5
 %res_$_630 = load i64, i64* %var_ptr_$_629
 %lnk_$_631 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_632 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_631
 %var_ptr_$_633 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_632, i32 0, i32 5
 %res_$_634 = load i64, i64* %var_ptr_$_633
 %temp_$_635 = icmp ne i64 %res_$_630, %res_$_634
 %temp_$_636 = zext i1 %temp_$_635 to i64
 %lnk_$_637 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_638 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_637
 %var_ptr_$_639 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_638, i32 0, i32 5
 %res_$_640 = load i64, i64* %var_ptr_$_639
 %temp_$_642 = bitcast { i64, [1 x i8] }* @str_$_641 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_626, i64 %temp_$_636, i64 %res_$_640, i8* %temp_$_642)
 %lnk_$_607 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_608 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_607
 %lnk_$_609 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_610 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_609
 %var_ptr_$_611 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_610, i32 0, i32 5
 %res_$_612 = load i64, i64* %var_ptr_$_611
 %lnk_$_613 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_614 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_613
 %var_ptr_$_615 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_614, i32 0, i32 6
 %res_$_616 = load i64, i64* %var_ptr_$_615
 %temp_$_617 = icmp ne i64 %res_$_612, %res_$_616
 %temp_$_618 = zext i1 %temp_$_617 to i64
 %lnk_$_619 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_620 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_619
 %var_ptr_$_621 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_620, i32 0, i32 6
 %res_$_622 = load i64, i64* %var_ptr_$_621
 %temp_$_624 = bitcast { i64, [1 x i8] }* @str_$_623 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_608, i64 %temp_$_618, i64 %res_$_622, i8* %temp_$_624)
 %lnk_$_602 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_603 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_602
 %var_ptr_$_604 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_603, i32 0, i32 5
 %res_$_605 = load i64, i64* %var_ptr_$_604
 %var_ptr_$_606 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 store i64 %res_$_605, i64* %var_ptr_$_606
 %lnk_$_586 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_587 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_586
 %var_ptr_$_588 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_589 = load i64, i64* %var_ptr_$_588
 %lnk_$_590 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_591 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_590
 %var_ptr_$_592 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_591, i32 0, i32 6
 %res_$_593 = load i64, i64* %var_ptr_$_592
 %temp_$_594 = icmp ne i64 %res_$_589, %res_$_593
 %temp_$_595 = zext i1 %temp_$_594 to i64
 %lnk_$_596 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_597 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_596
 %var_ptr_$_598 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_597, i32 0, i32 6
 %res_$_599 = load i64, i64* %var_ptr_$_598
 %temp_$_601 = bitcast { i64, [1 x i8] }* @str_$_600 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_587, i64 %temp_$_595, i64 %res_$_599, i8* %temp_$_601)
 %lnk_$_570 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_571 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_570
 %var_ptr_$_572 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_573 = load i64, i64* %var_ptr_$_572
 %lnk_$_574 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_575 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_574
 %var_ptr_$_576 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_575, i32 0, i32 5
 %res_$_577 = load i64, i64* %var_ptr_$_576
 %temp_$_578 = icmp ne i64 %res_$_573, %res_$_577
 %temp_$_579 = zext i1 %temp_$_578 to i64
 %lnk_$_580 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_581 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_580
 %var_ptr_$_582 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_581, i32 0, i32 5
 %res_$_583 = load i64, i64* %var_ptr_$_582
 %temp_$_585 = bitcast { i64, [1 x i8] }* @str_$_584 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_571, i64 %temp_$_579, i64 %res_$_583, i8* %temp_$_585)
 %lnk_$_565 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_566 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_565
 %var_ptr_$_567 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_566, i32 0, i32 6
 %res_$_568 = load i64, i64* %var_ptr_$_567
 %var_ptr_$_569 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 store i64 %res_$_568, i64* %var_ptr_$_569
 %lnk_$_549 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_550 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_549
 %lnk_$_551 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_552 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_551
 %var_ptr_$_553 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_552, i32 0, i32 5
 %res_$_554 = load i64, i64* %var_ptr_$_553
 %var_ptr_$_555 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_556 = load i64, i64* %var_ptr_$_555
 %temp_$_557 = icmp ne i64 %res_$_554, %res_$_556
 %temp_$_558 = zext i1 %temp_$_557 to i64
 %lnk_$_559 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_560 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_559
 %var_ptr_$_561 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_560, i32 0, i32 6
 %res_$_562 = load i64, i64* %var_ptr_$_561
 %temp_$_564 = bitcast { i64, [1 x i8] }* @str_$_563 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_550, i64 %temp_$_558, i64 %res_$_562, i8* %temp_$_564)
 %lnk_$_537 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_538 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_537
 %ret_$_539 = call i64 @XF$19 (%$locals_TstBool$6* %locals_$_8)
 %ret_$_540 = call i64 @XT$18 (%$locals_TstBool$6* %locals_$_8)
 %temp_$_541 = icmp ne i64 %ret_$_539, %ret_$_540
 %temp_$_542 = zext i1 %temp_$_541 to i64
 %lnk_$_543 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_544 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_543
 %var_ptr_$_545 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_544, i32 0, i32 6
 %res_$_546 = load i64, i64* %var_ptr_$_545
 %temp_$_548 = bitcast { i64, [1 x i8] }* @str_$_547 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_538, i64 %temp_$_542, i64 %res_$_546, i8* %temp_$_548)
 %lnk_$_532 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_533 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_532
 %var_ptr_$_534 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_533, i32 0, i32 6
 %res_$_535 = load i64, i64* %var_ptr_$_534
 %var_ptr_$_536 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 store i64 %res_$_535, i64* %var_ptr_$_536
 %lnk_$_527 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_528 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_527
 %var_ptr_$_529 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_528, i32 0, i32 5
 %res_$_530 = load i64, i64* %var_ptr_$_529
 %var_ptr_$_531 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 7
 store i64 %res_$_530, i64* %var_ptr_$_531
 %lnk_$_507 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_508 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_507
 %lnk_$_513 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_514 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_513
 %var_ptr_$_515 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_514, i32 0, i32 5
 %res_$_516 = load i64, i64* %var_ptr_$_515
 %cnd_$_517 = icmp ne i64 %res_$_516, 0
 br i1 %cnd_$_517, label %thn_$_510, label %els_$_511
thn_$_510:
 store i64 1, i64* %temp_$_509
 br label %mrg_$_512
els_$_511:
 %var_ptr_$_518 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_519 = load i64, i64* %var_ptr_$_518
 store i64 %res_$_519, i64* %temp_$_509
 br label %mrg_$_512
mrg_$_512:
 %res_$_520 = load i64, i64* %temp_$_509
 %lnk_$_521 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_522 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_521
 %var_ptr_$_523 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_522, i32 0, i32 6
 %res_$_524 = load i64, i64* %var_ptr_$_523
 %temp_$_526 = bitcast { i64, [1 x i8] }* @str_$_525 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_508, i64 %res_$_520, i64 %res_$_524, i8* %temp_$_526)
 %lnk_$_487 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_488 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_487
 %lnk_$_493 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_494 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_493
 %var_ptr_$_495 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_494, i32 0, i32 5
 %res_$_496 = load i64, i64* %var_ptr_$_495
 %cnd_$_497 = icmp ne i64 %res_$_496, 0
 br i1 %cnd_$_497, label %thn_$_490, label %els_$_491
thn_$_490:
 store i64 1, i64* %temp_$_489
 br label %mrg_$_492
els_$_491:
 %var_ptr_$_498 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 7
 %res_$_499 = load i64, i64* %var_ptr_$_498
 store i64 %res_$_499, i64* %temp_$_489
 br label %mrg_$_492
mrg_$_492:
 %res_$_500 = load i64, i64* %temp_$_489
 %lnk_$_501 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_502 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_501
 %var_ptr_$_503 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_502, i32 0, i32 5
 %res_$_504 = load i64, i64* %var_ptr_$_503
 %temp_$_506 = bitcast { i64, [1 x i8] }* @str_$_505 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_488, i64 %res_$_500, i64 %res_$_504, i8* %temp_$_506)
 %lnk_$_465 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_466 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_465
 %lnk_$_471 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_472 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_471
 %var_ptr_$_473 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_472, i32 0, i32 5
 %res_$_474 = load i64, i64* %var_ptr_$_473
 %cnd_$_475 = icmp ne i64 %res_$_474, 0
 br i1 %cnd_$_475, label %thn_$_468, label %els_$_469
thn_$_468:
 store i64 1, i64* %temp_$_467
 br label %mrg_$_470
els_$_469:
 %lnk_$_476 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_477 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_476
 %var_ptr_$_478 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_477, i32 0, i32 5
 %res_$_479 = load i64, i64* %var_ptr_$_478
 store i64 %res_$_479, i64* %temp_$_467
 br label %mrg_$_470
mrg_$_470:
 %res_$_480 = load i64, i64* %temp_$_467
 %lnk_$_481 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_482 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_481
 %var_ptr_$_483 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_482, i32 0, i32 5
 %res_$_484 = load i64, i64* %var_ptr_$_483
 %temp_$_486 = bitcast { i64, [1 x i8] }* @str_$_485 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_466, i64 %res_$_480, i64 %res_$_484, i8* %temp_$_486)
 %lnk_$_443 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_444 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_443
 %lnk_$_449 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_450 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_449
 %var_ptr_$_451 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_450, i32 0, i32 5
 %res_$_452 = load i64, i64* %var_ptr_$_451
 %cnd_$_453 = icmp ne i64 %res_$_452, 0
 br i1 %cnd_$_453, label %thn_$_446, label %els_$_447
thn_$_446:
 store i64 1, i64* %temp_$_445
 br label %mrg_$_448
els_$_447:
 %lnk_$_454 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_455 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_454
 %var_ptr_$_456 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_455, i32 0, i32 6
 %res_$_457 = load i64, i64* %var_ptr_$_456
 store i64 %res_$_457, i64* %temp_$_445
 br label %mrg_$_448
mrg_$_448:
 %res_$_458 = load i64, i64* %temp_$_445
 %lnk_$_459 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_460 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_459
 %var_ptr_$_461 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_460, i32 0, i32 6
 %res_$_462 = load i64, i64* %var_ptr_$_461
 %temp_$_464 = bitcast { i64, [1 x i8] }* @str_$_463 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_444, i64 %res_$_458, i64 %res_$_462, i8* %temp_$_464)
 %lnk_$_423 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_424 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_423
 %lnk_$_429 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_430 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_429
 %var_ptr_$_431 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_430, i32 0, i32 6
 %res_$_432 = load i64, i64* %var_ptr_$_431
 %cnd_$_433 = icmp ne i64 %res_$_432, 0
 br i1 %cnd_$_433, label %thn_$_426, label %els_$_427
thn_$_426:
 store i64 1, i64* %temp_$_425
 br label %mrg_$_428
els_$_427:
 %var_ptr_$_434 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_435 = load i64, i64* %var_ptr_$_434
 store i64 %res_$_435, i64* %temp_$_425
 br label %mrg_$_428
mrg_$_428:
 %res_$_436 = load i64, i64* %temp_$_425
 %lnk_$_437 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_438 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_437
 %var_ptr_$_439 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_438, i32 0, i32 6
 %res_$_440 = load i64, i64* %var_ptr_$_439
 %temp_$_442 = bitcast { i64, [1 x i8] }* @str_$_441 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_424, i64 %res_$_436, i64 %res_$_440, i8* %temp_$_442)
 %lnk_$_403 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_404 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_403
 %lnk_$_409 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_410 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_409
 %var_ptr_$_411 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_410, i32 0, i32 5
 %res_$_412 = load i64, i64* %var_ptr_$_411
 %cnd_$_413 = icmp ne i64 %res_$_412, 0
 br i1 %cnd_$_413, label %thn_$_406, label %els_$_407
thn_$_406:
 %var_ptr_$_414 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_415 = load i64, i64* %var_ptr_$_414
 store i64 %res_$_415, i64* %temp_$_405
 br label %mrg_$_408
els_$_407:
 store i64 0, i64* %temp_$_405
 br label %mrg_$_408
mrg_$_408:
 %res_$_416 = load i64, i64* %temp_$_405
 %lnk_$_417 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_418 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_417
 %var_ptr_$_419 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_418, i32 0, i32 5
 %res_$_420 = load i64, i64* %var_ptr_$_419
 %temp_$_422 = bitcast { i64, [1 x i8] }* @str_$_421 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_404, i64 %res_$_416, i64 %res_$_420, i8* %temp_$_422)
 %lnk_$_383 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_384 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_383
 %lnk_$_389 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_390 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_389
 %var_ptr_$_391 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_390, i32 0, i32 6
 %res_$_392 = load i64, i64* %var_ptr_$_391
 %cnd_$_393 = icmp ne i64 %res_$_392, 0
 br i1 %cnd_$_393, label %thn_$_386, label %els_$_387
thn_$_386:
 %var_ptr_$_394 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 8
 %res_$_395 = load i64, i64* %var_ptr_$_394
 store i64 %res_$_395, i64* %temp_$_385
 br label %mrg_$_388
els_$_387:
 store i64 0, i64* %temp_$_385
 br label %mrg_$_388
mrg_$_388:
 %res_$_396 = load i64, i64* %temp_$_385
 %lnk_$_397 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_398 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_397
 %var_ptr_$_399 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_398, i32 0, i32 6
 %res_$_400 = load i64, i64* %var_ptr_$_399
 %temp_$_402 = bitcast { i64, [1 x i8] }* @str_$_401 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_384, i64 %res_$_396, i64 %res_$_400, i8* %temp_$_402)
 %lnk_$_363 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_364 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_363
 %lnk_$_369 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_370 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_369
 %var_ptr_$_371 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_370, i32 0, i32 6
 %res_$_372 = load i64, i64* %var_ptr_$_371
 %cnd_$_373 = icmp ne i64 %res_$_372, 0
 br i1 %cnd_$_373, label %thn_$_366, label %els_$_367
thn_$_366:
 %var_ptr_$_374 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 7
 %res_$_375 = load i64, i64* %var_ptr_$_374
 store i64 %res_$_375, i64* %temp_$_365
 br label %mrg_$_368
els_$_367:
 store i64 0, i64* %temp_$_365
 br label %mrg_$_368
mrg_$_368:
 %res_$_376 = load i64, i64* %temp_$_365
 %lnk_$_377 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_378 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_377
 %var_ptr_$_379 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_378, i32 0, i32 5
 %res_$_380 = load i64, i64* %var_ptr_$_379
 %temp_$_382 = bitcast { i64, [1 x i8] }* @str_$_381 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_364, i64 %res_$_376, i64 %res_$_380, i8* %temp_$_382)
 %lnk_$_341 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_342 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_341
 %lnk_$_347 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_348 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_347
 %var_ptr_$_349 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_348, i32 0, i32 6
 %res_$_350 = load i64, i64* %var_ptr_$_349
 %cnd_$_351 = icmp ne i64 %res_$_350, 0
 br i1 %cnd_$_351, label %thn_$_344, label %els_$_345
thn_$_344:
 %lnk_$_352 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_353 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_352
 %var_ptr_$_354 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_353, i32 0, i32 5
 %res_$_355 = load i64, i64* %var_ptr_$_354
 store i64 %res_$_355, i64* %temp_$_343
 br label %mrg_$_346
els_$_345:
 store i64 0, i64* %temp_$_343
 br label %mrg_$_346
mrg_$_346:
 %res_$_356 = load i64, i64* %temp_$_343
 %lnk_$_357 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_358 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_357
 %var_ptr_$_359 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_358, i32 0, i32 5
 %res_$_360 = load i64, i64* %var_ptr_$_359
 %temp_$_362 = bitcast { i64, [1 x i8] }* @str_$_361 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_342, i64 %res_$_356, i64 %res_$_360, i8* %temp_$_362)
 %lnk_$_974 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_975 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_974
 %lnk_$_980 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_981 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_980
 %var_ptr_$_982 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_981, i32 0, i32 6
 %res_$_983 = load i64, i64* %var_ptr_$_982
 %cnd_$_984 = icmp ne i64 %res_$_983, 0
 br i1 %cnd_$_984, label %thn_$_977, label %els_$_978
thn_$_977:
 %lnk_$_985 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_986 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_985
 %var_ptr_$_987 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_986, i32 0, i32 6
 %res_$_988 = load i64, i64* %var_ptr_$_987
 store i64 %res_$_988, i64* %temp_$_976
 br label %mrg_$_979
els_$_978:
 store i64 0, i64* %temp_$_976
 br label %mrg_$_979
mrg_$_979:
 %res_$_989 = load i64, i64* %temp_$_976
 %lnk_$_990 = getelementptr %$locals_TstBool$6, %$locals_TstBool$6* %locals_$_8, i32 0, i32 0
 %load_$_991 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_990
 %var_ptr_$_992 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_991, i32 0, i32 6
 %res_$_993 = load i64, i64* %var_ptr_$_992
 %temp_$_995 = bitcast { i64, [1 x i8] }* @str_$_994 to i8*
 call void @chk$3 (%$locals_tigermain* %load_$_975, i64 %res_$_989, i64 %res_$_993, i8* %temp_$_995)
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_9 = alloca %$locals_tigermain
 %arg_$_996 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_9, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_996
 %temp_$_997 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_9, i32 0, i32 6
 store i64 1, i64* %temp_$_997
 %temp_$_998 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_9, i32 0, i32 5
 store i64 0, i64* %temp_$_998
 call void @TstBool$6 (%$locals_tigermain* %locals_$_9)
 ret void
}
