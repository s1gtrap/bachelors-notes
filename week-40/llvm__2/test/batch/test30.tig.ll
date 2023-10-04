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

%a$0 = type i8*
%b$1 = type i8*
%$locals_tigermain = type { i8*, i8* }

define i64 @tigermain (i8* %$sl) {
 %locals_$_0 = alloca %$locals_tigermain
 %arg_$_1 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_1
 %init_ptr_$_2 = alloca i64
 store i64 0, i64* %init_ptr_$_2
 %init_ptr_$_3 = bitcast i64* %init_ptr_$_2 to i8*
 %init_size_ptr_$_4 = getelementptr i64, i64* null, i32 1
 %init_size_$_5 = ptrtoint i64* %init_size_ptr_$_4 to i64
 %array_ptr_$_6 = call i8* @initArray (i64 10, i64 %init_size_$_5, i8* %init_ptr_$_3)
 %temp_$_7 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 store i8* %array_ptr_$_6, i8** %temp_$_7
 %var_ptr_$_8 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_0, i32 0, i32 1
 %load_$_9 = load i8*, i8** %var_ptr_$_8
 %len_ptr_$_12 = bitcast i8* %load_$_9 to i64*
 %len_ptr_$_13 = getelementptr i64, i64* %len_ptr_$_12, i32 -1
 %len_$_14 = load i64, i64* %len_ptr_$_13
 %cnd_$_15 = icmp sle i64 %len_$_14, 2
 br i1 %cnd_$_15, label %thn_$_10, label %mrg_$_11
thn_$_10:
 call i64 @arrInxError (i64 2)
 br label %mrg_$_11
mrg_$_11:
 %array_ptr_$_16 = bitcast i8* %load_$_9 to i64*
 %entry_ptr_$_17 = getelementptr i64, i64* %array_ptr_$_16, i32 2
 %res_$_18 = load i64, i64* %entry_ptr_$_17
 ret i64 %res_$_18
}
