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

%$locals_f$0 = type { %$locals_tigermain*, i64 }
%$locals_tigermain = type { i8*, i64 }

define i64 @f$0 (%$locals_tigermain* %$sl, i64 %n$1) {
 %locals_$_0 = alloca %$locals_f$0
 %arg_$_2 = getelementptr %$locals_f$0, %$locals_f$0* %locals_$_0, i32 0, i32 1
 store i64 %n$1, i64* %arg_$_2
 %arg_$_3 = getelementptr %$locals_f$0, %$locals_f$0* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_3
 ret i64 42
}

define i64 @tigermain (i8* %$sl) {
 %locals_$_1 = alloca %$locals_tigermain
 %arg_$_4 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_4
 %ret_$_5 = call i64 @f$0 (%$locals_tigermain* %locals_$_1, i64 10)
 ret i64 %ret_$_5
}
