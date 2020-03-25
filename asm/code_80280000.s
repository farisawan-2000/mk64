# Mario Kart 64 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_80280000
/* 123640 80280000 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 123644 80280004 AFBF0014 */  sw    $ra, 0x14($sp)
/* 123648 80280008 0C0A59A8 */  jal   func_802966A0
/* 12364C 8028000C 00000000 */   nop   
/* 123650 80280010 0C0166B2 */  jal   func_80059AC8
/* 123654 80280014 00000000 */   nop   
/* 123658 80280018 0C0166B2 */  jal   func_80059AC8
/* 12365C 8028001C 00000000 */   nop   
/* 123660 80280020 0C01681C */  jal   func_8005A070
/* 123664 80280024 00000000 */   nop   
/* 123668 80280028 8FBF0014 */  lw    $ra, 0x14($sp)
/* 12366C 8028002C 27BD0018 */  addiu $sp, $sp, 0x18
/* 123670 80280030 03E00008 */  jr    $ra
/* 123674 80280034 00000000 */   nop   

/* 123678 80280038 3C018015 */  lui   $at, %hi(D_80150112) # $at, 0x8015
/* 12367C 8028003C A4200112 */  sh    $zero, %lo(D_80150112)($at)
/* 123680 80280040 3C018016 */  lui   $at, %hi(D_80164AF0) # $at, 0x8016
/* 123684 80280044 27BDFF70 */  addiu $sp, $sp, -0x90
/* 123688 80280048 A4204AF0 */  sh    $zero, %lo(D_80164AF0)($at)
/* 12368C 8028004C AFBF002C */  sw    $ra, 0x2c($sp)
/* 123690 80280050 3C018019 */  lui   $at, %hi(D_8018D120) # $at, 0x8019
/* 123694 80280054 0C0A8F8F */  jal   func_802A3E3C
/* 123698 80280058 AC20D120 */   sw    $zero, %lo(D_8018D120)($at)
/* 12369C 8028005C 0C0A94E9 */  jal   func_802A53A4
/* 1236A0 80280060 00000000 */   nop   
/* 1236A4 80280064 0C0A8F8F */  jal   func_802A3E3C
/* 1236A8 80280068 00000000 */   nop   
/* 1236AC 8028006C 0C015FF1 */  jal   func_80057FC4
/* 1236B0 80280070 00002025 */   move  $a0, $zero
/* 1236B4 80280074 3C038015 */  lui   $v1, %hi(D_80150298) # $v1, 0x8015
/* 1236B8 80280078 24630298 */  addiu $v1, %lo(D_80150298) # addiu $v1, $v1, 0x298
/* 1236BC 8028007C 8C620000 */  lw    $v0, ($v1)
/* 1236C0 80280080 3C0FB700 */  lui   $t7, 0xb700
/* 1236C4 80280084 24182205 */  li    $t8, 8709
/* 1236C8 80280088 244E0008 */  addiu $t6, $v0, 8
/* 1236CC 8028008C AC6E0000 */  sw    $t6, ($v1)
/* 1236D0 80280090 3C018015 */  lui   $at, %hi(D_80150150) # $at, 0x8015
/* 1236D4 80280094 AC580004 */  sw    $t8, 4($v0)
/* 1236D8 80280098 AC4F0000 */  sw    $t7, ($v0)
/* 1236DC 8028009C C4240150 */  lwc1  $f4, %lo(D_80150150)($at)
/* 1236E0 802800A0 3C018015 */  lui   $at, %hi(D_8015014C) # $at, 0x8015
/* 1236E4 802800A4 C426014C */  lwc1  $f6, %lo(D_8015014C)($at)
/* 1236E8 802800A8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1236EC 802800AC 3C048015 */  lui   $a0, %hi(D_8014EF40) # $a0, 0x8015
/* 1236F0 802800B0 8C84EF40 */  lw    $a0, %lo(D_8014EF40)($a0)
/* 1236F4 802800B4 44814000 */  mtc1  $at, $f8
/* 1236F8 802800B8 3C068015 */  lui   $a2, %hi(D_80150130) # $a2, 0x8015
/* 1236FC 802800BC 3C078015 */  lui   $a3, %hi(D_80150148) # $a3, 0x8015
/* 123700 802800C0 8CE70148 */  lw    $a3, %lo(D_80150148)($a3)
/* 123704 802800C4 8CC60130 */  lw    $a2, %lo(D_80150130)($a2)
/* 123708 802800C8 27A5008E */  addiu $a1, $sp, 0x8e
/* 12370C 802800CC E7A40010 */  swc1  $f4, 0x10($sp)
/* 123710 802800D0 E7A60014 */  swc1  $f6, 0x14($sp)
/* 123714 802800D4 24840040 */  addiu $a0, $a0, 0x40
/* 123718 802800D8 0C033CCC */  jal   guPerspective
/* 12371C 802800DC E7A80018 */   swc1  $f8, 0x18($sp)
/* 123720 802800E0 3C038015 */  lui   $v1, %hi(D_80150298) # $v1, 0x8015
/* 123724 802800E4 24630298 */  addiu $v1, %lo(D_80150298) # addiu $v1, $v1, 0x298
/* 123728 802800E8 8C620000 */  lw    $v0, ($v1)
/* 12372C 802800EC 3C0BB400 */  lui   $t3, 0xb400
/* 123730 802800F0 3C0E0103 */  lui   $t6, (0x01030040 >> 16) # lui $t6, 0x103
/* 123734 802800F4 24590008 */  addiu $t9, $v0, 8
/* 123738 802800F8 AC790000 */  sw    $t9, ($v1)
/* 12373C 802800FC AC4B0000 */  sw    $t3, ($v0)
/* 123740 80280100 97AC008E */  lhu   $t4, 0x8e($sp)
/* 123744 80280104 3C0A8015 */  lui   $t2, %hi(D_8014EF40) # $t2, 0x8015
/* 123748 80280108 35CE0040 */  ori   $t6, (0x01030040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 12374C 8028010C AC4C0004 */  sw    $t4, 4($v0)
/* 123750 80280110 8C620000 */  lw    $v0, ($v1)
/* 123754 80280114 254AEF40 */  addiu $t2, %lo(D_8014EF40) # addiu $t2, $t2, -0x10c0
/* 123758 80280118 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 12375C 8028011C 244D0008 */  addiu $t5, $v0, 8
/* 123760 80280120 AC6D0000 */  sw    $t5, ($v1)
/* 123764 80280124 AC4E0000 */  sw    $t6, ($v0)
/* 123768 80280128 8D4F0000 */  lw    $t7, ($t2)
/* 12376C 8028012C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 123770 80280130 3C058016 */  lui   $a1, %hi(D_801646F0) # $a1, 0x8016
/* 123774 80280134 25F80040 */  addiu $t8, $t7, 0x40
/* 123778 80280138 0301C824 */  and   $t9, $t8, $at
/* 12377C 8028013C AC590004 */  sw    $t9, 4($v0)
/* 123780 80280140 3C018016 */  lui   $at, %hi(D_801646FC) # $at, 0x8016
/* 123784 80280144 C42A46FC */  lwc1  $f10, %lo(D_801646FC)($at)
/* 123788 80280148 3C018016 */  lui   $at, %hi(D_80164700) # $at, 0x8016
/* 12378C 8028014C C4304700 */  lwc1  $f16, %lo(D_80164700)($at)
/* 123790 80280150 3C018016 */  lui   $at, %hi(D_80164704) # $at, 0x8016
/* 123794 80280154 C4324704 */  lwc1  $f18, %lo(D_80164704)($at)
/* 123798 80280158 3C018016 */  lui   $at, %hi(D_80164708) # $at, 0x8016
/* 12379C 8028015C C4244708 */  lwc1  $f4, %lo(D_80164708)($at)
/* 1237A0 80280160 3C018016 */  lui   $at, %hi(D_8016470C) # $at, 0x8016
/* 1237A4 80280164 C426470C */  lwc1  $f6, %lo(D_8016470C)($at)
/* 1237A8 80280168 3C018016 */  lui   $at, %hi(D_80164710) # $at, 0x8016
/* 1237AC 8028016C C4284710 */  lwc1  $f8, %lo(D_80164710)($at)
/* 1237B0 80280170 8D440000 */  lw    $a0, ($t2)
/* 1237B4 80280174 3C068016 */  lui   $a2, %hi(D_801646F4) # $a2, 0x8016
/* 1237B8 80280178 3C078016 */  lui   $a3, %hi(D_801646F8) # $a3, 0x8016
/* 1237BC 8028017C 8CE746F8 */  lw    $a3, %lo(D_801646F8)($a3)
/* 1237C0 80280180 8CC646F4 */  lw    $a2, %lo(D_801646F4)($a2)
/* 1237C4 80280184 8CA546F0 */  lw    $a1, %lo(D_801646F0)($a1)
/* 1237C8 80280188 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 1237CC 8028018C E7B00014 */  swc1  $f16, 0x14($sp)
/* 1237D0 80280190 E7B20018 */  swc1  $f18, 0x18($sp)
/* 1237D4 80280194 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 1237D8 80280198 E7A60020 */  swc1  $f6, 0x20($sp)
/* 1237DC 8028019C E7A80024 */  swc1  $f8, 0x24($sp)
/* 1237E0 802801A0 0C033D92 */  jal   guLookAt
/* 1237E4 802801A4 248401C0 */   addiu $a0, $a0, 0x1c0
/* 1237E8 802801A8 3C038015 */  lui   $v1, %hi(D_80150298) # $v1, 0x8015
/* 1237EC 802801AC 24630298 */  addiu $v1, %lo(D_80150298) # addiu $v1, $v1, 0x298
/* 1237F0 802801B0 8C620000 */  lw    $v0, ($v1)
/* 1237F4 802801B4 3C0C0101 */  lui   $t4, (0x01010040 >> 16) # lui $t4, 0x101
/* 1237F8 802801B8 358C0040 */  ori   $t4, (0x01010040 & 0xFFFF) # ori $t4, $t4, 0x40
/* 1237FC 802801BC 244B0008 */  addiu $t3, $v0, 8
/* 123800 802801C0 AC6B0000 */  sw    $t3, ($v1)
/* 123804 802801C4 3C0D8015 */  lui   $t5, %hi(D_8014EF40) # $t5, 0x8015
/* 123808 802801C8 AC4C0000 */  sw    $t4, ($v0)
/* 12380C 802801CC 8DADEF40 */  lw    $t5, %lo(D_8014EF40)($t5)
/* 123810 802801D0 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 123814 802801D4 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 123818 802801D8 25AE01C0 */  addiu $t6, $t5, 0x1c0
/* 12381C 802801DC 01C17824 */  and   $t7, $t6, $at
/* 123820 802801E0 3C18800E */  lui   $t8, %hi(D_800DC644) # $t8, 0x800e
/* 123824 802801E4 AC4F0004 */  sw    $t7, 4($v0)
/* 123828 802801E8 8718C644 */  lh    $t8, %lo(D_800DC644)($t8)
/* 12382C 802801EC 3C01800E */  lui   $at, %hi(D_800DC5A0) # $at, 0x800e
/* 123830 802801F0 27A40044 */  addiu $a0, $sp, 0x44
/* 123834 802801F4 0C0AD4F2 */  jal   func_802B53C8
/* 123838 802801F8 A438C5A0 */   sh    $t8, %lo(D_800DC5A0)($at)
/* 12383C 802801FC 27A40044 */  addiu $a0, $sp, 0x44
/* 123840 80280200 0C0AD3FE */  jal   func_802B4FF8
/* 123844 80280204 00002825 */   move  $a1, $zero
/* 123848 80280208 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 12384C 8028020C 0C0A568E */  jal   func_80295A38
/* 123850 80280210 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 123854 80280214 3C04800E */  lui   $a0, %hi(D_800DC5EC) # $a0, 0x800e
/* 123858 80280218 0C0A8C02 */  jal   func_802A3008
/* 12385C 8028021C 8C84C5EC */   lw    $a0, %lo(D_800DC5EC)($a0)
/* 123860 80280220 0C016024 */  jal   func_80058090
/* 123864 80280224 00002025 */   move  $a0, $zero
/* 123868 80280228 0C01614E */  jal   func_80058538
/* 12386C 8028022C 00002025 */   move  $a0, $zero
/* 123870 80280230 0C0A1330 */  jal   func_80284CC0
/* 123874 80280234 00000000 */   nop   
/* 123878 80280238 0C0A0710 */  jal   func_80281C40
/* 12387C 8028023C 00000000 */   nop   
/* 123880 80280240 0C0A8F8F */  jal   func_802A3E3C
/* 123884 80280244 00000000 */   nop   
/* 123888 80280248 0C024FC4 */  jal   func_80093F10
/* 12388C 8028024C 00000000 */   nop   
/* 123890 80280250 0C0A8F8F */  jal   func_802A3E3C
/* 123894 80280254 00000000 */   nop   
/* 123898 80280258 8FBF002C */  lw    $ra, 0x2c($sp)
/* 12389C 8028025C 27BD0090 */  addiu $sp, $sp, 0x90
/* 1238A0 80280260 03E00008 */  jr    $ra
/* 1238A4 80280264 00000000 */   nop   

/* 1238A8 80280268 240E0001 */  li    $t6, 1
/* 1238AC 8028026C 3C01800E */  lui   $at, %hi(D_800DC5C0) # $at, 0x800e
/* 1238B0 80280270 A42EC5C0 */  sh    $t6, %lo(D_800DC5C0)($at)
/* 1238B4 80280274 3C01800E */  lui   $at, %hi(D_800DC5C4) # $at, 0x800e
/* 1238B8 80280278 240F0005 */  li    $t7, 5
/* 1238BC 8028027C A42FC5C4 */  sh    $t7, %lo(D_800DC5C4)($at)
/* 1238C0 80280280 3C018028 */  lui   $at, %hi(D_802874A0) # $at, 0x8028
/* 1238C4 80280284 24180001 */  li    $t8, 1
/* 1238C8 80280288 04800004 */  bltz  $a0, .L8028029C
/* 1238CC 8028028C AC3874A0 */   sw    $t8, %lo(D_802874A0)($at)
/* 1238D0 80280290 28810014 */  slti  $at, $a0, 0x14
/* 1238D4 80280294 14200002 */  bnez  $at, .L802802A0
/* 1238D8 80280298 00000000 */   nop   
glabel .L8028029C
/* 1238DC 8028029C 00002025 */  move  $a0, $zero
glabel .L802802A0
/* 1238E0 802802A0 3C01800E */  lui   $at, 0x800e
/* 1238E4 802802A4 03E00008 */  jr    $ra
/* 1238E8 802802A8 A424C644 */   sh    $a0, -0x39bc($at)

/* 1238EC 802802AC 3C03800E */  lui   $v1, %hi(D_800DC5C0) # $v1, 0x800e
/* 1238F0 802802B0 3C018028 */  lui   $at, %hi(D_802874A0) # $at, 0x8028
/* 1238F4 802802B4 2463C5C0 */  addiu $v1, %lo(D_800DC5C0) # addiu $v1, $v1, -0x3a40
/* 1238F8 802802B8 AC2074A0 */  sw    $zero, %lo(D_802874A0)($at)
/* 1238FC 802802BC 946E0000 */  lhu   $t6, ($v1)
/* 123900 802802C0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 123904 802802C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 123908 802802C8 11C00010 */  beqz  $t6, .L8028030C
/* 12390C 802802CC 3C018028 */   lui   $at, 0x8028
/* 123910 802802D0 3C02800E */  lui   $v0, %hi(D_800DC5C4) # $v0, 0x800e
/* 123914 802802D4 2442C5C4 */  addiu $v0, %lo(D_800DC5C4) # addiu $v0, $v0, -0x3a3c
/* 123918 802802D8 944F0000 */  lhu   $t7, ($v0)
/* 12391C 802802DC 24080009 */  li    $t0, 9
/* 123920 802802E0 3C01800E */  lui   $at, %hi(D_800DC524) # $at, 0x800e
/* 123924 802802E4 25F8FFFF */  addiu $t8, $t7, -1
/* 123928 802802E8 3319FFFF */  andi  $t9, $t8, 0xffff
/* 12392C 802802EC 17200048 */  bnez  $t9, .L80280410
/* 123930 802802F0 A4580000 */   sh    $t8, ($v0)
/* 123934 802802F4 A4600000 */  sh    $zero, ($v1)
/* 123938 802802F8 AC28C524 */  sw    $t0, %lo(D_800DC524)($at)
/* 12393C 802802FC 3C01800E */  lui   $at, %hi(D_800E74FC) # $at, 0x800e
/* 123940 80280300 240900FF */  li    $t1, 255
/* 123944 80280304 10000042 */  b     .L80280410
/* 123948 80280308 AC29C50C */   sw    $t1, %lo(D_800DC50C)($at)
glabel .L8028030C
/* 12394C 8028030C 3C048016 */  lui   $a0, %hi(D_801646F0) # $a0, 0x8016
/* 123950 80280310 AC2074FC */  sw    $zero, %lo(D_800E74FC)($at)
/* 123954 80280314 0C0A0D92 */  jal   func_80283648
/* 123958 80280318 248446F0 */   addiu $a0, %lo(D_801646F0) # addiu $a0, $a0, 0x46f0
/* 12395C 8028031C 3C018016 */  lui   $at, %hi(D_801646FC) # $at, 0x8016
/* 123960 80280320 C42446FC */  lwc1  $f4, %lo(D_801646FC)($at)
/* 123964 80280324 3C018016 */  lui   $at, %hi(D_801646F0) # $at, 0x8016
/* 123968 80280328 C42646F0 */  lwc1  $f6, %lo(D_801646F0)($at)
/* 12396C 8028032C 3C018016 */  lui   $at, %hi(D_80164700) # $at, 0x8016
/* 123970 80280330 C4284700 */  lwc1  $f8, %lo(D_80164700)($at)
/* 123974 80280334 3C018016 */  lui   $at, %hi(D_801646F4) # $at, 0x8016
/* 123978 80280338 C42A46F4 */  lwc1  $f10, %lo(D_801646F4)($at)
/* 12397C 8028033C 3C018016 */  lui   $at, %hi(D_80164704) # $at, 0x8016
/* 123980 80280340 C4324704 */  lwc1  $f18, %lo(D_80164704)($at)
/* 123984 80280344 46062301 */  sub.s $f12, $f4, $f6
/* 123988 80280348 3C018016 */  lui   $at, %hi(D_801646F8) # $at, 0x8016
/* 12398C 8028034C C42446F8 */  lwc1  $f4, %lo(D_801646F8)($at)
/* 123990 80280350 460A4401 */  sub.s $f16, $f8, $f10
/* 123994 80280354 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 123998 80280358 46049381 */  sub.s $f14, $f18, $f4
/* 12399C 8028035C E7B0001C */  swc1  $f16, 0x1c($sp)
/* 1239A0 80280360 0C0ADE0C */  jal   func_802B7830
/* 1239A4 80280364 E7AE0018 */   swc1  $f14, 0x18($sp)
/* 1239A8 80280368 C7A00020 */  lwc1  $f0, 0x20($sp)
/* 1239AC 8028036C C7AE0018 */  lwc1  $f14, 0x18($sp)
/* 1239B0 80280370 3C018016 */  lui   $at, %hi(D_80164716) # $at, 0x8016
/* 1239B4 80280374 46000182 */  mul.s $f6, $f0, $f0
/* 1239B8 80280378 A4224716 */  sh    $v0, %lo(D_80164716)($at)
/* 1239BC 8028037C 460E7202 */  mul.s $f8, $f14, $f14
/* 1239C0 80280380 0C033850 */  jal   sqrtf
/* 1239C4 80280384 46083300 */   add.s $f12, $f6, $f8
/* 1239C8 80280388 46000306 */  mov.s $f12, $f0
/* 1239CC 8028038C 0C0ADE0C */  jal   func_802B7830
/* 1239D0 80280390 C7AE001C */   lwc1  $f14, 0x1c($sp)
/* 1239D4 80280394 3C0A8028 */  lui   $t2, %hi(D_802874A0) # $t2, 0x8028
/* 1239D8 80280398 8D4A74A0 */  lw    $t2, %lo(D_802874A0)($t2)
/* 1239DC 8028039C 3C018016 */  lui   $at, %hi(D_80164714) # $at, 0x8016
/* 1239E0 802803A0 A4224714 */  sh    $v0, %lo(D_80164714)($at)
/* 1239E4 802803A4 3C018016 */  lui   $at, %hi(D_80164718) # $at, 0x8016
/* 1239E8 802803A8 11400007 */  beqz  $t2, .L802803C8
/* 1239EC 802803AC A4204718 */   sh    $zero, %lo(D_80164718)($at)
/* 1239F0 802803B0 3C02800E */  lui   $v0, %hi(D_800DC5E4) # $v0, 0x800e
/* 1239F4 802803B4 2442C5E4 */  addiu $v0, %lo(D_800DC5E4) # addiu $v0, $v0, -0x3a1c
/* 1239F8 802803B8 944B0000 */  lhu   $t3, ($v0)
/* 1239FC 802803BC 256C0001 */  addiu $t4, $t3, 1
/* 123A00 802803C0 10000013 */  b     .L80280410
/* 123A04 802803C4 A44C0000 */   sh    $t4, ($v0)
glabel .L802803C8
/* 123A08 802803C8 0C0A0000 */  jal   func_80280000
/* 123A0C 802803CC 00000000 */   nop   
/* 123A10 802803D0 0C0A000E */  jal   func_80280038
/* 123A14 802803D4 00000000 */   nop   
/* 123A18 802803D8 3C058015 */  lui   $a1, %hi(D_80150298) # $a1, 0x8015
/* 123A1C 802803DC 24A50298 */  addiu $a1, %lo(D_80150298) # addiu $a1, $a1, 0x298
/* 123A20 802803E0 8CA20000 */  lw    $v0, ($a1)
/* 123A24 802803E4 3C0EE900 */  lui   $t6, 0xe900
/* 123A28 802803E8 3C18B800 */  lui   $t8, 0xb800
/* 123A2C 802803EC 244D0008 */  addiu $t5, $v0, 8
/* 123A30 802803F0 ACAD0000 */  sw    $t5, ($a1)
/* 123A34 802803F4 AC400004 */  sw    $zero, 4($v0)
/* 123A38 802803F8 AC4E0000 */  sw    $t6, ($v0)
/* 123A3C 802803FC 8CA20000 */  lw    $v0, ($a1)
/* 123A40 80280400 244F0008 */  addiu $t7, $v0, 8
/* 123A44 80280404 ACAF0000 */  sw    $t7, ($a1)
/* 123A48 80280408 AC400004 */  sw    $zero, 4($v0)
/* 123A4C 8028040C AC580000 */  sw    $t8, ($v0)
glabel .L80280410
/* 123A50 80280410 8FBF0014 */  lw    $ra, 0x14($sp)
/* 123A54 80280414 27BD0028 */  addiu $sp, $sp, 0x28
/* 123A58 80280418 03E00008 */  jr    $ra
/* 123A5C 8028041C 00000000 */   nop   

/* 123A60 80280420 3C0E800E */  lui   $t6, %hi(D_800DC644) # $t6, 0x800e
/* 123A64 80280424 85CEC644 */  lh    $t6, %lo(D_800DC644)($t6)
/* 123A68 80280428 3C01800E */  lui   $at, %hi(D_800DC5A0) # $at, 0x800e
/* 123A6C 8028042C 24020001 */  li    $v0, 1
/* 123A70 80280430 A42EC5A0 */  sh    $t6, %lo(D_800DC5A0)($at)
/* 123A74 80280434 3C01800E */  lui   $at, %hi(D_800DC5B4) # $at, 0x800e
/* 123A78 80280438 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 123A7C 8028043C A422C5B4 */  sh    $v0, %lo(D_800DC5B4)($at)
/* 123A80 80280440 AFBF0014 */  sw    $ra, 0x14($sp)
/* 123A84 80280444 3C01800E */  lui   $at, %hi(D_800DC518) # $at, 0x800e
/* 123A88 80280448 0C0A9346 */  jal   func_802A4D18
/* 123A8C 8028044C A422C518 */   sh    $v0, %lo(D_800DC518)($at)
/* 123A90 80280450 0C0A9D2F */  jal   func_802A74BC
/* 123A94 80280454 00000000 */   nop   
/* 123A98 80280458 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 123A9C 8028045C 44810000 */  mtc1  $at, $f0
/* 123AA0 80280460 3C018016 */  lui   $at, %hi(D_801647A4) # $at, 0x8016
/* 123AA4 80280464 3C02800E */  lui   $v0, %hi(D_800DC5EC) # $v0, 0x800e
/* 123AA8 80280468 E42047A4 */  swc1  $f0, %lo(D_801647A4)($at)
/* 123AAC 8028046C 3C018015 */  lui   $at, %hi(D_80150130) # $at, 0x8015
/* 123AB0 80280470 2442C5EC */  addiu $v0, %lo(D_800DC5EC) # addiu $v0, $v0, -0x3a14
/* 123AB4 80280474 E4200130 */  swc1  $f0, %lo(D_80150130)($at)
/* 123AB8 80280478 8C580000 */  lw    $t8, ($v0)
/* 123ABC 8028047C 240F0140 */  li    $t7, 320
/* 123AC0 80280480 241900F0 */  li    $t9, 240
/* 123AC4 80280484 A70F002C */  sh    $t7, 0x2c($t8)
/* 123AC8 80280488 8C480000 */  lw    $t0, ($v0)
/* 123ACC 8028048C 240900A0 */  li    $t1, 160
/* 123AD0 80280490 240B0078 */  li    $t3, 120
/* 123AD4 80280494 A519002E */  sh    $t9, 0x2e($t0)
/* 123AD8 80280498 8C4A0000 */  lw    $t2, ($v0)
/* 123ADC 8028049C 3C01800E */  lui   $at, %hi(D_800DC530) # $at, 0x800e
/* 123AE0 802804A0 3C0D8016 */  lui   $t5, %hi(D_8015F734) # $t5, 0x8016
/* 123AE4 802804A4 A5490030 */  sh    $t1, 0x30($t2)
/* 123AE8 802804A8 8C4C0000 */  lw    $t4, ($v0)
/* 123AEC 802804AC 3C04800E */  lui   $a0, %hi(D_800DC5A0) # $a0, 0x800e
/* 123AF0 802804B0 A58B0032 */  sh    $t3, 0x32($t4)
/* 123AF4 802804B4 AC20C530 */  sw    $zero, %lo(D_800DC530)($at)
/* 123AF8 802804B8 3C01800E */  lui   $at, %hi(D_800DC52C) # $at, 0x800e
/* 123AFC 802804BC 8DADF734 */  lw    $t5, %lo(D_8015F734)($t5)
/* 123B00 802804C0 AC20C52C */  sw    $zero, %lo(D_800DC52C)($at)
/* 123B04 802804C4 3C018016 */  lui   $at, %hi(D_8015F728) # $at, 0x8016
/* 123B08 802804C8 8484C5A0 */  lh    $a0, %lo(D_800DC5A0)($a0)
/* 123B0C 802804CC 0C0AAA46 */  jal   LoadLevel
/* 123B10 802804D0 AC2DF728 */   sw    $t5, %lo(D_8015F728)($at)
/* 123B14 802804D4 3C0E8016 */  lui   $t6, %hi(D_8015F728) # $t6, 0x8016
/* 123B18 802804D8 8DCEF728 */  lw    $t6, %lo(D_8015F728)($t6)
/* 123B1C 802804DC 3C018016 */  lui   $at, %hi(D_8015F730) # $at, 0x8016
/* 123B20 802804E0 3C040082 */  lui   $a0, %hi(D_00821D10) # $a0, 0x82
/* 123B24 802804E4 3C050082 */  lui   $a1, %hi(D_00825800) # $a1, 0x82
/* 123B28 802804E8 24A55800 */  addiu $a1, %lo(D_00825800) # addiu $a1, $a1, 0x5800
/* 123B2C 802804EC 24841D10 */  addiu $a0, %lo(D_00821D10) # addiu $a0, $a0, 0x1d10
/* 123B30 802804F0 0C0AAA23 */  jal   func_802AA88C
/* 123B34 802804F4 AC2EF730 */   sw    $t6, %lo(D_8015F730)($at)
/* 123B38 802804F8 2404000B */  li    $a0, 11
/* 123B3C 802804FC 0C0A9EE5 */  jal   SetSegmentBase
/* 123B40 80280500 00402825 */   move  $a1, $v0
/* 123B44 80280504 3C0144AF */  li    $at, 0x44AF0000 # 1400.000000
/* 123B48 80280508 44811000 */  mtc1  $at, $f2
/* 123B4C 8028050C 2403EA5F */  li    $v1, -5537
/* 123B50 80280510 3C018016 */  lui   $at, %hi(D_8015F6EA) # $at, 0x8016
/* 123B54 80280514 A423F6EA */  sh    $v1, %lo(D_8015F6EA)($at)
/* 123B58 80280518 3C018016 */  lui   $at, %hi(D_8015F6EE) # $at, 0x8016
/* 123B5C 8028051C A423F6EE */  sh    $v1, %lo(D_8015F6EE)($at)
/* 123B60 80280520 3C018016 */  lui   $at, %hi(D_8015F6F2) # $at, 0x8016
/* 123B64 80280524 A423F6F2 */  sh    $v1, %lo(D_8015F6F2)($at)
/* 123B68 80280528 240415A1 */  li    $a0, 5537
/* 123B6C 8028052C 3C018016 */  lui   $at, %hi(D_8015F6E8) # $at, 0x8016
/* 123B70 80280530 A424F6E8 */  sh    $a0, %lo(D_8015F6E8)($at)
/* 123B74 80280534 3C018016 */  lui   $at, %hi(D_8015F6EC) # $at, 0x8016
/* 123B78 80280538 A424F6EC */  sh    $a0, %lo(D_8015F6EC)($at)
/* 123B7C 8028053C 3C018016 */  lui   $at, %hi(D_8015F6F0) # $at, 0x8016
/* 123B80 80280540 A424F6F0 */  sh    $a0, %lo(D_8015F6F0)($at)
/* 123B84 80280544 3C018016 */  lui   $at, %hi(D_8015F59C) # $at, 0x8016
/* 123B88 80280548 AC20F59C */  sw    $zero, %lo(D_8015F59C)($at)
/* 123B8C 8028054C 3C018016 */  lui   $at, %hi(D_8015F5A0) # $at, 0x8016
/* 123B90 80280550 AC20F5A0 */  sw    $zero, %lo(D_8015F5A0)($at)
/* 123B94 80280554 3C018016 */  lui   $at, %hi(D_8015F58C) # $at, 0x8016
/* 123B98 80280558 AC20F58C */  sw    $zero, %lo(D_8015F58C)($at)
/* 123B9C 8028055C 3C018016 */  lui   $at, %hi(D_8015F588) # $at, 0x8016
/* 123BA0 80280560 A420F588 */  sh    $zero, %lo(D_8015F588)($at)
/* 123BA4 80280564 3C01800E */  lui   $at, %hi(D_800DC5BC) # $at, 0x800e
/* 123BA8 80280568 A420C5BC */  sh    $zero, %lo(D_800DC5BC)($at)
/* 123BAC 8028056C 3C0F8016 */  lui   $t7, %hi(D_8015F728) # $t7, 0x8016
/* 123BB0 80280570 8DEFF728 */  lw    $t7, %lo(D_8015F728)($t7)
/* 123BB4 80280574 3C01800E */  lui   $at, %hi(D_800DC5C8) # $at, 0x800e
/* 123BB8 80280578 A420C5C8 */  sh    $zero, %lo(D_800DC5C8)($at)
/* 123BBC 8028057C 3C018016 */  lui   $at, %hi(D_8015F580) # $at, 0x8016
/* 123BC0 80280580 AC2FF580 */  sw    $t7, %lo(D_8015F580)($at)
/* 123BC4 80280584 3C018016 */  lui   $at, %hi(D_801646F0) # $at, 0x8016
/* 123BC8 80280588 E42246F0 */  swc1  $f2, %lo(D_801646F0)($at)
/* 123BCC 8028058C 3C014396 */  li    $at, 0x43960000 # 300.000000
/* 123BD0 80280590 44812000 */  mtc1  $at, $f4
/* 123BD4 80280594 3C018016 */  lui   $at, %hi(D_801646F4) # $at, 0x8016
/* 123BD8 80280598 44800000 */  mtc1  $zero, $f0
/* 123BDC 8028059C E42446F4 */  swc1  $f4, %lo(D_801646F4)($at)
/* 123BE0 802805A0 3C018016 */  lui   $at, %hi(D_801646F8) # $at, 0x8016
/* 123BE4 802805A4 E42246F8 */  swc1  $f2, %lo(D_801646F8)($at)
/* 123BE8 802805A8 3C018016 */  lui   $at, %hi(D_801646FC) # $at, 0x8016
/* 123BEC 802805AC E42046FC */  swc1  $f0, %lo(D_801646FC)($at)
/* 123BF0 802805B0 3C018016 */  lui   $at, %hi(D_80164700) # $at, 0x8016
/* 123BF4 802805B4 E4204700 */  swc1  $f0, %lo(D_80164700)($at)
/* 123BF8 802805B8 3C018016 */  lui   $at, %hi(D_80164704) # $at, 0x8016
/* 123BFC 802805BC E4204704 */  swc1  $f0, %lo(D_80164704)($at)
/* 123C00 802805C0 3C018016 */  lui   $at, %hi(D_80164708) # $at, 0x8016
/* 123C04 802805C4 E4204708 */  swc1  $f0, %lo(D_80164708)($at)
/* 123C08 802805C8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 123C0C 802805CC 44813000 */  mtc1  $at, $f6
/* 123C10 802805D0 3C018016 */  lui   $at, %hi(D_8016470C) # $at, 0x8016
/* 123C14 802805D4 E426470C */  swc1  $f6, %lo(D_8016470C)($at)
/* 123C18 802805D8 3C018016 */  lui   $at, %hi(D_80164710) # $at, 0x8016
/* 123C1C 802805DC 0C0A0D0C */  jal   func_80283430
/* 123C20 802805E0 E4204710 */   swc1  $f0, %lo(D_80164710)($at)
/* 123C24 802805E4 0C000C10 */  jal   func_80003040
/* 123C28 802805E8 00000000 */   nop   
/* 123C2C 802805EC 0C01BA70 */  jal   func_8006E9C0
/* 123C30 802805F0 00000000 */   nop   
/* 123C34 802805F4 0C024F98 */  jal   func_80093E60
/* 123C38 802805F8 00000000 */   nop   
/* 123C3C 802805FC 0C0249A2 */  jal   func_80092688
/* 123C40 80280600 00000000 */   nop   
/* 123C44 80280604 3C188016 */  lui   $t8, %hi(D_8015F72C) # $t8, 0x8016
/* 123C48 80280608 3C198016 */  lui   $t9, %hi(D_8015F728) # $t9, 0x8016
/* 123C4C 8028060C 8F39F728 */  lw    $t9, %lo(D_8015F728)($t9)
/* 123C50 80280610 8F18F72C */  lw    $t8, %lo(D_8015F72C)($t8)
/* 123C54 80280614 3C01447A */  li    $at, 0x447A0000 # 1000.000000
/* 123C58 80280618 44818000 */  mtc1  $at, $f16
/* 123C5C 8028061C 03194823 */  subu  $t1, $t8, $t9
/* 123C60 80280620 44894000 */  mtc1  $t1, $f8
/* 123C64 80280624 8FBF0014 */  lw    $ra, 0x14($sp)
/* 123C68 80280628 3C028016 */  lui   $v0, %hi(D_801625F8) # $v0, 0x8016
/* 123C6C 8028062C 468042A0 */  cvt.s.w $f10, $f8
/* 123C70 80280630 244225F8 */  addiu $v0, %lo(D_801625F8) # addiu $v0, $v0, 0x25f8
/* 123C74 80280634 AC490000 */  sw    $t1, ($v0)
/* 123C78 80280638 3C018016 */  lui   $at, 0x8016
/* 123C7C 8028063C 27BD0018 */  addiu $sp, $sp, 0x18
/* 123C80 80280640 46105483 */  div.s $f18, $f10, $f16
/* 123C84 80280644 03E00008 */  jr    $ra
/* 123C88 80280648 E43225FC */   swc1  $f18, 0x25fc($at)

/* 123C8C 8028064C 00000000 */  nop   
