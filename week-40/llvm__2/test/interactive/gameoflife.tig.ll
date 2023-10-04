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

%state$0 = type i64
%states$1 = type i8*
%$locals_switchBoards$10 = type { %$locals_tigermain*, i8* }
%$locals_index$13 = type { %$locals_tigermain*, i64, i64 }
%$locals_numChildren$14 = type { %$locals_tigermain*, i64, i64, i64 }
%$locals_simulateBoard$15 = type { %$locals_tigermain*, i64, i64, i64 }
%$locals_printBoard$16 = type { %$locals_tigermain*, i64, i64 }
%$locals_tigermain = type { i8*, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64 }

@str_$_903 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"Done"}
@str_$_870 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_826 = global { i64, [25 x i8] } {i64 25, [25 x i8] c"Press char for next state"}
@str_$_821 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"Step\0A"}
@str_$_808 = global { i64, [169 x i8] } {i64 169, [169 x i8] c"0000000000000000000000000000000000000000000000000000000010000000000000010000000001100111000000000000000000000000000000000000000000000000000000000000000000000000000000000"}
@str_$_762 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_753 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_748 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"*"}

define void @switchBoards$10 (%$locals_tigermain* %$sl) {
 %locals_$_0 = alloca %$locals_switchBoards$10
 %arg_$_6 = getelementptr %$locals_switchBoards$10, %$locals_switchBoards$10* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_6
 %lnk_$_7 = getelementptr %$locals_switchBoards$10, %$locals_switchBoards$10* %locals_$_0, i32 0, i32 0
 %load_$_8 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_7
 %var_ptr_$_9 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_8, i32 0, i32 10
 %res_$_10 = load i8*, i8** %var_ptr_$_9
 %temp_$_11 = getelementptr %$locals_switchBoards$10, %$locals_switchBoards$10* %locals_$_0, i32 0, i32 1
 store i8* %res_$_10, i8** %temp_$_11
 %lnk_$_12 = getelementptr %$locals_switchBoards$10, %$locals_switchBoards$10* %locals_$_0, i32 0, i32 0
 %load_$_13 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_12
 %var_ptr_$_14 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_13, i32 0, i32 9
 %res_$_15 = load i8*, i8** %var_ptr_$_14
 %lnk_$_16 = getelementptr %$locals_switchBoards$10, %$locals_switchBoards$10* %locals_$_0, i32 0, i32 0
 %load_$_17 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_16
 %var_ptr_$_18 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_17, i32 0, i32 10
 store i8* %res_$_15, i8** %var_ptr_$_18
 %var_ptr_$_19 = getelementptr %$locals_switchBoards$10, %$locals_switchBoards$10* %locals_$_0, i32 0, i32 1
 %res_$_20 = load i8*, i8** %var_ptr_$_19
 %lnk_$_21 = getelementptr %$locals_switchBoards$10, %$locals_switchBoards$10* %locals_$_0, i32 0, i32 0
 %load_$_22 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_21
 %var_ptr_$_23 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_22, i32 0, i32 9
 store i8* %res_$_20, i8** %var_ptr_$_23
 ret void
}

define i64 @index$13 (%$locals_tigermain* %$sl, i64 %x$17, i64 %y$18) {
 %locals_$_1 = alloca %$locals_index$13
 %arg_$_24 = getelementptr %$locals_index$13, %$locals_index$13* %locals_$_1, i32 0, i32 2
 store i64 %y$18, i64* %arg_$_24
 %arg_$_25 = getelementptr %$locals_index$13, %$locals_index$13* %locals_$_1, i32 0, i32 1
 store i64 %x$17, i64* %arg_$_25
 %arg_$_26 = getelementptr %$locals_index$13, %$locals_index$13* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_26
 %var_ptr_$_27 = getelementptr %$locals_index$13, %$locals_index$13* %locals_$_1, i32 0, i32 1
 %res_$_28 = load i64, i64* %var_ptr_$_27
 %var_ptr_$_29 = getelementptr %$locals_index$13, %$locals_index$13* %locals_$_1, i32 0, i32 2
 %res_$_30 = load i64, i64* %var_ptr_$_29
 %lnk_$_31 = getelementptr %$locals_index$13, %$locals_index$13* %locals_$_1, i32 0, i32 0
 %load_$_32 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_31
 %var_ptr_$_33 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_32, i32 0, i32 14
 %res_$_34 = load i64, i64* %var_ptr_$_33
 %temp_$_35 = mul i64 %res_$_30, %res_$_34
 %temp_$_36 = add i64 %res_$_28, %temp_$_35
 ret i64 %temp_$_36
}

define i64 @numChildren$14 (%$locals_tigermain* %$sl, i64 %x$19, i64 %y$20) {
 %temp_$_47 = alloca i64
 %temp_$_43 = alloca i64
 %temp_$_110 = alloca i64
 %temp_$_106 = alloca i64
 %temp_$_169 = alloca i64
 %temp_$_165 = alloca i64
 %temp_$_228 = alloca i64
 %temp_$_224 = alloca i64
 %temp_$_279 = alloca i64
 %temp_$_327 = alloca i64
 %temp_$_371 = alloca i64
 %temp_$_419 = alloca i64
 %locals_$_2 = alloca %$locals_numChildren$14
 %arg_$_37 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 store i64 %y$20, i64* %arg_$_37
 %arg_$_38 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 store i64 %x$19, i64* %arg_$_38
 %arg_$_39 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_39
 %temp_$_40 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 store i64 0, i64* %temp_$_40
 %var_ptr_$_423 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_424 = load i64, i64* %var_ptr_$_423
 %temp_$_425 = icmp ne i64 %res_$_424, 0
 %temp_$_426 = zext i1 %temp_$_425 to i64
 %cnd_$_427 = icmp ne i64 %temp_$_426, 0
 br i1 %cnd_$_427, label %thn_$_420, label %els_$_421
thn_$_420:
 %lnk_$_428 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_429 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_428
 %var_ptr_$_430 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_429, i32 0, i32 10
 %lnk_$_431 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_432 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_431
 %var_ptr_$_433 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_434 = load i64, i64* %var_ptr_$_433
 %temp_$_435 = sub i64 %res_$_434, 1
 %var_ptr_$_436 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_437 = load i64, i64* %var_ptr_$_436
 %ret_$_438 = call i64 @index$13 (%$locals_tigermain* %load_$_432, i64 %temp_$_435, i64 %res_$_437)
 %load_$_439 = load i8*, i8** %var_ptr_$_430
 %len_ptr_$_442 = bitcast i8* %load_$_439 to i64*
 %len_ptr_$_443 = getelementptr i64, i64* %len_ptr_$_442, i32 -1
 %len_$_444 = load i64, i64* %len_ptr_$_443
 %cnd_$_445 = icmp sle i64 %len_$_444, %ret_$_438
 br i1 %cnd_$_445, label %thn_$_440, label %mrg_$_441
thn_$_440:
 call i64 @arrInxError (i64 %ret_$_438)
 br label %mrg_$_441
mrg_$_441:
 %array_ptr_$_446 = bitcast i8* %load_$_439 to i64*
 %entry_ptr_$_447 = getelementptr i64, i64* %array_ptr_$_446, i64 %ret_$_438
 %res_$_448 = load i64, i64* %entry_ptr_$_447
 %lnk_$_449 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_450 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_449
 %var_ptr_$_451 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_450, i32 0, i32 15
 %res_$_452 = load i64, i64* %var_ptr_$_451
 %temp_$_453 = icmp eq i64 %res_$_448, %res_$_452
 %temp_$_454 = zext i1 %temp_$_453 to i64
 store i64 %temp_$_454, i64* %temp_$_419
 br label %mrg_$_422
els_$_421:
 store i64 0, i64* %temp_$_419
 br label %mrg_$_422
mrg_$_422:
 %res_$_455 = load i64, i64* %temp_$_419
 %cnd_$_456 = icmp ne i64 %res_$_455, 0
 br i1 %cnd_$_456, label %thn_$_417, label %mrg_$_418
thn_$_417:
 %var_ptr_$_457 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 %res_$_458 = load i64, i64* %var_ptr_$_457
 %temp_$_459 = add i64 %res_$_458, 1
 %var_ptr_$_460 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 store i64 %temp_$_459, i64* %var_ptr_$_460
 br label %mrg_$_418
mrg_$_418:
 %var_ptr_$_375 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_376 = load i64, i64* %var_ptr_$_375
 %lnk_$_377 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_378 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_377
 %var_ptr_$_379 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_378, i32 0, i32 13
 %res_$_380 = load i64, i64* %var_ptr_$_379
 %temp_$_381 = icmp ne i64 %res_$_376, %res_$_380
 %temp_$_382 = zext i1 %temp_$_381 to i64
 %cnd_$_383 = icmp ne i64 %temp_$_382, 0
 br i1 %cnd_$_383, label %thn_$_372, label %els_$_373
thn_$_372:
 %lnk_$_384 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_385 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_384
 %var_ptr_$_386 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_385, i32 0, i32 10
 %lnk_$_387 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_388 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_387
 %var_ptr_$_389 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_390 = load i64, i64* %var_ptr_$_389
 %temp_$_391 = add i64 %res_$_390, 1
 %var_ptr_$_392 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_393 = load i64, i64* %var_ptr_$_392
 %ret_$_394 = call i64 @index$13 (%$locals_tigermain* %load_$_388, i64 %temp_$_391, i64 %res_$_393)
 %load_$_395 = load i8*, i8** %var_ptr_$_386
 %len_ptr_$_398 = bitcast i8* %load_$_395 to i64*
 %len_ptr_$_399 = getelementptr i64, i64* %len_ptr_$_398, i32 -1
 %len_$_400 = load i64, i64* %len_ptr_$_399
 %cnd_$_401 = icmp sle i64 %len_$_400, %ret_$_394
 br i1 %cnd_$_401, label %thn_$_396, label %mrg_$_397
thn_$_396:
 call i64 @arrInxError (i64 %ret_$_394)
 br label %mrg_$_397
mrg_$_397:
 %array_ptr_$_402 = bitcast i8* %load_$_395 to i64*
 %entry_ptr_$_403 = getelementptr i64, i64* %array_ptr_$_402, i64 %ret_$_394
 %res_$_404 = load i64, i64* %entry_ptr_$_403
 %lnk_$_405 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_406 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_405
 %var_ptr_$_407 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_406, i32 0, i32 15
 %res_$_408 = load i64, i64* %var_ptr_$_407
 %temp_$_409 = icmp eq i64 %res_$_404, %res_$_408
 %temp_$_410 = zext i1 %temp_$_409 to i64
 store i64 %temp_$_410, i64* %temp_$_371
 br label %mrg_$_374
els_$_373:
 store i64 0, i64* %temp_$_371
 br label %mrg_$_374
mrg_$_374:
 %res_$_411 = load i64, i64* %temp_$_371
 %cnd_$_412 = icmp ne i64 %res_$_411, 0
 br i1 %cnd_$_412, label %thn_$_369, label %mrg_$_370
thn_$_369:
 %var_ptr_$_413 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 %res_$_414 = load i64, i64* %var_ptr_$_413
 %temp_$_415 = add i64 %res_$_414, 1
 %var_ptr_$_416 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 store i64 %temp_$_415, i64* %var_ptr_$_416
 br label %mrg_$_370
mrg_$_370:
 %var_ptr_$_331 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_332 = load i64, i64* %var_ptr_$_331
 %temp_$_333 = icmp ne i64 %res_$_332, 0
 %temp_$_334 = zext i1 %temp_$_333 to i64
 %cnd_$_335 = icmp ne i64 %temp_$_334, 0
 br i1 %cnd_$_335, label %thn_$_328, label %els_$_329
thn_$_328:
 %lnk_$_336 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_337 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_336
 %var_ptr_$_338 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_337, i32 0, i32 10
 %lnk_$_339 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_340 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_339
 %var_ptr_$_341 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_342 = load i64, i64* %var_ptr_$_341
 %var_ptr_$_343 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_344 = load i64, i64* %var_ptr_$_343
 %temp_$_345 = sub i64 %res_$_344, 1
 %ret_$_346 = call i64 @index$13 (%$locals_tigermain* %load_$_340, i64 %res_$_342, i64 %temp_$_345)
 %load_$_347 = load i8*, i8** %var_ptr_$_338
 %len_ptr_$_350 = bitcast i8* %load_$_347 to i64*
 %len_ptr_$_351 = getelementptr i64, i64* %len_ptr_$_350, i32 -1
 %len_$_352 = load i64, i64* %len_ptr_$_351
 %cnd_$_353 = icmp sle i64 %len_$_352, %ret_$_346
 br i1 %cnd_$_353, label %thn_$_348, label %mrg_$_349
thn_$_348:
 call i64 @arrInxError (i64 %ret_$_346)
 br label %mrg_$_349
mrg_$_349:
 %array_ptr_$_354 = bitcast i8* %load_$_347 to i64*
 %entry_ptr_$_355 = getelementptr i64, i64* %array_ptr_$_354, i64 %ret_$_346
 %res_$_356 = load i64, i64* %entry_ptr_$_355
 %lnk_$_357 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_358 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_357
 %var_ptr_$_359 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_358, i32 0, i32 15
 %res_$_360 = load i64, i64* %var_ptr_$_359
 %temp_$_361 = icmp eq i64 %res_$_356, %res_$_360
 %temp_$_362 = zext i1 %temp_$_361 to i64
 store i64 %temp_$_362, i64* %temp_$_327
 br label %mrg_$_330
els_$_329:
 store i64 0, i64* %temp_$_327
 br label %mrg_$_330
mrg_$_330:
 %res_$_363 = load i64, i64* %temp_$_327
 %cnd_$_364 = icmp ne i64 %res_$_363, 0
 br i1 %cnd_$_364, label %thn_$_325, label %mrg_$_326
thn_$_325:
 %var_ptr_$_365 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 %res_$_366 = load i64, i64* %var_ptr_$_365
 %temp_$_367 = add i64 %res_$_366, 1
 %var_ptr_$_368 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 store i64 %temp_$_367, i64* %var_ptr_$_368
 br label %mrg_$_326
mrg_$_326:
 %var_ptr_$_283 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_284 = load i64, i64* %var_ptr_$_283
 %lnk_$_285 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_286 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_285
 %var_ptr_$_287 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_286, i32 0, i32 13
 %res_$_288 = load i64, i64* %var_ptr_$_287
 %temp_$_289 = icmp ne i64 %res_$_284, %res_$_288
 %temp_$_290 = zext i1 %temp_$_289 to i64
 %cnd_$_291 = icmp ne i64 %temp_$_290, 0
 br i1 %cnd_$_291, label %thn_$_280, label %els_$_281
thn_$_280:
 %lnk_$_292 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_293 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_292
 %var_ptr_$_294 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_293, i32 0, i32 10
 %lnk_$_295 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_296 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_295
 %var_ptr_$_297 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_298 = load i64, i64* %var_ptr_$_297
 %var_ptr_$_299 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_300 = load i64, i64* %var_ptr_$_299
 %temp_$_301 = add i64 %res_$_300, 1
 %ret_$_302 = call i64 @index$13 (%$locals_tigermain* %load_$_296, i64 %res_$_298, i64 %temp_$_301)
 %load_$_303 = load i8*, i8** %var_ptr_$_294
 %len_ptr_$_306 = bitcast i8* %load_$_303 to i64*
 %len_ptr_$_307 = getelementptr i64, i64* %len_ptr_$_306, i32 -1
 %len_$_308 = load i64, i64* %len_ptr_$_307
 %cnd_$_309 = icmp sle i64 %len_$_308, %ret_$_302
 br i1 %cnd_$_309, label %thn_$_304, label %mrg_$_305
thn_$_304:
 call i64 @arrInxError (i64 %ret_$_302)
 br label %mrg_$_305
mrg_$_305:
 %array_ptr_$_310 = bitcast i8* %load_$_303 to i64*
 %entry_ptr_$_311 = getelementptr i64, i64* %array_ptr_$_310, i64 %ret_$_302
 %res_$_312 = load i64, i64* %entry_ptr_$_311
 %lnk_$_313 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_314 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_313
 %var_ptr_$_315 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_314, i32 0, i32 15
 %res_$_316 = load i64, i64* %var_ptr_$_315
 %temp_$_317 = icmp eq i64 %res_$_312, %res_$_316
 %temp_$_318 = zext i1 %temp_$_317 to i64
 store i64 %temp_$_318, i64* %temp_$_279
 br label %mrg_$_282
els_$_281:
 store i64 0, i64* %temp_$_279
 br label %mrg_$_282
mrg_$_282:
 %res_$_319 = load i64, i64* %temp_$_279
 %cnd_$_320 = icmp ne i64 %res_$_319, 0
 br i1 %cnd_$_320, label %thn_$_277, label %mrg_$_278
thn_$_277:
 %var_ptr_$_321 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 %res_$_322 = load i64, i64* %var_ptr_$_321
 %temp_$_323 = add i64 %res_$_322, 1
 %var_ptr_$_324 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 store i64 %temp_$_323, i64* %var_ptr_$_324
 br label %mrg_$_278
mrg_$_278:
 %var_ptr_$_232 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_233 = load i64, i64* %var_ptr_$_232
 %temp_$_234 = icmp ne i64 %res_$_233, 0
 %temp_$_235 = zext i1 %temp_$_234 to i64
 %cnd_$_236 = icmp ne i64 %temp_$_235, 0
 br i1 %cnd_$_236, label %thn_$_229, label %els_$_230
thn_$_229:
 %var_ptr_$_237 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_238 = load i64, i64* %var_ptr_$_237
 %temp_$_239 = icmp ne i64 %res_$_238, 0
 %temp_$_240 = zext i1 %temp_$_239 to i64
 store i64 %temp_$_240, i64* %temp_$_228
 br label %mrg_$_231
els_$_230:
 store i64 0, i64* %temp_$_228
 br label %mrg_$_231
mrg_$_231:
 %res_$_241 = load i64, i64* %temp_$_228
 %cnd_$_242 = icmp ne i64 %res_$_241, 0
 br i1 %cnd_$_242, label %thn_$_225, label %els_$_226
thn_$_225:
 %lnk_$_243 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_244 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_243
 %var_ptr_$_245 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_244, i32 0, i32 10
 %lnk_$_246 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_247 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_246
 %var_ptr_$_248 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_249 = load i64, i64* %var_ptr_$_248
 %temp_$_250 = sub i64 %res_$_249, 1
 %var_ptr_$_251 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_252 = load i64, i64* %var_ptr_$_251
 %temp_$_253 = sub i64 %res_$_252, 1
 %ret_$_254 = call i64 @index$13 (%$locals_tigermain* %load_$_247, i64 %temp_$_250, i64 %temp_$_253)
 %load_$_255 = load i8*, i8** %var_ptr_$_245
 %len_ptr_$_258 = bitcast i8* %load_$_255 to i64*
 %len_ptr_$_259 = getelementptr i64, i64* %len_ptr_$_258, i32 -1
 %len_$_260 = load i64, i64* %len_ptr_$_259
 %cnd_$_261 = icmp sle i64 %len_$_260, %ret_$_254
 br i1 %cnd_$_261, label %thn_$_256, label %mrg_$_257
thn_$_256:
 call i64 @arrInxError (i64 %ret_$_254)
 br label %mrg_$_257
mrg_$_257:
 %array_ptr_$_262 = bitcast i8* %load_$_255 to i64*
 %entry_ptr_$_263 = getelementptr i64, i64* %array_ptr_$_262, i64 %ret_$_254
 %res_$_264 = load i64, i64* %entry_ptr_$_263
 %lnk_$_265 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_266 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_265
 %var_ptr_$_267 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_266, i32 0, i32 15
 %res_$_268 = load i64, i64* %var_ptr_$_267
 %temp_$_269 = icmp eq i64 %res_$_264, %res_$_268
 %temp_$_270 = zext i1 %temp_$_269 to i64
 store i64 %temp_$_270, i64* %temp_$_224
 br label %mrg_$_227
els_$_226:
 store i64 0, i64* %temp_$_224
 br label %mrg_$_227
mrg_$_227:
 %res_$_271 = load i64, i64* %temp_$_224
 %cnd_$_272 = icmp ne i64 %res_$_271, 0
 br i1 %cnd_$_272, label %thn_$_222, label %mrg_$_223
thn_$_222:
 %var_ptr_$_273 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 %res_$_274 = load i64, i64* %var_ptr_$_273
 %temp_$_275 = add i64 %res_$_274, 1
 %var_ptr_$_276 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 store i64 %temp_$_275, i64* %var_ptr_$_276
 br label %mrg_$_223
mrg_$_223:
 %var_ptr_$_173 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_174 = load i64, i64* %var_ptr_$_173
 %lnk_$_175 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_176 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_175
 %var_ptr_$_177 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_176, i32 0, i32 13
 %res_$_178 = load i64, i64* %var_ptr_$_177
 %temp_$_179 = icmp ne i64 %res_$_174, %res_$_178
 %temp_$_180 = zext i1 %temp_$_179 to i64
 %cnd_$_181 = icmp ne i64 %temp_$_180, 0
 br i1 %cnd_$_181, label %thn_$_170, label %els_$_171
thn_$_170:
 %var_ptr_$_182 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_183 = load i64, i64* %var_ptr_$_182
 %temp_$_184 = icmp ne i64 %res_$_183, 0
 %temp_$_185 = zext i1 %temp_$_184 to i64
 store i64 %temp_$_185, i64* %temp_$_169
 br label %mrg_$_172
els_$_171:
 store i64 0, i64* %temp_$_169
 br label %mrg_$_172
mrg_$_172:
 %res_$_186 = load i64, i64* %temp_$_169
 %cnd_$_187 = icmp ne i64 %res_$_186, 0
 br i1 %cnd_$_187, label %thn_$_166, label %els_$_167
thn_$_166:
 %lnk_$_188 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_189 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_188
 %var_ptr_$_190 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_189, i32 0, i32 10
 %lnk_$_191 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_192 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_191
 %var_ptr_$_193 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_194 = load i64, i64* %var_ptr_$_193
 %temp_$_195 = add i64 %res_$_194, 1
 %var_ptr_$_196 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_197 = load i64, i64* %var_ptr_$_196
 %temp_$_198 = sub i64 %res_$_197, 1
 %ret_$_199 = call i64 @index$13 (%$locals_tigermain* %load_$_192, i64 %temp_$_195, i64 %temp_$_198)
 %load_$_200 = load i8*, i8** %var_ptr_$_190
 %len_ptr_$_203 = bitcast i8* %load_$_200 to i64*
 %len_ptr_$_204 = getelementptr i64, i64* %len_ptr_$_203, i32 -1
 %len_$_205 = load i64, i64* %len_ptr_$_204
 %cnd_$_206 = icmp sle i64 %len_$_205, %ret_$_199
 br i1 %cnd_$_206, label %thn_$_201, label %mrg_$_202
thn_$_201:
 call i64 @arrInxError (i64 %ret_$_199)
 br label %mrg_$_202
mrg_$_202:
 %array_ptr_$_207 = bitcast i8* %load_$_200 to i64*
 %entry_ptr_$_208 = getelementptr i64, i64* %array_ptr_$_207, i64 %ret_$_199
 %res_$_209 = load i64, i64* %entry_ptr_$_208
 %lnk_$_210 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_211 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_210
 %var_ptr_$_212 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_211, i32 0, i32 15
 %res_$_213 = load i64, i64* %var_ptr_$_212
 %temp_$_214 = icmp eq i64 %res_$_209, %res_$_213
 %temp_$_215 = zext i1 %temp_$_214 to i64
 store i64 %temp_$_215, i64* %temp_$_165
 br label %mrg_$_168
els_$_167:
 store i64 0, i64* %temp_$_165
 br label %mrg_$_168
mrg_$_168:
 %res_$_216 = load i64, i64* %temp_$_165
 %cnd_$_217 = icmp ne i64 %res_$_216, 0
 br i1 %cnd_$_217, label %thn_$_163, label %mrg_$_164
thn_$_163:
 %var_ptr_$_218 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 %res_$_219 = load i64, i64* %var_ptr_$_218
 %temp_$_220 = add i64 %res_$_219, 1
 %var_ptr_$_221 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 store i64 %temp_$_220, i64* %var_ptr_$_221
 br label %mrg_$_164
mrg_$_164:
 %var_ptr_$_114 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_115 = load i64, i64* %var_ptr_$_114
 %temp_$_116 = icmp ne i64 %res_$_115, 0
 %temp_$_117 = zext i1 %temp_$_116 to i64
 %cnd_$_118 = icmp ne i64 %temp_$_117, 0
 br i1 %cnd_$_118, label %thn_$_111, label %els_$_112
thn_$_111:
 %var_ptr_$_119 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_120 = load i64, i64* %var_ptr_$_119
 %lnk_$_121 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_122 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_121
 %var_ptr_$_123 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_122, i32 0, i32 13
 %res_$_124 = load i64, i64* %var_ptr_$_123
 %temp_$_125 = icmp ne i64 %res_$_120, %res_$_124
 %temp_$_126 = zext i1 %temp_$_125 to i64
 store i64 %temp_$_126, i64* %temp_$_110
 br label %mrg_$_113
els_$_112:
 store i64 0, i64* %temp_$_110
 br label %mrg_$_113
mrg_$_113:
 %res_$_127 = load i64, i64* %temp_$_110
 %cnd_$_128 = icmp ne i64 %res_$_127, 0
 br i1 %cnd_$_128, label %thn_$_107, label %els_$_108
thn_$_107:
 %lnk_$_129 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_130 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_129
 %var_ptr_$_131 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_130, i32 0, i32 10
 %lnk_$_132 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_133 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_132
 %var_ptr_$_134 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_135 = load i64, i64* %var_ptr_$_134
 %temp_$_136 = sub i64 %res_$_135, 1
 %var_ptr_$_137 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_138 = load i64, i64* %var_ptr_$_137
 %temp_$_139 = add i64 %res_$_138, 1
 %ret_$_140 = call i64 @index$13 (%$locals_tigermain* %load_$_133, i64 %temp_$_136, i64 %temp_$_139)
 %load_$_141 = load i8*, i8** %var_ptr_$_131
 %len_ptr_$_144 = bitcast i8* %load_$_141 to i64*
 %len_ptr_$_145 = getelementptr i64, i64* %len_ptr_$_144, i32 -1
 %len_$_146 = load i64, i64* %len_ptr_$_145
 %cnd_$_147 = icmp sle i64 %len_$_146, %ret_$_140
 br i1 %cnd_$_147, label %thn_$_142, label %mrg_$_143
thn_$_142:
 call i64 @arrInxError (i64 %ret_$_140)
 br label %mrg_$_143
mrg_$_143:
 %array_ptr_$_148 = bitcast i8* %load_$_141 to i64*
 %entry_ptr_$_149 = getelementptr i64, i64* %array_ptr_$_148, i64 %ret_$_140
 %res_$_150 = load i64, i64* %entry_ptr_$_149
 %lnk_$_151 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_152 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_151
 %var_ptr_$_153 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_152, i32 0, i32 15
 %res_$_154 = load i64, i64* %var_ptr_$_153
 %temp_$_155 = icmp eq i64 %res_$_150, %res_$_154
 %temp_$_156 = zext i1 %temp_$_155 to i64
 store i64 %temp_$_156, i64* %temp_$_106
 br label %mrg_$_109
els_$_108:
 store i64 0, i64* %temp_$_106
 br label %mrg_$_109
mrg_$_109:
 %res_$_157 = load i64, i64* %temp_$_106
 %cnd_$_158 = icmp ne i64 %res_$_157, 0
 br i1 %cnd_$_158, label %thn_$_104, label %mrg_$_105
thn_$_104:
 %var_ptr_$_159 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 %res_$_160 = load i64, i64* %var_ptr_$_159
 %temp_$_161 = add i64 %res_$_160, 1
 %var_ptr_$_162 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 store i64 %temp_$_161, i64* %var_ptr_$_162
 br label %mrg_$_105
mrg_$_105:
 %var_ptr_$_51 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_52 = load i64, i64* %var_ptr_$_51
 %lnk_$_53 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_54 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_53
 %var_ptr_$_55 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_54, i32 0, i32 13
 %res_$_56 = load i64, i64* %var_ptr_$_55
 %temp_$_57 = icmp ne i64 %res_$_52, %res_$_56
 %temp_$_58 = zext i1 %temp_$_57 to i64
 %cnd_$_59 = icmp ne i64 %temp_$_58, 0
 br i1 %cnd_$_59, label %thn_$_48, label %els_$_49
thn_$_48:
 %var_ptr_$_60 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_61 = load i64, i64* %var_ptr_$_60
 %lnk_$_62 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_63 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_62
 %var_ptr_$_64 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_63, i32 0, i32 13
 %res_$_65 = load i64, i64* %var_ptr_$_64
 %temp_$_66 = icmp ne i64 %res_$_61, %res_$_65
 %temp_$_67 = zext i1 %temp_$_66 to i64
 store i64 %temp_$_67, i64* %temp_$_47
 br label %mrg_$_50
els_$_49:
 store i64 0, i64* %temp_$_47
 br label %mrg_$_50
mrg_$_50:
 %res_$_68 = load i64, i64* %temp_$_47
 %cnd_$_69 = icmp ne i64 %res_$_68, 0
 br i1 %cnd_$_69, label %thn_$_44, label %els_$_45
thn_$_44:
 %lnk_$_70 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_71 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_70
 %var_ptr_$_72 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_71, i32 0, i32 10
 %lnk_$_73 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_74 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_73
 %var_ptr_$_75 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 2
 %res_$_76 = load i64, i64* %var_ptr_$_75
 %temp_$_77 = add i64 %res_$_76, 1
 %var_ptr_$_78 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 3
 %res_$_79 = load i64, i64* %var_ptr_$_78
 %temp_$_80 = add i64 %res_$_79, 1
 %ret_$_81 = call i64 @index$13 (%$locals_tigermain* %load_$_74, i64 %temp_$_77, i64 %temp_$_80)
 %load_$_82 = load i8*, i8** %var_ptr_$_72
 %len_ptr_$_85 = bitcast i8* %load_$_82 to i64*
 %len_ptr_$_86 = getelementptr i64, i64* %len_ptr_$_85, i32 -1
 %len_$_87 = load i64, i64* %len_ptr_$_86
 %cnd_$_88 = icmp sle i64 %len_$_87, %ret_$_81
 br i1 %cnd_$_88, label %thn_$_83, label %mrg_$_84
thn_$_83:
 call i64 @arrInxError (i64 %ret_$_81)
 br label %mrg_$_84
mrg_$_84:
 %array_ptr_$_89 = bitcast i8* %load_$_82 to i64*
 %entry_ptr_$_90 = getelementptr i64, i64* %array_ptr_$_89, i64 %ret_$_81
 %res_$_91 = load i64, i64* %entry_ptr_$_90
 %lnk_$_92 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 0
 %load_$_93 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_92
 %var_ptr_$_94 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_93, i32 0, i32 15
 %res_$_95 = load i64, i64* %var_ptr_$_94
 %temp_$_96 = icmp eq i64 %res_$_91, %res_$_95
 %temp_$_97 = zext i1 %temp_$_96 to i64
 store i64 %temp_$_97, i64* %temp_$_43
 br label %mrg_$_46
els_$_45:
 store i64 0, i64* %temp_$_43
 br label %mrg_$_46
mrg_$_46:
 %res_$_98 = load i64, i64* %temp_$_43
 %cnd_$_99 = icmp ne i64 %res_$_98, 0
 br i1 %cnd_$_99, label %thn_$_41, label %mrg_$_42
thn_$_41:
 %var_ptr_$_100 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 %res_$_101 = load i64, i64* %var_ptr_$_100
 %temp_$_102 = add i64 %res_$_101, 1
 %var_ptr_$_103 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 store i64 %temp_$_102, i64* %var_ptr_$_103
 br label %mrg_$_42
mrg_$_42:
 %var_ptr_$_461 = getelementptr %$locals_numChildren$14, %$locals_numChildren$14* %locals_$_2, i32 0, i32 1
 %res_$_462 = load i64, i64* %var_ptr_$_461
 ret i64 %res_$_462
}

define void @simulateBoard$15 (%$locals_tigermain* %$sl) {
 %temp_$_576 = alloca i64
 %temp_$_507 = alloca i64
 %temp_$_503 = alloca i64
 %locals_$_3 = alloca %$locals_simulateBoard$15
 %arg_$_463 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_463
 %temp_$_464 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 store i64 0, i64* %temp_$_464
 br label %test_$_465
test_$_465:
 %var_ptr_$_468 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 %res_$_469 = load i64, i64* %var_ptr_$_468
 %lnk_$_470 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_471 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_470
 %var_ptr_$_472 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_471, i32 0, i32 14
 %res_$_473 = load i64, i64* %var_ptr_$_472
 %temp_$_474 = sub i64 %res_$_473, 1
 %temp_$_475 = icmp sle i64 %res_$_469, %temp_$_474
 %temp_$_476 = zext i1 %temp_$_475 to i64
 %cnd_$_477 = icmp ne i64 %temp_$_476, 0
 br i1 %cnd_$_477, label %body_$_466, label %mrg_$_467
body_$_466:
 %temp_$_478 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 store i64 0, i64* %temp_$_478
 br label %test_$_479
test_$_479:
 %var_ptr_$_482 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 %res_$_483 = load i64, i64* %var_ptr_$_482
 %lnk_$_484 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_485 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_484
 %var_ptr_$_486 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_485, i32 0, i32 14
 %res_$_487 = load i64, i64* %var_ptr_$_486
 %temp_$_488 = sub i64 %res_$_487, 1
 %temp_$_489 = icmp sle i64 %res_$_483, %temp_$_488
 %temp_$_490 = zext i1 %temp_$_489 to i64
 %cnd_$_491 = icmp ne i64 %temp_$_490, 0
 br i1 %cnd_$_491, label %body_$_480, label %mrg_$_481
body_$_480:
 %lnk_$_492 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_493 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_492
 %var_ptr_$_494 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 %res_$_495 = load i64, i64* %var_ptr_$_494
 %var_ptr_$_496 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 %res_$_497 = load i64, i64* %var_ptr_$_496
 %ret_$_498 = call i64 @numChildren$14 (%$locals_tigermain* %load_$_493, i64 %res_$_495, i64 %res_$_497)
 %temp_$_499 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 1
 store i64 %ret_$_498, i64* %temp_$_499
 %lnk_$_511 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_512 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_511
 %var_ptr_$_513 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_512, i32 0, i32 10
 %lnk_$_514 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_515 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_514
 %var_ptr_$_516 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 %res_$_517 = load i64, i64* %var_ptr_$_516
 %var_ptr_$_518 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 %res_$_519 = load i64, i64* %var_ptr_$_518
 %ret_$_520 = call i64 @index$13 (%$locals_tigermain* %load_$_515, i64 %res_$_517, i64 %res_$_519)
 %load_$_521 = load i8*, i8** %var_ptr_$_513
 %len_ptr_$_524 = bitcast i8* %load_$_521 to i64*
 %len_ptr_$_525 = getelementptr i64, i64* %len_ptr_$_524, i32 -1
 %len_$_526 = load i64, i64* %len_ptr_$_525
 %cnd_$_527 = icmp sle i64 %len_$_526, %ret_$_520
 br i1 %cnd_$_527, label %thn_$_522, label %mrg_$_523
thn_$_522:
 call i64 @arrInxError (i64 %ret_$_520)
 br label %mrg_$_523
mrg_$_523:
 %array_ptr_$_528 = bitcast i8* %load_$_521 to i64*
 %entry_ptr_$_529 = getelementptr i64, i64* %array_ptr_$_528, i64 %ret_$_520
 %res_$_530 = load i64, i64* %entry_ptr_$_529
 %lnk_$_531 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_532 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_531
 %var_ptr_$_533 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_532, i32 0, i32 15
 %res_$_534 = load i64, i64* %var_ptr_$_533
 %temp_$_535 = icmp eq i64 %res_$_530, %res_$_534
 %temp_$_536 = zext i1 %temp_$_535 to i64
 %cnd_$_537 = icmp ne i64 %temp_$_536, 0
 br i1 %cnd_$_537, label %thn_$_508, label %els_$_509
thn_$_508:
 %var_ptr_$_538 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 1
 %res_$_539 = load i64, i64* %var_ptr_$_538
 %temp_$_540 = icmp ne i64 %res_$_539, 2
 %temp_$_541 = zext i1 %temp_$_540 to i64
 store i64 %temp_$_541, i64* %temp_$_507
 br label %mrg_$_510
els_$_509:
 store i64 0, i64* %temp_$_507
 br label %mrg_$_510
mrg_$_510:
 %res_$_542 = load i64, i64* %temp_$_507
 %cnd_$_543 = icmp ne i64 %res_$_542, 0
 br i1 %cnd_$_543, label %thn_$_504, label %els_$_505
thn_$_504:
 %var_ptr_$_544 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 1
 %res_$_545 = load i64, i64* %var_ptr_$_544
 %temp_$_546 = icmp ne i64 %res_$_545, 3
 %temp_$_547 = zext i1 %temp_$_546 to i64
 store i64 %temp_$_547, i64* %temp_$_503
 br label %mrg_$_506
els_$_505:
 store i64 0, i64* %temp_$_503
 br label %mrg_$_506
mrg_$_506:
 %res_$_548 = load i64, i64* %temp_$_503
 %cnd_$_549 = icmp ne i64 %res_$_548, 0
 br i1 %cnd_$_549, label %thn_$_500, label %els_$_501
thn_$_500:
 %lnk_$_550 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_551 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_550
 %var_ptr_$_552 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_551, i32 0, i32 16
 %res_$_553 = load i64, i64* %var_ptr_$_552
 %lnk_$_554 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_555 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_554
 %var_ptr_$_556 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_555, i32 0, i32 9
 %lnk_$_557 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_558 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_557
 %var_ptr_$_559 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 %res_$_560 = load i64, i64* %var_ptr_$_559
 %var_ptr_$_561 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 %res_$_562 = load i64, i64* %var_ptr_$_561
 %ret_$_563 = call i64 @index$13 (%$locals_tigermain* %load_$_558, i64 %res_$_560, i64 %res_$_562)
 %load_$_564 = load i8*, i8** %var_ptr_$_556
 %len_ptr_$_567 = bitcast i8* %load_$_564 to i64*
 %len_ptr_$_568 = getelementptr i64, i64* %len_ptr_$_567, i32 -1
 %len_$_569 = load i64, i64* %len_ptr_$_568
 %cnd_$_570 = icmp sle i64 %len_$_569, %ret_$_563
 br i1 %cnd_$_570, label %thn_$_565, label %mrg_$_566
thn_$_565:
 call i64 @arrInxError (i64 %ret_$_563)
 br label %mrg_$_566
mrg_$_566:
 %array_ptr_$_571 = bitcast i8* %load_$_564 to i64*
 %entry_ptr_$_572 = getelementptr i64, i64* %array_ptr_$_571, i64 %ret_$_563
 store i64 %res_$_553, i64* %entry_ptr_$_572
 br label %mrg_$_502
els_$_501:
 %lnk_$_580 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_581 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_580
 %var_ptr_$_582 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_581, i32 0, i32 10
 %lnk_$_583 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_584 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_583
 %var_ptr_$_585 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 %res_$_586 = load i64, i64* %var_ptr_$_585
 %var_ptr_$_587 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 %res_$_588 = load i64, i64* %var_ptr_$_587
 %ret_$_589 = call i64 @index$13 (%$locals_tigermain* %load_$_584, i64 %res_$_586, i64 %res_$_588)
 %load_$_590 = load i8*, i8** %var_ptr_$_582
 %len_ptr_$_593 = bitcast i8* %load_$_590 to i64*
 %len_ptr_$_594 = getelementptr i64, i64* %len_ptr_$_593, i32 -1
 %len_$_595 = load i64, i64* %len_ptr_$_594
 %cnd_$_596 = icmp sle i64 %len_$_595, %ret_$_589
 br i1 %cnd_$_596, label %thn_$_591, label %mrg_$_592
thn_$_591:
 call i64 @arrInxError (i64 %ret_$_589)
 br label %mrg_$_592
mrg_$_592:
 %array_ptr_$_597 = bitcast i8* %load_$_590 to i64*
 %entry_ptr_$_598 = getelementptr i64, i64* %array_ptr_$_597, i64 %ret_$_589
 %res_$_599 = load i64, i64* %entry_ptr_$_598
 %lnk_$_600 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_601 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_600
 %var_ptr_$_602 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_601, i32 0, i32 16
 %res_$_603 = load i64, i64* %var_ptr_$_602
 %temp_$_604 = icmp eq i64 %res_$_599, %res_$_603
 %temp_$_605 = zext i1 %temp_$_604 to i64
 %cnd_$_606 = icmp ne i64 %temp_$_605, 0
 br i1 %cnd_$_606, label %thn_$_577, label %els_$_578
thn_$_577:
 %var_ptr_$_607 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 1
 %res_$_608 = load i64, i64* %var_ptr_$_607
 %temp_$_609 = icmp eq i64 %res_$_608, 3
 %temp_$_610 = zext i1 %temp_$_609 to i64
 store i64 %temp_$_610, i64* %temp_$_576
 br label %mrg_$_579
els_$_578:
 store i64 0, i64* %temp_$_576
 br label %mrg_$_579
mrg_$_579:
 %res_$_611 = load i64, i64* %temp_$_576
 %cnd_$_612 = icmp ne i64 %res_$_611, 0
 br i1 %cnd_$_612, label %thn_$_573, label %els_$_574
thn_$_573:
 %lnk_$_613 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_614 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_613
 %var_ptr_$_615 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_614, i32 0, i32 15
 %res_$_616 = load i64, i64* %var_ptr_$_615
 %lnk_$_617 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_618 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_617
 %var_ptr_$_619 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_618, i32 0, i32 9
 %lnk_$_620 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_621 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_620
 %var_ptr_$_622 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 %res_$_623 = load i64, i64* %var_ptr_$_622
 %var_ptr_$_624 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 %res_$_625 = load i64, i64* %var_ptr_$_624
 %ret_$_626 = call i64 @index$13 (%$locals_tigermain* %load_$_621, i64 %res_$_623, i64 %res_$_625)
 %load_$_627 = load i8*, i8** %var_ptr_$_619
 %len_ptr_$_630 = bitcast i8* %load_$_627 to i64*
 %len_ptr_$_631 = getelementptr i64, i64* %len_ptr_$_630, i32 -1
 %len_$_632 = load i64, i64* %len_ptr_$_631
 %cnd_$_633 = icmp sle i64 %len_$_632, %ret_$_626
 br i1 %cnd_$_633, label %thn_$_628, label %mrg_$_629
thn_$_628:
 call i64 @arrInxError (i64 %ret_$_626)
 br label %mrg_$_629
mrg_$_629:
 %array_ptr_$_634 = bitcast i8* %load_$_627 to i64*
 %entry_ptr_$_635 = getelementptr i64, i64* %array_ptr_$_634, i64 %ret_$_626
 store i64 %res_$_616, i64* %entry_ptr_$_635
 br label %mrg_$_575
els_$_574:
 %lnk_$_636 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_637 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_636
 %var_ptr_$_638 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_637, i32 0, i32 10
 %lnk_$_639 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_640 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_639
 %var_ptr_$_641 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 %res_$_642 = load i64, i64* %var_ptr_$_641
 %var_ptr_$_643 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 %res_$_644 = load i64, i64* %var_ptr_$_643
 %ret_$_645 = call i64 @index$13 (%$locals_tigermain* %load_$_640, i64 %res_$_642, i64 %res_$_644)
 %load_$_646 = load i8*, i8** %var_ptr_$_638
 %len_ptr_$_649 = bitcast i8* %load_$_646 to i64*
 %len_ptr_$_650 = getelementptr i64, i64* %len_ptr_$_649, i32 -1
 %len_$_651 = load i64, i64* %len_ptr_$_650
 %cnd_$_652 = icmp sle i64 %len_$_651, %ret_$_645
 br i1 %cnd_$_652, label %thn_$_647, label %mrg_$_648
thn_$_647:
 call i64 @arrInxError (i64 %ret_$_645)
 br label %mrg_$_648
mrg_$_648:
 %array_ptr_$_653 = bitcast i8* %load_$_646 to i64*
 %entry_ptr_$_654 = getelementptr i64, i64* %array_ptr_$_653, i64 %ret_$_645
 %res_$_655 = load i64, i64* %entry_ptr_$_654
 %lnk_$_656 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_657 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_656
 %var_ptr_$_658 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_657, i32 0, i32 9
 %lnk_$_659 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 0
 %load_$_660 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_659
 %var_ptr_$_661 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 %res_$_662 = load i64, i64* %var_ptr_$_661
 %var_ptr_$_663 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 %res_$_664 = load i64, i64* %var_ptr_$_663
 %ret_$_665 = call i64 @index$13 (%$locals_tigermain* %load_$_660, i64 %res_$_662, i64 %res_$_664)
 %load_$_666 = load i8*, i8** %var_ptr_$_658
 %len_ptr_$_669 = bitcast i8* %load_$_666 to i64*
 %len_ptr_$_670 = getelementptr i64, i64* %len_ptr_$_669, i32 -1
 %len_$_671 = load i64, i64* %len_ptr_$_670
 %cnd_$_672 = icmp sle i64 %len_$_671, %ret_$_665
 br i1 %cnd_$_672, label %thn_$_667, label %mrg_$_668
thn_$_667:
 call i64 @arrInxError (i64 %ret_$_665)
 br label %mrg_$_668
mrg_$_668:
 %array_ptr_$_673 = bitcast i8* %load_$_666 to i64*
 %entry_ptr_$_674 = getelementptr i64, i64* %array_ptr_$_673, i64 %ret_$_665
 store i64 %res_$_655, i64* %entry_ptr_$_674
 br label %mrg_$_575
mrg_$_575:
 br label %mrg_$_502
mrg_$_502:
 %var_ptr_$_675 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 %res_$_676 = load i64, i64* %var_ptr_$_675
 %temp_$_677 = add i64 %res_$_676, 1
 %var_ptr_$_678 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 2
 store i64 %temp_$_677, i64* %var_ptr_$_678
 br label %test_$_479
mrg_$_481:
 %var_ptr_$_679 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 %res_$_680 = load i64, i64* %var_ptr_$_679
 %temp_$_681 = add i64 %res_$_680, 1
 %var_ptr_$_682 = getelementptr %$locals_simulateBoard$15, %$locals_simulateBoard$15* %locals_$_3, i32 0, i32 3
 store i64 %temp_$_681, i64* %var_ptr_$_682
 br label %test_$_465
mrg_$_467:
 ret void
}

define void @printBoard$16 (%$locals_tigermain* %$sl) {
 %locals_$_4 = alloca %$locals_printBoard$16
 %arg_$_683 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_683
 %temp_$_684 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 2
 store i64 0, i64* %temp_$_684
 br label %test_$_685
test_$_685:
 %var_ptr_$_688 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 2
 %res_$_689 = load i64, i64* %var_ptr_$_688
 %lnk_$_690 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 0
 %load_$_691 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_690
 %var_ptr_$_692 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_691, i32 0, i32 14
 %res_$_693 = load i64, i64* %var_ptr_$_692
 %temp_$_694 = sub i64 %res_$_693, 1
 %temp_$_695 = icmp sle i64 %res_$_689, %temp_$_694
 %temp_$_696 = zext i1 %temp_$_695 to i64
 %cnd_$_697 = icmp ne i64 %temp_$_696, 0
 br i1 %cnd_$_697, label %body_$_686, label %mrg_$_687
body_$_686:
 %temp_$_698 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 1
 store i64 0, i64* %temp_$_698
 br label %test_$_699
test_$_699:
 %var_ptr_$_702 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 1
 %res_$_703 = load i64, i64* %var_ptr_$_702
 %lnk_$_704 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 0
 %load_$_705 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_704
 %var_ptr_$_706 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_705, i32 0, i32 14
 %res_$_707 = load i64, i64* %var_ptr_$_706
 %temp_$_708 = sub i64 %res_$_707, 1
 %temp_$_709 = icmp sle i64 %res_$_703, %temp_$_708
 %temp_$_710 = zext i1 %temp_$_709 to i64
 %cnd_$_711 = icmp ne i64 %temp_$_710, 0
 br i1 %cnd_$_711, label %body_$_700, label %mrg_$_701
body_$_700:
 %lnk_$_715 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 0
 %load_$_716 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_715
 %var_ptr_$_717 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_716, i32 0, i32 10
 %var_ptr_$_718 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 1
 %res_$_719 = load i64, i64* %var_ptr_$_718
 %var_ptr_$_720 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 2
 %res_$_721 = load i64, i64* %var_ptr_$_720
 %lnk_$_722 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 0
 %load_$_723 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_722
 %var_ptr_$_724 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_723, i32 0, i32 14
 %res_$_725 = load i64, i64* %var_ptr_$_724
 %temp_$_726 = mul i64 %res_$_721, %res_$_725
 %temp_$_727 = add i64 %res_$_719, %temp_$_726
 %load_$_728 = load i8*, i8** %var_ptr_$_717
 %len_ptr_$_731 = bitcast i8* %load_$_728 to i64*
 %len_ptr_$_732 = getelementptr i64, i64* %len_ptr_$_731, i32 -1
 %len_$_733 = load i64, i64* %len_ptr_$_732
 %cnd_$_734 = icmp sle i64 %len_$_733, %temp_$_727
 br i1 %cnd_$_734, label %thn_$_729, label %mrg_$_730
thn_$_729:
 call i64 @arrInxError (i64 %temp_$_727)
 br label %mrg_$_730
mrg_$_730:
 %array_ptr_$_735 = bitcast i8* %load_$_728 to i64*
 %entry_ptr_$_736 = getelementptr i64, i64* %array_ptr_$_735, i64 %temp_$_727
 %res_$_737 = load i64, i64* %entry_ptr_$_736
 %lnk_$_738 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 0
 %load_$_739 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_738
 %var_ptr_$_740 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_739, i32 0, i32 15
 %res_$_741 = load i64, i64* %var_ptr_$_740
 %temp_$_742 = icmp eq i64 %res_$_737, %res_$_741
 %temp_$_743 = zext i1 %temp_$_742 to i64
 %cnd_$_744 = icmp ne i64 %temp_$_743, 0
 br i1 %cnd_$_744, label %thn_$_712, label %els_$_713
thn_$_712:
 %lnk_$_745 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 0
 %load_$_746 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_745
 %temp_$_749 = bitcast { i64, [1 x i8] }* @str_$_748 to i8*
 call void @print (i8* null, i8* %temp_$_749)
 br label %mrg_$_714
els_$_713:
 %lnk_$_750 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 0
 %load_$_751 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_750
 %temp_$_754 = bitcast { i64, [1 x i8] }* @str_$_753 to i8*
 call void @print (i8* null, i8* %temp_$_754)
 br label %mrg_$_714
mrg_$_714:
 %var_ptr_$_755 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 1
 %res_$_756 = load i64, i64* %var_ptr_$_755
 %temp_$_757 = add i64 %res_$_756, 1
 %var_ptr_$_758 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 1
 store i64 %temp_$_757, i64* %var_ptr_$_758
 br label %test_$_699
mrg_$_701:
 %lnk_$_759 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 0
 %load_$_760 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_759
 %temp_$_763 = bitcast { i64, [1 x i8] }* @str_$_762 to i8*
 call void @print (i8* null, i8* %temp_$_763)
 %var_ptr_$_764 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 2
 %res_$_765 = load i64, i64* %var_ptr_$_764
 %temp_$_766 = add i64 %res_$_765, 1
 %var_ptr_$_767 = getelementptr %$locals_printBoard$16, %$locals_printBoard$16* %locals_$_4, i32 0, i32 2
 store i64 %temp_$_766, i64* %var_ptr_$_767
 br label %test_$_685
mrg_$_687:
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_5 = alloca %$locals_tigermain
 %arg_$_768 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_768
 %temp_$_769 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 16
 store i64 0, i64* %temp_$_769
 %temp_$_770 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 15
 store i64 1, i64* %temp_$_770
 %temp_$_771 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 14
 store i64 13, i64* %temp_$_771
 %var_ptr_$_772 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 14
 %res_$_773 = load i64, i64* %var_ptr_$_772
 %temp_$_774 = sub i64 %res_$_773, 1
 %temp_$_775 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 13
 store i64 %temp_$_774, i64* %temp_$_775
 %var_ptr_$_776 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 16
 %res_$_777 = load i64, i64* %var_ptr_$_776
 %init_ptr_$_778 = alloca i64
 store i64 %res_$_777, i64* %init_ptr_$_778
 %init_ptr_$_779 = bitcast i64* %init_ptr_$_778 to i8*
 %var_ptr_$_780 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 14
 %res_$_781 = load i64, i64* %var_ptr_$_780
 %var_ptr_$_782 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 14
 %res_$_783 = load i64, i64* %var_ptr_$_782
 %temp_$_784 = mul i64 %res_$_781, %res_$_783
 %init_size_ptr_$_785 = getelementptr i64, i64* null, i32 1
 %init_size_$_786 = ptrtoint i64* %init_size_ptr_$_785 to i64
 %array_ptr_$_787 = call i8* @initArray (i64 %temp_$_784, i64 %init_size_$_786, i8* %init_ptr_$_779)
 %temp_$_788 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 12
 store i8* %array_ptr_$_787, i8** %temp_$_788
 %var_ptr_$_789 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 16
 %res_$_790 = load i64, i64* %var_ptr_$_789
 %init_ptr_$_791 = alloca i64
 store i64 %res_$_790, i64* %init_ptr_$_791
 %init_ptr_$_792 = bitcast i64* %init_ptr_$_791 to i8*
 %var_ptr_$_793 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 14
 %res_$_794 = load i64, i64* %var_ptr_$_793
 %var_ptr_$_795 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 14
 %res_$_796 = load i64, i64* %var_ptr_$_795
 %temp_$_797 = mul i64 %res_$_794, %res_$_796
 %init_size_ptr_$_798 = getelementptr i64, i64* null, i32 1
 %init_size_$_799 = ptrtoint i64* %init_size_ptr_$_798 to i64
 %array_ptr_$_800 = call i8* @initArray (i64 %temp_$_797, i64 %init_size_$_799, i8* %init_ptr_$_792)
 %temp_$_801 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 11
 store i8* %array_ptr_$_800, i8** %temp_$_801
 %var_ptr_$_802 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 12
 %res_$_803 = load i8*, i8** %var_ptr_$_802
 %temp_$_804 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 10
 store i8* %res_$_803, i8** %temp_$_804
 %var_ptr_$_805 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 11
 %res_$_806 = load i8*, i8** %var_ptr_$_805
 %temp_$_807 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 9
 store i8* %res_$_806, i8** %temp_$_807
 %temp_$_809 = bitcast { i64, [169 x i8] }* @str_$_808 to i8*
 %temp_$_810 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 8
 store i8* %temp_$_809, i8** %temp_$_810
 %temp_$_832 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 3
 store i64 0, i64* %temp_$_832
 br label %test_$_833
test_$_833:
 %var_ptr_$_836 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 3
 %res_$_837 = load i64, i64* %var_ptr_$_836
 %var_ptr_$_838 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 14
 %res_$_839 = load i64, i64* %var_ptr_$_838
 %temp_$_840 = sub i64 %res_$_839, 1
 %temp_$_841 = icmp sle i64 %res_$_837, %temp_$_840
 %temp_$_842 = zext i1 %temp_$_841 to i64
 %cnd_$_843 = icmp ne i64 %temp_$_842, 0
 br i1 %cnd_$_843, label %body_$_834, label %mrg_$_835
body_$_834:
 %temp_$_844 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 2
 store i64 0, i64* %temp_$_844
 br label %test_$_845
test_$_845:
 %var_ptr_$_848 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 2
 %res_$_849 = load i64, i64* %var_ptr_$_848
 %var_ptr_$_850 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 14
 %res_$_851 = load i64, i64* %var_ptr_$_850
 %temp_$_852 = sub i64 %res_$_851, 1
 %temp_$_853 = icmp sle i64 %res_$_849, %temp_$_852
 %temp_$_854 = zext i1 %temp_$_853 to i64
 %cnd_$_855 = icmp ne i64 %temp_$_854, 0
 br i1 %cnd_$_855, label %body_$_846, label %mrg_$_847
body_$_846:
 %var_ptr_$_859 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 8
 %res_$_860 = load i8*, i8** %var_ptr_$_859
 %var_ptr_$_861 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 3
 %res_$_862 = load i64, i64* %var_ptr_$_861
 %var_ptr_$_863 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 2
 %res_$_864 = load i64, i64* %var_ptr_$_863
 %var_ptr_$_865 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 14
 %res_$_866 = load i64, i64* %var_ptr_$_865
 %temp_$_867 = mul i64 %res_$_864, %res_$_866
 %temp_$_868 = add i64 %res_$_862, %temp_$_867
 %ret_$_869 = call i8* @substring (i8* null, i8* %res_$_860, i64 %temp_$_868, i64 1)
 %temp_$_871 = bitcast { i64, [1 x i8] }* @str_$_870 to i8*
 %temp_$_872 = call i64 @stringNotEq (i8* %ret_$_869, i8* %temp_$_871)
 %cnd_$_873 = icmp ne i64 %temp_$_872, 0
 br i1 %cnd_$_873, label %thn_$_856, label %mrg_$_857
thn_$_856:
 %var_ptr_$_874 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 15
 %res_$_875 = load i64, i64* %var_ptr_$_874
 %var_ptr_$_876 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 10
 %var_ptr_$_877 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 3
 %res_$_878 = load i64, i64* %var_ptr_$_877
 %var_ptr_$_879 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 2
 %res_$_880 = load i64, i64* %var_ptr_$_879
 %var_ptr_$_881 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 14
 %res_$_882 = load i64, i64* %var_ptr_$_881
 %temp_$_883 = mul i64 %res_$_880, %res_$_882
 %temp_$_884 = add i64 %res_$_878, %temp_$_883
 %load_$_885 = load i8*, i8** %var_ptr_$_876
 %len_ptr_$_888 = bitcast i8* %load_$_885 to i64*
 %len_ptr_$_889 = getelementptr i64, i64* %len_ptr_$_888, i32 -1
 %len_$_890 = load i64, i64* %len_ptr_$_889
 %cnd_$_891 = icmp sle i64 %len_$_890, %temp_$_884
 br i1 %cnd_$_891, label %thn_$_886, label %mrg_$_887
thn_$_886:
 call i64 @arrInxError (i64 %temp_$_884)
 br label %mrg_$_887
mrg_$_887:
 %array_ptr_$_892 = bitcast i8* %load_$_885 to i64*
 %entry_ptr_$_893 = getelementptr i64, i64* %array_ptr_$_892, i64 %temp_$_884
 store i64 %res_$_875, i64* %entry_ptr_$_893
 br label %mrg_$_857
mrg_$_857:
 %var_ptr_$_894 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 2
 %res_$_895 = load i64, i64* %var_ptr_$_894
 %temp_$_896 = add i64 %res_$_895, 1
 %var_ptr_$_897 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 2
 store i64 %temp_$_896, i64* %var_ptr_$_897
 br label %test_$_845
mrg_$_847:
 %var_ptr_$_898 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 3
 %res_$_899 = load i64, i64* %var_ptr_$_898
 %temp_$_900 = add i64 %res_$_899, 1
 %var_ptr_$_901 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 3
 store i64 %temp_$_900, i64* %var_ptr_$_901
 br label %test_$_833
mrg_$_835:
 call void @printBoard$16 (%$locals_tigermain* %locals_$_5)
 %temp_$_811 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 1
 store i64 0, i64* %temp_$_811
 br label %test_$_812
test_$_812:
 %var_ptr_$_815 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 1
 %res_$_816 = load i64, i64* %var_ptr_$_815
 %temp_$_817 = icmp sle i64 %res_$_816, 100
 %temp_$_818 = zext i1 %temp_$_817 to i64
 %cnd_$_819 = icmp ne i64 %temp_$_818, 0
 br i1 %cnd_$_819, label %body_$_813, label %mrg_$_814
body_$_813:
 %temp_$_827 = bitcast { i64, [25 x i8] }* @str_$_826 to i8*
 call void @print (i8* null, i8* %temp_$_827)
 %ret_$_824 = call i8* @getChar (i8* null)
 %temp_$_822 = bitcast { i64, [5 x i8] }* @str_$_821 to i8*
 call void @print (i8* null, i8* %temp_$_822)
 call void @simulateBoard$15 (%$locals_tigermain* %locals_$_5)
 call void @switchBoards$10 (%$locals_tigermain* %locals_$_5)
 call void @printBoard$16 (%$locals_tigermain* %locals_$_5)
 %var_ptr_$_828 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 1
 %res_$_829 = load i64, i64* %var_ptr_$_828
 %temp_$_830 = add i64 %res_$_829, 1
 %var_ptr_$_831 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_5, i32 0, i32 1
 store i64 %temp_$_830, i64* %var_ptr_$_831
 br label %test_$_812
mrg_$_814:
 %temp_$_904 = bitcast { i64, [4 x i8] }* @str_$_903 to i8*
 call void @print (i8* null, i8* %temp_$_904)
 ret void
}
