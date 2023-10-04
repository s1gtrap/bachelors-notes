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

%$locals_isdigit$0 = type { %$locals_tigermain*, i8* }
%$locals_tigermain = type { i8*, i8* }

@str_$_39 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"1"}
@str_$_32 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"9"}
@str_$_17 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}

define i64 @isdigit$0 (%$locals_tigermain* %$sl, i8* %s$1) {
 %temp_$_4 = alloca i64
 %locals_$_0 = alloca %$locals_isdigit$0
 %arg_$_2 = getelementptr %$locals_isdigit$0, %$locals_isdigit$0* %locals_$_0, i32 0, i32 1
 store i8* %s$1, i8** %arg_$_2
 %arg_$_3 = getelementptr %$locals_isdigit$0, %$locals_isdigit$0* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_3
 %lnk_$_8 = getelementptr %$locals_isdigit$0, %$locals_isdigit$0* %locals_$_0, i32 0, i32 0
 %load_$_9 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_8
 %var_ptr_$_11 = getelementptr %$locals_isdigit$0, %$locals_isdigit$0* %locals_$_0, i32 0, i32 1
 %res_$_12 = load i8*, i8** %var_ptr_$_11
 %ret_$_13 = call i64 @ord (i8* null, i8* %res_$_12)
 %lnk_$_14 = getelementptr %$locals_isdigit$0, %$locals_isdigit$0* %locals_$_0, i32 0, i32 0
 %load_$_15 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_14
 %temp_$_18 = bitcast { i64, [1 x i8] }* @str_$_17 to i8*
 %ret_$_19 = call i64 @ord (i8* null, i8* %temp_$_18)
 %temp_$_20 = icmp sge i64 %ret_$_13, %ret_$_19
 %temp_$_21 = zext i1 %temp_$_20 to i64
 %cnd_$_22 = icmp ne i64 %temp_$_21, 0
 br i1 %cnd_$_22, label %thn_$_5, label %els_$_6
thn_$_5:
 %lnk_$_23 = getelementptr %$locals_isdigit$0, %$locals_isdigit$0* %locals_$_0, i32 0, i32 0
 %load_$_24 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_23
 %var_ptr_$_26 = getelementptr %$locals_isdigit$0, %$locals_isdigit$0* %locals_$_0, i32 0, i32 1
 %res_$_27 = load i8*, i8** %var_ptr_$_26
 %ret_$_28 = call i64 @ord (i8* null, i8* %res_$_27)
 %lnk_$_29 = getelementptr %$locals_isdigit$0, %$locals_isdigit$0* %locals_$_0, i32 0, i32 0
 %load_$_30 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_29
 %temp_$_33 = bitcast { i64, [1 x i8] }* @str_$_32 to i8*
 %ret_$_34 = call i64 @ord (i8* null, i8* %temp_$_33)
 %temp_$_35 = icmp sle i64 %ret_$_28, %ret_$_34
 %temp_$_36 = zext i1 %temp_$_35 to i64
 store i64 %temp_$_36, i64* %temp_$_4
 br label %mrg_$_7
els_$_6:
 store i64 0, i64* %temp_$_4
 br label %mrg_$_7
mrg_$_7:
 %res_$_37 = load i64, i64* %temp_$_4
 ret i64 %res_$_37
}

define i64 @tigermain (i8* %$sl) {
 %locals_$_1 = alloca %$locals_tigermain
 %arg_$_38 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_38
 %temp_$_40 = bitcast { i64, [1 x i8] }* @str_$_39 to i8*
 %ret_$_41 = call i64 @isdigit$0 (%$locals_tigermain* %locals_$_1, i8* %temp_$_40)
 ret i64 %ret_$_41
}
