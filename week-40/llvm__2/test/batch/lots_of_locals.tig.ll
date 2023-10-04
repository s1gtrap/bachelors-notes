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

%rec$0 = type { i64 }
%arr$1 = type i8*
%$locals_tigermain = type { i8*, i8*, i8*, i8*, i8*, i64, i64, i64 }

@str_$_8 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"World"}
@str_$_5 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"Hello"}

define i64 @tigermain (i8* %$sl) {
 %locals_$_0 = alloca %$locals_tigermain
 %arg_$_1 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_1
 %temp_$_2 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 7
 store i64 0, i64* %temp_$_2
 %temp_$_3 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 6
 store i64 1, i64* %temp_$_3
 %temp_$_4 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 5
 store i64 2, i64* %temp_$_4
 %temp_$_6 = bitcast { i64, [5 x i8] }* @str_$_5 to i8*
 %temp_$_7 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 4
 store i8* %temp_$_6, i8** %temp_$_7
 %temp_$_9 = bitcast { i64, [5 x i8] }* @str_$_8 to i8*
 %temp_$_10 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 3
 store i8* %temp_$_9, i8** %temp_$_10
 %size_ptr_$_11 = getelementptr %rec$0, %rec$0* null, i32 1
 %size_$_12 = ptrtoint %rec$0* %size_ptr_$_11 to i64
 %record_ptr_$_13 = call i8* @allocRecord (i64 %size_$_12)
 %rec_$_14 = bitcast i8* %record_ptr_$_13 to %rec$0*
 %field_ptr_$_15 = getelementptr %rec$0, %rec$0* %rec_$_14, i32 0, i32 0
 store i64 123, i64* %field_ptr_$_15
 %temp_$_16 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 store i8* %record_ptr_$_13, i8** %temp_$_16
 %var_ptr_$_17 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 2
 %res_$_18 = load i8*, i8** %var_ptr_$_17
 %init_ptr_$_19 = alloca i8*
 store i8* %res_$_18, i8** %init_ptr_$_19
 %init_ptr_$_20 = bitcast i8** %init_ptr_$_19 to i8*
 %init_size_ptr_$_21 = getelementptr i8*, i8** null, i32 1
 %init_size_$_22 = ptrtoint i8** %init_size_ptr_$_21 to i64
 %array_ptr_$_23 = call i8* @initArray (i64 10, i64 %init_size_$_22, i8* %init_ptr_$_20)
 %temp_$_24 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 store i8* %array_ptr_$_23, i8** %temp_$_24
 ret i64 0
}
