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
    %x1 = alloca i32
    store i32 %x0, i32* %x1
    br label %step0
step0:
    %x2 = load i32, i32* %x1
    call i32 (i8*, ...) @printf(ptr @valmsg, i32 %x2)
    %cnd1 = icmp ule i32 %x2, 1
    br i1 %cnd1, label %final, label %step1
step1:
    %x3 = and i32 %x2, 1
    %cnd2 = icmp eq i32 %x3, 1
    br i1 %cnd2, label %odd, label %even
even:
    %x4 = load i32, i32* %x1
    %x5 = sdiv i32 %x4, 2
    store i32 %x5, i32* %x1
    br label %step0
odd:
    %x6 = load i32, i32* %x1
    %x7 = mul i32 %x6, 3
    %x8 = add i32 %x7, 1
    store i32 %x8, i32* %x1
    br label %step0
final:
    ret i32 0
}
