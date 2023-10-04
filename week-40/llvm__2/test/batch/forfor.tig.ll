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

%$locals_tigermain = type { i8*, i64, i64 }

@str_$_21 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"."}

define void @tigermain (i8* %$sl) {
 %locals_$_0 = alloca %$locals_tigermain
 %arg_$_1 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_1
 %temp_$_2 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 store i64 1, i64* %temp_$_2
 br label %test_$_3
test_$_3:
 %var_ptr_$_6 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 %res_$_7 = load i64, i64* %var_ptr_$_6
 %temp_$_8 = icmp sle i64 %res_$_7, 2
 %temp_$_9 = zext i1 %temp_$_8 to i64
 %cnd_$_10 = icmp ne i64 %temp_$_9, 0
 br i1 %cnd_$_10, label %body_$_4, label %mrg_$_5
body_$_4:
 %temp_$_11 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 store i64 1, i64* %temp_$_11
 br label %test_$_12
test_$_12:
 %var_ptr_$_15 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 %res_$_16 = load i64, i64* %var_ptr_$_15
 %temp_$_17 = icmp sle i64 %res_$_16, 6
 %temp_$_18 = zext i1 %temp_$_17 to i64
 %cnd_$_19 = icmp ne i64 %temp_$_18, 0
 br i1 %cnd_$_19, label %body_$_13, label %mrg_$_14
body_$_13:
 %temp_$_22 = bitcast { i64, [1 x i8] }* @str_$_21 to i8*
 call void @print (i8* null, i8* %temp_$_22)
 %var_ptr_$_23 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 %res_$_24 = load i64, i64* %var_ptr_$_23
 %temp_$_25 = add i64 %res_$_24, 1
 %var_ptr_$_26 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 store i64 %temp_$_25, i64* %var_ptr_$_26
 br label %test_$_12
mrg_$_14:
 %var_ptr_$_27 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 %res_$_28 = load i64, i64* %var_ptr_$_27
 %temp_$_29 = add i64 %res_$_28, 1
 %var_ptr_$_30 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 store i64 %temp_$_29, i64* %var_ptr_$_30
 br label %test_$_3
mrg_$_5:
 ret void
}
