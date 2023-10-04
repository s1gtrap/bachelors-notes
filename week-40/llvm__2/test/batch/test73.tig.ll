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

%$locals_chk$0 = type { %$locals_tigermain*, i64, i64, i8* }
%$locals_tigermain = type { i8*, i8*, i64, i64 }

@str_$_29 = global { i64, [6 x i8] } {i64 6, [6 x i8] c"Not OK"}
@str_$_27 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"OK"}
@str_$_24 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"."}

define void @chk$0 (%$locals_tigermain* %$sl, i64 %a$1, i64 %b$2, i8* %msg$3) {
 %locals_$_0 = alloca %$locals_chk$0
 %arg_$_2 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 3
 store i8* %msg$3, i8** %arg_$_2
 %arg_$_3 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 2
 store i64 %b$2, i64* %arg_$_3
 %arg_$_4 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 1
 store i64 %a$1, i64* %arg_$_4
 %arg_$_5 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_5
 %var_ptr_$_9 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 1
 %res_$_10 = load i64, i64* %var_ptr_$_9
 %var_ptr_$_11 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 2
 %res_$_12 = load i64, i64* %var_ptr_$_11
 %temp_$_13 = icmp eq i64 %res_$_10, %res_$_12
 %temp_$_14 = zext i1 %temp_$_13 to i64
 %cnd_$_15 = icmp ne i64 %temp_$_14, 0
 br i1 %cnd_$_15, label %thn_$_6, label %els_$_7
thn_$_6:
 %lnk_$_16 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 0
 %load_$_17 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_16
 %var_ptr_$_19 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 3
 %res_$_20 = load i8*, i8** %var_ptr_$_19
 call void @print (i8* null, i8* %res_$_20)
 br label %mrg_$_8
els_$_7:
 %lnk_$_21 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 0
 %load_$_22 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_21
 %temp_$_25 = bitcast { i64, [1 x i8] }* @str_$_24 to i8*
 call void @print (i8* null, i8* %temp_$_25)
 br label %mrg_$_8
mrg_$_8:
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_1 = alloca %$locals_tigermain
 %arg_$_26 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_1, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_26
 %temp_$_28 = bitcast { i64, [2 x i8] }* @str_$_27 to i8*
 call void @chk$0 (%$locals_tigermain* %locals_$_1, i64 1, i64 1, i8* %temp_$_28)
 %temp_$_30 = bitcast { i64, [6 x i8] }* @str_$_29 to i8*
 call void @chk$0 (%$locals_tigermain* %locals_$_1, i64 0, i64 1, i8* %temp_$_30)
 ret void
}
