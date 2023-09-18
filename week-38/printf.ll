@msg = private constant [18 x i8] c"Hello world, %d!\0A\00"

declare i32 @printf(i8*, ...)

define i32 @main(i32 %argc, i8** %argv) {
    call i32 (i8*, ...) @printf(ptr @msg, i32 42)
    ret i32 0
}
