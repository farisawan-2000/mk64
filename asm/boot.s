# Mario Kart 64 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text

boot:
# .incbin "bin/mk64.u.000040.boot.bin"

/* 000000 00000000 40806800 */  mtc0  $zero, $13
/* 000004 00000004 40804800 */  mtc0  $zero, $9
/* 000008 00000008 40805800 */  mtc0  $zero, $11
/* 00000C 0000000C 3C08A470 */  lui   $t0, 0xa470
/* 000010 00000010 25080000 */  addiu $t0, $t0, 0
/* 000014 00000014 8D09000C */  lw    $t1, 0xc($t0)
/* 000018 00000018 152000ED */  bnez  $t1, .L000003D0
/* 00001C 0000001C 00000000 */   nop   
/* 000020 00000020 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000024 00000024 AFB30000 */  sw    $s3, ($sp)
/* 000028 00000028 AFB40004 */  sw    $s4, 4($sp)
/* 00002C 0000002C AFB50008 */  sw    $s5, 8($sp)
/* 000030 00000030 AFB6000C */  sw    $s6, 0xc($sp)
/* 000034 00000034 AFB70010 */  sw    $s7, 0x10($sp)
/* 000038 00000038 3C08A470 */  lui   $t0, 0xa470
/* 00003C 0000003C 25080000 */  addiu $t0, $t0, 0
/* 000040 00000040 3C0AA3F8 */  lui   $t2, 0xa3f8
/* 000044 00000044 3C0BA3F0 */  lui   $t3, 0xa3f0
/* 000048 00000048 3C0CA430 */  lui   $t4, 0xa430
/* 00004C 0000004C 258C0000 */  addiu $t4, $t4, 0
/* 000050 00000050 34090040 */  ori   $t1, $zero, 0x40
/* 000054 00000054 AD090004 */  sw    $t1, 4($t0)
/* 000058 00000058 24111F40 */  addiu $s1, $zero, 0x1f40
.L0000005C:
/* 00005C 0000005C 00000000 */  nop   
/* 000060 00000060 2231FFFF */  addi  $s1, $s1, -1
/* 000064 00000064 1620FFFD */  bnez  $s1, .L0000005C
/* 000068 00000068 00000000 */   nop   
/* 00006C 0000006C AD000008 */  sw    $zero, 8($t0)
/* 000070 00000070 34090014 */  ori   $t1, $zero, 0x14
/* 000074 00000074 AD09000C */  sw    $t1, 0xc($t0)
/* 000078 00000078 AD000000 */  sw    $zero, ($t0)
/* 00007C 0000007C 24110004 */  addiu $s1, $zero, 4
.L00000080:
/* 000080 00000080 00000000 */  nop   
/* 000084 00000084 2231FFFF */  addi  $s1, $s1, -1
/* 000088 00000088 1620FFFD */  bnez  $s1, .L00000080
/* 00008C 0000008C 00000000 */   nop   
/* 000090 00000090 3409000E */  ori   $t1, $zero, 0xe
/* 000094 00000094 AD090000 */  sw    $t1, ($t0)
/* 000098 00000098 24110020 */  addiu $s1, $zero, 0x20
.L0000009C:
/* 00009C 0000009C 2231FFFF */  addi  $s1, $s1, -1
/* 0000A0 000000A0 1620FFFE */  bnez  $s1, .L0000009C
/* 0000A4 000000A4 3409010F */   ori   $t1, $zero, 0x10f
/* 0000A8 000000A8 AD890000 */  sw    $t1, ($t4)
/* 0000AC 000000AC 3C091808 */  lui   $t1, 0x1808
/* 0000B0 000000B0 35292838 */  ori   $t1, $t1, 0x2838
/* 0000B4 000000B4 AD490008 */  sw    $t1, 8($t2)
/* 0000B8 000000B8 AD400014 */  sw    $zero, 0x14($t2)
/* 0000BC 000000BC 3C098000 */  lui   $t1, 0x8000
/* 0000C0 000000C0 AD490004 */  sw    $t1, 4($t2)
/* 0000C4 000000C4 00006825 */  move  $t5, $zero
/* 0000C8 000000C8 00007025 */  move  $t6, $zero
/* 0000CC 000000CC 3C0FA3F0 */  lui   $t7, 0xa3f0
/* 0000D0 000000D0 0000C025 */  move  $t8, $zero
/* 0000D4 000000D4 3C19A3F0 */  lui   $t9, 0xa3f0
/* 0000D8 000000D8 3C16A000 */  lui   $s6, 0xa000
/* 0000DC 000000DC 0000B825 */  move  $s7, $zero
/* 0000E0 000000E0 3C06A3F0 */  lui   $a2, 0xa3f0
/* 0000E4 000000E4 3C07A000 */  lui   $a3, 0xa000
/* 0000E8 000000E8 00009025 */  move  $s2, $zero
/* 0000EC 000000EC 3C14A000 */  lui   $s4, 0xa000
/* 0000F0 000000F0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0000F4 000000F4 03A0F025 */  move  $fp, $sp
/* 0000F8 000000F8 3C10A430 */  lui   $s0, 0xa430
/* 0000FC 000000FC 8E100004 */  lw    $s0, 4($s0)
/* 000100 00000100 3C110101 */  lui   $s1, 0x101
/* 000104 00000104 26310101 */  addiu $s1, $s1, 0x101
/* 000108 00000108 16110005 */  bne   $s0, $s1, .L00000120
/* 00010C 0000010C 00000000 */   nop   
/* 000110 00000110 24100200 */  addiu $s0, $zero, 0x200
/* 000114 00000114 35714000 */  ori   $s1, $t3, 0x4000
/* 000118 00000118 10000003 */  b     .L00000128
/* 00011C 0000011C 00000000 */   nop   
.L00000120:
/* 000120 00000120 24100400 */  addiu $s0, $zero, 0x400
/* 000124 00000124 35718000 */  ori   $s1, $t3, 0x8000
.L00000128:
/* 000128 00000128 AE2E0004 */  sw    $t6, 4($s1)
/* 00012C 0000012C 25F5000C */  addiu $s5, $t7, 0xc
/* 000130 00000130 0D0001DE */  jal   func_04000778
/* 000134 00000134 00000000 */   nop   
/* 000138 00000138 10400038 */  beqz  $v0, .L0000021C
/* 00013C 0000013C 00000000 */   nop   
/* 000140 00000140 AFA20000 */  sw    $v0, ($sp)
/* 000144 00000144 24092000 */  addiu $t1, $zero, 0x2000
/* 000148 00000148 AD890000 */  sw    $t1, ($t4)
/* 00014C 0000014C 8DEB0000 */  lw    $t3, ($t7)
/* 000150 00000150 3C08F0FF */  lui   $t0, 0xf0ff
/* 000154 00000154 01685824 */  and   $t3, $t3, $t0
/* 000158 00000158 AFAB0004 */  sw    $t3, 4($sp)
/* 00015C 0000015C 23BD0008 */  addi  $sp, $sp, 8
/* 000160 00000160 24091000 */  addiu $t1, $zero, 0x1000
/* 000164 00000164 AD890000 */  sw    $t1, ($t4)
/* 000168 00000168 3C08B019 */  lui   $t0, 0xb019
/* 00016C 0000016C 1568000C */  bne   $t3, $t0, .L000001A0
/* 000170 00000170 00000000 */   nop   
/* 000174 00000174 3C080800 */  lui   $t0, 0x800
/* 000178 00000178 0308C020 */  add   $t8, $t8, $t0
/* 00017C 0000017C 0330C820 */  add   $t9, $t9, $s0
/* 000180 00000180 0330C820 */  add   $t9, $t9, $s0
/* 000184 00000184 3C080020 */  lui   $t0, 0x20
/* 000188 00000188 02C8B020 */  add   $s6, $s6, $t0
/* 00018C 0000018C 0288A020 */  add   $s4, $s4, $t0
/* 000190 00000190 00129040 */  sll   $s2, $s2, 1
/* 000194 00000194 22520001 */  addi  $s2, $s2, 1
/* 000198 00000198 10000003 */  b     .L000001A8
/* 00019C 0000019C 00000000 */   nop   
.L000001A0:
/* 0001A0 000001A0 3C080010 */  lui   $t0, 0x10
/* 0001A4 000001A4 0288A020 */  add   $s4, $s4, $t0
.L000001A8:
/* 0001A8 000001A8 24082000 */  addiu $t0, $zero, 0x2000
/* 0001AC 000001AC AD880000 */  sw    $t0, ($t4)
/* 0001B0 000001B0 8DE90024 */  lw    $t1, 0x24($t7)
/* 0001B4 000001B4 8DFA0000 */  lw    $k0, ($t7)
/* 0001B8 000001B8 24081000 */  addiu $t0, $zero, 0x1000
/* 0001BC 000001BC AD880000 */  sw    $t0, ($t4)
/* 0001C0 000001C0 3129FFFF */  andi  $t1, $t1, 0xffff
/* 0001C4 000001C4 24080500 */  addiu $t0, $zero, 0x500
/* 0001C8 000001C8 15280009 */  bne   $t1, $t0, .L000001F0
/* 0001CC 000001CC 00000000 */   nop   
/* 0001D0 000001D0 3C1B0100 */  lui   $k1, 0x100
/* 0001D4 000001D4 035BD024 */  and   $k0, $k0, $k1
/* 0001D8 000001D8 17400005 */  bnez  $k0, .L000001F0
/* 0001DC 000001DC 00000000 */   nop   
/* 0001E0 000001E0 3C08101C */  lui   $t0, 0x101c
/* 0001E4 000001E4 35080A04 */  ori   $t0, $t0, 0xa04
/* 0001E8 000001E8 ADE80018 */  sw    $t0, 0x18($t7)
/* 0001EC 000001EC 10000003 */  b     .L000001FC
.L000001F0:
/* 0001F0 000001F0 3C08080C */   lui   $t0, 0x80c
/* 0001F4 000001F4 35081204 */  ori   $t0, $t0, 0x1204
/* 0001F8 000001F8 ADE80018 */  sw    $t0, 0x18($t7)
.L000001FC:
/* 0001FC 000001FC 3C080800 */  lui   $t0, 0x800
/* 000200 00000200 01C87020 */  add   $t6, $t6, $t0
/* 000204 00000204 01F07820 */  add   $t7, $t7, $s0
/* 000208 00000208 01F07820 */  add   $t7, $t7, $s0
/* 00020C 0000020C 25AD0001 */  addiu $t5, $t5, 1
/* 000210 00000210 2DA80008 */  sltiu $t0, $t5, 8
/* 000214 00000214 1500FFC4 */  bnez  $t0, .L00000128
/* 000218 00000218 00000000 */   nop   
.L0000021C:
/* 00021C 0000021C 3C08C400 */  lui   $t0, 0xc400
/* 000220 00000220 AD48000C */  sw    $t0, 0xc($t2)
/* 000224 00000224 3C088000 */  lui   $t0, 0x8000
/* 000228 00000228 AD480004 */  sw    $t0, 4($t2)
/* 00022C 0000022C 03C0E825 */  move  $sp, $fp
/* 000230 00000230 00001825 */  move  $v1, $zero
.L00000234:
/* 000234 00000234 8FA90004 */  lw    $t1, 4($sp)
/* 000238 00000238 3C08B009 */  lui   $t0, 0xb009
/* 00023C 0000023C 15280016 */  bne   $t1, $t0, .L00000298
/* 000240 00000240 00000000 */   nop   
/* 000244 00000244 AE380004 */  sw    $t8, 4($s1)
/* 000248 00000248 2735000C */  addiu $s5, $t9, 0xc
/* 00024C 0000024C 8FA40000 */  lw    $a0, ($sp)
/* 000250 00000250 23BD0008 */  addi  $sp, $sp, 8
/* 000254 00000254 24050001 */  addiu $a1, $zero, 1
/* 000258 00000258 0D000290 */  jal   func_04000A40
/* 00025C 0000025C 00000000 */   nop   
/* 000260 00000260 8EC80000 */  lw    $t0, ($s6)
/* 000264 00000264 3C080008 */  lui   $t0, 8
/* 000268 00000268 01164020 */  add   $t0, $t0, $s6
/* 00026C 0000026C 8D090000 */  lw    $t1, ($t0)
/* 000270 00000270 8EC80000 */  lw    $t0, ($s6)
/* 000274 00000274 3C080008 */  lui   $t0, 8
/* 000278 00000278 01164020 */  add   $t0, $t0, $s6
/* 00027C 0000027C 8D090000 */  lw    $t1, ($t0)
/* 000280 00000280 3C080400 */  lui   $t0, 0x400
/* 000284 00000284 01C87020 */  add   $t6, $t6, $t0
/* 000288 00000288 0330C820 */  add   $t9, $t9, $s0
/* 00028C 0000028C 3C080010 */  lui   $t0, 0x10
/* 000290 00000290 02C8B020 */  add   $s6, $s6, $t0
/* 000294 00000294 10000021 */  b     .L0000031C
.L00000298:
/* 000298 00000298 AE370004 */   sw    $s7, 4($s1)
/* 00029C 0000029C 24D5000C */  addiu $s5, $a2, 0xc
/* 0002A0 000002A0 8FA40000 */  lw    $a0, ($sp)
/* 0002A4 000002A4 23BD0008 */  addi  $sp, $sp, 8
/* 0002A8 000002A8 24050001 */  addiu $a1, $zero, 1
/* 0002AC 000002AC 0D000290 */  jal   func_04000A40
/* 0002B0 000002B0 00000000 */   nop   
/* 0002B4 000002B4 8CE80000 */  lw    $t0, ($a3)
/* 0002B8 000002B8 3C080008 */  lui   $t0, 8
/* 0002BC 000002BC 01074020 */  add   $t0, $t0, $a3
/* 0002C0 000002C0 8D090000 */  lw    $t1, ($t0)
/* 0002C4 000002C4 3C080010 */  lui   $t0, 0x10
/* 0002C8 000002C8 01074020 */  add   $t0, $t0, $a3
/* 0002CC 000002CC 8D090000 */  lw    $t1, ($t0)
/* 0002D0 000002D0 3C080018 */  lui   $t0, 0x18
/* 0002D4 000002D4 01074020 */  add   $t0, $t0, $a3
/* 0002D8 000002D8 8D090000 */  lw    $t1, ($t0)
/* 0002DC 000002DC 8CE80000 */  lw    $t0, ($a3)
/* 0002E0 000002E0 3C080008 */  lui   $t0, 8
/* 0002E4 000002E4 01074020 */  add   $t0, $t0, $a3
/* 0002E8 000002E8 8D090000 */  lw    $t1, ($t0)
/* 0002EC 000002EC 3C080010 */  lui   $t0, 0x10
/* 0002F0 000002F0 01074020 */  add   $t0, $t0, $a3
/* 0002F4 000002F4 8D090000 */  lw    $t1, ($t0)
/* 0002F8 000002F8 3C080018 */  lui   $t0, 0x18
/* 0002FC 000002FC 01074020 */  add   $t0, $t0, $a3
/* 000300 00000300 8D090000 */  lw    $t1, ($t0)
/* 000304 00000304 3C080800 */  lui   $t0, 0x800
/* 000308 00000308 02E8B820 */  add   $s7, $s7, $t0
/* 00030C 0000030C 00D03020 */  add   $a2, $a2, $s0
/* 000310 00000310 00D03020 */  add   $a2, $a2, $s0
/* 000314 00000314 3C080020 */  lui   $t0, 0x20
/* 000318 00000318 00E83820 */  add   $a3, $a3, $t0
.L0000031C:
/* 00031C 0000031C 24630001 */  addiu $v1, $v1, 1
/* 000320 00000320 006D402A */  slt   $t0, $v1, $t5
/* 000324 00000324 1500FFC3 */  bnez  $t0, .L00000234
/* 000328 00000328 00000000 */   nop   
/* 00032C 0000032C 3C0AA470 */  lui   $t2, 0xa470
/* 000330 00000330 001294C0 */  sll   $s2, $s2, 0x13
/* 000334 00000334 3C090006 */  lui   $t1, 6
/* 000338 00000338 35293634 */  ori   $t1, $t1, 0x3634
/* 00033C 0000033C 01324825 */  or    $t1, $t1, $s2
/* 000340 00000340 AD490010 */  sw    $t1, 0x10($t2)
/* 000344 00000344 8D490010 */  lw    $t1, 0x10($t2)
/* 000348 00000348 3C08A000 */  lui   $t0, 0xa000
/* 00034C 0000034C 35080300 */  ori   $t0, $t0, 0x300
/* 000350 00000350 3C090FFF */  lui   $t1, 0xfff
/* 000354 00000354 3529FFFF */  ori   $t1, $t1, 0xffff
/* 000358 00000358 02C9B024 */  and   $s6, $s6, $t1
/* 00035C 0000035C AD160018 */  sw    $s6, 0x18($t0)
/* 000360 00000360 03C0E825 */  move  $sp, $fp
/* 000364 00000364 27BD0048 */  addiu $sp, $sp, 0x48
/* 000368 00000368 8FB30000 */  lw    $s3, ($sp)
/* 00036C 0000036C 8FB40004 */  lw    $s4, 4($sp)
/* 000370 00000370 8FB50008 */  lw    $s5, 8($sp)
/* 000374 00000374 8FB6000C */  lw    $s6, 0xc($sp)
/* 000378 00000378 8FB70010 */  lw    $s7, 0x10($sp)
/* 00037C 0000037C 27BD0018 */  addiu $sp, $sp, 0x18
/* 000380 00000380 3C088000 */  lui   $t0, 0x8000
/* 000384 00000384 25080000 */  addiu $t0, $t0, 0
/* 000388 00000388 25094000 */  addiu $t1, $t0, 0x4000
/* 00038C 0000038C 2529FFE0 */  addiu $t1, $t1, -0x20
/* 000390 00000390 4080E000 */  mtc0  $zero, $28
/* 000394 00000394 4080E800 */  mtc0  $zero, $29
.L00000398:
/* 000398 00000398 BD080000 */  cache 8, ($t0)
/* 00039C 0000039C 0109082B */  sltu  $at, $t0, $t1
/* 0003A0 000003A0 1420FFFD */  bnez  $at, .L00000398
/* 0003A4 000003A4 25080020 */   addiu $t0, $t0, 0x20
/* 0003A8 000003A8 3C088000 */  lui   $t0, 0x8000
/* 0003AC 000003AC 25080000 */  addiu $t0, $t0, 0
/* 0003B0 000003B0 25092000 */  addiu $t1, $t0, 0x2000
/* 0003B4 000003B4 2529FFF0 */  addiu $t1, $t1, -0x10
.L000003B8:
/* 0003B8 000003B8 BD090000 */  cache 9, ($t0)
/* 0003BC 000003BC 0109082B */  sltu  $at, $t0, $t1
/* 0003C0 000003C0 1420FFFD */  bnez  $at, .L000003B8
/* 0003C4 000003C4 25080010 */   addiu $t0, $t0, 0x10
/* 0003C8 000003C8 10000013 */  b     .L00000418
/* 0003CC 000003CC 00000000 */   nop   
.L000003D0:
/* 0003D0 000003D0 3C088000 */  lui   $t0, 0x8000
/* 0003D4 000003D4 25080000 */  addiu $t0, $t0, 0
/* 0003D8 000003D8 25094000 */  addiu $t1, $t0, 0x4000
/* 0003DC 000003DC 2529FFE0 */  addiu $t1, $t1, -0x20
/* 0003E0 000003E0 4080E000 */  mtc0  $zero, $28
/* 0003E4 000003E4 4080E800 */  mtc0  $zero, $29
.L000003E8:
/* 0003E8 000003E8 BD080000 */  cache 8, ($t0)
/* 0003EC 000003EC 0109082B */  sltu  $at, $t0, $t1
/* 0003F0 000003F0 1420FFFD */  bnez  $at, .L000003E8
/* 0003F4 000003F4 25080020 */   addiu $t0, $t0, 0x20
/* 0003F8 000003F8 3C088000 */  lui   $t0, 0x8000
/* 0003FC 000003FC 25080000 */  addiu $t0, $t0, 0
/* 000400 00000400 25092000 */  addiu $t1, $t0, 0x2000
/* 000404 00000404 2529FFF0 */  addiu $t1, $t1, -0x10
.L00000408:
/* 000408 00000408 BD010000 */  cache 1, ($t0)
/* 00040C 0000040C 0109082B */  sltu  $at, $t0, $t1
/* 000410 00000410 1420FFFD */  bnez  $at, .L00000408
/* 000414 00000414 25080010 */   addiu $t0, $t0, 0x10
.L00000418:
/* 000418 00000418 3C0AA400 */  lui   $t2, 0xa400
/* 00041C 0000041C 254A0000 */  addiu $t2, $t2, 0
/* 000420 00000420 3C0BFFF0 */  lui   $t3, 0xfff0
/* 000424 00000424 3C090010 */  lui   $t1, 0x10
/* 000428 00000428 014B5024 */  and   $t2, $t2, $t3
/* 00042C 0000042C 3C08A400 */  lui   $t0, 0xa400
/* 000430 00000430 2529FFFF */  addiu $t1, $t1, -1
/* 000434 00000434 3C0BA400 */  lui   $t3, 0xa400
/* 000438 00000438 250804C0 */  addiu $t0, $t0, 0x4c0
/* 00043C 0000043C 256B0774 */  addiu $t3, $t3, 0x774
/* 000440 00000440 01094024 */  and   $t0, $t0, $t1
/* 000444 00000444 01695824 */  and   $t3, $t3, $t1
/* 000448 00000448 3C09A000 */  lui   $t1, 0xa000
/* 00044C 0000044C 010A4025 */  or    $t0, $t0, $t2
/* 000450 00000450 016A5825 */  or    $t3, $t3, $t2
/* 000454 00000454 25290000 */  addiu $t1, $t1, 0
.L00000458:
/* 000458 00000458 8D0D0000 */  lw    $t5, ($t0)
/* 00045C 0000045C 25080004 */  addiu $t0, $t0, 4
/* 000460 00000460 010B082B */  sltu  $at, $t0, $t3
/* 000464 00000464 25290004 */  addiu $t1, $t1, 4
/* 000468 00000468 1420FFFB */  bnez  $at, .L00000458
/* 00046C 0000046C AD2DFFFC */   sw    $t5, -4($t1)
/* 000470 00000470 3C0C8000 */  lui   $t4, 0x8000
/* 000474 00000474 258C0000 */  addiu $t4, $t4, 0
/* 000478 00000478 01800008 */  jr    $t4
/* 00047C 0000047C 00000000 */   nop   
/* 000480 00000480 3C0BB000 */  lui   $t3, 0xb000
/* 000484 00000484 8D690008 */  lw    $t1, 8($t3)
/* 000488 00000488 3C0A1FFF */  lui   $t2, 0x1fff
/* 00048C 0000048C 354AFFFF */  ori   $t2, $t2, 0xffff
/* 000490 00000490 3C01A460 */  lui   $at, 0xa460
/* 000494 00000494 012A4824 */  and   $t1, $t1, $t2
/* 000498 00000498 AC290000 */  sw    $t1, ($at)
/* 00049C 0000049C 3C08A460 */  lui   $t0, 0xa460
.L000004A0:
/* 0004A0 000004A0 8D080010 */  lw    $t0, 0x10($t0)
/* 0004A4 000004A4 31080002 */  andi  $t0, $t0, 2
/* 0004A8 000004A8 5500FFFD */  bnezl $t0, .L000004A0
/* 0004AC 000004AC 3C08A460 */   lui   $t0, 0xa460
/* 0004B0 000004B0 24081000 */  addiu $t0, $zero, 0x1000
/* 0004B4 000004B4 010B4020 */  add   $t0, $t0, $t3
/* 0004B8 000004B8 010A4024 */  and   $t0, $t0, $t2
/* 0004BC 000004BC 3C01A460 */  lui   $at, 0xa460
/* 0004C0 000004C0 AC280004 */  sw    $t0, 4($at)
/* 0004C4 000004C4 3C0A0010 */  lui   $t2, 0x10
/* 0004C8 000004C8 254AFFFF */  addiu $t2, $t2, -1
/* 0004CC 000004CC 3C01A460 */  lui   $at, 0xa460
/* 0004D0 000004D0 AC2A000C */  sw    $t2, 0xc($at)
.L000004D4:
/* 0004D4 000004D4 00000000 */  nop   
/* 0004D8 000004D8 00000000 */  nop   
/* 0004DC 000004DC 00000000 */  nop   
/* 0004E0 000004E0 00000000 */  nop   
/* 0004E4 000004E4 00000000 */  nop   
/* 0004E8 000004E8 00000000 */  nop   
/* 0004EC 000004EC 00000000 */  nop   
/* 0004F0 000004F0 00000000 */  nop   
/* 0004F4 000004F4 00000000 */  nop   
/* 0004F8 000004F8 00000000 */  nop   
/* 0004FC 000004FC 00000000 */  nop   
/* 000500 00000500 00000000 */  nop   
/* 000504 00000504 00000000 */  nop   
/* 000508 00000508 00000000 */  nop   
/* 00050C 0000050C 00000000 */  nop   
/* 000510 00000510 00000000 */  nop   
/* 000514 00000514 00000000 */  nop   
/* 000518 00000518 00000000 */  nop   
/* 00051C 0000051C 00000000 */  nop   
/* 000520 00000520 00000000 */  nop   
/* 000524 00000524 00000000 */  nop   
/* 000528 00000528 00000000 */  nop   
/* 00052C 0000052C 00000000 */  nop   
/* 000530 00000530 00000000 */  nop   
/* 000534 00000534 00000000 */  nop   
/* 000538 00000538 00000000 */  nop   
/* 00053C 0000053C 00000000 */  nop   
/* 000540 00000540 00000000 */  nop   
/* 000544 00000544 3C0BA460 */  lui   $t3, 0xa460
/* 000548 00000548 8D6B0010 */  lw    $t3, 0x10($t3)
/* 00054C 0000054C 316B0001 */  andi  $t3, $t3, 1
/* 000550 00000550 1560FFE0 */  bnez  $t3, .L000004D4
/* 000554 00000554 00000000 */   nop   
/* 000558 00000558 3C0BB000 */  lui   $t3, 0xb000
/* 00055C 0000055C 8D640008 */  lw    $a0, 8($t3)
/* 000560 00000560 02C02825 */  move  $a1, $s6
/* 000564 00000564 3C015D58 */  lui   $at, 0x5d58
/* 000568 00000568 34218B65 */  ori   $at, $at, 0x8b65
/* 00056C 0000056C 00A10019 */  multu $a1, $at
/* 000570 00000570 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 000574 00000574 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000578 00000578 AFB00014 */  sw    $s0, 0x14($sp)
/* 00057C 0000057C 3C1F0010 */  lui   $ra, 0x10
/* 000580 00000580 00001825 */  move  $v1, $zero
/* 000584 00000584 00004025 */  move  $t0, $zero
/* 000588 00000588 00804825 */  move  $t1, $a0
/* 00058C 0000058C 240D0020 */  addiu $t5, $zero, 0x20
/* 000590 00000590 00001012 */  mflo  $v0
/* 000594 00000594 24420001 */  addiu $v0, $v0, 1
/* 000598 00000598 00403825 */  move  $a3, $v0
/* 00059C 0000059C 00405025 */  move  $t2, $v0
/* 0005A0 000005A0 00405825 */  move  $t3, $v0
/* 0005A4 000005A4 00408025 */  move  $s0, $v0
/* 0005A8 000005A8 00403025 */  move  $a2, $v0
/* 0005AC 000005AC 00406025 */  move  $t4, $v0
.L000005B0:
/* 0005B0 000005B0 8D220000 */  lw    $v0, ($t1)
/* 0005B4 000005B4 00E21821 */  addu  $v1, $a3, $v0
/* 0005B8 000005B8 0067082B */  sltu  $at, $v1, $a3
/* 0005BC 000005BC 10200002 */  beqz  $at, .L000005C8
/* 0005C0 000005C0 00602825 */   move  $a1, $v1
/* 0005C4 000005C4 254A0001 */  addiu $t2, $t2, 1
.L000005C8:
/* 0005C8 000005C8 3043001F */  andi  $v1, $v0, 0x1f
/* 0005CC 000005CC 01A37823 */  subu  $t7, $t5, $v1
/* 0005D0 000005D0 01E2C006 */  srlv  $t8, $v0, $t7
/* 0005D4 000005D4 00627004 */  sllv  $t6, $v0, $v1
/* 0005D8 000005D8 01D82025 */  or    $a0, $t6, $t8
/* 0005DC 000005DC 00C2082B */  sltu  $at, $a2, $v0
/* 0005E0 000005E0 00A03825 */  move  $a3, $a1
/* 0005E4 000005E4 01625826 */  xor   $t3, $t3, $v0
/* 0005E8 000005E8 10200004 */  beqz  $at, .L000005FC
/* 0005EC 000005EC 02048021 */   addu  $s0, $s0, $a0
/* 0005F0 000005F0 00E2C826 */  xor   $t9, $a3, $v0
/* 0005F4 000005F4 10000002 */  b     .L00000600
/* 0005F8 000005F8 03263026 */   xor   $a2, $t9, $a2
.L000005FC:
/* 0005FC 000005FC 00C43026 */  xor   $a2, $a2, $a0
.L00000600:
/* 000600 00000600 25080004 */  addiu $t0, $t0, 4
/* 000604 00000604 00507826 */  xor   $t7, $v0, $s0
/* 000608 00000608 25290004 */  addiu $t1, $t1, 4
/* 00060C 0000060C 151FFFE8 */  bne   $t0, $ra, .L000005B0
/* 000610 00000610 01EC6021 */   addu  $t4, $t7, $t4
/* 000614 00000614 00EA7026 */  xor   $t6, $a3, $t2
/* 000618 00000618 01CB3826 */  xor   $a3, $t6, $t3
/* 00061C 0000061C 0206C026 */  xor   $t8, $s0, $a2
/* 000620 00000620 030C8026 */  xor   $s0, $t8, $t4
/* 000624 00000624 3C0BB000 */  lui   $t3, 0xb000
/* 000628 00000628 8D680010 */  lw    $t0, 0x10($t3)
/* 00062C 0000062C 14E80006 */  bne   $a3, $t0, .L00000648
/* 000630 00000630 00000000 */   nop   
/* 000634 00000634 8D680014 */  lw    $t0, 0x14($t3)
/* 000638 00000638 16080003 */  bne   $s0, $t0, .L00000648
/* 00063C 0000063C 00000000 */   nop   
/* 000640 00000640 04110003 */  bal   func_00000650
/* 000644 00000644 00000000 */   nop   
func_00000648:
.L00000648:
/* 000648 00000648 0411FFFF */  bal   func_00000648
/* 00064C 0000064C 00000000 */   nop   
func_00000650:
/* 000650 00000650 3C09A408 */  lui   $t1, 0xa408
/* 000654 00000654 8D290000 */  lw    $t1, ($t1)
/* 000658 00000658 8FB00014 */  lw    $s0, 0x14($sp)
/* 00065C 0000065C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000660 00000660 11200006 */  beqz  $t1, .L0000067C
/* 000664 00000664 27BD0020 */   addiu $sp, $sp, 0x20
/* 000668 00000668 240A0041 */  addiu $t2, $zero, 0x41
/* 00066C 0000066C 3C01A404 */  lui   $at, 0xa404
/* 000670 00000670 AC2A0010 */  sw    $t2, 0x10($at)
/* 000674 00000674 3C01A408 */  lui   $at, 0xa408
/* 000678 00000678 AC200000 */  sw    $zero, ($at)
.L0000067C:
/* 00067C 0000067C 3C0B00AA */  lui   $t3, 0xaa
/* 000680 00000680 356BAAAE */  ori   $t3, $t3, 0xaaae
/* 000684 00000684 3C01A404 */  lui   $at, 0xa404
/* 000688 00000688 AC2B0010 */  sw    $t3, 0x10($at)
/* 00068C 0000068C 3C01A430 */  lui   $at, 0xa430
/* 000690 00000690 24080555 */  addiu $t0, $zero, 0x555
/* 000694 00000694 AC28000C */  sw    $t0, 0xc($at)
/* 000698 00000698 3C01A480 */  lui   $at, 0xa480
/* 00069C 0000069C AC200018 */  sw    $zero, 0x18($at)
/* 0006A0 000006A0 3C01A450 */  lui   $at, 0xa450
/* 0006A4 000006A4 AC20000C */  sw    $zero, 0xc($at)
/* 0006A8 000006A8 3C01A430 */  lui   $at, 0xa430
/* 0006AC 000006AC 24090800 */  addiu $t1, $zero, 0x800
/* 0006B0 000006B0 AC290000 */  sw    $t1, ($at)
/* 0006B4 000006B4 24090002 */  addiu $t1, $zero, 2
/* 0006B8 000006B8 3C01A460 */  lui   $at, 0xa460
/* 0006BC 000006BC 3C08A000 */  lui   $t0, 0xa000
/* 0006C0 000006C0 35080300 */  ori   $t0, $t0, 0x300
/* 0006C4 000006C4 AC290010 */  sw    $t1, 0x10($at)
/* 0006C8 000006C8 AD170014 */  sw    $s7, 0x14($t0)
/* 0006CC 000006CC AD15000C */  sw    $s5, 0xc($t0)
/* 0006D0 000006D0 AD130004 */  sw    $s3, 4($t0)
/* 0006D4 000006D4 12600004 */  beqz  $s3, .L000006E8
/* 0006D8 000006D8 AD140000 */   sw    $s4, ($t0)
/* 0006DC 000006DC 3C09A600 */  lui   $t1, 0xa600
/* 0006E0 000006E0 10000003 */  b     .L000006F0
/* 0006E4 000006E4 25290000 */   addiu $t1, $t1, 0
.L000006E8:
/* 0006E8 000006E8 3C09B000 */  lui   $t1, 0xb000
/* 0006EC 000006EC 25290000 */  addiu $t1, $t1, 0
.L000006F0:
/* 0006F0 000006F0 AD090008 */  sw    $t1, 8($t0)
/* 0006F4 000006F4 3C08A400 */  lui   $t0, 0xa400
/* 0006F8 000006F8 25080000 */  addiu $t0, $t0, 0
/* 0006FC 000006FC 21091000 */  addi  $t1, $t0, 0x1000
.L00000700:
/* 000700 00000700 25080004 */  addiu $t0, $t0, 4
/* 000704 00000704 1509FFFE */  bne   $t0, $t1, .L00000700
/* 000708 00000708 AD00FFFC */   sw    $zero, -4($t0)
/* 00070C 0000070C 3C08A400 */  lui   $t0, 0xa400
/* 000710 00000710 25081000 */  addiu $t0, $t0, 0x1000
/* 000714 00000714 21091000 */  addi  $t1, $t0, 0x1000
.L00000718:
/* 000718 00000718 25080004 */  addiu $t0, $t0, 4
/* 00071C 0000071C 1509FFFE */  bne   $t0, $t1, .L00000718
/* 000720 00000720 AD00FFFC */   sw    $zero, -4($t0)
/* 000724 00000724 3C0BB000 */  lui   $t3, 0xb000
/* 000728 00000728 8D690008 */  lw    $t1, 8($t3)
/* 00072C 0000072C 01200008 */  jr    $t1
/* 000730 00000730 00000000 */   nop   
/* 000734 00000734 00000000 */  nop   
/* 000738 00000738 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 00073C 0000073C AFB00040 */  sw    $s0, 0x40($sp)
/* 000740 00000740 AFB10044 */  sw    $s1, 0x44($sp)
/* 000744 00000744 00008825 */  move  $s1, $zero
/* 000748 00000748 00008025 */  move  $s0, $zero
/* 00074C 0000074C AFA20000 */  sw    $v0, ($sp)
/* 000750 00000750 AFA30004 */  sw    $v1, 4($sp)
/* 000754 00000754 AFA40008 */  sw    $a0, 8($sp)
/* 000758 00000758 AFA5000C */  sw    $a1, 0xc($sp)
/* 00075C 0000075C AFA60010 */  sw    $a2, 0x10($sp)
/* 000760 00000760 AFA70014 */  sw    $a3, 0x14($sp)
/* 000764 00000764 AFA80018 */  sw    $t0, 0x18($sp)
/* 000768 00000768 AFA9001C */  sw    $t1, 0x1c($sp)
/* 00076C 0000076C AFAA0020 */  sw    $t2, 0x20($sp)
/* 000770 00000770 AFAB0024 */  sw    $t3, 0x24($sp)
/* 000774 00000774 AFAC0028 */  sw    $t4, 0x28($sp)
/* 000778 00000778 AFAD002C */  sw    $t5, 0x2c($sp)
/* 00077C 0000077C AFAE0030 */  sw    $t6, 0x30($sp)
/* 000780 00000780 AFAF0034 */  sw    $t7, 0x34($sp)
/* 000784 00000784 AFB80038 */  sw    $t8, 0x38($sp)
/* 000788 00000788 AFB9003C */  sw    $t9, 0x3c($sp)
/* 00078C 0000078C AFB20048 */  sw    $s2, 0x48($sp)
/* 000790 00000790 AFB3004C */  sw    $s3, 0x4c($sp)
/* 000794 00000794 AFB40050 */  sw    $s4, 0x50($sp)
/* 000798 00000798 AFB50054 */  sw    $s5, 0x54($sp)
/* 00079C 0000079C AFB60058 */  sw    $s6, 0x58($sp)
/* 0007A0 000007A0 AFB7005C */  sw    $s7, 0x5c($sp)
/* 0007A4 000007A4 AFBE0060 */  sw    $fp, 0x60($sp)
/* 0007A8 000007A8 AFBF0064 */  sw    $ra, 0x64($sp)
.L000007AC:
/* 0007AC 000007AC 0D000220 */  jal   func_04000880
/* 0007B0 000007B0 00000000 */   nop   
/* 0007B4 000007B4 26100001 */  addiu $s0, $s0, 1
/* 0007B8 000007B8 2A090004 */  slti  $t1, $s0, 4
/* 0007BC 000007BC 1520FFFB */  bnez  $t1, .L000007AC
/* 0007C0 000007C0 02228821 */   addu  $s1, $s1, $v0
/* 0007C4 000007C4 00112082 */  srl   $a0, $s1, 2
/* 0007C8 000007C8 0D000290 */  jal   func_04000A40
/* 0007CC 000007CC 24050001 */   addiu $a1, $zero, 1
/* 0007D0 000007D0 8FBF0064 */  lw    $ra, 0x64($sp)
/* 0007D4 000007D4 00111082 */  srl   $v0, $s1, 2
/* 0007D8 000007D8 8FB10044 */  lw    $s1, 0x44($sp)
/* 0007DC 000007DC 8FA30004 */  lw    $v1, 4($sp)
/* 0007E0 000007E0 8FA40008 */  lw    $a0, 8($sp)
/* 0007E4 000007E4 8FA5000C */  lw    $a1, 0xc($sp)
/* 0007E8 000007E8 8FA60010 */  lw    $a2, 0x10($sp)
/* 0007EC 000007EC 8FA70014 */  lw    $a3, 0x14($sp)
/* 0007F0 000007F0 8FA80018 */  lw    $t0, 0x18($sp)
/* 0007F4 000007F4 8FA9001C */  lw    $t1, 0x1c($sp)
/* 0007F8 000007F8 8FAA0020 */  lw    $t2, 0x20($sp)
/* 0007FC 000007FC 8FAB0024 */  lw    $t3, 0x24($sp)
/* 000800 00000800 8FAC0028 */  lw    $t4, 0x28($sp)
/* 000804 00000804 8FAD002C */  lw    $t5, 0x2c($sp)
/* 000808 00000808 8FAE0030 */  lw    $t6, 0x30($sp)
/* 00080C 0000080C 8FAF0034 */  lw    $t7, 0x34($sp)
/* 000810 00000810 8FB80038 */  lw    $t8, 0x38($sp)
/* 000814 00000814 8FB9003C */  lw    $t9, 0x3c($sp)
/* 000818 00000818 8FB00040 */  lw    $s0, 0x40($sp)
/* 00081C 0000081C 8FB20048 */  lw    $s2, 0x48($sp)
/* 000820 00000820 8FB3004C */  lw    $s3, 0x4c($sp)
/* 000824 00000824 8FB40050 */  lw    $s4, 0x50($sp)
/* 000828 00000828 8FB50054 */  lw    $s5, 0x54($sp)
/* 00082C 0000082C 8FB60058 */  lw    $s6, 0x58($sp)
/* 000830 00000830 8FB7005C */  lw    $s7, 0x5c($sp)
/* 000834 00000834 8FBE0060 */  lw    $fp, 0x60($sp)
/* 000838 00000838 03E00008 */  jr    $ra
/* 00083C 0000083C 27BD00A0 */   addiu $sp, $sp, 0xa0

/* 000840 00000840 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 000844 00000844 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000848 00000848 00004825 */  move  $t1, $zero
/* 00084C 0000084C 00005825 */  move  $t3, $zero
/* 000850 00000850 00006025 */  move  $t4, $zero
.L00000854:
/* 000854 00000854 299A0040 */  slti  $k0, $t4, 0x40
/* 000858 00000858 53400018 */  beql  $k0, $zero, .L000008BC
/* 00085C 0000085C 00001025 */   move  $v0, $zero
/* 000860 00000860 0D000243 */  jal   func_0400090C
/* 000864 00000864 01802025 */   move  $a0, $t4
/* 000868 00000868 58400008 */  blezl $v0, .L0000088C
/* 00086C 0000086C 293A0050 */   slti  $k0, $t1, 0x50
/* 000870 00000870 0049D023 */  subu  $k0, $v0, $t1
/* 000874 00000874 034C0019 */  multu $k0, $t4
/* 000878 00000878 00404825 */  move  $t1, $v0
/* 00087C 0000087C 0000D012 */  mflo  $k0
/* 000880 00000880 017A5821 */  addu  $t3, $t3, $k0
/* 000884 00000884 00000000 */  nop   
/* 000888 00000888 293A0050 */  slti  $k0, $t1, 0x50
.L0000088C:
/* 00088C 0000088C 1740FFF1 */  bnez  $k0, .L00000854
/* 000890 00000890 258C0001 */   addiu $t4, $t4, 1
/* 000894 00000894 000B2080 */  sll   $a0, $t3, 2
/* 000898 00000898 008B2023 */  subu  $a0, $a0, $t3
/* 00089C 0000089C 00042080 */  sll   $a0, $a0, 2
/* 0008A0 000008A0 008B2023 */  subu  $a0, $a0, $t3
/* 0008A4 000008A4 00042040 */  sll   $a0, $a0, 1
/* 0008A8 000008A8 0D000260 */  jal   func_04000980
/* 0008AC 000008AC 2484FC90 */   addiu $a0, $a0, -0x370
/* 0008B0 000008B0 10000003 */  b     .L000008C0
/* 0008B4 000008B4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0008B8 000008B8 00001025 */  move  $v0, $zero
.L000008BC:
/* 0008BC 000008BC 8FBF001C */  lw    $ra, 0x1c($sp)
.L000008C0:
/* 0008C0 000008C0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0008C4 000008C4 03E00008 */  jr    $ra
/* 0008C8 000008C8 00000000 */   nop   

/* 0008CC 000008CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0008D0 000008D0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0008D4 000008D4 00001025 */  move  $v0, $zero
/* 0008D8 000008D8 0D000290 */  jal   func_04000A40
/* 0008DC 000008DC 24050002 */   addiu $a1, $zero, 2
/* 0008E0 000008E0 0000F025 */  move  $fp, $zero
/* 0008E4 000008E4 241AFFFF */  addiu $k0, $zero, -1
.L000008E8:
/* 0008E8 000008E8 AE9A0004 */  sw    $k0, 4($s4)
/* 0008EC 000008EC 8E830004 */  lw    $v1, 4($s4)
/* 0008F0 000008F0 AE9A0000 */  sw    $k0, ($s4)
/* 0008F4 000008F4 AE9A0000 */  sw    $k0, ($s4)
/* 0008F8 000008F8 0000E025 */  move  $gp, $zero
/* 0008FC 000008FC 00031C02 */  srl   $v1, $v1, 0x10
.L00000900:
/* 000900 00000900 307A0001 */  andi  $k0, $v1, 1
/* 000904 00000904 53400003 */  beql  $k0, $zero, .L00000914
/* 000908 00000908 279C0001 */   addiu $gp, $gp, 1
/* 00090C 0000090C 24420001 */  addiu $v0, $v0, 1
/* 000910 00000910 279C0001 */  addiu $gp, $gp, 1
.L00000914:
/* 000914 00000914 2B9A0008 */  slti  $k0, $gp, 8
/* 000918 00000918 1740FFF9 */  bnez  $k0, .L00000900
/* 00091C 0000091C 00031842 */   srl   $v1, $v1, 1
/* 000920 00000920 27DE0001 */  addiu $fp, $fp, 1
/* 000924 00000924 2BDA000A */  slti  $k0, $fp, 0xa
/* 000928 00000928 5740FFEF */  bnezl $k0, .L000008E8
/* 00092C 0000092C 241AFFFF */   addiu $k0, $zero, -1
/* 000930 00000930 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000934 00000934 27BD0028 */  addiu $sp, $sp, 0x28
/* 000938 00000938 03E00008 */  jr    $ra
/* 00093C 0000093C 00000000 */   nop   

/* 000940 00000940 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000944 00000944 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000948 00000948 AFA40020 */  sw    $a0, 0x20($sp)
/* 00094C 0000094C A3A00027 */  sb    $zero, 0x27($sp)
/* 000950 00000950 00004025 */  move  $t0, $zero
/* 000954 00000954 00005025 */  move  $t2, $zero
/* 000958 00000958 340DC800 */  ori   $t5, $zero, 0xc800
/* 00095C 0000095C 00007025 */  move  $t6, $zero
/* 000960 00000960 29DA0040 */  slti  $k0, $t6, 0x40
.L00000964:
/* 000964 00000964 57400004 */  bnezl $k0, .L00000978
/* 000968 00000968 01C02025 */   move  $a0, $t6
/* 00096C 0000096C 10000020 */  b     .L000009F0
/* 000970 00000970 00001025 */   move  $v0, $zero
/* 000974 00000974 01C02025 */  move  $a0, $t6
.L00000978:
/* 000978 00000978 0D000290 */  jal   func_04000A40
/* 00097C 0000097C 24050001 */   addiu $a1, $zero, 1
/* 000980 00000980 0D0002B4 */  jal   func_04000AD0
/* 000984 00000984 27A40027 */   addiu $a0, $sp, 0x27
/* 000988 00000988 0D0002B4 */  jal   func_04000AD0
/* 00098C 0000098C 27A40027 */   addiu $a0, $sp, 0x27
/* 000990 00000990 93BA0027 */  lbu   $k0, 0x27($sp)
/* 000994 00000994 241B0320 */  addiu $k1, $zero, 0x320
/* 000998 00000998 8FA40020 */  lw    $a0, 0x20($sp)
/* 00099C 0000099C 035B0019 */  multu $k0, $k1
/* 0009A0 000009A0 00004012 */  mflo  $t0
/* 0009A4 000009A4 0104D023 */  subu  $k0, $t0, $a0
/* 0009A8 000009A8 07430003 */  bgezl $k0, .L000009B8
/* 0009AC 000009AC 034DD82A */   slt   $k1, $k0, $t5
/* 0009B0 000009B0 0088D023 */  subu  $k0, $a0, $t0
/* 0009B4 000009B4 034DD82A */  slt   $k1, $k0, $t5
.L000009B8:
/* 0009B8 000009B8 53600004 */  beql  $k1, $zero, .L000009CC
/* 0009BC 000009BC 8FA40020 */   lw    $a0, 0x20($sp)
/* 0009C0 000009C0 03406825 */  move  $t5, $k0
/* 0009C4 000009C4 01C05025 */  move  $t2, $t6
/* 0009C8 000009C8 8FA40020 */  lw    $a0, 0x20($sp)
.L000009CC:
/* 0009CC 000009CC 0104D82A */  slt   $k1, $t0, $a0
/* 0009D0 000009D0 53600006 */  beql  $k1, $zero, .L000009EC
/* 0009D4 000009D4 014E1021 */   addu  $v0, $t2, $t6
/* 0009D8 000009D8 25CE0001 */  addiu $t6, $t6, 1
/* 0009DC 000009DC 29DB0041 */  slti  $k1, $t6, 0x41
/* 0009E0 000009E0 5760FFE0 */  bnezl $k1, .L00000964
/* 0009E4 000009E4 29DA0040 */   slti  $k0, $t6, 0x40
/* 0009E8 000009E8 014E1021 */  addu  $v0, $t2, $t6
.L000009EC:
/* 0009EC 000009EC 00021042 */  srl   $v0, $v0, 1
.L000009F0:
/* 0009F0 000009F0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0009F4 000009F4 27BD0028 */  addiu $sp, $sp, 0x28
/* 0009F8 000009F8 03E00008 */  jr    $ra
/* 0009FC 000009FC 00000000 */   nop   

/* 000A00 00000A00 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000A04 00000A04 308400FF */  andi  $a0, $a0, 0xff
/* 000A08 00000A08 241B0001 */  addiu $k1, $zero, 1
/* 000A0C 00000A0C 3884003F */  xori  $a0, $a0, 0x3f
/* 000A10 00000A10 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000A14 00000A14 14BB0003 */  bne   $a1, $k1, .L00000A24
/* 000A18 00000A18 3C0F4600 */   lui   $t7, 0x4600
/* 000A1C 00000A1C 3C1A8000 */  lui   $k0, 0x8000
/* 000A20 00000A20 01FA7825 */  or    $t7, $t7, $k0
.L00000A24:
/* 000A24 00000A24 309A0001 */  andi  $k0, $a0, 1
/* 000A28 00000A28 001AD180 */  sll   $k0, $k0, 6
/* 000A2C 00000A2C 01FA7825 */  or    $t7, $t7, $k0
/* 000A30 00000A30 309A0002 */  andi  $k0, $a0, 2
/* 000A34 00000A34 001AD340 */  sll   $k0, $k0, 0xd
/* 000A38 00000A38 01FA7825 */  or    $t7, $t7, $k0
/* 000A3C 00000A3C 309A0004 */  andi  $k0, $a0, 4
/* 000A40 00000A40 001AD500 */  sll   $k0, $k0, 0x14
/* 000A44 00000A44 01FA7825 */  or    $t7, $t7, $k0
/* 000A48 00000A48 309A0008 */  andi  $k0, $a0, 8
/* 000A4C 00000A4C 001AD100 */  sll   $k0, $k0, 4
/* 000A50 00000A50 01FA7825 */  or    $t7, $t7, $k0
/* 000A54 00000A54 309A0010 */  andi  $k0, $a0, 0x10
/* 000A58 00000A58 001AD2C0 */  sll   $k0, $k0, 0xb
/* 000A5C 00000A5C 01FA7825 */  or    $t7, $t7, $k0
/* 000A60 00000A60 309A0020 */  andi  $k0, $a0, 0x20
/* 000A64 00000A64 001AD480 */  sll   $k0, $k0, 0x12
/* 000A68 00000A68 01FA7825 */  or    $t7, $t7, $k0
/* 000A6C 00000A6C 241B0001 */  addiu $k1, $zero, 1
/* 000A70 00000A70 14BB0003 */  bne   $a1, $k1, .L00000A80
/* 000A74 00000A74 AEAF0000 */   sw    $t7, ($s5)
/* 000A78 00000A78 3C1AA430 */  lui   $k0, 0xa430
/* 000A7C 00000A7C AF400000 */  sw    $zero, ($k0)
.L00000A80:
/* 000A80 00000A80 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000A84 00000A84 27BD0028 */  addiu $sp, $sp, 0x28
/* 000A88 00000A88 03E00008 */  jr    $ra
/* 000A8C 00000A8C 00000000 */   nop   

/* 000A90 00000A90 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000A94 00000A94 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000A98 00000A98 241A2000 */  addiu $k0, $zero, 0x2000
/* 000A9C 00000A9C 3C1BA430 */  lui   $k1, 0xa430
/* 000AA0 00000AA0 AF7A0000 */  sw    $k0, ($k1)
/* 000AA4 00000AA4 0000F025 */  move  $fp, $zero
/* 000AA8 00000AA8 8EBE0000 */  lw    $fp, ($s5)
/* 000AAC 00000AAC 241A1000 */  addiu $k0, $zero, 0x1000
/* 000AB0 00000AB0 AF7A0000 */  sw    $k0, ($k1)
/* 000AB4 00000AB4 241B0040 */  addiu $k1, $zero, 0x40
/* 000AB8 00000AB8 037ED824 */  and   $k1, $k1, $fp
/* 000ABC 00000ABC 001BD982 */  srl   $k1, $k1, 6
/* 000AC0 00000AC0 0000D025 */  move  $k0, $zero
/* 000AC4 00000AC4 035BD025 */  or    $k0, $k0, $k1
/* 000AC8 00000AC8 241B4000 */  addiu $k1, $zero, 0x4000
/* 000ACC 00000ACC 037ED824 */  and   $k1, $k1, $fp
/* 000AD0 00000AD0 001BDB42 */  srl   $k1, $k1, 0xd
/* 000AD4 00000AD4 035BD025 */  or    $k0, $k0, $k1
/* 000AD8 00000AD8 3C1B0040 */  lui   $k1, 0x40
/* 000ADC 00000ADC 037ED824 */  and   $k1, $k1, $fp
/* 000AE0 00000AE0 001BDD02 */  srl   $k1, $k1, 0x14
/* 000AE4 00000AE4 035BD025 */  or    $k0, $k0, $k1
/* 000AE8 00000AE8 241B0080 */  addiu $k1, $zero, 0x80
/* 000AEC 00000AEC 037ED824 */  and   $k1, $k1, $fp
/* 000AF0 00000AF0 001BD902 */  srl   $k1, $k1, 4
/* 000AF4 00000AF4 035BD025 */  or    $k0, $k0, $k1
/* 000AF8 00000AF8 341B8000 */  ori   $k1, $zero, 0x8000
/* 000AFC 00000AFC 037ED824 */  and   $k1, $k1, $fp
/* 000B00 00000B00 001BDAC2 */  srl   $k1, $k1, 0xb
/* 000B04 00000B04 035BD025 */  or    $k0, $k0, $k1
/* 000B08 00000B08 3C1B0080 */  lui   $k1, 0x80
/* 000B0C 00000B0C 037ED824 */  and   $k1, $k1, $fp
/* 000B10 00000B10 001BDC82 */  srl   $k1, $k1, 0x12
/* 000B14 00000B14 035BD025 */  or    $k0, $k0, $k1
/* 000B18 00000B18 A09A0000 */  sb    $k0, ($a0)
/* 000B1C 00000B1C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000B20 00000B20 27BD0028 */  addiu $sp, $sp, 0x28
/* 000B24 00000B24 03E00008 */  jr    $ra
/* 000B28 00000B28 00000000 */   nop   

/* 000B2C 00000B2C 00000000 */  nop   

.incbin "bin/ipl3_font.bin"
boot_end:
