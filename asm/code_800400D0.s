# Mario Kart 64 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel mio0decode
/* 040CD0 800400D0 8C870008 */  lw    $a3, 8($a0)
/* 040CD4 800400D4 8C99000C */  lw    $t9, 0xc($a0)
/* 040CD8 800400D8 8C980004 */  lw    $t8, 4($a0)
/* 040CDC 800400DC 00E43820 */  add   $a3, $a3, $a0
/* 040CE0 800400E0 0324C820 */  add   $t9, $t9, $a0
/* 040CE4 800400E4 00003025 */  move  $a2, $zero
/* 040CE8 800400E8 20840010 */  addi  $a0, $a0, 0x10
/* 040CEC 800400EC 0305C020 */  add   $t8, $t8, $a1
glabel .L800400F0
/* 040CF0 800400F0 54C00005 */  bnel  $a2, $zero, .L80040108
/* 040CF4 800400F4 0100482A */   slt   $t1, $t0, $zero
/* 040CF8 800400F8 8C880000 */  lw    $t0, ($a0)
/* 040CFC 800400FC 24060020 */  li    $a2, 32
/* 040D00 80040100 20840004 */  addi  $a0, $a0, 4
/* 040D04 80040104 0100482A */  slt   $t1, $t0, $zero
glabel .L80040108
/* 040D08 80040108 51200007 */  beql  $t1, $zero, .L80040128
/* 040D0C 8004010C 94EA0000 */   lhu   $t2, ($a3)
/* 040D10 80040110 832A0000 */  lb    $t2, ($t9)
/* 040D14 80040114 23390001 */  addi  $t9, $t9, 1
/* 040D18 80040118 20A50001 */  addi  $a1, $a1, 1
/* 040D1C 8004011C 1000000D */  b     .L80040154
/* 040D20 80040120 A0AAFFFF */   sb    $t2, -1($a1)
/* 040D24 80040124 94EA0000 */  lhu   $t2, ($a3)
glabel .L80040128
/* 040D28 80040128 20E70002 */  addi  $a3, $a3, 2
/* 040D2C 8004012C 000A5B02 */  srl   $t3, $t2, 0xc
/* 040D30 80040130 314A0FFF */  andi  $t2, $t2, 0xfff
/* 040D34 80040134 00AA4822 */  sub   $t1, $a1, $t2
/* 040D38 80040138 216B0003 */  addi  $t3, $t3, 3
glabel .L8004013C
/* 040D3C 8004013C 812AFFFF */  lb    $t2, -1($t1)
/* 040D40 80040140 216BFFFF */  addi  $t3, $t3, -1
/* 040D44 80040144 21290001 */  addi  $t1, $t1, 1
/* 040D48 80040148 20A50001 */  addi  $a1, $a1, 1
/* 040D4C 8004014C 1560FFFB */  bnez  $t3, .L8004013C
/* 040D50 80040150 A0AAFFFF */   sb    $t2, -1($a1)
glabel .L80040154
/* 040D54 80040154 00084040 */  sll   $t0, $t0, 1
/* 040D58 80040158 14B8FFE5 */  bne   $a1, $t8, .L800400F0
/* 040D5C 8004015C 20C6FFFF */   addi  $a2, $a2, -1
/* 040D60 80040160 03E00008 */  jr    $ra
/* 040D64 80040164 00000000 */   nop   

/* 040D68 80040168 00000000 */  nop   
/* 040D6C 8004016C 00000000 */  nop   
glabel D_80040170
/* 040D70 80040170 00000000 */  nop   
glabel func_80040174
/* 040D74 80040174 23BDFED0 */  addi  $sp, $sp, -0x130
/* 040D78 80040178 AFA60128 */  sw    $a2, 0x128($sp)
/* 040D7C 8004017C AFBE0104 */  sw    $fp, 0x104($sp)
/* 040D80 80040180 00C07025 */  move  $t6, $a2
/* 040D84 80040184 AFB00124 */  sw    $s0, 0x124($sp)
/* 040D88 80040188 AFB10120 */  sw    $s1, 0x120($sp)
/* 040D8C 8004018C AFB2011C */  sw    $s2, 0x11c($sp)
/* 040D90 80040190 AFB30118 */  sw    $s3, 0x118($sp)
/* 040D94 80040194 AFB40114 */  sw    $s4, 0x114($sp)
/* 040D98 80040198 AFB50110 */  sw    $s5, 0x110($sp)
/* 040D9C 8004019C AFB6010C */  sw    $s6, 0x10c($sp)
/* 040DA0 800401A0 AFB70108 */  sw    $s7, 0x108($sp)
/* 040DA4 800401A4 AFBF0100 */  sw    $ra, 0x100($sp)
/* 040DA8 800401A8 00004825 */  move  $t1, $zero
/* 040DAC 800401AC 00005825 */  move  $t3, $zero
/* 040DB0 800401B0 240A0080 */  li    $t2, 128
/* 040DB4 800401B4 20C60001 */  addi  $a2, $a2, 1
/* 040DB8 800401B8 00804025 */  move  $t0, $a0
/* 040DBC 800401BC 0000F025 */  move  $fp, $zero
glabel .L800401C0
/* 040DC0 800401C0 01057820 */  add   $t7, $t0, $a1
/* 040DC4 800401C4 008F082A */  slt   $at, $a0, $t7
/* 040DC8 800401C8 50200038 */  beql  $at, $zero, .L800402AC
/* 040DCC 800401CC 24010080 */   li    $at, 128
/* 040DD0 800401D0 0411004A */  bal   func_800402FC
/* 040DD4 800401D4 0080C825 */   move  $t9, $a0
/* 040DD8 800401D8 28610003 */  slti  $at, $v1, 3
/* 040DDC 800401DC 00406025 */  move  $t4, $v0
/* 040DE0 800401E0 14200023 */  bnez  $at, .L80040270
/* 040DE4 800401E4 00606825 */   move  $t5, $v1
/* 040DE8 800401E8 04110044 */  bal   func_800402FC
/* 040DEC 800401EC 20990001 */   addi  $t9, $a0, 1
/* 040DF0 800401F0 21B90001 */  addi  $t9, $t5, 1
/* 040DF4 800401F4 0323082A */  slt   $at, $t9, $v1
/* 040DF8 800401F8 50200011 */  beql  $at, $zero, .L80040240
/* 040DFC 800401FC 008CC822 */   sub   $t9, $a0, $t4
/* 040E00 80040200 80980000 */  lb    $t8, ($a0)
/* 040E04 80040204 012A4825 */  or    $t1, $t1, $t2
/* 040E08 80040208 000A5042 */  srl   $t2, $t2, 1
/* 040E0C 8004020C 20840001 */  addi  $a0, $a0, 1
/* 040E10 80040210 20C60001 */  addi  $a2, $a2, 1
/* 040E14 80040214 216B0001 */  addi  $t3, $t3, 1
/* 040E18 80040218 15400006 */  bnez  $t2, .L80040234
/* 040E1C 8004021C A0D8FFFF */   sb    $t8, -1($a2)
/* 040E20 80040220 A1C90000 */  sb    $t1, ($t6)
/* 040E24 80040224 00C07025 */  move  $t6, $a2
/* 040E28 80040228 20C60001 */  addi  $a2, $a2, 1
/* 040E2C 8004022C 00004825 */  move  $t1, $zero
/* 040E30 80040230 240A0080 */  li    $t2, 128
glabel .L80040234
/* 040E34 80040234 00606825 */  move  $t5, $v1
/* 040E38 80040238 00406025 */  move  $t4, $v0
/* 040E3C 8004023C 008CC822 */  sub   $t9, $a0, $t4
glabel .L80040240
/* 040E40 80040240 0328C822 */  sub   $t9, $t9, $t0
/* 040E44 80040244 232CFFFF */  addi  $t4, $t9, -1
/* 040E48 80040248 A0CC0000 */  sb    $t4, ($a2)
/* 040E4C 8004024C 21B9FFFD */  addi  $t9, $t5, -3
/* 040E50 80040250 000C6202 */  srl   $t4, $t4, 8
/* 040E54 80040254 0019C900 */  sll   $t9, $t9, 4
/* 040E58 80040258 318C000F */  andi  $t4, $t4, 0xf
/* 040E5C 8004025C 032CC825 */  or    $t9, $t9, $t4
/* 040E60 80040260 A0D90001 */  sb    $t9, 1($a2)
/* 040E64 80040264 20C60002 */  addi  $a2, $a2, 2
/* 040E68 80040268 10000006 */  b     .L80040284
/* 040E6C 8004026C 008D2020 */   add   $a0, $a0, $t5
glabel .L80040270
/* 040E70 80040270 80980000 */  lb    $t8, ($a0)
/* 040E74 80040274 012A4825 */  or    $t1, $t1, $t2
/* 040E78 80040278 20840001 */  addi  $a0, $a0, 1
/* 040E7C 8004027C 20C60001 */  addi  $a2, $a2, 1
/* 040E80 80040280 A0D8FFFF */  sb    $t8, -1($a2)
glabel .L80040284
/* 040E84 80040284 000A5042 */  srl   $t2, $t2, 1
/* 040E88 80040288 1540FFCD */  bnez  $t2, .L800401C0
/* 040E8C 8004028C 216B0001 */   addi  $t3, $t3, 1
/* 040E90 80040290 A1C90000 */  sb    $t1, ($t6)
/* 040E94 80040294 00C07025 */  move  $t6, $a2
/* 040E98 80040298 20C60001 */  addi  $a2, $a2, 1
/* 040E9C 8004029C 00004825 */  move  $t1, $zero
/* 040EA0 800402A0 1000FFC7 */  b     .L800401C0
/* 040EA4 800402A4 240A0080 */   li    $t2, 128
/* 040EA8 800402A8 24010080 */  li    $at, 128
glabel .L800402AC
/* 040EAC 800402AC 11410002 */  beq   $t2, $at, .L800402B8
/* 040EB0 800402B0 00000000 */   nop   
/* 040EB4 800402B4 A1C90000 */  sb    $t1, ($t6)
glabel .L800402B8
/* 040EB8 800402B8 3C088004 */  lui   $t0, %hi(D_80040170) # $t0, 0x8004
/* 040EBC 800402BC 25080170 */  addiu $t0, %lo(D_80040170) # addiu $t0, $t0, 0x170
/* 040EC0 800402C0 AD0B0000 */  sw    $t3, ($t0)
/* 040EC4 800402C4 8FBF0100 */  lw    $ra, 0x100($sp)
/* 040EC8 800402C8 8FA70128 */  lw    $a3, 0x128($sp)
/* 040ECC 800402CC 8FBE0104 */  lw    $fp, 0x104($sp)
/* 040ED0 800402D0 8FB70108 */  lw    $s7, 0x108($sp)
/* 040ED4 800402D4 8FB6010C */  lw    $s6, 0x10c($sp)
/* 040ED8 800402D8 8FB50110 */  lw    $s5, 0x110($sp)
/* 040EDC 800402DC 8FB40114 */  lw    $s4, 0x114($sp)
/* 040EE0 800402E0 8FB30118 */  lw    $s3, 0x118($sp)
/* 040EE4 800402E4 8FB2011C */  lw    $s2, 0x11c($sp)
/* 040EE8 800402E8 8FB10120 */  lw    $s1, 0x120($sp)
/* 040EEC 800402EC 8FB00124 */  lw    $s0, 0x124($sp)
/* 040EF0 800402F0 23BD0130 */  addi  $sp, $sp, 0x130
/* 040EF4 800402F4 03E00008 */  jr    $ra
/* 040EF8 800402F8 00C71022 */   sub   $v0, $a2, $a3

glabel func_800402FC
/* 040EFC 800402FC 0328C022 */  sub   $t8, $t9, $t0
/* 040F00 80040300 2B011001 */  slti  $at, $t8, 0x1001
/* 040F04 80040304 14200002 */  bnez  $at, .L80040310
/* 040F08 80040308 0000A025 */   move  $s4, $zero
/* 040F0C 8004030C 2314F000 */  addi  $s4, $t8, -0x1000
glabel .L80040310
/* 040F10 80040310 00B8A822 */  sub   $s5, $a1, $t8
/* 040F14 80040314 2AA10013 */  slti  $at, $s5, 0x13
/* 040F18 80040318 54200003 */  bnel  $at, $zero, .L80040328
/* 040F1C 8004031C 2AA10003 */   slti  $at, $s5, 3
/* 040F20 80040320 24150012 */  li    $s5, 18
/* 040F24 80040324 2AA10003 */  slti  $at, $s5, 3
glabel .L80040328
/* 040F28 80040328 50200005 */  beql  $at, $zero, .L80040340
/* 040F2C 8004032C 24160003 */   li    $s6, 3
/* 040F30 80040330 00001025 */  move  $v0, $zero
/* 040F34 80040334 03E00008 */  jr    $ra
/* 040F38 80040338 00001825 */   move  $v1, $zero

/* 040F3C 8004033C 24160003 */  li    $s6, 3
glabel .L80040340
/* 040F40 80040340 0298082A */  slt   $at, $s4, $t8
/* 040F44 80040344 50200058 */  beql  $at, $zero, .L800404A8
/* 040F48 80040348 2AC10004 */   slti  $at, $s6, 4
/* 040F4C 8004034C 0316B820 */  add   $s7, $t8, $s6
/* 040F50 80040350 01189020 */  add   $s2, $t0, $t8
/* 040F54 80040354 01149820 */  add   $s3, $t0, $s4
/* 040F58 80040358 02F4B822 */  sub   $s7, $s7, $s4
/* 040F5C 8004035C 02F6082A */  slt   $at, $s7, $s6
/* 040F60 80040360 5420000E */  bnel  $at, $zero, .L8004039C
/* 040F64 80040364 92110000 */   lbu   $s1, ($s0)
/* 040F68 80040368 00168A00 */  sll   $s1, $s6, 8
/* 040F6C 8004036C 02368025 */  or    $s0, $s1, $s6
/* 040F70 80040370 00108C00 */  sll   $s1, $s0, 0x10
/* 040F74 80040374 02118025 */  or    $s0, $s0, $s1
/* 040F78 80040378 03A08825 */  move  $s1, $sp
/* 040F7C 8004037C 24020040 */  li    $v0, 64
glabel .L80040380
/* 040F80 80040380 2042FFFF */  addi  $v0, $v0, -1
/* 040F84 80040384 AE300000 */  sw    $s0, ($s1)
/* 040F88 80040388 1440FFFD */  bnez  $v0, .L80040380
/* 040F8C 8004038C 22310004 */   addi  $s1, $s1, 4
/* 040F90 80040390 02408025 */  move  $s0, $s2
/* 040F94 80040394 22C3FFFF */  addi  $v1, $s6, -1
/* 040F98 80040398 92110000 */  lbu   $s1, ($s0)
glabel .L8004039C
/* 040F9C 8004039C 22100001 */  addi  $s0, $s0, 1
/* 040FA0 800403A0 023D1020 */  add   $v0, $s1, $sp
/* 040FA4 800403A4 A0430000 */  sb    $v1, ($v0)
/* 040FA8 800403A8 2063FFFF */  addi  $v1, $v1, -1
/* 040FAC 800403AC 0463FFFB */  bgezl $v1, .L8004039C
/* 040FB0 800403B0 92110000 */   lbu   $s1, ($s0)
/* 040FB4 800403B4 02769820 */  add   $s3, $s3, $s6
/* 040FB8 800403B8 2273FFFF */  addi  $s3, $s3, -1
/* 040FBC 800403BC 02201025 */  move  $v0, $s1
glabel .L800403C0
/* 040FC0 800403C0 92630000 */  lbu   $v1, ($s3)
/* 040FC4 800403C4 50620006 */  beql  $v1, $v0, .L800403E0
/* 040FC8 800403C8 22CFFFFE */   addi  $t7, $s6, -2
/* 040FCC 800403CC 007D8820 */  add   $s1, $v1, $sp
/* 040FD0 800403D0 92300000 */  lbu   $s0, ($s1)
/* 040FD4 800403D4 1000FFFA */  b     .L800403C0
/* 040FD8 800403D8 02709820 */   add   $s3, $s3, $s0
/* 040FDC 800403DC 22CFFFFE */  addi  $t7, $s6, -2
glabel .L800403E0
/* 040FE0 800403E0 01F23820 */  add   $a3, $t7, $s2
glabel .L800403E4
/* 040FE4 800403E4 05E00011 */  bltz  $t7, .L8004042C
/* 040FE8 800403E8 2273FFFF */   addi  $s3, $s3, -1
/* 040FEC 800403EC 92630000 */  lbu   $v1, ($s3)
/* 040FF0 800403F0 90F00000 */  lbu   $s0, ($a3)
/* 040FF4 800403F4 5070000B */  beql  $v1, $s0, .L80040424
/* 040FF8 800403F8 20E7FFFF */   addi  $a3, $a3, -1
/* 040FFC 800403FC 007D8820 */  add   $s1, $v1, $sp
/* 041000 80040400 92300000 */  lbu   $s0, ($s1)
/* 041004 80040404 02CF1822 */  sub   $v1, $s6, $t7
/* 041008 80040408 0203082A */  slt   $at, $s0, $v1
/* 04100C 8004040C 10200002 */  beqz  $at, .L80040418
/* 041010 80040410 00000000 */   nop   
/* 041014 80040414 00608025 */  move  $s0, $v1
glabel .L80040418
/* 041018 80040418 1000FFE9 */  b     .L800403C0
/* 04101C 8004041C 02709820 */   add   $s3, $s3, $s0
/* 041020 80040420 20E7FFFF */  addi  $a3, $a3, -1
glabel .L80040424
/* 041024 80040424 1000FFEF */  b     .L800403E4
/* 041028 80040428 21EFFFFF */   addi  $t7, $t7, -1
glabel .L8004042C
/* 04102C 8004042C 22730001 */  addi  $s3, $s3, 1
/* 041030 80040430 02748022 */  sub   $s0, $s3, $s4
/* 041034 80040434 03147822 */  sub   $t7, $t8, $s4
/* 041038 80040438 02088022 */  sub   $s0, $s0, $t0
/* 04103C 8004043C 020F082A */  slt   $at, $s0, $t7
/* 041040 80040440 50200019 */  beql  $at, $zero, .L800404A8
/* 041044 80040444 2AC10004 */   slti  $at, $s6, 4
/* 041048 80040448 01148820 */  add   $s1, $t0, $s4
/* 04104C 8004044C 02368820 */  add   $s1, $s1, $s6
/* 041050 80040450 03367820 */  add   $t7, $t9, $s6
/* 041054 80040454 02308820 */  add   $s1, $s1, $s0
glabel .L80040458
/* 041058 80040458 02D5082A */  slt   $at, $s6, $s5
/* 04105C 8004045C 5020000A */  beql  $at, $zero, .L80040488
/* 041060 80040460 02901020 */   add   $v0, $s4, $s0
/* 041064 80040464 91F20000 */  lbu   $s2, ($t7)
/* 041068 80040468 92330000 */  lbu   $s3, ($s1)
/* 04106C 8004046C 56530009 */  bnel  $s2, $s3, .L80040494
/* 041070 80040470 0290F020 */   add   $fp, $s4, $s0
/* 041074 80040474 21EF0001 */  addi  $t7, $t7, 1
/* 041078 80040478 22310001 */  addi  $s1, $s1, 1
/* 04107C 8004047C 1000FFF6 */  b     .L80040458
/* 041080 80040480 22D60001 */   addi  $s6, $s6, 1
/* 041084 80040484 02901020 */  add   $v0, $s4, $s0
glabel .L80040488
/* 041088 80040488 03E00008 */  jr    $ra
/* 04108C 8004048C 02A01825 */   move  $v1, $s5

/* 041090 80040490 0290F020 */  add   $fp, $s4, $s0
glabel .L80040494
/* 041094 80040494 0290A020 */  add   $s4, $s4, $s0
/* 041098 80040498 22D60001 */  addi  $s6, $s6, 1
/* 04109C 8004049C 1000FFA8 */  b     .L80040340
/* 0410A0 800404A0 22940001 */   addi  $s4, $s4, 1
/* 0410A4 800404A4 2AC10004 */  slti  $at, $s6, 4
glabel .L800404A8
/* 0410A8 800404A8 03C01025 */  move  $v0, $fp
/* 0410AC 800404AC 14200002 */  bnez  $at, .L800404B8
/* 0410B0 800404B0 00001825 */   move  $v1, $zero
/* 0410B4 800404B4 22C3FFFF */  addi  $v1, $s6, -1
glabel .L800404B8
/* 0410B8 800404B8 03E00008 */  jr    $ra
/* 0410BC 800404BC 00000000 */   nop   

glabel mio0encode
/* 0410C0 800404C0 3C084D49 */  lui   $t0, (0x4D494F30 >> 16) # lui $t0, 0x4d49
/* 0410C4 800404C4 35084F30 */  ori   $t0, (0x4D494F30 & 0xFFFF) # ori $t0, $t0, 0x4f30
/* 0410C8 800404C8 ACC80000 */  sw    $t0, ($a2)
/* 0410CC 800404CC 3C088004 */  lui   $t0, %hi(D_80040170) # $t0, 0x8004
/* 0410D0 800404D0 ACC50004 */  sw    $a1, 4($a2)
/* 0410D4 800404D4 25080170 */  addiu $t0, %lo(D_80040170) # addiu $t0, $t0, 0x170
/* 0410D8 800404D8 8D0B0000 */  lw    $t3, ($t0)
/* 0410DC 800404DC 20D80010 */  addi  $t8, $a2, 0x10
/* 0410E0 800404E0 00806025 */  move  $t4, $a0
/* 0410E4 800404E4 00005025 */  move  $t2, $zero
/* 0410E8 800404E8 00007025 */  move  $t6, $zero
/* 0410EC 800404EC 01603825 */  move  $a3, $t3
/* 0410F0 800404F0 91880000 */  lbu   $t0, ($t4)
glabel .L800404F4
/* 0410F4 800404F4 218C0001 */  addi  $t4, $t4, 1
/* 0410F8 800404F8 214A0001 */  addi  $t2, $t2, 1
/* 0410FC 800404FC 23180001 */  addi  $t8, $t8, 1
/* 041100 80040500 24090080 */  li    $t1, 128
/* 041104 80040504 A308FFFF */  sb    $t0, -1($t8)
/* 041108 80040508 01091024 */  and   $v0, $t0, $t1
glabel .L8004050C
/* 04110C 8004050C 50400004 */  beql  $v0, $zero, .L80040520
/* 041110 80040510 21CE0002 */   addi  $t6, $t6, 2
/* 041114 80040514 10000003 */  b     .L80040524
/* 041118 80040518 218C0001 */   addi  $t4, $t4, 1
/* 04111C 8004051C 21CE0002 */  addi  $t6, $t6, 2
glabel .L80040520
/* 041120 80040520 218C0002 */  addi  $t4, $t4, 2
glabel .L80040524
/* 041124 80040524 216BFFFF */  addi  $t3, $t3, -1
/* 041128 80040528 11600005 */  beqz  $t3, .L80040540
/* 04112C 8004052C 00094842 */   srl   $t1, $t1, 1
/* 041130 80040530 5520FFF6 */  bnel  $t1, $zero, .L8004050C
/* 041134 80040534 01091024 */   and   $v0, $t0, $t1
/* 041138 80040538 1000FFEE */  b     .L800404F4
/* 04113C 8004053C 91880000 */   lbu   $t0, ($t4)
glabel .L80040540
/* 041140 80040540 21420013 */  addi  $v0, $t2, 0x13
/* 041144 80040544 2401FFFC */  li    $at, -4
/* 041148 80040548 00411024 */  and   $v0, $v0, $at
/* 04114C 8004054C ACC20008 */  sw    $v0, 8($a2)
/* 041150 80040550 00C21820 */  add   $v1, $a2, $v0
/* 041154 80040554 004E1020 */  add   $v0, $v0, $t6
/* 041158 80040558 ACC2000C */  sw    $v0, 0xc($a2)
/* 04115C 8004055C 00C2C820 */  add   $t9, $a2, $v0
/* 041160 80040560 90880000 */  lbu   $t0, ($a0)
glabel .L80040564
/* 041164 80040564 20840001 */  addi  $a0, $a0, 1
/* 041168 80040568 24090080 */  li    $t1, 128
/* 04116C 8004056C 01091024 */  and   $v0, $t0, $t1
glabel .L80040570
/* 041170 80040570 50400007 */  beql  $v0, $zero, .L80040590
/* 041174 80040574 90820001 */   lbu   $v0, 1($a0)
/* 041178 80040578 908D0000 */  lbu   $t5, ($a0)
/* 04117C 8004057C 20840001 */  addi  $a0, $a0, 1
/* 041180 80040580 23390001 */  addi  $t9, $t9, 1
/* 041184 80040584 10000008 */  b     .L800405A8
/* 041188 80040588 A32DFFFF */   sb    $t5, -1($t9)
/* 04118C 8004058C 90820001 */  lbu   $v0, 1($a0)
glabel .L80040590
/* 041190 80040590 908D0000 */  lbu   $t5, ($a0)
/* 041194 80040594 20630002 */  addi  $v1, $v1, 2
/* 041198 80040598 00021200 */  sll   $v0, $v0, 8
/* 04119C 8004059C 004D1025 */  or    $v0, $v0, $t5
/* 0411A0 800405A0 A462FFFE */  sh    $v0, -2($v1)
/* 0411A4 800405A4 20840002 */  addi  $a0, $a0, 2
glabel .L800405A8
/* 0411A8 800405A8 20E7FFFF */  addi  $a3, $a3, -1
/* 0411AC 800405AC 10E00005 */  beqz  $a3, .L800405C4
/* 0411B0 800405B0 00094842 */   srl   $t1, $t1, 1
/* 0411B4 800405B4 5520FFEE */  bnel  $t1, $zero, .L80040570
/* 0411B8 800405B8 01091024 */   and   $v0, $t0, $t1
/* 0411BC 800405BC 1000FFE9 */  b     .L80040564
/* 0411C0 800405C0 90880000 */   lbu   $t0, ($a0)
glabel .L800405C4
/* 0411C4 800405C4 03E00008 */  jr    $ra
/* 0411C8 800405C8 03261022 */   sub   $v0, $t9, $a2

/* 0411CC 800405CC 00000000 */  nop   