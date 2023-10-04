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

%input$0 = type { i8*, i8* }
%exit$1 = type { i64 }
%items$2 = type { i64, i64, i64, i8* }
%room$3 = type { i8*, i8*, i8*, i8*, i8* }
%dungeon$4 = type i8*
%$locals_get_input$12 = type { %$locals_tigermain*, i8*, i8*, i8*, i64 }
%$locals_print_map$13 = type { %$locals_tigermain*, i64 }
%$locals_print_room$14 = type { %$locals_tigermain*, i64, i8* }
%$locals_print_items$15 = type { %$locals_tigermain*, i64, i8* }
%$locals_look$16 = type { %$locals_tigermain*, i8* }
%$locals_get$17 = type { %$locals_tigermain*, i8* }
%$locals_drop$18 = type { %$locals_tigermain*, i8* }
%$locals_use$19 = type { %$locals_tigermain*, i8* }
%$locals_go$20 = type { %$locals_tigermain*, i8* }
%$locals_handle_command$21 = type { %$locals_tigermain*, i8*, i8*, i8* }
%$locals_update$22 = type { %$locals_tigermain* }
%$locals_setup_level$23 = type { %$locals_tigermain*, i8*, i8*, i8*, i8*, i64, i8*, i64 }
%$locals_tigermain = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64 }

@str_$_2261 = global { i64, [30 x i8] } {i64 30, [30 x i8] c"Ye find yeSELF in yon dungeon."}
@str_$_2256 = global { i64, [24 x i8] } {i64 24, [24 x i8] c"\0AWhat wouldst thou deau?"}
@str_$_2253 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"\0A> "}
@str_$_2248 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_2245 = global { i64, [81 x i8] } {i64 81, [81 x i8] c"          F-S-O-E  |   |    F-O-M-F  |   | |  O-F-O-O    |   |  F-O-O-K          "}
@str_$_2192 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"S"}
@str_$_2092 = global { i64, [1 x i8] } {i64 1, [1 x i8] c" "}
@str_$_2078 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"O"}
@str_$_2074 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"S"}
@str_$_2066 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"?"}
@str_$_2039 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"E"}
@str_$_2026 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"K"}
@str_$_2013 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"F"}
@str_$_2000 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"M"}
@str_$_1952 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"\0A> "}
@str_$_1940 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"!\0A"}
@str_$_1928 = global { i64, [11 x i8] } {i64 11, [11 x i8] c"\0AYe cannot "}
@str_$_1920 = global { i64, [96 x i8] } {i64 96, [96 x i8] c"\0AYou can:\0A- go <direction>\0A- look at <object>\0A- pick up <object>\0A- use <object>\0A- drop <object>\0A"}
@str_$_1913 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"help"}
@str_$_1900 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"go "}
@str_$_1887 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"drop "}
@str_$_1874 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"use "}
@str_$_1861 = global { i64, [8 x i8] } {i64 8, [8 x i8] c"pick up "}
@str_$_1848 = global { i64, [8 x i8] } {i64 8, [8 x i8] c"look at "}
@str_$_1816 = global { i64, [20 x i8] } {i64 20, [20 x i8] c"\0AYe cannot do that!\0A"}
@str_$_1811 = global { i64, [27 x i8] } {i64 27, [27 x i8] c"\0AYe moveth to yonder ROOM.\0A"}
@str_$_1766 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"west"}
@str_$_1755 = global { i64, [27 x i8] } {i64 27, [27 x i8] c"\0AYe moveth to yonder ROOM.\0A"}
@str_$_1710 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"east"}
@str_$_1699 = global { i64, [27 x i8] } {i64 27, [27 x i8] c"\0AYe moveth to yonder ROOM.\0A"}
@str_$_1654 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"south"}
@str_$_1643 = global { i64, [27 x i8] } {i64 27, [27 x i8] c"\0AYe moveth to yonder ROOM.\0A"}
@str_$_1598 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"north"}
@str_$_1585 = global { i64, [21 x i8] } {i64 21, [21 x i8] c"\0AYe cannot use that!\0A"}
@str_$_1577 = global { i64, [42 x i8] } {i64 42, [42 x i8] c"\0AYe have escapeth yon dungeon. Well done!\0A"}
@str_$_1515 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"door"}
@str_$_1500 = global { i64, [21 x i8] } {i64 21, [21 x i8] c"\0AThe DOOR is locked.\0A"}
@str_$_1442 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"door"}
@str_$_1427 = global { i64, [34 x i8] } {i64 34, [34 x i8] c"\0AThe KEY does nothing on its own.\0A"}
@str_$_1383 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"key"}
@str_$_1372 = global { i64, [22 x i8] } {i64 22, [22 x i8] c"\0AYe locketh the DOOR.\0A"}
@str_$_1304 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"key"}
@str_$_1289 = global { i64, [24 x i8] } {i64 24, [24 x i8] c"\0AYe unlocketh the DOOR.\0A"}
@str_$_1194 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"key"}
@str_$_1173 = global { i64, [22 x i8] } {i64 22, [22 x i8] c"\0AYe cannot drop that!\0A"}
@str_$_1168 = global { i64, [22 x i8] } {i64 22, [22 x i8] c"\0AYe droppeth the KEY.\0A"}
@str_$_1121 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"key"}
@str_$_1110 = global { i64, [22 x i8] } {i64 22, [22 x i8] c"\0AYe droppeth the MAP.\0A"}
@str_$_1063 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"map"}
@str_$_1050 = global { i64, [25 x i8] } {i64 25, [25 x i8] c"\0AYe cannot pick that up!\0A"}
@str_$_1045 = global { i64, [24 x i8] } {i64 24, [24 x i8] c"\0AYe picketh up the KEY.\0A"}
@str_$_991 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"key"}
@str_$_980 = global { i64, [26 x i8] } {i64 26, [26 x i8] c"\0AThe door will not budge.\0A"}
@str_$_949 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"door"}
@str_$_938 = global { i64, [26 x i8] } {i64 26, [26 x i8] c"\0AYou cannot get ye flask.\0A"}
@str_$_911 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"flask"}
@str_$_900 = global { i64, [24 x i8] } {i64 24, [24 x i8] c"\0AYe picketh up the MAP.\0A"}
@str_$_846 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"map"}
@str_$_831 = global { i64, [2 x i8] } {i64 2, [2 x i8] c"!\0A"}
@str_$_824 = global { i64, [19 x i8] } {i64 19, [19 x i8] c"\0AYe do not see any "}
@str_$_810 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_803 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"room"}
@str_$_796 = global { i64, [21 x i8] } {i64 21, [21 x i8] c"\0A'Tis an ornate key.\0A"}
@str_$_752 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"key"}
@str_$_741 = global { i64, [23 x i8] } {i64 23, [23 x i8] c"\0AThe door is unlocked.\0A"}
@str_$_679 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"door"}
@str_$_664 = global { i64, [21 x i8] } {i64 21, [21 x i8] c"\0AThe door is locked.\0A"}
@str_$_606 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"door"}
@str_$_591 = global { i64, [25 x i8] } {i64 25, [25 x i8] c"\0A'Tis an ordinary flask.\0A"}
@str_$_564 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"flask"}
@str_$_512 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"map"}
@str_$_493 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"room"}
@str_$_480 = global { i64, [11 x i8] } {i64 11, [11 x i8] c"\0AYe holdeth"}
@str_$_473 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"self"}
@str_$_464 = global { i64, [20 x i8] } {i64 20, [20 x i8] c" nothing of interest"}
@str_$_452 = global { i64, [6 x i8] } {i64 6, [6 x i8] c" a MAP"}
@str_$_434 = global { i64, [8 x i8] } {i64 8, [8 x i8] c" a FLASK"}
@str_$_429 = global { i64, [4 x i8] } {i64 4, [4 x i8] c" and"}
@str_$_404 = global { i64, [6 x i8] } {i64 6, [6 x i8] c" a KEY"}
@str_$_399 = global { i64, [4 x i8] } {i64 4, [4 x i8] c" and"}
@str_$_374 = global { i64, [7 x i8] } {i64 7, [7 x i8] c" a DOOR"}
@str_$_369 = global { i64, [4 x i8] } {i64 4, [4 x i8] c" and"}
@str_$_337 = global { i64, [2 x i8] } {i64 2, [2 x i8] c".\0A"}
@str_$_332 = global { i64, [7 x i8] } {i64 7, [7 x i8] c"\0AYe see"}
@str_$_314 = global { i64, [14 x i8] } {i64 14, [14 x i8] c" in the ROOM.\0A"}
@str_$_309 = global { i64, [17 x i8] } {i64 17, [17 x i8] c"Obvious exits are"}
@str_$_304 = global { i64, [6 x i8] } {i64 6, [6 x i8] c" NORTH"}
@str_$_282 = global { i64, [5 x i8] } {i64 5, [5 x i8] c" EAST"}
@str_$_277 = global { i64, [4 x i8] } {i64 4, [4 x i8] c" and"}
@str_$_248 = global { i64, [6 x i8] } {i64 6, [6 x i8] c" SOUTH"}
@str_$_243 = global { i64, [4 x i8] } {i64 4, [4 x i8] c" and"}
@str_$_214 = global { i64, [5 x i8] } {i64 5, [5 x i8] c" WEST"}
@str_$_209 = global { i64, [4 x i8] } {i64 4, [4 x i8] c" and"}
@str_$_172 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_86 = global { i64, [5 x i8] } {i64 5, [5 x i8] c"drop "}
@str_$_77 = global { i64, [4 x i8] } {i64 4, [4 x i8] c"use "}
@str_$_67 = global { i64, [8 x i8] } {i64 8, [8 x i8] c"pick up "}
@str_$_57 = global { i64, [3 x i8] } {i64 3, [3 x i8] c"go "}
@str_$_47 = global { i64, [8 x i8] } {i64 8, [8 x i8] c"look at "}
@str_$_31 = global { i64, [1 x i8] } {i64 1, [1 x i8] c"\0A"}
@str_$_18 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}
@str_$_15 = global { i64, [0 x i8] } {i64 0, [0 x i8] c""}

define i8* @get_input$12 (%$locals_tigermain* %$sl) {
 %locals_$_0 = alloca %$locals_get_input$12
 %arg_$_13 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_13
 %temp_$_14 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 4
 store i64 1, i64* %temp_$_14
 %temp_$_16 = bitcast { i64, [0 x i8] }* @str_$_15 to i8*
 %temp_$_17 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 3
 store i8* %temp_$_16, i8** %temp_$_17
 %temp_$_19 = bitcast { i64, [0 x i8] }* @str_$_18 to i8*
 %temp_$_20 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 2
 store i8* %temp_$_19, i8** %temp_$_20
 %lnk_$_21 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 0
 %load_$_22 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_21
 %ret_$_24 = call i8* @getChar (i8* null)
 %temp_$_25 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 1
 store i8* %ret_$_24, i8** %temp_$_25
 br label %test_$_26
test_$_26:
 %var_ptr_$_29 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 1
 %res_$_30 = load i8*, i8** %var_ptr_$_29
 %temp_$_32 = bitcast { i64, [1 x i8] }* @str_$_31 to i8*
 %temp_$_33 = call i64 @stringNotEq (i8* %res_$_30, i8* %temp_$_32)
 %cnd_$_34 = icmp ne i64 %temp_$_33, 0
 br i1 %cnd_$_34, label %body_$_27, label %mrg_$_28
body_$_27:
 %var_ptr_$_94 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 4
 %res_$_95 = load i64, i64* %var_ptr_$_94
 %temp_$_96 = icmp eq i64 %res_$_95, 1
 %temp_$_97 = zext i1 %temp_$_96 to i64
 %cnd_$_98 = icmp ne i64 %temp_$_97, 0
 br i1 %cnd_$_98, label %thn_$_91, label %els_$_92
thn_$_91:
 %lnk_$_99 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 0
 %load_$_100 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_99
 %var_ptr_$_102 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 3
 %res_$_103 = load i8*, i8** %var_ptr_$_102
 %var_ptr_$_104 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 1
 %res_$_105 = load i8*, i8** %var_ptr_$_104
 %ret_$_106 = call i8* @concat (i8* null, i8* %res_$_103, i8* %res_$_105)
 %var_ptr_$_107 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 3
 store i8* %ret_$_106, i8** %var_ptr_$_107
 br label %mrg_$_93
els_$_92:
 %lnk_$_108 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 0
 %load_$_109 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_108
 %var_ptr_$_111 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 2
 %res_$_112 = load i8*, i8** %var_ptr_$_111
 %var_ptr_$_113 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 1
 %res_$_114 = load i8*, i8** %var_ptr_$_113
 %ret_$_115 = call i8* @concat (i8* null, i8* %res_$_112, i8* %res_$_114)
 %var_ptr_$_116 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 2
 store i8* %ret_$_115, i8** %var_ptr_$_116
 br label %mrg_$_93
mrg_$_93:
 %var_ptr_$_37 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 4
 %res_$_38 = load i64, i64* %var_ptr_$_37
 %temp_$_39 = icmp eq i64 %res_$_38, 1
 %temp_$_40 = zext i1 %temp_$_39 to i64
 %cnd_$_41 = icmp ne i64 %temp_$_40, 0
 br i1 %cnd_$_41, label %thn_$_35, label %mrg_$_36
thn_$_35:
 %var_ptr_$_45 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 3
 %res_$_46 = load i8*, i8** %var_ptr_$_45
 %temp_$_48 = bitcast { i64, [8 x i8] }* @str_$_47 to i8*
 %temp_$_49 = call i64 @stringEqual (i8* %res_$_46, i8* %temp_$_48)
 %cnd_$_50 = icmp ne i64 %temp_$_49, 0
 br i1 %cnd_$_50, label %thn_$_42, label %els_$_43
thn_$_42:
 %var_ptr_$_51 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 4
 store i64 0, i64* %var_ptr_$_51
 br label %mrg_$_44
els_$_43:
 %var_ptr_$_55 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 3
 %res_$_56 = load i8*, i8** %var_ptr_$_55
 %temp_$_58 = bitcast { i64, [3 x i8] }* @str_$_57 to i8*
 %temp_$_59 = call i64 @stringEqual (i8* %res_$_56, i8* %temp_$_58)
 %cnd_$_60 = icmp ne i64 %temp_$_59, 0
 br i1 %cnd_$_60, label %thn_$_52, label %els_$_53
thn_$_52:
 %var_ptr_$_61 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 4
 store i64 0, i64* %var_ptr_$_61
 br label %mrg_$_54
els_$_53:
 %var_ptr_$_65 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 3
 %res_$_66 = load i8*, i8** %var_ptr_$_65
 %temp_$_68 = bitcast { i64, [8 x i8] }* @str_$_67 to i8*
 %temp_$_69 = call i64 @stringEqual (i8* %res_$_66, i8* %temp_$_68)
 %cnd_$_70 = icmp ne i64 %temp_$_69, 0
 br i1 %cnd_$_70, label %thn_$_62, label %els_$_63
thn_$_62:
 %var_ptr_$_71 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 4
 store i64 0, i64* %var_ptr_$_71
 br label %mrg_$_64
els_$_63:
 %var_ptr_$_75 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 3
 %res_$_76 = load i8*, i8** %var_ptr_$_75
 %temp_$_78 = bitcast { i64, [4 x i8] }* @str_$_77 to i8*
 %temp_$_79 = call i64 @stringEqual (i8* %res_$_76, i8* %temp_$_78)
 %cnd_$_80 = icmp ne i64 %temp_$_79, 0
 br i1 %cnd_$_80, label %thn_$_72, label %els_$_73
thn_$_72:
 %var_ptr_$_81 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 4
 store i64 0, i64* %var_ptr_$_81
 br label %mrg_$_74
els_$_73:
 %var_ptr_$_84 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 3
 %res_$_85 = load i8*, i8** %var_ptr_$_84
 %temp_$_87 = bitcast { i64, [5 x i8] }* @str_$_86 to i8*
 %temp_$_88 = call i64 @stringEqual (i8* %res_$_85, i8* %temp_$_87)
 %cnd_$_89 = icmp ne i64 %temp_$_88, 0
 br i1 %cnd_$_89, label %thn_$_82, label %mrg_$_83
thn_$_82:
 %var_ptr_$_90 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 4
 store i64 0, i64* %var_ptr_$_90
 br label %mrg_$_83
mrg_$_83:
 br label %mrg_$_74
mrg_$_74:
 br label %mrg_$_64
mrg_$_64:
 br label %mrg_$_54
mrg_$_54:
 br label %mrg_$_44
mrg_$_44:
 br label %mrg_$_36
mrg_$_36:
 %lnk_$_117 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 0
 %load_$_118 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_117
 %ret_$_120 = call i8* @getChar (i8* null)
 %var_ptr_$_121 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 1
 store i8* %ret_$_120, i8** %var_ptr_$_121
 br label %test_$_26
mrg_$_28:
 %size_ptr_$_122 = getelementptr %input$0, %input$0* null, i32 1
 %size_$_123 = ptrtoint %input$0* %size_ptr_$_122 to i64
 %record_ptr_$_124 = call i8* @allocRecord (i64 %size_$_123)
 %rec_$_125 = bitcast i8* %record_ptr_$_124 to %input$0*
 %var_ptr_$_126 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 3
 %res_$_127 = load i8*, i8** %var_ptr_$_126
 %field_ptr_$_128 = getelementptr %input$0, %input$0* %rec_$_125, i32 0, i32 0
 store i8* %res_$_127, i8** %field_ptr_$_128
 %var_ptr_$_129 = getelementptr %$locals_get_input$12, %$locals_get_input$12* %locals_$_0, i32 0, i32 2
 %res_$_130 = load i8*, i8** %var_ptr_$_129
 %field_ptr_$_131 = getelementptr %input$0, %input$0* %rec_$_125, i32 0, i32 1
 store i8* %res_$_130, i8** %field_ptr_$_131
 ret i8* %record_ptr_$_124
}

define void @print_map$13 (%$locals_tigermain* %$sl) {
 %locals_$_1 = alloca %$locals_print_map$13
 %arg_$_132 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_132
 %temp_$_133 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 1
 store i64 0, i64* %temp_$_133
 br label %test_$_134
test_$_134:
 %var_ptr_$_137 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 1
 %res_$_138 = load i64, i64* %var_ptr_$_137
 %lnk_$_139 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 0
 %load_$_140 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_139
 %var_ptr_$_141 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_140, i32 0, i32 13
 %res_$_142 = load i64, i64* %var_ptr_$_141
 %temp_$_143 = sub i64 %res_$_142, 2
 %temp_$_144 = icmp sle i64 %res_$_138, %temp_$_143
 %temp_$_145 = zext i1 %temp_$_144 to i64
 %cnd_$_146 = icmp ne i64 %temp_$_145, 0
 br i1 %cnd_$_146, label %body_$_135, label %mrg_$_136
body_$_135:
 %lnk_$_147 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 0
 %load_$_148 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_147
 %lnk_$_150 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 0
 %load_$_151 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_150
 %lnk_$_153 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 0
 %load_$_154 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_153
 %lnk_$_156 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 0
 %load_$_157 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_156
 %var_ptr_$_158 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_157, i32 0, i32 8
 %res_$_159 = load i8*, i8** %var_ptr_$_158
 %var_ptr_$_160 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 1
 %res_$_161 = load i64, i64* %var_ptr_$_160
 %lnk_$_162 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 0
 %load_$_163 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_162
 %var_ptr_$_164 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_163, i32 0, i32 14
 %res_$_165 = load i64, i64* %var_ptr_$_164
 %temp_$_166 = mul i64 %res_$_161, %res_$_165
 %lnk_$_167 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 0
 %load_$_168 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_167
 %var_ptr_$_169 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_168, i32 0, i32 14
 %res_$_170 = load i64, i64* %var_ptr_$_169
 %ret_$_171 = call i8* @substring (i8* null, i8* %res_$_159, i64 %temp_$_166, i64 %res_$_170)
 %temp_$_173 = bitcast { i64, [1 x i8] }* @str_$_172 to i8*
 %ret_$_174 = call i8* @concat (i8* null, i8* %ret_$_171, i8* %temp_$_173)
 call void @print (i8* null, i8* %ret_$_174)
 %var_ptr_$_175 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 1
 %res_$_176 = load i64, i64* %var_ptr_$_175
 %temp_$_177 = add i64 %res_$_176, 1
 %var_ptr_$_178 = getelementptr %$locals_print_map$13, %$locals_print_map$13* %locals_$_1, i32 0, i32 1
 store i64 %temp_$_177, i64* %var_ptr_$_178
 br label %test_$_134
mrg_$_136:
 ret void
}

define void @print_room$14 (%$locals_tigermain* %$sl, i8* %r$29) {
 %locals_$_2 = alloca %$locals_print_room$14
 %arg_$_179 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 2
 store i8* %r$29, i8** %arg_$_179
 %arg_$_180 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_180
 %temp_$_181 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 1
 store i64 0, i64* %temp_$_181
 %lnk_$_329 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_330 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_329
 %temp_$_333 = bitcast { i64, [7 x i8] }* @str_$_332 to i8*
 call void @print (i8* null, i8* %temp_$_333)
 %lnk_$_316 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_317 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_316
 %lnk_$_318 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_319 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_318
 %var_ptr_$_320 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_319, i32 0, i32 10
 %load_$_321 = load i8*, i8** %var_ptr_$_320
 %record_ptr_$_322 = bitcast i8* %load_$_321 to %room$3*
 %int_of_ptr_$_325 = ptrtoint i8* %load_$_321 to i64
 %cnd_$_326 = icmp eq i64 %int_of_ptr_$_325, 0
 br i1 %cnd_$_326, label %thn_$_323, label %mrg_$_324
thn_$_323:
 call i64 @recFieldError ()
 br label %mrg_$_324
mrg_$_324:
 %field_ptr_$_327 = getelementptr %room$3, %room$3* %record_ptr_$_322, i32 0, i32 4
 %res_$_328 = load i8*, i8** %field_ptr_$_327
 call void @print_items$15 (%$locals_tigermain* %load_$_317, i8* %res_$_328)
 %lnk_$_311 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_312 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_311
 %temp_$_315 = bitcast { i64, [14 x i8] }* @str_$_314 to i8*
 call void @print (i8* null, i8* %temp_$_315)
 %lnk_$_306 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_307 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_306
 %temp_$_310 = bitcast { i64, [17 x i8] }* @str_$_309 to i8*
 call void @print (i8* null, i8* %temp_$_310)
 %var_ptr_$_286 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 2
 %load_$_287 = load i8*, i8** %var_ptr_$_286
 %record_ptr_$_288 = bitcast i8* %load_$_287 to %room$3*
 %int_of_ptr_$_291 = ptrtoint i8* %load_$_287 to i64
 %cnd_$_292 = icmp eq i64 %int_of_ptr_$_291, 0
 br i1 %cnd_$_292, label %thn_$_289, label %mrg_$_290
thn_$_289:
 call i64 @recFieldError ()
 br label %mrg_$_290
mrg_$_290:
 %field_ptr_$_293 = getelementptr %room$3, %room$3* %record_ptr_$_288, i32 0, i32 0
 %res_$_294 = load i8*, i8** %field_ptr_$_293
 %left_int_$_295 = ptrtoint i8* %res_$_294 to i64
 %right_int_$_296 = ptrtoint i8* null to i64
 %cnd_$_297 = icmp ne i64 %left_int_$_295, %right_int_$_296
 %zext_$_298 = zext i1 %cnd_$_297 to i64
 %cnd_$_299 = icmp ne i64 %zext_$_298, 0
 br i1 %cnd_$_299, label %thn_$_284, label %mrg_$_285
thn_$_284:
 %var_ptr_$_300 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 1
 store i64 1, i64* %var_ptr_$_300
 %lnk_$_301 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_302 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_301
 %temp_$_305 = bitcast { i64, [6 x i8] }* @str_$_304 to i8*
 call void @print (i8* null, i8* %temp_$_305)
 br label %mrg_$_285
mrg_$_285:
 %var_ptr_$_252 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 2
 %load_$_253 = load i8*, i8** %var_ptr_$_252
 %record_ptr_$_254 = bitcast i8* %load_$_253 to %room$3*
 %int_of_ptr_$_257 = ptrtoint i8* %load_$_253 to i64
 %cnd_$_258 = icmp eq i64 %int_of_ptr_$_257, 0
 br i1 %cnd_$_258, label %thn_$_255, label %mrg_$_256
thn_$_255:
 call i64 @recFieldError ()
 br label %mrg_$_256
mrg_$_256:
 %field_ptr_$_259 = getelementptr %room$3, %room$3* %record_ptr_$_254, i32 0, i32 1
 %res_$_260 = load i8*, i8** %field_ptr_$_259
 %left_int_$_261 = ptrtoint i8* %res_$_260 to i64
 %right_int_$_262 = ptrtoint i8* null to i64
 %cnd_$_263 = icmp ne i64 %left_int_$_261, %right_int_$_262
 %zext_$_264 = zext i1 %cnd_$_263 to i64
 %cnd_$_265 = icmp ne i64 %zext_$_264, 0
 br i1 %cnd_$_265, label %thn_$_250, label %mrg_$_251
thn_$_250:
 %var_ptr_$_269 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 1
 %res_$_270 = load i64, i64* %var_ptr_$_269
 %temp_$_271 = icmp eq i64 %res_$_270, 1
 %temp_$_272 = zext i1 %temp_$_271 to i64
 %cnd_$_273 = icmp ne i64 %temp_$_272, 0
 br i1 %cnd_$_273, label %thn_$_267, label %mrg_$_268
thn_$_267:
 %lnk_$_274 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_275 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_274
 %temp_$_278 = bitcast { i64, [4 x i8] }* @str_$_277 to i8*
 call void @print (i8* null, i8* %temp_$_278)
 br label %mrg_$_268
mrg_$_268:
 %var_ptr_$_266 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 1
 store i64 1, i64* %var_ptr_$_266
 %lnk_$_279 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_280 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_279
 %temp_$_283 = bitcast { i64, [5 x i8] }* @str_$_282 to i8*
 call void @print (i8* null, i8* %temp_$_283)
 br label %mrg_$_251
mrg_$_251:
 %var_ptr_$_218 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 2
 %load_$_219 = load i8*, i8** %var_ptr_$_218
 %record_ptr_$_220 = bitcast i8* %load_$_219 to %room$3*
 %int_of_ptr_$_223 = ptrtoint i8* %load_$_219 to i64
 %cnd_$_224 = icmp eq i64 %int_of_ptr_$_223, 0
 br i1 %cnd_$_224, label %thn_$_221, label %mrg_$_222
thn_$_221:
 call i64 @recFieldError ()
 br label %mrg_$_222
mrg_$_222:
 %field_ptr_$_225 = getelementptr %room$3, %room$3* %record_ptr_$_220, i32 0, i32 2
 %res_$_226 = load i8*, i8** %field_ptr_$_225
 %left_int_$_227 = ptrtoint i8* %res_$_226 to i64
 %right_int_$_228 = ptrtoint i8* null to i64
 %cnd_$_229 = icmp ne i64 %left_int_$_227, %right_int_$_228
 %zext_$_230 = zext i1 %cnd_$_229 to i64
 %cnd_$_231 = icmp ne i64 %zext_$_230, 0
 br i1 %cnd_$_231, label %thn_$_216, label %mrg_$_217
thn_$_216:
 %var_ptr_$_235 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 1
 %res_$_236 = load i64, i64* %var_ptr_$_235
 %temp_$_237 = icmp eq i64 %res_$_236, 1
 %temp_$_238 = zext i1 %temp_$_237 to i64
 %cnd_$_239 = icmp ne i64 %temp_$_238, 0
 br i1 %cnd_$_239, label %thn_$_233, label %mrg_$_234
thn_$_233:
 %lnk_$_240 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_241 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_240
 %temp_$_244 = bitcast { i64, [4 x i8] }* @str_$_243 to i8*
 call void @print (i8* null, i8* %temp_$_244)
 br label %mrg_$_234
mrg_$_234:
 %var_ptr_$_232 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 1
 store i64 1, i64* %var_ptr_$_232
 %lnk_$_245 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_246 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_245
 %temp_$_249 = bitcast { i64, [6 x i8] }* @str_$_248 to i8*
 call void @print (i8* null, i8* %temp_$_249)
 br label %mrg_$_217
mrg_$_217:
 %var_ptr_$_184 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 2
 %load_$_185 = load i8*, i8** %var_ptr_$_184
 %record_ptr_$_186 = bitcast i8* %load_$_185 to %room$3*
 %int_of_ptr_$_189 = ptrtoint i8* %load_$_185 to i64
 %cnd_$_190 = icmp eq i64 %int_of_ptr_$_189, 0
 br i1 %cnd_$_190, label %thn_$_187, label %mrg_$_188
thn_$_187:
 call i64 @recFieldError ()
 br label %mrg_$_188
mrg_$_188:
 %field_ptr_$_191 = getelementptr %room$3, %room$3* %record_ptr_$_186, i32 0, i32 3
 %res_$_192 = load i8*, i8** %field_ptr_$_191
 %left_int_$_193 = ptrtoint i8* %res_$_192 to i64
 %right_int_$_194 = ptrtoint i8* null to i64
 %cnd_$_195 = icmp ne i64 %left_int_$_193, %right_int_$_194
 %zext_$_196 = zext i1 %cnd_$_195 to i64
 %cnd_$_197 = icmp ne i64 %zext_$_196, 0
 br i1 %cnd_$_197, label %thn_$_182, label %mrg_$_183
thn_$_182:
 %var_ptr_$_201 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 1
 %res_$_202 = load i64, i64* %var_ptr_$_201
 %temp_$_203 = icmp eq i64 %res_$_202, 1
 %temp_$_204 = zext i1 %temp_$_203 to i64
 %cnd_$_205 = icmp ne i64 %temp_$_204, 0
 br i1 %cnd_$_205, label %thn_$_199, label %mrg_$_200
thn_$_199:
 %lnk_$_206 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_207 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_206
 %temp_$_210 = bitcast { i64, [4 x i8] }* @str_$_209 to i8*
 call void @print (i8* null, i8* %temp_$_210)
 br label %mrg_$_200
mrg_$_200:
 %var_ptr_$_198 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 1
 store i64 1, i64* %var_ptr_$_198
 %lnk_$_211 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_212 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_211
 %temp_$_215 = bitcast { i64, [5 x i8] }* @str_$_214 to i8*
 call void @print (i8* null, i8* %temp_$_215)
 br label %mrg_$_183
mrg_$_183:
 %lnk_$_334 = getelementptr %$locals_print_room$14, %$locals_print_room$14* %locals_$_2, i32 0, i32 0
 %load_$_335 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_334
 %temp_$_338 = bitcast { i64, [2 x i8] }* @str_$_337 to i8*
 call void @print (i8* null, i8* %temp_$_338)
 ret void
}

define void @print_items$15 (%$locals_tigermain* %$sl, i8* %items$31) {
 %locals_$_3 = alloca %$locals_print_items$15
 %arg_$_339 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 2
 store i8* %items$31, i8** %arg_$_339
 %arg_$_340 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_340
 %temp_$_341 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 1
 store i64 0, i64* %temp_$_341
 %var_ptr_$_438 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 2
 %load_$_439 = load i8*, i8** %var_ptr_$_438
 %record_ptr_$_440 = bitcast i8* %load_$_439 to %items$2*
 %int_of_ptr_$_443 = ptrtoint i8* %load_$_439 to i64
 %cnd_$_444 = icmp eq i64 %int_of_ptr_$_443, 0
 br i1 %cnd_$_444, label %thn_$_441, label %mrg_$_442
thn_$_441:
 call i64 @recFieldError ()
 br label %mrg_$_442
mrg_$_442:
 %field_ptr_$_445 = getelementptr %items$2, %items$2* %record_ptr_$_440, i32 0, i32 0
 %res_$_446 = load i64, i64* %field_ptr_$_445
 %cnd_$_447 = icmp ne i64 %res_$_446, 0
 br i1 %cnd_$_447, label %thn_$_436, label %mrg_$_437
thn_$_436:
 %var_ptr_$_448 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 1
 store i64 1, i64* %var_ptr_$_448
 %lnk_$_449 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 0
 %load_$_450 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_449
 %temp_$_453 = bitcast { i64, [6 x i8] }* @str_$_452 to i8*
 call void @print (i8* null, i8* %temp_$_453)
 br label %mrg_$_437
mrg_$_437:
 %var_ptr_$_408 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 2
 %load_$_409 = load i8*, i8** %var_ptr_$_408
 %record_ptr_$_410 = bitcast i8* %load_$_409 to %items$2*
 %int_of_ptr_$_413 = ptrtoint i8* %load_$_409 to i64
 %cnd_$_414 = icmp eq i64 %int_of_ptr_$_413, 0
 br i1 %cnd_$_414, label %thn_$_411, label %mrg_$_412
thn_$_411:
 call i64 @recFieldError ()
 br label %mrg_$_412
mrg_$_412:
 %field_ptr_$_415 = getelementptr %items$2, %items$2* %record_ptr_$_410, i32 0, i32 1
 %res_$_416 = load i64, i64* %field_ptr_$_415
 %cnd_$_417 = icmp ne i64 %res_$_416, 0
 br i1 %cnd_$_417, label %thn_$_406, label %mrg_$_407
thn_$_406:
 %var_ptr_$_421 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 1
 %res_$_422 = load i64, i64* %var_ptr_$_421
 %temp_$_423 = icmp eq i64 %res_$_422, 1
 %temp_$_424 = zext i1 %temp_$_423 to i64
 %cnd_$_425 = icmp ne i64 %temp_$_424, 0
 br i1 %cnd_$_425, label %thn_$_419, label %mrg_$_420
thn_$_419:
 %lnk_$_426 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 0
 %load_$_427 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_426
 %temp_$_430 = bitcast { i64, [4 x i8] }* @str_$_429 to i8*
 call void @print (i8* null, i8* %temp_$_430)
 br label %mrg_$_420
mrg_$_420:
 %var_ptr_$_418 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 1
 store i64 1, i64* %var_ptr_$_418
 %lnk_$_431 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 0
 %load_$_432 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_431
 %temp_$_435 = bitcast { i64, [8 x i8] }* @str_$_434 to i8*
 call void @print (i8* null, i8* %temp_$_435)
 br label %mrg_$_407
mrg_$_407:
 %var_ptr_$_378 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 2
 %load_$_379 = load i8*, i8** %var_ptr_$_378
 %record_ptr_$_380 = bitcast i8* %load_$_379 to %items$2*
 %int_of_ptr_$_383 = ptrtoint i8* %load_$_379 to i64
 %cnd_$_384 = icmp eq i64 %int_of_ptr_$_383, 0
 br i1 %cnd_$_384, label %thn_$_381, label %mrg_$_382
thn_$_381:
 call i64 @recFieldError ()
 br label %mrg_$_382
mrg_$_382:
 %field_ptr_$_385 = getelementptr %items$2, %items$2* %record_ptr_$_380, i32 0, i32 2
 %res_$_386 = load i64, i64* %field_ptr_$_385
 %cnd_$_387 = icmp ne i64 %res_$_386, 0
 br i1 %cnd_$_387, label %thn_$_376, label %mrg_$_377
thn_$_376:
 %var_ptr_$_391 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 1
 %res_$_392 = load i64, i64* %var_ptr_$_391
 %temp_$_393 = icmp eq i64 %res_$_392, 1
 %temp_$_394 = zext i1 %temp_$_393 to i64
 %cnd_$_395 = icmp ne i64 %temp_$_394, 0
 br i1 %cnd_$_395, label %thn_$_389, label %mrg_$_390
thn_$_389:
 %lnk_$_396 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 0
 %load_$_397 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_396
 %temp_$_400 = bitcast { i64, [4 x i8] }* @str_$_399 to i8*
 call void @print (i8* null, i8* %temp_$_400)
 br label %mrg_$_390
mrg_$_390:
 %var_ptr_$_388 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 1
 store i64 1, i64* %var_ptr_$_388
 %lnk_$_401 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 0
 %load_$_402 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_401
 %temp_$_405 = bitcast { i64, [6 x i8] }* @str_$_404 to i8*
 call void @print (i8* null, i8* %temp_$_405)
 br label %mrg_$_377
mrg_$_377:
 %var_ptr_$_344 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 2
 %load_$_345 = load i8*, i8** %var_ptr_$_344
 %record_ptr_$_346 = bitcast i8* %load_$_345 to %items$2*
 %int_of_ptr_$_349 = ptrtoint i8* %load_$_345 to i64
 %cnd_$_350 = icmp eq i64 %int_of_ptr_$_349, 0
 br i1 %cnd_$_350, label %thn_$_347, label %mrg_$_348
thn_$_347:
 call i64 @recFieldError ()
 br label %mrg_$_348
mrg_$_348:
 %field_ptr_$_351 = getelementptr %items$2, %items$2* %record_ptr_$_346, i32 0, i32 3
 %res_$_352 = load i8*, i8** %field_ptr_$_351
 %left_int_$_353 = ptrtoint i8* %res_$_352 to i64
 %right_int_$_354 = ptrtoint i8* null to i64
 %cnd_$_355 = icmp ne i64 %left_int_$_353, %right_int_$_354
 %zext_$_356 = zext i1 %cnd_$_355 to i64
 %cnd_$_357 = icmp ne i64 %zext_$_356, 0
 br i1 %cnd_$_357, label %thn_$_342, label %mrg_$_343
thn_$_342:
 %var_ptr_$_361 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 1
 %res_$_362 = load i64, i64* %var_ptr_$_361
 %temp_$_363 = icmp eq i64 %res_$_362, 1
 %temp_$_364 = zext i1 %temp_$_363 to i64
 %cnd_$_365 = icmp ne i64 %temp_$_364, 0
 br i1 %cnd_$_365, label %thn_$_359, label %mrg_$_360
thn_$_359:
 %lnk_$_366 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 0
 %load_$_367 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_366
 %temp_$_370 = bitcast { i64, [4 x i8] }* @str_$_369 to i8*
 call void @print (i8* null, i8* %temp_$_370)
 br label %mrg_$_360
mrg_$_360:
 %var_ptr_$_358 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 1
 store i64 1, i64* %var_ptr_$_358
 %lnk_$_371 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 0
 %load_$_372 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_371
 %temp_$_375 = bitcast { i64, [7 x i8] }* @str_$_374 to i8*
 call void @print (i8* null, i8* %temp_$_375)
 br label %mrg_$_343
mrg_$_343:
 %var_ptr_$_456 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 1
 %res_$_457 = load i64, i64* %var_ptr_$_456
 %temp_$_458 = icmp eq i64 %res_$_457, 0
 %temp_$_459 = zext i1 %temp_$_458 to i64
 %cnd_$_460 = icmp ne i64 %temp_$_459, 0
 br i1 %cnd_$_460, label %thn_$_454, label %mrg_$_455
thn_$_454:
 %lnk_$_461 = getelementptr %$locals_print_items$15, %$locals_print_items$15* %locals_$_3, i32 0, i32 0
 %load_$_462 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_461
 %temp_$_465 = bitcast { i64, [20 x i8] }* @str_$_464 to i8*
 call void @print (i8* null, i8* %temp_$_465)
 br label %mrg_$_455
mrg_$_455:
 ret void
}

define void @look$16 (%$locals_tigermain* %$sl, i8* %arg$33) {
 %temp_$_756 = alloca i64
 %temp_$_746 = alloca i64
 %temp_$_673 = alloca i64
 %temp_$_669 = alloca i64
 %temp_$_600 = alloca i64
 %temp_$_596 = alloca i64
 %temp_$_558 = alloca i64
 %temp_$_516 = alloca i64
 %temp_$_506 = alloca i64
 %locals_$_4 = alloca %$locals_look$16
 %arg_$_466 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 1
 store i8* %arg$33, i8** %arg_$_466
 %arg_$_467 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_467
 %var_ptr_$_471 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 1
 %res_$_472 = load i8*, i8** %var_ptr_$_471
 %temp_$_474 = bitcast { i64, [4 x i8] }* @str_$_473 to i8*
 %temp_$_475 = call i64 @stringEqual (i8* %res_$_472, i8* %temp_$_474)
 %cnd_$_476 = icmp ne i64 %temp_$_475, 0
 br i1 %cnd_$_476, label %thn_$_468, label %els_$_469
thn_$_468:
 %lnk_$_477 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_478 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_477
 %temp_$_481 = bitcast { i64, [11 x i8] }* @str_$_480 to i8*
 call void @print (i8* null, i8* %temp_$_481)
 %lnk_$_482 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_483 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_482
 %lnk_$_484 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_485 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_484
 %var_ptr_$_486 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_485, i32 0, i32 11
 %res_$_487 = load i8*, i8** %var_ptr_$_486
 call void @print_items$15 (%$locals_tigermain* %load_$_483, i8* %res_$_487)
 br label %mrg_$_470
els_$_469:
 %var_ptr_$_491 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 1
 %res_$_492 = load i8*, i8** %var_ptr_$_491
 %temp_$_494 = bitcast { i64, [4 x i8] }* @str_$_493 to i8*
 %temp_$_495 = call i64 @stringEqual (i8* %res_$_492, i8* %temp_$_494)
 %cnd_$_496 = icmp ne i64 %temp_$_495, 0
 br i1 %cnd_$_496, label %thn_$_488, label %els_$_489
thn_$_488:
 %lnk_$_497 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_498 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_497
 %lnk_$_499 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_500 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_499
 %var_ptr_$_501 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_500, i32 0, i32 10
 %res_$_502 = load i8*, i8** %var_ptr_$_501
 call void @print_room$14 (%$locals_tigermain* %load_$_498, i8* %res_$_502)
 br label %mrg_$_490
els_$_489:
 %var_ptr_$_510 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 1
 %res_$_511 = load i8*, i8** %var_ptr_$_510
 %temp_$_513 = bitcast { i64, [3 x i8] }* @str_$_512 to i8*
 %temp_$_514 = call i64 @stringEqual (i8* %res_$_511, i8* %temp_$_513)
 %cnd_$_515 = icmp ne i64 %temp_$_514, 0
 br i1 %cnd_$_515, label %thn_$_507, label %els_$_508
thn_$_507:
 %lnk_$_520 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_521 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_520
 %var_ptr_$_522 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_521, i32 0, i32 11
 %load_$_523 = load i8*, i8** %var_ptr_$_522
 %record_ptr_$_524 = bitcast i8* %load_$_523 to %items$2*
 %int_of_ptr_$_527 = ptrtoint i8* %load_$_523 to i64
 %cnd_$_528 = icmp eq i64 %int_of_ptr_$_527, 0
 br i1 %cnd_$_528, label %thn_$_525, label %mrg_$_526
thn_$_525:
 call i64 @recFieldError ()
 br label %mrg_$_526
mrg_$_526:
 %field_ptr_$_529 = getelementptr %items$2, %items$2* %record_ptr_$_524, i32 0, i32 0
 %res_$_530 = load i64, i64* %field_ptr_$_529
 %cnd_$_531 = icmp ne i64 %res_$_530, 0
 br i1 %cnd_$_531, label %thn_$_517, label %els_$_518
thn_$_517:
 store i64 1, i64* %temp_$_516
 br label %mrg_$_519
els_$_518:
 %lnk_$_532 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_533 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_532
 %var_ptr_$_534 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_533, i32 0, i32 10
 %load_$_535 = load i8*, i8** %var_ptr_$_534
 %record_ptr_$_536 = bitcast i8* %load_$_535 to %room$3*
 %int_of_ptr_$_539 = ptrtoint i8* %load_$_535 to i64
 %cnd_$_540 = icmp eq i64 %int_of_ptr_$_539, 0
 br i1 %cnd_$_540, label %thn_$_537, label %mrg_$_538
thn_$_537:
 call i64 @recFieldError ()
 br label %mrg_$_538
mrg_$_538:
 %field_ptr_$_541 = getelementptr %room$3, %room$3* %record_ptr_$_536, i32 0, i32 4
 %load_$_542 = load i8*, i8** %field_ptr_$_541
 %record_ptr_$_543 = bitcast i8* %load_$_542 to %items$2*
 %int_of_ptr_$_546 = ptrtoint i8* %load_$_542 to i64
 %cnd_$_547 = icmp eq i64 %int_of_ptr_$_546, 0
 br i1 %cnd_$_547, label %thn_$_544, label %mrg_$_545
thn_$_544:
 call i64 @recFieldError ()
 br label %mrg_$_545
mrg_$_545:
 %field_ptr_$_548 = getelementptr %items$2, %items$2* %record_ptr_$_543, i32 0, i32 0
 %res_$_549 = load i64, i64* %field_ptr_$_548
 store i64 %res_$_549, i64* %temp_$_516
 br label %mrg_$_519
mrg_$_519:
 %res_$_550 = load i64, i64* %temp_$_516
 store i64 %res_$_550, i64* %temp_$_506
 br label %mrg_$_509
els_$_508:
 store i64 0, i64* %temp_$_506
 br label %mrg_$_509
mrg_$_509:
 %res_$_551 = load i64, i64* %temp_$_506
 %cnd_$_552 = icmp ne i64 %res_$_551, 0
 br i1 %cnd_$_552, label %thn_$_503, label %els_$_504
thn_$_503:
 %lnk_$_553 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_554 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_553
 call void @print_map$13 (%$locals_tigermain* %load_$_554)
 br label %mrg_$_505
els_$_504:
 %var_ptr_$_562 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 1
 %res_$_563 = load i8*, i8** %var_ptr_$_562
 %temp_$_565 = bitcast { i64, [5 x i8] }* @str_$_564 to i8*
 %temp_$_566 = call i64 @stringEqual (i8* %res_$_563, i8* %temp_$_565)
 %cnd_$_567 = icmp ne i64 %temp_$_566, 0
 br i1 %cnd_$_567, label %thn_$_559, label %els_$_560
thn_$_559:
 %lnk_$_568 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_569 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_568
 %var_ptr_$_570 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_569, i32 0, i32 10
 %load_$_571 = load i8*, i8** %var_ptr_$_570
 %record_ptr_$_572 = bitcast i8* %load_$_571 to %room$3*
 %int_of_ptr_$_575 = ptrtoint i8* %load_$_571 to i64
 %cnd_$_576 = icmp eq i64 %int_of_ptr_$_575, 0
 br i1 %cnd_$_576, label %thn_$_573, label %mrg_$_574
thn_$_573:
 call i64 @recFieldError ()
 br label %mrg_$_574
mrg_$_574:
 %field_ptr_$_577 = getelementptr %room$3, %room$3* %record_ptr_$_572, i32 0, i32 4
 %load_$_578 = load i8*, i8** %field_ptr_$_577
 %record_ptr_$_579 = bitcast i8* %load_$_578 to %items$2*
 %int_of_ptr_$_582 = ptrtoint i8* %load_$_578 to i64
 %cnd_$_583 = icmp eq i64 %int_of_ptr_$_582, 0
 br i1 %cnd_$_583, label %thn_$_580, label %mrg_$_581
thn_$_580:
 call i64 @recFieldError ()
 br label %mrg_$_581
mrg_$_581:
 %field_ptr_$_584 = getelementptr %items$2, %items$2* %record_ptr_$_579, i32 0, i32 1
 %res_$_585 = load i64, i64* %field_ptr_$_584
 store i64 %res_$_585, i64* %temp_$_558
 br label %mrg_$_561
els_$_560:
 store i64 0, i64* %temp_$_558
 br label %mrg_$_561
mrg_$_561:
 %res_$_586 = load i64, i64* %temp_$_558
 %cnd_$_587 = icmp ne i64 %res_$_586, 0
 br i1 %cnd_$_587, label %thn_$_555, label %els_$_556
thn_$_555:
 %lnk_$_588 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_589 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_588
 %temp_$_592 = bitcast { i64, [25 x i8] }* @str_$_591 to i8*
 call void @print (i8* null, i8* %temp_$_592)
 br label %mrg_$_557
els_$_556:
 %var_ptr_$_604 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 1
 %res_$_605 = load i8*, i8** %var_ptr_$_604
 %temp_$_607 = bitcast { i64, [4 x i8] }* @str_$_606 to i8*
 %temp_$_608 = call i64 @stringEqual (i8* %res_$_605, i8* %temp_$_607)
 %cnd_$_609 = icmp ne i64 %temp_$_608, 0
 br i1 %cnd_$_609, label %thn_$_601, label %els_$_602
thn_$_601:
 %lnk_$_610 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_611 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_610
 %var_ptr_$_612 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_611, i32 0, i32 10
 %load_$_613 = load i8*, i8** %var_ptr_$_612
 %record_ptr_$_614 = bitcast i8* %load_$_613 to %room$3*
 %int_of_ptr_$_617 = ptrtoint i8* %load_$_613 to i64
 %cnd_$_618 = icmp eq i64 %int_of_ptr_$_617, 0
 br i1 %cnd_$_618, label %thn_$_615, label %mrg_$_616
thn_$_615:
 call i64 @recFieldError ()
 br label %mrg_$_616
mrg_$_616:
 %field_ptr_$_619 = getelementptr %room$3, %room$3* %record_ptr_$_614, i32 0, i32 4
 %load_$_620 = load i8*, i8** %field_ptr_$_619
 %record_ptr_$_621 = bitcast i8* %load_$_620 to %items$2*
 %int_of_ptr_$_624 = ptrtoint i8* %load_$_620 to i64
 %cnd_$_625 = icmp eq i64 %int_of_ptr_$_624, 0
 br i1 %cnd_$_625, label %thn_$_622, label %mrg_$_623
thn_$_622:
 call i64 @recFieldError ()
 br label %mrg_$_623
mrg_$_623:
 %field_ptr_$_626 = getelementptr %items$2, %items$2* %record_ptr_$_621, i32 0, i32 3
 %res_$_627 = load i8*, i8** %field_ptr_$_626
 %left_int_$_628 = ptrtoint i8* %res_$_627 to i64
 %right_int_$_629 = ptrtoint i8* null to i64
 %cnd_$_630 = icmp ne i64 %left_int_$_628, %right_int_$_629
 %zext_$_631 = zext i1 %cnd_$_630 to i64
 store i64 %zext_$_631, i64* %temp_$_600
 br label %mrg_$_603
els_$_602:
 store i64 0, i64* %temp_$_600
 br label %mrg_$_603
mrg_$_603:
 %res_$_632 = load i64, i64* %temp_$_600
 %cnd_$_633 = icmp ne i64 %res_$_632, 0
 br i1 %cnd_$_633, label %thn_$_597, label %els_$_598
thn_$_597:
 %lnk_$_634 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_635 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_634
 %var_ptr_$_636 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_635, i32 0, i32 10
 %load_$_637 = load i8*, i8** %var_ptr_$_636
 %record_ptr_$_638 = bitcast i8* %load_$_637 to %room$3*
 %int_of_ptr_$_641 = ptrtoint i8* %load_$_637 to i64
 %cnd_$_642 = icmp eq i64 %int_of_ptr_$_641, 0
 br i1 %cnd_$_642, label %thn_$_639, label %mrg_$_640
thn_$_639:
 call i64 @recFieldError ()
 br label %mrg_$_640
mrg_$_640:
 %field_ptr_$_643 = getelementptr %room$3, %room$3* %record_ptr_$_638, i32 0, i32 4
 %load_$_644 = load i8*, i8** %field_ptr_$_643
 %record_ptr_$_645 = bitcast i8* %load_$_644 to %items$2*
 %int_of_ptr_$_648 = ptrtoint i8* %load_$_644 to i64
 %cnd_$_649 = icmp eq i64 %int_of_ptr_$_648, 0
 br i1 %cnd_$_649, label %thn_$_646, label %mrg_$_647
thn_$_646:
 call i64 @recFieldError ()
 br label %mrg_$_647
mrg_$_647:
 %field_ptr_$_650 = getelementptr %items$2, %items$2* %record_ptr_$_645, i32 0, i32 3
 %load_$_651 = load i8*, i8** %field_ptr_$_650
 %record_ptr_$_652 = bitcast i8* %load_$_651 to %exit$1*
 %int_of_ptr_$_655 = ptrtoint i8* %load_$_651 to i64
 %cnd_$_656 = icmp eq i64 %int_of_ptr_$_655, 0
 br i1 %cnd_$_656, label %thn_$_653, label %mrg_$_654
thn_$_653:
 call i64 @recFieldError ()
 br label %mrg_$_654
mrg_$_654:
 %field_ptr_$_657 = getelementptr %exit$1, %exit$1* %record_ptr_$_652, i32 0, i32 0
 %res_$_658 = load i64, i64* %field_ptr_$_657
 store i64 %res_$_658, i64* %temp_$_596
 br label %mrg_$_599
els_$_598:
 store i64 0, i64* %temp_$_596
 br label %mrg_$_599
mrg_$_599:
 %res_$_659 = load i64, i64* %temp_$_596
 %cnd_$_660 = icmp ne i64 %res_$_659, 0
 br i1 %cnd_$_660, label %thn_$_593, label %els_$_594
thn_$_593:
 %lnk_$_661 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_662 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_661
 %temp_$_665 = bitcast { i64, [21 x i8] }* @str_$_664 to i8*
 call void @print (i8* null, i8* %temp_$_665)
 br label %mrg_$_595
els_$_594:
 %var_ptr_$_677 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 1
 %res_$_678 = load i8*, i8** %var_ptr_$_677
 %temp_$_680 = bitcast { i64, [4 x i8] }* @str_$_679 to i8*
 %temp_$_681 = call i64 @stringEqual (i8* %res_$_678, i8* %temp_$_680)
 %cnd_$_682 = icmp ne i64 %temp_$_681, 0
 br i1 %cnd_$_682, label %thn_$_674, label %els_$_675
thn_$_674:
 %lnk_$_683 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_684 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_683
 %var_ptr_$_685 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_684, i32 0, i32 10
 %load_$_686 = load i8*, i8** %var_ptr_$_685
 %record_ptr_$_687 = bitcast i8* %load_$_686 to %room$3*
 %int_of_ptr_$_690 = ptrtoint i8* %load_$_686 to i64
 %cnd_$_691 = icmp eq i64 %int_of_ptr_$_690, 0
 br i1 %cnd_$_691, label %thn_$_688, label %mrg_$_689
thn_$_688:
 call i64 @recFieldError ()
 br label %mrg_$_689
mrg_$_689:
 %field_ptr_$_692 = getelementptr %room$3, %room$3* %record_ptr_$_687, i32 0, i32 4
 %load_$_693 = load i8*, i8** %field_ptr_$_692
 %record_ptr_$_694 = bitcast i8* %load_$_693 to %items$2*
 %int_of_ptr_$_697 = ptrtoint i8* %load_$_693 to i64
 %cnd_$_698 = icmp eq i64 %int_of_ptr_$_697, 0
 br i1 %cnd_$_698, label %thn_$_695, label %mrg_$_696
thn_$_695:
 call i64 @recFieldError ()
 br label %mrg_$_696
mrg_$_696:
 %field_ptr_$_699 = getelementptr %items$2, %items$2* %record_ptr_$_694, i32 0, i32 3
 %res_$_700 = load i8*, i8** %field_ptr_$_699
 %left_int_$_701 = ptrtoint i8* %res_$_700 to i64
 %right_int_$_702 = ptrtoint i8* null to i64
 %cnd_$_703 = icmp ne i64 %left_int_$_701, %right_int_$_702
 %zext_$_704 = zext i1 %cnd_$_703 to i64
 store i64 %zext_$_704, i64* %temp_$_673
 br label %mrg_$_676
els_$_675:
 store i64 0, i64* %temp_$_673
 br label %mrg_$_676
mrg_$_676:
 %res_$_705 = load i64, i64* %temp_$_673
 %cnd_$_706 = icmp ne i64 %res_$_705, 0
 br i1 %cnd_$_706, label %thn_$_670, label %els_$_671
thn_$_670:
 %lnk_$_707 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_708 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_707
 %lnk_$_710 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_711 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_710
 %var_ptr_$_712 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_711, i32 0, i32 10
 %load_$_713 = load i8*, i8** %var_ptr_$_712
 %record_ptr_$_714 = bitcast i8* %load_$_713 to %room$3*
 %int_of_ptr_$_717 = ptrtoint i8* %load_$_713 to i64
 %cnd_$_718 = icmp eq i64 %int_of_ptr_$_717, 0
 br i1 %cnd_$_718, label %thn_$_715, label %mrg_$_716
thn_$_715:
 call i64 @recFieldError ()
 br label %mrg_$_716
mrg_$_716:
 %field_ptr_$_719 = getelementptr %room$3, %room$3* %record_ptr_$_714, i32 0, i32 4
 %load_$_720 = load i8*, i8** %field_ptr_$_719
 %record_ptr_$_721 = bitcast i8* %load_$_720 to %items$2*
 %int_of_ptr_$_724 = ptrtoint i8* %load_$_720 to i64
 %cnd_$_725 = icmp eq i64 %int_of_ptr_$_724, 0
 br i1 %cnd_$_725, label %thn_$_722, label %mrg_$_723
thn_$_722:
 call i64 @recFieldError ()
 br label %mrg_$_723
mrg_$_723:
 %field_ptr_$_726 = getelementptr %items$2, %items$2* %record_ptr_$_721, i32 0, i32 3
 %load_$_727 = load i8*, i8** %field_ptr_$_726
 %record_ptr_$_728 = bitcast i8* %load_$_727 to %exit$1*
 %int_of_ptr_$_731 = ptrtoint i8* %load_$_727 to i64
 %cnd_$_732 = icmp eq i64 %int_of_ptr_$_731, 0
 br i1 %cnd_$_732, label %thn_$_729, label %mrg_$_730
thn_$_729:
 call i64 @recFieldError ()
 br label %mrg_$_730
mrg_$_730:
 %field_ptr_$_733 = getelementptr %exit$1, %exit$1* %record_ptr_$_728, i32 0, i32 0
 %res_$_734 = load i64, i64* %field_ptr_$_733
 %ret_$_735 = call i64 @not (i8* null, i64 %res_$_734)
 store i64 %ret_$_735, i64* %temp_$_669
 br label %mrg_$_672
els_$_671:
 store i64 0, i64* %temp_$_669
 br label %mrg_$_672
mrg_$_672:
 %res_$_736 = load i64, i64* %temp_$_669
 %cnd_$_737 = icmp ne i64 %res_$_736, 0
 br i1 %cnd_$_737, label %thn_$_666, label %els_$_667
thn_$_666:
 %lnk_$_738 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_739 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_738
 %temp_$_742 = bitcast { i64, [23 x i8] }* @str_$_741 to i8*
 call void @print (i8* null, i8* %temp_$_742)
 br label %mrg_$_668
els_$_667:
 %var_ptr_$_750 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 1
 %res_$_751 = load i8*, i8** %var_ptr_$_750
 %temp_$_753 = bitcast { i64, [3 x i8] }* @str_$_752 to i8*
 %temp_$_754 = call i64 @stringEqual (i8* %res_$_751, i8* %temp_$_753)
 %cnd_$_755 = icmp ne i64 %temp_$_754, 0
 br i1 %cnd_$_755, label %thn_$_747, label %els_$_748
thn_$_747:
 %lnk_$_760 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_761 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_760
 %var_ptr_$_762 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_761, i32 0, i32 11
 %load_$_763 = load i8*, i8** %var_ptr_$_762
 %record_ptr_$_764 = bitcast i8* %load_$_763 to %items$2*
 %int_of_ptr_$_767 = ptrtoint i8* %load_$_763 to i64
 %cnd_$_768 = icmp eq i64 %int_of_ptr_$_767, 0
 br i1 %cnd_$_768, label %thn_$_765, label %mrg_$_766
thn_$_765:
 call i64 @recFieldError ()
 br label %mrg_$_766
mrg_$_766:
 %field_ptr_$_769 = getelementptr %items$2, %items$2* %record_ptr_$_764, i32 0, i32 2
 %res_$_770 = load i64, i64* %field_ptr_$_769
 %cnd_$_771 = icmp ne i64 %res_$_770, 0
 br i1 %cnd_$_771, label %thn_$_757, label %els_$_758
thn_$_757:
 store i64 1, i64* %temp_$_756
 br label %mrg_$_759
els_$_758:
 %lnk_$_772 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_773 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_772
 %var_ptr_$_774 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_773, i32 0, i32 10
 %load_$_775 = load i8*, i8** %var_ptr_$_774
 %record_ptr_$_776 = bitcast i8* %load_$_775 to %room$3*
 %int_of_ptr_$_779 = ptrtoint i8* %load_$_775 to i64
 %cnd_$_780 = icmp eq i64 %int_of_ptr_$_779, 0
 br i1 %cnd_$_780, label %thn_$_777, label %mrg_$_778
thn_$_777:
 call i64 @recFieldError ()
 br label %mrg_$_778
mrg_$_778:
 %field_ptr_$_781 = getelementptr %room$3, %room$3* %record_ptr_$_776, i32 0, i32 4
 %load_$_782 = load i8*, i8** %field_ptr_$_781
 %record_ptr_$_783 = bitcast i8* %load_$_782 to %items$2*
 %int_of_ptr_$_786 = ptrtoint i8* %load_$_782 to i64
 %cnd_$_787 = icmp eq i64 %int_of_ptr_$_786, 0
 br i1 %cnd_$_787, label %thn_$_784, label %mrg_$_785
thn_$_784:
 call i64 @recFieldError ()
 br label %mrg_$_785
mrg_$_785:
 %field_ptr_$_788 = getelementptr %items$2, %items$2* %record_ptr_$_783, i32 0, i32 2
 %res_$_789 = load i64, i64* %field_ptr_$_788
 store i64 %res_$_789, i64* %temp_$_756
 br label %mrg_$_759
mrg_$_759:
 %res_$_790 = load i64, i64* %temp_$_756
 store i64 %res_$_790, i64* %temp_$_746
 br label %mrg_$_749
els_$_748:
 store i64 0, i64* %temp_$_746
 br label %mrg_$_749
mrg_$_749:
 %res_$_791 = load i64, i64* %temp_$_746
 %cnd_$_792 = icmp ne i64 %res_$_791, 0
 br i1 %cnd_$_792, label %thn_$_743, label %els_$_744
thn_$_743:
 %lnk_$_793 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_794 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_793
 %temp_$_797 = bitcast { i64, [21 x i8] }* @str_$_796 to i8*
 call void @print (i8* null, i8* %temp_$_797)
 br label %mrg_$_745
els_$_744:
 %var_ptr_$_801 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 1
 %res_$_802 = load i8*, i8** %var_ptr_$_801
 %temp_$_804 = bitcast { i64, [4 x i8] }* @str_$_803 to i8*
 %temp_$_805 = call i64 @stringEqual (i8* %res_$_802, i8* %temp_$_804)
 %cnd_$_806 = icmp ne i64 %temp_$_805, 0
 br i1 %cnd_$_806, label %thn_$_798, label %els_$_799
thn_$_798:
 %lnk_$_807 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_808 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_807
 %temp_$_811 = bitcast { i64, [1 x i8] }* @str_$_810 to i8*
 call void @print (i8* null, i8* %temp_$_811)
 %lnk_$_812 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_813 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_812
 %lnk_$_814 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_815 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_814
 %var_ptr_$_816 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_815, i32 0, i32 10
 %res_$_817 = load i8*, i8** %var_ptr_$_816
 call void @print_room$14 (%$locals_tigermain* %load_$_813, i8* %res_$_817)
 br label %mrg_$_800
els_$_799:
 %lnk_$_818 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_819 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_818
 %lnk_$_821 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_822 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_821
 %temp_$_825 = bitcast { i64, [19 x i8] }* @str_$_824 to i8*
 %lnk_$_826 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 0
 %load_$_827 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_826
 %var_ptr_$_829 = getelementptr %$locals_look$16, %$locals_look$16* %locals_$_4, i32 0, i32 1
 %res_$_830 = load i8*, i8** %var_ptr_$_829
 %temp_$_832 = bitcast { i64, [2 x i8] }* @str_$_831 to i8*
 %ret_$_833 = call i8* @concat (i8* null, i8* %res_$_830, i8* %temp_$_832)
 %ret_$_834 = call i8* @concat (i8* null, i8* %temp_$_825, i8* %ret_$_833)
 call void @print (i8* null, i8* %ret_$_834)
 br label %mrg_$_800
mrg_$_800:
 br label %mrg_$_745
mrg_$_745:
 br label %mrg_$_668
mrg_$_668:
 br label %mrg_$_595
mrg_$_595:
 br label %mrg_$_557
mrg_$_557:
 br label %mrg_$_505
mrg_$_505:
 br label %mrg_$_490
mrg_$_490:
 br label %mrg_$_470
mrg_$_470:
 ret void
}

define void @get$17 (%$locals_tigermain* %$sl, i8* %arg$34) {
 %temp_$_985 = alloca i64
 %temp_$_943 = alloca i64
 %temp_$_905 = alloca i64
 %temp_$_840 = alloca i64
 %locals_$_5 = alloca %$locals_get$17
 %arg_$_835 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 1
 store i8* %arg$34, i8** %arg_$_835
 %arg_$_836 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_836
 %var_ptr_$_844 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 1
 %res_$_845 = load i8*, i8** %var_ptr_$_844
 %temp_$_847 = bitcast { i64, [3 x i8] }* @str_$_846 to i8*
 %temp_$_848 = call i64 @stringEqual (i8* %res_$_845, i8* %temp_$_847)
 %cnd_$_849 = icmp ne i64 %temp_$_848, 0
 br i1 %cnd_$_849, label %thn_$_841, label %els_$_842
thn_$_841:
 %lnk_$_850 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_851 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_850
 %var_ptr_$_852 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_851, i32 0, i32 10
 %load_$_853 = load i8*, i8** %var_ptr_$_852
 %record_ptr_$_854 = bitcast i8* %load_$_853 to %room$3*
 %int_of_ptr_$_857 = ptrtoint i8* %load_$_853 to i64
 %cnd_$_858 = icmp eq i64 %int_of_ptr_$_857, 0
 br i1 %cnd_$_858, label %thn_$_855, label %mrg_$_856
thn_$_855:
 call i64 @recFieldError ()
 br label %mrg_$_856
mrg_$_856:
 %field_ptr_$_859 = getelementptr %room$3, %room$3* %record_ptr_$_854, i32 0, i32 4
 %load_$_860 = load i8*, i8** %field_ptr_$_859
 %record_ptr_$_861 = bitcast i8* %load_$_860 to %items$2*
 %int_of_ptr_$_864 = ptrtoint i8* %load_$_860 to i64
 %cnd_$_865 = icmp eq i64 %int_of_ptr_$_864, 0
 br i1 %cnd_$_865, label %thn_$_862, label %mrg_$_863
thn_$_862:
 call i64 @recFieldError ()
 br label %mrg_$_863
mrg_$_863:
 %field_ptr_$_866 = getelementptr %items$2, %items$2* %record_ptr_$_861, i32 0, i32 0
 %res_$_867 = load i64, i64* %field_ptr_$_866
 store i64 %res_$_867, i64* %temp_$_840
 br label %mrg_$_843
els_$_842:
 store i64 0, i64* %temp_$_840
 br label %mrg_$_843
mrg_$_843:
 %res_$_868 = load i64, i64* %temp_$_840
 %cnd_$_869 = icmp ne i64 %res_$_868, 0
 br i1 %cnd_$_869, label %thn_$_837, label %els_$_838
thn_$_837:
 %lnk_$_887 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_888 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_887
 %var_ptr_$_889 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_888, i32 0, i32 11
 %load_$_890 = load i8*, i8** %var_ptr_$_889
 %record_ptr_$_891 = bitcast i8* %load_$_890 to %items$2*
 %int_of_ptr_$_894 = ptrtoint i8* %load_$_890 to i64
 %cnd_$_895 = icmp eq i64 %int_of_ptr_$_894, 0
 br i1 %cnd_$_895, label %thn_$_892, label %mrg_$_893
thn_$_892:
 call i64 @recFieldError ()
 br label %mrg_$_893
mrg_$_893:
 %field_ptr_$_896 = getelementptr %items$2, %items$2* %record_ptr_$_891, i32 0, i32 0
 store i64 1, i64* %field_ptr_$_896
 %lnk_$_870 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_871 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_870
 %var_ptr_$_872 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_871, i32 0, i32 10
 %load_$_873 = load i8*, i8** %var_ptr_$_872
 %record_ptr_$_874 = bitcast i8* %load_$_873 to %room$3*
 %int_of_ptr_$_877 = ptrtoint i8* %load_$_873 to i64
 %cnd_$_878 = icmp eq i64 %int_of_ptr_$_877, 0
 br i1 %cnd_$_878, label %thn_$_875, label %mrg_$_876
thn_$_875:
 call i64 @recFieldError ()
 br label %mrg_$_876
mrg_$_876:
 %field_ptr_$_879 = getelementptr %room$3, %room$3* %record_ptr_$_874, i32 0, i32 4
 %load_$_880 = load i8*, i8** %field_ptr_$_879
 %record_ptr_$_881 = bitcast i8* %load_$_880 to %items$2*
 %int_of_ptr_$_884 = ptrtoint i8* %load_$_880 to i64
 %cnd_$_885 = icmp eq i64 %int_of_ptr_$_884, 0
 br i1 %cnd_$_885, label %thn_$_882, label %mrg_$_883
thn_$_882:
 call i64 @recFieldError ()
 br label %mrg_$_883
mrg_$_883:
 %field_ptr_$_886 = getelementptr %items$2, %items$2* %record_ptr_$_881, i32 0, i32 0
 store i64 0, i64* %field_ptr_$_886
 %lnk_$_897 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_898 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_897
 %temp_$_901 = bitcast { i64, [24 x i8] }* @str_$_900 to i8*
 call void @print (i8* null, i8* %temp_$_901)
 br label %mrg_$_839
els_$_838:
 %var_ptr_$_909 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 1
 %res_$_910 = load i8*, i8** %var_ptr_$_909
 %temp_$_912 = bitcast { i64, [5 x i8] }* @str_$_911 to i8*
 %temp_$_913 = call i64 @stringEqual (i8* %res_$_910, i8* %temp_$_912)
 %cnd_$_914 = icmp ne i64 %temp_$_913, 0
 br i1 %cnd_$_914, label %thn_$_906, label %els_$_907
thn_$_906:
 %lnk_$_915 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_916 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_915
 %var_ptr_$_917 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_916, i32 0, i32 10
 %load_$_918 = load i8*, i8** %var_ptr_$_917
 %record_ptr_$_919 = bitcast i8* %load_$_918 to %room$3*
 %int_of_ptr_$_922 = ptrtoint i8* %load_$_918 to i64
 %cnd_$_923 = icmp eq i64 %int_of_ptr_$_922, 0
 br i1 %cnd_$_923, label %thn_$_920, label %mrg_$_921
thn_$_920:
 call i64 @recFieldError ()
 br label %mrg_$_921
mrg_$_921:
 %field_ptr_$_924 = getelementptr %room$3, %room$3* %record_ptr_$_919, i32 0, i32 4
 %load_$_925 = load i8*, i8** %field_ptr_$_924
 %record_ptr_$_926 = bitcast i8* %load_$_925 to %items$2*
 %int_of_ptr_$_929 = ptrtoint i8* %load_$_925 to i64
 %cnd_$_930 = icmp eq i64 %int_of_ptr_$_929, 0
 br i1 %cnd_$_930, label %thn_$_927, label %mrg_$_928
thn_$_927:
 call i64 @recFieldError ()
 br label %mrg_$_928
mrg_$_928:
 %field_ptr_$_931 = getelementptr %items$2, %items$2* %record_ptr_$_926, i32 0, i32 1
 %res_$_932 = load i64, i64* %field_ptr_$_931
 store i64 %res_$_932, i64* %temp_$_905
 br label %mrg_$_908
els_$_907:
 store i64 0, i64* %temp_$_905
 br label %mrg_$_908
mrg_$_908:
 %res_$_933 = load i64, i64* %temp_$_905
 %cnd_$_934 = icmp ne i64 %res_$_933, 0
 br i1 %cnd_$_934, label %thn_$_902, label %els_$_903
thn_$_902:
 %lnk_$_935 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_936 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_935
 %temp_$_939 = bitcast { i64, [26 x i8] }* @str_$_938 to i8*
 call void @print (i8* null, i8* %temp_$_939)
 br label %mrg_$_904
els_$_903:
 %var_ptr_$_947 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 1
 %res_$_948 = load i8*, i8** %var_ptr_$_947
 %temp_$_950 = bitcast { i64, [4 x i8] }* @str_$_949 to i8*
 %temp_$_951 = call i64 @stringEqual (i8* %res_$_948, i8* %temp_$_950)
 %cnd_$_952 = icmp ne i64 %temp_$_951, 0
 br i1 %cnd_$_952, label %thn_$_944, label %els_$_945
thn_$_944:
 %lnk_$_953 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_954 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_953
 %var_ptr_$_955 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_954, i32 0, i32 10
 %load_$_956 = load i8*, i8** %var_ptr_$_955
 %record_ptr_$_957 = bitcast i8* %load_$_956 to %room$3*
 %int_of_ptr_$_960 = ptrtoint i8* %load_$_956 to i64
 %cnd_$_961 = icmp eq i64 %int_of_ptr_$_960, 0
 br i1 %cnd_$_961, label %thn_$_958, label %mrg_$_959
thn_$_958:
 call i64 @recFieldError ()
 br label %mrg_$_959
mrg_$_959:
 %field_ptr_$_962 = getelementptr %room$3, %room$3* %record_ptr_$_957, i32 0, i32 4
 %load_$_963 = load i8*, i8** %field_ptr_$_962
 %record_ptr_$_964 = bitcast i8* %load_$_963 to %items$2*
 %int_of_ptr_$_967 = ptrtoint i8* %load_$_963 to i64
 %cnd_$_968 = icmp eq i64 %int_of_ptr_$_967, 0
 br i1 %cnd_$_968, label %thn_$_965, label %mrg_$_966
thn_$_965:
 call i64 @recFieldError ()
 br label %mrg_$_966
mrg_$_966:
 %field_ptr_$_969 = getelementptr %items$2, %items$2* %record_ptr_$_964, i32 0, i32 3
 %res_$_970 = load i8*, i8** %field_ptr_$_969
 %left_int_$_971 = ptrtoint i8* %res_$_970 to i64
 %right_int_$_972 = ptrtoint i8* null to i64
 %cnd_$_973 = icmp ne i64 %left_int_$_971, %right_int_$_972
 %zext_$_974 = zext i1 %cnd_$_973 to i64
 store i64 %zext_$_974, i64* %temp_$_943
 br label %mrg_$_946
els_$_945:
 store i64 0, i64* %temp_$_943
 br label %mrg_$_946
mrg_$_946:
 %res_$_975 = load i64, i64* %temp_$_943
 %cnd_$_976 = icmp ne i64 %res_$_975, 0
 br i1 %cnd_$_976, label %thn_$_940, label %els_$_941
thn_$_940:
 %lnk_$_977 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_978 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_977
 %temp_$_981 = bitcast { i64, [26 x i8] }* @str_$_980 to i8*
 call void @print (i8* null, i8* %temp_$_981)
 br label %mrg_$_942
els_$_941:
 %var_ptr_$_989 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 1
 %res_$_990 = load i8*, i8** %var_ptr_$_989
 %temp_$_992 = bitcast { i64, [3 x i8] }* @str_$_991 to i8*
 %temp_$_993 = call i64 @stringEqual (i8* %res_$_990, i8* %temp_$_992)
 %cnd_$_994 = icmp ne i64 %temp_$_993, 0
 br i1 %cnd_$_994, label %thn_$_986, label %els_$_987
thn_$_986:
 %lnk_$_995 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_996 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_995
 %var_ptr_$_997 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_996, i32 0, i32 10
 %load_$_998 = load i8*, i8** %var_ptr_$_997
 %record_ptr_$_999 = bitcast i8* %load_$_998 to %room$3*
 %int_of_ptr_$_1002 = ptrtoint i8* %load_$_998 to i64
 %cnd_$_1003 = icmp eq i64 %int_of_ptr_$_1002, 0
 br i1 %cnd_$_1003, label %thn_$_1000, label %mrg_$_1001
thn_$_1000:
 call i64 @recFieldError ()
 br label %mrg_$_1001
mrg_$_1001:
 %field_ptr_$_1004 = getelementptr %room$3, %room$3* %record_ptr_$_999, i32 0, i32 4
 %load_$_1005 = load i8*, i8** %field_ptr_$_1004
 %record_ptr_$_1006 = bitcast i8* %load_$_1005 to %items$2*
 %int_of_ptr_$_1009 = ptrtoint i8* %load_$_1005 to i64
 %cnd_$_1010 = icmp eq i64 %int_of_ptr_$_1009, 0
 br i1 %cnd_$_1010, label %thn_$_1007, label %mrg_$_1008
thn_$_1007:
 call i64 @recFieldError ()
 br label %mrg_$_1008
mrg_$_1008:
 %field_ptr_$_1011 = getelementptr %items$2, %items$2* %record_ptr_$_1006, i32 0, i32 2
 %res_$_1012 = load i64, i64* %field_ptr_$_1011
 store i64 %res_$_1012, i64* %temp_$_985
 br label %mrg_$_988
els_$_987:
 store i64 0, i64* %temp_$_985
 br label %mrg_$_988
mrg_$_988:
 %res_$_1013 = load i64, i64* %temp_$_985
 %cnd_$_1014 = icmp ne i64 %res_$_1013, 0
 br i1 %cnd_$_1014, label %thn_$_982, label %els_$_983
thn_$_982:
 %lnk_$_1032 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_1033 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1032
 %var_ptr_$_1034 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1033, i32 0, i32 11
 %load_$_1035 = load i8*, i8** %var_ptr_$_1034
 %record_ptr_$_1036 = bitcast i8* %load_$_1035 to %items$2*
 %int_of_ptr_$_1039 = ptrtoint i8* %load_$_1035 to i64
 %cnd_$_1040 = icmp eq i64 %int_of_ptr_$_1039, 0
 br i1 %cnd_$_1040, label %thn_$_1037, label %mrg_$_1038
thn_$_1037:
 call i64 @recFieldError ()
 br label %mrg_$_1038
mrg_$_1038:
 %field_ptr_$_1041 = getelementptr %items$2, %items$2* %record_ptr_$_1036, i32 0, i32 2
 store i64 1, i64* %field_ptr_$_1041
 %lnk_$_1015 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_1016 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1015
 %var_ptr_$_1017 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1016, i32 0, i32 10
 %load_$_1018 = load i8*, i8** %var_ptr_$_1017
 %record_ptr_$_1019 = bitcast i8* %load_$_1018 to %room$3*
 %int_of_ptr_$_1022 = ptrtoint i8* %load_$_1018 to i64
 %cnd_$_1023 = icmp eq i64 %int_of_ptr_$_1022, 0
 br i1 %cnd_$_1023, label %thn_$_1020, label %mrg_$_1021
thn_$_1020:
 call i64 @recFieldError ()
 br label %mrg_$_1021
mrg_$_1021:
 %field_ptr_$_1024 = getelementptr %room$3, %room$3* %record_ptr_$_1019, i32 0, i32 4
 %load_$_1025 = load i8*, i8** %field_ptr_$_1024
 %record_ptr_$_1026 = bitcast i8* %load_$_1025 to %items$2*
 %int_of_ptr_$_1029 = ptrtoint i8* %load_$_1025 to i64
 %cnd_$_1030 = icmp eq i64 %int_of_ptr_$_1029, 0
 br i1 %cnd_$_1030, label %thn_$_1027, label %mrg_$_1028
thn_$_1027:
 call i64 @recFieldError ()
 br label %mrg_$_1028
mrg_$_1028:
 %field_ptr_$_1031 = getelementptr %items$2, %items$2* %record_ptr_$_1026, i32 0, i32 2
 store i64 0, i64* %field_ptr_$_1031
 %lnk_$_1042 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_1043 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1042
 %temp_$_1046 = bitcast { i64, [24 x i8] }* @str_$_1045 to i8*
 call void @print (i8* null, i8* %temp_$_1046)
 br label %mrg_$_984
els_$_983:
 %lnk_$_1047 = getelementptr %$locals_get$17, %$locals_get$17* %locals_$_5, i32 0, i32 0
 %load_$_1048 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1047
 %temp_$_1051 = bitcast { i64, [25 x i8] }* @str_$_1050 to i8*
 call void @print (i8* null, i8* %temp_$_1051)
 br label %mrg_$_984
mrg_$_984:
 br label %mrg_$_942
mrg_$_942:
 br label %mrg_$_904
mrg_$_904:
 br label %mrg_$_839
mrg_$_839:
 ret void
}

define void @drop$18 (%$locals_tigermain* %$sl, i8* %arg$35) {
 %temp_$_1115 = alloca i64
 %temp_$_1057 = alloca i64
 %locals_$_6 = alloca %$locals_drop$18
 %arg_$_1052 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 1
 store i8* %arg$35, i8** %arg_$_1052
 %arg_$_1053 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_1053
 %var_ptr_$_1061 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 1
 %res_$_1062 = load i8*, i8** %var_ptr_$_1061
 %temp_$_1064 = bitcast { i64, [3 x i8] }* @str_$_1063 to i8*
 %temp_$_1065 = call i64 @stringEqual (i8* %res_$_1062, i8* %temp_$_1064)
 %cnd_$_1066 = icmp ne i64 %temp_$_1065, 0
 br i1 %cnd_$_1066, label %thn_$_1058, label %els_$_1059
thn_$_1058:
 %lnk_$_1067 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 0
 %load_$_1068 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1067
 %var_ptr_$_1069 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1068, i32 0, i32 11
 %load_$_1070 = load i8*, i8** %var_ptr_$_1069
 %record_ptr_$_1071 = bitcast i8* %load_$_1070 to %items$2*
 %int_of_ptr_$_1074 = ptrtoint i8* %load_$_1070 to i64
 %cnd_$_1075 = icmp eq i64 %int_of_ptr_$_1074, 0
 br i1 %cnd_$_1075, label %thn_$_1072, label %mrg_$_1073
thn_$_1072:
 call i64 @recFieldError ()
 br label %mrg_$_1073
mrg_$_1073:
 %field_ptr_$_1076 = getelementptr %items$2, %items$2* %record_ptr_$_1071, i32 0, i32 0
 %res_$_1077 = load i64, i64* %field_ptr_$_1076
 store i64 %res_$_1077, i64* %temp_$_1057
 br label %mrg_$_1060
els_$_1059:
 store i64 0, i64* %temp_$_1057
 br label %mrg_$_1060
mrg_$_1060:
 %res_$_1078 = load i64, i64* %temp_$_1057
 %cnd_$_1079 = icmp ne i64 %res_$_1078, 0
 br i1 %cnd_$_1079, label %thn_$_1054, label %els_$_1055
thn_$_1054:
 %lnk_$_1090 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 0
 %load_$_1091 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1090
 %var_ptr_$_1092 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1091, i32 0, i32 10
 %load_$_1093 = load i8*, i8** %var_ptr_$_1092
 %record_ptr_$_1094 = bitcast i8* %load_$_1093 to %room$3*
 %int_of_ptr_$_1097 = ptrtoint i8* %load_$_1093 to i64
 %cnd_$_1098 = icmp eq i64 %int_of_ptr_$_1097, 0
 br i1 %cnd_$_1098, label %thn_$_1095, label %mrg_$_1096
thn_$_1095:
 call i64 @recFieldError ()
 br label %mrg_$_1096
mrg_$_1096:
 %field_ptr_$_1099 = getelementptr %room$3, %room$3* %record_ptr_$_1094, i32 0, i32 4
 %load_$_1100 = load i8*, i8** %field_ptr_$_1099
 %record_ptr_$_1101 = bitcast i8* %load_$_1100 to %items$2*
 %int_of_ptr_$_1104 = ptrtoint i8* %load_$_1100 to i64
 %cnd_$_1105 = icmp eq i64 %int_of_ptr_$_1104, 0
 br i1 %cnd_$_1105, label %thn_$_1102, label %mrg_$_1103
thn_$_1102:
 call i64 @recFieldError ()
 br label %mrg_$_1103
mrg_$_1103:
 %field_ptr_$_1106 = getelementptr %items$2, %items$2* %record_ptr_$_1101, i32 0, i32 0
 store i64 1, i64* %field_ptr_$_1106
 %lnk_$_1080 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 0
 %load_$_1081 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1080
 %var_ptr_$_1082 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1081, i32 0, i32 11
 %load_$_1083 = load i8*, i8** %var_ptr_$_1082
 %record_ptr_$_1084 = bitcast i8* %load_$_1083 to %items$2*
 %int_of_ptr_$_1087 = ptrtoint i8* %load_$_1083 to i64
 %cnd_$_1088 = icmp eq i64 %int_of_ptr_$_1087, 0
 br i1 %cnd_$_1088, label %thn_$_1085, label %mrg_$_1086
thn_$_1085:
 call i64 @recFieldError ()
 br label %mrg_$_1086
mrg_$_1086:
 %field_ptr_$_1089 = getelementptr %items$2, %items$2* %record_ptr_$_1084, i32 0, i32 0
 store i64 0, i64* %field_ptr_$_1089
 %lnk_$_1107 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 0
 %load_$_1108 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1107
 %temp_$_1111 = bitcast { i64, [22 x i8] }* @str_$_1110 to i8*
 call void @print (i8* null, i8* %temp_$_1111)
 br label %mrg_$_1056
els_$_1055:
 %var_ptr_$_1119 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 1
 %res_$_1120 = load i8*, i8** %var_ptr_$_1119
 %temp_$_1122 = bitcast { i64, [3 x i8] }* @str_$_1121 to i8*
 %temp_$_1123 = call i64 @stringEqual (i8* %res_$_1120, i8* %temp_$_1122)
 %cnd_$_1124 = icmp ne i64 %temp_$_1123, 0
 br i1 %cnd_$_1124, label %thn_$_1116, label %els_$_1117
thn_$_1116:
 %lnk_$_1125 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 0
 %load_$_1126 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1125
 %var_ptr_$_1127 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1126, i32 0, i32 11
 %load_$_1128 = load i8*, i8** %var_ptr_$_1127
 %record_ptr_$_1129 = bitcast i8* %load_$_1128 to %items$2*
 %int_of_ptr_$_1132 = ptrtoint i8* %load_$_1128 to i64
 %cnd_$_1133 = icmp eq i64 %int_of_ptr_$_1132, 0
 br i1 %cnd_$_1133, label %thn_$_1130, label %mrg_$_1131
thn_$_1130:
 call i64 @recFieldError ()
 br label %mrg_$_1131
mrg_$_1131:
 %field_ptr_$_1134 = getelementptr %items$2, %items$2* %record_ptr_$_1129, i32 0, i32 2
 %res_$_1135 = load i64, i64* %field_ptr_$_1134
 store i64 %res_$_1135, i64* %temp_$_1115
 br label %mrg_$_1118
els_$_1117:
 store i64 0, i64* %temp_$_1115
 br label %mrg_$_1118
mrg_$_1118:
 %res_$_1136 = load i64, i64* %temp_$_1115
 %cnd_$_1137 = icmp ne i64 %res_$_1136, 0
 br i1 %cnd_$_1137, label %thn_$_1112, label %els_$_1113
thn_$_1112:
 %lnk_$_1148 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 0
 %load_$_1149 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1148
 %var_ptr_$_1150 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1149, i32 0, i32 10
 %load_$_1151 = load i8*, i8** %var_ptr_$_1150
 %record_ptr_$_1152 = bitcast i8* %load_$_1151 to %room$3*
 %int_of_ptr_$_1155 = ptrtoint i8* %load_$_1151 to i64
 %cnd_$_1156 = icmp eq i64 %int_of_ptr_$_1155, 0
 br i1 %cnd_$_1156, label %thn_$_1153, label %mrg_$_1154
thn_$_1153:
 call i64 @recFieldError ()
 br label %mrg_$_1154
mrg_$_1154:
 %field_ptr_$_1157 = getelementptr %room$3, %room$3* %record_ptr_$_1152, i32 0, i32 4
 %load_$_1158 = load i8*, i8** %field_ptr_$_1157
 %record_ptr_$_1159 = bitcast i8* %load_$_1158 to %items$2*
 %int_of_ptr_$_1162 = ptrtoint i8* %load_$_1158 to i64
 %cnd_$_1163 = icmp eq i64 %int_of_ptr_$_1162, 0
 br i1 %cnd_$_1163, label %thn_$_1160, label %mrg_$_1161
thn_$_1160:
 call i64 @recFieldError ()
 br label %mrg_$_1161
mrg_$_1161:
 %field_ptr_$_1164 = getelementptr %items$2, %items$2* %record_ptr_$_1159, i32 0, i32 2
 store i64 1, i64* %field_ptr_$_1164
 %lnk_$_1138 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 0
 %load_$_1139 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1138
 %var_ptr_$_1140 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1139, i32 0, i32 11
 %load_$_1141 = load i8*, i8** %var_ptr_$_1140
 %record_ptr_$_1142 = bitcast i8* %load_$_1141 to %items$2*
 %int_of_ptr_$_1145 = ptrtoint i8* %load_$_1141 to i64
 %cnd_$_1146 = icmp eq i64 %int_of_ptr_$_1145, 0
 br i1 %cnd_$_1146, label %thn_$_1143, label %mrg_$_1144
thn_$_1143:
 call i64 @recFieldError ()
 br label %mrg_$_1144
mrg_$_1144:
 %field_ptr_$_1147 = getelementptr %items$2, %items$2* %record_ptr_$_1142, i32 0, i32 2
 store i64 0, i64* %field_ptr_$_1147
 %lnk_$_1165 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 0
 %load_$_1166 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1165
 %temp_$_1169 = bitcast { i64, [22 x i8] }* @str_$_1168 to i8*
 call void @print (i8* null, i8* %temp_$_1169)
 br label %mrg_$_1114
els_$_1113:
 %lnk_$_1170 = getelementptr %$locals_drop$18, %$locals_drop$18* %locals_$_6, i32 0, i32 0
 %load_$_1171 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1170
 %temp_$_1174 = bitcast { i64, [22 x i8] }* @str_$_1173 to i8*
 call void @print (i8* null, i8* %temp_$_1174)
 br label %mrg_$_1114
mrg_$_1114:
 br label %mrg_$_1056
mrg_$_1056:
 ret void
}

define void @use$19 (%$locals_tigermain* %$sl, i8* %arg$36) {
 %temp_$_1509 = alloca i64
 %temp_$_1505 = alloca i64
 %temp_$_1436 = alloca i64
 %temp_$_1432 = alloca i64
 %temp_$_1387 = alloca i64
 %temp_$_1377 = alloca i64
 %temp_$_1298 = alloca i64
 %temp_$_1294 = alloca i64
 %temp_$_1188 = alloca i64
 %temp_$_1184 = alloca i64
 %temp_$_1180 = alloca i64
 %locals_$_7 = alloca %$locals_use$19
 %arg_$_1175 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 1
 store i8* %arg$36, i8** %arg_$_1175
 %arg_$_1176 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_1176
 %var_ptr_$_1192 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 1
 %res_$_1193 = load i8*, i8** %var_ptr_$_1192
 %temp_$_1195 = bitcast { i64, [3 x i8] }* @str_$_1194 to i8*
 %temp_$_1196 = call i64 @stringEqual (i8* %res_$_1193, i8* %temp_$_1195)
 %cnd_$_1197 = icmp ne i64 %temp_$_1196, 0
 br i1 %cnd_$_1197, label %thn_$_1189, label %els_$_1190
thn_$_1189:
 %lnk_$_1198 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1199 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1198
 %var_ptr_$_1200 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1199, i32 0, i32 11
 %load_$_1201 = load i8*, i8** %var_ptr_$_1200
 %record_ptr_$_1202 = bitcast i8* %load_$_1201 to %items$2*
 %int_of_ptr_$_1205 = ptrtoint i8* %load_$_1201 to i64
 %cnd_$_1206 = icmp eq i64 %int_of_ptr_$_1205, 0
 br i1 %cnd_$_1206, label %thn_$_1203, label %mrg_$_1204
thn_$_1203:
 call i64 @recFieldError ()
 br label %mrg_$_1204
mrg_$_1204:
 %field_ptr_$_1207 = getelementptr %items$2, %items$2* %record_ptr_$_1202, i32 0, i32 2
 %res_$_1208 = load i64, i64* %field_ptr_$_1207
 store i64 %res_$_1208, i64* %temp_$_1188
 br label %mrg_$_1191
els_$_1190:
 store i64 0, i64* %temp_$_1188
 br label %mrg_$_1191
mrg_$_1191:
 %res_$_1209 = load i64, i64* %temp_$_1188
 %cnd_$_1210 = icmp ne i64 %res_$_1209, 0
 br i1 %cnd_$_1210, label %thn_$_1185, label %els_$_1186
thn_$_1185:
 %lnk_$_1211 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1212 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1211
 %var_ptr_$_1213 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1212, i32 0, i32 10
 %load_$_1214 = load i8*, i8** %var_ptr_$_1213
 %record_ptr_$_1215 = bitcast i8* %load_$_1214 to %room$3*
 %int_of_ptr_$_1218 = ptrtoint i8* %load_$_1214 to i64
 %cnd_$_1219 = icmp eq i64 %int_of_ptr_$_1218, 0
 br i1 %cnd_$_1219, label %thn_$_1216, label %mrg_$_1217
thn_$_1216:
 call i64 @recFieldError ()
 br label %mrg_$_1217
mrg_$_1217:
 %field_ptr_$_1220 = getelementptr %room$3, %room$3* %record_ptr_$_1215, i32 0, i32 4
 %load_$_1221 = load i8*, i8** %field_ptr_$_1220
 %record_ptr_$_1222 = bitcast i8* %load_$_1221 to %items$2*
 %int_of_ptr_$_1225 = ptrtoint i8* %load_$_1221 to i64
 %cnd_$_1226 = icmp eq i64 %int_of_ptr_$_1225, 0
 br i1 %cnd_$_1226, label %thn_$_1223, label %mrg_$_1224
thn_$_1223:
 call i64 @recFieldError ()
 br label %mrg_$_1224
mrg_$_1224:
 %field_ptr_$_1227 = getelementptr %items$2, %items$2* %record_ptr_$_1222, i32 0, i32 3
 %res_$_1228 = load i8*, i8** %field_ptr_$_1227
 %left_int_$_1229 = ptrtoint i8* %res_$_1228 to i64
 %right_int_$_1230 = ptrtoint i8* null to i64
 %cnd_$_1231 = icmp ne i64 %left_int_$_1229, %right_int_$_1230
 %zext_$_1232 = zext i1 %cnd_$_1231 to i64
 store i64 %zext_$_1232, i64* %temp_$_1184
 br label %mrg_$_1187
els_$_1186:
 store i64 0, i64* %temp_$_1184
 br label %mrg_$_1187
mrg_$_1187:
 %res_$_1233 = load i64, i64* %temp_$_1184
 %cnd_$_1234 = icmp ne i64 %res_$_1233, 0
 br i1 %cnd_$_1234, label %thn_$_1181, label %els_$_1182
thn_$_1181:
 %lnk_$_1235 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1236 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1235
 %var_ptr_$_1237 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1236, i32 0, i32 10
 %load_$_1238 = load i8*, i8** %var_ptr_$_1237
 %record_ptr_$_1239 = bitcast i8* %load_$_1238 to %room$3*
 %int_of_ptr_$_1242 = ptrtoint i8* %load_$_1238 to i64
 %cnd_$_1243 = icmp eq i64 %int_of_ptr_$_1242, 0
 br i1 %cnd_$_1243, label %thn_$_1240, label %mrg_$_1241
thn_$_1240:
 call i64 @recFieldError ()
 br label %mrg_$_1241
mrg_$_1241:
 %field_ptr_$_1244 = getelementptr %room$3, %room$3* %record_ptr_$_1239, i32 0, i32 4
 %load_$_1245 = load i8*, i8** %field_ptr_$_1244
 %record_ptr_$_1246 = bitcast i8* %load_$_1245 to %items$2*
 %int_of_ptr_$_1249 = ptrtoint i8* %load_$_1245 to i64
 %cnd_$_1250 = icmp eq i64 %int_of_ptr_$_1249, 0
 br i1 %cnd_$_1250, label %thn_$_1247, label %mrg_$_1248
thn_$_1247:
 call i64 @recFieldError ()
 br label %mrg_$_1248
mrg_$_1248:
 %field_ptr_$_1251 = getelementptr %items$2, %items$2* %record_ptr_$_1246, i32 0, i32 3
 %load_$_1252 = load i8*, i8** %field_ptr_$_1251
 %record_ptr_$_1253 = bitcast i8* %load_$_1252 to %exit$1*
 %int_of_ptr_$_1256 = ptrtoint i8* %load_$_1252 to i64
 %cnd_$_1257 = icmp eq i64 %int_of_ptr_$_1256, 0
 br i1 %cnd_$_1257, label %thn_$_1254, label %mrg_$_1255
thn_$_1254:
 call i64 @recFieldError ()
 br label %mrg_$_1255
mrg_$_1255:
 %field_ptr_$_1258 = getelementptr %exit$1, %exit$1* %record_ptr_$_1253, i32 0, i32 0
 %res_$_1259 = load i64, i64* %field_ptr_$_1258
 store i64 %res_$_1259, i64* %temp_$_1180
 br label %mrg_$_1183
els_$_1182:
 store i64 0, i64* %temp_$_1180
 br label %mrg_$_1183
mrg_$_1183:
 %res_$_1260 = load i64, i64* %temp_$_1180
 %cnd_$_1261 = icmp ne i64 %res_$_1260, 0
 br i1 %cnd_$_1261, label %thn_$_1177, label %els_$_1178
thn_$_1177:
 %lnk_$_1262 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1263 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1262
 %var_ptr_$_1264 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1263, i32 0, i32 10
 %load_$_1265 = load i8*, i8** %var_ptr_$_1264
 %record_ptr_$_1266 = bitcast i8* %load_$_1265 to %room$3*
 %int_of_ptr_$_1269 = ptrtoint i8* %load_$_1265 to i64
 %cnd_$_1270 = icmp eq i64 %int_of_ptr_$_1269, 0
 br i1 %cnd_$_1270, label %thn_$_1267, label %mrg_$_1268
thn_$_1267:
 call i64 @recFieldError ()
 br label %mrg_$_1268
mrg_$_1268:
 %field_ptr_$_1271 = getelementptr %room$3, %room$3* %record_ptr_$_1266, i32 0, i32 4
 %load_$_1272 = load i8*, i8** %field_ptr_$_1271
 %record_ptr_$_1273 = bitcast i8* %load_$_1272 to %items$2*
 %int_of_ptr_$_1276 = ptrtoint i8* %load_$_1272 to i64
 %cnd_$_1277 = icmp eq i64 %int_of_ptr_$_1276, 0
 br i1 %cnd_$_1277, label %thn_$_1274, label %mrg_$_1275
thn_$_1274:
 call i64 @recFieldError ()
 br label %mrg_$_1275
mrg_$_1275:
 %field_ptr_$_1278 = getelementptr %items$2, %items$2* %record_ptr_$_1273, i32 0, i32 3
 %load_$_1279 = load i8*, i8** %field_ptr_$_1278
 %record_ptr_$_1280 = bitcast i8* %load_$_1279 to %exit$1*
 %int_of_ptr_$_1283 = ptrtoint i8* %load_$_1279 to i64
 %cnd_$_1284 = icmp eq i64 %int_of_ptr_$_1283, 0
 br i1 %cnd_$_1284, label %thn_$_1281, label %mrg_$_1282
thn_$_1281:
 call i64 @recFieldError ()
 br label %mrg_$_1282
mrg_$_1282:
 %field_ptr_$_1285 = getelementptr %exit$1, %exit$1* %record_ptr_$_1280, i32 0, i32 0
 store i64 0, i64* %field_ptr_$_1285
 %lnk_$_1286 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1287 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1286
 %temp_$_1290 = bitcast { i64, [24 x i8] }* @str_$_1289 to i8*
 call void @print (i8* null, i8* %temp_$_1290)
 br label %mrg_$_1179
els_$_1178:
 %var_ptr_$_1302 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 1
 %res_$_1303 = load i8*, i8** %var_ptr_$_1302
 %temp_$_1305 = bitcast { i64, [3 x i8] }* @str_$_1304 to i8*
 %temp_$_1306 = call i64 @stringEqual (i8* %res_$_1303, i8* %temp_$_1305)
 %cnd_$_1307 = icmp ne i64 %temp_$_1306, 0
 br i1 %cnd_$_1307, label %thn_$_1299, label %els_$_1300
thn_$_1299:
 %lnk_$_1308 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1309 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1308
 %var_ptr_$_1310 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1309, i32 0, i32 11
 %load_$_1311 = load i8*, i8** %var_ptr_$_1310
 %record_ptr_$_1312 = bitcast i8* %load_$_1311 to %items$2*
 %int_of_ptr_$_1315 = ptrtoint i8* %load_$_1311 to i64
 %cnd_$_1316 = icmp eq i64 %int_of_ptr_$_1315, 0
 br i1 %cnd_$_1316, label %thn_$_1313, label %mrg_$_1314
thn_$_1313:
 call i64 @recFieldError ()
 br label %mrg_$_1314
mrg_$_1314:
 %field_ptr_$_1317 = getelementptr %items$2, %items$2* %record_ptr_$_1312, i32 0, i32 2
 %res_$_1318 = load i64, i64* %field_ptr_$_1317
 store i64 %res_$_1318, i64* %temp_$_1298
 br label %mrg_$_1301
els_$_1300:
 store i64 0, i64* %temp_$_1298
 br label %mrg_$_1301
mrg_$_1301:
 %res_$_1319 = load i64, i64* %temp_$_1298
 %cnd_$_1320 = icmp ne i64 %res_$_1319, 0
 br i1 %cnd_$_1320, label %thn_$_1295, label %els_$_1296
thn_$_1295:
 %lnk_$_1321 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1322 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1321
 %var_ptr_$_1323 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1322, i32 0, i32 10
 %load_$_1324 = load i8*, i8** %var_ptr_$_1323
 %record_ptr_$_1325 = bitcast i8* %load_$_1324 to %room$3*
 %int_of_ptr_$_1328 = ptrtoint i8* %load_$_1324 to i64
 %cnd_$_1329 = icmp eq i64 %int_of_ptr_$_1328, 0
 br i1 %cnd_$_1329, label %thn_$_1326, label %mrg_$_1327
thn_$_1326:
 call i64 @recFieldError ()
 br label %mrg_$_1327
mrg_$_1327:
 %field_ptr_$_1330 = getelementptr %room$3, %room$3* %record_ptr_$_1325, i32 0, i32 4
 %load_$_1331 = load i8*, i8** %field_ptr_$_1330
 %record_ptr_$_1332 = bitcast i8* %load_$_1331 to %items$2*
 %int_of_ptr_$_1335 = ptrtoint i8* %load_$_1331 to i64
 %cnd_$_1336 = icmp eq i64 %int_of_ptr_$_1335, 0
 br i1 %cnd_$_1336, label %thn_$_1333, label %mrg_$_1334
thn_$_1333:
 call i64 @recFieldError ()
 br label %mrg_$_1334
mrg_$_1334:
 %field_ptr_$_1337 = getelementptr %items$2, %items$2* %record_ptr_$_1332, i32 0, i32 3
 %res_$_1338 = load i8*, i8** %field_ptr_$_1337
 %left_int_$_1339 = ptrtoint i8* %res_$_1338 to i64
 %right_int_$_1340 = ptrtoint i8* null to i64
 %cnd_$_1341 = icmp ne i64 %left_int_$_1339, %right_int_$_1340
 %zext_$_1342 = zext i1 %cnd_$_1341 to i64
 store i64 %zext_$_1342, i64* %temp_$_1294
 br label %mrg_$_1297
els_$_1296:
 store i64 0, i64* %temp_$_1294
 br label %mrg_$_1297
mrg_$_1297:
 %res_$_1343 = load i64, i64* %temp_$_1294
 %cnd_$_1344 = icmp ne i64 %res_$_1343, 0
 br i1 %cnd_$_1344, label %thn_$_1291, label %els_$_1292
thn_$_1291:
 %lnk_$_1345 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1346 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1345
 %var_ptr_$_1347 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1346, i32 0, i32 10
 %load_$_1348 = load i8*, i8** %var_ptr_$_1347
 %record_ptr_$_1349 = bitcast i8* %load_$_1348 to %room$3*
 %int_of_ptr_$_1352 = ptrtoint i8* %load_$_1348 to i64
 %cnd_$_1353 = icmp eq i64 %int_of_ptr_$_1352, 0
 br i1 %cnd_$_1353, label %thn_$_1350, label %mrg_$_1351
thn_$_1350:
 call i64 @recFieldError ()
 br label %mrg_$_1351
mrg_$_1351:
 %field_ptr_$_1354 = getelementptr %room$3, %room$3* %record_ptr_$_1349, i32 0, i32 4
 %load_$_1355 = load i8*, i8** %field_ptr_$_1354
 %record_ptr_$_1356 = bitcast i8* %load_$_1355 to %items$2*
 %int_of_ptr_$_1359 = ptrtoint i8* %load_$_1355 to i64
 %cnd_$_1360 = icmp eq i64 %int_of_ptr_$_1359, 0
 br i1 %cnd_$_1360, label %thn_$_1357, label %mrg_$_1358
thn_$_1357:
 call i64 @recFieldError ()
 br label %mrg_$_1358
mrg_$_1358:
 %field_ptr_$_1361 = getelementptr %items$2, %items$2* %record_ptr_$_1356, i32 0, i32 3
 %load_$_1362 = load i8*, i8** %field_ptr_$_1361
 %record_ptr_$_1363 = bitcast i8* %load_$_1362 to %exit$1*
 %int_of_ptr_$_1366 = ptrtoint i8* %load_$_1362 to i64
 %cnd_$_1367 = icmp eq i64 %int_of_ptr_$_1366, 0
 br i1 %cnd_$_1367, label %thn_$_1364, label %mrg_$_1365
thn_$_1364:
 call i64 @recFieldError ()
 br label %mrg_$_1365
mrg_$_1365:
 %field_ptr_$_1368 = getelementptr %exit$1, %exit$1* %record_ptr_$_1363, i32 0, i32 0
 store i64 1, i64* %field_ptr_$_1368
 %lnk_$_1369 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1370 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1369
 %temp_$_1373 = bitcast { i64, [22 x i8] }* @str_$_1372 to i8*
 call void @print (i8* null, i8* %temp_$_1373)
 br label %mrg_$_1293
els_$_1292:
 %var_ptr_$_1381 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 1
 %res_$_1382 = load i8*, i8** %var_ptr_$_1381
 %temp_$_1384 = bitcast { i64, [3 x i8] }* @str_$_1383 to i8*
 %temp_$_1385 = call i64 @stringEqual (i8* %res_$_1382, i8* %temp_$_1384)
 %cnd_$_1386 = icmp ne i64 %temp_$_1385, 0
 br i1 %cnd_$_1386, label %thn_$_1378, label %els_$_1379
thn_$_1378:
 %lnk_$_1391 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1392 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1391
 %var_ptr_$_1393 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1392, i32 0, i32 10
 %load_$_1394 = load i8*, i8** %var_ptr_$_1393
 %record_ptr_$_1395 = bitcast i8* %load_$_1394 to %room$3*
 %int_of_ptr_$_1398 = ptrtoint i8* %load_$_1394 to i64
 %cnd_$_1399 = icmp eq i64 %int_of_ptr_$_1398, 0
 br i1 %cnd_$_1399, label %thn_$_1396, label %mrg_$_1397
thn_$_1396:
 call i64 @recFieldError ()
 br label %mrg_$_1397
mrg_$_1397:
 %field_ptr_$_1400 = getelementptr %room$3, %room$3* %record_ptr_$_1395, i32 0, i32 4
 %load_$_1401 = load i8*, i8** %field_ptr_$_1400
 %record_ptr_$_1402 = bitcast i8* %load_$_1401 to %items$2*
 %int_of_ptr_$_1405 = ptrtoint i8* %load_$_1401 to i64
 %cnd_$_1406 = icmp eq i64 %int_of_ptr_$_1405, 0
 br i1 %cnd_$_1406, label %thn_$_1403, label %mrg_$_1404
thn_$_1403:
 call i64 @recFieldError ()
 br label %mrg_$_1404
mrg_$_1404:
 %field_ptr_$_1407 = getelementptr %items$2, %items$2* %record_ptr_$_1402, i32 0, i32 2
 %res_$_1408 = load i64, i64* %field_ptr_$_1407
 %cnd_$_1409 = icmp ne i64 %res_$_1408, 0
 br i1 %cnd_$_1409, label %thn_$_1388, label %els_$_1389
thn_$_1388:
 store i64 1, i64* %temp_$_1387
 br label %mrg_$_1390
els_$_1389:
 %lnk_$_1410 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1411 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1410
 %var_ptr_$_1412 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1411, i32 0, i32 11
 %load_$_1413 = load i8*, i8** %var_ptr_$_1412
 %record_ptr_$_1414 = bitcast i8* %load_$_1413 to %items$2*
 %int_of_ptr_$_1417 = ptrtoint i8* %load_$_1413 to i64
 %cnd_$_1418 = icmp eq i64 %int_of_ptr_$_1417, 0
 br i1 %cnd_$_1418, label %thn_$_1415, label %mrg_$_1416
thn_$_1415:
 call i64 @recFieldError ()
 br label %mrg_$_1416
mrg_$_1416:
 %field_ptr_$_1419 = getelementptr %items$2, %items$2* %record_ptr_$_1414, i32 0, i32 2
 %res_$_1420 = load i64, i64* %field_ptr_$_1419
 store i64 %res_$_1420, i64* %temp_$_1387
 br label %mrg_$_1390
mrg_$_1390:
 %res_$_1421 = load i64, i64* %temp_$_1387
 store i64 %res_$_1421, i64* %temp_$_1377
 br label %mrg_$_1380
els_$_1379:
 store i64 0, i64* %temp_$_1377
 br label %mrg_$_1380
mrg_$_1380:
 %res_$_1422 = load i64, i64* %temp_$_1377
 %cnd_$_1423 = icmp ne i64 %res_$_1422, 0
 br i1 %cnd_$_1423, label %thn_$_1374, label %els_$_1375
thn_$_1374:
 %lnk_$_1424 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1425 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1424
 %temp_$_1428 = bitcast { i64, [34 x i8] }* @str_$_1427 to i8*
 call void @print (i8* null, i8* %temp_$_1428)
 br label %mrg_$_1376
els_$_1375:
 %var_ptr_$_1440 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 1
 %res_$_1441 = load i8*, i8** %var_ptr_$_1440
 %temp_$_1443 = bitcast { i64, [4 x i8] }* @str_$_1442 to i8*
 %temp_$_1444 = call i64 @stringEqual (i8* %res_$_1441, i8* %temp_$_1443)
 %cnd_$_1445 = icmp ne i64 %temp_$_1444, 0
 br i1 %cnd_$_1445, label %thn_$_1437, label %els_$_1438
thn_$_1437:
 %lnk_$_1446 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1447 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1446
 %var_ptr_$_1448 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1447, i32 0, i32 10
 %load_$_1449 = load i8*, i8** %var_ptr_$_1448
 %record_ptr_$_1450 = bitcast i8* %load_$_1449 to %room$3*
 %int_of_ptr_$_1453 = ptrtoint i8* %load_$_1449 to i64
 %cnd_$_1454 = icmp eq i64 %int_of_ptr_$_1453, 0
 br i1 %cnd_$_1454, label %thn_$_1451, label %mrg_$_1452
thn_$_1451:
 call i64 @recFieldError ()
 br label %mrg_$_1452
mrg_$_1452:
 %field_ptr_$_1455 = getelementptr %room$3, %room$3* %record_ptr_$_1450, i32 0, i32 4
 %load_$_1456 = load i8*, i8** %field_ptr_$_1455
 %record_ptr_$_1457 = bitcast i8* %load_$_1456 to %items$2*
 %int_of_ptr_$_1460 = ptrtoint i8* %load_$_1456 to i64
 %cnd_$_1461 = icmp eq i64 %int_of_ptr_$_1460, 0
 br i1 %cnd_$_1461, label %thn_$_1458, label %mrg_$_1459
thn_$_1458:
 call i64 @recFieldError ()
 br label %mrg_$_1459
mrg_$_1459:
 %field_ptr_$_1462 = getelementptr %items$2, %items$2* %record_ptr_$_1457, i32 0, i32 3
 %res_$_1463 = load i8*, i8** %field_ptr_$_1462
 %left_int_$_1464 = ptrtoint i8* %res_$_1463 to i64
 %right_int_$_1465 = ptrtoint i8* null to i64
 %cnd_$_1466 = icmp ne i64 %left_int_$_1464, %right_int_$_1465
 %zext_$_1467 = zext i1 %cnd_$_1466 to i64
 store i64 %zext_$_1467, i64* %temp_$_1436
 br label %mrg_$_1439
els_$_1438:
 store i64 0, i64* %temp_$_1436
 br label %mrg_$_1439
mrg_$_1439:
 %res_$_1468 = load i64, i64* %temp_$_1436
 %cnd_$_1469 = icmp ne i64 %res_$_1468, 0
 br i1 %cnd_$_1469, label %thn_$_1433, label %els_$_1434
thn_$_1433:
 %lnk_$_1470 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1471 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1470
 %var_ptr_$_1472 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1471, i32 0, i32 10
 %load_$_1473 = load i8*, i8** %var_ptr_$_1472
 %record_ptr_$_1474 = bitcast i8* %load_$_1473 to %room$3*
 %int_of_ptr_$_1477 = ptrtoint i8* %load_$_1473 to i64
 %cnd_$_1478 = icmp eq i64 %int_of_ptr_$_1477, 0
 br i1 %cnd_$_1478, label %thn_$_1475, label %mrg_$_1476
thn_$_1475:
 call i64 @recFieldError ()
 br label %mrg_$_1476
mrg_$_1476:
 %field_ptr_$_1479 = getelementptr %room$3, %room$3* %record_ptr_$_1474, i32 0, i32 4
 %load_$_1480 = load i8*, i8** %field_ptr_$_1479
 %record_ptr_$_1481 = bitcast i8* %load_$_1480 to %items$2*
 %int_of_ptr_$_1484 = ptrtoint i8* %load_$_1480 to i64
 %cnd_$_1485 = icmp eq i64 %int_of_ptr_$_1484, 0
 br i1 %cnd_$_1485, label %thn_$_1482, label %mrg_$_1483
thn_$_1482:
 call i64 @recFieldError ()
 br label %mrg_$_1483
mrg_$_1483:
 %field_ptr_$_1486 = getelementptr %items$2, %items$2* %record_ptr_$_1481, i32 0, i32 3
 %load_$_1487 = load i8*, i8** %field_ptr_$_1486
 %record_ptr_$_1488 = bitcast i8* %load_$_1487 to %exit$1*
 %int_of_ptr_$_1491 = ptrtoint i8* %load_$_1487 to i64
 %cnd_$_1492 = icmp eq i64 %int_of_ptr_$_1491, 0
 br i1 %cnd_$_1492, label %thn_$_1489, label %mrg_$_1490
thn_$_1489:
 call i64 @recFieldError ()
 br label %mrg_$_1490
mrg_$_1490:
 %field_ptr_$_1493 = getelementptr %exit$1, %exit$1* %record_ptr_$_1488, i32 0, i32 0
 %res_$_1494 = load i64, i64* %field_ptr_$_1493
 store i64 %res_$_1494, i64* %temp_$_1432
 br label %mrg_$_1435
els_$_1434:
 store i64 0, i64* %temp_$_1432
 br label %mrg_$_1435
mrg_$_1435:
 %res_$_1495 = load i64, i64* %temp_$_1432
 %cnd_$_1496 = icmp ne i64 %res_$_1495, 0
 br i1 %cnd_$_1496, label %thn_$_1429, label %els_$_1430
thn_$_1429:
 %lnk_$_1497 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1498 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1497
 %temp_$_1501 = bitcast { i64, [21 x i8] }* @str_$_1500 to i8*
 call void @print (i8* null, i8* %temp_$_1501)
 br label %mrg_$_1431
els_$_1430:
 %var_ptr_$_1513 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 1
 %res_$_1514 = load i8*, i8** %var_ptr_$_1513
 %temp_$_1516 = bitcast { i64, [4 x i8] }* @str_$_1515 to i8*
 %temp_$_1517 = call i64 @stringEqual (i8* %res_$_1514, i8* %temp_$_1516)
 %cnd_$_1518 = icmp ne i64 %temp_$_1517, 0
 br i1 %cnd_$_1518, label %thn_$_1510, label %els_$_1511
thn_$_1510:
 %lnk_$_1519 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1520 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1519
 %var_ptr_$_1521 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1520, i32 0, i32 10
 %load_$_1522 = load i8*, i8** %var_ptr_$_1521
 %record_ptr_$_1523 = bitcast i8* %load_$_1522 to %room$3*
 %int_of_ptr_$_1526 = ptrtoint i8* %load_$_1522 to i64
 %cnd_$_1527 = icmp eq i64 %int_of_ptr_$_1526, 0
 br i1 %cnd_$_1527, label %thn_$_1524, label %mrg_$_1525
thn_$_1524:
 call i64 @recFieldError ()
 br label %mrg_$_1525
mrg_$_1525:
 %field_ptr_$_1528 = getelementptr %room$3, %room$3* %record_ptr_$_1523, i32 0, i32 4
 %load_$_1529 = load i8*, i8** %field_ptr_$_1528
 %record_ptr_$_1530 = bitcast i8* %load_$_1529 to %items$2*
 %int_of_ptr_$_1533 = ptrtoint i8* %load_$_1529 to i64
 %cnd_$_1534 = icmp eq i64 %int_of_ptr_$_1533, 0
 br i1 %cnd_$_1534, label %thn_$_1531, label %mrg_$_1532
thn_$_1531:
 call i64 @recFieldError ()
 br label %mrg_$_1532
mrg_$_1532:
 %field_ptr_$_1535 = getelementptr %items$2, %items$2* %record_ptr_$_1530, i32 0, i32 3
 %res_$_1536 = load i8*, i8** %field_ptr_$_1535
 %left_int_$_1537 = ptrtoint i8* %res_$_1536 to i64
 %right_int_$_1538 = ptrtoint i8* null to i64
 %cnd_$_1539 = icmp ne i64 %left_int_$_1537, %right_int_$_1538
 %zext_$_1540 = zext i1 %cnd_$_1539 to i64
 store i64 %zext_$_1540, i64* %temp_$_1509
 br label %mrg_$_1512
els_$_1511:
 store i64 0, i64* %temp_$_1509
 br label %mrg_$_1512
mrg_$_1512:
 %res_$_1541 = load i64, i64* %temp_$_1509
 %cnd_$_1542 = icmp ne i64 %res_$_1541, 0
 br i1 %cnd_$_1542, label %thn_$_1506, label %els_$_1507
thn_$_1506:
 %lnk_$_1543 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1544 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1543
 %lnk_$_1546 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1547 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1546
 %var_ptr_$_1548 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1547, i32 0, i32 10
 %load_$_1549 = load i8*, i8** %var_ptr_$_1548
 %record_ptr_$_1550 = bitcast i8* %load_$_1549 to %room$3*
 %int_of_ptr_$_1553 = ptrtoint i8* %load_$_1549 to i64
 %cnd_$_1554 = icmp eq i64 %int_of_ptr_$_1553, 0
 br i1 %cnd_$_1554, label %thn_$_1551, label %mrg_$_1552
thn_$_1551:
 call i64 @recFieldError ()
 br label %mrg_$_1552
mrg_$_1552:
 %field_ptr_$_1555 = getelementptr %room$3, %room$3* %record_ptr_$_1550, i32 0, i32 4
 %load_$_1556 = load i8*, i8** %field_ptr_$_1555
 %record_ptr_$_1557 = bitcast i8* %load_$_1556 to %items$2*
 %int_of_ptr_$_1560 = ptrtoint i8* %load_$_1556 to i64
 %cnd_$_1561 = icmp eq i64 %int_of_ptr_$_1560, 0
 br i1 %cnd_$_1561, label %thn_$_1558, label %mrg_$_1559
thn_$_1558:
 call i64 @recFieldError ()
 br label %mrg_$_1559
mrg_$_1559:
 %field_ptr_$_1562 = getelementptr %items$2, %items$2* %record_ptr_$_1557, i32 0, i32 3
 %load_$_1563 = load i8*, i8** %field_ptr_$_1562
 %record_ptr_$_1564 = bitcast i8* %load_$_1563 to %exit$1*
 %int_of_ptr_$_1567 = ptrtoint i8* %load_$_1563 to i64
 %cnd_$_1568 = icmp eq i64 %int_of_ptr_$_1567, 0
 br i1 %cnd_$_1568, label %thn_$_1565, label %mrg_$_1566
thn_$_1565:
 call i64 @recFieldError ()
 br label %mrg_$_1566
mrg_$_1566:
 %field_ptr_$_1569 = getelementptr %exit$1, %exit$1* %record_ptr_$_1564, i32 0, i32 0
 %res_$_1570 = load i64, i64* %field_ptr_$_1569
 %ret_$_1571 = call i64 @not (i8* null, i64 %res_$_1570)
 store i64 %ret_$_1571, i64* %temp_$_1505
 br label %mrg_$_1508
els_$_1507:
 store i64 0, i64* %temp_$_1505
 br label %mrg_$_1508
mrg_$_1508:
 %res_$_1572 = load i64, i64* %temp_$_1505
 %cnd_$_1573 = icmp ne i64 %res_$_1572, 0
 br i1 %cnd_$_1573, label %thn_$_1502, label %els_$_1503
thn_$_1502:
 %lnk_$_1574 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1575 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1574
 %temp_$_1578 = bitcast { i64, [42 x i8] }* @str_$_1577 to i8*
 call void @print (i8* null, i8* %temp_$_1578)
 %lnk_$_1579 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1580 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1579
 call void @tigerexit (i8* null, i64 0)
 br label %mrg_$_1504
els_$_1503:
 %lnk_$_1582 = getelementptr %$locals_use$19, %$locals_use$19* %locals_$_7, i32 0, i32 0
 %load_$_1583 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1582
 %temp_$_1586 = bitcast { i64, [21 x i8] }* @str_$_1585 to i8*
 call void @print (i8* null, i8* %temp_$_1586)
 br label %mrg_$_1504
mrg_$_1504:
 br label %mrg_$_1431
mrg_$_1431:
 br label %mrg_$_1376
mrg_$_1376:
 br label %mrg_$_1293
mrg_$_1293:
 br label %mrg_$_1179
mrg_$_1179:
 ret void
}

define void @go$20 (%$locals_tigermain* %$sl, i8* %arg$37) {
 %temp_$_1760 = alloca i64
 %temp_$_1704 = alloca i64
 %temp_$_1648 = alloca i64
 %temp_$_1592 = alloca i64
 %locals_$_8 = alloca %$locals_go$20
 %arg_$_1587 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 1
 store i8* %arg$37, i8** %arg_$_1587
 %arg_$_1588 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_1588
 %var_ptr_$_1596 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 1
 %res_$_1597 = load i8*, i8** %var_ptr_$_1596
 %temp_$_1599 = bitcast { i64, [5 x i8] }* @str_$_1598 to i8*
 %temp_$_1600 = call i64 @stringEqual (i8* %res_$_1597, i8* %temp_$_1599)
 %cnd_$_1601 = icmp ne i64 %temp_$_1600, 0
 br i1 %cnd_$_1601, label %thn_$_1593, label %els_$_1594
thn_$_1593:
 %lnk_$_1602 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1603 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1602
 %var_ptr_$_1604 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1603, i32 0, i32 10
 %load_$_1605 = load i8*, i8** %var_ptr_$_1604
 %record_ptr_$_1606 = bitcast i8* %load_$_1605 to %room$3*
 %int_of_ptr_$_1609 = ptrtoint i8* %load_$_1605 to i64
 %cnd_$_1610 = icmp eq i64 %int_of_ptr_$_1609, 0
 br i1 %cnd_$_1610, label %thn_$_1607, label %mrg_$_1608
thn_$_1607:
 call i64 @recFieldError ()
 br label %mrg_$_1608
mrg_$_1608:
 %field_ptr_$_1611 = getelementptr %room$3, %room$3* %record_ptr_$_1606, i32 0, i32 0
 %res_$_1612 = load i8*, i8** %field_ptr_$_1611
 %left_int_$_1613 = ptrtoint i8* %res_$_1612 to i64
 %right_int_$_1614 = ptrtoint i8* null to i64
 %cnd_$_1615 = icmp ne i64 %left_int_$_1613, %right_int_$_1614
 %zext_$_1616 = zext i1 %cnd_$_1615 to i64
 store i64 %zext_$_1616, i64* %temp_$_1592
 br label %mrg_$_1595
els_$_1594:
 store i64 0, i64* %temp_$_1592
 br label %mrg_$_1595
mrg_$_1595:
 %res_$_1617 = load i64, i64* %temp_$_1592
 %cnd_$_1618 = icmp ne i64 %res_$_1617, 0
 br i1 %cnd_$_1618, label %thn_$_1589, label %els_$_1590
thn_$_1589:
 %lnk_$_1619 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1620 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1619
 %var_ptr_$_1621 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1620, i32 0, i32 10
 %load_$_1622 = load i8*, i8** %var_ptr_$_1621
 %record_ptr_$_1623 = bitcast i8* %load_$_1622 to %room$3*
 %int_of_ptr_$_1626 = ptrtoint i8* %load_$_1622 to i64
 %cnd_$_1627 = icmp eq i64 %int_of_ptr_$_1626, 0
 br i1 %cnd_$_1627, label %thn_$_1624, label %mrg_$_1625
thn_$_1624:
 call i64 @recFieldError ()
 br label %mrg_$_1625
mrg_$_1625:
 %field_ptr_$_1628 = getelementptr %room$3, %room$3* %record_ptr_$_1623, i32 0, i32 0
 %load_$_1629 = load i8*, i8** %field_ptr_$_1628
 %record_ptr_$_1630 = bitcast i8* %load_$_1629 to %room$3*
 %int_of_ptr_$_1633 = ptrtoint i8* %load_$_1629 to i64
 %cnd_$_1634 = icmp eq i64 %int_of_ptr_$_1633, 0
 br i1 %cnd_$_1634, label %thn_$_1631, label %mrg_$_1632
thn_$_1631:
 call i64 @recFieldError ()
 br label %mrg_$_1632
mrg_$_1632:
 %field_ptr_$_1635 = getelementptr %room$3, %room$3* %record_ptr_$_1630, i32 0, i32 0
 %res_$_1636 = load i8*, i8** %field_ptr_$_1635
 %lnk_$_1637 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1638 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1637
 %var_ptr_$_1639 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1638, i32 0, i32 10
 store i8* %res_$_1636, i8** %var_ptr_$_1639
 %lnk_$_1640 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1641 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1640
 %temp_$_1644 = bitcast { i64, [27 x i8] }* @str_$_1643 to i8*
 call void @print (i8* null, i8* %temp_$_1644)
 br label %mrg_$_1591
els_$_1590:
 %var_ptr_$_1652 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 1
 %res_$_1653 = load i8*, i8** %var_ptr_$_1652
 %temp_$_1655 = bitcast { i64, [5 x i8] }* @str_$_1654 to i8*
 %temp_$_1656 = call i64 @stringEqual (i8* %res_$_1653, i8* %temp_$_1655)
 %cnd_$_1657 = icmp ne i64 %temp_$_1656, 0
 br i1 %cnd_$_1657, label %thn_$_1649, label %els_$_1650
thn_$_1649:
 %lnk_$_1658 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1659 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1658
 %var_ptr_$_1660 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1659, i32 0, i32 10
 %load_$_1661 = load i8*, i8** %var_ptr_$_1660
 %record_ptr_$_1662 = bitcast i8* %load_$_1661 to %room$3*
 %int_of_ptr_$_1665 = ptrtoint i8* %load_$_1661 to i64
 %cnd_$_1666 = icmp eq i64 %int_of_ptr_$_1665, 0
 br i1 %cnd_$_1666, label %thn_$_1663, label %mrg_$_1664
thn_$_1663:
 call i64 @recFieldError ()
 br label %mrg_$_1664
mrg_$_1664:
 %field_ptr_$_1667 = getelementptr %room$3, %room$3* %record_ptr_$_1662, i32 0, i32 2
 %res_$_1668 = load i8*, i8** %field_ptr_$_1667
 %left_int_$_1669 = ptrtoint i8* %res_$_1668 to i64
 %right_int_$_1670 = ptrtoint i8* null to i64
 %cnd_$_1671 = icmp ne i64 %left_int_$_1669, %right_int_$_1670
 %zext_$_1672 = zext i1 %cnd_$_1671 to i64
 store i64 %zext_$_1672, i64* %temp_$_1648
 br label %mrg_$_1651
els_$_1650:
 store i64 0, i64* %temp_$_1648
 br label %mrg_$_1651
mrg_$_1651:
 %res_$_1673 = load i64, i64* %temp_$_1648
 %cnd_$_1674 = icmp ne i64 %res_$_1673, 0
 br i1 %cnd_$_1674, label %thn_$_1645, label %els_$_1646
thn_$_1645:
 %lnk_$_1675 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1676 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1675
 %var_ptr_$_1677 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1676, i32 0, i32 10
 %load_$_1678 = load i8*, i8** %var_ptr_$_1677
 %record_ptr_$_1679 = bitcast i8* %load_$_1678 to %room$3*
 %int_of_ptr_$_1682 = ptrtoint i8* %load_$_1678 to i64
 %cnd_$_1683 = icmp eq i64 %int_of_ptr_$_1682, 0
 br i1 %cnd_$_1683, label %thn_$_1680, label %mrg_$_1681
thn_$_1680:
 call i64 @recFieldError ()
 br label %mrg_$_1681
mrg_$_1681:
 %field_ptr_$_1684 = getelementptr %room$3, %room$3* %record_ptr_$_1679, i32 0, i32 2
 %load_$_1685 = load i8*, i8** %field_ptr_$_1684
 %record_ptr_$_1686 = bitcast i8* %load_$_1685 to %room$3*
 %int_of_ptr_$_1689 = ptrtoint i8* %load_$_1685 to i64
 %cnd_$_1690 = icmp eq i64 %int_of_ptr_$_1689, 0
 br i1 %cnd_$_1690, label %thn_$_1687, label %mrg_$_1688
thn_$_1687:
 call i64 @recFieldError ()
 br label %mrg_$_1688
mrg_$_1688:
 %field_ptr_$_1691 = getelementptr %room$3, %room$3* %record_ptr_$_1686, i32 0, i32 2
 %res_$_1692 = load i8*, i8** %field_ptr_$_1691
 %lnk_$_1693 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1694 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1693
 %var_ptr_$_1695 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1694, i32 0, i32 10
 store i8* %res_$_1692, i8** %var_ptr_$_1695
 %lnk_$_1696 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1697 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1696
 %temp_$_1700 = bitcast { i64, [27 x i8] }* @str_$_1699 to i8*
 call void @print (i8* null, i8* %temp_$_1700)
 br label %mrg_$_1647
els_$_1646:
 %var_ptr_$_1708 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 1
 %res_$_1709 = load i8*, i8** %var_ptr_$_1708
 %temp_$_1711 = bitcast { i64, [4 x i8] }* @str_$_1710 to i8*
 %temp_$_1712 = call i64 @stringEqual (i8* %res_$_1709, i8* %temp_$_1711)
 %cnd_$_1713 = icmp ne i64 %temp_$_1712, 0
 br i1 %cnd_$_1713, label %thn_$_1705, label %els_$_1706
thn_$_1705:
 %lnk_$_1714 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1715 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1714
 %var_ptr_$_1716 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1715, i32 0, i32 10
 %load_$_1717 = load i8*, i8** %var_ptr_$_1716
 %record_ptr_$_1718 = bitcast i8* %load_$_1717 to %room$3*
 %int_of_ptr_$_1721 = ptrtoint i8* %load_$_1717 to i64
 %cnd_$_1722 = icmp eq i64 %int_of_ptr_$_1721, 0
 br i1 %cnd_$_1722, label %thn_$_1719, label %mrg_$_1720
thn_$_1719:
 call i64 @recFieldError ()
 br label %mrg_$_1720
mrg_$_1720:
 %field_ptr_$_1723 = getelementptr %room$3, %room$3* %record_ptr_$_1718, i32 0, i32 1
 %res_$_1724 = load i8*, i8** %field_ptr_$_1723
 %left_int_$_1725 = ptrtoint i8* %res_$_1724 to i64
 %right_int_$_1726 = ptrtoint i8* null to i64
 %cnd_$_1727 = icmp ne i64 %left_int_$_1725, %right_int_$_1726
 %zext_$_1728 = zext i1 %cnd_$_1727 to i64
 store i64 %zext_$_1728, i64* %temp_$_1704
 br label %mrg_$_1707
els_$_1706:
 store i64 0, i64* %temp_$_1704
 br label %mrg_$_1707
mrg_$_1707:
 %res_$_1729 = load i64, i64* %temp_$_1704
 %cnd_$_1730 = icmp ne i64 %res_$_1729, 0
 br i1 %cnd_$_1730, label %thn_$_1701, label %els_$_1702
thn_$_1701:
 %lnk_$_1731 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1732 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1731
 %var_ptr_$_1733 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1732, i32 0, i32 10
 %load_$_1734 = load i8*, i8** %var_ptr_$_1733
 %record_ptr_$_1735 = bitcast i8* %load_$_1734 to %room$3*
 %int_of_ptr_$_1738 = ptrtoint i8* %load_$_1734 to i64
 %cnd_$_1739 = icmp eq i64 %int_of_ptr_$_1738, 0
 br i1 %cnd_$_1739, label %thn_$_1736, label %mrg_$_1737
thn_$_1736:
 call i64 @recFieldError ()
 br label %mrg_$_1737
mrg_$_1737:
 %field_ptr_$_1740 = getelementptr %room$3, %room$3* %record_ptr_$_1735, i32 0, i32 1
 %load_$_1741 = load i8*, i8** %field_ptr_$_1740
 %record_ptr_$_1742 = bitcast i8* %load_$_1741 to %room$3*
 %int_of_ptr_$_1745 = ptrtoint i8* %load_$_1741 to i64
 %cnd_$_1746 = icmp eq i64 %int_of_ptr_$_1745, 0
 br i1 %cnd_$_1746, label %thn_$_1743, label %mrg_$_1744
thn_$_1743:
 call i64 @recFieldError ()
 br label %mrg_$_1744
mrg_$_1744:
 %field_ptr_$_1747 = getelementptr %room$3, %room$3* %record_ptr_$_1742, i32 0, i32 1
 %res_$_1748 = load i8*, i8** %field_ptr_$_1747
 %lnk_$_1749 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1750 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1749
 %var_ptr_$_1751 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1750, i32 0, i32 10
 store i8* %res_$_1748, i8** %var_ptr_$_1751
 %lnk_$_1752 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1753 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1752
 %temp_$_1756 = bitcast { i64, [27 x i8] }* @str_$_1755 to i8*
 call void @print (i8* null, i8* %temp_$_1756)
 br label %mrg_$_1703
els_$_1702:
 %var_ptr_$_1764 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 1
 %res_$_1765 = load i8*, i8** %var_ptr_$_1764
 %temp_$_1767 = bitcast { i64, [4 x i8] }* @str_$_1766 to i8*
 %temp_$_1768 = call i64 @stringEqual (i8* %res_$_1765, i8* %temp_$_1767)
 %cnd_$_1769 = icmp ne i64 %temp_$_1768, 0
 br i1 %cnd_$_1769, label %thn_$_1761, label %els_$_1762
thn_$_1761:
 %lnk_$_1770 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1771 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1770
 %var_ptr_$_1772 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1771, i32 0, i32 10
 %load_$_1773 = load i8*, i8** %var_ptr_$_1772
 %record_ptr_$_1774 = bitcast i8* %load_$_1773 to %room$3*
 %int_of_ptr_$_1777 = ptrtoint i8* %load_$_1773 to i64
 %cnd_$_1778 = icmp eq i64 %int_of_ptr_$_1777, 0
 br i1 %cnd_$_1778, label %thn_$_1775, label %mrg_$_1776
thn_$_1775:
 call i64 @recFieldError ()
 br label %mrg_$_1776
mrg_$_1776:
 %field_ptr_$_1779 = getelementptr %room$3, %room$3* %record_ptr_$_1774, i32 0, i32 3
 %res_$_1780 = load i8*, i8** %field_ptr_$_1779
 %left_int_$_1781 = ptrtoint i8* %res_$_1780 to i64
 %right_int_$_1782 = ptrtoint i8* null to i64
 %cnd_$_1783 = icmp ne i64 %left_int_$_1781, %right_int_$_1782
 %zext_$_1784 = zext i1 %cnd_$_1783 to i64
 store i64 %zext_$_1784, i64* %temp_$_1760
 br label %mrg_$_1763
els_$_1762:
 store i64 0, i64* %temp_$_1760
 br label %mrg_$_1763
mrg_$_1763:
 %res_$_1785 = load i64, i64* %temp_$_1760
 %cnd_$_1786 = icmp ne i64 %res_$_1785, 0
 br i1 %cnd_$_1786, label %thn_$_1757, label %els_$_1758
thn_$_1757:
 %lnk_$_1787 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1788 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1787
 %var_ptr_$_1789 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1788, i32 0, i32 10
 %load_$_1790 = load i8*, i8** %var_ptr_$_1789
 %record_ptr_$_1791 = bitcast i8* %load_$_1790 to %room$3*
 %int_of_ptr_$_1794 = ptrtoint i8* %load_$_1790 to i64
 %cnd_$_1795 = icmp eq i64 %int_of_ptr_$_1794, 0
 br i1 %cnd_$_1795, label %thn_$_1792, label %mrg_$_1793
thn_$_1792:
 call i64 @recFieldError ()
 br label %mrg_$_1793
mrg_$_1793:
 %field_ptr_$_1796 = getelementptr %room$3, %room$3* %record_ptr_$_1791, i32 0, i32 3
 %load_$_1797 = load i8*, i8** %field_ptr_$_1796
 %record_ptr_$_1798 = bitcast i8* %load_$_1797 to %room$3*
 %int_of_ptr_$_1801 = ptrtoint i8* %load_$_1797 to i64
 %cnd_$_1802 = icmp eq i64 %int_of_ptr_$_1801, 0
 br i1 %cnd_$_1802, label %thn_$_1799, label %mrg_$_1800
thn_$_1799:
 call i64 @recFieldError ()
 br label %mrg_$_1800
mrg_$_1800:
 %field_ptr_$_1803 = getelementptr %room$3, %room$3* %record_ptr_$_1798, i32 0, i32 3
 %res_$_1804 = load i8*, i8** %field_ptr_$_1803
 %lnk_$_1805 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1806 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1805
 %var_ptr_$_1807 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1806, i32 0, i32 10
 store i8* %res_$_1804, i8** %var_ptr_$_1807
 %lnk_$_1808 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1809 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1808
 %temp_$_1812 = bitcast { i64, [27 x i8] }* @str_$_1811 to i8*
 call void @print (i8* null, i8* %temp_$_1812)
 br label %mrg_$_1759
els_$_1758:
 %lnk_$_1813 = getelementptr %$locals_go$20, %$locals_go$20* %locals_$_8, i32 0, i32 0
 %load_$_1814 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1813
 %temp_$_1817 = bitcast { i64, [20 x i8] }* @str_$_1816 to i8*
 call void @print (i8* null, i8* %temp_$_1817)
 br label %mrg_$_1759
mrg_$_1759:
 br label %mrg_$_1703
mrg_$_1703:
 br label %mrg_$_1647
mrg_$_1647:
 br label %mrg_$_1591
mrg_$_1591:
 ret void
}

define void @handle_command$21 (%$locals_tigermain* %$sl) {
 %locals_$_9 = alloca %$locals_handle_command$21
 %arg_$_1818 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_1818
 %lnk_$_1819 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1820 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1819
 %ret_$_1821 = call i8* @get_input$12 (%$locals_tigermain* %load_$_1820)
 %temp_$_1822 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 3
 store i8* %ret_$_1821, i8** %temp_$_1822
 %var_ptr_$_1823 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 3
 %load_$_1824 = load i8*, i8** %var_ptr_$_1823
 %record_ptr_$_1825 = bitcast i8* %load_$_1824 to %input$0*
 %int_of_ptr_$_1828 = ptrtoint i8* %load_$_1824 to i64
 %cnd_$_1829 = icmp eq i64 %int_of_ptr_$_1828, 0
 br i1 %cnd_$_1829, label %thn_$_1826, label %mrg_$_1827
thn_$_1826:
 call i64 @recFieldError ()
 br label %mrg_$_1827
mrg_$_1827:
 %field_ptr_$_1830 = getelementptr %input$0, %input$0* %record_ptr_$_1825, i32 0, i32 0
 %res_$_1831 = load i8*, i8** %field_ptr_$_1830
 %temp_$_1832 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 2
 store i8* %res_$_1831, i8** %temp_$_1832
 %var_ptr_$_1833 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 3
 %load_$_1834 = load i8*, i8** %var_ptr_$_1833
 %record_ptr_$_1835 = bitcast i8* %load_$_1834 to %input$0*
 %int_of_ptr_$_1838 = ptrtoint i8* %load_$_1834 to i64
 %cnd_$_1839 = icmp eq i64 %int_of_ptr_$_1838, 0
 br i1 %cnd_$_1839, label %thn_$_1836, label %mrg_$_1837
thn_$_1836:
 call i64 @recFieldError ()
 br label %mrg_$_1837
mrg_$_1837:
 %field_ptr_$_1840 = getelementptr %input$0, %input$0* %record_ptr_$_1835, i32 0, i32 1
 %res_$_1841 = load i8*, i8** %field_ptr_$_1840
 %temp_$_1842 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 1
 store i8* %res_$_1841, i8** %temp_$_1842
 %var_ptr_$_1846 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 2
 %res_$_1847 = load i8*, i8** %var_ptr_$_1846
 %temp_$_1849 = bitcast { i64, [8 x i8] }* @str_$_1848 to i8*
 %temp_$_1850 = call i64 @stringEqual (i8* %res_$_1847, i8* %temp_$_1849)
 %cnd_$_1851 = icmp ne i64 %temp_$_1850, 0
 br i1 %cnd_$_1851, label %thn_$_1843, label %els_$_1844
thn_$_1843:
 %lnk_$_1852 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1853 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1852
 %var_ptr_$_1854 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 1
 %res_$_1855 = load i8*, i8** %var_ptr_$_1854
 call void @look$16 (%$locals_tigermain* %load_$_1853, i8* %res_$_1855)
 br label %mrg_$_1845
els_$_1844:
 %var_ptr_$_1859 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 2
 %res_$_1860 = load i8*, i8** %var_ptr_$_1859
 %temp_$_1862 = bitcast { i64, [8 x i8] }* @str_$_1861 to i8*
 %temp_$_1863 = call i64 @stringEqual (i8* %res_$_1860, i8* %temp_$_1862)
 %cnd_$_1864 = icmp ne i64 %temp_$_1863, 0
 br i1 %cnd_$_1864, label %thn_$_1856, label %els_$_1857
thn_$_1856:
 %lnk_$_1865 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1866 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1865
 %var_ptr_$_1867 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 1
 %res_$_1868 = load i8*, i8** %var_ptr_$_1867
 call void @get$17 (%$locals_tigermain* %load_$_1866, i8* %res_$_1868)
 br label %mrg_$_1858
els_$_1857:
 %var_ptr_$_1872 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 2
 %res_$_1873 = load i8*, i8** %var_ptr_$_1872
 %temp_$_1875 = bitcast { i64, [4 x i8] }* @str_$_1874 to i8*
 %temp_$_1876 = call i64 @stringEqual (i8* %res_$_1873, i8* %temp_$_1875)
 %cnd_$_1877 = icmp ne i64 %temp_$_1876, 0
 br i1 %cnd_$_1877, label %thn_$_1869, label %els_$_1870
thn_$_1869:
 %lnk_$_1878 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1879 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1878
 %var_ptr_$_1880 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 1
 %res_$_1881 = load i8*, i8** %var_ptr_$_1880
 call void @use$19 (%$locals_tigermain* %load_$_1879, i8* %res_$_1881)
 br label %mrg_$_1871
els_$_1870:
 %var_ptr_$_1885 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 2
 %res_$_1886 = load i8*, i8** %var_ptr_$_1885
 %temp_$_1888 = bitcast { i64, [5 x i8] }* @str_$_1887 to i8*
 %temp_$_1889 = call i64 @stringEqual (i8* %res_$_1886, i8* %temp_$_1888)
 %cnd_$_1890 = icmp ne i64 %temp_$_1889, 0
 br i1 %cnd_$_1890, label %thn_$_1882, label %els_$_1883
thn_$_1882:
 %lnk_$_1891 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1892 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1891
 %var_ptr_$_1893 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 1
 %res_$_1894 = load i8*, i8** %var_ptr_$_1893
 call void @drop$18 (%$locals_tigermain* %load_$_1892, i8* %res_$_1894)
 br label %mrg_$_1884
els_$_1883:
 %var_ptr_$_1898 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 2
 %res_$_1899 = load i8*, i8** %var_ptr_$_1898
 %temp_$_1901 = bitcast { i64, [3 x i8] }* @str_$_1900 to i8*
 %temp_$_1902 = call i64 @stringEqual (i8* %res_$_1899, i8* %temp_$_1901)
 %cnd_$_1903 = icmp ne i64 %temp_$_1902, 0
 br i1 %cnd_$_1903, label %thn_$_1895, label %els_$_1896
thn_$_1895:
 %lnk_$_1904 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1905 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1904
 %var_ptr_$_1906 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 1
 %res_$_1907 = load i8*, i8** %var_ptr_$_1906
 call void @go$20 (%$locals_tigermain* %load_$_1905, i8* %res_$_1907)
 br label %mrg_$_1897
els_$_1896:
 %var_ptr_$_1911 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 2
 %res_$_1912 = load i8*, i8** %var_ptr_$_1911
 %temp_$_1914 = bitcast { i64, [4 x i8] }* @str_$_1913 to i8*
 %temp_$_1915 = call i64 @stringEqual (i8* %res_$_1912, i8* %temp_$_1914)
 %cnd_$_1916 = icmp ne i64 %temp_$_1915, 0
 br i1 %cnd_$_1916, label %thn_$_1908, label %els_$_1909
thn_$_1908:
 %lnk_$_1917 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1918 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1917
 %temp_$_1921 = bitcast { i64, [96 x i8] }* @str_$_1920 to i8*
 call void @print (i8* null, i8* %temp_$_1921)
 br label %mrg_$_1910
els_$_1909:
 %lnk_$_1922 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1923 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1922
 %lnk_$_1925 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1926 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1925
 %temp_$_1929 = bitcast { i64, [11 x i8] }* @str_$_1928 to i8*
 %lnk_$_1930 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1931 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1930
 %var_ptr_$_1933 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 2
 %res_$_1934 = load i8*, i8** %var_ptr_$_1933
 %lnk_$_1935 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 0
 %load_$_1936 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1935
 %var_ptr_$_1938 = getelementptr %$locals_handle_command$21, %$locals_handle_command$21* %locals_$_9, i32 0, i32 1
 %res_$_1939 = load i8*, i8** %var_ptr_$_1938
 %temp_$_1941 = bitcast { i64, [2 x i8] }* @str_$_1940 to i8*
 %ret_$_1942 = call i8* @concat (i8* null, i8* %res_$_1939, i8* %temp_$_1941)
 %ret_$_1943 = call i8* @concat (i8* null, i8* %res_$_1934, i8* %ret_$_1942)
 %ret_$_1944 = call i8* @concat (i8* null, i8* %temp_$_1929, i8* %ret_$_1943)
 call void @print (i8* null, i8* %ret_$_1944)
 br label %mrg_$_1910
mrg_$_1910:
 br label %mrg_$_1897
mrg_$_1897:
 br label %mrg_$_1884
mrg_$_1884:
 br label %mrg_$_1871
mrg_$_1871:
 br label %mrg_$_1858
mrg_$_1858:
 br label %mrg_$_1845
mrg_$_1845:
 ret void
}

define void @update$22 (%$locals_tigermain* %$sl) {
 %locals_$_10 = alloca %$locals_update$22
 %arg_$_1945 = getelementptr %$locals_update$22, %$locals_update$22* %locals_$_10, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_1945
 %lnk_$_1954 = getelementptr %$locals_update$22, %$locals_update$22* %locals_$_10, i32 0, i32 0
 %load_$_1955 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1954
 call void @handle_command$21 (%$locals_tigermain* %load_$_1955)
 %lnk_$_1949 = getelementptr %$locals_update$22, %$locals_update$22* %locals_$_10, i32 0, i32 0
 %load_$_1950 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1949
 %temp_$_1953 = bitcast { i64, [3 x i8] }* @str_$_1952 to i8*
 call void @print (i8* null, i8* %temp_$_1953)
 %lnk_$_1946 = getelementptr %$locals_update$22, %$locals_update$22* %locals_$_10, i32 0, i32 0
 %load_$_1947 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1946
 call void @flush (i8* null)
 %lnk_$_1956 = getelementptr %$locals_update$22, %$locals_update$22* %locals_$_10, i32 0, i32 0
 %load_$_1957 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1956
 call void @update$22 (%$locals_tigermain* %load_$_1957)
 ret void
}

define void @setup_level$23 (%$locals_tigermain* %$sl) {
 %temp_$_2068 = alloca i8*
 %temp_$_2059 = alloca i8*
 %temp_$_2033 = alloca i8*
 %temp_$_2020 = alloca i64
 %temp_$_2007 = alloca i64
 %temp_$_1994 = alloca i64
 %locals_$_11 = alloca %$locals_setup_level$23
 %arg_$_1958 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 store %$locals_tigermain* %$sl, %$locals_tigermain** %arg_$_1958
 %temp_$_1959 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 7
 store i64 0, i64* %temp_$_1959
 br label %test_$_1960
test_$_1960:
 %var_ptr_$_1963 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 7
 %res_$_1964 = load i64, i64* %var_ptr_$_1963
 %lnk_$_1965 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_1966 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1965
 %var_ptr_$_1967 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1966, i32 0, i32 14
 %res_$_1968 = load i64, i64* %var_ptr_$_1967
 %lnk_$_1969 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_1970 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1969
 %var_ptr_$_1971 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1970, i32 0, i32 13
 %res_$_1972 = load i64, i64* %var_ptr_$_1971
 %temp_$_1973 = mul i64 %res_$_1968, %res_$_1972
 %temp_$_1974 = sub i64 %temp_$_1973, 1
 %temp_$_1975 = icmp sle i64 %res_$_1964, %temp_$_1974
 %temp_$_1976 = zext i1 %temp_$_1975 to i64
 %cnd_$_1977 = icmp ne i64 %temp_$_1976, 0
 br i1 %cnd_$_1977, label %body_$_1961, label %mrg_$_1962
body_$_1961:
 %lnk_$_1978 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_1979 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1978
 %lnk_$_1981 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_1982 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_1981
 %var_ptr_$_1983 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_1982, i32 0, i32 9
 %res_$_1984 = load i8*, i8** %var_ptr_$_1983
 %var_ptr_$_1985 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 7
 %res_$_1986 = load i64, i64* %var_ptr_$_1985
 %ret_$_1987 = call i8* @substring (i8* null, i8* %res_$_1984, i64 %res_$_1986, i64 1)
 %temp_$_1988 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 6
 store i8* %ret_$_1987, i8** %temp_$_1988
 %temp_$_1989 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 5
 store i64 0, i64* %temp_$_1989
 %size_ptr_$_1990 = getelementptr %items$2, %items$2* null, i32 1
 %size_$_1991 = ptrtoint %items$2* %size_ptr_$_1990 to i64
 %record_ptr_$_1992 = call i8* @allocRecord (i64 %size_$_1991)
 %rec_$_1993 = bitcast i8* %record_ptr_$_1992 to %items$2*
 %var_ptr_$_1998 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 6
 %res_$_1999 = load i8*, i8** %var_ptr_$_1998
 %temp_$_2001 = bitcast { i64, [1 x i8] }* @str_$_2000 to i8*
 %temp_$_2002 = call i64 @stringEqual (i8* %res_$_1999, i8* %temp_$_2001)
 %cnd_$_2003 = icmp ne i64 %temp_$_2002, 0
 br i1 %cnd_$_2003, label %thn_$_1995, label %els_$_1996
thn_$_1995:
 %var_ptr_$_2004 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 5
 store i64 1, i64* %var_ptr_$_2004
 store i64 1, i64* %temp_$_1994
 br label %mrg_$_1997
els_$_1996:
 store i64 0, i64* %temp_$_1994
 br label %mrg_$_1997
mrg_$_1997:
 %res_$_2005 = load i64, i64* %temp_$_1994
 %field_ptr_$_2006 = getelementptr %items$2, %items$2* %rec_$_1993, i32 0, i32 0
 store i64 %res_$_2005, i64* %field_ptr_$_2006
 %var_ptr_$_2011 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 6
 %res_$_2012 = load i8*, i8** %var_ptr_$_2011
 %temp_$_2014 = bitcast { i64, [1 x i8] }* @str_$_2013 to i8*
 %temp_$_2015 = call i64 @stringEqual (i8* %res_$_2012, i8* %temp_$_2014)
 %cnd_$_2016 = icmp ne i64 %temp_$_2015, 0
 br i1 %cnd_$_2016, label %thn_$_2008, label %els_$_2009
thn_$_2008:
 %var_ptr_$_2017 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 5
 store i64 1, i64* %var_ptr_$_2017
 store i64 1, i64* %temp_$_2007
 br label %mrg_$_2010
els_$_2009:
 store i64 0, i64* %temp_$_2007
 br label %mrg_$_2010
mrg_$_2010:
 %res_$_2018 = load i64, i64* %temp_$_2007
 %field_ptr_$_2019 = getelementptr %items$2, %items$2* %rec_$_1993, i32 0, i32 1
 store i64 %res_$_2018, i64* %field_ptr_$_2019
 %var_ptr_$_2024 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 6
 %res_$_2025 = load i8*, i8** %var_ptr_$_2024
 %temp_$_2027 = bitcast { i64, [1 x i8] }* @str_$_2026 to i8*
 %temp_$_2028 = call i64 @stringEqual (i8* %res_$_2025, i8* %temp_$_2027)
 %cnd_$_2029 = icmp ne i64 %temp_$_2028, 0
 br i1 %cnd_$_2029, label %thn_$_2021, label %els_$_2022
thn_$_2021:
 %var_ptr_$_2030 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 5
 store i64 1, i64* %var_ptr_$_2030
 store i64 1, i64* %temp_$_2020
 br label %mrg_$_2023
els_$_2022:
 store i64 0, i64* %temp_$_2020
 br label %mrg_$_2023
mrg_$_2023:
 %res_$_2031 = load i64, i64* %temp_$_2020
 %field_ptr_$_2032 = getelementptr %items$2, %items$2* %rec_$_1993, i32 0, i32 2
 store i64 %res_$_2031, i64* %field_ptr_$_2032
 %var_ptr_$_2037 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 6
 %res_$_2038 = load i8*, i8** %var_ptr_$_2037
 %temp_$_2040 = bitcast { i64, [1 x i8] }* @str_$_2039 to i8*
 %temp_$_2041 = call i64 @stringEqual (i8* %res_$_2038, i8* %temp_$_2040)
 %cnd_$_2042 = icmp ne i64 %temp_$_2041, 0
 br i1 %cnd_$_2042, label %thn_$_2034, label %els_$_2035
thn_$_2034:
 %var_ptr_$_2043 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 5
 store i64 1, i64* %var_ptr_$_2043
 %size_ptr_$_2044 = getelementptr %exit$1, %exit$1* null, i32 1
 %size_$_2045 = ptrtoint %exit$1* %size_ptr_$_2044 to i64
 %record_ptr_$_2046 = call i8* @allocRecord (i64 %size_$_2045)
 %rec_$_2047 = bitcast i8* %record_ptr_$_2046 to %exit$1*
 %field_ptr_$_2048 = getelementptr %exit$1, %exit$1* %rec_$_2047, i32 0, i32 0
 store i64 1, i64* %field_ptr_$_2048
 store i8* %record_ptr_$_2046, i8** %temp_$_2033
 br label %mrg_$_2036
els_$_2035:
 store i8* null, i8** %temp_$_2033
 br label %mrg_$_2036
mrg_$_2036:
 %res_$_2049 = load i8*, i8** %temp_$_2033
 %field_ptr_$_2050 = getelementptr %items$2, %items$2* %rec_$_1993, i32 0, i32 3
 store i8* %res_$_2049, i8** %field_ptr_$_2050
 %temp_$_2051 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 4
 store i8* %record_ptr_$_1992, i8** %temp_$_2051
 %lnk_$_2052 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_2053 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2052
 %lnk_$_2055 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_2056 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2055
 %var_ptr_$_2057 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_2056, i32 0, i32 8
 %res_$_2058 = load i8*, i8** %var_ptr_$_2057
 %var_ptr_$_2063 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 5
 %res_$_2064 = load i64, i64* %var_ptr_$_2063
 %cnd_$_2065 = icmp ne i64 %res_$_2064, 0
 br i1 %cnd_$_2065, label %thn_$_2060, label %els_$_2061
thn_$_2060:
 %temp_$_2067 = bitcast { i64, [1 x i8] }* @str_$_2066 to i8*
 store i8* %temp_$_2067, i8** %temp_$_2059
 br label %mrg_$_2062
els_$_2061:
 %var_ptr_$_2072 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 6
 %res_$_2073 = load i8*, i8** %var_ptr_$_2072
 %temp_$_2075 = bitcast { i64, [1 x i8] }* @str_$_2074 to i8*
 %temp_$_2076 = call i64 @stringEqual (i8* %res_$_2073, i8* %temp_$_2075)
 %cnd_$_2077 = icmp ne i64 %temp_$_2076, 0
 br i1 %cnd_$_2077, label %thn_$_2069, label %els_$_2070
thn_$_2069:
 %temp_$_2079 = bitcast { i64, [1 x i8] }* @str_$_2078 to i8*
 store i8* %temp_$_2079, i8** %temp_$_2068
 br label %mrg_$_2071
els_$_2070:
 %var_ptr_$_2080 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 6
 %res_$_2081 = load i8*, i8** %var_ptr_$_2080
 store i8* %res_$_2081, i8** %temp_$_2068
 br label %mrg_$_2071
mrg_$_2071:
 %res_$_2082 = load i8*, i8** %temp_$_2068
 store i8* %res_$_2082, i8** %temp_$_2059
 br label %mrg_$_2062
mrg_$_2062:
 %res_$_2083 = load i8*, i8** %temp_$_2059
 %ret_$_2084 = call i8* @concat (i8* null, i8* %res_$_2058, i8* %res_$_2083)
 %lnk_$_2085 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_2086 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2085
 %var_ptr_$_2087 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_2086, i32 0, i32 8
 store i8* %ret_$_2084, i8** %var_ptr_$_2087
 %var_ptr_$_2090 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 6
 %res_$_2091 = load i8*, i8** %var_ptr_$_2090
 %temp_$_2093 = bitcast { i64, [1 x i8] }* @str_$_2092 to i8*
 %temp_$_2094 = call i64 @stringNotEq (i8* %res_$_2091, i8* %temp_$_2093)
 %cnd_$_2095 = icmp ne i64 %temp_$_2094, 0
 br i1 %cnd_$_2095, label %thn_$_2088, label %mrg_$_2089
thn_$_2088:
 %lnk_$_2096 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_2097 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2096
 %var_ptr_$_2098 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_2097, i32 0, i32 12
 %var_ptr_$_2099 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 7
 %res_$_2100 = load i64, i64* %var_ptr_$_2099
 %lnk_$_2101 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_2102 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2101
 %var_ptr_$_2103 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_2102, i32 0, i32 14
 %res_$_2104 = load i64, i64* %var_ptr_$_2103
 %temp_$_2105 = sub i64 %res_$_2100, %res_$_2104
 %load_$_2106 = load i8*, i8** %var_ptr_$_2098
 %len_ptr_$_2109 = bitcast i8* %load_$_2106 to i64*
 %len_ptr_$_2110 = getelementptr i64, i64* %len_ptr_$_2109, i32 -1
 %len_$_2111 = load i64, i64* %len_ptr_$_2110
 %cnd_$_2112 = icmp sle i64 %len_$_2111, %temp_$_2105
 br i1 %cnd_$_2112, label %thn_$_2107, label %mrg_$_2108
thn_$_2107:
 call i64 @arrInxError (i64 %temp_$_2105)
 br label %mrg_$_2108
mrg_$_2108:
 %array_ptr_$_2113 = bitcast i8* %load_$_2106 to i8**
 %entry_ptr_$_2114 = getelementptr i8*, i8** %array_ptr_$_2113, i64 %temp_$_2105
 %res_$_2115 = load i8*, i8** %entry_ptr_$_2114
 %temp_$_2116 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 3
 store i8* %res_$_2115, i8** %temp_$_2116
 %lnk_$_2117 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_2118 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2117
 %var_ptr_$_2119 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_2118, i32 0, i32 12
 %var_ptr_$_2120 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 7
 %res_$_2121 = load i64, i64* %var_ptr_$_2120
 %temp_$_2122 = sub i64 %res_$_2121, 1
 %load_$_2123 = load i8*, i8** %var_ptr_$_2119
 %len_ptr_$_2126 = bitcast i8* %load_$_2123 to i64*
 %len_ptr_$_2127 = getelementptr i64, i64* %len_ptr_$_2126, i32 -1
 %len_$_2128 = load i64, i64* %len_ptr_$_2127
 %cnd_$_2129 = icmp sle i64 %len_$_2128, %temp_$_2122
 br i1 %cnd_$_2129, label %thn_$_2124, label %mrg_$_2125
thn_$_2124:
 call i64 @arrInxError (i64 %temp_$_2122)
 br label %mrg_$_2125
mrg_$_2125:
 %array_ptr_$_2130 = bitcast i8* %load_$_2123 to i8**
 %entry_ptr_$_2131 = getelementptr i8*, i8** %array_ptr_$_2130, i64 %temp_$_2122
 %res_$_2132 = load i8*, i8** %entry_ptr_$_2131
 %temp_$_2133 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 2
 store i8* %res_$_2132, i8** %temp_$_2133
 %size_ptr_$_2134 = getelementptr %room$3, %room$3* null, i32 1
 %size_$_2135 = ptrtoint %room$3* %size_ptr_$_2134 to i64
 %record_ptr_$_2136 = call i8* @allocRecord (i64 %size_$_2135)
 %rec_$_2137 = bitcast i8* %record_ptr_$_2136 to %room$3*
 %var_ptr_$_2138 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 3
 %res_$_2139 = load i8*, i8** %var_ptr_$_2138
 %field_ptr_$_2140 = getelementptr %room$3, %room$3* %rec_$_2137, i32 0, i32 0
 store i8* %res_$_2139, i8** %field_ptr_$_2140
 %field_ptr_$_2141 = getelementptr %room$3, %room$3* %rec_$_2137, i32 0, i32 1
 store i8* null, i8** %field_ptr_$_2141
 %field_ptr_$_2142 = getelementptr %room$3, %room$3* %rec_$_2137, i32 0, i32 2
 store i8* null, i8** %field_ptr_$_2142
 %var_ptr_$_2143 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 2
 %res_$_2144 = load i8*, i8** %var_ptr_$_2143
 %field_ptr_$_2145 = getelementptr %room$3, %room$3* %rec_$_2137, i32 0, i32 3
 store i8* %res_$_2144, i8** %field_ptr_$_2145
 %var_ptr_$_2146 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 4
 %res_$_2147 = load i8*, i8** %var_ptr_$_2146
 %field_ptr_$_2148 = getelementptr %room$3, %room$3* %rec_$_2137, i32 0, i32 4
 store i8* %res_$_2147, i8** %field_ptr_$_2148
 %temp_$_2149 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 1
 store i8* %record_ptr_$_2136, i8** %temp_$_2149
 %var_ptr_$_2190 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 6
 %res_$_2191 = load i8*, i8** %var_ptr_$_2190
 %temp_$_2193 = bitcast { i64, [1 x i8] }* @str_$_2192 to i8*
 %temp_$_2194 = call i64 @stringEqual (i8* %res_$_2191, i8* %temp_$_2193)
 %cnd_$_2195 = icmp ne i64 %temp_$_2194, 0
 br i1 %cnd_$_2195, label %thn_$_2188, label %mrg_$_2189
thn_$_2188:
 %var_ptr_$_2196 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 1
 %res_$_2197 = load i8*, i8** %var_ptr_$_2196
 %lnk_$_2198 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_2199 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2198
 %var_ptr_$_2200 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_2199, i32 0, i32 10
 store i8* %res_$_2197, i8** %var_ptr_$_2200
 br label %mrg_$_2189
mrg_$_2189:
 %var_ptr_$_2171 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 3
 %res_$_2172 = load i8*, i8** %var_ptr_$_2171
 %left_int_$_2173 = ptrtoint i8* %res_$_2172 to i64
 %right_int_$_2174 = ptrtoint i8* null to i64
 %cnd_$_2175 = icmp ne i64 %left_int_$_2173, %right_int_$_2174
 %zext_$_2176 = zext i1 %cnd_$_2175 to i64
 %cnd_$_2177 = icmp ne i64 %zext_$_2176, 0
 br i1 %cnd_$_2177, label %thn_$_2169, label %mrg_$_2170
thn_$_2169:
 %var_ptr_$_2178 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 1
 %res_$_2179 = load i8*, i8** %var_ptr_$_2178
 %var_ptr_$_2180 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 3
 %load_$_2181 = load i8*, i8** %var_ptr_$_2180
 %record_ptr_$_2182 = bitcast i8* %load_$_2181 to %room$3*
 %int_of_ptr_$_2185 = ptrtoint i8* %load_$_2181 to i64
 %cnd_$_2186 = icmp eq i64 %int_of_ptr_$_2185, 0
 br i1 %cnd_$_2186, label %thn_$_2183, label %mrg_$_2184
thn_$_2183:
 call i64 @recFieldError ()
 br label %mrg_$_2184
mrg_$_2184:
 %field_ptr_$_2187 = getelementptr %room$3, %room$3* %record_ptr_$_2182, i32 0, i32 2
 store i8* %res_$_2179, i8** %field_ptr_$_2187
 br label %mrg_$_2170
mrg_$_2170:
 %var_ptr_$_2152 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 2
 %res_$_2153 = load i8*, i8** %var_ptr_$_2152
 %left_int_$_2154 = ptrtoint i8* %res_$_2153 to i64
 %right_int_$_2155 = ptrtoint i8* null to i64
 %cnd_$_2156 = icmp ne i64 %left_int_$_2154, %right_int_$_2155
 %zext_$_2157 = zext i1 %cnd_$_2156 to i64
 %cnd_$_2158 = icmp ne i64 %zext_$_2157, 0
 br i1 %cnd_$_2158, label %thn_$_2150, label %mrg_$_2151
thn_$_2150:
 %var_ptr_$_2159 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 1
 %res_$_2160 = load i8*, i8** %var_ptr_$_2159
 %var_ptr_$_2161 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 2
 %load_$_2162 = load i8*, i8** %var_ptr_$_2161
 %record_ptr_$_2163 = bitcast i8* %load_$_2162 to %room$3*
 %int_of_ptr_$_2166 = ptrtoint i8* %load_$_2162 to i64
 %cnd_$_2167 = icmp eq i64 %int_of_ptr_$_2166, 0
 br i1 %cnd_$_2167, label %thn_$_2164, label %mrg_$_2165
thn_$_2164:
 call i64 @recFieldError ()
 br label %mrg_$_2165
mrg_$_2165:
 %field_ptr_$_2168 = getelementptr %room$3, %room$3* %record_ptr_$_2163, i32 0, i32 1
 store i8* %res_$_2160, i8** %field_ptr_$_2168
 br label %mrg_$_2151
mrg_$_2151:
 %var_ptr_$_2201 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 1
 %res_$_2202 = load i8*, i8** %var_ptr_$_2201
 %lnk_$_2203 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 0
 %load_$_2204 = load %$locals_tigermain*, %$locals_tigermain** %lnk_$_2203
 %var_ptr_$_2205 = getelementptr %$locals_tigermain, %$locals_tigermain* %load_$_2204, i32 0, i32 12
 %var_ptr_$_2206 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 7
 %res_$_2207 = load i64, i64* %var_ptr_$_2206
 %load_$_2208 = load i8*, i8** %var_ptr_$_2205
 %len_ptr_$_2211 = bitcast i8* %load_$_2208 to i64*
 %len_ptr_$_2212 = getelementptr i64, i64* %len_ptr_$_2211, i32 -1
 %len_$_2213 = load i64, i64* %len_ptr_$_2212
 %cnd_$_2214 = icmp sle i64 %len_$_2213, %res_$_2207
 br i1 %cnd_$_2214, label %thn_$_2209, label %mrg_$_2210
thn_$_2209:
 call i64 @arrInxError (i64 %res_$_2207)
 br label %mrg_$_2210
mrg_$_2210:
 %array_ptr_$_2215 = bitcast i8* %load_$_2208 to i8**
 %entry_ptr_$_2216 = getelementptr i8*, i8** %array_ptr_$_2215, i64 %res_$_2207
 store i8* %res_$_2202, i8** %entry_ptr_$_2216
 br label %mrg_$_2089
mrg_$_2089:
 %var_ptr_$_2217 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 7
 %res_$_2218 = load i64, i64* %var_ptr_$_2217
 %temp_$_2219 = add i64 %res_$_2218, 1
 %var_ptr_$_2220 = getelementptr %$locals_setup_level$23, %$locals_setup_level$23* %locals_$_11, i32 0, i32 7
 store i64 %temp_$_2219, i64* %var_ptr_$_2220
 br label %test_$_1960
mrg_$_1962:
 ret void
}

define void @tigermain (i8* %$sl) {
 %locals_$_12 = alloca %$locals_tigermain
 %arg_$_2221 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 0
 store i8* %$sl, i8** %arg_$_2221
 %temp_$_2222 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 14
 store i64 9, i64* %temp_$_2222
 %temp_$_2223 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 13
 store i64 9, i64* %temp_$_2223
 %init_ptr_$_2224 = alloca i8*
 store i8* null, i8** %init_ptr_$_2224
 %init_ptr_$_2225 = bitcast i8** %init_ptr_$_2224 to i8*
 %var_ptr_$_2226 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 14
 %res_$_2227 = load i64, i64* %var_ptr_$_2226
 %var_ptr_$_2228 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 13
 %res_$_2229 = load i64, i64* %var_ptr_$_2228
 %temp_$_2230 = mul i64 %res_$_2227, %res_$_2229
 %init_size_ptr_$_2231 = getelementptr i8*, i8** null, i32 1
 %init_size_$_2232 = ptrtoint i8** %init_size_ptr_$_2231 to i64
 %array_ptr_$_2233 = call i8* @initArray (i64 %temp_$_2230, i64 %init_size_$_2232, i8* %init_ptr_$_2225)
 %temp_$_2234 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 12
 store i8* %array_ptr_$_2233, i8** %temp_$_2234
 %size_ptr_$_2235 = getelementptr %items$2, %items$2* null, i32 1
 %size_$_2236 = ptrtoint %items$2* %size_ptr_$_2235 to i64
 %record_ptr_$_2237 = call i8* @allocRecord (i64 %size_$_2236)
 %rec_$_2238 = bitcast i8* %record_ptr_$_2237 to %items$2*
 %field_ptr_$_2239 = getelementptr %items$2, %items$2* %rec_$_2238, i32 0, i32 0
 store i64 0, i64* %field_ptr_$_2239
 %field_ptr_$_2240 = getelementptr %items$2, %items$2* %rec_$_2238, i32 0, i32 1
 store i64 0, i64* %field_ptr_$_2240
 %field_ptr_$_2241 = getelementptr %items$2, %items$2* %rec_$_2238, i32 0, i32 2
 store i64 0, i64* %field_ptr_$_2241
 %field_ptr_$_2242 = getelementptr %items$2, %items$2* %rec_$_2238, i32 0, i32 3
 store i8* null, i8** %field_ptr_$_2242
 %temp_$_2243 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 11
 store i8* %record_ptr_$_2237, i8** %temp_$_2243
 %temp_$_2244 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 10
 store i8* null, i8** %temp_$_2244
 %temp_$_2246 = bitcast { i64, [81 x i8] }* @str_$_2245 to i8*
 %temp_$_2247 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 9
 store i8* %temp_$_2246, i8** %temp_$_2247
 %temp_$_2249 = bitcast { i64, [0 x i8] }* @str_$_2248 to i8*
 %temp_$_2250 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 8
 store i8* %temp_$_2249, i8** %temp_$_2250
 call void @setup_level$23 (%$locals_tigermain* %locals_$_12)
 %temp_$_2262 = bitcast { i64, [30 x i8] }* @str_$_2261 to i8*
 call void @print (i8* null, i8* %temp_$_2262)
 %var_ptr_$_2258 = getelementptr %$locals_tigermain, %$locals_tigermain* %locals_$_12, i32 0, i32 10
 %res_$_2259 = load i8*, i8** %var_ptr_$_2258
 call void @print_room$14 (%$locals_tigermain* %locals_$_12, i8* %res_$_2259)
 %temp_$_2257 = bitcast { i64, [24 x i8] }* @str_$_2256 to i8*
 call void @print (i8* null, i8* %temp_$_2257)
 %temp_$_2254 = bitcast { i64, [3 x i8] }* @str_$_2253 to i8*
 call void @print (i8* null, i8* %temp_$_2254)
 call void @flush (i8* null)
 call void @update$22 (%$locals_tigermain* %locals_$_12)
 ret void
}
