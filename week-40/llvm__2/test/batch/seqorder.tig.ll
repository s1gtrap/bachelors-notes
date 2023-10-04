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

%$locals_tigermain = type { i8* }

@str_$_15 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"5"}
@str_$_12 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"1"}
@str_$_9 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"2"}
@str_$_6 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"3"}
@str_$_3 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"4"}

define void @tigermain (i8* %$sl) {
 %locals_$_0 = alloca %$locals_tigermain
 %arg_$_1 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_1
 %temp_$_13 = bitcast { i64, [1 x i8] }* @str_$_12 to i8*
 call void @print (i8* null, i8* %temp_$_13)
 %temp_$_10 = bitcast { i64, [1 x i8] }* @str_$_9 to i8*
 call void @print (i8* null, i8* %temp_$_10)
 %temp_$_7 = bitcast { i64, [1 x i8] }* @str_$_6 to i8*
 call void @print (i8* null, i8* %temp_$_7)
 %temp_$_4 = bitcast { i64, [1 x i8] }* @str_$_3 to i8*
 call void @print (i8* null, i8* %temp_$_4)
 %temp_$_16 = bitcast { i64, [1 x i8] }* @str_$_15 to i8*
 call void @print (i8* null, i8* %temp_$_16)
 ret void
}
