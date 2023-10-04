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

%intArray$1 = type i8*
%$locals_printboard$6 = type { %$locals_tigermain*, i64, i64 }
%$locals_try$7 = type { %$locals_tigermain*, i64, i64 }
%$locals_tigermain = type { i8*, i64, i8*, i8*, i8*, i8*, i64 }

@str_$_80 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_71 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_61 = global { i64, [2 x i8] } {i64 2, [2 x i8] c" ."}
@str_$_59 = global { i64, [2 x i8] } {i64 2, [2 x i8] c" O"}

define void @printboard$6 (%$locals_tigermain* %$sl) {
 %temp_$_35 = alloca i8*
 %locals_$_0 = alloca %$locals_printboard$6
 %arg_$_3 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_3
 %temp_$_4 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 2
 store i64 0, i64* %temp_$_4
 br label %test_$_5
test_$_5:
 %var_ptr_$_8 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 2
 %res_$_9 = load i64, i64* %var_ptr_$_8
 %lnk_$_10 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 0
 %load_$_11 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_10
 %var_ptr_$_12 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_11, i32 0, i32 6
 %res_$_13 = load i64, i64* %var_ptr_$_12
 %temp_$_14 = sub i64 %res_$_13, 1
 %temp_$_15 = icmp sle i64 %res_$_9, %temp_$_14
 %temp_$_16 = zext i1 %temp_$_15 to i64
 %cnd_$_17 = icmp ne i64 %temp_$_16, 0
 br i1 %cnd_$_17, label %body_$_6, label %mrg_$_7
body_$_6:
 %temp_$_18 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 1
 store i64 0, i64* %temp_$_18
 br label %test_$_19
test_$_19:
 %var_ptr_$_22 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 1
 %res_$_23 = load i64, i64* %var_ptr_$_22
 %lnk_$_24 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 0
 %load_$_25 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_24
 %var_ptr_$_26 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_25, i32 0, i32 6
 %res_$_27 = load i64, i64* %var_ptr_$_26
 %temp_$_28 = sub i64 %res_$_27, 1
 %temp_$_29 = icmp sle i64 %res_$_23, %temp_$_28
 %temp_$_30 = zext i1 %temp_$_29 to i64
 %cnd_$_31 = icmp ne i64 %temp_$_30, 0
 br i1 %cnd_$_31, label %body_$_20, label %mrg_$_21
body_$_20:
 %lnk_$_32 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 0
 %load_$_33 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_32
 %lnk_$_39 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 0
 %load_$_40 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_39
 %var_ptr_$_41 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_40, i32 0, i32 4
 %var_ptr_$_42 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 2
 %res_$_43 = load i64, i64* %var_ptr_$_42
 %load_$_44 = load i8*, i8** %var_ptr_$_41
 %len_ptr_$_47 = bitcast i8* %load_$_44 to i64*
 %len_ptr_$_48 = getelementptr i64, i64* %len_ptr_$_47, i32 -1
 %len_$_49 = load i64, i64* %len_ptr_$_48
 %cnd_$_50 = icmp sle i64 %len_$_49, %res_$_43
 br i1 %cnd_$_50, label %thn_$_45, label %mrg_$_46
thn_$_45:
 call i64 @arrInxError (i64 %res_$_43)
 br label %mrg_$_46
mrg_$_46:
 %array_ptr_$_51 = bitcast i8* %load_$_44 to i64*
 %entry_ptr_$_52 = getelementptr i64, i64* %array_ptr_$_51, i64 %res_$_43
 %res_$_53 = load i64, i64* %entry_ptr_$_52
 %var_ptr_$_54 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 1
 %res_$_55 = load i64, i64* %var_ptr_$_54
 %temp_$_56 = icmp eq i64 %res_$_53, %res_$_55
 %temp_$_57 = zext i1 %temp_$_56 to i64
 %cnd_$_58 = icmp ne i64 %temp_$_57, 0
 br i1 %cnd_$_58, label %thn_$_36, label %els_$_37
thn_$_36:
 %temp_$_60 = bitcast { i64, [2 x i8] }* @str_$_59 to i8*
 store i8* %temp_$_60, i8** %temp_$_35
 br label %mrg_$_38
els_$_37:
 %temp_$_62 = bitcast { i64, [2 x i8] }* @str_$_61 to i8*
 store i8* %temp_$_62, i8** %temp_$_35
 br label %mrg_$_38
mrg_$_38:
 %res_$_63 = load i8*, i8** %temp_$_35
 call void @print (i8* null, i8* %res_$_63)
 %var_ptr_$_64 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 1
 %res_$_65 = load i64, i64* %var_ptr_$_64
 %temp_$_66 = add i64 %res_$_65, 1
 %var_ptr_$_67 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 1
 store i64 %temp_$_66, i64* %var_ptr_$_67
 br label %test_$_19
mrg_$_21:
 %lnk_$_68 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 0
 %load_$_69 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_68
 %temp_$_72 = bitcast { i64, [1 x i8] }* @str_$_71 to i8*
 call void @print (i8* null, i8* %temp_$_72)
 %var_ptr_$_73 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 2
 %res_$_74 = load i64, i64* %var_ptr_$_73
 %temp_$_75 = add i64 %res_$_74, 1
 %var_ptr_$_76 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 2
 store i64 %temp_$_75, i64* %var_ptr_$_76
 br label %test_$_5
mrg_$_7:
 %lnk_$_77 = getelementptr %$locals_printboard$6, %$locals_printboard$6* %locals_$_0, i32 0, i32 0
 %load_$_78 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_77
 %temp_$_81 = bitcast { i64, [1 x i8] }* @str_$_80 to i8*
 call void @print (i8* null, i8* %temp_$_81)
 ret void
}

define void @try$7 (%$locals_tigermain* %$sl, i64 %c$10) {
 %temp_$_118 = alloca i64
 %temp_$_114 = alloca i64
 %locals_$_1 = alloca %$locals_try$7
 %arg_$_82 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 2
 store i64 %c$10, i64* %arg_$_82
 %arg_$_83 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_83
 %var_ptr_$_87 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 2
 %res_$_88 = load i64, i64* %var_ptr_$_87
 %lnk_$_89 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_90 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_89
 %var_ptr_$_91 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_90, i32 0, i32 6
 %res_$_92 = load i64, i64* %var_ptr_$_91
 %temp_$_93 = icmp eq i64 %res_$_88, %res_$_92
 %temp_$_94 = zext i1 %temp_$_93 to i64
 %cnd_$_95 = icmp ne i64 %temp_$_94, 0
 br i1 %cnd_$_95, label %thn_$_84, label %els_$_85
thn_$_84:
 %lnk_$_96 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_97 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_96
 call void @printboard$6 (%$locals_tigermain* %load_$_97)
 br label %mrg_$_86
els_$_85:
 %temp_$_98 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 store i64 0, i64* %temp_$_98
 br label %test_$_99
test_$_99:
 %var_ptr_$_102 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_103 = load i64, i64* %var_ptr_$_102
 %lnk_$_104 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_105 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_104
 %var_ptr_$_106 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_105, i32 0, i32 6
 %res_$_107 = load i64, i64* %var_ptr_$_106
 %temp_$_108 = sub i64 %res_$_107, 1
 %temp_$_109 = icmp sle i64 %res_$_103, %temp_$_108
 %temp_$_110 = zext i1 %temp_$_109 to i64
 %cnd_$_111 = icmp ne i64 %temp_$_110, 0
 br i1 %cnd_$_111, label %body_$_100, label %mrg_$_101
body_$_100:
 %lnk_$_122 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_123 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_122
 %var_ptr_$_124 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_123, i32 0, i32 5
 %var_ptr_$_125 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_126 = load i64, i64* %var_ptr_$_125
 %load_$_127 = load i8*, i8** %var_ptr_$_124
 %len_ptr_$_130 = bitcast i8* %load_$_127 to i64*
 %len_ptr_$_131 = getelementptr i64, i64* %len_ptr_$_130, i32 -1
 %len_$_132 = load i64, i64* %len_ptr_$_131
 %cnd_$_133 = icmp sle i64 %len_$_132, %res_$_126
 br i1 %cnd_$_133, label %thn_$_128, label %mrg_$_129
thn_$_128:
 call i64 @arrInxError (i64 %res_$_126)
 br label %mrg_$_129
mrg_$_129:
 %array_ptr_$_134 = bitcast i8* %load_$_127 to i64*
 %entry_ptr_$_135 = getelementptr i64, i64* %array_ptr_$_134, i64 %res_$_126
 %res_$_136 = load i64, i64* %entry_ptr_$_135
 %temp_$_137 = icmp eq i64 %res_$_136, 0
 %temp_$_138 = zext i1 %temp_$_137 to i64
 %cnd_$_139 = icmp ne i64 %temp_$_138, 0
 br i1 %cnd_$_139, label %thn_$_119, label %els_$_120
thn_$_119:
 %lnk_$_140 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_141 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_140
 %var_ptr_$_142 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_141, i32 0, i32 3
 %var_ptr_$_143 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_144 = load i64, i64* %var_ptr_$_143
 %var_ptr_$_145 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 2
 %res_$_146 = load i64, i64* %var_ptr_$_145
 %temp_$_147 = add i64 %res_$_144, %res_$_146
 %load_$_148 = load i8*, i8** %var_ptr_$_142
 %len_ptr_$_151 = bitcast i8* %load_$_148 to i64*
 %len_ptr_$_152 = getelementptr i64, i64* %len_ptr_$_151, i32 -1
 %len_$_153 = load i64, i64* %len_ptr_$_152
 %cnd_$_154 = icmp sle i64 %len_$_153, %temp_$_147
 br i1 %cnd_$_154, label %thn_$_149, label %mrg_$_150
thn_$_149:
 call i64 @arrInxError (i64 %temp_$_147)
 br label %mrg_$_150
mrg_$_150:
 %array_ptr_$_155 = bitcast i8* %load_$_148 to i64*
 %entry_ptr_$_156 = getelementptr i64, i64* %array_ptr_$_155, i64 %temp_$_147
 %res_$_157 = load i64, i64* %entry_ptr_$_156
 %temp_$_158 = icmp eq i64 %res_$_157, 0
 %temp_$_159 = zext i1 %temp_$_158 to i64
 store i64 %temp_$_159, i64* %temp_$_118
 br label %mrg_$_121
els_$_120:
 store i64 0, i64* %temp_$_118
 br label %mrg_$_121
mrg_$_121:
 %res_$_160 = load i64, i64* %temp_$_118
 %cnd_$_161 = icmp ne i64 %res_$_160, 0
 br i1 %cnd_$_161, label %thn_$_115, label %els_$_116
thn_$_115:
 %lnk_$_162 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_163 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_162
 %var_ptr_$_164 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_163, i32 0, i32 2
 %var_ptr_$_165 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_166 = load i64, i64* %var_ptr_$_165
 %temp_$_167 = add i64 %res_$_166, 7
 %var_ptr_$_168 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 2
 %res_$_169 = load i64, i64* %var_ptr_$_168
 %temp_$_170 = sub i64 %temp_$_167, %res_$_169
 %load_$_171 = load i8*, i8** %var_ptr_$_164
 %len_ptr_$_174 = bitcast i8* %load_$_171 to i64*
 %len_ptr_$_175 = getelementptr i64, i64* %len_ptr_$_174, i32 -1
 %len_$_176 = load i64, i64* %len_ptr_$_175
 %cnd_$_177 = icmp sle i64 %len_$_176, %temp_$_170
 br i1 %cnd_$_177, label %thn_$_172, label %mrg_$_173
thn_$_172:
 call i64 @arrInxError (i64 %temp_$_170)
 br label %mrg_$_173
mrg_$_173:
 %array_ptr_$_178 = bitcast i8* %load_$_171 to i64*
 %entry_ptr_$_179 = getelementptr i64, i64* %array_ptr_$_178, i64 %temp_$_170
 %res_$_180 = load i64, i64* %entry_ptr_$_179
 %temp_$_181 = icmp eq i64 %res_$_180, 0
 %temp_$_182 = zext i1 %temp_$_181 to i64
 store i64 %temp_$_182, i64* %temp_$_114
 br label %mrg_$_117
els_$_116:
 store i64 0, i64* %temp_$_114
 br label %mrg_$_117
mrg_$_117:
 %res_$_183 = load i64, i64* %temp_$_114
 %cnd_$_184 = icmp ne i64 %res_$_183, 0
 br i1 %cnd_$_184, label %thn_$_112, label %mrg_$_113
thn_$_112:
 %lnk_$_272 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_273 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_272
 %var_ptr_$_274 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_273, i32 0, i32 5
 %var_ptr_$_275 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_276 = load i64, i64* %var_ptr_$_275
 %load_$_277 = load i8*, i8** %var_ptr_$_274
 %len_ptr_$_280 = bitcast i8* %load_$_277 to i64*
 %len_ptr_$_281 = getelementptr i64, i64* %len_ptr_$_280, i32 -1
 %len_$_282 = load i64, i64* %len_ptr_$_281
 %cnd_$_283 = icmp sle i64 %len_$_282, %res_$_276
 br i1 %cnd_$_283, label %thn_$_278, label %mrg_$_279
thn_$_278:
 call i64 @arrInxError (i64 %res_$_276)
 br label %mrg_$_279
mrg_$_279:
 %array_ptr_$_284 = bitcast i8* %load_$_277 to i64*
 %entry_ptr_$_285 = getelementptr i64, i64* %array_ptr_$_284, i64 %res_$_276
 store i64 1, i64* %entry_ptr_$_285
 %lnk_$_255 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_256 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_255
 %var_ptr_$_257 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_256, i32 0, i32 3
 %var_ptr_$_258 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_259 = load i64, i64* %var_ptr_$_258
 %var_ptr_$_260 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 2
 %res_$_261 = load i64, i64* %var_ptr_$_260
 %temp_$_262 = add i64 %res_$_259, %res_$_261
 %load_$_263 = load i8*, i8** %var_ptr_$_257
 %len_ptr_$_266 = bitcast i8* %load_$_263 to i64*
 %len_ptr_$_267 = getelementptr i64, i64* %len_ptr_$_266, i32 -1
 %len_$_268 = load i64, i64* %len_ptr_$_267
 %cnd_$_269 = icmp sle i64 %len_$_268, %temp_$_262
 br i1 %cnd_$_269, label %thn_$_264, label %mrg_$_265
thn_$_264:
 call i64 @arrInxError (i64 %temp_$_262)
 br label %mrg_$_265
mrg_$_265:
 %array_ptr_$_270 = bitcast i8* %load_$_263 to i64*
 %entry_ptr_$_271 = getelementptr i64, i64* %array_ptr_$_270, i64 %temp_$_262
 store i64 1, i64* %entry_ptr_$_271
 %lnk_$_237 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_238 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_237
 %var_ptr_$_239 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_238, i32 0, i32 2
 %var_ptr_$_240 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_241 = load i64, i64* %var_ptr_$_240
 %temp_$_242 = add i64 %res_$_241, 7
 %var_ptr_$_243 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 2
 %res_$_244 = load i64, i64* %var_ptr_$_243
 %temp_$_245 = sub i64 %temp_$_242, %res_$_244
 %load_$_246 = load i8*, i8** %var_ptr_$_239
 %len_ptr_$_249 = bitcast i8* %load_$_246 to i64*
 %len_ptr_$_250 = getelementptr i64, i64* %len_ptr_$_249, i32 -1
 %len_$_251 = load i64, i64* %len_ptr_$_250
 %cnd_$_252 = icmp sle i64 %len_$_251, %temp_$_245
 br i1 %cnd_$_252, label %thn_$_247, label %mrg_$_248
thn_$_247:
 call i64 @arrInxError (i64 %temp_$_245)
 br label %mrg_$_248
mrg_$_248:
 %array_ptr_$_253 = bitcast i8* %load_$_246 to i64*
 %entry_ptr_$_254 = getelementptr i64, i64* %array_ptr_$_253, i64 %temp_$_245
 store i64 1, i64* %entry_ptr_$_254
 %var_ptr_$_221 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_222 = load i64, i64* %var_ptr_$_221
 %lnk_$_223 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_224 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_223
 %var_ptr_$_225 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_224, i32 0, i32 4
 %var_ptr_$_226 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 2
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
 store i64 %res_$_222, i64* %entry_ptr_$_236
 %lnk_$_216 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_217 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_216
 %var_ptr_$_218 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 2
 %res_$_219 = load i64, i64* %var_ptr_$_218
 %temp_$_220 = add i64 %res_$_219, 1
 call void @try$7 (%$locals_tigermain* %load_$_217, i64 %temp_$_220)
 %lnk_$_202 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_203 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_202
 %var_ptr_$_204 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_203, i32 0, i32 5
 %var_ptr_$_205 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_206 = load i64, i64* %var_ptr_$_205
 %load_$_207 = load i8*, i8** %var_ptr_$_204
 %len_ptr_$_210 = bitcast i8* %load_$_207 to i64*
 %len_ptr_$_211 = getelementptr i64, i64* %len_ptr_$_210, i32 -1
 %len_$_212 = load i64, i64* %len_ptr_$_211
 %cnd_$_213 = icmp sle i64 %len_$_212, %res_$_206
 br i1 %cnd_$_213, label %thn_$_208, label %mrg_$_209
thn_$_208:
 call i64 @arrInxError (i64 %res_$_206)
 br label %mrg_$_209
mrg_$_209:
 %array_ptr_$_214 = bitcast i8* %load_$_207 to i64*
 %entry_ptr_$_215 = getelementptr i64, i64* %array_ptr_$_214, i64 %res_$_206
 store i64 0, i64* %entry_ptr_$_215
 %lnk_$_185 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_186 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_185
 %var_ptr_$_187 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_186, i32 0, i32 3
 %var_ptr_$_188 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_189 = load i64, i64* %var_ptr_$_188
 %var_ptr_$_190 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 2
 %res_$_191 = load i64, i64* %var_ptr_$_190
 %temp_$_192 = add i64 %res_$_189, %res_$_191
 %load_$_193 = load i8*, i8** %var_ptr_$_187
 %len_ptr_$_196 = bitcast i8* %load_$_193 to i64*
 %len_ptr_$_197 = getelementptr i64, i64* %len_ptr_$_196, i32 -1
 %len_$_198 = load i64, i64* %len_ptr_$_197
 %cnd_$_199 = icmp sle i64 %len_$_198, %temp_$_192
 br i1 %cnd_$_199, label %thn_$_194, label %mrg_$_195
thn_$_194:
 call i64 @arrInxError (i64 %temp_$_192)
 br label %mrg_$_195
mrg_$_195:
 %array_ptr_$_200 = bitcast i8* %load_$_193 to i64*
 %entry_ptr_$_201 = getelementptr i64, i64* %array_ptr_$_200, i64 %temp_$_192
 store i64 0, i64* %entry_ptr_$_201
 %lnk_$_286 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 0
 %load_$_287 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_286
 %var_ptr_$_288 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_287, i32 0, i32 2
 %var_ptr_$_289 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_290 = load i64, i64* %var_ptr_$_289
 %temp_$_291 = add i64 %res_$_290, 7
 %var_ptr_$_292 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 2
 %res_$_293 = load i64, i64* %var_ptr_$_292
 %temp_$_294 = sub i64 %temp_$_291, %res_$_293
 %load_$_295 = load i8*, i8** %var_ptr_$_288
 %len_ptr_$_298 = bitcast i8* %load_$_295 to i64*
 %len_ptr_$_299 = getelementptr i64, i64* %len_ptr_$_298, i32 -1
 %len_$_300 = load i64, i64* %len_ptr_$_299
 %cnd_$_301 = icmp sle i64 %len_$_300, %temp_$_294
 br i1 %cnd_$_301, label %thn_$_296, label %mrg_$_297
thn_$_296:
 call i64 @arrInxError (i64 %temp_$_294)
 br label %mrg_$_297
mrg_$_297:
 %array_ptr_$_302 = bitcast i8* %load_$_295 to i64*
 %entry_ptr_$_303 = getelementptr i64, i64* %array_ptr_$_302, i64 %temp_$_294
 store i64 0, i64* %entry_ptr_$_303
 br label %mrg_$_113
mrg_$_113:
 %var_ptr_$_304 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 %res_$_305 = load i64, i64* %var_ptr_$_304
 %temp_$_306 = add i64 %res_$_305, 1
 %var_ptr_$_307 = getelementptr %$locals_try$7, %$locals_try$7* %locals_$_1, i32 0, i32 1
 store i64 %temp_$_306, i64* %var_ptr_$_307
 br label %test_$_99
mrg_$_101:
 br label %mrg_$_86
mrg_$_86:
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_2 = alloca %$locals_tigermain
 %arg_$_308 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_308
 %temp_$_309 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 store i64 8, i64* %temp_$_309
 %init_ptr_$_310 = alloca i64
 store i64 0, i64* %init_ptr_$_310
 %init_ptr_$_311 = bitcast i64* %init_ptr_$_310 to i8*
 %var_ptr_$_312 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_313 = load i64, i64* %var_ptr_$_312
 %init_size_ptr_$_314 = getelementptr i64, i64* null, i32 1
 %init_size_$_315 = ptrtoint i64* %init_size_ptr_$_314 to i64
 %array_ptr_$_316 = call i8* @initArray (i64 %res_$_313, i64 %init_size_$_315, i8* %init_ptr_$_311)
 %temp_$_317 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 store i8* %array_ptr_$_316, i8** %temp_$_317
 %init_ptr_$_318 = alloca i64
 store i64 0, i64* %init_ptr_$_318
 %init_ptr_$_319 = bitcast i64* %init_ptr_$_318 to i8*
 %var_ptr_$_320 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_321 = load i64, i64* %var_ptr_$_320
 %init_size_ptr_$_322 = getelementptr i64, i64* null, i32 1
 %init_size_$_323 = ptrtoint i64* %init_size_ptr_$_322 to i64
 %array_ptr_$_324 = call i8* @initArray (i64 %res_$_321, i64 %init_size_$_323, i8* %init_ptr_$_319)
 %temp_$_325 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 store i8* %array_ptr_$_324, i8** %temp_$_325
 %init_ptr_$_326 = alloca i64
 store i64 0, i64* %init_ptr_$_326
 %init_ptr_$_327 = bitcast i64* %init_ptr_$_326 to i8*
 %var_ptr_$_328 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_329 = load i64, i64* %var_ptr_$_328
 %var_ptr_$_330 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_331 = load i64, i64* %var_ptr_$_330
 %temp_$_332 = add i64 %res_$_329, %res_$_331
 %temp_$_333 = sub i64 %temp_$_332, 1
 %init_size_ptr_$_334 = getelementptr i64, i64* null, i32 1
 %init_size_$_335 = ptrtoint i64* %init_size_ptr_$_334 to i64
 %array_ptr_$_336 = call i8* @initArray (i64 %temp_$_333, i64 %init_size_$_335, i8* %init_ptr_$_327)
 %temp_$_337 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 store i8* %array_ptr_$_336, i8** %temp_$_337
 %init_ptr_$_338 = alloca i64
 store i64 0, i64* %init_ptr_$_338
 %init_ptr_$_339 = bitcast i64* %init_ptr_$_338 to i8*
 %var_ptr_$_340 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_341 = load i64, i64* %var_ptr_$_340
 %var_ptr_$_342 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_343 = load i64, i64* %var_ptr_$_342
 %temp_$_344 = add i64 %res_$_341, %res_$_343
 %temp_$_345 = sub i64 %temp_$_344, 1
 %init_size_ptr_$_346 = getelementptr i64, i64* null, i32 1
 %init_size_$_347 = ptrtoint i64* %init_size_ptr_$_346 to i64
 %array_ptr_$_348 = call i8* @initArray (i64 %temp_$_345, i64 %init_size_$_347, i8* %init_ptr_$_339)
 %temp_$_349 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 store i8* %array_ptr_$_348, i8** %temp_$_349
 call void @try$7 (%$locals_tigermain* %locals_$_2, i64 0)
 ret void
}
