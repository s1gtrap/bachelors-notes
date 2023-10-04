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

%$locals_do_nothing1$0 = type { %$locals_tigermain*, i64, i8* }
%$locals_do_nothing2$1 = type { %$locals_tigermain*, i64 }
%$locals_tigermain = type { i8*, i64, i8*, i64 }

@str_$_24 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"str2"}
@str_$_21 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_18 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"str"}

define i64 @do_nothing1$0 (%$locals_tigermain* %$sl, i64 %a$2, i8* %b$3) {
 %locals_$_0 = alloca %$locals_do_nothing1$0
 %arg_$_3 = getelementptr %$locals_do_nothing1$0, %$locals_do_nothing1$0* %locals_$_0, i32 0, i32 2
 store i8* %b$3, i8** %arg_$_3
 %arg_$_4 = getelementptr %$locals_do_nothing1$0, %$locals_do_nothing1$0* %locals_$_0, i32 0, i32 1
 store i64 %a$2, i64* %arg_$_4
 %arg_$_5 = getelementptr %$locals_do_nothing1$0, %$locals_do_nothing1$0* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_5
 %lnk_$_6 = getelementptr %$locals_do_nothing1$0, %$locals_do_nothing1$0* %locals_$_0, i32 0, i32 0
 %load_$_7 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_6
 %var_ptr_$_8 = getelementptr %$locals_do_nothing1$0, %$locals_do_nothing1$0* %locals_$_0, i32 0, i32 1
 %res_$_9 = load i64, i64* %var_ptr_$_8
 %temp_$_10 = add i64 %res_$_9, 1
 %ret_$_11 = call i8* @do_nothing2$1 (%$locals_tigermain* %load_$_7, i64 %temp_$_10)
 ret i64 0
}

define i8* @do_nothing2$1 (%$locals_tigermain* %$sl, i64 %d$4) {
 %locals_$_1 = alloca %$locals_do_nothing2$1
 %arg_$_12 = getelementptr %$locals_do_nothing2$1, %$locals_do_nothing2$1* %locals_$_1, i32 0, i32 1
 store i64 %d$4, i64* %arg_$_12
 %arg_$_13 = getelementptr %$locals_do_nothing2$1, %$locals_do_nothing2$1* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_13
 %lnk_$_14 = getelementptr %$locals_do_nothing2$1, %$locals_do_nothing2$1* %locals_$_1, i32 0, i32 0
 %load_$_15 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_14
 %var_ptr_$_16 = getelementptr %$locals_do_nothing2$1, %$locals_do_nothing2$1* %locals_$_1, i32 0, i32 1
 %res_$_17 = load i64, i64* %var_ptr_$_16
 %temp_$_19 = bitcast { i64, [3 x i8] }* @str_$_18 to i8*
 %ret_$_20 = call i64 @do_nothing1$0 (%$locals_tigermain* %load_$_15, i64 %res_$_17, i8* %temp_$_19)
 %temp_$_22 = bitcast { i64, [1 x i8] }* @str_$_21 to i8*
 ret i8* %temp_$_22
}

define i64 @tigermain (i8* %$sl) {
 %locals_$_2 = alloca %$locals_tigermain
 %arg_$_23 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_2, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_23
 %temp_$_25 = bitcast { i64, [4 x i8] }* @str_$_24 to i8*
 %ret_$_26 = call i64 @do_nothing1$0 (%$locals_tigermain* %locals_$_2, i64 0, i8* %temp_$_25)
 ret i64 %ret_$_26
}
