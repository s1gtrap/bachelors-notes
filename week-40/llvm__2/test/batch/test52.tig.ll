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

%arrtype$0 = type i8*
%$locals_tigermain = type { i8*, i8* }

define i8* @tigermain (i8* %$sl) {
 %locals_$_0 = alloca %$locals_tigermain
 %arg_$_1 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_1
 %init_ptr_$_2 = alloca i64
 store i64 1, i64* %init_ptr_$_2
 %init_ptr_$_3 = bitcast i64* %init_ptr_$_2 to i8*
 %init_size_ptr_$_4 = getelementptr i64, i64* null, i32 1
 %init_size_$_5 = ptrtoint i64* %init_size_ptr_$_4 to i64
 %array_ptr_$_6 = call i8* @initArray (i64 10, i64 %init_size_$_5, i8* %init_ptr_$_3)
 %temp_$_7 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 store i8* %array_ptr_$_6, i8** %temp_$_7
 %var_ptr_$_8 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 %res_$_9 = load i8*, i8** %var_ptr_$_8
 ret i8* %res_$_9
}
