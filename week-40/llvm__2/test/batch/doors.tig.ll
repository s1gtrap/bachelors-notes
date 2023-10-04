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

%DoorState$10 = type i64
%DoorArray$11 = type i8*
%$locals_base$0 = type { %$locals_tigermain*, i64, i64 }
%$locals_toString$1 = type { %$locals_tigermain*, i64, i64, i64, i64, i8*, i64 }
%$locals_toggle$14 = type { %$locals_tigermain*, i64 }
%$locals_mod$15 = type { %$locals_tigermain*, i64, i64 }
%$locals_tigermain = type { i8*, i64, i64, i64, i8*, i64, i64, i64, i64, i64, i64, i64 }

@str_$_286 = global { i64, [10 x i8] } {i64 10, [10 x i8] c" is open.\0A"}
@str_$_283 = global { i64, [12 x i8] } {i64 12, [12 x i8] c"Door number "}
@str_$_246 = global { i64, [13 x i8] } {i64 13, [13 x i8] c"Calculating: "}
@str_$_179 = global { i64, [13 x i8] } {i64 13, [13 x i8] c"Door states: "}
@str_$_71 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_42 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_40 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"-"}

define i64 @base$0 (%$locals_tigermain* %$sl, i64 %v$2) {
 %locals_$_0 = alloca %$locals_base$0
 %arg_$_5 = getelementptr %$locals_base$0, %$locals_base$0* %locals_$_0, i32 0, i32 2
 store i64 %v$2, i64* %arg_$_5
 %arg_$_6 = getelementptr %$locals_base$0, %$locals_base$0* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_6
 %temp_$_7 = getelementptr %$locals_base$0, %$locals_base$0* %locals_$_0, i32 0, i32 1
 store i64 1, i64* %temp_$_7
 br label %test_$_8
test_$_8:
 %var_ptr_$_13 = getelementptr %$locals_base$0, %$locals_base$0* %locals_$_0, i32 0, i32 2
 %res_$_14 = load i64, i64* %var_ptr_$_13
 %cnd_$_15 = icmp eq i64 10, 0
 br i1 %cnd_$_15, label %thn_$_11, label %mrg_$_12
thn_$_11:
 call i64 @divisionByZero ()
 br label %mrg_$_12
mrg_$_12:
 %temp_$_16 = sdiv i64 %res_$_14, 10
 %var_ptr_$_17 = getelementptr %$locals_base$0, %$locals_base$0* %locals_$_0, i32 0, i32 2
 store i64 %temp_$_16, i64* %var_ptr_$_17
 %var_ptr_$_18 = getelementptr %$locals_base$0, %$locals_base$0* %locals_$_0, i32 0, i32 2
 %res_$_19 = load i64, i64* %var_ptr_$_18
 %temp_$_20 = icmp sge i64 %res_$_19, 1
 %temp_$_21 = zext i1 %temp_$_20 to i64
 %cnd_$_22 = icmp ne i64 %temp_$_21, 0
 br i1 %cnd_$_22, label %body_$_9, label %mrg_$_10
body_$_9:
 %var_ptr_$_23 = getelementptr %$locals_base$0, %$locals_base$0* %locals_$_0, i32 0, i32 1
 %res_$_24 = load i64, i64* %var_ptr_$_23
 %temp_$_25 = mul i64 %res_$_24, 10
 %var_ptr_$_26 = getelementptr %$locals_base$0, %$locals_base$0* %locals_$_0, i32 0, i32 1
 store i64 %temp_$_25, i64* %var_ptr_$_26
 br label %test_$_8
mrg_$_10:
 %var_ptr_$_27 = getelementptr %$locals_base$0, %$locals_base$0* %locals_$_0, i32 0, i32 1
 %res_$_28 = load i64, i64* %var_ptr_$_27
 ret i64 %res_$_28
}

define i8* @toString$1 (%$locals_tigermain* %$sl, i64 %v$4) {
 %temp_$_46 = alloca i64
 %temp_$_31 = alloca i8*
 %locals_$_1 = alloca %$locals_toString$1
 %arg_$_29 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 6
 store i64 %v$4, i64* %arg_$_29
 %arg_$_30 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_30
 %var_ptr_$_35 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 6
 %res_$_36 = load i64, i64* %var_ptr_$_35
 %temp_$_37 = icmp slt i64 %res_$_36, 0
 %temp_$_38 = zext i1 %temp_$_37 to i64
 %cnd_$_39 = icmp ne i64 %temp_$_38, 0
 br i1 %cnd_$_39, label %thn_$_32, label %els_$_33
thn_$_32:
 %temp_$_41 = bitcast { i64, [1 x i8] }* @str_$_40 to i8*
 store i8* %temp_$_41, i8** %temp_$_31
 br label %mrg_$_34
els_$_33:
 %temp_$_43 = bitcast { i64, [0 x i8] }* @str_$_42 to i8*
 store i8* %temp_$_43, i8** %temp_$_31
 br label %mrg_$_34
mrg_$_34:
 %res_$_44 = load i8*, i8** %temp_$_31
 %temp_$_45 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 5
 store i8* %res_$_44, i8** %temp_$_45
 %var_ptr_$_50 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 6
 %res_$_51 = load i64, i64* %var_ptr_$_50
 %temp_$_52 = icmp slt i64 %res_$_51, 0
 %temp_$_53 = zext i1 %temp_$_52 to i64
 %cnd_$_54 = icmp ne i64 %temp_$_53, 0
 br i1 %cnd_$_54, label %thn_$_47, label %els_$_48
thn_$_47:
 %var_ptr_$_55 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 6
 %res_$_56 = load i64, i64* %var_ptr_$_55
 %temp_$_57 = sub i64 0, %res_$_56
 store i64 %temp_$_57, i64* %temp_$_46
 br label %mrg_$_49
els_$_48:
 %var_ptr_$_58 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 6
 %res_$_59 = load i64, i64* %var_ptr_$_58
 store i64 %res_$_59, i64* %temp_$_46
 br label %mrg_$_49
mrg_$_49:
 %res_$_60 = load i64, i64* %temp_$_46
 %temp_$_61 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 4
 store i64 %res_$_60, i64* %temp_$_61
 %lnk_$_62 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 0
 %load_$_63 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_62
 %var_ptr_$_64 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 4
 %res_$_65 = load i64, i64* %var_ptr_$_64
 %ret_$_66 = call i64 @base$0 (%$locals_tigermain* %load_$_63, i64 %res_$_65)
 %temp_$_67 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 3
 store i64 %ret_$_66, i64* %temp_$_67
 %lnk_$_68 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 0
 %load_$_69 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_68
 %temp_$_72 = bitcast { i64, [1 x i8] }* @str_$_71 to i8*
 %ret_$_73 = call i64 @ord (i8* null, i8* %temp_$_72)
 %temp_$_74 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 2
 store i64 %ret_$_73, i64* %temp_$_74
 br label %test_$_75
test_$_75:
 %var_ptr_$_78 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 3
 %res_$_79 = load i64, i64* %var_ptr_$_78
 %temp_$_80 = icmp ne i64 %res_$_79, 0
 %temp_$_81 = zext i1 %temp_$_80 to i64
 %cnd_$_82 = icmp ne i64 %temp_$_81, 0
 br i1 %cnd_$_82, label %body_$_76, label %mrg_$_77
body_$_76:
 %var_ptr_$_85 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 4
 %res_$_86 = load i64, i64* %var_ptr_$_85
 %var_ptr_$_87 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 3
 %res_$_88 = load i64, i64* %var_ptr_$_87
 %cnd_$_89 = icmp eq i64 %res_$_88, 0
 br i1 %cnd_$_89, label %thn_$_83, label %mrg_$_84
thn_$_83:
 call i64 @divisionByZero ()
 br label %mrg_$_84
mrg_$_84:
 %temp_$_90 = sdiv i64 %res_$_86, %res_$_88
 %temp_$_91 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 1
 store i64 %temp_$_90, i64* %temp_$_91
 %var_ptr_$_99 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 4
 %res_$_100 = load i64, i64* %var_ptr_$_99
 %var_ptr_$_101 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 3
 %res_$_102 = load i64, i64* %var_ptr_$_101
 %var_ptr_$_103 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 1
 %res_$_104 = load i64, i64* %var_ptr_$_103
 %temp_$_105 = mul i64 %res_$_102, %res_$_104
 %temp_$_106 = sub i64 %res_$_100, %temp_$_105
 %var_ptr_$_107 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 4
 store i64 %temp_$_106, i64* %var_ptr_$_107
 %var_ptr_$_94 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 3
 %res_$_95 = load i64, i64* %var_ptr_$_94
 %cnd_$_96 = icmp eq i64 10, 0
 br i1 %cnd_$_96, label %thn_$_92, label %mrg_$_93
thn_$_92:
 call i64 @divisionByZero ()
 br label %mrg_$_93
mrg_$_93:
 %temp_$_97 = sdiv i64 %res_$_95, 10
 %var_ptr_$_98 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 3
 store i64 %temp_$_97, i64* %var_ptr_$_98
 %lnk_$_108 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 0
 %load_$_109 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_108
 %var_ptr_$_111 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 5
 %res_$_112 = load i8*, i8** %var_ptr_$_111
 %lnk_$_113 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 0
 %load_$_114 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_113
 %var_ptr_$_116 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 2
 %res_$_117 = load i64, i64* %var_ptr_$_116
 %var_ptr_$_118 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 1
 %res_$_119 = load i64, i64* %var_ptr_$_118
 %temp_$_120 = add i64 %res_$_117, %res_$_119
 %ret_$_121 = call i8* @chr (i8* null, i64 %temp_$_120)
 %ret_$_122 = call i8* @concat (i8* null, i8* %res_$_112, i8* %ret_$_121)
 %var_ptr_$_123 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 5
 store i8* %ret_$_122, i8** %var_ptr_$_123
 br label %test_$_75
mrg_$_77:
 %var_ptr_$_124 = getelementptr %$locals_toString$1, %$locals_toString$1* %locals_$_1, i32 0, i32 5
 %res_$_125 = load i8*, i8** %var_ptr_$_124
 ret i8* %res_$_125
}

define i64 @toggle$14 (%$locals_tigermain* %$sl, i64 %state$16) {
 %temp_$_128 = alloca i64
 %locals_$_2 = alloca %$locals_toggle$14
 %arg_$_126 = getelementptr %$locals_toggle$14, %$locals_toggle$14* %locals_$_2, i32 0, i32 1
 store i64 %state$16, i64* %arg_$_126
 %arg_$_127 = getelementptr %$locals_toggle$14, %$locals_toggle$14* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_127
 %var_ptr_$_132 = getelementptr %$locals_toggle$14, %$locals_toggle$14* %locals_$_2, i32 0, i32 1
 %res_$_133 = load i64, i64* %var_ptr_$_132
 %lnk_$_134 = getelementptr %$locals_toggle$14, %$locals_toggle$14* %locals_$_2, i32 0, i32 0
 %load_$_135 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_134
 %var_ptr_$_136 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_135, i32 0, i32 8
 %res_$_137 = load i64, i64* %var_ptr_$_136
 %temp_$_138 = icmp eq i64 %res_$_133, %res_$_137
 %temp_$_139 = zext i1 %temp_$_138 to i64
 %cnd_$_140 = icmp ne i64 %temp_$_139, 0
 br i1 %cnd_$_140, label %thn_$_129, label %els_$_130
thn_$_129:
 %lnk_$_141 = getelementptr %$locals_toggle$14, %$locals_toggle$14* %locals_$_2, i32 0, i32 0
 %load_$_142 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_141
 %var_ptr_$_143 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_142, i32 0, i32 9
 %res_$_144 = load i64, i64* %var_ptr_$_143
 store i64 %res_$_144, i64* %temp_$_128
 br label %mrg_$_131
els_$_130:
 %lnk_$_145 = getelementptr %$locals_toggle$14, %$locals_toggle$14* %locals_$_2, i32 0, i32 0
 %load_$_146 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_145
 %var_ptr_$_147 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_146, i32 0, i32 8
 %res_$_148 = load i64, i64* %var_ptr_$_147
 store i64 %res_$_148, i64* %temp_$_128
 br label %mrg_$_131
mrg_$_131:
 %res_$_149 = load i64, i64* %temp_$_128
 ret i64 %res_$_149
}

define i64 @mod$15 (%$locals_tigermain* %$sl, i64 %a$17, i64 %b$18) {
 %locals_$_3 = alloca %$locals_mod$15
 %arg_$_150 = getelementptr %$locals_mod$15, %$locals_mod$15* %locals_$_3, i32 0, i32 2
 store i64 %b$18, i64* %arg_$_150
 %arg_$_151 = getelementptr %$locals_mod$15, %$locals_mod$15* %locals_$_3, i32 0, i32 1
 store i64 %a$17, i64* %arg_$_151
 %arg_$_152 = getelementptr %$locals_mod$15, %$locals_mod$15* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_152
 %var_ptr_$_153 = getelementptr %$locals_mod$15, %$locals_mod$15* %locals_$_3, i32 0, i32 1
 %res_$_154 = load i64, i64* %var_ptr_$_153
 %var_ptr_$_155 = getelementptr %$locals_mod$15, %$locals_mod$15* %locals_$_3, i32 0, i32 2
 %res_$_156 = load i64, i64* %var_ptr_$_155
 %var_ptr_$_159 = getelementptr %$locals_mod$15, %$locals_mod$15* %locals_$_3, i32 0, i32 1
 %res_$_160 = load i64, i64* %var_ptr_$_159
 %var_ptr_$_161 = getelementptr %$locals_mod$15, %$locals_mod$15* %locals_$_3, i32 0, i32 2
 %res_$_162 = load i64, i64* %var_ptr_$_161
 %cnd_$_163 = icmp eq i64 %res_$_162, 0
 br i1 %cnd_$_163, label %thn_$_157, label %mrg_$_158
thn_$_157:
 call i64 @divisionByZero ()
 br label %mrg_$_158
mrg_$_158:
 %temp_$_164 = sdiv i64 %res_$_160, %res_$_162
 %temp_$_165 = mul i64 %res_$_156, %temp_$_164
 %temp_$_166 = sub i64 %res_$_154, %temp_$_165
 ret i64 %temp_$_166
}

define void @tigermain (i8* %$sl) {
 %locals_$_4 = alloca %$locals_tigermain
 %arg_$_167 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_167
 %temp_$_168 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 9
 store i64 0, i64* %temp_$_168
 %temp_$_169 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 8
 store i64 1, i64* %temp_$_169
 %var_ptr_$_170 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 9
 %res_$_171 = load i64, i64* %var_ptr_$_170
 %init_ptr_$_172 = alloca i64
 store i64 %res_$_171, i64* %init_ptr_$_172
 %init_ptr_$_173 = bitcast i64* %init_ptr_$_172 to i8*
 %init_size_ptr_$_174 = getelementptr i64, i64* null, i32 1
 %init_size_$_175 = ptrtoint i64* %init_size_ptr_$_174 to i64
 %array_ptr_$_176 = call i8* @initArray (i64 100, i64 %init_size_$_175, i8* %init_ptr_$_173)
 %temp_$_177 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 4
 store i8* %array_ptr_$_176, i8** %temp_$_177
 %temp_$_247 = bitcast { i64, [13 x i8] }* @str_$_246 to i8*
 call void @print (i8* null, i8* %temp_$_247)
 %temp_$_181 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 3
 store i64 0, i64* %temp_$_181
 br label %test_$_182
test_$_182:
 %var_ptr_$_185 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 3
 %res_$_186 = load i64, i64* %var_ptr_$_185
 %temp_$_187 = icmp sle i64 %res_$_186, 99
 %temp_$_188 = zext i1 %temp_$_187 to i64
 %cnd_$_189 = icmp ne i64 %temp_$_188, 0
 br i1 %cnd_$_189, label %body_$_183, label %mrg_$_184
body_$_183:
 %temp_$_190 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 2
 store i64 0, i64* %temp_$_190
 br label %test_$_191
test_$_191:
 %var_ptr_$_194 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 2
 %res_$_195 = load i64, i64* %var_ptr_$_194
 %temp_$_196 = icmp sle i64 %res_$_195, 99
 %temp_$_197 = zext i1 %temp_$_196 to i64
 %cnd_$_198 = icmp ne i64 %temp_$_197, 0
 br i1 %cnd_$_198, label %body_$_192, label %mrg_$_193
body_$_192:
 %var_ptr_$_201 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 2
 %res_$_202 = load i64, i64* %var_ptr_$_201
 %temp_$_203 = add i64 %res_$_202, 1
 %var_ptr_$_204 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 3
 %res_$_205 = load i64, i64* %var_ptr_$_204
 %temp_$_206 = add i64 %res_$_205, 1
 %ret_$_207 = call i64 @mod$15 (%$locals_tigermain* %locals_$_4, i64 %temp_$_203, i64 %temp_$_206)
 %temp_$_208 = icmp eq i64 %ret_$_207, 0
 %temp_$_209 = zext i1 %temp_$_208 to i64
 %cnd_$_210 = icmp ne i64 %temp_$_209, 0
 br i1 %cnd_$_210, label %thn_$_199, label %mrg_$_200
thn_$_199:
 %var_ptr_$_211 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 4
 %var_ptr_$_212 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 2
 %res_$_213 = load i64, i64* %var_ptr_$_212
 %load_$_214 = load i8*, i8** %var_ptr_$_211
 %len_ptr_$_217 = bitcast i8* %load_$_214 to i64*
 %len_ptr_$_218 = getelementptr i64, i64* %len_ptr_$_217, i32 -1
 %len_$_219 = load i64, i64* %len_ptr_$_218
 %cnd_$_220 = icmp sle i64 %len_$_219, %res_$_213
 br i1 %cnd_$_220, label %thn_$_215, label %mrg_$_216
thn_$_215:
 call i64 @arrInxError (i64 %res_$_213)
 br label %mrg_$_216
mrg_$_216:
 %array_ptr_$_221 = bitcast i8* %load_$_214 to i64*
 %entry_ptr_$_222 = getelementptr i64, i64* %array_ptr_$_221, i64 %res_$_213
 %res_$_223 = load i64, i64* %entry_ptr_$_222
 %ret_$_224 = call i64 @toggle$14 (%$locals_tigermain* %locals_$_4, i64 %res_$_223)
 %var_ptr_$_225 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 4
 %var_ptr_$_226 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 2
 %res_$_227 = load i64, i64* %var_ptr_$_226
 %load_$_228 = load i8*, i8** %var_ptr_$_225
 %len_ptr_$_231 = bitcast i8* %load_$_228 to i64*
 %len_ptr_$_232 = getelementptr i64, i64* %len_ptr_$_231, i32 -1
 %len_$_233 = load i64, i64* %len_ptr_$_232
 %cnd_$_234 = icmp sle i64 %len_$_233, %res_$_227
 br i1 %cnd_$_234, label %thn_$_229, label %mrg_$_230
thn_$_229:
 call i64 @arrInxError (i64 %res_$_227)
 br label %mrg_$_230
mrg_$_230:
 %array_ptr_$_235 = bitcast i8* %load_$_228 to i64*
 %entry_ptr_$_236 = getelementptr i64, i64* %array_ptr_$_235, i64 %res_$_227
 store i64 %ret_$_224, i64* %entry_ptr_$_236
 br label %mrg_$_200
mrg_$_200:
 %var_ptr_$_237 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 2
 %res_$_238 = load i64, i64* %var_ptr_$_237
 %temp_$_239 = add i64 %res_$_238, 1
 %var_ptr_$_240 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 2
 store i64 %temp_$_239, i64* %var_ptr_$_240
 br label %test_$_191
mrg_$_193:
 %var_ptr_$_241 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 3
 %res_$_242 = load i64, i64* %var_ptr_$_241
 %temp_$_243 = add i64 %res_$_242, 1
 %var_ptr_$_244 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 3
 store i64 %temp_$_243, i64* %var_ptr_$_244
 br label %test_$_182
mrg_$_184:
 %temp_$_180 = bitcast { i64, [13 x i8] }* @str_$_179 to i8*
 call void @print (i8* null, i8* %temp_$_180)
 %temp_$_248 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 store i64 0, i64* %temp_$_248
 br label %test_$_249
test_$_249:
 %var_ptr_$_252 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 %res_$_253 = load i64, i64* %var_ptr_$_252
 %temp_$_254 = icmp sle i64 %res_$_253, 99
 %temp_$_255 = zext i1 %temp_$_254 to i64
 %cnd_$_256 = icmp ne i64 %temp_$_255, 0
 br i1 %cnd_$_256, label %body_$_250, label %mrg_$_251
body_$_250:
 %var_ptr_$_259 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 4
 %var_ptr_$_260 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 %res_$_261 = load i64, i64* %var_ptr_$_260
 %load_$_262 = load i8*, i8** %var_ptr_$_259
 %len_ptr_$_265 = bitcast i8* %load_$_262 to i64*
 %len_ptr_$_266 = getelementptr i64, i64* %len_ptr_$_265, i32 -1
 %len_$_267 = load i64, i64* %len_ptr_$_266
 %cnd_$_268 = icmp sle i64 %len_$_267, %res_$_261
 br i1 %cnd_$_268, label %thn_$_263, label %mrg_$_264
thn_$_263:
 call i64 @arrInxError (i64 %res_$_261)
 br label %mrg_$_264
mrg_$_264:
 %array_ptr_$_269 = bitcast i8* %load_$_262 to i64*
 %entry_ptr_$_270 = getelementptr i64, i64* %array_ptr_$_269, i64 %res_$_261
 %res_$_271 = load i64, i64* %entry_ptr_$_270
 %var_ptr_$_272 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 8
 %res_$_273 = load i64, i64* %var_ptr_$_272
 %temp_$_274 = icmp eq i64 %res_$_271, %res_$_273
 %temp_$_275 = zext i1 %temp_$_274 to i64
 %cnd_$_276 = icmp ne i64 %temp_$_275, 0
 br i1 %cnd_$_276, label %thn_$_257, label %mrg_$_258
thn_$_257:
 %temp_$_284 = bitcast { i64, [12 x i8] }* @str_$_283 to i8*
 call void @print (i8* null, i8* %temp_$_284)
 %var_ptr_$_278 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 %res_$_279 = load i64, i64* %var_ptr_$_278
 %temp_$_280 = add i64 %res_$_279, 1
 %ret_$_281 = call i8* @toString$1 (%$locals_tigermain* %locals_$_4, i64 %temp_$_280)
 call void @print (i8* null, i8* %ret_$_281)
 %temp_$_287 = bitcast { i64, [10 x i8] }* @str_$_286 to i8*
 call void @print (i8* null, i8* %temp_$_287)
 br label %mrg_$_258
mrg_$_258:
 %var_ptr_$_288 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 %res_$_289 = load i64, i64* %var_ptr_$_288
 %temp_$_290 = add i64 %res_$_289, 1
 %var_ptr_$_291 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 store i64 %temp_$_290, i64* %var_ptr_$_291
 br label %test_$_249
mrg_$_251:
 ret void
}
