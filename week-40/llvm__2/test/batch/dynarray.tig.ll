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

%IntArr$0 = type i8*
%IntArrayList$1 = type { i64, i64, i8* }
%$locals_copy$2 = type { %$locals_tigermain*, i64, i8*, i8*, i64 }
%$locals_createIntArrayList$3 = type { %$locals_tigermain*, i64 }
%$locals_get$4 = type { %$locals_tigermain*, i8*, i64 }
%$locals_push$5 = type { %$locals_tigermain*, i8*, i8*, i64 }
%$locals_tigermain = type { i8*, i64, i8*, i64, i8*, i64, i8*, i64, i64, i8*, i8* }

define void @copy$2 (%$locals_tigermain* %$sl, i8* %src$6, i8* %dst$7, i64 %size$8) {
 %locals_$_0 = alloca %$locals_copy$2
 %arg_$_5 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 4
 store i64 %size$8, i64* %arg_$_5
 %arg_$_6 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 3
 store i8* %dst$7, i8** %arg_$_6
 %arg_$_7 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 2
 store i8* %src$6, i8** %arg_$_7
 %arg_$_8 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_8
 %temp_$_9 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 1
 store i64 0, i64* %temp_$_9
 br label %test_$_10
test_$_10:
 %var_ptr_$_13 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 1
 %res_$_14 = load i64, i64* %var_ptr_$_13
 %var_ptr_$_15 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 4
 %res_$_16 = load i64, i64* %var_ptr_$_15
 %temp_$_17 = sub i64 %res_$_16, 1
 %temp_$_18 = icmp sle i64 %res_$_14, %temp_$_17
 %temp_$_19 = zext i1 %temp_$_18 to i64
 %cnd_$_20 = icmp ne i64 %temp_$_19, 0
 br i1 %cnd_$_20, label %body_$_11, label %mrg_$_12
body_$_11:
 %var_ptr_$_21 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 3
 %var_ptr_$_22 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 1
 %res_$_23 = load i64, i64* %var_ptr_$_22
 %load_$_24 = load i8*, i8** %var_ptr_$_21
 %len_ptr_$_27 = bitcast i8* %load_$_24 to i64*
 %len_ptr_$_28 = getelementptr i64, i64* %len_ptr_$_27, i32 -1
 %len_$_29 = load i64, i64* %len_ptr_$_28
 %cnd_$_30 = icmp sle i64 %len_$_29, %res_$_23
 br i1 %cnd_$_30, label %thn_$_25, label %mrg_$_26
thn_$_25:
 call i64 @arrInxError (i64 %res_$_23)
 br label %mrg_$_26
mrg_$_26:
 %array_ptr_$_31 = bitcast i8* %load_$_24 to i64*
 %entry_ptr_$_32 = getelementptr i64, i64* %array_ptr_$_31, i64 %res_$_23
 %res_$_33 = load i64, i64* %entry_ptr_$_32
 %var_ptr_$_34 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 2
 %var_ptr_$_35 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 1
 %res_$_36 = load i64, i64* %var_ptr_$_35
 %load_$_37 = load i8*, i8** %var_ptr_$_34
 %len_ptr_$_40 = bitcast i8* %load_$_37 to i64*
 %len_ptr_$_41 = getelementptr i64, i64* %len_ptr_$_40, i32 -1
 %len_$_42 = load i64, i64* %len_ptr_$_41
 %cnd_$_43 = icmp sle i64 %len_$_42, %res_$_36
 br i1 %cnd_$_43, label %thn_$_38, label %mrg_$_39
thn_$_38:
 call i64 @arrInxError (i64 %res_$_36)
 br label %mrg_$_39
mrg_$_39:
 %array_ptr_$_44 = bitcast i8* %load_$_37 to i64*
 %entry_ptr_$_45 = getelementptr i64, i64* %array_ptr_$_44, i64 %res_$_36
 store i64 %res_$_33, i64* %entry_ptr_$_45
 %var_ptr_$_46 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 1
 %res_$_47 = load i64, i64* %var_ptr_$_46
 %temp_$_48 = add i64 %res_$_47, 1
 %var_ptr_$_49 = getelementptr %$locals_copy$2, %$locals_copy$2* %locals_$_0, i32 0, i32 1
 store i64 %temp_$_48, i64* %var_ptr_$_49
 br label %test_$_10
mrg_$_12:
 ret void
}

define i8* @createIntArrayList$3 (%$locals_tigermain* %$sl, i64 %size$10) {
 %locals_$_1 = alloca %$locals_createIntArrayList$3
 %arg_$_50 = getelementptr %$locals_createIntArrayList$3, %$locals_createIntArrayList$3* %locals_$_1, i32 0, i32 1
 store i64 %size$10, i64* %arg_$_50
 %arg_$_51 = getelementptr %$locals_createIntArrayList$3, %$locals_createIntArrayList$3* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_51
 %size_ptr_$_52 = getelementptr %IntArrayList$1, %IntArrayList$1* null, i32 1
 %size_$_53 = ptrtoint %IntArrayList$1* %size_ptr_$_52 to i64
 %record_ptr_$_54 = call i8* @allocRecord (i64 %size_$_53)
 %rec_$_55 = bitcast i8* %record_ptr_$_54 to %IntArrayList$1*
 %field_ptr_$_56 = getelementptr %IntArrayList$1, %IntArrayList$1* %rec_$_55, i32 0, i32 0
 store i64 0, i64* %field_ptr_$_56
 %var_ptr_$_57 = getelementptr %$locals_createIntArrayList$3, %$locals_createIntArrayList$3* %locals_$_1, i32 0, i32 1
 %res_$_58 = load i64, i64* %var_ptr_$_57
 %field_ptr_$_59 = getelementptr %IntArrayList$1, %IntArrayList$1* %rec_$_55, i32 0, i32 1
 store i64 %res_$_58, i64* %field_ptr_$_59
 %init_ptr_$_60 = alloca i64
 store i64 0, i64* %init_ptr_$_60
 %init_ptr_$_61 = bitcast i64* %init_ptr_$_60 to i8*
 %var_ptr_$_62 = getelementptr %$locals_createIntArrayList$3, %$locals_createIntArrayList$3* %locals_$_1, i32 0, i32 1
 %res_$_63 = load i64, i64* %var_ptr_$_62
 %init_size_ptr_$_64 = getelementptr i64, i64* null, i32 1
 %init_size_$_65 = ptrtoint i64* %init_size_ptr_$_64 to i64
 %array_ptr_$_66 = call i8* @initArray (i64 %res_$_63, i64 %init_size_$_65, i8* %init_ptr_$_61)
 %field_ptr_$_67 = getelementptr %IntArrayList$1, %IntArrayList$1* %rec_$_55, i32 0, i32 2
 store i8* %array_ptr_$_66, i8** %field_ptr_$_67
 ret i8* %record_ptr_$_54
}

define i64 @get$4 (%$locals_tigermain* %$sl, i8* %src$11, i64 %index$12) {
 %locals_$_2 = alloca %$locals_get$4
 %arg_$_68 = getelementptr %$locals_get$4, %$locals_get$4* %locals_$_2, i32 0, i32 2
 store i64 %index$12, i64* %arg_$_68
 %arg_$_69 = getelementptr %$locals_get$4, %$locals_get$4* %locals_$_2, i32 0, i32 1
 store i8* %src$11, i8** %arg_$_69
 %arg_$_70 = getelementptr %$locals_get$4, %$locals_get$4* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_70
 %var_ptr_$_71 = getelementptr %$locals_get$4, %$locals_get$4* %locals_$_2, i32 0, i32 1
 %load_$_72 = load i8*, i8** %var_ptr_$_71
 %record_ptr_$_73 = bitcast i8* %load_$_72 to %IntArrayList$1*
 %int_of_ptr_$_76 = ptrtoint i8* %load_$_72 to i64
 %cnd_$_77 = icmp eq i64 %int_of_ptr_$_76, 0
 br i1 %cnd_$_77, label %thn_$_74, label %mrg_$_75
thn_$_74:
 call i64 @recFieldError ()
 br label %mrg_$_75
mrg_$_75:
 %field_ptr_$_78 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_73, i32 0, i32 2
 %var_ptr_$_79 = getelementptr %$locals_get$4, %$locals_get$4* %locals_$_2, i32 0, i32 2
 %res_$_80 = load i64, i64* %var_ptr_$_79
 %load_$_81 = load i8*, i8** %field_ptr_$_78
 %len_ptr_$_84 = bitcast i8* %load_$_81 to i64*
 %len_ptr_$_85 = getelementptr i64, i64* %len_ptr_$_84, i32 -1
 %len_$_86 = load i64, i64* %len_ptr_$_85
 %cnd_$_87 = icmp sle i64 %len_$_86, %res_$_80
 br i1 %cnd_$_87, label %thn_$_82, label %mrg_$_83
thn_$_82:
 call i64 @arrInxError (i64 %res_$_80)
 br label %mrg_$_83
mrg_$_83:
 %array_ptr_$_88 = bitcast i8* %load_$_81 to i64*
 %entry_ptr_$_89 = getelementptr i64, i64* %array_ptr_$_88, i64 %res_$_80
 %res_$_90 = load i64, i64* %entry_ptr_$_89
 ret i64 %res_$_90
}

define void @push$5 (%$locals_tigermain* %$sl, i8* %src$13, i64 %num$14) {
 %locals_$_3 = alloca %$locals_push$5
 %arg_$_91 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 3
 store i64 %num$14, i64* %arg_$_91
 %arg_$_92 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 store i8* %src$13, i8** %arg_$_92
 %arg_$_93 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_93
 %var_ptr_$_124 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_125 = load i8*, i8** %var_ptr_$_124
 %record_ptr_$_126 = bitcast i8* %load_$_125 to %IntArrayList$1*
 %int_of_ptr_$_129 = ptrtoint i8* %load_$_125 to i64
 %cnd_$_130 = icmp eq i64 %int_of_ptr_$_129, 0
 br i1 %cnd_$_130, label %thn_$_127, label %mrg_$_128
thn_$_127:
 call i64 @recFieldError ()
 br label %mrg_$_128
mrg_$_128:
 %field_ptr_$_131 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_126, i32 0, i32 0
 %res_$_132 = load i64, i64* %field_ptr_$_131
 %temp_$_133 = add i64 %res_$_132, 1
 %var_ptr_$_134 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_135 = load i8*, i8** %var_ptr_$_134
 %record_ptr_$_136 = bitcast i8* %load_$_135 to %IntArrayList$1*
 %int_of_ptr_$_139 = ptrtoint i8* %load_$_135 to i64
 %cnd_$_140 = icmp eq i64 %int_of_ptr_$_139, 0
 br i1 %cnd_$_140, label %thn_$_137, label %mrg_$_138
thn_$_137:
 call i64 @recFieldError ()
 br label %mrg_$_138
mrg_$_138:
 %field_ptr_$_141 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_136, i32 0, i32 1
 %res_$_142 = load i64, i64* %field_ptr_$_141
 %temp_$_143 = icmp sge i64 %temp_$_133, %res_$_142
 %temp_$_144 = zext i1 %temp_$_143 to i64
 %cnd_$_145 = icmp ne i64 %temp_$_144, 0
 br i1 %cnd_$_145, label %thn_$_122, label %mrg_$_123
thn_$_122:
 %init_ptr_$_146 = alloca i64
 store i64 0, i64* %init_ptr_$_146
 %init_ptr_$_147 = bitcast i64* %init_ptr_$_146 to i8*
 %var_ptr_$_148 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_149 = load i8*, i8** %var_ptr_$_148
 %record_ptr_$_150 = bitcast i8* %load_$_149 to %IntArrayList$1*
 %int_of_ptr_$_153 = ptrtoint i8* %load_$_149 to i64
 %cnd_$_154 = icmp eq i64 %int_of_ptr_$_153, 0
 br i1 %cnd_$_154, label %thn_$_151, label %mrg_$_152
thn_$_151:
 call i64 @recFieldError ()
 br label %mrg_$_152
mrg_$_152:
 %field_ptr_$_155 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_150, i32 0, i32 1
 %res_$_156 = load i64, i64* %field_ptr_$_155
 %temp_$_157 = mul i64 %res_$_156, 2
 %init_size_ptr_$_158 = getelementptr i64, i64* null, i32 1
 %init_size_$_159 = ptrtoint i64* %init_size_ptr_$_158 to i64
 %array_ptr_$_160 = call i8* @initArray (i64 %temp_$_157, i64 %init_size_$_159, i8* %init_ptr_$_147)
 %temp_$_161 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 1
 store i8* %array_ptr_$_160, i8** %temp_$_161
 %lnk_$_172 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 0
 %load_$_173 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_172
 %var_ptr_$_174 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 1
 %res_$_175 = load i8*, i8** %var_ptr_$_174
 %var_ptr_$_176 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_177 = load i8*, i8** %var_ptr_$_176
 %record_ptr_$_178 = bitcast i8* %load_$_177 to %IntArrayList$1*
 %int_of_ptr_$_181 = ptrtoint i8* %load_$_177 to i64
 %cnd_$_182 = icmp eq i64 %int_of_ptr_$_181, 0
 br i1 %cnd_$_182, label %thn_$_179, label %mrg_$_180
thn_$_179:
 call i64 @recFieldError ()
 br label %mrg_$_180
mrg_$_180:
 %field_ptr_$_183 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_178, i32 0, i32 2
 %res_$_184 = load i8*, i8** %field_ptr_$_183
 %var_ptr_$_185 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_186 = load i8*, i8** %var_ptr_$_185
 %record_ptr_$_187 = bitcast i8* %load_$_186 to %IntArrayList$1*
 %int_of_ptr_$_190 = ptrtoint i8* %load_$_186 to i64
 %cnd_$_191 = icmp eq i64 %int_of_ptr_$_190, 0
 br i1 %cnd_$_191, label %thn_$_188, label %mrg_$_189
thn_$_188:
 call i64 @recFieldError ()
 br label %mrg_$_189
mrg_$_189:
 %field_ptr_$_192 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_187, i32 0, i32 1
 %res_$_193 = load i64, i64* %field_ptr_$_192
 call void @copy$2 (%$locals_tigermain* %load_$_173, i8* %res_$_175, i8* %res_$_184, i64 %res_$_193)
 %var_ptr_$_162 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 1
 %res_$_163 = load i8*, i8** %var_ptr_$_162
 %var_ptr_$_164 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_165 = load i8*, i8** %var_ptr_$_164
 %record_ptr_$_166 = bitcast i8* %load_$_165 to %IntArrayList$1*
 %int_of_ptr_$_169 = ptrtoint i8* %load_$_165 to i64
 %cnd_$_170 = icmp eq i64 %int_of_ptr_$_169, 0
 br i1 %cnd_$_170, label %thn_$_167, label %mrg_$_168
thn_$_167:
 call i64 @recFieldError ()
 br label %mrg_$_168
mrg_$_168:
 %field_ptr_$_171 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_166, i32 0, i32 2
 store i8* %res_$_163, i8** %field_ptr_$_171
 %var_ptr_$_194 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_195 = load i8*, i8** %var_ptr_$_194
 %record_ptr_$_196 = bitcast i8* %load_$_195 to %IntArrayList$1*
 %int_of_ptr_$_199 = ptrtoint i8* %load_$_195 to i64
 %cnd_$_200 = icmp eq i64 %int_of_ptr_$_199, 0
 br i1 %cnd_$_200, label %thn_$_197, label %mrg_$_198
thn_$_197:
 call i64 @recFieldError ()
 br label %mrg_$_198
mrg_$_198:
 %field_ptr_$_201 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_196, i32 0, i32 1
 %res_$_202 = load i64, i64* %field_ptr_$_201
 %temp_$_203 = mul i64 %res_$_202, 2
 %var_ptr_$_204 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_205 = load i8*, i8** %var_ptr_$_204
 %record_ptr_$_206 = bitcast i8* %load_$_205 to %IntArrayList$1*
 %int_of_ptr_$_209 = ptrtoint i8* %load_$_205 to i64
 %cnd_$_210 = icmp eq i64 %int_of_ptr_$_209, 0
 br i1 %cnd_$_210, label %thn_$_207, label %mrg_$_208
thn_$_207:
 call i64 @recFieldError ()
 br label %mrg_$_208
mrg_$_208:
 %field_ptr_$_211 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_206, i32 0, i32 1
 store i64 %temp_$_203, i64* %field_ptr_$_211
 br label %mrg_$_123
mrg_$_123:
 %var_ptr_$_94 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 3
 %res_$_95 = load i64, i64* %var_ptr_$_94
 %var_ptr_$_96 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_97 = load i8*, i8** %var_ptr_$_96
 %record_ptr_$_98 = bitcast i8* %load_$_97 to %IntArrayList$1*
 %int_of_ptr_$_101 = ptrtoint i8* %load_$_97 to i64
 %cnd_$_102 = icmp eq i64 %int_of_ptr_$_101, 0
 br i1 %cnd_$_102, label %thn_$_99, label %mrg_$_100
thn_$_99:
 call i64 @recFieldError ()
 br label %mrg_$_100
mrg_$_100:
 %field_ptr_$_103 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_98, i32 0, i32 2
 %var_ptr_$_104 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_105 = load i8*, i8** %var_ptr_$_104
 %record_ptr_$_106 = bitcast i8* %load_$_105 to %IntArrayList$1*
 %int_of_ptr_$_109 = ptrtoint i8* %load_$_105 to i64
 %cnd_$_110 = icmp eq i64 %int_of_ptr_$_109, 0
 br i1 %cnd_$_110, label %thn_$_107, label %mrg_$_108
thn_$_107:
 call i64 @recFieldError ()
 br label %mrg_$_108
mrg_$_108:
 %field_ptr_$_111 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_106, i32 0, i32 0
 %res_$_112 = load i64, i64* %field_ptr_$_111
 %load_$_113 = load i8*, i8** %field_ptr_$_103
 %len_ptr_$_116 = bitcast i8* %load_$_113 to i64*
 %len_ptr_$_117 = getelementptr i64, i64* %len_ptr_$_116, i32 -1
 %len_$_118 = load i64, i64* %len_ptr_$_117
 %cnd_$_119 = icmp sle i64 %len_$_118, %res_$_112
 br i1 %cnd_$_119, label %thn_$_114, label %mrg_$_115
thn_$_114:
 call i64 @arrInxError (i64 %res_$_112)
 br label %mrg_$_115
mrg_$_115:
 %array_ptr_$_120 = bitcast i8* %load_$_113 to i64*
 %entry_ptr_$_121 = getelementptr i64, i64* %array_ptr_$_120, i64 %res_$_112
 store i64 %res_$_95, i64* %entry_ptr_$_121
 %var_ptr_$_212 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_213 = load i8*, i8** %var_ptr_$_212
 %record_ptr_$_214 = bitcast i8* %load_$_213 to %IntArrayList$1*
 %int_of_ptr_$_217 = ptrtoint i8* %load_$_213 to i64
 %cnd_$_218 = icmp eq i64 %int_of_ptr_$_217, 0
 br i1 %cnd_$_218, label %thn_$_215, label %mrg_$_216
thn_$_215:
 call i64 @recFieldError ()
 br label %mrg_$_216
mrg_$_216:
 %field_ptr_$_219 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_214, i32 0, i32 0
 %res_$_220 = load i64, i64* %field_ptr_$_219
 %temp_$_221 = add i64 %res_$_220, 1
 %var_ptr_$_222 = getelementptr %$locals_push$5, %$locals_push$5* %locals_$_3, i32 0, i32 2
 %load_$_223 = load i8*, i8** %var_ptr_$_222
 %record_ptr_$_224 = bitcast i8* %load_$_223 to %IntArrayList$1*
 %int_of_ptr_$_227 = ptrtoint i8* %load_$_223 to i64
 %cnd_$_228 = icmp eq i64 %int_of_ptr_$_227, 0
 br i1 %cnd_$_228, label %thn_$_225, label %mrg_$_226
thn_$_225:
 call i64 @recFieldError ()
 br label %mrg_$_226
mrg_$_226:
 %field_ptr_$_229 = getelementptr %IntArrayList$1, %IntArrayList$1* %record_ptr_$_224, i32 0, i32 0
 store i64 %temp_$_221, i64* %field_ptr_$_229
 ret void
}

define i64 @tigermain (i8* %$sl) {
 %locals_$_4 = alloca %$locals_tigermain
 %arg_$_230 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_230
 %ret_$_231 = call i8* @createIntArrayList$3 (%$locals_tigermain* %locals_$_4, i64 2)
 %temp_$_232 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 2
 store i8* %ret_$_231, i8** %temp_$_232
 %temp_$_233 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 store i64 0, i64* %temp_$_233
 br label %test_$_234
test_$_234:
 %var_ptr_$_237 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 %res_$_238 = load i64, i64* %var_ptr_$_237
 %temp_$_239 = icmp sle i64 %res_$_238, 40
 %temp_$_240 = zext i1 %temp_$_239 to i64
 %cnd_$_241 = icmp ne i64 %temp_$_240, 0
 br i1 %cnd_$_241, label %body_$_235, label %mrg_$_236
body_$_235:
 %var_ptr_$_242 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 2
 %res_$_243 = load i8*, i8** %var_ptr_$_242
 %var_ptr_$_244 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 %res_$_245 = load i64, i64* %var_ptr_$_244
 call void @push$5 (%$locals_tigermain* %locals_$_4, i8* %res_$_243, i64 %res_$_245)
 %var_ptr_$_246 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 %res_$_247 = load i64, i64* %var_ptr_$_246
 %temp_$_248 = add i64 %res_$_247, 1
 %var_ptr_$_249 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 1
 store i64 %temp_$_248, i64* %var_ptr_$_249
 br label %test_$_234
mrg_$_236:
 %var_ptr_$_250 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_4, i32 0, i32 2
 %res_$_251 = load i8*, i8** %var_ptr_$_250
 %ret_$_252 = call i64 @get$4 (%$locals_tigermain* %locals_$_4, i8* %res_$_251, i64 39)
 ret i64 %ret_$_252
}
