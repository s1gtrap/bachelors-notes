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

%stringlist$0 = type { i8*, i8* }
%$locals_rev$1 = type { %$locals_tigermain*, i8*, i8* }
%$locals_split$2 = type { %$locals_tigermain*, i64, i64, i64, i8*, i8*, i8* }
%$locals_tigermain = type { i8*, i8*, i8*, i8*, i8*, i8* }

@str_$_208 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"*"}
@str_$_192 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_187 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_182 = global { i64, [36 x i8] } {i64 36, [36 x i8] c"This string will be a list of tokens"}

define i8* @rev$1 (%$locals_tigermain* %$sl, i8* %l$3) {
 %locals_$_0 = alloca %$locals_rev$1
 %arg_$_3 = getelementptr %$locals_rev$1, %$locals_rev$1* %locals_$_0, i32 0, i32 2
 store i8* %l$3, i8** %arg_$_3
 %arg_$_4 = getelementptr %$locals_rev$1, %$locals_rev$1* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_4
 %temp_$_5 = getelementptr %$locals_rev$1, %$locals_rev$1* %locals_$_0, i32 0, i32 1
 store i8* null, i8** %temp_$_5
 br label %test_$_6
test_$_6:
 %var_ptr_$_9 = getelementptr %$locals_rev$1, %$locals_rev$1* %locals_$_0, i32 0, i32 2
 %res_$_10 = load i8*, i8** %var_ptr_$_9
 %left_int_$_11 = ptrtoint i8* %res_$_10 to i64
 %right_int_$_12 = ptrtoint i8* null to i64
 %cnd_$_13 = icmp ne i64 %left_int_$_11, %right_int_$_12
 %zext_$_14 = zext i1 %cnd_$_13 to i64
 %cnd_$_15 = icmp ne i64 %zext_$_14, 0
 br i1 %cnd_$_15, label %body_$_7, label %mrg_$_8
body_$_7:
 %size_ptr_$_16 = getelementptr %stringlist$0, %stringlist$0* null, i32 1
 %size_$_17 = ptrtoint %stringlist$0* %size_ptr_$_16 to i64
 %record_ptr_$_18 = call i8* @allocRecord (i64 %size_$_17)
 %rec_$_19 = bitcast i8* %record_ptr_$_18 to %stringlist$0*
 %var_ptr_$_20 = getelementptr %$locals_rev$1, %$locals_rev$1* %locals_$_0, i32 0, i32 2
 %load_$_21 = load i8*, i8** %var_ptr_$_20
 %record_ptr_$_22 = bitcast i8* %load_$_21 to %stringlist$0*
 %int_of_ptr_$_25 = ptrtoint i8* %load_$_21 to i64
 %cnd_$_26 = icmp eq i64 %int_of_ptr_$_25, 0
 br i1 %cnd_$_26, label %thn_$_23, label %mrg_$_24
thn_$_23:
 call i64 @recFieldError ()
 br label %mrg_$_24
mrg_$_24:
 %field_ptr_$_27 = getelementptr %stringlist$0, %stringlist$0* %record_ptr_$_22, i32 0, i32 0
 %res_$_28 = load i8*, i8** %field_ptr_$_27
 %field_ptr_$_29 = getelementptr %stringlist$0, %stringlist$0* %rec_$_19, i32 0, i32 0
 store i8* %res_$_28, i8** %field_ptr_$_29
 %var_ptr_$_30 = getelementptr %$locals_rev$1, %$locals_rev$1* %locals_$_0, i32 0, i32 1
 %res_$_31 = load i8*, i8** %var_ptr_$_30
 %field_ptr_$_32 = getelementptr %stringlist$0, %stringlist$0* %rec_$_19, i32 0, i32 1
 store i8* %res_$_31, i8** %field_ptr_$_32
 %var_ptr_$_33 = getelementptr %$locals_rev$1, %$locals_rev$1* %locals_$_0, i32 0, i32 1
 store i8* %record_ptr_$_18, i8** %var_ptr_$_33
 %var_ptr_$_34 = getelementptr %$locals_rev$1, %$locals_rev$1* %locals_$_0, i32 0, i32 2
 %load_$_35 = load i8*, i8** %var_ptr_$_34
 %record_ptr_$_36 = bitcast i8* %load_$_35 to %stringlist$0*
 %int_of_ptr_$_39 = ptrtoint i8* %load_$_35 to i64
 %cnd_$_40 = icmp eq i64 %int_of_ptr_$_39, 0
 br i1 %cnd_$_40, label %thn_$_37, label %mrg_$_38
thn_$_37:
 call i64 @recFieldError ()
 br label %mrg_$_38
mrg_$_38:
 %field_ptr_$_41 = getelementptr %stringlist$0, %stringlist$0* %record_ptr_$_36, i32 0, i32 1
 %res_$_42 = load i8*, i8** %field_ptr_$_41
 %var_ptr_$_43 = getelementptr %$locals_rev$1, %$locals_rev$1* %locals_$_0, i32 0, i32 2
 store i8* %res_$_42, i8** %var_ptr_$_43
 br label %test_$_6
mrg_$_8:
 %var_ptr_$_44 = getelementptr %$locals_rev$1, %$locals_rev$1* %locals_$_0, i32 0, i32 1
 %res_$_45 = load i8*, i8** %var_ptr_$_44
 ret i8* %res_$_45
}

define i8* @split$2 (%$locals_tigermain* %$sl, i8* %inp$5, i8* %spl$6) {
 %temp_$_118 = alloca i64
 %locals_$_1 = alloca %$locals_split$2
 %arg_$_46 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 6
 store i8* %spl$6, i8** %arg_$_46
 %arg_$_47 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 5
 store i8* %inp$5, i8** %arg_$_47
 %arg_$_48 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_48
 %temp_$_49 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 4
 store i8* null, i8** %temp_$_49
 %lnk_$_50 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 0
 %load_$_51 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_50
 %var_ptr_$_53 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 6
 %res_$_54 = load i8*, i8** %var_ptr_$_53
 %ret_$_55 = call i64 @size (i8* null, i8* %res_$_54)
 %temp_$_56 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 3
 store i64 %ret_$_55, i64* %temp_$_56
 %temp_$_57 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 2
 store i64 0, i64* %temp_$_57
 %temp_$_97 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 1
 store i64 0, i64* %temp_$_97
 br label %test_$_98
test_$_98:
 %var_ptr_$_101 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 1
 %res_$_102 = load i64, i64* %var_ptr_$_101
 %lnk_$_103 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 0
 %load_$_104 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_103
 %var_ptr_$_106 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 5
 %res_$_107 = load i8*, i8** %var_ptr_$_106
 %ret_$_108 = call i64 @size (i8* null, i8* %res_$_107)
 %var_ptr_$_109 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 3
 %res_$_110 = load i64, i64* %var_ptr_$_109
 %temp_$_111 = sub i64 %ret_$_108, %res_$_110
 %temp_$_112 = sub i64 %temp_$_111, 1
 %temp_$_113 = icmp sle i64 %res_$_102, %temp_$_112
 %temp_$_114 = zext i1 %temp_$_113 to i64
 %cnd_$_115 = icmp ne i64 %temp_$_114, 0
 br i1 %cnd_$_115, label %body_$_99, label %mrg_$_100
body_$_99:
 %var_ptr_$_122 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 2
 %res_$_123 = load i64, i64* %var_ptr_$_122
 %var_ptr_$_124 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 1
 %res_$_125 = load i64, i64* %var_ptr_$_124
 %temp_$_126 = icmp slt i64 %res_$_123, %res_$_125
 %temp_$_127 = zext i1 %temp_$_126 to i64
 %cnd_$_128 = icmp ne i64 %temp_$_127, 0
 br i1 %cnd_$_128, label %thn_$_119, label %els_$_120
thn_$_119:
 %lnk_$_129 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 0
 %load_$_130 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_129
 %var_ptr_$_132 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 5
 %res_$_133 = load i8*, i8** %var_ptr_$_132
 %var_ptr_$_134 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 1
 %res_$_135 = load i64, i64* %var_ptr_$_134
 %var_ptr_$_136 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 3
 %res_$_137 = load i64, i64* %var_ptr_$_136
 %ret_$_138 = call i8* @substring (i8* null, i8* %res_$_133, i64 %res_$_135, i64 %res_$_137)
 %var_ptr_$_139 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 6
 %res_$_140 = load i8*, i8** %var_ptr_$_139
 %temp_$_141 = call i64 @stringEqual (i8* %ret_$_138, i8* %res_$_140)
 store i64 %temp_$_141, i64* %temp_$_118
 br label %mrg_$_121
els_$_120:
 store i64 0, i64* %temp_$_118
 br label %mrg_$_121
mrg_$_121:
 %res_$_142 = load i64, i64* %temp_$_118
 %cnd_$_143 = icmp ne i64 %res_$_142, 0
 br i1 %cnd_$_143, label %thn_$_116, label %mrg_$_117
thn_$_116:
 %size_ptr_$_144 = getelementptr %stringlist$0, %stringlist$0* null, i32 1
 %size_$_145 = ptrtoint %stringlist$0* %size_ptr_$_144 to i64
 %record_ptr_$_146 = call i8* @allocRecord (i64 %size_$_145)
 %rec_$_147 = bitcast i8* %record_ptr_$_146 to %stringlist$0*
 %lnk_$_148 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 0
 %load_$_149 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_148
 %var_ptr_$_151 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 5
 %res_$_152 = load i8*, i8** %var_ptr_$_151
 %var_ptr_$_153 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 2
 %res_$_154 = load i64, i64* %var_ptr_$_153
 %var_ptr_$_155 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 1
 %res_$_156 = load i64, i64* %var_ptr_$_155
 %var_ptr_$_157 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 2
 %res_$_158 = load i64, i64* %var_ptr_$_157
 %temp_$_159 = sub i64 %res_$_156, %res_$_158
 %ret_$_160 = call i8* @substring (i8* null, i8* %res_$_152, i64 %res_$_154, i64 %temp_$_159)
 %field_ptr_$_161 = getelementptr %stringlist$0, %stringlist$0* %rec_$_147, i32 0, i32 0
 store i8* %ret_$_160, i8** %field_ptr_$_161
 %var_ptr_$_162 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 4
 %res_$_163 = load i8*, i8** %var_ptr_$_162
 %field_ptr_$_164 = getelementptr %stringlist$0, %stringlist$0* %rec_$_147, i32 0, i32 1
 store i8* %res_$_163, i8** %field_ptr_$_164
 %var_ptr_$_165 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 4
 store i8* %record_ptr_$_146, i8** %var_ptr_$_165
 %var_ptr_$_166 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 1
 %res_$_167 = load i64, i64* %var_ptr_$_166
 %var_ptr_$_168 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 3
 %res_$_169 = load i64, i64* %var_ptr_$_168
 %temp_$_170 = add i64 %res_$_167, %res_$_169
 %var_ptr_$_171 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 2
 store i64 %temp_$_170, i64* %var_ptr_$_171
 br label %mrg_$_117
mrg_$_117:
 %var_ptr_$_172 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 1
 %res_$_173 = load i64, i64* %var_ptr_$_172
 %temp_$_174 = add i64 %res_$_173, 1
 %var_ptr_$_175 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 1
 store i64 %temp_$_174, i64* %var_ptr_$_175
 br label %test_$_98
mrg_$_100:
 %var_ptr_$_60 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 2
 %res_$_61 = load i64, i64* %var_ptr_$_60
 %lnk_$_62 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 0
 %load_$_63 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_62
 %var_ptr_$_65 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 5
 %res_$_66 = load i8*, i8** %var_ptr_$_65
 %ret_$_67 = call i64 @size (i8* null, i8* %res_$_66)
 %temp_$_68 = icmp ne i64 %res_$_61, %ret_$_67
 %temp_$_69 = zext i1 %temp_$_68 to i64
 %cnd_$_70 = icmp ne i64 %temp_$_69, 0
 br i1 %cnd_$_70, label %thn_$_58, label %mrg_$_59
thn_$_58:
 %size_ptr_$_71 = getelementptr %stringlist$0, %stringlist$0* null, i32 1
 %size_$_72 = ptrtoint %stringlist$0* %size_ptr_$_71 to i64
 %record_ptr_$_73 = call i8* @allocRecord (i64 %size_$_72)
 %rec_$_74 = bitcast i8* %record_ptr_$_73 to %stringlist$0*
 %lnk_$_75 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 0
 %load_$_76 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_75
 %var_ptr_$_78 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 5
 %res_$_79 = load i8*, i8** %var_ptr_$_78
 %var_ptr_$_80 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 2
 %res_$_81 = load i64, i64* %var_ptr_$_80
 %lnk_$_82 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 0
 %load_$_83 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_82
 %var_ptr_$_85 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 5
 %res_$_86 = load i8*, i8** %var_ptr_$_85
 %ret_$_87 = call i64 @size (i8* null, i8* %res_$_86)
 %var_ptr_$_88 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 2
 %res_$_89 = load i64, i64* %var_ptr_$_88
 %temp_$_90 = sub i64 %ret_$_87, %res_$_89
 %ret_$_91 = call i8* @substring (i8* null, i8* %res_$_79, i64 %res_$_81, i64 %temp_$_90)
 %field_ptr_$_92 = getelementptr %stringlist$0, %stringlist$0* %rec_$_74, i32 0, i32 0
 store i8* %ret_$_91, i8** %field_ptr_$_92
 %var_ptr_$_93 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 4
 %res_$_94 = load i8*, i8** %var_ptr_$_93
 %field_ptr_$_95 = getelementptr %stringlist$0, %stringlist$0* %rec_$_74, i32 0, i32 1
 store i8* %res_$_94, i8** %field_ptr_$_95
 %var_ptr_$_96 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 4
 store i8* %record_ptr_$_73, i8** %var_ptr_$_96
 br label %mrg_$_59
mrg_$_59:
 %lnk_$_176 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 0
 %load_$_177 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_176
 %var_ptr_$_178 = getelementptr %$locals_split$2, %$locals_split$2* %locals_$_1, i32 0, i32 4
 %res_$_179 = load i8*, i8** %var_ptr_$_178
 %ret_$_180 = call i8* @rev$1 (%$locals_tigermain* %load_$_177, i8* %res_$_179)
 ret i8* %ret_$_180
}

define void @tigermain (i8* %$sl) {
 %locals_$_2 = alloca %$locals_tigermain
 %arg_$_181 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_181
 %temp_$_183 = bitcast { i64, [36 x i8] }* @str_$_182 to i8*
 %temp_$_184 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 store i8* %temp_$_183, i8** %temp_$_184
 %var_ptr_$_185 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_186 = load i8*, i8** %var_ptr_$_185
 %temp_$_188 = bitcast { i64, [1 x i8] }* @str_$_187 to i8*
 %ret_$_189 = call i8* @split$2 (%$locals_tigermain* %locals_$_2, i8* %res_$_186, i8* %temp_$_188)
 %temp_$_190 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 1
 store i8* %ret_$_189, i8** %temp_$_190
 %var_ptr_$_195 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_196 = load i8*, i8** %var_ptr_$_195
 call void @print (i8* null, i8* %res_$_196)
 %temp_$_193 = bitcast { i64, [1 x i8] }* @str_$_192 to i8*
 call void @print (i8* null, i8* %temp_$_193)
 br label %test_$_197
test_$_197:
 %var_ptr_$_200 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 1
 %res_$_201 = load i8*, i8** %var_ptr_$_200
 %left_int_$_202 = ptrtoint i8* %res_$_201 to i64
 %right_int_$_203 = ptrtoint i8* null to i64
 %cnd_$_204 = icmp ne i64 %left_int_$_202, %right_int_$_203
 %zext_$_205 = zext i1 %cnd_$_204 to i64
 %cnd_$_206 = icmp ne i64 %zext_$_205, 0
 br i1 %cnd_$_206, label %body_$_198, label %mrg_$_199
body_$_198:
 %var_ptr_$_211 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 1
 %load_$_212 = load i8*, i8** %var_ptr_$_211
 %record_ptr_$_213 = bitcast i8* %load_$_212 to %stringlist$0*
 %int_of_ptr_$_216 = ptrtoint i8* %load_$_212 to i64
 %cnd_$_217 = icmp eq i64 %int_of_ptr_$_216, 0
 br i1 %cnd_$_217, label %thn_$_214, label %mrg_$_215
thn_$_214:
 call i64 @recFieldError ()
 br label %mrg_$_215
mrg_$_215:
 %field_ptr_$_218 = getelementptr %stringlist$0, %stringlist$0* %record_ptr_$_213, i32 0, i32 0
 %res_$_219 = load i8*, i8** %field_ptr_$_218
 call void @print (i8* null, i8* %res_$_219)
 %temp_$_209 = bitcast { i64, [1 x i8] }* @str_$_208 to i8*
 call void @print (i8* null, i8* %temp_$_209)
 %var_ptr_$_220 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 1
 %load_$_221 = load i8*, i8** %var_ptr_$_220
 %record_ptr_$_222 = bitcast i8* %load_$_221 to %stringlist$0*
 %int_of_ptr_$_225 = ptrtoint i8* %load_$_221 to i64
 %cnd_$_226 = icmp eq i64 %int_of_ptr_$_225, 0
 br i1 %cnd_$_226, label %thn_$_223, label %mrg_$_224
thn_$_223:
 call i64 @recFieldError ()
 br label %mrg_$_224
mrg_$_224:
 %field_ptr_$_227 = getelementptr %stringlist$0, %stringlist$0* %record_ptr_$_222, i32 0, i32 1
 %res_$_228 = load i8*, i8** %field_ptr_$_227
 %var_ptr_$_229 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 1
 store i8* %res_$_228, i8** %var_ptr_$_229
 br label %test_$_197
mrg_$_199:
 ret void
}
