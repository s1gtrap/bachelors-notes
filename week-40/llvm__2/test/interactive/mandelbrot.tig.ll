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

%$locals_render$4 = type { %$locals_tigermain*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%$locals_tigermain = type { i8*, i64, i64, i64, i64, i64 }

@str_$_264 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_255 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_250 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"."}
@str_$_229 = global { i64, [1 x i8] } {i64 1, [1 x i8] c","}
@str_$_208 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"*"}
@str_$_187 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"o"}
@str_$_166 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"O"}

define void @render$4 (%$locals_tigermain* %$sl) {
 %locals_$_0 = alloca %$locals_render$4
 %arg_$_2 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_2
 %temp_$_3 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 11
 store i64 0, i64* %temp_$_3
 br label %test_$_4
test_$_4:
 %var_ptr_$_7 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 11
 %res_$_8 = load i64, i64* %var_ptr_$_7
 %temp_$_9 = icmp sle i64 %res_$_8, 22
 %temp_$_10 = zext i1 %temp_$_9 to i64
 %cnd_$_11 = icmp ne i64 %temp_$_10, 0
 br i1 %cnd_$_11, label %body_$_5, label %mrg_$_6
body_$_5:
 %temp_$_12 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 10
 store i64 0, i64* %temp_$_12
 br label %test_$_13
test_$_13:
 %var_ptr_$_16 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 10
 %res_$_17 = load i64, i64* %var_ptr_$_16
 %temp_$_18 = icmp sle i64 %res_$_17, 78
 %temp_$_19 = zext i1 %temp_$_18 to i64
 %cnd_$_20 = icmp ne i64 %temp_$_19, 0
 br i1 %cnd_$_20, label %body_$_14, label %mrg_$_15
body_$_14:
 %var_ptr_$_23 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 10
 %res_$_24 = load i64, i64* %var_ptr_$_23
 %temp_$_25 = sub i64 %res_$_24, 39
 %lnk_$_26 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_27 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_26
 %var_ptr_$_28 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_27, i32 0, i32 3
 %res_$_29 = load i64, i64* %var_ptr_$_28
 %temp_$_30 = add i64 %temp_$_25, %res_$_29
 %temp_$_31 = mul i64 %temp_$_30, 290
 %lnk_$_32 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_33 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_32
 %var_ptr_$_34 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_33, i32 0, i32 4
 %res_$_35 = load i64, i64* %var_ptr_$_34
 %cnd_$_36 = icmp eq i64 %res_$_35, 0
 br i1 %cnd_$_36, label %thn_$_21, label %mrg_$_22
thn_$_21:
 call i64 @divisionByZero ()
 br label %mrg_$_22
mrg_$_22:
 %temp_$_37 = sdiv i64 %temp_$_31, %res_$_35
 %temp_$_38 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 9
 store i64 %temp_$_37, i64* %temp_$_38
 %var_ptr_$_41 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 11
 %res_$_42 = load i64, i64* %var_ptr_$_41
 %temp_$_43 = sub i64 %res_$_42, 11
 %lnk_$_44 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_45 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_44
 %var_ptr_$_46 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_45, i32 0, i32 2
 %res_$_47 = load i64, i64* %var_ptr_$_46
 %temp_$_48 = add i64 %temp_$_43, %res_$_47
 %temp_$_49 = mul i64 %temp_$_48, 890
 %lnk_$_50 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_51 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_50
 %var_ptr_$_52 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_51, i32 0, i32 4
 %res_$_53 = load i64, i64* %var_ptr_$_52
 %cnd_$_54 = icmp eq i64 %res_$_53, 0
 br i1 %cnd_$_54, label %thn_$_39, label %mrg_$_40
thn_$_39:
 call i64 @divisionByZero ()
 br label %mrg_$_40
mrg_$_40:
 %temp_$_55 = sdiv i64 %temp_$_49, %res_$_53
 %temp_$_56 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 8
 store i64 %temp_$_55, i64* %temp_$_56
 %var_ptr_$_57 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 9
 %res_$_58 = load i64, i64* %var_ptr_$_57
 %temp_$_59 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 7
 store i64 %res_$_58, i64* %temp_$_59
 %var_ptr_$_60 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 8
 %res_$_61 = load i64, i64* %var_ptr_$_60
 %temp_$_62 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 6
 store i64 %res_$_61, i64* %temp_$_62
 %temp_$_63 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 5
 store i64 0, i64* %temp_$_63
 %temp_$_64 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 4
 store i64 0, i64* %temp_$_64
 br label %test_$_65
test_$_65:
 %var_ptr_$_68 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 4
 %res_$_69 = load i64, i64* %var_ptr_$_68
 %lnk_$_70 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_71 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_70
 %var_ptr_$_72 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_71, i32 0, i32 5
 %res_$_73 = load i64, i64* %var_ptr_$_72
 %temp_$_74 = icmp sle i64 %res_$_69, %res_$_73
 %temp_$_75 = zext i1 %temp_$_74 to i64
 %cnd_$_76 = icmp ne i64 %temp_$_75, 0
 br i1 %cnd_$_76, label %body_$_66, label %mrg_$_67
body_$_66:
 %var_ptr_$_79 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 7
 %res_$_80 = load i64, i64* %var_ptr_$_79
 %var_ptr_$_81 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 7
 %res_$_82 = load i64, i64* %var_ptr_$_81
 %temp_$_83 = mul i64 %res_$_80, %res_$_82
 %cnd_$_84 = icmp eq i64 10000, 0
 br i1 %cnd_$_84, label %thn_$_77, label %mrg_$_78
thn_$_77:
 call i64 @divisionByZero ()
 br label %mrg_$_78
mrg_$_78:
 %temp_$_85 = sdiv i64 %temp_$_83, 10000
 %var_ptr_$_88 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 6
 %res_$_89 = load i64, i64* %var_ptr_$_88
 %var_ptr_$_90 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 6
 %res_$_91 = load i64, i64* %var_ptr_$_90
 %temp_$_92 = mul i64 %res_$_89, %res_$_91
 %cnd_$_93 = icmp eq i64 10000, 0
 br i1 %cnd_$_93, label %thn_$_86, label %mrg_$_87
thn_$_86:
 call i64 @divisionByZero ()
 br label %mrg_$_87
mrg_$_87:
 %temp_$_94 = sdiv i64 %temp_$_92, 10000
 %temp_$_95 = sub i64 %temp_$_85, %temp_$_94
 %var_ptr_$_96 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 9
 %res_$_97 = load i64, i64* %var_ptr_$_96
 %temp_$_98 = add i64 %temp_$_95, %res_$_97
 %temp_$_99 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 3
 store i64 %temp_$_98, i64* %temp_$_99
 %var_ptr_$_102 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 6
 %res_$_103 = load i64, i64* %var_ptr_$_102
 %temp_$_104 = mul i64 2, %res_$_103
 %var_ptr_$_105 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 7
 %res_$_106 = load i64, i64* %var_ptr_$_105
 %temp_$_107 = mul i64 %temp_$_104, %res_$_106
 %cnd_$_108 = icmp eq i64 10000, 0
 br i1 %cnd_$_108, label %thn_$_100, label %mrg_$_101
thn_$_100:
 call i64 @divisionByZero ()
 br label %mrg_$_101
mrg_$_101:
 %temp_$_109 = sdiv i64 %temp_$_107, 10000
 %var_ptr_$_110 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 8
 %res_$_111 = load i64, i64* %var_ptr_$_110
 %temp_$_112 = add i64 %temp_$_109, %res_$_111
 %temp_$_113 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 2
 store i64 %temp_$_112, i64* %temp_$_113
 %var_ptr_$_116 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 3
 %res_$_117 = load i64, i64* %var_ptr_$_116
 %var_ptr_$_118 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 3
 %res_$_119 = load i64, i64* %var_ptr_$_118
 %temp_$_120 = mul i64 %res_$_117, %res_$_119
 %var_ptr_$_121 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 2
 %res_$_122 = load i64, i64* %var_ptr_$_121
 %var_ptr_$_123 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 2
 %res_$_124 = load i64, i64* %var_ptr_$_123
 %temp_$_125 = mul i64 %res_$_122, %res_$_124
 %temp_$_126 = add i64 %temp_$_120, %temp_$_125
 %cnd_$_127 = icmp eq i64 10000, 0
 br i1 %cnd_$_127, label %thn_$_114, label %mrg_$_115
thn_$_114:
 call i64 @divisionByZero ()
 br label %mrg_$_115
mrg_$_115:
 %temp_$_128 = sdiv i64 %temp_$_126, 10000
 %temp_$_129 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 1
 store i64 %temp_$_128, i64* %temp_$_129
 %var_ptr_$_138 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 1
 %res_$_139 = load i64, i64* %var_ptr_$_138
 %temp_$_140 = icmp sgt i64 %res_$_139, 20000
 %temp_$_141 = zext i1 %temp_$_140 to i64
 %cnd_$_142 = icmp ne i64 %temp_$_141, 0
 br i1 %cnd_$_142, label %thn_$_136, label %mrg_$_137
thn_$_136:
 br label %mrg_$_67
tail_$_143:
 br label %mrg_$_137
mrg_$_137:
 %var_ptr_$_133 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 4
 %res_$_134 = load i64, i64* %var_ptr_$_133
 %var_ptr_$_135 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 5
 store i64 %res_$_134, i64* %var_ptr_$_135
 %var_ptr_$_130 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 3
 %res_$_131 = load i64, i64* %var_ptr_$_130
 %var_ptr_$_132 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 7
 store i64 %res_$_131, i64* %var_ptr_$_132
 %var_ptr_$_144 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 2
 %res_$_145 = load i64, i64* %var_ptr_$_144
 %var_ptr_$_146 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 6
 store i64 %res_$_145, i64* %var_ptr_$_146
 %var_ptr_$_147 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 4
 %res_$_148 = load i64, i64* %var_ptr_$_147
 %temp_$_149 = add i64 %res_$_148, 1
 %var_ptr_$_150 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 4
 store i64 %temp_$_149, i64* %var_ptr_$_150
 br label %test_$_65
mrg_$_67:
 %var_ptr_$_154 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 5
 %res_$_155 = load i64, i64* %var_ptr_$_154
 %lnk_$_156 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_157 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_156
 %var_ptr_$_158 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_157, i32 0, i32 5
 %res_$_159 = load i64, i64* %var_ptr_$_158
 %temp_$_160 = icmp eq i64 %res_$_155, %res_$_159
 %temp_$_161 = zext i1 %temp_$_160 to i64
 %cnd_$_162 = icmp ne i64 %temp_$_161, 0
 br i1 %cnd_$_162, label %thn_$_151, label %els_$_152
thn_$_151:
 %lnk_$_163 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_164 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_163
 %temp_$_167 = bitcast { i64, [1 x i8] }* @str_$_166 to i8*
 call void @print (i8* null, i8* %temp_$_167)
 br label %mrg_$_153
els_$_152:
 %var_ptr_$_171 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 5
 %res_$_172 = load i64, i64* %var_ptr_$_171
 %lnk_$_175 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_176 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_175
 %var_ptr_$_177 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_176, i32 0, i32 5
 %res_$_178 = load i64, i64* %var_ptr_$_177
 %cnd_$_179 = icmp eq i64 2, 0
 br i1 %cnd_$_179, label %thn_$_173, label %mrg_$_174
thn_$_173:
 call i64 @divisionByZero ()
 br label %mrg_$_174
mrg_$_174:
 %temp_$_180 = sdiv i64 %res_$_178, 2
 %temp_$_181 = icmp sgt i64 %res_$_172, %temp_$_180
 %temp_$_182 = zext i1 %temp_$_181 to i64
 %cnd_$_183 = icmp ne i64 %temp_$_182, 0
 br i1 %cnd_$_183, label %thn_$_168, label %els_$_169
thn_$_168:
 %lnk_$_184 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_185 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_184
 %temp_$_188 = bitcast { i64, [1 x i8] }* @str_$_187 to i8*
 call void @print (i8* null, i8* %temp_$_188)
 br label %mrg_$_170
els_$_169:
 %var_ptr_$_192 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 5
 %res_$_193 = load i64, i64* %var_ptr_$_192
 %lnk_$_196 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_197 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_196
 %var_ptr_$_198 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_197, i32 0, i32 5
 %res_$_199 = load i64, i64* %var_ptr_$_198
 %cnd_$_200 = icmp eq i64 4, 0
 br i1 %cnd_$_200, label %thn_$_194, label %mrg_$_195
thn_$_194:
 call i64 @divisionByZero ()
 br label %mrg_$_195
mrg_$_195:
 %temp_$_201 = sdiv i64 %res_$_199, 4
 %temp_$_202 = icmp sgt i64 %res_$_193, %temp_$_201
 %temp_$_203 = zext i1 %temp_$_202 to i64
 %cnd_$_204 = icmp ne i64 %temp_$_203, 0
 br i1 %cnd_$_204, label %thn_$_189, label %els_$_190
thn_$_189:
 %lnk_$_205 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_206 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_205
 %temp_$_209 = bitcast { i64, [1 x i8] }* @str_$_208 to i8*
 call void @print (i8* null, i8* %temp_$_209)
 br label %mrg_$_191
els_$_190:
 %var_ptr_$_213 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 5
 %res_$_214 = load i64, i64* %var_ptr_$_213
 %lnk_$_217 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_218 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_217
 %var_ptr_$_219 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_218, i32 0, i32 5
 %res_$_220 = load i64, i64* %var_ptr_$_219
 %cnd_$_221 = icmp eq i64 8, 0
 br i1 %cnd_$_221, label %thn_$_215, label %mrg_$_216
thn_$_215:
 call i64 @divisionByZero ()
 br label %mrg_$_216
mrg_$_216:
 %temp_$_222 = sdiv i64 %res_$_220, 8
 %temp_$_223 = icmp sgt i64 %res_$_214, %temp_$_222
 %temp_$_224 = zext i1 %temp_$_223 to i64
 %cnd_$_225 = icmp ne i64 %temp_$_224, 0
 br i1 %cnd_$_225, label %thn_$_210, label %els_$_211
thn_$_210:
 %lnk_$_226 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_227 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_226
 %temp_$_230 = bitcast { i64, [1 x i8] }* @str_$_229 to i8*
 call void @print (i8* null, i8* %temp_$_230)
 br label %mrg_$_212
els_$_211:
 %var_ptr_$_234 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 5
 %res_$_235 = load i64, i64* %var_ptr_$_234
 %lnk_$_238 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_239 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_238
 %var_ptr_$_240 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_239, i32 0, i32 5
 %res_$_241 = load i64, i64* %var_ptr_$_240
 %cnd_$_242 = icmp eq i64 16, 0
 br i1 %cnd_$_242, label %thn_$_236, label %mrg_$_237
thn_$_236:
 call i64 @divisionByZero ()
 br label %mrg_$_237
mrg_$_237:
 %temp_$_243 = sdiv i64 %res_$_241, 16
 %temp_$_244 = icmp sgt i64 %res_$_235, %temp_$_243
 %temp_$_245 = zext i1 %temp_$_244 to i64
 %cnd_$_246 = icmp ne i64 %temp_$_245, 0
 br i1 %cnd_$_246, label %thn_$_231, label %els_$_232
thn_$_231:
 %lnk_$_247 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_248 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_247
 %temp_$_251 = bitcast { i64, [1 x i8] }* @str_$_250 to i8*
 call void @print (i8* null, i8* %temp_$_251)
 br label %mrg_$_233
els_$_232:
 %lnk_$_252 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_253 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_252
 %temp_$_256 = bitcast { i64, [1 x i8] }* @str_$_255 to i8*
 call void @print (i8* null, i8* %temp_$_256)
 br label %mrg_$_233
mrg_$_233:
 br label %mrg_$_212
mrg_$_212:
 br label %mrg_$_191
mrg_$_191:
 br label %mrg_$_170
mrg_$_170:
 br label %mrg_$_153
mrg_$_153:
 %var_ptr_$_257 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 10
 %res_$_258 = load i64, i64* %var_ptr_$_257
 %temp_$_259 = add i64 %res_$_258, 1
 %var_ptr_$_260 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 10
 store i64 %temp_$_259, i64* %var_ptr_$_260
 br label %test_$_13
mrg_$_15:
 %lnk_$_261 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 0
 %load_$_262 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_261
 %temp_$_265 = bitcast { i64, [1 x i8] }* @str_$_264 to i8*
 call void @print (i8* null, i8* %temp_$_265)
 %var_ptr_$_266 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 11
 %res_$_267 = load i64, i64* %var_ptr_$_266
 %temp_$_268 = add i64 %res_$_267, 1
 %var_ptr_$_269 = getelementptr %$locals_render$4, %$locals_render$4* %locals_$_0, i32 0, i32 11
 store i64 %temp_$_268, i64* %var_ptr_$_269
 br label %test_$_4
mrg_$_6:
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_1 = alloca %$locals_tigermain
 %arg_$_270 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_270
 %temp_$_271 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 5
 store i64 100, i64* %temp_$_271
 %temp_$_272 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 4
 store i64 1, i64* %temp_$_272
 %temp_$_273 = sub i64 0, 15
 %temp_$_274 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 3
 store i64 %temp_$_273, i64* %temp_$_274
 %temp_$_275 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 2
 store i64 0, i64* %temp_$_275
 call void @render$4 (%$locals_tigermain* %locals_$_1)
 %ret_$_277 = call i8* @getChar (i8* null)
 %temp_$_278 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 1
 store i64 0, i64* %temp_$_278
 br label %test_$_279
test_$_279:
 %var_ptr_$_282 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 1
 %res_$_283 = load i64, i64* %var_ptr_$_282
 %temp_$_284 = icmp sle i64 %res_$_283, 100
 %temp_$_285 = zext i1 %temp_$_284 to i64
 %cnd_$_286 = icmp ne i64 %temp_$_285, 0
 br i1 %cnd_$_286, label %body_$_280, label %mrg_$_281
body_$_280:
 %var_ptr_$_297 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 1
 %res_$_298 = load i64, i64* %var_ptr_$_297
 %temp_$_299 = add i64 %res_$_298, 1
 %var_ptr_$_300 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 4
 store i64 %temp_$_299, i64* %var_ptr_$_300
 %var_ptr_$_293 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 2
 %res_$_294 = load i64, i64* %var_ptr_$_293
 %temp_$_295 = sub i64 %res_$_294, 5
 %var_ptr_$_296 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 2
 store i64 %temp_$_295, i64* %var_ptr_$_296
 %var_ptr_$_289 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 3
 %res_$_290 = load i64, i64* %var_ptr_$_289
 %temp_$_291 = sub i64 %res_$_290, 20
 %var_ptr_$_292 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 3
 store i64 %temp_$_291, i64* %var_ptr_$_292
 call void @render$4 (%$locals_tigermain* %locals_$_1)
 %ret_$_288 = call i8* @getChar (i8* null)
 %var_ptr_$_301 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 1
 %res_$_302 = load i64, i64* %var_ptr_$_301
 %temp_$_303 = add i64 %res_$_302, 1
 %var_ptr_$_304 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 1
 store i64 %temp_$_303, i64* %var_ptr_$_304
 br label %test_$_279
mrg_$_281:
 ret void
}
