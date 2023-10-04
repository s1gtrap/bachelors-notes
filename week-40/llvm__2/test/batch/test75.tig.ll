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

%$locals_mod_pos$3 = type { %$locals_mod$0*, i64, i64 }
%$locals_mod_neg$4 = type { %$locals_mod$0*, i64, i64 }
%$locals_mod$0 = type { %$locals_tigermain*, i64, i64, i64, i64, i64, i64 }
%$locals_tigermain = type { i8*, i64, i64 }

@str_$_119 = global { i64, [17 x i8] } {i64 17, [17 x i8] c"Error: mod (_,0) "}

define i64 @mod_pos$3 (%$locals_mod$0* %$sl, i64 %a$5, i64 %b$6) {
 %locals_$_0 = alloca %$locals_mod_pos$3
 %arg_$_4 = getelementptr %$locals_mod_pos$3, %$locals_mod_pos$3* %locals_$_0, i32 0, i32 2
 store i64 %b$6, i64* %arg_$_4
 %arg_$_5 = getelementptr %$locals_mod_pos$3, %$locals_mod_pos$3* %locals_$_0, i32 0, i32 1
 store i64 %a$5, i64* %arg_$_5
 %arg_$_6 = getelementptr %$locals_mod_pos$3, %$locals_mod_pos$3* %locals_$_0, i32 0, i32 0
 store %$locals_mod$0* %$sl, %$locals_mod$0** %arg_$_6
 br label %test_$_7
test_$_7:
 %var_ptr_$_10 = getelementptr %$locals_mod_pos$3, %$locals_mod_pos$3* %locals_$_0, i32 0, i32 1
 %res_$_11 = load i64, i64* %var_ptr_$_10
 %var_ptr_$_12 = getelementptr %$locals_mod_pos$3, %$locals_mod_pos$3* %locals_$_0, i32 0, i32 2
 %res_$_13 = load i64, i64* %var_ptr_$_12
 %temp_$_14 = icmp sge i64 %res_$_11, %res_$_13
 %temp_$_15 = zext i1 %temp_$_14 to i64
 %cnd_$_16 = icmp ne i64 %temp_$_15, 0
 br i1 %cnd_$_16, label %body_$_8, label %mrg_$_9
body_$_8:
 %var_ptr_$_17 = getelementptr %$locals_mod_pos$3, %$locals_mod_pos$3* %locals_$_0, i32 0, i32 1
 %res_$_18 = load i64, i64* %var_ptr_$_17
 %var_ptr_$_19 = getelementptr %$locals_mod_pos$3, %$locals_mod_pos$3* %locals_$_0, i32 0, i32 2
 %res_$_20 = load i64, i64* %var_ptr_$_19
 %temp_$_21 = sub i64 %res_$_18, %res_$_20
 %var_ptr_$_22 = getelementptr %$locals_mod_pos$3, %$locals_mod_pos$3* %locals_$_0, i32 0, i32 1
 store i64 %temp_$_21, i64* %var_ptr_$_22
 br label %test_$_7
mrg_$_9:
 %var_ptr_$_23 = getelementptr %$locals_mod_pos$3, %$locals_mod_pos$3* %locals_$_0, i32 0, i32 1
 %res_$_24 = load i64, i64* %var_ptr_$_23
 ret i64 %res_$_24
}

define i64 @mod_neg$4 (%$locals_mod$0* %$sl, i64 %a$7, i64 %b$8) {
 %locals_$_1 = alloca %$locals_mod_neg$4
 %arg_$_25 = getelementptr %$locals_mod_neg$4, %$locals_mod_neg$4* %locals_$_1, i32 0, i32 2
 store i64 %b$8, i64* %arg_$_25
 %arg_$_26 = getelementptr %$locals_mod_neg$4, %$locals_mod_neg$4* %locals_$_1, i32 0, i32 1
 store i64 %a$7, i64* %arg_$_26
 %arg_$_27 = getelementptr %$locals_mod_neg$4, %$locals_mod_neg$4* %locals_$_1, i32 0, i32 0
 store %$locals_mod$0* %$sl, %$locals_mod$0** %arg_$_27
 br label %test_$_28
test_$_28:
 %var_ptr_$_31 = getelementptr %$locals_mod_neg$4, %$locals_mod_neg$4* %locals_$_1, i32 0, i32 1
 %res_$_32 = load i64, i64* %var_ptr_$_31
 %temp_$_33 = icmp slt i64 %res_$_32, 0
 %temp_$_34 = zext i1 %temp_$_33 to i64
 %cnd_$_35 = icmp ne i64 %temp_$_34, 0
 br i1 %cnd_$_35, label %body_$_29, label %mrg_$_30
body_$_29:
 %var_ptr_$_36 = getelementptr %$locals_mod_neg$4, %$locals_mod_neg$4* %locals_$_1, i32 0, i32 1
 %res_$_37 = load i64, i64* %var_ptr_$_36
 %var_ptr_$_38 = getelementptr %$locals_mod_neg$4, %$locals_mod_neg$4* %locals_$_1, i32 0, i32 2
 %res_$_39 = load i64, i64* %var_ptr_$_38
 %temp_$_40 = add i64 %res_$_37, %res_$_39
 %var_ptr_$_41 = getelementptr %$locals_mod_neg$4, %$locals_mod_neg$4* %locals_$_1, i32 0, i32 1
 store i64 %temp_$_40, i64* %var_ptr_$_41
 br label %test_$_28
mrg_$_30:
 %var_ptr_$_42 = getelementptr %$locals_mod_neg$4, %$locals_mod_neg$4* %locals_$_1, i32 0, i32 1
 %res_$_43 = load i64, i64* %var_ptr_$_42
 ret i64 %res_$_43
}

define i64 @mod$0 (%$locals_tigermain* %$sl, i64 %a$1, i64 %b$2) {
 %temp_$_85 = alloca i64
 %temp_$_76 = alloca i64
 %temp_$_56 = alloca i64
 %temp_$_47 = alloca i64
 %locals_$_2 = alloca %$locals_mod$0
 %arg_$_44 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 6
 store i64 %b$2, i64* %arg_$_44
 %arg_$_45 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 5
 store i64 %a$1, i64* %arg_$_45
 %arg_$_46 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_46
 %var_ptr_$_51 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 6
 %res_$_52 = load i64, i64* %var_ptr_$_51
 %temp_$_53 = icmp sgt i64 %res_$_52, 0
 %temp_$_54 = zext i1 %temp_$_53 to i64
 %cnd_$_55 = icmp ne i64 %temp_$_54, 0
 br i1 %cnd_$_55, label %thn_$_48, label %els_$_49
thn_$_48:
 %var_ptr_$_60 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 5
 %res_$_61 = load i64, i64* %var_ptr_$_60
 %temp_$_62 = icmp sge i64 %res_$_61, 0
 %temp_$_63 = zext i1 %temp_$_62 to i64
 %cnd_$_64 = icmp ne i64 %temp_$_63, 0
 br i1 %cnd_$_64, label %thn_$_57, label %els_$_58
thn_$_57:
 %var_ptr_$_65 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 5
 %res_$_66 = load i64, i64* %var_ptr_$_65
 %var_ptr_$_67 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 6
 %res_$_68 = load i64, i64* %var_ptr_$_67
 %ret_$_69 = call i64 @mod_pos$3 (%$locals_mod$0* %locals_$_2, i64 %res_$_66, i64 %res_$_68)
 store i64 %ret_$_69, i64* %temp_$_56
 br label %mrg_$_59
els_$_58:
 %var_ptr_$_70 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 5
 %res_$_71 = load i64, i64* %var_ptr_$_70
 %var_ptr_$_72 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 6
 %res_$_73 = load i64, i64* %var_ptr_$_72
 %ret_$_74 = call i64 @mod_neg$4 (%$locals_mod$0* %locals_$_2, i64 %res_$_71, i64 %res_$_73)
 store i64 %ret_$_74, i64* %temp_$_56
 br label %mrg_$_59
mrg_$_59:
 %res_$_75 = load i64, i64* %temp_$_56
 store i64 %res_$_75, i64* %temp_$_47
 br label %mrg_$_50
els_$_49:
 %var_ptr_$_80 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 6
 %res_$_81 = load i64, i64* %var_ptr_$_80
 %temp_$_82 = icmp slt i64 %res_$_81, 0
 %temp_$_83 = zext i1 %temp_$_82 to i64
 %cnd_$_84 = icmp ne i64 %temp_$_83, 0
 br i1 %cnd_$_84, label %thn_$_77, label %els_$_78
thn_$_77:
 %var_ptr_$_89 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 5
 %res_$_90 = load i64, i64* %var_ptr_$_89
 %temp_$_91 = icmp sge i64 %res_$_90, 0
 %temp_$_92 = zext i1 %temp_$_91 to i64
 %cnd_$_93 = icmp ne i64 %temp_$_92, 0
 br i1 %cnd_$_93, label %thn_$_86, label %els_$_87
thn_$_86:
 %var_ptr_$_94 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 5
 %res_$_95 = load i64, i64* %var_ptr_$_94
 %temp_$_96 = sub i64 0, %res_$_95
 %var_ptr_$_97 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 6
 %res_$_98 = load i64, i64* %var_ptr_$_97
 %temp_$_99 = sub i64 0, %res_$_98
 %ret_$_100 = call i64 @mod_neg$4 (%$locals_mod$0* %locals_$_2, i64 %temp_$_96, i64 %temp_$_99)
 %temp_$_101 = sub i64 0, %ret_$_100
 store i64 %temp_$_101, i64* %temp_$_85
 br label %mrg_$_88
els_$_87:
 %var_ptr_$_102 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 5
 %res_$_103 = load i64, i64* %var_ptr_$_102
 %temp_$_104 = sub i64 0, %res_$_103
 %var_ptr_$_105 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 6
 %res_$_106 = load i64, i64* %var_ptr_$_105
 %temp_$_107 = sub i64 0, %res_$_106
 %ret_$_108 = call i64 @mod_pos$3 (%$locals_mod$0* %locals_$_2, i64 %temp_$_104, i64 %temp_$_107)
 %temp_$_109 = sub i64 0, %ret_$_108
 store i64 %temp_$_109, i64* %temp_$_85
 br label %mrg_$_88
mrg_$_88:
 %res_$_110 = load i64, i64* %temp_$_85
 store i64 %res_$_110, i64* %temp_$_76
 br label %mrg_$_79
els_$_78:
 %lnk_$_116 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 0
 %load_$_117 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_116
 %temp_$_120 = bitcast { i64, [17 x i8] }* @str_$_119 to i8*
 call void @print (i8* null, i8* %temp_$_120)
 %lnk_$_111 = getelementptr %$locals_mod$0, %$locals_mod$0* %locals_$_2, i32 0, i32 0
 %load_$_112 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_111
 %temp_$_114 = sub i64 0, 1
 %ret_$_115 = call i8* @chr (i8* null, i64 %temp_$_114)
 store i64 0, i64* %temp_$_76
 br label %mrg_$_79
mrg_$_79:
 %res_$_121 = load i64, i64* %temp_$_76
 store i64 %res_$_121, i64* %temp_$_47
 br label %mrg_$_50
mrg_$_50:
 %res_$_122 = load i64, i64* %temp_$_47
 ret i64 %res_$_122
}

define i64 @tigermain (i8* %$sl) {
 %locals_$_3 = alloca %$locals_tigermain
 %arg_$_123 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_3, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_123
 %temp_$_124 = sub i64 0, 5
 %ret_$_125 = call i64 @mod$0 (%$locals_tigermain* %locals_$_3, i64 %temp_$_124, i64 3)
 ret i64 %ret_$_125
}
