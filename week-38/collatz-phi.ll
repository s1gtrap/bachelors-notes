@errmsg = private constant [19 x i8] c"invalid arguments\0A\00"
@valmsg = private constant [4 x i8] c"%d\0A\00"

declare i32 @atoi(i8*)
declare i32 @puts(i8*)
declare i32 @printf(i8*, ...)

define i32 @main(i32 %argc, i8** %argv) {
    %cnd0 = icmp ne i32 %argc, 2
    br i1 %cnd0, label %exit, label %succ
exit:
    call i32 @puts(i8* @errmsg)
    ret i32 1
succ:
    %arg1ptr = getelementptr i8**, i8** %argv, i64 1
    %arg1str = load i8*, i8** %arg1ptr
    %x0 = call i32 @atoi(i8* %arg1str)
    br label %step0
step0:
    %x1 = phi i32 [%x0, %succ], [%x3, %even], [%x5, %odd]
    call i32 (i8*, ...) @printf(ptr @valmsg, i32 %x1)
    %cnd1 = icmp ule i32 %x1, 1
    br i1 %cnd1, label %final, label %step1
step1:
    %x2 = and i32 %x1, 1
    %cnd2 = icmp eq i32 %x2, 1
    br i1 %cnd2, label %odd, label %even
even:
    %x3 = sdiv i32 %x1, 2
    br label %step0
odd:
    %x4 = mul i32 %x1, 3
    %x5 = add i32 %x4, 1
    br label %step0
final:
    ret i32 0
}
