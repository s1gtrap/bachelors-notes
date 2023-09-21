define i32 @main() {
    %a = add i32 3, 0
    %b = add i32 2, 0
    %c = add i32 1, 0
    %x0 = mul i32 %a, %b
    %x1 = add i32 %x0, %c
    ret i32 %x1
}
