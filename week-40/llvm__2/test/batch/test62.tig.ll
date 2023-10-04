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

%$locals_compare$1 = type { %$locals_tigermain* }
%$locals_tigermain = type { i8*, i8* }

@str_$_11 = global { i64, [8 x i8] } {i64 8, [8 x i8] c"whatever"}
@str_$_7 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"else"}

define i64 @compare$1 (%$locals_tigermain* %$sl) {
 %locals_$_0 = alloca %$locals_compare$1
 %arg_$_2 = getelementptr %$locals_compare$1, %$locals_compare$1* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_2
 %lnk_$_3 = getelementptr %$locals_compare$1, %$locals_compare$1* %locals_$_0, i32 0, i32 0
 %load_$_4 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_3
 %var_ptr_$_5 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_4, i32 0, i32 1
 %res_$_6 = load i8*, i8** %var_ptr_$_5
 %temp_$_8 = bitcast { i64, [4 x i8] }* @str_$_7 to i8*
 %temp_$_9 = call i64 @stringGreater (i8* %res_$_6, i8* %temp_$_8)
 ret i64 %temp_$_9
}

define i64 @tigermain (i8* %$sl) {
 %locals_$_1 = alloca %$locals_tigermain
 %arg_$_10 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_10
 %temp_$_12 = bitcast { i64, [8 x i8] }* @str_$_11 to i8*
 %temp_$_13 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 1
 store i8* %temp_$_12, i8** %temp_$_13
 %ret_$_14 = call i64 @compare$1 (%$locals_tigermain* %locals_$_1)
 ret i64 %ret_$_14
}
