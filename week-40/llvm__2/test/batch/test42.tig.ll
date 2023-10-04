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

%arrtype1$0 = type i8*
%rectype1$1 = type { i8*, i8*, i64, i64 }
%arrtype2$2 = type i8*
%rectype2$3 = type { i8*, i8* }
%arrtype3$4 = type i8*
%$locals_tigermain = type { i8*, i8*, i8*, i8*, i8*, i8* }

@str_$_117 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"kati"}
@str_$_88 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"sfd"}
@str_$_78 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"sdf"}
@str_$_51 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"Allos"}
@str_$_41 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"Kapou"}
@str_$_38 = global { i64, [7 x i8] } {i64 7, [7 x i8] c"Kapoios"}
@str_$_26 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_15 = global { i64, [9 x i8] } {i64 9, [9 x i8] c"somewhere"}
@str_$_12 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"aname"}

define void @tigermain (i8* %$sl) {
 %locals_$_0 = alloca %$locals_tigermain
 %arg_$_1 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_1
 %init_ptr_$_2 = alloca i64
 store i64 0, i64* %init_ptr_$_2
 %init_ptr_$_3 = bitcast i64* %init_ptr_$_2 to i8*
 %init_size_ptr_$_4 = getelementptr i64, i64* null, i32 1
 %init_size_$_5 = ptrtoint i64* %init_size_ptr_$_4 to i64
 %array_ptr_$_6 = call i8* @initArray (i64 10, i64 %init_size_$_5, i8* %init_ptr_$_3)
 %temp_$_7 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 5
 store i8* %array_ptr_$_6, i8** %temp_$_7
 %size_ptr_$_8 = getelementptr %rectype1$1, %rectype1$1* null, i32 1
 %size_$_9 = ptrtoint %rectype1$1* %size_ptr_$_8 to i64
 %record_ptr_$_10 = call i8* @allocRecord (i64 %size_$_9)
 %rec_$_11 = bitcast i8* %record_ptr_$_10 to %rectype1$1*
 %temp_$_13 = bitcast { i64, [5 x i8] }* @str_$_12 to i8*
 %field_ptr_$_14 = getelementptr %rectype1$1, %rectype1$1* %rec_$_11, i32 0, i32 0
 store i8* %temp_$_13, i8** %field_ptr_$_14
 %temp_$_16 = bitcast { i64, [9 x i8] }* @str_$_15 to i8*
 %field_ptr_$_17 = getelementptr %rectype1$1, %rectype1$1* %rec_$_11, i32 0, i32 1
 store i8* %temp_$_16, i8** %field_ptr_$_17
 %field_ptr_$_18 = getelementptr %rectype1$1, %rectype1$1* %rec_$_11, i32 0, i32 2
 store i64 0, i64* %field_ptr_$_18
 %field_ptr_$_19 = getelementptr %rectype1$1, %rectype1$1* %rec_$_11, i32 0, i32 3
 store i64 0, i64* %field_ptr_$_19
 %init_ptr_$_20 = alloca i8*
 store i8* %record_ptr_$_10, i8** %init_ptr_$_20
 %init_ptr_$_21 = bitcast i8** %init_ptr_$_20 to i8*
 %init_size_ptr_$_22 = getelementptr i8*, i8** null, i32 1
 %init_size_$_23 = ptrtoint i8** %init_size_ptr_$_22 to i64
 %array_ptr_$_24 = call i8* @initArray (i64 5, i64 %init_size_$_23, i8* %init_ptr_$_21)
 %temp_$_25 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 4
 store i8* %array_ptr_$_24, i8** %temp_$_25
 %temp_$_27 = bitcast { i64, [0 x i8] }* @str_$_26 to i8*
 %init_ptr_$_28 = alloca i8*
 store i8* %temp_$_27, i8** %init_ptr_$_28
 %init_ptr_$_29 = bitcast i8** %init_ptr_$_28 to i8*
 %init_size_ptr_$_30 = getelementptr i8*, i8** null, i32 1
 %init_size_$_31 = ptrtoint i8** %init_size_ptr_$_30 to i64
 %array_ptr_$_32 = call i8* @initArray (i64 100, i64 %init_size_$_31, i8* %init_ptr_$_29)
 %temp_$_33 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 3
 store i8* %array_ptr_$_32, i8** %temp_$_33
 %size_ptr_$_34 = getelementptr %rectype1$1, %rectype1$1* null, i32 1
 %size_$_35 = ptrtoint %rectype1$1* %size_ptr_$_34 to i64
 %record_ptr_$_36 = call i8* @allocRecord (i64 %size_$_35)
 %rec_$_37 = bitcast i8* %record_ptr_$_36 to %rectype1$1*
 %temp_$_39 = bitcast { i64, [7 x i8] }* @str_$_38 to i8*
 %field_ptr_$_40 = getelementptr %rectype1$1, %rectype1$1* %rec_$_37, i32 0, i32 0
 store i8* %temp_$_39, i8** %field_ptr_$_40
 %temp_$_42 = bitcast { i64, [5 x i8] }* @str_$_41 to i8*
 %field_ptr_$_43 = getelementptr %rectype1$1, %rectype1$1* %rec_$_37, i32 0, i32 1
 store i8* %temp_$_42, i8** %field_ptr_$_43
 %field_ptr_$_44 = getelementptr %rectype1$1, %rectype1$1* %rec_$_37, i32 0, i32 2
 store i64 2432, i64* %field_ptr_$_44
 %field_ptr_$_45 = getelementptr %rectype1$1, %rectype1$1* %rec_$_37, i32 0, i32 3
 store i64 44, i64* %field_ptr_$_45
 %temp_$_46 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 store i8* %record_ptr_$_36, i8** %temp_$_46
 %size_ptr_$_47 = getelementptr %rectype2$3, %rectype2$3* null, i32 1
 %size_$_48 = ptrtoint %rectype2$3* %size_ptr_$_47 to i64
 %record_ptr_$_49 = call i8* @allocRecord (i64 %size_$_48)
 %rec_$_50 = bitcast i8* %record_ptr_$_49 to %rectype2$3*
 %temp_$_52 = bitcast { i64, [5 x i8] }* @str_$_51 to i8*
 %field_ptr_$_53 = getelementptr %rectype2$3, %rectype2$3* %rec_$_50, i32 0, i32 0
 store i8* %temp_$_52, i8** %field_ptr_$_53
 %init_ptr_$_54 = alloca i64
 store i64 1900, i64* %init_ptr_$_54
 %init_ptr_$_55 = bitcast i64* %init_ptr_$_54 to i8*
 %init_size_ptr_$_56 = getelementptr i64, i64* null, i32 1
 %init_size_$_57 = ptrtoint i64* %init_size_ptr_$_56 to i64
 %array_ptr_$_58 = call i8* @initArray (i64 3, i64 %init_size_$_57, i8* %init_ptr_$_55)
 %field_ptr_$_59 = getelementptr %rectype2$3, %rectype2$3* %rec_$_50, i32 0, i32 1
 store i8* %array_ptr_$_58, i8** %field_ptr_$_59
 %temp_$_60 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 store i8* %record_ptr_$_49, i8** %temp_$_60
 %var_ptr_$_146 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 5
 %load_$_147 = load i8*, i8** %var_ptr_$_146
 %len_ptr_$_150 = bitcast i8* %load_$_147 to i64*
 %len_ptr_$_151 = getelementptr i64, i64* %len_ptr_$_150, i32 -1
 %len_$_152 = load i64, i64* %len_ptr_$_151
 %cnd_$_153 = icmp sle i64 %len_$_152, 0
 br i1 %cnd_$_153, label %thn_$_148, label %mrg_$_149
thn_$_148:
 call i64 @arrInxError (i64 0)
 br label %mrg_$_149
mrg_$_149:
 %array_ptr_$_154 = bitcast i8* %load_$_147 to i64*
 %entry_ptr_$_155 = getelementptr i64, i64* %array_ptr_$_154, i32 0
 store i64 1, i64* %entry_ptr_$_155
 %var_ptr_$_136 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 5
 %load_$_137 = load i8*, i8** %var_ptr_$_136
 %len_ptr_$_140 = bitcast i8* %load_$_137 to i64*
 %len_ptr_$_141 = getelementptr i64, i64* %len_ptr_$_140, i32 -1
 %len_$_142 = load i64, i64* %len_ptr_$_141
 %cnd_$_143 = icmp sle i64 %len_$_142, 9
 br i1 %cnd_$_143, label %thn_$_138, label %mrg_$_139
thn_$_138:
 call i64 @arrInxError (i64 9)
 br label %mrg_$_139
mrg_$_139:
 %array_ptr_$_144 = bitcast i8* %load_$_137 to i64*
 %entry_ptr_$_145 = getelementptr i64, i64* %array_ptr_$_144, i32 9
 store i64 3, i64* %entry_ptr_$_145
 %temp_$_118 = bitcast { i64, [4 x i8] }* @str_$_117 to i8*
 %var_ptr_$_119 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 4
 %load_$_120 = load i8*, i8** %var_ptr_$_119
 %len_ptr_$_123 = bitcast i8* %load_$_120 to i64*
 %len_ptr_$_124 = getelementptr i64, i64* %len_ptr_$_123, i32 -1
 %len_$_125 = load i64, i64* %len_ptr_$_124
 %cnd_$_126 = icmp sle i64 %len_$_125, 3
 br i1 %cnd_$_126, label %thn_$_121, label %mrg_$_122
thn_$_121:
 call i64 @arrInxError (i64 3)
 br label %mrg_$_122
mrg_$_122:
 %array_ptr_$_127 = bitcast i8* %load_$_120 to i8**
 %entry_ptr_$_128 = getelementptr i8*, i8** %array_ptr_$_127, i32 3
 %load_$_129 = load i8*, i8** %entry_ptr_$_128
 %record_ptr_$_130 = bitcast i8* %load_$_129 to %rectype1$1*
 %int_of_ptr_$_133 = ptrtoint i8* %load_$_129 to i64
 %cnd_$_134 = icmp eq i64 %int_of_ptr_$_133, 0
 br i1 %cnd_$_134, label %thn_$_131, label %mrg_$_132
thn_$_131:
 call i64 @recFieldError ()
 br label %mrg_$_132
mrg_$_132:
 %field_ptr_$_135 = getelementptr %rectype1$1, %rectype1$1* %record_ptr_$_130, i32 0, i32 0
 store i8* %temp_$_118, i8** %field_ptr_$_135
 %var_ptr_$_100 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 4
 %load_$_101 = load i8*, i8** %var_ptr_$_100
 %len_ptr_$_104 = bitcast i8* %load_$_101 to i64*
 %len_ptr_$_105 = getelementptr i64, i64* %len_ptr_$_104, i32 -1
 %len_$_106 = load i64, i64* %len_ptr_$_105
 %cnd_$_107 = icmp sle i64 %len_$_106, 1
 br i1 %cnd_$_107, label %thn_$_102, label %mrg_$_103
thn_$_102:
 call i64 @arrInxError (i64 1)
 br label %mrg_$_103
mrg_$_103:
 %array_ptr_$_108 = bitcast i8* %load_$_101 to i8**
 %entry_ptr_$_109 = getelementptr i8*, i8** %array_ptr_$_108, i32 1
 %load_$_110 = load i8*, i8** %entry_ptr_$_109
 %record_ptr_$_111 = bitcast i8* %load_$_110 to %rectype1$1*
 %int_of_ptr_$_114 = ptrtoint i8* %load_$_110 to i64
 %cnd_$_115 = icmp eq i64 %int_of_ptr_$_114, 0
 br i1 %cnd_$_115, label %thn_$_112, label %mrg_$_113
thn_$_112:
 call i64 @recFieldError ()
 br label %mrg_$_113
mrg_$_113:
 %field_ptr_$_116 = getelementptr %rectype1$1, %rectype1$1* %record_ptr_$_111, i32 0, i32 3
 store i64 23, i64* %field_ptr_$_116
 %temp_$_89 = bitcast { i64, [3 x i8] }* @str_$_88 to i8*
 %var_ptr_$_90 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 3
 %load_$_91 = load i8*, i8** %var_ptr_$_90
 %len_ptr_$_94 = bitcast i8* %load_$_91 to i64*
 %len_ptr_$_95 = getelementptr i64, i64* %len_ptr_$_94, i32 -1
 %len_$_96 = load i64, i64* %len_ptr_$_95
 %cnd_$_97 = icmp sle i64 %len_$_96, 34
 br i1 %cnd_$_97, label %thn_$_92, label %mrg_$_93
thn_$_92:
 call i64 @arrInxError (i64 34)
 br label %mrg_$_93
mrg_$_93:
 %array_ptr_$_98 = bitcast i8* %load_$_91 to i8**
 %entry_ptr_$_99 = getelementptr i8*, i8** %array_ptr_$_98, i32 34
 store i8* %temp_$_89, i8** %entry_ptr_$_99
 %temp_$_79 = bitcast { i64, [3 x i8] }* @str_$_78 to i8*
 %var_ptr_$_80 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 %load_$_81 = load i8*, i8** %var_ptr_$_80
 %record_ptr_$_82 = bitcast i8* %load_$_81 to %rectype1$1*
 %int_of_ptr_$_85 = ptrtoint i8* %load_$_81 to i64
 %cnd_$_86 = icmp eq i64 %int_of_ptr_$_85, 0
 br i1 %cnd_$_86, label %thn_$_83, label %mrg_$_84
thn_$_83:
 call i64 @recFieldError ()
 br label %mrg_$_84
mrg_$_84:
 %field_ptr_$_87 = getelementptr %rectype1$1, %rectype1$1* %record_ptr_$_82, i32 0, i32 0
 store i8* %temp_$_79, i8** %field_ptr_$_87
 %var_ptr_$_61 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 %load_$_62 = load i8*, i8** %var_ptr_$_61
 %record_ptr_$_63 = bitcast i8* %load_$_62 to %rectype2$3*
 %int_of_ptr_$_66 = ptrtoint i8* %load_$_62 to i64
 %cnd_$_67 = icmp eq i64 %int_of_ptr_$_66, 0
 br i1 %cnd_$_67, label %thn_$_64, label %mrg_$_65
thn_$_64:
 call i64 @recFieldError ()
 br label %mrg_$_65
mrg_$_65:
 %field_ptr_$_68 = getelementptr %rectype2$3, %rectype2$3* %record_ptr_$_63, i32 0, i32 1
 %load_$_69 = load i8*, i8** %field_ptr_$_68
 %len_ptr_$_72 = bitcast i8* %load_$_69 to i64*
 %len_ptr_$_73 = getelementptr i64, i64* %len_ptr_$_72, i32 -1
 %len_$_74 = load i64, i64* %len_ptr_$_73
 %cnd_$_75 = icmp sle i64 %len_$_74, 0
 br i1 %cnd_$_75, label %thn_$_70, label %mrg_$_71
thn_$_70:
 call i64 @arrInxError (i64 0)
 br label %mrg_$_71
mrg_$_71:
 %array_ptr_$_76 = bitcast i8* %load_$_69 to i64*
 %entry_ptr_$_77 = getelementptr i64, i64* %array_ptr_$_76, i32 0
 store i64 2323, i64* %entry_ptr_$_77
 %var_ptr_$_156 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 %load_$_157 = load i8*, i8** %var_ptr_$_156
 %record_ptr_$_158 = bitcast i8* %load_$_157 to %rectype2$3*
 %int_of_ptr_$_161 = ptrtoint i8* %load_$_157 to i64
 %cnd_$_162 = icmp eq i64 %int_of_ptr_$_161, 0
 br i1 %cnd_$_162, label %thn_$_159, label %mrg_$_160
thn_$_159:
 call i64 @recFieldError ()
 br label %mrg_$_160
mrg_$_160:
 %field_ptr_$_163 = getelementptr %rectype2$3, %rectype2$3* %record_ptr_$_158, i32 0, i32 1
 %load_$_164 = load i8*, i8** %field_ptr_$_163
 %len_ptr_$_167 = bitcast i8* %load_$_164 to i64*
 %len_ptr_$_168 = getelementptr i64, i64* %len_ptr_$_167, i32 -1
 %len_$_169 = load i64, i64* %len_ptr_$_168
 %cnd_$_170 = icmp sle i64 %len_$_169, 2
 br i1 %cnd_$_170, label %thn_$_165, label %mrg_$_166
thn_$_165:
 call i64 @arrInxError (i64 2)
 br label %mrg_$_166
mrg_$_166:
 %array_ptr_$_171 = bitcast i8* %load_$_164 to i64*
 %entry_ptr_$_172 = getelementptr i64, i64* %array_ptr_$_171, i32 2
 store i64 2323, i64* %entry_ptr_$_172
 ret void
}
