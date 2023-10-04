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

%$locals_isdigit$1 = type { %$locals_tigermain* }
%$locals_tigermain = type { i8*, i8* }

@str_$_42 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"5"}
@str_$_35 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"9"}
@str_$_18 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}

define i64 @isdigit$1 (%$locals_tigermain* %$sl) {
 %temp_$_3 = alloca i64
 %locals_$_0 = alloca %$locals_isdigit$1
 %arg_$_2 = getelementptr %$locals_isdigit$1, %$locals_isdigit$1* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_2
 %lnk_$_7 = getelementptr %$locals_isdigit$1, %$locals_isdigit$1* %locals_$_0, i32 0, i32 0
 %load_$_8 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_7
 %lnk_$_10 = getelementptr %$locals_isdigit$1, %$locals_isdigit$1* %locals_$_0, i32 0, i32 0
 %load_$_11 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_10
 %var_ptr_$_12 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_11, i32 0, i32 1
 %res_$_13 = load i8*, i8** %var_ptr_$_12
 %ret_$_14 = call i64 @ord (i8* null, i8* %res_$_13)
 %lnk_$_15 = getelementptr %$locals_isdigit$1, %$locals_isdigit$1* %locals_$_0, i32 0, i32 0
 %load_$_16 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_15
 %temp_$_19 = bitcast { i64, [1 x i8] }* @str_$_18 to i8*
 %ret_$_20 = call i64 @ord (i8* null, i8* %temp_$_19)
 %temp_$_21 = icmp sge i64 %ret_$_14, %ret_$_20
 %temp_$_22 = zext i1 %temp_$_21 to i64
 %cnd_$_23 = icmp ne i64 %temp_$_22, 0
 br i1 %cnd_$_23, label %thn_$_4, label %els_$_5
thn_$_4:
 %lnk_$_24 = getelementptr %$locals_isdigit$1, %$locals_isdigit$1* %locals_$_0, i32 0, i32 0
 %load_$_25 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_24
 %lnk_$_27 = getelementptr %$locals_isdigit$1, %$locals_isdigit$1* %locals_$_0, i32 0, i32 0
 %load_$_28 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_27
 %var_ptr_$_29 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_28, i32 0, i32 1
 %res_$_30 = load i8*, i8** %var_ptr_$_29
 %ret_$_31 = call i64 @ord (i8* null, i8* %res_$_30)
 %lnk_$_32 = getelementptr %$locals_isdigit$1, %$locals_isdigit$1* %locals_$_0, i32 0, i32 0
 %load_$_33 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_32
 %temp_$_36 = bitcast { i64, [1 x i8] }* @str_$_35 to i8*
 %ret_$_37 = call i64 @ord (i8* null, i8* %temp_$_36)
 %temp_$_38 = icmp sle i64 %ret_$_31, %ret_$_37
 %temp_$_39 = zext i1 %temp_$_38 to i64
 store i64 %temp_$_39, i64* %temp_$_3
 br label %mrg_$_6
els_$_5:
 store i64 0, i64* %temp_$_3
 br label %mrg_$_6
mrg_$_6:
 %res_$_40 = load i64, i64* %temp_$_3
 ret i64 %res_$_40
}

define i64 @tigermain (i8* %$sl) {
 %locals_$_1 = alloca %$locals_tigermain
 %arg_$_41 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_41
 %temp_$_43 = bitcast { i64, [1 x i8] }* @str_$_42 to i8*
 %temp_$_44 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 1
 store i8* %temp_$_43, i8** %temp_$_44
 %ret_$_45 = call i64 @isdigit$1 (%$locals_tigermain* %locals_$_1)
 ret i64 %ret_$_45
}
