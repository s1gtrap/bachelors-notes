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

%particle$8 = type { i8*, i64, i64, i64 }
%system$9 = type i8*
%$locals_setup$12 = type { %$locals_tigermain* }
%$locals_f$18 = type { %$locals_i2s$13*, i64 }
%$locals_i2s$13 = type { %$locals_tigermain*, i64, i64 }
%$locals_print_particles$14 = type { %$locals_tigermain*, i8*, i64, i8*, i64 }
%$locals_update$15 = type { %$locals_tigermain*, i8* }
%$locals_loop$16 = type { %$locals_tigermain*, i64 }
%$locals_tigermain = type { i8*, i8*, i64, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64 }

@str_$_491 = global { i64, [32 x i8] } {i64 32, [32 x i8] c"Press and hold Enter to play...\0A"}
@str_$_486 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"dOvs"}
@str_$_398 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"q"}
@str_$_196 = global { i64, [3 x i8] } {i64 3, [3 x i8] c";1m"}
@str_$_184 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"\1B["}
@str_$_171 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"\1B[0m"}
@str_$_165 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_140 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_126 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_120 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}

define void @setup$12 (%$locals_tigermain* %$sl) {
 %locals_$_0 = alloca %$locals_setup$12
 %arg_$_7 = getelementptr %$locals_setup$12, %$locals_setup$12* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_7
 %size_ptr_$_8 = getelementptr %particle$8, %particle$8* null, i32 1
 %size_$_9 = ptrtoint %particle$8* %size_ptr_$_8 to i64
 %record_ptr_$_10 = call i8* @allocRecord (i64 %size_$_9)
 %rec_$_11 = bitcast i8* %record_ptr_$_10 to %particle$8*
 %lnk_$_12 = getelementptr %$locals_setup$12, %$locals_setup$12* %locals_$_0, i32 0, i32 0
 %load_$_13 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_12
 %var_ptr_$_14 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_13, i32 0, i32 3
 %res_$_15 = load i8*, i8** %var_ptr_$_14
 %field_ptr_$_16 = getelementptr %particle$8, %particle$8* %rec_$_11, i32 0, i32 0
 store i8* %res_$_15, i8** %field_ptr_$_16
 %lnk_$_17 = getelementptr %$locals_setup$12, %$locals_setup$12* %locals_$_0, i32 0, i32 0
 %load_$_18 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_17
 %var_ptr_$_19 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_18, i32 0, i32 12
 %res_$_20 = load i64, i64* %var_ptr_$_19
 %lnk_$_21 = getelementptr %$locals_setup$12, %$locals_setup$12* %locals_$_0, i32 0, i32 0
 %load_$_22 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_21
 %var_ptr_$_23 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_22, i32 0, i32 9
 %res_$_24 = load i64, i64* %var_ptr_$_23
 %temp_$_25 = mul i64 %res_$_20, %res_$_24
 %field_ptr_$_26 = getelementptr %particle$8, %particle$8* %rec_$_11, i32 0, i32 1
 store i64 %temp_$_25, i64* %field_ptr_$_26
 %field_ptr_$_27 = getelementptr %particle$8, %particle$8* %rec_$_11, i32 0, i32 2
 store i64 0, i64* %field_ptr_$_27
 %field_ptr_$_28 = getelementptr %particle$8, %particle$8* %rec_$_11, i32 0, i32 3
 store i64 1, i64* %field_ptr_$_28
 %lnk_$_29 = getelementptr %$locals_setup$12, %$locals_setup$12* %locals_$_0, i32 0, i32 0
 %load_$_30 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_29
 %var_ptr_$_31 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_30, i32 0, i32 4
 %load_$_32 = load i8*, i8** %var_ptr_$_31
 %len_ptr_$_35 = bitcast i8* %load_$_32 to i64*
 %len_ptr_$_36 = getelementptr i64, i64* %len_ptr_$_35, i32 -1
 %len_$_37 = load i64, i64* %len_ptr_$_36
 %cnd_$_38 = icmp sle i64 %len_$_37, 0
 br i1 %cnd_$_38, label %thn_$_33, label %mrg_$_34
thn_$_33:
 call i64 @arrInxError (i64 0)
 br label %mrg_$_34
mrg_$_34:
 %array_ptr_$_39 = bitcast i8* %load_$_32 to i8**
 %entry_ptr_$_40 = getelementptr i8*, i8** %array_ptr_$_39, i32 0
 store i8* %record_ptr_$_10, i8** %entry_ptr_$_40
 %size_ptr_$_41 = getelementptr %particle$8, %particle$8* null, i32 1
 %size_$_42 = ptrtoint %particle$8* %size_ptr_$_41 to i64
 %record_ptr_$_43 = call i8* @allocRecord (i64 %size_$_42)
 %rec_$_44 = bitcast i8* %record_ptr_$_43 to %particle$8*
 %lnk_$_45 = getelementptr %$locals_setup$12, %$locals_setup$12* %locals_$_0, i32 0, i32 0
 %load_$_46 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_45
 %var_ptr_$_47 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_46, i32 0, i32 3
 %res_$_48 = load i8*, i8** %var_ptr_$_47
 %field_ptr_$_49 = getelementptr %particle$8, %particle$8* %rec_$_44, i32 0, i32 0
 store i8* %res_$_48, i8** %field_ptr_$_49
 %lnk_$_50 = getelementptr %$locals_setup$12, %$locals_setup$12* %locals_$_0, i32 0, i32 0
 %load_$_51 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_50
 %var_ptr_$_52 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_51, i32 0, i32 11
 %res_$_53 = load i64, i64* %var_ptr_$_52
 %lnk_$_54 = getelementptr %$locals_setup$12, %$locals_setup$12* %locals_$_0, i32 0, i32 0
 %load_$_55 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_54
 %var_ptr_$_56 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_55, i32 0, i32 9
 %res_$_57 = load i64, i64* %var_ptr_$_56
 %temp_$_58 = mul i64 %res_$_53, %res_$_57
 %field_ptr_$_59 = getelementptr %particle$8, %particle$8* %rec_$_44, i32 0, i32 1
 store i64 %temp_$_58, i64* %field_ptr_$_59
 %field_ptr_$_60 = getelementptr %particle$8, %particle$8* %rec_$_44, i32 0, i32 2
 store i64 0, i64* %field_ptr_$_60
 %temp_$_61 = sub i64 0, 1
 %field_ptr_$_62 = getelementptr %particle$8, %particle$8* %rec_$_44, i32 0, i32 3
 store i64 %temp_$_61, i64* %field_ptr_$_62
 %lnk_$_63 = getelementptr %$locals_setup$12, %$locals_setup$12* %locals_$_0, i32 0, i32 0
 %load_$_64 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_63
 %var_ptr_$_65 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_64, i32 0, i32 4
 %load_$_66 = load i8*, i8** %var_ptr_$_65
 %len_ptr_$_69 = bitcast i8* %load_$_66 to i64*
 %len_ptr_$_70 = getelementptr i64, i64* %len_ptr_$_69, i32 -1
 %len_$_71 = load i64, i64* %len_ptr_$_70
 %cnd_$_72 = icmp sle i64 %len_$_71, 1
 br i1 %cnd_$_72, label %thn_$_67, label %mrg_$_68
thn_$_67:
 call i64 @arrInxError (i64 1)
 br label %mrg_$_68
mrg_$_68:
 %array_ptr_$_73 = bitcast i8* %load_$_66 to i8**
 %entry_ptr_$_74 = getelementptr i8*, i8** %array_ptr_$_73, i32 1
 store i8* %record_ptr_$_43, i8** %entry_ptr_$_74
 ret void
}

define i8* @f$18 (%$locals_i2s$13* %$sl, i64 %i$19) {
 %temp_$_77 = alloca i8*
 %locals_$_1 = alloca %$locals_f$18
 %arg_$_75 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_1, i32 0, i32 1
 store i64 %i$19, i64* %arg_$_75
 %arg_$_76 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_1, i32 0, i32 0
 store %$locals_i2s$13* %$sl, %$locals_i2s$13** %arg_$_76
 %var_ptr_$_81 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_1, i32 0, i32 1
 %res_$_82 = load i64, i64* %var_ptr_$_81
 %temp_$_83 = icmp sgt i64 %res_$_82, 0
 %temp_$_84 = zext i1 %temp_$_83 to i64
 %cnd_$_85 = icmp ne i64 %temp_$_84, 0
 br i1 %cnd_$_85, label %thn_$_78, label %els_$_79
thn_$_78:
 %lnk_$_86 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_1, i32 0, i32 0
 %load_$_87 = load %$locals_i2s$13*, %$locals_i2s$13** %lnk_$_86
 %lnk_$_88 = getelementptr %$locals_i2s$13, %$locals_i2s$13* %load_$_87, i32 0, i32 0
 %load_$_89 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_88
 %lnk_$_91 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_1, i32 0, i32 0
 %load_$_92 = load %$locals_i2s$13*, %$locals_i2s$13** %lnk_$_91
 %var_ptr_$_95 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_1, i32 0, i32 1
 %res_$_96 = load i64, i64* %var_ptr_$_95
 %cnd_$_97 = icmp eq i64 10, 0
 br i1 %cnd_$_97, label %thn_$_93, label %mrg_$_94
thn_$_93:
 call i64 @divisionByZero ()
 br label %mrg_$_94
mrg_$_94:
 %temp_$_98 = sdiv i64 %res_$_96, 10
 %ret_$_99 = call i8* @f$18 (%$locals_i2s$13* %load_$_92, i64 %temp_$_98)
 %lnk_$_100 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_1, i32 0, i32 0
 %load_$_101 = load %$locals_i2s$13*, %$locals_i2s$13** %lnk_$_100
 %lnk_$_102 = getelementptr %$locals_i2s$13, %$locals_i2s$13* %load_$_101, i32 0, i32 0
 %load_$_103 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_102
 %var_ptr_$_105 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_1, i32 0, i32 1
 %res_$_106 = load i64, i64* %var_ptr_$_105
 %var_ptr_$_109 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_1, i32 0, i32 1
 %res_$_110 = load i64, i64* %var_ptr_$_109
 %cnd_$_111 = icmp eq i64 10, 0
 br i1 %cnd_$_111, label %thn_$_107, label %mrg_$_108
thn_$_107:
 call i64 @divisionByZero ()
 br label %mrg_$_108
mrg_$_108:
 %temp_$_112 = sdiv i64 %res_$_110, 10
 %temp_$_113 = mul i64 %temp_$_112, 10
 %temp_$_114 = sub i64 %res_$_106, %temp_$_113
 %lnk_$_115 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_1, i32 0, i32 0
 %load_$_116 = load %$locals_i2s$13*, %$locals_i2s$13** %lnk_$_115
 %lnk_$_117 = getelementptr %$locals_i2s$13, %$locals_i2s$13* %load_$_116, i32 0, i32 0
 %load_$_118 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_117
 %temp_$_121 = bitcast { i64, [1 x i8] }* @str_$_120 to i8*
 %ret_$_122 = call i64 @ord (i8* null, i8* %temp_$_121)
 %temp_$_123 = add i64 %temp_$_114, %ret_$_122
 %ret_$_124 = call i8* @chr (i8* null, i64 %temp_$_123)
 %ret_$_125 = call i8* @concat (i8* null, i8* %ret_$_99, i8* %ret_$_124)
 store i8* %ret_$_125, i8** %temp_$_77
 br label %mrg_$_80
els_$_79:
 %temp_$_127 = bitcast { i64, [0 x i8] }* @str_$_126 to i8*
 store i8* %temp_$_127, i8** %temp_$_77
 br label %mrg_$_80
mrg_$_80:
 %res_$_128 = load i8*, i8** %temp_$_77
 ret i8* %res_$_128
}

define i8* @i2s$13 (%$locals_tigermain* %$sl, i64 %i$17) {
 %temp_$_131 = alloca i8*
 %locals_$_2 = alloca %$locals_i2s$13
 %arg_$_129 = getelementptr %$locals_i2s$13, %$locals_i2s$13* %locals_$_2, i32 0, i32 2
 store i64 %i$17, i64* %arg_$_129
 %arg_$_130 = getelementptr %$locals_i2s$13, %$locals_i2s$13* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_130
 %var_ptr_$_135 = getelementptr %$locals_i2s$13, %$locals_i2s$13* %locals_$_2, i32 0, i32 2
 %res_$_136 = load i64, i64* %var_ptr_$_135
 %temp_$_137 = icmp eq i64 %res_$_136, 0
 %temp_$_138 = zext i1 %temp_$_137 to i64
 %cnd_$_139 = icmp ne i64 %temp_$_138, 0
 br i1 %cnd_$_139, label %thn_$_132, label %els_$_133
thn_$_132:
 %temp_$_141 = bitcast { i64, [1 x i8] }* @str_$_140 to i8*
 store i8* %temp_$_141, i8** %temp_$_131
 br label %mrg_$_134
els_$_133:
 %var_ptr_$_142 = getelementptr %$locals_i2s$13, %$locals_i2s$13* %locals_$_2, i32 0, i32 2
 %res_$_143 = load i64, i64* %var_ptr_$_142
 %ret_$_144 = call i8* @f$18 (%$locals_i2s$13* %locals_$_2, i64 %res_$_143)
 store i8* %ret_$_144, i8** %temp_$_131
 br label %mrg_$_134
mrg_$_134:
 %res_$_145 = load i8*, i8** %temp_$_131
 ret i8* %res_$_145
}

define void @print_particles$14 (%$locals_tigermain* %$sl) {
 %locals_$_3 = alloca %$locals_print_particles$14
 %arg_$_146 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_146
 %lnk_$_147 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_148 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_147
 %var_ptr_$_149 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_148, i32 0, i32 12
 %res_$_150 = load i64, i64* %var_ptr_$_149
 %temp_$_151 = sub i64 0, %res_$_150
 %temp_$_152 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 4
 store i64 %temp_$_151, i64* %temp_$_152
 br label %test_$_153
test_$_153:
 %var_ptr_$_156 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 4
 %res_$_157 = load i64, i64* %var_ptr_$_156
 %lnk_$_158 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_159 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_158
 %var_ptr_$_160 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_159, i32 0, i32 11
 %res_$_161 = load i64, i64* %var_ptr_$_160
 %temp_$_162 = icmp sle i64 %res_$_157, %res_$_161
 %temp_$_163 = zext i1 %temp_$_162 to i64
 %cnd_$_164 = icmp ne i64 %temp_$_163, 0
 br i1 %cnd_$_164, label %body_$_154, label %mrg_$_155
body_$_154:
 %temp_$_166 = bitcast { i64, [1 x i8] }* @str_$_165 to i8*
 %temp_$_167 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 3
 store i8* %temp_$_166, i8** %temp_$_167
 %temp_$_200 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 2
 store i64 0, i64* %temp_$_200
 br label %test_$_201
test_$_201:
 %var_ptr_$_204 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 2
 %res_$_205 = load i64, i64* %var_ptr_$_204
 %lnk_$_206 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_207 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_206
 %var_ptr_$_208 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_207, i32 0, i32 10
 %res_$_209 = load i64, i64* %var_ptr_$_208
 %temp_$_210 = sub i64 %res_$_209, 1
 %temp_$_211 = icmp sle i64 %res_$_205, %temp_$_210
 %temp_$_212 = zext i1 %temp_$_211 to i64
 %cnd_$_213 = icmp ne i64 %temp_$_212, 0
 br i1 %cnd_$_213, label %body_$_202, label %mrg_$_203
body_$_202:
 %lnk_$_214 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_215 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_214
 %var_ptr_$_216 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_215, i32 0, i32 4
 %var_ptr_$_217 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 2
 %res_$_218 = load i64, i64* %var_ptr_$_217
 %load_$_219 = load i8*, i8** %var_ptr_$_216
 %len_ptr_$_222 = bitcast i8* %load_$_219 to i64*
 %len_ptr_$_223 = getelementptr i64, i64* %len_ptr_$_222, i32 -1
 %len_$_224 = load i64, i64* %len_ptr_$_223
 %cnd_$_225 = icmp sle i64 %len_$_224, %res_$_218
 br i1 %cnd_$_225, label %thn_$_220, label %mrg_$_221
thn_$_220:
 call i64 @arrInxError (i64 %res_$_218)
 br label %mrg_$_221
mrg_$_221:
 %array_ptr_$_226 = bitcast i8* %load_$_219 to i8**
 %entry_ptr_$_227 = getelementptr i8*, i8** %array_ptr_$_226, i64 %res_$_218
 %res_$_228 = load i8*, i8** %entry_ptr_$_227
 %temp_$_229 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 1
 store i8* %res_$_228, i8** %temp_$_229
 %var_ptr_$_234 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 1
 %load_$_235 = load i8*, i8** %var_ptr_$_234
 %record_ptr_$_236 = bitcast i8* %load_$_235 to %particle$8*
 %int_of_ptr_$_239 = ptrtoint i8* %load_$_235 to i64
 %cnd_$_240 = icmp eq i64 %int_of_ptr_$_239, 0
 br i1 %cnd_$_240, label %thn_$_237, label %mrg_$_238
thn_$_237:
 call i64 @recFieldError ()
 br label %mrg_$_238
mrg_$_238:
 %field_ptr_$_241 = getelementptr %particle$8, %particle$8* %record_ptr_$_236, i32 0, i32 1
 %res_$_242 = load i64, i64* %field_ptr_$_241
 %lnk_$_243 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_244 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_243
 %var_ptr_$_245 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_244, i32 0, i32 9
 %res_$_246 = load i64, i64* %var_ptr_$_245
 %cnd_$_247 = icmp eq i64 %res_$_246, 0
 br i1 %cnd_$_247, label %thn_$_232, label %mrg_$_233
thn_$_232:
 call i64 @divisionByZero ()
 br label %mrg_$_233
mrg_$_233:
 %temp_$_248 = sdiv i64 %res_$_242, %res_$_246
 %var_ptr_$_249 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 4
 %res_$_250 = load i64, i64* %var_ptr_$_249
 %temp_$_251 = icmp eq i64 %temp_$_248, %res_$_250
 %temp_$_252 = zext i1 %temp_$_251 to i64
 %cnd_$_253 = icmp ne i64 %temp_$_252, 0
 br i1 %cnd_$_253, label %thn_$_230, label %mrg_$_231
thn_$_230:
 %var_ptr_$_254 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 1
 %load_$_255 = load i8*, i8** %var_ptr_$_254
 %record_ptr_$_256 = bitcast i8* %load_$_255 to %particle$8*
 %int_of_ptr_$_259 = ptrtoint i8* %load_$_255 to i64
 %cnd_$_260 = icmp eq i64 %int_of_ptr_$_259, 0
 br i1 %cnd_$_260, label %thn_$_257, label %mrg_$_258
thn_$_257:
 call i64 @recFieldError ()
 br label %mrg_$_258
mrg_$_258:
 %field_ptr_$_261 = getelementptr %particle$8, %particle$8* %record_ptr_$_256, i32 0, i32 0
 %res_$_262 = load i8*, i8** %field_ptr_$_261
 %var_ptr_$_263 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 3
 store i8* %res_$_262, i8** %var_ptr_$_263
 br label %mrg_$_231
mrg_$_231:
 %var_ptr_$_264 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 2
 %res_$_265 = load i64, i64* %var_ptr_$_264
 %temp_$_266 = add i64 %res_$_265, 1
 %var_ptr_$_267 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 2
 store i64 %temp_$_266, i64* %var_ptr_$_267
 br label %test_$_201
mrg_$_203:
 %lnk_$_178 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_179 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_178
 %lnk_$_181 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_182 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_181
 %temp_$_185 = bitcast { i64, [2 x i8] }* @str_$_184 to i8*
 %lnk_$_186 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_187 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_186
 %lnk_$_189 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_190 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_189
 %lnk_$_191 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_192 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_191
 %var_ptr_$_193 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_192, i32 0, i32 5
 %res_$_194 = load i64, i64* %var_ptr_$_193
 %ret_$_195 = call i8* @i2s$13 (%$locals_tigermain* %load_$_190, i64 %res_$_194)
 %temp_$_197 = bitcast { i64, [3 x i8] }* @str_$_196 to i8*
 %ret_$_198 = call i8* @concat (i8* null, i8* %ret_$_195, i8* %temp_$_197)
 %ret_$_199 = call i8* @concat (i8* null, i8* %temp_$_185, i8* %ret_$_198)
 call void @print (i8* null, i8* %ret_$_199)
 %lnk_$_173 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_174 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_173
 %var_ptr_$_176 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 3
 %res_$_177 = load i8*, i8** %var_ptr_$_176
 call void @print (i8* null, i8* %res_$_177)
 %lnk_$_168 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_169 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_168
 %temp_$_172 = bitcast { i64, [4 x i8] }* @str_$_171 to i8*
 call void @print (i8* null, i8* %temp_$_172)
 %lnk_$_268 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 0
 %load_$_269 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_268
 call void @flush (i8* null)
 %var_ptr_$_271 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 4
 %res_$_272 = load i64, i64* %var_ptr_$_271
 %temp_$_273 = add i64 %res_$_272, 1
 %var_ptr_$_274 = getelementptr %$locals_print_particles$14, %$locals_print_particles$14* %locals_$_3, i32 0, i32 4
 store i64 %temp_$_273, i64* %var_ptr_$_274
 br label %test_$_153
mrg_$_155:
 ret void
}

define void @update$15 (%$locals_tigermain* %$sl, i8* %p$24) {
 %temp_$_306 = alloca i64
 %locals_$_4 = alloca %$locals_update$15
 %arg_$_275 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 store i8* %p$24, i8** %arg_$_275
 %arg_$_276 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_276
 %var_ptr_$_310 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 %load_$_311 = load i8*, i8** %var_ptr_$_310
 %record_ptr_$_312 = bitcast i8* %load_$_311 to %particle$8*
 %int_of_ptr_$_315 = ptrtoint i8* %load_$_311 to i64
 %cnd_$_316 = icmp eq i64 %int_of_ptr_$_315, 0
 br i1 %cnd_$_316, label %thn_$_313, label %mrg_$_314
thn_$_313:
 call i64 @recFieldError ()
 br label %mrg_$_314
mrg_$_314:
 %field_ptr_$_317 = getelementptr %particle$8, %particle$8* %record_ptr_$_312, i32 0, i32 2
 %res_$_318 = load i64, i64* %field_ptr_$_317
 %lnk_$_319 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 0
 %load_$_320 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_319
 %var_ptr_$_321 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_320, i32 0, i32 8
 %res_$_322 = load i64, i64* %var_ptr_$_321
 %temp_$_323 = icmp sge i64 %res_$_318, %res_$_322
 %temp_$_324 = zext i1 %temp_$_323 to i64
 %cnd_$_325 = icmp ne i64 %temp_$_324, 0
 br i1 %cnd_$_325, label %thn_$_307, label %els_$_308
thn_$_307:
 store i64 1, i64* %temp_$_306
 br label %mrg_$_309
els_$_308:
 %var_ptr_$_326 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 %load_$_327 = load i8*, i8** %var_ptr_$_326
 %record_ptr_$_328 = bitcast i8* %load_$_327 to %particle$8*
 %int_of_ptr_$_331 = ptrtoint i8* %load_$_327 to i64
 %cnd_$_332 = icmp eq i64 %int_of_ptr_$_331, 0
 br i1 %cnd_$_332, label %thn_$_329, label %mrg_$_330
thn_$_329:
 call i64 @recFieldError ()
 br label %mrg_$_330
mrg_$_330:
 %field_ptr_$_333 = getelementptr %particle$8, %particle$8* %record_ptr_$_328, i32 0, i32 2
 %res_$_334 = load i64, i64* %field_ptr_$_333
 %temp_$_335 = sub i64 0, %res_$_334
 %lnk_$_336 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 0
 %load_$_337 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_336
 %var_ptr_$_338 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_337, i32 0, i32 8
 %res_$_339 = load i64, i64* %var_ptr_$_338
 %temp_$_340 = icmp sge i64 %temp_$_335, %res_$_339
 %temp_$_341 = zext i1 %temp_$_340 to i64
 store i64 %temp_$_341, i64* %temp_$_306
 br label %mrg_$_309
mrg_$_309:
 %res_$_342 = load i64, i64* %temp_$_306
 %cnd_$_343 = icmp ne i64 %res_$_342, 0
 br i1 %cnd_$_343, label %thn_$_304, label %mrg_$_305
thn_$_304:
 %temp_$_344 = sub i64 0, 1
 %var_ptr_$_345 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 %load_$_346 = load i8*, i8** %var_ptr_$_345
 %record_ptr_$_347 = bitcast i8* %load_$_346 to %particle$8*
 %int_of_ptr_$_350 = ptrtoint i8* %load_$_346 to i64
 %cnd_$_351 = icmp eq i64 %int_of_ptr_$_350, 0
 br i1 %cnd_$_351, label %thn_$_348, label %mrg_$_349
thn_$_348:
 call i64 @recFieldError ()
 br label %mrg_$_349
mrg_$_349:
 %field_ptr_$_352 = getelementptr %particle$8, %particle$8* %record_ptr_$_347, i32 0, i32 3
 %res_$_353 = load i64, i64* %field_ptr_$_352
 %temp_$_354 = mul i64 %temp_$_344, %res_$_353
 %var_ptr_$_355 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 %load_$_356 = load i8*, i8** %var_ptr_$_355
 %record_ptr_$_357 = bitcast i8* %load_$_356 to %particle$8*
 %int_of_ptr_$_360 = ptrtoint i8* %load_$_356 to i64
 %cnd_$_361 = icmp eq i64 %int_of_ptr_$_360, 0
 br i1 %cnd_$_361, label %thn_$_358, label %mrg_$_359
thn_$_358:
 call i64 @recFieldError ()
 br label %mrg_$_359
mrg_$_359:
 %field_ptr_$_362 = getelementptr %particle$8, %particle$8* %record_ptr_$_357, i32 0, i32 3
 store i64 %temp_$_354, i64* %field_ptr_$_362
 br label %mrg_$_305
mrg_$_305:
 %var_ptr_$_277 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 %load_$_278 = load i8*, i8** %var_ptr_$_277
 %record_ptr_$_279 = bitcast i8* %load_$_278 to %particle$8*
 %int_of_ptr_$_282 = ptrtoint i8* %load_$_278 to i64
 %cnd_$_283 = icmp eq i64 %int_of_ptr_$_282, 0
 br i1 %cnd_$_283, label %thn_$_280, label %mrg_$_281
thn_$_280:
 call i64 @recFieldError ()
 br label %mrg_$_281
mrg_$_281:
 %field_ptr_$_284 = getelementptr %particle$8, %particle$8* %record_ptr_$_279, i32 0, i32 2
 %res_$_285 = load i64, i64* %field_ptr_$_284
 %var_ptr_$_286 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 %load_$_287 = load i8*, i8** %var_ptr_$_286
 %record_ptr_$_288 = bitcast i8* %load_$_287 to %particle$8*
 %int_of_ptr_$_291 = ptrtoint i8* %load_$_287 to i64
 %cnd_$_292 = icmp eq i64 %int_of_ptr_$_291, 0
 br i1 %cnd_$_292, label %thn_$_289, label %mrg_$_290
thn_$_289:
 call i64 @recFieldError ()
 br label %mrg_$_290
mrg_$_290:
 %field_ptr_$_293 = getelementptr %particle$8, %particle$8* %record_ptr_$_288, i32 0, i32 3
 %res_$_294 = load i64, i64* %field_ptr_$_293
 %temp_$_295 = add i64 %res_$_285, %res_$_294
 %var_ptr_$_296 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 %load_$_297 = load i8*, i8** %var_ptr_$_296
 %record_ptr_$_298 = bitcast i8* %load_$_297 to %particle$8*
 %int_of_ptr_$_301 = ptrtoint i8* %load_$_297 to i64
 %cnd_$_302 = icmp eq i64 %int_of_ptr_$_301, 0
 br i1 %cnd_$_302, label %thn_$_299, label %mrg_$_300
thn_$_299:
 call i64 @recFieldError ()
 br label %mrg_$_300
mrg_$_300:
 %field_ptr_$_303 = getelementptr %particle$8, %particle$8* %record_ptr_$_298, i32 0, i32 2
 store i64 %temp_$_295, i64* %field_ptr_$_303
 %var_ptr_$_363 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 %load_$_364 = load i8*, i8** %var_ptr_$_363
 %record_ptr_$_365 = bitcast i8* %load_$_364 to %particle$8*
 %int_of_ptr_$_368 = ptrtoint i8* %load_$_364 to i64
 %cnd_$_369 = icmp eq i64 %int_of_ptr_$_368, 0
 br i1 %cnd_$_369, label %thn_$_366, label %mrg_$_367
thn_$_366:
 call i64 @recFieldError ()
 br label %mrg_$_367
mrg_$_367:
 %field_ptr_$_370 = getelementptr %particle$8, %particle$8* %record_ptr_$_365, i32 0, i32 1
 %res_$_371 = load i64, i64* %field_ptr_$_370
 %var_ptr_$_372 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 %load_$_373 = load i8*, i8** %var_ptr_$_372
 %record_ptr_$_374 = bitcast i8* %load_$_373 to %particle$8*
 %int_of_ptr_$_377 = ptrtoint i8* %load_$_373 to i64
 %cnd_$_378 = icmp eq i64 %int_of_ptr_$_377, 0
 br i1 %cnd_$_378, label %thn_$_375, label %mrg_$_376
thn_$_375:
 call i64 @recFieldError ()
 br label %mrg_$_376
mrg_$_376:
 %field_ptr_$_379 = getelementptr %particle$8, %particle$8* %record_ptr_$_374, i32 0, i32 2
 %res_$_380 = load i64, i64* %field_ptr_$_379
 %temp_$_381 = add i64 %res_$_371, %res_$_380
 %var_ptr_$_382 = getelementptr %$locals_update$15, %$locals_update$15* %locals_$_4, i32 0, i32 1
 %load_$_383 = load i8*, i8** %var_ptr_$_382
 %record_ptr_$_384 = bitcast i8* %load_$_383 to %particle$8*
 %int_of_ptr_$_387 = ptrtoint i8* %load_$_383 to i64
 %cnd_$_388 = icmp eq i64 %int_of_ptr_$_387, 0
 br i1 %cnd_$_388, label %thn_$_385, label %mrg_$_386
thn_$_385:
 call i64 @recFieldError ()
 br label %mrg_$_386
mrg_$_386:
 %field_ptr_$_389 = getelementptr %particle$8, %particle$8* %record_ptr_$_384, i32 0, i32 1
 store i64 %temp_$_381, i64* %field_ptr_$_389
 ret void
}

define void @loop$16 (%$locals_tigermain* %$sl) {
 %locals_$_5 = alloca %$locals_loop$16
 %arg_$_390 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_390
 br label %test_$_391
test_$_391:
 %lnk_$_394 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_395 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_394
 %ret_$_397 = call i8* @getChar (i8* null)
 %temp_$_399 = bitcast { i64, [1 x i8] }* @str_$_398 to i8*
 %temp_$_400 = call i64 @stringNotEq (i8* %ret_$_397, i8* %temp_$_399)
 %cnd_$_401 = icmp ne i64 %temp_$_400, 0
 br i1 %cnd_$_401, label %body_$_392, label %mrg_$_393
body_$_392:
 %temp_$_412 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 1
 store i64 0, i64* %temp_$_412
 br label %test_$_413
test_$_413:
 %var_ptr_$_416 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 1
 %res_$_417 = load i64, i64* %var_ptr_$_416
 %lnk_$_418 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_419 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_418
 %var_ptr_$_420 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_419, i32 0, i32 10
 %res_$_421 = load i64, i64* %var_ptr_$_420
 %temp_$_422 = sub i64 %res_$_421, 1
 %temp_$_423 = icmp sle i64 %res_$_417, %temp_$_422
 %temp_$_424 = zext i1 %temp_$_423 to i64
 %cnd_$_425 = icmp ne i64 %temp_$_424, 0
 br i1 %cnd_$_425, label %body_$_414, label %mrg_$_415
body_$_414:
 %lnk_$_426 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_427 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_426
 %lnk_$_428 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_429 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_428
 %var_ptr_$_430 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_429, i32 0, i32 4
 %var_ptr_$_431 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 1
 %res_$_432 = load i64, i64* %var_ptr_$_431
 %load_$_433 = load i8*, i8** %var_ptr_$_430
 %len_ptr_$_436 = bitcast i8* %load_$_433 to i64*
 %len_ptr_$_437 = getelementptr i64, i64* %len_ptr_$_436, i32 -1
 %len_$_438 = load i64, i64* %len_ptr_$_437
 %cnd_$_439 = icmp sle i64 %len_$_438, %res_$_432
 br i1 %cnd_$_439, label %thn_$_434, label %mrg_$_435
thn_$_434:
 call i64 @arrInxError (i64 %res_$_432)
 br label %mrg_$_435
mrg_$_435:
 %array_ptr_$_440 = bitcast i8* %load_$_433 to i8**
 %entry_ptr_$_441 = getelementptr i8*, i8** %array_ptr_$_440, i64 %res_$_432
 %res_$_442 = load i8*, i8** %entry_ptr_$_441
 call void @update$15 (%$locals_tigermain* %load_$_427, i8* %res_$_442)
 %var_ptr_$_443 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 1
 %res_$_444 = load i64, i64* %var_ptr_$_443
 %temp_$_445 = add i64 %res_$_444, 1
 %var_ptr_$_446 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 1
 store i64 %temp_$_445, i64* %var_ptr_$_446
 br label %test_$_413
mrg_$_415:
 %lnk_$_410 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_411 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_410
 call void @print_particles$14 (%$locals_tigermain* %load_$_411)
 %lnk_$_402 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_403 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_402
 %var_ptr_$_404 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_403, i32 0, i32 5
 %res_$_405 = load i64, i64* %var_ptr_$_404
 %temp_$_406 = add i64 %res_$_405, 1
 %lnk_$_407 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_408 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_407
 %var_ptr_$_409 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_408, i32 0, i32 5
 store i64 %temp_$_406, i64* %var_ptr_$_409
 %lnk_$_449 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_450 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_449
 %var_ptr_$_451 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_450, i32 0, i32 5
 %res_$_452 = load i64, i64* %var_ptr_$_451
 %lnk_$_453 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_454 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_453
 %var_ptr_$_455 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_454, i32 0, i32 6
 %res_$_456 = load i64, i64* %var_ptr_$_455
 %temp_$_457 = icmp sgt i64 %res_$_452, %res_$_456
 %temp_$_458 = zext i1 %temp_$_457 to i64
 %cnd_$_459 = icmp ne i64 %temp_$_458, 0
 br i1 %cnd_$_459, label %thn_$_447, label %mrg_$_448
thn_$_447:
 %lnk_$_460 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_461 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_460
 %var_ptr_$_462 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_461, i32 0, i32 7
 %res_$_463 = load i64, i64* %var_ptr_$_462
 %lnk_$_464 = getelementptr %$locals_loop$16, %$locals_loop$16* %locals_$_5, i32 0, i32 0
 %load_$_465 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_464
 %var_ptr_$_466 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_465, i32 0, i32 5
 store i64 %res_$_463, i64* %var_ptr_$_466
 br label %mrg_$_448
mrg_$_448:
 br label %test_$_391
mrg_$_393:
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_6 = alloca %$locals_tigermain
 %arg_$_467 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_467
 %temp_$_468 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 12
 store i64 5, i64* %temp_$_468
 %temp_$_469 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 11
 store i64 50, i64* %temp_$_469
 %temp_$_470 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 10
 store i64 2, i64* %temp_$_470
 %temp_$_471 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 9
 store i64 20, i64* %temp_$_471
 %temp_$_472 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 8
 store i64 30, i64* %temp_$_472
 %temp_$_473 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 7
 store i64 31, i64* %temp_$_473
 %temp_$_474 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 6
 store i64 37, i64* %temp_$_474
 %var_ptr_$_475 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 7
 %res_$_476 = load i64, i64* %var_ptr_$_475
 %temp_$_477 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 5
 store i64 %res_$_476, i64* %temp_$_477
 %init_ptr_$_478 = alloca i8*
 store i8* null, i8** %init_ptr_$_478
 %init_ptr_$_479 = bitcast i8** %init_ptr_$_478 to i8*
 %var_ptr_$_480 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 10
 %res_$_481 = load i64, i64* %var_ptr_$_480
 %init_size_ptr_$_482 = getelementptr i8*, i8** null, i32 1
 %init_size_$_483 = ptrtoint i8** %init_size_ptr_$_482 to i64
 %array_ptr_$_484 = call i8* @initArray (i64 %res_$_481, i64 %init_size_$_483, i8* %init_ptr_$_479)
 %temp_$_485 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 4
 store i8* %array_ptr_$_484, i8** %temp_$_485
 %temp_$_487 = bitcast { i64, [4 x i8] }* @str_$_486 to i8*
 %temp_$_488 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_6, i32 0, i32 3
 store i8* %temp_$_487, i8** %temp_$_488
 %temp_$_492 = bitcast { i64, [32 x i8] }* @str_$_491 to i8*
 call void @print (i8* null, i8* %temp_$_492)
 call void @flush (i8* null)
 call void @setup$12 (%$locals_tigermain* %locals_$_6)
 call void @loop$16 (%$locals_tigermain* %locals_$_6)
 ret void
}
