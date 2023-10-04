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

%Root$0 = type { i8* }
%Tree$1 = type { i8*, i64, i8* }
%Bool$2 = type i64
%$locals_boolToString$5 = type { %$locals_tigermain*, i64 }
%$locals_node$6 = type { %$locals_tigermain*, i8*, i64, i8* }
%$locals_leaf$7 = type { %$locals_tigermain*, i64 }
%$locals_tree$8 = type { %$locals_tigermain* }
%$locals_insert$9 = type { %$locals_tigermain*, i8*, i64 }
%$locals_insertTree$10 = type { %$locals_tigermain*, i8*, i64 }
%$locals_contains$11 = type { %$locals_tigermain*, i8*, i64 }
%$locals_containsTree$12 = type { %$locals_tigermain*, i8*, i64 }
%$locals_tigermain = type { i8*, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i64, i64 }

@str_$_361 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_358 = global { i64, [22 x i8] } {i64 22, [22 x i8] c"inserting the value 2\0A"}
@str_$_353 = global { i64, [23 x i8] } {i64 23, [23 x i8] c"inserting the value 15\0A"}
@str_$_348 = global { i64, [31 x i8] } {i64 31, [31 x i8] c"Does set contain the value 1?: "}
@str_$_340 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_337 = global { i64, [31 x i8] } {i64 31, [31 x i8] c"Does set contain the value 2?: "}
@str_$_329 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_326 = global { i64, [32 x i8] } {i64 32, [32 x i8] c"Does set contain the value 10?: "}
@str_$_20 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"false"}
@str_$_18 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"true"}

define i8* @boolToString$5 (%$locals_tigermain* %$sl, i64 %value$13) {
 %temp_$_11 = alloca i8*
 %locals_$_0 = alloca %$locals_boolToString$5
 %arg_$_9 = getelementptr %$locals_boolToString$5, %$locals_boolToString$5* %locals_$_0, i32 0, i32 1
 store i64 %value$13, i64* %arg_$_9
 %arg_$_10 = getelementptr %$locals_boolToString$5, %$locals_boolToString$5* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_10
 %var_ptr_$_15 = getelementptr %$locals_boolToString$5, %$locals_boolToString$5* %locals_$_0, i32 0, i32 1
 %res_$_16 = load i64, i64* %var_ptr_$_15
 %cnd_$_17 = icmp ne i64 %res_$_16, 0
 br i1 %cnd_$_17, label %thn_$_12, label %els_$_13
thn_$_12:
 %temp_$_19 = bitcast { i64, [4 x i8] }* @str_$_18 to i8*
 store i8* %temp_$_19, i8** %temp_$_11
 br label %mrg_$_14
els_$_13:
 %temp_$_21 = bitcast { i64, [5 x i8] }* @str_$_20 to i8*
 store i8* %temp_$_21, i8** %temp_$_11
 br label %mrg_$_14
mrg_$_14:
 %res_$_22 = load i8*, i8** %temp_$_11
 ret i8* %res_$_22
}

define i8* @node$6 (%$locals_tigermain* %$sl, i8* %left$14, i64 %value$15, i8* %right$16) {
 %locals_$_1 = alloca %$locals_node$6
 %arg_$_23 = getelementptr %$locals_node$6, %$locals_node$6* %locals_$_1, i32 0, i32 3
 store i8* %right$16, i8** %arg_$_23
 %arg_$_24 = getelementptr %$locals_node$6, %$locals_node$6* %locals_$_1, i32 0, i32 2
 store i64 %value$15, i64* %arg_$_24
 %arg_$_25 = getelementptr %$locals_node$6, %$locals_node$6* %locals_$_1, i32 0, i32 1
 store i8* %left$14, i8** %arg_$_25
 %arg_$_26 = getelementptr %$locals_node$6, %$locals_node$6* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_26
 %size_ptr_$_27 = getelementptr %Tree$1, %Tree$1* null, i32 1
 %size_$_28 = ptrtoint %Tree$1* %size_ptr_$_27 to i64
 %record_ptr_$_29 = call i8* @allocRecord (i64 %size_$_28)
 %rec_$_30 = bitcast i8* %record_ptr_$_29 to %Tree$1*
 %var_ptr_$_31 = getelementptr %$locals_node$6, %$locals_node$6* %locals_$_1, i32 0, i32 1
 %res_$_32 = load i8*, i8** %var_ptr_$_31
 %field_ptr_$_33 = getelementptr %Tree$1, %Tree$1* %rec_$_30, i32 0, i32 0
 store i8* %res_$_32, i8** %field_ptr_$_33
 %var_ptr_$_34 = getelementptr %$locals_node$6, %$locals_node$6* %locals_$_1, i32 0, i32 2
 %res_$_35 = load i64, i64* %var_ptr_$_34
 %field_ptr_$_36 = getelementptr %Tree$1, %Tree$1* %rec_$_30, i32 0, i32 1
 store i64 %res_$_35, i64* %field_ptr_$_36
 %var_ptr_$_37 = getelementptr %$locals_node$6, %$locals_node$6* %locals_$_1, i32 0, i32 3
 %res_$_38 = load i8*, i8** %var_ptr_$_37
 %field_ptr_$_39 = getelementptr %Tree$1, %Tree$1* %rec_$_30, i32 0, i32 2
 store i8* %res_$_38, i8** %field_ptr_$_39
 ret i8* %record_ptr_$_29
}

define i8* @leaf$7 (%$locals_tigermain* %$sl, i64 %value$17) {
 %locals_$_2 = alloca %$locals_leaf$7
 %arg_$_40 = getelementptr %$locals_leaf$7, %$locals_leaf$7* %locals_$_2, i32 0, i32 1
 store i64 %value$17, i64* %arg_$_40
 %arg_$_41 = getelementptr %$locals_leaf$7, %$locals_leaf$7* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_41
 %size_ptr_$_42 = getelementptr %Tree$1, %Tree$1* null, i32 1
 %size_$_43 = ptrtoint %Tree$1* %size_ptr_$_42 to i64
 %record_ptr_$_44 = call i8* @allocRecord (i64 %size_$_43)
 %rec_$_45 = bitcast i8* %record_ptr_$_44 to %Tree$1*
 %field_ptr_$_46 = getelementptr %Tree$1, %Tree$1* %rec_$_45, i32 0, i32 0
 store i8* null, i8** %field_ptr_$_46
 %var_ptr_$_47 = getelementptr %$locals_leaf$7, %$locals_leaf$7* %locals_$_2, i32 0, i32 1
 %res_$_48 = load i64, i64* %var_ptr_$_47
 %field_ptr_$_49 = getelementptr %Tree$1, %Tree$1* %rec_$_45, i32 0, i32 1
 store i64 %res_$_48, i64* %field_ptr_$_49
 %field_ptr_$_50 = getelementptr %Tree$1, %Tree$1* %rec_$_45, i32 0, i32 2
 store i8* null, i8** %field_ptr_$_50
 ret i8* %record_ptr_$_44
}

define i8* @tree$8 (%$locals_tigermain* %$sl) {
 %locals_$_3 = alloca %$locals_tree$8
 %arg_$_51 = getelementptr %$locals_tree$8, %$locals_tree$8* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_51
 %size_ptr_$_52 = getelementptr %Root$0, %Root$0* null, i32 1
 %size_$_53 = ptrtoint %Root$0* %size_ptr_$_52 to i64
 %record_ptr_$_54 = call i8* @allocRecord (i64 %size_$_53)
 %rec_$_55 = bitcast i8* %record_ptr_$_54 to %Root$0*
 %field_ptr_$_56 = getelementptr %Root$0, %Root$0* %rec_$_55, i32 0, i32 0
 store i8* null, i8** %field_ptr_$_56
 ret i8* %record_ptr_$_54
}

define void @insert$9 (%$locals_tigermain* %$sl, i8* %root$18, i64 %value$19) {
 %locals_$_4 = alloca %$locals_insert$9
 %arg_$_57 = getelementptr %$locals_insert$9, %$locals_insert$9* %locals_$_4, i32 0, i32 2
 store i64 %value$19, i64* %arg_$_57
 %arg_$_58 = getelementptr %$locals_insert$9, %$locals_insert$9* %locals_$_4, i32 0, i32 1
 store i8* %root$18, i8** %arg_$_58
 %arg_$_59 = getelementptr %$locals_insert$9, %$locals_insert$9* %locals_$_4, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_59
 %var_ptr_$_63 = getelementptr %$locals_insert$9, %$locals_insert$9* %locals_$_4, i32 0, i32 1
 %load_$_64 = load i8*, i8** %var_ptr_$_63
 %record_ptr_$_65 = bitcast i8* %load_$_64 to %Root$0*
 %int_of_ptr_$_68 = ptrtoint i8* %load_$_64 to i64
 %cnd_$_69 = icmp eq i64 %int_of_ptr_$_68, 0
 br i1 %cnd_$_69, label %thn_$_66, label %mrg_$_67
thn_$_66:
 call i64 @recFieldError ()
 br label %mrg_$_67
mrg_$_67:
 %field_ptr_$_70 = getelementptr %Root$0, %Root$0* %record_ptr_$_65, i32 0, i32 0
 %res_$_71 = load i8*, i8** %field_ptr_$_70
 %left_int_$_72 = ptrtoint i8* %res_$_71 to i64
 %right_int_$_73 = ptrtoint i8* null to i64
 %cnd_$_74 = icmp eq i64 %left_int_$_72, %right_int_$_73
 %zext_$_75 = zext i1 %cnd_$_74 to i64
 %cnd_$_76 = icmp ne i64 %zext_$_75, 0
 br i1 %cnd_$_76, label %thn_$_60, label %els_$_61
thn_$_60:
 %lnk_$_77 = getelementptr %$locals_insert$9, %$locals_insert$9* %locals_$_4, i32 0, i32 0
 %load_$_78 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_77
 %var_ptr_$_79 = getelementptr %$locals_insert$9, %$locals_insert$9* %locals_$_4, i32 0, i32 2
 %res_$_80 = load i64, i64* %var_ptr_$_79
 %ret_$_81 = call i8* @leaf$7 (%$locals_tigermain* %load_$_78, i64 %res_$_80)
 %var_ptr_$_82 = getelementptr %$locals_insert$9, %$locals_insert$9* %locals_$_4, i32 0, i32 1
 %load_$_83 = load i8*, i8** %var_ptr_$_82
 %record_ptr_$_84 = bitcast i8* %load_$_83 to %Root$0*
 %int_of_ptr_$_87 = ptrtoint i8* %load_$_83 to i64
 %cnd_$_88 = icmp eq i64 %int_of_ptr_$_87, 0
 br i1 %cnd_$_88, label %thn_$_85, label %mrg_$_86
thn_$_85:
 call i64 @recFieldError ()
 br label %mrg_$_86
mrg_$_86:
 %field_ptr_$_89 = getelementptr %Root$0, %Root$0* %record_ptr_$_84, i32 0, i32 0
 store i8* %ret_$_81, i8** %field_ptr_$_89
 br label %mrg_$_62
els_$_61:
 %lnk_$_90 = getelementptr %$locals_insert$9, %$locals_insert$9* %locals_$_4, i32 0, i32 0
 %load_$_91 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_90
 %var_ptr_$_92 = getelementptr %$locals_insert$9, %$locals_insert$9* %locals_$_4, i32 0, i32 1
 %load_$_93 = load i8*, i8** %var_ptr_$_92
 %record_ptr_$_94 = bitcast i8* %load_$_93 to %Root$0*
 %int_of_ptr_$_97 = ptrtoint i8* %load_$_93 to i64
 %cnd_$_98 = icmp eq i64 %int_of_ptr_$_97, 0
 br i1 %cnd_$_98, label %thn_$_95, label %mrg_$_96
thn_$_95:
 call i64 @recFieldError ()
 br label %mrg_$_96
mrg_$_96:
 %field_ptr_$_99 = getelementptr %Root$0, %Root$0* %record_ptr_$_94, i32 0, i32 0
 %res_$_100 = load i8*, i8** %field_ptr_$_99
 %var_ptr_$_101 = getelementptr %$locals_insert$9, %$locals_insert$9* %locals_$_4, i32 0, i32 2
 %res_$_102 = load i64, i64* %var_ptr_$_101
 call void @insertTree$10 (%$locals_tigermain* %load_$_91, i8* %res_$_100, i64 %res_$_102)
 br label %mrg_$_62
mrg_$_62:
 ret void
}

define void @insertTree$10 (%$locals_tigermain* %$sl, i8* %tree$20, i64 %value$21) {
 %locals_$_5 = alloca %$locals_insertTree$10
 %arg_$_103 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 2
 store i64 %value$21, i64* %arg_$_103
 %arg_$_104 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 1
 store i8* %tree$20, i8** %arg_$_104
 %arg_$_105 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_105
 %var_ptr_$_109 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 1
 %load_$_110 = load i8*, i8** %var_ptr_$_109
 %record_ptr_$_111 = bitcast i8* %load_$_110 to %Tree$1*
 %int_of_ptr_$_114 = ptrtoint i8* %load_$_110 to i64
 %cnd_$_115 = icmp eq i64 %int_of_ptr_$_114, 0
 br i1 %cnd_$_115, label %thn_$_112, label %mrg_$_113
thn_$_112:
 call i64 @recFieldError ()
 br label %mrg_$_113
mrg_$_113:
 %field_ptr_$_116 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_111, i32 0, i32 1
 %res_$_117 = load i64, i64* %field_ptr_$_116
 %var_ptr_$_118 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 2
 %res_$_119 = load i64, i64* %var_ptr_$_118
 %temp_$_120 = icmp slt i64 %res_$_117, %res_$_119
 %temp_$_121 = zext i1 %temp_$_120 to i64
 %cnd_$_122 = icmp ne i64 %temp_$_121, 0
 br i1 %cnd_$_122, label %thn_$_106, label %els_$_107
thn_$_106:
 %var_ptr_$_126 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 1
 %load_$_127 = load i8*, i8** %var_ptr_$_126
 %record_ptr_$_128 = bitcast i8* %load_$_127 to %Tree$1*
 %int_of_ptr_$_131 = ptrtoint i8* %load_$_127 to i64
 %cnd_$_132 = icmp eq i64 %int_of_ptr_$_131, 0
 br i1 %cnd_$_132, label %thn_$_129, label %mrg_$_130
thn_$_129:
 call i64 @recFieldError ()
 br label %mrg_$_130
mrg_$_130:
 %field_ptr_$_133 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_128, i32 0, i32 0
 %res_$_134 = load i8*, i8** %field_ptr_$_133
 %left_int_$_135 = ptrtoint i8* %res_$_134 to i64
 %right_int_$_136 = ptrtoint i8* null to i64
 %cnd_$_137 = icmp eq i64 %left_int_$_135, %right_int_$_136
 %zext_$_138 = zext i1 %cnd_$_137 to i64
 %cnd_$_139 = icmp ne i64 %zext_$_138, 0
 br i1 %cnd_$_139, label %thn_$_123, label %els_$_124
thn_$_123:
 %lnk_$_140 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 0
 %load_$_141 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_140
 %var_ptr_$_142 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 2
 %res_$_143 = load i64, i64* %var_ptr_$_142
 %ret_$_144 = call i8* @leaf$7 (%$locals_tigermain* %load_$_141, i64 %res_$_143)
 %var_ptr_$_145 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 1
 %load_$_146 = load i8*, i8** %var_ptr_$_145
 %record_ptr_$_147 = bitcast i8* %load_$_146 to %Tree$1*
 %int_of_ptr_$_150 = ptrtoint i8* %load_$_146 to i64
 %cnd_$_151 = icmp eq i64 %int_of_ptr_$_150, 0
 br i1 %cnd_$_151, label %thn_$_148, label %mrg_$_149
thn_$_148:
 call i64 @recFieldError ()
 br label %mrg_$_149
mrg_$_149:
 %field_ptr_$_152 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_147, i32 0, i32 0
 store i8* %ret_$_144, i8** %field_ptr_$_152
 br label %mrg_$_125
els_$_124:
 %lnk_$_153 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 0
 %load_$_154 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_153
 %var_ptr_$_155 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 1
 %load_$_156 = load i8*, i8** %var_ptr_$_155
 %record_ptr_$_157 = bitcast i8* %load_$_156 to %Tree$1*
 %int_of_ptr_$_160 = ptrtoint i8* %load_$_156 to i64
 %cnd_$_161 = icmp eq i64 %int_of_ptr_$_160, 0
 br i1 %cnd_$_161, label %thn_$_158, label %mrg_$_159
thn_$_158:
 call i64 @recFieldError ()
 br label %mrg_$_159
mrg_$_159:
 %field_ptr_$_162 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_157, i32 0, i32 0
 %res_$_163 = load i8*, i8** %field_ptr_$_162
 %var_ptr_$_164 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 2
 %res_$_165 = load i64, i64* %var_ptr_$_164
 call void @insertTree$10 (%$locals_tigermain* %load_$_154, i8* %res_$_163, i64 %res_$_165)
 br label %mrg_$_125
mrg_$_125:
 br label %mrg_$_108
els_$_107:
 %var_ptr_$_169 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 1
 %load_$_170 = load i8*, i8** %var_ptr_$_169
 %record_ptr_$_171 = bitcast i8* %load_$_170 to %Tree$1*
 %int_of_ptr_$_174 = ptrtoint i8* %load_$_170 to i64
 %cnd_$_175 = icmp eq i64 %int_of_ptr_$_174, 0
 br i1 %cnd_$_175, label %thn_$_172, label %mrg_$_173
thn_$_172:
 call i64 @recFieldError ()
 br label %mrg_$_173
mrg_$_173:
 %field_ptr_$_176 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_171, i32 0, i32 2
 %res_$_177 = load i8*, i8** %field_ptr_$_176
 %left_int_$_178 = ptrtoint i8* %res_$_177 to i64
 %right_int_$_179 = ptrtoint i8* null to i64
 %cnd_$_180 = icmp eq i64 %left_int_$_178, %right_int_$_179
 %zext_$_181 = zext i1 %cnd_$_180 to i64
 %cnd_$_182 = icmp ne i64 %zext_$_181, 0
 br i1 %cnd_$_182, label %thn_$_166, label %els_$_167
thn_$_166:
 %lnk_$_183 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 0
 %load_$_184 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_183
 %var_ptr_$_185 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 2
 %res_$_186 = load i64, i64* %var_ptr_$_185
 %ret_$_187 = call i8* @leaf$7 (%$locals_tigermain* %load_$_184, i64 %res_$_186)
 %var_ptr_$_188 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 1
 %load_$_189 = load i8*, i8** %var_ptr_$_188
 %record_ptr_$_190 = bitcast i8* %load_$_189 to %Tree$1*
 %int_of_ptr_$_193 = ptrtoint i8* %load_$_189 to i64
 %cnd_$_194 = icmp eq i64 %int_of_ptr_$_193, 0
 br i1 %cnd_$_194, label %thn_$_191, label %mrg_$_192
thn_$_191:
 call i64 @recFieldError ()
 br label %mrg_$_192
mrg_$_192:
 %field_ptr_$_195 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_190, i32 0, i32 2
 store i8* %ret_$_187, i8** %field_ptr_$_195
 br label %mrg_$_168
els_$_167:
 %lnk_$_196 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 0
 %load_$_197 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_196
 %var_ptr_$_198 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 1
 %load_$_199 = load i8*, i8** %var_ptr_$_198
 %record_ptr_$_200 = bitcast i8* %load_$_199 to %Tree$1*
 %int_of_ptr_$_203 = ptrtoint i8* %load_$_199 to i64
 %cnd_$_204 = icmp eq i64 %int_of_ptr_$_203, 0
 br i1 %cnd_$_204, label %thn_$_201, label %mrg_$_202
thn_$_201:
 call i64 @recFieldError ()
 br label %mrg_$_202
mrg_$_202:
 %field_ptr_$_205 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_200, i32 0, i32 2
 %res_$_206 = load i8*, i8** %field_ptr_$_205
 %var_ptr_$_207 = getelementptr %$locals_insertTree$10, %$locals_insertTree$10* %locals_$_5, i32 0, i32 2
 %res_$_208 = load i64, i64* %var_ptr_$_207
 call void @insertTree$10 (%$locals_tigermain* %load_$_197, i8* %res_$_206, i64 %res_$_208)
 br label %mrg_$_168
mrg_$_168:
 br label %mrg_$_108
mrg_$_108:
 ret void
}

define i64 @contains$11 (%$locals_tigermain* %$sl, i8* %root$22, i64 %value$23) {
 %locals_$_6 = alloca %$locals_contains$11
 %arg_$_209 = getelementptr %$locals_contains$11, %$locals_contains$11* %locals_$_6, i32 0, i32 2
 store i64 %value$23, i64* %arg_$_209
 %arg_$_210 = getelementptr %$locals_contains$11, %$locals_contains$11* %locals_$_6, i32 0, i32 1
 store i8* %root$22, i8** %arg_$_210
 %arg_$_211 = getelementptr %$locals_contains$11, %$locals_contains$11* %locals_$_6, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_211
 %lnk_$_212 = getelementptr %$locals_contains$11, %$locals_contains$11* %locals_$_6, i32 0, i32 0
 %load_$_213 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_212
 %var_ptr_$_214 = getelementptr %$locals_contains$11, %$locals_contains$11* %locals_$_6, i32 0, i32 1
 %load_$_215 = load i8*, i8** %var_ptr_$_214
 %record_ptr_$_216 = bitcast i8* %load_$_215 to %Root$0*
 %int_of_ptr_$_219 = ptrtoint i8* %load_$_215 to i64
 %cnd_$_220 = icmp eq i64 %int_of_ptr_$_219, 0
 br i1 %cnd_$_220, label %thn_$_217, label %mrg_$_218
thn_$_217:
 call i64 @recFieldError ()
 br label %mrg_$_218
mrg_$_218:
 %field_ptr_$_221 = getelementptr %Root$0, %Root$0* %record_ptr_$_216, i32 0, i32 0
 %res_$_222 = load i8*, i8** %field_ptr_$_221
 %var_ptr_$_223 = getelementptr %$locals_contains$11, %$locals_contains$11* %locals_$_6, i32 0, i32 2
 %res_$_224 = load i64, i64* %var_ptr_$_223
 %ret_$_225 = call i64 @containsTree$12 (%$locals_tigermain* %load_$_213, i8* %res_$_222, i64 %res_$_224)
 ret i64 %ret_$_225
}

define i64 @containsTree$12 (%$locals_tigermain* %$sl, i8* %tree$24, i64 %value$25) {
 %temp_$_266 = alloca i64
 %temp_$_244 = alloca i64
 %temp_$_229 = alloca i64
 %locals_$_7 = alloca %$locals_containsTree$12
 %arg_$_226 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 2
 store i64 %value$25, i64* %arg_$_226
 %arg_$_227 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 1
 store i8* %tree$24, i8** %arg_$_227
 %arg_$_228 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_228
 %var_ptr_$_233 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 1
 %res_$_234 = load i8*, i8** %var_ptr_$_233
 %left_int_$_235 = ptrtoint i8* %res_$_234 to i64
 %right_int_$_236 = ptrtoint i8* null to i64
 %cnd_$_237 = icmp eq i64 %left_int_$_235, %right_int_$_236
 %zext_$_238 = zext i1 %cnd_$_237 to i64
 %cnd_$_239 = icmp ne i64 %zext_$_238, 0
 br i1 %cnd_$_239, label %thn_$_230, label %els_$_231
thn_$_230:
 %lnk_$_240 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 0
 %load_$_241 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_240
 %var_ptr_$_242 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_241, i32 0, i32 16
 %res_$_243 = load i64, i64* %var_ptr_$_242
 store i64 %res_$_243, i64* %temp_$_229
 br label %mrg_$_232
els_$_231:
 %var_ptr_$_248 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 1
 %load_$_249 = load i8*, i8** %var_ptr_$_248
 %record_ptr_$_250 = bitcast i8* %load_$_249 to %Tree$1*
 %int_of_ptr_$_253 = ptrtoint i8* %load_$_249 to i64
 %cnd_$_254 = icmp eq i64 %int_of_ptr_$_253, 0
 br i1 %cnd_$_254, label %thn_$_251, label %mrg_$_252
thn_$_251:
 call i64 @recFieldError ()
 br label %mrg_$_252
mrg_$_252:
 %field_ptr_$_255 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_250, i32 0, i32 1
 %res_$_256 = load i64, i64* %field_ptr_$_255
 %var_ptr_$_257 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 2
 %res_$_258 = load i64, i64* %var_ptr_$_257
 %temp_$_259 = icmp eq i64 %res_$_256, %res_$_258
 %temp_$_260 = zext i1 %temp_$_259 to i64
 %cnd_$_261 = icmp ne i64 %temp_$_260, 0
 br i1 %cnd_$_261, label %thn_$_245, label %els_$_246
thn_$_245:
 %lnk_$_262 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 0
 %load_$_263 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_262
 %var_ptr_$_264 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_263, i32 0, i32 15
 %res_$_265 = load i64, i64* %var_ptr_$_264
 store i64 %res_$_265, i64* %temp_$_244
 br label %mrg_$_247
els_$_246:
 %var_ptr_$_270 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 1
 %load_$_271 = load i8*, i8** %var_ptr_$_270
 %record_ptr_$_272 = bitcast i8* %load_$_271 to %Tree$1*
 %int_of_ptr_$_275 = ptrtoint i8* %load_$_271 to i64
 %cnd_$_276 = icmp eq i64 %int_of_ptr_$_275, 0
 br i1 %cnd_$_276, label %thn_$_273, label %mrg_$_274
thn_$_273:
 call i64 @recFieldError ()
 br label %mrg_$_274
mrg_$_274:
 %field_ptr_$_277 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_272, i32 0, i32 1
 %res_$_278 = load i64, i64* %field_ptr_$_277
 %var_ptr_$_279 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 2
 %res_$_280 = load i64, i64* %var_ptr_$_279
 %temp_$_281 = icmp slt i64 %res_$_278, %res_$_280
 %temp_$_282 = zext i1 %temp_$_281 to i64
 %cnd_$_283 = icmp ne i64 %temp_$_282, 0
 br i1 %cnd_$_283, label %thn_$_267, label %els_$_268
thn_$_267:
 %lnk_$_284 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 0
 %load_$_285 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_284
 %var_ptr_$_286 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 1
 %load_$_287 = load i8*, i8** %var_ptr_$_286
 %record_ptr_$_288 = bitcast i8* %load_$_287 to %Tree$1*
 %int_of_ptr_$_291 = ptrtoint i8* %load_$_287 to i64
 %cnd_$_292 = icmp eq i64 %int_of_ptr_$_291, 0
 br i1 %cnd_$_292, label %thn_$_289, label %mrg_$_290
thn_$_289:
 call i64 @recFieldError ()
 br label %mrg_$_290
mrg_$_290:
 %field_ptr_$_293 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_288, i32 0, i32 0
 %res_$_294 = load i8*, i8** %field_ptr_$_293
 %var_ptr_$_295 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 2
 %res_$_296 = load i64, i64* %var_ptr_$_295
 %ret_$_297 = call i64 @containsTree$12 (%$locals_tigermain* %load_$_285, i8* %res_$_294, i64 %res_$_296)
 store i64 %ret_$_297, i64* %temp_$_266
 br label %mrg_$_269
els_$_268:
 %lnk_$_298 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 0
 %load_$_299 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_298
 %var_ptr_$_300 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 1
 %load_$_301 = load i8*, i8** %var_ptr_$_300
 %record_ptr_$_302 = bitcast i8* %load_$_301 to %Tree$1*
 %int_of_ptr_$_305 = ptrtoint i8* %load_$_301 to i64
 %cnd_$_306 = icmp eq i64 %int_of_ptr_$_305, 0
 br i1 %cnd_$_306, label %thn_$_303, label %mrg_$_304
thn_$_303:
 call i64 @recFieldError ()
 br label %mrg_$_304
mrg_$_304:
 %field_ptr_$_307 = getelementptr %Tree$1, %Tree$1* %record_ptr_$_302, i32 0, i32 2
 %res_$_308 = load i8*, i8** %field_ptr_$_307
 %var_ptr_$_309 = getelementptr %$locals_containsTree$12, %$locals_containsTree$12* %locals_$_7, i32 0, i32 2
 %res_$_310 = load i64, i64* %var_ptr_$_309
 %ret_$_311 = call i64 @containsTree$12 (%$locals_tigermain* %load_$_299, i8* %res_$_308, i64 %res_$_310)
 store i64 %ret_$_311, i64* %temp_$_266
 br label %mrg_$_269
mrg_$_269:
 %res_$_312 = load i64, i64* %temp_$_266
 store i64 %res_$_312, i64* %temp_$_244
 br label %mrg_$_247
mrg_$_247:
 %res_$_313 = load i64, i64* %temp_$_244
 store i64 %res_$_313, i64* %temp_$_229
 br label %mrg_$_232
mrg_$_232:
 %res_$_314 = load i64, i64* %temp_$_229
 ret i64 %res_$_314
}

define void @tigermain (i8* %$sl) {
 %locals_$_8 = alloca %$locals_tigermain
 %arg_$_315 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_315
 %temp_$_316 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 16
 store i64 0, i64* %temp_$_316
 %temp_$_317 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 15
 store i64 1, i64* %temp_$_317
 %ret_$_318 = call i8* @tree$8 (%$locals_tigermain* %locals_$_8)
 %temp_$_319 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 store i8* %ret_$_318, i8** %temp_$_319
 %temp_$_359 = bitcast { i64, [22 x i8] }* @str_$_358 to i8*
 call void @print (i8* null, i8* %temp_$_359)
 %var_ptr_$_355 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 %res_$_356 = load i8*, i8** %var_ptr_$_355
 call void @insert$9 (%$locals_tigermain* %locals_$_8, i8* %res_$_356, i64 2)
 %temp_$_354 = bitcast { i64, [23 x i8] }* @str_$_353 to i8*
 call void @print (i8* null, i8* %temp_$_354)
 %var_ptr_$_350 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 %res_$_351 = load i8*, i8** %var_ptr_$_350
 call void @insert$9 (%$locals_tigermain* %locals_$_8, i8* %res_$_351, i64 15)
 %temp_$_349 = bitcast { i64, [31 x i8] }* @str_$_348 to i8*
 call void @print (i8* null, i8* %temp_$_349)
 %var_ptr_$_343 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 %res_$_344 = load i8*, i8** %var_ptr_$_343
 %ret_$_345 = call i64 @contains$11 (%$locals_tigermain* %locals_$_8, i8* %res_$_344, i64 1)
 %ret_$_346 = call i8* @boolToString$5 (%$locals_tigermain* %locals_$_8, i64 %ret_$_345)
 call void @print (i8* null, i8* %ret_$_346)
 %temp_$_341 = bitcast { i64, [1 x i8] }* @str_$_340 to i8*
 call void @print (i8* null, i8* %temp_$_341)
 %temp_$_338 = bitcast { i64, [31 x i8] }* @str_$_337 to i8*
 call void @print (i8* null, i8* %temp_$_338)
 %var_ptr_$_332 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 %res_$_333 = load i8*, i8** %var_ptr_$_332
 %ret_$_334 = call i64 @contains$11 (%$locals_tigermain* %locals_$_8, i8* %res_$_333, i64 2)
 %ret_$_335 = call i8* @boolToString$5 (%$locals_tigermain* %locals_$_8, i64 %ret_$_334)
 call void @print (i8* null, i8* %ret_$_335)
 %temp_$_330 = bitcast { i64, [1 x i8] }* @str_$_329 to i8*
 call void @print (i8* null, i8* %temp_$_330)
 %temp_$_327 = bitcast { i64, [32 x i8] }* @str_$_326 to i8*
 call void @print (i8* null, i8* %temp_$_327)
 %var_ptr_$_321 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 1
 %res_$_322 = load i8*, i8** %var_ptr_$_321
 %ret_$_323 = call i64 @contains$11 (%$locals_tigermain* %locals_$_8, i8* %res_$_322, i64 10)
 %ret_$_324 = call i8* @boolToString$5 (%$locals_tigermain* %locals_$_8, i64 %ret_$_323)
 call void @print (i8* null, i8* %ret_$_324)
 %temp_$_362 = bitcast { i64, [1 x i8] }* @str_$_361 to i8*
 call void @print (i8* null, i8* %temp_$_362)
 ret void
}
