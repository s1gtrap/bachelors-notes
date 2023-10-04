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

@str_$_25 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"M"}
@str_$_23 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"M"}
@str_$_18 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_16 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_12 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_10 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}

define i64 @tigermain (i8* %$sl) {
 %temp_$_6 = alloca i64
 %temp_$_2 = alloca i64
 %locals_$_0 = alloca %$locals_tigermain
 %arg_$_1 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_1
 %temp_$_11 = bitcast { i64, [1 x i8] }* @str_$_10 to i8*
 %temp_$_13 = bitcast { i64, [1 x i8] }* @str_$_12 to i8*
 %temp_$_14 = call i64 @stringEqual (i8* %temp_$_11, i8* %temp_$_13)
 %cnd_$_15 = icmp ne i64 %temp_$_14, 0
 br i1 %cnd_$_15, label %thn_$_7, label %els_$_8
thn_$_7:
 %temp_$_17 = bitcast { i64, [1 x i8] }* @str_$_16 to i8*
 %temp_$_19 = bitcast { i64, [1 x i8] }* @str_$_18 to i8*
 %temp_$_20 = call i64 @stringEqual (i8* %temp_$_17, i8* %temp_$_19)
 store i64 %temp_$_20, i64* %temp_$_6
 br label %mrg_$_9
els_$_8:
 store i64 0, i64* %temp_$_6
 br label %mrg_$_9
mrg_$_9:
 %res_$_21 = load i64, i64* %temp_$_6
 %cnd_$_22 = icmp ne i64 %res_$_21, 0
 br i1 %cnd_$_22, label %thn_$_3, label %els_$_4
thn_$_3:
 %temp_$_24 = bitcast { i64, [1 x i8] }* @str_$_23 to i8*
 %temp_$_26 = bitcast { i64, [1 x i8] }* @str_$_25 to i8*
 %temp_$_27 = call i64 @stringEqual (i8* %temp_$_24, i8* %temp_$_26)
 store i64 %temp_$_27, i64* %temp_$_2
 br label %mrg_$_5
els_$_4:
 store i64 0, i64* %temp_$_2
 br label %mrg_$_5
mrg_$_5:
 %res_$_28 = load i64, i64* %temp_$_2
 ret i64 %res_$_28
}
