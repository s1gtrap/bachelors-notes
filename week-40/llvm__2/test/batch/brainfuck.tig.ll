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

%intArray$0 = type i8*
%$locals_push$14 = type { %$locals_tigermain*, i64 }
%$locals_pop$15 = type { %$locals_tigermain* }
%$locals_tigermain = type { i8*, i64, i64, i64, i64, i64, i8*, i64, i64, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@str_$_727 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_657 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"]"}
@str_$_628 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"["}
@str_$_601 = global { i64, [1 x i8] } {i64 1, [1 x i8] c","}
@str_$_574 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"."}
@str_$_547 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"<"}
@str_$_520 = global { i64, [1 x i8] } {i64 1, [1 x i8] c">"}
@str_$_493 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"-"}
@str_$_466 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"+"}
@str_$_86 = global { i64, [144 x i8] } {i64 144, [144 x i8] c">++++++++[<+++++++++>-]<.>>+>+>++>[-]+<[>[->+<<++++>]<<]>.+++++++..+++.>>+++++++.<<<[[-]<[-]>]<+++++++++++++++.>>.+++.------.--------.>>+.>++++."}

define void @push$14 (%$locals_tigermain* %$sl, i64 %pos$16) {
 %locals_$_0 = alloca %$locals_push$14
 %arg_$_3 = getelementptr %$locals_push$14, %$locals_push$14* %locals_$_0, i32 0, i32 1
 store i64 %pos$16, i64* %arg_$_3
 %arg_$_4 = getelementptr %$locals_push$14, %$locals_push$14* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_4
 %var_ptr_$_5 = getelementptr %$locals_push$14, %$locals_push$14* %locals_$_0, i32 0, i32 1
 %res_$_6 = load i64, i64* %var_ptr_$_5
 %lnk_$_7 = getelementptr %$locals_push$14, %$locals_push$14* %locals_$_0, i32 0, i32 0
 %load_$_8 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_7
 %var_ptr_$_9 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_8, i32 0, i32 9
 %lnk_$_10 = getelementptr %$locals_push$14, %$locals_push$14* %locals_$_0, i32 0, i32 0
 %load_$_11 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_10
 %var_ptr_$_12 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_11, i32 0, i32 8
 %res_$_13 = load i64, i64* %var_ptr_$_12
 %load_$_14 = load i8*, i8** %var_ptr_$_9
 %len_ptr_$_17 = bitcast i8* %load_$_14 to i64*
 %len_ptr_$_18 = getelementptr i64, i64* %len_ptr_$_17, i32 -1
 %len_$_19 = load i64, i64* %len_ptr_$_18
 %cnd_$_20 = icmp sle i64 %len_$_19, %res_$_13
 br i1 %cnd_$_20, label %thn_$_15, label %mrg_$_16
thn_$_15:
 call i64 @arrInxError (i64 %res_$_13)
 br label %mrg_$_16
mrg_$_16:
 %array_ptr_$_21 = bitcast i8* %load_$_14 to i64*
 %entry_ptr_$_22 = getelementptr i64, i64* %array_ptr_$_21, i64 %res_$_13
 store i64 %res_$_6, i64* %entry_ptr_$_22
 %lnk_$_23 = getelementptr %$locals_push$14, %$locals_push$14* %locals_$_0, i32 0, i32 0
 %load_$_24 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_23
 %var_ptr_$_25 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_24, i32 0, i32 8
 %res_$_26 = load i64, i64* %var_ptr_$_25
 %temp_$_27 = add i64 %res_$_26, 1
 %lnk_$_28 = getelementptr %$locals_push$14, %$locals_push$14* %locals_$_0, i32 0, i32 0
 %load_$_29 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_28
 %var_ptr_$_30 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_29, i32 0, i32 8
 store i64 %temp_$_27, i64* %var_ptr_$_30
 ret void
}

define i64 @pop$15 (%$locals_tigermain* %$sl) {
 %locals_$_1 = alloca %$locals_pop$15
 %arg_$_31 = getelementptr %$locals_pop$15, %$locals_pop$15* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_31
 %lnk_$_32 = getelementptr %$locals_pop$15, %$locals_pop$15* %locals_$_1, i32 0, i32 0
 %load_$_33 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_32
 %var_ptr_$_34 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_33, i32 0, i32 8
 %res_$_35 = load i64, i64* %var_ptr_$_34
 %temp_$_36 = sub i64 %res_$_35, 1
 %lnk_$_37 = getelementptr %$locals_pop$15, %$locals_pop$15* %locals_$_1, i32 0, i32 0
 %load_$_38 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_37
 %var_ptr_$_39 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_38, i32 0, i32 8
 store i64 %temp_$_36, i64* %var_ptr_$_39
 %lnk_$_40 = getelementptr %$locals_pop$15, %$locals_pop$15* %locals_$_1, i32 0, i32 0
 %load_$_41 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_40
 %var_ptr_$_42 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_41, i32 0, i32 9
 %lnk_$_43 = getelementptr %$locals_pop$15, %$locals_pop$15* %locals_$_1, i32 0, i32 0
 %load_$_44 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_43
 %var_ptr_$_45 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_44, i32 0, i32 8
 %res_$_46 = load i64, i64* %var_ptr_$_45
 %load_$_47 = load i8*, i8** %var_ptr_$_42
 %len_ptr_$_50 = bitcast i8* %load_$_47 to i64*
 %len_ptr_$_51 = getelementptr i64, i64* %len_ptr_$_50, i32 -1
 %len_$_52 = load i64, i64* %len_ptr_$_51
 %cnd_$_53 = icmp sle i64 %len_$_52, %res_$_46
 br i1 %cnd_$_53, label %thn_$_48, label %mrg_$_49
thn_$_48:
 call i64 @arrInxError (i64 %res_$_46)
 br label %mrg_$_49
mrg_$_49:
 %array_ptr_$_54 = bitcast i8* %load_$_47 to i64*
 %entry_ptr_$_55 = getelementptr i64, i64* %array_ptr_$_54, i64 %res_$_46
 %res_$_56 = load i64, i64* %entry_ptr_$_55
 ret i64 %res_$_56
}

define void @tigermain (i8* %$sl) {
 %temp_$_381 = alloca i64
 %temp_$_325 = alloca i64
 %locals_$_2 = alloca %$locals_tigermain
 %arg_$_57 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_57
 %temp_$_58 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 20
 store i64 0, i64* %temp_$_58
 %temp_$_59 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 19
 store i64 1, i64* %temp_$_59
 %temp_$_60 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 18
 store i64 2, i64* %temp_$_60
 %temp_$_61 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 17
 store i64 3, i64* %temp_$_61
 %temp_$_62 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 16
 store i64 4, i64* %temp_$_62
 %temp_$_63 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 15
 store i64 5, i64* %temp_$_63
 %temp_$_64 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 14
 store i64 6, i64* %temp_$_64
 %temp_$_65 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 13
 store i64 7, i64* %temp_$_65
 %temp_$_66 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 12
 store i64 8, i64* %temp_$_66
 %init_ptr_$_67 = alloca i64
 store i64 0, i64* %init_ptr_$_67
 %init_ptr_$_68 = bitcast i64* %init_ptr_$_67 to i8*
 %init_size_ptr_$_69 = getelementptr i64, i64* null, i32 1
 %init_size_$_70 = ptrtoint i64* %init_size_ptr_$_69 to i64
 %array_ptr_$_71 = call i8* @initArray (i64 30000, i64 %init_size_$_70, i8* %init_ptr_$_68)
 %temp_$_72 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 store i8* %array_ptr_$_71, i8** %temp_$_72
 %init_ptr_$_73 = alloca i64
 store i64 0, i64* %init_ptr_$_73
 %init_ptr_$_74 = bitcast i64* %init_ptr_$_73 to i8*
 %init_size_ptr_$_75 = getelementptr i64, i64* null, i32 1
 %init_size_$_76 = ptrtoint i64* %init_size_ptr_$_75 to i64
 %array_ptr_$_77 = call i8* @initArray (i64 10000, i64 %init_size_$_76, i8* %init_ptr_$_74)
 %temp_$_78 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 10
 store i8* %array_ptr_$_77, i8** %temp_$_78
 %init_ptr_$_79 = alloca i64
 store i64 0, i64* %init_ptr_$_79
 %init_ptr_$_80 = bitcast i64* %init_ptr_$_79 to i8*
 %init_size_ptr_$_81 = getelementptr i64, i64* null, i32 1
 %init_size_$_82 = ptrtoint i64* %init_size_ptr_$_81 to i64
 %array_ptr_$_83 = call i8* @initArray (i64 10000, i64 %init_size_$_82, i8* %init_ptr_$_80)
 %temp_$_84 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 9
 store i8* %array_ptr_$_83, i8** %temp_$_84
 %temp_$_85 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 8
 store i64 0, i64* %temp_$_85
 %temp_$_87 = bitcast { i64, [144 x i8] }* @str_$_86 to i8*
 %temp_$_88 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 store i8* %temp_$_87, i8** %temp_$_88
 %temp_$_89 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 store i64 0, i64* %temp_$_89
 %temp_$_90 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 store i64 0, i64* %temp_$_90
 %temp_$_439 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 store i64 0, i64* %temp_$_439
 br label %test_$_440
test_$_440:
 %var_ptr_$_443 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_444 = load i64, i64* %var_ptr_$_443
 %var_ptr_$_446 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_447 = load i8*, i8** %var_ptr_$_446
 %ret_$_448 = call i64 @size (i8* null, i8* %res_$_447)
 %temp_$_449 = sub i64 %ret_$_448, 1
 %temp_$_450 = icmp sle i64 %res_$_444, %temp_$_449
 %temp_$_451 = zext i1 %temp_$_450 to i64
 %cnd_$_452 = icmp ne i64 %temp_$_451, 0
 br i1 %cnd_$_452, label %body_$_441, label %mrg_$_442
body_$_441:
 %var_ptr_$_453 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_454 = load i64, i64* %var_ptr_$_453
 %temp_$_455 = mul i64 %res_$_454, 2
 %temp_$_456 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 store i64 %temp_$_455, i64* %temp_$_456
 %var_ptr_$_461 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_462 = load i8*, i8** %var_ptr_$_461
 %var_ptr_$_463 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_464 = load i64, i64* %var_ptr_$_463
 %ret_$_465 = call i8* @substring (i8* null, i8* %res_$_462, i64 %res_$_464, i64 1)
 %temp_$_467 = bitcast { i64, [1 x i8] }* @str_$_466 to i8*
 %temp_$_468 = call i64 @stringEqual (i8* %ret_$_465, i8* %temp_$_467)
 %cnd_$_469 = icmp ne i64 %temp_$_468, 0
 br i1 %cnd_$_469, label %thn_$_457, label %els_$_458
thn_$_457:
 %var_ptr_$_470 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 19
 %res_$_471 = load i64, i64* %var_ptr_$_470
 %var_ptr_$_472 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_473 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_474 = load i64, i64* %var_ptr_$_473
 %load_$_475 = load i8*, i8** %var_ptr_$_472
 %len_ptr_$_478 = bitcast i8* %load_$_475 to i64*
 %len_ptr_$_479 = getelementptr i64, i64* %len_ptr_$_478, i32 -1
 %len_$_480 = load i64, i64* %len_ptr_$_479
 %cnd_$_481 = icmp sle i64 %len_$_480, %res_$_474
 br i1 %cnd_$_481, label %thn_$_476, label %mrg_$_477
thn_$_476:
 call i64 @arrInxError (i64 %res_$_474)
 br label %mrg_$_477
mrg_$_477:
 %array_ptr_$_482 = bitcast i8* %load_$_475 to i64*
 %entry_ptr_$_483 = getelementptr i64, i64* %array_ptr_$_482, i64 %res_$_474
 store i64 %res_$_471, i64* %entry_ptr_$_483
 br label %mrg_$_459
els_$_458:
 %var_ptr_$_488 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_489 = load i8*, i8** %var_ptr_$_488
 %var_ptr_$_490 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_491 = load i64, i64* %var_ptr_$_490
 %ret_$_492 = call i8* @substring (i8* null, i8* %res_$_489, i64 %res_$_491, i64 1)
 %temp_$_494 = bitcast { i64, [1 x i8] }* @str_$_493 to i8*
 %temp_$_495 = call i64 @stringEqual (i8* %ret_$_492, i8* %temp_$_494)
 %cnd_$_496 = icmp ne i64 %temp_$_495, 0
 br i1 %cnd_$_496, label %thn_$_484, label %els_$_485
thn_$_484:
 %var_ptr_$_497 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 18
 %res_$_498 = load i64, i64* %var_ptr_$_497
 %var_ptr_$_499 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_500 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_501 = load i64, i64* %var_ptr_$_500
 %load_$_502 = load i8*, i8** %var_ptr_$_499
 %len_ptr_$_505 = bitcast i8* %load_$_502 to i64*
 %len_ptr_$_506 = getelementptr i64, i64* %len_ptr_$_505, i32 -1
 %len_$_507 = load i64, i64* %len_ptr_$_506
 %cnd_$_508 = icmp sle i64 %len_$_507, %res_$_501
 br i1 %cnd_$_508, label %thn_$_503, label %mrg_$_504
thn_$_503:
 call i64 @arrInxError (i64 %res_$_501)
 br label %mrg_$_504
mrg_$_504:
 %array_ptr_$_509 = bitcast i8* %load_$_502 to i64*
 %entry_ptr_$_510 = getelementptr i64, i64* %array_ptr_$_509, i64 %res_$_501
 store i64 %res_$_498, i64* %entry_ptr_$_510
 br label %mrg_$_486
els_$_485:
 %var_ptr_$_515 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_516 = load i8*, i8** %var_ptr_$_515
 %var_ptr_$_517 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_518 = load i64, i64* %var_ptr_$_517
 %ret_$_519 = call i8* @substring (i8* null, i8* %res_$_516, i64 %res_$_518, i64 1)
 %temp_$_521 = bitcast { i64, [1 x i8] }* @str_$_520 to i8*
 %temp_$_522 = call i64 @stringEqual (i8* %ret_$_519, i8* %temp_$_521)
 %cnd_$_523 = icmp ne i64 %temp_$_522, 0
 br i1 %cnd_$_523, label %thn_$_511, label %els_$_512
thn_$_511:
 %var_ptr_$_524 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 17
 %res_$_525 = load i64, i64* %var_ptr_$_524
 %var_ptr_$_526 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_527 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_528 = load i64, i64* %var_ptr_$_527
 %load_$_529 = load i8*, i8** %var_ptr_$_526
 %len_ptr_$_532 = bitcast i8* %load_$_529 to i64*
 %len_ptr_$_533 = getelementptr i64, i64* %len_ptr_$_532, i32 -1
 %len_$_534 = load i64, i64* %len_ptr_$_533
 %cnd_$_535 = icmp sle i64 %len_$_534, %res_$_528
 br i1 %cnd_$_535, label %thn_$_530, label %mrg_$_531
thn_$_530:
 call i64 @arrInxError (i64 %res_$_528)
 br label %mrg_$_531
mrg_$_531:
 %array_ptr_$_536 = bitcast i8* %load_$_529 to i64*
 %entry_ptr_$_537 = getelementptr i64, i64* %array_ptr_$_536, i64 %res_$_528
 store i64 %res_$_525, i64* %entry_ptr_$_537
 br label %mrg_$_513
els_$_512:
 %var_ptr_$_542 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_543 = load i8*, i8** %var_ptr_$_542
 %var_ptr_$_544 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_545 = load i64, i64* %var_ptr_$_544
 %ret_$_546 = call i8* @substring (i8* null, i8* %res_$_543, i64 %res_$_545, i64 1)
 %temp_$_548 = bitcast { i64, [1 x i8] }* @str_$_547 to i8*
 %temp_$_549 = call i64 @stringEqual (i8* %ret_$_546, i8* %temp_$_548)
 %cnd_$_550 = icmp ne i64 %temp_$_549, 0
 br i1 %cnd_$_550, label %thn_$_538, label %els_$_539
thn_$_538:
 %var_ptr_$_551 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 16
 %res_$_552 = load i64, i64* %var_ptr_$_551
 %var_ptr_$_553 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_554 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_555 = load i64, i64* %var_ptr_$_554
 %load_$_556 = load i8*, i8** %var_ptr_$_553
 %len_ptr_$_559 = bitcast i8* %load_$_556 to i64*
 %len_ptr_$_560 = getelementptr i64, i64* %len_ptr_$_559, i32 -1
 %len_$_561 = load i64, i64* %len_ptr_$_560
 %cnd_$_562 = icmp sle i64 %len_$_561, %res_$_555
 br i1 %cnd_$_562, label %thn_$_557, label %mrg_$_558
thn_$_557:
 call i64 @arrInxError (i64 %res_$_555)
 br label %mrg_$_558
mrg_$_558:
 %array_ptr_$_563 = bitcast i8* %load_$_556 to i64*
 %entry_ptr_$_564 = getelementptr i64, i64* %array_ptr_$_563, i64 %res_$_555
 store i64 %res_$_552, i64* %entry_ptr_$_564
 br label %mrg_$_540
els_$_539:
 %var_ptr_$_569 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_570 = load i8*, i8** %var_ptr_$_569
 %var_ptr_$_571 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_572 = load i64, i64* %var_ptr_$_571
 %ret_$_573 = call i8* @substring (i8* null, i8* %res_$_570, i64 %res_$_572, i64 1)
 %temp_$_575 = bitcast { i64, [1 x i8] }* @str_$_574 to i8*
 %temp_$_576 = call i64 @stringEqual (i8* %ret_$_573, i8* %temp_$_575)
 %cnd_$_577 = icmp ne i64 %temp_$_576, 0
 br i1 %cnd_$_577, label %thn_$_565, label %els_$_566
thn_$_565:
 %var_ptr_$_578 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 13
 %res_$_579 = load i64, i64* %var_ptr_$_578
 %var_ptr_$_580 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_581 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_582 = load i64, i64* %var_ptr_$_581
 %load_$_583 = load i8*, i8** %var_ptr_$_580
 %len_ptr_$_586 = bitcast i8* %load_$_583 to i64*
 %len_ptr_$_587 = getelementptr i64, i64* %len_ptr_$_586, i32 -1
 %len_$_588 = load i64, i64* %len_ptr_$_587
 %cnd_$_589 = icmp sle i64 %len_$_588, %res_$_582
 br i1 %cnd_$_589, label %thn_$_584, label %mrg_$_585
thn_$_584:
 call i64 @arrInxError (i64 %res_$_582)
 br label %mrg_$_585
mrg_$_585:
 %array_ptr_$_590 = bitcast i8* %load_$_583 to i64*
 %entry_ptr_$_591 = getelementptr i64, i64* %array_ptr_$_590, i64 %res_$_582
 store i64 %res_$_579, i64* %entry_ptr_$_591
 br label %mrg_$_567
els_$_566:
 %var_ptr_$_596 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_597 = load i8*, i8** %var_ptr_$_596
 %var_ptr_$_598 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_599 = load i64, i64* %var_ptr_$_598
 %ret_$_600 = call i8* @substring (i8* null, i8* %res_$_597, i64 %res_$_599, i64 1)
 %temp_$_602 = bitcast { i64, [1 x i8] }* @str_$_601 to i8*
 %temp_$_603 = call i64 @stringEqual (i8* %ret_$_600, i8* %temp_$_602)
 %cnd_$_604 = icmp ne i64 %temp_$_603, 0
 br i1 %cnd_$_604, label %thn_$_592, label %els_$_593
thn_$_592:
 %var_ptr_$_605 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 12
 %res_$_606 = load i64, i64* %var_ptr_$_605
 %var_ptr_$_607 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_608 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_609 = load i64, i64* %var_ptr_$_608
 %load_$_610 = load i8*, i8** %var_ptr_$_607
 %len_ptr_$_613 = bitcast i8* %load_$_610 to i64*
 %len_ptr_$_614 = getelementptr i64, i64* %len_ptr_$_613, i32 -1
 %len_$_615 = load i64, i64* %len_ptr_$_614
 %cnd_$_616 = icmp sle i64 %len_$_615, %res_$_609
 br i1 %cnd_$_616, label %thn_$_611, label %mrg_$_612
thn_$_611:
 call i64 @arrInxError (i64 %res_$_609)
 br label %mrg_$_612
mrg_$_612:
 %array_ptr_$_617 = bitcast i8* %load_$_610 to i64*
 %entry_ptr_$_618 = getelementptr i64, i64* %array_ptr_$_617, i64 %res_$_609
 store i64 %res_$_606, i64* %entry_ptr_$_618
 br label %mrg_$_594
els_$_593:
 %var_ptr_$_623 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_624 = load i8*, i8** %var_ptr_$_623
 %var_ptr_$_625 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_626 = load i64, i64* %var_ptr_$_625
 %ret_$_627 = call i8* @substring (i8* null, i8* %res_$_624, i64 %res_$_626, i64 1)
 %temp_$_629 = bitcast { i64, [1 x i8] }* @str_$_628 to i8*
 %temp_$_630 = call i64 @stringEqual (i8* %ret_$_627, i8* %temp_$_629)
 %cnd_$_631 = icmp ne i64 %temp_$_630, 0
 br i1 %cnd_$_631, label %thn_$_619, label %els_$_620
thn_$_619:
 %var_ptr_$_632 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_633 = load i64, i64* %var_ptr_$_632
 call void @push$14 (%$locals_tigermain* %locals_$_2, i64 %res_$_633)
 %var_ptr_$_634 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 15
 %res_$_635 = load i64, i64* %var_ptr_$_634
 %var_ptr_$_636 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_637 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_638 = load i64, i64* %var_ptr_$_637
 %load_$_639 = load i8*, i8** %var_ptr_$_636
 %len_ptr_$_642 = bitcast i8* %load_$_639 to i64*
 %len_ptr_$_643 = getelementptr i64, i64* %len_ptr_$_642, i32 -1
 %len_$_644 = load i64, i64* %len_ptr_$_643
 %cnd_$_645 = icmp sle i64 %len_$_644, %res_$_638
 br i1 %cnd_$_645, label %thn_$_640, label %mrg_$_641
thn_$_640:
 call i64 @arrInxError (i64 %res_$_638)
 br label %mrg_$_641
mrg_$_641:
 %array_ptr_$_646 = bitcast i8* %load_$_639 to i64*
 %entry_ptr_$_647 = getelementptr i64, i64* %array_ptr_$_646, i64 %res_$_638
 store i64 %res_$_635, i64* %entry_ptr_$_647
 br label %mrg_$_621
els_$_620:
 %var_ptr_$_652 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_653 = load i8*, i8** %var_ptr_$_652
 %var_ptr_$_654 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_655 = load i64, i64* %var_ptr_$_654
 %ret_$_656 = call i8* @substring (i8* null, i8* %res_$_653, i64 %res_$_655, i64 1)
 %temp_$_658 = bitcast { i64, [1 x i8] }* @str_$_657 to i8*
 %temp_$_659 = call i64 @stringEqual (i8* %ret_$_656, i8* %temp_$_658)
 %cnd_$_660 = icmp ne i64 %temp_$_659, 0
 br i1 %cnd_$_660, label %thn_$_648, label %els_$_649
thn_$_648:
 %temp_$_661 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 1
 store i64 0, i64* %temp_$_661
 %ret_$_691 = call i64 @pop$15 (%$locals_tigermain* %locals_$_2)
 %var_ptr_$_692 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 1
 store i64 %ret_$_691, i64* %var_ptr_$_692
 %var_ptr_$_677 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 14
 %res_$_678 = load i64, i64* %var_ptr_$_677
 %var_ptr_$_679 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_680 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_681 = load i64, i64* %var_ptr_$_680
 %load_$_682 = load i8*, i8** %var_ptr_$_679
 %len_ptr_$_685 = bitcast i8* %load_$_682 to i64*
 %len_ptr_$_686 = getelementptr i64, i64* %len_ptr_$_685, i32 -1
 %len_$_687 = load i64, i64* %len_ptr_$_686
 %cnd_$_688 = icmp sle i64 %len_$_687, %res_$_681
 br i1 %cnd_$_688, label %thn_$_683, label %mrg_$_684
thn_$_683:
 call i64 @arrInxError (i64 %res_$_681)
 br label %mrg_$_684
mrg_$_684:
 %array_ptr_$_689 = bitcast i8* %load_$_682 to i64*
 %entry_ptr_$_690 = getelementptr i64, i64* %array_ptr_$_689, i64 %res_$_681
 store i64 %res_$_678, i64* %entry_ptr_$_690
 %var_ptr_$_662 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 1
 %res_$_663 = load i64, i64* %var_ptr_$_662
 %var_ptr_$_664 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_665 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_666 = load i64, i64* %var_ptr_$_665
 %temp_$_667 = add i64 %res_$_666, 1
 %load_$_668 = load i8*, i8** %var_ptr_$_664
 %len_ptr_$_671 = bitcast i8* %load_$_668 to i64*
 %len_ptr_$_672 = getelementptr i64, i64* %len_ptr_$_671, i32 -1
 %len_$_673 = load i64, i64* %len_ptr_$_672
 %cnd_$_674 = icmp sle i64 %len_$_673, %temp_$_667
 br i1 %cnd_$_674, label %thn_$_669, label %mrg_$_670
thn_$_669:
 call i64 @arrInxError (i64 %temp_$_667)
 br label %mrg_$_670
mrg_$_670:
 %array_ptr_$_675 = bitcast i8* %load_$_668 to i64*
 %entry_ptr_$_676 = getelementptr i64, i64* %array_ptr_$_675, i64 %temp_$_667
 store i64 %res_$_663, i64* %entry_ptr_$_676
 %var_ptr_$_693 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_694 = load i64, i64* %var_ptr_$_693
 %var_ptr_$_695 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_696 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 1
 %res_$_697 = load i64, i64* %var_ptr_$_696
 %temp_$_698 = add i64 %res_$_697, 1
 %load_$_699 = load i8*, i8** %var_ptr_$_695
 %len_ptr_$_702 = bitcast i8* %load_$_699 to i64*
 %len_ptr_$_703 = getelementptr i64, i64* %len_ptr_$_702, i32 -1
 %len_$_704 = load i64, i64* %len_ptr_$_703
 %cnd_$_705 = icmp sle i64 %len_$_704, %temp_$_698
 br i1 %cnd_$_705, label %thn_$_700, label %mrg_$_701
thn_$_700:
 call i64 @arrInxError (i64 %temp_$_698)
 br label %mrg_$_701
mrg_$_701:
 %array_ptr_$_706 = bitcast i8* %load_$_699 to i64*
 %entry_ptr_$_707 = getelementptr i64, i64* %array_ptr_$_706, i64 %temp_$_698
 store i64 %res_$_694, i64* %entry_ptr_$_707
 br label %mrg_$_650
els_$_649:
 %var_ptr_$_708 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 20
 %res_$_709 = load i64, i64* %var_ptr_$_708
 %var_ptr_$_710 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_711 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 2
 %res_$_712 = load i64, i64* %var_ptr_$_711
 %load_$_713 = load i8*, i8** %var_ptr_$_710
 %len_ptr_$_716 = bitcast i8* %load_$_713 to i64*
 %len_ptr_$_717 = getelementptr i64, i64* %len_ptr_$_716, i32 -1
 %len_$_718 = load i64, i64* %len_ptr_$_717
 %cnd_$_719 = icmp sle i64 %len_$_718, %res_$_712
 br i1 %cnd_$_719, label %thn_$_714, label %mrg_$_715
thn_$_714:
 call i64 @arrInxError (i64 %res_$_712)
 br label %mrg_$_715
mrg_$_715:
 %array_ptr_$_720 = bitcast i8* %load_$_713 to i64*
 %entry_ptr_$_721 = getelementptr i64, i64* %array_ptr_$_720, i64 %res_$_712
 store i64 %res_$_709, i64* %entry_ptr_$_721
 br label %mrg_$_650
mrg_$_650:
 br label %mrg_$_621
mrg_$_621:
 br label %mrg_$_594
mrg_$_594:
 br label %mrg_$_567
mrg_$_567:
 br label %mrg_$_540
mrg_$_540:
 br label %mrg_$_513
mrg_$_513:
 br label %mrg_$_486
mrg_$_486:
 br label %mrg_$_459
mrg_$_459:
 %var_ptr_$_722 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 %res_$_723 = load i64, i64* %var_ptr_$_722
 %temp_$_724 = add i64 %res_$_723, 1
 %var_ptr_$_725 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 3
 store i64 %temp_$_724, i64* %var_ptr_$_725
 br label %test_$_440
mrg_$_442:
 br label %test_$_91
test_$_91:
 %var_ptr_$_94 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_95 = load i64, i64* %var_ptr_$_94
 %var_ptr_$_97 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 6
 %res_$_98 = load i8*, i8** %var_ptr_$_97
 %ret_$_99 = call i64 @size (i8* null, i8* %res_$_98)
 %temp_$_100 = mul i64 %ret_$_99, 2
 %temp_$_101 = icmp slt i64 %res_$_95, %temp_$_100
 %temp_$_102 = zext i1 %temp_$_101 to i64
 %cnd_$_103 = icmp ne i64 %temp_$_102, 0
 br i1 %cnd_$_103, label %body_$_92, label %mrg_$_93
body_$_92:
 %var_ptr_$_107 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_108 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_109 = load i64, i64* %var_ptr_$_108
 %load_$_110 = load i8*, i8** %var_ptr_$_107
 %len_ptr_$_113 = bitcast i8* %load_$_110 to i64*
 %len_ptr_$_114 = getelementptr i64, i64* %len_ptr_$_113, i32 -1
 %len_$_115 = load i64, i64* %len_ptr_$_114
 %cnd_$_116 = icmp sle i64 %len_$_115, %res_$_109
 br i1 %cnd_$_116, label %thn_$_111, label %mrg_$_112
thn_$_111:
 call i64 @arrInxError (i64 %res_$_109)
 br label %mrg_$_112
mrg_$_112:
 %array_ptr_$_117 = bitcast i8* %load_$_110 to i64*
 %entry_ptr_$_118 = getelementptr i64, i64* %array_ptr_$_117, i64 %res_$_109
 %res_$_119 = load i64, i64* %entry_ptr_$_118
 %var_ptr_$_120 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 19
 %res_$_121 = load i64, i64* %var_ptr_$_120
 %temp_$_122 = icmp eq i64 %res_$_119, %res_$_121
 %temp_$_123 = zext i1 %temp_$_122 to i64
 %cnd_$_124 = icmp ne i64 %temp_$_123, 0
 br i1 %cnd_$_124, label %thn_$_104, label %els_$_105
thn_$_104:
 %var_ptr_$_125 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 10
 %var_ptr_$_126 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 %res_$_127 = load i64, i64* %var_ptr_$_126
 %load_$_128 = load i8*, i8** %var_ptr_$_125
 %len_ptr_$_131 = bitcast i8* %load_$_128 to i64*
 %len_ptr_$_132 = getelementptr i64, i64* %len_ptr_$_131, i32 -1
 %len_$_133 = load i64, i64* %len_ptr_$_132
 %cnd_$_134 = icmp sle i64 %len_$_133, %res_$_127
 br i1 %cnd_$_134, label %thn_$_129, label %mrg_$_130
thn_$_129:
 call i64 @arrInxError (i64 %res_$_127)
 br label %mrg_$_130
mrg_$_130:
 %array_ptr_$_135 = bitcast i8* %load_$_128 to i64*
 %entry_ptr_$_136 = getelementptr i64, i64* %array_ptr_$_135, i64 %res_$_127
 %res_$_137 = load i64, i64* %entry_ptr_$_136
 %temp_$_138 = add i64 %res_$_137, 1
 %var_ptr_$_139 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 10
 %var_ptr_$_140 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 %res_$_141 = load i64, i64* %var_ptr_$_140
 %load_$_142 = load i8*, i8** %var_ptr_$_139
 %len_ptr_$_145 = bitcast i8* %load_$_142 to i64*
 %len_ptr_$_146 = getelementptr i64, i64* %len_ptr_$_145, i32 -1
 %len_$_147 = load i64, i64* %len_ptr_$_146
 %cnd_$_148 = icmp sle i64 %len_$_147, %res_$_141
 br i1 %cnd_$_148, label %thn_$_143, label %mrg_$_144
thn_$_143:
 call i64 @arrInxError (i64 %res_$_141)
 br label %mrg_$_144
mrg_$_144:
 %array_ptr_$_149 = bitcast i8* %load_$_142 to i64*
 %entry_ptr_$_150 = getelementptr i64, i64* %array_ptr_$_149, i64 %res_$_141
 store i64 %temp_$_138, i64* %entry_ptr_$_150
 br label %mrg_$_106
els_$_105:
 %var_ptr_$_154 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_155 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_156 = load i64, i64* %var_ptr_$_155
 %load_$_157 = load i8*, i8** %var_ptr_$_154
 %len_ptr_$_160 = bitcast i8* %load_$_157 to i64*
 %len_ptr_$_161 = getelementptr i64, i64* %len_ptr_$_160, i32 -1
 %len_$_162 = load i64, i64* %len_ptr_$_161
 %cnd_$_163 = icmp sle i64 %len_$_162, %res_$_156
 br i1 %cnd_$_163, label %thn_$_158, label %mrg_$_159
thn_$_158:
 call i64 @arrInxError (i64 %res_$_156)
 br label %mrg_$_159
mrg_$_159:
 %array_ptr_$_164 = bitcast i8* %load_$_157 to i64*
 %entry_ptr_$_165 = getelementptr i64, i64* %array_ptr_$_164, i64 %res_$_156
 %res_$_166 = load i64, i64* %entry_ptr_$_165
 %var_ptr_$_167 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 18
 %res_$_168 = load i64, i64* %var_ptr_$_167
 %temp_$_169 = icmp eq i64 %res_$_166, %res_$_168
 %temp_$_170 = zext i1 %temp_$_169 to i64
 %cnd_$_171 = icmp ne i64 %temp_$_170, 0
 br i1 %cnd_$_171, label %thn_$_151, label %els_$_152
thn_$_151:
 %var_ptr_$_172 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 10
 %var_ptr_$_173 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 %res_$_174 = load i64, i64* %var_ptr_$_173
 %load_$_175 = load i8*, i8** %var_ptr_$_172
 %len_ptr_$_178 = bitcast i8* %load_$_175 to i64*
 %len_ptr_$_179 = getelementptr i64, i64* %len_ptr_$_178, i32 -1
 %len_$_180 = load i64, i64* %len_ptr_$_179
 %cnd_$_181 = icmp sle i64 %len_$_180, %res_$_174
 br i1 %cnd_$_181, label %thn_$_176, label %mrg_$_177
thn_$_176:
 call i64 @arrInxError (i64 %res_$_174)
 br label %mrg_$_177
mrg_$_177:
 %array_ptr_$_182 = bitcast i8* %load_$_175 to i64*
 %entry_ptr_$_183 = getelementptr i64, i64* %array_ptr_$_182, i64 %res_$_174
 %res_$_184 = load i64, i64* %entry_ptr_$_183
 %temp_$_185 = sub i64 %res_$_184, 1
 %var_ptr_$_186 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 10
 %var_ptr_$_187 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 %res_$_188 = load i64, i64* %var_ptr_$_187
 %load_$_189 = load i8*, i8** %var_ptr_$_186
 %len_ptr_$_192 = bitcast i8* %load_$_189 to i64*
 %len_ptr_$_193 = getelementptr i64, i64* %len_ptr_$_192, i32 -1
 %len_$_194 = load i64, i64* %len_ptr_$_193
 %cnd_$_195 = icmp sle i64 %len_$_194, %res_$_188
 br i1 %cnd_$_195, label %thn_$_190, label %mrg_$_191
thn_$_190:
 call i64 @arrInxError (i64 %res_$_188)
 br label %mrg_$_191
mrg_$_191:
 %array_ptr_$_196 = bitcast i8* %load_$_189 to i64*
 %entry_ptr_$_197 = getelementptr i64, i64* %array_ptr_$_196, i64 %res_$_188
 store i64 %temp_$_185, i64* %entry_ptr_$_197
 br label %mrg_$_153
els_$_152:
 %var_ptr_$_201 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_202 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_203 = load i64, i64* %var_ptr_$_202
 %load_$_204 = load i8*, i8** %var_ptr_$_201
 %len_ptr_$_207 = bitcast i8* %load_$_204 to i64*
 %len_ptr_$_208 = getelementptr i64, i64* %len_ptr_$_207, i32 -1
 %len_$_209 = load i64, i64* %len_ptr_$_208
 %cnd_$_210 = icmp sle i64 %len_$_209, %res_$_203
 br i1 %cnd_$_210, label %thn_$_205, label %mrg_$_206
thn_$_205:
 call i64 @arrInxError (i64 %res_$_203)
 br label %mrg_$_206
mrg_$_206:
 %array_ptr_$_211 = bitcast i8* %load_$_204 to i64*
 %entry_ptr_$_212 = getelementptr i64, i64* %array_ptr_$_211, i64 %res_$_203
 %res_$_213 = load i64, i64* %entry_ptr_$_212
 %var_ptr_$_214 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 17
 %res_$_215 = load i64, i64* %var_ptr_$_214
 %temp_$_216 = icmp eq i64 %res_$_213, %res_$_215
 %temp_$_217 = zext i1 %temp_$_216 to i64
 %cnd_$_218 = icmp ne i64 %temp_$_217, 0
 br i1 %cnd_$_218, label %thn_$_198, label %els_$_199
thn_$_198:
 %var_ptr_$_219 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 %res_$_220 = load i64, i64* %var_ptr_$_219
 %temp_$_221 = add i64 %res_$_220, 1
 %var_ptr_$_222 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 store i64 %temp_$_221, i64* %var_ptr_$_222
 br label %mrg_$_200
els_$_199:
 %var_ptr_$_226 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_227 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_228 = load i64, i64* %var_ptr_$_227
 %load_$_229 = load i8*, i8** %var_ptr_$_226
 %len_ptr_$_232 = bitcast i8* %load_$_229 to i64*
 %len_ptr_$_233 = getelementptr i64, i64* %len_ptr_$_232, i32 -1
 %len_$_234 = load i64, i64* %len_ptr_$_233
 %cnd_$_235 = icmp sle i64 %len_$_234, %res_$_228
 br i1 %cnd_$_235, label %thn_$_230, label %mrg_$_231
thn_$_230:
 call i64 @arrInxError (i64 %res_$_228)
 br label %mrg_$_231
mrg_$_231:
 %array_ptr_$_236 = bitcast i8* %load_$_229 to i64*
 %entry_ptr_$_237 = getelementptr i64, i64* %array_ptr_$_236, i64 %res_$_228
 %res_$_238 = load i64, i64* %entry_ptr_$_237
 %var_ptr_$_239 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 16
 %res_$_240 = load i64, i64* %var_ptr_$_239
 %temp_$_241 = icmp eq i64 %res_$_238, %res_$_240
 %temp_$_242 = zext i1 %temp_$_241 to i64
 %cnd_$_243 = icmp ne i64 %temp_$_242, 0
 br i1 %cnd_$_243, label %thn_$_223, label %els_$_224
thn_$_223:
 %var_ptr_$_244 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 %res_$_245 = load i64, i64* %var_ptr_$_244
 %temp_$_246 = sub i64 %res_$_245, 1
 %var_ptr_$_247 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 store i64 %temp_$_246, i64* %var_ptr_$_247
 br label %mrg_$_225
els_$_224:
 %var_ptr_$_251 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_252 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_253 = load i64, i64* %var_ptr_$_252
 %load_$_254 = load i8*, i8** %var_ptr_$_251
 %len_ptr_$_257 = bitcast i8* %load_$_254 to i64*
 %len_ptr_$_258 = getelementptr i64, i64* %len_ptr_$_257, i32 -1
 %len_$_259 = load i64, i64* %len_ptr_$_258
 %cnd_$_260 = icmp sle i64 %len_$_259, %res_$_253
 br i1 %cnd_$_260, label %thn_$_255, label %mrg_$_256
thn_$_255:
 call i64 @arrInxError (i64 %res_$_253)
 br label %mrg_$_256
mrg_$_256:
 %array_ptr_$_261 = bitcast i8* %load_$_254 to i64*
 %entry_ptr_$_262 = getelementptr i64, i64* %array_ptr_$_261, i64 %res_$_253
 %res_$_263 = load i64, i64* %entry_ptr_$_262
 %var_ptr_$_264 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 13
 %res_$_265 = load i64, i64* %var_ptr_$_264
 %temp_$_266 = icmp eq i64 %res_$_263, %res_$_265
 %temp_$_267 = zext i1 %temp_$_266 to i64
 %cnd_$_268 = icmp ne i64 %temp_$_267, 0
 br i1 %cnd_$_268, label %thn_$_248, label %els_$_249
thn_$_248:
 %var_ptr_$_271 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 10
 %var_ptr_$_272 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 %res_$_273 = load i64, i64* %var_ptr_$_272
 %load_$_274 = load i8*, i8** %var_ptr_$_271
 %len_ptr_$_277 = bitcast i8* %load_$_274 to i64*
 %len_ptr_$_278 = getelementptr i64, i64* %len_ptr_$_277, i32 -1
 %len_$_279 = load i64, i64* %len_ptr_$_278
 %cnd_$_280 = icmp sle i64 %len_$_279, %res_$_273
 br i1 %cnd_$_280, label %thn_$_275, label %mrg_$_276
thn_$_275:
 call i64 @arrInxError (i64 %res_$_273)
 br label %mrg_$_276
mrg_$_276:
 %array_ptr_$_281 = bitcast i8* %load_$_274 to i64*
 %entry_ptr_$_282 = getelementptr i64, i64* %array_ptr_$_281, i64 %res_$_273
 %res_$_283 = load i64, i64* %entry_ptr_$_282
 %ret_$_284 = call i8* @chr (i8* null, i64 %res_$_283)
 call void @print (i8* null, i8* %ret_$_284)
 br label %mrg_$_250
els_$_249:
 %var_ptr_$_288 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_289 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_290 = load i64, i64* %var_ptr_$_289
 %load_$_291 = load i8*, i8** %var_ptr_$_288
 %len_ptr_$_294 = bitcast i8* %load_$_291 to i64*
 %len_ptr_$_295 = getelementptr i64, i64* %len_ptr_$_294, i32 -1
 %len_$_296 = load i64, i64* %len_ptr_$_295
 %cnd_$_297 = icmp sle i64 %len_$_296, %res_$_290
 br i1 %cnd_$_297, label %thn_$_292, label %mrg_$_293
thn_$_292:
 call i64 @arrInxError (i64 %res_$_290)
 br label %mrg_$_293
mrg_$_293:
 %array_ptr_$_298 = bitcast i8* %load_$_291 to i64*
 %entry_ptr_$_299 = getelementptr i64, i64* %array_ptr_$_298, i64 %res_$_290
 %res_$_300 = load i64, i64* %entry_ptr_$_299
 %var_ptr_$_301 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 12
 %res_$_302 = load i64, i64* %var_ptr_$_301
 %temp_$_303 = icmp eq i64 %res_$_300, %res_$_302
 %temp_$_304 = zext i1 %temp_$_303 to i64
 %cnd_$_305 = icmp ne i64 %temp_$_304, 0
 br i1 %cnd_$_305, label %thn_$_285, label %els_$_286
thn_$_285:
 %ret_$_308 = call i8* @getChar (i8* null)
 %ret_$_309 = call i64 @ord (i8* null, i8* %ret_$_308)
 %var_ptr_$_310 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 10
 %var_ptr_$_311 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 %res_$_312 = load i64, i64* %var_ptr_$_311
 %load_$_313 = load i8*, i8** %var_ptr_$_310
 %len_ptr_$_316 = bitcast i8* %load_$_313 to i64*
 %len_ptr_$_317 = getelementptr i64, i64* %len_ptr_$_316, i32 -1
 %len_$_318 = load i64, i64* %len_ptr_$_317
 %cnd_$_319 = icmp sle i64 %len_$_318, %res_$_312
 br i1 %cnd_$_319, label %thn_$_314, label %mrg_$_315
thn_$_314:
 call i64 @arrInxError (i64 %res_$_312)
 br label %mrg_$_315
mrg_$_315:
 %array_ptr_$_320 = bitcast i8* %load_$_313 to i64*
 %entry_ptr_$_321 = getelementptr i64, i64* %array_ptr_$_320, i64 %res_$_312
 store i64 %ret_$_309, i64* %entry_ptr_$_321
 br label %mrg_$_287
els_$_286:
 %var_ptr_$_329 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_330 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_331 = load i64, i64* %var_ptr_$_330
 %load_$_332 = load i8*, i8** %var_ptr_$_329
 %len_ptr_$_335 = bitcast i8* %load_$_332 to i64*
 %len_ptr_$_336 = getelementptr i64, i64* %len_ptr_$_335, i32 -1
 %len_$_337 = load i64, i64* %len_ptr_$_336
 %cnd_$_338 = icmp sle i64 %len_$_337, %res_$_331
 br i1 %cnd_$_338, label %thn_$_333, label %mrg_$_334
thn_$_333:
 call i64 @arrInxError (i64 %res_$_331)
 br label %mrg_$_334
mrg_$_334:
 %array_ptr_$_339 = bitcast i8* %load_$_332 to i64*
 %entry_ptr_$_340 = getelementptr i64, i64* %array_ptr_$_339, i64 %res_$_331
 %res_$_341 = load i64, i64* %entry_ptr_$_340
 %var_ptr_$_342 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 15
 %res_$_343 = load i64, i64* %var_ptr_$_342
 %temp_$_344 = icmp eq i64 %res_$_341, %res_$_343
 %temp_$_345 = zext i1 %temp_$_344 to i64
 %cnd_$_346 = icmp ne i64 %temp_$_345, 0
 br i1 %cnd_$_346, label %thn_$_326, label %els_$_327
thn_$_326:
 %var_ptr_$_347 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 10
 %var_ptr_$_348 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 %res_$_349 = load i64, i64* %var_ptr_$_348
 %load_$_350 = load i8*, i8** %var_ptr_$_347
 %len_ptr_$_353 = bitcast i8* %load_$_350 to i64*
 %len_ptr_$_354 = getelementptr i64, i64* %len_ptr_$_353, i32 -1
 %len_$_355 = load i64, i64* %len_ptr_$_354
 %cnd_$_356 = icmp sle i64 %len_$_355, %res_$_349
 br i1 %cnd_$_356, label %thn_$_351, label %mrg_$_352
thn_$_351:
 call i64 @arrInxError (i64 %res_$_349)
 br label %mrg_$_352
mrg_$_352:
 %array_ptr_$_357 = bitcast i8* %load_$_350 to i64*
 %entry_ptr_$_358 = getelementptr i64, i64* %array_ptr_$_357, i64 %res_$_349
 %res_$_359 = load i64, i64* %entry_ptr_$_358
 %temp_$_360 = icmp eq i64 %res_$_359, 0
 %temp_$_361 = zext i1 %temp_$_360 to i64
 store i64 %temp_$_361, i64* %temp_$_325
 br label %mrg_$_328
els_$_327:
 store i64 0, i64* %temp_$_325
 br label %mrg_$_328
mrg_$_328:
 %res_$_362 = load i64, i64* %temp_$_325
 %cnd_$_363 = icmp ne i64 %res_$_362, 0
 br i1 %cnd_$_363, label %thn_$_322, label %els_$_323
thn_$_322:
 %var_ptr_$_364 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_365 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_366 = load i64, i64* %var_ptr_$_365
 %temp_$_367 = add i64 %res_$_366, 1
 %load_$_368 = load i8*, i8** %var_ptr_$_364
 %len_ptr_$_371 = bitcast i8* %load_$_368 to i64*
 %len_ptr_$_372 = getelementptr i64, i64* %len_ptr_$_371, i32 -1
 %len_$_373 = load i64, i64* %len_ptr_$_372
 %cnd_$_374 = icmp sle i64 %len_$_373, %temp_$_367
 br i1 %cnd_$_374, label %thn_$_369, label %mrg_$_370
thn_$_369:
 call i64 @arrInxError (i64 %temp_$_367)
 br label %mrg_$_370
mrg_$_370:
 %array_ptr_$_375 = bitcast i8* %load_$_368 to i64*
 %entry_ptr_$_376 = getelementptr i64, i64* %array_ptr_$_375, i64 %temp_$_367
 %res_$_377 = load i64, i64* %entry_ptr_$_376
 %var_ptr_$_378 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 store i64 %res_$_377, i64* %var_ptr_$_378
 br label %mrg_$_324
els_$_323:
 %var_ptr_$_385 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_386 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_387 = load i64, i64* %var_ptr_$_386
 %load_$_388 = load i8*, i8** %var_ptr_$_385
 %len_ptr_$_391 = bitcast i8* %load_$_388 to i64*
 %len_ptr_$_392 = getelementptr i64, i64* %len_ptr_$_391, i32 -1
 %len_$_393 = load i64, i64* %len_ptr_$_392
 %cnd_$_394 = icmp sle i64 %len_$_393, %res_$_387
 br i1 %cnd_$_394, label %thn_$_389, label %mrg_$_390
thn_$_389:
 call i64 @arrInxError (i64 %res_$_387)
 br label %mrg_$_390
mrg_$_390:
 %array_ptr_$_395 = bitcast i8* %load_$_388 to i64*
 %entry_ptr_$_396 = getelementptr i64, i64* %array_ptr_$_395, i64 %res_$_387
 %res_$_397 = load i64, i64* %entry_ptr_$_396
 %var_ptr_$_398 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 14
 %res_$_399 = load i64, i64* %var_ptr_$_398
 %temp_$_400 = icmp eq i64 %res_$_397, %res_$_399
 %temp_$_401 = zext i1 %temp_$_400 to i64
 %cnd_$_402 = icmp ne i64 %temp_$_401, 0
 br i1 %cnd_$_402, label %thn_$_382, label %els_$_383
thn_$_382:
 %var_ptr_$_403 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 10
 %var_ptr_$_404 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 4
 %res_$_405 = load i64, i64* %var_ptr_$_404
 %load_$_406 = load i8*, i8** %var_ptr_$_403
 %len_ptr_$_409 = bitcast i8* %load_$_406 to i64*
 %len_ptr_$_410 = getelementptr i64, i64* %len_ptr_$_409, i32 -1
 %len_$_411 = load i64, i64* %len_ptr_$_410
 %cnd_$_412 = icmp sle i64 %len_$_411, %res_$_405
 br i1 %cnd_$_412, label %thn_$_407, label %mrg_$_408
thn_$_407:
 call i64 @arrInxError (i64 %res_$_405)
 br label %mrg_$_408
mrg_$_408:
 %array_ptr_$_413 = bitcast i8* %load_$_406 to i64*
 %entry_ptr_$_414 = getelementptr i64, i64* %array_ptr_$_413, i64 %res_$_405
 %res_$_415 = load i64, i64* %entry_ptr_$_414
 %temp_$_416 = icmp ne i64 %res_$_415, 0
 %temp_$_417 = zext i1 %temp_$_416 to i64
 store i64 %temp_$_417, i64* %temp_$_381
 br label %mrg_$_384
els_$_383:
 store i64 0, i64* %temp_$_381
 br label %mrg_$_384
mrg_$_384:
 %res_$_418 = load i64, i64* %temp_$_381
 %cnd_$_419 = icmp ne i64 %res_$_418, 0
 br i1 %cnd_$_419, label %thn_$_379, label %mrg_$_380
thn_$_379:
 %var_ptr_$_420 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 11
 %var_ptr_$_421 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_422 = load i64, i64* %var_ptr_$_421
 %temp_$_423 = add i64 %res_$_422, 1
 %load_$_424 = load i8*, i8** %var_ptr_$_420
 %len_ptr_$_427 = bitcast i8* %load_$_424 to i64*
 %len_ptr_$_428 = getelementptr i64, i64* %len_ptr_$_427, i32 -1
 %len_$_429 = load i64, i64* %len_ptr_$_428
 %cnd_$_430 = icmp sle i64 %len_$_429, %temp_$_423
 br i1 %cnd_$_430, label %thn_$_425, label %mrg_$_426
thn_$_425:
 call i64 @arrInxError (i64 %temp_$_423)
 br label %mrg_$_426
mrg_$_426:
 %array_ptr_$_431 = bitcast i8* %load_$_424 to i64*
 %entry_ptr_$_432 = getelementptr i64, i64* %array_ptr_$_431, i64 %temp_$_423
 %res_$_433 = load i64, i64* %entry_ptr_$_432
 %var_ptr_$_434 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 store i64 %res_$_433, i64* %var_ptr_$_434
 br label %mrg_$_380
mrg_$_380:
 br label %mrg_$_324
mrg_$_324:
 br label %mrg_$_287
mrg_$_287:
 br label %mrg_$_250
mrg_$_250:
 br label %mrg_$_225
mrg_$_225:
 br label %mrg_$_200
mrg_$_200:
 br label %mrg_$_153
mrg_$_153:
 br label %mrg_$_106
mrg_$_106:
 %var_ptr_$_435 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 %res_$_436 = load i64, i64* %var_ptr_$_435
 %temp_$_437 = add i64 %res_$_436, 2
 %var_ptr_$_438 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 5
 store i64 %temp_$_437, i64* %var_ptr_$_438
 br label %test_$_91
mrg_$_93:
 %temp_$_728 = bitcast { i64, [1 x i8] }* @str_$_727 to i8*
 call void @print (i8* null, i8* %temp_$_728)
 ret void
}
