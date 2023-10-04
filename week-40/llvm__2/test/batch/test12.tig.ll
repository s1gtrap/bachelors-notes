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

define void @tigermain (i8* %$sl) {
 %locals_$_0 = alloca %$locals_tigermain
 %arg_$_1 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_1
 %temp_$_2 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 store i64 0, i64* %temp_$_2
 %temp_$_3 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 store i64 0, i64* %temp_$_3
 br label %test_$_4
test_$_4:
 %var_ptr_$_7 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 %res_$_8 = load i64, i64* %var_ptr_$_7
 %temp_$_9 = icmp sle i64 %res_$_8, 100
 %temp_$_10 = zext i1 %temp_$_9 to i64
 %cnd_$_11 = icmp ne i64 %temp_$_10, 0
 br i1 %cnd_$_11, label %body_$_5, label %mrg_$_6
body_$_5:
 %var_ptr_$_12 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 %res_$_13 = load i64, i64* %var_ptr_$_12
 %temp_$_14 = add i64 %res_$_13, 1
 %var_ptr_$_15 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 store i64 %temp_$_14, i64* %var_ptr_$_15
 %var_ptr_$_16 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 %res_$_17 = load i64, i64* %var_ptr_$_16
 %temp_$_18 = add i64 %res_$_17, 1
 %var_ptr_$_19 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 store i64 %temp_$_18, i64* %var_ptr_$_19
 br label %test_$_4
mrg_$_6:
 ret void
}
