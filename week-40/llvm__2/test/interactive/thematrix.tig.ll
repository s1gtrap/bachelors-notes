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

%str_arr$0 = type i8*
%bool_arr$1 = type i8*
%$locals_mod$7 = type { %$locals_tigermain*, i64, i64 }
%$locals_init$8 = type { %$locals_tigermain*, i64 }
%$locals_f$9 = type { %$locals_tigermain*, i64, i64 }
%$locals_update_screen$10 = type { %$locals_tigermain*, i64, i64, i64, i64, i8* }
%$locals_print_screen$11 = type { %$locals_tigermain*, i64, i64 }
%$locals_tigermain = type { i8*, i8*, i64, i64, i64, i64, i8*, i8*, i64, i64, i64 }

@str_$_531 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"q"}
@str_$_523 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_499 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_482 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_408 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_389 = global { i64, [7 x i8] } {i64 7, [7 x i8] c"\1B[2J\1B[H"}
@str_$_384 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"\1B[32m"}

define i64 @mod$7 (%$locals_tigermain* %$sl, i64 %a$12, i64 %b$13) {
 %locals_$_0 = alloca %$locals_mod$7
 %arg_$_6 = getelementptr %$locals_mod$7, %$locals_mod$7* %locals_$_0, i32 0, i32 2
 store i64 %b$13, i64* %arg_$_6
 %arg_$_7 = getelementptr %$locals_mod$7, %$locals_mod$7* %locals_$_0, i32 0, i32 1
 store i64 %a$12, i64* %arg_$_7
 %arg_$_8 = getelementptr %$locals_mod$7, %$locals_mod$7* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_8
 %var_ptr_$_9 = getelementptr %$locals_mod$7, %$locals_mod$7* %locals_$_0, i32 0, i32 1
 %res_$_10 = load i64, i64* %var_ptr_$_9
 %var_ptr_$_13 = getelementptr %$locals_mod$7, %$locals_mod$7* %locals_$_0, i32 0, i32 1
 %res_$_14 = load i64, i64* %var_ptr_$_13
 %var_ptr_$_15 = getelementptr %$locals_mod$7, %$locals_mod$7* %locals_$_0, i32 0, i32 2
 %res_$_16 = load i64, i64* %var_ptr_$_15
 %cnd_$_17 = icmp eq i64 %res_$_16, 0
 br i1 %cnd_$_17, label %thn_$_11, label %mrg_$_12
thn_$_11:
 call i64 @divisionByZero ()
 br label %mrg_$_12
mrg_$_12:
 %temp_$_18 = sdiv i64 %res_$_14, %res_$_16
 %var_ptr_$_19 = getelementptr %$locals_mod$7, %$locals_mod$7* %locals_$_0, i32 0, i32 2
 %res_$_20 = load i64, i64* %var_ptr_$_19
 %temp_$_21 = mul i64 %temp_$_18, %res_$_20
 %temp_$_22 = sub i64 %res_$_10, %temp_$_21
 ret i64 %temp_$_22
}

define void @init$8 (%$locals_tigermain* %$sl) {
 %locals_$_1 = alloca %$locals_init$8
 %arg_$_23 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_23
 %temp_$_24 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 1
 store i64 0, i64* %temp_$_24
 br label %test_$_25
test_$_25:
 %var_ptr_$_28 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 1
 %res_$_29 = load i64, i64* %var_ptr_$_28
 %lnk_$_30 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 0
 %load_$_31 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_30
 %var_ptr_$_32 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_31, i32 0, i32 9
 %res_$_33 = load i64, i64* %var_ptr_$_32
 %lnk_$_34 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 0
 %load_$_35 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_34
 %var_ptr_$_36 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_35, i32 0, i32 10
 %res_$_37 = load i64, i64* %var_ptr_$_36
 %temp_$_38 = mul i64 %res_$_33, %res_$_37
 %temp_$_39 = sub i64 %temp_$_38, 1
 %temp_$_40 = icmp sle i64 %res_$_29, %temp_$_39
 %temp_$_41 = zext i1 %temp_$_40 to i64
 %cnd_$_42 = icmp ne i64 %temp_$_41, 0
 br i1 %cnd_$_42, label %body_$_26, label %mrg_$_27
body_$_26:
 %lnk_$_43 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 0
 %load_$_44 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_43
 %lnk_$_46 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 0
 %load_$_47 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_46
 %var_ptr_$_48 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 1
 %res_$_49 = load i64, i64* %var_ptr_$_48
 %ret_$_50 = call i64 @mod$7 (%$locals_tigermain* %load_$_47, i64 %res_$_49, i64 64)
 %temp_$_51 = add i64 32, %ret_$_50
 %ret_$_52 = call i8* @chr (i8* null, i64 %temp_$_51)
 %lnk_$_53 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 0
 %load_$_54 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_53
 %var_ptr_$_55 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_54, i32 0, i32 7
 %var_ptr_$_56 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 1
 %res_$_57 = load i64, i64* %var_ptr_$_56
 %load_$_58 = load i8*, i8** %var_ptr_$_55
 %len_ptr_$_61 = bitcast i8* %load_$_58 to i64*
 %len_ptr_$_62 = getelementptr i64, i64* %len_ptr_$_61, i32 -1
 %len_$_63 = load i64, i64* %len_ptr_$_62
 %cnd_$_64 = icmp sle i64 %len_$_63, %res_$_57
 br i1 %cnd_$_64, label %thn_$_59, label %mrg_$_60
thn_$_59:
 call i64 @arrInxError (i64 %res_$_57)
 br label %mrg_$_60
mrg_$_60:
 %array_ptr_$_65 = bitcast i8* %load_$_58 to i8**
 %entry_ptr_$_66 = getelementptr i8*, i8** %array_ptr_$_65, i64 %res_$_57
 store i8* %ret_$_52, i8** %entry_ptr_$_66
 %lnk_$_69 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 0
 %load_$_70 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_69
 %var_ptr_$_71 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 1
 %res_$_72 = load i64, i64* %var_ptr_$_71
 %ret_$_73 = call i64 @mod$7 (%$locals_tigermain* %load_$_70, i64 %res_$_72, i64 79)
 %lnk_$_74 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 0
 %load_$_75 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_74
 %var_ptr_$_76 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 1
 %res_$_77 = load i64, i64* %var_ptr_$_76
 %ret_$_78 = call i64 @mod$7 (%$locals_tigermain* %load_$_75, i64 %res_$_77, i64 113)
 %temp_$_79 = mul i64 %ret_$_73, %ret_$_78
 %temp_$_80 = icmp eq i64 %temp_$_79, 0
 %temp_$_81 = zext i1 %temp_$_80 to i64
 %cnd_$_82 = icmp ne i64 %temp_$_81, 0
 br i1 %cnd_$_82, label %thn_$_67, label %mrg_$_68
thn_$_67:
 %lnk_$_83 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 0
 %load_$_84 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_83
 %var_ptr_$_85 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_84, i32 0, i32 8
 %res_$_86 = load i64, i64* %var_ptr_$_85
 %lnk_$_87 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 0
 %load_$_88 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_87
 %var_ptr_$_89 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_88, i32 0, i32 6
 %var_ptr_$_90 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 1
 %res_$_91 = load i64, i64* %var_ptr_$_90
 %load_$_92 = load i8*, i8** %var_ptr_$_89
 %len_ptr_$_95 = bitcast i8* %load_$_92 to i64*
 %len_ptr_$_96 = getelementptr i64, i64* %len_ptr_$_95, i32 -1
 %len_$_97 = load i64, i64* %len_ptr_$_96
 %cnd_$_98 = icmp sle i64 %len_$_97, %res_$_91
 br i1 %cnd_$_98, label %thn_$_93, label %mrg_$_94
thn_$_93:
 call i64 @arrInxError (i64 %res_$_91)
 br label %mrg_$_94
mrg_$_94:
 %array_ptr_$_99 = bitcast i8* %load_$_92 to i64*
 %entry_ptr_$_100 = getelementptr i64, i64* %array_ptr_$_99, i64 %res_$_91
 store i64 %res_$_86, i64* %entry_ptr_$_100
 br label %mrg_$_68
mrg_$_68:
 %var_ptr_$_101 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 1
 %res_$_102 = load i64, i64* %var_ptr_$_101
 %temp_$_103 = add i64 %res_$_102, 1
 %var_ptr_$_104 = getelementptr %$locals_init$8, %$locals_init$8* %locals_$_1, i32 0, i32 1
 store i64 %temp_$_103, i64* %var_ptr_$_104
 br label %test_$_25
mrg_$_27:
 ret void
}

define i64 @f$9 (%$locals_tigermain* %$sl, i64 %a$15, i64 %b$16) {
 %temp_$_108 = alloca i64
 %locals_$_2 = alloca %$locals_f$9
 %arg_$_105 = getelementptr %$locals_f$9, %$locals_f$9* %locals_$_2, i32 0, i32 2
 store i64 %b$16, i64* %arg_$_105
 %arg_$_106 = getelementptr %$locals_f$9, %$locals_f$9* %locals_$_2, i32 0, i32 1
 store i64 %a$15, i64* %arg_$_106
 %arg_$_107 = getelementptr %$locals_f$9, %$locals_f$9* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_107
 %var_ptr_$_112 = getelementptr %$locals_f$9, %$locals_f$9* %locals_$_2, i32 0, i32 2
 %res_$_113 = load i64, i64* %var_ptr_$_112
 %lnk_$_114 = getelementptr %$locals_f$9, %$locals_f$9* %locals_$_2, i32 0, i32 0
 %load_$_115 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_114
 %var_ptr_$_116 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_115, i32 0, i32 8
 %res_$_117 = load i64, i64* %var_ptr_$_116
 %temp_$_118 = icmp eq i64 %res_$_113, %res_$_117
 %temp_$_119 = zext i1 %temp_$_118 to i64
 %cnd_$_120 = icmp ne i64 %temp_$_119, 0
 br i1 %cnd_$_120, label %thn_$_109, label %els_$_110
thn_$_109:
 %var_ptr_$_121 = getelementptr %$locals_f$9, %$locals_f$9* %locals_$_2, i32 0, i32 2
 %res_$_122 = load i64, i64* %var_ptr_$_121
 store i64 %res_$_122, i64* %temp_$_108
 br label %mrg_$_111
els_$_110:
 %var_ptr_$_123 = getelementptr %$locals_f$9, %$locals_f$9* %locals_$_2, i32 0, i32 1
 %res_$_124 = load i64, i64* %var_ptr_$_123
 %temp_$_125 = sub i64 %res_$_124, 1
 store i64 %temp_$_125, i64* %temp_$_108
 br label %mrg_$_111
mrg_$_111:
 %res_$_126 = load i64, i64* %temp_$_108
 ret i64 %res_$_126
}

define void @update_screen$10 (%$locals_tigermain* %$sl) {
 %locals_$_3 = alloca %$locals_update_screen$10
 %arg_$_127 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_127
 %init_ptr_$_128 = alloca i64
 store i64 0, i64* %init_ptr_$_128
 %init_ptr_$_129 = bitcast i64* %init_ptr_$_128 to i8*
 %lnk_$_130 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_131 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_130
 %var_ptr_$_132 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_131, i32 0, i32 10
 %res_$_133 = load i64, i64* %var_ptr_$_132
 %init_size_ptr_$_134 = getelementptr i64, i64* null, i32 1
 %init_size_$_135 = ptrtoint i64* %init_size_ptr_$_134 to i64
 %array_ptr_$_136 = call i8* @initArray (i64 %res_$_133, i64 %init_size_$_135, i8* %init_ptr_$_129)
 %temp_$_137 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 5
 store i8* %array_ptr_$_136, i8** %temp_$_137
 %temp_$_261 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 4
 store i64 0, i64* %temp_$_261
 br label %test_$_262
test_$_262:
 %var_ptr_$_265 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 4
 %res_$_266 = load i64, i64* %var_ptr_$_265
 %lnk_$_267 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_268 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_267
 %var_ptr_$_269 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_268, i32 0, i32 10
 %res_$_270 = load i64, i64* %var_ptr_$_269
 %temp_$_271 = sub i64 %res_$_270, 1
 %temp_$_272 = icmp sle i64 %res_$_266, %temp_$_271
 %temp_$_273 = zext i1 %temp_$_272 to i64
 %cnd_$_274 = icmp ne i64 %temp_$_273, 0
 br i1 %cnd_$_274, label %body_$_263, label %mrg_$_264
body_$_263:
 %lnk_$_275 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_276 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_275
 %var_ptr_$_277 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_276, i32 0, i32 6
 %lnk_$_278 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_279 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_278
 %var_ptr_$_280 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_279, i32 0, i32 9
 %res_$_281 = load i64, i64* %var_ptr_$_280
 %temp_$_282 = sub i64 %res_$_281, 1
 %lnk_$_283 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_284 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_283
 %var_ptr_$_285 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_284, i32 0, i32 10
 %res_$_286 = load i64, i64* %var_ptr_$_285
 %temp_$_287 = mul i64 %temp_$_282, %res_$_286
 %var_ptr_$_288 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 4
 %res_$_289 = load i64, i64* %var_ptr_$_288
 %temp_$_290 = add i64 %temp_$_287, %res_$_289
 %load_$_291 = load i8*, i8** %var_ptr_$_277
 %len_ptr_$_294 = bitcast i8* %load_$_291 to i64*
 %len_ptr_$_295 = getelementptr i64, i64* %len_ptr_$_294, i32 -1
 %len_$_296 = load i64, i64* %len_ptr_$_295
 %cnd_$_297 = icmp sle i64 %len_$_296, %temp_$_290
 br i1 %cnd_$_297, label %thn_$_292, label %mrg_$_293
thn_$_292:
 call i64 @arrInxError (i64 %temp_$_290)
 br label %mrg_$_293
mrg_$_293:
 %array_ptr_$_298 = bitcast i8* %load_$_291 to i64*
 %entry_ptr_$_299 = getelementptr i64, i64* %array_ptr_$_298, i64 %temp_$_290
 %res_$_300 = load i64, i64* %entry_ptr_$_299
 %var_ptr_$_301 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 5
 %var_ptr_$_302 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 4
 %res_$_303 = load i64, i64* %var_ptr_$_302
 %load_$_304 = load i8*, i8** %var_ptr_$_301
 %len_ptr_$_307 = bitcast i8* %load_$_304 to i64*
 %len_ptr_$_308 = getelementptr i64, i64* %len_ptr_$_307, i32 -1
 %len_$_309 = load i64, i64* %len_ptr_$_308
 %cnd_$_310 = icmp sle i64 %len_$_309, %res_$_303
 br i1 %cnd_$_310, label %thn_$_305, label %mrg_$_306
thn_$_305:
 call i64 @arrInxError (i64 %res_$_303)
 br label %mrg_$_306
mrg_$_306:
 %array_ptr_$_311 = bitcast i8* %load_$_304 to i64*
 %entry_ptr_$_312 = getelementptr i64, i64* %array_ptr_$_311, i64 %res_$_303
 store i64 %res_$_300, i64* %entry_ptr_$_312
 %var_ptr_$_313 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 4
 %res_$_314 = load i64, i64* %var_ptr_$_313
 %temp_$_315 = add i64 %res_$_314, 1
 %var_ptr_$_316 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 4
 store i64 %temp_$_315, i64* %var_ptr_$_316
 br label %test_$_262
mrg_$_264:
 %temp_$_138 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 3
 store i64 1, i64* %temp_$_138
 br label %test_$_139
test_$_139:
 %var_ptr_$_142 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 3
 %res_$_143 = load i64, i64* %var_ptr_$_142
 %lnk_$_144 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_145 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_144
 %var_ptr_$_146 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_145, i32 0, i32 9
 %res_$_147 = load i64, i64* %var_ptr_$_146
 %temp_$_148 = sub i64 %res_$_147, 1
 %temp_$_149 = icmp sle i64 %res_$_143, %temp_$_148
 %temp_$_150 = zext i1 %temp_$_149 to i64
 %cnd_$_151 = icmp ne i64 %temp_$_150, 0
 br i1 %cnd_$_151, label %body_$_140, label %mrg_$_141
body_$_140:
 %temp_$_152 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 2
 store i64 0, i64* %temp_$_152
 br label %test_$_153
test_$_153:
 %var_ptr_$_156 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 2
 %res_$_157 = load i64, i64* %var_ptr_$_156
 %lnk_$_158 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_159 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_158
 %var_ptr_$_160 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_159, i32 0, i32 10
 %res_$_161 = load i64, i64* %var_ptr_$_160
 %temp_$_162 = sub i64 %res_$_161, 1
 %temp_$_163 = icmp sle i64 %res_$_157, %temp_$_162
 %temp_$_164 = zext i1 %temp_$_163 to i64
 %cnd_$_165 = icmp ne i64 %temp_$_164, 0
 br i1 %cnd_$_165, label %body_$_154, label %mrg_$_155
body_$_154:
 %lnk_$_166 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_167 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_166
 %lnk_$_168 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_169 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_168
 %var_ptr_$_170 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_169, i32 0, i32 6
 %lnk_$_171 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_172 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_171
 %var_ptr_$_173 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_172, i32 0, i32 9
 %res_$_174 = load i64, i64* %var_ptr_$_173
 %var_ptr_$_175 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 3
 %res_$_176 = load i64, i64* %var_ptr_$_175
 %temp_$_177 = sub i64 %res_$_174, %res_$_176
 %lnk_$_178 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_179 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_178
 %var_ptr_$_180 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_179, i32 0, i32 10
 %res_$_181 = load i64, i64* %var_ptr_$_180
 %temp_$_182 = mul i64 %temp_$_177, %res_$_181
 %var_ptr_$_183 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 2
 %res_$_184 = load i64, i64* %var_ptr_$_183
 %temp_$_185 = add i64 %temp_$_182, %res_$_184
 %load_$_186 = load i8*, i8** %var_ptr_$_170
 %len_ptr_$_189 = bitcast i8* %load_$_186 to i64*
 %len_ptr_$_190 = getelementptr i64, i64* %len_ptr_$_189, i32 -1
 %len_$_191 = load i64, i64* %len_ptr_$_190
 %cnd_$_192 = icmp sle i64 %len_$_191, %temp_$_185
 br i1 %cnd_$_192, label %thn_$_187, label %mrg_$_188
thn_$_187:
 call i64 @arrInxError (i64 %temp_$_185)
 br label %mrg_$_188
mrg_$_188:
 %array_ptr_$_193 = bitcast i8* %load_$_186 to i64*
 %entry_ptr_$_194 = getelementptr i64, i64* %array_ptr_$_193, i64 %temp_$_185
 %res_$_195 = load i64, i64* %entry_ptr_$_194
 %lnk_$_196 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_197 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_196
 %var_ptr_$_198 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_197, i32 0, i32 6
 %lnk_$_199 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_200 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_199
 %var_ptr_$_201 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_200, i32 0, i32 9
 %res_$_202 = load i64, i64* %var_ptr_$_201
 %var_ptr_$_203 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 3
 %res_$_204 = load i64, i64* %var_ptr_$_203
 %temp_$_205 = sub i64 %res_$_202, %res_$_204
 %temp_$_206 = sub i64 %temp_$_205, 1
 %lnk_$_207 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_208 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_207
 %var_ptr_$_209 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_208, i32 0, i32 10
 %res_$_210 = load i64, i64* %var_ptr_$_209
 %temp_$_211 = mul i64 %temp_$_206, %res_$_210
 %var_ptr_$_212 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 2
 %res_$_213 = load i64, i64* %var_ptr_$_212
 %temp_$_214 = add i64 %temp_$_211, %res_$_213
 %load_$_215 = load i8*, i8** %var_ptr_$_198
 %len_ptr_$_218 = bitcast i8* %load_$_215 to i64*
 %len_ptr_$_219 = getelementptr i64, i64* %len_ptr_$_218, i32 -1
 %len_$_220 = load i64, i64* %len_ptr_$_219
 %cnd_$_221 = icmp sle i64 %len_$_220, %temp_$_214
 br i1 %cnd_$_221, label %thn_$_216, label %mrg_$_217
thn_$_216:
 call i64 @arrInxError (i64 %temp_$_214)
 br label %mrg_$_217
mrg_$_217:
 %array_ptr_$_222 = bitcast i8* %load_$_215 to i64*
 %entry_ptr_$_223 = getelementptr i64, i64* %array_ptr_$_222, i64 %temp_$_214
 %res_$_224 = load i64, i64* %entry_ptr_$_223
 %ret_$_225 = call i64 @f$9 (%$locals_tigermain* %load_$_167, i64 %res_$_195, i64 %res_$_224)
 %lnk_$_226 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_227 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_226
 %var_ptr_$_228 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_227, i32 0, i32 6
 %lnk_$_229 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_230 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_229
 %var_ptr_$_231 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_230, i32 0, i32 9
 %res_$_232 = load i64, i64* %var_ptr_$_231
 %var_ptr_$_233 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 3
 %res_$_234 = load i64, i64* %var_ptr_$_233
 %temp_$_235 = sub i64 %res_$_232, %res_$_234
 %lnk_$_236 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_237 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_236
 %var_ptr_$_238 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_237, i32 0, i32 10
 %res_$_239 = load i64, i64* %var_ptr_$_238
 %temp_$_240 = mul i64 %temp_$_235, %res_$_239
 %var_ptr_$_241 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 2
 %res_$_242 = load i64, i64* %var_ptr_$_241
 %temp_$_243 = add i64 %temp_$_240, %res_$_242
 %load_$_244 = load i8*, i8** %var_ptr_$_228
 %len_ptr_$_247 = bitcast i8* %load_$_244 to i64*
 %len_ptr_$_248 = getelementptr i64, i64* %len_ptr_$_247, i32 -1
 %len_$_249 = load i64, i64* %len_ptr_$_248
 %cnd_$_250 = icmp sle i64 %len_$_249, %temp_$_243
 br i1 %cnd_$_250, label %thn_$_245, label %mrg_$_246
thn_$_245:
 call i64 @arrInxError (i64 %temp_$_243)
 br label %mrg_$_246
mrg_$_246:
 %array_ptr_$_251 = bitcast i8* %load_$_244 to i64*
 %entry_ptr_$_252 = getelementptr i64, i64* %array_ptr_$_251, i64 %temp_$_243
 store i64 %ret_$_225, i64* %entry_ptr_$_252
 %var_ptr_$_253 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 2
 %res_$_254 = load i64, i64* %var_ptr_$_253
 %temp_$_255 = add i64 %res_$_254, 1
 %var_ptr_$_256 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 2
 store i64 %temp_$_255, i64* %var_ptr_$_256
 br label %test_$_153
mrg_$_155:
 %var_ptr_$_257 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 3
 %res_$_258 = load i64, i64* %var_ptr_$_257
 %temp_$_259 = add i64 %res_$_258, 1
 %var_ptr_$_260 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 3
 store i64 %temp_$_259, i64* %var_ptr_$_260
 br label %test_$_139
mrg_$_141:
 %temp_$_317 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 1
 store i64 0, i64* %temp_$_317
 br label %test_$_318
test_$_318:
 %var_ptr_$_321 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 1
 %res_$_322 = load i64, i64* %var_ptr_$_321
 %lnk_$_323 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_324 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_323
 %var_ptr_$_325 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_324, i32 0, i32 10
 %res_$_326 = load i64, i64* %var_ptr_$_325
 %temp_$_327 = sub i64 %res_$_326, 1
 %temp_$_328 = icmp sle i64 %res_$_322, %temp_$_327
 %temp_$_329 = zext i1 %temp_$_328 to i64
 %cnd_$_330 = icmp ne i64 %temp_$_329, 0
 br i1 %cnd_$_330, label %body_$_319, label %mrg_$_320
body_$_319:
 %lnk_$_331 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_332 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_331
 %lnk_$_333 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_334 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_333
 %var_ptr_$_335 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_334, i32 0, i32 6
 %var_ptr_$_336 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 1
 %res_$_337 = load i64, i64* %var_ptr_$_336
 %load_$_338 = load i8*, i8** %var_ptr_$_335
 %len_ptr_$_341 = bitcast i8* %load_$_338 to i64*
 %len_ptr_$_342 = getelementptr i64, i64* %len_ptr_$_341, i32 -1
 %len_$_343 = load i64, i64* %len_ptr_$_342
 %cnd_$_344 = icmp sle i64 %len_$_343, %res_$_337
 br i1 %cnd_$_344, label %thn_$_339, label %mrg_$_340
thn_$_339:
 call i64 @arrInxError (i64 %res_$_337)
 br label %mrg_$_340
mrg_$_340:
 %array_ptr_$_345 = bitcast i8* %load_$_338 to i64*
 %entry_ptr_$_346 = getelementptr i64, i64* %array_ptr_$_345, i64 %res_$_337
 %res_$_347 = load i64, i64* %entry_ptr_$_346
 %var_ptr_$_348 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 5
 %var_ptr_$_349 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 1
 %res_$_350 = load i64, i64* %var_ptr_$_349
 %load_$_351 = load i8*, i8** %var_ptr_$_348
 %len_ptr_$_354 = bitcast i8* %load_$_351 to i64*
 %len_ptr_$_355 = getelementptr i64, i64* %len_ptr_$_354, i32 -1
 %len_$_356 = load i64, i64* %len_ptr_$_355
 %cnd_$_357 = icmp sle i64 %len_$_356, %res_$_350
 br i1 %cnd_$_357, label %thn_$_352, label %mrg_$_353
thn_$_352:
 call i64 @arrInxError (i64 %res_$_350)
 br label %mrg_$_353
mrg_$_353:
 %array_ptr_$_358 = bitcast i8* %load_$_351 to i64*
 %entry_ptr_$_359 = getelementptr i64, i64* %array_ptr_$_358, i64 %res_$_350
 %res_$_360 = load i64, i64* %entry_ptr_$_359
 %ret_$_361 = call i64 @f$9 (%$locals_tigermain* %load_$_332, i64 %res_$_347, i64 %res_$_360)
 %lnk_$_362 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 0
 %load_$_363 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_362
 %var_ptr_$_364 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_363, i32 0, i32 6
 %var_ptr_$_365 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 1
 %res_$_366 = load i64, i64* %var_ptr_$_365
 %load_$_367 = load i8*, i8** %var_ptr_$_364
 %len_ptr_$_370 = bitcast i8* %load_$_367 to i64*
 %len_ptr_$_371 = getelementptr i64, i64* %len_ptr_$_370, i32 -1
 %len_$_372 = load i64, i64* %len_ptr_$_371
 %cnd_$_373 = icmp sle i64 %len_$_372, %res_$_366
 br i1 %cnd_$_373, label %thn_$_368, label %mrg_$_369
thn_$_368:
 call i64 @arrInxError (i64 %res_$_366)
 br label %mrg_$_369
mrg_$_369:
 %array_ptr_$_374 = bitcast i8* %load_$_367 to i64*
 %entry_ptr_$_375 = getelementptr i64, i64* %array_ptr_$_374, i64 %res_$_366
 store i64 %ret_$_361, i64* %entry_ptr_$_375
 %var_ptr_$_376 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 1
 %res_$_377 = load i64, i64* %var_ptr_$_376
 %temp_$_378 = add i64 %res_$_377, 1
 %var_ptr_$_379 = getelementptr %$locals_update_screen$10, %$locals_update_screen$10* %locals_$_3, i32 0, i32 1
 store i64 %temp_$_378, i64* %var_ptr_$_379
 br label %test_$_318
mrg_$_320:
 ret void
}

define void @print_screen$11 (%$locals_tigermain* %$sl) {
 %locals_$_4 = alloca %$locals_print_screen$11
 %arg_$_380 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_380
 %lnk_$_386 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_387 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_386
 %temp_$_390 = bitcast { i64, [7 x i8] }* @str_$_389 to i8*
 call void @print (i8* null, i8* %temp_$_390)
 %lnk_$_381 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_382 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_381
 %temp_$_385 = bitcast { i64, [5 x i8] }* @str_$_384 to i8*
 call void @print (i8* null, i8* %temp_$_385)
 %temp_$_391 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 2
 store i64 0, i64* %temp_$_391
 br label %test_$_392
test_$_392:
 %var_ptr_$_395 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 2
 %res_$_396 = load i64, i64* %var_ptr_$_395
 %lnk_$_397 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_398 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_397
 %var_ptr_$_399 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_398, i32 0, i32 9
 %res_$_400 = load i64, i64* %var_ptr_$_399
 %temp_$_401 = sub i64 %res_$_400, 1
 %temp_$_402 = icmp sle i64 %res_$_396, %temp_$_401
 %temp_$_403 = zext i1 %temp_$_402 to i64
 %cnd_$_404 = icmp ne i64 %temp_$_403, 0
 br i1 %cnd_$_404, label %body_$_393, label %mrg_$_394
body_$_393:
 %temp_$_410 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 1
 store i64 0, i64* %temp_$_410
 br label %test_$_411
test_$_411:
 %var_ptr_$_414 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 1
 %res_$_415 = load i64, i64* %var_ptr_$_414
 %lnk_$_416 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_417 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_416
 %var_ptr_$_418 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_417, i32 0, i32 10
 %res_$_419 = load i64, i64* %var_ptr_$_418
 %temp_$_420 = sub i64 %res_$_419, 1
 %temp_$_421 = icmp sle i64 %res_$_415, %temp_$_420
 %temp_$_422 = zext i1 %temp_$_421 to i64
 %cnd_$_423 = icmp ne i64 %temp_$_422, 0
 br i1 %cnd_$_423, label %body_$_412, label %mrg_$_413
body_$_412:
 %lnk_$_427 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_428 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_427
 %var_ptr_$_429 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_428, i32 0, i32 6
 %var_ptr_$_430 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 2
 %res_$_431 = load i64, i64* %var_ptr_$_430
 %lnk_$_432 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_433 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_432
 %var_ptr_$_434 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_433, i32 0, i32 10
 %res_$_435 = load i64, i64* %var_ptr_$_434
 %temp_$_436 = mul i64 %res_$_431, %res_$_435
 %var_ptr_$_437 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 1
 %res_$_438 = load i64, i64* %var_ptr_$_437
 %temp_$_439 = add i64 %temp_$_436, %res_$_438
 %load_$_440 = load i8*, i8** %var_ptr_$_429
 %len_ptr_$_443 = bitcast i8* %load_$_440 to i64*
 %len_ptr_$_444 = getelementptr i64, i64* %len_ptr_$_443, i32 -1
 %len_$_445 = load i64, i64* %len_ptr_$_444
 %cnd_$_446 = icmp sle i64 %len_$_445, %temp_$_439
 br i1 %cnd_$_446, label %thn_$_441, label %mrg_$_442
thn_$_441:
 call i64 @arrInxError (i64 %temp_$_439)
 br label %mrg_$_442
mrg_$_442:
 %array_ptr_$_447 = bitcast i8* %load_$_440 to i64*
 %entry_ptr_$_448 = getelementptr i64, i64* %array_ptr_$_447, i64 %temp_$_439
 %res_$_449 = load i64, i64* %entry_ptr_$_448
 %temp_$_450 = icmp sgt i64 %res_$_449, 0
 %temp_$_451 = zext i1 %temp_$_450 to i64
 %cnd_$_452 = icmp ne i64 %temp_$_451, 0
 br i1 %cnd_$_452, label %thn_$_424, label %els_$_425
thn_$_424:
 %lnk_$_453 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_454 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_453
 %lnk_$_456 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_457 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_456
 %var_ptr_$_458 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_457, i32 0, i32 7
 %var_ptr_$_459 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 2
 %res_$_460 = load i64, i64* %var_ptr_$_459
 %lnk_$_461 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_462 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_461
 %var_ptr_$_463 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_462, i32 0, i32 10
 %res_$_464 = load i64, i64* %var_ptr_$_463
 %temp_$_465 = mul i64 %res_$_460, %res_$_464
 %var_ptr_$_466 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 1
 %res_$_467 = load i64, i64* %var_ptr_$_466
 %temp_$_468 = add i64 %temp_$_465, %res_$_467
 %load_$_469 = load i8*, i8** %var_ptr_$_458
 %len_ptr_$_472 = bitcast i8* %load_$_469 to i64*
 %len_ptr_$_473 = getelementptr i64, i64* %len_ptr_$_472, i32 -1
 %len_$_474 = load i64, i64* %len_ptr_$_473
 %cnd_$_475 = icmp sle i64 %len_$_474, %temp_$_468
 br i1 %cnd_$_475, label %thn_$_470, label %mrg_$_471
thn_$_470:
 call i64 @arrInxError (i64 %temp_$_468)
 br label %mrg_$_471
mrg_$_471:
 %array_ptr_$_476 = bitcast i8* %load_$_469 to i8**
 %entry_ptr_$_477 = getelementptr i8*, i8** %array_ptr_$_476, i64 %temp_$_468
 %res_$_478 = load i8*, i8** %entry_ptr_$_477
 call void @print (i8* null, i8* %res_$_478)
 br label %mrg_$_426
els_$_425:
 %lnk_$_479 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_480 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_479
 %temp_$_483 = bitcast { i64, [1 x i8] }* @str_$_482 to i8*
 call void @print (i8* null, i8* %temp_$_483)
 br label %mrg_$_426
mrg_$_426:
 %var_ptr_$_484 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 1
 %res_$_485 = load i64, i64* %var_ptr_$_484
 %temp_$_486 = add i64 %res_$_485, 1
 %var_ptr_$_487 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 1
 store i64 %temp_$_486, i64* %var_ptr_$_487
 br label %test_$_411
mrg_$_413:
 %lnk_$_405 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_406 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_405
 %temp_$_409 = bitcast { i64, [1 x i8] }* @str_$_408 to i8*
 call void @print (i8* null, i8* %temp_$_409)
 %lnk_$_488 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 0
 %load_$_489 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_488
 call void @flush (i8* null)
 %var_ptr_$_491 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 2
 %res_$_492 = load i64, i64* %var_ptr_$_491
 %temp_$_493 = add i64 %res_$_492, 1
 %var_ptr_$_494 = getelementptr %$locals_print_screen$11, %$locals_print_screen$11* %locals_$_4, i32 0, i32 2
 store i64 %temp_$_493, i64* %var_ptr_$_494
 br label %test_$_392
mrg_$_394:
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_5 = alloca %$locals_tigermain
 %arg_$_495 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_495
 %temp_$_496 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 10
 store i64 100, i64* %temp_$_496
 %temp_$_497 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 9
 store i64 40, i64* %temp_$_497
 %temp_$_498 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 8
 store i64 4, i64* %temp_$_498
 %temp_$_500 = bitcast { i64, [1 x i8] }* @str_$_499 to i8*
 %init_ptr_$_501 = alloca i8*
 store i8* %temp_$_500, i8** %init_ptr_$_501
 %init_ptr_$_502 = bitcast i8** %init_ptr_$_501 to i8*
 %var_ptr_$_503 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 9
 %res_$_504 = load i64, i64* %var_ptr_$_503
 %var_ptr_$_505 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 10
 %res_$_506 = load i64, i64* %var_ptr_$_505
 %temp_$_507 = mul i64 %res_$_504, %res_$_506
 %init_size_ptr_$_508 = getelementptr i8*, i8** null, i32 1
 %init_size_$_509 = ptrtoint i8** %init_size_ptr_$_508 to i64
 %array_ptr_$_510 = call i8* @initArray (i64 %temp_$_507, i64 %init_size_$_509, i8* %init_ptr_$_502)
 %temp_$_511 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 7
 store i8* %array_ptr_$_510, i8** %temp_$_511
 %init_ptr_$_512 = alloca i64
 store i64 0, i64* %init_ptr_$_512
 %init_ptr_$_513 = bitcast i64* %init_ptr_$_512 to i8*
 %var_ptr_$_514 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 9
 %res_$_515 = load i64, i64* %var_ptr_$_514
 %var_ptr_$_516 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 10
 %res_$_517 = load i64, i64* %var_ptr_$_516
 %temp_$_518 = mul i64 %res_$_515, %res_$_517
 %init_size_ptr_$_519 = getelementptr i64, i64* null, i32 1
 %init_size_$_520 = ptrtoint i64* %init_size_ptr_$_519 to i64
 %array_ptr_$_521 = call i8* @initArray (i64 %temp_$_518, i64 %init_size_$_520, i8* %init_ptr_$_513)
 %temp_$_522 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 6
 store i8* %array_ptr_$_521, i8** %temp_$_522
 %temp_$_524 = bitcast { i64, [0 x i8] }* @str_$_523 to i8*
 %temp_$_525 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 1
 store i8* %temp_$_524, i8** %temp_$_525
 call void @init$8 (%$locals_tigermain* %locals_$_5)
 br label %test_$_526
test_$_526:
 %var_ptr_$_529 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 1
 %res_$_530 = load i8*, i8** %var_ptr_$_529
 %temp_$_532 = bitcast { i64, [1 x i8] }* @str_$_531 to i8*
 %temp_$_533 = call i64 @stringNotEq (i8* %res_$_530, i8* %temp_$_532)
 %cnd_$_534 = icmp ne i64 %temp_$_533, 0
 br i1 %cnd_$_534, label %body_$_527, label %mrg_$_528
body_$_527:
 call void @print_screen$11 (%$locals_tigermain* %locals_$_5)
 call void @update_screen$10 (%$locals_tigermain* %locals_$_5)
 %ret_$_536 = call i8* @getChar (i8* null)
 %var_ptr_$_537 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 1
 store i8* %ret_$_536, i8** %var_ptr_$_537
 br label %test_$_526
mrg_$_528:
 ret void
}
