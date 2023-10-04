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
%$locals_fill$1 = type { %$locals_tigermain*, i64, i64, i8* }
%$locals_newl$2 = type { %$locals_tigermain* }
%$locals_mod_pos$13 = type { %$locals_mod$3*, i64, i64 }
%$locals_mod_neg$14 = type { %$locals_mod$3*, i64, i64 }
%$locals_mod$3 = type { %$locals_tigermain*, i64, i64, i64, i64, i64, i64 }
%$locals_XX$19 = type { %$locals_TstArith$4* }
%$locals_TstArith$4 = type { %$locals_tigermain*, i64, i64, i8*, i64, i64, i64 }
%$locals_tigermain = type { i8*, i64, i64, i8*, i8*, i64, i64 }

@str_$_2094 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_2089 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"b"}
@str_$_2082 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"c"}
@str_$_2073 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"d"}
@str_$_2061 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"e"}
@str_$_2054 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"f"}
@str_$_2042 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"g"}
@str_$_2036 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"h"}
@str_$_2030 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"i"}
@str_$_2022 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"j"}
@str_$_2014 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"k"}
@str_$_2008 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_2002 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"b"}
@str_$_1995 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"c"}
@str_$_1985 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"d"}
@str_$_1972 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"e"}
@str_$_1964 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"f"}
@str_$_1951 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"ghij"}
@str_$_1946 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"k"}
@str_$_1940 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_1934 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"b"}
@str_$_1926 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"c"}
@str_$_1915 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"."}
@str_$_1910 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"d"}
@str_$_1885 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"e"}
@str_$_1869 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"f"}
@str_$_1853 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"g"}
@str_$_1837 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"h"}
@str_$_1815 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"i"}
@str_$_1799 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"j"}
@str_$_1783 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"k"}
@str_$_1767 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"l"}
@str_$_1750 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"m"}
@str_$_1743 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_1736 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"n"}
@str_$_1727 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_1720 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"b"}
@str_$_1711 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"c"}
@str_$_1699 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"d"}
@str_$_1694 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"e"}
@str_$_1687 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"f"}
@str_$_1677 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"g"}
@str_$_1667 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"h"}
@str_$_1655 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"i"}
@str_$_1643 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"j"}
@str_$_1630 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"k"}
@str_$_1621 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"l"}
@str_$_1612 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"m"}
@str_$_1603 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"n"}
@str_$_1594 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"o"}
@str_$_1585 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"p"}
@str_$_1576 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"q"}
@str_$_1567 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"r"}
@str_$_1558 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"s"}
@str_$_1552 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_1545 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"b"}
@str_$_1536 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"c"}
@str_$_1524 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"d"}
@str_$_1519 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"e"}
@str_$_1512 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"f"}
@str_$_1502 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"g"}
@str_$_1492 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"h"}
@str_$_1480 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"i"}
@str_$_1468 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"j"}
@str_$_1455 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"k"}
@str_$_1448 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"l"}
@str_$_1441 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"m"}
@str_$_1434 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"n"}
@str_$_1427 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"o"}
@str_$_1420 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"p"}
@str_$_1413 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"q"}
@str_$_1406 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"r"}
@str_$_1399 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"s"}
@str_$_1392 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"t"}
@str_$_1385 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"u"}
@str_$_1378 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"v"}
@str_$_1371 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"w"}
@str_$_1364 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"x"}
@str_$_1357 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"y"}
@str_$_1350 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"z"}
@str_$_1343 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_1336 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"1"}
@str_$_1329 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"2"}
@str_$_1322 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"3"}
@str_$_1315 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"4"}
@str_$_1308 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"5"}
@str_$_1303 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"6"}
@str_$_1297 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_1287 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"b"}
@str_$_1275 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"c"}
@str_$_1259 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"d"}
@str_$_1250 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"e"}
@str_$_1241 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"f"}
@str_$_1233 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"g"}
@str_$_1225 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"h"}
@str_$_1214 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"i"}
@str_$_1204 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"j"}
@str_$_1191 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"k"}
@str_$_1179 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"l"}
@str_$_1164 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"m"}
@str_$_1150 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"n"}
@str_$_1134 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"o"}
@str_$_1119 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"2"}
@str_$_1110 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"p"}
@str_$_1100 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"q"}
@str_$_1090 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"r"}
@str_$_1081 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"s"}
@str_$_1072 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"t"}
@str_$_1059 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"u"}
@str_$_1047 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"v"}
@str_$_1035 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"w"}
@str_$_1023 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"x"}
@str_$_1014 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"y"}
@str_$_1001 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"z"}
@str_$_990 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_978 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"1"}
@str_$_961 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"3"}
@str_$_954 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_944 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"b"}
@str_$_934 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"c"}
@str_$_924 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"d"}
@str_$_914 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"e"}
@str_$_904 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"f"}
@str_$_894 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"g"}
@str_$_884 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"h"}
@str_$_873 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"i"}
@str_$_863 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"j"}
@str_$_853 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"k"}
@str_$_842 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"l"}
@str_$_833 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"m"}
@str_$_824 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"n"}
@str_$_815 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"o"}
@str_$_806 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"p"}
@str_$_797 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"q"}
@str_$_788 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"r"}
@str_$_779 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"s"}
@str_$_769 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"t"}
@str_$_760 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"u"}
@str_$_751 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"v"}
@str_$_742 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"w"}
@str_$_735 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_723 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"b"}
@str_$_711 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"c"}
@str_$_699 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"d"}
@str_$_687 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"e"}
@str_$_675 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"f"}
@str_$_663 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"g"}
@str_$_651 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"h"}
@str_$_638 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"i"}
@str_$_626 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"j"}
@str_$_614 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"k"}
@str_$_601 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"l"}
@str_$_591 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"m"}
@str_$_580 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"n"}
@str_$_569 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"o"}
@str_$_558 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"p"}
@str_$_547 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"q"}
@str_$_536 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"r"}
@str_$_525 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"s"}
@str_$_513 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"t"}
@str_$_502 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"u"}
@str_$_491 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"v"}
@str_$_480 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"w"}
@str_$_468 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"x"}
@str_$_455 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"y"}
@str_$_443 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"z"}
@str_$_431 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_419 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"1"}
@str_$_407 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"2"}
@str_$_394 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"3"}
@str_$_382 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"4"}
@str_$_370 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"5"}
@str_$_358 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"6"}
@str_$_353 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_344 = global { i64, [17 x i8] } {i64 17, [17 x i8] c"Error: mod (_,0) "}
@str_$_195 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_185 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"9"}
@str_$_156 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_133 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"9"}
@str_$_121 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"0"}
@str_$_98 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"z"}
@str_$_69 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_50 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"z"}
@str_$_38 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"a"}
@str_$_31 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"."}

define void @chk$0 (%$locals_tigermain* %$sl, i64 %a$5, i64 %b$6, i8* %msg$7) {
 %locals_$_0 = alloca %$locals_chk$0
 %arg_$_9 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 3
 store i8* %msg$7, i8** %arg_$_9
 %arg_$_10 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 2
 store i64 %b$6, i64* %arg_$_10
 %arg_$_11 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 1
 store i64 %a$5, i64* %arg_$_11
 %arg_$_12 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_12
 %var_ptr_$_16 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 1
 %res_$_17 = load i64, i64* %var_ptr_$_16
 %var_ptr_$_18 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 2
 %res_$_19 = load i64, i64* %var_ptr_$_18
 %temp_$_20 = icmp eq i64 %res_$_17, %res_$_19
 %temp_$_21 = zext i1 %temp_$_20 to i64
 %cnd_$_22 = icmp ne i64 %temp_$_21, 0
 br i1 %cnd_$_22, label %thn_$_13, label %els_$_14
thn_$_13:
 %lnk_$_23 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 0
 %load_$_24 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_23
 %var_ptr_$_26 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 3
 %res_$_27 = load i8*, i8** %var_ptr_$_26
 call void @print (i8* null, i8* %res_$_27)
 br label %mrg_$_15
els_$_14:
 %lnk_$_28 = getelementptr %$locals_chk$0, %$locals_chk$0* %locals_$_0, i32 0, i32 0
 %load_$_29 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_28
 %temp_$_32 = bitcast { i64, [1 x i8] }* @str_$_31 to i8*
 call void @print (i8* null, i8* %temp_$_32)
 br label %mrg_$_15
mrg_$_15:
 ret void
}

define void @fill$1 (%$locals_tigermain* %$sl, i8* %first$8) {
 %temp_$_149 = alloca i64
 %temp_$_145 = alloca i64
 %temp_$_141 = alloca i64
 %temp_$_62 = alloca i64
 %temp_$_58 = alloca i64
 %locals_$_1 = alloca %$locals_fill$1
 %arg_$_33 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 3
 store i8* %first$8, i8** %arg_$_33
 %arg_$_34 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_34
 %lnk_$_35 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_36 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_35
 %temp_$_39 = bitcast { i64, [1 x i8] }* @str_$_38 to i8*
 %ret_$_40 = call i64 @ord (i8* null, i8* %temp_$_39)
 %temp_$_41 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 2
 store i64 %ret_$_40, i64* %temp_$_41
 br label %test_$_42
test_$_42:
 %var_ptr_$_45 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 2
 %res_$_46 = load i64, i64* %var_ptr_$_45
 %lnk_$_47 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_48 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_47
 %temp_$_51 = bitcast { i64, [1 x i8] }* @str_$_50 to i8*
 %ret_$_52 = call i64 @ord (i8* null, i8* %temp_$_51)
 %temp_$_53 = icmp sle i64 %res_$_46, %ret_$_52
 %temp_$_54 = zext i1 %temp_$_53 to i64
 %cnd_$_55 = icmp ne i64 %temp_$_54, 0
 br i1 %cnd_$_55, label %body_$_43, label %mrg_$_44
body_$_43:
 %lnk_$_66 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_67 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_66
 %temp_$_70 = bitcast { i64, [1 x i8] }* @str_$_69 to i8*
 %ret_$_71 = call i64 @ord (i8* null, i8* %temp_$_70)
 %lnk_$_72 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_73 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_72
 %var_ptr_$_75 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 3
 %res_$_76 = load i8*, i8** %var_ptr_$_75
 %ret_$_77 = call i64 @ord (i8* null, i8* %res_$_76)
 %temp_$_78 = icmp sle i64 %ret_$_71, %ret_$_77
 %temp_$_79 = zext i1 %temp_$_78 to i64
 %cnd_$_80 = icmp ne i64 %temp_$_79, 0
 br i1 %cnd_$_80, label %thn_$_63, label %els_$_64
thn_$_63:
 %lnk_$_81 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_82 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_81
 %var_ptr_$_84 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 3
 %res_$_85 = load i8*, i8** %var_ptr_$_84
 %ret_$_86 = call i64 @ord (i8* null, i8* %res_$_85)
 %var_ptr_$_87 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 2
 %res_$_88 = load i64, i64* %var_ptr_$_87
 %temp_$_89 = icmp sle i64 %ret_$_86, %res_$_88
 %temp_$_90 = zext i1 %temp_$_89 to i64
 store i64 %temp_$_90, i64* %temp_$_62
 br label %mrg_$_65
els_$_64:
 store i64 0, i64* %temp_$_62
 br label %mrg_$_65
mrg_$_65:
 %res_$_91 = load i64, i64* %temp_$_62
 %cnd_$_92 = icmp ne i64 %res_$_91, 0
 br i1 %cnd_$_92, label %thn_$_59, label %els_$_60
thn_$_59:
 %var_ptr_$_93 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 2
 %res_$_94 = load i64, i64* %var_ptr_$_93
 %lnk_$_95 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_96 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_95
 %temp_$_99 = bitcast { i64, [1 x i8] }* @str_$_98 to i8*
 %ret_$_100 = call i64 @ord (i8* null, i8* %temp_$_99)
 %temp_$_101 = icmp sle i64 %res_$_94, %ret_$_100
 %temp_$_102 = zext i1 %temp_$_101 to i64
 store i64 %temp_$_102, i64* %temp_$_58
 br label %mrg_$_61
els_$_60:
 store i64 0, i64* %temp_$_58
 br label %mrg_$_61
mrg_$_61:
 %res_$_103 = load i64, i64* %temp_$_58
 %cnd_$_104 = icmp ne i64 %res_$_103, 0
 br i1 %cnd_$_104, label %thn_$_56, label %mrg_$_57
thn_$_56:
 %lnk_$_105 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_106 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_105
 %lnk_$_108 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_109 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_108
 %var_ptr_$_111 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 2
 %res_$_112 = load i64, i64* %var_ptr_$_111
 %ret_$_113 = call i8* @chr (i8* null, i64 %res_$_112)
 call void @print (i8* null, i8* %ret_$_113)
 br label %mrg_$_57
mrg_$_57:
 %var_ptr_$_114 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 2
 %res_$_115 = load i64, i64* %var_ptr_$_114
 %temp_$_116 = add i64 %res_$_115, 1
 %var_ptr_$_117 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 2
 store i64 %temp_$_116, i64* %var_ptr_$_117
 br label %test_$_42
mrg_$_44:
 %lnk_$_118 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_119 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_118
 %temp_$_122 = bitcast { i64, [1 x i8] }* @str_$_121 to i8*
 %ret_$_123 = call i64 @ord (i8* null, i8* %temp_$_122)
 %temp_$_124 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 1
 store i64 %ret_$_123, i64* %temp_$_124
 br label %test_$_125
test_$_125:
 %var_ptr_$_128 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 1
 %res_$_129 = load i64, i64* %var_ptr_$_128
 %lnk_$_130 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_131 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_130
 %temp_$_134 = bitcast { i64, [1 x i8] }* @str_$_133 to i8*
 %ret_$_135 = call i64 @ord (i8* null, i8* %temp_$_134)
 %temp_$_136 = icmp sle i64 %res_$_129, %ret_$_135
 %temp_$_137 = zext i1 %temp_$_136 to i64
 %cnd_$_138 = icmp ne i64 %temp_$_137, 0
 br i1 %cnd_$_138, label %body_$_126, label %mrg_$_127
body_$_126:
 %lnk_$_153 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_154 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_153
 %temp_$_157 = bitcast { i64, [1 x i8] }* @str_$_156 to i8*
 %ret_$_158 = call i64 @ord (i8* null, i8* %temp_$_157)
 %lnk_$_159 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_160 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_159
 %var_ptr_$_162 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 3
 %res_$_163 = load i8*, i8** %var_ptr_$_162
 %ret_$_164 = call i64 @ord (i8* null, i8* %res_$_163)
 %temp_$_165 = icmp sle i64 %ret_$_158, %ret_$_164
 %temp_$_166 = zext i1 %temp_$_165 to i64
 %cnd_$_167 = icmp ne i64 %temp_$_166, 0
 br i1 %cnd_$_167, label %thn_$_150, label %els_$_151
thn_$_150:
 %lnk_$_168 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_169 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_168
 %var_ptr_$_171 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 3
 %res_$_172 = load i8*, i8** %var_ptr_$_171
 %ret_$_173 = call i64 @ord (i8* null, i8* %res_$_172)
 %var_ptr_$_174 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 1
 %res_$_175 = load i64, i64* %var_ptr_$_174
 %temp_$_176 = icmp sle i64 %ret_$_173, %res_$_175
 %temp_$_177 = zext i1 %temp_$_176 to i64
 store i64 %temp_$_177, i64* %temp_$_149
 br label %mrg_$_152
els_$_151:
 store i64 0, i64* %temp_$_149
 br label %mrg_$_152
mrg_$_152:
 %res_$_178 = load i64, i64* %temp_$_149
 %cnd_$_179 = icmp ne i64 %res_$_178, 0
 br i1 %cnd_$_179, label %thn_$_146, label %els_$_147
thn_$_146:
 %var_ptr_$_180 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 1
 %res_$_181 = load i64, i64* %var_ptr_$_180
 %lnk_$_182 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_183 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_182
 %temp_$_186 = bitcast { i64, [1 x i8] }* @str_$_185 to i8*
 %ret_$_187 = call i64 @ord (i8* null, i8* %temp_$_186)
 %temp_$_188 = icmp sle i64 %res_$_181, %ret_$_187
 %temp_$_189 = zext i1 %temp_$_188 to i64
 store i64 %temp_$_189, i64* %temp_$_145
 br label %mrg_$_148
els_$_147:
 store i64 0, i64* %temp_$_145
 br label %mrg_$_148
mrg_$_148:
 %res_$_190 = load i64, i64* %temp_$_145
 %cnd_$_191 = icmp ne i64 %res_$_190, 0
 br i1 %cnd_$_191, label %thn_$_142, label %els_$_143
thn_$_142:
 store i64 1, i64* %temp_$_141
 br label %mrg_$_144
els_$_143:
 %lnk_$_192 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_193 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_192
 %temp_$_196 = bitcast { i64, [1 x i8] }* @str_$_195 to i8*
 %ret_$_197 = call i64 @ord (i8* null, i8* %temp_$_196)
 %lnk_$_198 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_199 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_198
 %var_ptr_$_201 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 3
 %res_$_202 = load i8*, i8** %var_ptr_$_201
 %ret_$_203 = call i64 @ord (i8* null, i8* %res_$_202)
 %temp_$_204 = icmp sle i64 %ret_$_197, %ret_$_203
 %temp_$_205 = zext i1 %temp_$_204 to i64
 store i64 %temp_$_205, i64* %temp_$_141
 br label %mrg_$_144
mrg_$_144:
 %res_$_206 = load i64, i64* %temp_$_141
 %cnd_$_207 = icmp ne i64 %res_$_206, 0
 br i1 %cnd_$_207, label %thn_$_139, label %mrg_$_140
thn_$_139:
 %lnk_$_208 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_209 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_208
 %lnk_$_211 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 0
 %load_$_212 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_211
 %var_ptr_$_214 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 1
 %res_$_215 = load i64, i64* %var_ptr_$_214
 %ret_$_216 = call i8* @chr (i8* null, i64 %res_$_215)
 call void @print (i8* null, i8* %ret_$_216)
 br label %mrg_$_140
mrg_$_140:
 %var_ptr_$_217 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 1
 %res_$_218 = load i64, i64* %var_ptr_$_217
 %temp_$_219 = add i64 %res_$_218, 1
 %var_ptr_$_220 = getelementptr %$locals_fill$1, %$locals_fill$1* %locals_$_1, i32 0, i32 1
 store i64 %temp_$_219, i64* %var_ptr_$_220
 br label %test_$_125
mrg_$_127:
 ret void
}

define void @newl$2 (%$locals_tigermain* %$sl) {
 %locals_$_2 = alloca %$locals_newl$2
 %arg_$_221 = getelementptr %$locals_newl$2, %$locals_newl$2* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_221
 %lnk_$_222 = getelementptr %$locals_newl$2, %$locals_newl$2* %locals_$_2, i32 0, i32 0
 %load_$_223 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_222
 %lnk_$_225 = getelementptr %$locals_newl$2, %$locals_newl$2* %locals_$_2, i32 0, i32 0
 %load_$_226 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_225
 %ret_$_228 = call i8* @chr (i8* null, i64 10)
 call void @print (i8* null, i8* %ret_$_228)
 ret void
}

define i64 @mod_pos$13 (%$locals_mod$3* %$sl, i64 %a$15, i64 %b$16) {
 %locals_$_3 = alloca %$locals_mod_pos$13
 %arg_$_229 = getelementptr %$locals_mod_pos$13, %$locals_mod_pos$13* %locals_$_3, i32 0, i32 2
 store i64 %b$16, i64* %arg_$_229
 %arg_$_230 = getelementptr %$locals_mod_pos$13, %$locals_mod_pos$13* %locals_$_3, i32 0, i32 1
 store i64 %a$15, i64* %arg_$_230
 %arg_$_231 = getelementptr %$locals_mod_pos$13, %$locals_mod_pos$13* %locals_$_3, i32 0, i32 0
 store %$locals_mod$3* %$sl, %$locals_mod$3** %arg_$_231
 br label %test_$_232
test_$_232:
 %var_ptr_$_235 = getelementptr %$locals_mod_pos$13, %$locals_mod_pos$13* %locals_$_3, i32 0, i32 1
 %res_$_236 = load i64, i64* %var_ptr_$_235
 %var_ptr_$_237 = getelementptr %$locals_mod_pos$13, %$locals_mod_pos$13* %locals_$_3, i32 0, i32 2
 %res_$_238 = load i64, i64* %var_ptr_$_237
 %temp_$_239 = icmp sge i64 %res_$_236, %res_$_238
 %temp_$_240 = zext i1 %temp_$_239 to i64
 %cnd_$_241 = icmp ne i64 %temp_$_240, 0
 br i1 %cnd_$_241, label %body_$_233, label %mrg_$_234
body_$_233:
 %var_ptr_$_242 = getelementptr %$locals_mod_pos$13, %$locals_mod_pos$13* %locals_$_3, i32 0, i32 1
 %res_$_243 = load i64, i64* %var_ptr_$_242
 %var_ptr_$_244 = getelementptr %$locals_mod_pos$13, %$locals_mod_pos$13* %locals_$_3, i32 0, i32 2
 %res_$_245 = load i64, i64* %var_ptr_$_244
 %temp_$_246 = sub i64 %res_$_243, %res_$_245
 %var_ptr_$_247 = getelementptr %$locals_mod_pos$13, %$locals_mod_pos$13* %locals_$_3, i32 0, i32 1
 store i64 %temp_$_246, i64* %var_ptr_$_247
 br label %test_$_232
mrg_$_234:
 %var_ptr_$_248 = getelementptr %$locals_mod_pos$13, %$locals_mod_pos$13* %locals_$_3, i32 0, i32 1
 %res_$_249 = load i64, i64* %var_ptr_$_248
 ret i64 %res_$_249
}

define i64 @mod_neg$14 (%$locals_mod$3* %$sl, i64 %a$17, i64 %b$18) {
 %locals_$_4 = alloca %$locals_mod_neg$14
 %arg_$_250 = getelementptr %$locals_mod_neg$14, %$locals_mod_neg$14* %locals_$_4, i32 0, i32 2
 store i64 %b$18, i64* %arg_$_250
 %arg_$_251 = getelementptr %$locals_mod_neg$14, %$locals_mod_neg$14* %locals_$_4, i32 0, i32 1
 store i64 %a$17, i64* %arg_$_251
 %arg_$_252 = getelementptr %$locals_mod_neg$14, %$locals_mod_neg$14* %locals_$_4, i32 0, i32 0
 store %$locals_mod$3* %$sl, %$locals_mod$3** %arg_$_252
 br label %test_$_253
test_$_253:
 %var_ptr_$_256 = getelementptr %$locals_mod_neg$14, %$locals_mod_neg$14* %locals_$_4, i32 0, i32 1
 %res_$_257 = load i64, i64* %var_ptr_$_256
 %temp_$_258 = icmp slt i64 %res_$_257, 0
 %temp_$_259 = zext i1 %temp_$_258 to i64
 %cnd_$_260 = icmp ne i64 %temp_$_259, 0
 br i1 %cnd_$_260, label %body_$_254, label %mrg_$_255
body_$_254:
 %var_ptr_$_261 = getelementptr %$locals_mod_neg$14, %$locals_mod_neg$14* %locals_$_4, i32 0, i32 1
 %res_$_262 = load i64, i64* %var_ptr_$_261
 %var_ptr_$_263 = getelementptr %$locals_mod_neg$14, %$locals_mod_neg$14* %locals_$_4, i32 0, i32 2
 %res_$_264 = load i64, i64* %var_ptr_$_263
 %temp_$_265 = add i64 %res_$_262, %res_$_264
 %var_ptr_$_266 = getelementptr %$locals_mod_neg$14, %$locals_mod_neg$14* %locals_$_4, i32 0, i32 1
 store i64 %temp_$_265, i64* %var_ptr_$_266
 br label %test_$_253
mrg_$_255:
 %var_ptr_$_267 = getelementptr %$locals_mod_neg$14, %$locals_mod_neg$14* %locals_$_4, i32 0, i32 1
 %res_$_268 = load i64, i64* %var_ptr_$_267
 ret i64 %res_$_268
}

define i64 @mod$3 (%$locals_tigermain* %$sl, i64 %a$11, i64 %b$12) {
 %temp_$_310 = alloca i64
 %temp_$_301 = alloca i64
 %temp_$_281 = alloca i64
 %temp_$_272 = alloca i64
 %locals_$_5 = alloca %$locals_mod$3
 %arg_$_269 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 6
 store i64 %b$12, i64* %arg_$_269
 %arg_$_270 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 5
 store i64 %a$11, i64* %arg_$_270
 %arg_$_271 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_271
 %var_ptr_$_276 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 6
 %res_$_277 = load i64, i64* %var_ptr_$_276
 %temp_$_278 = icmp sgt i64 %res_$_277, 0
 %temp_$_279 = zext i1 %temp_$_278 to i64
 %cnd_$_280 = icmp ne i64 %temp_$_279, 0
 br i1 %cnd_$_280, label %thn_$_273, label %els_$_274
thn_$_273:
 %var_ptr_$_285 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 5
 %res_$_286 = load i64, i64* %var_ptr_$_285
 %temp_$_287 = icmp sge i64 %res_$_286, 0
 %temp_$_288 = zext i1 %temp_$_287 to i64
 %cnd_$_289 = icmp ne i64 %temp_$_288, 0
 br i1 %cnd_$_289, label %thn_$_282, label %els_$_283
thn_$_282:
 %var_ptr_$_290 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 5
 %res_$_291 = load i64, i64* %var_ptr_$_290
 %var_ptr_$_292 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 6
 %res_$_293 = load i64, i64* %var_ptr_$_292
 %ret_$_294 = call i64 @mod_pos$13 (%$locals_mod$3* %locals_$_5, i64 %res_$_291, i64 %res_$_293)
 store i64 %ret_$_294, i64* %temp_$_281
 br label %mrg_$_284
els_$_283:
 %var_ptr_$_295 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 5
 %res_$_296 = load i64, i64* %var_ptr_$_295
 %var_ptr_$_297 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 6
 %res_$_298 = load i64, i64* %var_ptr_$_297
 %ret_$_299 = call i64 @mod_neg$14 (%$locals_mod$3* %locals_$_5, i64 %res_$_296, i64 %res_$_298)
 store i64 %ret_$_299, i64* %temp_$_281
 br label %mrg_$_284
mrg_$_284:
 %res_$_300 = load i64, i64* %temp_$_281
 store i64 %res_$_300, i64* %temp_$_272
 br label %mrg_$_275
els_$_274:
 %var_ptr_$_305 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 6
 %res_$_306 = load i64, i64* %var_ptr_$_305
 %temp_$_307 = icmp slt i64 %res_$_306, 0
 %temp_$_308 = zext i1 %temp_$_307 to i64
 %cnd_$_309 = icmp ne i64 %temp_$_308, 0
 br i1 %cnd_$_309, label %thn_$_302, label %els_$_303
thn_$_302:
 %var_ptr_$_314 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 5
 %res_$_315 = load i64, i64* %var_ptr_$_314
 %temp_$_316 = icmp sge i64 %res_$_315, 0
 %temp_$_317 = zext i1 %temp_$_316 to i64
 %cnd_$_318 = icmp ne i64 %temp_$_317, 0
 br i1 %cnd_$_318, label %thn_$_311, label %els_$_312
thn_$_311:
 %var_ptr_$_319 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 5
 %res_$_320 = load i64, i64* %var_ptr_$_319
 %temp_$_321 = sub i64 0, %res_$_320
 %var_ptr_$_322 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 6
 %res_$_323 = load i64, i64* %var_ptr_$_322
 %temp_$_324 = sub i64 0, %res_$_323
 %ret_$_325 = call i64 @mod_neg$14 (%$locals_mod$3* %locals_$_5, i64 %temp_$_321, i64 %temp_$_324)
 %temp_$_326 = sub i64 0, %ret_$_325
 store i64 %temp_$_326, i64* %temp_$_310
 br label %mrg_$_313
els_$_312:
 %var_ptr_$_327 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 5
 %res_$_328 = load i64, i64* %var_ptr_$_327
 %temp_$_329 = sub i64 0, %res_$_328
 %var_ptr_$_330 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 6
 %res_$_331 = load i64, i64* %var_ptr_$_330
 %temp_$_332 = sub i64 0, %res_$_331
 %ret_$_333 = call i64 @mod_pos$13 (%$locals_mod$3* %locals_$_5, i64 %temp_$_329, i64 %temp_$_332)
 %temp_$_334 = sub i64 0, %ret_$_333
 store i64 %temp_$_334, i64* %temp_$_310
 br label %mrg_$_313
mrg_$_313:
 %res_$_335 = load i64, i64* %temp_$_310
 store i64 %res_$_335, i64* %temp_$_301
 br label %mrg_$_304
els_$_303:
 %lnk_$_341 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 0
 %load_$_342 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_341
 %temp_$_345 = bitcast { i64, [17 x i8] }* @str_$_344 to i8*
 call void @print (i8* null, i8* %temp_$_345)
 %lnk_$_336 = getelementptr %$locals_mod$3, %$locals_mod$3* %locals_$_5, i32 0, i32 0
 %load_$_337 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_336
 %temp_$_339 = sub i64 0, 1
 %ret_$_340 = call i8* @chr (i8* null, i64 %temp_$_339)
 store i64 0, i64* %temp_$_301
 br label %mrg_$_304
mrg_$_304:
 %res_$_346 = load i64, i64* %temp_$_301
 store i64 %res_$_346, i64* %temp_$_272
 br label %mrg_$_275
mrg_$_275:
 %res_$_347 = load i64, i64* %temp_$_272
 ret i64 %res_$_347
}

define i64 @XX$19 (%$locals_TstArith$4* %$sl) {
 %locals_$_6 = alloca %$locals_XX$19
 %arg_$_348 = getelementptr %$locals_XX$19, %$locals_XX$19* %locals_$_6, i32 0, i32 0
 store %$locals_TstArith$4* %$sl, %$locals_TstArith$4** %arg_$_348
 ret i64 999
}

define void @TstArith$4 (%$locals_tigermain* %$sl) {
 %locals_$_7 = alloca %$locals_TstArith$4
 %arg_$_349 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_349
 %temp_$_350 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 5, i64* %temp_$_350
 %temp_$_351 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 store i64 12, i64* %temp_$_351
 %temp_$_352 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 store i64 2, i64* %temp_$_352
 %temp_$_354 = bitcast { i64, [1 x i8] }* @str_$_353 to i8*
 %temp_$_355 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 store i8* %temp_$_354, i8** %temp_$_355
 %lnk_$_2091 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2092 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2091
 %temp_$_2093 = add i64 111, 222
 %temp_$_2095 = bitcast { i64, [1 x i8] }* @str_$_2094 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2092, i64 %temp_$_2093, i64 333, i8* %temp_$_2095)
 %lnk_$_2084 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2085 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2084
 %var_ptr_$_2086 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_2087 = load i64, i64* %var_ptr_$_2086
 %temp_$_2088 = add i64 111, %res_$_2087
 %temp_$_2090 = bitcast { i64, [1 x i8] }* @str_$_2089 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2085, i64 %temp_$_2088, i64 116, i8* %temp_$_2090)
 %lnk_$_2075 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2076 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2075
 %var_ptr_$_2077 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_2078 = load i64, i64* %var_ptr_$_2077
 %var_ptr_$_2079 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_2080 = load i64, i64* %var_ptr_$_2079
 %temp_$_2081 = add i64 %res_$_2078, %res_$_2080
 %temp_$_2083 = bitcast { i64, [1 x i8] }* @str_$_2082 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2076, i64 %temp_$_2081, i64 17, i8* %temp_$_2083)
 %lnk_$_2063 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2064 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2063
 %var_ptr_$_2065 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_2066 = load i64, i64* %var_ptr_$_2065
 %var_ptr_$_2067 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_2068 = load i64, i64* %var_ptr_$_2067
 %temp_$_2069 = add i64 %res_$_2066, %res_$_2068
 %var_ptr_$_2070 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_2071 = load i64, i64* %var_ptr_$_2070
 %temp_$_2072 = add i64 %temp_$_2069, %res_$_2071
 %temp_$_2074 = bitcast { i64, [1 x i8] }* @str_$_2073 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2064, i64 %temp_$_2072, i64 19, i8* %temp_$_2074)
 %lnk_$_2056 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2057 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2056
 %var_ptr_$_2058 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_2059 = load i64, i64* %var_ptr_$_2058
 %temp_$_2060 = add i64 %res_$_2059, 222
 %temp_$_2062 = bitcast { i64, [1 x i8] }* @str_$_2061 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2057, i64 %temp_$_2060, i64 234, i8* %temp_$_2062)
 %lnk_$_2044 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2045 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2044
 %var_ptr_$_2046 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_2047 = load i64, i64* %var_ptr_$_2046
 %var_ptr_$_2048 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_2049 = load i64, i64* %var_ptr_$_2048
 %var_ptr_$_2050 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_2051 = load i64, i64* %var_ptr_$_2050
 %temp_$_2052 = add i64 %res_$_2049, %res_$_2051
 %temp_$_2053 = add i64 %res_$_2047, %temp_$_2052
 %temp_$_2055 = bitcast { i64, [1 x i8] }* @str_$_2054 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2045, i64 %temp_$_2053, i64 19, i8* %temp_$_2055)
 %lnk_$_2038 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2039 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2038
 %ret_$_2040 = call i64 @XX$19 (%$locals_TstArith$4* %locals_$_7)
 %temp_$_2041 = add i64 %ret_$_2040, 1
 %temp_$_2043 = bitcast { i64, [1 x i8] }* @str_$_2042 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2039, i64 %temp_$_2041, i64 1000, i8* %temp_$_2043)
 %lnk_$_2032 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2033 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2032
 %ret_$_2034 = call i64 @XX$19 (%$locals_TstArith$4* %locals_$_7)
 %temp_$_2035 = add i64 2, %ret_$_2034
 %temp_$_2037 = bitcast { i64, [1 x i8] }* @str_$_2036 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2033, i64 %temp_$_2035, i64 1001, i8* %temp_$_2037)
 %lnk_$_2024 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2025 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2024
 %ret_$_2026 = call i64 @XX$19 (%$locals_TstArith$4* %locals_$_7)
 %var_ptr_$_2027 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_2028 = load i64, i64* %var_ptr_$_2027
 %temp_$_2029 = add i64 %ret_$_2026, %res_$_2028
 %temp_$_2031 = bitcast { i64, [1 x i8] }* @str_$_2030 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2025, i64 %temp_$_2029, i64 1004, i8* %temp_$_2031)
 %lnk_$_2016 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2017 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2016
 %var_ptr_$_2018 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_2019 = load i64, i64* %var_ptr_$_2018
 %ret_$_2020 = call i64 @XX$19 (%$locals_TstArith$4* %locals_$_7)
 %temp_$_2021 = add i64 %res_$_2019, %ret_$_2020
 %temp_$_2023 = bitcast { i64, [1 x i8] }* @str_$_2022 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2017, i64 %temp_$_2021, i64 1011, i8* %temp_$_2023)
 %lnk_$_2012 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2013 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2012
 %temp_$_2015 = bitcast { i64, [1 x i8] }* @str_$_2014 to i8*
 call void @fill$1 (%$locals_tigermain* %load_$_2013, i8* %temp_$_2015)
 %lnk_$_2010 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2011 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2010
 call void @newl$2 (%$locals_tigermain* %load_$_2011)
 %lnk_$_2004 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2005 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2004
 %temp_$_2006 = sub i64 111, 222
 %temp_$_2007 = sub i64 0, 111
 %temp_$_2009 = bitcast { i64, [1 x i8] }* @str_$_2008 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_2005, i64 %temp_$_2006, i64 %temp_$_2007, i8* %temp_$_2009)
 %lnk_$_1997 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1998 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1997
 %var_ptr_$_1999 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_2000 = load i64, i64* %var_ptr_$_1999
 %temp_$_2001 = sub i64 111, %res_$_2000
 %temp_$_2003 = bitcast { i64, [1 x i8] }* @str_$_2002 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1998, i64 %temp_$_2001, i64 106, i8* %temp_$_2003)
 %lnk_$_1987 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1988 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1987
 %var_ptr_$_1989 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1990 = load i64, i64* %var_ptr_$_1989
 %var_ptr_$_1991 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1992 = load i64, i64* %var_ptr_$_1991
 %temp_$_1993 = sub i64 %res_$_1990, %res_$_1992
 %temp_$_1994 = sub i64 0, 7
 %temp_$_1996 = bitcast { i64, [1 x i8] }* @str_$_1995 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1988, i64 %temp_$_1993, i64 %temp_$_1994, i8* %temp_$_1996)
 %lnk_$_1974 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1975 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1974
 %var_ptr_$_1976 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1977 = load i64, i64* %var_ptr_$_1976
 %var_ptr_$_1978 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1979 = load i64, i64* %var_ptr_$_1978
 %temp_$_1980 = sub i64 %res_$_1977, %res_$_1979
 %var_ptr_$_1981 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_1982 = load i64, i64* %var_ptr_$_1981
 %temp_$_1983 = sub i64 %temp_$_1980, %res_$_1982
 %temp_$_1984 = sub i64 0, 9
 %temp_$_1986 = bitcast { i64, [1 x i8] }* @str_$_1985 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1975, i64 %temp_$_1983, i64 %temp_$_1984, i8* %temp_$_1986)
 %lnk_$_1966 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1967 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1966
 %var_ptr_$_1968 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1969 = load i64, i64* %var_ptr_$_1968
 %temp_$_1970 = sub i64 %res_$_1969, 222
 %temp_$_1971 = sub i64 0, 210
 %temp_$_1973 = bitcast { i64, [1 x i8] }* @str_$_1972 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1967, i64 %temp_$_1970, i64 %temp_$_1971, i8* %temp_$_1973)
 %lnk_$_1953 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1954 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1953
 %var_ptr_$_1955 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1956 = load i64, i64* %var_ptr_$_1955
 %var_ptr_$_1957 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1958 = load i64, i64* %var_ptr_$_1957
 %var_ptr_$_1959 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_1960 = load i64, i64* %var_ptr_$_1959
 %temp_$_1961 = sub i64 %res_$_1958, %res_$_1960
 %temp_$_1962 = sub i64 %res_$_1956, %temp_$_1961
 %temp_$_1963 = sub i64 0, 5
 %temp_$_1965 = bitcast { i64, [1 x i8] }* @str_$_1964 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1954, i64 %temp_$_1962, i64 %temp_$_1963, i8* %temp_$_1965)
 %lnk_$_1948 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1949 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1948
 %temp_$_1952 = bitcast { i64, [4 x i8] }* @str_$_1951 to i8*
 call void @print (i8* null, i8* %temp_$_1952)
 %lnk_$_1944 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1945 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1944
 %temp_$_1947 = bitcast { i64, [1 x i8] }* @str_$_1946 to i8*
 call void @fill$1 (%$locals_tigermain* %load_$_1945, i8* %temp_$_1947)
 %lnk_$_1942 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1943 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1942
 call void @newl$2 (%$locals_tigermain* %load_$_1943)
 %lnk_$_1936 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1937 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1936
 %temp_$_1938 = sub i64 0, 3
 %temp_$_1939 = sub i64 0, 3
 %temp_$_1941 = bitcast { i64, [1 x i8] }* @str_$_1940 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1937, i64 %temp_$_1938, i64 %temp_$_1939, i8* %temp_$_1941)
 %lnk_$_1928 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1929 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1928
 %var_ptr_$_1930 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1931 = load i64, i64* %var_ptr_$_1930
 %temp_$_1932 = sub i64 0, %res_$_1931
 %temp_$_1933 = sub i64 0, 5
 %temp_$_1935 = bitcast { i64, [1 x i8] }* @str_$_1934 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1929, i64 %temp_$_1932, i64 %temp_$_1933, i8* %temp_$_1935)
 %lnk_$_1917 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1918 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1917
 %var_ptr_$_1919 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1920 = load i64, i64* %var_ptr_$_1919
 %var_ptr_$_1921 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1922 = load i64, i64* %var_ptr_$_1921
 %temp_$_1923 = add i64 %res_$_1920, %res_$_1922
 %temp_$_1924 = sub i64 0, %temp_$_1923
 %temp_$_1925 = sub i64 0, 17
 %temp_$_1927 = bitcast { i64, [1 x i8] }* @str_$_1926 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1918, i64 %temp_$_1924, i64 %temp_$_1925, i8* %temp_$_1927)
 %var_ptr_$_1897 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1898 = load i64, i64* %var_ptr_$_1897
 %var_ptr_$_1899 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1900 = load i64, i64* %var_ptr_$_1899
 %temp_$_1901 = add i64 %res_$_1898, %res_$_1900
 %temp_$_1902 = sub i64 0, %temp_$_1901
 %temp_$_1903 = sub i64 0, 17
 %temp_$_1904 = icmp eq i64 %temp_$_1902, %temp_$_1903
 %temp_$_1905 = zext i1 %temp_$_1904 to i64
 %cnd_$_1906 = icmp ne i64 %temp_$_1905, 0
 br i1 %cnd_$_1906, label %thn_$_1894, label %els_$_1895
thn_$_1894:
 %lnk_$_1907 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1908 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1907
 %temp_$_1911 = bitcast { i64, [1 x i8] }* @str_$_1910 to i8*
 call void @print (i8* null, i8* %temp_$_1911)
 br label %mrg_$_1896
els_$_1895:
 %lnk_$_1912 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1913 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1912
 %temp_$_1916 = bitcast { i64, [1 x i8] }* @str_$_1915 to i8*
 call void @print (i8* null, i8* %temp_$_1916)
 br label %mrg_$_1896
mrg_$_1896:
 %var_ptr_$_1893 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 900, i64* %var_ptr_$_1893
 %var_ptr_$_1892 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 store i64 90, i64* %var_ptr_$_1892
 %lnk_$_1887 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1888 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1887
 %ret_$_1890 = call i8* @chr (i8* null, i64 57)
 %var_ptr_$_1891 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 store i8* %ret_$_1890, i8** %var_ptr_$_1891
 %lnk_$_1871 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1872 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1871
 %var_ptr_$_1873 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1874 = load i64, i64* %var_ptr_$_1873
 %var_ptr_$_1875 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1876 = load i64, i64* %var_ptr_$_1875
 %temp_$_1877 = add i64 %res_$_1874, %res_$_1876
 %lnk_$_1878 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1879 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1878
 %var_ptr_$_1881 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 %res_$_1882 = load i8*, i8** %var_ptr_$_1881
 %ret_$_1883 = call i64 @ord (i8* null, i8* %res_$_1882)
 %temp_$_1884 = add i64 %temp_$_1877, %ret_$_1883
 %temp_$_1886 = bitcast { i64, [1 x i8] }* @str_$_1885 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1872, i64 %temp_$_1884, i64 1047, i8* %temp_$_1886)
 %lnk_$_1855 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1856 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1855
 %var_ptr_$_1857 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1858 = load i64, i64* %var_ptr_$_1857
 %var_ptr_$_1859 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1860 = load i64, i64* %var_ptr_$_1859
 %temp_$_1861 = add i64 %res_$_1858, %res_$_1860
 %lnk_$_1862 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1863 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1862
 %var_ptr_$_1865 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 %res_$_1866 = load i8*, i8** %var_ptr_$_1865
 %ret_$_1867 = call i64 @ord (i8* null, i8* %res_$_1866)
 %temp_$_1868 = sub i64 %temp_$_1861, %ret_$_1867
 %temp_$_1870 = bitcast { i64, [1 x i8] }* @str_$_1869 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1856, i64 %temp_$_1868, i64 933, i8* %temp_$_1870)
 %lnk_$_1839 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1840 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1839
 %lnk_$_1841 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1842 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1841
 %var_ptr_$_1844 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 %res_$_1845 = load i8*, i8** %var_ptr_$_1844
 %ret_$_1846 = call i64 @ord (i8* null, i8* %res_$_1845)
 %var_ptr_$_1847 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1848 = load i64, i64* %var_ptr_$_1847
 %var_ptr_$_1849 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1850 = load i64, i64* %var_ptr_$_1849
 %temp_$_1851 = add i64 %res_$_1848, %res_$_1850
 %temp_$_1852 = add i64 %ret_$_1846, %temp_$_1851
 %temp_$_1854 = bitcast { i64, [1 x i8] }* @str_$_1853 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1840, i64 %temp_$_1852, i64 1047, i8* %temp_$_1854)
 %lnk_$_1822 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1823 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1822
 %lnk_$_1824 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1825 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1824
 %var_ptr_$_1827 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 %res_$_1828 = load i8*, i8** %var_ptr_$_1827
 %ret_$_1829 = call i64 @ord (i8* null, i8* %res_$_1828)
 %var_ptr_$_1830 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1831 = load i64, i64* %var_ptr_$_1830
 %var_ptr_$_1832 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1833 = load i64, i64* %var_ptr_$_1832
 %temp_$_1834 = add i64 %res_$_1831, %res_$_1833
 %temp_$_1835 = sub i64 %ret_$_1829, %temp_$_1834
 %temp_$_1836 = sub i64 0, 933
 %temp_$_1838 = bitcast { i64, [1 x i8] }* @str_$_1837 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1823, i64 %temp_$_1835, i64 %temp_$_1836, i8* %temp_$_1838)
 %lnk_$_1817 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1818 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1817
 %ret_$_1820 = call i8* @chr (i8* null, i64 10)
 %var_ptr_$_1821 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 store i8* %ret_$_1820, i8** %var_ptr_$_1821
 %lnk_$_1801 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1802 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1801
 %var_ptr_$_1803 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1804 = load i64, i64* %var_ptr_$_1803
 %var_ptr_$_1805 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1806 = load i64, i64* %var_ptr_$_1805
 %temp_$_1807 = add i64 %res_$_1804, %res_$_1806
 %lnk_$_1808 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1809 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1808
 %var_ptr_$_1811 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 %res_$_1812 = load i8*, i8** %var_ptr_$_1811
 %ret_$_1813 = call i64 @ord (i8* null, i8* %res_$_1812)
 %temp_$_1814 = mul i64 %temp_$_1807, %ret_$_1813
 %temp_$_1816 = bitcast { i64, [1 x i8] }* @str_$_1815 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1802, i64 %temp_$_1814, i64 9900, i8* %temp_$_1816)
 %lnk_$_1785 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1786 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1785
 %lnk_$_1787 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1788 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1787
 %var_ptr_$_1790 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 %res_$_1791 = load i8*, i8** %var_ptr_$_1790
 %ret_$_1792 = call i64 @ord (i8* null, i8* %res_$_1791)
 %var_ptr_$_1793 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1794 = load i64, i64* %var_ptr_$_1793
 %var_ptr_$_1795 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1796 = load i64, i64* %var_ptr_$_1795
 %temp_$_1797 = add i64 %res_$_1794, %res_$_1796
 %temp_$_1798 = mul i64 %ret_$_1792, %temp_$_1797
 %temp_$_1800 = bitcast { i64, [1 x i8] }* @str_$_1799 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1786, i64 %temp_$_1798, i64 9900, i8* %temp_$_1800)
 %lnk_$_1774 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1775 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1774
 %lnk_$_1776 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1777 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1776
 %var_ptr_$_1779 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 %res_$_1780 = load i8*, i8** %var_ptr_$_1779
 %ret_$_1781 = call i64 @ord (i8* null, i8* %res_$_1780)
 %temp_$_1782 = sub i64 1000, %ret_$_1781
 %temp_$_1784 = bitcast { i64, [1 x i8] }* @str_$_1783 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1775, i64 %temp_$_1782, i64 990, i8* %temp_$_1784)
 %lnk_$_1769 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1770 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1769
 %ret_$_1772 = call i8* @chr (i8* null, i64 200)
 %var_ptr_$_1773 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 store i8* %ret_$_1772, i8** %var_ptr_$_1773
 %lnk_$_1752 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1753 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1752
 %lnk_$_1754 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1755 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1754
 %var_ptr_$_1757 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 %res_$_1758 = load i8*, i8** %var_ptr_$_1757
 %ret_$_1759 = call i64 @ord (i8* null, i8* %res_$_1758)
 %lnk_$_1760 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1761 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1760
 %var_ptr_$_1763 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 3
 %res_$_1764 = load i8*, i8** %var_ptr_$_1763
 %ret_$_1765 = call i64 @ord (i8* null, i8* %res_$_1764)
 %temp_$_1766 = add i64 %ret_$_1759, %ret_$_1765
 %temp_$_1768 = bitcast { i64, [1 x i8] }* @str_$_1767 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1753, i64 %temp_$_1766, i64 400, i8* %temp_$_1768)
 %lnk_$_1738 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1739 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1738
 %lnk_$_1740 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1741 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1740
 %temp_$_1744 = bitcast { i64, [1 x i8] }* @str_$_1743 to i8*
 %ret_$_1745 = call i64 @ord (i8* null, i8* %temp_$_1744)
 %var_ptr_$_1746 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1747 = load i64, i64* %var_ptr_$_1746
 %temp_$_1748 = sub i64 %ret_$_1745, %res_$_1747
 %temp_$_1749 = sub i64 0, 803
 %temp_$_1751 = bitcast { i64, [1 x i8] }* @str_$_1750 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1739, i64 %temp_$_1748, i64 %temp_$_1749, i8* %temp_$_1751)
 %lnk_$_1734 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1735 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1734
 %temp_$_1737 = bitcast { i64, [1 x i8] }* @str_$_1736 to i8*
 call void @fill$1 (%$locals_tigermain* %load_$_1735, i8* %temp_$_1737)
 %lnk_$_1732 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1733 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1732
 call void @newl$2 (%$locals_tigermain* %load_$_1733)
 %var_ptr_$_1731 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 5, i64* %var_ptr_$_1731
 %var_ptr_$_1730 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 store i64 12, i64* %var_ptr_$_1730
 %var_ptr_$_1729 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 store i64 2, i64* %var_ptr_$_1729
 %lnk_$_1722 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1723 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1722
 %var_ptr_$_1724 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1725 = load i64, i64* %var_ptr_$_1724
 %temp_$_1726 = mul i64 3, %res_$_1725
 %temp_$_1728 = bitcast { i64, [1 x i8] }* @str_$_1727 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1723, i64 %temp_$_1726, i64 15, i8* %temp_$_1728)
 %lnk_$_1713 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1714 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1713
 %var_ptr_$_1715 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1716 = load i64, i64* %var_ptr_$_1715
 %var_ptr_$_1717 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1718 = load i64, i64* %var_ptr_$_1717
 %temp_$_1719 = mul i64 %res_$_1716, %res_$_1718
 %temp_$_1721 = bitcast { i64, [1 x i8] }* @str_$_1720 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1714, i64 %temp_$_1719, i64 60, i8* %temp_$_1721)
 %lnk_$_1701 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1702 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1701
 %var_ptr_$_1703 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1704 = load i64, i64* %var_ptr_$_1703
 %var_ptr_$_1705 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1706 = load i64, i64* %var_ptr_$_1705
 %temp_$_1707 = mul i64 %res_$_1704, %res_$_1706
 %var_ptr_$_1708 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_1709 = load i64, i64* %var_ptr_$_1708
 %temp_$_1710 = mul i64 %temp_$_1707, %res_$_1709
 %temp_$_1712 = bitcast { i64, [1 x i8] }* @str_$_1711 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1702, i64 %temp_$_1710, i64 120, i8* %temp_$_1712)
 %lnk_$_1696 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1697 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1696
 %temp_$_1698 = mul i64 12, 6
 %temp_$_1700 = bitcast { i64, [1 x i8] }* @str_$_1699 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1697, i64 %temp_$_1698, i64 72, i8* %temp_$_1700)
 %lnk_$_1689 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1690 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1689
 %var_ptr_$_1691 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1692 = load i64, i64* %var_ptr_$_1691
 %temp_$_1693 = mul i64 %res_$_1692, 3
 %temp_$_1695 = bitcast { i64, [1 x i8] }* @str_$_1694 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1690, i64 %temp_$_1693, i64 15, i8* %temp_$_1695)
 %lnk_$_1679 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1680 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1679
 %var_ptr_$_1681 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1682 = load i64, i64* %var_ptr_$_1681
 %var_ptr_$_1683 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1684 = load i64, i64* %var_ptr_$_1683
 %temp_$_1685 = mul i64 %res_$_1682, %res_$_1684
 %temp_$_1686 = mul i64 3, %temp_$_1685
 %temp_$_1688 = bitcast { i64, [1 x i8] }* @str_$_1687 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1680, i64 %temp_$_1686, i64 180, i8* %temp_$_1688)
 %lnk_$_1669 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1670 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1669
 %var_ptr_$_1671 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1672 = load i64, i64* %var_ptr_$_1671
 %var_ptr_$_1673 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1674 = load i64, i64* %var_ptr_$_1673
 %temp_$_1675 = mul i64 %res_$_1672, %res_$_1674
 %temp_$_1676 = mul i64 %temp_$_1675, 3
 %temp_$_1678 = bitcast { i64, [1 x i8] }* @str_$_1677 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1670, i64 %temp_$_1676, i64 180, i8* %temp_$_1678)
 %lnk_$_1657 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1658 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1657
 %var_ptr_$_1659 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1660 = load i64, i64* %var_ptr_$_1659
 %var_ptr_$_1661 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1662 = load i64, i64* %var_ptr_$_1661
 %var_ptr_$_1663 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_1664 = load i64, i64* %var_ptr_$_1663
 %temp_$_1665 = mul i64 %res_$_1662, %res_$_1664
 %temp_$_1666 = mul i64 %res_$_1660, %temp_$_1665
 %temp_$_1668 = bitcast { i64, [1 x i8] }* @str_$_1667 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1658, i64 %temp_$_1666, i64 120, i8* %temp_$_1668)
 %lnk_$_1645 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1646 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1645
 %var_ptr_$_1647 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1648 = load i64, i64* %var_ptr_$_1647
 %var_ptr_$_1649 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1650 = load i64, i64* %var_ptr_$_1649
 %temp_$_1651 = mul i64 %res_$_1648, %res_$_1650
 %var_ptr_$_1652 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_1653 = load i64, i64* %var_ptr_$_1652
 %temp_$_1654 = mul i64 %temp_$_1651, %res_$_1653
 %temp_$_1656 = bitcast { i64, [1 x i8] }* @str_$_1655 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1646, i64 %temp_$_1654, i64 120, i8* %temp_$_1656)
 %lnk_$_1632 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1633 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1632
 %var_ptr_$_1634 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1635 = load i64, i64* %var_ptr_$_1634
 %var_ptr_$_1636 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1637 = load i64, i64* %var_ptr_$_1636
 %temp_$_1638 = mul i64 %res_$_1635, %res_$_1637
 %var_ptr_$_1639 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_1640 = load i64, i64* %var_ptr_$_1639
 %temp_$_1641 = mul i64 %res_$_1640, 4
 %temp_$_1642 = mul i64 %temp_$_1638, %temp_$_1641
 %temp_$_1644 = bitcast { i64, [1 x i8] }* @str_$_1643 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1633, i64 %temp_$_1642, i64 480, i8* %temp_$_1644)
 %lnk_$_1623 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1624 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1623
 %var_ptr_$_1625 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1626 = load i64, i64* %var_ptr_$_1625
 %temp_$_1627 = sub i64 0, 1
 %temp_$_1628 = mul i64 %res_$_1626, %temp_$_1627
 %temp_$_1629 = sub i64 0, 5
 %temp_$_1631 = bitcast { i64, [1 x i8] }* @str_$_1630 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1624, i64 %temp_$_1628, i64 %temp_$_1629, i8* %temp_$_1631)
 %lnk_$_1614 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1615 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1614
 %var_ptr_$_1616 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1617 = load i64, i64* %var_ptr_$_1616
 %temp_$_1618 = sub i64 0, %res_$_1617
 %temp_$_1619 = sub i64 0, 1
 %temp_$_1620 = mul i64 %temp_$_1618, %temp_$_1619
 %temp_$_1622 = bitcast { i64, [1 x i8] }* @str_$_1621 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1615, i64 %temp_$_1620, i64 5, i8* %temp_$_1622)
 %lnk_$_1605 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1606 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1605
 %var_ptr_$_1607 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1608 = load i64, i64* %var_ptr_$_1607
 %temp_$_1609 = sub i64 0, %res_$_1608
 %temp_$_1610 = mul i64 %temp_$_1609, 2
 %temp_$_1611 = sub i64 0, 10
 %temp_$_1613 = bitcast { i64, [1 x i8] }* @str_$_1612 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1606, i64 %temp_$_1610, i64 %temp_$_1611, i8* %temp_$_1613)
 %lnk_$_1596 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1597 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1596
 %var_ptr_$_1598 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1599 = load i64, i64* %var_ptr_$_1598
 %temp_$_1600 = sub i64 0, %res_$_1599
 %temp_$_1601 = sub i64 0, 2
 %temp_$_1602 = mul i64 %temp_$_1600, %temp_$_1601
 %temp_$_1604 = bitcast { i64, [1 x i8] }* @str_$_1603 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1597, i64 %temp_$_1602, i64 10, i8* %temp_$_1604)
 %lnk_$_1587 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1588 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1587
 %var_ptr_$_1589 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1590 = load i64, i64* %var_ptr_$_1589
 %temp_$_1591 = sub i64 0, %res_$_1590
 %temp_$_1592 = mul i64 %temp_$_1591, 4
 %temp_$_1593 = sub i64 0, 20
 %temp_$_1595 = bitcast { i64, [1 x i8] }* @str_$_1594 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1588, i64 %temp_$_1592, i64 %temp_$_1593, i8* %temp_$_1595)
 %lnk_$_1578 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1579 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1578
 %var_ptr_$_1580 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1581 = load i64, i64* %var_ptr_$_1580
 %temp_$_1582 = sub i64 0, %res_$_1581
 %temp_$_1583 = sub i64 0, 4
 %temp_$_1584 = mul i64 %temp_$_1582, %temp_$_1583
 %temp_$_1586 = bitcast { i64, [1 x i8] }* @str_$_1585 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1579, i64 %temp_$_1584, i64 20, i8* %temp_$_1586)
 %lnk_$_1569 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1570 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1569
 %var_ptr_$_1571 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1572 = load i64, i64* %var_ptr_$_1571
 %temp_$_1573 = sub i64 0, %res_$_1572
 %temp_$_1574 = mul i64 %temp_$_1573, 256
 %temp_$_1575 = sub i64 0, 1280
 %temp_$_1577 = bitcast { i64, [1 x i8] }* @str_$_1576 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1570, i64 %temp_$_1574, i64 %temp_$_1575, i8* %temp_$_1577)
 %lnk_$_1560 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1561 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1560
 %var_ptr_$_1562 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1563 = load i64, i64* %var_ptr_$_1562
 %temp_$_1564 = sub i64 0, %res_$_1563
 %temp_$_1565 = sub i64 0, 256
 %temp_$_1566 = mul i64 %temp_$_1564, %temp_$_1565
 %temp_$_1568 = bitcast { i64, [1 x i8] }* @str_$_1567 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1561, i64 %temp_$_1566, i64 1280, i8* %temp_$_1568)
 %lnk_$_1556 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1557 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1556
 %temp_$_1559 = bitcast { i64, [1 x i8] }* @str_$_1558 to i8*
 call void @fill$1 (%$locals_tigermain* %load_$_1557, i8* %temp_$_1559)
 %lnk_$_1554 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1555 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1554
 call void @newl$2 (%$locals_tigermain* %load_$_1555)
 %lnk_$_1547 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1548 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1547
 %var_ptr_$_1549 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1550 = load i64, i64* %var_ptr_$_1549
 %temp_$_1551 = mul i64 3, %res_$_1550
 %temp_$_1553 = bitcast { i64, [1 x i8] }* @str_$_1552 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1548, i64 %temp_$_1551, i64 15, i8* %temp_$_1553)
 %lnk_$_1538 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1539 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1538
 %var_ptr_$_1540 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1541 = load i64, i64* %var_ptr_$_1540
 %var_ptr_$_1542 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1543 = load i64, i64* %var_ptr_$_1542
 %temp_$_1544 = mul i64 %res_$_1541, %res_$_1543
 %temp_$_1546 = bitcast { i64, [1 x i8] }* @str_$_1545 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1539, i64 %temp_$_1544, i64 60, i8* %temp_$_1546)
 %lnk_$_1526 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1527 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1526
 %var_ptr_$_1528 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1529 = load i64, i64* %var_ptr_$_1528
 %var_ptr_$_1530 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1531 = load i64, i64* %var_ptr_$_1530
 %temp_$_1532 = mul i64 %res_$_1529, %res_$_1531
 %var_ptr_$_1533 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_1534 = load i64, i64* %var_ptr_$_1533
 %temp_$_1535 = mul i64 %temp_$_1532, %res_$_1534
 %temp_$_1537 = bitcast { i64, [1 x i8] }* @str_$_1536 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1527, i64 %temp_$_1535, i64 120, i8* %temp_$_1537)
 %lnk_$_1521 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1522 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1521
 %temp_$_1523 = mul i64 12, 6
 %temp_$_1525 = bitcast { i64, [1 x i8] }* @str_$_1524 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1522, i64 %temp_$_1523, i64 72, i8* %temp_$_1525)
 %lnk_$_1514 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1515 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1514
 %var_ptr_$_1516 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1517 = load i64, i64* %var_ptr_$_1516
 %temp_$_1518 = mul i64 %res_$_1517, 3
 %temp_$_1520 = bitcast { i64, [1 x i8] }* @str_$_1519 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1515, i64 %temp_$_1518, i64 15, i8* %temp_$_1520)
 %lnk_$_1504 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1505 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1504
 %var_ptr_$_1506 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1507 = load i64, i64* %var_ptr_$_1506
 %var_ptr_$_1508 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1509 = load i64, i64* %var_ptr_$_1508
 %temp_$_1510 = mul i64 %res_$_1507, %res_$_1509
 %temp_$_1511 = mul i64 3, %temp_$_1510
 %temp_$_1513 = bitcast { i64, [1 x i8] }* @str_$_1512 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1505, i64 %temp_$_1511, i64 180, i8* %temp_$_1513)
 %lnk_$_1494 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1495 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1494
 %var_ptr_$_1496 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1497 = load i64, i64* %var_ptr_$_1496
 %var_ptr_$_1498 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1499 = load i64, i64* %var_ptr_$_1498
 %temp_$_1500 = mul i64 %res_$_1497, %res_$_1499
 %temp_$_1501 = mul i64 %temp_$_1500, 3
 %temp_$_1503 = bitcast { i64, [1 x i8] }* @str_$_1502 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1495, i64 %temp_$_1501, i64 180, i8* %temp_$_1503)
 %lnk_$_1482 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1483 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1482
 %var_ptr_$_1484 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1485 = load i64, i64* %var_ptr_$_1484
 %var_ptr_$_1486 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1487 = load i64, i64* %var_ptr_$_1486
 %var_ptr_$_1488 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_1489 = load i64, i64* %var_ptr_$_1488
 %temp_$_1490 = mul i64 %res_$_1487, %res_$_1489
 %temp_$_1491 = mul i64 %res_$_1485, %temp_$_1490
 %temp_$_1493 = bitcast { i64, [1 x i8] }* @str_$_1492 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1483, i64 %temp_$_1491, i64 120, i8* %temp_$_1493)
 %lnk_$_1470 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1471 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1470
 %var_ptr_$_1472 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1473 = load i64, i64* %var_ptr_$_1472
 %var_ptr_$_1474 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1475 = load i64, i64* %var_ptr_$_1474
 %temp_$_1476 = mul i64 %res_$_1473, %res_$_1475
 %var_ptr_$_1477 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_1478 = load i64, i64* %var_ptr_$_1477
 %temp_$_1479 = mul i64 %temp_$_1476, %res_$_1478
 %temp_$_1481 = bitcast { i64, [1 x i8] }* @str_$_1480 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1471, i64 %temp_$_1479, i64 120, i8* %temp_$_1481)
 %lnk_$_1457 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1458 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1457
 %var_ptr_$_1459 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1460 = load i64, i64* %var_ptr_$_1459
 %var_ptr_$_1461 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1462 = load i64, i64* %var_ptr_$_1461
 %temp_$_1463 = mul i64 %res_$_1460, %res_$_1462
 %var_ptr_$_1464 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 4
 %res_$_1465 = load i64, i64* %var_ptr_$_1464
 %temp_$_1466 = mul i64 %res_$_1465, 4
 %temp_$_1467 = mul i64 %temp_$_1463, %temp_$_1466
 %temp_$_1469 = bitcast { i64, [1 x i8] }* @str_$_1468 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1458, i64 %temp_$_1467, i64 480, i8* %temp_$_1469)
 %lnk_$_1450 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1451 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1450
 %var_ptr_$_1452 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1453 = load i64, i64* %var_ptr_$_1452
 %temp_$_1454 = mul i64 0, %res_$_1453
 %temp_$_1456 = bitcast { i64, [1 x i8] }* @str_$_1455 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1451, i64 %temp_$_1454, i64 0, i8* %temp_$_1456)
 %lnk_$_1443 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1444 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1443
 %var_ptr_$_1445 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1446 = load i64, i64* %var_ptr_$_1445
 %temp_$_1447 = mul i64 1, %res_$_1446
 %temp_$_1449 = bitcast { i64, [1 x i8] }* @str_$_1448 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1444, i64 %temp_$_1447, i64 5, i8* %temp_$_1449)
 %lnk_$_1436 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1437 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1436
 %var_ptr_$_1438 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1439 = load i64, i64* %var_ptr_$_1438
 %temp_$_1440 = mul i64 2, %res_$_1439
 %temp_$_1442 = bitcast { i64, [1 x i8] }* @str_$_1441 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1437, i64 %temp_$_1440, i64 10, i8* %temp_$_1442)
 %lnk_$_1429 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1430 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1429
 %var_ptr_$_1431 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1432 = load i64, i64* %var_ptr_$_1431
 %temp_$_1433 = mul i64 3, %res_$_1432
 %temp_$_1435 = bitcast { i64, [1 x i8] }* @str_$_1434 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1430, i64 %temp_$_1433, i64 15, i8* %temp_$_1435)
 %lnk_$_1422 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1423 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1422
 %var_ptr_$_1424 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1425 = load i64, i64* %var_ptr_$_1424
 %temp_$_1426 = mul i64 4, %res_$_1425
 %temp_$_1428 = bitcast { i64, [1 x i8] }* @str_$_1427 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1423, i64 %temp_$_1426, i64 20, i8* %temp_$_1428)
 %lnk_$_1415 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1416 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1415
 %var_ptr_$_1417 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1418 = load i64, i64* %var_ptr_$_1417
 %temp_$_1419 = mul i64 5, %res_$_1418
 %temp_$_1421 = bitcast { i64, [1 x i8] }* @str_$_1420 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1416, i64 %temp_$_1419, i64 25, i8* %temp_$_1421)
 %lnk_$_1408 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1409 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1408
 %var_ptr_$_1410 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1411 = load i64, i64* %var_ptr_$_1410
 %temp_$_1412 = mul i64 6, %res_$_1411
 %temp_$_1414 = bitcast { i64, [1 x i8] }* @str_$_1413 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1409, i64 %temp_$_1412, i64 30, i8* %temp_$_1414)
 %lnk_$_1401 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1402 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1401
 %var_ptr_$_1403 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1404 = load i64, i64* %var_ptr_$_1403
 %temp_$_1405 = mul i64 7, %res_$_1404
 %temp_$_1407 = bitcast { i64, [1 x i8] }* @str_$_1406 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1402, i64 %temp_$_1405, i64 35, i8* %temp_$_1407)
 %lnk_$_1394 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1395 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1394
 %var_ptr_$_1396 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1397 = load i64, i64* %var_ptr_$_1396
 %temp_$_1398 = mul i64 8, %res_$_1397
 %temp_$_1400 = bitcast { i64, [1 x i8] }* @str_$_1399 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1395, i64 %temp_$_1398, i64 40, i8* %temp_$_1400)
 %lnk_$_1387 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1388 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1387
 %var_ptr_$_1389 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1390 = load i64, i64* %var_ptr_$_1389
 %temp_$_1391 = mul i64 %res_$_1390, 0
 %temp_$_1393 = bitcast { i64, [1 x i8] }* @str_$_1392 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1388, i64 %temp_$_1391, i64 0, i8* %temp_$_1393)
 %lnk_$_1380 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1381 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1380
 %var_ptr_$_1382 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1383 = load i64, i64* %var_ptr_$_1382
 %temp_$_1384 = mul i64 %res_$_1383, 1
 %temp_$_1386 = bitcast { i64, [1 x i8] }* @str_$_1385 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1381, i64 %temp_$_1384, i64 5, i8* %temp_$_1386)
 %lnk_$_1373 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1374 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1373
 %var_ptr_$_1375 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1376 = load i64, i64* %var_ptr_$_1375
 %temp_$_1377 = mul i64 %res_$_1376, 2
 %temp_$_1379 = bitcast { i64, [1 x i8] }* @str_$_1378 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1374, i64 %temp_$_1377, i64 10, i8* %temp_$_1379)
 %lnk_$_1366 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1367 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1366
 %var_ptr_$_1368 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1369 = load i64, i64* %var_ptr_$_1368
 %temp_$_1370 = mul i64 %res_$_1369, 3
 %temp_$_1372 = bitcast { i64, [1 x i8] }* @str_$_1371 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1367, i64 %temp_$_1370, i64 15, i8* %temp_$_1372)
 %lnk_$_1359 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1360 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1359
 %var_ptr_$_1361 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1362 = load i64, i64* %var_ptr_$_1361
 %temp_$_1363 = mul i64 %res_$_1362, 4
 %temp_$_1365 = bitcast { i64, [1 x i8] }* @str_$_1364 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1360, i64 %temp_$_1363, i64 20, i8* %temp_$_1365)
 %lnk_$_1352 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1353 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1352
 %var_ptr_$_1354 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1355 = load i64, i64* %var_ptr_$_1354
 %temp_$_1356 = mul i64 %res_$_1355, 5
 %temp_$_1358 = bitcast { i64, [1 x i8] }* @str_$_1357 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1353, i64 %temp_$_1356, i64 25, i8* %temp_$_1358)
 %lnk_$_1345 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1346 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1345
 %var_ptr_$_1347 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1348 = load i64, i64* %var_ptr_$_1347
 %temp_$_1349 = mul i64 %res_$_1348, 6
 %temp_$_1351 = bitcast { i64, [1 x i8] }* @str_$_1350 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1346, i64 %temp_$_1349, i64 30, i8* %temp_$_1351)
 %lnk_$_1338 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1339 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1338
 %var_ptr_$_1340 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1341 = load i64, i64* %var_ptr_$_1340
 %temp_$_1342 = mul i64 %res_$_1341, 7
 %temp_$_1344 = bitcast { i64, [1 x i8] }* @str_$_1343 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1339, i64 %temp_$_1342, i64 35, i8* %temp_$_1344)
 %lnk_$_1331 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1332 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1331
 %var_ptr_$_1333 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1334 = load i64, i64* %var_ptr_$_1333
 %temp_$_1335 = mul i64 %res_$_1334, 8
 %temp_$_1337 = bitcast { i64, [1 x i8] }* @str_$_1336 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1332, i64 %temp_$_1335, i64 40, i8* %temp_$_1337)
 %lnk_$_1324 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1325 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1324
 %var_ptr_$_1326 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1327 = load i64, i64* %var_ptr_$_1326
 %temp_$_1328 = mul i64 %res_$_1327, 256
 %temp_$_1330 = bitcast { i64, [1 x i8] }* @str_$_1329 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1325, i64 %temp_$_1328, i64 1280, i8* %temp_$_1330)
 %lnk_$_1317 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1318 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1317
 %var_ptr_$_1319 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1320 = load i64, i64* %var_ptr_$_1319
 %temp_$_1321 = mul i64 %res_$_1320, 65536
 %temp_$_1323 = bitcast { i64, [1 x i8] }* @str_$_1322 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1318, i64 %temp_$_1321, i64 327680, i8* %temp_$_1323)
 %lnk_$_1310 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1311 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1310
 %var_ptr_$_1312 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1313 = load i64, i64* %var_ptr_$_1312
 %temp_$_1314 = mul i64 %res_$_1313, 16777216
 %temp_$_1316 = bitcast { i64, [1 x i8] }* @str_$_1315 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1311, i64 %temp_$_1314, i64 83886080, i8* %temp_$_1316)
 %lnk_$_1305 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1306 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1305
 %temp_$_1307 = mul i64 13, 0
 %temp_$_1309 = bitcast { i64, [1 x i8] }* @str_$_1308 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1306, i64 %temp_$_1307, i64 0, i8* %temp_$_1309)
 %lnk_$_1301 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1302 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1301
 %temp_$_1304 = bitcast { i64, [1 x i8] }* @str_$_1303 to i8*
 call void @fill$1 (%$locals_tigermain* %load_$_1302, i8* %temp_$_1304)
 %lnk_$_1299 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1300 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1299
 call void @newl$2 (%$locals_tigermain* %load_$_1300)
 %lnk_$_1289 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1290 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1289
 %var_ptr_$_1293 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1294 = load i64, i64* %var_ptr_$_1293
 %cnd_$_1295 = icmp eq i64 3, 0
 br i1 %cnd_$_1295, label %thn_$_1291, label %mrg_$_1292
thn_$_1291:
 call i64 @divisionByZero ()
 br label %mrg_$_1292
mrg_$_1292:
 %temp_$_1296 = sdiv i64 %res_$_1294, 3
 %temp_$_1298 = bitcast { i64, [1 x i8] }* @str_$_1297 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1290, i64 %temp_$_1296, i64 1, i8* %temp_$_1298)
 %lnk_$_1277 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1278 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1277
 %var_ptr_$_1281 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1282 = load i64, i64* %var_ptr_$_1281
 %var_ptr_$_1283 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1284 = load i64, i64* %var_ptr_$_1283
 %cnd_$_1285 = icmp eq i64 %res_$_1284, 0
 br i1 %cnd_$_1285, label %thn_$_1279, label %mrg_$_1280
thn_$_1279:
 call i64 @divisionByZero ()
 br label %mrg_$_1280
mrg_$_1280:
 %temp_$_1286 = sdiv i64 %res_$_1282, %res_$_1284
 %temp_$_1288 = bitcast { i64, [1 x i8] }* @str_$_1287 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1278, i64 %temp_$_1286, i64 2, i8* %temp_$_1288)
 %lnk_$_1261 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1262 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1261
 %var_ptr_$_1265 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1266 = load i64, i64* %var_ptr_$_1265
 %var_ptr_$_1269 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1270 = load i64, i64* %var_ptr_$_1269
 %cnd_$_1271 = icmp eq i64 2, 0
 br i1 %cnd_$_1271, label %thn_$_1267, label %mrg_$_1268
thn_$_1267:
 call i64 @divisionByZero ()
 br label %mrg_$_1268
mrg_$_1268:
 %temp_$_1272 = sdiv i64 %res_$_1270, 2
 %cnd_$_1273 = icmp eq i64 %temp_$_1272, 0
 br i1 %cnd_$_1273, label %thn_$_1263, label %mrg_$_1264
thn_$_1263:
 call i64 @divisionByZero ()
 br label %mrg_$_1264
mrg_$_1264:
 %temp_$_1274 = sdiv i64 %res_$_1266, %temp_$_1272
 %temp_$_1276 = bitcast { i64, [1 x i8] }* @str_$_1275 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1262, i64 %temp_$_1274, i64 6, i8* %temp_$_1276)
 %lnk_$_1252 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1253 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1252
 %ret_$_1256 = call i64 @XX$19 (%$locals_TstArith$4* %locals_$_7)
 %cnd_$_1257 = icmp eq i64 3, 0
 br i1 %cnd_$_1257, label %thn_$_1254, label %mrg_$_1255
thn_$_1254:
 call i64 @divisionByZero ()
 br label %mrg_$_1255
mrg_$_1255:
 %temp_$_1258 = sdiv i64 %ret_$_1256, 3
 %temp_$_1260 = bitcast { i64, [1 x i8] }* @str_$_1259 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1253, i64 %temp_$_1258, i64 333, i8* %temp_$_1260)
 %lnk_$_1243 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1244 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1243
 %ret_$_1247 = call i64 @XX$19 (%$locals_TstArith$4* %locals_$_7)
 %cnd_$_1248 = icmp eq i64 %ret_$_1247, 0
 br i1 %cnd_$_1248, label %thn_$_1245, label %mrg_$_1246
thn_$_1245:
 call i64 @divisionByZero ()
 br label %mrg_$_1246
mrg_$_1246:
 %temp_$_1249 = sdiv i64 1000, %ret_$_1247
 %temp_$_1251 = bitcast { i64, [1 x i8] }* @str_$_1250 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1244, i64 %temp_$_1249, i64 1, i8* %temp_$_1251)
 %lnk_$_1235 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1236 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1235
 %lnk_$_1237 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1238 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1237
 %ret_$_1239 = call i64 @XX$19 (%$locals_TstArith$4* %locals_$_7)
 %ret_$_1240 = call i64 @mod$3 (%$locals_tigermain* %load_$_1238, i64 %ret_$_1239, i64 888)
 %temp_$_1242 = bitcast { i64, [1 x i8] }* @str_$_1241 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1236, i64 %ret_$_1240, i64 111, i8* %temp_$_1242)
 %lnk_$_1227 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1228 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1227
 %lnk_$_1229 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1230 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1229
 %ret_$_1231 = call i64 @XX$19 (%$locals_TstArith$4* %locals_$_7)
 %ret_$_1232 = call i64 @mod$3 (%$locals_tigermain* %load_$_1230, i64 1002, i64 %ret_$_1231)
 %temp_$_1234 = bitcast { i64, [1 x i8] }* @str_$_1233 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1228, i64 %ret_$_1232, i64 3, i8* %temp_$_1234)
 %lnk_$_1216 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1217 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1216
 %ret_$_1220 = call i64 @XX$19 (%$locals_TstArith$4* %locals_$_7)
 %var_ptr_$_1221 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1222 = load i64, i64* %var_ptr_$_1221
 %cnd_$_1223 = icmp eq i64 %res_$_1222, 0
 br i1 %cnd_$_1223, label %thn_$_1218, label %mrg_$_1219
thn_$_1218:
 call i64 @divisionByZero ()
 br label %mrg_$_1219
mrg_$_1219:
 %temp_$_1224 = sdiv i64 %ret_$_1220, %res_$_1222
 %temp_$_1226 = bitcast { i64, [1 x i8] }* @str_$_1225 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1217, i64 %temp_$_1224, i64 199, i8* %temp_$_1226)
 %lnk_$_1206 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1207 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1206
 %lnk_$_1208 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1209 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1208
 %ret_$_1210 = call i64 @XX$19 (%$locals_TstArith$4* %locals_$_7)
 %var_ptr_$_1211 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1212 = load i64, i64* %var_ptr_$_1211
 %ret_$_1213 = call i64 @mod$3 (%$locals_tigermain* %load_$_1209, i64 %ret_$_1210, i64 %res_$_1212)
 %temp_$_1215 = bitcast { i64, [1 x i8] }* @str_$_1214 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1207, i64 %ret_$_1213, i64 4, i8* %temp_$_1215)
 %lnk_$_1193 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1194 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1193
 %var_ptr_$_1197 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1198 = load i64, i64* %var_ptr_$_1197
 %var_ptr_$_1199 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1200 = load i64, i64* %var_ptr_$_1199
 %temp_$_1201 = add i64 %res_$_1198, %res_$_1200
 %cnd_$_1202 = icmp eq i64 3, 0
 br i1 %cnd_$_1202, label %thn_$_1195, label %mrg_$_1196
thn_$_1195:
 call i64 @divisionByZero ()
 br label %mrg_$_1196
mrg_$_1196:
 %temp_$_1203 = sdiv i64 %temp_$_1201, 3
 %temp_$_1205 = bitcast { i64, [1 x i8] }* @str_$_1204 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1194, i64 %temp_$_1203, i64 5, i8* %temp_$_1205)
 %lnk_$_1181 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1182 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1181
 %lnk_$_1183 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1184 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1183
 %var_ptr_$_1185 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1186 = load i64, i64* %var_ptr_$_1185
 %var_ptr_$_1187 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1188 = load i64, i64* %var_ptr_$_1187
 %temp_$_1189 = add i64 %res_$_1186, %res_$_1188
 %ret_$_1190 = call i64 @mod$3 (%$locals_tigermain* %load_$_1184, i64 %temp_$_1189, i64 3)
 %temp_$_1192 = bitcast { i64, [1 x i8] }* @str_$_1191 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1182, i64 %ret_$_1190, i64 2, i8* %temp_$_1192)
 %lnk_$_1166 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1167 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1166
 %var_ptr_$_1170 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1171 = load i64, i64* %var_ptr_$_1170
 %var_ptr_$_1172 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1173 = load i64, i64* %var_ptr_$_1172
 %temp_$_1174 = add i64 %res_$_1171, %res_$_1173
 %var_ptr_$_1175 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1176 = load i64, i64* %var_ptr_$_1175
 %cnd_$_1177 = icmp eq i64 %res_$_1176, 0
 br i1 %cnd_$_1177, label %thn_$_1168, label %mrg_$_1169
thn_$_1168:
 call i64 @divisionByZero ()
 br label %mrg_$_1169
mrg_$_1169:
 %temp_$_1178 = sdiv i64 %temp_$_1174, %res_$_1176
 %temp_$_1180 = bitcast { i64, [1 x i8] }* @str_$_1179 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1167, i64 %temp_$_1178, i64 3, i8* %temp_$_1180)
 %lnk_$_1152 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1153 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1152
 %lnk_$_1154 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1155 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1154
 %var_ptr_$_1156 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1157 = load i64, i64* %var_ptr_$_1156
 %var_ptr_$_1158 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1159 = load i64, i64* %var_ptr_$_1158
 %temp_$_1160 = add i64 %res_$_1157, %res_$_1159
 %var_ptr_$_1161 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1162 = load i64, i64* %var_ptr_$_1161
 %ret_$_1163 = call i64 @mod$3 (%$locals_tigermain* %load_$_1155, i64 %temp_$_1160, i64 %res_$_1162)
 %temp_$_1165 = bitcast { i64, [1 x i8] }* @str_$_1164 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1153, i64 %ret_$_1163, i64 2, i8* %temp_$_1165)
 %lnk_$_1136 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1137 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1136
 %var_ptr_$_1140 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1141 = load i64, i64* %var_ptr_$_1140
 %var_ptr_$_1142 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1143 = load i64, i64* %var_ptr_$_1142
 %temp_$_1144 = add i64 %res_$_1141, %res_$_1143
 %var_ptr_$_1145 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1146 = load i64, i64* %var_ptr_$_1145
 %temp_$_1147 = sub i64 %res_$_1146, 2
 %cnd_$_1148 = icmp eq i64 %temp_$_1147, 0
 br i1 %cnd_$_1148, label %thn_$_1138, label %mrg_$_1139
thn_$_1138:
 call i64 @divisionByZero ()
 br label %mrg_$_1139
mrg_$_1139:
 %temp_$_1149 = sdiv i64 %temp_$_1144, %temp_$_1147
 %temp_$_1151 = bitcast { i64, [1 x i8] }* @str_$_1150 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1137, i64 %temp_$_1149, i64 5, i8* %temp_$_1151)
 %lnk_$_1121 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1122 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1121
 %lnk_$_1123 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1124 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1123
 %var_ptr_$_1125 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1126 = load i64, i64* %var_ptr_$_1125
 %var_ptr_$_1127 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 5
 %res_$_1128 = load i64, i64* %var_ptr_$_1127
 %temp_$_1129 = add i64 %res_$_1126, %res_$_1128
 %var_ptr_$_1130 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1131 = load i64, i64* %var_ptr_$_1130
 %temp_$_1132 = sub i64 %res_$_1131, 2
 %ret_$_1133 = call i64 @mod$3 (%$locals_tigermain* %load_$_1124, i64 %temp_$_1129, i64 %temp_$_1132)
 %temp_$_1135 = bitcast { i64, [1 x i8] }* @str_$_1134 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1122, i64 %ret_$_1133, i64 2, i8* %temp_$_1135)
 %temp_$_963 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 store i64 100, i64* %temp_$_963
 %temp_$_964 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 1
 store i64 0, i64* %temp_$_964
 %var_ptr_$_1112 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 200, i64* %var_ptr_$_1112
 %lnk_$_1102 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1103 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1102
 %var_ptr_$_1106 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 %res_$_1107 = load i64, i64* %var_ptr_$_1106
 %cnd_$_1108 = icmp eq i64 4, 0
 br i1 %cnd_$_1108, label %thn_$_1104, label %mrg_$_1105
thn_$_1104:
 call i64 @divisionByZero ()
 br label %mrg_$_1105
mrg_$_1105:
 %temp_$_1109 = sdiv i64 %res_$_1107, 4
 %temp_$_1111 = bitcast { i64, [1 x i8] }* @str_$_1110 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1103, i64 %temp_$_1109, i64 25, i8* %temp_$_1111)
 %lnk_$_1092 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1093 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1092
 %var_ptr_$_1096 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1097 = load i64, i64* %var_ptr_$_1096
 %cnd_$_1098 = icmp eq i64 8, 0
 br i1 %cnd_$_1098, label %thn_$_1094, label %mrg_$_1095
thn_$_1094:
 call i64 @divisionByZero ()
 br label %mrg_$_1095
mrg_$_1095:
 %temp_$_1099 = sdiv i64 %res_$_1097, 8
 %temp_$_1101 = bitcast { i64, [1 x i8] }* @str_$_1100 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1093, i64 %temp_$_1099, i64 25, i8* %temp_$_1101)
 %lnk_$_1083 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1084 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1083
 %lnk_$_1085 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1086 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1085
 %var_ptr_$_1087 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 %res_$_1088 = load i64, i64* %var_ptr_$_1087
 %ret_$_1089 = call i64 @mod$3 (%$locals_tigermain* %load_$_1086, i64 %res_$_1088, i64 16)
 %temp_$_1091 = bitcast { i64, [1 x i8] }* @str_$_1090 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1084, i64 %ret_$_1089, i64 4, i8* %temp_$_1091)
 %lnk_$_1074 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1075 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1074
 %lnk_$_1076 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1077 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1076
 %var_ptr_$_1078 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1079 = load i64, i64* %var_ptr_$_1078
 %ret_$_1080 = call i64 @mod$3 (%$locals_tigermain* %load_$_1077, i64 %res_$_1079, i64 128)
 %temp_$_1082 = bitcast { i64, [1 x i8] }* @str_$_1081 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1075, i64 %ret_$_1080, i64 72, i8* %temp_$_1082)
 %lnk_$_1061 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1062 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1061
 %var_ptr_$_1065 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1066 = load i64, i64* %var_ptr_$_1065
 %var_ptr_$_1067 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 %res_$_1068 = load i64, i64* %var_ptr_$_1067
 %temp_$_1069 = add i64 %res_$_1066, %res_$_1068
 %cnd_$_1070 = icmp eq i64 128, 0
 br i1 %cnd_$_1070, label %thn_$_1063, label %mrg_$_1064
thn_$_1063:
 call i64 @divisionByZero ()
 br label %mrg_$_1064
mrg_$_1064:
 %temp_$_1071 = sdiv i64 %temp_$_1069, 128
 %temp_$_1073 = bitcast { i64, [1 x i8] }* @str_$_1072 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1062, i64 %temp_$_1071, i64 2, i8* %temp_$_1073)
 %lnk_$_1049 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1050 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1049
 %lnk_$_1051 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1052 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1051
 %var_ptr_$_1053 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1054 = load i64, i64* %var_ptr_$_1053
 %var_ptr_$_1055 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 %res_$_1056 = load i64, i64* %var_ptr_$_1055
 %temp_$_1057 = add i64 %res_$_1054, %res_$_1056
 %ret_$_1058 = call i64 @mod$3 (%$locals_tigermain* %load_$_1052, i64 %temp_$_1057, i64 128)
 %temp_$_1060 = bitcast { i64, [1 x i8] }* @str_$_1059 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1050, i64 %ret_$_1058, i64 44, i8* %temp_$_1060)
 %lnk_$_1037 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1038 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1037
 %var_ptr_$_1041 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1042 = load i64, i64* %var_ptr_$_1041
 %cnd_$_1043 = icmp eq i64 1, 0
 br i1 %cnd_$_1043, label %thn_$_1039, label %mrg_$_1040
thn_$_1039:
 call i64 @divisionByZero ()
 br label %mrg_$_1040
mrg_$_1040:
 %temp_$_1044 = sdiv i64 %res_$_1042, 1
 %var_ptr_$_1045 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1046 = load i64, i64* %var_ptr_$_1045
 %temp_$_1048 = bitcast { i64, [1 x i8] }* @str_$_1047 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1038, i64 %temp_$_1044, i64 %res_$_1046, i8* %temp_$_1048)
 %lnk_$_1025 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1026 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1025
 %var_ptr_$_1029 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 %res_$_1030 = load i64, i64* %var_ptr_$_1029
 %cnd_$_1031 = icmp eq i64 1, 0
 br i1 %cnd_$_1031, label %thn_$_1027, label %mrg_$_1028
thn_$_1027:
 call i64 @divisionByZero ()
 br label %mrg_$_1028
mrg_$_1028:
 %temp_$_1032 = sdiv i64 %res_$_1030, 1
 %var_ptr_$_1033 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 %res_$_1034 = load i64, i64* %var_ptr_$_1033
 %temp_$_1036 = bitcast { i64, [1 x i8] }* @str_$_1035 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1026, i64 %temp_$_1032, i64 %res_$_1034, i8* %temp_$_1036)
 %lnk_$_1016 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1017 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1016
 %lnk_$_1018 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1019 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1018
 %var_ptr_$_1020 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1021 = load i64, i64* %var_ptr_$_1020
 %ret_$_1022 = call i64 @mod$3 (%$locals_tigermain* %load_$_1019, i64 %res_$_1021, i64 1)
 %temp_$_1024 = bitcast { i64, [1 x i8] }* @str_$_1023 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1017, i64 %ret_$_1022, i64 0, i8* %temp_$_1024)
 %lnk_$_1007 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1008 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1007
 %lnk_$_1009 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1010 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1009
 %var_ptr_$_1011 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 %res_$_1012 = load i64, i64* %var_ptr_$_1011
 %ret_$_1013 = call i64 @mod$3 (%$locals_tigermain* %load_$_1010, i64 %res_$_1012, i64 1)
 %temp_$_1015 = bitcast { i64, [1 x i8] }* @str_$_1014 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1008, i64 %ret_$_1013, i64 0, i8* %temp_$_1015)
 %temp_$_1005 = sub i64 0, 32
 %var_ptr_$_1006 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 %temp_$_1005, i64* %var_ptr_$_1006
 %temp_$_1003 = sub i64 0, 1025
 %var_ptr_$_1004 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 store i64 %temp_$_1003, i64* %var_ptr_$_1004
 %lnk_$_992 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_993 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_992
 %var_ptr_$_996 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_997 = load i64, i64* %var_ptr_$_996
 %cnd_$_998 = icmp eq i64 4, 0
 br i1 %cnd_$_998, label %thn_$_994, label %mrg_$_995
thn_$_994:
 call i64 @divisionByZero ()
 br label %mrg_$_995
mrg_$_995:
 %temp_$_999 = sdiv i64 %res_$_997, 4
 %temp_$_1000 = sub i64 0, 8
 %temp_$_1002 = bitcast { i64, [1 x i8] }* @str_$_1001 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_993, i64 %temp_$_999, i64 %temp_$_1000, i8* %temp_$_1002)
 %lnk_$_981 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_982 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_981
 %var_ptr_$_985 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 %res_$_986 = load i64, i64* %var_ptr_$_985
 %cnd_$_987 = icmp eq i64 8, 0
 br i1 %cnd_$_987, label %thn_$_983, label %mrg_$_984
thn_$_983:
 call i64 @divisionByZero ()
 br label %mrg_$_984
mrg_$_984:
 %temp_$_988 = sdiv i64 %res_$_986, 8
 %temp_$_989 = sub i64 0, 128
 %temp_$_991 = bitcast { i64, [1 x i8] }* @str_$_990 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_982, i64 %temp_$_988, i64 %temp_$_989, i8* %temp_$_991)
 %var_ptr_$_980 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 8, i64* %var_ptr_$_980
 %lnk_$_967 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_968 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_967
 %var_ptr_$_971 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 2
 %res_$_972 = load i64, i64* %var_ptr_$_971
 %var_ptr_$_973 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_974 = load i64, i64* %var_ptr_$_973
 %cnd_$_975 = icmp eq i64 %res_$_974, 0
 br i1 %cnd_$_975, label %thn_$_969, label %mrg_$_970
thn_$_969:
 call i64 @divisionByZero ()
 br label %mrg_$_970
mrg_$_970:
 %temp_$_976 = sdiv i64 %res_$_972, %res_$_974
 %temp_$_977 = sub i64 0, 128
 %temp_$_979 = bitcast { i64, [1 x i8] }* @str_$_978 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_968, i64 %temp_$_976, i64 %temp_$_977, i8* %temp_$_979)
 %temp_$_965 = sub i64 0, 32
 %var_ptr_$_966 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 %temp_$_965, i64* %var_ptr_$_966
 %lnk_$_1113 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_1114 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1113
 %var_ptr_$_1115 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_1116 = load i64, i64* %var_ptr_$_1115
 %temp_$_1117 = mul i64 %res_$_1116, 4
 %temp_$_1118 = sub i64 0, 128
 %temp_$_1120 = bitcast { i64, [1 x i8] }* @str_$_1119 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_1114, i64 %temp_$_1117, i64 %temp_$_1118, i8* %temp_$_1120)
 %lnk_$_959 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_960 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_959
 %temp_$_962 = bitcast { i64, [1 x i8] }* @str_$_961 to i8*
 call void @fill$1 (%$locals_tigermain* %load_$_960, i8* %temp_$_962)
 %lnk_$_957 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_958 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_957
 call void @newl$2 (%$locals_tigermain* %load_$_958)
 %var_ptr_$_956 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 100, i64* %var_ptr_$_956
 %lnk_$_946 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_947 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_946
 %var_ptr_$_950 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_951 = load i64, i64* %var_ptr_$_950
 %cnd_$_952 = icmp eq i64 1, 0
 br i1 %cnd_$_952, label %thn_$_948, label %mrg_$_949
thn_$_948:
 call i64 @divisionByZero ()
 br label %mrg_$_949
mrg_$_949:
 %temp_$_953 = sdiv i64 %res_$_951, 1
 %temp_$_955 = bitcast { i64, [1 x i8] }* @str_$_954 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_947, i64 %temp_$_953, i64 100, i8* %temp_$_955)
 %lnk_$_936 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_937 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_936
 %var_ptr_$_940 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_941 = load i64, i64* %var_ptr_$_940
 %cnd_$_942 = icmp eq i64 2, 0
 br i1 %cnd_$_942, label %thn_$_938, label %mrg_$_939
thn_$_938:
 call i64 @divisionByZero ()
 br label %mrg_$_939
mrg_$_939:
 %temp_$_943 = sdiv i64 %res_$_941, 2
 %temp_$_945 = bitcast { i64, [1 x i8] }* @str_$_944 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_937, i64 %temp_$_943, i64 50, i8* %temp_$_945)
 %lnk_$_926 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_927 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_926
 %var_ptr_$_930 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_931 = load i64, i64* %var_ptr_$_930
 %cnd_$_932 = icmp eq i64 3, 0
 br i1 %cnd_$_932, label %thn_$_928, label %mrg_$_929
thn_$_928:
 call i64 @divisionByZero ()
 br label %mrg_$_929
mrg_$_929:
 %temp_$_933 = sdiv i64 %res_$_931, 3
 %temp_$_935 = bitcast { i64, [1 x i8] }* @str_$_934 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_927, i64 %temp_$_933, i64 33, i8* %temp_$_935)
 %lnk_$_916 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_917 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_916
 %var_ptr_$_920 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_921 = load i64, i64* %var_ptr_$_920
 %cnd_$_922 = icmp eq i64 4, 0
 br i1 %cnd_$_922, label %thn_$_918, label %mrg_$_919
thn_$_918:
 call i64 @divisionByZero ()
 br label %mrg_$_919
mrg_$_919:
 %temp_$_923 = sdiv i64 %res_$_921, 4
 %temp_$_925 = bitcast { i64, [1 x i8] }* @str_$_924 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_917, i64 %temp_$_923, i64 25, i8* %temp_$_925)
 %lnk_$_906 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_907 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_906
 %var_ptr_$_910 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_911 = load i64, i64* %var_ptr_$_910
 %cnd_$_912 = icmp eq i64 5, 0
 br i1 %cnd_$_912, label %thn_$_908, label %mrg_$_909
thn_$_908:
 call i64 @divisionByZero ()
 br label %mrg_$_909
mrg_$_909:
 %temp_$_913 = sdiv i64 %res_$_911, 5
 %temp_$_915 = bitcast { i64, [1 x i8] }* @str_$_914 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_907, i64 %temp_$_913, i64 20, i8* %temp_$_915)
 %lnk_$_896 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_897 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_896
 %var_ptr_$_900 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_901 = load i64, i64* %var_ptr_$_900
 %cnd_$_902 = icmp eq i64 6, 0
 br i1 %cnd_$_902, label %thn_$_898, label %mrg_$_899
thn_$_898:
 call i64 @divisionByZero ()
 br label %mrg_$_899
mrg_$_899:
 %temp_$_903 = sdiv i64 %res_$_901, 6
 %temp_$_905 = bitcast { i64, [1 x i8] }* @str_$_904 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_897, i64 %temp_$_903, i64 16, i8* %temp_$_905)
 %lnk_$_886 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_887 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_886
 %var_ptr_$_890 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_891 = load i64, i64* %var_ptr_$_890
 %cnd_$_892 = icmp eq i64 7, 0
 br i1 %cnd_$_892, label %thn_$_888, label %mrg_$_889
thn_$_888:
 call i64 @divisionByZero ()
 br label %mrg_$_889
mrg_$_889:
 %temp_$_893 = sdiv i64 %res_$_891, 7
 %temp_$_895 = bitcast { i64, [1 x i8] }* @str_$_894 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_887, i64 %temp_$_893, i64 14, i8* %temp_$_895)
 %lnk_$_876 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_877 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_876
 %var_ptr_$_880 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_881 = load i64, i64* %var_ptr_$_880
 %cnd_$_882 = icmp eq i64 8, 0
 br i1 %cnd_$_882, label %thn_$_878, label %mrg_$_879
thn_$_878:
 call i64 @divisionByZero ()
 br label %mrg_$_879
mrg_$_879:
 %temp_$_883 = sdiv i64 %res_$_881, 8
 %temp_$_885 = bitcast { i64, [1 x i8] }* @str_$_884 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_877, i64 %temp_$_883, i64 12, i8* %temp_$_885)
 %var_ptr_$_875 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 83886080, i64* %var_ptr_$_875
 %lnk_$_865 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_866 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_865
 %var_ptr_$_869 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_870 = load i64, i64* %var_ptr_$_869
 %cnd_$_871 = icmp eq i64 256, 0
 br i1 %cnd_$_871, label %thn_$_867, label %mrg_$_868
thn_$_867:
 call i64 @divisionByZero ()
 br label %mrg_$_868
mrg_$_868:
 %temp_$_872 = sdiv i64 %res_$_870, 256
 %temp_$_874 = bitcast { i64, [1 x i8] }* @str_$_873 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_866, i64 %temp_$_872, i64 327680, i8* %temp_$_874)
 %lnk_$_855 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_856 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_855
 %var_ptr_$_859 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_860 = load i64, i64* %var_ptr_$_859
 %cnd_$_861 = icmp eq i64 65536, 0
 br i1 %cnd_$_861, label %thn_$_857, label %mrg_$_858
thn_$_857:
 call i64 @divisionByZero ()
 br label %mrg_$_858
mrg_$_858:
 %temp_$_862 = sdiv i64 %res_$_860, 65536
 %temp_$_864 = bitcast { i64, [1 x i8] }* @str_$_863 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_856, i64 %temp_$_862, i64 1280, i8* %temp_$_864)
 %lnk_$_845 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_846 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_845
 %var_ptr_$_849 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_850 = load i64, i64* %var_ptr_$_849
 %cnd_$_851 = icmp eq i64 16777216, 0
 br i1 %cnd_$_851, label %thn_$_847, label %mrg_$_848
thn_$_847:
 call i64 @divisionByZero ()
 br label %mrg_$_848
mrg_$_848:
 %temp_$_852 = sdiv i64 %res_$_850, 16777216
 %temp_$_854 = bitcast { i64, [1 x i8] }* @str_$_853 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_846, i64 %temp_$_852, i64 5, i8* %temp_$_854)
 %var_ptr_$_844 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 101, i64* %var_ptr_$_844
 %lnk_$_835 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_836 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_835
 %lnk_$_837 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_838 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_837
 %var_ptr_$_839 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_840 = load i64, i64* %var_ptr_$_839
 %ret_$_841 = call i64 @mod$3 (%$locals_tigermain* %load_$_838, i64 %res_$_840, i64 1)
 %temp_$_843 = bitcast { i64, [1 x i8] }* @str_$_842 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_836, i64 %ret_$_841, i64 0, i8* %temp_$_843)
 %lnk_$_826 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_827 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_826
 %lnk_$_828 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_829 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_828
 %var_ptr_$_830 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_831 = load i64, i64* %var_ptr_$_830
 %ret_$_832 = call i64 @mod$3 (%$locals_tigermain* %load_$_829, i64 %res_$_831, i64 2)
 %temp_$_834 = bitcast { i64, [1 x i8] }* @str_$_833 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_827, i64 %ret_$_832, i64 1, i8* %temp_$_834)
 %lnk_$_817 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_818 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_817
 %lnk_$_819 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_820 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_819
 %var_ptr_$_821 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_822 = load i64, i64* %var_ptr_$_821
 %ret_$_823 = call i64 @mod$3 (%$locals_tigermain* %load_$_820, i64 %res_$_822, i64 3)
 %temp_$_825 = bitcast { i64, [1 x i8] }* @str_$_824 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_818, i64 %ret_$_823, i64 2, i8* %temp_$_825)
 %lnk_$_808 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_809 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_808
 %lnk_$_810 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_811 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_810
 %var_ptr_$_812 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_813 = load i64, i64* %var_ptr_$_812
 %ret_$_814 = call i64 @mod$3 (%$locals_tigermain* %load_$_811, i64 %res_$_813, i64 4)
 %temp_$_816 = bitcast { i64, [1 x i8] }* @str_$_815 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_809, i64 %ret_$_814, i64 1, i8* %temp_$_816)
 %lnk_$_799 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_800 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_799
 %lnk_$_801 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_802 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_801
 %var_ptr_$_803 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_804 = load i64, i64* %var_ptr_$_803
 %ret_$_805 = call i64 @mod$3 (%$locals_tigermain* %load_$_802, i64 %res_$_804, i64 5)
 %temp_$_807 = bitcast { i64, [1 x i8] }* @str_$_806 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_800, i64 %ret_$_805, i64 1, i8* %temp_$_807)
 %lnk_$_790 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_791 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_790
 %lnk_$_792 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_793 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_792
 %var_ptr_$_794 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_795 = load i64, i64* %var_ptr_$_794
 %ret_$_796 = call i64 @mod$3 (%$locals_tigermain* %load_$_793, i64 %res_$_795, i64 6)
 %temp_$_798 = bitcast { i64, [1 x i8] }* @str_$_797 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_791, i64 %ret_$_796, i64 5, i8* %temp_$_798)
 %lnk_$_781 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_782 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_781
 %lnk_$_783 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_784 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_783
 %var_ptr_$_785 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_786 = load i64, i64* %var_ptr_$_785
 %ret_$_787 = call i64 @mod$3 (%$locals_tigermain* %load_$_784, i64 %res_$_786, i64 7)
 %temp_$_789 = bitcast { i64, [1 x i8] }* @str_$_788 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_782, i64 %ret_$_787, i64 3, i8* %temp_$_789)
 %lnk_$_772 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_773 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_772
 %lnk_$_774 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_775 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_774
 %var_ptr_$_776 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_777 = load i64, i64* %var_ptr_$_776
 %ret_$_778 = call i64 @mod$3 (%$locals_tigermain* %load_$_775, i64 %res_$_777, i64 8)
 %temp_$_780 = bitcast { i64, [1 x i8] }* @str_$_779 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_773, i64 %ret_$_778, i64 5, i8* %temp_$_780)
 %var_ptr_$_771 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 16777217, i64* %var_ptr_$_771
 %lnk_$_762 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_763 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_762
 %lnk_$_764 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_765 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_764
 %var_ptr_$_766 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_767 = load i64, i64* %var_ptr_$_766
 %ret_$_768 = call i64 @mod$3 (%$locals_tigermain* %load_$_765, i64 %res_$_767, i64 256)
 %temp_$_770 = bitcast { i64, [1 x i8] }* @str_$_769 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_763, i64 %ret_$_768, i64 1, i8* %temp_$_770)
 %lnk_$_753 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_754 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_753
 %lnk_$_755 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_756 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_755
 %var_ptr_$_757 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_758 = load i64, i64* %var_ptr_$_757
 %ret_$_759 = call i64 @mod$3 (%$locals_tigermain* %load_$_756, i64 %res_$_758, i64 65536)
 %temp_$_761 = bitcast { i64, [1 x i8] }* @str_$_760 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_754, i64 %ret_$_759, i64 1, i8* %temp_$_761)
 %lnk_$_744 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_745 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_744
 %lnk_$_746 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_747 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_746
 %var_ptr_$_748 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_749 = load i64, i64* %var_ptr_$_748
 %ret_$_750 = call i64 @mod$3 (%$locals_tigermain* %load_$_747, i64 %res_$_749, i64 16777216)
 %temp_$_752 = bitcast { i64, [1 x i8] }* @str_$_751 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_745, i64 %ret_$_750, i64 1, i8* %temp_$_752)
 %lnk_$_740 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_741 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_740
 %temp_$_743 = bitcast { i64, [1 x i8] }* @str_$_742 to i8*
 call void @fill$1 (%$locals_tigermain* %load_$_741, i8* %temp_$_743)
 %lnk_$_738 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_739 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_738
 call void @newl$2 (%$locals_tigermain* %load_$_739)
 %var_ptr_$_737 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 100, i64* %var_ptr_$_737
 %lnk_$_725 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_726 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_725
 %var_ptr_$_729 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_730 = load i64, i64* %var_ptr_$_729
 %temp_$_731 = sub i64 0, 1
 %cnd_$_732 = icmp eq i64 %temp_$_731, 0
 br i1 %cnd_$_732, label %thn_$_727, label %mrg_$_728
thn_$_727:
 call i64 @divisionByZero ()
 br label %mrg_$_728
mrg_$_728:
 %temp_$_733 = sdiv i64 %res_$_730, %temp_$_731
 %temp_$_734 = sub i64 0, 100
 %temp_$_736 = bitcast { i64, [1 x i8] }* @str_$_735 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_726, i64 %temp_$_733, i64 %temp_$_734, i8* %temp_$_736)
 %lnk_$_713 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_714 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_713
 %var_ptr_$_717 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_718 = load i64, i64* %var_ptr_$_717
 %temp_$_719 = sub i64 0, 2
 %cnd_$_720 = icmp eq i64 %temp_$_719, 0
 br i1 %cnd_$_720, label %thn_$_715, label %mrg_$_716
thn_$_715:
 call i64 @divisionByZero ()
 br label %mrg_$_716
mrg_$_716:
 %temp_$_721 = sdiv i64 %res_$_718, %temp_$_719
 %temp_$_722 = sub i64 0, 50
 %temp_$_724 = bitcast { i64, [1 x i8] }* @str_$_723 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_714, i64 %temp_$_721, i64 %temp_$_722, i8* %temp_$_724)
 %lnk_$_701 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_702 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_701
 %var_ptr_$_705 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_706 = load i64, i64* %var_ptr_$_705
 %temp_$_707 = sub i64 0, 3
 %cnd_$_708 = icmp eq i64 %temp_$_707, 0
 br i1 %cnd_$_708, label %thn_$_703, label %mrg_$_704
thn_$_703:
 call i64 @divisionByZero ()
 br label %mrg_$_704
mrg_$_704:
 %temp_$_709 = sdiv i64 %res_$_706, %temp_$_707
 %temp_$_710 = sub i64 0, 33
 %temp_$_712 = bitcast { i64, [1 x i8] }* @str_$_711 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_702, i64 %temp_$_709, i64 %temp_$_710, i8* %temp_$_712)
 %lnk_$_689 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_690 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_689
 %var_ptr_$_693 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_694 = load i64, i64* %var_ptr_$_693
 %temp_$_695 = sub i64 0, 4
 %cnd_$_696 = icmp eq i64 %temp_$_695, 0
 br i1 %cnd_$_696, label %thn_$_691, label %mrg_$_692
thn_$_691:
 call i64 @divisionByZero ()
 br label %mrg_$_692
mrg_$_692:
 %temp_$_697 = sdiv i64 %res_$_694, %temp_$_695
 %temp_$_698 = sub i64 0, 25
 %temp_$_700 = bitcast { i64, [1 x i8] }* @str_$_699 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_690, i64 %temp_$_697, i64 %temp_$_698, i8* %temp_$_700)
 %lnk_$_677 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_678 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_677
 %var_ptr_$_681 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_682 = load i64, i64* %var_ptr_$_681
 %temp_$_683 = sub i64 0, 5
 %cnd_$_684 = icmp eq i64 %temp_$_683, 0
 br i1 %cnd_$_684, label %thn_$_679, label %mrg_$_680
thn_$_679:
 call i64 @divisionByZero ()
 br label %mrg_$_680
mrg_$_680:
 %temp_$_685 = sdiv i64 %res_$_682, %temp_$_683
 %temp_$_686 = sub i64 0, 20
 %temp_$_688 = bitcast { i64, [1 x i8] }* @str_$_687 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_678, i64 %temp_$_685, i64 %temp_$_686, i8* %temp_$_688)
 %lnk_$_665 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_666 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_665
 %var_ptr_$_669 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_670 = load i64, i64* %var_ptr_$_669
 %temp_$_671 = sub i64 0, 6
 %cnd_$_672 = icmp eq i64 %temp_$_671, 0
 br i1 %cnd_$_672, label %thn_$_667, label %mrg_$_668
thn_$_667:
 call i64 @divisionByZero ()
 br label %mrg_$_668
mrg_$_668:
 %temp_$_673 = sdiv i64 %res_$_670, %temp_$_671
 %temp_$_674 = sub i64 0, 16
 %temp_$_676 = bitcast { i64, [1 x i8] }* @str_$_675 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_666, i64 %temp_$_673, i64 %temp_$_674, i8* %temp_$_676)
 %lnk_$_653 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_654 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_653
 %var_ptr_$_657 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_658 = load i64, i64* %var_ptr_$_657
 %temp_$_659 = sub i64 0, 7
 %cnd_$_660 = icmp eq i64 %temp_$_659, 0
 br i1 %cnd_$_660, label %thn_$_655, label %mrg_$_656
thn_$_655:
 call i64 @divisionByZero ()
 br label %mrg_$_656
mrg_$_656:
 %temp_$_661 = sdiv i64 %res_$_658, %temp_$_659
 %temp_$_662 = sub i64 0, 14
 %temp_$_664 = bitcast { i64, [1 x i8] }* @str_$_663 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_654, i64 %temp_$_661, i64 %temp_$_662, i8* %temp_$_664)
 %lnk_$_641 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_642 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_641
 %var_ptr_$_645 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_646 = load i64, i64* %var_ptr_$_645
 %temp_$_647 = sub i64 0, 8
 %cnd_$_648 = icmp eq i64 %temp_$_647, 0
 br i1 %cnd_$_648, label %thn_$_643, label %mrg_$_644
thn_$_643:
 call i64 @divisionByZero ()
 br label %mrg_$_644
mrg_$_644:
 %temp_$_649 = sdiv i64 %res_$_646, %temp_$_647
 %temp_$_650 = sub i64 0, 12
 %temp_$_652 = bitcast { i64, [1 x i8] }* @str_$_651 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_642, i64 %temp_$_649, i64 %temp_$_650, i8* %temp_$_652)
 %var_ptr_$_640 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 83886080, i64* %var_ptr_$_640
 %lnk_$_628 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_629 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_628
 %var_ptr_$_632 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_633 = load i64, i64* %var_ptr_$_632
 %temp_$_634 = sub i64 0, 256
 %cnd_$_635 = icmp eq i64 %temp_$_634, 0
 br i1 %cnd_$_635, label %thn_$_630, label %mrg_$_631
thn_$_630:
 call i64 @divisionByZero ()
 br label %mrg_$_631
mrg_$_631:
 %temp_$_636 = sdiv i64 %res_$_633, %temp_$_634
 %temp_$_637 = sub i64 0, 327680
 %temp_$_639 = bitcast { i64, [1 x i8] }* @str_$_638 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_629, i64 %temp_$_636, i64 %temp_$_637, i8* %temp_$_639)
 %lnk_$_616 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_617 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_616
 %var_ptr_$_620 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_621 = load i64, i64* %var_ptr_$_620
 %temp_$_622 = sub i64 0, 65536
 %cnd_$_623 = icmp eq i64 %temp_$_622, 0
 br i1 %cnd_$_623, label %thn_$_618, label %mrg_$_619
thn_$_618:
 call i64 @divisionByZero ()
 br label %mrg_$_619
mrg_$_619:
 %temp_$_624 = sdiv i64 %res_$_621, %temp_$_622
 %temp_$_625 = sub i64 0, 1280
 %temp_$_627 = bitcast { i64, [1 x i8] }* @str_$_626 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_617, i64 %temp_$_624, i64 %temp_$_625, i8* %temp_$_627)
 %lnk_$_604 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_605 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_604
 %var_ptr_$_608 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_609 = load i64, i64* %var_ptr_$_608
 %temp_$_610 = sub i64 0, 16777216
 %cnd_$_611 = icmp eq i64 %temp_$_610, 0
 br i1 %cnd_$_611, label %thn_$_606, label %mrg_$_607
thn_$_606:
 call i64 @divisionByZero ()
 br label %mrg_$_607
mrg_$_607:
 %temp_$_612 = sdiv i64 %res_$_609, %temp_$_610
 %temp_$_613 = sub i64 0, 5
 %temp_$_615 = bitcast { i64, [1 x i8] }* @str_$_614 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_605, i64 %temp_$_612, i64 %temp_$_613, i8* %temp_$_615)
 %var_ptr_$_603 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 101, i64* %var_ptr_$_603
 %lnk_$_593 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_594 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_593
 %lnk_$_595 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_596 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_595
 %var_ptr_$_597 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_598 = load i64, i64* %var_ptr_$_597
 %temp_$_599 = sub i64 0, 1
 %ret_$_600 = call i64 @mod$3 (%$locals_tigermain* %load_$_596, i64 %res_$_598, i64 %temp_$_599)
 %temp_$_602 = bitcast { i64, [1 x i8] }* @str_$_601 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_594, i64 %ret_$_600, i64 0, i8* %temp_$_602)
 %lnk_$_582 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_583 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_582
 %lnk_$_584 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_585 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_584
 %var_ptr_$_586 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_587 = load i64, i64* %var_ptr_$_586
 %temp_$_588 = sub i64 0, 2
 %ret_$_589 = call i64 @mod$3 (%$locals_tigermain* %load_$_585, i64 %res_$_587, i64 %temp_$_588)
 %temp_$_590 = sub i64 0, 1
 %temp_$_592 = bitcast { i64, [1 x i8] }* @str_$_591 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_583, i64 %ret_$_589, i64 %temp_$_590, i8* %temp_$_592)
 %lnk_$_571 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_572 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_571
 %lnk_$_573 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_574 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_573
 %var_ptr_$_575 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_576 = load i64, i64* %var_ptr_$_575
 %temp_$_577 = sub i64 0, 3
 %ret_$_578 = call i64 @mod$3 (%$locals_tigermain* %load_$_574, i64 %res_$_576, i64 %temp_$_577)
 %temp_$_579 = sub i64 0, 1
 %temp_$_581 = bitcast { i64, [1 x i8] }* @str_$_580 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_572, i64 %ret_$_578, i64 %temp_$_579, i8* %temp_$_581)
 %lnk_$_560 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_561 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_560
 %lnk_$_562 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_563 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_562
 %var_ptr_$_564 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_565 = load i64, i64* %var_ptr_$_564
 %temp_$_566 = sub i64 0, 4
 %ret_$_567 = call i64 @mod$3 (%$locals_tigermain* %load_$_563, i64 %res_$_565, i64 %temp_$_566)
 %temp_$_568 = sub i64 0, 3
 %temp_$_570 = bitcast { i64, [1 x i8] }* @str_$_569 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_561, i64 %ret_$_567, i64 %temp_$_568, i8* %temp_$_570)
 %lnk_$_549 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_550 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_549
 %lnk_$_551 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_552 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_551
 %var_ptr_$_553 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_554 = load i64, i64* %var_ptr_$_553
 %temp_$_555 = sub i64 0, 5
 %ret_$_556 = call i64 @mod$3 (%$locals_tigermain* %load_$_552, i64 %res_$_554, i64 %temp_$_555)
 %temp_$_557 = sub i64 0, 4
 %temp_$_559 = bitcast { i64, [1 x i8] }* @str_$_558 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_550, i64 %ret_$_556, i64 %temp_$_557, i8* %temp_$_559)
 %lnk_$_538 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_539 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_538
 %lnk_$_540 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_541 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_540
 %var_ptr_$_542 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_543 = load i64, i64* %var_ptr_$_542
 %temp_$_544 = sub i64 0, 6
 %ret_$_545 = call i64 @mod$3 (%$locals_tigermain* %load_$_541, i64 %res_$_543, i64 %temp_$_544)
 %temp_$_546 = sub i64 0, 1
 %temp_$_548 = bitcast { i64, [1 x i8] }* @str_$_547 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_539, i64 %ret_$_545, i64 %temp_$_546, i8* %temp_$_548)
 %lnk_$_527 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_528 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_527
 %lnk_$_529 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_530 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_529
 %var_ptr_$_531 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_532 = load i64, i64* %var_ptr_$_531
 %temp_$_533 = sub i64 0, 7
 %ret_$_534 = call i64 @mod$3 (%$locals_tigermain* %load_$_530, i64 %res_$_532, i64 %temp_$_533)
 %temp_$_535 = sub i64 0, 4
 %temp_$_537 = bitcast { i64, [1 x i8] }* @str_$_536 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_528, i64 %ret_$_534, i64 %temp_$_535, i8* %temp_$_537)
 %lnk_$_516 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_517 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_516
 %lnk_$_518 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_519 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_518
 %var_ptr_$_520 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_521 = load i64, i64* %var_ptr_$_520
 %temp_$_522 = sub i64 0, 8
 %ret_$_523 = call i64 @mod$3 (%$locals_tigermain* %load_$_519, i64 %res_$_521, i64 %temp_$_522)
 %temp_$_524 = sub i64 0, 3
 %temp_$_526 = bitcast { i64, [1 x i8] }* @str_$_525 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_517, i64 %ret_$_523, i64 %temp_$_524, i8* %temp_$_526)
 %var_ptr_$_515 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 16777217, i64* %var_ptr_$_515
 %lnk_$_504 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_505 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_504
 %lnk_$_506 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_507 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_506
 %var_ptr_$_508 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_509 = load i64, i64* %var_ptr_$_508
 %temp_$_510 = sub i64 0, 256
 %ret_$_511 = call i64 @mod$3 (%$locals_tigermain* %load_$_507, i64 %res_$_509, i64 %temp_$_510)
 %temp_$_512 = sub i64 0, 255
 %temp_$_514 = bitcast { i64, [1 x i8] }* @str_$_513 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_505, i64 %ret_$_511, i64 %temp_$_512, i8* %temp_$_514)
 %lnk_$_493 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_494 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_493
 %lnk_$_495 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_496 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_495
 %var_ptr_$_497 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_498 = load i64, i64* %var_ptr_$_497
 %temp_$_499 = sub i64 0, 65536
 %ret_$_500 = call i64 @mod$3 (%$locals_tigermain* %load_$_496, i64 %res_$_498, i64 %temp_$_499)
 %temp_$_501 = sub i64 0, 65535
 %temp_$_503 = bitcast { i64, [1 x i8] }* @str_$_502 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_494, i64 %ret_$_500, i64 %temp_$_501, i8* %temp_$_503)
 %lnk_$_482 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_483 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_482
 %lnk_$_484 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_485 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_484
 %var_ptr_$_486 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_487 = load i64, i64* %var_ptr_$_486
 %temp_$_488 = sub i64 0, 16777216
 %ret_$_489 = call i64 @mod$3 (%$locals_tigermain* %load_$_485, i64 %res_$_487, i64 %temp_$_488)
 %temp_$_490 = sub i64 0, 16777215
 %temp_$_492 = bitcast { i64, [1 x i8] }* @str_$_491 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_483, i64 %ret_$_489, i64 %temp_$_490, i8* %temp_$_492)
 %lnk_$_470 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_471 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_470
 %lnk_$_472 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_473 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_472
 %var_ptr_$_474 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_475 = load i64, i64* %var_ptr_$_474
 %temp_$_476 = sub i64 0, %res_$_475
 %temp_$_477 = sub i64 0, 16777216
 %ret_$_478 = call i64 @mod$3 (%$locals_tigermain* %load_$_473, i64 %temp_$_476, i64 %temp_$_477)
 %temp_$_479 = sub i64 0, 1
 %temp_$_481 = bitcast { i64, [1 x i8] }* @str_$_480 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_471, i64 %ret_$_478, i64 %temp_$_479, i8* %temp_$_481)
 %lnk_$_458 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_459 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_458
 %lnk_$_460 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_461 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_460
 %var_ptr_$_462 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_463 = load i64, i64* %var_ptr_$_462
 %temp_$_464 = sub i64 0, %res_$_463
 %temp_$_465 = sub i64 0, 65536
 %ret_$_466 = call i64 @mod$3 (%$locals_tigermain* %load_$_461, i64 %temp_$_464, i64 %temp_$_465)
 %temp_$_467 = sub i64 0, 1
 %temp_$_469 = bitcast { i64, [1 x i8] }* @str_$_468 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_459, i64 %ret_$_466, i64 %temp_$_467, i8* %temp_$_469)
 %var_ptr_$_457 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 101, i64* %var_ptr_$_457
 %lnk_$_445 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_446 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_445
 %lnk_$_447 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_448 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_447
 %var_ptr_$_449 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_450 = load i64, i64* %var_ptr_$_449
 %temp_$_451 = sub i64 0, %res_$_450
 %temp_$_452 = sub i64 0, 8
 %ret_$_453 = call i64 @mod$3 (%$locals_tigermain* %load_$_448, i64 %temp_$_451, i64 %temp_$_452)
 %temp_$_454 = sub i64 0, 5
 %temp_$_456 = bitcast { i64, [1 x i8] }* @str_$_455 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_446, i64 %ret_$_453, i64 %temp_$_454, i8* %temp_$_456)
 %lnk_$_434 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_435 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_434
 %lnk_$_436 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_437 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_436
 %var_ptr_$_438 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_439 = load i64, i64* %var_ptr_$_438
 %temp_$_440 = sub i64 0, %res_$_439
 %temp_$_441 = sub i64 0, 1
 %ret_$_442 = call i64 @mod$3 (%$locals_tigermain* %load_$_437, i64 %temp_$_440, i64 %temp_$_441)
 %temp_$_444 = bitcast { i64, [1 x i8] }* @str_$_443 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_435, i64 %ret_$_442, i64 0, i8* %temp_$_444)
 %var_ptr_$_433 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 83886080, i64* %var_ptr_$_433
 %lnk_$_421 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_422 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_421
 %var_ptr_$_425 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_426 = load i64, i64* %var_ptr_$_425
 %temp_$_427 = sub i64 0, %res_$_426
 %temp_$_428 = sub i64 0, 256
 %cnd_$_429 = icmp eq i64 %temp_$_428, 0
 br i1 %cnd_$_429, label %thn_$_423, label %mrg_$_424
thn_$_423:
 call i64 @divisionByZero ()
 br label %mrg_$_424
mrg_$_424:
 %temp_$_430 = sdiv i64 %temp_$_427, %temp_$_428
 %temp_$_432 = bitcast { i64, [1 x i8] }* @str_$_431 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_422, i64 %temp_$_430, i64 327680, i8* %temp_$_432)
 %lnk_$_409 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_410 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_409
 %var_ptr_$_413 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_414 = load i64, i64* %var_ptr_$_413
 %temp_$_415 = sub i64 0, %res_$_414
 %temp_$_416 = sub i64 0, 65536
 %cnd_$_417 = icmp eq i64 %temp_$_416, 0
 br i1 %cnd_$_417, label %thn_$_411, label %mrg_$_412
thn_$_411:
 call i64 @divisionByZero ()
 br label %mrg_$_412
mrg_$_412:
 %temp_$_418 = sdiv i64 %temp_$_415, %temp_$_416
 %temp_$_420 = bitcast { i64, [1 x i8] }* @str_$_419 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_410, i64 %temp_$_418, i64 1280, i8* %temp_$_420)
 %lnk_$_397 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_398 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_397
 %var_ptr_$_401 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_402 = load i64, i64* %var_ptr_$_401
 %temp_$_403 = sub i64 0, %res_$_402
 %temp_$_404 = sub i64 0, 16777216
 %cnd_$_405 = icmp eq i64 %temp_$_404, 0
 br i1 %cnd_$_405, label %thn_$_399, label %mrg_$_400
thn_$_399:
 call i64 @divisionByZero ()
 br label %mrg_$_400
mrg_$_400:
 %temp_$_406 = sdiv i64 %temp_$_403, %temp_$_404
 %temp_$_408 = bitcast { i64, [1 x i8] }* @str_$_407 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_398, i64 %temp_$_406, i64 5, i8* %temp_$_408)
 %var_ptr_$_396 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 store i64 100, i64* %var_ptr_$_396
 %lnk_$_384 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_385 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_384
 %var_ptr_$_388 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_389 = load i64, i64* %var_ptr_$_388
 %temp_$_390 = sub i64 0, %res_$_389
 %temp_$_391 = sub i64 0, 8
 %cnd_$_392 = icmp eq i64 %temp_$_391, 0
 br i1 %cnd_$_392, label %thn_$_386, label %mrg_$_387
thn_$_386:
 call i64 @divisionByZero ()
 br label %mrg_$_387
mrg_$_387:
 %temp_$_393 = sdiv i64 %temp_$_390, %temp_$_391
 %temp_$_395 = bitcast { i64, [1 x i8] }* @str_$_394 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_385, i64 %temp_$_393, i64 12, i8* %temp_$_395)
 %lnk_$_372 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_373 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_372
 %var_ptr_$_376 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_377 = load i64, i64* %var_ptr_$_376
 %temp_$_378 = sub i64 0, %res_$_377
 %temp_$_379 = sub i64 0, 2
 %cnd_$_380 = icmp eq i64 %temp_$_379, 0
 br i1 %cnd_$_380, label %thn_$_374, label %mrg_$_375
thn_$_374:
 call i64 @divisionByZero ()
 br label %mrg_$_375
mrg_$_375:
 %temp_$_381 = sdiv i64 %temp_$_378, %temp_$_379
 %temp_$_383 = bitcast { i64, [1 x i8] }* @str_$_382 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_373, i64 %temp_$_381, i64 50, i8* %temp_$_383)
 %lnk_$_360 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_361 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_360
 %var_ptr_$_364 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 6
 %res_$_365 = load i64, i64* %var_ptr_$_364
 %temp_$_366 = sub i64 0, %res_$_365
 %temp_$_367 = sub i64 0, 1
 %cnd_$_368 = icmp eq i64 %temp_$_367, 0
 br i1 %cnd_$_368, label %thn_$_362, label %mrg_$_363
thn_$_362:
 call i64 @divisionByZero ()
 br label %mrg_$_363
mrg_$_363:
 %temp_$_369 = sdiv i64 %temp_$_366, %temp_$_367
 %temp_$_371 = bitcast { i64, [1 x i8] }* @str_$_370 to i8*
 call void @chk$0 (%$locals_tigermain* %load_$_361, i64 %temp_$_369, i64 100, i8* %temp_$_371)
 %lnk_$_356 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_357 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_356
 %temp_$_359 = bitcast { i64, [1 x i8] }* @str_$_358 to i8*
 call void @fill$1 (%$locals_tigermain* %load_$_357, i8* %temp_$_359)
 %lnk_$_2096 = getelementptr %$locals_TstArith$4, %$locals_TstArith$4* %locals_$_7, i32 0, i32 0
 %load_$_2097 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2096
 call void @newl$2 (%$locals_tigermain* %load_$_2097)
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_8 = alloca %$locals_tigermain
 %arg_$_2098 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_8, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_2098
 call void @TstArith$4 (%$locals_tigermain* %locals_$_8)
 ret void
}
