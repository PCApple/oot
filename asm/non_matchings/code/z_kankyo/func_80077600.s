glabel func_80077600
/* AEE7A0 80077600 3C0E8016 */  lui   $t6, %hi(gSaveContext+0x140e) # $t6, 0x8016
/* AEE7A4 80077604 95CEFA6E */  lhu   $t6, %lo(gSaveContext+0x140e)($t6)
/* AEE7A8 80077608 3401FFFF */  li    $at, 65535
/* AEE7AC 8007760C 00001825 */  move  $v1, $zero
/* AEE7B0 80077610 15C10002 */  bne   $t6, $at, .L8007761C
/* AEE7B4 80077614 00000000 */   nop   
/* AEE7B8 80077618 24030001 */  li    $v1, 1
.L8007761C:
/* AEE7BC 8007761C 03E00008 */  jr    $ra
/* AEE7C0 80077620 00601025 */   move  $v0, $v1

/* AEE7C4 80077624 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AEE7C8 80077628 AFBF0014 */  sw    $ra, 0x14($sp)
/* AEE7CC 8007762C 908507A5 */  lbu   $a1, 0x7a5($a0)
/* AEE7D0 80077630 24010013 */  li    $at, 19
/* AEE7D4 80077634 14A10005 */  bne   $a1, $at, .L8007764C
/* AEE7D8 80077638 00000000 */   nop   
/* AEE7DC 8007763C 0C03DBED */  jal   func_800F6FB4
/* AEE7E0 80077640 24040005 */   li    $a0, 5
/* AEE7E4 80077644 10000004 */  b     .L80077658
/* AEE7E8 80077648 2404000E */   li    $a0, 14
.L8007764C:
/* AEE7EC 8007764C 0C03DBED */  jal   func_800F6FB4
/* AEE7F0 80077650 30A400FF */   andi  $a0, $a1, 0xff
/* AEE7F4 80077654 2404000E */  li    $a0, 14
.L80077658:
/* AEE7F8 80077658 24050001 */  li    $a1, 1
/* AEE7FC 8007765C 0C03DB56 */  jal   func_800F6D58
/* AEE800 80077660 24060001 */   li    $a2, 1
/* AEE804 80077664 2404000F */  li    $a0, 15
/* AEE808 80077668 24050001 */  li    $a1, 1
/* AEE80C 8007766C 0C03DB56 */  jal   func_800F6D58
/* AEE810 80077670 24060001 */   li    $a2, 1
/* AEE814 80077674 8FBF0014 */  lw    $ra, 0x14($sp)
/* AEE818 80077678 27BD0018 */  addiu $sp, $sp, 0x18
/* AEE81C 8007767C 03E00008 */  jr    $ra
/* AEE820 80077680 00000000 */   nop   

/* AEE824 80077684 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AEE828 80077688 AFBF0014 */  sw    $ra, 0x14($sp)
/* AEE82C 8007768C AFA40018 */  sw    $a0, 0x18($sp)
/* AEE830 80077690 2404000E */  li    $a0, 14
/* AEE834 80077694 24050001 */  li    $a1, 1
/* AEE838 80077698 0C03DB56 */  jal   func_800F6D58
/* AEE83C 8007769C 00003025 */   move  $a2, $zero
/* AEE840 800776A0 2404000F */  li    $a0, 15
/* AEE844 800776A4 24050001 */  li    $a1, 1
/* AEE848 800776A8 0C03DB56 */  jal   func_800F6D58
/* AEE84C 800776AC 00003025 */   move  $a2, $zero
/* AEE850 800776B0 0C03E82D */  jal   func_800FA0B4
/* AEE854 800776B4 00002025 */   move  $a0, $zero
/* AEE858 800776B8 24010001 */  li    $at, 1
/* AEE85C 800776BC 14410005 */  bne   $v0, $at, .L800776D4
/* AEE860 800776C0 240E0080 */   li    $t6, 128
/* AEE864 800776C4 3C018016 */  lui   $at, %hi(gSaveContext+0x13e0) # $at, 0x8016
/* AEE868 800776C8 A02EFA40 */  sb    $t6, %lo(gSaveContext+0x13e0)($at)
/* AEE86C 800776CC 0C01D62B */  jal   func_800758AC
/* AEE870 800776D0 8FA40018 */   lw    $a0, 0x18($sp)
.L800776D4:
/* AEE874 800776D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AEE878 800776D8 27BD0018 */  addiu $sp, $sp, 0x18
/* AEE87C 800776DC 03E00008 */  jr    $ra
/* AEE880 800776E0 00000000 */   nop   

/* AEE884 800776E4 3C018012 */  lui   $at, %hi(D_8011FB30) # $at, 0x8012
/* AEE888 800776E8 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AEE88C 800776EC A020FB30 */  sb    $zero, %lo(D_8011FB30)($at)
/* AEE890 800776F0 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AEE894 800776F4 844F1394 */  lh    $t7, 0x1394($v0)
/* AEE898 800776F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AEE89C 800776FC 240EFFFD */  li    $t6, -3
/* AEE8A0 80077700 3C010001 */  lui   $at, 1
/* AEE8A4 80077704 AFBF0014 */  sw    $ra, 0x14($sp)
/* AEE8A8 80077708 AC400008 */  sw    $zero, 8($v0)
/* AEE8AC 8007770C AC4E1364 */  sw    $t6, 0x1364($v0)
/* AEE8B0 80077710 00240821 */  addu  $at, $at, $a0
/* AEE8B4 80077714 A42F1E1A */  sh    $t7, 0x1e1a($at)
/* AEE8B8 80077718 3C010001 */  lui   $at, 1
/* AEE8BC 8007771C 00240821 */  addu  $at, $at, $a0
/* AEE8C0 80077720 24180014 */  li    $t8, 20
/* AEE8C4 80077724 A0381E15 */  sb    $t8, 0x1e15($at)
/* AEE8C8 80077728 3C010001 */  lui   $at, 1
/* AEE8CC 8007772C 24050003 */  li    $a1, 3
/* AEE8D0 80077730 00240821 */  addu  $at, $at, $a0
/* AEE8D4 80077734 A0251E5E */  sb    $a1, 0x1e5e($at)
/* AEE8D8 80077738 3C030001 */  lui   $v1, 1
/* AEE8DC 8007773C A045141D */  sb    $a1, 0x141d($v0)
/* AEE8E0 80077740 00641821 */  addu  $v1, $v1, $a0
/* AEE8E4 80077744 84631E1A */  lh    $v1, 0x1e1a($v1)
/* AEE8E8 80077748 24010053 */  li    $at, 83
/* AEE8EC 8007774C 1061001B */  beq   $v1, $at, .L800777BC
/* AEE8F0 80077750 240100E4 */   li    $at, 228
/* AEE8F4 80077754 10610015 */  beq   $v1, $at, .L800777AC
/* AEE8F8 80077758 240100FC */   li    $at, 252
/* AEE8FC 8007775C 10610019 */  beq   $v1, $at, .L800777C4
/* AEE900 80077760 24010102 */   li    $at, 258
/* AEE904 80077764 10610009 */  beq   $v1, $at, .L8007778C
/* AEE908 80077768 24010123 */   li    $at, 291
/* AEE90C 8007776C 1061000B */  beq   $v1, $at, .L8007779C
/* AEE910 80077770 24010147 */   li    $at, 327
/* AEE914 80077774 54610014 */  bnel  $v1, $at, .L800777C8
/* AEE918 80077778 8FBF0014 */   lw    $ra, 0x14($sp)
/* AEE91C 8007777C 0C00D6DD */  jal   Flags_SetEventChkInf
/* AEE920 80077780 240400B9 */   li    $a0, 185
/* AEE924 80077784 10000010 */  b     .L800777C8
/* AEE928 80077788 8FBF0014 */   lw    $ra, 0x14($sp)
.L8007778C:
/* AEE92C 8007778C 0C00D6DD */  jal   Flags_SetEventChkInf
/* AEE930 80077790 240400B1 */   li    $a0, 177
/* AEE934 80077794 1000000C */  b     .L800777C8
/* AEE938 80077798 8FBF0014 */   lw    $ra, 0x14($sp)
.L8007779C:
/* AEE93C 8007779C 0C00D6DD */  jal   Flags_SetEventChkInf
/* AEE940 800777A0 240400B8 */   li    $a0, 184
/* AEE944 800777A4 10000008 */  b     .L800777C8
/* AEE948 800777A8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800777AC:
/* AEE94C 800777AC 0C00D6DD */  jal   Flags_SetEventChkInf
/* AEE950 800777B0 240400B6 */   li    $a0, 182
/* AEE954 800777B4 10000004 */  b     .L800777C8
/* AEE958 800777B8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800777BC:
/* AEE95C 800777BC 0C00D6DD */  jal   Flags_SetEventChkInf
/* AEE960 800777C0 240400A7 */   li    $a0, 167
.L800777C4:
/* AEE964 800777C4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800777C8:
/* AEE968 800777C8 27BD0018 */  addiu $sp, $sp, 0x18
/* AEE96C 800777CC 03E00008 */  jr    $ra
/* AEE970 800777D0 00000000 */   nop   
