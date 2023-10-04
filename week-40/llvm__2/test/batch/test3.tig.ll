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

%rectype$0 = type { i8*, i64 }
%$locals_tigermain = type { i8*, i8* }

@str_$_11 = global { i64, [8 x i8] } {i64 8, [8 x i8] c"Somebody"}
@str_$_6 = global { i64, [6 x i8] } {i64 6, [6 x i8] c"Nobody"}

define i8* @tigermain (i8* %$sl) {
 %locals_$_0 = alloca %$locals_tigermain
 %arg_$_1 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_1
 %size_ptr_$_2 = getelementptr %rectype$0, %rectype$0* null, i32 1
 %size_$_3 = ptrtoint %rectype$0* %size_ptr_$_2 to i64
 %record_ptr_$_4 = call i8* @allocRecord (i64 %size_$_3)
 %rec_$_5 = bitcast i8* %record_ptr_$_4 to %rectype$0*
 %temp_$_7 = bitcast { i64, [6 x i8] }* @str_$_6 to i8*
 %field_ptr_$_8 = getelementptr %rectype$0, %rectype$0* %rec_$_5, i32 0, i32 0
 store i8* %temp_$_7, i8** %field_ptr_$_8
 %field_ptr_$_9 = getelementptr %rectype$0, %rectype$0* %rec_$_5, i32 0, i32 1
 store i64 1000, i64* %field_ptr_$_9
 %temp_$_10 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 store i8* %record_ptr_$_4, i8** %temp_$_10
 %temp_$_12 = bitcast { i64, [8 x i8] }* @str_$_11 to i8*
 %var_ptr_$_13 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 %load_$_14 = load i8*, i8** %var_ptr_$_13
 %record_ptr_$_15 = bitcast i8* %load_$_14 to %rectype$0*
 %int_of_ptr_$_18 = ptrtoint i8* %load_$_14 to i64
 %cnd_$_19 = icmp eq i64 %int_of_ptr_$_18, 0
 br i1 %cnd_$_19, label %thn_$_16, label %mrg_$_17
thn_$_16:
 call i64 @recFieldError ()
 br label %mrg_$_17
mrg_$_17:
 %field_ptr_$_20 = getelementptr %rectype$0, %rectype$0* %record_ptr_$_15, i32 0, i32 0
 store i8* %temp_$_12, i8** %field_ptr_$_20
 %var_ptr_$_21 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 %res_$_22 = load i8*, i8** %var_ptr_$_21
 ret i8* %res_$_22
}
