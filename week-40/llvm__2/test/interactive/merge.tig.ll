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

%any$0 = type { i64 }
%list$8 = type { i64, i8* }
%$locals_isdigit$5 = type { %$locals_readint$2*, i8* }
%$locals_skipto$6 = type { %$locals_readint$2* }
%$locals_readint$2 = type { %$locals_tigermain*, i8*, i64, i8* }
%$locals_readlist$9 = type { %$locals_tigermain*, i64, i8* }
%$locals_merge$10 = type { %$locals_tigermain*, i8*, i8* }
%$locals_f$18 = type { %$locals_printint$11*, i64 }
%$locals_printint$11 = type { %$locals_tigermain*, i64, i64 }
%$locals_printlist$12 = type { %$locals_tigermain*, i8* }
%$locals_tigermain = type { i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8* }

@str_$_409 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_404 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_387 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_369 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"-"}
@str_$_351 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_128 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_85 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_75 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_55 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"9"}
@str_$_32 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}

define i64 @isdigit$5 (%$locals_readint$2* %$sl, i8* %s$7) {
 %temp_$_11 = alloca i64
 %locals_$_0 = alloca %$locals_isdigit$5
 %arg_$_9 = getelementptr %$locals_isdigit$5, %$locals_isdigit$5* %locals_$_0, i32 0, i32 1
 store i8* %s$7, i8** %arg_$_9
 %arg_$_10 = getelementptr %$locals_isdigit$5, %$locals_isdigit$5* %locals_$_0, i32 0, i32 0
 store %$locals_readint$2* %$sl, %$locals_readint$2** %arg_$_10
 %lnk_$_15 = getelementptr %$locals_isdigit$5, %$locals_isdigit$5* %locals_$_0, i32 0, i32 0
 %load_$_16 = load %$locals_readint$2*, %$locals_readint$2** %lnk_$_15
 %lnk_$_17 = getelementptr %$locals_readint$2, %$locals_readint$2* %load_$_16, i32 0, i32 0
 %load_$_18 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_17
 %lnk_$_20 = getelementptr %$locals_isdigit$5, %$locals_isdigit$5* %locals_$_0, i32 0, i32 0
 %load_$_21 = load %$locals_readint$2*, %$locals_readint$2** %lnk_$_20
 %lnk_$_22 = getelementptr %$locals_readint$2, %$locals_readint$2* %load_$_21, i32 0, i32 0
 %load_$_23 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_22
 %var_ptr_$_24 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_23, i32 0, i32 8
 %res_$_25 = load i8*, i8** %var_ptr_$_24
 %ret_$_26 = call i64 @ord (i8* null, i8* %res_$_25)
 %lnk_$_27 = getelementptr %$locals_isdigit$5, %$locals_isdigit$5* %locals_$_0, i32 0, i32 0
 %load_$_28 = load %$locals_readint$2*, %$locals_readint$2** %lnk_$_27
 %lnk_$_29 = getelementptr %$locals_readint$2, %$locals_readint$2* %load_$_28, i32 0, i32 0
 %load_$_30 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_29
 %temp_$_33 = bitcast { i64, [1 x i8] }* @str_$_32 to i8*
 %ret_$_34 = call i64 @ord (i8* null, i8* %temp_$_33)
 %temp_$_35 = icmp sge i64 %ret_$_26, %ret_$_34
 %temp_$_36 = zext i1 %temp_$_35 to i64
 %cnd_$_37 = icmp ne i64 %temp_$_36, 0
 br i1 %cnd_$_37, label %thn_$_12, label %els_$_13
thn_$_12:
 %lnk_$_38 = getelementptr %$locals_isdigit$5, %$locals_isdigit$5* %locals_$_0, i32 0, i32 0
 %load_$_39 = load %$locals_readint$2*, %$locals_readint$2** %lnk_$_38
 %lnk_$_40 = getelementptr %$locals_readint$2, %$locals_readint$2* %load_$_39, i32 0, i32 0
 %load_$_41 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_40
 %lnk_$_43 = getelementptr %$locals_isdigit$5, %$locals_isdigit$5* %locals_$_0, i32 0, i32 0
 %load_$_44 = load %$locals_readint$2*, %$locals_readint$2** %lnk_$_43
 %lnk_$_45 = getelementptr %$locals_readint$2, %$locals_readint$2* %load_$_44, i32 0, i32 0
 %load_$_46 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_45
 %var_ptr_$_47 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_46, i32 0, i32 8
 %res_$_48 = load i8*, i8** %var_ptr_$_47
 %ret_$_49 = call i64 @ord (i8* null, i8* %res_$_48)
 %lnk_$_50 = getelementptr %$locals_isdigit$5, %$locals_isdigit$5* %locals_$_0, i32 0, i32 0
 %load_$_51 = load %$locals_readint$2*, %$locals_readint$2** %lnk_$_50
 %lnk_$_52 = getelementptr %$locals_readint$2, %$locals_readint$2* %load_$_51, i32 0, i32 0
 %load_$_53 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_52
 %temp_$_56 = bitcast { i64, [1 x i8] }* @str_$_55 to i8*
 %ret_$_57 = call i64 @ord (i8* null, i8* %temp_$_56)
 %temp_$_58 = icmp sle i64 %ret_$_49, %ret_$_57
 %temp_$_59 = zext i1 %temp_$_58 to i64
 store i64 %temp_$_59, i64* %temp_$_11
 br label %mrg_$_14
els_$_13:
 store i64 0, i64* %temp_$_11
 br label %mrg_$_14
mrg_$_14:
 %res_$_60 = load i64, i64* %temp_$_11
 ret i64 %res_$_60
}

define void @skipto$6 (%$locals_readint$2* %$sl) {
 %temp_$_65 = alloca i64
 %locals_$_1 = alloca %$locals_skipto$6
 %arg_$_61 = getelementptr %$locals_skipto$6, %$locals_skipto$6* %locals_$_1, i32 0, i32 0
 store %$locals_readint$2* %$sl, %$locals_readint$2** %arg_$_61
 br label %test_$_62
test_$_62:
 %lnk_$_69 = getelementptr %$locals_skipto$6, %$locals_skipto$6* %locals_$_1, i32 0, i32 0
 %load_$_70 = load %$locals_readint$2*, %$locals_readint$2** %lnk_$_69
 %lnk_$_71 = getelementptr %$locals_readint$2, %$locals_readint$2* %load_$_70, i32 0, i32 0
 %load_$_72 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_71
 %var_ptr_$_73 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_72, i32 0, i32 8
 %res_$_74 = load i8*, i8** %var_ptr_$_73
 %temp_$_76 = bitcast { i64, [1 x i8] }* @str_$_75 to i8*
 %temp_$_77 = call i64 @stringEqual (i8* %res_$_74, i8* %temp_$_76)
 %cnd_$_78 = icmp ne i64 %temp_$_77, 0
 br i1 %cnd_$_78, label %thn_$_66, label %els_$_67
thn_$_66:
 store i64 1, i64* %temp_$_65
 br label %mrg_$_68
els_$_67:
 %lnk_$_79 = getelementptr %$locals_skipto$6, %$locals_skipto$6* %locals_$_1, i32 0, i32 0
 %load_$_80 = load %$locals_readint$2*, %$locals_readint$2** %lnk_$_79
 %lnk_$_81 = getelementptr %$locals_readint$2, %$locals_readint$2* %load_$_80, i32 0, i32 0
 %load_$_82 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_81
 %var_ptr_$_83 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_82, i32 0, i32 8
 %res_$_84 = load i8*, i8** %var_ptr_$_83
 %temp_$_86 = bitcast { i64, [1 x i8] }* @str_$_85 to i8*
 %temp_$_87 = call i64 @stringEqual (i8* %res_$_84, i8* %temp_$_86)
 store i64 %temp_$_87, i64* %temp_$_65
 br label %mrg_$_68
mrg_$_68:
 %res_$_88 = load i64, i64* %temp_$_65
 %cnd_$_89 = icmp ne i64 %res_$_88, 0
 br i1 %cnd_$_89, label %body_$_63, label %mrg_$_64
body_$_63:
 %lnk_$_90 = getelementptr %$locals_skipto$6, %$locals_skipto$6* %locals_$_1, i32 0, i32 0
 %load_$_91 = load %$locals_readint$2*, %$locals_readint$2** %lnk_$_90
 %lnk_$_92 = getelementptr %$locals_readint$2, %$locals_readint$2* %load_$_91, i32 0, i32 0
 %load_$_93 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_92
 %ret_$_95 = call i8* @getChar (i8* null)
 %lnk_$_96 = getelementptr %$locals_skipto$6, %$locals_skipto$6* %locals_$_1, i32 0, i32 0
 %load_$_97 = load %$locals_readint$2*, %$locals_readint$2** %lnk_$_96
 %lnk_$_98 = getelementptr %$locals_readint$2, %$locals_readint$2* %load_$_97, i32 0, i32 0
 %load_$_99 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_98
 %var_ptr_$_100 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_99, i32 0, i32 8
 store i8* %ret_$_95, i8** %var_ptr_$_100
 br label %test_$_62
mrg_$_64:
 ret void
}

define i64 @readint$2 (%$locals_tigermain* %$sl, i8* %any$3) {
 %locals_$_2 = alloca %$locals_readint$2
 %arg_$_101 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 3
 store i8* %any$3, i8** %arg_$_101
 %arg_$_102 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_102
 %temp_$_103 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 2
 store i64 0, i64* %temp_$_103
 call void @skipto$6 (%$locals_readint$2* %locals_$_2)
 %lnk_$_140 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 0
 %load_$_141 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_140
 %var_ptr_$_142 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_141, i32 0, i32 8
 %res_$_143 = load i8*, i8** %var_ptr_$_142
 %ret_$_144 = call i64 @isdigit$5 (%$locals_readint$2* %locals_$_2, i8* %res_$_143)
 %var_ptr_$_145 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 3
 %load_$_146 = load i8*, i8** %var_ptr_$_145
 %record_ptr_$_147 = bitcast i8* %load_$_146 to %any$0*
 %int_of_ptr_$_150 = ptrtoint i8* %load_$_146 to i64
 %cnd_$_151 = icmp eq i64 %int_of_ptr_$_150, 0
 br i1 %cnd_$_151, label %thn_$_148, label %mrg_$_149
thn_$_148:
 call i64 @recFieldError ()
 br label %mrg_$_149
mrg_$_149:
 %field_ptr_$_152 = getelementptr %any$0, %any$0* %record_ptr_$_147, i32 0, i32 0
 store i64 %ret_$_144, i64* %field_ptr_$_152
 br label %test_$_104
test_$_104:
 %lnk_$_107 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 0
 %load_$_108 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_107
 %var_ptr_$_109 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_108, i32 0, i32 8
 %res_$_110 = load i8*, i8** %var_ptr_$_109
 %ret_$_111 = call i64 @isdigit$5 (%$locals_readint$2* %locals_$_2, i8* %res_$_110)
 %cnd_$_112 = icmp ne i64 %ret_$_111, 0
 br i1 %cnd_$_112, label %body_$_105, label %mrg_$_106
body_$_105:
 %var_ptr_$_113 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 2
 %res_$_114 = load i64, i64* %var_ptr_$_113
 %temp_$_115 = mul i64 %res_$_114, 10
 %lnk_$_116 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 0
 %load_$_117 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_116
 %lnk_$_119 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 0
 %load_$_120 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_119
 %var_ptr_$_121 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_120, i32 0, i32 8
 %res_$_122 = load i8*, i8** %var_ptr_$_121
 %ret_$_123 = call i64 @ord (i8* null, i8* %res_$_122)
 %temp_$_124 = add i64 %temp_$_115, %ret_$_123
 %lnk_$_125 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 0
 %load_$_126 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_125
 %temp_$_129 = bitcast { i64, [1 x i8] }* @str_$_128 to i8*
 %ret_$_130 = call i64 @ord (i8* null, i8* %temp_$_129)
 %temp_$_131 = sub i64 %temp_$_124, %ret_$_130
 %var_ptr_$_132 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 2
 store i64 %temp_$_131, i64* %var_ptr_$_132
 %lnk_$_133 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 0
 %load_$_134 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_133
 %ret_$_136 = call i8* @getChar (i8* null)
 %lnk_$_137 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 0
 %load_$_138 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_137
 %var_ptr_$_139 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_138, i32 0, i32 8
 store i8* %ret_$_136, i8** %var_ptr_$_139
 br label %test_$_104
mrg_$_106:
 %var_ptr_$_153 = getelementptr %$locals_readint$2, %$locals_readint$2* %locals_$_2, i32 0, i32 2
 %res_$_154 = load i64, i64* %var_ptr_$_153
 ret i64 %res_$_154
}

define i8* @readlist$9 (%$locals_tigermain* %$sl) {
 %temp_$_168 = alloca i8*
 %locals_$_3 = alloca %$locals_readlist$9
 %arg_$_155 = getelementptr %$locals_readlist$9, %$locals_readlist$9* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_155
 %size_ptr_$_156 = getelementptr %any$0, %any$0* null, i32 1
 %size_$_157 = ptrtoint %any$0* %size_ptr_$_156 to i64
 %record_ptr_$_158 = call i8* @allocRecord (i64 %size_$_157)
 %rec_$_159 = bitcast i8* %record_ptr_$_158 to %any$0*
 %field_ptr_$_160 = getelementptr %any$0, %any$0* %rec_$_159, i32 0, i32 0
 store i64 0, i64* %field_ptr_$_160
 %temp_$_161 = getelementptr %$locals_readlist$9, %$locals_readlist$9* %locals_$_3, i32 0, i32 2
 store i8* %record_ptr_$_158, i8** %temp_$_161
 %lnk_$_162 = getelementptr %$locals_readlist$9, %$locals_readlist$9* %locals_$_3, i32 0, i32 0
 %load_$_163 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_162
 %var_ptr_$_164 = getelementptr %$locals_readlist$9, %$locals_readlist$9* %locals_$_3, i32 0, i32 2
 %res_$_165 = load i8*, i8** %var_ptr_$_164
 %ret_$_166 = call i64 @readint$2 (%$locals_tigermain* %load_$_163, i8* %res_$_165)
 %temp_$_167 = getelementptr %$locals_readlist$9, %$locals_readlist$9* %locals_$_3, i32 0, i32 1
 store i64 %ret_$_166, i64* %temp_$_167
 %var_ptr_$_172 = getelementptr %$locals_readlist$9, %$locals_readlist$9* %locals_$_3, i32 0, i32 2
 %load_$_173 = load i8*, i8** %var_ptr_$_172
 %record_ptr_$_174 = bitcast i8* %load_$_173 to %any$0*
 %int_of_ptr_$_177 = ptrtoint i8* %load_$_173 to i64
 %cnd_$_178 = icmp eq i64 %int_of_ptr_$_177, 0
 br i1 %cnd_$_178, label %thn_$_175, label %mrg_$_176
thn_$_175:
 call i64 @recFieldError ()
 br label %mrg_$_176
mrg_$_176:
 %field_ptr_$_179 = getelementptr %any$0, %any$0* %record_ptr_$_174, i32 0, i32 0
 %res_$_180 = load i64, i64* %field_ptr_$_179
 %cnd_$_181 = icmp ne i64 %res_$_180, 0
 br i1 %cnd_$_181, label %thn_$_169, label %els_$_170
thn_$_169:
 %size_ptr_$_182 = getelementptr %list$8, %list$8* null, i32 1
 %size_$_183 = ptrtoint %list$8* %size_ptr_$_182 to i64
 %record_ptr_$_184 = call i8* @allocRecord (i64 %size_$_183)
 %rec_$_185 = bitcast i8* %record_ptr_$_184 to %list$8*
 %var_ptr_$_186 = getelementptr %$locals_readlist$9, %$locals_readlist$9* %locals_$_3, i32 0, i32 1
 %res_$_187 = load i64, i64* %var_ptr_$_186
 %field_ptr_$_188 = getelementptr %list$8, %list$8* %rec_$_185, i32 0, i32 0
 store i64 %res_$_187, i64* %field_ptr_$_188
 %lnk_$_189 = getelementptr %$locals_readlist$9, %$locals_readlist$9* %locals_$_3, i32 0, i32 0
 %load_$_190 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_189
 %ret_$_191 = call i8* @readlist$9 (%$locals_tigermain* %load_$_190)
 %field_ptr_$_192 = getelementptr %list$8, %list$8* %rec_$_185, i32 0, i32 1
 store i8* %ret_$_191, i8** %field_ptr_$_192
 store i8* %record_ptr_$_184, i8** %temp_$_168
 br label %mrg_$_171
els_$_170:
 store i8* null, i8** %temp_$_168
 br label %mrg_$_171
mrg_$_171:
 %res_$_193 = load i8*, i8** %temp_$_168
 ret i8* %res_$_193
}

define i8* @merge$10 (%$locals_tigermain* %$sl, i8* %a$15, i8* %b$16) {
 %temp_$_223 = alloca i8*
 %temp_$_210 = alloca i8*
 %temp_$_197 = alloca i8*
 %locals_$_4 = alloca %$locals_merge$10
 %arg_$_194 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 2
 store i8* %b$16, i8** %arg_$_194
 %arg_$_195 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 1
 store i8* %a$15, i8** %arg_$_195
 %arg_$_196 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_196
 %var_ptr_$_201 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 1
 %res_$_202 = load i8*, i8** %var_ptr_$_201
 %left_int_$_203 = ptrtoint i8* %res_$_202 to i64
 %right_int_$_204 = ptrtoint i8* null to i64
 %cnd_$_205 = icmp eq i64 %left_int_$_203, %right_int_$_204
 %zext_$_206 = zext i1 %cnd_$_205 to i64
 %cnd_$_207 = icmp ne i64 %zext_$_206, 0
 br i1 %cnd_$_207, label %thn_$_198, label %els_$_199
thn_$_198:
 %var_ptr_$_208 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 2
 %res_$_209 = load i8*, i8** %var_ptr_$_208
 store i8* %res_$_209, i8** %temp_$_197
 br label %mrg_$_200
els_$_199:
 %var_ptr_$_214 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 2
 %res_$_215 = load i8*, i8** %var_ptr_$_214
 %left_int_$_216 = ptrtoint i8* %res_$_215 to i64
 %right_int_$_217 = ptrtoint i8* null to i64
 %cnd_$_218 = icmp eq i64 %left_int_$_216, %right_int_$_217
 %zext_$_219 = zext i1 %cnd_$_218 to i64
 %cnd_$_220 = icmp ne i64 %zext_$_219, 0
 br i1 %cnd_$_220, label %thn_$_211, label %els_$_212
thn_$_211:
 %var_ptr_$_221 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 1
 %res_$_222 = load i8*, i8** %var_ptr_$_221
 store i8* %res_$_222, i8** %temp_$_210
 br label %mrg_$_213
els_$_212:
 %var_ptr_$_227 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 1
 %load_$_228 = load i8*, i8** %var_ptr_$_227
 %record_ptr_$_229 = bitcast i8* %load_$_228 to %list$8*
 %int_of_ptr_$_232 = ptrtoint i8* %load_$_228 to i64
 %cnd_$_233 = icmp eq i64 %int_of_ptr_$_232, 0
 br i1 %cnd_$_233, label %thn_$_230, label %mrg_$_231
thn_$_230:
 call i64 @recFieldError ()
 br label %mrg_$_231
mrg_$_231:
 %field_ptr_$_234 = getelementptr %list$8, %list$8* %record_ptr_$_229, i32 0, i32 0
 %res_$_235 = load i64, i64* %field_ptr_$_234
 %var_ptr_$_236 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 2
 %load_$_237 = load i8*, i8** %var_ptr_$_236
 %record_ptr_$_238 = bitcast i8* %load_$_237 to %list$8*
 %int_of_ptr_$_241 = ptrtoint i8* %load_$_237 to i64
 %cnd_$_242 = icmp eq i64 %int_of_ptr_$_241, 0
 br i1 %cnd_$_242, label %thn_$_239, label %mrg_$_240
thn_$_239:
 call i64 @recFieldError ()
 br label %mrg_$_240
mrg_$_240:
 %field_ptr_$_243 = getelementptr %list$8, %list$8* %record_ptr_$_238, i32 0, i32 0
 %res_$_244 = load i64, i64* %field_ptr_$_243
 %temp_$_245 = icmp slt i64 %res_$_235, %res_$_244
 %temp_$_246 = zext i1 %temp_$_245 to i64
 %cnd_$_247 = icmp ne i64 %temp_$_246, 0
 br i1 %cnd_$_247, label %thn_$_224, label %els_$_225
thn_$_224:
 %size_ptr_$_248 = getelementptr %list$8, %list$8* null, i32 1
 %size_$_249 = ptrtoint %list$8* %size_ptr_$_248 to i64
 %record_ptr_$_250 = call i8* @allocRecord (i64 %size_$_249)
 %rec_$_251 = bitcast i8* %record_ptr_$_250 to %list$8*
 %var_ptr_$_252 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 1
 %load_$_253 = load i8*, i8** %var_ptr_$_252
 %record_ptr_$_254 = bitcast i8* %load_$_253 to %list$8*
 %int_of_ptr_$_257 = ptrtoint i8* %load_$_253 to i64
 %cnd_$_258 = icmp eq i64 %int_of_ptr_$_257, 0
 br i1 %cnd_$_258, label %thn_$_255, label %mrg_$_256
thn_$_255:
 call i64 @recFieldError ()
 br label %mrg_$_256
mrg_$_256:
 %field_ptr_$_259 = getelementptr %list$8, %list$8* %record_ptr_$_254, i32 0, i32 0
 %res_$_260 = load i64, i64* %field_ptr_$_259
 %field_ptr_$_261 = getelementptr %list$8, %list$8* %rec_$_251, i32 0, i32 0
 store i64 %res_$_260, i64* %field_ptr_$_261
 %lnk_$_262 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 0
 %load_$_263 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_262
 %var_ptr_$_264 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 1
 %load_$_265 = load i8*, i8** %var_ptr_$_264
 %record_ptr_$_266 = bitcast i8* %load_$_265 to %list$8*
 %int_of_ptr_$_269 = ptrtoint i8* %load_$_265 to i64
 %cnd_$_270 = icmp eq i64 %int_of_ptr_$_269, 0
 br i1 %cnd_$_270, label %thn_$_267, label %mrg_$_268
thn_$_267:
 call i64 @recFieldError ()
 br label %mrg_$_268
mrg_$_268:
 %field_ptr_$_271 = getelementptr %list$8, %list$8* %record_ptr_$_266, i32 0, i32 1
 %res_$_272 = load i8*, i8** %field_ptr_$_271
 %var_ptr_$_273 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 2
 %res_$_274 = load i8*, i8** %var_ptr_$_273
 %ret_$_275 = call i8* @merge$10 (%$locals_tigermain* %load_$_263, i8* %res_$_272, i8* %res_$_274)
 %field_ptr_$_276 = getelementptr %list$8, %list$8* %rec_$_251, i32 0, i32 1
 store i8* %ret_$_275, i8** %field_ptr_$_276
 store i8* %record_ptr_$_250, i8** %temp_$_223
 br label %mrg_$_226
els_$_225:
 %size_ptr_$_277 = getelementptr %list$8, %list$8* null, i32 1
 %size_$_278 = ptrtoint %list$8* %size_ptr_$_277 to i64
 %record_ptr_$_279 = call i8* @allocRecord (i64 %size_$_278)
 %rec_$_280 = bitcast i8* %record_ptr_$_279 to %list$8*
 %var_ptr_$_281 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 2
 %load_$_282 = load i8*, i8** %var_ptr_$_281
 %record_ptr_$_283 = bitcast i8* %load_$_282 to %list$8*
 %int_of_ptr_$_286 = ptrtoint i8* %load_$_282 to i64
 %cnd_$_287 = icmp eq i64 %int_of_ptr_$_286, 0
 br i1 %cnd_$_287, label %thn_$_284, label %mrg_$_285
thn_$_284:
 call i64 @recFieldError ()
 br label %mrg_$_285
mrg_$_285:
 %field_ptr_$_288 = getelementptr %list$8, %list$8* %record_ptr_$_283, i32 0, i32 0
 %res_$_289 = load i64, i64* %field_ptr_$_288
 %field_ptr_$_290 = getelementptr %list$8, %list$8* %rec_$_280, i32 0, i32 0
 store i64 %res_$_289, i64* %field_ptr_$_290
 %lnk_$_291 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 0
 %load_$_292 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_291
 %var_ptr_$_293 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 1
 %res_$_294 = load i8*, i8** %var_ptr_$_293
 %var_ptr_$_295 = getelementptr %$locals_merge$10, %$locals_merge$10* %locals_$_4, i32 0, i32 2
 %load_$_296 = load i8*, i8** %var_ptr_$_295
 %record_ptr_$_297 = bitcast i8* %load_$_296 to %list$8*
 %int_of_ptr_$_300 = ptrtoint i8* %load_$_296 to i64
 %cnd_$_301 = icmp eq i64 %int_of_ptr_$_300, 0
 br i1 %cnd_$_301, label %thn_$_298, label %mrg_$_299
thn_$_298:
 call i64 @recFieldError ()
 br label %mrg_$_299
mrg_$_299:
 %field_ptr_$_302 = getelementptr %list$8, %list$8* %record_ptr_$_297, i32 0, i32 1
 %res_$_303 = load i8*, i8** %field_ptr_$_302
 %ret_$_304 = call i8* @merge$10 (%$locals_tigermain* %load_$_292, i8* %res_$_294, i8* %res_$_303)
 %field_ptr_$_305 = getelementptr %list$8, %list$8* %rec_$_280, i32 0, i32 1
 store i8* %ret_$_304, i8** %field_ptr_$_305
 store i8* %record_ptr_$_279, i8** %temp_$_223
 br label %mrg_$_226
mrg_$_226:
 %res_$_306 = load i8*, i8** %temp_$_223
 store i8* %res_$_306, i8** %temp_$_210
 br label %mrg_$_213
mrg_$_213:
 %res_$_307 = load i8*, i8** %temp_$_210
 store i8* %res_$_307, i8** %temp_$_197
 br label %mrg_$_200
mrg_$_200:
 %res_$_308 = load i8*, i8** %temp_$_197
 ret i8* %res_$_308
}

define void @f$18 (%$locals_printint$11* %$sl, i64 %i$19) {
 %locals_$_5 = alloca %$locals_f$18
 %arg_$_309 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_5, i32 0, i32 1
 store i64 %i$19, i64* %arg_$_309
 %arg_$_310 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_5, i32 0, i32 0
 store %$locals_printint$11* %$sl, %$locals_printint$11** %arg_$_310
 %var_ptr_$_313 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_5, i32 0, i32 1
 %res_$_314 = load i64, i64* %var_ptr_$_313
 %temp_$_315 = icmp sgt i64 %res_$_314, 0
 %temp_$_316 = zext i1 %temp_$_315 to i64
 %cnd_$_317 = icmp ne i64 %temp_$_316, 0
 br i1 %cnd_$_317, label %thn_$_311, label %mrg_$_312
thn_$_311:
 %lnk_$_318 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_5, i32 0, i32 0
 %load_$_319 = load %$locals_printint$11*, %$locals_printint$11** %lnk_$_318
 %var_ptr_$_322 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_5, i32 0, i32 1
 %res_$_323 = load i64, i64* %var_ptr_$_322
 %cnd_$_324 = icmp eq i64 10, 0
 br i1 %cnd_$_324, label %thn_$_320, label %mrg_$_321
thn_$_320:
 call i64 @divisionByZero ()
 br label %mrg_$_321
mrg_$_321:
 %temp_$_325 = sdiv i64 %res_$_323, 10
 call void @f$18 (%$locals_printint$11* %load_$_319, i64 %temp_$_325)
 %lnk_$_326 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_5, i32 0, i32 0
 %load_$_327 = load %$locals_printint$11*, %$locals_printint$11** %lnk_$_326
 %lnk_$_328 = getelementptr %$locals_printint$11, %$locals_printint$11* %load_$_327, i32 0, i32 0
 %load_$_329 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_328
 %lnk_$_331 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_5, i32 0, i32 0
 %load_$_332 = load %$locals_printint$11*, %$locals_printint$11** %lnk_$_331
 %lnk_$_333 = getelementptr %$locals_printint$11, %$locals_printint$11* %load_$_332, i32 0, i32 0
 %load_$_334 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_333
 %var_ptr_$_336 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_5, i32 0, i32 1
 %res_$_337 = load i64, i64* %var_ptr_$_336
 %var_ptr_$_340 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_5, i32 0, i32 1
 %res_$_341 = load i64, i64* %var_ptr_$_340
 %cnd_$_342 = icmp eq i64 10, 0
 br i1 %cnd_$_342, label %thn_$_338, label %mrg_$_339
thn_$_338:
 call i64 @divisionByZero ()
 br label %mrg_$_339
mrg_$_339:
 %temp_$_343 = sdiv i64 %res_$_341, 10
 %temp_$_344 = mul i64 %temp_$_343, 10
 %temp_$_345 = sub i64 %res_$_337, %temp_$_344
 %lnk_$_346 = getelementptr %$locals_f$18, %$locals_f$18* %locals_$_5, i32 0, i32 0
 %load_$_347 = load %$locals_printint$11*, %$locals_printint$11** %lnk_$_346
 %lnk_$_348 = getelementptr %$locals_printint$11, %$locals_printint$11* %load_$_347, i32 0, i32 0
 %load_$_349 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_348
 %temp_$_352 = bitcast { i64, [1 x i8] }* @str_$_351 to i8*
 %ret_$_353 = call i64 @ord (i8* null, i8* %temp_$_352)
 %temp_$_354 = add i64 %temp_$_345, %ret_$_353
 %ret_$_355 = call i8* @chr (i8* null, i64 %temp_$_354)
 call void @print (i8* null, i8* %ret_$_355)
 br label %mrg_$_312
mrg_$_312:
 ret void
}

define void @printint$11 (%$locals_tigermain* %$sl, i64 %i$17) {
 %locals_$_6 = alloca %$locals_printint$11
 %arg_$_356 = getelementptr %$locals_printint$11, %$locals_printint$11* %locals_$_6, i32 0, i32 2
 store i64 %i$17, i64* %arg_$_356
 %arg_$_357 = getelementptr %$locals_printint$11, %$locals_printint$11* %locals_$_6, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_357
 %var_ptr_$_361 = getelementptr %$locals_printint$11, %$locals_printint$11* %locals_$_6, i32 0, i32 2
 %res_$_362 = load i64, i64* %var_ptr_$_361
 %temp_$_363 = icmp slt i64 %res_$_362, 0
 %temp_$_364 = zext i1 %temp_$_363 to i64
 %cnd_$_365 = icmp ne i64 %temp_$_364, 0
 br i1 %cnd_$_365, label %thn_$_358, label %els_$_359
thn_$_358:
 %lnk_$_366 = getelementptr %$locals_printint$11, %$locals_printint$11* %locals_$_6, i32 0, i32 0
 %load_$_367 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_366
 %temp_$_370 = bitcast { i64, [1 x i8] }* @str_$_369 to i8*
 call void @print (i8* null, i8* %temp_$_370)
 %var_ptr_$_371 = getelementptr %$locals_printint$11, %$locals_printint$11* %locals_$_6, i32 0, i32 2
 %res_$_372 = load i64, i64* %var_ptr_$_371
 %temp_$_373 = sub i64 0, %res_$_372
 call void @f$18 (%$locals_printint$11* %locals_$_6, i64 %temp_$_373)
 br label %mrg_$_360
els_$_359:
 %var_ptr_$_377 = getelementptr %$locals_printint$11, %$locals_printint$11* %locals_$_6, i32 0, i32 2
 %res_$_378 = load i64, i64* %var_ptr_$_377
 %temp_$_379 = icmp sgt i64 %res_$_378, 0
 %temp_$_380 = zext i1 %temp_$_379 to i64
 %cnd_$_381 = icmp ne i64 %temp_$_380, 0
 br i1 %cnd_$_381, label %thn_$_374, label %els_$_375
thn_$_374:
 %var_ptr_$_382 = getelementptr %$locals_printint$11, %$locals_printint$11* %locals_$_6, i32 0, i32 2
 %res_$_383 = load i64, i64* %var_ptr_$_382
 call void @f$18 (%$locals_printint$11* %locals_$_6, i64 %res_$_383)
 br label %mrg_$_376
els_$_375:
 %lnk_$_384 = getelementptr %$locals_printint$11, %$locals_printint$11* %locals_$_6, i32 0, i32 0
 %load_$_385 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_384
 %temp_$_388 = bitcast { i64, [1 x i8] }* @str_$_387 to i8*
 call void @print (i8* null, i8* %temp_$_388)
 br label %mrg_$_376
mrg_$_376:
 br label %mrg_$_360
mrg_$_360:
 ret void
}

define void @printlist$12 (%$locals_tigermain* %$sl, i8* %l$20) {
 %locals_$_7 = alloca %$locals_printlist$12
 %arg_$_389 = getelementptr %$locals_printlist$12, %$locals_printlist$12* %locals_$_7, i32 0, i32 1
 store i8* %l$20, i8** %arg_$_389
 %arg_$_390 = getelementptr %$locals_printlist$12, %$locals_printlist$12* %locals_$_7, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_390
 %var_ptr_$_394 = getelementptr %$locals_printlist$12, %$locals_printlist$12* %locals_$_7, i32 0, i32 1
 %res_$_395 = load i8*, i8** %var_ptr_$_394
 %left_int_$_396 = ptrtoint i8* %res_$_395 to i64
 %right_int_$_397 = ptrtoint i8* null to i64
 %cnd_$_398 = icmp eq i64 %left_int_$_396, %right_int_$_397
 %zext_$_399 = zext i1 %cnd_$_398 to i64
 %cnd_$_400 = icmp ne i64 %zext_$_399, 0
 br i1 %cnd_$_400, label %thn_$_391, label %els_$_392
thn_$_391:
 %lnk_$_401 = getelementptr %$locals_printlist$12, %$locals_printlist$12* %locals_$_7, i32 0, i32 0
 %load_$_402 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_401
 %temp_$_405 = bitcast { i64, [1 x i8] }* @str_$_404 to i8*
 call void @print (i8* null, i8* %temp_$_405)
 br label %mrg_$_393
els_$_392:
 %lnk_$_411 = getelementptr %$locals_printlist$12, %$locals_printlist$12* %locals_$_7, i32 0, i32 0
 %load_$_412 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_411
 %var_ptr_$_413 = getelementptr %$locals_printlist$12, %$locals_printlist$12* %locals_$_7, i32 0, i32 1
 %load_$_414 = load i8*, i8** %var_ptr_$_413
 %record_ptr_$_415 = bitcast i8* %load_$_414 to %list$8*
 %int_of_ptr_$_418 = ptrtoint i8* %load_$_414 to i64
 %cnd_$_419 = icmp eq i64 %int_of_ptr_$_418, 0
 br i1 %cnd_$_419, label %thn_$_416, label %mrg_$_417
thn_$_416:
 call i64 @recFieldError ()
 br label %mrg_$_417
mrg_$_417:
 %field_ptr_$_420 = getelementptr %list$8, %list$8* %record_ptr_$_415, i32 0, i32 0
 %res_$_421 = load i64, i64* %field_ptr_$_420
 call void @printint$11 (%$locals_tigermain* %load_$_412, i64 %res_$_421)
 %lnk_$_406 = getelementptr %$locals_printlist$12, %$locals_printlist$12* %locals_$_7, i32 0, i32 0
 %load_$_407 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_406
 %temp_$_410 = bitcast { i64, [1 x i8] }* @str_$_409 to i8*
 call void @print (i8* null, i8* %temp_$_410)
 %lnk_$_422 = getelementptr %$locals_printlist$12, %$locals_printlist$12* %locals_$_7, i32 0, i32 0
 %load_$_423 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_422
 %var_ptr_$_424 = getelementptr %$locals_printlist$12, %$locals_printlist$12* %locals_$_7, i32 0, i32 1
 %load_$_425 = load i8*, i8** %var_ptr_$_424
 %record_ptr_$_426 = bitcast i8* %load_$_425 to %list$8*
 %int_of_ptr_$_429 = ptrtoint i8* %load_$_425 to i64
 %cnd_$_430 = icmp eq i64 %int_of_ptr_$_429, 0
 br i1 %cnd_$_430, label %thn_$_427, label %mrg_$_428
thn_$_427:
 call i64 @recFieldError ()
 br label %mrg_$_428
mrg_$_428:
 %field_ptr_$_431 = getelementptr %list$8, %list$8* %record_ptr_$_426, i32 0, i32 1
 %res_$_432 = load i8*, i8** %field_ptr_$_431
 call void @printlist$12 (%$locals_tigermain* %load_$_423, i8* %res_$_432)
 br label %mrg_$_393
mrg_$_393:
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_8 = alloca %$locals_tigermain
 %arg_$_433 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_433
 %ret_$_435 = call i8* @getChar (i8* null)
 %temp_$_436 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 8
 store i8* %ret_$_435, i8** %temp_$_436
 %ret_$_437 = call i8* @readlist$9 (%$locals_tigermain* %locals_$_8)
 %temp_$_438 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 2
 store i8* %ret_$_437, i8** %temp_$_438
 %ret_$_440 = call i8* @getChar (i8* null)
 %var_ptr_$_441 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 8
 store i8* %ret_$_440, i8** %var_ptr_$_441
 %ret_$_442 = call i8* @readlist$9 (%$locals_tigermain* %locals_$_8)
 %temp_$_443 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 store i8* %ret_$_442, i8** %temp_$_443
 %var_ptr_$_444 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 2
 %res_$_445 = load i8*, i8** %var_ptr_$_444
 %var_ptr_$_446 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 %res_$_447 = load i8*, i8** %var_ptr_$_446
 %ret_$_448 = call i8* @merge$10 (%$locals_tigermain* %locals_$_8, i8* %res_$_445, i8* %res_$_447)
 call void @printlist$12 (%$locals_tigermain* %locals_$_8, i8* %ret_$_448)
 ret void
}
