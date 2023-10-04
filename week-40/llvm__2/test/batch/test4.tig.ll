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

%$locals_nfactor$0 = type { %$locals_tigermain*, i64 }
%$locals_tigermain = type { i8*, i64 }

define i64 @nfactor$0 (%$locals_tigermain* %$sl, i64 %n$1) {
 %temp_$_4 = alloca i64
 %locals_$_0 = alloca %$locals_nfactor$0
 %arg_$_2 = getelementptr %$locals_nfactor$0, %$locals_nfactor$0* %locals_$_0, i32 0, i32 1
 store i64 %n$1, i64* %arg_$_2
 %arg_$_3 = getelementptr %$locals_nfactor$0, %$locals_nfactor$0* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_3
 %var_ptr_$_8 = getelementptr %$locals_nfactor$0, %$locals_nfactor$0* %locals_$_0, i32 0, i32 1
 %res_$_9 = load i64, i64* %var_ptr_$_8
 %temp_$_10 = icmp eq i64 %res_$_9, 0
 %temp_$_11 = zext i1 %temp_$_10 to i64
 %cnd_$_12 = icmp ne i64 %temp_$_11, 0
 br i1 %cnd_$_12, label %thn_$_5, label %els_$_6
thn_$_5:
 store i64 1, i64* %temp_$_4
 br label %mrg_$_7
els_$_6:
 %var_ptr_$_13 = getelementptr %$locals_nfactor$0, %$locals_nfactor$0* %locals_$_0, i32 0, i32 1
 %res_$_14 = load i64, i64* %var_ptr_$_13
 %lnk_$_15 = getelementptr %$locals_nfactor$0, %$locals_nfactor$0* %locals_$_0, i32 0, i32 0
 %load_$_16 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_15
 %var_ptr_$_17 = getelementptr %$locals_nfactor$0, %$locals_nfactor$0* %locals_$_0, i32 0, i32 1
 %res_$_18 = load i64, i64* %var_ptr_$_17
 %temp_$_19 = sub i64 %res_$_18, 1
 %ret_$_20 = call i64 @nfactor$0 (%$locals_tigermain* %load_$_16, i64 %temp_$_19)
 %temp_$_21 = mul i64 %res_$_14, %ret_$_20
 store i64 %temp_$_21, i64* %temp_$_4
 br label %mrg_$_7
mrg_$_7:
 %res_$_22 = load i64, i64* %temp_$_4
 ret i64 %res_$_22
}

define i64 @tigermain (i8* %$sl) {
 %locals_$_1 = alloca %$locals_tigermain
 %arg_$_23 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_23
 %ret_$_24 = call i64 @nfactor$0 (%$locals_tigermain* %locals_$_1, i64 10)
 ret i64 %ret_$_24
}
