.late_rodata
glabel jtbl_8013A4EC
    .word 0x8005AAD8 # 1
    .word 0x8005AB68 # 2
    .word 0x8005AC0C
    .word 0x8005ABB8 # 4
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AB38 # 8
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AB10 # 16
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC0C
    .word 0x8005AC00 # 32
    
glabel D_8013A56C
    .float 182.041672 # 32768 / PI
    
.text
glabel func_8005AA90
/* AD1C30 8005AA90 10C00060 */  beqz  $a2, .L8005AC14
/* AD1C34 8005AA94 27BDFFE0 */   addiu $sp, $sp, -0x20
/* AD1C38 8005AA98 28A10021 */  slti  $at, $a1, 0x21
/* AD1C3C 8005AA9C 14200006 */  bnez  $at, .L8005AAB8
/* AD1C40 8005AAA0 24AEFFFF */   addiu $t6, $a1, -1
/* AD1C44 8005AAA4 24010040 */  li    $at, 64
/* AD1C48 8005AAA8 10A1004A */  beq   $a1, $at, .L8005ABD4
/* AD1C4C 8005AAAC 00000000 */   nop   
/* AD1C50 8005AAB0 1000005A */  b     .L8005AC1C
/* AD1C54 8005AAB4 00001025 */   move  $v0, $zero
.L8005AAB8:
/* AD1C58 8005AAB8 2DC10020 */  sltiu $at, $t6, 0x20
/* AD1C5C 8005AABC 10200053 */  beqz  $at, .L8005AC0C
/* AD1C60 8005AAC0 000E7080 */   sll   $t6, $t6, 2
/* AD1C64 8005AAC4 3C018014 */  lui   $at, %hi(jtbl_8013A4EC)
/* AD1C68 8005AAC8 002E0821 */  addu  $at, $at, $t6
/* AD1C6C 8005AACC 8C2EA4EC */  lw    $t6, %lo(jtbl_8013A4EC)($at)
/* AD1C70 8005AAD0 01C00008 */  jr    $t6
/* AD1C74 8005AAD4 00000000 */   nop   
/* AD1C78 8005AAD8 848F015C */  lh    $t7, 0x15c($a0)
/* AD1C7C 8005AADC 31F8FFE6 */  andi  $t8, $t7, 0xffe6
/* AD1C80 8005AAE0 A498015C */  sh    $t8, 0x15c($a0)
/* AD1C84 8005AAE4 8CC80000 */  lw    $t0, ($a2)
/* AD1C88 8005AAE8 AC880050 */  sw    $t0, 0x50($a0)
/* AD1C8C 8005AAEC 8CD90004 */  lw    $t9, 4($a2)
/* AD1C90 8005AAF0 AC990054 */  sw    $t9, 0x54($a0)
/* AD1C94 8005AAF4 8CC80008 */  lw    $t0, 8($a2)
/* AD1C98 8005AAF8 AC880058 */  sw    $t0, 0x58($a0)
.L8005AAFC:
/* AD1C9C 8005AAFC 8489015C */  lh    $t1, 0x15c($a0)
.L8005AB00:
/* AD1CA0 8005AB00 24020001 */  li    $v0, 1
/* AD1CA4 8005AB04 01255025 */  or    $t2, $t1, $a1
/* AD1CA8 8005AB08 10000044 */  b     .L8005AC1C
/* AD1CAC 8005AB0C A48A015C */   sh    $t2, 0x15c($a0)
/* AD1CB0 8005AB10 848B015C */  lh    $t3, 0x15c($a0)
/* AD1CB4 8005AB14 316CFFE6 */  andi  $t4, $t3, 0xffe6
/* AD1CB8 8005AB18 A48C015C */  sh    $t4, 0x15c($a0)
/* AD1CBC 8005AB1C 8CCE0000 */  lw    $t6, ($a2)
/* AD1CC0 8005AB20 AC8E00AC */  sw    $t6, 0xac($a0)
/* AD1CC4 8005AB24 8CCD0004 */  lw    $t5, 4($a2)
/* AD1CC8 8005AB28 AC8D00B0 */  sw    $t5, 0xb0($a0)
/* AD1CCC 8005AB2C 8CCE0008 */  lw    $t6, 8($a2)
/* AD1CD0 8005AB30 1000FFF2 */  b     .L8005AAFC
/* AD1CD4 8005AB34 AC8E00B4 */   sw    $t6, 0xb4($a0)
/* AD1CD8 8005AB38 84820142 */  lh    $v0, 0x142($a0)
/* AD1CDC 8005AB3C 2401003C */  li    $at, 60
/* AD1CE0 8005AB40 5041FFEF */  beql  $v0, $at, .L8005AB00
/* AD1CE4 8005AB44 8489015C */   lh    $t1, 0x15c($a0)
/* AD1CE8 8005AB48 2401002B */  li    $at, 43
/* AD1CEC 8005AB4C 5041FFEC */  beql  $v0, $at, .L8005AB00
/* AD1CF0 8005AB50 8489015C */   lh    $t1, 0x15c($a0)
/* AD1CF4 8005AB54 848F015C */  lh    $t7, 0x15c($a0)
/* AD1CF8 8005AB58 AC8600A8 */  sw    $a2, 0xa8($a0)
/* AD1CFC 8005AB5C 31F8FFE6 */  andi  $t8, $t7, 0xffe6
/* AD1D00 8005AB60 1000FFE6 */  b     .L8005AAFC
/* AD1D04 8005AB64 A498015C */   sh    $t8, 0x15c($a0)
/* AD1D08 8005AB68 8CC80000 */  lw    $t0, ($a2)
/* AD1D0C 8005AB6C 27A20004 */  addiu $v0, $sp, 4
/* AD1D10 8005AB70 AC480000 */  sw    $t0, ($v0)
/* AD1D14 8005AB74 8CD90004 */  lw    $t9, 4($a2)
/* AD1D18 8005AB78 8C4A0000 */  lw    $t2, ($v0)
/* AD1D1C 8005AB7C AC590004 */  sw    $t9, 4($v0)
/* AD1D20 8005AB80 8CC80008 */  lw    $t0, 8($a2)
/* AD1D24 8005AB84 AC480008 */  sw    $t0, 8($v0)
/* AD1D28 8005AB88 AC8A0074 */  sw    $t2, 0x74($a0)
/* AD1D2C 8005AB8C 8C490004 */  lw    $t1, 4($v0)
/* AD1D30 8005AB90 AC890078 */  sw    $t1, 0x78($a0)
/* AD1D34 8005AB94 8C4A0008 */  lw    $t2, 8($v0)
/* AD1D38 8005AB98 AC8A007C */  sw    $t2, 0x7c($a0)
/* AD1D3C 8005AB9C 8C4C0000 */  lw    $t4, ($v0)
/* AD1D40 8005ABA0 AC8C005C */  sw    $t4, 0x5c($a0)
/* AD1D44 8005ABA4 8C4B0004 */  lw    $t3, 4($v0)
/* AD1D48 8005ABA8 AC8B0060 */  sw    $t3, 0x60($a0)
/* AD1D4C 8005ABAC 8C4C0008 */  lw    $t4, 8($v0)
/* AD1D50 8005ABB0 1000FFD2 */  b     .L8005AAFC
/* AD1D54 8005ABB4 AC8C0064 */   sw    $t4, 0x64($a0)
/* AD1D58 8005ABB8 8CCE0000 */  lw    $t6, ($a2)
/* AD1D5C 8005ABBC AC8E0068 */  sw    $t6, 0x68($a0)
/* AD1D60 8005ABC0 8CCD0004 */  lw    $t5, 4($a2)
/* AD1D64 8005ABC4 AC8D006C */  sw    $t5, 0x6c($a0)
/* AD1D68 8005ABC8 8CCE0008 */  lw    $t6, 8($a2)
/* AD1D6C 8005ABCC 1000FFCB */  b     .L8005AAFC
/* AD1D70 8005ABD0 AC8E0070 */   sw    $t6, 0x70($a0)
.L8005ABD4:
/* AD1D74 8005ABD4 3C018014 */  lui   $at, %hi(D_8013A56C)
/* AD1D78 8005ABD8 C426A56C */  lwc1  $f6, %lo(D_8013A56C)($at)
/* AD1D7C 8005ABDC C4C40000 */  lwc1  $f4, ($a2)
/* AD1D80 8005ABE0 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AD1D84 8005ABE4 44815000 */  mtc1  $at, $f10
/* AD1D88 8005ABE8 46062202 */  mul.s $f8, $f4, $f6
/* AD1D8C 8005ABEC 460A4400 */  add.s $f16, $f8, $f10
/* AD1D90 8005ABF0 4600848D */  trunc.w.s $f18, $f16
/* AD1D94 8005ABF4 44189000 */  mfc1  $t8, $f18
/* AD1D98 8005ABF8 1000FFC0 */  b     .L8005AAFC
/* AD1D9C 8005ABFC A498015A */   sh    $t8, 0x15a($a0)
/* AD1DA0 8005AC00 C4C40000 */  lwc1  $f4, ($a2)
/* AD1DA4 8005AC04 1000FFBD */  b     .L8005AAFC
/* AD1DA8 8005AC08 E48400FC */   swc1  $f4, 0xfc($a0)
.L8005AC0C:
/* AD1DAC 8005AC0C 10000003 */  b     .L8005AC1C
/* AD1DB0 8005AC10 00001025 */   move  $v0, $zero
.L8005AC14:
/* AD1DB4 8005AC14 10000001 */  b     .L8005AC1C
/* AD1DB8 8005AC18 00001025 */   move  $v0, $zero
.L8005AC1C:
/* AD1DBC 8005AC1C 03E00008 */  jr    $ra
/* AD1DC0 8005AC20 27BD0020 */   addiu $sp, $sp, 0x20

/* AD1DC4 8005AC24 AFA50004 */  sw    $a1, 4($sp)
/* AD1DC8 8005AC28 848E015C */  lh    $t6, 0x15c($a0)
/* AD1DCC 8005AC2C 00052C00 */  sll   $a1, $a1, 0x10
/* AD1DD0 8005AC30 00052C03 */  sra   $a1, $a1, 0x10
/* AD1DD4 8005AC34 00A07827 */  not   $t7, $a1
/* AD1DD8 8005AC38 01CFC024 */  and   $t8, $t6, $t7
/* AD1DDC 8005AC3C A498015C */  sh    $t8, 0x15c($a0)
/* AD1DE0 8005AC40 03E00008 */  jr    $ra
/* AD1DE4 8005AC44 24020001 */   li    $v0, 1
