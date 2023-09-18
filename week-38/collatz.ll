@string = private constant [2 x i8] c"69"
@errmsg = private constant [17 x i8] c"invalid arguments"

declare i32 @atoi(i8*)
declare i32 @puts(i8*)

define i32 @main(i32 %argc, i8** %argv) {
    %cnd = icmp ne i32 %argc, 2
    br i1 %cnd, label %exit, label %succ
exit:
    %msg = getelementptr [17 x i8], [17 x i8]* @errmsg, i64 0, i64 0
    call i32 @puts(i8* %msg)
    ret i32 1
succ:
    %val0 = getelementptr i8**, i8** %argv, i64 1
    %val1 = load i8*, i8** %val0
    call i32 @puts(i8* %val1)
    %val2 = call i32 @atoi(i8* %val1)
    ret i32 %val2
}
