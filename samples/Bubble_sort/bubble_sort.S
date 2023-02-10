
bubble_sort：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	addi	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	721020ef          	jal	ra,1301c <__call_exitprocs>
   10100:	7481b503          	ld	a0,1864(gp) # 24150 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	5990f0ef          	jal	ra,1feac <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00013537          	lui	a0,0x13
   10124:	7fc50513          	addi	a0,a0,2044 # 137fc <__libc_fini_array>
   10128:	4110c06f          	j	1cd38 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00014197          	auipc	gp,0x14
   10134:	8d818193          	addi	gp,gp,-1832 # 23a08 <__global_pointer$>
   10138:	77018513          	addi	a0,gp,1904 # 24178 <_PathLocale>
   1013c:	00014617          	auipc	a2,0x14
   10140:	0cc60613          	addi	a2,a2,204 # 24208 <__BSS_END__>
   10144:	40a60633          	sub	a2,a2,a0
   10148:	00000593          	li	a1,0
   1014c:	464000ef          	jal	ra,105b0 <memset>
   10150:	0000d517          	auipc	a0,0xd
   10154:	be850513          	addi	a0,a0,-1048 # 1cd38 <atexit>
   10158:	00050863          	beqz	a0,10168 <_start+0x38>
   1015c:	00003517          	auipc	a0,0x3
   10160:	6a050513          	addi	a0,a0,1696 # 137fc <__libc_fini_array>
   10164:	3d50c0ef          	jal	ra,1cd38 <atexit>
   10168:	3ac000ef          	jal	ra,10514 <__libc_init_array>
   1016c:	00012503          	lw	a0,0(sp)
   10170:	00810593          	addi	a1,sp,8
   10174:	00000613          	li	a2,0
   10178:	06c000ef          	jal	ra,101e4 <main>
   1017c:	f6dff06f          	j	100e8 <exit>

0000000000010180 <__do_global_dtors_aux>:
   10180:	ff010113          	addi	sp,sp,-16
   10184:	00813023          	sd	s0,0(sp)
   10188:	7a01c783          	lbu	a5,1952(gp) # 241a8 <completed.1>
   1018c:	00113423          	sd	ra,8(sp)
   10190:	02079263          	bnez	a5,101b4 <__do_global_dtors_aux+0x34>
   10194:	00000793          	li	a5,0
   10198:	00078a63          	beqz	a5,101ac <__do_global_dtors_aux+0x2c>
   1019c:	00023537          	lui	a0,0x23
   101a0:	00050513          	mv	a0,a0
   101a4:	00000097          	auipc	ra,0x0
   101a8:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101ac:	00100793          	li	a5,1
   101b0:	7af18023          	sb	a5,1952(gp) # 241a8 <completed.1>
   101b4:	00813083          	ld	ra,8(sp)
   101b8:	00013403          	ld	s0,0(sp)
   101bc:	01010113          	addi	sp,sp,16
   101c0:	00008067          	ret

00000000000101c4 <frame_dummy>:
   101c4:	00000793          	li	a5,0
   101c8:	00078c63          	beqz	a5,101e0 <frame_dummy+0x1c>
   101cc:	00023537          	lui	a0,0x23
   101d0:	7a818593          	addi	a1,gp,1960 # 241b0 <object.0>
   101d4:	00050513          	mv	a0,a0
   101d8:	00000317          	auipc	t1,0x0
   101dc:	00000067          	jr	zero # 0 <exit-0x100e8>
   101e0:	00008067          	ret

00000000000101e4 <main>:
   101e4:	fb010113          	addi	sp,sp,-80
   101e8:	04113423          	sd	ra,72(sp)
   101ec:	04813023          	sd	s0,64(sp)
   101f0:	05010413          	addi	s0,sp,80
   101f4:	00500793          	li	a5,5
   101f8:	fcf42c23          	sw	a5,-40(s0)
   101fc:	fe042623          	sw	zero,-20(s0)
   10200:	0400006f          	j	10240 <main+0x5c>
   10204:	528000ef          	jal	ra,1072c <rand>
   10208:	00050793          	mv	a5,a0
   1020c:	00a00593          	li	a1,10
   10210:	00078513          	mv	a0,a5
   10214:	2c4000ef          	jal	ra,104d8 <__moddi3>
   10218:	00050793          	mv	a5,a0
   1021c:	0007871b          	sext.w	a4,a5
   10220:	fec42783          	lw	a5,-20(s0)
   10224:	00279793          	slli	a5,a5,0x2
   10228:	ff078793          	addi	a5,a5,-16
   1022c:	008787b3          	add	a5,a5,s0
   10230:	fce7a423          	sw	a4,-56(a5)
   10234:	fec42783          	lw	a5,-20(s0)
   10238:	0017879b          	addiw	a5,a5,1
   1023c:	fef42623          	sw	a5,-20(s0)
   10240:	fec42783          	lw	a5,-20(s0)
   10244:	00078713          	mv	a4,a5
   10248:	fd842783          	lw	a5,-40(s0)
   1024c:	0007071b          	sext.w	a4,a4
   10250:	0007879b          	sext.w	a5,a5
   10254:	faf748e3          	blt	a4,a5,10204 <main+0x20>
   10258:	fe042423          	sw	zero,-24(s0)
   1025c:	0340006f          	j	10290 <main+0xac>
   10260:	fe842783          	lw	a5,-24(s0)
   10264:	00279793          	slli	a5,a5,0x2
   10268:	ff078793          	addi	a5,a5,-16
   1026c:	008787b3          	add	a5,a5,s0
   10270:	fc87a783          	lw	a5,-56(a5)
   10274:	00078593          	mv	a1,a5
   10278:	000227b7          	lui	a5,0x22
   1027c:	f6078513          	addi	a0,a5,-160 # 21f60 <__clzdi2+0x4c>
   10280:	44c000ef          	jal	ra,106cc <printf>
   10284:	fe842783          	lw	a5,-24(s0)
   10288:	0017879b          	addiw	a5,a5,1
   1028c:	fef42423          	sw	a5,-24(s0)
   10290:	fe842783          	lw	a5,-24(s0)
   10294:	0007871b          	sext.w	a4,a5
   10298:	00400793          	li	a5,4
   1029c:	fce7d2e3          	bge	a5,a4,10260 <main+0x7c>
   102a0:	000227b7          	lui	a5,0x22
   102a4:	f6878513          	addi	a0,a5,-152 # 21f68 <__clzdi2+0x54>
   102a8:	424000ef          	jal	ra,106cc <printf>
   102ac:	fe042223          	sw	zero,-28(s0)
   102b0:	0d80006f          	j	10388 <main+0x1a4>
   102b4:	fe042023          	sw	zero,-32(s0)
   102b8:	0ac0006f          	j	10364 <main+0x180>
   102bc:	fe042783          	lw	a5,-32(s0)
   102c0:	00279793          	slli	a5,a5,0x2
   102c4:	ff078793          	addi	a5,a5,-16
   102c8:	008787b3          	add	a5,a5,s0
   102cc:	fc87a703          	lw	a4,-56(a5)
   102d0:	fe042783          	lw	a5,-32(s0)
   102d4:	0017879b          	addiw	a5,a5,1
   102d8:	0007879b          	sext.w	a5,a5
   102dc:	00279793          	slli	a5,a5,0x2
   102e0:	ff078793          	addi	a5,a5,-16
   102e4:	008787b3          	add	a5,a5,s0
   102e8:	fc87a783          	lw	a5,-56(a5)
   102ec:	06e7d663          	bge	a5,a4,10358 <main+0x174>
   102f0:	fe042783          	lw	a5,-32(s0)
   102f4:	00279793          	slli	a5,a5,0x2
   102f8:	ff078793          	addi	a5,a5,-16
   102fc:	008787b3          	add	a5,a5,s0
   10300:	fc87a783          	lw	a5,-56(a5)
   10304:	fcf42a23          	sw	a5,-44(s0)
   10308:	fe042783          	lw	a5,-32(s0)
   1030c:	0017879b          	addiw	a5,a5,1
   10310:	0007879b          	sext.w	a5,a5
   10314:	00279793          	slli	a5,a5,0x2
   10318:	ff078793          	addi	a5,a5,-16
   1031c:	008787b3          	add	a5,a5,s0
   10320:	fc87a703          	lw	a4,-56(a5)
   10324:	fe042783          	lw	a5,-32(s0)
   10328:	00279793          	slli	a5,a5,0x2
   1032c:	ff078793          	addi	a5,a5,-16
   10330:	008787b3          	add	a5,a5,s0
   10334:	fce7a423          	sw	a4,-56(a5)
   10338:	fe042783          	lw	a5,-32(s0)
   1033c:	0017879b          	addiw	a5,a5,1
   10340:	0007879b          	sext.w	a5,a5
   10344:	00279793          	slli	a5,a5,0x2
   10348:	ff078793          	addi	a5,a5,-16
   1034c:	008787b3          	add	a5,a5,s0
   10350:	fd442703          	lw	a4,-44(s0)
   10354:	fce7a423          	sw	a4,-56(a5)
   10358:	fe042783          	lw	a5,-32(s0)
   1035c:	0017879b          	addiw	a5,a5,1
   10360:	fef42023          	sw	a5,-32(s0)
   10364:	fd842783          	lw	a5,-40(s0)
   10368:	fff7879b          	addiw	a5,a5,-1
   1036c:	0007871b          	sext.w	a4,a5
   10370:	fe042783          	lw	a5,-32(s0)
   10374:	0007879b          	sext.w	a5,a5
   10378:	f4e7c2e3          	blt	a5,a4,102bc <main+0xd8>
   1037c:	fe442783          	lw	a5,-28(s0)
   10380:	0017879b          	addiw	a5,a5,1
   10384:	fef42223          	sw	a5,-28(s0)
   10388:	fe442783          	lw	a5,-28(s0)
   1038c:	00078713          	mv	a4,a5
   10390:	fd842783          	lw	a5,-40(s0)
   10394:	0007071b          	sext.w	a4,a4
   10398:	0007879b          	sext.w	a5,a5
   1039c:	f0f74ce3          	blt	a4,a5,102b4 <main+0xd0>
   103a0:	fc042e23          	sw	zero,-36(s0)
   103a4:	0340006f          	j	103d8 <main+0x1f4>
   103a8:	fdc42783          	lw	a5,-36(s0)
   103ac:	00279793          	slli	a5,a5,0x2
   103b0:	ff078793          	addi	a5,a5,-16
   103b4:	008787b3          	add	a5,a5,s0
   103b8:	fc87a783          	lw	a5,-56(a5)
   103bc:	00078593          	mv	a1,a5
   103c0:	000227b7          	lui	a5,0x22
   103c4:	f6078513          	addi	a0,a5,-160 # 21f60 <__clzdi2+0x4c>
   103c8:	304000ef          	jal	ra,106cc <printf>
   103cc:	fdc42783          	lw	a5,-36(s0)
   103d0:	0017879b          	addiw	a5,a5,1
   103d4:	fcf42e23          	sw	a5,-36(s0)
   103d8:	fdc42783          	lw	a5,-36(s0)
   103dc:	00078713          	mv	a4,a5
   103e0:	fd842783          	lw	a5,-40(s0)
   103e4:	0007071b          	sext.w	a4,a4
   103e8:	0007879b          	sext.w	a5,a5
   103ec:	faf74ee3          	blt	a4,a5,103a8 <main+0x1c4>
   103f0:	000227b7          	lui	a5,0x22
   103f4:	f6878513          	addi	a0,a5,-152 # 21f68 <__clzdi2+0x54>
   103f8:	2d4000ef          	jal	ra,106cc <printf>
   103fc:	00000793          	li	a5,0
   10400:	00078513          	mv	a0,a5
   10404:	04813083          	ld	ra,72(sp)
   10408:	04013403          	ld	s0,64(sp)
   1040c:	05010113          	addi	sp,sp,80
   10410:	00008067          	ret

0000000000010414 <__udivsi3>:
   10414:	02051513          	slli	a0,a0,0x20
   10418:	02059593          	slli	a1,a1,0x20
   1041c:	00008293          	mv	t0,ra
   10420:	03c000ef          	jal	ra,1045c <__hidden___udivdi3>
   10424:	0005051b          	sext.w	a0,a0
   10428:	00028067          	jr	t0

000000000001042c <__umodsi3>:
   1042c:	02051513          	slli	a0,a0,0x20
   10430:	02059593          	slli	a1,a1,0x20
   10434:	02055513          	srli	a0,a0,0x20
   10438:	0205d593          	srli	a1,a1,0x20
   1043c:	00008293          	mv	t0,ra
   10440:	01c000ef          	jal	ra,1045c <__hidden___udivdi3>
   10444:	0005851b          	sext.w	a0,a1
   10448:	00028067          	jr	t0

000000000001044c <__divsi3>:
   1044c:	fff00293          	li	t0,-1
   10450:	0a558c63          	beq	a1,t0,10508 <__moddi3+0x30>

0000000000010454 <__divdi3>:
   10454:	06054063          	bltz	a0,104b4 <__umoddi3+0x10>
   10458:	0605c663          	bltz	a1,104c4 <__umoddi3+0x20>

000000000001045c <__hidden___udivdi3>:
   1045c:	00058613          	mv	a2,a1
   10460:	00050593          	mv	a1,a0
   10464:	fff00513          	li	a0,-1
   10468:	02060c63          	beqz	a2,104a0 <__hidden___udivdi3+0x44>
   1046c:	00100693          	li	a3,1
   10470:	00b67a63          	bgeu	a2,a1,10484 <__hidden___udivdi3+0x28>
   10474:	00c05863          	blez	a2,10484 <__hidden___udivdi3+0x28>
   10478:	00161613          	slli	a2,a2,0x1
   1047c:	00169693          	slli	a3,a3,0x1
   10480:	feb66ae3          	bltu	a2,a1,10474 <__hidden___udivdi3+0x18>
   10484:	00000513          	li	a0,0
   10488:	00c5e663          	bltu	a1,a2,10494 <__hidden___udivdi3+0x38>
   1048c:	40c585b3          	sub	a1,a1,a2
   10490:	00d56533          	or	a0,a0,a3
   10494:	0016d693          	srli	a3,a3,0x1
   10498:	00165613          	srli	a2,a2,0x1
   1049c:	fe0696e3          	bnez	a3,10488 <__hidden___udivdi3+0x2c>
   104a0:	00008067          	ret

00000000000104a4 <__umoddi3>:
   104a4:	00008293          	mv	t0,ra
   104a8:	fb5ff0ef          	jal	ra,1045c <__hidden___udivdi3>
   104ac:	00058513          	mv	a0,a1
   104b0:	00028067          	jr	t0
   104b4:	40a00533          	neg	a0,a0
   104b8:	00b04863          	bgtz	a1,104c8 <__umoddi3+0x24>
   104bc:	40b005b3          	neg	a1,a1
   104c0:	f9dff06f          	j	1045c <__hidden___udivdi3>
   104c4:	40b005b3          	neg	a1,a1
   104c8:	00008293          	mv	t0,ra
   104cc:	f91ff0ef          	jal	ra,1045c <__hidden___udivdi3>
   104d0:	40a00533          	neg	a0,a0
   104d4:	00028067          	jr	t0

00000000000104d8 <__moddi3>:
   104d8:	00008293          	mv	t0,ra
   104dc:	0005ca63          	bltz	a1,104f0 <__moddi3+0x18>
   104e0:	00054c63          	bltz	a0,104f8 <__moddi3+0x20>
   104e4:	f79ff0ef          	jal	ra,1045c <__hidden___udivdi3>
   104e8:	00058513          	mv	a0,a1
   104ec:	00028067          	jr	t0
   104f0:	40b005b3          	neg	a1,a1
   104f4:	fe0558e3          	bgez	a0,104e4 <__moddi3+0xc>
   104f8:	40a00533          	neg	a0,a0
   104fc:	f61ff0ef          	jal	ra,1045c <__hidden___udivdi3>
   10500:	40b00533          	neg	a0,a1
   10504:	00028067          	jr	t0
   10508:	01f29293          	slli	t0,t0,0x1f
   1050c:	f45514e3          	bne	a0,t0,10454 <__divdi3>
   10510:	00008067          	ret

0000000000010514 <__libc_init_array>:
   10514:	fe010113          	addi	sp,sp,-32
   10518:	00813823          	sd	s0,16(sp)
   1051c:	000237b7          	lui	a5,0x23
   10520:	00023437          	lui	s0,0x23
   10524:	01213023          	sd	s2,0(sp)
   10528:	00478793          	addi	a5,a5,4 # 23004 <__preinit_array_end>
   1052c:	00440713          	addi	a4,s0,4 # 23004 <__preinit_array_end>
   10530:	00113c23          	sd	ra,24(sp)
   10534:	00913423          	sd	s1,8(sp)
   10538:	40e78933          	sub	s2,a5,a4
   1053c:	02e78263          	beq	a5,a4,10560 <__libc_init_array+0x4c>
   10540:	40395913          	srai	s2,s2,0x3
   10544:	00440413          	addi	s0,s0,4
   10548:	00000493          	li	s1,0
   1054c:	00043783          	ld	a5,0(s0)
   10550:	00148493          	addi	s1,s1,1
   10554:	00840413          	addi	s0,s0,8
   10558:	000780e7          	jalr	a5
   1055c:	ff24e8e3          	bltu	s1,s2,1054c <__libc_init_array+0x38>
   10560:	00023437          	lui	s0,0x23
   10564:	000237b7          	lui	a5,0x23
   10568:	01878793          	addi	a5,a5,24 # 23018 <__do_global_dtors_aux_fini_array_entry>
   1056c:	00840713          	addi	a4,s0,8 # 23008 <__init_array_start>
   10570:	40e78933          	sub	s2,a5,a4
   10574:	40395913          	srai	s2,s2,0x3
   10578:	02e78063          	beq	a5,a4,10598 <__libc_init_array+0x84>
   1057c:	00840413          	addi	s0,s0,8
   10580:	00000493          	li	s1,0
   10584:	00043783          	ld	a5,0(s0)
   10588:	00148493          	addi	s1,s1,1
   1058c:	00840413          	addi	s0,s0,8
   10590:	000780e7          	jalr	a5
   10594:	ff24e8e3          	bltu	s1,s2,10584 <__libc_init_array+0x70>
   10598:	01813083          	ld	ra,24(sp)
   1059c:	01013403          	ld	s0,16(sp)
   105a0:	00813483          	ld	s1,8(sp)
   105a4:	00013903          	ld	s2,0(sp)
   105a8:	02010113          	addi	sp,sp,32
   105ac:	00008067          	ret

00000000000105b0 <memset>:
   105b0:	00f00313          	li	t1,15
   105b4:	00050713          	mv	a4,a0
   105b8:	02c37a63          	bgeu	t1,a2,105ec <memset+0x3c>
   105bc:	00f77793          	andi	a5,a4,15
   105c0:	0a079063          	bnez	a5,10660 <memset+0xb0>
   105c4:	06059e63          	bnez	a1,10640 <memset+0x90>
   105c8:	ff067693          	andi	a3,a2,-16
   105cc:	00f67613          	andi	a2,a2,15
   105d0:	00e686b3          	add	a3,a3,a4
   105d4:	00b73023          	sd	a1,0(a4)
   105d8:	00b73423          	sd	a1,8(a4)
   105dc:	01070713          	addi	a4,a4,16
   105e0:	fed76ae3          	bltu	a4,a3,105d4 <memset+0x24>
   105e4:	00061463          	bnez	a2,105ec <memset+0x3c>
   105e8:	00008067          	ret
   105ec:	40c306b3          	sub	a3,t1,a2
   105f0:	00269693          	slli	a3,a3,0x2
   105f4:	00000297          	auipc	t0,0x0
   105f8:	005686b3          	add	a3,a3,t0
   105fc:	00c68067          	jr	12(a3)
   10600:	00b70723          	sb	a1,14(a4)
   10604:	00b706a3          	sb	a1,13(a4)
   10608:	00b70623          	sb	a1,12(a4)
   1060c:	00b705a3          	sb	a1,11(a4)
   10610:	00b70523          	sb	a1,10(a4)
   10614:	00b704a3          	sb	a1,9(a4)
   10618:	00b70423          	sb	a1,8(a4)
   1061c:	00b703a3          	sb	a1,7(a4)
   10620:	00b70323          	sb	a1,6(a4)
   10624:	00b702a3          	sb	a1,5(a4)
   10628:	00b70223          	sb	a1,4(a4)
   1062c:	00b701a3          	sb	a1,3(a4)
   10630:	00b70123          	sb	a1,2(a4)
   10634:	00b700a3          	sb	a1,1(a4)
   10638:	00b70023          	sb	a1,0(a4)
   1063c:	00008067          	ret
   10640:	0ff5f593          	zext.b	a1,a1
   10644:	00859693          	slli	a3,a1,0x8
   10648:	00d5e5b3          	or	a1,a1,a3
   1064c:	01059693          	slli	a3,a1,0x10
   10650:	00d5e5b3          	or	a1,a1,a3
   10654:	02059693          	slli	a3,a1,0x20
   10658:	00d5e5b3          	or	a1,a1,a3
   1065c:	f6dff06f          	j	105c8 <memset+0x18>
   10660:	00279693          	slli	a3,a5,0x2
   10664:	00000297          	auipc	t0,0x0
   10668:	005686b3          	add	a3,a3,t0
   1066c:	00008293          	mv	t0,ra
   10670:	f98680e7          	jalr	-104(a3)
   10674:	00028093          	mv	ra,t0
   10678:	ff078793          	addi	a5,a5,-16
   1067c:	40f70733          	sub	a4,a4,a5
   10680:	00f60633          	add	a2,a2,a5
   10684:	f6c374e3          	bgeu	t1,a2,105ec <memset+0x3c>
   10688:	f3dff06f          	j	105c4 <memset+0x14>

000000000001068c <_printf_r>:
   1068c:	fb010113          	addi	sp,sp,-80
   10690:	02c13023          	sd	a2,32(sp)
   10694:	02d13423          	sd	a3,40(sp)
   10698:	02e13823          	sd	a4,48(sp)
   1069c:	02f13c23          	sd	a5,56(sp)
   106a0:	05013023          	sd	a6,64(sp)
   106a4:	05113423          	sd	a7,72(sp)
   106a8:	00058613          	mv	a2,a1
   106ac:	01053583          	ld	a1,16(a0) # 23010 <__frame_dummy_init_array_entry>
   106b0:	02010693          	addi	a3,sp,32
   106b4:	00113c23          	sd	ra,24(sp)
   106b8:	00d13423          	sd	a3,8(sp)
   106bc:	10c000ef          	jal	ra,107c8 <_vfprintf_r>
   106c0:	01813083          	ld	ra,24(sp)
   106c4:	05010113          	addi	sp,sp,80
   106c8:	00008067          	ret

00000000000106cc <printf>:
   106cc:	7581b303          	ld	t1,1880(gp) # 24160 <_impure_ptr>
   106d0:	fa010113          	addi	sp,sp,-96
   106d4:	02c13823          	sd	a2,48(sp)
   106d8:	02d13c23          	sd	a3,56(sp)
   106dc:	02b13423          	sd	a1,40(sp)
   106e0:	04e13023          	sd	a4,64(sp)
   106e4:	04f13423          	sd	a5,72(sp)
   106e8:	05013823          	sd	a6,80(sp)
   106ec:	05113c23          	sd	a7,88(sp)
   106f0:	01033583          	ld	a1,16(t1) # 101e8 <main+0x4>
   106f4:	02810693          	addi	a3,sp,40
   106f8:	00050613          	mv	a2,a0
   106fc:	00030513          	mv	a0,t1
   10700:	00113c23          	sd	ra,24(sp)
   10704:	00d13423          	sd	a3,8(sp)
   10708:	0c0000ef          	jal	ra,107c8 <_vfprintf_r>
   1070c:	01813083          	ld	ra,24(sp)
   10710:	06010113          	addi	sp,sp,96
   10714:	00008067          	ret

0000000000010718 <srand>:
   10718:	7581b783          	ld	a5,1880(gp) # 24160 <_impure_ptr>
   1071c:	02051513          	slli	a0,a0,0x20
   10720:	02055513          	srli	a0,a0,0x20
   10724:	0ea7b423          	sd	a0,232(a5)
   10728:	00008067          	ret

000000000001072c <rand>:
   1072c:	7581b603          	ld	a2,1880(gp) # 24160 <_impure_ptr>
   10730:	0e863703          	ld	a4,232(a2)
   10734:	00471793          	slli	a5,a4,0x4
   10738:	40e787b3          	sub	a5,a5,a4
   1073c:	00679693          	slli	a3,a5,0x6
   10740:	40f686b3          	sub	a3,a3,a5
   10744:	00769793          	slli	a5,a3,0x7
   10748:	00f686b3          	add	a3,a3,a5
   1074c:	00269693          	slli	a3,a3,0x2
   10750:	00e686b3          	add	a3,a3,a4
   10754:	00669793          	slli	a5,a3,0x6
   10758:	40d787b3          	sub	a5,a5,a3
   1075c:	00779793          	slli	a5,a5,0x7
   10760:	00e787b3          	add	a5,a5,a4
   10764:	00279793          	slli	a5,a5,0x2
   10768:	00e787b3          	add	a5,a5,a4
   1076c:	00379693          	slli	a3,a5,0x3
   10770:	40f687b3          	sub	a5,a3,a5
   10774:	00379693          	slli	a3,a5,0x3
   10778:	40f686b3          	sub	a3,a3,a5
   1077c:	00669793          	slli	a5,a3,0x6
   10780:	40d787b3          	sub	a5,a5,a3
   10784:	00279793          	slli	a5,a5,0x2
   10788:	40e787b3          	sub	a5,a5,a4
   1078c:	00779793          	slli	a5,a5,0x7
   10790:	40e787b3          	sub	a5,a5,a4
   10794:	00279793          	slli	a5,a5,0x2
   10798:	00e787b3          	add	a5,a5,a4
   1079c:	00279793          	slli	a5,a5,0x2
   107a0:	40e787b3          	sub	a5,a5,a4
   107a4:	00279793          	slli	a5,a5,0x2
   107a8:	40e787b3          	sub	a5,a5,a4
   107ac:	00279793          	slli	a5,a5,0x2
   107b0:	00e787b3          	add	a5,a5,a4
   107b4:	00178793          	addi	a5,a5,1
   107b8:	00179513          	slli	a0,a5,0x1
   107bc:	0ef63423          	sd	a5,232(a2)
   107c0:	02155513          	srli	a0,a0,0x21
   107c4:	00008067          	ret

00000000000107c8 <_vfprintf_r>:
   107c8:	d9010113          	addi	sp,sp,-624
   107cc:	26113423          	sd	ra,616(sp)
   107d0:	26813023          	sd	s0,608(sp)
   107d4:	25213823          	sd	s2,592(sp)
   107d8:	00b13023          	sd	a1,0(sp)
   107dc:	00060913          	mv	s2,a2
   107e0:	02d13023          	sd	a3,32(sp)
   107e4:	24913c23          	sd	s1,600(sp)
   107e8:	25313423          	sd	s3,584(sp)
   107ec:	25413023          	sd	s4,576(sp)
   107f0:	23513c23          	sd	s5,568(sp)
   107f4:	23613823          	sd	s6,560(sp)
   107f8:	23713423          	sd	s7,552(sp)
   107fc:	23813023          	sd	s8,544(sp)
   10800:	21913c23          	sd	s9,536(sp)
   10804:	21a13823          	sd	s10,528(sp)
   10808:	21b13423          	sd	s11,520(sp)
   1080c:	00050413          	mv	s0,a0
   10810:	04a13823          	sd	a0,80(sp)
   10814:	2c8060ef          	jal	ra,16adc <_localeconv_r>
   10818:	00053703          	ld	a4,0(a0)
   1081c:	00070513          	mv	a0,a4
   10820:	06e13023          	sd	a4,96(sp)
   10824:	001080ef          	jal	ra,19024 <strlen>
   10828:	04a13c23          	sd	a0,88(sp)
   1082c:	0e013823          	sd	zero,240(sp)
   10830:	0e013c23          	sd	zero,248(sp)
   10834:	00040663          	beqz	s0,10840 <_vfprintf_r+0x78>
   10838:	05042703          	lw	a4,80(s0)
   1083c:	5e070a63          	beqz	a4,10e30 <_vfprintf_r+0x668>
   10840:	00013783          	ld	a5,0(sp)
   10844:	01079703          	lh	a4,16(a5)
   10848:	03271693          	slli	a3,a4,0x32
   1084c:	0206c663          	bltz	a3,10878 <_vfprintf_r+0xb0>
   10850:	0ac7a683          	lw	a3,172(a5)
   10854:	00002637          	lui	a2,0x2
   10858:	00c76733          	or	a4,a4,a2
   1085c:	ffffe637          	lui	a2,0xffffe
   10860:	0107171b          	slliw	a4,a4,0x10
   10864:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd9df7>
   10868:	4107571b          	sraiw	a4,a4,0x10
   1086c:	00c6f6b3          	and	a3,a3,a2
   10870:	00e79823          	sh	a4,16(a5)
   10874:	0ad7a623          	sw	a3,172(a5)
   10878:	00877693          	andi	a3,a4,8
   1087c:	32068263          	beqz	a3,10ba0 <_vfprintf_r+0x3d8>
   10880:	00013783          	ld	a5,0(sp)
   10884:	0187b683          	ld	a3,24(a5)
   10888:	30068c63          	beqz	a3,10ba0 <_vfprintf_r+0x3d8>
   1088c:	01a77713          	andi	a4,a4,26
   10890:	00a00693          	li	a3,10
   10894:	32d70a63          	beq	a4,a3,10bc8 <_vfprintf_r+0x400>
   10898:	18010793          	addi	a5,sp,384
   1089c:	00022737          	lui	a4,0x22
   108a0:	00078313          	mv	t1,a5
   108a4:	10f13023          	sd	a5,256(sp)
   108a8:	00090b13          	mv	s6,s2
   108ac:	fcc70793          	addi	a5,a4,-52 # 21fcc <__clzdi2+0xb8>
   108b0:	00022737          	lui	a4,0x22
   108b4:	02f13423          	sd	a5,40(sp)
   108b8:	1d070793          	addi	a5,a4,464 # 221d0 <zeroes.0>
   108bc:	000b4703          	lbu	a4,0(s6)
   108c0:	10013823          	sd	zero,272(sp)
   108c4:	10012423          	sw	zero,264(sp)
   108c8:	02013c23          	sd	zero,56(sp)
   108cc:	06013423          	sd	zero,104(sp)
   108d0:	06013823          	sd	zero,112(sp)
   108d4:	06013c23          	sd	zero,120(sp)
   108d8:	08013023          	sd	zero,128(sp)
   108dc:	08013423          	sd	zero,136(sp)
   108e0:	00013823          	sd	zero,16(sp)
   108e4:	00f13423          	sd	a5,8(sp)
   108e8:	05013983          	ld	s3,80(sp)
   108ec:	00030413          	mv	s0,t1
   108f0:	24070063          	beqz	a4,10b30 <_vfprintf_r+0x368>
   108f4:	000b0493          	mv	s1,s6
   108f8:	02500693          	li	a3,37
   108fc:	2ed70a63          	beq	a4,a3,10bf0 <_vfprintf_r+0x428>
   10900:	0014c703          	lbu	a4,1(s1)
   10904:	00148493          	addi	s1,s1,1
   10908:	fe071ae3          	bnez	a4,108fc <_vfprintf_r+0x134>
   1090c:	4164893b          	subw	s2,s1,s6
   10910:	22090063          	beqz	s2,10b30 <_vfprintf_r+0x368>
   10914:	11013d83          	ld	s11,272(sp)
   10918:	10812683          	lw	a3,264(sp)
   1091c:	01643023          	sd	s6,0(s0)
   10920:	012d8733          	add	a4,s11,s2
   10924:	0016861b          	addiw	a2,a3,1
   10928:	01243423          	sd	s2,8(s0)
   1092c:	10e13823          	sd	a4,272(sp)
   10930:	10c12423          	sw	a2,264(sp)
   10934:	00700713          	li	a4,7
   10938:	01040413          	addi	s0,s0,16
   1093c:	2cc74263          	blt	a4,a2,10c00 <_vfprintf_r+0x438>
   10940:	01013783          	ld	a5,16(sp)
   10944:	0004c703          	lbu	a4,0(s1)
   10948:	012787bb          	addw	a5,a5,s2
   1094c:	00f13823          	sd	a5,16(sp)
   10950:	1e070063          	beqz	a4,10b30 <_vfprintf_r+0x368>
   10954:	fff00313          	li	t1,-1
   10958:	0014ce03          	lbu	t3,1(s1)
   1095c:	0c0107a3          	sb	zero,207(sp)
   10960:	00148493          	addi	s1,s1,1
   10964:	00000a13          	li	s4,0
   10968:	00000913          	li	s2,0
   1096c:	05a00b93          	li	s7,90
   10970:	00030a93          	mv	s5,t1
   10974:	00148493          	addi	s1,s1,1
   10978:	000e0c9b          	sext.w	s9,t3
   1097c:	fe0c879b          	addiw	a5,s9,-32
   10980:	0007871b          	sext.w	a4,a5
   10984:	04ebec63          	bltu	s7,a4,109dc <_vfprintf_r+0x214>
   10988:	02079713          	slli	a4,a5,0x20
   1098c:	01e75793          	srli	a5,a4,0x1e
   10990:	02813703          	ld	a4,40(sp)
   10994:	00e787b3          	add	a5,a5,a4
   10998:	0007a783          	lw	a5,0(a5)
   1099c:	00078067          	jr	a5
   109a0:	00000a13          	li	s4,0
   109a4:	00900693          	li	a3,9
   109a8:	0004c703          	lbu	a4,0(s1)
   109ac:	002a179b          	slliw	a5,s4,0x2
   109b0:	01478a3b          	addw	s4,a5,s4
   109b4:	fd0c8c9b          	addiw	s9,s9,-48
   109b8:	001a1a1b          	slliw	s4,s4,0x1
   109bc:	fd07079b          	addiw	a5,a4,-48
   109c0:	014c8a3b          	addw	s4,s9,s4
   109c4:	00148493          	addi	s1,s1,1
   109c8:	00070c9b          	sext.w	s9,a4
   109cc:	fcf6fee3          	bgeu	a3,a5,109a8 <_vfprintf_r+0x1e0>
   109d0:	fe0c879b          	addiw	a5,s9,-32
   109d4:	0007871b          	sext.w	a4,a5
   109d8:	faebf8e3          	bgeu	s7,a4,10988 <_vfprintf_r+0x1c0>
   109dc:	140c8a63          	beqz	s9,10b30 <_vfprintf_r+0x368>
   109e0:	11910c23          	sb	s9,280(sp)
   109e4:	0c0107a3          	sb	zero,207(sp)
   109e8:	00100c13          	li	s8,1
   109ec:	00100d13          	li	s10,1
   109f0:	11810b13          	addi	s6,sp,280
   109f4:	00013c23          	sd	zero,24(sp)
   109f8:	00000313          	li	t1,0
   109fc:	04013423          	sd	zero,72(sp)
   10a00:	04013023          	sd	zero,64(sp)
   10a04:	02013823          	sd	zero,48(sp)
   10a08:	00297b93          	andi	s7,s2,2
   10a0c:	000b8463          	beqz	s7,10a14 <_vfprintf_r+0x24c>
   10a10:	002c0c1b          	addiw	s8,s8,2
   10a14:	08497a93          	andi	s5,s2,132
   10a18:	000a9663          	bnez	s5,10a24 <_vfprintf_r+0x25c>
   10a1c:	418a073b          	subw	a4,s4,s8
   10a20:	34e046e3          	bgtz	a4,1156c <_vfprintf_r+0xda4>
   10a24:	0cf14703          	lbu	a4,207(sp)
   10a28:	11013d83          	ld	s11,272(sp)
   10a2c:	02070c63          	beqz	a4,10a64 <_vfprintf_r+0x29c>
   10a30:	10812603          	lw	a2,264(sp)
   10a34:	0cf10593          	addi	a1,sp,207
   10a38:	00b43023          	sd	a1,0(s0)
   10a3c:	0016061b          	addiw	a2,a2,1
   10a40:	00100593          	li	a1,1
   10a44:	001d8d93          	addi	s11,s11,1
   10a48:	00b43423          	sd	a1,8(s0)
   10a4c:	10c12423          	sw	a2,264(sp)
   10a50:	0006059b          	sext.w	a1,a2
   10a54:	11b13823          	sd	s11,272(sp)
   10a58:	00700613          	li	a2,7
   10a5c:	01040413          	addi	s0,s0,16
   10a60:	2ab64463          	blt	a2,a1,10d08 <_vfprintf_r+0x540>
   10a64:	020b8c63          	beqz	s7,10a9c <_vfprintf_r+0x2d4>
   10a68:	10812603          	lw	a2,264(sp)
   10a6c:	00200593          	li	a1,2
   10a70:	002d8d93          	addi	s11,s11,2
   10a74:	0016061b          	addiw	a2,a2,1
   10a78:	0d010793          	addi	a5,sp,208
   10a7c:	00b43423          	sd	a1,8(s0)
   10a80:	00f43023          	sd	a5,0(s0)
   10a84:	0006059b          	sext.w	a1,a2
   10a88:	10c12423          	sw	a2,264(sp)
   10a8c:	11b13823          	sd	s11,272(sp)
   10a90:	00700613          	li	a2,7
   10a94:	01040413          	addi	s0,s0,16
   10a98:	3eb64ae3          	blt	a2,a1,1168c <_vfprintf_r+0xec4>
   10a9c:	08000613          	li	a2,128
   10aa0:	0eca80e3          	beq	s5,a2,11380 <_vfprintf_r+0xbb8>
   10aa4:	41a30bbb          	subw	s7,t1,s10
   10aa8:	1d7040e3          	bgtz	s7,11468 <_vfprintf_r+0xca0>
   10aac:	10097613          	andi	a2,s2,256
   10ab0:	70061863          	bnez	a2,111c0 <_vfprintf_r+0x9f8>
   10ab4:	10812603          	lw	a2,264(sp)
   10ab8:	01bd0733          	add	a4,s10,s11
   10abc:	01643023          	sd	s6,0(s0)
   10ac0:	0016069b          	addiw	a3,a2,1
   10ac4:	01a43423          	sd	s10,8(s0)
   10ac8:	10e13823          	sd	a4,272(sp)
   10acc:	10d12423          	sw	a3,264(sp)
   10ad0:	00700793          	li	a5,7
   10ad4:	32d7ce63          	blt	a5,a3,10e10 <_vfprintf_r+0x648>
   10ad8:	01040413          	addi	s0,s0,16
   10adc:	00497913          	andi	s2,s2,4
   10ae0:	00090663          	beqz	s2,10aec <_vfprintf_r+0x324>
   10ae4:	418a093b          	subw	s2,s4,s8
   10ae8:	3d2046e3          	bgtz	s2,116b4 <_vfprintf_r+0xeec>
   10aec:	000a0793          	mv	a5,s4
   10af0:	018a5463          	bge	s4,s8,10af8 <_vfprintf_r+0x330>
   10af4:	000c0793          	mv	a5,s8
   10af8:	01013683          	ld	a3,16(sp)
   10afc:	00d787bb          	addw	a5,a5,a3
   10b00:	00f13823          	sd	a5,16(sp)
   10b04:	240710e3          	bnez	a4,11544 <_vfprintf_r+0xd7c>
   10b08:	01813783          	ld	a5,24(sp)
   10b0c:	10012423          	sw	zero,264(sp)
   10b10:	00078863          	beqz	a5,10b20 <_vfprintf_r+0x358>
   10b14:	01813583          	ld	a1,24(sp)
   10b18:	00098513          	mv	a0,s3
   10b1c:	679020ef          	jal	ra,13994 <_free_r>
   10b20:	18010413          	addi	s0,sp,384
   10b24:	00048b13          	mv	s6,s1
   10b28:	000b4703          	lbu	a4,0(s6)
   10b2c:	dc0714e3          	bnez	a4,108f4 <_vfprintf_r+0x12c>
   10b30:	11013783          	ld	a5,272(sp)
   10b34:	00078463          	beqz	a5,10b3c <_vfprintf_r+0x374>
   10b38:	2190106f          	j	12550 <_vfprintf_r+0x1d88>
   10b3c:	00013783          	ld	a5,0(sp)
   10b40:	0107d783          	lhu	a5,16(a5)
   10b44:	0407f793          	andi	a5,a5,64
   10b48:	00078463          	beqz	a5,10b50 <_vfprintf_r+0x388>
   10b4c:	7ed0106f          	j	12b38 <_vfprintf_r+0x2370>
   10b50:	26813083          	ld	ra,616(sp)
   10b54:	26013403          	ld	s0,608(sp)
   10b58:	01013503          	ld	a0,16(sp)
   10b5c:	25813483          	ld	s1,600(sp)
   10b60:	25013903          	ld	s2,592(sp)
   10b64:	24813983          	ld	s3,584(sp)
   10b68:	24013a03          	ld	s4,576(sp)
   10b6c:	23813a83          	ld	s5,568(sp)
   10b70:	23013b03          	ld	s6,560(sp)
   10b74:	22813b83          	ld	s7,552(sp)
   10b78:	22013c03          	ld	s8,544(sp)
   10b7c:	21813c83          	ld	s9,536(sp)
   10b80:	21013d03          	ld	s10,528(sp)
   10b84:	20813d83          	ld	s11,520(sp)
   10b88:	27010113          	addi	sp,sp,624
   10b8c:	00008067          	ret
   10b90:	01096913          	ori	s2,s2,16
   10b94:	0004ce03          	lbu	t3,0(s1)
   10b98:	0009091b          	sext.w	s2,s2
   10b9c:	dd9ff06f          	j	10974 <_vfprintf_r+0x1ac>
   10ba0:	00013583          	ld	a1,0(sp)
   10ba4:	05013503          	ld	a0,80(sp)
   10ba8:	334020ef          	jal	ra,12edc <__swsetup_r>
   10bac:	00050463          	beqz	a0,10bb4 <_vfprintf_r+0x3ec>
   10bb0:	7890106f          	j	12b38 <_vfprintf_r+0x2370>
   10bb4:	00013783          	ld	a5,0(sp)
   10bb8:	00a00693          	li	a3,10
   10bbc:	01079703          	lh	a4,16(a5)
   10bc0:	01a77713          	andi	a4,a4,26
   10bc4:	ccd71ae3          	bne	a4,a3,10898 <_vfprintf_r+0xd0>
   10bc8:	00013783          	ld	a5,0(sp)
   10bcc:	01279703          	lh	a4,18(a5)
   10bd0:	cc0744e3          	bltz	a4,10898 <_vfprintf_r+0xd0>
   10bd4:	02013683          	ld	a3,32(sp)
   10bd8:	05013503          	ld	a0,80(sp)
   10bdc:	00090613          	mv	a2,s2
   10be0:	00078593          	mv	a1,a5
   10be4:	22c020ef          	jal	ra,12e10 <__sbprintf>
   10be8:	00a13823          	sd	a0,16(sp)
   10bec:	f65ff06f          	j	10b50 <_vfprintf_r+0x388>
   10bf0:	4164893b          	subw	s2,s1,s6
   10bf4:	d20910e3          	bnez	s2,10914 <_vfprintf_r+0x14c>
   10bf8:	0004c703          	lbu	a4,0(s1)
   10bfc:	d55ff06f          	j	10950 <_vfprintf_r+0x188>
   10c00:	00013583          	ld	a1,0(sp)
   10c04:	10010613          	addi	a2,sp,256
   10c08:	00098513          	mv	a0,s3
   10c0c:	44d0a0ef          	jal	ra,1b858 <__sprint_r>
   10c10:	f20516e3          	bnez	a0,10b3c <_vfprintf_r+0x374>
   10c14:	18010413          	addi	s0,sp,384
   10c18:	d29ff06f          	j	10940 <_vfprintf_r+0x178>
   10c1c:	00897713          	andi	a4,s2,8
   10c20:	000a8313          	mv	t1,s5
   10c24:	6a071ce3          	bnez	a4,11adc <_vfprintf_r+0x1314>
   10c28:	02013783          	ld	a5,32(sp)
   10c2c:	01513c23          	sd	s5,24(sp)
   10c30:	0007b503          	ld	a0,0(a5)
   10c34:	00878a93          	addi	s5,a5,8
   10c38:	03513023          	sd	s5,32(sp)
   10c3c:	004110ef          	jal	ra,21c40 <__extenddftf2>
   10c40:	01813303          	ld	t1,24(sp)
   10c44:	00050713          	mv	a4,a0
   10c48:	0f010513          	addi	a0,sp,240
   10c4c:	00613c23          	sd	t1,24(sp)
   10c50:	0ee13823          	sd	a4,240(sp)
   10c54:	0eb13c23          	sd	a1,248(sp)
   10c58:	615050ef          	jal	ra,16a6c <_ldcheck>
   10c5c:	0ca12c23          	sw	a0,216(sp)
   10c60:	00200713          	li	a4,2
   10c64:	01813303          	ld	t1,24(sp)
   10c68:	00e51463          	bne	a0,a4,10c70 <_vfprintf_r+0x4a8>
   10c6c:	28c0106f          	j	11ef8 <_vfprintf_r+0x1730>
   10c70:	00100713          	li	a4,1
   10c74:	00e51463          	bne	a0,a4,10c7c <_vfprintf_r+0x4b4>
   10c78:	3c40106f          	j	1203c <_vfprintf_r+0x1874>
   10c7c:	06100713          	li	a4,97
   10c80:	00ec9463          	bne	s9,a4,10c88 <_vfprintf_r+0x4c0>
   10c84:	4c90106f          	j	1294c <_vfprintf_r+0x2184>
   10c88:	04100713          	li	a4,65
   10c8c:	00ec9463          	bne	s9,a4,10c94 <_vfprintf_r+0x4cc>
   10c90:	1010106f          	j	12590 <_vfprintf_r+0x1dc8>
   10c94:	fff00713          	li	a4,-1
   10c98:	00e31463          	bne	t1,a4,10ca0 <_vfprintf_r+0x4d8>
   10c9c:	7f10106f          	j	12c8c <_vfprintf_r+0x24c4>
   10ca0:	fdfcf713          	andi	a4,s9,-33
   10ca4:	04700693          	li	a3,71
   10ca8:	00d71463          	bne	a4,a3,10cb0 <_vfprintf_r+0x4e8>
   10cac:	7d10106f          	j	12c7c <_vfprintf_r+0x24b4>
   10cb0:	10096713          	ori	a4,s2,256
   10cb4:	0f813c03          	ld	s8,248(sp)
   10cb8:	0007079b          	sext.w	a5,a4
   10cbc:	08f13823          	sd	a5,144(sp)
   10cc0:	05213023          	sd	s2,64(sp)
   10cc4:	0f013b83          	ld	s7,240(sp)
   10cc8:	000c5463          	bgez	s8,10cd0 <_vfprintf_r+0x508>
   10ccc:	4190106f          	j	128e4 <_vfprintf_r+0x211c>
   10cd0:	08013c23          	sd	zero,152(sp)
   10cd4:	00013c23          	sd	zero,24(sp)
   10cd8:	fbfc871b          	addiw	a4,s9,-65
   10cdc:	0007061b          	sext.w	a2,a4
   10ce0:	02500693          	li	a3,37
   10ce4:	00c6f463          	bgeu	a3,a2,10cec <_vfprintf_r+0x524>
   10ce8:	5e80106f          	j	122d0 <_vfprintf_r+0x1b08>
   10cec:	02071693          	slli	a3,a4,0x20
   10cf0:	01e6d713          	srli	a4,a3,0x1e
   10cf4:	000226b7          	lui	a3,0x22
   10cf8:	13868693          	addi	a3,a3,312 # 22138 <__clzdi2+0x224>
   10cfc:	00d70733          	add	a4,a4,a3
   10d00:	00072703          	lw	a4,0(a4)
   10d04:	00070067          	jr	a4
   10d08:	00013583          	ld	a1,0(sp)
   10d0c:	10010613          	addi	a2,sp,256
   10d10:	00098513          	mv	a0,s3
   10d14:	08613823          	sd	t1,144(sp)
   10d18:	3410a0ef          	jal	ra,1b858 <__sprint_r>
   10d1c:	02051ee3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   10d20:	11013d83          	ld	s11,272(sp)
   10d24:	09013303          	ld	t1,144(sp)
   10d28:	18010413          	addi	s0,sp,384
   10d2c:	d39ff06f          	j	10a64 <_vfprintf_r+0x29c>
   10d30:	03813783          	ld	a5,56(sp)
   10d34:	00100693          	li	a3,1
   10d38:	01040c93          	addi	s9,s0,16
   10d3c:	3af6dae3          	bge	a3,a5,118f0 <_vfprintf_r+0x1128>
   10d40:	10812603          	lw	a2,264(sp)
   10d44:	00100693          	li	a3,1
   10d48:	001d8713          	addi	a4,s11,1
   10d4c:	0016061b          	addiw	a2,a2,1
   10d50:	00d43423          	sd	a3,8(s0)
   10d54:	10c12423          	sw	a2,264(sp)
   10d58:	0006069b          	sext.w	a3,a2
   10d5c:	01643023          	sd	s6,0(s0)
   10d60:	10e13823          	sd	a4,272(sp)
   10d64:	00700613          	li	a2,7
   10d68:	76d64ae3          	blt	a2,a3,11cdc <_vfprintf_r+0x1514>
   10d6c:	05813783          	ld	a5,88(sp)
   10d70:	0016841b          	addiw	s0,a3,1
   10d74:	10812423          	sw	s0,264(sp)
   10d78:	00e78d33          	add	s10,a5,a4
   10d7c:	06013703          	ld	a4,96(sp)
   10d80:	00fcb423          	sd	a5,8(s9)
   10d84:	11a13823          	sd	s10,272(sp)
   10d88:	00ecb023          	sd	a4,0(s9)
   10d8c:	00700713          	li	a4,7
   10d90:	010c8c93          	addi	s9,s9,16
   10d94:	768746e3          	blt	a4,s0,11d00 <_vfprintf_r+0x1538>
   10d98:	0f013503          	ld	a0,240(sp)
   10d9c:	0f813583          	ld	a1,248(sp)
   10da0:	00000613          	li	a2,0
   10da4:	00000693          	li	a3,0
   10da8:	2ed0f0ef          	jal	ra,20894 <__eqtf2>
   10dac:	03813783          	ld	a5,56(sp)
   10db0:	fff78a9b          	addiw	s5,a5,-1
   10db4:	380508e3          	beqz	a0,11944 <_vfprintf_r+0x117c>
   10db8:	001b0793          	addi	a5,s6,1
   10dbc:	0014041b          	addiw	s0,s0,1
   10dc0:	015d0d33          	add	s10,s10,s5
   10dc4:	00fcb023          	sd	a5,0(s9)
   10dc8:	015cb423          	sd	s5,8(s9)
   10dcc:	11a13823          	sd	s10,272(sp)
   10dd0:	10812423          	sw	s0,264(sp)
   10dd4:	00700793          	li	a5,7
   10dd8:	3487c4e3          	blt	a5,s0,11920 <_vfprintf_r+0x1158>
   10ddc:	010c8c93          	addi	s9,s9,16
   10de0:	07013683          	ld	a3,112(sp)
   10de4:	0014041b          	addiw	s0,s0,1
   10de8:	0e010793          	addi	a5,sp,224
   10dec:	01a68733          	add	a4,a3,s10
   10df0:	00fcb023          	sd	a5,0(s9)
   10df4:	00dcb423          	sd	a3,8(s9)
   10df8:	10812423          	sw	s0,264(sp)
   10dfc:	0004069b          	sext.w	a3,s0
   10e00:	10e13823          	sd	a4,272(sp)
   10e04:	00700793          	li	a5,7
   10e08:	010c8413          	addi	s0,s9,16
   10e0c:	ccd7d8e3          	bge	a5,a3,10adc <_vfprintf_r+0x314>
   10e10:	00013583          	ld	a1,0(sp)
   10e14:	10010613          	addi	a2,sp,256
   10e18:	00098513          	mv	a0,s3
   10e1c:	23d0a0ef          	jal	ra,1b858 <__sprint_r>
   10e20:	72051c63          	bnez	a0,11558 <_vfprintf_r+0xd90>
   10e24:	11013703          	ld	a4,272(sp)
   10e28:	18010413          	addi	s0,sp,384
   10e2c:	cb1ff06f          	j	10adc <_vfprintf_r+0x314>
   10e30:	05013503          	ld	a0,80(sp)
   10e34:	189020ef          	jal	ra,137bc <__sinit>
   10e38:	a09ff06f          	j	10840 <_vfprintf_r+0x78>
   10e3c:	02013703          	ld	a4,32(sp)
   10e40:	0c0107a3          	sb	zero,207(sp)
   10e44:	00100c13          	li	s8,1
   10e48:	00072783          	lw	a5,0(a4)
   10e4c:	00870713          	addi	a4,a4,8
   10e50:	02e13023          	sd	a4,32(sp)
   10e54:	10f10c23          	sb	a5,280(sp)
   10e58:	00100d13          	li	s10,1
   10e5c:	11810b13          	addi	s6,sp,280
   10e60:	b95ff06f          	j	109f4 <_vfprintf_r+0x22c>
   10e64:	02013783          	ld	a5,32(sp)
   10e68:	0c0107a3          	sb	zero,207(sp)
   10e6c:	000a8313          	mv	t1,s5
   10e70:	0007bb03          	ld	s6,0(a5)
   10e74:	00878a93          	addi	s5,a5,8
   10e78:	5a0b0ae3          	beqz	s6,11c2c <_vfprintf_r+0x1464>
   10e7c:	fff00713          	li	a4,-1
   10e80:	00e31463          	bne	t1,a4,10e88 <_vfprintf_r+0x6c0>
   10e84:	1300106f          	j	11fb4 <_vfprintf_r+0x17ec>
   10e88:	00030613          	mv	a2,t1
   10e8c:	00000593          	li	a1,0
   10e90:	000b0513          	mv	a0,s6
   10e94:	02613023          	sd	t1,32(sp)
   10e98:	009060ef          	jal	ra,176a0 <memchr>
   10e9c:	00a13c23          	sd	a0,24(sp)
   10ea0:	02013303          	ld	t1,32(sp)
   10ea4:	00051463          	bnez	a0,10eac <_vfprintf_r+0x6e4>
   10ea8:	3310106f          	j	129d8 <_vfprintf_r+0x2210>
   10eac:	01813783          	ld	a5,24(sp)
   10eb0:	41678d3b          	subw	s10,a5,s6
   10eb4:	0cf14703          	lbu	a4,207(sp)
   10eb8:	fffd4813          	not	a6,s10
   10ebc:	43f85813          	srai	a6,a6,0x3f
   10ec0:	03513023          	sd	s5,32(sp)
   10ec4:	00013c23          	sd	zero,24(sp)
   10ec8:	04013423          	sd	zero,72(sp)
   10ecc:	04013023          	sd	zero,64(sp)
   10ed0:	02013823          	sd	zero,48(sp)
   10ed4:	01a87c33          	and	s8,a6,s10
   10ed8:	00000313          	li	t1,0
   10edc:	b20706e3          	beqz	a4,10a08 <_vfprintf_r+0x240>
   10ee0:	001c0c1b          	addiw	s8,s8,1
   10ee4:	b25ff06f          	j	10a08 <_vfprintf_r+0x240>
   10ee8:	02013783          	ld	a5,32(sp)
   10eec:	0007aa03          	lw	s4,0(a5)
   10ef0:	00878793          	addi	a5,a5,8
   10ef4:	3a0a52e3          	bgez	s4,11a98 <_vfprintf_r+0x12d0>
   10ef8:	41400a3b          	negw	s4,s4
   10efc:	02f13023          	sd	a5,32(sp)
   10f00:	00496913          	ori	s2,s2,4
   10f04:	0004ce03          	lbu	t3,0(s1)
   10f08:	0009091b          	sext.w	s2,s2
   10f0c:	a69ff06f          	j	10974 <_vfprintf_r+0x1ac>
   10f10:	02b00793          	li	a5,43
   10f14:	0004ce03          	lbu	t3,0(s1)
   10f18:	0cf107a3          	sb	a5,207(sp)
   10f1c:	a59ff06f          	j	10974 <_vfprintf_r+0x1ac>
   10f20:	08096913          	ori	s2,s2,128
   10f24:	0004ce03          	lbu	t3,0(s1)
   10f28:	0009091b          	sext.w	s2,s2
   10f2c:	a49ff06f          	j	10974 <_vfprintf_r+0x1ac>
   10f30:	0004cc83          	lbu	s9,0(s1)
   10f34:	02a00693          	li	a3,42
   10f38:	00148793          	addi	a5,s1,1
   10f3c:	00dc9463          	bne	s9,a3,10f44 <_vfprintf_r+0x77c>
   10f40:	6610106f          	j	12da0 <_vfprintf_r+0x25d8>
   10f44:	fd0c871b          	addiw	a4,s9,-48
   10f48:	00900613          	li	a2,9
   10f4c:	00078493          	mv	s1,a5
   10f50:	00000a93          	li	s5,0
   10f54:	00900693          	li	a3,9
   10f58:	a2e662e3          	bltu	a2,a4,1097c <_vfprintf_r+0x1b4>
   10f5c:	0004cc83          	lbu	s9,0(s1)
   10f60:	002a979b          	slliw	a5,s5,0x2
   10f64:	0157833b          	addw	t1,a5,s5
   10f68:	0013131b          	slliw	t1,t1,0x1
   10f6c:	00e30abb          	addw	s5,t1,a4
   10f70:	fd0c871b          	addiw	a4,s9,-48
   10f74:	00148493          	addi	s1,s1,1
   10f78:	fee6f2e3          	bgeu	a3,a4,10f5c <_vfprintf_r+0x794>
   10f7c:	a01ff06f          	j	1097c <_vfprintf_r+0x1b4>
   10f80:	00098513          	mv	a0,s3
   10f84:	359050ef          	jal	ra,16adc <_localeconv_r>
   10f88:	00853783          	ld	a5,8(a0)
   10f8c:	00078513          	mv	a0,a5
   10f90:	08f13423          	sd	a5,136(sp)
   10f94:	090080ef          	jal	ra,19024 <strlen>
   10f98:	00050793          	mv	a5,a0
   10f9c:	00098513          	mv	a0,s3
   10fa0:	00078c13          	mv	s8,a5
   10fa4:	08f13023          	sd	a5,128(sp)
   10fa8:	335050ef          	jal	ra,16adc <_localeconv_r>
   10fac:	01053703          	ld	a4,16(a0)
   10fb0:	0004ce03          	lbu	t3,0(s1)
   10fb4:	06e13c23          	sd	a4,120(sp)
   10fb8:	9a0c0ee3          	beqz	s8,10974 <_vfprintf_r+0x1ac>
   10fbc:	9a070ce3          	beqz	a4,10974 <_vfprintf_r+0x1ac>
   10fc0:	00074783          	lbu	a5,0(a4)
   10fc4:	9a0788e3          	beqz	a5,10974 <_vfprintf_r+0x1ac>
   10fc8:	40096913          	ori	s2,s2,1024
   10fcc:	0009091b          	sext.w	s2,s2
   10fd0:	9a5ff06f          	j	10974 <_vfprintf_r+0x1ac>
   10fd4:	00196913          	ori	s2,s2,1
   10fd8:	0004ce03          	lbu	t3,0(s1)
   10fdc:	0009091b          	sext.w	s2,s2
   10fe0:	995ff06f          	j	10974 <_vfprintf_r+0x1ac>
   10fe4:	0cf14783          	lbu	a5,207(sp)
   10fe8:	0004ce03          	lbu	t3,0(s1)
   10fec:	980794e3          	bnez	a5,10974 <_vfprintf_r+0x1ac>
   10ff0:	02000793          	li	a5,32
   10ff4:	0cf107a3          	sb	a5,207(sp)
   10ff8:	97dff06f          	j	10974 <_vfprintf_r+0x1ac>
   10ffc:	01096d93          	ori	s11,s2,16
   11000:	000a8313          	mv	t1,s5
   11004:	000d8d9b          	sext.w	s11,s11
   11008:	02013683          	ld	a3,32(sp)
   1100c:	020df793          	andi	a5,s11,32
   11010:	00868713          	addi	a4,a3,8
   11014:	220788e3          	beqz	a5,11a44 <_vfprintf_r+0x127c>
   11018:	0006bd03          	ld	s10,0(a3)
   1101c:	00100793          	li	a5,1
   11020:	02e13023          	sd	a4,32(sp)
   11024:	00000713          	li	a4,0
   11028:	0ce107a3          	sb	a4,207(sp)
   1102c:	fff00713          	li	a4,-1
   11030:	2ae30463          	beq	t1,a4,112d8 <_vfprintf_r+0xb10>
   11034:	f7fdf913          	andi	s2,s11,-129
   11038:	0009091b          	sext.w	s2,s2
   1103c:	280d1c63          	bnez	s10,112d4 <_vfprintf_r+0xb0c>
   11040:	2e031a63          	bnez	t1,11334 <_vfprintf_r+0xb6c>
   11044:	220796e3          	bnez	a5,11a70 <_vfprintf_r+0x12a8>
   11048:	001dfd13          	andi	s10,s11,1
   1104c:	17c10b13          	addi	s6,sp,380
   11050:	240d1ae3          	bnez	s10,11aa4 <_vfprintf_r+0x12dc>
   11054:	0cf14703          	lbu	a4,207(sp)
   11058:	000d0813          	mv	a6,s10
   1105c:	006d5463          	bge	s10,t1,11064 <_vfprintf_r+0x89c>
   11060:	00030813          	mv	a6,t1
   11064:	00013c23          	sd	zero,24(sp)
   11068:	04013423          	sd	zero,72(sp)
   1106c:	04013023          	sd	zero,64(sp)
   11070:	02013823          	sd	zero,48(sp)
   11074:	00080c1b          	sext.w	s8,a6
   11078:	e60714e3          	bnez	a4,10ee0 <_vfprintf_r+0x718>
   1107c:	98dff06f          	j	10a08 <_vfprintf_r+0x240>
   11080:	00896913          	ori	s2,s2,8
   11084:	0004ce03          	lbu	t3,0(s1)
   11088:	0009091b          	sext.w	s2,s2
   1108c:	8e9ff06f          	j	10974 <_vfprintf_r+0x1ac>
   11090:	01096913          	ori	s2,s2,16
   11094:	000a8313          	mv	t1,s5
   11098:	0009091b          	sext.w	s2,s2
   1109c:	02013683          	ld	a3,32(sp)
   110a0:	02097793          	andi	a5,s2,32
   110a4:	00868713          	addi	a4,a3,8
   110a8:	12078ce3          	beqz	a5,119e0 <_vfprintf_r+0x1218>
   110ac:	0006b783          	ld	a5,0(a3)
   110b0:	00078d13          	mv	s10,a5
   110b4:	1407cae3          	bltz	a5,11a08 <_vfprintf_r+0x1240>
   110b8:	fff00793          	li	a5,-1
   110bc:	5af30463          	beq	t1,a5,11664 <_vfprintf_r+0xe9c>
   110c0:	f7f97d93          	andi	s11,s2,-129
   110c4:	02e13023          	sd	a4,32(sp)
   110c8:	000d8d9b          	sext.w	s11,s11
   110cc:	5a0d1063          	bnez	s10,1166c <_vfprintf_r+0xea4>
   110d0:	5a031263          	bnez	t1,11674 <_vfprintf_r+0xeac>
   110d4:	000d8913          	mv	s2,s11
   110d8:	17c10b13          	addi	s6,sp,380
   110dc:	f79ff06f          	j	11054 <_vfprintf_r+0x88c>
   110e0:	01096913          	ori	s2,s2,16
   110e4:	000a8313          	mv	t1,s5
   110e8:	0009091b          	sext.w	s2,s2
   110ec:	02013683          	ld	a3,32(sp)
   110f0:	02097793          	andi	a5,s2,32
   110f4:	00868713          	addi	a4,a3,8
   110f8:	120784e3          	beqz	a5,11a20 <_vfprintf_r+0x1258>
   110fc:	0006bd03          	ld	s10,0(a3)
   11100:	bff97d93          	andi	s11,s2,-1025
   11104:	000d8d9b          	sext.w	s11,s11
   11108:	02e13023          	sd	a4,32(sp)
   1110c:	00000793          	li	a5,0
   11110:	f15ff06f          	j	11024 <_vfprintf_r+0x85c>
   11114:	02096913          	ori	s2,s2,32
   11118:	0004ce03          	lbu	t3,0(s1)
   1111c:	0009091b          	sext.w	s2,s2
   11120:	855ff06f          	j	10974 <_vfprintf_r+0x1ac>
   11124:	02013703          	ld	a4,32(sp)
   11128:	02097793          	andi	a5,s2,32
   1112c:	00073703          	ld	a4,0(a4)
   11130:	180782e3          	beqz	a5,11ab4 <_vfprintf_r+0x12ec>
   11134:	01013783          	ld	a5,16(sp)
   11138:	00f73023          	sd	a5,0(a4)
   1113c:	02013783          	ld	a5,32(sp)
   11140:	00048b13          	mv	s6,s1
   11144:	00878793          	addi	a5,a5,8
   11148:	02f13023          	sd	a5,32(sp)
   1114c:	9ddff06f          	j	10b28 <_vfprintf_r+0x360>
   11150:	0004ce03          	lbu	t3,0(s1)
   11154:	06c00793          	li	a5,108
   11158:	28fe02e3          	beq	t3,a5,11bdc <_vfprintf_r+0x1414>
   1115c:	01096913          	ori	s2,s2,16
   11160:	0009091b          	sext.w	s2,s2
   11164:	811ff06f          	j	10974 <_vfprintf_r+0x1ac>
   11168:	0004ce03          	lbu	t3,0(s1)
   1116c:	06800793          	li	a5,104
   11170:	24fe0ce3          	beq	t3,a5,11bc8 <_vfprintf_r+0x1400>
   11174:	04096913          	ori	s2,s2,64
   11178:	0009091b          	sext.w	s2,s2
   1117c:	ff8ff06f          	j	10974 <_vfprintf_r+0x1ac>
   11180:	02013703          	ld	a4,32(sp)
   11184:	ffff87b7          	lui	a5,0xffff8
   11188:	8307c793          	xori	a5,a5,-2000
   1118c:	0cf11823          	sh	a5,208(sp)
   11190:	00870793          	addi	a5,a4,8
   11194:	02f13023          	sd	a5,32(sp)
   11198:	000227b7          	lui	a5,0x22
   1119c:	fa878793          	addi	a5,a5,-88 # 21fa8 <__clzdi2+0x94>
   111a0:	00296d93          	ori	s11,s2,2
   111a4:	06f13423          	sd	a5,104(sp)
   111a8:	00073d03          	ld	s10,0(a4)
   111ac:	000a8313          	mv	t1,s5
   111b0:	000d8d9b          	sext.w	s11,s11
   111b4:	00200793          	li	a5,2
   111b8:	07800c93          	li	s9,120
   111bc:	e69ff06f          	j	11024 <_vfprintf_r+0x85c>
   111c0:	06500693          	li	a3,101
   111c4:	b796d6e3          	bge	a3,s9,10d30 <_vfprintf_r+0x568>
   111c8:	0f013503          	ld	a0,240(sp)
   111cc:	0f813583          	ld	a1,248(sp)
   111d0:	00000613          	li	a2,0
   111d4:	00000693          	li	a3,0
   111d8:	6bc0f0ef          	jal	ra,20894 <__eqtf2>
   111dc:	58051463          	bnez	a0,11764 <_vfprintf_r+0xf9c>
   111e0:	10812783          	lw	a5,264(sp)
   111e4:	000226b7          	lui	a3,0x22
   111e8:	fc868693          	addi	a3,a3,-56 # 21fc8 <__clzdi2+0xb4>
   111ec:	0017879b          	addiw	a5,a5,1
   111f0:	00d43023          	sd	a3,0(s0)
   111f4:	001d8d93          	addi	s11,s11,1
   111f8:	00100693          	li	a3,1
   111fc:	00d43423          	sd	a3,8(s0)
   11200:	10f12423          	sw	a5,264(sp)
   11204:	0007869b          	sext.w	a3,a5
   11208:	11b13823          	sd	s11,272(sp)
   1120c:	00700793          	li	a5,7
   11210:	01040413          	addi	s0,s0,16
   11214:	48d7cee3          	blt	a5,a3,11eb0 <_vfprintf_r+0x16e8>
   11218:	0d812783          	lw	a5,216(sp)
   1121c:	03813703          	ld	a4,56(sp)
   11220:	04e7dee3          	bge	a5,a4,11a7c <_vfprintf_r+0x12b4>
   11224:	05813683          	ld	a3,88(sp)
   11228:	10812783          	lw	a5,264(sp)
   1122c:	06013603          	ld	a2,96(sp)
   11230:	01b68733          	add	a4,a3,s11
   11234:	0017879b          	addiw	a5,a5,1
   11238:	00d43423          	sd	a3,8(s0)
   1123c:	00c43023          	sd	a2,0(s0)
   11240:	0007869b          	sext.w	a3,a5
   11244:	10f12423          	sw	a5,264(sp)
   11248:	10e13823          	sd	a4,272(sp)
   1124c:	00700793          	li	a5,7
   11250:	01040413          	addi	s0,s0,16
   11254:	1ad7cce3          	blt	a5,a3,11c0c <_vfprintf_r+0x1444>
   11258:	03813783          	ld	a5,56(sp)
   1125c:	fff78c9b          	addiw	s9,a5,-1
   11260:	87905ee3          	blez	s9,10adc <_vfprintf_r+0x314>
   11264:	00022f37          	lui	t5,0x22
   11268:	01000693          	li	a3,16
   1126c:	10812783          	lw	a5,264(sp)
   11270:	1d0f0d93          	addi	s11,t5,464 # 221d0 <zeroes.0>
   11274:	4596dee3          	bge	a3,s9,11ed0 <_vfprintf_r+0x1708>
   11278:	00013b03          	ld	s6,0(sp)
   1127c:	01000d13          	li	s10,16
   11280:	00700a93          	li	s5,7
   11284:	00c0006f          	j	11290 <_vfprintf_r+0xac8>
   11288:	ff0c8c9b          	addiw	s9,s9,-16
   1128c:	459d52e3          	bge	s10,s9,11ed0 <_vfprintf_r+0x1708>
   11290:	0017879b          	addiw	a5,a5,1
   11294:	01070713          	addi	a4,a4,16
   11298:	01b43023          	sd	s11,0(s0)
   1129c:	01a43423          	sd	s10,8(s0)
   112a0:	10e13823          	sd	a4,272(sp)
   112a4:	10f12423          	sw	a5,264(sp)
   112a8:	01040413          	addi	s0,s0,16
   112ac:	fcfadee3          	bge	s5,a5,11288 <_vfprintf_r+0xac0>
   112b0:	10010613          	addi	a2,sp,256
   112b4:	000b0593          	mv	a1,s6
   112b8:	00098513          	mv	a0,s3
   112bc:	59c0a0ef          	jal	ra,1b858 <__sprint_r>
   112c0:	28051c63          	bnez	a0,11558 <_vfprintf_r+0xd90>
   112c4:	11013703          	ld	a4,272(sp)
   112c8:	10812783          	lw	a5,264(sp)
   112cc:	18010413          	addi	s0,sp,384
   112d0:	fb9ff06f          	j	11288 <_vfprintf_r+0xac0>
   112d4:	00090d93          	mv	s11,s2
   112d8:	00100713          	li	a4,1
   112dc:	38e78863          	beq	a5,a4,1166c <_vfprintf_r+0xea4>
   112e0:	00200713          	li	a4,2
   112e4:	06e78463          	beq	a5,a4,1134c <_vfprintf_r+0xb84>
   112e8:	17c10a93          	addi	s5,sp,380
   112ec:	000a8b13          	mv	s6,s5
   112f0:	007d7713          	andi	a4,s10,7
   112f4:	03070713          	addi	a4,a4,48
   112f8:	feeb0fa3          	sb	a4,-1(s6)
   112fc:	003d5d13          	srli	s10,s10,0x3
   11300:	000b0613          	mv	a2,s6
   11304:	fffb0b13          	addi	s6,s6,-1
   11308:	fe0d14e3          	bnez	s10,112f0 <_vfprintf_r+0xb28>
   1130c:	001df593          	andi	a1,s11,1
   11310:	06058263          	beqz	a1,11374 <_vfprintf_r+0xbac>
   11314:	03000593          	li	a1,48
   11318:	04b70e63          	beq	a4,a1,11374 <_vfprintf_r+0xbac>
   1131c:	ffe60613          	addi	a2,a2,-2
   11320:	febb0fa3          	sb	a1,-1(s6)
   11324:	40ca8d3b          	subw	s10,s5,a2
   11328:	000d8913          	mv	s2,s11
   1132c:	00060b13          	mv	s6,a2
   11330:	d25ff06f          	j	11054 <_vfprintf_r+0x88c>
   11334:	00100713          	li	a4,1
   11338:	00e79463          	bne	a5,a4,11340 <_vfprintf_r+0xb78>
   1133c:	7040106f          	j	12a40 <_vfprintf_r+0x2278>
   11340:	00200713          	li	a4,2
   11344:	00090d93          	mv	s11,s2
   11348:	fae790e3          	bne	a5,a4,112e8 <_vfprintf_r+0xb20>
   1134c:	06813703          	ld	a4,104(sp)
   11350:	17c10a93          	addi	s5,sp,380
   11354:	000a8b13          	mv	s6,s5
   11358:	00fd7793          	andi	a5,s10,15
   1135c:	00f707b3          	add	a5,a4,a5
   11360:	0007c783          	lbu	a5,0(a5)
   11364:	004d5d13          	srli	s10,s10,0x4
   11368:	fffb0b13          	addi	s6,s6,-1
   1136c:	00fb0023          	sb	a5,0(s6)
   11370:	fe0d14e3          	bnez	s10,11358 <_vfprintf_r+0xb90>
   11374:	416a8d3b          	subw	s10,s5,s6
   11378:	000d8913          	mv	s2,s11
   1137c:	cd9ff06f          	j	11054 <_vfprintf_r+0x88c>
   11380:	418a0abb          	subw	s5,s4,s8
   11384:	f3505063          	blez	s5,10aa4 <_vfprintf_r+0x2dc>
   11388:	00022f37          	lui	t5,0x22
   1138c:	01000593          	li	a1,16
   11390:	000d8713          	mv	a4,s11
   11394:	10812603          	lw	a2,264(sp)
   11398:	1d0f0d93          	addi	s11,t5,464 # 221d0 <zeroes.0>
   1139c:	0955de63          	bge	a1,s5,11438 <_vfprintf_r+0xc70>
   113a0:	08913823          	sd	s1,144(sp)
   113a4:	01000f93          	li	t6,16
   113a8:	000a8493          	mv	s1,s5
   113ac:	00700b93          	li	s7,7
   113b0:	000a0a93          	mv	s5,s4
   113b4:	00090a13          	mv	s4,s2
   113b8:	000d8913          	mv	s2,s11
   113bc:	000b0d93          	mv	s11,s6
   113c0:	00030b13          	mv	s6,t1
   113c4:	00c0006f          	j	113d0 <_vfprintf_r+0xc08>
   113c8:	ff04849b          	addiw	s1,s1,-16
   113cc:	049fd863          	bge	t6,s1,1141c <_vfprintf_r+0xc54>
   113d0:	0016061b          	addiw	a2,a2,1
   113d4:	01070713          	addi	a4,a4,16
   113d8:	01243023          	sd	s2,0(s0)
   113dc:	01f43423          	sd	t6,8(s0)
   113e0:	10e13823          	sd	a4,272(sp)
   113e4:	10c12423          	sw	a2,264(sp)
   113e8:	01040413          	addi	s0,s0,16
   113ec:	fccbdee3          	bge	s7,a2,113c8 <_vfprintf_r+0xc00>
   113f0:	00013583          	ld	a1,0(sp)
   113f4:	10010613          	addi	a2,sp,256
   113f8:	00098513          	mv	a0,s3
   113fc:	45c0a0ef          	jal	ra,1b858 <__sprint_r>
   11400:	14051c63          	bnez	a0,11558 <_vfprintf_r+0xd90>
   11404:	01000f93          	li	t6,16
   11408:	ff04849b          	addiw	s1,s1,-16
   1140c:	11013703          	ld	a4,272(sp)
   11410:	10812603          	lw	a2,264(sp)
   11414:	18010413          	addi	s0,sp,384
   11418:	fa9fcce3          	blt	t6,s1,113d0 <_vfprintf_r+0xc08>
   1141c:	000b0313          	mv	t1,s6
   11420:	000d8b13          	mv	s6,s11
   11424:	00090d93          	mv	s11,s2
   11428:	000a0913          	mv	s2,s4
   1142c:	000a8a13          	mv	s4,s5
   11430:	00048a93          	mv	s5,s1
   11434:	09013483          	ld	s1,144(sp)
   11438:	0016059b          	addiw	a1,a2,1
   1143c:	00ea8733          	add	a4,s5,a4
   11440:	01b43023          	sd	s11,0(s0)
   11444:	01543423          	sd	s5,8(s0)
   11448:	10e13823          	sd	a4,272(sp)
   1144c:	10b12423          	sw	a1,264(sp)
   11450:	00700613          	li	a2,7
   11454:	6eb64463          	blt	a2,a1,11b3c <_vfprintf_r+0x1374>
   11458:	41a30bbb          	subw	s7,t1,s10
   1145c:	01040413          	addi	s0,s0,16
   11460:	00070d93          	mv	s11,a4
   11464:	e5705463          	blez	s7,10aac <_vfprintf_r+0x2e4>
   11468:	00022f37          	lui	t5,0x22
   1146c:	01000593          	li	a1,16
   11470:	000d8713          	mv	a4,s11
   11474:	10812603          	lw	a2,264(sp)
   11478:	1d0f0d93          	addi	s11,t5,464 # 221d0 <zeroes.0>
   1147c:	0975de63          	bge	a1,s7,11518 <_vfprintf_r+0xd50>
   11480:	000b0793          	mv	a5,s6
   11484:	00813d83          	ld	s11,8(sp)
   11488:	000a0b13          	mv	s6,s4
   1148c:	01000893          	li	a7,16
   11490:	00090a13          	mv	s4,s2
   11494:	00700a93          	li	s5,7
   11498:	00048913          	mv	s2,s1
   1149c:	000b8493          	mv	s1,s7
   114a0:	00078b93          	mv	s7,a5
   114a4:	00c0006f          	j	114b0 <_vfprintf_r+0xce8>
   114a8:	ff04849b          	addiw	s1,s1,-16
   114ac:	0498da63          	bge	a7,s1,11500 <_vfprintf_r+0xd38>
   114b0:	00813683          	ld	a3,8(sp)
   114b4:	0016061b          	addiw	a2,a2,1
   114b8:	01070713          	addi	a4,a4,16
   114bc:	00d43023          	sd	a3,0(s0)
   114c0:	01143423          	sd	a7,8(s0)
   114c4:	10e13823          	sd	a4,272(sp)
   114c8:	10c12423          	sw	a2,264(sp)
   114cc:	01040413          	addi	s0,s0,16
   114d0:	fccadce3          	bge	s5,a2,114a8 <_vfprintf_r+0xce0>
   114d4:	00013583          	ld	a1,0(sp)
   114d8:	10010613          	addi	a2,sp,256
   114dc:	00098513          	mv	a0,s3
   114e0:	3780a0ef          	jal	ra,1b858 <__sprint_r>
   114e4:	06051a63          	bnez	a0,11558 <_vfprintf_r+0xd90>
   114e8:	01000893          	li	a7,16
   114ec:	ff04849b          	addiw	s1,s1,-16
   114f0:	11013703          	ld	a4,272(sp)
   114f4:	10812603          	lw	a2,264(sp)
   114f8:	18010413          	addi	s0,sp,384
   114fc:	fa98cae3          	blt	a7,s1,114b0 <_vfprintf_r+0xce8>
   11500:	000b8793          	mv	a5,s7
   11504:	00048b93          	mv	s7,s1
   11508:	00090493          	mv	s1,s2
   1150c:	000a0913          	mv	s2,s4
   11510:	000b0a13          	mv	s4,s6
   11514:	00078b13          	mv	s6,a5
   11518:	0016059b          	addiw	a1,a2,1
   1151c:	00eb8733          	add	a4,s7,a4
   11520:	01b43023          	sd	s11,0(s0)
   11524:	01743423          	sd	s7,8(s0)
   11528:	10e13823          	sd	a4,272(sp)
   1152c:	10b12423          	sw	a1,264(sp)
   11530:	00700613          	li	a2,7
   11534:	48b64663          	blt	a2,a1,119c0 <_vfprintf_r+0x11f8>
   11538:	01040413          	addi	s0,s0,16
   1153c:	00070d93          	mv	s11,a4
   11540:	d6cff06f          	j	10aac <_vfprintf_r+0x2e4>
   11544:	00013583          	ld	a1,0(sp)
   11548:	10010613          	addi	a2,sp,256
   1154c:	00098513          	mv	a0,s3
   11550:	3080a0ef          	jal	ra,1b858 <__sprint_r>
   11554:	da050a63          	beqz	a0,10b08 <_vfprintf_r+0x340>
   11558:	01813583          	ld	a1,24(sp)
   1155c:	de058063          	beqz	a1,10b3c <_vfprintf_r+0x374>
   11560:	05013503          	ld	a0,80(sp)
   11564:	430020ef          	jal	ra,13994 <_free_r>
   11568:	dd4ff06f          	j	10b3c <_vfprintf_r+0x374>
   1156c:	000228b7          	lui	a7,0x22
   11570:	01000513          	li	a0,16
   11574:	11013583          	ld	a1,272(sp)
   11578:	10812603          	lw	a2,264(sp)
   1157c:	1e088d93          	addi	s11,a7,480 # 221e0 <blanks.1>
   11580:	08e55c63          	bge	a0,a4,11618 <_vfprintf_r+0xe50>
   11584:	08913823          	sd	s1,144(sp)
   11588:	00040793          	mv	a5,s0
   1158c:	000d8493          	mv	s1,s11
   11590:	01000f13          	li	t5,16
   11594:	000b0d93          	mv	s11,s6
   11598:	00700393          	li	t2,7
   1159c:	00070413          	mv	s0,a4
   115a0:	00030b13          	mv	s6,t1
   115a4:	00c0006f          	j	115b0 <_vfprintf_r+0xde8>
   115a8:	ff04041b          	addiw	s0,s0,-16
   115ac:	048f5a63          	bge	t5,s0,11600 <_vfprintf_r+0xe38>
   115b0:	0016061b          	addiw	a2,a2,1
   115b4:	01058593          	addi	a1,a1,16
   115b8:	0097b023          	sd	s1,0(a5)
   115bc:	01e7b423          	sd	t5,8(a5)
   115c0:	10b13823          	sd	a1,272(sp)
   115c4:	10c12423          	sw	a2,264(sp)
   115c8:	01078793          	addi	a5,a5,16
   115cc:	fcc3dee3          	bge	t2,a2,115a8 <_vfprintf_r+0xde0>
   115d0:	00013583          	ld	a1,0(sp)
   115d4:	10010613          	addi	a2,sp,256
   115d8:	00098513          	mv	a0,s3
   115dc:	27c0a0ef          	jal	ra,1b858 <__sprint_r>
   115e0:	f6051ce3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   115e4:	01000f13          	li	t5,16
   115e8:	ff04041b          	addiw	s0,s0,-16
   115ec:	11013583          	ld	a1,272(sp)
   115f0:	10812603          	lw	a2,264(sp)
   115f4:	18010793          	addi	a5,sp,384
   115f8:	00700393          	li	t2,7
   115fc:	fa8f4ae3          	blt	t5,s0,115b0 <_vfprintf_r+0xde8>
   11600:	000b0313          	mv	t1,s6
   11604:	000d8b13          	mv	s6,s11
   11608:	00048d93          	mv	s11,s1
   1160c:	09013483          	ld	s1,144(sp)
   11610:	00040713          	mv	a4,s0
   11614:	00078413          	mv	s0,a5
   11618:	00b705b3          	add	a1,a4,a1
   1161c:	0016061b          	addiw	a2,a2,1
   11620:	00e43423          	sd	a4,8(s0)
   11624:	01b43023          	sd	s11,0(s0)
   11628:	10b13823          	sd	a1,272(sp)
   1162c:	10c12423          	sw	a2,264(sp)
   11630:	0006059b          	sext.w	a1,a2
   11634:	00700713          	li	a4,7
   11638:	01040413          	addi	s0,s0,16
   1163c:	beb75463          	bge	a4,a1,10a24 <_vfprintf_r+0x25c>
   11640:	00013583          	ld	a1,0(sp)
   11644:	10010613          	addi	a2,sp,256
   11648:	00098513          	mv	a0,s3
   1164c:	08613823          	sd	t1,144(sp)
   11650:	2080a0ef          	jal	ra,1b858 <__sprint_r>
   11654:	f00512e3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   11658:	09013303          	ld	t1,144(sp)
   1165c:	18010413          	addi	s0,sp,384
   11660:	bc4ff06f          	j	10a24 <_vfprintf_r+0x25c>
   11664:	00090d93          	mv	s11,s2
   11668:	02e13023          	sd	a4,32(sp)
   1166c:	00900793          	li	a5,9
   11670:	6ba7ea63          	bltu	a5,s10,11d24 <_vfprintf_r+0x155c>
   11674:	030d0d1b          	addiw	s10,s10,48
   11678:	17a10da3          	sb	s10,379(sp)
   1167c:	000d8913          	mv	s2,s11
   11680:	00100d13          	li	s10,1
   11684:	17b10b13          	addi	s6,sp,379
   11688:	9cdff06f          	j	11054 <_vfprintf_r+0x88c>
   1168c:	00013583          	ld	a1,0(sp)
   11690:	10010613          	addi	a2,sp,256
   11694:	00098513          	mv	a0,s3
   11698:	08613823          	sd	t1,144(sp)
   1169c:	1bc0a0ef          	jal	ra,1b858 <__sprint_r>
   116a0:	ea051ce3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   116a4:	11013d83          	ld	s11,272(sp)
   116a8:	09013303          	ld	t1,144(sp)
   116ac:	18010413          	addi	s0,sp,384
   116b0:	becff06f          	j	10a9c <_vfprintf_r+0x2d4>
   116b4:	000228b7          	lui	a7,0x22
   116b8:	01000693          	li	a3,16
   116bc:	10812783          	lw	a5,264(sp)
   116c0:	1e088d93          	addi	s11,a7,480 # 221e0 <blanks.1>
   116c4:	0726d263          	bge	a3,s2,11728 <_vfprintf_r+0xf60>
   116c8:	00013a83          	ld	s5,0(sp)
   116cc:	01000c93          	li	s9,16
   116d0:	00700d13          	li	s10,7
   116d4:	00c0006f          	j	116e0 <_vfprintf_r+0xf18>
   116d8:	ff09091b          	addiw	s2,s2,-16
   116dc:	052cd663          	bge	s9,s2,11728 <_vfprintf_r+0xf60>
   116e0:	0017879b          	addiw	a5,a5,1
   116e4:	01070713          	addi	a4,a4,16
   116e8:	01b43023          	sd	s11,0(s0)
   116ec:	01943423          	sd	s9,8(s0)
   116f0:	10e13823          	sd	a4,272(sp)
   116f4:	10f12423          	sw	a5,264(sp)
   116f8:	01040413          	addi	s0,s0,16
   116fc:	fcfd5ee3          	bge	s10,a5,116d8 <_vfprintf_r+0xf10>
   11700:	10010613          	addi	a2,sp,256
   11704:	000a8593          	mv	a1,s5
   11708:	00098513          	mv	a0,s3
   1170c:	14c0a0ef          	jal	ra,1b858 <__sprint_r>
   11710:	e40514e3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   11714:	ff09091b          	addiw	s2,s2,-16
   11718:	11013703          	ld	a4,272(sp)
   1171c:	10812783          	lw	a5,264(sp)
   11720:	18010413          	addi	s0,sp,384
   11724:	fb2ccee3          	blt	s9,s2,116e0 <_vfprintf_r+0xf18>
   11728:	0017869b          	addiw	a3,a5,1
   1172c:	01270733          	add	a4,a4,s2
   11730:	01b43023          	sd	s11,0(s0)
   11734:	01243423          	sd	s2,8(s0)
   11738:	10e13823          	sd	a4,272(sp)
   1173c:	10d12423          	sw	a3,264(sp)
   11740:	00700793          	li	a5,7
   11744:	bad7d463          	bge	a5,a3,10aec <_vfprintf_r+0x324>
   11748:	00013583          	ld	a1,0(sp)
   1174c:	10010613          	addi	a2,sp,256
   11750:	00098513          	mv	a0,s3
   11754:	1040a0ef          	jal	ra,1b858 <__sprint_r>
   11758:	e00510e3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   1175c:	11013703          	ld	a4,272(sp)
   11760:	b8cff06f          	j	10aec <_vfprintf_r+0x324>
   11764:	0d812603          	lw	a2,216(sp)
   11768:	6ac05463          	blez	a2,11e10 <_vfprintf_r+0x1648>
   1176c:	03813783          	ld	a5,56(sp)
   11770:	03013703          	ld	a4,48(sp)
   11774:	00fb0ab3          	add	s5,s6,a5
   11778:	00070693          	mv	a3,a4
   1177c:	3ae7c863          	blt	a5,a4,11b2c <_vfprintf_r+0x1364>
   11780:	00068c9b          	sext.w	s9,a3
   11784:	03905663          	blez	s9,117b0 <_vfprintf_r+0xfe8>
   11788:	10812603          	lw	a2,264(sp)
   1178c:	019d8db3          	add	s11,s11,s9
   11790:	01643023          	sd	s6,0(s0)
   11794:	0016059b          	addiw	a1,a2,1
   11798:	01943423          	sd	s9,8(s0)
   1179c:	11b13823          	sd	s11,272(sp)
   117a0:	10b12423          	sw	a1,264(sp)
   117a4:	00700613          	li	a2,7
   117a8:	01040413          	addi	s0,s0,16
   117ac:	50b646e3          	blt	a2,a1,124b8 <_vfprintf_r+0x1cf0>
   117b0:	fffcc613          	not	a2,s9
   117b4:	03013783          	ld	a5,48(sp)
   117b8:	43f65613          	srai	a2,a2,0x3f
   117bc:	00ccf6b3          	and	a3,s9,a2
   117c0:	40d78cbb          	subw	s9,a5,a3
   117c4:	49904663          	bgtz	s9,11c50 <_vfprintf_r+0x1488>
   117c8:	03013783          	ld	a5,48(sp)
   117cc:	40097693          	andi	a3,s2,1024
   117d0:	00fb0b33          	add	s6,s6,a5
   117d4:	0a069ae3          	bnez	a3,12088 <_vfprintf_r+0x18c0>
   117d8:	0d812683          	lw	a3,216(sp)
   117dc:	03813783          	ld	a5,56(sp)
   117e0:	00f6c663          	blt	a3,a5,117ec <_vfprintf_r+0x1024>
   117e4:	00197613          	andi	a2,s2,1
   117e8:	4e060ce3          	beqz	a2,124e0 <_vfprintf_r+0x1d18>
   117ec:	10812603          	lw	a2,264(sp)
   117f0:	05813783          	ld	a5,88(sp)
   117f4:	06013583          	ld	a1,96(sp)
   117f8:	01040413          	addi	s0,s0,16
   117fc:	01b78733          	add	a4,a5,s11
   11800:	feb43823          	sd	a1,-16(s0)
   11804:	0016059b          	addiw	a1,a2,1
   11808:	fef43c23          	sd	a5,-8(s0)
   1180c:	10e13823          	sd	a4,272(sp)
   11810:	10b12423          	sw	a1,264(sp)
   11814:	00700613          	li	a2,7
   11818:	00b65463          	bge	a2,a1,11820 <_vfprintf_r+0x1058>
   1181c:	1380106f          	j	12954 <_vfprintf_r+0x218c>
   11820:	03813783          	ld	a5,56(sp)
   11824:	416a8cb3          	sub	s9,s5,s6
   11828:	000c859b          	sext.w	a1,s9
   1182c:	40d7863b          	subw	a2,a5,a3
   11830:	00b65463          	bge	a2,a1,11838 <_vfprintf_r+0x1070>
   11834:	00060c93          	mv	s9,a2
   11838:	000c8c9b          	sext.w	s9,s9
   1183c:	03905863          	blez	s9,1186c <_vfprintf_r+0x10a4>
   11840:	10812683          	lw	a3,264(sp)
   11844:	01970733          	add	a4,a4,s9
   11848:	01643023          	sd	s6,0(s0)
   1184c:	0016869b          	addiw	a3,a3,1
   11850:	01943423          	sd	s9,8(s0)
   11854:	10e13823          	sd	a4,272(sp)
   11858:	10d12423          	sw	a3,264(sp)
   1185c:	00700793          	li	a5,7
   11860:	01040413          	addi	s0,s0,16
   11864:	00d7d463          	bge	a5,a3,1186c <_vfprintf_r+0x10a4>
   11868:	19c0106f          	j	12a04 <_vfprintf_r+0x223c>
   1186c:	fffcc793          	not	a5,s9
   11870:	43f7d793          	srai	a5,a5,0x3f
   11874:	00fcfcb3          	and	s9,s9,a5
   11878:	41960cbb          	subw	s9,a2,s9
   1187c:	a7905063          	blez	s9,10adc <_vfprintf_r+0x314>
   11880:	00022f37          	lui	t5,0x22
   11884:	01000693          	li	a3,16
   11888:	10812783          	lw	a5,264(sp)
   1188c:	1d0f0d93          	addi	s11,t5,464 # 221d0 <zeroes.0>
   11890:	6596d063          	bge	a3,s9,11ed0 <_vfprintf_r+0x1708>
   11894:	00013b03          	ld	s6,0(sp)
   11898:	01000d13          	li	s10,16
   1189c:	00700a93          	li	s5,7
   118a0:	00c0006f          	j	118ac <_vfprintf_r+0x10e4>
   118a4:	ff0c8c9b          	addiw	s9,s9,-16
   118a8:	639d5463          	bge	s10,s9,11ed0 <_vfprintf_r+0x1708>
   118ac:	0017879b          	addiw	a5,a5,1
   118b0:	01070713          	addi	a4,a4,16
   118b4:	01b43023          	sd	s11,0(s0)
   118b8:	01a43423          	sd	s10,8(s0)
   118bc:	10e13823          	sd	a4,272(sp)
   118c0:	10f12423          	sw	a5,264(sp)
   118c4:	01040413          	addi	s0,s0,16
   118c8:	fcfadee3          	bge	s5,a5,118a4 <_vfprintf_r+0x10dc>
   118cc:	10010613          	addi	a2,sp,256
   118d0:	000b0593          	mv	a1,s6
   118d4:	00098513          	mv	a0,s3
   118d8:	781090ef          	jal	ra,1b858 <__sprint_r>
   118dc:	c6051ee3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   118e0:	11013703          	ld	a4,272(sp)
   118e4:	10812783          	lw	a5,264(sp)
   118e8:	18010413          	addi	s0,sp,384
   118ec:	fb9ff06f          	j	118a4 <_vfprintf_r+0x10dc>
   118f0:	00197613          	andi	a2,s2,1
   118f4:	c4061663          	bnez	a2,10d40 <_vfprintf_r+0x578>
   118f8:	10812603          	lw	a2,264(sp)
   118fc:	001d8d13          	addi	s10,s11,1
   11900:	01643023          	sd	s6,0(s0)
   11904:	0016079b          	addiw	a5,a2,1
   11908:	00d43423          	sd	a3,8(s0)
   1190c:	10f12423          	sw	a5,264(sp)
   11910:	0007841b          	sext.w	s0,a5
   11914:	11a13823          	sd	s10,272(sp)
   11918:	00700793          	li	a5,7
   1191c:	cc87d263          	bge	a5,s0,10de0 <_vfprintf_r+0x618>
   11920:	00013583          	ld	a1,0(sp)
   11924:	10010613          	addi	a2,sp,256
   11928:	00098513          	mv	a0,s3
   1192c:	72d090ef          	jal	ra,1b858 <__sprint_r>
   11930:	c20514e3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   11934:	11013d03          	ld	s10,272(sp)
   11938:	10812403          	lw	s0,264(sp)
   1193c:	18010c93          	addi	s9,sp,384
   11940:	ca0ff06f          	j	10de0 <_vfprintf_r+0x618>
   11944:	03813703          	ld	a4,56(sp)
   11948:	00100793          	li	a5,1
   1194c:	c8e7da63          	bge	a5,a4,10de0 <_vfprintf_r+0x618>
   11950:	00022f37          	lui	t5,0x22
   11954:	01100793          	li	a5,17
   11958:	1d0f0d93          	addi	s11,t5,464 # 221d0 <zeroes.0>
   1195c:	66e7d463          	bge	a5,a4,11fc4 <_vfprintf_r+0x17fc>
   11960:	00013b83          	ld	s7,0(sp)
   11964:	01000713          	li	a4,16
   11968:	00700b13          	li	s6,7
   1196c:	00c0006f          	j	11978 <_vfprintf_r+0x11b0>
   11970:	ff0a8a9b          	addiw	s5,s5,-16
   11974:	65575863          	bge	a4,s5,11fc4 <_vfprintf_r+0x17fc>
   11978:	0014041b          	addiw	s0,s0,1
   1197c:	010d0d13          	addi	s10,s10,16
   11980:	01bcb023          	sd	s11,0(s9)
   11984:	00ecb423          	sd	a4,8(s9)
   11988:	11a13823          	sd	s10,272(sp)
   1198c:	10812423          	sw	s0,264(sp)
   11990:	010c8c93          	addi	s9,s9,16
   11994:	fc8b5ee3          	bge	s6,s0,11970 <_vfprintf_r+0x11a8>
   11998:	10010613          	addi	a2,sp,256
   1199c:	000b8593          	mv	a1,s7
   119a0:	00098513          	mv	a0,s3
   119a4:	6b5090ef          	jal	ra,1b858 <__sprint_r>
   119a8:	ba0518e3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   119ac:	11013d03          	ld	s10,272(sp)
   119b0:	10812403          	lw	s0,264(sp)
   119b4:	18010c93          	addi	s9,sp,384
   119b8:	01000713          	li	a4,16
   119bc:	fb5ff06f          	j	11970 <_vfprintf_r+0x11a8>
   119c0:	00013583          	ld	a1,0(sp)
   119c4:	10010613          	addi	a2,sp,256
   119c8:	00098513          	mv	a0,s3
   119cc:	68d090ef          	jal	ra,1b858 <__sprint_r>
   119d0:	b80514e3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   119d4:	11013d83          	ld	s11,272(sp)
   119d8:	18010413          	addi	s0,sp,384
   119dc:	8d0ff06f          	j	10aac <_vfprintf_r+0x2e4>
   119e0:	01097793          	andi	a5,s2,16
   119e4:	12079c63          	bnez	a5,11b1c <_vfprintf_r+0x1354>
   119e8:	02013683          	ld	a3,32(sp)
   119ec:	04097793          	andi	a5,s2,64
   119f0:	0006ad03          	lw	s10,0(a3)
   119f4:	5e078c63          	beqz	a5,11fec <_vfprintf_r+0x1824>
   119f8:	010d1d1b          	slliw	s10,s10,0x10
   119fc:	410d5d1b          	sraiw	s10,s10,0x10
   11a00:	000d0793          	mv	a5,s10
   11a04:	ea07da63          	bgez	a5,110b8 <_vfprintf_r+0x8f0>
   11a08:	02e13023          	sd	a4,32(sp)
   11a0c:	41a00d33          	neg	s10,s10
   11a10:	00090d93          	mv	s11,s2
   11a14:	02d00713          	li	a4,45
   11a18:	00100793          	li	a5,1
   11a1c:	e0cff06f          	j	11028 <_vfprintf_r+0x860>
   11a20:	01097793          	andi	a5,s2,16
   11a24:	0e079663          	bnez	a5,11b10 <_vfprintf_r+0x1348>
   11a28:	02013683          	ld	a3,32(sp)
   11a2c:	04097793          	andi	a5,s2,64
   11a30:	0006ad03          	lw	s10,0(a3)
   11a34:	5e078c63          	beqz	a5,1202c <_vfprintf_r+0x1864>
   11a38:	030d1d13          	slli	s10,s10,0x30
   11a3c:	030d5d13          	srli	s10,s10,0x30
   11a40:	ec0ff06f          	j	11100 <_vfprintf_r+0x938>
   11a44:	010df793          	andi	a5,s11,16
   11a48:	0a079a63          	bnez	a5,11afc <_vfprintf_r+0x1334>
   11a4c:	02013683          	ld	a3,32(sp)
   11a50:	040df793          	andi	a5,s11,64
   11a54:	0006ad03          	lw	s10,0(a3)
   11a58:	5a078e63          	beqz	a5,12014 <_vfprintf_r+0x184c>
   11a5c:	030d1d13          	slli	s10,s10,0x30
   11a60:	030d5d13          	srli	s10,s10,0x30
   11a64:	02e13023          	sd	a4,32(sp)
   11a68:	00100793          	li	a5,1
   11a6c:	db8ff06f          	j	11024 <_vfprintf_r+0x85c>
   11a70:	00000d13          	li	s10,0
   11a74:	17c10b13          	addi	s6,sp,380
   11a78:	ddcff06f          	j	11054 <_vfprintf_r+0x88c>
   11a7c:	00197793          	andi	a5,s2,1
   11a80:	000d8713          	mv	a4,s11
   11a84:	00079463          	bnez	a5,11a8c <_vfprintf_r+0x12c4>
   11a88:	854ff06f          	j	10adc <_vfprintf_r+0x314>
   11a8c:	f98ff06f          	j	11224 <_vfprintf_r+0xa5c>
   11a90:	000a8313          	mv	t1,s5
   11a94:	e08ff06f          	j	1109c <_vfprintf_r+0x8d4>
   11a98:	0004ce03          	lbu	t3,0(s1)
   11a9c:	02f13023          	sd	a5,32(sp)
   11aa0:	ed5fe06f          	j	10974 <_vfprintf_r+0x1ac>
   11aa4:	03000793          	li	a5,48
   11aa8:	16f10da3          	sb	a5,379(sp)
   11aac:	17b10b13          	addi	s6,sp,379
   11ab0:	da4ff06f          	j	11054 <_vfprintf_r+0x88c>
   11ab4:	01097793          	andi	a5,s2,16
   11ab8:	e6079e63          	bnez	a5,11134 <_vfprintf_r+0x96c>
   11abc:	04097793          	andi	a5,s2,64
   11ac0:	240796e3          	bnez	a5,1250c <_vfprintf_r+0x1d44>
   11ac4:	20097913          	andi	s2,s2,512
   11ac8:	01013783          	ld	a5,16(sp)
   11acc:	00091463          	bnez	s2,11ad4 <_vfprintf_r+0x130c>
   11ad0:	1d40106f          	j	12ca4 <_vfprintf_r+0x24dc>
   11ad4:	00f70023          	sb	a5,0(a4)
   11ad8:	e64ff06f          	j	1113c <_vfprintf_r+0x974>
   11adc:	02013783          	ld	a5,32(sp)
   11ae0:	00f78a93          	addi	s5,a5,15
   11ae4:	ff0afa93          	andi	s5,s5,-16
   11ae8:	010a8793          	addi	a5,s5,16
   11aec:	000ab703          	ld	a4,0(s5)
   11af0:	008ab583          	ld	a1,8(s5)
   11af4:	02f13023          	sd	a5,32(sp)
   11af8:	950ff06f          	j	10c48 <_vfprintf_r+0x480>
   11afc:	02013783          	ld	a5,32(sp)
   11b00:	02e13023          	sd	a4,32(sp)
   11b04:	0007bd03          	ld	s10,0(a5)
   11b08:	00100793          	li	a5,1
   11b0c:	d18ff06f          	j	11024 <_vfprintf_r+0x85c>
   11b10:	02013783          	ld	a5,32(sp)
   11b14:	0007bd03          	ld	s10,0(a5)
   11b18:	de8ff06f          	j	11100 <_vfprintf_r+0x938>
   11b1c:	02013783          	ld	a5,32(sp)
   11b20:	0007b783          	ld	a5,0(a5)
   11b24:	00078d13          	mv	s10,a5
   11b28:	d8cff06f          	j	110b4 <_vfprintf_r+0x8ec>
   11b2c:	00078693          	mv	a3,a5
   11b30:	00068c9b          	sext.w	s9,a3
   11b34:	c5904ae3          	bgtz	s9,11788 <_vfprintf_r+0xfc0>
   11b38:	c79ff06f          	j	117b0 <_vfprintf_r+0xfe8>
   11b3c:	00013583          	ld	a1,0(sp)
   11b40:	10010613          	addi	a2,sp,256
   11b44:	00098513          	mv	a0,s3
   11b48:	08613823          	sd	t1,144(sp)
   11b4c:	50d090ef          	jal	ra,1b858 <__sprint_r>
   11b50:	a00514e3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   11b54:	11013d83          	ld	s11,272(sp)
   11b58:	09013303          	ld	t1,144(sp)
   11b5c:	18010413          	addi	s0,sp,384
   11b60:	f45fe06f          	j	10aa4 <_vfprintf_r+0x2dc>
   11b64:	000227b7          	lui	a5,0x22
   11b68:	f9078793          	addi	a5,a5,-112 # 21f90 <__clzdi2+0x7c>
   11b6c:	000a8313          	mv	t1,s5
   11b70:	06f13423          	sd	a5,104(sp)
   11b74:	02013683          	ld	a3,32(sp)
   11b78:	02097793          	andi	a5,s2,32
   11b7c:	00868713          	addi	a4,a3,8
   11b80:	14078463          	beqz	a5,11cc8 <_vfprintf_r+0x1500>
   11b84:	0006bd03          	ld	s10,0(a3)
   11b88:	00197793          	andi	a5,s2,1
   11b8c:	00078e63          	beqz	a5,11ba8 <_vfprintf_r+0x13e0>
   11b90:	000d0c63          	beqz	s10,11ba8 <_vfprintf_r+0x13e0>
   11b94:	00296913          	ori	s2,s2,2
   11b98:	03000793          	li	a5,48
   11b9c:	0cf10823          	sb	a5,208(sp)
   11ba0:	0d9108a3          	sb	s9,209(sp)
   11ba4:	0009091b          	sext.w	s2,s2
   11ba8:	bff97d93          	andi	s11,s2,-1025
   11bac:	000d8d9b          	sext.w	s11,s11
   11bb0:	02e13023          	sd	a4,32(sp)
   11bb4:	00200793          	li	a5,2
   11bb8:	c6cff06f          	j	11024 <_vfprintf_r+0x85c>
   11bbc:	000a8313          	mv	t1,s5
   11bc0:	00090d93          	mv	s11,s2
   11bc4:	c44ff06f          	j	11008 <_vfprintf_r+0x840>
   11bc8:	20096913          	ori	s2,s2,512
   11bcc:	0014ce03          	lbu	t3,1(s1)
   11bd0:	0009091b          	sext.w	s2,s2
   11bd4:	00148493          	addi	s1,s1,1
   11bd8:	d9dfe06f          	j	10974 <_vfprintf_r+0x1ac>
   11bdc:	02096913          	ori	s2,s2,32
   11be0:	0014ce03          	lbu	t3,1(s1)
   11be4:	0009091b          	sext.w	s2,s2
   11be8:	00148493          	addi	s1,s1,1
   11bec:	d89fe06f          	j	10974 <_vfprintf_r+0x1ac>
   11bf0:	000a8313          	mv	t1,s5
   11bf4:	cf8ff06f          	j	110ec <_vfprintf_r+0x924>
   11bf8:	000227b7          	lui	a5,0x22
   11bfc:	fa878793          	addi	a5,a5,-88 # 21fa8 <__clzdi2+0x94>
   11c00:	000a8313          	mv	t1,s5
   11c04:	06f13423          	sd	a5,104(sp)
   11c08:	f6dff06f          	j	11b74 <_vfprintf_r+0x13ac>
   11c0c:	00013583          	ld	a1,0(sp)
   11c10:	10010613          	addi	a2,sp,256
   11c14:	00098513          	mv	a0,s3
   11c18:	441090ef          	jal	ra,1b858 <__sprint_r>
   11c1c:	92051ee3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   11c20:	11013703          	ld	a4,272(sp)
   11c24:	18010413          	addi	s0,sp,384
   11c28:	e30ff06f          	j	11258 <_vfprintf_r+0xa90>
   11c2c:	00600793          	li	a5,6
   11c30:	00030693          	mv	a3,t1
   11c34:	0a67e2e3          	bltu	a5,t1,124d8 <_vfprintf_r+0x1d10>
   11c38:	00068d1b          	sext.w	s10,a3
   11c3c:	000227b7          	lui	a5,0x22
   11c40:	000d0c13          	mv	s8,s10
   11c44:	03513023          	sd	s5,32(sp)
   11c48:	fc078b13          	addi	s6,a5,-64 # 21fc0 <__clzdi2+0xac>
   11c4c:	da9fe06f          	j	109f4 <_vfprintf_r+0x22c>
   11c50:	00022f37          	lui	t5,0x22
   11c54:	01000593          	li	a1,16
   11c58:	000d8713          	mv	a4,s11
   11c5c:	10812603          	lw	a2,264(sp)
   11c60:	1d0f0d93          	addi	s11,t5,464 # 221d0 <zeroes.0>
   11c64:	3f95dc63          	bge	a1,s9,1205c <_vfprintf_r+0x1894>
   11c68:	00013b83          	ld	s7,0(sp)
   11c6c:	01000893          	li	a7,16
   11c70:	00700d13          	li	s10,7
   11c74:	00c0006f          	j	11c80 <_vfprintf_r+0x14b8>
   11c78:	ff0c8c9b          	addiw	s9,s9,-16
   11c7c:	3f98d063          	bge	a7,s9,1205c <_vfprintf_r+0x1894>
   11c80:	0016061b          	addiw	a2,a2,1
   11c84:	01070713          	addi	a4,a4,16
   11c88:	01b43023          	sd	s11,0(s0)
   11c8c:	01143423          	sd	a7,8(s0)
   11c90:	10e13823          	sd	a4,272(sp)
   11c94:	10c12423          	sw	a2,264(sp)
   11c98:	01040413          	addi	s0,s0,16
   11c9c:	fccd5ee3          	bge	s10,a2,11c78 <_vfprintf_r+0x14b0>
   11ca0:	10010613          	addi	a2,sp,256
   11ca4:	000b8593          	mv	a1,s7
   11ca8:	00098513          	mv	a0,s3
   11cac:	3ad090ef          	jal	ra,1b858 <__sprint_r>
   11cb0:	8a0514e3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   11cb4:	11013703          	ld	a4,272(sp)
   11cb8:	10812603          	lw	a2,264(sp)
   11cbc:	18010413          	addi	s0,sp,384
   11cc0:	01000893          	li	a7,16
   11cc4:	fb5ff06f          	j	11c78 <_vfprintf_r+0x14b0>
   11cc8:	01097793          	andi	a5,s2,16
   11ccc:	1c078463          	beqz	a5,11e94 <_vfprintf_r+0x16cc>
   11cd0:	02013783          	ld	a5,32(sp)
   11cd4:	0007bd03          	ld	s10,0(a5)
   11cd8:	eb1ff06f          	j	11b88 <_vfprintf_r+0x13c0>
   11cdc:	00013583          	ld	a1,0(sp)
   11ce0:	10010613          	addi	a2,sp,256
   11ce4:	00098513          	mv	a0,s3
   11ce8:	371090ef          	jal	ra,1b858 <__sprint_r>
   11cec:	860516e3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   11cf0:	11013703          	ld	a4,272(sp)
   11cf4:	10812683          	lw	a3,264(sp)
   11cf8:	18010c93          	addi	s9,sp,384
   11cfc:	870ff06f          	j	10d6c <_vfprintf_r+0x5a4>
   11d00:	00013583          	ld	a1,0(sp)
   11d04:	10010613          	addi	a2,sp,256
   11d08:	00098513          	mv	a0,s3
   11d0c:	34d090ef          	jal	ra,1b858 <__sprint_r>
   11d10:	840514e3          	bnez	a0,11558 <_vfprintf_r+0xd90>
   11d14:	11013d03          	ld	s10,272(sp)
   11d18:	10812403          	lw	s0,264(sp)
   11d1c:	18010c93          	addi	s9,sp,384
   11d20:	878ff06f          	j	10d98 <_vfprintf_r+0x5d0>
   11d24:	17c10a93          	addi	s5,sp,380
   11d28:	00913c23          	sd	s1,24(sp)
   11d2c:	07813483          	ld	s1,120(sp)
   11d30:	400df913          	andi	s2,s11,1024
   11d34:	000a8b13          	mv	s6,s5
   11d38:	00000793          	li	a5,0
   11d3c:	04813023          	sd	s0,64(sp)
   11d40:	00098a93          	mv	s5,s3
   11d44:	00090413          	mv	s0,s2
   11d48:	00900b93          	li	s7,9
   11d4c:	0ff00c13          	li	s8,255
   11d50:	02613823          	sd	t1,48(sp)
   11d54:	00078913          	mv	s2,a5
   11d58:	000b0993          	mv	s3,s6
   11d5c:	00a00593          	li	a1,10
   11d60:	000d0513          	mv	a0,s10
   11d64:	f40fe0ef          	jal	ra,104a4 <__umoddi3>
   11d68:	0305051b          	addiw	a0,a0,48
   11d6c:	fea98fa3          	sb	a0,-1(s3)
   11d70:	0019091b          	addiw	s2,s2,1
   11d74:	fff98993          	addi	s3,s3,-1
   11d78:	00040663          	beqz	s0,11d84 <_vfprintf_r+0x15bc>
   11d7c:	0004c703          	lbu	a4,0(s1)
   11d80:	04e90663          	beq	s2,a4,11dcc <_vfprintf_r+0x1604>
   11d84:	00a00593          	li	a1,10
   11d88:	000d0513          	mv	a0,s10
   11d8c:	ed0fe0ef          	jal	ra,1045c <__hidden___udivdi3>
   11d90:	01abf663          	bgeu	s7,s10,11d9c <_vfprintf_r+0x15d4>
   11d94:	00050d13          	mv	s10,a0
   11d98:	fc5ff06f          	j	11d5c <_vfprintf_r+0x1594>
   11d9c:	000b0793          	mv	a5,s6
   11da0:	00098b13          	mv	s6,s3
   11da4:	000a8993          	mv	s3,s5
   11da8:	00078a93          	mv	s5,a5
   11dac:	03213c23          	sd	s2,56(sp)
   11db0:	06913c23          	sd	s1,120(sp)
   11db4:	03013303          	ld	t1,48(sp)
   11db8:	01813483          	ld	s1,24(sp)
   11dbc:	04013403          	ld	s0,64(sp)
   11dc0:	416a8d3b          	subw	s10,s5,s6
   11dc4:	000d8913          	mv	s2,s11
   11dc8:	a8cff06f          	j	11054 <_vfprintf_r+0x88c>
   11dcc:	fb870ce3          	beq	a4,s8,11d84 <_vfprintf_r+0x15bc>
   11dd0:	fdabf6e3          	bgeu	s7,s10,11d9c <_vfprintf_r+0x15d4>
   11dd4:	08013783          	ld	a5,128(sp)
   11dd8:	08813583          	ld	a1,136(sp)
   11ddc:	00000913          	li	s2,0
   11de0:	40f989b3          	sub	s3,s3,a5
   11de4:	00078613          	mv	a2,a5
   11de8:	00098513          	mv	a0,s3
   11dec:	300070ef          	jal	ra,190ec <strncpy>
   11df0:	0014c703          	lbu	a4,1(s1)
   11df4:	000d0513          	mv	a0,s10
   11df8:	00a00593          	li	a1,10
   11dfc:	00e03733          	snez	a4,a4
   11e00:	00e484b3          	add	s1,s1,a4
   11e04:	e58fe0ef          	jal	ra,1045c <__hidden___udivdi3>
   11e08:	00050d13          	mv	s10,a0
   11e0c:	f51ff06f          	j	11d5c <_vfprintf_r+0x1594>
   11e10:	10812683          	lw	a3,264(sp)
   11e14:	000225b7          	lui	a1,0x22
   11e18:	fc858593          	addi	a1,a1,-56 # 21fc8 <__clzdi2+0xb4>
   11e1c:	0016869b          	addiw	a3,a3,1
   11e20:	00b43023          	sd	a1,0(s0)
   11e24:	001d8713          	addi	a4,s11,1
   11e28:	00100593          	li	a1,1
   11e2c:	00b43423          	sd	a1,8(s0)
   11e30:	10d12423          	sw	a3,264(sp)
   11e34:	0006859b          	sext.w	a1,a3
   11e38:	10e13823          	sd	a4,272(sp)
   11e3c:	00700693          	li	a3,7
   11e40:	01040413          	addi	s0,s0,16
   11e44:	44b6ce63          	blt	a3,a1,122a0 <_vfprintf_r+0x1ad8>
   11e48:	10061663          	bnez	a2,11f54 <_vfprintf_r+0x178c>
   11e4c:	03813783          	ld	a5,56(sp)
   11e50:	00197693          	andi	a3,s2,1
   11e54:	00d7e6b3          	or	a3,a5,a3
   11e58:	00069463          	bnez	a3,11e60 <_vfprintf_r+0x1698>
   11e5c:	c81fe06f          	j	10adc <_vfprintf_r+0x314>
   11e60:	10812603          	lw	a2,264(sp)
   11e64:	05813783          	ld	a5,88(sp)
   11e68:	06013683          	ld	a3,96(sp)
   11e6c:	00e78733          	add	a4,a5,a4
   11e70:	00d43023          	sd	a3,0(s0)
   11e74:	0016069b          	addiw	a3,a2,1
   11e78:	00f43423          	sd	a5,8(s0)
   11e7c:	10e13823          	sd	a4,272(sp)
   11e80:	10d12423          	sw	a3,264(sp)
   11e84:	00700613          	li	a2,7
   11e88:	6cd64e63          	blt	a2,a3,12564 <_vfprintf_r+0x1d9c>
   11e8c:	01040413          	addi	s0,s0,16
   11e90:	0f80006f          	j	11f88 <_vfprintf_r+0x17c0>
   11e94:	02013683          	ld	a3,32(sp)
   11e98:	04097793          	andi	a5,s2,64
   11e9c:	0006ad03          	lw	s10,0(a3)
   11ea0:	16078263          	beqz	a5,12004 <_vfprintf_r+0x183c>
   11ea4:	030d1d13          	slli	s10,s10,0x30
   11ea8:	030d5d13          	srli	s10,s10,0x30
   11eac:	cddff06f          	j	11b88 <_vfprintf_r+0x13c0>
   11eb0:	00013583          	ld	a1,0(sp)
   11eb4:	10010613          	addi	a2,sp,256
   11eb8:	00098513          	mv	a0,s3
   11ebc:	19d090ef          	jal	ra,1b858 <__sprint_r>
   11ec0:	e8051c63          	bnez	a0,11558 <_vfprintf_r+0xd90>
   11ec4:	11013d83          	ld	s11,272(sp)
   11ec8:	18010413          	addi	s0,sp,384
   11ecc:	b4cff06f          	j	11218 <_vfprintf_r+0xa50>
   11ed0:	0017869b          	addiw	a3,a5,1
   11ed4:	01b43023          	sd	s11,0(s0)
   11ed8:	01943423          	sd	s9,8(s0)
   11edc:	01970733          	add	a4,a4,s9
   11ee0:	10e13823          	sd	a4,272(sp)
   11ee4:	10d12423          	sw	a3,264(sp)
   11ee8:	00700793          	li	a5,7
   11eec:	00d7c463          	blt	a5,a3,11ef4 <_vfprintf_r+0x172c>
   11ef0:	be9fe06f          	j	10ad8 <_vfprintf_r+0x310>
   11ef4:	f1dfe06f          	j	10e10 <_vfprintf_r+0x648>
   11ef8:	0f013503          	ld	a0,240(sp)
   11efc:	0f813583          	ld	a1,248(sp)
   11f00:	00000613          	li	a2,0
   11f04:	00000693          	li	a3,0
   11f08:	33d0e0ef          	jal	ra,20a44 <__letf2>
   11f0c:	260548e3          	bltz	a0,1297c <_vfprintf_r+0x21b4>
   11f10:	0cf14703          	lbu	a4,207(sp)
   11f14:	04700793          	li	a5,71
   11f18:	3b97d663          	bge	a5,s9,122c4 <_vfprintf_r+0x1afc>
   11f1c:	000227b7          	lui	a5,0x22
   11f20:	f7878b13          	addi	s6,a5,-136 # 21f78 <__clzdi2+0x64>
   11f24:	f7f97913          	andi	s2,s2,-129
   11f28:	00013c23          	sd	zero,24(sp)
   11f2c:	04013423          	sd	zero,72(sp)
   11f30:	04013023          	sd	zero,64(sp)
   11f34:	02013823          	sd	zero,48(sp)
   11f38:	0009091b          	sext.w	s2,s2
   11f3c:	00300c13          	li	s8,3
   11f40:	00300d13          	li	s10,3
   11f44:	00000313          	li	t1,0
   11f48:	00070463          	beqz	a4,11f50 <_vfprintf_r+0x1788>
   11f4c:	f95fe06f          	j	10ee0 <_vfprintf_r+0x718>
   11f50:	ab9fe06f          	j	10a08 <_vfprintf_r+0x240>
   11f54:	10812583          	lw	a1,264(sp)
   11f58:	05813783          	ld	a5,88(sp)
   11f5c:	06013683          	ld	a3,96(sp)
   11f60:	01040413          	addi	s0,s0,16
   11f64:	00e78733          	add	a4,a5,a4
   11f68:	fed43823          	sd	a3,-16(s0)
   11f6c:	0015869b          	addiw	a3,a1,1
   11f70:	fef43c23          	sd	a5,-8(s0)
   11f74:	10e13823          	sd	a4,272(sp)
   11f78:	10d12423          	sw	a3,264(sp)
   11f7c:	00700593          	li	a1,7
   11f80:	5ed5c263          	blt	a1,a3,12564 <_vfprintf_r+0x1d9c>
   11f84:	2c0642e3          	bltz	a2,12a48 <_vfprintf_r+0x2280>
   11f88:	03813783          	ld	a5,56(sp)
   11f8c:	0016861b          	addiw	a2,a3,1
   11f90:	01643023          	sd	s6,0(s0)
   11f94:	00e78733          	add	a4,a5,a4
   11f98:	00f43423          	sd	a5,8(s0)
   11f9c:	10e13823          	sd	a4,272(sp)
   11fa0:	10c12423          	sw	a2,264(sp)
   11fa4:	00700793          	li	a5,7
   11fa8:	00c7c463          	blt	a5,a2,11fb0 <_vfprintf_r+0x17e8>
   11fac:	b2dfe06f          	j	10ad8 <_vfprintf_r+0x310>
   11fb0:	e61fe06f          	j	10e10 <_vfprintf_r+0x648>
   11fb4:	000b0513          	mv	a0,s6
   11fb8:	06c070ef          	jal	ra,19024 <strlen>
   11fbc:	00050d1b          	sext.w	s10,a0
   11fc0:	ef5fe06f          	j	10eb4 <_vfprintf_r+0x6ec>
   11fc4:	0014041b          	addiw	s0,s0,1
   11fc8:	015d0d33          	add	s10,s10,s5
   11fcc:	01bcb023          	sd	s11,0(s9)
   11fd0:	015cb423          	sd	s5,8(s9)
   11fd4:	11a13823          	sd	s10,272(sp)
   11fd8:	10812423          	sw	s0,264(sp)
   11fdc:	00700793          	li	a5,7
   11fe0:	0087c463          	blt	a5,s0,11fe8 <_vfprintf_r+0x1820>
   11fe4:	df9fe06f          	j	10ddc <_vfprintf_r+0x614>
   11fe8:	939ff06f          	j	11920 <_vfprintf_r+0x1158>
   11fec:	20097793          	andi	a5,s2,512
   11ff0:	52078a63          	beqz	a5,12524 <_vfprintf_r+0x1d5c>
   11ff4:	018d1d1b          	slliw	s10,s10,0x18
   11ff8:	418d5d1b          	sraiw	s10,s10,0x18
   11ffc:	000d0793          	mv	a5,s10
   12000:	8b4ff06f          	j	110b4 <_vfprintf_r+0x8ec>
   12004:	20097793          	andi	a5,s2,512
   12008:	50078863          	beqz	a5,12518 <_vfprintf_r+0x1d50>
   1200c:	0ffd7d13          	zext.b	s10,s10
   12010:	b79ff06f          	j	11b88 <_vfprintf_r+0x13c0>
   12014:	200df793          	andi	a5,s11,512
   12018:	50078a63          	beqz	a5,1252c <_vfprintf_r+0x1d64>
   1201c:	0ffd7d13          	zext.b	s10,s10
   12020:	02e13023          	sd	a4,32(sp)
   12024:	00100793          	li	a5,1
   12028:	ffdfe06f          	j	11024 <_vfprintf_r+0x85c>
   1202c:	20097793          	andi	a5,s2,512
   12030:	4c078863          	beqz	a5,12500 <_vfprintf_r+0x1d38>
   12034:	0ffd7d13          	zext.b	s10,s10
   12038:	8c8ff06f          	j	11100 <_vfprintf_r+0x938>
   1203c:	0f813783          	ld	a5,248(sp)
   12040:	5007c063          	bltz	a5,12540 <_vfprintf_r+0x1d78>
   12044:	0cf14703          	lbu	a4,207(sp)
   12048:	04700793          	li	a5,71
   1204c:	1f97d4e3          	bge	a5,s9,12a34 <_vfprintf_r+0x226c>
   12050:	000227b7          	lui	a5,0x22
   12054:	f8878b13          	addi	s6,a5,-120 # 21f88 <__clzdi2+0x74>
   12058:	ecdff06f          	j	11f24 <_vfprintf_r+0x175c>
   1205c:	0016059b          	addiw	a1,a2,1
   12060:	00ec8733          	add	a4,s9,a4
   12064:	01b43023          	sd	s11,0(s0)
   12068:	01943423          	sd	s9,8(s0)
   1206c:	10e13823          	sd	a4,272(sp)
   12070:	10b12423          	sw	a1,264(sp)
   12074:	00700693          	li	a3,7
   12078:	72b6c863          	blt	a3,a1,127a8 <_vfprintf_r+0x1fe0>
   1207c:	01040413          	addi	s0,s0,16
   12080:	00070d93          	mv	s11,a4
   12084:	f44ff06f          	j	117c8 <_vfprintf_r+0x1000>
   12088:	04013c83          	ld	s9,64(sp)
   1208c:	00022e37          	lui	t3,0x22
   12090:	08913823          	sd	s1,144(sp)
   12094:	09213c23          	sd	s2,152(sp)
   12098:	0b413023          	sd	s4,160(sp)
   1209c:	05813023          	sd	s8,64(sp)
   120a0:	000b0a13          	mv	s4,s6
   120a4:	07813903          	ld	s2,120(sp)
   120a8:	08813483          	ld	s1,136(sp)
   120ac:	08013b03          	ld	s6,128(sp)
   120b0:	04813c03          	ld	s8,72(sp)
   120b4:	00013b83          	ld	s7,0(sp)
   120b8:	00700313          	li	t1,7
   120bc:	01000893          	li	a7,16
   120c0:	1d0e0d13          	addi	s10,t3,464 # 221d0 <zeroes.0>
   120c4:	000d8713          	mv	a4,s11
   120c8:	080c8c63          	beqz	s9,12160 <_vfprintf_r+0x1998>
   120cc:	160c0863          	beqz	s8,1223c <_vfprintf_r+0x1a74>
   120d0:	fffc0c1b          	addiw	s8,s8,-1
   120d4:	10812783          	lw	a5,264(sp)
   120d8:	01670733          	add	a4,a4,s6
   120dc:	00943023          	sd	s1,0(s0)
   120e0:	0017869b          	addiw	a3,a5,1
   120e4:	01643423          	sd	s6,8(s0)
   120e8:	10e13823          	sd	a4,272(sp)
   120ec:	10d12423          	sw	a3,264(sp)
   120f0:	01040413          	addi	s0,s0,16
   120f4:	14d34a63          	blt	t1,a3,12248 <_vfprintf_r+0x1a80>
   120f8:	00094683          	lbu	a3,0(s2)
   120fc:	414a8db3          	sub	s11,s5,s4
   12100:	000d879b          	sext.w	a5,s11
   12104:	0006861b          	sext.w	a2,a3
   12108:	00f6d463          	bge	a3,a5,12110 <_vfprintf_r+0x1948>
   1210c:	00060d93          	mv	s11,a2
   12110:	000d8d9b          	sext.w	s11,s11
   12114:	03b05863          	blez	s11,12144 <_vfprintf_r+0x197c>
   12118:	10812783          	lw	a5,264(sp)
   1211c:	01b70733          	add	a4,a4,s11
   12120:	01443023          	sd	s4,0(s0)
   12124:	0017869b          	addiw	a3,a5,1
   12128:	01b43423          	sd	s11,8(s0)
   1212c:	10e13823          	sd	a4,272(sp)
   12130:	10d12423          	sw	a3,264(sp)
   12134:	12d34e63          	blt	t1,a3,12270 <_vfprintf_r+0x1aa8>
   12138:	00094683          	lbu	a3,0(s2)
   1213c:	01040413          	addi	s0,s0,16
   12140:	0006861b          	sext.w	a2,a3
   12144:	fffdc793          	not	a5,s11
   12148:	43f7d793          	srai	a5,a5,0x3f
   1214c:	00fdf7b3          	and	a5,s11,a5
   12150:	40f60dbb          	subw	s11,a2,a5
   12154:	03b04c63          	bgtz	s11,1218c <_vfprintf_r+0x19c4>
   12158:	00da0a33          	add	s4,s4,a3
   1215c:	f60c98e3          	bnez	s9,120cc <_vfprintf_r+0x1904>
   12160:	f60c18e3          	bnez	s8,120d0 <_vfprintf_r+0x1908>
   12164:	07213c23          	sd	s2,120(sp)
   12168:	000a0b13          	mv	s6,s4
   1216c:	09013483          	ld	s1,144(sp)
   12170:	09813903          	ld	s2,152(sp)
   12174:	0a013a03          	ld	s4,160(sp)
   12178:	04013c03          	ld	s8,64(sp)
   1217c:	00070d93          	mv	s11,a4
   12180:	e56afc63          	bgeu	s5,s6,117d8 <_vfprintf_r+0x1010>
   12184:	000a8b13          	mv	s6,s5
   12188:	e50ff06f          	j	117d8 <_vfprintf_r+0x1010>
   1218c:	00022637          	lui	a2,0x22
   12190:	10812783          	lw	a5,264(sp)
   12194:	1d060613          	addi	a2,a2,464 # 221d0 <zeroes.0>
   12198:	07b8dc63          	bge	a7,s11,12210 <_vfprintf_r+0x1a48>
   1219c:	02913823          	sd	s1,48(sp)
   121a0:	000d8493          	mv	s1,s11
   121a4:	000d0d93          	mv	s11,s10
   121a8:	00c0006f          	j	121b4 <_vfprintf_r+0x19ec>
   121ac:	ff04849b          	addiw	s1,s1,-16
   121b0:	0498da63          	bge	a7,s1,12204 <_vfprintf_r+0x1a3c>
   121b4:	0017879b          	addiw	a5,a5,1
   121b8:	01070713          	addi	a4,a4,16
   121bc:	01a43023          	sd	s10,0(s0)
   121c0:	01143423          	sd	a7,8(s0)
   121c4:	10e13823          	sd	a4,272(sp)
   121c8:	10f12423          	sw	a5,264(sp)
   121cc:	01040413          	addi	s0,s0,16
   121d0:	fcf35ee3          	bge	t1,a5,121ac <_vfprintf_r+0x19e4>
   121d4:	10010613          	addi	a2,sp,256
   121d8:	000b8593          	mv	a1,s7
   121dc:	00098513          	mv	a0,s3
   121e0:	678090ef          	jal	ra,1b858 <__sprint_r>
   121e4:	b6051a63          	bnez	a0,11558 <_vfprintf_r+0xd90>
   121e8:	01000893          	li	a7,16
   121ec:	ff04849b          	addiw	s1,s1,-16
   121f0:	11013703          	ld	a4,272(sp)
   121f4:	10812783          	lw	a5,264(sp)
   121f8:	18010413          	addi	s0,sp,384
   121fc:	00700313          	li	t1,7
   12200:	fa98cae3          	blt	a7,s1,121b4 <_vfprintf_r+0x19ec>
   12204:	000d8613          	mv	a2,s11
   12208:	00048d93          	mv	s11,s1
   1220c:	03013483          	ld	s1,48(sp)
   12210:	0017869b          	addiw	a3,a5,1
   12214:	00ed8733          	add	a4,s11,a4
   12218:	00c43023          	sd	a2,0(s0)
   1221c:	01b43423          	sd	s11,8(s0)
   12220:	10e13823          	sd	a4,272(sp)
   12224:	10d12423          	sw	a3,264(sp)
   12228:	6ed34863          	blt	t1,a3,12918 <_vfprintf_r+0x2150>
   1222c:	00094683          	lbu	a3,0(s2)
   12230:	01040413          	addi	s0,s0,16
   12234:	00da0a33          	add	s4,s4,a3
   12238:	f25ff06f          	j	1215c <_vfprintf_r+0x1994>
   1223c:	fff90913          	addi	s2,s2,-1
   12240:	fffc8c9b          	addiw	s9,s9,-1
   12244:	e91ff06f          	j	120d4 <_vfprintf_r+0x190c>
   12248:	10010613          	addi	a2,sp,256
   1224c:	000b8593          	mv	a1,s7
   12250:	00098513          	mv	a0,s3
   12254:	604090ef          	jal	ra,1b858 <__sprint_r>
   12258:	b0051063          	bnez	a0,11558 <_vfprintf_r+0xd90>
   1225c:	11013703          	ld	a4,272(sp)
   12260:	18010413          	addi	s0,sp,384
   12264:	01000893          	li	a7,16
   12268:	00700313          	li	t1,7
   1226c:	e8dff06f          	j	120f8 <_vfprintf_r+0x1930>
   12270:	10010613          	addi	a2,sp,256
   12274:	000b8593          	mv	a1,s7
   12278:	00098513          	mv	a0,s3
   1227c:	5dc090ef          	jal	ra,1b858 <__sprint_r>
   12280:	ac051c63          	bnez	a0,11558 <_vfprintf_r+0xd90>
   12284:	00094683          	lbu	a3,0(s2)
   12288:	11013703          	ld	a4,272(sp)
   1228c:	18010413          	addi	s0,sp,384
   12290:	0006861b          	sext.w	a2,a3
   12294:	01000893          	li	a7,16
   12298:	00700313          	li	t1,7
   1229c:	ea9ff06f          	j	12144 <_vfprintf_r+0x197c>
   122a0:	00013583          	ld	a1,0(sp)
   122a4:	10010613          	addi	a2,sp,256
   122a8:	00098513          	mv	a0,s3
   122ac:	5ac090ef          	jal	ra,1b858 <__sprint_r>
   122b0:	aa051463          	bnez	a0,11558 <_vfprintf_r+0xd90>
   122b4:	0d812603          	lw	a2,216(sp)
   122b8:	11013703          	ld	a4,272(sp)
   122bc:	18010413          	addi	s0,sp,384
   122c0:	b89ff06f          	j	11e48 <_vfprintf_r+0x1680>
   122c4:	000227b7          	lui	a5,0x22
   122c8:	f7078b13          	addi	s6,a5,-144 # 21f70 <__clzdi2+0x5c>
   122cc:	c59ff06f          	j	11f24 <_vfprintf_r+0x175c>
   122d0:	00030913          	mv	s2,t1
   122d4:	00200693          	li	a3,2
   122d8:	00090713          	mv	a4,s2
   122dc:	0e810893          	addi	a7,sp,232
   122e0:	0dc10813          	addi	a6,sp,220
   122e4:	0d810793          	addi	a5,sp,216
   122e8:	000b8593          	mv	a1,s7
   122ec:	000c0613          	mv	a2,s8
   122f0:	00098513          	mv	a0,s3
   122f4:	02613823          	sd	t1,48(sp)
   122f8:	4b0030ef          	jal	ra,157a8 <_ldtoa_r>
   122fc:	06700713          	li	a4,103
   12300:	03013303          	ld	t1,48(sp)
   12304:	00050b13          	mv	s6,a0
   12308:	5eec8c63          	beq	s9,a4,12900 <_vfprintf_r+0x2138>
   1230c:	04700713          	li	a4,71
   12310:	5eec8863          	beq	s9,a4,12900 <_vfprintf_r+0x2138>
   12314:	fdfcfa93          	andi	s5,s9,-33
   12318:	04600713          	li	a4,70
   1231c:	01250d33          	add	s10,a0,s2
   12320:	66ea8663          	beq	s5,a4,1298c <_vfprintf_r+0x21c4>
   12324:	000c0593          	mv	a1,s8
   12328:	00000613          	li	a2,0
   1232c:	00000693          	li	a3,0
   12330:	000b8513          	mv	a0,s7
   12334:	02613823          	sd	t1,48(sp)
   12338:	55c0e0ef          	jal	ra,20894 <__eqtf2>
   1233c:	03013303          	ld	t1,48(sp)
   12340:	000d0c13          	mv	s8,s10
   12344:	02050263          	beqz	a0,12368 <_vfprintf_r+0x1ba0>
   12348:	0e813c03          	ld	s8,232(sp)
   1234c:	01ac7e63          	bgeu	s8,s10,12368 <_vfprintf_r+0x1ba0>
   12350:	03000693          	li	a3,48
   12354:	001c0793          	addi	a5,s8,1
   12358:	0ef13423          	sd	a5,232(sp)
   1235c:	00dc0023          	sb	a3,0(s8)
   12360:	0e813c03          	ld	s8,232(sp)
   12364:	ffac68e3          	bltu	s8,s10,12354 <_vfprintf_r+0x1b8c>
   12368:	416c07bb          	subw	a5,s8,s6
   1236c:	02f13c23          	sd	a5,56(sp)
   12370:	0d812703          	lw	a4,216(sp)
   12374:	04700693          	li	a3,71
   12378:	02e13823          	sd	a4,48(sp)
   1237c:	4cda8c63          	beq	s5,a3,12854 <_vfprintf_r+0x208c>
   12380:	04600693          	li	a3,70
   12384:	72da8a63          	beq	s5,a3,12ab8 <_vfprintf_r+0x22f0>
   12388:	fff70d1b          	addiw	s10,a4,-1
   1238c:	0da12c23          	sw	s10,216(sp)
   12390:	06100693          	li	a3,97
   12394:	1cdc80e3          	beq	s9,a3,12d54 <_vfprintf_r+0x258c>
   12398:	04100613          	li	a2,65
   1239c:	05000693          	li	a3,80
   123a0:	4ccc9863          	bne	s9,a2,12870 <_vfprintf_r+0x20a8>
   123a4:	00100613          	li	a2,1
   123a8:	0ed10023          	sb	a3,224(sp)
   123ac:	02b00693          	li	a3,43
   123b0:	000d5863          	bgez	s10,123c0 <_vfprintf_r+0x1bf8>
   123b4:	00100d13          	li	s10,1
   123b8:	40ed0d3b          	subw	s10,s10,a4
   123bc:	02d00693          	li	a3,45
   123c0:	0ed100a3          	sb	a3,225(sp)
   123c4:	00900713          	li	a4,9
   123c8:	77a75e63          	bge	a4,s10,12b44 <_vfprintf_r+0x237c>
   123cc:	0ef10913          	addi	s2,sp,239
   123d0:	00090a93          	mv	s5,s2
   123d4:	06300b93          	li	s7,99
   123d8:	00a00593          	li	a1,10
   123dc:	000d0513          	mv	a0,s10
   123e0:	8f8fe0ef          	jal	ra,104d8 <__moddi3>
   123e4:	0305079b          	addiw	a5,a0,48
   123e8:	fefa8fa3          	sb	a5,-1(s5)
   123ec:	000d0513          	mv	a0,s10
   123f0:	00a00593          	li	a1,10
   123f4:	000d0c13          	mv	s8,s10
   123f8:	85cfe0ef          	jal	ra,10454 <__divdi3>
   123fc:	000a8d93          	mv	s11,s5
   12400:	00050d1b          	sext.w	s10,a0
   12404:	fffa8a93          	addi	s5,s5,-1
   12408:	fd8bc8e3          	blt	s7,s8,123d8 <_vfprintf_r+0x1c10>
   1240c:	030d0d1b          	addiw	s10,s10,48
   12410:	ffed8713          	addi	a4,s11,-2
   12414:	ffaa8fa3          	sb	s10,-1(s5)
   12418:	1b277ae3          	bgeu	a4,s2,12dcc <_vfprintf_r+0x2604>
   1241c:	0e210693          	addi	a3,sp,226
   12420:	00074783          	lbu	a5,0(a4)
   12424:	00170713          	addi	a4,a4,1
   12428:	00168693          	addi	a3,a3,1
   1242c:	fef68fa3          	sb	a5,-1(a3)
   12430:	ff2718e3          	bne	a4,s2,12420 <_vfprintf_r+0x1c58>
   12434:	0f110713          	addi	a4,sp,241
   12438:	0e210793          	addi	a5,sp,226
   1243c:	41b70733          	sub	a4,a4,s11
   12440:	00e78733          	add	a4,a5,a4
   12444:	0e010693          	addi	a3,sp,224
   12448:	40d707bb          	subw	a5,a4,a3
   1244c:	06f13823          	sd	a5,112(sp)
   12450:	07013703          	ld	a4,112(sp)
   12454:	03813783          	ld	a5,56(sp)
   12458:	00100613          	li	a2,1
   1245c:	00e78d3b          	addw	s10,a5,a4
   12460:	000d0713          	mv	a4,s10
   12464:	02f658e3          	bge	a2,a5,12c94 <_vfprintf_r+0x24cc>
   12468:	05813783          	ld	a5,88(sp)
   1246c:	00f70d3b          	addw	s10,a4,a5
   12470:	04013783          	ld	a5,64(sp)
   12474:	fffd4813          	not	a6,s10
   12478:	43f85813          	srai	a6,a6,0x3f
   1247c:	bff7f913          	andi	s2,a5,-1025
   12480:	0009091b          	sext.w	s2,s2
   12484:	010d7833          	and	a6,s10,a6
   12488:	10096913          	ori	s2,s2,256
   1248c:	00080c1b          	sext.w	s8,a6
   12490:	04013423          	sd	zero,72(sp)
   12494:	04013023          	sd	zero,64(sp)
   12498:	02013823          	sd	zero,48(sp)
   1249c:	09813783          	ld	a5,152(sp)
   124a0:	3c078e63          	beqz	a5,1287c <_vfprintf_r+0x20b4>
   124a4:	02d00713          	li	a4,45
   124a8:	0ce107a3          	sb	a4,207(sp)
   124ac:	00000313          	li	t1,0
   124b0:	001c0c1b          	addiw	s8,s8,1
   124b4:	d54fe06f          	j	10a08 <_vfprintf_r+0x240>
   124b8:	00013583          	ld	a1,0(sp)
   124bc:	10010613          	addi	a2,sp,256
   124c0:	00098513          	mv	a0,s3
   124c4:	394090ef          	jal	ra,1b858 <__sprint_r>
   124c8:	88051863          	bnez	a0,11558 <_vfprintf_r+0xd90>
   124cc:	11013d83          	ld	s11,272(sp)
   124d0:	18010413          	addi	s0,sp,384
   124d4:	adcff06f          	j	117b0 <_vfprintf_r+0xfe8>
   124d8:	00600693          	li	a3,6
   124dc:	f5cff06f          	j	11c38 <_vfprintf_r+0x1470>
   124e0:	416a8cb3          	sub	s9,s5,s6
   124e4:	40d7863b          	subw	a2,a5,a3
   124e8:	000c879b          	sext.w	a5,s9
   124ec:	000d8713          	mv	a4,s11
   124f0:	00f65463          	bge	a2,a5,124f8 <_vfprintf_r+0x1d30>
   124f4:	00060c93          	mv	s9,a2
   124f8:	000c8c9b          	sext.w	s9,s9
   124fc:	b70ff06f          	j	1186c <_vfprintf_r+0x10a4>
   12500:	020d1d13          	slli	s10,s10,0x20
   12504:	020d5d13          	srli	s10,s10,0x20
   12508:	bf9fe06f          	j	11100 <_vfprintf_r+0x938>
   1250c:	01013783          	ld	a5,16(sp)
   12510:	00f71023          	sh	a5,0(a4)
   12514:	c29fe06f          	j	1113c <_vfprintf_r+0x974>
   12518:	020d1d13          	slli	s10,s10,0x20
   1251c:	020d5d13          	srli	s10,s10,0x20
   12520:	e68ff06f          	j	11b88 <_vfprintf_r+0x13c0>
   12524:	000d0793          	mv	a5,s10
   12528:	b8dfe06f          	j	110b4 <_vfprintf_r+0x8ec>
   1252c:	020d1d13          	slli	s10,s10,0x20
   12530:	020d5d13          	srli	s10,s10,0x20
   12534:	02e13023          	sd	a4,32(sp)
   12538:	00100793          	li	a5,1
   1253c:	ae9fe06f          	j	11024 <_vfprintf_r+0x85c>
   12540:	02d00793          	li	a5,45
   12544:	0cf107a3          	sb	a5,207(sp)
   12548:	02d00713          	li	a4,45
   1254c:	afdff06f          	j	12048 <_vfprintf_r+0x1880>
   12550:	00013583          	ld	a1,0(sp)
   12554:	05013503          	ld	a0,80(sp)
   12558:	10010613          	addi	a2,sp,256
   1255c:	2fc090ef          	jal	ra,1b858 <__sprint_r>
   12560:	ddcfe06f          	j	10b3c <_vfprintf_r+0x374>
   12564:	00013583          	ld	a1,0(sp)
   12568:	10010613          	addi	a2,sp,256
   1256c:	00098513          	mv	a0,s3
   12570:	2e8090ef          	jal	ra,1b858 <__sprint_r>
   12574:	00050463          	beqz	a0,1257c <_vfprintf_r+0x1db4>
   12578:	fe1fe06f          	j	11558 <_vfprintf_r+0xd90>
   1257c:	0d812603          	lw	a2,216(sp)
   12580:	11013703          	ld	a4,272(sp)
   12584:	10812683          	lw	a3,264(sp)
   12588:	18010413          	addi	s0,sp,384
   1258c:	9f9ff06f          	j	11f84 <_vfprintf_r+0x17bc>
   12590:	05800713          	li	a4,88
   12594:	00296793          	ori	a5,s2,2
   12598:	03000693          	li	a3,48
   1259c:	0007879b          	sext.w	a5,a5
   125a0:	0ce108a3          	sb	a4,209(sp)
   125a4:	0cd10823          	sb	a3,208(sp)
   125a8:	06300713          	li	a4,99
   125ac:	04f13023          	sd	a5,64(sp)
   125b0:	00013c23          	sd	zero,24(sp)
   125b4:	11810b13          	addi	s6,sp,280
   125b8:	64674c63          	blt	a4,t1,12c10 <_vfprintf_r+0x2448>
   125bc:	10296913          	ori	s2,s2,258
   125c0:	0f813c03          	ld	s8,248(sp)
   125c4:	0009079b          	sext.w	a5,s2
   125c8:	08f13823          	sd	a5,144(sp)
   125cc:	08013c23          	sd	zero,152(sp)
   125d0:	0f013b83          	ld	s7,240(sp)
   125d4:	300c4a63          	bltz	s8,128e8 <_vfprintf_r+0x2120>
   125d8:	06100713          	li	a4,97
   125dc:	00ec8463          	beq	s9,a4,125e4 <_vfprintf_r+0x1e1c>
   125e0:	ef8fe06f          	j	10cd8 <_vfprintf_r+0x510>
   125e4:	000c0593          	mv	a1,s8
   125e8:	000b8513          	mv	a0,s7
   125ec:	02613823          	sd	t1,48(sp)
   125f0:	7400f0ef          	jal	ra,21d30 <__trunctfdf2>
   125f4:	0d810593          	addi	a1,sp,216
   125f8:	50c060ef          	jal	ra,18b04 <frexp>
   125fc:	6440f0ef          	jal	ra,21c40 <__extenddftf2>
   12600:	00022737          	lui	a4,0x22
   12604:	1f873683          	ld	a3,504(a4) # 221f8 <blanks.1+0x18>
   12608:	00000613          	li	a2,0
   1260c:	5440e0ef          	jal	ra,20b50 <__multf3>
   12610:	00000613          	li	a2,0
   12614:	00000693          	li	a3,0
   12618:	00050d93          	mv	s11,a0
   1261c:	00058913          	mv	s2,a1
   12620:	2740e0ef          	jal	ra,20894 <__eqtf2>
   12624:	03013303          	ld	t1,48(sp)
   12628:	00051663          	bnez	a0,12634 <_vfprintf_r+0x1e6c>
   1262c:	00100713          	li	a4,1
   12630:	0ce12c23          	sw	a4,216(sp)
   12634:	00022737          	lui	a4,0x22
   12638:	fa870793          	addi	a5,a4,-88 # 21fa8 <__clzdi2+0x94>
   1263c:	02f13c23          	sd	a5,56(sp)
   12640:	000226b7          	lui	a3,0x22
   12644:	2086b783          	ld	a5,520(a3) # 22208 <blanks.1+0x28>
   12648:	02031713          	slli	a4,t1,0x20
   1264c:	02075713          	srli	a4,a4,0x20
   12650:	00170713          	addi	a4,a4,1
   12654:	02f13823          	sd	a5,48(sp)
   12658:	0003061b          	sext.w	a2,t1
   1265c:	00eb07b3          	add	a5,s6,a4
   12660:	04913423          	sd	s1,72(sp)
   12664:	0b413023          	sd	s4,160(sp)
   12668:	0a813823          	sd	s0,176(sp)
   1266c:	03813483          	ld	s1,56(sp)
   12670:	0ac13c23          	sd	a2,184(sp)
   12674:	0a613423          	sd	t1,168(sp)
   12678:	00078413          	mv	s0,a5
   1267c:	000b0a13          	mv	s4,s6
   12680:	00098b93          	mv	s7,s3
   12684:	000b0d13          	mv	s10,s6
   12688:	0140006f          	j	1269c <_vfprintf_r+0x1ed4>
   1268c:	00000613          	li	a2,0
   12690:	00000693          	li	a3,0
   12694:	2000e0ef          	jal	ra,20894 <__eqtf2>
   12698:	5a050663          	beqz	a0,12c44 <_vfprintf_r+0x247c>
   1269c:	03013683          	ld	a3,48(sp)
   126a0:	00000613          	li	a2,0
   126a4:	000d8513          	mv	a0,s11
   126a8:	00090593          	mv	a1,s2
   126ac:	4a40e0ef          	jal	ra,20b50 <__multf3>
   126b0:	00058913          	mv	s2,a1
   126b4:	00050993          	mv	s3,a0
   126b8:	4980f0ef          	jal	ra,21b50 <__fixtfsi>
   126bc:	00050c1b          	sext.w	s8,a0
   126c0:	000c0513          	mv	a0,s8
   126c4:	4f40f0ef          	jal	ra,21bb8 <__floatsitf>
   126c8:	00058693          	mv	a3,a1
   126cc:	00050613          	mv	a2,a0
   126d0:	00090593          	mv	a1,s2
   126d4:	00098513          	mv	a0,s3
   126d8:	3c50e0ef          	jal	ra,2129c <__subtf3>
   126dc:	01848733          	add	a4,s1,s8
   126e0:	00074683          	lbu	a3,0(a4)
   126e4:	000a0993          	mv	s3,s4
   126e8:	001a0a13          	addi	s4,s4,1
   126ec:	feda0fa3          	sb	a3,-1(s4)
   126f0:	00050a93          	mv	s5,a0
   126f4:	00058b13          	mv	s6,a1
   126f8:	00050d93          	mv	s11,a0
   126fc:	00058913          	mv	s2,a1
   12700:	f94416e3          	bne	s0,s4,1268c <_vfprintf_r+0x1ec4>
   12704:	000a0a93          	mv	s5,s4
   12708:	04813483          	ld	s1,72(sp)
   1270c:	0a813303          	ld	t1,168(sp)
   12710:	0b013403          	ld	s0,176(sp)
   12714:	0a013a03          	ld	s4,160(sp)
   12718:	03313823          	sd	s3,48(sp)
   1271c:	000d0b13          	mv	s6,s10
   12720:	000b8993          	mv	s3,s7
   12724:	00050d13          	mv	s10,a0
   12728:	00058b93          	mv	s7,a1
   1272c:	fff00d93          	li	s11,-1
   12730:	000226b7          	lui	a3,0x22
   12734:	2186b903          	ld	s2,536(a3) # 22218 <blanks.1+0x38>
   12738:	00000613          	li	a2,0
   1273c:	000d0513          	mv	a0,s10
   12740:	00090693          	mv	a3,s2
   12744:	000b8593          	mv	a1,s7
   12748:	04613423          	sd	t1,72(sp)
   1274c:	1ec0e0ef          	jal	ra,20938 <__getf2>
   12750:	04813303          	ld	t1,72(sp)
   12754:	46a04463          	bgtz	a0,12bbc <_vfprintf_r+0x23f4>
   12758:	00000613          	li	a2,0
   1275c:	00090693          	mv	a3,s2
   12760:	000d0513          	mv	a0,s10
   12764:	000b8593          	mv	a1,s7
   12768:	12c0e0ef          	jal	ra,20894 <__eqtf2>
   1276c:	04813303          	ld	t1,72(sp)
   12770:	00051663          	bnez	a0,1277c <_vfprintf_r+0x1fb4>
   12774:	001c7c13          	andi	s8,s8,1
   12778:	440c1263          	bnez	s8,12bbc <_vfprintf_r+0x23f4>
   1277c:	001d8c1b          	addiw	s8,s11,1
   12780:	018a8c33          	add	s8,s5,s8
   12784:	03000693          	li	a3,48
   12788:	480dc063          	bltz	s11,12c08 <_vfprintf_r+0x2440>
   1278c:	001a8a93          	addi	s5,s5,1
   12790:	feda8fa3          	sb	a3,-1(s5)
   12794:	ff5c1ce3          	bne	s8,s5,1278c <_vfprintf_r+0x1fc4>
   12798:	416c07bb          	subw	a5,s8,s6
   1279c:	02f13c23          	sd	a5,56(sp)
   127a0:	fdfcfa93          	andi	s5,s9,-33
   127a4:	bcdff06f          	j	12370 <_vfprintf_r+0x1ba8>
   127a8:	00013583          	ld	a1,0(sp)
   127ac:	10010613          	addi	a2,sp,256
   127b0:	00098513          	mv	a0,s3
   127b4:	0a4090ef          	jal	ra,1b858 <__sprint_r>
   127b8:	00050463          	beqz	a0,127c0 <_vfprintf_r+0x1ff8>
   127bc:	d9dfe06f          	j	11558 <_vfprintf_r+0xd90>
   127c0:	11013d83          	ld	s11,272(sp)
   127c4:	18010413          	addi	s0,sp,384
   127c8:	800ff06f          	j	117c8 <_vfprintf_r+0x1000>
   127cc:	0013091b          	addiw	s2,t1,1
   127d0:	00200693          	li	a3,2
   127d4:	b05ff06f          	j	122d8 <_vfprintf_r+0x1b10>
   127d8:	00030913          	mv	s2,t1
   127dc:	00300693          	li	a3,3
   127e0:	af9ff06f          	j	122d8 <_vfprintf_r+0x1b10>
   127e4:	000c0593          	mv	a1,s8
   127e8:	000b8513          	mv	a0,s7
   127ec:	02613823          	sd	t1,48(sp)
   127f0:	5400f0ef          	jal	ra,21d30 <__trunctfdf2>
   127f4:	0d810593          	addi	a1,sp,216
   127f8:	30c060ef          	jal	ra,18b04 <frexp>
   127fc:	4440f0ef          	jal	ra,21c40 <__extenddftf2>
   12800:	00022737          	lui	a4,0x22
   12804:	1f873683          	ld	a3,504(a4) # 221f8 <blanks.1+0x18>
   12808:	00000613          	li	a2,0
   1280c:	3440e0ef          	jal	ra,20b50 <__multf3>
   12810:	00000613          	li	a2,0
   12814:	00000693          	li	a3,0
   12818:	00050d93          	mv	s11,a0
   1281c:	00058913          	mv	s2,a1
   12820:	0740e0ef          	jal	ra,20894 <__eqtf2>
   12824:	03013303          	ld	t1,48(sp)
   12828:	00051663          	bnez	a0,12834 <_vfprintf_r+0x206c>
   1282c:	00100713          	li	a4,1
   12830:	0ce12c23          	sw	a4,216(sp)
   12834:	00022737          	lui	a4,0x22
   12838:	f9070793          	addi	a5,a4,-112 # 21f90 <__clzdi2+0x7c>
   1283c:	02f13c23          	sd	a5,56(sp)
   12840:	e01ff06f          	j	12640 <_vfprintf_r+0x1e78>
   12844:	0e813c03          	ld	s8,232(sp)
   12848:	0d812703          	lw	a4,216(sp)
   1284c:	416c07bb          	subw	a5,s8,s6
   12850:	02f13c23          	sd	a5,56(sp)
   12854:	ffd00693          	li	a3,-3
   12858:	02e13823          	sd	a4,48(sp)
   1285c:	00d74463          	blt	a4,a3,12864 <_vfprintf_r+0x209c>
   12860:	02e35863          	bge	t1,a4,12890 <_vfprintf_r+0x20c8>
   12864:	fff70d1b          	addiw	s10,a4,-1
   12868:	ffec8c9b          	addiw	s9,s9,-2
   1286c:	0da12c23          	sw	s10,216(sp)
   12870:	0ffcf693          	zext.b	a3,s9
   12874:	00000613          	li	a2,0
   12878:	b31ff06f          	j	123a8 <_vfprintf_r+0x1be0>
   1287c:	0cf14703          	lbu	a4,207(sp)
   12880:	00000313          	li	t1,0
   12884:	00070463          	beqz	a4,1288c <_vfprintf_r+0x20c4>
   12888:	e58fe06f          	j	10ee0 <_vfprintf_r+0x718>
   1288c:	97cfe06f          	j	10a08 <_vfprintf_r+0x240>
   12890:	03813783          	ld	a5,56(sp)
   12894:	26f74463          	blt	a4,a5,12afc <_vfprintf_r+0x2334>
   12898:	04013783          	ld	a5,64(sp)
   1289c:	00070d13          	mv	s10,a4
   128a0:	0017f613          	andi	a2,a5,1
   128a4:	00060663          	beqz	a2,128b0 <_vfprintf_r+0x20e8>
   128a8:	05813783          	ld	a5,88(sp)
   128ac:	00e78d3b          	addw	s10,a5,a4
   128b0:	04013783          	ld	a5,64(sp)
   128b4:	4007f613          	andi	a2,a5,1024
   128b8:	00060463          	beqz	a2,128c0 <_vfprintf_r+0x20f8>
   128bc:	3ee04863          	bgtz	a4,12cac <_vfprintf_r+0x24e4>
   128c0:	fffd4813          	not	a6,s10
   128c4:	43f85813          	srai	a6,a6,0x3f
   128c8:	09013903          	ld	s2,144(sp)
   128cc:	010d7833          	and	a6,s10,a6
   128d0:	00080c1b          	sext.w	s8,a6
   128d4:	06700c93          	li	s9,103
   128d8:	04013423          	sd	zero,72(sp)
   128dc:	04013023          	sd	zero,64(sp)
   128e0:	bbdff06f          	j	1249c <_vfprintf_r+0x1cd4>
   128e4:	00013c23          	sd	zero,24(sp)
   128e8:	fff00713          	li	a4,-1
   128ec:	03f71713          	slli	a4,a4,0x3f
   128f0:	02d00793          	li	a5,45
   128f4:	00ec4c33          	xor	s8,s8,a4
   128f8:	08f13c23          	sd	a5,152(sp)
   128fc:	cddff06f          	j	125d8 <_vfprintf_r+0x1e10>
   12900:	04013783          	ld	a5,64(sp)
   12904:	0017f713          	andi	a4,a5,1
   12908:	f2070ee3          	beqz	a4,12844 <_vfprintf_r+0x207c>
   1290c:	012b0d33          	add	s10,s6,s2
   12910:	04700a93          	li	s5,71
   12914:	a11ff06f          	j	12324 <_vfprintf_r+0x1b5c>
   12918:	10010613          	addi	a2,sp,256
   1291c:	000b8593          	mv	a1,s7
   12920:	00098513          	mv	a0,s3
   12924:	735080ef          	jal	ra,1b858 <__sprint_r>
   12928:	00050463          	beqz	a0,12930 <_vfprintf_r+0x2168>
   1292c:	c2dfe06f          	j	11558 <_vfprintf_r+0xd90>
   12930:	00094683          	lbu	a3,0(s2)
   12934:	11013703          	ld	a4,272(sp)
   12938:	18010413          	addi	s0,sp,384
   1293c:	01000893          	li	a7,16
   12940:	00700313          	li	t1,7
   12944:	00da0a33          	add	s4,s4,a3
   12948:	815ff06f          	j	1215c <_vfprintf_r+0x1994>
   1294c:	07800713          	li	a4,120
   12950:	c45ff06f          	j	12594 <_vfprintf_r+0x1dcc>
   12954:	00013583          	ld	a1,0(sp)
   12958:	10010613          	addi	a2,sp,256
   1295c:	00098513          	mv	a0,s3
   12960:	6f9080ef          	jal	ra,1b858 <__sprint_r>
   12964:	00050463          	beqz	a0,1296c <_vfprintf_r+0x21a4>
   12968:	bf1fe06f          	j	11558 <_vfprintf_r+0xd90>
   1296c:	0d812683          	lw	a3,216(sp)
   12970:	11013703          	ld	a4,272(sp)
   12974:	18010413          	addi	s0,sp,384
   12978:	ea9fe06f          	j	11820 <_vfprintf_r+0x1058>
   1297c:	02d00793          	li	a5,45
   12980:	0cf107a3          	sb	a5,207(sp)
   12984:	02d00713          	li	a4,45
   12988:	d8cff06f          	j	11f14 <_vfprintf_r+0x174c>
   1298c:	00054683          	lbu	a3,0(a0)
   12990:	03000713          	li	a4,48
   12994:	00e68863          	beq	a3,a4,129a4 <_vfprintf_r+0x21dc>
   12998:	0d812683          	lw	a3,216(sp)
   1299c:	00dd0d33          	add	s10,s10,a3
   129a0:	985ff06f          	j	12324 <_vfprintf_r+0x1b5c>
   129a4:	00000613          	li	a2,0
   129a8:	00000693          	li	a3,0
   129ac:	000b8513          	mv	a0,s7
   129b0:	000c0593          	mv	a1,s8
   129b4:	02613823          	sd	t1,48(sp)
   129b8:	6dd0d0ef          	jal	ra,20894 <__eqtf2>
   129bc:	03013303          	ld	t1,48(sp)
   129c0:	fc050ce3          	beqz	a0,12998 <_vfprintf_r+0x21d0>
   129c4:	00100713          	li	a4,1
   129c8:	412706bb          	subw	a3,a4,s2
   129cc:	0cd12c23          	sw	a3,216(sp)
   129d0:	00dd0d33          	add	s10,s10,a3
   129d4:	951ff06f          	j	12324 <_vfprintf_r+0x1b5c>
   129d8:	0cf14703          	lbu	a4,207(sp)
   129dc:	03513023          	sd	s5,32(sp)
   129e0:	04013423          	sd	zero,72(sp)
   129e4:	04013023          	sd	zero,64(sp)
   129e8:	02013823          	sd	zero,48(sp)
   129ec:	00030c13          	mv	s8,t1
   129f0:	00030d13          	mv	s10,t1
   129f4:	00000313          	li	t1,0
   129f8:	00070463          	beqz	a4,12a00 <_vfprintf_r+0x2238>
   129fc:	ce4fe06f          	j	10ee0 <_vfprintf_r+0x718>
   12a00:	808fe06f          	j	10a08 <_vfprintf_r+0x240>
   12a04:	00013583          	ld	a1,0(sp)
   12a08:	10010613          	addi	a2,sp,256
   12a0c:	00098513          	mv	a0,s3
   12a10:	649080ef          	jal	ra,1b858 <__sprint_r>
   12a14:	00050463          	beqz	a0,12a1c <_vfprintf_r+0x2254>
   12a18:	b41fe06f          	j	11558 <_vfprintf_r+0xd90>
   12a1c:	0d812603          	lw	a2,216(sp)
   12a20:	03813783          	ld	a5,56(sp)
   12a24:	11013703          	ld	a4,272(sp)
   12a28:	18010413          	addi	s0,sp,384
   12a2c:	40c7863b          	subw	a2,a5,a2
   12a30:	e3dfe06f          	j	1186c <_vfprintf_r+0x10a4>
   12a34:	000227b7          	lui	a5,0x22
   12a38:	f8078b13          	addi	s6,a5,-128 # 21f80 <__clzdi2+0x6c>
   12a3c:	ce8ff06f          	j	11f24 <_vfprintf_r+0x175c>
   12a40:	00090d93          	mv	s11,s2
   12a44:	c31fe06f          	j	11674 <_vfprintf_r+0xeac>
   12a48:	00022f37          	lui	t5,0x22
   12a4c:	ff000593          	li	a1,-16
   12a50:	40c00cbb          	negw	s9,a2
   12a54:	1d0f0d93          	addi	s11,t5,464 # 221d0 <zeroes.0>
   12a58:	01000d13          	li	s10,16
   12a5c:	00700a93          	li	s5,7
   12a60:	00b64863          	blt	a2,a1,12a70 <_vfprintf_r+0x22a8>
   12a64:	1100006f          	j	12b74 <_vfprintf_r+0x23ac>
   12a68:	ff0c8c9b          	addiw	s9,s9,-16
   12a6c:	119d5463          	bge	s10,s9,12b74 <_vfprintf_r+0x23ac>
   12a70:	0016869b          	addiw	a3,a3,1
   12a74:	01070713          	addi	a4,a4,16
   12a78:	01b43023          	sd	s11,0(s0)
   12a7c:	01a43423          	sd	s10,8(s0)
   12a80:	10e13823          	sd	a4,272(sp)
   12a84:	10d12423          	sw	a3,264(sp)
   12a88:	01040413          	addi	s0,s0,16
   12a8c:	fcdadee3          	bge	s5,a3,12a68 <_vfprintf_r+0x22a0>
   12a90:	00013583          	ld	a1,0(sp)
   12a94:	10010613          	addi	a2,sp,256
   12a98:	00098513          	mv	a0,s3
   12a9c:	5bd080ef          	jal	ra,1b858 <__sprint_r>
   12aa0:	00050463          	beqz	a0,12aa8 <_vfprintf_r+0x22e0>
   12aa4:	ab5fe06f          	j	11558 <_vfprintf_r+0xd90>
   12aa8:	11013703          	ld	a4,272(sp)
   12aac:	10812683          	lw	a3,264(sp)
   12ab0:	18010413          	addi	s0,sp,384
   12ab4:	fb5ff06f          	j	12a68 <_vfprintf_r+0x22a0>
   12ab8:	04013783          	ld	a5,64(sp)
   12abc:	0017f713          	andi	a4,a5,1
   12ac0:	03013783          	ld	a5,48(sp)
   12ac4:	00e36733          	or	a4,t1,a4
   12ac8:	28f05a63          	blez	a5,12d5c <_vfprintf_r+0x2594>
   12acc:	26071a63          	bnez	a4,12d40 <_vfprintf_r+0x2578>
   12ad0:	03013d03          	ld	s10,48(sp)
   12ad4:	06600c93          	li	s9,102
   12ad8:	04013783          	ld	a5,64(sp)
   12adc:	4007f713          	andi	a4,a5,1024
   12ae0:	1c071863          	bnez	a4,12cb0 <_vfprintf_r+0x24e8>
   12ae4:	fffd4813          	not	a6,s10
   12ae8:	43f85813          	srai	a6,a6,0x3f
   12aec:	010d7833          	and	a6,s10,a6
   12af0:	09013903          	ld	s2,144(sp)
   12af4:	00080c1b          	sext.w	s8,a6
   12af8:	de1ff06f          	j	128d8 <_vfprintf_r+0x2110>
   12afc:	05813783          	ld	a5,88(sp)
   12b00:	03813703          	ld	a4,56(sp)
   12b04:	06700c93          	li	s9,103
   12b08:	00e78d3b          	addw	s10,a5,a4
   12b0c:	03013783          	ld	a5,48(sp)
   12b10:	fcf044e3          	bgtz	a5,12ad8 <_vfprintf_r+0x2310>
   12b14:	40fd073b          	subw	a4,s10,a5
   12b18:	0017071b          	addiw	a4,a4,1
   12b1c:	00070d1b          	sext.w	s10,a4
   12b20:	fffd4613          	not	a2,s10
   12b24:	43f65613          	srai	a2,a2,0x3f
   12b28:	00c77733          	and	a4,a4,a2
   12b2c:	09013903          	ld	s2,144(sp)
   12b30:	00070c1b          	sext.w	s8,a4
   12b34:	da5ff06f          	j	128d8 <_vfprintf_r+0x2110>
   12b38:	fff00793          	li	a5,-1
   12b3c:	00f13823          	sd	a5,16(sp)
   12b40:	810fe06f          	j	10b50 <_vfprintf_r+0x388>
   12b44:	0e210713          	addi	a4,sp,226
   12b48:	00061863          	bnez	a2,12b58 <_vfprintf_r+0x2390>
   12b4c:	03000713          	li	a4,48
   12b50:	0ee10123          	sb	a4,226(sp)
   12b54:	0e310713          	addi	a4,sp,227
   12b58:	20010793          	addi	a5,sp,512
   12b5c:	40f706b3          	sub	a3,a4,a5
   12b60:	030d0d1b          	addiw	s10,s10,48
   12b64:	1216879b          	addiw	a5,a3,289
   12b68:	01a70023          	sb	s10,0(a4)
   12b6c:	06f13823          	sd	a5,112(sp)
   12b70:	8e1ff06f          	j	12450 <_vfprintf_r+0x1c88>
   12b74:	0016869b          	addiw	a3,a3,1
   12b78:	01970733          	add	a4,a4,s9
   12b7c:	01b43023          	sd	s11,0(s0)
   12b80:	01943423          	sd	s9,8(s0)
   12b84:	10e13823          	sd	a4,272(sp)
   12b88:	10d12423          	sw	a3,264(sp)
   12b8c:	00700613          	li	a2,7
   12b90:	aed65e63          	bge	a2,a3,11e8c <_vfprintf_r+0x16c4>
   12b94:	00013583          	ld	a1,0(sp)
   12b98:	10010613          	addi	a2,sp,256
   12b9c:	00098513          	mv	a0,s3
   12ba0:	4b9080ef          	jal	ra,1b858 <__sprint_r>
   12ba4:	00050463          	beqz	a0,12bac <_vfprintf_r+0x23e4>
   12ba8:	9b1fe06f          	j	11558 <_vfprintf_r+0xd90>
   12bac:	11013703          	ld	a4,272(sp)
   12bb0:	10812683          	lw	a3,264(sp)
   12bb4:	18010413          	addi	s0,sp,384
   12bb8:	bd0ff06f          	j	11f88 <_vfprintf_r+0x17c0>
   12bbc:	03013783          	ld	a5,48(sp)
   12bc0:	000a8693          	mv	a3,s5
   12bc4:	0ef13423          	sd	a5,232(sp)
   12bc8:	03813783          	ld	a5,56(sp)
   12bcc:	fffac603          	lbu	a2,-1(s5)
   12bd0:	00f7c583          	lbu	a1,15(a5)
   12bd4:	02c59063          	bne	a1,a2,12bf4 <_vfprintf_r+0x242c>
   12bd8:	03000513          	li	a0,48
   12bdc:	fea68fa3          	sb	a0,-1(a3)
   12be0:	0e813683          	ld	a3,232(sp)
   12be4:	fff68793          	addi	a5,a3,-1
   12be8:	0ef13423          	sd	a5,232(sp)
   12bec:	fff6c603          	lbu	a2,-1(a3)
   12bf0:	fec586e3          	beq	a1,a2,12bdc <_vfprintf_r+0x2414>
   12bf4:	0016059b          	addiw	a1,a2,1
   12bf8:	03900513          	li	a0,57
   12bfc:	0ff5f593          	zext.b	a1,a1
   12c00:	02a60a63          	beq	a2,a0,12c34 <_vfprintf_r+0x246c>
   12c04:	feb68fa3          	sb	a1,-1(a3)
   12c08:	000a8c13          	mv	s8,s5
   12c0c:	b8dff06f          	j	12798 <_vfprintf_r+0x1fd0>
   12c10:	0013059b          	addiw	a1,t1,1
   12c14:	00098513          	mv	a0,s3
   12c18:	00613c23          	sd	t1,24(sp)
   12c1c:	238040ef          	jal	ra,16e54 <_malloc_r>
   12c20:	01813303          	ld	t1,24(sp)
   12c24:	00050b13          	mv	s6,a0
   12c28:	1a050e63          	beqz	a0,12de4 <_vfprintf_r+0x261c>
   12c2c:	00a13c23          	sd	a0,24(sp)
   12c30:	98dff06f          	j	125bc <_vfprintf_r+0x1df4>
   12c34:	03813783          	ld	a5,56(sp)
   12c38:	00a7c583          	lbu	a1,10(a5)
   12c3c:	feb68fa3          	sb	a1,-1(a3)
   12c40:	fc9ff06f          	j	12c08 <_vfprintf_r+0x2440>
   12c44:	0b813603          	ld	a2,184(sp)
   12c48:	03313823          	sd	s3,48(sp)
   12c4c:	000b8993          	mv	s3,s7
   12c50:	000b0b93          	mv	s7,s6
   12c54:	000d0b13          	mv	s6,s10
   12c58:	00cb063b          	addw	a2,s6,a2
   12c5c:	000a8d13          	mv	s10,s5
   12c60:	000a0a93          	mv	s5,s4
   12c64:	04813483          	ld	s1,72(sp)
   12c68:	0a813303          	ld	t1,168(sp)
   12c6c:	0b013403          	ld	s0,176(sp)
   12c70:	0a013a03          	ld	s4,160(sp)
   12c74:	41560dbb          	subw	s11,a2,s5
   12c78:	ab9ff06f          	j	12730 <_vfprintf_r+0x1f68>
   12c7c:	00030463          	beqz	t1,12c84 <_vfprintf_r+0x24bc>
   12c80:	830fe06f          	j	10cb0 <_vfprintf_r+0x4e8>
   12c84:	00100313          	li	t1,1
   12c88:	828fe06f          	j	10cb0 <_vfprintf_r+0x4e8>
   12c8c:	00600313          	li	t1,6
   12c90:	820fe06f          	j	10cb0 <_vfprintf_r+0x4e8>
   12c94:	04013783          	ld	a5,64(sp)
   12c98:	0017f613          	andi	a2,a5,1
   12c9c:	fc060a63          	beqz	a2,12470 <_vfprintf_r+0x1ca8>
   12ca0:	fc8ff06f          	j	12468 <_vfprintf_r+0x1ca0>
   12ca4:	00f72023          	sw	a5,0(a4)
   12ca8:	c94fe06f          	j	1113c <_vfprintf_r+0x974>
   12cac:	06700c93          	li	s9,103
   12cb0:	07813683          	ld	a3,120(sp)
   12cb4:	0ff00613          	li	a2,255
   12cb8:	0006c703          	lbu	a4,0(a3)
   12cbc:	10c70e63          	beq	a4,a2,12dd8 <_vfprintf_r+0x2610>
   12cc0:	03013783          	ld	a5,48(sp)
   12cc4:	00000813          	li	a6,0
   12cc8:	00000513          	li	a0,0
   12ccc:	0ff00593          	li	a1,255
   12cd0:	0007061b          	sext.w	a2,a4
   12cd4:	00f75e63          	bge	a4,a5,12cf0 <_vfprintf_r+0x2528>
   12cd8:	0016c703          	lbu	a4,1(a3)
   12cdc:	40c787bb          	subw	a5,a5,a2
   12ce0:	04070a63          	beqz	a4,12d34 <_vfprintf_r+0x256c>
   12ce4:	0015051b          	addiw	a0,a0,1
   12ce8:	00168693          	addi	a3,a3,1
   12cec:	feb712e3          	bne	a4,a1,12cd0 <_vfprintf_r+0x2508>
   12cf0:	02f13823          	sd	a5,48(sp)
   12cf4:	06d13c23          	sd	a3,120(sp)
   12cf8:	04a13023          	sd	a0,64(sp)
   12cfc:	05013423          	sd	a6,72(sp)
   12d00:	04013703          	ld	a4,64(sp)
   12d04:	04813783          	ld	a5,72(sp)
   12d08:	08013583          	ld	a1,128(sp)
   12d0c:	00e7853b          	addw	a0,a5,a4
   12d10:	1e00f0ef          	jal	ra,21ef0 <__muldi3>
   12d14:	01a5073b          	addw	a4,a0,s10
   12d18:	00070d1b          	sext.w	s10,a4
   12d1c:	fffd4613          	not	a2,s10
   12d20:	43f65613          	srai	a2,a2,0x3f
   12d24:	00c77733          	and	a4,a4,a2
   12d28:	09013903          	ld	s2,144(sp)
   12d2c:	00070c1b          	sext.w	s8,a4
   12d30:	f6cff06f          	j	1249c <_vfprintf_r+0x1cd4>
   12d34:	0006c703          	lbu	a4,0(a3)
   12d38:	0018081b          	addiw	a6,a6,1
   12d3c:	fb1ff06f          	j	12cec <_vfprintf_r+0x2524>
   12d40:	05813703          	ld	a4,88(sp)
   12d44:	06600c93          	li	s9,102
   12d48:	00f706bb          	addw	a3,a4,a5
   12d4c:	00668d3b          	addw	s10,a3,t1
   12d50:	d89ff06f          	j	12ad8 <_vfprintf_r+0x2310>
   12d54:	07000693          	li	a3,112
   12d58:	e4cff06f          	j	123a4 <_vfprintf_r+0x1bdc>
   12d5c:	00071c63          	bnez	a4,12d74 <_vfprintf_r+0x25ac>
   12d60:	09013903          	ld	s2,144(sp)
   12d64:	00100c13          	li	s8,1
   12d68:	06600c93          	li	s9,102
   12d6c:	00100d13          	li	s10,1
   12d70:	b69ff06f          	j	128d8 <_vfprintf_r+0x2110>
   12d74:	05813783          	ld	a5,88(sp)
   12d78:	09013903          	ld	s2,144(sp)
   12d7c:	06600c93          	li	s9,102
   12d80:	0017871b          	addiw	a4,a5,1
   12d84:	0067073b          	addw	a4,a4,t1
   12d88:	00070d1b          	sext.w	s10,a4
   12d8c:	fffd4613          	not	a2,s10
   12d90:	43f65613          	srai	a2,a2,0x3f
   12d94:	00c77733          	and	a4,a4,a2
   12d98:	00070c1b          	sext.w	s8,a4
   12d9c:	b3dff06f          	j	128d8 <_vfprintf_r+0x2110>
   12da0:	02013683          	ld	a3,32(sp)
   12da4:	0006a703          	lw	a4,0(a3)
   12da8:	00868693          	addi	a3,a3,8
   12dac:	00070313          	mv	t1,a4
   12db0:	00075463          	bgez	a4,12db8 <_vfprintf_r+0x25f0>
   12db4:	fff00313          	li	t1,-1
   12db8:	0014ce03          	lbu	t3,1(s1)
   12dbc:	00030a9b          	sext.w	s5,t1
   12dc0:	02d13023          	sd	a3,32(sp)
   12dc4:	00078493          	mv	s1,a5
   12dc8:	badfd06f          	j	10974 <_vfprintf_r+0x1ac>
   12dcc:	00200793          	li	a5,2
   12dd0:	06f13823          	sd	a5,112(sp)
   12dd4:	e7cff06f          	j	12450 <_vfprintf_r+0x1c88>
   12dd8:	04013423          	sd	zero,72(sp)
   12ddc:	04013023          	sd	zero,64(sp)
   12de0:	f21ff06f          	j	12d00 <_vfprintf_r+0x2538>
   12de4:	00013703          	ld	a4,0(sp)
   12de8:	01075783          	lhu	a5,16(a4)
   12dec:	0407e793          	ori	a5,a5,64
   12df0:	00f71823          	sh	a5,16(a4)
   12df4:	d49fd06f          	j	10b3c <_vfprintf_r+0x374>

0000000000012df8 <vfprintf>:
   12df8:	00050793          	mv	a5,a0
   12dfc:	7581b503          	ld	a0,1880(gp) # 24160 <_impure_ptr>
   12e00:	00060693          	mv	a3,a2
   12e04:	00058613          	mv	a2,a1
   12e08:	00078593          	mv	a1,a5
   12e0c:	9bdfd06f          	j	107c8 <_vfprintf_r>

0000000000012e10 <__sbprintf>:
   12e10:	01059783          	lh	a5,16(a1)
   12e14:	0125d703          	lhu	a4,18(a1)
   12e18:	0ac5a303          	lw	t1,172(a1)
   12e1c:	ffd7f793          	andi	a5,a5,-3
   12e20:	0107979b          	slliw	a5,a5,0x10
   12e24:	0305b883          	ld	a7,48(a1)
   12e28:	0405b803          	ld	a6,64(a1)
   12e2c:	0107171b          	slliw	a4,a4,0x10
   12e30:	0107d79b          	srliw	a5,a5,0x10
   12e34:	b3010113          	addi	sp,sp,-1232
   12e38:	00e7e7b3          	or	a5,a5,a4
   12e3c:	4c813023          	sd	s0,1216(sp)
   12e40:	40000713          	li	a4,1024
   12e44:	00f12823          	sw	a5,16(sp)
   12e48:	00058413          	mv	s0,a1
   12e4c:	0b010793          	addi	a5,sp,176
   12e50:	00010593          	mv	a1,sp
   12e54:	4a913c23          	sd	s1,1208(sp)
   12e58:	4b213823          	sd	s2,1200(sp)
   12e5c:	4c113423          	sd	ra,1224(sp)
   12e60:	00050913          	mv	s2,a0
   12e64:	0a612623          	sw	t1,172(sp)
   12e68:	03113823          	sd	a7,48(sp)
   12e6c:	05013023          	sd	a6,64(sp)
   12e70:	00f13023          	sd	a5,0(sp)
   12e74:	00f13c23          	sd	a5,24(sp)
   12e78:	00e12623          	sw	a4,12(sp)
   12e7c:	02e12023          	sw	a4,32(sp)
   12e80:	02012423          	sw	zero,40(sp)
   12e84:	945fd0ef          	jal	ra,107c8 <_vfprintf_r>
   12e88:	00050493          	mv	s1,a0
   12e8c:	02055c63          	bgez	a0,12ec4 <__sbprintf+0xb4>
   12e90:	01015783          	lhu	a5,16(sp)
   12e94:	0407f793          	andi	a5,a5,64
   12e98:	00078863          	beqz	a5,12ea8 <__sbprintf+0x98>
   12e9c:	01045783          	lhu	a5,16(s0)
   12ea0:	0407e793          	ori	a5,a5,64
   12ea4:	00f41823          	sh	a5,16(s0)
   12ea8:	4c813083          	ld	ra,1224(sp)
   12eac:	4c013403          	ld	s0,1216(sp)
   12eb0:	4b013903          	ld	s2,1200(sp)
   12eb4:	00048513          	mv	a0,s1
   12eb8:	4b813483          	ld	s1,1208(sp)
   12ebc:	4d010113          	addi	sp,sp,1232
   12ec0:	00008067          	ret
   12ec4:	00010593          	mv	a1,sp
   12ec8:	00090513          	mv	a0,s2
   12ecc:	4c4000ef          	jal	ra,13390 <_fflush_r>
   12ed0:	fc0500e3          	beqz	a0,12e90 <__sbprintf+0x80>
   12ed4:	fff00493          	li	s1,-1
   12ed8:	fb9ff06f          	j	12e90 <__sbprintf+0x80>

0000000000012edc <__swsetup_r>:
   12edc:	7581b783          	ld	a5,1880(gp) # 24160 <_impure_ptr>
   12ee0:	fe010113          	addi	sp,sp,-32
   12ee4:	00813823          	sd	s0,16(sp)
   12ee8:	00913423          	sd	s1,8(sp)
   12eec:	00113c23          	sd	ra,24(sp)
   12ef0:	00050493          	mv	s1,a0
   12ef4:	00058413          	mv	s0,a1
   12ef8:	00078663          	beqz	a5,12f04 <__swsetup_r+0x28>
   12efc:	0507a703          	lw	a4,80(a5)
   12f00:	08070063          	beqz	a4,12f80 <__swsetup_r+0xa4>
   12f04:	01041783          	lh	a5,16(s0)
   12f08:	0087f713          	andi	a4,a5,8
   12f0c:	08070463          	beqz	a4,12f94 <__swsetup_r+0xb8>
   12f10:	01843703          	ld	a4,24(s0)
   12f14:	0a070063          	beqz	a4,12fb4 <__swsetup_r+0xd8>
   12f18:	0017f693          	andi	a3,a5,1
   12f1c:	02068863          	beqz	a3,12f4c <__swsetup_r+0x70>
   12f20:	02042683          	lw	a3,32(s0)
   12f24:	00042623          	sw	zero,12(s0)
   12f28:	00000513          	li	a0,0
   12f2c:	40d006bb          	negw	a3,a3
   12f30:	02d42423          	sw	a3,40(s0)
   12f34:	02070a63          	beqz	a4,12f68 <__swsetup_r+0x8c>
   12f38:	01813083          	ld	ra,24(sp)
   12f3c:	01013403          	ld	s0,16(sp)
   12f40:	00813483          	ld	s1,8(sp)
   12f44:	02010113          	addi	sp,sp,32
   12f48:	00008067          	ret
   12f4c:	0027f693          	andi	a3,a5,2
   12f50:	00000613          	li	a2,0
   12f54:	00069463          	bnez	a3,12f5c <__swsetup_r+0x80>
   12f58:	02042603          	lw	a2,32(s0)
   12f5c:	00c42623          	sw	a2,12(s0)
   12f60:	00000513          	li	a0,0
   12f64:	fc071ae3          	bnez	a4,12f38 <__swsetup_r+0x5c>
   12f68:	0807f713          	andi	a4,a5,128
   12f6c:	fc0706e3          	beqz	a4,12f38 <__swsetup_r+0x5c>
   12f70:	0407e793          	ori	a5,a5,64
   12f74:	00f41823          	sh	a5,16(s0)
   12f78:	fff00513          	li	a0,-1
   12f7c:	fbdff06f          	j	12f38 <__swsetup_r+0x5c>
   12f80:	00078513          	mv	a0,a5
   12f84:	039000ef          	jal	ra,137bc <__sinit>
   12f88:	01041783          	lh	a5,16(s0)
   12f8c:	0087f713          	andi	a4,a5,8
   12f90:	f80710e3          	bnez	a4,12f10 <__swsetup_r+0x34>
   12f94:	0107f713          	andi	a4,a5,16
   12f98:	06070a63          	beqz	a4,1300c <__swsetup_r+0x130>
   12f9c:	0047f713          	andi	a4,a5,4
   12fa0:	02071c63          	bnez	a4,12fd8 <__swsetup_r+0xfc>
   12fa4:	01843703          	ld	a4,24(s0)
   12fa8:	0087e793          	ori	a5,a5,8
   12fac:	00f41823          	sh	a5,16(s0)
   12fb0:	f60714e3          	bnez	a4,12f18 <__swsetup_r+0x3c>
   12fb4:	2807f693          	andi	a3,a5,640
   12fb8:	20000613          	li	a2,512
   12fbc:	f4c68ee3          	beq	a3,a2,12f18 <__swsetup_r+0x3c>
   12fc0:	00040593          	mv	a1,s0
   12fc4:	00048513          	mv	a0,s1
   12fc8:	425030ef          	jal	ra,16bec <__smakebuf_r>
   12fcc:	01041783          	lh	a5,16(s0)
   12fd0:	01843703          	ld	a4,24(s0)
   12fd4:	f45ff06f          	j	12f18 <__swsetup_r+0x3c>
   12fd8:	05843583          	ld	a1,88(s0)
   12fdc:	00058e63          	beqz	a1,12ff8 <__swsetup_r+0x11c>
   12fe0:	07440713          	addi	a4,s0,116
   12fe4:	00e58863          	beq	a1,a4,12ff4 <__swsetup_r+0x118>
   12fe8:	00048513          	mv	a0,s1
   12fec:	1a9000ef          	jal	ra,13994 <_free_r>
   12ff0:	01041783          	lh	a5,16(s0)
   12ff4:	04043c23          	sd	zero,88(s0)
   12ff8:	01843703          	ld	a4,24(s0)
   12ffc:	fdb7f793          	andi	a5,a5,-37
   13000:	00042423          	sw	zero,8(s0)
   13004:	00e43023          	sd	a4,0(s0)
   13008:	fa1ff06f          	j	12fa8 <__swsetup_r+0xcc>
   1300c:	00900713          	li	a4,9
   13010:	00e4a023          	sw	a4,0(s1)
   13014:	0407e793          	ori	a5,a5,64
   13018:	f5dff06f          	j	12f74 <__swsetup_r+0x98>

000000000001301c <__call_exitprocs>:
   1301c:	fb010113          	addi	sp,sp,-80
   13020:	03413023          	sd	s4,32(sp)
   13024:	7481ba03          	ld	s4,1864(gp) # 24150 <_global_impure_ptr>
   13028:	03213823          	sd	s2,48(sp)
   1302c:	04113423          	sd	ra,72(sp)
   13030:	1f8a3903          	ld	s2,504(s4)
   13034:	04813023          	sd	s0,64(sp)
   13038:	02913c23          	sd	s1,56(sp)
   1303c:	03313423          	sd	s3,40(sp)
   13040:	01513c23          	sd	s5,24(sp)
   13044:	01613823          	sd	s6,16(sp)
   13048:	01713423          	sd	s7,8(sp)
   1304c:	01813023          	sd	s8,0(sp)
   13050:	04090063          	beqz	s2,13090 <__call_exitprocs+0x74>
   13054:	00050b13          	mv	s6,a0
   13058:	00058b93          	mv	s7,a1
   1305c:	00100a93          	li	s5,1
   13060:	fff00993          	li	s3,-1
   13064:	00892483          	lw	s1,8(s2)
   13068:	fff4841b          	addiw	s0,s1,-1
   1306c:	02044263          	bltz	s0,13090 <__call_exitprocs+0x74>
   13070:	00349493          	slli	s1,s1,0x3
   13074:	009904b3          	add	s1,s2,s1
   13078:	040b8463          	beqz	s7,130c0 <__call_exitprocs+0xa4>
   1307c:	2084b783          	ld	a5,520(s1)
   13080:	05778063          	beq	a5,s7,130c0 <__call_exitprocs+0xa4>
   13084:	fff4041b          	addiw	s0,s0,-1
   13088:	ff848493          	addi	s1,s1,-8
   1308c:	ff3416e3          	bne	s0,s3,13078 <__call_exitprocs+0x5c>
   13090:	04813083          	ld	ra,72(sp)
   13094:	04013403          	ld	s0,64(sp)
   13098:	03813483          	ld	s1,56(sp)
   1309c:	03013903          	ld	s2,48(sp)
   130a0:	02813983          	ld	s3,40(sp)
   130a4:	02013a03          	ld	s4,32(sp)
   130a8:	01813a83          	ld	s5,24(sp)
   130ac:	01013b03          	ld	s6,16(sp)
   130b0:	00813b83          	ld	s7,8(sp)
   130b4:	00013c03          	ld	s8,0(sp)
   130b8:	05010113          	addi	sp,sp,80
   130bc:	00008067          	ret
   130c0:	00892783          	lw	a5,8(s2)
   130c4:	0084b703          	ld	a4,8(s1)
   130c8:	fff7879b          	addiw	a5,a5,-1
   130cc:	06878263          	beq	a5,s0,13130 <__call_exitprocs+0x114>
   130d0:	0004b423          	sd	zero,8(s1)
   130d4:	fa0708e3          	beqz	a4,13084 <__call_exitprocs+0x68>
   130d8:	31092783          	lw	a5,784(s2)
   130dc:	008a96bb          	sllw	a3,s5,s0
   130e0:	00892c03          	lw	s8,8(s2)
   130e4:	00d7f7b3          	and	a5,a5,a3
   130e8:	0007879b          	sext.w	a5,a5
   130ec:	02079263          	bnez	a5,13110 <__call_exitprocs+0xf4>
   130f0:	000700e7          	jalr	a4
   130f4:	00892703          	lw	a4,8(s2)
   130f8:	1f8a3783          	ld	a5,504(s4)
   130fc:	01871463          	bne	a4,s8,13104 <__call_exitprocs+0xe8>
   13100:	f92782e3          	beq	a5,s2,13084 <__call_exitprocs+0x68>
   13104:	f80786e3          	beqz	a5,13090 <__call_exitprocs+0x74>
   13108:	00078913          	mv	s2,a5
   1310c:	f59ff06f          	j	13064 <__call_exitprocs+0x48>
   13110:	31492783          	lw	a5,788(s2)
   13114:	1084b583          	ld	a1,264(s1)
   13118:	00d7f7b3          	and	a5,a5,a3
   1311c:	0007879b          	sext.w	a5,a5
   13120:	00079c63          	bnez	a5,13138 <__call_exitprocs+0x11c>
   13124:	000b0513          	mv	a0,s6
   13128:	000700e7          	jalr	a4
   1312c:	fc9ff06f          	j	130f4 <__call_exitprocs+0xd8>
   13130:	00892423          	sw	s0,8(s2)
   13134:	fa1ff06f          	j	130d4 <__call_exitprocs+0xb8>
   13138:	00058513          	mv	a0,a1
   1313c:	000700e7          	jalr	a4
   13140:	fb5ff06f          	j	130f4 <__call_exitprocs+0xd8>

0000000000013144 <__sflush_r>:
   13144:	01059783          	lh	a5,16(a1)
   13148:	fd010113          	addi	sp,sp,-48
   1314c:	02813023          	sd	s0,32(sp)
   13150:	01313423          	sd	s3,8(sp)
   13154:	02113423          	sd	ra,40(sp)
   13158:	00913c23          	sd	s1,24(sp)
   1315c:	01213823          	sd	s2,16(sp)
   13160:	0087f713          	andi	a4,a5,8
   13164:	00058413          	mv	s0,a1
   13168:	00050993          	mv	s3,a0
   1316c:	12071263          	bnez	a4,13290 <__sflush_r+0x14c>
   13170:	00001737          	lui	a4,0x1
   13174:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8e8>
   13178:	0085a683          	lw	a3,8(a1)
   1317c:	00e7e733          	or	a4,a5,a4
   13180:	00e59823          	sh	a4,16(a1)
   13184:	18d05863          	blez	a3,13314 <__sflush_r+0x1d0>
   13188:	04843803          	ld	a6,72(s0)
   1318c:	0e080263          	beqz	a6,13270 <__sflush_r+0x12c>
   13190:	00c7d793          	srli	a5,a5,0xc
   13194:	0009a483          	lw	s1,0(s3)
   13198:	0017f793          	andi	a5,a5,1
   1319c:	0009a023          	sw	zero,0(s3)
   131a0:	03043583          	ld	a1,48(s0)
   131a4:	18079063          	bnez	a5,13324 <__sflush_r+0x1e0>
   131a8:	00000613          	li	a2,0
   131ac:	00100693          	li	a3,1
   131b0:	00098513          	mv	a0,s3
   131b4:	000800e7          	jalr	a6
   131b8:	fff00793          	li	a5,-1
   131bc:	00050613          	mv	a2,a0
   131c0:	1af50063          	beq	a0,a5,13360 <__sflush_r+0x21c>
   131c4:	01041703          	lh	a4,16(s0)
   131c8:	04843803          	ld	a6,72(s0)
   131cc:	03043583          	ld	a1,48(s0)
   131d0:	00477713          	andi	a4,a4,4
   131d4:	00070e63          	beqz	a4,131f0 <__sflush_r+0xac>
   131d8:	00842703          	lw	a4,8(s0)
   131dc:	05843783          	ld	a5,88(s0)
   131e0:	40e60633          	sub	a2,a2,a4
   131e4:	00078663          	beqz	a5,131f0 <__sflush_r+0xac>
   131e8:	07042783          	lw	a5,112(s0)
   131ec:	40f60633          	sub	a2,a2,a5
   131f0:	00000693          	li	a3,0
   131f4:	00098513          	mv	a0,s3
   131f8:	000800e7          	jalr	a6
   131fc:	fff00793          	li	a5,-1
   13200:	12f51663          	bne	a0,a5,1332c <__sflush_r+0x1e8>
   13204:	0009a683          	lw	a3,0(s3)
   13208:	01d00793          	li	a5,29
   1320c:	0cd7ee63          	bltu	a5,a3,132e8 <__sflush_r+0x1a4>
   13210:	dfc00737          	lui	a4,0xdfc00
   13214:	ffe70713          	addi	a4,a4,-2 # ffffffffdfbffffe <__BSS_END__+0xffffffffdfbdbdf6>
   13218:	40d75733          	sra	a4,a4,a3
   1321c:	00177713          	andi	a4,a4,1
   13220:	01041783          	lh	a5,16(s0)
   13224:	0c071463          	bnez	a4,132ec <__sflush_r+0x1a8>
   13228:	01843603          	ld	a2,24(s0)
   1322c:	fffff737          	lui	a4,0xfffff
   13230:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdb5f7>
   13234:	00e7f733          	and	a4,a5,a4
   13238:	00c7d793          	srli	a5,a5,0xc
   1323c:	00e41823          	sh	a4,16(s0)
   13240:	00042423          	sw	zero,8(s0)
   13244:	00c43023          	sd	a2,0(s0)
   13248:	0017f793          	andi	a5,a5,1
   1324c:	12079c63          	bnez	a5,13384 <__sflush_r+0x240>
   13250:	05843583          	ld	a1,88(s0)
   13254:	0099a023          	sw	s1,0(s3)
   13258:	00058c63          	beqz	a1,13270 <__sflush_r+0x12c>
   1325c:	07440793          	addi	a5,s0,116
   13260:	00f58663          	beq	a1,a5,1326c <__sflush_r+0x128>
   13264:	00098513          	mv	a0,s3
   13268:	72c000ef          	jal	ra,13994 <_free_r>
   1326c:	04043c23          	sd	zero,88(s0)
   13270:	00000513          	li	a0,0
   13274:	02813083          	ld	ra,40(sp)
   13278:	02013403          	ld	s0,32(sp)
   1327c:	01813483          	ld	s1,24(sp)
   13280:	01013903          	ld	s2,16(sp)
   13284:	00813983          	ld	s3,8(sp)
   13288:	03010113          	addi	sp,sp,48
   1328c:	00008067          	ret
   13290:	0185b903          	ld	s2,24(a1)
   13294:	fc090ee3          	beqz	s2,13270 <__sflush_r+0x12c>
   13298:	0005b483          	ld	s1,0(a1)
   1329c:	0037f793          	andi	a5,a5,3
   132a0:	0125b023          	sd	s2,0(a1)
   132a4:	412484bb          	subw	s1,s1,s2
   132a8:	00000713          	li	a4,0
   132ac:	00079463          	bnez	a5,132b4 <__sflush_r+0x170>
   132b0:	0205a703          	lw	a4,32(a1)
   132b4:	00e42623          	sw	a4,12(s0)
   132b8:	00904863          	bgtz	s1,132c8 <__sflush_r+0x184>
   132bc:	fb5ff06f          	j	13270 <__sflush_r+0x12c>
   132c0:	00a90933          	add	s2,s2,a0
   132c4:	fa9056e3          	blez	s1,13270 <__sflush_r+0x12c>
   132c8:	04043783          	ld	a5,64(s0)
   132cc:	03043583          	ld	a1,48(s0)
   132d0:	00048693          	mv	a3,s1
   132d4:	00090613          	mv	a2,s2
   132d8:	00098513          	mv	a0,s3
   132dc:	000780e7          	jalr	a5
   132e0:	40a484bb          	subw	s1,s1,a0
   132e4:	fca04ee3          	bgtz	a0,132c0 <__sflush_r+0x17c>
   132e8:	01041783          	lh	a5,16(s0)
   132ec:	0407e793          	ori	a5,a5,64
   132f0:	02813083          	ld	ra,40(sp)
   132f4:	00f41823          	sh	a5,16(s0)
   132f8:	02013403          	ld	s0,32(sp)
   132fc:	01813483          	ld	s1,24(sp)
   13300:	01013903          	ld	s2,16(sp)
   13304:	00813983          	ld	s3,8(sp)
   13308:	fff00513          	li	a0,-1
   1330c:	03010113          	addi	sp,sp,48
   13310:	00008067          	ret
   13314:	0705a683          	lw	a3,112(a1)
   13318:	e6d048e3          	bgtz	a3,13188 <__sflush_r+0x44>
   1331c:	00000513          	li	a0,0
   13320:	f55ff06f          	j	13274 <__sflush_r+0x130>
   13324:	09043603          	ld	a2,144(s0)
   13328:	ea9ff06f          	j	131d0 <__sflush_r+0x8c>
   1332c:	01041783          	lh	a5,16(s0)
   13330:	01843683          	ld	a3,24(s0)
   13334:	fffff737          	lui	a4,0xfffff
   13338:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdb5f7>
   1333c:	00e7f733          	and	a4,a5,a4
   13340:	00c7d793          	srli	a5,a5,0xc
   13344:	00e41823          	sh	a4,16(s0)
   13348:	00042423          	sw	zero,8(s0)
   1334c:	00d43023          	sd	a3,0(s0)
   13350:	0017f793          	andi	a5,a5,1
   13354:	ee078ee3          	beqz	a5,13250 <__sflush_r+0x10c>
   13358:	08a43823          	sd	a0,144(s0)
   1335c:	ef5ff06f          	j	13250 <__sflush_r+0x10c>
   13360:	0009a783          	lw	a5,0(s3)
   13364:	e60780e3          	beqz	a5,131c4 <__sflush_r+0x80>
   13368:	01d00713          	li	a4,29
   1336c:	00e78663          	beq	a5,a4,13378 <__sflush_r+0x234>
   13370:	01600713          	li	a4,22
   13374:	f6e79ae3          	bne	a5,a4,132e8 <__sflush_r+0x1a4>
   13378:	0099a023          	sw	s1,0(s3)
   1337c:	00000513          	li	a0,0
   13380:	ef5ff06f          	j	13274 <__sflush_r+0x130>
   13384:	ec0696e3          	bnez	a3,13250 <__sflush_r+0x10c>
   13388:	08a43823          	sd	a0,144(s0)
   1338c:	ec5ff06f          	j	13250 <__sflush_r+0x10c>

0000000000013390 <_fflush_r>:
   13390:	fe010113          	addi	sp,sp,-32
   13394:	00813823          	sd	s0,16(sp)
   13398:	00113c23          	sd	ra,24(sp)
   1339c:	00050413          	mv	s0,a0
   133a0:	00050663          	beqz	a0,133ac <_fflush_r+0x1c>
   133a4:	05052783          	lw	a5,80(a0)
   133a8:	02078063          	beqz	a5,133c8 <_fflush_r+0x38>
   133ac:	01059783          	lh	a5,16(a1)
   133b0:	02079663          	bnez	a5,133dc <_fflush_r+0x4c>
   133b4:	01813083          	ld	ra,24(sp)
   133b8:	01013403          	ld	s0,16(sp)
   133bc:	00000513          	li	a0,0
   133c0:	02010113          	addi	sp,sp,32
   133c4:	00008067          	ret
   133c8:	00b13423          	sd	a1,8(sp)
   133cc:	3f0000ef          	jal	ra,137bc <__sinit>
   133d0:	00813583          	ld	a1,8(sp)
   133d4:	01059783          	lh	a5,16(a1)
   133d8:	fc078ee3          	beqz	a5,133b4 <_fflush_r+0x24>
   133dc:	00040513          	mv	a0,s0
   133e0:	01013403          	ld	s0,16(sp)
   133e4:	01813083          	ld	ra,24(sp)
   133e8:	02010113          	addi	sp,sp,32
   133ec:	d59ff06f          	j	13144 <__sflush_r>

00000000000133f0 <fflush>:
   133f0:	06050663          	beqz	a0,1345c <fflush+0x6c>
   133f4:	fe010113          	addi	sp,sp,-32
   133f8:	00813823          	sd	s0,16(sp)
   133fc:	00050413          	mv	s0,a0
   13400:	7581b503          	ld	a0,1880(gp) # 24160 <_impure_ptr>
   13404:	00113c23          	sd	ra,24(sp)
   13408:	00050663          	beqz	a0,13414 <fflush+0x24>
   1340c:	05052783          	lw	a5,80(a0)
   13410:	02078a63          	beqz	a5,13444 <fflush+0x54>
   13414:	01041783          	lh	a5,16(s0)
   13418:	00079c63          	bnez	a5,13430 <fflush+0x40>
   1341c:	01813083          	ld	ra,24(sp)
   13420:	01013403          	ld	s0,16(sp)
   13424:	00000513          	li	a0,0
   13428:	02010113          	addi	sp,sp,32
   1342c:	00008067          	ret
   13430:	00040593          	mv	a1,s0
   13434:	01013403          	ld	s0,16(sp)
   13438:	01813083          	ld	ra,24(sp)
   1343c:	02010113          	addi	sp,sp,32
   13440:	d05ff06f          	j	13144 <__sflush_r>
   13444:	00a13423          	sd	a0,8(sp)
   13448:	374000ef          	jal	ra,137bc <__sinit>
   1344c:	01041783          	lh	a5,16(s0)
   13450:	00813503          	ld	a0,8(sp)
   13454:	fc0784e3          	beqz	a5,1341c <fflush+0x2c>
   13458:	fd9ff06f          	j	13430 <fflush+0x40>
   1345c:	7481b503          	ld	a0,1864(gp) # 24150 <_global_impure_ptr>
   13460:	000135b7          	lui	a1,0x13
   13464:	39058593          	addi	a1,a1,912 # 13390 <_fflush_r>
   13468:	10d0006f          	j	13d74 <_fwalk_reent>

000000000001346c <__fp_lock>:
   1346c:	00000513          	li	a0,0
   13470:	00008067          	ret

0000000000013474 <_cleanup_r>:
   13474:	0001d5b7          	lui	a1,0x1d
   13478:	f7058593          	addi	a1,a1,-144 # 1cf70 <_fclose_r>
   1347c:	0f90006f          	j	13d74 <_fwalk_reent>

0000000000013480 <__fp_unlock>:
   13480:	00000513          	li	a0,0
   13484:	00008067          	ret

0000000000013488 <__sinit.part.0>:
   13488:	fc010113          	addi	sp,sp,-64
   1348c:	000137b7          	lui	a5,0x13
   13490:	02113c23          	sd	ra,56(sp)
   13494:	02813823          	sd	s0,48(sp)
   13498:	02913423          	sd	s1,40(sp)
   1349c:	03213023          	sd	s2,32(sp)
   134a0:	01313c23          	sd	s3,24(sp)
   134a4:	01413823          	sd	s4,16(sp)
   134a8:	01513423          	sd	s5,8(sp)
   134ac:	01613023          	sd	s6,0(sp)
   134b0:	00853403          	ld	s0,8(a0)
   134b4:	47478793          	addi	a5,a5,1140 # 13474 <_cleanup_r>
   134b8:	04f53c23          	sd	a5,88(a0)
   134bc:	53850713          	addi	a4,a0,1336
   134c0:	00300793          	li	a5,3
   134c4:	52e53823          	sd	a4,1328(a0)
   134c8:	52f52423          	sw	a5,1320(a0)
   134cc:	52053023          	sd	zero,1312(a0)
   134d0:	00400793          	li	a5,4
   134d4:	00050913          	mv	s2,a0
   134d8:	00f42823          	sw	a5,16(s0)
   134dc:	00800613          	li	a2,8
   134e0:	00000593          	li	a1,0
   134e4:	00043023          	sd	zero,0(s0)
   134e8:	00043423          	sd	zero,8(s0)
   134ec:	0a042623          	sw	zero,172(s0)
   134f0:	00043c23          	sd	zero,24(s0)
   134f4:	02042023          	sw	zero,32(s0)
   134f8:	02042423          	sw	zero,40(s0)
   134fc:	0a440513          	addi	a0,s0,164
   13500:	8b0fd0ef          	jal	ra,105b0 <memset>
   13504:	00019b37          	lui	s6,0x19
   13508:	01093483          	ld	s1,16(s2)
   1350c:	00019ab7          	lui	s5,0x19
   13510:	00019a37          	lui	s4,0x19
   13514:	000199b7          	lui	s3,0x19
   13518:	cb0b0b13          	addi	s6,s6,-848 # 18cb0 <__sread>
   1351c:	d14a8a93          	addi	s5,s5,-748 # 18d14 <__swrite>
   13520:	d9ca0a13          	addi	s4,s4,-612 # 18d9c <__sseek>
   13524:	e1498993          	addi	s3,s3,-492 # 18e14 <__sclose>
   13528:	000107b7          	lui	a5,0x10
   1352c:	03643c23          	sd	s6,56(s0)
   13530:	05543023          	sd	s5,64(s0)
   13534:	05443423          	sd	s4,72(s0)
   13538:	05343823          	sd	s3,80(s0)
   1353c:	02843823          	sd	s0,48(s0)
   13540:	00978793          	addi	a5,a5,9 # 10009 <exit-0xdf>
   13544:	00f4a823          	sw	a5,16(s1)
   13548:	00800613          	li	a2,8
   1354c:	00000593          	li	a1,0
   13550:	0004b023          	sd	zero,0(s1)
   13554:	0004b423          	sd	zero,8(s1)
   13558:	0a04a623          	sw	zero,172(s1)
   1355c:	0004bc23          	sd	zero,24(s1)
   13560:	0204a023          	sw	zero,32(s1)
   13564:	0204a423          	sw	zero,40(s1)
   13568:	0a448513          	addi	a0,s1,164
   1356c:	844fd0ef          	jal	ra,105b0 <memset>
   13570:	01893403          	ld	s0,24(s2)
   13574:	000207b7          	lui	a5,0x20
   13578:	0364bc23          	sd	s6,56(s1)
   1357c:	0554b023          	sd	s5,64(s1)
   13580:	0544b423          	sd	s4,72(s1)
   13584:	0534b823          	sd	s3,80(s1)
   13588:	0294b823          	sd	s1,48(s1)
   1358c:	01278793          	addi	a5,a5,18 # 20012 <_read+0x22>
   13590:	00f42823          	sw	a5,16(s0)
   13594:	00043023          	sd	zero,0(s0)
   13598:	00043423          	sd	zero,8(s0)
   1359c:	0a042623          	sw	zero,172(s0)
   135a0:	00043c23          	sd	zero,24(s0)
   135a4:	02042023          	sw	zero,32(s0)
   135a8:	02042423          	sw	zero,40(s0)
   135ac:	0a440513          	addi	a0,s0,164
   135b0:	00800613          	li	a2,8
   135b4:	00000593          	li	a1,0
   135b8:	ff9fc0ef          	jal	ra,105b0 <memset>
   135bc:	03813083          	ld	ra,56(sp)
   135c0:	03643c23          	sd	s6,56(s0)
   135c4:	05543023          	sd	s5,64(s0)
   135c8:	05443423          	sd	s4,72(s0)
   135cc:	05343823          	sd	s3,80(s0)
   135d0:	02843823          	sd	s0,48(s0)
   135d4:	03013403          	ld	s0,48(sp)
   135d8:	00100793          	li	a5,1
   135dc:	04f92823          	sw	a5,80(s2)
   135e0:	02813483          	ld	s1,40(sp)
   135e4:	02013903          	ld	s2,32(sp)
   135e8:	01813983          	ld	s3,24(sp)
   135ec:	01013a03          	ld	s4,16(sp)
   135f0:	00813a83          	ld	s5,8(sp)
   135f4:	00013b03          	ld	s6,0(sp)
   135f8:	04010113          	addi	sp,sp,64
   135fc:	00008067          	ret

0000000000013600 <__sfmoreglue>:
   13600:	fe010113          	addi	sp,sp,-32
   13604:	fff5879b          	addiw	a5,a1,-1
   13608:	00813823          	sd	s0,16(sp)
   1360c:	00179413          	slli	s0,a5,0x1
   13610:	00f40433          	add	s0,s0,a5
   13614:	00241413          	slli	s0,s0,0x2
   13618:	40f40433          	sub	s0,s0,a5
   1361c:	00441413          	slli	s0,s0,0x4
   13620:	01213023          	sd	s2,0(sp)
   13624:	00058913          	mv	s2,a1
   13628:	0c840593          	addi	a1,s0,200
   1362c:	00913423          	sd	s1,8(sp)
   13630:	00113c23          	sd	ra,24(sp)
   13634:	021030ef          	jal	ra,16e54 <_malloc_r>
   13638:	00050493          	mv	s1,a0
   1363c:	02050063          	beqz	a0,1365c <__sfmoreglue+0x5c>
   13640:	01850513          	addi	a0,a0,24
   13644:	0004b023          	sd	zero,0(s1)
   13648:	0124a423          	sw	s2,8(s1)
   1364c:	00a4b823          	sd	a0,16(s1)
   13650:	0b040613          	addi	a2,s0,176
   13654:	00000593          	li	a1,0
   13658:	f59fc0ef          	jal	ra,105b0 <memset>
   1365c:	01813083          	ld	ra,24(sp)
   13660:	01013403          	ld	s0,16(sp)
   13664:	00013903          	ld	s2,0(sp)
   13668:	00048513          	mv	a0,s1
   1366c:	00813483          	ld	s1,8(sp)
   13670:	02010113          	addi	sp,sp,32
   13674:	00008067          	ret

0000000000013678 <__sfp>:
   13678:	fe010113          	addi	sp,sp,-32
   1367c:	01213023          	sd	s2,0(sp)
   13680:	7481b903          	ld	s2,1864(gp) # 24150 <_global_impure_ptr>
   13684:	00913423          	sd	s1,8(sp)
   13688:	00113c23          	sd	ra,24(sp)
   1368c:	05092783          	lw	a5,80(s2)
   13690:	00813823          	sd	s0,16(sp)
   13694:	00050493          	mv	s1,a0
   13698:	0a078c63          	beqz	a5,13750 <__sfp+0xd8>
   1369c:	52090913          	addi	s2,s2,1312
   136a0:	00892703          	lw	a4,8(s2)
   136a4:	01093403          	ld	s0,16(s2)
   136a8:	08e05c63          	blez	a4,13740 <__sfp+0xc8>
   136ac:	02071713          	slli	a4,a4,0x20
   136b0:	02075713          	srli	a4,a4,0x20
   136b4:	00171793          	slli	a5,a4,0x1
   136b8:	00e787b3          	add	a5,a5,a4
   136bc:	00279793          	slli	a5,a5,0x2
   136c0:	40e787b3          	sub	a5,a5,a4
   136c4:	00479793          	slli	a5,a5,0x4
   136c8:	00f407b3          	add	a5,s0,a5
   136cc:	00c0006f          	j	136d8 <__sfp+0x60>
   136d0:	0b040413          	addi	s0,s0,176
   136d4:	06f40663          	beq	s0,a5,13740 <__sfp+0xc8>
   136d8:	01041703          	lh	a4,16(s0)
   136dc:	fe071ae3          	bnez	a4,136d0 <__sfp+0x58>
   136e0:	ffff07b7          	lui	a5,0xffff0
   136e4:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcbdf9>
   136e8:	00f42823          	sw	a5,16(s0)
   136ec:	0a042623          	sw	zero,172(s0)
   136f0:	00043023          	sd	zero,0(s0)
   136f4:	00043423          	sd	zero,8(s0)
   136f8:	00043c23          	sd	zero,24(s0)
   136fc:	02042023          	sw	zero,32(s0)
   13700:	02042423          	sw	zero,40(s0)
   13704:	00800613          	li	a2,8
   13708:	00000593          	li	a1,0
   1370c:	0a440513          	addi	a0,s0,164
   13710:	ea1fc0ef          	jal	ra,105b0 <memset>
   13714:	04043c23          	sd	zero,88(s0)
   13718:	06042023          	sw	zero,96(s0)
   1371c:	06043c23          	sd	zero,120(s0)
   13720:	08042023          	sw	zero,128(s0)
   13724:	01813083          	ld	ra,24(sp)
   13728:	00040513          	mv	a0,s0
   1372c:	01013403          	ld	s0,16(sp)
   13730:	00813483          	ld	s1,8(sp)
   13734:	00013903          	ld	s2,0(sp)
   13738:	02010113          	addi	sp,sp,32
   1373c:	00008067          	ret
   13740:	00093403          	ld	s0,0(s2)
   13744:	00040c63          	beqz	s0,1375c <__sfp+0xe4>
   13748:	00040913          	mv	s2,s0
   1374c:	f55ff06f          	j	136a0 <__sfp+0x28>
   13750:	00090513          	mv	a0,s2
   13754:	d35ff0ef          	jal	ra,13488 <__sinit.part.0>
   13758:	f45ff06f          	j	1369c <__sfp+0x24>
   1375c:	2d800593          	li	a1,728
   13760:	00048513          	mv	a0,s1
   13764:	6f0030ef          	jal	ra,16e54 <_malloc_r>
   13768:	00050413          	mv	s0,a0
   1376c:	02050863          	beqz	a0,1379c <__sfp+0x124>
   13770:	01850513          	addi	a0,a0,24
   13774:	00400793          	li	a5,4
   13778:	00043023          	sd	zero,0(s0)
   1377c:	00f42423          	sw	a5,8(s0)
   13780:	00a43823          	sd	a0,16(s0)
   13784:	2c000613          	li	a2,704
   13788:	00000593          	li	a1,0
   1378c:	e25fc0ef          	jal	ra,105b0 <memset>
   13790:	00893023          	sd	s0,0(s2)
   13794:	00040913          	mv	s2,s0
   13798:	f09ff06f          	j	136a0 <__sfp+0x28>
   1379c:	00093023          	sd	zero,0(s2)
   137a0:	00c00793          	li	a5,12
   137a4:	00f4a023          	sw	a5,0(s1)
   137a8:	f7dff06f          	j	13724 <__sfp+0xac>

00000000000137ac <_cleanup>:
   137ac:	7481b503          	ld	a0,1864(gp) # 24150 <_global_impure_ptr>
   137b0:	0001d5b7          	lui	a1,0x1d
   137b4:	f7058593          	addi	a1,a1,-144 # 1cf70 <_fclose_r>
   137b8:	5bc0006f          	j	13d74 <_fwalk_reent>

00000000000137bc <__sinit>:
   137bc:	05052783          	lw	a5,80(a0)
   137c0:	00078463          	beqz	a5,137c8 <__sinit+0xc>
   137c4:	00008067          	ret
   137c8:	cc1ff06f          	j	13488 <__sinit.part.0>

00000000000137cc <__sfp_lock_acquire>:
   137cc:	00008067          	ret

00000000000137d0 <__sfp_lock_release>:
   137d0:	00008067          	ret

00000000000137d4 <__sinit_lock_acquire>:
   137d4:	00008067          	ret

00000000000137d8 <__sinit_lock_release>:
   137d8:	00008067          	ret

00000000000137dc <__fp_lock_all>:
   137dc:	7581b503          	ld	a0,1880(gp) # 24160 <_impure_ptr>
   137e0:	000135b7          	lui	a1,0x13
   137e4:	46c58593          	addi	a1,a1,1132 # 1346c <__fp_lock>
   137e8:	4cc0006f          	j	13cb4 <_fwalk>

00000000000137ec <__fp_unlock_all>:
   137ec:	7581b503          	ld	a0,1880(gp) # 24160 <_impure_ptr>
   137f0:	000135b7          	lui	a1,0x13
   137f4:	48058593          	addi	a1,a1,1152 # 13480 <__fp_unlock>
   137f8:	4bc0006f          	j	13cb4 <_fwalk>

00000000000137fc <__libc_fini_array>:
   137fc:	fe010113          	addi	sp,sp,-32
   13800:	00813823          	sd	s0,16(sp)
   13804:	000237b7          	lui	a5,0x23
   13808:	00023437          	lui	s0,0x23
   1380c:	01878793          	addi	a5,a5,24 # 23018 <__do_global_dtors_aux_fini_array_entry>
   13810:	02040413          	addi	s0,s0,32 # 23020 <impure_data>
   13814:	40f40433          	sub	s0,s0,a5
   13818:	00913423          	sd	s1,8(sp)
   1381c:	00113c23          	sd	ra,24(sp)
   13820:	40345493          	srai	s1,s0,0x3
   13824:	02048063          	beqz	s1,13844 <__libc_fini_array+0x48>
   13828:	ff840413          	addi	s0,s0,-8
   1382c:	00f40433          	add	s0,s0,a5
   13830:	00043783          	ld	a5,0(s0)
   13834:	fff48493          	addi	s1,s1,-1
   13838:	ff840413          	addi	s0,s0,-8
   1383c:	000780e7          	jalr	a5
   13840:	fe0498e3          	bnez	s1,13830 <__libc_fini_array+0x34>
   13844:	01813083          	ld	ra,24(sp)
   13848:	01013403          	ld	s0,16(sp)
   1384c:	00813483          	ld	s1,8(sp)
   13850:	02010113          	addi	sp,sp,32
   13854:	00008067          	ret

0000000000013858 <_malloc_trim_r>:
   13858:	fd010113          	addi	sp,sp,-48
   1385c:	01313423          	sd	s3,8(sp)
   13860:	000249b7          	lui	s3,0x24
   13864:	02813023          	sd	s0,32(sp)
   13868:	00913c23          	sd	s1,24(sp)
   1386c:	01213823          	sd	s2,16(sp)
   13870:	01413023          	sd	s4,0(sp)
   13874:	02113423          	sd	ra,40(sp)
   13878:	00058a13          	mv	s4,a1
   1387c:	00050913          	mv	s2,a0
   13880:	91098993          	addi	s3,s3,-1776 # 23910 <__malloc_av_>
   13884:	6e1030ef          	jal	ra,17764 <__malloc_lock>
   13888:	0109b703          	ld	a4,16(s3)
   1388c:	000017b7          	lui	a5,0x1
   13890:	fdf78413          	addi	s0,a5,-33 # fdf <exit-0xf109>
   13894:	00873483          	ld	s1,8(a4)
   13898:	ffc4f493          	andi	s1,s1,-4
   1389c:	00848433          	add	s0,s1,s0
   138a0:	41440433          	sub	s0,s0,s4
   138a4:	00c45413          	srli	s0,s0,0xc
   138a8:	fff40413          	addi	s0,s0,-1
   138ac:	00c41413          	slli	s0,s0,0xc
   138b0:	00f44e63          	blt	s0,a5,138cc <_malloc_trim_r+0x74>
   138b4:	00000593          	li	a1,0
   138b8:	00090513          	mv	a0,s2
   138bc:	1ec050ef          	jal	ra,18aa8 <_sbrk_r>
   138c0:	0109b783          	ld	a5,16(s3)
   138c4:	009787b3          	add	a5,a5,s1
   138c8:	02f50863          	beq	a0,a5,138f8 <_malloc_trim_r+0xa0>
   138cc:	00090513          	mv	a0,s2
   138d0:	699030ef          	jal	ra,17768 <__malloc_unlock>
   138d4:	02813083          	ld	ra,40(sp)
   138d8:	02013403          	ld	s0,32(sp)
   138dc:	01813483          	ld	s1,24(sp)
   138e0:	01013903          	ld	s2,16(sp)
   138e4:	00813983          	ld	s3,8(sp)
   138e8:	00013a03          	ld	s4,0(sp)
   138ec:	00000513          	li	a0,0
   138f0:	03010113          	addi	sp,sp,48
   138f4:	00008067          	ret
   138f8:	408005b3          	neg	a1,s0
   138fc:	00090513          	mv	a0,s2
   13900:	1a8050ef          	jal	ra,18aa8 <_sbrk_r>
   13904:	fff00793          	li	a5,-1
   13908:	04f50a63          	beq	a0,a5,1395c <_malloc_trim_r+0x104>
   1390c:	000247b7          	lui	a5,0x24
   13910:	1e078793          	addi	a5,a5,480 # 241e0 <__malloc_current_mallinfo>
   13914:	0007a703          	lw	a4,0(a5)
   13918:	0109b683          	ld	a3,16(s3)
   1391c:	408484b3          	sub	s1,s1,s0
   13920:	0014e493          	ori	s1,s1,1
   13924:	4087073b          	subw	a4,a4,s0
   13928:	00090513          	mv	a0,s2
   1392c:	0096b423          	sd	s1,8(a3)
   13930:	00e7a023          	sw	a4,0(a5)
   13934:	635030ef          	jal	ra,17768 <__malloc_unlock>
   13938:	02813083          	ld	ra,40(sp)
   1393c:	02013403          	ld	s0,32(sp)
   13940:	01813483          	ld	s1,24(sp)
   13944:	01013903          	ld	s2,16(sp)
   13948:	00813983          	ld	s3,8(sp)
   1394c:	00013a03          	ld	s4,0(sp)
   13950:	00100513          	li	a0,1
   13954:	03010113          	addi	sp,sp,48
   13958:	00008067          	ret
   1395c:	00000593          	li	a1,0
   13960:	00090513          	mv	a0,s2
   13964:	144050ef          	jal	ra,18aa8 <_sbrk_r>
   13968:	0109b703          	ld	a4,16(s3)
   1396c:	01f00693          	li	a3,31
   13970:	40e507b3          	sub	a5,a0,a4
   13974:	f4f6dce3          	bge	a3,a5,138cc <_malloc_trim_r+0x74>
   13978:	7601b683          	ld	a3,1888(gp) # 24168 <__malloc_sbrk_base>
   1397c:	0017e793          	ori	a5,a5,1
   13980:	00f73423          	sd	a5,8(a4)
   13984:	40d50533          	sub	a0,a0,a3
   13988:	000246b7          	lui	a3,0x24
   1398c:	1ea6a023          	sw	a0,480(a3) # 241e0 <__malloc_current_mallinfo>
   13990:	f3dff06f          	j	138cc <_malloc_trim_r+0x74>

0000000000013994 <_free_r>:
   13994:	18058863          	beqz	a1,13b24 <_free_r+0x190>
   13998:	fe010113          	addi	sp,sp,-32
   1399c:	00813823          	sd	s0,16(sp)
   139a0:	00913423          	sd	s1,8(sp)
   139a4:	00058413          	mv	s0,a1
   139a8:	00050493          	mv	s1,a0
   139ac:	00113c23          	sd	ra,24(sp)
   139b0:	5b5030ef          	jal	ra,17764 <__malloc_lock>
   139b4:	ff843503          	ld	a0,-8(s0)
   139b8:	ff040713          	addi	a4,s0,-16
   139bc:	000245b7          	lui	a1,0x24
   139c0:	ffe57793          	andi	a5,a0,-2
   139c4:	00f70633          	add	a2,a4,a5
   139c8:	91058593          	addi	a1,a1,-1776 # 23910 <__malloc_av_>
   139cc:	00863683          	ld	a3,8(a2)
   139d0:	0105b803          	ld	a6,16(a1)
   139d4:	ffc6f693          	andi	a3,a3,-4
   139d8:	1ac80863          	beq	a6,a2,13b88 <_free_r+0x1f4>
   139dc:	00d63423          	sd	a3,8(a2)
   139e0:	00157513          	andi	a0,a0,1
   139e4:	00d60833          	add	a6,a2,a3
   139e8:	0a051463          	bnez	a0,13a90 <_free_r+0xfc>
   139ec:	ff043303          	ld	t1,-16(s0)
   139f0:	00883803          	ld	a6,8(a6)
   139f4:	00024537          	lui	a0,0x24
   139f8:	40670733          	sub	a4,a4,t1
   139fc:	01073883          	ld	a7,16(a4)
   13a00:	92050513          	addi	a0,a0,-1760 # 23920 <__malloc_av_+0x10>
   13a04:	006787b3          	add	a5,a5,t1
   13a08:	00187813          	andi	a6,a6,1
   13a0c:	14a88863          	beq	a7,a0,13b5c <_free_r+0x1c8>
   13a10:	01873303          	ld	t1,24(a4)
   13a14:	0068bc23          	sd	t1,24(a7)
   13a18:	01133823          	sd	a7,16(t1)
   13a1c:	1a080c63          	beqz	a6,13bd4 <_free_r+0x240>
   13a20:	0017e693          	ori	a3,a5,1
   13a24:	00d73423          	sd	a3,8(a4)
   13a28:	00f63023          	sd	a5,0(a2)
   13a2c:	1ff00693          	li	a3,511
   13a30:	08f6e063          	bltu	a3,a5,13ab0 <_free_r+0x11c>
   13a34:	0037d793          	srli	a5,a5,0x3
   13a38:	0017869b          	addiw	a3,a5,1
   13a3c:	0016969b          	slliw	a3,a3,0x1
   13a40:	00369693          	slli	a3,a3,0x3
   13a44:	0085b803          	ld	a6,8(a1)
   13a48:	00d586b3          	add	a3,a1,a3
   13a4c:	0006b503          	ld	a0,0(a3)
   13a50:	4027d61b          	sraiw	a2,a5,0x2
   13a54:	00100793          	li	a5,1
   13a58:	00c797b3          	sll	a5,a5,a2
   13a5c:	0107e7b3          	or	a5,a5,a6
   13a60:	ff068613          	addi	a2,a3,-16
   13a64:	00c73c23          	sd	a2,24(a4)
   13a68:	00a73823          	sd	a0,16(a4)
   13a6c:	00f5b423          	sd	a5,8(a1)
   13a70:	00e6b023          	sd	a4,0(a3)
   13a74:	00e53c23          	sd	a4,24(a0)
   13a78:	01013403          	ld	s0,16(sp)
   13a7c:	01813083          	ld	ra,24(sp)
   13a80:	00048513          	mv	a0,s1
   13a84:	00813483          	ld	s1,8(sp)
   13a88:	02010113          	addi	sp,sp,32
   13a8c:	4dd0306f          	j	17768 <__malloc_unlock>
   13a90:	00883503          	ld	a0,8(a6)
   13a94:	00157513          	andi	a0,a0,1
   13a98:	08050863          	beqz	a0,13b28 <_free_r+0x194>
   13a9c:	0017e693          	ori	a3,a5,1
   13aa0:	fed43c23          	sd	a3,-8(s0)
   13aa4:	00f63023          	sd	a5,0(a2)
   13aa8:	1ff00693          	li	a3,511
   13aac:	f8f6f4e3          	bgeu	a3,a5,13a34 <_free_r+0xa0>
   13ab0:	0097d693          	srli	a3,a5,0x9
   13ab4:	00400613          	li	a2,4
   13ab8:	12d66263          	bltu	a2,a3,13bdc <_free_r+0x248>
   13abc:	0067d693          	srli	a3,a5,0x6
   13ac0:	0396851b          	addiw	a0,a3,57
   13ac4:	0015151b          	slliw	a0,a0,0x1
   13ac8:	0386861b          	addiw	a2,a3,56
   13acc:	00351513          	slli	a0,a0,0x3
   13ad0:	00a58533          	add	a0,a1,a0
   13ad4:	00053683          	ld	a3,0(a0)
   13ad8:	ff050513          	addi	a0,a0,-16
   13adc:	00d51863          	bne	a0,a3,13aec <_free_r+0x158>
   13ae0:	15c0006f          	j	13c3c <_free_r+0x2a8>
   13ae4:	0106b683          	ld	a3,16(a3)
   13ae8:	00d50863          	beq	a0,a3,13af8 <_free_r+0x164>
   13aec:	0086b603          	ld	a2,8(a3)
   13af0:	ffc67613          	andi	a2,a2,-4
   13af4:	fec7e8e3          	bltu	a5,a2,13ae4 <_free_r+0x150>
   13af8:	0186b503          	ld	a0,24(a3)
   13afc:	00a73c23          	sd	a0,24(a4)
   13b00:	00d73823          	sd	a3,16(a4)
   13b04:	01013403          	ld	s0,16(sp)
   13b08:	00e53823          	sd	a4,16(a0)
   13b0c:	01813083          	ld	ra,24(sp)
   13b10:	00048513          	mv	a0,s1
   13b14:	00813483          	ld	s1,8(sp)
   13b18:	00e6bc23          	sd	a4,24(a3)
   13b1c:	02010113          	addi	sp,sp,32
   13b20:	4490306f          	j	17768 <__malloc_unlock>
   13b24:	00008067          	ret
   13b28:	00024537          	lui	a0,0x24
   13b2c:	00d787b3          	add	a5,a5,a3
   13b30:	92050513          	addi	a0,a0,-1760 # 23920 <__malloc_av_+0x10>
   13b34:	01063683          	ld	a3,16(a2)
   13b38:	0ea68063          	beq	a3,a0,13c18 <_free_r+0x284>
   13b3c:	01863803          	ld	a6,24(a2)
   13b40:	0017e513          	ori	a0,a5,1
   13b44:	00f70633          	add	a2,a4,a5
   13b48:	0106bc23          	sd	a6,24(a3)
   13b4c:	00d83823          	sd	a3,16(a6)
   13b50:	00a73423          	sd	a0,8(a4)
   13b54:	00f63023          	sd	a5,0(a2)
   13b58:	ed5ff06f          	j	13a2c <_free_r+0x98>
   13b5c:	14081463          	bnez	a6,13ca4 <_free_r+0x310>
   13b60:	01063583          	ld	a1,16(a2)
   13b64:	01863603          	ld	a2,24(a2)
   13b68:	00f686b3          	add	a3,a3,a5
   13b6c:	0016e793          	ori	a5,a3,1
   13b70:	00c5bc23          	sd	a2,24(a1)
   13b74:	00b63823          	sd	a1,16(a2)
   13b78:	00f73423          	sd	a5,8(a4)
   13b7c:	00d70733          	add	a4,a4,a3
   13b80:	00d73023          	sd	a3,0(a4)
   13b84:	ef5ff06f          	j	13a78 <_free_r+0xe4>
   13b88:	00157513          	andi	a0,a0,1
   13b8c:	00d786b3          	add	a3,a5,a3
   13b90:	02051063          	bnez	a0,13bb0 <_free_r+0x21c>
   13b94:	ff043503          	ld	a0,-16(s0)
   13b98:	40a70733          	sub	a4,a4,a0
   13b9c:	01873783          	ld	a5,24(a4)
   13ba0:	01073603          	ld	a2,16(a4)
   13ba4:	00a686b3          	add	a3,a3,a0
   13ba8:	00f63c23          	sd	a5,24(a2)
   13bac:	00c7b823          	sd	a2,16(a5)
   13bb0:	0016e613          	ori	a2,a3,1
   13bb4:	7681b783          	ld	a5,1896(gp) # 24170 <__malloc_trim_threshold>
   13bb8:	00c73423          	sd	a2,8(a4)
   13bbc:	00e5b823          	sd	a4,16(a1)
   13bc0:	eaf6ece3          	bltu	a3,a5,13a78 <_free_r+0xe4>
   13bc4:	7881b583          	ld	a1,1928(gp) # 24190 <__malloc_top_pad>
   13bc8:	00048513          	mv	a0,s1
   13bcc:	c8dff0ef          	jal	ra,13858 <_malloc_trim_r>
   13bd0:	ea9ff06f          	j	13a78 <_free_r+0xe4>
   13bd4:	00d787b3          	add	a5,a5,a3
   13bd8:	f5dff06f          	j	13b34 <_free_r+0x1a0>
   13bdc:	01400613          	li	a2,20
   13be0:	02d67263          	bgeu	a2,a3,13c04 <_free_r+0x270>
   13be4:	05400613          	li	a2,84
   13be8:	06d66863          	bltu	a2,a3,13c58 <_free_r+0x2c4>
   13bec:	00c7d693          	srli	a3,a5,0xc
   13bf0:	06f6851b          	addiw	a0,a3,111
   13bf4:	0015151b          	slliw	a0,a0,0x1
   13bf8:	06e6861b          	addiw	a2,a3,110
   13bfc:	00351513          	slli	a0,a0,0x3
   13c00:	ed1ff06f          	j	13ad0 <_free_r+0x13c>
   13c04:	05c6851b          	addiw	a0,a3,92
   13c08:	0015151b          	slliw	a0,a0,0x1
   13c0c:	05b6861b          	addiw	a2,a3,91
   13c10:	00351513          	slli	a0,a0,0x3
   13c14:	ebdff06f          	j	13ad0 <_free_r+0x13c>
   13c18:	02e5b423          	sd	a4,40(a1)
   13c1c:	02e5b023          	sd	a4,32(a1)
   13c20:	0017e693          	ori	a3,a5,1
   13c24:	00a73c23          	sd	a0,24(a4)
   13c28:	00a73823          	sd	a0,16(a4)
   13c2c:	00d73423          	sd	a3,8(a4)
   13c30:	00f70733          	add	a4,a4,a5
   13c34:	00f73023          	sd	a5,0(a4)
   13c38:	e41ff06f          	j	13a78 <_free_r+0xe4>
   13c3c:	0085b803          	ld	a6,8(a1)
   13c40:	4026561b          	sraiw	a2,a2,0x2
   13c44:	00100793          	li	a5,1
   13c48:	00c797b3          	sll	a5,a5,a2
   13c4c:	0107e7b3          	or	a5,a5,a6
   13c50:	00f5b423          	sd	a5,8(a1)
   13c54:	ea9ff06f          	j	13afc <_free_r+0x168>
   13c58:	15400613          	li	a2,340
   13c5c:	00d66e63          	bltu	a2,a3,13c78 <_free_r+0x2e4>
   13c60:	00f7d693          	srli	a3,a5,0xf
   13c64:	0786851b          	addiw	a0,a3,120
   13c68:	0015151b          	slliw	a0,a0,0x1
   13c6c:	0776861b          	addiw	a2,a3,119
   13c70:	00351513          	slli	a0,a0,0x3
   13c74:	e5dff06f          	j	13ad0 <_free_r+0x13c>
   13c78:	55400613          	li	a2,1364
   13c7c:	00d66e63          	bltu	a2,a3,13c98 <_free_r+0x304>
   13c80:	0127d693          	srli	a3,a5,0x12
   13c84:	07d6851b          	addiw	a0,a3,125
   13c88:	0015151b          	slliw	a0,a0,0x1
   13c8c:	07c6861b          	addiw	a2,a3,124
   13c90:	00351513          	slli	a0,a0,0x3
   13c94:	e3dff06f          	j	13ad0 <_free_r+0x13c>
   13c98:	7f000513          	li	a0,2032
   13c9c:	07e00613          	li	a2,126
   13ca0:	e31ff06f          	j	13ad0 <_free_r+0x13c>
   13ca4:	0017e693          	ori	a3,a5,1
   13ca8:	00d73423          	sd	a3,8(a4)
   13cac:	00f63023          	sd	a5,0(a2)
   13cb0:	dc9ff06f          	j	13a78 <_free_r+0xe4>

0000000000013cb4 <_fwalk>:
   13cb4:	fc010113          	addi	sp,sp,-64
   13cb8:	03213023          	sd	s2,32(sp)
   13cbc:	01313c23          	sd	s3,24(sp)
   13cc0:	01413823          	sd	s4,16(sp)
   13cc4:	01513423          	sd	s5,8(sp)
   13cc8:	01613023          	sd	s6,0(sp)
   13ccc:	02113c23          	sd	ra,56(sp)
   13cd0:	02813823          	sd	s0,48(sp)
   13cd4:	02913423          	sd	s1,40(sp)
   13cd8:	00058a93          	mv	s5,a1
   13cdc:	52050993          	addi	s3,a0,1312
   13ce0:	00000913          	li	s2,0
   13ce4:	00100b13          	li	s6,1
   13ce8:	fff00a13          	li	s4,-1
   13cec:	0089a783          	lw	a5,8(s3)
   13cf0:	0109b403          	ld	s0,16(s3)
   13cf4:	04f05663          	blez	a5,13d40 <_fwalk+0x8c>
   13cf8:	02079793          	slli	a5,a5,0x20
   13cfc:	0207d793          	srli	a5,a5,0x20
   13d00:	00179493          	slli	s1,a5,0x1
   13d04:	00f484b3          	add	s1,s1,a5
   13d08:	00249493          	slli	s1,s1,0x2
   13d0c:	40f484b3          	sub	s1,s1,a5
   13d10:	00449493          	slli	s1,s1,0x4
   13d14:	009404b3          	add	s1,s0,s1
   13d18:	01045783          	lhu	a5,16(s0)
   13d1c:	00fb7e63          	bgeu	s6,a5,13d38 <_fwalk+0x84>
   13d20:	01241783          	lh	a5,18(s0)
   13d24:	00040513          	mv	a0,s0
   13d28:	01478863          	beq	a5,s4,13d38 <_fwalk+0x84>
   13d2c:	000a80e7          	jalr	s5
   13d30:	01256933          	or	s2,a0,s2
   13d34:	0009091b          	sext.w	s2,s2
   13d38:	0b040413          	addi	s0,s0,176
   13d3c:	fc849ee3          	bne	s1,s0,13d18 <_fwalk+0x64>
   13d40:	0009b983          	ld	s3,0(s3)
   13d44:	fa0994e3          	bnez	s3,13cec <_fwalk+0x38>
   13d48:	03813083          	ld	ra,56(sp)
   13d4c:	03013403          	ld	s0,48(sp)
   13d50:	02813483          	ld	s1,40(sp)
   13d54:	01813983          	ld	s3,24(sp)
   13d58:	01013a03          	ld	s4,16(sp)
   13d5c:	00813a83          	ld	s5,8(sp)
   13d60:	00013b03          	ld	s6,0(sp)
   13d64:	00090513          	mv	a0,s2
   13d68:	02013903          	ld	s2,32(sp)
   13d6c:	04010113          	addi	sp,sp,64
   13d70:	00008067          	ret

0000000000013d74 <_fwalk_reent>:
   13d74:	fb010113          	addi	sp,sp,-80
   13d78:	03213823          	sd	s2,48(sp)
   13d7c:	03313423          	sd	s3,40(sp)
   13d80:	03413023          	sd	s4,32(sp)
   13d84:	01513c23          	sd	s5,24(sp)
   13d88:	01613823          	sd	s6,16(sp)
   13d8c:	01713423          	sd	s7,8(sp)
   13d90:	04113423          	sd	ra,72(sp)
   13d94:	04813023          	sd	s0,64(sp)
   13d98:	02913c23          	sd	s1,56(sp)
   13d9c:	00050913          	mv	s2,a0
   13da0:	00058a93          	mv	s5,a1
   13da4:	52050993          	addi	s3,a0,1312
   13da8:	00000b13          	li	s6,0
   13dac:	00100b93          	li	s7,1
   13db0:	fff00a13          	li	s4,-1
   13db4:	0089a783          	lw	a5,8(s3)
   13db8:	0109b403          	ld	s0,16(s3)
   13dbc:	04f05863          	blez	a5,13e0c <_fwalk_reent+0x98>
   13dc0:	02079793          	slli	a5,a5,0x20
   13dc4:	0207d793          	srli	a5,a5,0x20
   13dc8:	00179493          	slli	s1,a5,0x1
   13dcc:	00f484b3          	add	s1,s1,a5
   13dd0:	00249493          	slli	s1,s1,0x2
   13dd4:	40f484b3          	sub	s1,s1,a5
   13dd8:	00449493          	slli	s1,s1,0x4
   13ddc:	009404b3          	add	s1,s0,s1
   13de0:	01045783          	lhu	a5,16(s0)
   13de4:	02fbf063          	bgeu	s7,a5,13e04 <_fwalk_reent+0x90>
   13de8:	01241783          	lh	a5,18(s0)
   13dec:	00040593          	mv	a1,s0
   13df0:	00090513          	mv	a0,s2
   13df4:	01478863          	beq	a5,s4,13e04 <_fwalk_reent+0x90>
   13df8:	000a80e7          	jalr	s5
   13dfc:	01656b33          	or	s6,a0,s6
   13e00:	000b0b1b          	sext.w	s6,s6
   13e04:	0b040413          	addi	s0,s0,176
   13e08:	fc849ce3          	bne	s1,s0,13de0 <_fwalk_reent+0x6c>
   13e0c:	0009b983          	ld	s3,0(s3)
   13e10:	fa0992e3          	bnez	s3,13db4 <_fwalk_reent+0x40>
   13e14:	04813083          	ld	ra,72(sp)
   13e18:	04013403          	ld	s0,64(sp)
   13e1c:	03813483          	ld	s1,56(sp)
   13e20:	03013903          	ld	s2,48(sp)
   13e24:	02813983          	ld	s3,40(sp)
   13e28:	02013a03          	ld	s4,32(sp)
   13e2c:	01813a83          	ld	s5,24(sp)
   13e30:	00813b83          	ld	s7,8(sp)
   13e34:	000b0513          	mv	a0,s6
   13e38:	01013b03          	ld	s6,16(sp)
   13e3c:	05010113          	addi	sp,sp,80
   13e40:	00008067          	ret

0000000000013e44 <eshdn1>:
   13e44:	00450693          	addi	a3,a0,4
   13e48:	00000713          	li	a4,0
   13e4c:	01a50513          	addi	a0,a0,26
   13e50:	ffff8837          	lui	a6,0xffff8
   13e54:	0006d783          	lhu	a5,0(a3)
   13e58:	0017f613          	andi	a2,a5,1
   13e5c:	00060463          	beqz	a2,13e64 <eshdn1+0x20>
   13e60:	00176713          	ori	a4,a4,1
   13e64:	00277613          	andi	a2,a4,2
   13e68:	0017d793          	srli	a5,a5,0x1
   13e6c:	0017171b          	slliw	a4,a4,0x1
   13e70:	0107e5b3          	or	a1,a5,a6
   13e74:	00060663          	beqz	a2,13e80 <eshdn1+0x3c>
   13e78:	03059793          	slli	a5,a1,0x30
   13e7c:	0307d793          	srli	a5,a5,0x30
   13e80:	00f69023          	sh	a5,0(a3)
   13e84:	03071713          	slli	a4,a4,0x30
   13e88:	00268693          	addi	a3,a3,2
   13e8c:	03075713          	srli	a4,a4,0x30
   13e90:	fcd512e3          	bne	a0,a3,13e54 <eshdn1+0x10>
   13e94:	00008067          	ret

0000000000013e98 <eshup1>:
   13e98:	01850693          	addi	a3,a0,24
   13e9c:	00000713          	li	a4,0
   13ea0:	00250513          	addi	a0,a0,2
   13ea4:	0006d783          	lhu	a5,0(a3)
   13ea8:	00f7d613          	srli	a2,a5,0xf
   13eac:	0017979b          	slliw	a5,a5,0x1
   13eb0:	00060463          	beqz	a2,13eb8 <eshup1+0x20>
   13eb4:	00176713          	ori	a4,a4,1
   13eb8:	00277613          	andi	a2,a4,2
   13ebc:	03079793          	slli	a5,a5,0x30
   13ec0:	0017171b          	slliw	a4,a4,0x1
   13ec4:	0307d793          	srli	a5,a5,0x30
   13ec8:	00060463          	beqz	a2,13ed0 <eshup1+0x38>
   13ecc:	0017e793          	ori	a5,a5,1
   13ed0:	00f69023          	sh	a5,0(a3)
   13ed4:	03071713          	slli	a4,a4,0x30
   13ed8:	ffe68693          	addi	a3,a3,-2
   13edc:	03075713          	srli	a4,a4,0x30
   13ee0:	fcd512e3          	bne	a0,a3,13ea4 <eshup1+0xc>
   13ee4:	00008067          	ret

0000000000013ee8 <m16m>:
   13ee8:	fa010113          	addi	sp,sp,-96
   13eec:	03413823          	sd	s4,48(sp)
   13ef0:	00010a37          	lui	s4,0x10
   13ef4:	04813823          	sd	s0,80(sp)
   13ef8:	04913423          	sd	s1,72(sp)
   13efc:	05213023          	sd	s2,64(sp)
   13f00:	03313c23          	sd	s3,56(sp)
   13f04:	03513423          	sd	s5,40(sp)
   13f08:	04113c23          	sd	ra,88(sp)
   13f0c:	00050993          	mv	s3,a0
   13f10:	00060493          	mv	s1,a2
   13f14:	00011b23          	sh	zero,22(sp)
   13f18:	00011c23          	sh	zero,24(sp)
   13f1c:	01858913          	addi	s2,a1,24
   13f20:	01810413          	addi	s0,sp,24
   13f24:	00410a93          	addi	s5,sp,4
   13f28:	fffa0a13          	addi	s4,s4,-1 # ffff <exit-0xe9>
   13f2c:	00095503          	lhu	a0,0(s2)
   13f30:	00098593          	mv	a1,s3
   13f34:	ffe40413          	addi	s0,s0,-2
   13f38:	ffe90913          	addi	s2,s2,-2
   13f3c:	02050a63          	beqz	a0,13f70 <m16m+0x88>
   13f40:	7b10d0ef          	jal	ra,21ef0 <__muldi3>
   13f44:	00245703          	lhu	a4,2(s0)
   13f48:	00045683          	lhu	a3,0(s0)
   13f4c:	014577b3          	and	a5,a0,s4
   13f50:	00e787b3          	add	a5,a5,a4
   13f54:	01055513          	srli	a0,a0,0x10
   13f58:	0107d713          	srli	a4,a5,0x10
   13f5c:	00d50533          	add	a0,a0,a3
   13f60:	00e50533          	add	a0,a0,a4
   13f64:	00a41023          	sh	a0,0(s0)
   13f68:	00f41123          	sh	a5,2(s0)
   13f6c:	0105551b          	srliw	a0,a0,0x10
   13f70:	fea41f23          	sh	a0,-2(s0)
   13f74:	fb541ce3          	bne	s0,s5,13f2c <m16m+0x44>
   13f78:	00448613          	addi	a2,s1,4
   13f7c:	01a10713          	addi	a4,sp,26
   13f80:	00045783          	lhu	a5,0(s0)
   13f84:	00240413          	addi	s0,s0,2
   13f88:	00260613          	addi	a2,a2,2
   13f8c:	fef61f23          	sh	a5,-2(a2)
   13f90:	fe8718e3          	bne	a4,s0,13f80 <m16m+0x98>
   13f94:	05813083          	ld	ra,88(sp)
   13f98:	05013403          	ld	s0,80(sp)
   13f9c:	04813483          	ld	s1,72(sp)
   13fa0:	04013903          	ld	s2,64(sp)
   13fa4:	03813983          	ld	s3,56(sp)
   13fa8:	03013a03          	ld	s4,48(sp)
   13fac:	02813a83          	ld	s5,40(sp)
   13fb0:	06010113          	addi	sp,sp,96
   13fb4:	00008067          	ret

0000000000013fb8 <emovo.constprop.0>:
   13fb8:	00055703          	lhu	a4,0(a0)
   13fbc:	00255783          	lhu	a5,2(a0)
   13fc0:	00070663          	beqz	a4,13fcc <emovo.constprop.0+0x14>
   13fc4:	00008737          	lui	a4,0x8
   13fc8:	00e7e7b3          	or	a5,a5,a4
   13fcc:	00f59923          	sh	a5,18(a1)
   13fd0:	00255703          	lhu	a4,2(a0)
   13fd4:	000087b7          	lui	a5,0x8
   13fd8:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13fdc:	02f70463          	beq	a4,a5,14004 <emovo.constprop.0+0x4c>
   13fe0:	00650793          	addi	a5,a0,6
   13fe4:	01058593          	addi	a1,a1,16
   13fe8:	01850513          	addi	a0,a0,24
   13fec:	0007d703          	lhu	a4,0(a5)
   13ff0:	00278793          	addi	a5,a5,2
   13ff4:	ffe58593          	addi	a1,a1,-2
   13ff8:	00e59123          	sh	a4,2(a1)
   13ffc:	fea798e3          	bne	a5,a0,13fec <emovo.constprop.0+0x34>
   14000:	00008067          	ret
   14004:	00650793          	addi	a5,a0,6
   14008:	01a50513          	addi	a0,a0,26
   1400c:	0007d703          	lhu	a4,0(a5)
   14010:	00278793          	addi	a5,a5,2
   14014:	02071a63          	bnez	a4,14048 <emovo.constprop.0+0x90>
   14018:	fef51ae3          	bne	a0,a5,1400c <emovo.constprop.0+0x54>
   1401c:	01258713          	addi	a4,a1,18
   14020:	00058793          	mv	a5,a1
   14024:	00278793          	addi	a5,a5,2
   14028:	fe079f23          	sh	zero,-2(a5)
   1402c:	fee79ce3          	bne	a5,a4,14024 <emovo.constprop.0+0x6c>
   14030:	0125d783          	lhu	a5,18(a1)
   14034:	00008737          	lui	a4,0x8
   14038:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1403c:	00e7e7b3          	or	a5,a5,a4
   14040:	00f59923          	sh	a5,18(a1)
   14044:	00008067          	ret
   14048:	01058713          	addi	a4,a1,16
   1404c:	00058793          	mv	a5,a1
   14050:	00278793          	addi	a5,a5,2
   14054:	fe079f23          	sh	zero,-2(a5)
   14058:	fee79ce3          	bne	a5,a4,14050 <emovo.constprop.0+0x98>
   1405c:	ffffc7b7          	lui	a5,0xffffc
   14060:	00f59823          	sh	a5,16(a1)
   14064:	ffff87b7          	lui	a5,0xffff8
   14068:	fff7c793          	not	a5,a5
   1406c:	00f59923          	sh	a5,18(a1)
   14070:	00008067          	ret

0000000000014074 <enormlz>:
   14074:	00455783          	lhu	a5,4(a0)
   14078:	fe010113          	addi	sp,sp,-32
   1407c:	00913423          	sd	s1,8(sp)
   14080:	00113c23          	sd	ra,24(sp)
   14084:	00813823          	sd	s0,16(sp)
   14088:	01213023          	sd	s2,0(sp)
   1408c:	00050493          	mv	s1,a0
   14090:	0c079663          	bnez	a5,1415c <enormlz+0xe8>
   14094:	00655783          	lhu	a5,6(a0)
   14098:	00000413          	li	s0,0
   1409c:	00f7d713          	srli	a4,a5,0xf
   140a0:	0a071063          	bnez	a4,14140 <enormlz+0xcc>
   140a4:	01850693          	addi	a3,a0,24
   140a8:	0a000613          	li	a2,160
   140ac:	02079663          	bnez	a5,140d8 <enormlz+0x64>
   140b0:	00448793          	addi	a5,s1,4
   140b4:	0027d703          	lhu	a4,2(a5) # ffffffffffff8002 <__BSS_END__+0xfffffffffffd3dfa>
   140b8:	00278793          	addi	a5,a5,2
   140bc:	fee79f23          	sh	a4,-2(a5)
   140c0:	fed79ae3          	bne	a5,a3,140b4 <enormlz+0x40>
   140c4:	00049c23          	sh	zero,24(s1)
   140c8:	0104041b          	addiw	s0,s0,16
   140cc:	06c40a63          	beq	s0,a2,14140 <enormlz+0xcc>
   140d0:	0064d783          	lhu	a5,6(s1)
   140d4:	fc078ee3          	beqz	a5,140b0 <enormlz+0x3c>
   140d8:	0ff00713          	li	a4,255
   140dc:	04f76063          	bltu	a4,a5,1411c <enormlz+0xa8>
   140e0:	01848813          	addi	a6,s1,24
   140e4:	00248593          	addi	a1,s1,2
   140e8:	0ff00513          	li	a0,255
   140ec:	00000793          	li	a5,0
   140f0:	00080713          	mv	a4,a6
   140f4:	00075683          	lhu	a3,0(a4)
   140f8:	ffe70713          	addi	a4,a4,-2
   140fc:	0086961b          	slliw	a2,a3,0x8
   14100:	00c7e7b3          	or	a5,a5,a2
   14104:	00f71123          	sh	a5,2(a4)
   14108:	0086d793          	srli	a5,a3,0x8
   1410c:	feb714e3          	bne	a4,a1,140f4 <enormlz+0x80>
   14110:	0064d783          	lhu	a5,6(s1)
   14114:	0084041b          	addiw	s0,s0,8
   14118:	fcf57ae3          	bgeu	a0,a5,140ec <enormlz+0x78>
   1411c:	0a000913          	li	s2,160
   14120:	0140006f          	j	14134 <enormlz+0xc0>
   14124:	0014041b          	addiw	s0,s0,1
   14128:	d71ff0ef          	jal	ra,13e98 <eshup1>
   1412c:	00894a63          	blt	s2,s0,14140 <enormlz+0xcc>
   14130:	0064d783          	lhu	a5,6(s1)
   14134:	00f7d793          	srli	a5,a5,0xf
   14138:	00048513          	mv	a0,s1
   1413c:	fe0784e3          	beqz	a5,14124 <enormlz+0xb0>
   14140:	01813083          	ld	ra,24(sp)
   14144:	00040513          	mv	a0,s0
   14148:	01013403          	ld	s0,16(sp)
   1414c:	00813483          	ld	s1,8(sp)
   14150:	00013903          	ld	s2,0(sp)
   14154:	02010113          	addi	sp,sp,32
   14158:	00008067          	ret
   1415c:	0ff00713          	li	a4,255
   14160:	00000413          	li	s0,0
   14164:	04f76063          	bltu	a4,a5,141a4 <enormlz+0x130>
   14168:	f6f00913          	li	s2,-145
   1416c:	0140006f          	j	14180 <enormlz+0x10c>
   14170:	fff4041b          	addiw	s0,s0,-1
   14174:	cd1ff0ef          	jal	ra,13e44 <eshdn1>
   14178:	fd2404e3          	beq	s0,s2,14140 <enormlz+0xcc>
   1417c:	0044d783          	lhu	a5,4(s1)
   14180:	00048513          	mv	a0,s1
   14184:	fe0796e3          	bnez	a5,14170 <enormlz+0xfc>
   14188:	01813083          	ld	ra,24(sp)
   1418c:	00040513          	mv	a0,s0
   14190:	01013403          	ld	s0,16(sp)
   14194:	00813483          	ld	s1,8(sp)
   14198:	00013903          	ld	s2,0(sp)
   1419c:	02010113          	addi	sp,sp,32
   141a0:	00008067          	ret
   141a4:	00450713          	addi	a4,a0,4
   141a8:	01a50593          	addi	a1,a0,26
   141ac:	00000793          	li	a5,0
   141b0:	00075683          	lhu	a3,0(a4)
   141b4:	00270713          	addi	a4,a4,2
   141b8:	0086d61b          	srliw	a2,a3,0x8
   141bc:	00c7e7b3          	or	a5,a5,a2
   141c0:	0086969b          	slliw	a3,a3,0x8
   141c4:	fef71f23          	sh	a5,-2(a4)
   141c8:	03069793          	slli	a5,a3,0x30
   141cc:	0307d793          	srli	a5,a5,0x30
   141d0:	feb710e3          	bne	a4,a1,141b0 <enormlz+0x13c>
   141d4:	0044d783          	lhu	a5,4(s1)
   141d8:	ff800413          	li	s0,-8
   141dc:	f8dff06f          	j	14168 <enormlz+0xf4>

00000000000141e0 <eshift.part.0>:
   141e0:	fd010113          	addi	sp,sp,-48
   141e4:	02813023          	sd	s0,32(sp)
   141e8:	00913c23          	sd	s1,24(sp)
   141ec:	02113423          	sd	ra,40(sp)
   141f0:	01213823          	sd	s2,16(sp)
   141f4:	01313423          	sd	s3,8(sp)
   141f8:	00058493          	mv	s1,a1
   141fc:	00050413          	mv	s0,a0
   14200:	0a05c463          	bltz	a1,142a8 <eshift.part.0+0xc8>
   14204:	00f00793          	li	a5,15
   14208:	00058613          	mv	a2,a1
   1420c:	00450513          	addi	a0,a0,4
   14210:	01840693          	addi	a3,s0,24
   14214:	00f00593          	li	a1,15
   14218:	0297d463          	bge	a5,s1,14240 <eshift.part.0+0x60>
   1421c:	00050793          	mv	a5,a0
   14220:	0027d703          	lhu	a4,2(a5)
   14224:	00278793          	addi	a5,a5,2
   14228:	fee79f23          	sh	a4,-2(a5)
   1422c:	fed79ae3          	bne	a5,a3,14220 <eshift.part.0+0x40>
   14230:	00041c23          	sh	zero,24(s0)
   14234:	ff06061b          	addiw	a2,a2,-16
   14238:	fec5c2e3          	blt	a1,a2,1421c <eshift.part.0+0x3c>
   1423c:	00f4f493          	andi	s1,s1,15
   14240:	00700793          	li	a5,7
   14244:	0297d863          	bge	a5,s1,14274 <eshift.part.0+0x94>
   14248:	01840713          	addi	a4,s0,24
   1424c:	00240593          	addi	a1,s0,2
   14250:	00000793          	li	a5,0
   14254:	00075683          	lhu	a3,0(a4)
   14258:	ffe70713          	addi	a4,a4,-2
   1425c:	0086961b          	slliw	a2,a3,0x8
   14260:	00c7e7b3          	or	a5,a5,a2
   14264:	00f71123          	sh	a5,2(a4)
   14268:	0086d793          	srli	a5,a3,0x8
   1426c:	feb714e3          	bne	a4,a1,14254 <eshift.part.0+0x74>
   14270:	ff84849b          	addiw	s1,s1,-8
   14274:	00048a63          	beqz	s1,14288 <eshift.part.0+0xa8>
   14278:	fff4849b          	addiw	s1,s1,-1
   1427c:	00040513          	mv	a0,s0
   14280:	c19ff0ef          	jal	ra,13e98 <eshup1>
   14284:	fe049ae3          	bnez	s1,14278 <eshift.part.0+0x98>
   14288:	00000513          	li	a0,0
   1428c:	02813083          	ld	ra,40(sp)
   14290:	02013403          	ld	s0,32(sp)
   14294:	01813483          	ld	s1,24(sp)
   14298:	01013903          	ld	s2,16(sp)
   1429c:	00813983          	ld	s3,8(sp)
   142a0:	03010113          	addi	sp,sp,48
   142a4:	00008067          	ret
   142a8:	ff100793          	li	a5,-15
   142ac:	40b0093b          	negw	s2,a1
   142b0:	00000993          	li	s3,0
   142b4:	01850593          	addi	a1,a0,24
   142b8:	00450693          	addi	a3,a0,4
   142bc:	00f00613          	li	a2,15
   142c0:	0cf4dc63          	bge	s1,a5,14398 <eshift.part.0+0x1b8>
   142c4:	01845703          	lhu	a4,24(s0)
   142c8:	00058793          	mv	a5,a1
   142cc:	00e9e9b3          	or	s3,s3,a4
   142d0:	ffe7d703          	lhu	a4,-2(a5)
   142d4:	ffe78793          	addi	a5,a5,-2
   142d8:	00e79123          	sh	a4,2(a5)
   142dc:	fed79ae3          	bne	a5,a3,142d0 <eshift.part.0+0xf0>
   142e0:	00041223          	sh	zero,4(s0)
   142e4:	ff09091b          	addiw	s2,s2,-16
   142e8:	fd264ee3          	blt	a2,s2,142c4 <eshift.part.0+0xe4>
   142ec:	ff000913          	li	s2,-16
   142f0:	ff100713          	li	a4,-15
   142f4:	4099093b          	subw	s2,s2,s1
   142f8:	00000793          	li	a5,0
   142fc:	08e4c863          	blt	s1,a4,1438c <eshift.part.0+0x1ac>
   14300:	00f9093b          	addw	s2,s2,a5
   14304:	00700793          	li	a5,7
   14308:	0327de63          	bge	a5,s2,14344 <eshift.part.0+0x164>
   1430c:	01844783          	lbu	a5,24(s0)
   14310:	01a40593          	addi	a1,s0,26
   14314:	00f9e9b3          	or	s3,s3,a5
   14318:	00000793          	li	a5,0
   1431c:	0006d703          	lhu	a4,0(a3)
   14320:	00268693          	addi	a3,a3,2
   14324:	0087561b          	srliw	a2,a4,0x8
   14328:	00c7e7b3          	or	a5,a5,a2
   1432c:	0087171b          	slliw	a4,a4,0x8
   14330:	fef69f23          	sh	a5,-2(a3)
   14334:	03071793          	slli	a5,a4,0x30
   14338:	0307d793          	srli	a5,a5,0x30
   1433c:	feb690e3          	bne	a3,a1,1431c <eshift.part.0+0x13c>
   14340:	ff89091b          	addiw	s2,s2,-8
   14344:	01303533          	snez	a0,s3
   14348:	f40902e3          	beqz	s2,1428c <eshift.part.0+0xac>
   1434c:	01845783          	lhu	a5,24(s0)
   14350:	fff9091b          	addiw	s2,s2,-1
   14354:	00040513          	mv	a0,s0
   14358:	0017f793          	andi	a5,a5,1
   1435c:	00f9e9b3          	or	s3,s3,a5
   14360:	ae5ff0ef          	jal	ra,13e44 <eshdn1>
   14364:	fe0914e3          	bnez	s2,1434c <eshift.part.0+0x16c>
   14368:	02813083          	ld	ra,40(sp)
   1436c:	02013403          	ld	s0,32(sp)
   14370:	0009899b          	sext.w	s3,s3
   14374:	01813483          	ld	s1,24(sp)
   14378:	01013903          	ld	s2,16(sp)
   1437c:	01303533          	snez	a0,s3
   14380:	00813983          	ld	s3,8(sp)
   14384:	03010113          	addi	sp,sp,48
   14388:	00008067          	ret
   1438c:	ff097793          	andi	a5,s2,-16
   14390:	40f007bb          	negw	a5,a5
   14394:	f6dff06f          	j	14300 <eshift.part.0+0x120>
   14398:	ff900793          	li	a5,-7
   1439c:	f6f4c8e3          	blt	s1,a5,1430c <eshift.part.0+0x12c>
   143a0:	fadff06f          	j	1434c <eshift.part.0+0x16c>

00000000000143a4 <emovi>:
   143a4:	01255783          	lhu	a5,18(a0)
   143a8:	000086b7          	lui	a3,0x8
   143ac:	fff68693          	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   143b0:	00f7d79b          	srliw	a5,a5,0xf
   143b4:	40f007bb          	negw	a5,a5
   143b8:	00f59023          	sh	a5,0(a1)
   143bc:	01255703          	lhu	a4,18(a0)
   143c0:	01050793          	addi	a5,a0,16
   143c4:	00d77733          	and	a4,a4,a3
   143c8:	00e59123          	sh	a4,2(a1)
   143cc:	0007061b          	sext.w	a2,a4
   143d0:	02d70663          	beq	a4,a3,143fc <emovi+0x58>
   143d4:	00658713          	addi	a4,a1,6
   143d8:	00059223          	sh	zero,4(a1)
   143dc:	ffe50513          	addi	a0,a0,-2
   143e0:	0007d683          	lhu	a3,0(a5)
   143e4:	ffe78793          	addi	a5,a5,-2
   143e8:	00270713          	addi	a4,a4,2
   143ec:	fed71f23          	sh	a3,-2(a4)
   143f0:	fea798e3          	bne	a5,a0,143e0 <emovi+0x3c>
   143f4:	00059c23          	sh	zero,24(a1)
   143f8:	00008067          	ret
   143fc:	01255703          	lhu	a4,18(a0)
   14400:	00c77733          	and	a4,a4,a2
   14404:	00c71e63          	bne	a4,a2,14420 <emovi+0x7c>
   14408:	01250613          	addi	a2,a0,18
   1440c:	00050713          	mv	a4,a0
   14410:	00075683          	lhu	a3,0(a4)
   14414:	00270713          	addi	a4,a4,2
   14418:	02069063          	bnez	a3,14438 <emovi+0x94>
   1441c:	fec71ae3          	bne	a4,a2,14410 <emovi+0x6c>
   14420:	00458793          	addi	a5,a1,4
   14424:	01a58593          	addi	a1,a1,26
   14428:	00278793          	addi	a5,a5,2
   1442c:	fe079f23          	sh	zero,-2(a5)
   14430:	feb79ce3          	bne	a5,a1,14428 <emovi+0x84>
   14434:	00008067          	ret
   14438:	00658713          	addi	a4,a1,6
   1443c:	00059223          	sh	zero,4(a1)
   14440:	ffc50513          	addi	a0,a0,-4
   14444:	0007d683          	lhu	a3,0(a5)
   14448:	ffe78793          	addi	a5,a5,-2
   1444c:	00270713          	addi	a4,a4,2
   14450:	fed71f23          	sh	a3,-2(a4)
   14454:	fef518e3          	bne	a0,a5,14444 <emovi+0xa0>
   14458:	00008067          	ret

000000000001445c <ecmp>:
   1445c:	01255783          	lhu	a5,18(a0)
   14460:	fb010113          	addi	sp,sp,-80
   14464:	04813023          	sd	s0,64(sp)
   14468:	fff7c793          	not	a5,a5
   1446c:	04113423          	sd	ra,72(sp)
   14470:	03179713          	slli	a4,a5,0x31
   14474:	00058413          	mv	s0,a1
   14478:	00071e63          	bnez	a4,14494 <ecmp+0x38>
   1447c:	01250693          	addi	a3,a0,18
   14480:	00050793          	mv	a5,a0
   14484:	0007d703          	lhu	a4,0(a5)
   14488:	00278793          	addi	a5,a5,2
   1448c:	08071c63          	bnez	a4,14524 <ecmp+0xc8>
   14490:	fed79ae3          	bne	a5,a3,14484 <ecmp+0x28>
   14494:	01245783          	lhu	a5,18(s0)
   14498:	fff7c793          	not	a5,a5
   1449c:	03179713          	slli	a4,a5,0x31
   144a0:	06070063          	beqz	a4,14500 <ecmp+0xa4>
   144a4:	00010593          	mv	a1,sp
   144a8:	efdff0ef          	jal	ra,143a4 <emovi>
   144ac:	02010593          	addi	a1,sp,32
   144b0:	00040513          	mv	a0,s0
   144b4:	ef1ff0ef          	jal	ra,143a4 <emovi>
   144b8:	00015583          	lhu	a1,0(sp)
   144bc:	02015783          	lhu	a5,32(sp)
   144c0:	06b78c63          	beq	a5,a1,14538 <ecmp+0xdc>
   144c4:	00210793          	addi	a5,sp,2
   144c8:	02210713          	addi	a4,sp,34
   144cc:	01810613          	addi	a2,sp,24
   144d0:	0007d683          	lhu	a3,0(a5)
   144d4:	00278793          	addi	a5,a5,2
   144d8:	0a069663          	bnez	a3,14584 <ecmp+0x128>
   144dc:	00075683          	lhu	a3,0(a4)
   144e0:	00270713          	addi	a4,a4,2
   144e4:	0a069063          	bnez	a3,14584 <ecmp+0x128>
   144e8:	fef614e3          	bne	a2,a5,144d0 <ecmp+0x74>
   144ec:	00000513          	li	a0,0
   144f0:	04813083          	ld	ra,72(sp)
   144f4:	04013403          	ld	s0,64(sp)
   144f8:	05010113          	addi	sp,sp,80
   144fc:	00008067          	ret
   14500:	00040793          	mv	a5,s0
   14504:	0007d703          	lhu	a4,0(a5)
   14508:	01240693          	addi	a3,s0,18
   1450c:	00278793          	addi	a5,a5,2
   14510:	00071a63          	bnez	a4,14524 <ecmp+0xc8>
   14514:	f8d788e3          	beq	a5,a3,144a4 <ecmp+0x48>
   14518:	0007d703          	lhu	a4,0(a5)
   1451c:	00278793          	addi	a5,a5,2
   14520:	fe070ae3          	beqz	a4,14514 <ecmp+0xb8>
   14524:	04813083          	ld	ra,72(sp)
   14528:	04013403          	ld	s0,64(sp)
   1452c:	ffe00513          	li	a0,-2
   14530:	05010113          	addi	sp,sp,80
   14534:	00008067          	ret
   14538:	fff00513          	li	a0,-1
   1453c:	06058063          	beqz	a1,1459c <ecmp+0x140>
   14540:	00010793          	mv	a5,sp
   14544:	0007d603          	lhu	a2,0(a5)
   14548:	02015683          	lhu	a3,32(sp)
   1454c:	02010713          	addi	a4,sp,32
   14550:	01810593          	addi	a1,sp,24
   14554:	00278793          	addi	a5,a5,2
   14558:	00270713          	addi	a4,a4,2
   1455c:	00d61e63          	bne	a2,a3,14578 <ecmp+0x11c>
   14560:	f8b786e3          	beq	a5,a1,144ec <ecmp+0x90>
   14564:	0007d603          	lhu	a2,0(a5)
   14568:	00075683          	lhu	a3,0(a4)
   1456c:	00278793          	addi	a5,a5,2
   14570:	00270713          	addi	a4,a4,2
   14574:	fed606e3          	beq	a2,a3,14560 <ecmp+0x104>
   14578:	f6c6ece3          	bltu	a3,a2,144f0 <ecmp+0x94>
   1457c:	40a0053b          	negw	a0,a0
   14580:	f71ff06f          	j	144f0 <ecmp+0x94>
   14584:	02059063          	bnez	a1,145a4 <ecmp+0x148>
   14588:	04813083          	ld	ra,72(sp)
   1458c:	04013403          	ld	s0,64(sp)
   14590:	00100513          	li	a0,1
   14594:	05010113          	addi	sp,sp,80
   14598:	00008067          	ret
   1459c:	00100513          	li	a0,1
   145a0:	fa1ff06f          	j	14540 <ecmp+0xe4>
   145a4:	fff00513          	li	a0,-1
   145a8:	f49ff06f          	j	144f0 <ecmp+0x94>

00000000000145ac <emdnorm>:
   145ac:	fc010113          	addi	sp,sp,-64
   145b0:	02813823          	sd	s0,48(sp)
   145b4:	02913423          	sd	s1,40(sp)
   145b8:	03213023          	sd	s2,32(sp)
   145bc:	01313c23          	sd	s3,24(sp)
   145c0:	01413823          	sd	s4,16(sp)
   145c4:	01513423          	sd	s5,8(sp)
   145c8:	00068913          	mv	s2,a3
   145cc:	00078413          	mv	s0,a5
   145d0:	02113c23          	sd	ra,56(sp)
   145d4:	00050493          	mv	s1,a0
   145d8:	00058993          	mv	s3,a1
   145dc:	00060a13          	mv	s4,a2
   145e0:	00070a93          	mv	s5,a4
   145e4:	a91ff0ef          	jal	ra,14074 <enormlz>
   145e8:	09000793          	li	a5,144
   145ec:	40a90933          	sub	s2,s2,a0
   145f0:	18a7d863          	bge	a5,a0,14780 <emdnorm+0x1d4>
   145f4:	000087b7          	lui	a5,0x8
   145f8:	ffe78793          	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   145fc:	2d27da63          	bge	a5,s2,148d0 <emdnorm+0x324>
   14600:	220a8a63          	beqz	s5,14834 <emdnorm+0x288>
   14604:	00442a83          	lw	s5,4(s0)
   14608:	00042783          	lw	a5,0(s0)
   1460c:	28fa8a63          	beq	s5,a5,148a0 <emdnorm+0x2f4>
   14610:	01a40713          	addi	a4,s0,26
   14614:	03440793          	addi	a5,s0,52
   14618:	00270713          	addi	a4,a4,2
   1461c:	fe071f23          	sh	zero,-2(a4)
   14620:	fee79ce3          	bne	a5,a4,14618 <emdnorm+0x6c>
   14624:	03800793          	li	a5,56
   14628:	38fa8863          	beq	s5,a5,149b8 <emdnorm+0x40c>
   1462c:	1b57da63          	bge	a5,s5,147e0 <emdnorm+0x234>
   14630:	04000793          	li	a5,64
   14634:	2afa8a63          	beq	s5,a5,148e8 <emdnorm+0x33c>
   14638:	07100793          	li	a5,113
   1463c:	3afa9c63          	bne	s5,a5,149f4 <emdnorm+0x448>
   14640:	400087b7          	lui	a5,0x40008
   14644:	00a00693          	li	a3,10
   14648:	ffff8737          	lui	a4,0xffff8
   1464c:	fff78793          	addi	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe3df7>
   14650:	00d42423          	sw	a3,8(s0)
   14654:	00f42a23          	sw	a5,20(s0)
   14658:	00e41c23          	sh	a4,24(s0)
   1465c:	00d42623          	sw	a3,12(s0)
   14660:	02e41723          	sh	a4,46(s0)
   14664:	01542023          	sw	s5,0(s0)
   14668:	23205063          	blez	s2,14888 <emdnorm+0x2dc>
   1466c:	0144d603          	lhu	a2,20(s1)
   14670:	01448593          	addi	a1,s1,20
   14674:	00b00793          	li	a5,11
   14678:	03161613          	slli	a2,a2,0x31
   1467c:	03165613          	srli	a2,a2,0x31
   14680:	00c00713          	li	a4,12
   14684:	40f7073b          	subw	a4,a4,a5
   14688:	02071713          	slli	a4,a4,0x20
   1468c:	02075713          	srli	a4,a4,0x20
   14690:	00f70733          	add	a4,a4,a5
   14694:	00171713          	slli	a4,a4,0x1
   14698:	00179793          	slli	a5,a5,0x1
   1469c:	00248693          	addi	a3,s1,2
   146a0:	00f487b3          	add	a5,s1,a5
   146a4:	00d70733          	add	a4,a4,a3
   146a8:	0007d683          	lhu	a3,0(a5)
   146ac:	00068463          	beqz	a3,146b4 <emdnorm+0x108>
   146b0:	00166613          	ori	a2,a2,1
   146b4:	00079023          	sh	zero,0(a5)
   146b8:	00278793          	addi	a5,a5,2
   146bc:	fef716e3          	bne	a4,a5,146a8 <emdnorm+0xfc>
   146c0:	0005d703          	lhu	a4,0(a1)
   146c4:	01445683          	lhu	a3,20(s0)
   146c8:	fff6c693          	not	a3,a3
   146cc:	00d77733          	and	a4,a4,a3
   146d0:	00e59023          	sh	a4,0(a1)
   146d4:	01645783          	lhu	a5,22(s0)
   146d8:	00c7f733          	and	a4,a5,a2
   146dc:	06070063          	beqz	a4,1473c <emdnorm+0x190>
   146e0:	02c79263          	bne	a5,a2,14704 <emdnorm+0x158>
   146e4:	2c099663          	bnez	s3,149b0 <emdnorm+0x404>
   146e8:	00c42783          	lw	a5,12(s0)
   146ec:	01845703          	lhu	a4,24(s0)
   146f0:	00179793          	slli	a5,a5,0x1
   146f4:	00f487b3          	add	a5,s1,a5
   146f8:	0007d783          	lhu	a5,0(a5)
   146fc:	00e7f7b3          	and	a5,a5,a4
   14700:	02078e63          	beqz	a5,1473c <emdnorm+0x190>
   14704:	03240793          	addi	a5,s0,50
   14708:	01848613          	addi	a2,s1,24
   1470c:	00248513          	addi	a0,s1,2
   14710:	00000593          	li	a1,0
   14714:	0007d703          	lhu	a4,0(a5)
   14718:	00065683          	lhu	a3,0(a2)
   1471c:	ffe60613          	addi	a2,a2,-2
   14720:	ffe78793          	addi	a5,a5,-2
   14724:	00d70733          	add	a4,a4,a3
   14728:	00b70733          	add	a4,a4,a1
   1472c:	01075593          	srli	a1,a4,0x10
   14730:	00e61123          	sh	a4,2(a2)
   14734:	0015f593          	andi	a1,a1,1
   14738:	fca61ee3          	bne	a2,a0,14714 <emdnorm+0x168>
   1473c:	23205a63          	blez	s2,14970 <emdnorm+0x3c4>
   14740:	0044d783          	lhu	a5,4(s1)
   14744:	20079663          	bnez	a5,14950 <emdnorm+0x3a4>
   14748:	000087b7          	lui	a5,0x8
   1474c:	00049c23          	sh	zero,24(s1)
   14750:	ffe78793          	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   14754:	0f27c263          	blt	a5,s2,14838 <emdnorm+0x28c>
   14758:	01249123          	sh	s2,2(s1)
   1475c:	03813083          	ld	ra,56(sp)
   14760:	03013403          	ld	s0,48(sp)
   14764:	02813483          	ld	s1,40(sp)
   14768:	02013903          	ld	s2,32(sp)
   1476c:	01813983          	ld	s3,24(sp)
   14770:	01013a03          	ld	s4,16(sp)
   14774:	00813a83          	ld	s5,8(sp)
   14778:	04010113          	addi	sp,sp,64
   1477c:	00008067          	ret
   14780:	04094063          	bltz	s2,147c0 <emdnorm+0x214>
   14784:	fc0a82e3          	beqz	s5,14748 <emdnorm+0x19c>
   14788:	00442a83          	lw	s5,4(s0)
   1478c:	00042783          	lw	a5,0(s0)
   14790:	e8fa90e3          	bne	s5,a5,14610 <emdnorm+0x64>
   14794:	2d204263          	bgtz	s2,14a58 <emdnorm+0x4ac>
   14798:	09000713          	li	a4,144
   1479c:	2ce79263          	bne	a5,a4,14a60 <emdnorm+0x4b4>
   147a0:	00842583          	lw	a1,8(s0)
   147a4:	01445683          	lhu	a3,20(s0)
   147a8:	09000a93          	li	s5,144
   147ac:	00159593          	slli	a1,a1,0x1
   147b0:	00b485b3          	add	a1,s1,a1
   147b4:	0005d703          	lhu	a4,0(a1)
   147b8:	00d77633          	and	a2,a4,a3
   147bc:	f0dff06f          	j	146c8 <emdnorm+0x11c>
   147c0:	f7000793          	li	a5,-144
   147c4:	16f95263          	bge	s2,a5,14928 <emdnorm+0x37c>
   147c8:	00248793          	addi	a5,s1,2
   147cc:	01a48493          	addi	s1,s1,26
   147d0:	00278793          	addi	a5,a5,2
   147d4:	fe079f23          	sh	zero,-2(a5)
   147d8:	fef49ce3          	bne	s1,a5,147d0 <emdnorm+0x224>
   147dc:	f81ff06f          	j	1475c <emdnorm+0x1b0>
   147e0:	01800793          	li	a5,24
   147e4:	06fa8c63          	beq	s5,a5,1485c <emdnorm+0x2b0>
   147e8:	03500793          	li	a5,53
   147ec:	20fa9463          	bne	s5,a5,149f4 <emdnorm+0x448>
   147f0:	000017b7          	lui	a5,0x1
   147f4:	04000737          	lui	a4,0x4000
   147f8:	00600693          	li	a3,6
   147fc:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8e8>
   14800:	7ff70713          	addi	a4,a4,2047 # 40007ff <__BSS_END__+0x3fdc5f7>
   14804:	00d42423          	sw	a3,8(s0)
   14808:	00e42a23          	sw	a4,20(s0)
   1480c:	00f41c23          	sh	a5,24(s0)
   14810:	00d42623          	sw	a3,12(s0)
   14814:	02f41323          	sh	a5,38(s0)
   14818:	01542023          	sw	s5,0(s0)
   1481c:	07205663          	blez	s2,14888 <emdnorm+0x2dc>
   14820:	00c4d603          	lhu	a2,12(s1)
   14824:	00c48593          	addi	a1,s1,12
   14828:	00700793          	li	a5,7
   1482c:	7ff67613          	andi	a2,a2,2047
   14830:	e51ff06f          	j	14680 <emdnorm+0xd4>
   14834:	00049c23          	sh	zero,24(s1)
   14838:	ffff87b7          	lui	a5,0xffff8
   1483c:	fff7c793          	not	a5,a5
   14840:	00f49123          	sh	a5,2(s1)
   14844:	00448793          	addi	a5,s1,4
   14848:	01848493          	addi	s1,s1,24
   1484c:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3df8>
   14850:	00278793          	addi	a5,a5,2
   14854:	fe979ce3          	bne	a5,s1,1484c <emdnorm+0x2a0>
   14858:	f05ff06f          	j	1475c <emdnorm+0x1b0>
   1485c:	008007b7          	lui	a5,0x800
   14860:	00400693          	li	a3,4
   14864:	10000713          	li	a4,256
   14868:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7dbef7>
   1486c:	00d42423          	sw	a3,8(s0)
   14870:	00f42a23          	sw	a5,20(s0)
   14874:	00e41c23          	sh	a4,24(s0)
   14878:	00d42623          	sw	a3,12(s0)
   1487c:	02e41123          	sh	a4,34(s0)
   14880:	01542023          	sw	s5,0(s0)
   14884:	1b204c63          	bgtz	s2,14a3c <emdnorm+0x490>
   14888:	0184d783          	lhu	a5,24(s1)
   1488c:	00048513          	mv	a0,s1
   14890:	0017f793          	andi	a5,a5,1
   14894:	00f9e7b3          	or	a5,s3,a5
   14898:	0007899b          	sext.w	s3,a5
   1489c:	da8ff0ef          	jal	ra,13e44 <eshdn1>
   148a0:	00842783          	lw	a5,8(s0)
   148a4:	01445683          	lhu	a3,20(s0)
   148a8:	08f00513          	li	a0,143
   148ac:	00179593          	slli	a1,a5,0x1
   148b0:	00b485b3          	add	a1,s1,a1
   148b4:	0005d703          	lhu	a4,0(a1)
   148b8:	00d77633          	and	a2,a4,a3
   148bc:	e15546e3          	blt	a0,s5,146c8 <emdnorm+0x11c>
   148c0:	0017879b          	addiw	a5,a5,1
   148c4:	00c00513          	li	a0,12
   148c8:	daf55ce3          	bge	a0,a5,14680 <emdnorm+0xd4>
   148cc:	dfdff06f          	j	146c8 <emdnorm+0x11c>
   148d0:	00248793          	addi	a5,s1,2
   148d4:	01a48493          	addi	s1,s1,26
   148d8:	00278793          	addi	a5,a5,2
   148dc:	fe079f23          	sh	zero,-2(a5)
   148e0:	fef49ce3          	bne	s1,a5,148d8 <emdnorm+0x32c>
   148e4:	e79ff06f          	j	1475c <emdnorm+0x1b0>
   148e8:	00700793          	li	a5,7
   148ec:	00f42423          	sw	a5,8(s0)
   148f0:	800107b7          	lui	a5,0x80010
   148f4:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffebdf7>
   148f8:	00100713          	li	a4,1
   148fc:	00f42a23          	sw	a5,20(s0)
   14900:	00600793          	li	a5,6
   14904:	00e41c23          	sh	a4,24(s0)
   14908:	00f42623          	sw	a5,12(s0)
   1490c:	02e41323          	sh	a4,38(s0)
   14910:	01542023          	sw	s5,0(s0)
   14914:	f7205ae3          	blez	s2,14888 <emdnorm+0x2dc>
   14918:	00e4d603          	lhu	a2,14(s1)
   1491c:	00e48593          	addi	a1,s1,14
   14920:	00800793          	li	a5,8
   14924:	d5dff06f          	j	14680 <emdnorm+0xd4>
   14928:	0009059b          	sext.w	a1,s2
   1492c:	00048513          	mv	a0,s1
   14930:	8b1ff0ef          	jal	ra,141e0 <eshift.part.0>
   14934:	0e050a63          	beqz	a0,14a28 <emdnorm+0x47c>
   14938:	100a8a63          	beqz	s5,14a4c <emdnorm+0x4a0>
   1493c:	00442a83          	lw	s5,4(s0)
   14940:	00042783          	lw	a5,0(s0)
   14944:	00100993          	li	s3,1
   14948:	ccfa94e3          	bne	s5,a5,14610 <emdnorm+0x64>
   1494c:	e4dff06f          	j	14798 <emdnorm+0x1ec>
   14950:	00048513          	mv	a0,s1
   14954:	cf0ff0ef          	jal	ra,13e44 <eshdn1>
   14958:	000087b7          	lui	a5,0x8
   1495c:	00190913          	addi	s2,s2,1
   14960:	00049c23          	sh	zero,24(s1)
   14964:	ffe78793          	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   14968:	ed27c8e3          	blt	a5,s2,14838 <emdnorm+0x28c>
   1496c:	dedff06f          	j	14758 <emdnorm+0x1ac>
   14970:	09000793          	li	a5,144
   14974:	02fa8263          	beq	s5,a5,14998 <emdnorm+0x3ec>
   14978:	00048513          	mv	a0,s1
   1497c:	d1cff0ef          	jal	ra,13e98 <eshup1>
   14980:	0044d783          	lhu	a5,4(s1)
   14984:	00079e63          	bnez	a5,149a0 <emdnorm+0x3f4>
   14988:	00049c23          	sh	zero,24(s1)
   1498c:	dc0956e3          	bgez	s2,14758 <emdnorm+0x1ac>
   14990:	00049123          	sh	zero,2(s1)
   14994:	dc9ff06f          	j	1475c <emdnorm+0x1b0>
   14998:	0044d783          	lhu	a5,4(s1)
   1499c:	fe0786e3          	beqz	a5,14988 <emdnorm+0x3dc>
   149a0:	00048513          	mv	a0,s1
   149a4:	ca0ff0ef          	jal	ra,13e44 <eshdn1>
   149a8:	00190913          	addi	s2,s2,1
   149ac:	fddff06f          	j	14988 <emdnorm+0x3dc>
   149b0:	d40a0ae3          	beqz	s4,14704 <emdnorm+0x158>
   149b4:	d89ff06f          	j	1473c <emdnorm+0x190>
   149b8:	008007b7          	lui	a5,0x800
   149bc:	00600693          	li	a3,6
   149c0:	10000713          	li	a4,256
   149c4:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7dbef7>
   149c8:	00d42423          	sw	a3,8(s0)
   149cc:	00f42a23          	sw	a5,20(s0)
   149d0:	00e41c23          	sh	a4,24(s0)
   149d4:	00d42623          	sw	a3,12(s0)
   149d8:	02e41323          	sh	a4,38(s0)
   149dc:	01542023          	sw	s5,0(s0)
   149e0:	eb2054e3          	blez	s2,14888 <emdnorm+0x2dc>
   149e4:	00c4c603          	lbu	a2,12(s1)
   149e8:	00c48593          	addi	a1,s1,12
   149ec:	00700793          	li	a5,7
   149f0:	c91ff06f          	j	14680 <emdnorm+0xd4>
   149f4:	00c00793          	li	a5,12
   149f8:	00f42423          	sw	a5,8(s0)
   149fc:	800107b7          	lui	a5,0x80010
   14a00:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffebdf7>
   14a04:	00100713          	li	a4,1
   14a08:	00f42a23          	sw	a5,20(s0)
   14a0c:	00b00793          	li	a5,11
   14a10:	00f42623          	sw	a5,12(s0)
   14a14:	00e41c23          	sh	a4,24(s0)
   14a18:	02e41823          	sh	a4,48(s0)
   14a1c:	01542023          	sw	s5,0(s0)
   14a20:	000a8793          	mv	a5,s5
   14a24:	d71ff06f          	j	14794 <emdnorm+0x1e8>
   14a28:	020a8263          	beqz	s5,14a4c <emdnorm+0x4a0>
   14a2c:	00442a83          	lw	s5,4(s0)
   14a30:	00042783          	lw	a5,0(s0)
   14a34:	bcfa9ee3          	bne	s5,a5,14610 <emdnorm+0x64>
   14a38:	d61ff06f          	j	14798 <emdnorm+0x1ec>
   14a3c:	0084c603          	lbu	a2,8(s1)
   14a40:	00848593          	addi	a1,s1,8
   14a44:	00500793          	li	a5,5
   14a48:	c39ff06f          	j	14680 <emdnorm+0xd4>
   14a4c:	00049c23          	sh	zero,24(s1)
   14a50:	00049123          	sh	zero,2(s1)
   14a54:	d09ff06f          	j	1475c <emdnorm+0x1b0>
   14a58:	00078a93          	mv	s5,a5
   14a5c:	e45ff06f          	j	148a0 <emdnorm+0x2f4>
   14a60:	00078a93          	mv	s5,a5
   14a64:	e25ff06f          	j	14888 <emdnorm+0x2dc>

0000000000014a68 <eiremain>:
   14a68:	fa010113          	addi	sp,sp,-96
   14a6c:	05213023          	sd	s2,64(sp)
   14a70:	03313c23          	sd	s3,56(sp)
   14a74:	00058913          	mv	s2,a1
   14a78:	00255983          	lhu	s3,2(a0)
   14a7c:	04113c23          	sd	ra,88(sp)
   14a80:	04813823          	sd	s0,80(sp)
   14a84:	04913423          	sd	s1,72(sp)
   14a88:	03413823          	sd	s4,48(sp)
   14a8c:	00060493          	mv	s1,a2
   14a90:	01713c23          	sd	s7,24(sp)
   14a94:	03513423          	sd	s5,40(sp)
   14a98:	03613023          	sd	s6,32(sp)
   14a9c:	01813823          	sd	s8,16(sp)
   14aa0:	01913423          	sd	s9,8(sp)
   14aa4:	01a13023          	sd	s10,0(sp)
   14aa8:	00050b93          	mv	s7,a0
   14aac:	dc8ff0ef          	jal	ra,14074 <enormlz>
   14ab0:	00295403          	lhu	s0,2(s2)
   14ab4:	00050793          	mv	a5,a0
   14ab8:	00090513          	mv	a0,s2
   14abc:	40f989b3          	sub	s3,s3,a5
   14ac0:	03448a13          	addi	s4,s1,52
   14ac4:	db0ff0ef          	jal	ra,14074 <enormlz>
   14ac8:	40a40433          	sub	s0,s0,a0
   14acc:	04e48713          	addi	a4,s1,78
   14ad0:	000a0793          	mv	a5,s4
   14ad4:	00278793          	addi	a5,a5,2
   14ad8:	fe079f23          	sh	zero,-2(a5)
   14adc:	fee79ce3          	bne	a5,a4,14ad4 <eiremain+0x6c>
   14ae0:	09344863          	blt	s0,s3,14b70 <eiremain+0x108>
   14ae4:	004b8b13          	addi	s6,s7,4
   14ae8:	00490a93          	addi	s5,s2,4
   14aec:	01ab8c13          	addi	s8,s7,26
   14af0:	00290d13          	addi	s10,s2,2
   14af4:	000a8713          	mv	a4,s5
   14af8:	000b0793          	mv	a5,s6
   14afc:	0007d603          	lhu	a2,0(a5)
   14b00:	00075683          	lhu	a3,0(a4)
   14b04:	00278793          	addi	a5,a5,2
   14b08:	00270713          	addi	a4,a4,2
   14b0c:	0ad61a63          	bne	a2,a3,14bc0 <eiremain+0x158>
   14b10:	fefc16e3          	bne	s8,a5,14afc <eiremain+0x94>
   14b14:	018b8613          	addi	a2,s7,24
   14b18:	01890713          	addi	a4,s2,24
   14b1c:	00000693          	li	a3,0
   14b20:	00075783          	lhu	a5,0(a4)
   14b24:	00065583          	lhu	a1,0(a2)
   14b28:	ffe70713          	addi	a4,a4,-2
   14b2c:	ffe60613          	addi	a2,a2,-2
   14b30:	40b787b3          	sub	a5,a5,a1
   14b34:	40d787b3          	sub	a5,a5,a3
   14b38:	0107d693          	srli	a3,a5,0x10
   14b3c:	00f71123          	sh	a5,2(a4)
   14b40:	0016f693          	andi	a3,a3,1
   14b44:	fda71ee3          	bne	a4,s10,14b20 <eiremain+0xb8>
   14b48:	00100c93          	li	s9,1
   14b4c:	000a0513          	mv	a0,s4
   14b50:	b48ff0ef          	jal	ra,13e98 <eshup1>
   14b54:	04c4d783          	lhu	a5,76(s1)
   14b58:	fff40413          	addi	s0,s0,-1
   14b5c:	00090513          	mv	a0,s2
   14b60:	00fce7b3          	or	a5,s9,a5
   14b64:	04f49623          	sh	a5,76(s1)
   14b68:	b30ff0ef          	jal	ra,13e98 <eshup1>
   14b6c:	f93454e3          	bge	s0,s3,14af4 <eiremain+0x8c>
   14b70:	00040693          	mv	a3,s0
   14b74:	05013403          	ld	s0,80(sp)
   14b78:	05813083          	ld	ra,88(sp)
   14b7c:	03813983          	ld	s3,56(sp)
   14b80:	03013a03          	ld	s4,48(sp)
   14b84:	02813a83          	ld	s5,40(sp)
   14b88:	02013b03          	ld	s6,32(sp)
   14b8c:	01813b83          	ld	s7,24(sp)
   14b90:	01013c03          	ld	s8,16(sp)
   14b94:	00813c83          	ld	s9,8(sp)
   14b98:	00013d03          	ld	s10,0(sp)
   14b9c:	00048793          	mv	a5,s1
   14ba0:	00090513          	mv	a0,s2
   14ba4:	04813483          	ld	s1,72(sp)
   14ba8:	04013903          	ld	s2,64(sp)
   14bac:	00000713          	li	a4,0
   14bb0:	00000613          	li	a2,0
   14bb4:	00000593          	li	a1,0
   14bb8:	06010113          	addi	sp,sp,96
   14bbc:	9f1ff06f          	j	145ac <emdnorm>
   14bc0:	00000c93          	li	s9,0
   14bc4:	f8c6e4e3          	bltu	a3,a2,14b4c <eiremain+0xe4>
   14bc8:	f4dff06f          	j	14b14 <eiremain+0xac>

0000000000014bcc <e113toe.isra.0>:
   14bcc:	fd010113          	addi	sp,sp,-48
   14bd0:	02813023          	sd	s0,32(sp)
   14bd4:	02113423          	sd	ra,40(sp)
   14bd8:	00058413          	mv	s0,a1
   14bdc:	00010793          	mv	a5,sp
   14be0:	01a10713          	addi	a4,sp,26
   14be4:	00278793          	addi	a5,a5,2
   14be8:	fe079f23          	sh	zero,-2(a5)
   14bec:	fee79ce3          	bne	a5,a4,14be4 <e113toe.isra.0+0x18>
   14bf0:	00e55783          	lhu	a5,14(a0)
   14bf4:	00008737          	lui	a4,0x8
   14bf8:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14bfc:	03079693          	slli	a3,a5,0x30
   14c00:	43f6d693          	srai	a3,a3,0x3f
   14c04:	00d11023          	sh	a3,0(sp)
   14c08:	00e7f6b3          	and	a3,a5,a4
   14c0c:	00068613          	mv	a2,a3
   14c10:	06e68063          	beq	a3,a4,14c70 <e113toe.isra.0+0xa4>
   14c14:	00e50793          	addi	a5,a0,14
   14c18:	00d11123          	sh	a3,2(sp)
   14c1c:	00610713          	addi	a4,sp,6
   14c20:	ffe7d683          	lhu	a3,-2(a5)
   14c24:	ffe78793          	addi	a5,a5,-2
   14c28:	00270713          	addi	a4,a4,2
   14c2c:	fed71f23          	sh	a3,-2(a4)
   14c30:	fef518e3          	bne	a0,a5,14c20 <e113toe.isra.0+0x54>
   14c34:	02061263          	bnez	a2,14c58 <e113toe.isra.0+0x8c>
   14c38:	00011223          	sh	zero,4(sp)
   14c3c:	00040593          	mv	a1,s0
   14c40:	00010513          	mv	a0,sp
   14c44:	b74ff0ef          	jal	ra,13fb8 <emovo.constprop.0>
   14c48:	02813083          	ld	ra,40(sp)
   14c4c:	02013403          	ld	s0,32(sp)
   14c50:	03010113          	addi	sp,sp,48
   14c54:	00008067          	ret
   14c58:	00100793          	li	a5,1
   14c5c:	fff00593          	li	a1,-1
   14c60:	00010513          	mv	a0,sp
   14c64:	00f11223          	sh	a5,4(sp)
   14c68:	d78ff0ef          	jal	ra,141e0 <eshift.part.0>
   14c6c:	fd1ff06f          	j	14c3c <e113toe.isra.0+0x70>
   14c70:	00050793          	mv	a5,a0
   14c74:	00e50693          	addi	a3,a0,14
   14c78:	0007d703          	lhu	a4,0(a5)
   14c7c:	00278793          	addi	a5,a5,2
   14c80:	06071c63          	bnez	a4,14cf8 <e113toe.isra.0+0x12c>
   14c84:	fed79ae3          	bne	a5,a3,14c78 <e113toe.isra.0+0xac>
   14c88:	01440713          	addi	a4,s0,20
   14c8c:	00040793          	mv	a5,s0
   14c90:	00278793          	addi	a5,a5,2
   14c94:	fe079f23          	sh	zero,-2(a5)
   14c98:	fee79ce3          	bne	a5,a4,14c90 <e113toe.isra.0+0xc4>
   14c9c:	01240713          	addi	a4,s0,18
   14ca0:	00040793          	mv	a5,s0
   14ca4:	00278793          	addi	a5,a5,2
   14ca8:	fe079f23          	sh	zero,-2(a5)
   14cac:	fee79ce3          	bne	a5,a4,14ca4 <e113toe.isra.0+0xd8>
   14cb0:	01245783          	lhu	a5,18(s0)
   14cb4:	000086b7          	lui	a3,0x8
   14cb8:	fff68693          	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   14cbc:	00d7e7b3          	or	a5,a5,a3
   14cc0:	03079793          	slli	a5,a5,0x30
   14cc4:	0307d793          	srli	a5,a5,0x30
   14cc8:	00f41923          	sh	a5,18(s0)
   14ccc:	00e51683          	lh	a3,14(a0)
   14cd0:	f606dce3          	bgez	a3,14c48 <e113toe.isra.0+0x7c>
   14cd4:	00040693          	mv	a3,s0
   14cd8:	0006d603          	lhu	a2,0(a3)
   14cdc:	00268693          	addi	a3,a3,2
   14ce0:	f60614e3          	bnez	a2,14c48 <e113toe.isra.0+0x7c>
   14ce4:	fee69ae3          	bne	a3,a4,14cd8 <e113toe.isra.0+0x10c>
   14ce8:	ffff8737          	lui	a4,0xffff8
   14cec:	00e7c7b3          	xor	a5,a5,a4
   14cf0:	00f41923          	sh	a5,18(s0)
   14cf4:	f55ff06f          	j	14c48 <e113toe.isra.0+0x7c>
   14cf8:	01040713          	addi	a4,s0,16
   14cfc:	00040793          	mv	a5,s0
   14d00:	00278793          	addi	a5,a5,2
   14d04:	fe079f23          	sh	zero,-2(a5)
   14d08:	fee79ce3          	bne	a5,a4,14d00 <e113toe.isra.0+0x134>
   14d0c:	ffffc7b7          	lui	a5,0xffffc
   14d10:	00f41823          	sh	a5,16(s0)
   14d14:	ffff87b7          	lui	a5,0xffff8
   14d18:	fff7c793          	not	a5,a5
   14d1c:	00f41923          	sh	a5,18(s0)
   14d20:	f29ff06f          	j	14c48 <e113toe.isra.0+0x7c>

0000000000014d24 <ediv>:
   14d24:	01255783          	lhu	a5,18(a0)
   14d28:	f1010113          	addi	sp,sp,-240
   14d2c:	0e813023          	sd	s0,224(sp)
   14d30:	fff7c793          	not	a5,a5
   14d34:	0c913c23          	sd	s1,216(sp)
   14d38:	0d213823          	sd	s2,208(sp)
   14d3c:	0d313423          	sd	s3,200(sp)
   14d40:	0e113423          	sd	ra,232(sp)
   14d44:	0d413023          	sd	s4,192(sp)
   14d48:	0b513c23          	sd	s5,184(sp)
   14d4c:	0b613823          	sd	s6,176(sp)
   14d50:	0b713423          	sd	s7,168(sp)
   14d54:	0b813023          	sd	s8,160(sp)
   14d58:	09913c23          	sd	s9,152(sp)
   14d5c:	09a13823          	sd	s10,144(sp)
   14d60:	09b13423          	sd	s11,136(sp)
   14d64:	03179713          	slli	a4,a5,0x31
   14d68:	00050493          	mv	s1,a0
   14d6c:	00058993          	mv	s3,a1
   14d70:	00060413          	mv	s0,a2
   14d74:	00068913          	mv	s2,a3
   14d78:	00071e63          	bnez	a4,14d94 <ediv+0x70>
   14d7c:	01250693          	addi	a3,a0,18
   14d80:	00050793          	mv	a5,a0
   14d84:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3df8>
   14d88:	00278793          	addi	a5,a5,2
   14d8c:	0e071e63          	bnez	a4,14e88 <ediv+0x164>
   14d90:	fed79ae3          	bne	a5,a3,14d84 <ediv+0x60>
   14d94:	0129d783          	lhu	a5,18(s3)
   14d98:	fff7c793          	not	a5,a5
   14d9c:	03179713          	slli	a4,a5,0x31
   14da0:	00071e63          	bnez	a4,14dbc <ediv+0x98>
   14da4:	01298693          	addi	a3,s3,18
   14da8:	00098793          	mv	a5,s3
   14dac:	0007d703          	lhu	a4,0(a5)
   14db0:	00278793          	addi	a5,a5,2
   14db4:	0e071863          	bnez	a4,14ea4 <ediv+0x180>
   14db8:	fed79ae3          	bne	a5,a3,14dac <ediv+0x88>
   14dbc:	00022a37          	lui	s4,0x22
   14dc0:	510a0593          	addi	a1,s4,1296 # 22510 <ezero>
   14dc4:	00048513          	mv	a0,s1
   14dc8:	e94ff0ef          	jal	ra,1445c <ecmp>
   14dcc:	18050a63          	beqz	a0,14f60 <ediv+0x23c>
   14dd0:	0124d603          	lhu	a2,18(s1)
   14dd4:	000087b7          	lui	a5,0x8
   14dd8:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14ddc:	00f67533          	and	a0,a2,a5
   14de0:	0ef51063          	bne	a0,a5,14ec0 <ediv+0x19c>
   14de4:	01248693          	addi	a3,s1,18
   14de8:	00048793          	mv	a5,s1
   14dec:	0007d703          	lhu	a4,0(a5)
   14df0:	00278793          	addi	a5,a5,2
   14df4:	0c071663          	bnez	a4,14ec0 <ediv+0x19c>
   14df8:	fed79ae3          	bne	a5,a3,14dec <ediv+0xc8>
   14dfc:	0129d703          	lhu	a4,18(s3)
   14e00:	fff74793          	not	a5,a4
   14e04:	03179693          	slli	a3,a5,0x31
   14e08:	14069263          	bnez	a3,14f4c <ediv+0x228>
   14e0c:	01298693          	addi	a3,s3,18
   14e10:	00098793          	mv	a5,s3
   14e14:	0007d583          	lhu	a1,0(a5)
   14e18:	00278793          	addi	a5,a5,2
   14e1c:	48059c63          	bnez	a1,152b4 <ediv+0x590>
   14e20:	fed79ae3          	bne	a5,a3,14e14 <ediv+0xf0>
   14e24:	01040713          	addi	a4,s0,16
   14e28:	00040793          	mv	a5,s0
   14e2c:	00278793          	addi	a5,a5,2
   14e30:	fe079f23          	sh	zero,-2(a5)
   14e34:	fee79ce3          	bne	a5,a4,14e2c <ediv+0x108>
   14e38:	ffffc7b7          	lui	a5,0xffffc
   14e3c:	00f41823          	sh	a5,16(s0)
   14e40:	ffff87b7          	lui	a5,0xffff8
   14e44:	fff7c793          	not	a5,a5
   14e48:	00f41923          	sh	a5,18(s0)
   14e4c:	0e813083          	ld	ra,232(sp)
   14e50:	0e013403          	ld	s0,224(sp)
   14e54:	0d813483          	ld	s1,216(sp)
   14e58:	0d013903          	ld	s2,208(sp)
   14e5c:	0c813983          	ld	s3,200(sp)
   14e60:	0c013a03          	ld	s4,192(sp)
   14e64:	0b813a83          	ld	s5,184(sp)
   14e68:	0b013b03          	ld	s6,176(sp)
   14e6c:	0a813b83          	ld	s7,168(sp)
   14e70:	0a013c03          	ld	s8,160(sp)
   14e74:	09813c83          	ld	s9,152(sp)
   14e78:	09013d03          	ld	s10,144(sp)
   14e7c:	08813d83          	ld	s11,136(sp)
   14e80:	0f010113          	addi	sp,sp,240
   14e84:	00008067          	ret
   14e88:	01448713          	addi	a4,s1,20
   14e8c:	0004d783          	lhu	a5,0(s1)
   14e90:	00248493          	addi	s1,s1,2
   14e94:	00240413          	addi	s0,s0,2
   14e98:	fef41f23          	sh	a5,-2(s0)
   14e9c:	fee498e3          	bne	s1,a4,14e8c <ediv+0x168>
   14ea0:	fadff06f          	j	14e4c <ediv+0x128>
   14ea4:	01440713          	addi	a4,s0,20
   14ea8:	0009d783          	lhu	a5,0(s3)
   14eac:	00240413          	addi	s0,s0,2
   14eb0:	00298993          	addi	s3,s3,2
   14eb4:	fef41f23          	sh	a5,-2(s0)
   14eb8:	fee418e3          	bne	s0,a4,14ea8 <ediv+0x184>
   14ebc:	f91ff06f          	j	14e4c <ediv+0x128>
   14ec0:	0129d703          	lhu	a4,18(s3)
   14ec4:	fff74793          	not	a5,a4
   14ec8:	03179693          	slli	a3,a5,0x31
   14ecc:	0a069463          	bnez	a3,14f74 <ediv+0x250>
   14ed0:	00000813          	li	a6,0
   14ed4:	01298693          	addi	a3,s3,18
   14ed8:	00098793          	mv	a5,s3
   14edc:	0007d583          	lhu	a1,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3df8>
   14ee0:	00278793          	addi	a5,a5,2
   14ee4:	06059263          	bnez	a1,14f48 <ediv+0x224>
   14ee8:	fed79ae3          	bne	a5,a3,14edc <ediv+0x1b8>
   14eec:	000087b7          	lui	a5,0x8
   14ef0:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14ef4:	0cf50863          	beq	a0,a5,14fc4 <ediv+0x2a0>
   14ef8:	00f65613          	srli	a2,a2,0xf
   14efc:	0009d783          	lhu	a5,0(s3)
   14f00:	00298993          	addi	s3,s3,2
   14f04:	3a079063          	bnez	a5,152a4 <ediv+0x580>
   14f08:	fed99ae3          	bne	s3,a3,14efc <ediv+0x1d8>
   14f0c:	00f75793          	srli	a5,a4,0xf
   14f10:	00c7c7b3          	xor	a5,a5,a2
   14f14:	00f7979b          	slliw	a5,a5,0xf
   14f18:	00f41923          	sh	a5,18(s0)
   14f1c:	01240713          	addi	a4,s0,18
   14f20:	00040793          	mv	a5,s0
   14f24:	00278793          	addi	a5,a5,2
   14f28:	fe079f23          	sh	zero,-2(a5)
   14f2c:	fee79ce3          	bne	a5,a4,14f24 <ediv+0x200>
   14f30:	01245783          	lhu	a5,18(s0)
   14f34:	00008737          	lui	a4,0x8
   14f38:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14f3c:	00e7e7b3          	or	a5,a5,a4
   14f40:	00f41923          	sh	a5,18(s0)
   14f44:	f09ff06f          	j	14e4c <ediv+0x128>
   14f48:	02080663          	beqz	a6,14f74 <ediv+0x250>
   14f4c:	01440793          	addi	a5,s0,20
   14f50:	00240413          	addi	s0,s0,2
   14f54:	fe041f23          	sh	zero,-2(s0)
   14f58:	fef41ce3          	bne	s0,a5,14f50 <ediv+0x22c>
   14f5c:	ef1ff06f          	j	14e4c <ediv+0x128>
   14f60:	510a0593          	addi	a1,s4,1296
   14f64:	00098513          	mv	a0,s3
   14f68:	cf4ff0ef          	jal	ra,1445c <ecmp>
   14f6c:	e60512e3          	bnez	a0,14dd0 <ediv+0xac>
   14f70:	eb5ff06f          	j	14e24 <ediv+0x100>
   14f74:	02010593          	addi	a1,sp,32
   14f78:	00048513          	mv	a0,s1
   14f7c:	c28ff0ef          	jal	ra,143a4 <emovi>
   14f80:	04010593          	addi	a1,sp,64
   14f84:	00098513          	mv	a0,s3
   14f88:	c1cff0ef          	jal	ra,143a4 <emovi>
   14f8c:	04215b03          	lhu	s6,66(sp)
   14f90:	02215c03          	lhu	s8,34(sp)
   14f94:	040b1463          	bnez	s6,14fdc <ediv+0x2b8>
   14f98:	04210793          	addi	a5,sp,66
   14f9c:	05810c93          	addi	s9,sp,88
   14fa0:	0007d703          	lhu	a4,0(a5)
   14fa4:	00278793          	addi	a5,a5,2
   14fa8:	2c071a63          	bnez	a4,1527c <ediv+0x558>
   14fac:	fefc9ae3          	bne	s9,a5,14fa0 <ediv+0x27c>
   14fb0:	01440793          	addi	a5,s0,20
   14fb4:	00240413          	addi	s0,s0,2
   14fb8:	fe041f23          	sh	zero,-2(s0)
   14fbc:	fef41ce3          	bne	s0,a5,14fb4 <ediv+0x290>
   14fc0:	e8dff06f          	j	14e4c <ediv+0x128>
   14fc4:	01248593          	addi	a1,s1,18
   14fc8:	0004d783          	lhu	a5,0(s1)
   14fcc:	00248493          	addi	s1,s1,2
   14fd0:	2c079e63          	bnez	a5,152ac <ediv+0x588>
   14fd4:	feb49ae3          	bne	s1,a1,14fc8 <ediv+0x2a4>
   14fd8:	f21ff06f          	j	14ef8 <ediv+0x1d4>
   14fdc:	01613423          	sd	s6,8(sp)
   14fe0:	040c1663          	bnez	s8,1502c <ediv+0x308>
   14fe4:	02210793          	addi	a5,sp,34
   14fe8:	03810693          	addi	a3,sp,56
   14fec:	0007d703          	lhu	a4,0(a5)
   14ff0:	00278793          	addi	a5,a5,2
   14ff4:	28071e63          	bnez	a4,15290 <ediv+0x56c>
   14ff8:	fed79ae3          	bne	a5,a3,14fec <ediv+0x2c8>
   14ffc:	02015683          	lhu	a3,32(sp)
   15000:	04015603          	lhu	a2,64(sp)
   15004:	01240713          	addi	a4,s0,18
   15008:	00040793          	mv	a5,s0
   1500c:	40c686b3          	sub	a3,a3,a2
   15010:	00d036b3          	snez	a3,a3
   15014:	00f6969b          	slliw	a3,a3,0xf
   15018:	00d41923          	sh	a3,18(s0)
   1501c:	00278793          	addi	a5,a5,2
   15020:	fe079f23          	sh	zero,-2(a5)
   15024:	fee79ce3          	bne	a5,a4,1501c <ediv+0x2f8>
   15028:	f09ff06f          	j	14f30 <ediv+0x20c>
   1502c:	01813823          	sd	s8,16(sp)
   15030:	04012783          	lw	a5,64(sp)
   15034:	03890493          	addi	s1,s2,56
   15038:	03490713          	addi	a4,s2,52
   1503c:	02f92a23          	sw	a5,52(s2)
   15040:	00e13c23          	sd	a4,24(sp)
   15044:	04e90993          	addi	s3,s2,78
   15048:	00048793          	mv	a5,s1
   1504c:	00278793          	addi	a5,a5,2
   15050:	fe079f23          	sh	zero,-2(a5)
   15054:	ff379ce3          	bne	a5,s3,1504c <ediv+0x328>
   15058:	04010513          	addi	a0,sp,64
   1505c:	de9fe0ef          	jal	ra,13e44 <eshdn1>
   15060:	02615b83          	lhu	s7,38(sp)
   15064:	00010a37          	lui	s4,0x10
   15068:	04210d13          	addi	s10,sp,66
   1506c:	010b9a93          	slli	s5,s7,0x10
   15070:	417a8ab3          	sub	s5,s5,s7
   15074:	05810c93          	addi	s9,sp,88
   15078:	fffa0a13          	addi	s4,s4,-1 # ffff <exit-0xe9>
   1507c:	07a10d93          	addi	s11,sp,122
   15080:	06210c13          	addi	s8,sp,98
   15084:	04415503          	lhu	a0,68(sp)
   15088:	04615783          	lhu	a5,70(sp)
   1508c:	000a0b13          	mv	s6,s4
   15090:	01051513          	slli	a0,a0,0x10
   15094:	00f50533          	add	a0,a0,a5
   15098:	00aaea63          	bltu	s5,a0,150ac <ediv+0x388>
   1509c:	000b8593          	mv	a1,s7
   150a0:	bbcfb0ef          	jal	ra,1045c <__hidden___udivdi3>
   150a4:	03051b13          	slli	s6,a0,0x30
   150a8:	030b5b13          	srli	s6,s6,0x30
   150ac:	06010613          	addi	a2,sp,96
   150b0:	02010593          	addi	a1,sp,32
   150b4:	000b0513          	mv	a0,s6
   150b8:	e31fe0ef          	jal	ra,13ee8 <m16m>
   150bc:	04410713          	addi	a4,sp,68
   150c0:	06410793          	addi	a5,sp,100
   150c4:	0007d603          	lhu	a2,0(a5)
   150c8:	00075683          	lhu	a3,0(a4)
   150cc:	00278793          	addi	a5,a5,2
   150d0:	00270713          	addi	a4,a4,2
   150d4:	0ed61a63          	bne	a2,a3,151c8 <ediv+0x4a4>
   150d8:	ffb796e3          	bne	a5,s11,150c4 <ediv+0x3a0>
   150dc:	00000693          	li	a3,0
   150e0:	07810613          	addi	a2,sp,120
   150e4:	000c8793          	mv	a5,s9
   150e8:	0007d703          	lhu	a4,0(a5)
   150ec:	00065583          	lhu	a1,0(a2)
   150f0:	ffe78793          	addi	a5,a5,-2
   150f4:	ffe60613          	addi	a2,a2,-2
   150f8:	40b70733          	sub	a4,a4,a1
   150fc:	40d70733          	sub	a4,a4,a3
   15100:	01075693          	srli	a3,a4,0x10
   15104:	00e79123          	sh	a4,2(a5)
   15108:	0016f693          	andi	a3,a3,1
   1510c:	fda79ee3          	bne	a5,s10,150e8 <ediv+0x3c4>
   15110:	01649023          	sh	s6,0(s1)
   15114:	04410793          	addi	a5,sp,68
   15118:	0027d703          	lhu	a4,2(a5)
   1511c:	00278793          	addi	a5,a5,2
   15120:	fee79f23          	sh	a4,-2(a5)
   15124:	ff979ae3          	bne	a5,s9,15118 <ediv+0x3f4>
   15128:	04011c23          	sh	zero,88(sp)
   1512c:	00248493          	addi	s1,s1,2
   15130:	f4999ae3          	bne	s3,s1,15084 <ediv+0x360>
   15134:	00000713          	li	a4,0
   15138:	04410793          	addi	a5,sp,68
   1513c:	05a10693          	addi	a3,sp,90
   15140:	0007d603          	lhu	a2,0(a5)
   15144:	00278793          	addi	a5,a5,2
   15148:	00c76733          	or	a4,a4,a2
   1514c:	fed79ae3          	bne	a5,a3,15140 <ediv+0x41c>
   15150:	01813483          	ld	s1,24(sp)
   15154:	0007071b          	sext.w	a4,a4
   15158:	00e035b3          	snez	a1,a4
   1515c:	04010793          	addi	a5,sp,64
   15160:	0004d703          	lhu	a4,0(s1)
   15164:	00278793          	addi	a5,a5,2
   15168:	00248493          	addi	s1,s1,2
   1516c:	fee79f23          	sh	a4,-2(a5)
   15170:	fef698e3          	bne	a3,a5,15160 <ediv+0x43c>
   15174:	00813783          	ld	a5,8(sp)
   15178:	01013703          	ld	a4,16(sp)
   1517c:	000046b7          	lui	a3,0x4
   15180:	fff68693          	addi	a3,a3,-1 # 3fff <exit-0xc0e9>
   15184:	40e78b33          	sub	s6,a5,a4
   15188:	04010513          	addi	a0,sp,64
   1518c:	00090793          	mv	a5,s2
   15190:	04000713          	li	a4,64
   15194:	00db06b3          	add	a3,s6,a3
   15198:	00000613          	li	a2,0
   1519c:	c10ff0ef          	jal	ra,145ac <emdnorm>
   151a0:	04015703          	lhu	a4,64(sp)
   151a4:	02015783          	lhu	a5,32(sp)
   151a8:	00040593          	mv	a1,s0
   151ac:	04010513          	addi	a0,sp,64
   151b0:	40e787b3          	sub	a5,a5,a4
   151b4:	00f037b3          	snez	a5,a5
   151b8:	40f007bb          	negw	a5,a5
   151bc:	04f11023          	sh	a5,64(sp)
   151c0:	df9fe0ef          	jal	ra,13fb8 <emovo.constprop.0>
   151c4:	c89ff06f          	j	14e4c <ediv+0x128>
   151c8:	f0c6fae3          	bgeu	a3,a2,150dc <ediv+0x3b8>
   151cc:	fffb079b          	addiw	a5,s6,-1
   151d0:	03079513          	slli	a0,a5,0x30
   151d4:	03055513          	srli	a0,a0,0x30
   151d8:	00000693          	li	a3,0
   151dc:	03810613          	addi	a2,sp,56
   151e0:	07810713          	addi	a4,sp,120
   151e4:	00075783          	lhu	a5,0(a4)
   151e8:	00065583          	lhu	a1,0(a2)
   151ec:	ffe70713          	addi	a4,a4,-2
   151f0:	ffe60613          	addi	a2,a2,-2
   151f4:	40b787b3          	sub	a5,a5,a1
   151f8:	40d787b3          	sub	a5,a5,a3
   151fc:	0107d693          	srli	a3,a5,0x10
   15200:	00f71123          	sh	a5,2(a4)
   15204:	0016f693          	andi	a3,a3,1
   15208:	fd871ee3          	bne	a4,s8,151e4 <ediv+0x4c0>
   1520c:	04410713          	addi	a4,sp,68
   15210:	06410793          	addi	a5,sp,100
   15214:	0007d603          	lhu	a2,0(a5)
   15218:	00075683          	lhu	a3,0(a4)
   1521c:	00278793          	addi	a5,a5,2
   15220:	00270713          	addi	a4,a4,2
   15224:	00d61863          	bne	a2,a3,15234 <ediv+0x510>
   15228:	ffb796e3          	bne	a5,s11,15214 <ediv+0x4f0>
   1522c:	00050b13          	mv	s6,a0
   15230:	eadff06f          	j	150dc <ediv+0x3b8>
   15234:	fec6fce3          	bgeu	a3,a2,1522c <ediv+0x508>
   15238:	ffeb031b          	addiw	t1,s6,-2
   1523c:	03031b13          	slli	s6,t1,0x30
   15240:	030b5b13          	srli	s6,s6,0x30
   15244:	00000693          	li	a3,0
   15248:	03810613          	addi	a2,sp,56
   1524c:	07810713          	addi	a4,sp,120
   15250:	00075783          	lhu	a5,0(a4)
   15254:	00065583          	lhu	a1,0(a2)
   15258:	ffe70713          	addi	a4,a4,-2
   1525c:	ffe60613          	addi	a2,a2,-2
   15260:	40b787b3          	sub	a5,a5,a1
   15264:	40d787b3          	sub	a5,a5,a3
   15268:	0107d693          	srli	a3,a5,0x10
   1526c:	00f71123          	sh	a5,2(a4)
   15270:	0016f693          	andi	a3,a3,1
   15274:	fd871ee3          	bne	a4,s8,15250 <ediv+0x52c>
   15278:	e65ff06f          	j	150dc <ediv+0x3b8>
   1527c:	04010513          	addi	a0,sp,64
   15280:	df5fe0ef          	jal	ra,14074 <enormlz>
   15284:	40a007b3          	neg	a5,a0
   15288:	00f13423          	sd	a5,8(sp)
   1528c:	d55ff06f          	j	14fe0 <ediv+0x2bc>
   15290:	02010513          	addi	a0,sp,32
   15294:	de1fe0ef          	jal	ra,14074 <enormlz>
   15298:	40a007b3          	neg	a5,a0
   1529c:	00f13823          	sd	a5,16(sp)
   152a0:	d91ff06f          	j	15030 <ediv+0x30c>
   152a4:	00000793          	li	a5,0
   152a8:	c69ff06f          	j	14f10 <ediv+0x1ec>
   152ac:	00000613          	li	a2,0
   152b0:	c4dff06f          	j	14efc <ediv+0x1d8>
   152b4:	00100813          	li	a6,1
   152b8:	c21ff06f          	j	14ed8 <ediv+0x1b4>

00000000000152bc <emul>:
   152bc:	01255803          	lhu	a6,18(a0)
   152c0:	00008737          	lui	a4,0x8
   152c4:	f4010113          	addi	sp,sp,-192
   152c8:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   152cc:	0a813823          	sd	s0,176(sp)
   152d0:	0a913423          	sd	s1,168(sp)
   152d4:	0b213023          	sd	s2,160(sp)
   152d8:	09513423          	sd	s5,136(sp)
   152dc:	00050493          	mv	s1,a0
   152e0:	0a113c23          	sd	ra,184(sp)
   152e4:	09313c23          	sd	s3,152(sp)
   152e8:	09413823          	sd	s4,144(sp)
   152ec:	09613023          	sd	s6,128(sp)
   152f0:	07713c23          	sd	s7,120(sp)
   152f4:	07813823          	sd	s8,112(sp)
   152f8:	07913423          	sd	s9,104(sp)
   152fc:	07a13023          	sd	s10,96(sp)
   15300:	00e87533          	and	a0,a6,a4
   15304:	00058913          	mv	s2,a1
   15308:	00060413          	mv	s0,a2
   1530c:	00068a93          	mv	s5,a3
   15310:	18e51663          	bne	a0,a4,1549c <emul+0x1e0>
   15314:	01248993          	addi	s3,s1,18
   15318:	00048713          	mv	a4,s1
   1531c:	00075603          	lhu	a2,0(a4)
   15320:	00270713          	addi	a4,a4,2
   15324:	20061463          	bnez	a2,1552c <emul+0x270>
   15328:	ff371ae3          	bne	a4,s3,1531c <emul+0x60>
   1532c:	01295603          	lhu	a2,18(s2)
   15330:	fff64793          	not	a5,a2
   15334:	03179713          	slli	a4,a5,0x31
   15338:	16070863          	beqz	a4,154a8 <emul+0x1ec>
   1533c:	00048793          	mv	a5,s1
   15340:	0007d703          	lhu	a4,0(a5)
   15344:	00278793          	addi	a5,a5,2
   15348:	28071063          	bnez	a4,155c8 <emul+0x30c>
   1534c:	ff379ae3          	bne	a5,s3,15340 <emul+0x84>
   15350:	000225b7          	lui	a1,0x22
   15354:	51058593          	addi	a1,a1,1296 # 22510 <ezero>
   15358:	00090513          	mv	a0,s2
   1535c:	900ff0ef          	jal	ra,1445c <ecmp>
   15360:	28050e63          	beqz	a0,155fc <emul+0x340>
   15364:	01295603          	lhu	a2,18(s2)
   15368:	000085b7          	lui	a1,0x8
   1536c:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   15370:	00b67733          	and	a4,a2,a1
   15374:	00070693          	mv	a3,a4
   15378:	01290793          	addi	a5,s2,18
   1537c:	40b71e63          	bne	a4,a1,15798 <emul+0x4dc>
   15380:	00090713          	mv	a4,s2
   15384:	00075683          	lhu	a3,0(a4)
   15388:	00270713          	addi	a4,a4,2
   1538c:	20069263          	bnez	a3,15590 <emul+0x2d4>
   15390:	fee79ae3          	bne	a5,a4,15384 <emul+0xc8>
   15394:	000225b7          	lui	a1,0x22
   15398:	51058593          	addi	a1,a1,1296 # 22510 <ezero>
   1539c:	00048513          	mv	a0,s1
   153a0:	8bcff0ef          	jal	ra,1445c <ecmp>
   153a4:	24050c63          	beqz	a0,155fc <emul+0x340>
   153a8:	0124d803          	lhu	a6,18(s1)
   153ac:	01295603          	lhu	a2,18(s2)
   153b0:	000087b7          	lui	a5,0x8
   153b4:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   153b8:	00f87733          	and	a4,a6,a5
   153bc:	00f676b3          	and	a3,a2,a5
   153c0:	00070593          	mv	a1,a4
   153c4:	1ef70263          	beq	a4,a5,155a8 <emul+0x2ec>
   153c8:	00068713          	mv	a4,a3
   153cc:	00058693          	mv	a3,a1
   153d0:	000087b7          	lui	a5,0x8
   153d4:	0007071b          	sext.w	a4,a4
   153d8:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   153dc:	0ef71e63          	bne	a4,a5,154d8 <emul+0x21c>
   153e0:	01290793          	addi	a5,s2,18
   153e4:	00090713          	mv	a4,s2
   153e8:	00075583          	lhu	a1,0(a4)
   153ec:	00270713          	addi	a4,a4,2
   153f0:	0e059463          	bnez	a1,154d8 <emul+0x21c>
   153f4:	fef71ae3          	bne	a4,a5,153e8 <emul+0x12c>
   153f8:	000085b7          	lui	a1,0x8
   153fc:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   15400:	0006871b          	sext.w	a4,a3
   15404:	01248993          	addi	s3,s1,18
   15408:	22b69063          	bne	a3,a1,15628 <emul+0x36c>
   1540c:	0004d783          	lhu	a5,0(s1)
   15410:	00248493          	addi	s1,s1,2
   15414:	20079e63          	bnez	a5,15630 <emul+0x374>
   15418:	fe999ae3          	bne	s3,s1,1540c <emul+0x150>
   1541c:	00f85813          	srli	a6,a6,0xf
   15420:	000087b7          	lui	a5,0x8
   15424:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   15428:	1af70e63          	beq	a4,a5,155e4 <emul+0x328>
   1542c:	00f65793          	srli	a5,a2,0xf
   15430:	0107c7b3          	xor	a5,a5,a6
   15434:	00f7979b          	slliw	a5,a5,0xf
   15438:	00f41923          	sh	a5,18(s0)
   1543c:	01240713          	addi	a4,s0,18
   15440:	00040793          	mv	a5,s0
   15444:	00278793          	addi	a5,a5,2
   15448:	fe079f23          	sh	zero,-2(a5)
   1544c:	fee79ce3          	bne	a5,a4,15444 <emul+0x188>
   15450:	01245783          	lhu	a5,18(s0)
   15454:	00008737          	lui	a4,0x8
   15458:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1545c:	00e7e7b3          	or	a5,a5,a4
   15460:	00f41923          	sh	a5,18(s0)
   15464:	0b813083          	ld	ra,184(sp)
   15468:	0b013403          	ld	s0,176(sp)
   1546c:	0a813483          	ld	s1,168(sp)
   15470:	0a013903          	ld	s2,160(sp)
   15474:	09813983          	ld	s3,152(sp)
   15478:	09013a03          	ld	s4,144(sp)
   1547c:	08813a83          	ld	s5,136(sp)
   15480:	08013b03          	ld	s6,128(sp)
   15484:	07813b83          	ld	s7,120(sp)
   15488:	07013c03          	ld	s8,112(sp)
   1548c:	06813c83          	ld	s9,104(sp)
   15490:	06013d03          	ld	s10,96(sp)
   15494:	0c010113          	addi	sp,sp,192
   15498:	00008067          	ret
   1549c:	0125d603          	lhu	a2,18(a1)
   154a0:	00e677b3          	and	a5,a2,a4
   154a4:	02e79a63          	bne	a5,a4,154d8 <emul+0x21c>
   154a8:	01290793          	addi	a5,s2,18
   154ac:	00090713          	mv	a4,s2
   154b0:	00075683          	lhu	a3,0(a4)
   154b4:	00270713          	addi	a4,a4,2
   154b8:	08069863          	bnez	a3,15548 <emul+0x28c>
   154bc:	fef71ae3          	bne	a4,a5,154b0 <emul+0x1f4>
   154c0:	00008737          	lui	a4,0x8
   154c4:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   154c8:	01248993          	addi	s3,s1,18
   154cc:	e6e508e3          	beq	a0,a4,1533c <emul+0x80>
   154d0:	00e676b3          	and	a3,a2,a4
   154d4:	eae686e3          	beq	a3,a4,15380 <emul+0xc4>
   154d8:	00048513          	mv	a0,s1
   154dc:	00010593          	mv	a1,sp
   154e0:	ec5fe0ef          	jal	ra,143a4 <emovi>
   154e4:	00090513          	mv	a0,s2
   154e8:	02010593          	addi	a1,sp,32
   154ec:	eb9fe0ef          	jal	ra,143a4 <emovi>
   154f0:	00215903          	lhu	s2,2(sp)
   154f4:	02215483          	lhu	s1,34(sp)
   154f8:	06090663          	beqz	s2,15564 <emul+0x2a8>
   154fc:	14049a63          	bnez	s1,15650 <emul+0x394>
   15500:	02210793          	addi	a5,sp,34
   15504:	03810693          	addi	a3,sp,56
   15508:	0007d703          	lhu	a4,0(a5)
   1550c:	00278793          	addi	a5,a5,2
   15510:	26071a63          	bnez	a4,15784 <emul+0x4c8>
   15514:	fed79ae3          	bne	a5,a3,15508 <emul+0x24c>
   15518:	01440793          	addi	a5,s0,20
   1551c:	00240413          	addi	s0,s0,2
   15520:	fe041f23          	sh	zero,-2(s0)
   15524:	fe879ce3          	bne	a5,s0,1551c <emul+0x260>
   15528:	f3dff06f          	j	15464 <emul+0x1a8>
   1552c:	01440713          	addi	a4,s0,20
   15530:	0004d783          	lhu	a5,0(s1)
   15534:	00240413          	addi	s0,s0,2
   15538:	00248493          	addi	s1,s1,2
   1553c:	fef41f23          	sh	a5,-2(s0)
   15540:	fee418e3          	bne	s0,a4,15530 <emul+0x274>
   15544:	f21ff06f          	j	15464 <emul+0x1a8>
   15548:	01490713          	addi	a4,s2,20
   1554c:	00095783          	lhu	a5,0(s2)
   15550:	00290913          	addi	s2,s2,2
   15554:	00240413          	addi	s0,s0,2
   15558:	fef41f23          	sh	a5,-2(s0)
   1555c:	ff2718e3          	bne	a4,s2,1554c <emul+0x290>
   15560:	f05ff06f          	j	15464 <emul+0x1a8>
   15564:	00210793          	addi	a5,sp,2
   15568:	01810693          	addi	a3,sp,24
   1556c:	0007d703          	lhu	a4,0(a5)
   15570:	00278793          	addi	a5,a5,2
   15574:	20071063          	bnez	a4,15774 <emul+0x4b8>
   15578:	fef69ae3          	bne	a3,a5,1556c <emul+0x2b0>
   1557c:	01440793          	addi	a5,s0,20
   15580:	00240413          	addi	s0,s0,2
   15584:	fe041f23          	sh	zero,-2(s0)
   15588:	fef41ce3          	bne	s0,a5,15580 <emul+0x2c4>
   1558c:	ed9ff06f          	j	15464 <emul+0x1a8>
   15590:	0124d803          	lhu	a6,18(s1)
   15594:	000085b7          	lui	a1,0x8
   15598:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   1559c:	00b87733          	and	a4,a6,a1
   155a0:	00070693          	mv	a3,a4
   155a4:	e4b710e3          	bne	a4,a1,153e4 <emul+0x128>
   155a8:	01248993          	addi	s3,s1,18
   155ac:	00048793          	mv	a5,s1
   155b0:	0007d703          	lhu	a4,0(a5)
   155b4:	00278793          	addi	a5,a5,2
   155b8:	08071463          	bnez	a4,15640 <emul+0x384>
   155bc:	fef99ae3          	bne	s3,a5,155b0 <emul+0x2f4>
   155c0:	0006871b          	sext.w	a4,a3
   155c4:	e49ff06f          	j	1540c <emul+0x150>
   155c8:	000085b7          	lui	a1,0x8
   155cc:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   155d0:	00b67733          	and	a4,a2,a1
   155d4:	00070693          	mv	a3,a4
   155d8:	01290793          	addi	a5,s2,18
   155dc:	dab702e3          	beq	a4,a1,15380 <emul+0xc4>
   155e0:	fcdff06f          	j	155ac <emul+0x2f0>
   155e4:	01290793          	addi	a5,s2,18
   155e8:	00095703          	lhu	a4,0(s2)
   155ec:	00290913          	addi	s2,s2,2
   155f0:	04071463          	bnez	a4,15638 <emul+0x37c>
   155f4:	ff279ae3          	bne	a5,s2,155e8 <emul+0x32c>
   155f8:	e35ff06f          	j	1542c <emul+0x170>
   155fc:	01040713          	addi	a4,s0,16
   15600:	00040793          	mv	a5,s0
   15604:	00278793          	addi	a5,a5,2
   15608:	fe079f23          	sh	zero,-2(a5)
   1560c:	fef71ce3          	bne	a4,a5,15604 <emul+0x348>
   15610:	ffffc7b7          	lui	a5,0xffffc
   15614:	00f41823          	sh	a5,16(s0)
   15618:	ffff87b7          	lui	a5,0xffff8
   1561c:	fff7c793          	not	a5,a5
   15620:	00f41923          	sh	a5,18(s0)
   15624:	e41ff06f          	j	15464 <emul+0x1a8>
   15628:	00f85813          	srli	a6,a6,0xf
   1562c:	fbdff06f          	j	155e8 <emul+0x32c>
   15630:	00000813          	li	a6,0
   15634:	dedff06f          	j	15420 <emul+0x164>
   15638:	00000793          	li	a5,0
   1563c:	df5ff06f          	j	15430 <emul+0x174>
   15640:	00068713          	mv	a4,a3
   15644:	000086b7          	lui	a3,0x8
   15648:	fff68693          	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1564c:	d85ff06f          	j	153d0 <emul+0x114>
   15650:	00048993          	mv	s3,s1
   15654:	02015783          	lhu	a5,32(sp)
   15658:	0104949b          	slliw	s1,s1,0x10
   1565c:	038a8a13          	addi	s4,s5,56
   15660:	0097e7b3          	or	a5,a5,s1
   15664:	02faaa23          	sw	a5,52(s5)
   15668:	034a8493          	addi	s1,s5,52
   1566c:	000a0793          	mv	a5,s4
   15670:	04ea8713          	addi	a4,s5,78
   15674:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3df8>
   15678:	00278793          	addi	a5,a5,2
   1567c:	fee79ce3          	bne	a5,a4,15674 <emul+0x3b8>
   15680:	04ca8c93          	addi	s9,s5,76
   15684:	00000c13          	li	s8,0
   15688:	01810b13          	addi	s6,sp,24
   1568c:	00410d13          	addi	s10,sp,4
   15690:	04210b93          	addi	s7,sp,66
   15694:	000b5503          	lhu	a0,0(s6)
   15698:	ffeb0b13          	addi	s6,s6,-2
   1569c:	08051a63          	bnez	a0,15730 <emul+0x474>
   156a0:	04cad783          	lhu	a5,76(s5)
   156a4:	000c8713          	mv	a4,s9
   156a8:	00fc6c33          	or	s8,s8,a5
   156ac:	ffe75603          	lhu	a2,-2(a4)
   156b0:	ffe70713          	addi	a4,a4,-2
   156b4:	00c71123          	sh	a2,2(a4)
   156b8:	feea1ae3          	bne	s4,a4,156ac <emul+0x3f0>
   156bc:	020a9c23          	sh	zero,56(s5)
   156c0:	fdab1ae3          	bne	s6,s10,15694 <emul+0x3d8>
   156c4:	02010793          	addi	a5,sp,32
   156c8:	03a10693          	addi	a3,sp,58
   156cc:	0004d703          	lhu	a4,0(s1)
   156d0:	00278793          	addi	a5,a5,2
   156d4:	00248493          	addi	s1,s1,2
   156d8:	fee79f23          	sh	a4,-2(a5)
   156dc:	fed798e3          	bne	a5,a3,156cc <emul+0x410>
   156e0:	ffffc6b7          	lui	a3,0xffffc
   156e4:	01390933          	add	s2,s2,s3
   156e8:	00268693          	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd7dfa>
   156ec:	000c0593          	mv	a1,s8
   156f0:	02010513          	addi	a0,sp,32
   156f4:	000a8793          	mv	a5,s5
   156f8:	04000713          	li	a4,64
   156fc:	00d906b3          	add	a3,s2,a3
   15700:	00000613          	li	a2,0
   15704:	ea9fe0ef          	jal	ra,145ac <emdnorm>
   15708:	02015703          	lhu	a4,32(sp)
   1570c:	00015783          	lhu	a5,0(sp)
   15710:	00040593          	mv	a1,s0
   15714:	02010513          	addi	a0,sp,32
   15718:	40e787b3          	sub	a5,a5,a4
   1571c:	00f037b3          	snez	a5,a5
   15720:	40f007bb          	negw	a5,a5
   15724:	02f11023          	sh	a5,32(sp)
   15728:	891fe0ef          	jal	ra,13fb8 <emovo.constprop.0>
   1572c:	d39ff06f          	j	15464 <emul+0x1a8>
   15730:	04010613          	addi	a2,sp,64
   15734:	02010593          	addi	a1,sp,32
   15738:	fb0fe0ef          	jal	ra,13ee8 <m16m>
   1573c:	000c8513          	mv	a0,s9
   15740:	00000593          	li	a1,0
   15744:	05810613          	addi	a2,sp,88
   15748:	00055783          	lhu	a5,0(a0)
   1574c:	00065703          	lhu	a4,0(a2)
   15750:	ffe50513          	addi	a0,a0,-2
   15754:	ffe60613          	addi	a2,a2,-2
   15758:	00f70733          	add	a4,a4,a5
   1575c:	00b70733          	add	a4,a4,a1
   15760:	01075593          	srli	a1,a4,0x10
   15764:	00e51123          	sh	a4,2(a0)
   15768:	0015f593          	andi	a1,a1,1
   1576c:	fd761ee3          	bne	a2,s7,15748 <emul+0x48c>
   15770:	f31ff06f          	j	156a0 <emul+0x3e4>
   15774:	00010513          	mv	a0,sp
   15778:	8fdfe0ef          	jal	ra,14074 <enormlz>
   1577c:	40a00933          	neg	s2,a0
   15780:	d7dff06f          	j	154fc <emul+0x240>
   15784:	02010513          	addi	a0,sp,32
   15788:	8edfe0ef          	jal	ra,14074 <enormlz>
   1578c:	40a009b3          	neg	s3,a0
   15790:	02215483          	lhu	s1,34(sp)
   15794:	ec1ff06f          	j	15654 <emul+0x398>
   15798:	0124d803          	lhu	a6,18(s1)
   1579c:	00b877b3          	and	a5,a6,a1
   157a0:	e0b786e3          	beq	a5,a1,155ac <emul+0x2f0>
   157a4:	d35ff06f          	j	154d8 <emul+0x21c>

00000000000157a8 <_ldtoa_r>:
   157a8:	d8010113          	addi	sp,sp,-640
   157ac:	09100313          	li	t1,145
   157b0:	06c13c23          	sd	a2,120(sp)
   157b4:	06053e03          	ld	t3,96(a0)
   157b8:	02031613          	slli	a2,t1,0x20
   157bc:	fff60613          	addi	a2,a2,-1
   157c0:	26813823          	sd	s0,624(sp)
   157c4:	27213023          	sd	s2,608(sp)
   157c8:	26113c23          	sd	ra,632(sp)
   157cc:	26913423          	sd	s1,616(sp)
   157d0:	25313c23          	sd	s3,600(sp)
   157d4:	25413823          	sd	s4,592(sp)
   157d8:	25513423          	sd	s5,584(sp)
   157dc:	25613023          	sd	s6,576(sp)
   157e0:	23713c23          	sd	s7,568(sp)
   157e4:	23813823          	sd	s8,560(sp)
   157e8:	23913423          	sd	s9,552(sp)
   157ec:	23a13023          	sd	s10,544(sp)
   157f0:	21b13c23          	sd	s11,536(sp)
   157f4:	06b13823          	sd	a1,112(sp)
   157f8:	1cc13023          	sd	a2,448(sp)
   157fc:	00d13423          	sd	a3,8(sp)
   15800:	00e13c23          	sd	a4,24(sp)
   15804:	02f13023          	sd	a5,32(sp)
   15808:	03113423          	sd	a7,40(sp)
   1580c:	00050913          	mv	s2,a0
   15810:	00080413          	mv	s0,a6
   15814:	020e0863          	beqz	t3,15844 <_ldtoa_r+0x9c>
   15818:	06852783          	lw	a5,104(a0)
   1581c:	00100713          	li	a4,1
   15820:	000e0593          	mv	a1,t3
   15824:	00f7173b          	sllw	a4,a4,a5
   15828:	02079793          	slli	a5,a5,0x20
   1582c:	02071713          	slli	a4,a4,0x20
   15830:	0207d793          	srli	a5,a5,0x20
   15834:	00e7e7b3          	or	a5,a5,a4
   15838:	00fe3423          	sd	a5,8(t3)
   1583c:	7dd010ef          	jal	ra,17818 <_Bfree>
   15840:	06093023          	sd	zero,96(s2)
   15844:	0a010593          	addi	a1,sp,160
   15848:	07010513          	addi	a0,sp,112
   1584c:	b80ff0ef          	jal	ra,14bcc <e113toe.isra.0>
   15850:	0b215683          	lhu	a3,178(sp)
   15854:	000087b7          	lui	a5,0x8
   15858:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1585c:	00f6f733          	and	a4,a3,a5
   15860:	02e13823          	sd	a4,48(sp)
   15864:	46f70863          	beq	a4,a5,15cd4 <_ldtoa_r+0x52c>
   15868:	0106979b          	slliw	a5,a3,0x10
   1586c:	4107d79b          	sraiw	a5,a5,0x10
   15870:	00813703          	ld	a4,8(sp)
   15874:	01f7d79b          	srliw	a5,a5,0x1f
   15878:	00f42023          	sw	a5,0(s0)
   1587c:	00300793          	li	a5,3
   15880:	12f70ae3          	beq	a4,a5,161b4 <_ldtoa_r+0xa0c>
   15884:	01400793          	li	a5,20
   15888:	00f13823          	sd	a5,16(sp)
   1588c:	00813783          	ld	a5,8(sp)
   15890:	140792e3          	bnez	a5,161d4 <_ldtoa_r+0xa2c>
   15894:	0c010793          	addi	a5,sp,192
   15898:	0a010713          	addi	a4,sp,160
   1589c:	0d410413          	addi	s0,sp,212
   158a0:	00075683          	lhu	a3,0(a4)
   158a4:	00278793          	addi	a5,a5,2
   158a8:	00270713          	addi	a4,a4,2
   158ac:	fed79f23          	sh	a3,-2(a5)
   158b0:	fe8798e3          	bne	a5,s0,158a0 <_ldtoa_r+0xf8>
   158b4:	0d215a83          	lhu	s5,210(sp)
   158b8:	00000993          	li	s3,0
   158bc:	00fad793          	srli	a5,s5,0xf
   158c0:	00078c63          	beqz	a5,158d8 <_ldtoa_r+0x130>
   158c4:	031a9f13          	slli	t5,s5,0x31
   158c8:	031f5a93          	srli	s5,t5,0x31
   158cc:	000107b7          	lui	a5,0x10
   158d0:	0d511923          	sh	s5,210(sp)
   158d4:	fff78993          	addi	s3,a5,-1 # ffff <exit-0xe9>
   158d8:	00022bb7          	lui	s7,0x22
   158dc:	000224b7          	lui	s1,0x22
   158e0:	0e010713          	addi	a4,sp,224
   158e4:	4f8b8793          	addi	a5,s7,1272 # 224f8 <eone>
   158e8:	50c48493          	addi	s1,s1,1292 # 2250c <eone+0x14>
   158ec:	0007d683          	lhu	a3,0(a5)
   158f0:	00278793          	addi	a5,a5,2
   158f4:	00270713          	addi	a4,a4,2
   158f8:	fed71f23          	sh	a3,-2(a4)
   158fc:	fe9798e3          	bne	a5,s1,158ec <_ldtoa_r+0x144>
   15900:	6a0a9c63          	bnez	s5,15fb8 <_ldtoa_r+0x810>
   15904:	0c010793          	addi	a5,sp,192
   15908:	0d210693          	addi	a3,sp,210
   1590c:	0007d703          	lhu	a4,0(a5)
   15910:	6a071e63          	bnez	a4,15fcc <_ldtoa_r+0x824>
   15914:	00278793          	addi	a5,a5,2
   15918:	fef69ae3          	bne	a3,a5,1590c <_ldtoa_r+0x164>
   1591c:	00000413          	li	s0,0
   15920:	18010c13          	addi	s8,sp,384
   15924:	1c010b13          	addi	s6,sp,448
   15928:	12010a13          	addi	s4,sp,288
   1592c:	13810d93          	addi	s11,sp,312
   15930:	000a0593          	mv	a1,s4
   15934:	0e010513          	addi	a0,sp,224
   15938:	a6dfe0ef          	jal	ra,143a4 <emovi>
   1593c:	000a0493          	mv	s1,s4
   15940:	0e010693          	addi	a3,sp,224
   15944:	000a0793          	mv	a5,s4
   15948:	0007b703          	ld	a4,0(a5)
   1594c:	00878793          	addi	a5,a5,8
   15950:	00868693          	addi	a3,a3,8
   15954:	fee6bc23          	sd	a4,-8(a3)
   15958:	ffb798e3          	bne	a5,s11,15948 <_ldtoa_r+0x1a0>
   1595c:	000a0593          	mv	a1,s4
   15960:	0c010513          	addi	a0,sp,192
   15964:	0e011c23          	sh	zero,248(sp)
   15968:	a3dfe0ef          	jal	ra,143a4 <emovi>
   1596c:	0d810b93          	addi	s7,sp,216
   15970:	0c010793          	addi	a5,sp,192
   15974:	0004b703          	ld	a4,0(s1)
   15978:	00878793          	addi	a5,a5,8
   1597c:	00848493          	addi	s1,s1,8
   15980:	fee7bc23          	sd	a4,-8(a5)
   15984:	fefb98e3          	bne	s7,a5,15974 <_ldtoa_r+0x1cc>
   15988:	000b0613          	mv	a2,s6
   1598c:	0c010593          	addi	a1,sp,192
   15990:	0e010513          	addi	a0,sp,224
   15994:	0c011c23          	sh	zero,216(sp)
   15998:	8d0ff0ef          	jal	ra,14a68 <eiremain>
   1599c:	20c15d83          	lhu	s11,524(sp)
   159a0:	000224b7          	lui	s1,0x22
   159a4:	0c210d13          	addi	s10,sp,194
   159a8:	10210c93          	addi	s9,sp,258
   159ac:	160d9063          	bnez	s11,15b0c <_ldtoa_r+0x364>
   159b0:	51048593          	addi	a1,s1,1296 # 22510 <ezero>
   159b4:	0c010513          	addi	a0,sp,192
   159b8:	aa5fe0ef          	jal	ra,1445c <ecmp>
   159bc:	14050863          	beqz	a0,15b0c <_ldtoa_r+0x364>
   159c0:	00000713          	li	a4,0
   159c4:	000b8693          	mv	a3,s7
   159c8:	0006d783          	lhu	a5,0(a3)
   159cc:	00f7d613          	srli	a2,a5,0xf
   159d0:	00060463          	beqz	a2,159d8 <_ldtoa_r+0x230>
   159d4:	00176713          	ori	a4,a4,1
   159d8:	0017979b          	slliw	a5,a5,0x1
   159dc:	03079793          	slli	a5,a5,0x30
   159e0:	00277613          	andi	a2,a4,2
   159e4:	0307d793          	srli	a5,a5,0x30
   159e8:	00060463          	beqz	a2,159f0 <_ldtoa_r+0x248>
   159ec:	0017e793          	ori	a5,a5,1
   159f0:	0017171b          	slliw	a4,a4,0x1
   159f4:	00f69023          	sh	a5,0(a3)
   159f8:	03071713          	slli	a4,a4,0x30
   159fc:	ffe68693          	addi	a3,a3,-2
   15a00:	03075713          	srli	a4,a4,0x30
   15a04:	fda692e3          	bne	a3,s10,159c8 <_ldtoa_r+0x220>
   15a08:	10010713          	addi	a4,sp,256
   15a0c:	0c010793          	addi	a5,sp,192
   15a10:	0007b683          	ld	a3,0(a5)
   15a14:	00878793          	addi	a5,a5,8
   15a18:	00870713          	addi	a4,a4,8
   15a1c:	fed73c23          	sd	a3,-8(a4)
   15a20:	fefb98e3          	bne	s7,a5,15a10 <_ldtoa_r+0x268>
   15a24:	10011c23          	sh	zero,280(sp)
   15a28:	00000713          	li	a4,0
   15a2c:	11810693          	addi	a3,sp,280
   15a30:	0006d783          	lhu	a5,0(a3)
   15a34:	00f7d613          	srli	a2,a5,0xf
   15a38:	00060463          	beqz	a2,15a40 <_ldtoa_r+0x298>
   15a3c:	00176713          	ori	a4,a4,1
   15a40:	0017979b          	slliw	a5,a5,0x1
   15a44:	03079793          	slli	a5,a5,0x30
   15a48:	00277613          	andi	a2,a4,2
   15a4c:	0307d793          	srli	a5,a5,0x30
   15a50:	00060463          	beqz	a2,15a58 <_ldtoa_r+0x2b0>
   15a54:	0017e793          	ori	a5,a5,1
   15a58:	0017171b          	slliw	a4,a4,0x1
   15a5c:	00f69023          	sh	a5,0(a3)
   15a60:	03071713          	slli	a4,a4,0x30
   15a64:	ffe68693          	addi	a3,a3,-2
   15a68:	03075713          	srli	a4,a4,0x30
   15a6c:	fd9692e3          	bne	a3,s9,15a30 <_ldtoa_r+0x288>
   15a70:	00000713          	li	a4,0
   15a74:	11810693          	addi	a3,sp,280
   15a78:	0006d783          	lhu	a5,0(a3)
   15a7c:	00f7d613          	srli	a2,a5,0xf
   15a80:	00060463          	beqz	a2,15a88 <_ldtoa_r+0x2e0>
   15a84:	00176713          	ori	a4,a4,1
   15a88:	0017979b          	slliw	a5,a5,0x1
   15a8c:	03079793          	slli	a5,a5,0x30
   15a90:	00277613          	andi	a2,a4,2
   15a94:	0307d793          	srli	a5,a5,0x30
   15a98:	00060463          	beqz	a2,15aa0 <_ldtoa_r+0x2f8>
   15a9c:	0017e793          	ori	a5,a5,1
   15aa0:	0017171b          	slliw	a4,a4,0x1
   15aa4:	00f69023          	sh	a5,0(a3)
   15aa8:	03071713          	slli	a4,a4,0x30
   15aac:	ffe68693          	addi	a3,a3,-2
   15ab0:	03075713          	srli	a4,a4,0x30
   15ab4:	fd9692e3          	bne	a3,s9,15a78 <_ldtoa_r+0x2d0>
   15ab8:	00000613          	li	a2,0
   15abc:	000b8693          	mv	a3,s7
   15ac0:	11810713          	addi	a4,sp,280
   15ac4:	0006d583          	lhu	a1,0(a3)
   15ac8:	00075783          	lhu	a5,0(a4)
   15acc:	ffe68693          	addi	a3,a3,-2
   15ad0:	ffe70713          	addi	a4,a4,-2
   15ad4:	00b787b3          	add	a5,a5,a1
   15ad8:	00c787b3          	add	a5,a5,a2
   15adc:	0107d613          	srli	a2,a5,0x10
   15ae0:	00f69123          	sh	a5,2(a3)
   15ae4:	00167613          	andi	a2,a2,1
   15ae8:	fd971ee3          	bne	a4,s9,15ac4 <_ldtoa_r+0x31c>
   15aec:	000b0613          	mv	a2,s6
   15af0:	0c010593          	addi	a1,sp,192
   15af4:	0e010513          	addi	a0,sp,224
   15af8:	f71fe0ef          	jal	ra,14a68 <eiremain>
   15afc:	20c15783          	lhu	a5,524(sp)
   15b00:	fff4041b          	addiw	s0,s0,-1
   15b04:	ea0786e3          	beqz	a5,159b0 <_ldtoa_r+0x208>
   15b08:	00078d93          	mv	s11,a5
   15b0c:	02000793          	li	a5,32
   15b10:	00098463          	beqz	s3,15b18 <_ldtoa_r+0x370>
   15b14:	02d00793          	li	a5,45
   15b18:	00813703          	ld	a4,8(sp)
   15b1c:	18f10023          	sb	a5,384(sp)
   15b20:	00300693          	li	a3,3
   15b24:	01013783          	ld	a5,16(sp)
   15b28:	00d71463          	bne	a4,a3,15b30 <_ldtoa_r+0x388>
   15b2c:	008787bb          	addw	a5,a5,s0
   15b30:	02a00693          	li	a3,42
   15b34:	00078613          	mv	a2,a5
   15b38:	00f6d463          	bge	a3,a5,15b40 <_ldtoa_r+0x398>
   15b3c:	02a00613          	li	a2,42
   15b40:	00a00693          	li	a3,10
   15b44:	00060a1b          	sext.w	s4,a2
   15b48:	64dd8063          	beq	s11,a3,16188 <_ldtoa_r+0x9e0>
   15b4c:	030d8d9b          	addiw	s11,s11,48
   15b50:	02e00693          	li	a3,46
   15b54:	19b100a3          	sb	s11,385(sp)
   15b58:	18d10123          	sb	a3,386(sp)
   15b5c:	2407c063          	bltz	a5,15d9c <_ldtoa_r+0x5f4>
   15b60:	18310a93          	addi	s5,sp,387
   15b64:	00000993          	li	s3,0
   15b68:	10010c93          	addi	s9,sp,256
   15b6c:	11810d93          	addi	s11,sp,280
   15b70:	0c210d13          	addi	s10,sp,194
   15b74:	10210493          	addi	s1,sp,258
   15b78:	00000713          	li	a4,0
   15b7c:	000b8693          	mv	a3,s7
   15b80:	0006d783          	lhu	a5,0(a3)
   15b84:	00f7d613          	srli	a2,a5,0xf
   15b88:	00060463          	beqz	a2,15b90 <_ldtoa_r+0x3e8>
   15b8c:	00176713          	ori	a4,a4,1
   15b90:	0017979b          	slliw	a5,a5,0x1
   15b94:	03079793          	slli	a5,a5,0x30
   15b98:	00277613          	andi	a2,a4,2
   15b9c:	0307d793          	srli	a5,a5,0x30
   15ba0:	00060463          	beqz	a2,15ba8 <_ldtoa_r+0x400>
   15ba4:	0017e793          	ori	a5,a5,1
   15ba8:	0017171b          	slliw	a4,a4,0x1
   15bac:	00f69023          	sh	a5,0(a3)
   15bb0:	03071713          	slli	a4,a4,0x30
   15bb4:	ffe68693          	addi	a3,a3,-2
   15bb8:	03075713          	srli	a4,a4,0x30
   15bbc:	fda692e3          	bne	a3,s10,15b80 <_ldtoa_r+0x3d8>
   15bc0:	000c8793          	mv	a5,s9
   15bc4:	0c010713          	addi	a4,sp,192
   15bc8:	00073683          	ld	a3,0(a4)
   15bcc:	00878793          	addi	a5,a5,8
   15bd0:	00870713          	addi	a4,a4,8
   15bd4:	fed7bc23          	sd	a3,-8(a5)
   15bd8:	fefd98e3          	bne	s11,a5,15bc8 <_ldtoa_r+0x420>
   15bdc:	10011c23          	sh	zero,280(sp)
   15be0:	00000713          	li	a4,0
   15be4:	000d8693          	mv	a3,s11
   15be8:	0006d783          	lhu	a5,0(a3)
   15bec:	00f7d613          	srli	a2,a5,0xf
   15bf0:	00060463          	beqz	a2,15bf8 <_ldtoa_r+0x450>
   15bf4:	00176713          	ori	a4,a4,1
   15bf8:	0017979b          	slliw	a5,a5,0x1
   15bfc:	03079793          	slli	a5,a5,0x30
   15c00:	00277613          	andi	a2,a4,2
   15c04:	0307d793          	srli	a5,a5,0x30
   15c08:	00060463          	beqz	a2,15c10 <_ldtoa_r+0x468>
   15c0c:	0017e793          	ori	a5,a5,1
   15c10:	0017171b          	slliw	a4,a4,0x1
   15c14:	00f69023          	sh	a5,0(a3)
   15c18:	03071713          	slli	a4,a4,0x30
   15c1c:	ffe68693          	addi	a3,a3,-2
   15c20:	03075713          	srli	a4,a4,0x30
   15c24:	fc9692e3          	bne	a3,s1,15be8 <_ldtoa_r+0x440>
   15c28:	00000713          	li	a4,0
   15c2c:	000d8693          	mv	a3,s11
   15c30:	0006d783          	lhu	a5,0(a3)
   15c34:	00f7d613          	srli	a2,a5,0xf
   15c38:	00060463          	beqz	a2,15c40 <_ldtoa_r+0x498>
   15c3c:	00176713          	ori	a4,a4,1
   15c40:	0017979b          	slliw	a5,a5,0x1
   15c44:	03079793          	slli	a5,a5,0x30
   15c48:	00277613          	andi	a2,a4,2
   15c4c:	0307d793          	srli	a5,a5,0x30
   15c50:	00060463          	beqz	a2,15c58 <_ldtoa_r+0x4b0>
   15c54:	0017e793          	ori	a5,a5,1
   15c58:	0017171b          	slliw	a4,a4,0x1
   15c5c:	00f69023          	sh	a5,0(a3)
   15c60:	03071713          	slli	a4,a4,0x30
   15c64:	ffe68693          	addi	a3,a3,-2
   15c68:	03075713          	srli	a4,a4,0x30
   15c6c:	fc9692e3          	bne	a3,s1,15c30 <_ldtoa_r+0x488>
   15c70:	00000613          	li	a2,0
   15c74:	000b8693          	mv	a3,s7
   15c78:	000d8713          	mv	a4,s11
   15c7c:	0006d583          	lhu	a1,0(a3)
   15c80:	00075783          	lhu	a5,0(a4)
   15c84:	ffe68693          	addi	a3,a3,-2
   15c88:	ffe70713          	addi	a4,a4,-2
   15c8c:	00b787b3          	add	a5,a5,a1
   15c90:	00c787b3          	add	a5,a5,a2
   15c94:	0107d613          	srli	a2,a5,0x10
   15c98:	00f69123          	sh	a5,2(a3)
   15c9c:	00167613          	andi	a2,a2,1
   15ca0:	fc971ee3          	bne	a4,s1,15c7c <_ldtoa_r+0x4d4>
   15ca4:	0c010593          	addi	a1,sp,192
   15ca8:	000b0613          	mv	a2,s6
   15cac:	0e010513          	addi	a0,sp,224
   15cb0:	db9fe0ef          	jal	ra,14a68 <eiremain>
   15cb4:	20c15583          	lhu	a1,524(sp)
   15cb8:	001a8793          	addi	a5,s5,1
   15cbc:	0019899b          	addiw	s3,s3,1
   15cc0:	0305871b          	addiw	a4,a1,48
   15cc4:	fee78fa3          	sb	a4,-1(a5)
   15cc8:	0f3a4063          	blt	s4,s3,15da8 <_ldtoa_r+0x600>
   15ccc:	00078a93          	mv	s5,a5
   15cd0:	ea9ff06f          	j	15b78 <_ldtoa_r+0x3d0>
   15cd4:	0a010793          	addi	a5,sp,160
   15cd8:	0b210613          	addi	a2,sp,178
   15cdc:	0007d703          	lhu	a4,0(a5)
   15ce0:	00278793          	addi	a5,a5,2
   15ce4:	7e071063          	bnez	a4,164c4 <_ldtoa_r+0xd1c>
   15ce8:	fec79ae3          	bne	a5,a2,15cdc <_ldtoa_r+0x534>
   15cec:	00f6d693          	srli	a3,a3,0xf
   15cf0:	00813703          	ld	a4,8(sp)
   15cf4:	00d42023          	sw	a3,0(s0)
   15cf8:	00300793          	li	a5,3
   15cfc:	7af70463          	beq	a4,a5,164a4 <_ldtoa_r+0xcfc>
   15d00:	01400793          	li	a5,20
   15d04:	00f13823          	sd	a5,16(sp)
   15d08:	00070e63          	beqz	a4,15d24 <_ldtoa_r+0x57c>
   15d0c:	01813783          	ld	a5,24(sp)
   15d10:	fff78a1b          	addiw	s4,a5,-1
   15d14:	02a00793          	li	a5,42
   15d18:	0147d463          	bge	a5,s4,15d20 <_ldtoa_r+0x578>
   15d1c:	02a00a13          	li	s4,42
   15d20:	01413823          	sd	s4,16(sp)
   15d24:	0a015703          	lhu	a4,160(sp)
   15d28:	0a010793          	addi	a5,sp,160
   15d2c:	0b210693          	addi	a3,sp,178
   15d30:	00278793          	addi	a5,a5,2
   15d34:	00071a63          	bnez	a4,15d48 <_ldtoa_r+0x5a0>
   15d38:	b4d78ee3          	beq	a5,a3,15894 <_ldtoa_r+0xec>
   15d3c:	0007d703          	lhu	a4,0(a5)
   15d40:	00278793          	addi	a5,a5,2
   15d44:	fe070ae3          	beqz	a4,15d38 <_ldtoa_r+0x590>
   15d48:	18010c13          	addi	s8,sp,384
   15d4c:	000225b7          	lui	a1,0x22
   15d50:	2b858593          	addi	a1,a1,696 # 222b8 <blanks.1+0xd8>
   15d54:	000c0513          	mv	a0,s8
   15d58:	6e1020ef          	jal	ra,18c38 <sprintf>
   15d5c:	00002437          	lui	s0,0x2
   15d60:	70f40413          	addi	s0,s0,1807 # 270f <exit-0xd9d9>
   15d64:	09000793          	li	a5,144
   15d68:	1cf12223          	sw	a5,452(sp)
   15d6c:	1c812823          	sw	s0,464(sp)
   15d70:	0a010793          	addi	a5,sp,160
   15d74:	0b210613          	addi	a2,sp,178
   15d78:	0007d703          	lhu	a4,0(a5)
   15d7c:	00278793          	addi	a5,a5,2
   15d80:	140710e3          	bnez	a4,166c0 <_ldtoa_r+0xf18>
   15d84:	fec79ae3          	bne	a5,a2,15d78 <_ldtoa_r+0x5d0>
   15d88:	02013703          	ld	a4,32(sp)
   15d8c:	000027b7          	lui	a5,0x2
   15d90:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   15d94:	00f72023          	sw	a5,0(a4)
   15d98:	0e00006f          	j	15e78 <_ldtoa_r+0x6d0>
   15d9c:	20c15583          	lhu	a1,524(sp)
   15da0:	18210a93          	addi	s5,sp,386
   15da4:	18310793          	addi	a5,sp,387
   15da8:	00400693          	li	a3,4
   15dac:	04b6d863          	bge	a3,a1,15dfc <_ldtoa_r+0x654>
   15db0:	00500693          	li	a3,5
   15db4:	14d58ae3          	beq	a1,a3,16708 <_ldtoa_r+0xf60>
   15db8:	ffe7c683          	lbu	a3,-2(a5)
   15dbc:	ffe78593          	addi	a1,a5,-2
   15dc0:	07f6f693          	andi	a3,a3,127
   15dc4:	020a4663          	bltz	s4,15df0 <_ldtoa_r+0x648>
   15dc8:	02e00793          	li	a5,46
   15dcc:	03800613          	li	a2,56
   15dd0:	03000513          	li	a0,48
   15dd4:	0cf688e3          	beq	a3,a5,166a4 <_ldtoa_r+0xefc>
   15dd8:	0cd670e3          	bgeu	a2,a3,16698 <_ldtoa_r+0xef0>
   15ddc:	fff5c683          	lbu	a3,-1(a1)
   15de0:	00a58023          	sb	a0,0(a1)
   15de4:	fff58593          	addi	a1,a1,-1
   15de8:	07f6f693          	andi	a3,a3,127
   15dec:	fe9ff06f          	j	15dd4 <_ldtoa_r+0x62c>
   15df0:	03100693          	li	a3,49
   15df4:	fed78f23          	sb	a3,-2(a5)
   15df8:	0014041b          	addiw	s0,s0,1
   15dfc:	000225b7          	lui	a1,0x22
   15e00:	00040613          	mv	a2,s0
   15e04:	24858593          	addi	a1,a1,584 # 22248 <blanks.1+0x68>
   15e08:	000a8513          	mv	a0,s5
   15e0c:	62d020ef          	jal	ra,18c38 <sprintf>
   15e10:	09000793          	li	a5,144
   15e14:	03013703          	ld	a4,48(sp)
   15e18:	1cf12223          	sw	a5,452(sp)
   15e1c:	000087b7          	lui	a5,0x8
   15e20:	1c812823          	sw	s0,464(sp)
   15e24:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   15e28:	f4f704e3          	beq	a4,a5,15d70 <_ldtoa_r+0x5c8>
   15e2c:	02013703          	ld	a4,32(sp)
   15e30:	18014683          	lbu	a3,384(sp)
   15e34:	0014079b          	addiw	a5,s0,1
   15e38:	00f72023          	sw	a5,0(a4)
   15e3c:	66068063          	beqz	a3,1649c <_ldtoa_r+0xcf4>
   15e40:	000c0793          	mv	a5,s8
   15e44:	02e00613          	li	a2,46
   15e48:	30c68a63          	beq	a3,a2,1615c <_ldtoa_r+0x9b4>
   15e4c:	0017c683          	lbu	a3,1(a5)
   15e50:	00178793          	addi	a5,a5,1
   15e54:	fe069ae3          	bnez	a3,15e48 <_ldtoa_r+0x6a0>
   15e58:	04500613          	li	a2,69
   15e5c:	00fc6663          	bltu	s8,a5,15e68 <_ldtoa_r+0x6c0>
   15e60:	0140006f          	j	15e74 <_ldtoa_r+0x6cc>
   15e64:	63878c63          	beq	a5,s8,1649c <_ldtoa_r+0xcf4>
   15e68:	fff7c703          	lbu	a4,-1(a5)
   15e6c:	fff78793          	addi	a5,a5,-1
   15e70:	fec71ae3          	bne	a4,a2,15e64 <_ldtoa_r+0x6bc>
   15e74:	00078023          	sb	zero,0(a5)
   15e78:	000c0793          	mv	a5,s8
   15e7c:	02000613          	li	a2,32
   15e80:	02d00593          	li	a1,45
   15e84:	0007c703          	lbu	a4,0(a5)
   15e88:	00c70463          	beq	a4,a2,15e90 <_ldtoa_r+0x6e8>
   15e8c:	00b71663          	bne	a4,a1,15e98 <_ldtoa_r+0x6f0>
   15e90:	00178793          	addi	a5,a5,1
   15e94:	ff1ff06f          	j	15e84 <_ldtoa_r+0x6dc>
   15e98:	000c0613          	mv	a2,s8
   15e9c:	0007c703          	lbu	a4,0(a5)
   15ea0:	00060493          	mv	s1,a2
   15ea4:	00178793          	addi	a5,a5,1
   15ea8:	00e60023          	sb	a4,0(a2)
   15eac:	00160613          	addi	a2,a2,1
   15eb0:	fe0716e3          	bnez	a4,15e9c <_ldtoa_r+0x6f4>
   15eb4:	00813703          	ld	a4,8(sp)
   15eb8:	00200793          	li	a5,2
   15ebc:	fff4c603          	lbu	a2,-1(s1)
   15ec0:	28f70263          	beq	a4,a5,16144 <_ldtoa_r+0x99c>
   15ec4:	01013703          	ld	a4,16(sp)
   15ec8:	00070793          	mv	a5,a4
   15ecc:	00875463          	bge	a4,s0,15ed4 <_ldtoa_r+0x72c>
   15ed0:	00040793          	mv	a5,s0
   15ed4:	03000593          	li	a1,48
   15ed8:	0007869b          	sext.w	a3,a5
   15edc:	02b61663          	bne	a2,a1,15f08 <_ldtoa_r+0x760>
   15ee0:	418487b3          	sub	a5,s1,s8
   15ee4:	02f6d263          	bge	a3,a5,15f08 <_ldtoa_r+0x760>
   15ee8:	03000613          	li	a2,48
   15eec:	00c0006f          	j	15ef8 <_ldtoa_r+0x750>
   15ef0:	418487b3          	sub	a5,s1,s8
   15ef4:	00f6da63          	bge	a3,a5,15f08 <_ldtoa_r+0x760>
   15ef8:	ffe4c783          	lbu	a5,-2(s1)
   15efc:	fe048fa3          	sb	zero,-1(s1)
   15f00:	fff48493          	addi	s1,s1,-1
   15f04:	fec786e3          	beq	a5,a2,15ef0 <_ldtoa_r+0x748>
   15f08:	00813703          	ld	a4,8(sp)
   15f0c:	00300793          	li	a5,3
   15f10:	1ef70863          	beq	a4,a5,16100 <_ldtoa_r+0x958>
   15f14:	01813783          	ld	a5,24(sp)
   15f18:	01f00613          	li	a2,31
   15f1c:	00100693          	li	a3,1
   15f20:	0097851b          	addiw	a0,a5,9
   15f24:	00400793          	li	a5,4
   15f28:	20a67863          	bgeu	a2,a0,16138 <_ldtoa_r+0x990>
   15f2c:	0017979b          	slliw	a5,a5,0x1
   15f30:	01c78713          	addi	a4,a5,28
   15f34:	0006859b          	sext.w	a1,a3
   15f38:	0016869b          	addiw	a3,a3,1
   15f3c:	fee578e3          	bgeu	a0,a4,15f2c <_ldtoa_r+0x784>
   15f40:	0005859b          	sext.w	a1,a1
   15f44:	06b92423          	sw	a1,104(s2)
   15f48:	00090513          	mv	a0,s2
   15f4c:	021010ef          	jal	ra,1776c <_Balloc>
   15f50:	00050413          	mv	s0,a0
   15f54:	1a050ee3          	beqz	a0,16910 <_ldtoa_r+0x1168>
   15f58:	06a93023          	sd	a0,96(s2)
   15f5c:	000c0593          	mv	a1,s8
   15f60:	7e9020ef          	jal	ra,18f48 <strcpy>
   15f64:	02813703          	ld	a4,40(sp)
   15f68:	00070863          	beqz	a4,15f78 <_ldtoa_r+0x7d0>
   15f6c:	418487b3          	sub	a5,s1,s8
   15f70:	00f407b3          	add	a5,s0,a5
   15f74:	00f73023          	sd	a5,0(a4)
   15f78:	27813083          	ld	ra,632(sp)
   15f7c:	00040513          	mv	a0,s0
   15f80:	27013403          	ld	s0,624(sp)
   15f84:	26813483          	ld	s1,616(sp)
   15f88:	26013903          	ld	s2,608(sp)
   15f8c:	25813983          	ld	s3,600(sp)
   15f90:	25013a03          	ld	s4,592(sp)
   15f94:	24813a83          	ld	s5,584(sp)
   15f98:	24013b03          	ld	s6,576(sp)
   15f9c:	23813b83          	ld	s7,568(sp)
   15fa0:	23013c03          	ld	s8,560(sp)
   15fa4:	22813c83          	ld	s9,552(sp)
   15fa8:	22013d03          	ld	s10,544(sp)
   15fac:	21813d83          	ld	s11,536(sp)
   15fb0:	28010113          	addi	sp,sp,640
   15fb4:	00008067          	ret
   15fb8:	000087b7          	lui	a5,0x8
   15fbc:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   15fc0:	6afa8663          	beq	s5,a5,1666c <_ldtoa_r+0xec4>
   15fc4:	0d011783          	lh	a5,208(sp)
   15fc8:	7207d463          	bgez	a5,166f0 <_ldtoa_r+0xf48>
   15fcc:	0c010593          	addi	a1,sp,192
   15fd0:	4f8b8513          	addi	a0,s7,1272
   15fd4:	c88fe0ef          	jal	ra,1445c <ecmp>
   15fd8:	940502e3          	beqz	a0,1591c <_ldtoa_r+0x174>
   15fdc:	20054a63          	bltz	a0,161f0 <_ldtoa_r+0xa48>
   15fe0:	7a0a9063          	bnez	s5,16780 <_ldtoa_r+0xfd8>
   15fe4:	0d011783          	lh	a5,208(sp)
   15fe8:	00000413          	li	s0,0
   15fec:	1c010b13          	addi	s6,sp,448
   15ff0:	0207c463          	bltz	a5,16018 <_ldtoa_r+0x870>
   15ff4:	00022d37          	lui	s10,0x22
   15ff8:	0c010613          	addi	a2,sp,192
   15ffc:	000b0693          	mv	a3,s6
   16000:	00060593          	mv	a1,a2
   16004:	4e0d0513          	addi	a0,s10,1248 # 224e0 <etens+0xf0>
   16008:	ab4ff0ef          	jal	ra,152bc <emul>
   1600c:	0d011783          	lh	a5,208(sp)
   16010:	fff4041b          	addiw	s0,s0,-1
   16014:	fe07d2e3          	bgez	a5,15ff8 <_ldtoa_r+0x850>
   16018:	12010a13          	addi	s4,sp,288
   1601c:	13810d93          	addi	s11,sp,312
   16020:	000a0793          	mv	a5,s4
   16024:	0c010713          	addi	a4,sp,192
   16028:	13410613          	addi	a2,sp,308
   1602c:	00075683          	lhu	a3,0(a4)
   16030:	00278793          	addi	a5,a5,2
   16034:	00270713          	addi	a4,a4,2
   16038:	fed79f23          	sh	a3,-2(a5)
   1603c:	fec798e3          	bne	a5,a2,1602c <_ldtoa_r+0x884>
   16040:	000227b7          	lui	a5,0x22
   16044:	0e010713          	addi	a4,sp,224
   16048:	4f878793          	addi	a5,a5,1272 # 224f8 <eone>
   1604c:	0007d683          	lhu	a3,0(a5)
   16050:	00278793          	addi	a5,a5,2
   16054:	00270713          	addi	a4,a4,2
   16058:	fed71f23          	sh	a3,-2(a4)
   1605c:	fe9798e3          	bne	a5,s1,1604c <_ldtoa_r+0x8a4>
   16060:	00022d37          	lui	s10,0x22
   16064:	00022cb7          	lui	s9,0x22
   16068:	000227b7          	lui	a5,0x22
   1606c:	fffff4b7          	lui	s1,0xfffff
   16070:	3f0d0d13          	addi	s10,s10,1008 # 223f0 <etens>
   16074:	2e8c8c93          	addi	s9,s9,744 # 222e8 <emtens>
   16078:	3d878a93          	addi	s5,a5,984 # 223d8 <emtens+0xf0>
   1607c:	00c0006f          	j	16088 <_ldtoa_r+0x8e0>
   16080:	014c8c93          	addi	s9,s9,20
   16084:	014d0d13          	addi	s10,s10,20
   16088:	000a0593          	mv	a1,s4
   1608c:	4f8b8513          	addi	a0,s7,1272
   16090:	bccfe0ef          	jal	ra,1445c <ecmp>
   16094:	04a05863          	blez	a0,160e4 <_ldtoa_r+0x93c>
   16098:	000a0593          	mv	a1,s4
   1609c:	000c8513          	mv	a0,s9
   160a0:	bbcfe0ef          	jal	ra,1445c <ecmp>
   160a4:	02054863          	bltz	a0,160d4 <_ldtoa_r+0x92c>
   160a8:	000b0693          	mv	a3,s6
   160ac:	000a0613          	mv	a2,s4
   160b0:	000a0593          	mv	a1,s4
   160b4:	000d0513          	mv	a0,s10
   160b8:	a04ff0ef          	jal	ra,152bc <emul>
   160bc:	0e010613          	addi	a2,sp,224
   160c0:	000b0693          	mv	a3,s6
   160c4:	00060593          	mv	a1,a2
   160c8:	000d0513          	mv	a0,s10
   160cc:	9f0ff0ef          	jal	ra,152bc <emul>
   160d0:	0084843b          	addw	s0,s1,s0
   160d4:	01f4d79b          	srliw	a5,s1,0x1f
   160d8:	009787bb          	addw	a5,a5,s1
   160dc:	4017d49b          	sraiw	s1,a5,0x1
   160e0:	fb5c90e3          	bne	s9,s5,16080 <_ldtoa_r+0x8d8>
   160e4:	0e010613          	addi	a2,sp,224
   160e8:	000b0693          	mv	a3,s6
   160ec:	4f8b8593          	addi	a1,s7,1272
   160f0:	00060513          	mv	a0,a2
   160f4:	c31fe0ef          	jal	ra,14d24 <ediv>
   160f8:	18010c13          	addi	s8,sp,384
   160fc:	835ff06f          	j	15930 <_ldtoa_r+0x188>
   16100:	01013783          	ld	a5,16(sp)
   16104:	0087843b          	addw	s0,a5,s0
   16108:	52044c63          	bltz	s0,16640 <_ldtoa_r+0xe98>
   1610c:	02013783          	ld	a5,32(sp)
   16110:	01813703          	ld	a4,24(sp)
   16114:	0007a783          	lw	a5,0(a5)
   16118:	00e787bb          	addw	a5,a5,a4
   1611c:	00f13c23          	sd	a5,24(sp)
   16120:	01813783          	ld	a5,24(sp)
   16124:	01f00613          	li	a2,31
   16128:	00100693          	li	a3,1
   1612c:	0037851b          	addiw	a0,a5,3
   16130:	00400793          	li	a5,4
   16134:	dea66ce3          	bltu	a2,a0,15f2c <_ldtoa_r+0x784>
   16138:	06092423          	sw	zero,104(s2)
   1613c:	00000593          	li	a1,0
   16140:	e09ff06f          	j	15f48 <_ldtoa_r+0x7a0>
   16144:	03000793          	li	a5,48
   16148:	dcf616e3          	bne	a2,a5,15f14 <_ldtoa_r+0x76c>
   1614c:	418487b3          	sub	a5,s1,s8
   16150:	00100693          	li	a3,1
   16154:	d8f6cae3          	blt	a3,a5,15ee8 <_ldtoa_r+0x740>
   16158:	dbdff06f          	j	15f14 <_ldtoa_r+0x76c>
   1615c:	0007c683          	lbu	a3,0(a5)
   16160:	ce068ce3          	beqz	a3,15e58 <_ldtoa_r+0x6b0>
   16164:	0017c703          	lbu	a4,1(a5)
   16168:	00178793          	addi	a5,a5,1
   1616c:	fee78fa3          	sb	a4,-1(a5)
   16170:	ce0704e3          	beqz	a4,15e58 <_ldtoa_r+0x6b0>
   16174:	0017c703          	lbu	a4,1(a5)
   16178:	00178793          	addi	a5,a5,1
   1617c:	fee78fa3          	sb	a4,-1(a5)
   16180:	fe0712e3          	bnez	a4,16164 <_ldtoa_r+0x9bc>
   16184:	cd5ff06f          	j	15e58 <_ldtoa_r+0x6b0>
   16188:	03100693          	li	a3,49
   1618c:	18d100a3          	sb	a3,385(sp)
   16190:	02e00693          	li	a3,46
   16194:	18d10123          	sb	a3,386(sp)
   16198:	0014041b          	addiw	s0,s0,1
   1619c:	2ef05863          	blez	a5,1648c <_ldtoa_r+0xce4>
   161a0:	03000793          	li	a5,48
   161a4:	18f101a3          	sb	a5,387(sp)
   161a8:	fffa0a1b          	addiw	s4,s4,-1
   161ac:	18410a93          	addi	s5,sp,388
   161b0:	9b5ff06f          	j	15b64 <_ldtoa_r+0x3bc>
   161b4:	01813703          	ld	a4,24(sp)
   161b8:	02a00793          	li	a5,42
   161bc:	00070a13          	mv	s4,a4
   161c0:	00e7d463          	bge	a5,a4,161c8 <_ldtoa_r+0xa20>
   161c4:	02a00a13          	li	s4,42
   161c8:	000a079b          	sext.w	a5,s4
   161cc:	00f13823          	sd	a5,16(sp)
   161d0:	ec4ff06f          	j	15894 <_ldtoa_r+0xec>
   161d4:	01813783          	ld	a5,24(sp)
   161d8:	fff78a1b          	addiw	s4,a5,-1
   161dc:	02a00793          	li	a5,42
   161e0:	0147d463          	bge	a5,s4,161e8 <_ldtoa_r+0xa40>
   161e4:	02a00a13          	li	s4,42
   161e8:	01413823          	sd	s4,16(sp)
   161ec:	ea8ff06f          	j	15894 <_ldtoa_r+0xec>
   161f0:	10010c93          	addi	s9,sp,256
   161f4:	000c8713          	mv	a4,s9
   161f8:	0c010793          	addi	a5,sp,192
   161fc:	0007d683          	lhu	a3,0(a5)
   16200:	00278793          	addi	a5,a5,2
   16204:	00270713          	addi	a4,a4,2
   16208:	fed71f23          	sh	a3,-2(a4)
   1620c:	fe8798e3          	bne	a5,s0,161fc <_ldtoa_r+0xa54>
   16210:	000047b7          	lui	a5,0x4
   16214:	08e78793          	addi	a5,a5,142 # 408e <exit-0xc05a>
   16218:	10f11923          	sh	a5,274(sp)
   1621c:	000227b7          	lui	a5,0x22
   16220:	4f478793          	addi	a5,a5,1268 # 224f4 <etens+0x104>
   16224:	04f13423          	sd	a5,72(sp)
   16228:	000087b7          	lui	a5,0x8
   1622c:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   16230:	02f13c23          	sd	a5,56(sp)
   16234:	ffffc7b7          	lui	a5,0xffffc
   16238:	0027879b          	addiw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd7dfa>
   1623c:	00022eb7          	lui	t4,0x22
   16240:	04f12223          	sw	a5,68(sp)
   16244:	000227b7          	lui	a5,0x22
   16248:	00000413          	li	s0,0
   1624c:	01000713          	li	a4,16
   16250:	490e8e93          	addi	t4,t4,1168 # 22490 <etens+0xa0>
   16254:	2c078793          	addi	a5,a5,704 # 222c0 <bmask>
   16258:	05313c23          	sd	s3,88(sp)
   1625c:	07213023          	sd	s2,96(sp)
   16260:	18010c13          	addi	s8,sp,384
   16264:	00040913          	mv	s2,s0
   16268:	1c010b13          	addi	s6,sp,448
   1626c:	12010a13          	addi	s4,sp,288
   16270:	0f210d93          	addi	s11,sp,242
   16274:	04f13823          	sd	a5,80(sp)
   16278:	0f410d13          	addi	s10,sp,244
   1627c:	000e8993          	mv	s3,t4
   16280:	00070413          	mv	s0,a4
   16284:	000b0693          	mv	a3,s6
   16288:	0e010613          	addi	a2,sp,224
   1628c:	000c8593          	mv	a1,s9
   16290:	00098513          	mv	a0,s3
   16294:	a91fe0ef          	jal	ra,14d24 <ediv>
   16298:	08810793          	addi	a5,sp,136
   1629c:	0e010713          	addi	a4,sp,224
   162a0:	09c10893          	addi	a7,sp,156
   162a4:	00075683          	lhu	a3,0(a4)
   162a8:	00278793          	addi	a5,a5,2
   162ac:	00270713          	addi	a4,a4,2
   162b0:	fed79f23          	sh	a3,-2(a5)
   162b4:	ff1798e3          	bne	a5,a7,162a4 <_ldtoa_r+0xafc>
   162b8:	03813783          	ld	a5,56(sp)
   162bc:	09a15503          	lhu	a0,154(sp)
   162c0:	00f575b3          	and	a1,a0,a5
   162c4:	04412783          	lw	a5,68(sp)
   162c8:	00f587bb          	addw	a5,a1,a5
   162cc:	00078593          	mv	a1,a5
   162d0:	38f05263          	blez	a5,16654 <_ldtoa_r+0xeac>
   162d4:	09000793          	li	a5,144
   162d8:	40b7863b          	subw	a2,a5,a1
   162dc:	000a0713          	mv	a4,s4
   162e0:	08810793          	addi	a5,sp,136
   162e4:	0007d683          	lhu	a3,0(a5)
   162e8:	00278793          	addi	a5,a5,2
   162ec:	00270713          	addi	a4,a4,2
   162f0:	fed71f23          	sh	a3,-2(a4)
   162f4:	ff1798e3          	bne	a5,a7,162e4 <_ldtoa_r+0xb3c>
   162f8:	06c05663          	blez	a2,16364 <_ldtoa_r+0xbbc>
   162fc:	00f00793          	li	a5,15
   16300:	000a0713          	mv	a4,s4
   16304:	02c7de63          	bge	a5,a2,16340 <_ldtoa_r+0xb98>
   16308:	08000693          	li	a3,128
   1630c:	40b686bb          	subw	a3,a3,a1
   16310:	0046d69b          	srliw	a3,a3,0x4
   16314:	0016871b          	addiw	a4,a3,1
   16318:	00171713          	slli	a4,a4,0x1
   1631c:	00ea0733          	add	a4,s4,a4
   16320:	000a0793          	mv	a5,s4
   16324:	00278793          	addi	a5,a5,2
   16328:	fe079f23          	sh	zero,-2(a5)
   1632c:	fee79ce3          	bne	a5,a4,16324 <_ldtoa_r+0xb7c>
   16330:	08000613          	li	a2,128
   16334:	40b6063b          	subw	a2,a2,a1
   16338:	0046969b          	slliw	a3,a3,0x4
   1633c:	40d6063b          	subw	a2,a2,a3
   16340:	05013683          	ld	a3,80(sp)
   16344:	00161793          	slli	a5,a2,0x1
   16348:	00f687b3          	add	a5,a3,a5
   1634c:	0007d783          	lhu	a5,0(a5)
   16350:	00075683          	lhu	a3,0(a4)
   16354:	00f6f7b3          	and	a5,a3,a5
   16358:	00f71023          	sh	a5,0(a4)
   1635c:	00f55513          	srli	a0,a0,0xf
   16360:	16051663          	bnez	a0,164cc <_ldtoa_r+0xd24>
   16364:	0e010793          	addi	a5,sp,224
   16368:	000a0713          	mv	a4,s4
   1636c:	0007d603          	lhu	a2,0(a5)
   16370:	00075683          	lhu	a3,0(a4)
   16374:	02d61863          	bne	a2,a3,163a4 <_ldtoa_r+0xbfc>
   16378:	00278793          	addi	a5,a5,2
   1637c:	00270713          	addi	a4,a4,2
   16380:	fefd96e3          	bne	s11,a5,1636c <_ldtoa_r+0xbc4>
   16384:	000c8713          	mv	a4,s9
   16388:	0e010793          	addi	a5,sp,224
   1638c:	0007d683          	lhu	a3,0(a5)
   16390:	00278793          	addi	a5,a5,2
   16394:	00270713          	addi	a4,a4,2
   16398:	fed71f23          	sh	a3,-2(a4)
   1639c:	ffa798e3          	bne	a5,s10,1638c <_ldtoa_r+0xbe4>
   163a0:	0124093b          	addw	s2,s0,s2
   163a4:	04813783          	ld	a5,72(sp)
   163a8:	01498993          	addi	s3,s3,20
   163ac:	00145413          	srli	s0,s0,0x1
   163b0:	ecf99ae3          	bne	s3,a5,16284 <_ldtoa_r+0xadc>
   163b4:	11215683          	lhu	a3,274(sp)
   163b8:	ffffc7b7          	lui	a5,0xffffc
   163bc:	f727879b          	addiw	a5,a5,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffd7d6a>
   163c0:	00d787bb          	addw	a5,a5,a3
   163c4:	00090413          	mv	s0,s2
   163c8:	05813983          	ld	s3,88(sp)
   163cc:	06013903          	ld	s2,96(sp)
   163d0:	015787bb          	addw	a5,a5,s5
   163d4:	10f11923          	sh	a5,274(sp)
   163d8:	0c010693          	addi	a3,sp,192
   163dc:	000c8793          	mv	a5,s9
   163e0:	11410593          	addi	a1,sp,276
   163e4:	0007d703          	lhu	a4,0(a5)
   163e8:	00278793          	addi	a5,a5,2
   163ec:	00268693          	addi	a3,a3,2
   163f0:	fee69f23          	sh	a4,-2(a3)
   163f4:	feb798e3          	bne	a5,a1,163e4 <_ldtoa_r+0xc3c>
   163f8:	000227b7          	lui	a5,0x22
   163fc:	0e010693          	addi	a3,sp,224
   16400:	4f878793          	addi	a5,a5,1272 # 224f8 <eone>
   16404:	0007d703          	lhu	a4,0(a5)
   16408:	00278793          	addi	a5,a5,2
   1640c:	00268693          	addi	a3,a3,2
   16410:	fee69f23          	sh	a4,-2(a3)
   16414:	fe9798e3          	bne	a5,s1,16404 <_ldtoa_r+0xc5c>
   16418:	000224b7          	lui	s1,0x22
   1641c:	00001bb7          	lui	s7,0x1
   16420:	3f048493          	addi	s1,s1,1008 # 223f0 <etens>
   16424:	00022d37          	lui	s10,0x22
   16428:	0140006f          	j	1643c <_ldtoa_r+0xc94>
   1642c:	4e0d0793          	addi	a5,s10,1248 # 224e0 <etens+0xf0>
   16430:	001bdb93          	srli	s7,s7,0x1
   16434:	24f48e63          	beq	s1,a5,16690 <_ldtoa_r+0xee8>
   16438:	01448493          	addi	s1,s1,20
   1643c:	000c8593          	mv	a1,s9
   16440:	4e0d0513          	addi	a0,s10,1248
   16444:	818fe0ef          	jal	ra,1445c <ecmp>
   16448:	24a04463          	bgtz	a0,16690 <_ldtoa_r+0xee8>
   1644c:	000c8593          	mv	a1,s9
   16450:	00048513          	mv	a0,s1
   16454:	808fe0ef          	jal	ra,1445c <ecmp>
   16458:	fca04ae3          	bgtz	a0,1642c <_ldtoa_r+0xc84>
   1645c:	000b0693          	mv	a3,s6
   16460:	000c8613          	mv	a2,s9
   16464:	000c8593          	mv	a1,s9
   16468:	00048513          	mv	a0,s1
   1646c:	8b9fe0ef          	jal	ra,14d24 <ediv>
   16470:	0e010613          	addi	a2,sp,224
   16474:	000b0693          	mv	a3,s6
   16478:	00060593          	mv	a1,a2
   1647c:	00048513          	mv	a0,s1
   16480:	e3dfe0ef          	jal	ra,152bc <emul>
   16484:	008b843b          	addw	s0,s7,s0
   16488:	fa5ff06f          	j	1642c <_ldtoa_r+0xc84>
   1648c:	18310a93          	addi	s5,sp,387
   16490:	00000a13          	li	s4,0
   16494:	960794e3          	bnez	a5,15dfc <_ldtoa_r+0x654>
   16498:	eccff06f          	j	15b64 <_ldtoa_r+0x3bc>
   1649c:	000c0793          	mv	a5,s8
   164a0:	9d5ff06f          	j	15e74 <_ldtoa_r+0x6cc>
   164a4:	01813703          	ld	a4,24(sp)
   164a8:	02a00793          	li	a5,42
   164ac:	00070a13          	mv	s4,a4
   164b0:	00e7d463          	bge	a5,a4,164b8 <_ldtoa_r+0xd10>
   164b4:	02a00a13          	li	s4,42
   164b8:	000a079b          	sext.w	a5,s4
   164bc:	00f13823          	sd	a5,16(sp)
   164c0:	865ff06f          	j	15d24 <_ldtoa_r+0x57c>
   164c4:	00000693          	li	a3,0
   164c8:	829ff06f          	j	15cf0 <_ldtoa_r+0x548>
   164cc:	08810793          	addi	a5,sp,136
   164d0:	000a0713          	mv	a4,s4
   164d4:	0140006f          	j	164e8 <_ldtoa_r+0xd40>
   164d8:	00278793          	addi	a5,a5,2
   164dc:	09a10693          	addi	a3,sp,154
   164e0:	00270713          	addi	a4,a4,2
   164e4:	e8d780e3          	beq	a5,a3,16364 <_ldtoa_r+0xbbc>
   164e8:	0007d603          	lhu	a2,0(a5)
   164ec:	00075683          	lhu	a3,0(a4)
   164f0:	fed604e3          	beq	a2,a3,164d8 <_ldtoa_r+0xd30>
   164f4:	13215783          	lhu	a5,306(sp)
   164f8:	fff7c793          	not	a5,a5
   164fc:	03179713          	slli	a4,a5,0x31
   16500:	38070c63          	beqz	a4,16898 <_ldtoa_r+0x10f0>
   16504:	14010593          	addi	a1,sp,320
   16508:	4f8b8513          	addi	a0,s7,1272 # 14f8 <exit-0xebf0>
   1650c:	e99fd0ef          	jal	ra,143a4 <emovi>
   16510:	16010593          	addi	a1,sp,352
   16514:	000a0513          	mv	a0,s4
   16518:	e8dfd0ef          	jal	ra,143a4 <emovi>
   1651c:	14015783          	lhu	a5,320(sp)
   16520:	16215703          	lhu	a4,354(sp)
   16524:	14215303          	lhu	t1,322(sp)
   16528:	fff7c793          	not	a5,a5
   1652c:	14f11023          	sh	a5,320(sp)
   16530:	40e305b3          	sub	a1,t1,a4
   16534:	00070693          	mv	a3,a4
   16538:	06b05e63          	blez	a1,165b4 <_ldtoa_r+0xe0c>
   1653c:	16010593          	addi	a1,sp,352
   16540:	000c0693          	mv	a3,s8
   16544:	17810793          	addi	a5,sp,376
   16548:	000c0513          	mv	a0,s8
   1654c:	00058613          	mv	a2,a1
   16550:	00063803          	ld	a6,0(a2)
   16554:	00860613          	addi	a2,a2,8
   16558:	00850513          	addi	a0,a0,8
   1655c:	ff053c23          	sd	a6,-8(a0)
   16560:	fec798e3          	bne	a5,a2,16550 <_ldtoa_r+0xda8>
   16564:	14010613          	addi	a2,sp,320
   16568:	18011c23          	sh	zero,408(sp)
   1656c:	15810513          	addi	a0,sp,344
   16570:	00060793          	mv	a5,a2
   16574:	0007b803          	ld	a6,0(a5)
   16578:	00878793          	addi	a5,a5,8
   1657c:	00858593          	addi	a1,a1,8
   16580:	ff05bc23          	sd	a6,-8(a1)
   16584:	fea798e3          	bne	a5,a0,16574 <_ldtoa_r+0xdcc>
   16588:	16011c23          	sh	zero,376(sp)
   1658c:	018c0793          	addi	a5,s8,24
   16590:	0006b583          	ld	a1,0(a3)
   16594:	00868693          	addi	a3,a3,8
   16598:	00860613          	addi	a2,a2,8
   1659c:	feb63c23          	sd	a1,-8(a2)
   165a0:	fef698e3          	bne	a3,a5,16590 <_ldtoa_r+0xde8>
   165a4:	16215683          	lhu	a3,354(sp)
   165a8:	406705b3          	sub	a1,a4,t1
   165ac:	14011c23          	sh	zero,344(sp)
   165b0:	00068713          	mv	a4,a3
   165b4:	30058a63          	beqz	a1,168c8 <_ldtoa_r+0x1120>
   165b8:	06d13423          	sd	a3,104(sp)
   165bc:	f6f00793          	li	a5,-145
   165c0:	06f5c863          	blt	a1,a5,16630 <_ldtoa_r+0xe88>
   165c4:	0005859b          	sext.w	a1,a1
   165c8:	14010513          	addi	a0,sp,320
   165cc:	c15fd0ef          	jal	ra,141e0 <eshift.part.0>
   165d0:	06813683          	ld	a3,104(sp)
   165d4:	00050593          	mv	a1,a0
   165d8:	17810793          	addi	a5,sp,376
   165dc:	14015603          	lhu	a2,320(sp)
   165e0:	16015703          	lhu	a4,352(sp)
   165e4:	44e60663          	beq	a2,a4,16a30 <_ldtoa_r+0x1288>
   165e8:	00000713          	li	a4,0
   165ec:	15810313          	addi	t1,sp,344
   165f0:	16210513          	addi	a0,sp,354
   165f4:	0007d603          	lhu	a2,0(a5)
   165f8:	00035803          	lhu	a6,0(t1)
   165fc:	ffe78793          	addi	a5,a5,-2
   16600:	ffe30313          	addi	t1,t1,-2
   16604:	41060633          	sub	a2,a2,a6
   16608:	40e60733          	sub	a4,a2,a4
   1660c:	01075613          	srli	a2,a4,0x10
   16610:	00e79123          	sh	a4,2(a5)
   16614:	00167713          	andi	a4,a2,1
   16618:	fca79ee3          	bne	a5,a0,165f4 <_ldtoa_r+0xe4c>
   1661c:	00100613          	li	a2,1
   16620:	000b0793          	mv	a5,s6
   16624:	04000713          	li	a4,64
   16628:	16010513          	addi	a0,sp,352
   1662c:	f81fd0ef          	jal	ra,145ac <emdnorm>
   16630:	000a0593          	mv	a1,s4
   16634:	16010513          	addi	a0,sp,352
   16638:	981fd0ef          	jal	ra,13fb8 <emovo.constprop.0>
   1663c:	d29ff06f          	j	16364 <_ldtoa_r+0xbbc>
   16640:	02013783          	ld	a5,32(sp)
   16644:	18010023          	sb	zero,384(sp)
   16648:	000c0493          	mv	s1,s8
   1664c:	0007a023          	sw	zero,0(a5)
   16650:	ad1ff06f          	j	16120 <_ldtoa_r+0x978>
   16654:	000a0793          	mv	a5,s4
   16658:	00278793          	addi	a5,a5,2
   1665c:	13410713          	addi	a4,sp,308
   16660:	fe079f23          	sh	zero,-2(a5)
   16664:	fee79ae3          	bne	a5,a4,16658 <_ldtoa_r+0xeb0>
   16668:	cf5ff06f          	j	1635c <_ldtoa_r+0xbb4>
   1666c:	18010c13          	addi	s8,sp,384
   16670:	0e098863          	beqz	s3,16760 <_ldtoa_r+0xfb8>
   16674:	000225b7          	lui	a1,0x22
   16678:	22058593          	addi	a1,a1,544 # 22220 <blanks.1+0x40>
   1667c:	000c0513          	mv	a0,s8
   16680:	5b8020ef          	jal	ra,18c38 <sprintf>
   16684:	00002437          	lui	s0,0x2
   16688:	70f40413          	addi	s0,s0,1807 # 270f <exit-0xd9d9>
   1668c:	f84ff06f          	j	15e10 <_ldtoa_r+0x668>
   16690:	13810d93          	addi	s11,sp,312
   16694:	a9cff06f          	j	15930 <_ldtoa_r+0x188>
   16698:	0016869b          	addiw	a3,a3,1
   1669c:	00d58023          	sb	a3,0(a1)
   166a0:	f5cff06f          	j	15dfc <_ldtoa_r+0x654>
   166a4:	fff5c783          	lbu	a5,-1(a1)
   166a8:	03800693          	li	a3,56
   166ac:	0cf6f463          	bgeu	a3,a5,16774 <_ldtoa_r+0xfcc>
   166b0:	03100793          	li	a5,49
   166b4:	0014041b          	addiw	s0,s0,1
   166b8:	fef58fa3          	sb	a5,-1(a1)
   166bc:	f40ff06f          	j	15dfc <_ldtoa_r+0x654>
   166c0:	0a010793          	addi	a5,sp,160
   166c4:	0b210613          	addi	a2,sp,178
   166c8:	0080006f          	j	166d0 <_ldtoa_r+0xf28>
   166cc:	f6c78063          	beq	a5,a2,15e2c <_ldtoa_r+0x684>
   166d0:	0007d703          	lhu	a4,0(a5)
   166d4:	00278793          	addi	a5,a5,2
   166d8:	fe070ae3          	beqz	a4,166cc <_ldtoa_r+0xf24>
   166dc:	02013703          	ld	a4,32(sp)
   166e0:	000027b7          	lui	a5,0x2
   166e4:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   166e8:	00f72023          	sw	a5,0(a4)
   166ec:	f8cff06f          	j	15e78 <_ldtoa_r+0x6d0>
   166f0:	18010c13          	addi	s8,sp,384
   166f4:	000225b7          	lui	a1,0x22
   166f8:	24058593          	addi	a1,a1,576 # 22240 <blanks.1+0x60>
   166fc:	000c0513          	mv	a0,s8
   16700:	538020ef          	jal	ra,18c38 <sprintf>
   16704:	f81ff06f          	j	16684 <_ldtoa_r+0xedc>
   16708:	0e010593          	addi	a1,sp,224
   1670c:	0c010513          	addi	a0,sp,192
   16710:	02f13c23          	sd	a5,56(sp)
   16714:	8a5fd0ef          	jal	ra,13fb8 <emovo.constprop.0>
   16718:	000225b7          	lui	a1,0x22
   1671c:	51058593          	addi	a1,a1,1296 # 22510 <ezero>
   16720:	0e010513          	addi	a0,sp,224
   16724:	d39fd0ef          	jal	ra,1445c <ecmp>
   16728:	03813783          	ld	a5,56(sp)
   1672c:	e8051663          	bnez	a0,15db8 <_ldtoa_r+0x610>
   16730:	ec0a4663          	bltz	s4,15dfc <_ldtoa_r+0x654>
   16734:	ffe7c683          	lbu	a3,-2(a5)
   16738:	ffe78593          	addi	a1,a5,-2
   1673c:	fd268613          	addi	a2,a3,-46
   16740:	00163613          	seqz	a2,a2
   16744:	fff64613          	not	a2,a2
   16748:	00ca8633          	add	a2,s5,a2
   1674c:	00064603          	lbu	a2,0(a2)
   16750:	07f6f693          	andi	a3,a3,127
   16754:	00167613          	andi	a2,a2,1
   16758:	e6061863          	bnez	a2,15dc8 <_ldtoa_r+0x620>
   1675c:	ea0ff06f          	j	15dfc <_ldtoa_r+0x654>
   16760:	000225b7          	lui	a1,0x22
   16764:	23058593          	addi	a1,a1,560 # 22230 <blanks.1+0x50>
   16768:	000c0513          	mv	a0,s8
   1676c:	4cc020ef          	jal	ra,18c38 <sprintf>
   16770:	f15ff06f          	j	16684 <_ldtoa_r+0xedc>
   16774:	0017879b          	addiw	a5,a5,1
   16778:	fef58fa3          	sb	a5,-1(a1)
   1677c:	e80ff06f          	j	15dfc <_ldtoa_r+0x654>
   16780:	12010a13          	addi	s4,sp,288
   16784:	000a0593          	mv	a1,s4
   16788:	0c010513          	addi	a0,sp,192
   1678c:	00004d37          	lui	s10,0x4
   16790:	c15fd0ef          	jal	ra,143a4 <emovi>
   16794:	00000413          	li	s0,0
   16798:	13810d93          	addi	s11,sp,312
   1679c:	12210b13          	addi	s6,sp,290
   167a0:	ffed0d13          	addi	s10,s10,-2 # 3ffe <exit-0xc0ea>
   167a4:	11810c93          	addi	s9,sp,280
   167a8:	13815783          	lhu	a5,312(sp)
   167ac:	0077f793          	andi	a5,a5,7
   167b0:	0c079a63          	bnez	a5,16884 <_ldtoa_r+0x10dc>
   167b4:	10010a93          	addi	s5,sp,256
   167b8:	000a0c13          	mv	s8,s4
   167bc:	000a8713          	mv	a4,s5
   167c0:	000a0793          	mv	a5,s4
   167c4:	0007b683          	ld	a3,0(a5)
   167c8:	00878793          	addi	a5,a5,8
   167cc:	00870713          	addi	a4,a4,8
   167d0:	fed73c23          	sd	a3,-8(a4)
   167d4:	ffb798e3          	bne	a5,s11,167c4 <_ldtoa_r+0x101c>
   167d8:	10010513          	addi	a0,sp,256
   167dc:	10011c23          	sh	zero,280(sp)
   167e0:	e64fd0ef          	jal	ra,13e44 <eshdn1>
   167e4:	10010513          	addi	a0,sp,256
   167e8:	e5cfd0ef          	jal	ra,13e44 <eshdn1>
   167ec:	00000613          	li	a2,0
   167f0:	11810693          	addi	a3,sp,280
   167f4:	000d8713          	mv	a4,s11
   167f8:	0006d583          	lhu	a1,0(a3)
   167fc:	00075783          	lhu	a5,0(a4)
   16800:	ffe68693          	addi	a3,a3,-2
   16804:	ffe70713          	addi	a4,a4,-2
   16808:	00b787b3          	add	a5,a5,a1
   1680c:	00c787b3          	add	a5,a5,a2
   16810:	0107d613          	srli	a2,a5,0x10
   16814:	00f69123          	sh	a5,2(a3)
   16818:	00167613          	andi	a2,a2,1
   1681c:	fd671ee3          	bne	a4,s6,167f8 <_ldtoa_r+0x1050>
   16820:	10215783          	lhu	a5,258(sp)
   16824:	10415703          	lhu	a4,260(sp)
   16828:	0037879b          	addiw	a5,a5,3
   1682c:	10f11123          	sh	a5,258(sp)
   16830:	02070063          	beqz	a4,16850 <_ldtoa_r+0x10a8>
   16834:	10010513          	addi	a0,sp,256
   16838:	e0cfd0ef          	jal	ra,13e44 <eshdn1>
   1683c:	10215783          	lhu	a5,258(sp)
   16840:	10415703          	lhu	a4,260(sp)
   16844:	0017879b          	addiw	a5,a5,1
   16848:	10f11123          	sh	a5,258(sp)
   1684c:	fe0714e3          	bnez	a4,16834 <_ldtoa_r+0x108c>
   16850:	11815783          	lhu	a5,280(sp)
   16854:	02079863          	bnez	a5,16884 <_ldtoa_r+0x10dc>
   16858:	10215783          	lhu	a5,258(sp)
   1685c:	02fd6463          	bltu	s10,a5,16884 <_ldtoa_r+0x10dc>
   16860:	000ab783          	ld	a5,0(s5)
   16864:	008a8a93          	addi	s5,s5,8
   16868:	008c0c13          	addi	s8,s8,8
   1686c:	fefc3c23          	sd	a5,-8(s8)
   16870:	ff9a98e3          	bne	s5,s9,16860 <_ldtoa_r+0x10b8>
   16874:	12011c23          	sh	zero,312(sp)
   16878:	fff4041b          	addiw	s0,s0,-1
   1687c:	fd500793          	li	a5,-43
   16880:	f2f414e3          	bne	s0,a5,167a8 <_ldtoa_r+0x1000>
   16884:	0c010593          	addi	a1,sp,192
   16888:	000a0513          	mv	a0,s4
   1688c:	f2cfd0ef          	jal	ra,13fb8 <emovo.constprop.0>
   16890:	1c010b13          	addi	s6,sp,448
   16894:	f8cff06f          	j	16020 <_ldtoa_r+0x878>
   16898:	000a0793          	mv	a5,s4
   1689c:	13210713          	addi	a4,sp,306
   168a0:	0007d683          	lhu	a3,0(a5)
   168a4:	00278793          	addi	a5,a5,2
   168a8:	aa069ee3          	bnez	a3,16364 <_ldtoa_r+0xbbc>
   168ac:	fee79ae3          	bne	a5,a4,168a0 <_ldtoa_r+0x10f8>
   168b0:	000a0793          	mv	a5,s4
   168b4:	0007d683          	lhu	a3,0(a5)
   168b8:	00278793          	addi	a5,a5,2
   168bc:	c40694e3          	bnez	a3,16504 <_ldtoa_r+0xd5c>
   168c0:	fee79ae3          	bne	a5,a4,168b4 <_ldtoa_r+0x110c>
   168c4:	aa1ff06f          	j	16364 <_ldtoa_r+0xbbc>
   168c8:	16410613          	addi	a2,sp,356
   168cc:	14410793          	addi	a5,sp,324
   168d0:	15a10313          	addi	t1,sp,346
   168d4:	0007d503          	lhu	a0,0(a5)
   168d8:	00065583          	lhu	a1,0(a2)
   168dc:	00278793          	addi	a5,a5,2
   168e0:	00260613          	addi	a2,a2,2
   168e4:	04b51663          	bne	a0,a1,16930 <_ldtoa_r+0x1188>
   168e8:	fe6796e3          	bne	a5,t1,168d4 <_ldtoa_r+0x112c>
   168ec:	14015603          	lhu	a2,320(sp)
   168f0:	16015783          	lhu	a5,352(sp)
   168f4:	0af60a63          	beq	a2,a5,169a8 <_ldtoa_r+0x1200>
   168f8:	000a0793          	mv	a5,s4
   168fc:	13410713          	addi	a4,sp,308
   16900:	00278793          	addi	a5,a5,2
   16904:	fe079f23          	sh	zero,-2(a5)
   16908:	fee79ce3          	bne	a5,a4,16900 <_ldtoa_r+0x1158>
   1690c:	a59ff06f          	j	16364 <_ldtoa_r+0xbbc>
   16910:	000226b7          	lui	a3,0x22
   16914:	000015b7          	lui	a1,0x1
   16918:	00022537          	lui	a0,0x22
   1691c:	25068693          	addi	a3,a3,592 # 22250 <blanks.1+0x70>
   16920:	00000613          	li	a2,0
   16924:	b6e58593          	addi	a1,a1,-1170 # b6e <exit-0xf57a>
   16928:	26850513          	addi	a0,a0,616 # 22268 <blanks.1+0x88>
   1692c:	3a4060ef          	jal	ra,1ccd0 <__assert_func>
   16930:	17810793          	addi	a5,sp,376
   16934:	06a5f663          	bgeu	a1,a0,169a0 <_ldtoa_r+0x11f8>
   16938:	16010713          	addi	a4,sp,352
   1693c:	000c0593          	mv	a1,s8
   16940:	17810793          	addi	a5,sp,376
   16944:	000c0513          	mv	a0,s8
   16948:	00070613          	mv	a2,a4
   1694c:	00063803          	ld	a6,0(a2)
   16950:	00860613          	addi	a2,a2,8
   16954:	00850513          	addi	a0,a0,8
   16958:	ff053c23          	sd	a6,-8(a0)
   1695c:	fec798e3          	bne	a5,a2,1694c <_ldtoa_r+0x11a4>
   16960:	14010613          	addi	a2,sp,320
   16964:	18011c23          	sh	zero,408(sp)
   16968:	00060513          	mv	a0,a2
   1696c:	00053803          	ld	a6,0(a0)
   16970:	00870713          	addi	a4,a4,8
   16974:	00850513          	addi	a0,a0,8
   16978:	ff073c23          	sd	a6,-8(a4)
   1697c:	fee798e3          	bne	a5,a4,1696c <_ldtoa_r+0x11c4>
   16980:	16011c23          	sh	zero,376(sp)
   16984:	15810713          	addi	a4,sp,344
   16988:	0005b503          	ld	a0,0(a1)
   1698c:	00860613          	addi	a2,a2,8
   16990:	00858593          	addi	a1,a1,8
   16994:	fea63c23          	sd	a0,-8(a2)
   16998:	fec718e3          	bne	a4,a2,16988 <_ldtoa_r+0x11e0>
   1699c:	14011c23          	sh	zero,344(sp)
   169a0:	00000593          	li	a1,0
   169a4:	c39ff06f          	j	165dc <_ldtoa_r+0xe34>
   169a8:	00068793          	mv	a5,a3
   169ac:	00069663          	bnez	a3,169b8 <_ldtoa_r+0x1210>
   169b0:	16611603          	lh	a2,358(sp)
   169b4:	02065263          	bgez	a2,169d8 <_ldtoa_r+0x1230>
   169b8:	16210613          	addi	a2,sp,354
   169bc:	17810793          	addi	a5,sp,376
   169c0:	00065583          	lhu	a1,0(a2)
   169c4:	06059063          	bnez	a1,16a24 <_ldtoa_r+0x127c>
   169c8:	00260613          	addi	a2,a2,2
   169cc:	fec79ae3          	bne	a5,a2,169c0 <_ldtoa_r+0x1218>
   169d0:	16e11123          	sh	a4,354(sp)
   169d4:	c5dff06f          	j	16630 <_ldtoa_r+0xe88>
   169d8:	17810693          	addi	a3,sp,376
   169dc:	16210513          	addi	a0,sp,354
   169e0:	0006d703          	lhu	a4,0(a3)
   169e4:	00f75613          	srli	a2,a4,0xf
   169e8:	00060463          	beqz	a2,169f0 <_ldtoa_r+0x1248>
   169ec:	0017e793          	ori	a5,a5,1
   169f0:	0017171b          	slliw	a4,a4,0x1
   169f4:	03071713          	slli	a4,a4,0x30
   169f8:	0027f613          	andi	a2,a5,2
   169fc:	03075713          	srli	a4,a4,0x30
   16a00:	00060463          	beqz	a2,16a08 <_ldtoa_r+0x1260>
   16a04:	00176713          	ori	a4,a4,1
   16a08:	0017979b          	slliw	a5,a5,0x1
   16a0c:	00e69023          	sh	a4,0(a3)
   16a10:	03079793          	slli	a5,a5,0x30
   16a14:	ffe68693          	addi	a3,a3,-2
   16a18:	0307d793          	srli	a5,a5,0x30
   16a1c:	fca692e3          	bne	a3,a0,169e0 <_ldtoa_r+0x1238>
   16a20:	c11ff06f          	j	16630 <_ldtoa_r+0xe88>
   16a24:	00168713          	addi	a4,a3,1
   16a28:	16e11123          	sh	a4,354(sp)
   16a2c:	c05ff06f          	j	16630 <_ldtoa_r+0xe88>
   16a30:	00000713          	li	a4,0
   16a34:	15810513          	addi	a0,sp,344
   16a38:	14210313          	addi	t1,sp,322
   16a3c:	0007d803          	lhu	a6,0(a5)
   16a40:	00055603          	lhu	a2,0(a0)
   16a44:	ffe78793          	addi	a5,a5,-2
   16a48:	ffe50513          	addi	a0,a0,-2
   16a4c:	01060633          	add	a2,a2,a6
   16a50:	00e60733          	add	a4,a2,a4
   16a54:	01075613          	srli	a2,a4,0x10
   16a58:	00e79123          	sh	a4,2(a5)
   16a5c:	00167713          	andi	a4,a2,1
   16a60:	fc651ee3          	bne	a0,t1,16a3c <_ldtoa_r+0x1294>
   16a64:	00000613          	li	a2,0
   16a68:	bb9ff06f          	j	16620 <_ldtoa_r+0xe78>

0000000000016a6c <_ldcheck>:
   16a6c:	00053703          	ld	a4,0(a0)
   16a70:	00853783          	ld	a5,8(a0)
   16a74:	fc010113          	addi	sp,sp,-64
   16a78:	00010513          	mv	a0,sp
   16a7c:	01010593          	addi	a1,sp,16
   16a80:	00e13023          	sd	a4,0(sp)
   16a84:	00f13423          	sd	a5,8(sp)
   16a88:	02113c23          	sd	ra,56(sp)
   16a8c:	940fe0ef          	jal	ra,14bcc <e113toe.isra.0>
   16a90:	02215783          	lhu	a5,34(sp)
   16a94:	00000513          	li	a0,0
   16a98:	fff7c793          	not	a5,a5
   16a9c:	03179713          	slli	a4,a5,0x31
   16aa0:	02071063          	bnez	a4,16ac0 <_ldcheck+0x54>
   16aa4:	01010793          	addi	a5,sp,16
   16aa8:	02210693          	addi	a3,sp,34
   16aac:	0007d703          	lhu	a4,0(a5)
   16ab0:	00278793          	addi	a5,a5,2
   16ab4:	00071c63          	bnez	a4,16acc <_ldcheck+0x60>
   16ab8:	fed79ae3          	bne	a5,a3,16aac <_ldcheck+0x40>
   16abc:	00200513          	li	a0,2
   16ac0:	03813083          	ld	ra,56(sp)
   16ac4:	04010113          	addi	sp,sp,64
   16ac8:	00008067          	ret
   16acc:	00100513          	li	a0,1
   16ad0:	ff1ff06f          	j	16ac0 <_ldcheck+0x54>

0000000000016ad4 <__localeconv_l>:
   16ad4:	10050513          	addi	a0,a0,256
   16ad8:	00008067          	ret

0000000000016adc <_localeconv_r>:
   16adc:	e6018513          	addi	a0,gp,-416 # 23868 <__global_locale+0x100>
   16ae0:	00008067          	ret

0000000000016ae4 <localeconv>:
   16ae4:	e6018513          	addi	a0,gp,-416 # 23868 <__global_locale+0x100>
   16ae8:	00008067          	ret

0000000000016aec <_setlocale_r>:
   16aec:	fe010113          	addi	sp,sp,-32
   16af0:	00113c23          	sd	ra,24(sp)
   16af4:	00813823          	sd	s0,16(sp)
   16af8:	00913423          	sd	s1,8(sp)
   16afc:	02060c63          	beqz	a2,16b34 <_setlocale_r+0x48>
   16b00:	000225b7          	lui	a1,0x22
   16b04:	53058593          	addi	a1,a1,1328 # 22530 <ezero+0x20>
   16b08:	00060513          	mv	a0,a2
   16b0c:	00060413          	mv	s0,a2
   16b10:	30c020ef          	jal	ra,18e1c <strcmp>
   16b14:	000224b7          	lui	s1,0x22
   16b18:	02051263          	bnez	a0,16b3c <_setlocale_r+0x50>
   16b1c:	52848513          	addi	a0,s1,1320 # 22528 <ezero+0x18>
   16b20:	01813083          	ld	ra,24(sp)
   16b24:	01013403          	ld	s0,16(sp)
   16b28:	00813483          	ld	s1,8(sp)
   16b2c:	02010113          	addi	sp,sp,32
   16b30:	00008067          	ret
   16b34:	000224b7          	lui	s1,0x22
   16b38:	fe5ff06f          	j	16b1c <_setlocale_r+0x30>
   16b3c:	52848593          	addi	a1,s1,1320 # 22528 <ezero+0x18>
   16b40:	00040513          	mv	a0,s0
   16b44:	2d8020ef          	jal	ra,18e1c <strcmp>
   16b48:	fc050ae3          	beqz	a0,16b1c <_setlocale_r+0x30>
   16b4c:	000225b7          	lui	a1,0x22
   16b50:	fa058593          	addi	a1,a1,-96 # 21fa0 <__clzdi2+0x8c>
   16b54:	00040513          	mv	a0,s0
   16b58:	2c4020ef          	jal	ra,18e1c <strcmp>
   16b5c:	fc0500e3          	beqz	a0,16b1c <_setlocale_r+0x30>
   16b60:	00000513          	li	a0,0
   16b64:	fbdff06f          	j	16b20 <_setlocale_r+0x34>

0000000000016b68 <__locale_mb_cur_max>:
   16b68:	ec01c503          	lbu	a0,-320(gp) # 238c8 <__global_locale+0x160>
   16b6c:	00008067          	ret

0000000000016b70 <setlocale>:
   16b70:	fe010113          	addi	sp,sp,-32
   16b74:	00113c23          	sd	ra,24(sp)
   16b78:	00813823          	sd	s0,16(sp)
   16b7c:	00913423          	sd	s1,8(sp)
   16b80:	02058c63          	beqz	a1,16bb8 <setlocale+0x48>
   16b84:	00058413          	mv	s0,a1
   16b88:	000225b7          	lui	a1,0x22
   16b8c:	53058593          	addi	a1,a1,1328 # 22530 <ezero+0x20>
   16b90:	00040513          	mv	a0,s0
   16b94:	288020ef          	jal	ra,18e1c <strcmp>
   16b98:	000224b7          	lui	s1,0x22
   16b9c:	02051263          	bnez	a0,16bc0 <setlocale+0x50>
   16ba0:	52848513          	addi	a0,s1,1320 # 22528 <ezero+0x18>
   16ba4:	01813083          	ld	ra,24(sp)
   16ba8:	01013403          	ld	s0,16(sp)
   16bac:	00813483          	ld	s1,8(sp)
   16bb0:	02010113          	addi	sp,sp,32
   16bb4:	00008067          	ret
   16bb8:	000224b7          	lui	s1,0x22
   16bbc:	fe5ff06f          	j	16ba0 <setlocale+0x30>
   16bc0:	52848593          	addi	a1,s1,1320 # 22528 <ezero+0x18>
   16bc4:	00040513          	mv	a0,s0
   16bc8:	254020ef          	jal	ra,18e1c <strcmp>
   16bcc:	fc050ae3          	beqz	a0,16ba0 <setlocale+0x30>
   16bd0:	000225b7          	lui	a1,0x22
   16bd4:	fa058593          	addi	a1,a1,-96 # 21fa0 <__clzdi2+0x8c>
   16bd8:	00040513          	mv	a0,s0
   16bdc:	240020ef          	jal	ra,18e1c <strcmp>
   16be0:	fc0500e3          	beqz	a0,16ba0 <setlocale+0x30>
   16be4:	00000513          	li	a0,0
   16be8:	fbdff06f          	j	16ba4 <setlocale+0x34>

0000000000016bec <__smakebuf_r>:
   16bec:	01059783          	lh	a5,16(a1)
   16bf0:	f6010113          	addi	sp,sp,-160
   16bf4:	08813823          	sd	s0,144(sp)
   16bf8:	08113c23          	sd	ra,152(sp)
   16bfc:	08913423          	sd	s1,136(sp)
   16c00:	09213023          	sd	s2,128(sp)
   16c04:	07313c23          	sd	s3,120(sp)
   16c08:	07413823          	sd	s4,112(sp)
   16c0c:	0027f713          	andi	a4,a5,2
   16c10:	00058413          	mv	s0,a1
   16c14:	02070c63          	beqz	a4,16c4c <__smakebuf_r+0x60>
   16c18:	07758793          	addi	a5,a1,119
   16c1c:	00f5b023          	sd	a5,0(a1)
   16c20:	00f5bc23          	sd	a5,24(a1)
   16c24:	00100793          	li	a5,1
   16c28:	02f5a023          	sw	a5,32(a1)
   16c2c:	09813083          	ld	ra,152(sp)
   16c30:	09013403          	ld	s0,144(sp)
   16c34:	08813483          	ld	s1,136(sp)
   16c38:	08013903          	ld	s2,128(sp)
   16c3c:	07813983          	ld	s3,120(sp)
   16c40:	07013a03          	ld	s4,112(sp)
   16c44:	0a010113          	addi	sp,sp,160
   16c48:	00008067          	ret
   16c4c:	01259583          	lh	a1,18(a1)
   16c50:	00050493          	mv	s1,a0
   16c54:	0805cc63          	bltz	a1,16cec <__smakebuf_r+0x100>
   16c58:	00810613          	addi	a2,sp,8
   16c5c:	650060ef          	jal	ra,1d2ac <_fstat_r>
   16c60:	08054463          	bltz	a0,16ce8 <__smakebuf_r+0xfc>
   16c64:	00c12903          	lw	s2,12(sp)
   16c68:	0000f7b7          	lui	a5,0xf
   16c6c:	000019b7          	lui	s3,0x1
   16c70:	00f97933          	and	s2,s2,a5
   16c74:	000027b7          	lui	a5,0x2
   16c78:	40f90933          	sub	s2,s2,a5
   16c7c:	00193913          	seqz	s2,s2
   16c80:	40000a13          	li	s4,1024
   16c84:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf8e8>
   16c88:	000a0593          	mv	a1,s4
   16c8c:	00048513          	mv	a0,s1
   16c90:	1c4000ef          	jal	ra,16e54 <_malloc_r>
   16c94:	01041783          	lh	a5,16(s0)
   16c98:	06050e63          	beqz	a0,16d14 <__smakebuf_r+0x128>
   16c9c:	00013737          	lui	a4,0x13
   16ca0:	47470713          	addi	a4,a4,1140 # 13474 <_cleanup_r>
   16ca4:	04e4bc23          	sd	a4,88(s1)
   16ca8:	0807e793          	ori	a5,a5,128
   16cac:	00f41823          	sh	a5,16(s0)
   16cb0:	00a43023          	sd	a0,0(s0)
   16cb4:	00a43c23          	sd	a0,24(s0)
   16cb8:	03442023          	sw	s4,32(s0)
   16cbc:	08091863          	bnez	s2,16d4c <__smakebuf_r+0x160>
   16cc0:	0137e7b3          	or	a5,a5,s3
   16cc4:	09813083          	ld	ra,152(sp)
   16cc8:	00f41823          	sh	a5,16(s0)
   16ccc:	09013403          	ld	s0,144(sp)
   16cd0:	08813483          	ld	s1,136(sp)
   16cd4:	08013903          	ld	s2,128(sp)
   16cd8:	07813983          	ld	s3,120(sp)
   16cdc:	07013a03          	ld	s4,112(sp)
   16ce0:	0a010113          	addi	sp,sp,160
   16ce4:	00008067          	ret
   16ce8:	01041783          	lh	a5,16(s0)
   16cec:	0807f793          	andi	a5,a5,128
   16cf0:	00000913          	li	s2,0
   16cf4:	04078663          	beqz	a5,16d40 <__smakebuf_r+0x154>
   16cf8:	04000a13          	li	s4,64
   16cfc:	000a0593          	mv	a1,s4
   16d00:	00048513          	mv	a0,s1
   16d04:	150000ef          	jal	ra,16e54 <_malloc_r>
   16d08:	01041783          	lh	a5,16(s0)
   16d0c:	00000993          	li	s3,0
   16d10:	f80516e3          	bnez	a0,16c9c <__smakebuf_r+0xb0>
   16d14:	2007f713          	andi	a4,a5,512
   16d18:	f0071ae3          	bnez	a4,16c2c <__smakebuf_r+0x40>
   16d1c:	ffc7f793          	andi	a5,a5,-4
   16d20:	0027e793          	ori	a5,a5,2
   16d24:	07740713          	addi	a4,s0,119
   16d28:	00f41823          	sh	a5,16(s0)
   16d2c:	00100793          	li	a5,1
   16d30:	00e43023          	sd	a4,0(s0)
   16d34:	00e43c23          	sd	a4,24(s0)
   16d38:	02f42023          	sw	a5,32(s0)
   16d3c:	ef1ff06f          	j	16c2c <__smakebuf_r+0x40>
   16d40:	40000a13          	li	s4,1024
   16d44:	00000993          	li	s3,0
   16d48:	f41ff06f          	j	16c88 <__smakebuf_r+0x9c>
   16d4c:	01241583          	lh	a1,18(s0)
   16d50:	00048513          	mv	a0,s1
   16d54:	269060ef          	jal	ra,1d7bc <_isatty_r>
   16d58:	00051663          	bnez	a0,16d64 <__smakebuf_r+0x178>
   16d5c:	01041783          	lh	a5,16(s0)
   16d60:	f61ff06f          	j	16cc0 <__smakebuf_r+0xd4>
   16d64:	01045783          	lhu	a5,16(s0)
   16d68:	ffc7f793          	andi	a5,a5,-4
   16d6c:	0017e793          	ori	a5,a5,1
   16d70:	0107979b          	slliw	a5,a5,0x10
   16d74:	4107d79b          	sraiw	a5,a5,0x10
   16d78:	f49ff06f          	j	16cc0 <__smakebuf_r+0xd4>

0000000000016d7c <__swhatbuf_r>:
   16d7c:	f7010113          	addi	sp,sp,-144
   16d80:	08813023          	sd	s0,128(sp)
   16d84:	00058413          	mv	s0,a1
   16d88:	01259583          	lh	a1,18(a1)
   16d8c:	06913c23          	sd	s1,120(sp)
   16d90:	07213823          	sd	s2,112(sp)
   16d94:	08113423          	sd	ra,136(sp)
   16d98:	00060493          	mv	s1,a2
   16d9c:	00068913          	mv	s2,a3
   16da0:	0405ca63          	bltz	a1,16df4 <__swhatbuf_r+0x78>
   16da4:	00810613          	addi	a2,sp,8
   16da8:	504060ef          	jal	ra,1d2ac <_fstat_r>
   16dac:	04054463          	bltz	a0,16df4 <__swhatbuf_r+0x78>
   16db0:	00c12783          	lw	a5,12(sp)
   16db4:	0000f737          	lui	a4,0xf
   16db8:	08813083          	ld	ra,136(sp)
   16dbc:	00e7f7b3          	and	a5,a5,a4
   16dc0:	00002737          	lui	a4,0x2
   16dc4:	40e787b3          	sub	a5,a5,a4
   16dc8:	08013403          	ld	s0,128(sp)
   16dcc:	0017b793          	seqz	a5,a5
   16dd0:	00f92023          	sw	a5,0(s2)
   16dd4:	40000713          	li	a4,1024
   16dd8:	00e4b023          	sd	a4,0(s1)
   16ddc:	00001537          	lui	a0,0x1
   16de0:	07813483          	ld	s1,120(sp)
   16de4:	07013903          	ld	s2,112(sp)
   16de8:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8e8>
   16dec:	09010113          	addi	sp,sp,144
   16df0:	00008067          	ret
   16df4:	01045783          	lhu	a5,16(s0)
   16df8:	0807f793          	andi	a5,a5,128
   16dfc:	02078863          	beqz	a5,16e2c <__swhatbuf_r+0xb0>
   16e00:	08813083          	ld	ra,136(sp)
   16e04:	08013403          	ld	s0,128(sp)
   16e08:	00000793          	li	a5,0
   16e0c:	00f92023          	sw	a5,0(s2)
   16e10:	04000713          	li	a4,64
   16e14:	00e4b023          	sd	a4,0(s1)
   16e18:	07013903          	ld	s2,112(sp)
   16e1c:	07813483          	ld	s1,120(sp)
   16e20:	00000513          	li	a0,0
   16e24:	09010113          	addi	sp,sp,144
   16e28:	00008067          	ret
   16e2c:	08813083          	ld	ra,136(sp)
   16e30:	08013403          	ld	s0,128(sp)
   16e34:	00f92023          	sw	a5,0(s2)
   16e38:	40000713          	li	a4,1024
   16e3c:	00e4b023          	sd	a4,0(s1)
   16e40:	07013903          	ld	s2,112(sp)
   16e44:	07813483          	ld	s1,120(sp)
   16e48:	00000513          	li	a0,0
   16e4c:	09010113          	addi	sp,sp,144
   16e50:	00008067          	ret

0000000000016e54 <_malloc_r>:
   16e54:	fa010113          	addi	sp,sp,-96
   16e58:	04913423          	sd	s1,72(sp)
   16e5c:	05213023          	sd	s2,64(sp)
   16e60:	04113c23          	sd	ra,88(sp)
   16e64:	04813823          	sd	s0,80(sp)
   16e68:	03313c23          	sd	s3,56(sp)
   16e6c:	03413823          	sd	s4,48(sp)
   16e70:	03513423          	sd	s5,40(sp)
   16e74:	03613023          	sd	s6,32(sp)
   16e78:	01713c23          	sd	s7,24(sp)
   16e7c:	01813823          	sd	s8,16(sp)
   16e80:	01913423          	sd	s9,8(sp)
   16e84:	01758493          	addi	s1,a1,23
   16e88:	02e00793          	li	a5,46
   16e8c:	00050913          	mv	s2,a0
   16e90:	0897ee63          	bltu	a5,s1,16f2c <_malloc_r+0xd8>
   16e94:	02000793          	li	a5,32
   16e98:	24b7e063          	bltu	a5,a1,170d8 <_malloc_r+0x284>
   16e9c:	0c9000ef          	jal	ra,17764 <__malloc_lock>
   16ea0:	02000493          	li	s1,32
   16ea4:	05000793          	li	a5,80
   16ea8:	00400613          	li	a2,4
   16eac:	000249b7          	lui	s3,0x24
   16eb0:	91098993          	addi	s3,s3,-1776 # 23910 <__malloc_av_>
   16eb4:	00f987b3          	add	a5,s3,a5
   16eb8:	0087b403          	ld	s0,8(a5) # 2008 <exit-0xe0e0>
   16ebc:	ff078713          	addi	a4,a5,-16
   16ec0:	32e40663          	beq	s0,a4,171ec <_malloc_r+0x398>
   16ec4:	00843783          	ld	a5,8(s0)
   16ec8:	01843683          	ld	a3,24(s0)
   16ecc:	01043603          	ld	a2,16(s0)
   16ed0:	ffc7f793          	andi	a5,a5,-4
   16ed4:	00f407b3          	add	a5,s0,a5
   16ed8:	0087b703          	ld	a4,8(a5)
   16edc:	00d63c23          	sd	a3,24(a2)
   16ee0:	00c6b823          	sd	a2,16(a3)
   16ee4:	00176713          	ori	a4,a4,1
   16ee8:	00090513          	mv	a0,s2
   16eec:	00e7b423          	sd	a4,8(a5)
   16ef0:	079000ef          	jal	ra,17768 <__malloc_unlock>
   16ef4:	01040513          	addi	a0,s0,16
   16ef8:	05813083          	ld	ra,88(sp)
   16efc:	05013403          	ld	s0,80(sp)
   16f00:	04813483          	ld	s1,72(sp)
   16f04:	04013903          	ld	s2,64(sp)
   16f08:	03813983          	ld	s3,56(sp)
   16f0c:	03013a03          	ld	s4,48(sp)
   16f10:	02813a83          	ld	s5,40(sp)
   16f14:	02013b03          	ld	s6,32(sp)
   16f18:	01813b83          	ld	s7,24(sp)
   16f1c:	01013c03          	ld	s8,16(sp)
   16f20:	00813c83          	ld	s9,8(sp)
   16f24:	06010113          	addi	sp,sp,96
   16f28:	00008067          	ret
   16f2c:	800007b7          	lui	a5,0x80000
   16f30:	ff04f493          	andi	s1,s1,-16
   16f34:	fff7c793          	not	a5,a5
   16f38:	1a97e063          	bltu	a5,s1,170d8 <_malloc_r+0x284>
   16f3c:	18b4ee63          	bltu	s1,a1,170d8 <_malloc_r+0x284>
   16f40:	025000ef          	jal	ra,17764 <__malloc_lock>
   16f44:	1f700793          	li	a5,503
   16f48:	3e97fe63          	bgeu	a5,s1,17344 <_malloc_r+0x4f0>
   16f4c:	0094d793          	srli	a5,s1,0x9
   16f50:	18078c63          	beqz	a5,170e8 <_malloc_r+0x294>
   16f54:	00400713          	li	a4,4
   16f58:	30f76463          	bltu	a4,a5,17260 <_malloc_r+0x40c>
   16f5c:	0064d793          	srli	a5,s1,0x6
   16f60:	0397861b          	addiw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffdbe31>
   16f64:	0016169b          	slliw	a3,a2,0x1
   16f68:	0387851b          	addiw	a0,a5,56
   16f6c:	00369693          	slli	a3,a3,0x3
   16f70:	000249b7          	lui	s3,0x24
   16f74:	91098993          	addi	s3,s3,-1776 # 23910 <__malloc_av_>
   16f78:	00d986b3          	add	a3,s3,a3
   16f7c:	0086b403          	ld	s0,8(a3)
   16f80:	ff068693          	addi	a3,a3,-16
   16f84:	02868663          	beq	a3,s0,16fb0 <_malloc_r+0x15c>
   16f88:	01f00593          	li	a1,31
   16f8c:	0100006f          	j	16f9c <_malloc_r+0x148>
   16f90:	24075863          	bgez	a4,171e0 <_malloc_r+0x38c>
   16f94:	01843403          	ld	s0,24(s0)
   16f98:	00868c63          	beq	a3,s0,16fb0 <_malloc_r+0x15c>
   16f9c:	00843783          	ld	a5,8(s0)
   16fa0:	ffc7f793          	andi	a5,a5,-4
   16fa4:	40978733          	sub	a4,a5,s1
   16fa8:	fee5d4e3          	bge	a1,a4,16f90 <_malloc_r+0x13c>
   16fac:	00050613          	mv	a2,a0
   16fb0:	0209b403          	ld	s0,32(s3)
   16fb4:	00024837          	lui	a6,0x24
   16fb8:	92080813          	addi	a6,a6,-1760 # 23920 <__malloc_av_+0x10>
   16fbc:	21040e63          	beq	s0,a6,171d8 <_malloc_r+0x384>
   16fc0:	00843783          	ld	a5,8(s0)
   16fc4:	01f00693          	li	a3,31
   16fc8:	ffc7f793          	andi	a5,a5,-4
   16fcc:	40978733          	sub	a4,a5,s1
   16fd0:	32e6cc63          	blt	a3,a4,17308 <_malloc_r+0x4b4>
   16fd4:	0309b423          	sd	a6,40(s3)
   16fd8:	0309b023          	sd	a6,32(s3)
   16fdc:	30075663          	bgez	a4,172e8 <_malloc_r+0x494>
   16fe0:	1ff00713          	li	a4,511
   16fe4:	0089b503          	ld	a0,8(s3)
   16fe8:	20f76a63          	bltu	a4,a5,171fc <_malloc_r+0x3a8>
   16fec:	0037d793          	srli	a5,a5,0x3
   16ff0:	0017871b          	addiw	a4,a5,1
   16ff4:	0017171b          	slliw	a4,a4,0x1
   16ff8:	00371713          	slli	a4,a4,0x3
   16ffc:	00e98733          	add	a4,s3,a4
   17000:	00073583          	ld	a1,0(a4) # 2000 <exit-0xe0e8>
   17004:	4027d79b          	sraiw	a5,a5,0x2
   17008:	00100693          	li	a3,1
   1700c:	00f697b3          	sll	a5,a3,a5
   17010:	00f56533          	or	a0,a0,a5
   17014:	ff070793          	addi	a5,a4,-16
   17018:	00f43c23          	sd	a5,24(s0)
   1701c:	00b43823          	sd	a1,16(s0)
   17020:	00a9b423          	sd	a0,8(s3)
   17024:	00873023          	sd	s0,0(a4)
   17028:	0085bc23          	sd	s0,24(a1)
   1702c:	4026579b          	sraiw	a5,a2,0x2
   17030:	00100593          	li	a1,1
   17034:	00f595b3          	sll	a1,a1,a5
   17038:	0cb56063          	bltu	a0,a1,170f8 <_malloc_r+0x2a4>
   1703c:	00a5f7b3          	and	a5,a1,a0
   17040:	02079463          	bnez	a5,17068 <_malloc_r+0x214>
   17044:	00159593          	slli	a1,a1,0x1
   17048:	ffc67613          	andi	a2,a2,-4
   1704c:	00a5f7b3          	and	a5,a1,a0
   17050:	0046061b          	addiw	a2,a2,4
   17054:	00079a63          	bnez	a5,17068 <_malloc_r+0x214>
   17058:	00159593          	slli	a1,a1,0x1
   1705c:	00a5f7b3          	and	a5,a1,a0
   17060:	0046061b          	addiw	a2,a2,4
   17064:	fe078ae3          	beqz	a5,17058 <_malloc_r+0x204>
   17068:	01f00893          	li	a7,31
   1706c:	0016031b          	addiw	t1,a2,1
   17070:	0013131b          	slliw	t1,t1,0x1
   17074:	00331313          	slli	t1,t1,0x3
   17078:	ff030313          	addi	t1,t1,-16
   1707c:	00698333          	add	t1,s3,t1
   17080:	00030513          	mv	a0,t1
   17084:	01853783          	ld	a5,24(a0)
   17088:	00060e13          	mv	t3,a2
   1708c:	1ef50e63          	beq	a0,a5,17288 <_malloc_r+0x434>
   17090:	0087b703          	ld	a4,8(a5)
   17094:	00078413          	mv	s0,a5
   17098:	0187b783          	ld	a5,24(a5)
   1709c:	ffc77713          	andi	a4,a4,-4
   170a0:	409706b3          	sub	a3,a4,s1
   170a4:	1ed8ce63          	blt	a7,a3,172a0 <_malloc_r+0x44c>
   170a8:	fe06c2e3          	bltz	a3,1708c <_malloc_r+0x238>
   170ac:	00e40733          	add	a4,s0,a4
   170b0:	00873683          	ld	a3,8(a4)
   170b4:	01043603          	ld	a2,16(s0)
   170b8:	00090513          	mv	a0,s2
   170bc:	0016e693          	ori	a3,a3,1
   170c0:	00d73423          	sd	a3,8(a4)
   170c4:	00f63c23          	sd	a5,24(a2)
   170c8:	00c7b823          	sd	a2,16(a5)
   170cc:	69c000ef          	jal	ra,17768 <__malloc_unlock>
   170d0:	01040513          	addi	a0,s0,16
   170d4:	e25ff06f          	j	16ef8 <_malloc_r+0xa4>
   170d8:	00c00793          	li	a5,12
   170dc:	00f92023          	sw	a5,0(s2)
   170e0:	00000513          	li	a0,0
   170e4:	e15ff06f          	j	16ef8 <_malloc_r+0xa4>
   170e8:	40000693          	li	a3,1024
   170ec:	04000613          	li	a2,64
   170f0:	03f00513          	li	a0,63
   170f4:	e7dff06f          	j	16f70 <_malloc_r+0x11c>
   170f8:	0109b403          	ld	s0,16(s3)
   170fc:	00843783          	ld	a5,8(s0)
   17100:	ffc7fa93          	andi	s5,a5,-4
   17104:	009ae863          	bltu	s5,s1,17114 <_malloc_r+0x2c0>
   17108:	409a8733          	sub	a4,s5,s1
   1710c:	01f00793          	li	a5,31
   17110:	0ae7c063          	blt	a5,a4,171b0 <_malloc_r+0x35c>
   17114:	7881ba03          	ld	s4,1928(gp) # 24190 <__malloc_top_pad>
   17118:	7601b703          	ld	a4,1888(gp) # 24168 <__malloc_sbrk_base>
   1711c:	fff00793          	li	a5,-1
   17120:	01540c33          	add	s8,s0,s5
   17124:	01448a33          	add	s4,s1,s4
   17128:	3cf70863          	beq	a4,a5,174f8 <_malloc_r+0x6a4>
   1712c:	000017b7          	lui	a5,0x1
   17130:	01f78793          	addi	a5,a5,31 # 101f <exit-0xf0c9>
   17134:	00fa0a33          	add	s4,s4,a5
   17138:	fffff7b7          	lui	a5,0xfffff
   1713c:	00fa7a33          	and	s4,s4,a5
   17140:	000a0593          	mv	a1,s4
   17144:	00090513          	mv	a0,s2
   17148:	161010ef          	jal	ra,18aa8 <_sbrk_r>
   1714c:	fff00793          	li	a5,-1
   17150:	00050b13          	mv	s6,a0
   17154:	22f50263          	beq	a0,a5,17378 <_malloc_r+0x524>
   17158:	21856e63          	bltu	a0,s8,17374 <_malloc_r+0x520>
   1715c:	00024bb7          	lui	s7,0x24
   17160:	1e0b8b93          	addi	s7,s7,480 # 241e0 <__malloc_current_mallinfo>
   17164:	000ba783          	lw	a5,0(s7)
   17168:	0147873b          	addw	a4,a5,s4
   1716c:	00eba023          	sw	a4,0(s7)
   17170:	00070693          	mv	a3,a4
   17174:	2aac1663          	bne	s8,a0,17420 <_malloc_r+0x5cc>
   17178:	03451793          	slli	a5,a0,0x34
   1717c:	2a079263          	bnez	a5,17420 <_malloc_r+0x5cc>
   17180:	0109bb03          	ld	s6,16(s3)
   17184:	014a87b3          	add	a5,s5,s4
   17188:	0017e793          	ori	a5,a5,1
   1718c:	00fb3423          	sd	a5,8(s6)
   17190:	7801b603          	ld	a2,1920(gp) # 24188 <__malloc_max_sbrked_mem>
   17194:	00e67463          	bgeu	a2,a4,1719c <_malloc_r+0x348>
   17198:	78e1b023          	sd	a4,1920(gp) # 24188 <__malloc_max_sbrked_mem>
   1719c:	7781b603          	ld	a2,1912(gp) # 24180 <__malloc_max_total_mem>
   171a0:	00e67463          	bgeu	a2,a4,171a8 <_malloc_r+0x354>
   171a4:	76e1bc23          	sd	a4,1912(gp) # 24180 <__malloc_max_total_mem>
   171a8:	000b0413          	mv	s0,s6
   171ac:	1d40006f          	j	17380 <_malloc_r+0x52c>
   171b0:	0014e793          	ori	a5,s1,1
   171b4:	00f43423          	sd	a5,8(s0)
   171b8:	009404b3          	add	s1,s0,s1
   171bc:	0099b823          	sd	s1,16(s3)
   171c0:	00176713          	ori	a4,a4,1
   171c4:	00090513          	mv	a0,s2
   171c8:	00e4b423          	sd	a4,8(s1)
   171cc:	59c000ef          	jal	ra,17768 <__malloc_unlock>
   171d0:	01040513          	addi	a0,s0,16
   171d4:	d25ff06f          	j	16ef8 <_malloc_r+0xa4>
   171d8:	0089b503          	ld	a0,8(s3)
   171dc:	e51ff06f          	j	1702c <_malloc_r+0x1d8>
   171e0:	01843683          	ld	a3,24(s0)
   171e4:	01043603          	ld	a2,16(s0)
   171e8:	cedff06f          	j	16ed4 <_malloc_r+0x80>
   171ec:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffdae10>
   171f0:	0026061b          	addiw	a2,a2,2
   171f4:	da878ee3          	beq	a5,s0,16fb0 <_malloc_r+0x15c>
   171f8:	ccdff06f          	j	16ec4 <_malloc_r+0x70>
   171fc:	0097d713          	srli	a4,a5,0x9
   17200:	00400693          	li	a3,4
   17204:	14e6fc63          	bgeu	a3,a4,1735c <_malloc_r+0x508>
   17208:	01400693          	li	a3,20
   1720c:	32e6ec63          	bltu	a3,a4,17544 <_malloc_r+0x6f0>
   17210:	05c7059b          	addiw	a1,a4,92
   17214:	0015959b          	slliw	a1,a1,0x1
   17218:	05b7069b          	addiw	a3,a4,91
   1721c:	00359593          	slli	a1,a1,0x3
   17220:	00b985b3          	add	a1,s3,a1
   17224:	0005b703          	ld	a4,0(a1)
   17228:	ff058593          	addi	a1,a1,-16
   1722c:	00e59863          	bne	a1,a4,1723c <_malloc_r+0x3e8>
   17230:	2d00006f          	j	17500 <_malloc_r+0x6ac>
   17234:	01073703          	ld	a4,16(a4)
   17238:	00e58863          	beq	a1,a4,17248 <_malloc_r+0x3f4>
   1723c:	00873683          	ld	a3,8(a4)
   17240:	ffc6f693          	andi	a3,a3,-4
   17244:	fed7e8e3          	bltu	a5,a3,17234 <_malloc_r+0x3e0>
   17248:	01873583          	ld	a1,24(a4)
   1724c:	00b43c23          	sd	a1,24(s0)
   17250:	00e43823          	sd	a4,16(s0)
   17254:	0085b823          	sd	s0,16(a1)
   17258:	00873c23          	sd	s0,24(a4)
   1725c:	dd1ff06f          	j	1702c <_malloc_r+0x1d8>
   17260:	01400713          	li	a4,20
   17264:	14f77063          	bgeu	a4,a5,173a4 <_malloc_r+0x550>
   17268:	05400713          	li	a4,84
   1726c:	2ef76c63          	bltu	a4,a5,17564 <_malloc_r+0x710>
   17270:	00c4d793          	srli	a5,s1,0xc
   17274:	06f7861b          	addiw	a2,a5,111
   17278:	0016169b          	slliw	a3,a2,0x1
   1727c:	06e7851b          	addiw	a0,a5,110
   17280:	00369693          	slli	a3,a3,0x3
   17284:	cedff06f          	j	16f70 <_malloc_r+0x11c>
   17288:	001e0e1b          	addiw	t3,t3,1
   1728c:	003e7793          	andi	a5,t3,3
   17290:	01050513          	addi	a0,a0,16
   17294:	12078863          	beqz	a5,173c4 <_malloc_r+0x570>
   17298:	01853783          	ld	a5,24(a0)
   1729c:	df1ff06f          	j	1708c <_malloc_r+0x238>
   172a0:	01043603          	ld	a2,16(s0)
   172a4:	0014e593          	ori	a1,s1,1
   172a8:	00b43423          	sd	a1,8(s0)
   172ac:	00f63c23          	sd	a5,24(a2)
   172b0:	00c7b823          	sd	a2,16(a5)
   172b4:	009404b3          	add	s1,s0,s1
   172b8:	0299b423          	sd	s1,40(s3)
   172bc:	0299b023          	sd	s1,32(s3)
   172c0:	0016e793          	ori	a5,a3,1
   172c4:	0104bc23          	sd	a6,24(s1)
   172c8:	0104b823          	sd	a6,16(s1)
   172cc:	00f4b423          	sd	a5,8(s1)
   172d0:	00e40733          	add	a4,s0,a4
   172d4:	00090513          	mv	a0,s2
   172d8:	00d73023          	sd	a3,0(a4)
   172dc:	48c000ef          	jal	ra,17768 <__malloc_unlock>
   172e0:	01040513          	addi	a0,s0,16
   172e4:	c15ff06f          	j	16ef8 <_malloc_r+0xa4>
   172e8:	00f407b3          	add	a5,s0,a5
   172ec:	0087b703          	ld	a4,8(a5)
   172f0:	00090513          	mv	a0,s2
   172f4:	00176713          	ori	a4,a4,1
   172f8:	00e7b423          	sd	a4,8(a5)
   172fc:	46c000ef          	jal	ra,17768 <__malloc_unlock>
   17300:	01040513          	addi	a0,s0,16
   17304:	bf5ff06f          	j	16ef8 <_malloc_r+0xa4>
   17308:	0014e693          	ori	a3,s1,1
   1730c:	00d43423          	sd	a3,8(s0)
   17310:	009404b3          	add	s1,s0,s1
   17314:	0299b423          	sd	s1,40(s3)
   17318:	0299b023          	sd	s1,32(s3)
   1731c:	00176693          	ori	a3,a4,1
   17320:	0104bc23          	sd	a6,24(s1)
   17324:	0104b823          	sd	a6,16(s1)
   17328:	00d4b423          	sd	a3,8(s1)
   1732c:	00f407b3          	add	a5,s0,a5
   17330:	00090513          	mv	a0,s2
   17334:	00e7b023          	sd	a4,0(a5)
   17338:	430000ef          	jal	ra,17768 <__malloc_unlock>
   1733c:	01040513          	addi	a0,s0,16
   17340:	bb9ff06f          	j	16ef8 <_malloc_r+0xa4>
   17344:	0034d613          	srli	a2,s1,0x3
   17348:	0016079b          	addiw	a5,a2,1
   1734c:	0017979b          	slliw	a5,a5,0x1
   17350:	0006061b          	sext.w	a2,a2
   17354:	00379793          	slli	a5,a5,0x3
   17358:	b55ff06f          	j	16eac <_malloc_r+0x58>
   1735c:	0067d713          	srli	a4,a5,0x6
   17360:	0397059b          	addiw	a1,a4,57
   17364:	0015959b          	slliw	a1,a1,0x1
   17368:	0387069b          	addiw	a3,a4,56
   1736c:	00359593          	slli	a1,a1,0x3
   17370:	eb1ff06f          	j	17220 <_malloc_r+0x3cc>
   17374:	09340c63          	beq	s0,s3,1740c <_malloc_r+0x5b8>
   17378:	0109b403          	ld	s0,16(s3)
   1737c:	00843783          	ld	a5,8(s0)
   17380:	ffc7f793          	andi	a5,a5,-4
   17384:	40978733          	sub	a4,a5,s1
   17388:	0097e663          	bltu	a5,s1,17394 <_malloc_r+0x540>
   1738c:	01f00793          	li	a5,31
   17390:	e2e7c0e3          	blt	a5,a4,171b0 <_malloc_r+0x35c>
   17394:	00090513          	mv	a0,s2
   17398:	3d0000ef          	jal	ra,17768 <__malloc_unlock>
   1739c:	00000513          	li	a0,0
   173a0:	b59ff06f          	j	16ef8 <_malloc_r+0xa4>
   173a4:	05c7861b          	addiw	a2,a5,92
   173a8:	0016169b          	slliw	a3,a2,0x1
   173ac:	05b7851b          	addiw	a0,a5,91
   173b0:	00369693          	slli	a3,a3,0x3
   173b4:	bbdff06f          	j	16f70 <_malloc_r+0x11c>
   173b8:	01033783          	ld	a5,16(t1)
   173bc:	fff6061b          	addiw	a2,a2,-1
   173c0:	26679463          	bne	a5,t1,17628 <_malloc_r+0x7d4>
   173c4:	00367793          	andi	a5,a2,3
   173c8:	ff030313          	addi	t1,t1,-16
   173cc:	fe0796e3          	bnez	a5,173b8 <_malloc_r+0x564>
   173d0:	0089b703          	ld	a4,8(s3)
   173d4:	fff5c793          	not	a5,a1
   173d8:	00e7f7b3          	and	a5,a5,a4
   173dc:	00f9b423          	sd	a5,8(s3)
   173e0:	00159593          	slli	a1,a1,0x1
   173e4:	d0b7eae3          	bltu	a5,a1,170f8 <_malloc_r+0x2a4>
   173e8:	d00588e3          	beqz	a1,170f8 <_malloc_r+0x2a4>
   173ec:	00f5f733          	and	a4,a1,a5
   173f0:	00071a63          	bnez	a4,17404 <_malloc_r+0x5b0>
   173f4:	00159593          	slli	a1,a1,0x1
   173f8:	00f5f733          	and	a4,a1,a5
   173fc:	004e0e1b          	addiw	t3,t3,4
   17400:	fe070ae3          	beqz	a4,173f4 <_malloc_r+0x5a0>
   17404:	000e0613          	mv	a2,t3
   17408:	c65ff06f          	j	1706c <_malloc_r+0x218>
   1740c:	00024bb7          	lui	s7,0x24
   17410:	1e0b8b93          	addi	s7,s7,480 # 241e0 <__malloc_current_mallinfo>
   17414:	000ba783          	lw	a5,0(s7)
   17418:	014786bb          	addw	a3,a5,s4
   1741c:	00dba023          	sw	a3,0(s7)
   17420:	7601b703          	ld	a4,1888(gp) # 24168 <__malloc_sbrk_base>
   17424:	fff00793          	li	a5,-1
   17428:	14f70e63          	beq	a4,a5,17584 <_malloc_r+0x730>
   1742c:	418b07b3          	sub	a5,s6,s8
   17430:	00d787bb          	addw	a5,a5,a3
   17434:	00fba023          	sw	a5,0(s7)
   17438:	00fb7c93          	andi	s9,s6,15
   1743c:	0c0c8e63          	beqz	s9,17518 <_malloc_r+0x6c4>
   17440:	00001737          	lui	a4,0x1
   17444:	419b0b33          	sub	s6,s6,s9
   17448:	01070c13          	addi	s8,a4,16 # 1010 <exit-0xf0d8>
   1744c:	010b0b13          	addi	s6,s6,16
   17450:	419c0c33          	sub	s8,s8,s9
   17454:	014b0a33          	add	s4,s6,s4
   17458:	fff70713          	addi	a4,a4,-1
   1745c:	414c0c33          	sub	s8,s8,s4
   17460:	00ec7c33          	and	s8,s8,a4
   17464:	000c0593          	mv	a1,s8
   17468:	00090513          	mv	a0,s2
   1746c:	63c010ef          	jal	ra,18aa8 <_sbrk_r>
   17470:	fff00793          	li	a5,-1
   17474:	16f50263          	beq	a0,a5,175d8 <_malloc_r+0x784>
   17478:	41650533          	sub	a0,a0,s6
   1747c:	000c069b          	sext.w	a3,s8
   17480:	01850a33          	add	s4,a0,s8
   17484:	000ba703          	lw	a4,0(s7)
   17488:	0169b823          	sd	s6,16(s3)
   1748c:	001a6793          	ori	a5,s4,1
   17490:	00d7073b          	addw	a4,a4,a3
   17494:	00eba023          	sw	a4,0(s7)
   17498:	00fb3423          	sd	a5,8(s6)
   1749c:	cf340ae3          	beq	s0,s3,17190 <_malloc_r+0x33c>
   174a0:	01f00613          	li	a2,31
   174a4:	0f567463          	bgeu	a2,s5,1758c <_malloc_r+0x738>
   174a8:	00843683          	ld	a3,8(s0)
   174ac:	fe8a8793          	addi	a5,s5,-24
   174b0:	ff07f793          	andi	a5,a5,-16
   174b4:	0016f693          	andi	a3,a3,1
   174b8:	00f6e6b3          	or	a3,a3,a5
   174bc:	00d43423          	sd	a3,8(s0)
   174c0:	00900593          	li	a1,9
   174c4:	00f406b3          	add	a3,s0,a5
   174c8:	00b6b423          	sd	a1,8(a3)
   174cc:	00b6b823          	sd	a1,16(a3)
   174d0:	00f66663          	bltu	a2,a5,174dc <_malloc_r+0x688>
   174d4:	008b3783          	ld	a5,8(s6)
   174d8:	cb9ff06f          	j	17190 <_malloc_r+0x33c>
   174dc:	01040593          	addi	a1,s0,16
   174e0:	00090513          	mv	a0,s2
   174e4:	cb0fc0ef          	jal	ra,13994 <_free_r>
   174e8:	0109bb03          	ld	s6,16(s3)
   174ec:	000ba703          	lw	a4,0(s7)
   174f0:	008b3783          	ld	a5,8(s6)
   174f4:	c9dff06f          	j	17190 <_malloc_r+0x33c>
   174f8:	020a0a13          	addi	s4,s4,32
   174fc:	c45ff06f          	j	17140 <_malloc_r+0x2ec>
   17500:	4026d69b          	sraiw	a3,a3,0x2
   17504:	00100793          	li	a5,1
   17508:	00d797b3          	sll	a5,a5,a3
   1750c:	00f56533          	or	a0,a0,a5
   17510:	00a9b423          	sd	a0,8(s3)
   17514:	d39ff06f          	j	1724c <_malloc_r+0x3f8>
   17518:	014b0c33          	add	s8,s6,s4
   1751c:	41800c33          	neg	s8,s8
   17520:	034c1c13          	slli	s8,s8,0x34
   17524:	034c5c13          	srli	s8,s8,0x34
   17528:	000c0593          	mv	a1,s8
   1752c:	00090513          	mv	a0,s2
   17530:	578010ef          	jal	ra,18aa8 <_sbrk_r>
   17534:	fff00793          	li	a5,-1
   17538:	00000693          	li	a3,0
   1753c:	f2f51ee3          	bne	a0,a5,17478 <_malloc_r+0x624>
   17540:	f45ff06f          	j	17484 <_malloc_r+0x630>
   17544:	05400693          	li	a3,84
   17548:	04e6e863          	bltu	a3,a4,17598 <_malloc_r+0x744>
   1754c:	00c7d713          	srli	a4,a5,0xc
   17550:	06f7059b          	addiw	a1,a4,111
   17554:	0015959b          	slliw	a1,a1,0x1
   17558:	06e7069b          	addiw	a3,a4,110
   1755c:	00359593          	slli	a1,a1,0x3
   17560:	cc1ff06f          	j	17220 <_malloc_r+0x3cc>
   17564:	15400713          	li	a4,340
   17568:	04f76863          	bltu	a4,a5,175b8 <_malloc_r+0x764>
   1756c:	00f4d793          	srli	a5,s1,0xf
   17570:	0787861b          	addiw	a2,a5,120
   17574:	0016169b          	slliw	a3,a2,0x1
   17578:	0777851b          	addiw	a0,a5,119
   1757c:	00369693          	slli	a3,a3,0x3
   17580:	9f1ff06f          	j	16f70 <_malloc_r+0x11c>
   17584:	7761b023          	sd	s6,1888(gp) # 24168 <__malloc_sbrk_base>
   17588:	eb1ff06f          	j	17438 <_malloc_r+0x5e4>
   1758c:	00100793          	li	a5,1
   17590:	00fb3423          	sd	a5,8(s6)
   17594:	e01ff06f          	j	17394 <_malloc_r+0x540>
   17598:	15400693          	li	a3,340
   1759c:	04e6e863          	bltu	a3,a4,175ec <_malloc_r+0x798>
   175a0:	00f7d713          	srli	a4,a5,0xf
   175a4:	0787059b          	addiw	a1,a4,120
   175a8:	0015959b          	slliw	a1,a1,0x1
   175ac:	0777069b          	addiw	a3,a4,119
   175b0:	00359593          	slli	a1,a1,0x3
   175b4:	c6dff06f          	j	17220 <_malloc_r+0x3cc>
   175b8:	55400713          	li	a4,1364
   175bc:	04f76863          	bltu	a4,a5,1760c <_malloc_r+0x7b8>
   175c0:	0124d793          	srli	a5,s1,0x12
   175c4:	07d7861b          	addiw	a2,a5,125
   175c8:	0016169b          	slliw	a3,a2,0x1
   175cc:	07c7851b          	addiw	a0,a5,124
   175d0:	00369693          	slli	a3,a3,0x3
   175d4:	99dff06f          	j	16f70 <_malloc_r+0x11c>
   175d8:	ff0c8c93          	addi	s9,s9,-16
   175dc:	019a0a33          	add	s4,s4,s9
   175e0:	416a0a33          	sub	s4,s4,s6
   175e4:	00000693          	li	a3,0
   175e8:	e9dff06f          	j	17484 <_malloc_r+0x630>
   175ec:	55400693          	li	a3,1364
   175f0:	02e6e663          	bltu	a3,a4,1761c <_malloc_r+0x7c8>
   175f4:	0127d713          	srli	a4,a5,0x12
   175f8:	07d7059b          	addiw	a1,a4,125
   175fc:	0015959b          	slliw	a1,a1,0x1
   17600:	07c7069b          	addiw	a3,a4,124
   17604:	00359593          	slli	a1,a1,0x3
   17608:	c19ff06f          	j	17220 <_malloc_r+0x3cc>
   1760c:	7f000693          	li	a3,2032
   17610:	07f00613          	li	a2,127
   17614:	07e00513          	li	a0,126
   17618:	959ff06f          	j	16f70 <_malloc_r+0x11c>
   1761c:	7f000593          	li	a1,2032
   17620:	07e00693          	li	a3,126
   17624:	bfdff06f          	j	17220 <_malloc_r+0x3cc>
   17628:	0089b783          	ld	a5,8(s3)
   1762c:	db5ff06f          	j	173e0 <_malloc_r+0x58c>

0000000000017630 <_mbtowc_r>:
   17630:	e481b783          	ld	a5,-440(gp) # 23850 <__global_locale+0xe8>
   17634:	00078067          	jr	a5

0000000000017638 <__ascii_mbtowc>:
   17638:	02058063          	beqz	a1,17658 <__ascii_mbtowc+0x20>
   1763c:	04060263          	beqz	a2,17680 <__ascii_mbtowc+0x48>
   17640:	04068863          	beqz	a3,17690 <__ascii_mbtowc+0x58>
   17644:	00064783          	lbu	a5,0(a2)
   17648:	00f5a023          	sw	a5,0(a1)
   1764c:	00064503          	lbu	a0,0(a2)
   17650:	00a03533          	snez	a0,a0
   17654:	00008067          	ret
   17658:	ff010113          	addi	sp,sp,-16
   1765c:	00c10593          	addi	a1,sp,12
   17660:	02060463          	beqz	a2,17688 <__ascii_mbtowc+0x50>
   17664:	02068a63          	beqz	a3,17698 <__ascii_mbtowc+0x60>
   17668:	00064783          	lbu	a5,0(a2)
   1766c:	00f5a023          	sw	a5,0(a1)
   17670:	00064503          	lbu	a0,0(a2)
   17674:	00a03533          	snez	a0,a0
   17678:	01010113          	addi	sp,sp,16
   1767c:	00008067          	ret
   17680:	00000513          	li	a0,0
   17684:	00008067          	ret
   17688:	00000513          	li	a0,0
   1768c:	fedff06f          	j	17678 <__ascii_mbtowc+0x40>
   17690:	ffe00513          	li	a0,-2
   17694:	00008067          	ret
   17698:	ffe00513          	li	a0,-2
   1769c:	fddff06f          	j	17678 <__ascii_mbtowc+0x40>

00000000000176a0 <memchr>:
   176a0:	00757793          	andi	a5,a0,7
   176a4:	0ff5f693          	zext.b	a3,a1
   176a8:	02078e63          	beqz	a5,176e4 <memchr+0x44>
   176ac:	fff60793          	addi	a5,a2,-1
   176b0:	02060663          	beqz	a2,176dc <memchr+0x3c>
   176b4:	fff00613          	li	a2,-1
   176b8:	0180006f          	j	176d0 <memchr+0x30>
   176bc:	00150513          	addi	a0,a0,1
   176c0:	00757713          	andi	a4,a0,7
   176c4:	02070263          	beqz	a4,176e8 <memchr+0x48>
   176c8:	fff78793          	addi	a5,a5,-1
   176cc:	00c78863          	beq	a5,a2,176dc <memchr+0x3c>
   176d0:	00054703          	lbu	a4,0(a0)
   176d4:	fed714e3          	bne	a4,a3,176bc <memchr+0x1c>
   176d8:	00008067          	ret
   176dc:	00000513          	li	a0,0
   176e0:	00008067          	ret
   176e4:	00060793          	mv	a5,a2
   176e8:	00700713          	li	a4,7
   176ec:	04f77c63          	bgeu	a4,a5,17744 <memchr+0xa4>
   176f0:	0ff5f593          	zext.b	a1,a1
   176f4:	00859713          	slli	a4,a1,0x8
   176f8:	00b70733          	add	a4,a4,a1
   176fc:	01071593          	slli	a1,a4,0x10
   17700:	00e585b3          	add	a1,a1,a4
   17704:	7181b883          	ld	a7,1816(gp) # 24120 <__SDATA_BEGIN__>
   17708:	7201b803          	ld	a6,1824(gp) # 24128 <__SDATA_BEGIN__+0x8>
   1770c:	02059713          	slli	a4,a1,0x20
   17710:	00e585b3          	add	a1,a1,a4
   17714:	00700313          	li	t1,7
   17718:	0100006f          	j	17728 <memchr+0x88>
   1771c:	ff878793          	addi	a5,a5,-8
   17720:	00850513          	addi	a0,a0,8
   17724:	02f37063          	bgeu	t1,a5,17744 <memchr+0xa4>
   17728:	00053703          	ld	a4,0(a0)
   1772c:	00e5c733          	xor	a4,a1,a4
   17730:	01170633          	add	a2,a4,a7
   17734:	fff74713          	not	a4,a4
   17738:	00e67733          	and	a4,a2,a4
   1773c:	01077733          	and	a4,a4,a6
   17740:	fc070ee3          	beqz	a4,1771c <memchr+0x7c>
   17744:	00f50733          	add	a4,a0,a5
   17748:	00079863          	bnez	a5,17758 <memchr+0xb8>
   1774c:	f91ff06f          	j	176dc <memchr+0x3c>
   17750:	00150513          	addi	a0,a0,1
   17754:	f8a704e3          	beq	a4,a0,176dc <memchr+0x3c>
   17758:	00054783          	lbu	a5,0(a0)
   1775c:	fed79ae3          	bne	a5,a3,17750 <memchr+0xb0>
   17760:	00008067          	ret

0000000000017764 <__malloc_lock>:
   17764:	00008067          	ret

0000000000017768 <__malloc_unlock>:
   17768:	00008067          	ret

000000000001776c <_Balloc>:
   1776c:	07853783          	ld	a5,120(a0)
   17770:	fe010113          	addi	sp,sp,-32
   17774:	00813823          	sd	s0,16(sp)
   17778:	00913423          	sd	s1,8(sp)
   1777c:	00113c23          	sd	ra,24(sp)
   17780:	00050493          	mv	s1,a0
   17784:	00058413          	mv	s0,a1
   17788:	02078a63          	beqz	a5,177bc <_Balloc+0x50>
   1778c:	00341713          	slli	a4,s0,0x3
   17790:	00e787b3          	add	a5,a5,a4
   17794:	0007b503          	ld	a0,0(a5)
   17798:	04050263          	beqz	a0,177dc <_Balloc+0x70>
   1779c:	00053703          	ld	a4,0(a0)
   177a0:	00e7b023          	sd	a4,0(a5)
   177a4:	00053823          	sd	zero,16(a0)
   177a8:	01813083          	ld	ra,24(sp)
   177ac:	01013403          	ld	s0,16(sp)
   177b0:	00813483          	ld	s1,8(sp)
   177b4:	02010113          	addi	sp,sp,32
   177b8:	00008067          	ret
   177bc:	04100613          	li	a2,65
   177c0:	00800593          	li	a1,8
   177c4:	588050ef          	jal	ra,1cd4c <_calloc_r>
   177c8:	06a4bc23          	sd	a0,120(s1)
   177cc:	00050793          	mv	a5,a0
   177d0:	fa051ee3          	bnez	a0,1778c <_Balloc+0x20>
   177d4:	00000513          	li	a0,0
   177d8:	fd1ff06f          	j	177a8 <_Balloc+0x3c>
   177dc:	00100793          	li	a5,1
   177e0:	008797bb          	sllw	a5,a5,s0
   177e4:	0007861b          	sext.w	a2,a5
   177e8:	00760613          	addi	a2,a2,7
   177ec:	02041413          	slli	s0,s0,0x20
   177f0:	02079793          	slli	a5,a5,0x20
   177f4:	02045413          	srli	s0,s0,0x20
   177f8:	00261613          	slli	a2,a2,0x2
   177fc:	00100593          	li	a1,1
   17800:	00048513          	mv	a0,s1
   17804:	00f46433          	or	s0,s0,a5
   17808:	544050ef          	jal	ra,1cd4c <_calloc_r>
   1780c:	fc0504e3          	beqz	a0,177d4 <_Balloc+0x68>
   17810:	00853423          	sd	s0,8(a0)
   17814:	f91ff06f          	j	177a4 <_Balloc+0x38>

0000000000017818 <_Bfree>:
   17818:	02058063          	beqz	a1,17838 <_Bfree+0x20>
   1781c:	0085a703          	lw	a4,8(a1)
   17820:	07853783          	ld	a5,120(a0)
   17824:	00371713          	slli	a4,a4,0x3
   17828:	00e787b3          	add	a5,a5,a4
   1782c:	0007b703          	ld	a4,0(a5)
   17830:	00e5b023          	sd	a4,0(a1)
   17834:	00b7b023          	sd	a1,0(a5)
   17838:	00008067          	ret

000000000001783c <__multadd>:
   1783c:	fb010113          	addi	sp,sp,-80
   17840:	03213823          	sd	s2,48(sp)
   17844:	0145a903          	lw	s2,20(a1)
   17848:	01813023          	sd	s8,0(sp)
   1784c:	00010c37          	lui	s8,0x10
   17850:	04813023          	sd	s0,64(sp)
   17854:	02913c23          	sd	s1,56(sp)
   17858:	03313423          	sd	s3,40(sp)
   1785c:	03413023          	sd	s4,32(sp)
   17860:	01513c23          	sd	s5,24(sp)
   17864:	01613823          	sd	s6,16(sp)
   17868:	04113423          	sd	ra,72(sp)
   1786c:	01713423          	sd	s7,8(sp)
   17870:	00058993          	mv	s3,a1
   17874:	00050a13          	mv	s4,a0
   17878:	00068413          	mv	s0,a3
   1787c:	01858493          	addi	s1,a1,24
   17880:	00060a93          	mv	s5,a2
   17884:	00000b13          	li	s6,0
   17888:	fffc0c13          	addi	s8,s8,-1 # ffff <exit-0xe9>
   1788c:	0004ab83          	lw	s7,0(s1)
   17890:	000a8593          	mv	a1,s5
   17894:	00448493          	addi	s1,s1,4
   17898:	018bf533          	and	a0,s7,s8
   1789c:	6540a0ef          	jal	ra,21ef0 <__muldi3>
   178a0:	0085043b          	addw	s0,a0,s0
   178a4:	000a8593          	mv	a1,s5
   178a8:	010bd51b          	srliw	a0,s7,0x10
   178ac:	6440a0ef          	jal	ra,21ef0 <__muldi3>
   178b0:	0104569b          	srliw	a3,s0,0x10
   178b4:	00a686bb          	addw	a3,a3,a0
   178b8:	008c7433          	and	s0,s8,s0
   178bc:	0106979b          	slliw	a5,a3,0x10
   178c0:	008787bb          	addw	a5,a5,s0
   178c4:	fef4ae23          	sw	a5,-4(s1)
   178c8:	001b0b1b          	addiw	s6,s6,1
   178cc:	0106db9b          	srliw	s7,a3,0x10
   178d0:	0106d41b          	srliw	s0,a3,0x10
   178d4:	fb2b4ce3          	blt	s6,s2,1788c <__multadd+0x50>
   178d8:	02040263          	beqz	s0,178fc <__multadd+0xc0>
   178dc:	00c9a783          	lw	a5,12(s3)
   178e0:	04f95863          	bge	s2,a5,17930 <__multadd+0xf4>
   178e4:	00490793          	addi	a5,s2,4
   178e8:	00279793          	slli	a5,a5,0x2
   178ec:	00f987b3          	add	a5,s3,a5
   178f0:	0177a423          	sw	s7,8(a5)
   178f4:	0019091b          	addiw	s2,s2,1
   178f8:	0129aa23          	sw	s2,20(s3)
   178fc:	04813083          	ld	ra,72(sp)
   17900:	04013403          	ld	s0,64(sp)
   17904:	03813483          	ld	s1,56(sp)
   17908:	03013903          	ld	s2,48(sp)
   1790c:	02013a03          	ld	s4,32(sp)
   17910:	01813a83          	ld	s5,24(sp)
   17914:	01013b03          	ld	s6,16(sp)
   17918:	00813b83          	ld	s7,8(sp)
   1791c:	00013c03          	ld	s8,0(sp)
   17920:	00098513          	mv	a0,s3
   17924:	02813983          	ld	s3,40(sp)
   17928:	05010113          	addi	sp,sp,80
   1792c:	00008067          	ret
   17930:	0089a583          	lw	a1,8(s3)
   17934:	000a0513          	mv	a0,s4
   17938:	0015859b          	addiw	a1,a1,1
   1793c:	e31ff0ef          	jal	ra,1776c <_Balloc>
   17940:	00050413          	mv	s0,a0
   17944:	04050c63          	beqz	a0,1799c <__multadd+0x160>
   17948:	0149a603          	lw	a2,20(s3)
   1794c:	01098593          	addi	a1,s3,16
   17950:	01050513          	addi	a0,a0,16
   17954:	00260613          	addi	a2,a2,2
   17958:	00261613          	slli	a2,a2,0x2
   1795c:	725050ef          	jal	ra,1d880 <memcpy>
   17960:	0089a703          	lw	a4,8(s3)
   17964:	078a3783          	ld	a5,120(s4)
   17968:	00371713          	slli	a4,a4,0x3
   1796c:	00e787b3          	add	a5,a5,a4
   17970:	0007b703          	ld	a4,0(a5)
   17974:	00e9b023          	sd	a4,0(s3)
   17978:	0137b023          	sd	s3,0(a5)
   1797c:	00490793          	addi	a5,s2,4
   17980:	00040993          	mv	s3,s0
   17984:	00279793          	slli	a5,a5,0x2
   17988:	00f987b3          	add	a5,s3,a5
   1798c:	0177a423          	sw	s7,8(a5)
   17990:	0019091b          	addiw	s2,s2,1
   17994:	0129aa23          	sw	s2,20(s3)
   17998:	f65ff06f          	j	178fc <__multadd+0xc0>
   1799c:	000226b7          	lui	a3,0x22
   179a0:	00022537          	lui	a0,0x22
   179a4:	25068693          	addi	a3,a3,592 # 22250 <blanks.1+0x70>
   179a8:	00000613          	li	a2,0
   179ac:	0b500593          	li	a1,181
   179b0:	54050513          	addi	a0,a0,1344 # 22540 <ezero+0x30>
   179b4:	31c050ef          	jal	ra,1ccd0 <__assert_func>

00000000000179b8 <__s2b>:
   179b8:	fc010113          	addi	sp,sp,-64
   179bc:	02813823          	sd	s0,48(sp)
   179c0:	03213023          	sd	s2,32(sp)
   179c4:	00058413          	mv	s0,a1
   179c8:	00050913          	mv	s2,a0
   179cc:	00900593          	li	a1,9
   179d0:	0086851b          	addiw	a0,a3,8
   179d4:	02913423          	sd	s1,40(sp)
   179d8:	01313c23          	sd	s3,24(sp)
   179dc:	01413823          	sd	s4,16(sp)
   179e0:	02113c23          	sd	ra,56(sp)
   179e4:	01513423          	sd	s5,8(sp)
   179e8:	01613023          	sd	s6,0(sp)
   179ec:	00068493          	mv	s1,a3
   179f0:	00060993          	mv	s3,a2
   179f4:	00070a13          	mv	s4,a4
   179f8:	a5df80ef          	jal	ra,10454 <__divdi3>
   179fc:	00900793          	li	a5,9
   17a00:	0e97da63          	bge	a5,s1,17af4 <__s2b+0x13c>
   17a04:	0005051b          	sext.w	a0,a0
   17a08:	00100793          	li	a5,1
   17a0c:	00000593          	li	a1,0
   17a10:	0017979b          	slliw	a5,a5,0x1
   17a14:	0015859b          	addiw	a1,a1,1
   17a18:	fea7cce3          	blt	a5,a0,17a10 <__s2b+0x58>
   17a1c:	00090513          	mv	a0,s2
   17a20:	d4dff0ef          	jal	ra,1776c <_Balloc>
   17a24:	00050593          	mv	a1,a0
   17a28:	0c050a63          	beqz	a0,17afc <__s2b+0x144>
   17a2c:	00100793          	li	a5,1
   17a30:	00f52a23          	sw	a5,20(a0)
   17a34:	01452c23          	sw	s4,24(a0)
   17a38:	00900793          	li	a5,9
   17a3c:	0b37d663          	bge	a5,s3,17ae8 <__s2b+0x130>
   17a40:	02099a13          	slli	s4,s3,0x20
   17a44:	00940b13          	addi	s6,s0,9
   17a48:	020a5a13          	srli	s4,s4,0x20
   17a4c:	01440a33          	add	s4,s0,s4
   17a50:	00098a9b          	sext.w	s5,s3
   17a54:	000b0413          	mv	s0,s6
   17a58:	00044683          	lbu	a3,0(s0)
   17a5c:	00a00613          	li	a2,10
   17a60:	00090513          	mv	a0,s2
   17a64:	fd06869b          	addiw	a3,a3,-48
   17a68:	dd5ff0ef          	jal	ra,1783c <__multadd>
   17a6c:	00140413          	addi	s0,s0,1
   17a70:	00050593          	mv	a1,a0
   17a74:	ff4412e3          	bne	s0,s4,17a58 <__s2b+0xa0>
   17a78:	ff8a8a9b          	addiw	s5,s5,-8
   17a7c:	020a9a93          	slli	s5,s5,0x20
   17a80:	020ada93          	srli	s5,s5,0x20
   17a84:	015b0433          	add	s0,s6,s5
   17a88:	0299da63          	bge	s3,s1,17abc <__s2b+0x104>
   17a8c:	413484bb          	subw	s1,s1,s3
   17a90:	02049493          	slli	s1,s1,0x20
   17a94:	0204d493          	srli	s1,s1,0x20
   17a98:	009404b3          	add	s1,s0,s1
   17a9c:	00044683          	lbu	a3,0(s0)
   17aa0:	00a00613          	li	a2,10
   17aa4:	00090513          	mv	a0,s2
   17aa8:	fd06869b          	addiw	a3,a3,-48
   17aac:	d91ff0ef          	jal	ra,1783c <__multadd>
   17ab0:	00140413          	addi	s0,s0,1
   17ab4:	00050593          	mv	a1,a0
   17ab8:	fe9412e3          	bne	s0,s1,17a9c <__s2b+0xe4>
   17abc:	03813083          	ld	ra,56(sp)
   17ac0:	03013403          	ld	s0,48(sp)
   17ac4:	02813483          	ld	s1,40(sp)
   17ac8:	02013903          	ld	s2,32(sp)
   17acc:	01813983          	ld	s3,24(sp)
   17ad0:	01013a03          	ld	s4,16(sp)
   17ad4:	00813a83          	ld	s5,8(sp)
   17ad8:	00013b03          	ld	s6,0(sp)
   17adc:	00058513          	mv	a0,a1
   17ae0:	04010113          	addi	sp,sp,64
   17ae4:	00008067          	ret
   17ae8:	00a40413          	addi	s0,s0,10
   17aec:	00900993          	li	s3,9
   17af0:	f99ff06f          	j	17a88 <__s2b+0xd0>
   17af4:	00000593          	li	a1,0
   17af8:	f25ff06f          	j	17a1c <__s2b+0x64>
   17afc:	000226b7          	lui	a3,0x22
   17b00:	00022537          	lui	a0,0x22
   17b04:	25068693          	addi	a3,a3,592 # 22250 <blanks.1+0x70>
   17b08:	00000613          	li	a2,0
   17b0c:	0ce00593          	li	a1,206
   17b10:	54050513          	addi	a0,a0,1344 # 22540 <ezero+0x30>
   17b14:	1bc050ef          	jal	ra,1ccd0 <__assert_func>

0000000000017b18 <__hi0bits>:
   17b18:	00050793          	mv	a5,a0
   17b1c:	00010737          	lui	a4,0x10
   17b20:	00000513          	li	a0,0
   17b24:	00e7f663          	bgeu	a5,a4,17b30 <__hi0bits+0x18>
   17b28:	0107979b          	slliw	a5,a5,0x10
   17b2c:	01000513          	li	a0,16
   17b30:	01000737          	lui	a4,0x1000
   17b34:	00e7f663          	bgeu	a5,a4,17b40 <__hi0bits+0x28>
   17b38:	0087979b          	slliw	a5,a5,0x8
   17b3c:	0085051b          	addiw	a0,a0,8
   17b40:	10000737          	lui	a4,0x10000
   17b44:	00e7f663          	bgeu	a5,a4,17b50 <__hi0bits+0x38>
   17b48:	0047979b          	slliw	a5,a5,0x4
   17b4c:	0045051b          	addiw	a0,a0,4
   17b50:	40000737          	lui	a4,0x40000
   17b54:	00e7e863          	bltu	a5,a4,17b64 <__hi0bits+0x4c>
   17b58:	0207c463          	bltz	a5,17b80 <__hi0bits+0x68>
   17b5c:	0015051b          	addiw	a0,a0,1
   17b60:	00008067          	ret
   17b64:	0027979b          	slliw	a5,a5,0x2
   17b68:	0007871b          	sext.w	a4,a5
   17b6c:	00074c63          	bltz	a4,17b84 <__hi0bits+0x6c>
   17b70:	40000737          	lui	a4,0x40000
   17b74:	00e7f7b3          	and	a5,a5,a4
   17b78:	00079a63          	bnez	a5,17b8c <__hi0bits+0x74>
   17b7c:	02000513          	li	a0,32
   17b80:	00008067          	ret
   17b84:	0025051b          	addiw	a0,a0,2
   17b88:	00008067          	ret
   17b8c:	0035051b          	addiw	a0,a0,3
   17b90:	00008067          	ret

0000000000017b94 <__lo0bits>:
   17b94:	00052783          	lw	a5,0(a0)
   17b98:	00050713          	mv	a4,a0
   17b9c:	0077f693          	andi	a3,a5,7
   17ba0:	00078613          	mv	a2,a5
   17ba4:	02068463          	beqz	a3,17bcc <__lo0bits+0x38>
   17ba8:	0017f693          	andi	a3,a5,1
   17bac:	00000513          	li	a0,0
   17bb0:	04069e63          	bnez	a3,17c0c <__lo0bits+0x78>
   17bb4:	00267613          	andi	a2,a2,2
   17bb8:	0a060863          	beqz	a2,17c68 <__lo0bits+0xd4>
   17bbc:	0017d79b          	srliw	a5,a5,0x1
   17bc0:	00f72023          	sw	a5,0(a4) # 40000000 <__BSS_END__+0x3ffdbdf8>
   17bc4:	00100513          	li	a0,1
   17bc8:	00008067          	ret
   17bcc:	03079693          	slli	a3,a5,0x30
   17bd0:	0306d693          	srli	a3,a3,0x30
   17bd4:	00000513          	li	a0,0
   17bd8:	06068e63          	beqz	a3,17c54 <__lo0bits+0xc0>
   17bdc:	0ff7f693          	zext.b	a3,a5
   17be0:	06068063          	beqz	a3,17c40 <__lo0bits+0xac>
   17be4:	00f7f693          	andi	a3,a5,15
   17be8:	04068263          	beqz	a3,17c2c <__lo0bits+0x98>
   17bec:	0037f693          	andi	a3,a5,3
   17bf0:	02068463          	beqz	a3,17c18 <__lo0bits+0x84>
   17bf4:	0017f693          	andi	a3,a5,1
   17bf8:	00069c63          	bnez	a3,17c10 <__lo0bits+0x7c>
   17bfc:	0017d79b          	srliw	a5,a5,0x1
   17c00:	0015051b          	addiw	a0,a0,1
   17c04:	00079663          	bnez	a5,17c10 <__lo0bits+0x7c>
   17c08:	02000513          	li	a0,32
   17c0c:	00008067          	ret
   17c10:	00f72023          	sw	a5,0(a4)
   17c14:	00008067          	ret
   17c18:	0027d79b          	srliw	a5,a5,0x2
   17c1c:	0017f693          	andi	a3,a5,1
   17c20:	0025051b          	addiw	a0,a0,2
   17c24:	fe0696e3          	bnez	a3,17c10 <__lo0bits+0x7c>
   17c28:	fd5ff06f          	j	17bfc <__lo0bits+0x68>
   17c2c:	0047d79b          	srliw	a5,a5,0x4
   17c30:	0037f693          	andi	a3,a5,3
   17c34:	0045051b          	addiw	a0,a0,4
   17c38:	fa069ee3          	bnez	a3,17bf4 <__lo0bits+0x60>
   17c3c:	fddff06f          	j	17c18 <__lo0bits+0x84>
   17c40:	0087d79b          	srliw	a5,a5,0x8
   17c44:	00f7f693          	andi	a3,a5,15
   17c48:	0085051b          	addiw	a0,a0,8
   17c4c:	fa0690e3          	bnez	a3,17bec <__lo0bits+0x58>
   17c50:	fddff06f          	j	17c2c <__lo0bits+0x98>
   17c54:	0107d79b          	srliw	a5,a5,0x10
   17c58:	0ff7f693          	zext.b	a3,a5
   17c5c:	01000513          	li	a0,16
   17c60:	f80692e3          	bnez	a3,17be4 <__lo0bits+0x50>
   17c64:	fddff06f          	j	17c40 <__lo0bits+0xac>
   17c68:	0027d79b          	srliw	a5,a5,0x2
   17c6c:	00f72023          	sw	a5,0(a4)
   17c70:	00200513          	li	a0,2
   17c74:	00008067          	ret

0000000000017c78 <__i2b>:
   17c78:	07853783          	ld	a5,120(a0)
   17c7c:	fe010113          	addi	sp,sp,-32
   17c80:	00813823          	sd	s0,16(sp)
   17c84:	00913423          	sd	s1,8(sp)
   17c88:	00113c23          	sd	ra,24(sp)
   17c8c:	00050413          	mv	s0,a0
   17c90:	00058493          	mv	s1,a1
   17c94:	02078c63          	beqz	a5,17ccc <__i2b+0x54>
   17c98:	0087b503          	ld	a0,8(a5)
   17c9c:	06050263          	beqz	a0,17d00 <__i2b+0x88>
   17ca0:	00053703          	ld	a4,0(a0)
   17ca4:	00e7b423          	sd	a4,8(a5)
   17ca8:	01813083          	ld	ra,24(sp)
   17cac:	01013403          	ld	s0,16(sp)
   17cb0:	00100793          	li	a5,1
   17cb4:	02079793          	slli	a5,a5,0x20
   17cb8:	00952c23          	sw	s1,24(a0)
   17cbc:	00f53823          	sd	a5,16(a0)
   17cc0:	00813483          	ld	s1,8(sp)
   17cc4:	02010113          	addi	sp,sp,32
   17cc8:	00008067          	ret
   17ccc:	04100613          	li	a2,65
   17cd0:	00800593          	li	a1,8
   17cd4:	078050ef          	jal	ra,1cd4c <_calloc_r>
   17cd8:	06a43c23          	sd	a0,120(s0)
   17cdc:	00050793          	mv	a5,a0
   17ce0:	fa051ce3          	bnez	a0,17c98 <__i2b+0x20>
   17ce4:	000226b7          	lui	a3,0x22
   17ce8:	00022537          	lui	a0,0x22
   17cec:	25068693          	addi	a3,a3,592 # 22250 <blanks.1+0x70>
   17cf0:	00000613          	li	a2,0
   17cf4:	14000593          	li	a1,320
   17cf8:	54050513          	addi	a0,a0,1344 # 22540 <ezero+0x30>
   17cfc:	7d5040ef          	jal	ra,1ccd0 <__assert_func>
   17d00:	02400613          	li	a2,36
   17d04:	00100593          	li	a1,1
   17d08:	00040513          	mv	a0,s0
   17d0c:	040050ef          	jal	ra,1cd4c <_calloc_r>
   17d10:	fc050ae3          	beqz	a0,17ce4 <__i2b+0x6c>
   17d14:	00100793          	li	a5,1
   17d18:	02179793          	slli	a5,a5,0x21
   17d1c:	00178793          	addi	a5,a5,1
   17d20:	00f53423          	sd	a5,8(a0)
   17d24:	f85ff06f          	j	17ca8 <__i2b+0x30>

0000000000017d28 <__multiply>:
   17d28:	f7010113          	addi	sp,sp,-144
   17d2c:	07213823          	sd	s2,112(sp)
   17d30:	05713423          	sd	s7,72(sp)
   17d34:	01462903          	lw	s2,20(a2)
   17d38:	0145ab83          	lw	s7,20(a1)
   17d3c:	08813023          	sd	s0,128(sp)
   17d40:	07313423          	sd	s3,104(sp)
   17d44:	08113423          	sd	ra,136(sp)
   17d48:	06913c23          	sd	s1,120(sp)
   17d4c:	07413023          	sd	s4,96(sp)
   17d50:	05513c23          	sd	s5,88(sp)
   17d54:	05613823          	sd	s6,80(sp)
   17d58:	05813023          	sd	s8,64(sp)
   17d5c:	03913c23          	sd	s9,56(sp)
   17d60:	03a13823          	sd	s10,48(sp)
   17d64:	03b13423          	sd	s11,40(sp)
   17d68:	00058993          	mv	s3,a1
   17d6c:	00060413          	mv	s0,a2
   17d70:	012bcc63          	blt	s7,s2,17d88 <__multiply+0x60>
   17d74:	00090793          	mv	a5,s2
   17d78:	00058413          	mv	s0,a1
   17d7c:	000b8913          	mv	s2,s7
   17d80:	00060993          	mv	s3,a2
   17d84:	00078b93          	mv	s7,a5
   17d88:	00c42783          	lw	a5,12(s0)
   17d8c:	01790b3b          	addw	s6,s2,s7
   17d90:	00842583          	lw	a1,8(s0)
   17d94:	0167d463          	bge	a5,s6,17d9c <__multiply+0x74>
   17d98:	0015859b          	addiw	a1,a1,1
   17d9c:	9d1ff0ef          	jal	ra,1776c <_Balloc>
   17da0:	00a13c23          	sd	a0,24(sp)
   17da4:	20050e63          	beqz	a0,17fc0 <__multiply+0x298>
   17da8:	01813783          	ld	a5,24(sp)
   17dac:	002b1a13          	slli	s4,s6,0x2
   17db0:	01878a93          	addi	s5,a5,24
   17db4:	014a8a33          	add	s4,s5,s4
   17db8:	000a8793          	mv	a5,s5
   17dbc:	014af863          	bgeu	s5,s4,17dcc <__multiply+0xa4>
   17dc0:	0007a023          	sw	zero,0(a5)
   17dc4:	00478793          	addi	a5,a5,4
   17dc8:	ff47ece3          	bltu	a5,s4,17dc0 <__multiply+0x98>
   17dcc:	01898993          	addi	s3,s3,24
   17dd0:	002b9b93          	slli	s7,s7,0x2
   17dd4:	01840793          	addi	a5,s0,24
   17dd8:	01798733          	add	a4,s3,s7
   17ddc:	00291913          	slli	s2,s2,0x2
   17de0:	00f13823          	sd	a5,16(sp)
   17de4:	00e13023          	sd	a4,0(sp)
   17de8:	01278933          	add	s2,a5,s2
   17dec:	14e9fc63          	bgeu	s3,a4,17f44 <__multiply+0x21c>
   17df0:	00400713          	li	a4,4
   17df4:	01940793          	addi	a5,s0,25
   17df8:	00e13423          	sd	a4,8(sp)
   17dfc:	1af97663          	bgeu	s2,a5,17fa8 <__multiply+0x280>
   17e00:	00010437          	lui	s0,0x10
   17e04:	fff40413          	addi	s0,s0,-1 # ffff <exit-0xe9>
   17e08:	01c0006f          	j	17e24 <__multiply+0xfc>
   17e0c:	010ddd9b          	srliw	s11,s11,0x10
   17e10:	0a0d9263          	bnez	s11,17eb4 <__multiply+0x18c>
   17e14:	00013783          	ld	a5,0(sp)
   17e18:	00498993          	addi	s3,s3,4
   17e1c:	004a8a93          	addi	s5,s5,4
   17e20:	12f9f263          	bgeu	s3,a5,17f44 <__multiply+0x21c>
   17e24:	0009ad83          	lw	s11,0(s3)
   17e28:	008df4b3          	and	s1,s11,s0
   17e2c:	fe0480e3          	beqz	s1,17e0c <__multiply+0xe4>
   17e30:	01013c03          	ld	s8,16(sp)
   17e34:	000a8c93          	mv	s9,s5
   17e38:	00000b93          	li	s7,0
   17e3c:	000c2d03          	lw	s10,0(s8)
   17e40:	000cad83          	lw	s11,0(s9)
   17e44:	00048593          	mv	a1,s1
   17e48:	008d7533          	and	a0,s10,s0
   17e4c:	0a40a0ef          	jal	ra,21ef0 <__muldi3>
   17e50:	008df733          	and	a4,s11,s0
   17e54:	00e5073b          	addw	a4,a0,a4
   17e58:	00048593          	mv	a1,s1
   17e5c:	010d551b          	srliw	a0,s10,0x10
   17e60:	01770bbb          	addw	s7,a4,s7
   17e64:	010ddd9b          	srliw	s11,s11,0x10
   17e68:	0880a0ef          	jal	ra,21ef0 <__muldi3>
   17e6c:	010bd79b          	srliw	a5,s7,0x10
   17e70:	00ad8dbb          	addw	s11,s11,a0
   17e74:	00fd87bb          	addw	a5,s11,a5
   17e78:	01747733          	and	a4,s0,s7
   17e7c:	0107959b          	slliw	a1,a5,0x10
   17e80:	00b76733          	or	a4,a4,a1
   17e84:	00eca023          	sw	a4,0(s9)
   17e88:	004c0c13          	addi	s8,s8,4
   17e8c:	004c8c93          	addi	s9,s9,4
   17e90:	0107d71b          	srliw	a4,a5,0x10
   17e94:	0107db9b          	srliw	s7,a5,0x10
   17e98:	fb2c62e3          	bltu	s8,s2,17e3c <__multiply+0x114>
   17e9c:	00813783          	ld	a5,8(sp)
   17ea0:	00fa87b3          	add	a5,s5,a5
   17ea4:	00e7a023          	sw	a4,0(a5)
   17ea8:	0009ad83          	lw	s11,0(s3)
   17eac:	010ddd9b          	srliw	s11,s11,0x10
   17eb0:	f60d82e3          	beqz	s11,17e14 <__multiply+0xec>
   17eb4:	000aad03          	lw	s10,0(s5)
   17eb8:	01013c83          	ld	s9,16(sp)
   17ebc:	000a8b93          	mv	s7,s5
   17ec0:	000d0493          	mv	s1,s10
   17ec4:	00000c13          	li	s8,0
   17ec8:	000ca503          	lw	a0,0(s9)
   17ecc:	000d8593          	mv	a1,s11
   17ed0:	0104d49b          	srliw	s1,s1,0x10
   17ed4:	00857533          	and	a0,a0,s0
   17ed8:	0180a0ef          	jal	ra,21ef0 <__muldi3>
   17edc:	018507bb          	addw	a5,a0,s8
   17ee0:	00978c3b          	addw	s8,a5,s1
   17ee4:	010c159b          	slliw	a1,s8,0x10
   17ee8:	008d7733          	and	a4,s10,s0
   17eec:	00b76733          	or	a4,a4,a1
   17ef0:	00eba023          	sw	a4,0(s7)
   17ef4:	002cd503          	lhu	a0,2(s9)
   17ef8:	004ba483          	lw	s1,4(s7)
   17efc:	000d8593          	mv	a1,s11
   17f00:	7f1090ef          	jal	ra,21ef0 <__muldi3>
   17f04:	0084f733          	and	a4,s1,s0
   17f08:	010c579b          	srliw	a5,s8,0x10
   17f0c:	00e5053b          	addw	a0,a0,a4
   17f10:	00f5053b          	addw	a0,a0,a5
   17f14:	004c8c93          	addi	s9,s9,4
   17f18:	004b8b93          	addi	s7,s7,4
   17f1c:	00050d1b          	sext.w	s10,a0
   17f20:	01055c1b          	srliw	s8,a0,0x10
   17f24:	fb2ce2e3          	bltu	s9,s2,17ec8 <__multiply+0x1a0>
   17f28:	00813783          	ld	a5,8(sp)
   17f2c:	00498993          	addi	s3,s3,4
   17f30:	00fa87b3          	add	a5,s5,a5
   17f34:	00a7a023          	sw	a0,0(a5)
   17f38:	00013783          	ld	a5,0(sp)
   17f3c:	004a8a93          	addi	s5,s5,4
   17f40:	eef9e2e3          	bltu	s3,a5,17e24 <__multiply+0xfc>
   17f44:	01604863          	bgtz	s6,17f54 <__multiply+0x22c>
   17f48:	0180006f          	j	17f60 <__multiply+0x238>
   17f4c:	fffb0b1b          	addiw	s6,s6,-1
   17f50:	000b0863          	beqz	s6,17f60 <__multiply+0x238>
   17f54:	ffca2783          	lw	a5,-4(s4)
   17f58:	ffca0a13          	addi	s4,s4,-4
   17f5c:	fe0788e3          	beqz	a5,17f4c <__multiply+0x224>
   17f60:	01813783          	ld	a5,24(sp)
   17f64:	08813083          	ld	ra,136(sp)
   17f68:	08013403          	ld	s0,128(sp)
   17f6c:	0167aa23          	sw	s6,20(a5)
   17f70:	07813483          	ld	s1,120(sp)
   17f74:	07013903          	ld	s2,112(sp)
   17f78:	06813983          	ld	s3,104(sp)
   17f7c:	06013a03          	ld	s4,96(sp)
   17f80:	05813a83          	ld	s5,88(sp)
   17f84:	05013b03          	ld	s6,80(sp)
   17f88:	04813b83          	ld	s7,72(sp)
   17f8c:	04013c03          	ld	s8,64(sp)
   17f90:	03813c83          	ld	s9,56(sp)
   17f94:	03013d03          	ld	s10,48(sp)
   17f98:	02813d83          	ld	s11,40(sp)
   17f9c:	00078513          	mv	a0,a5
   17fa0:	09010113          	addi	sp,sp,144
   17fa4:	00008067          	ret
   17fa8:	408907b3          	sub	a5,s2,s0
   17fac:	fe778793          	addi	a5,a5,-25
   17fb0:	ffc7f793          	andi	a5,a5,-4
   17fb4:	00478793          	addi	a5,a5,4
   17fb8:	00f13423          	sd	a5,8(sp)
   17fbc:	e45ff06f          	j	17e00 <__multiply+0xd8>
   17fc0:	000226b7          	lui	a3,0x22
   17fc4:	00022537          	lui	a0,0x22
   17fc8:	25068693          	addi	a3,a3,592 # 22250 <blanks.1+0x70>
   17fcc:	00000613          	li	a2,0
   17fd0:	15d00593          	li	a1,349
   17fd4:	54050513          	addi	a0,a0,1344 # 22540 <ezero+0x30>
   17fd8:	4f9040ef          	jal	ra,1ccd0 <__assert_func>

0000000000017fdc <__pow5mult>:
   17fdc:	fd010113          	addi	sp,sp,-48
   17fe0:	02813023          	sd	s0,32(sp)
   17fe4:	01213823          	sd	s2,16(sp)
   17fe8:	01313423          	sd	s3,8(sp)
   17fec:	02113423          	sd	ra,40(sp)
   17ff0:	00913c23          	sd	s1,24(sp)
   17ff4:	00367793          	andi	a5,a2,3
   17ff8:	00060413          	mv	s0,a2
   17ffc:	00050993          	mv	s3,a0
   18000:	00058913          	mv	s2,a1
   18004:	0a079a63          	bnez	a5,180b8 <__pow5mult+0xdc>
   18008:	40245413          	srai	s0,s0,0x2
   1800c:	06040663          	beqz	s0,18078 <__pow5mult+0x9c>
   18010:	0709b483          	ld	s1,112(s3)
   18014:	0c048663          	beqz	s1,180e0 <__pow5mult+0x104>
   18018:	00147793          	andi	a5,s0,1
   1801c:	02079063          	bnez	a5,1803c <__pow5mult+0x60>
   18020:	40145413          	srai	s0,s0,0x1
   18024:	04040a63          	beqz	s0,18078 <__pow5mult+0x9c>
   18028:	0004b503          	ld	a0,0(s1)
   1802c:	06050663          	beqz	a0,18098 <__pow5mult+0xbc>
   18030:	00050493          	mv	s1,a0
   18034:	00147793          	andi	a5,s0,1
   18038:	fe0784e3          	beqz	a5,18020 <__pow5mult+0x44>
   1803c:	00048613          	mv	a2,s1
   18040:	00090593          	mv	a1,s2
   18044:	00098513          	mv	a0,s3
   18048:	ce1ff0ef          	jal	ra,17d28 <__multiply>
   1804c:	02090063          	beqz	s2,1806c <__pow5mult+0x90>
   18050:	00892703          	lw	a4,8(s2)
   18054:	0789b783          	ld	a5,120(s3)
   18058:	00371713          	slli	a4,a4,0x3
   1805c:	00e787b3          	add	a5,a5,a4
   18060:	0007b703          	ld	a4,0(a5)
   18064:	00e93023          	sd	a4,0(s2)
   18068:	0127b023          	sd	s2,0(a5)
   1806c:	40145413          	srai	s0,s0,0x1
   18070:	00050913          	mv	s2,a0
   18074:	fa041ae3          	bnez	s0,18028 <__pow5mult+0x4c>
   18078:	02813083          	ld	ra,40(sp)
   1807c:	02013403          	ld	s0,32(sp)
   18080:	01813483          	ld	s1,24(sp)
   18084:	00813983          	ld	s3,8(sp)
   18088:	00090513          	mv	a0,s2
   1808c:	01013903          	ld	s2,16(sp)
   18090:	03010113          	addi	sp,sp,48
   18094:	00008067          	ret
   18098:	00048613          	mv	a2,s1
   1809c:	00048593          	mv	a1,s1
   180a0:	00098513          	mv	a0,s3
   180a4:	c85ff0ef          	jal	ra,17d28 <__multiply>
   180a8:	00a4b023          	sd	a0,0(s1)
   180ac:	00053023          	sd	zero,0(a0)
   180b0:	00050493          	mv	s1,a0
   180b4:	f81ff06f          	j	18034 <__pow5mult+0x58>
   180b8:	fff7879b          	addiw	a5,a5,-1
   180bc:	00022737          	lui	a4,0x22
   180c0:	59070713          	addi	a4,a4,1424 # 22590 <p05.0>
   180c4:	00279793          	slli	a5,a5,0x2
   180c8:	00f707b3          	add	a5,a4,a5
   180cc:	0007a603          	lw	a2,0(a5)
   180d0:	00000693          	li	a3,0
   180d4:	f68ff0ef          	jal	ra,1783c <__multadd>
   180d8:	00050913          	mv	s2,a0
   180dc:	f2dff06f          	j	18008 <__pow5mult+0x2c>
   180e0:	00100593          	li	a1,1
   180e4:	00098513          	mv	a0,s3
   180e8:	e84ff0ef          	jal	ra,1776c <_Balloc>
   180ec:	00050493          	mv	s1,a0
   180f0:	02050063          	beqz	a0,18110 <__pow5mult+0x134>
   180f4:	27100793          	li	a5,625
   180f8:	00f52c23          	sw	a5,24(a0)
   180fc:	00100793          	li	a5,1
   18100:	00f52a23          	sw	a5,20(a0)
   18104:	06a9b823          	sd	a0,112(s3)
   18108:	00053023          	sd	zero,0(a0)
   1810c:	f0dff06f          	j	18018 <__pow5mult+0x3c>
   18110:	000226b7          	lui	a3,0x22
   18114:	00022537          	lui	a0,0x22
   18118:	25068693          	addi	a3,a3,592 # 22250 <blanks.1+0x70>
   1811c:	00000613          	li	a2,0
   18120:	14000593          	li	a1,320
   18124:	54050513          	addi	a0,a0,1344 # 22540 <ezero+0x30>
   18128:	3a9040ef          	jal	ra,1ccd0 <__assert_func>

000000000001812c <__lshift>:
   1812c:	fc010113          	addi	sp,sp,-64
   18130:	02813823          	sd	s0,48(sp)
   18134:	0145a403          	lw	s0,20(a1)
   18138:	00c5a783          	lw	a5,12(a1)
   1813c:	01513423          	sd	s5,8(sp)
   18140:	40565a9b          	sraiw	s5,a2,0x5
   18144:	008a843b          	addw	s0,s5,s0
   18148:	02913423          	sd	s1,40(sp)
   1814c:	03213023          	sd	s2,32(sp)
   18150:	01313c23          	sd	s3,24(sp)
   18154:	01413823          	sd	s4,16(sp)
   18158:	01613023          	sd	s6,0(sp)
   1815c:	02113c23          	sd	ra,56(sp)
   18160:	0014091b          	addiw	s2,s0,1
   18164:	00058493          	mv	s1,a1
   18168:	00060a13          	mv	s4,a2
   1816c:	0085a583          	lw	a1,8(a1)
   18170:	00050993          	mv	s3,a0
   18174:	40565b13          	srai	s6,a2,0x5
   18178:	0127d863          	bge	a5,s2,18188 <__lshift+0x5c>
   1817c:	0017979b          	slliw	a5,a5,0x1
   18180:	0015859b          	addiw	a1,a1,1
   18184:	ff27cce3          	blt	a5,s2,1817c <__lshift+0x50>
   18188:	00098513          	mv	a0,s3
   1818c:	de0ff0ef          	jal	ra,1776c <_Balloc>
   18190:	12050263          	beqz	a0,182b4 <__lshift+0x188>
   18194:	01850713          	addi	a4,a0,24
   18198:	03605663          	blez	s6,181c4 <__lshift+0x98>
   1819c:	006a869b          	addiw	a3,s5,6
   181a0:	00269693          	slli	a3,a3,0x2
   181a4:	00d506b3          	add	a3,a0,a3
   181a8:	00070793          	mv	a5,a4
   181ac:	00478793          	addi	a5,a5,4
   181b0:	fe07ae23          	sw	zero,-4(a5)
   181b4:	fef69ce3          	bne	a3,a5,181ac <__lshift+0x80>
   181b8:	020a9793          	slli	a5,s5,0x20
   181bc:	01e7da93          	srli	s5,a5,0x1e
   181c0:	01570733          	add	a4,a4,s5
   181c4:	0144a883          	lw	a7,20(s1)
   181c8:	01848793          	addi	a5,s1,24
   181cc:	01fa7613          	andi	a2,s4,31
   181d0:	00289893          	slli	a7,a7,0x2
   181d4:	011788b3          	add	a7,a5,a7
   181d8:	0a060863          	beqz	a2,18288 <__lshift+0x15c>
   181dc:	02000593          	li	a1,32
   181e0:	40c585bb          	subw	a1,a1,a2
   181e4:	00070313          	mv	t1,a4
   181e8:	00000693          	li	a3,0
   181ec:	0007a803          	lw	a6,0(a5)
   181f0:	00430313          	addi	t1,t1,4
   181f4:	00478793          	addi	a5,a5,4
   181f8:	00c8183b          	sllw	a6,a6,a2
   181fc:	0106e6b3          	or	a3,a3,a6
   18200:	fed32e23          	sw	a3,-4(t1)
   18204:	ffc7a803          	lw	a6,-4(a5)
   18208:	00b856bb          	srlw	a3,a6,a1
   1820c:	00068813          	mv	a6,a3
   18210:	fd17eee3          	bltu	a5,a7,181ec <__lshift+0xc0>
   18214:	01948793          	addi	a5,s1,25
   18218:	00400613          	li	a2,4
   1821c:	00f8ea63          	bltu	a7,a5,18230 <__lshift+0x104>
   18220:	409887b3          	sub	a5,a7,s1
   18224:	fe778793          	addi	a5,a5,-25
   18228:	ffc7f793          	andi	a5,a5,-4
   1822c:	00478613          	addi	a2,a5,4
   18230:	00c70733          	add	a4,a4,a2
   18234:	01072023          	sw	a6,0(a4)
   18238:	00069463          	bnez	a3,18240 <__lshift+0x114>
   1823c:	00040913          	mv	s2,s0
   18240:	0084a703          	lw	a4,8(s1)
   18244:	0789b783          	ld	a5,120(s3)
   18248:	03813083          	ld	ra,56(sp)
   1824c:	00371713          	slli	a4,a4,0x3
   18250:	00e787b3          	add	a5,a5,a4
   18254:	0007b703          	ld	a4,0(a5)
   18258:	01252a23          	sw	s2,20(a0)
   1825c:	03013403          	ld	s0,48(sp)
   18260:	00e4b023          	sd	a4,0(s1)
   18264:	0097b023          	sd	s1,0(a5)
   18268:	02013903          	ld	s2,32(sp)
   1826c:	02813483          	ld	s1,40(sp)
   18270:	01813983          	ld	s3,24(sp)
   18274:	01013a03          	ld	s4,16(sp)
   18278:	00813a83          	ld	s5,8(sp)
   1827c:	00013b03          	ld	s6,0(sp)
   18280:	04010113          	addi	sp,sp,64
   18284:	00008067          	ret
   18288:	0007a683          	lw	a3,0(a5)
   1828c:	00478793          	addi	a5,a5,4
   18290:	00470713          	addi	a4,a4,4
   18294:	fed72e23          	sw	a3,-4(a4)
   18298:	fb17f2e3          	bgeu	a5,a7,1823c <__lshift+0x110>
   1829c:	0007a683          	lw	a3,0(a5)
   182a0:	00478793          	addi	a5,a5,4
   182a4:	00470713          	addi	a4,a4,4
   182a8:	fed72e23          	sw	a3,-4(a4)
   182ac:	fd17eee3          	bltu	a5,a7,18288 <__lshift+0x15c>
   182b0:	f8dff06f          	j	1823c <__lshift+0x110>
   182b4:	000226b7          	lui	a3,0x22
   182b8:	00022537          	lui	a0,0x22
   182bc:	25068693          	addi	a3,a3,592 # 22250 <blanks.1+0x70>
   182c0:	00000613          	li	a2,0
   182c4:	1d900593          	li	a1,473
   182c8:	54050513          	addi	a0,a0,1344 # 22540 <ezero+0x30>
   182cc:	205040ef          	jal	ra,1ccd0 <__assert_func>

00000000000182d0 <__mcmp>:
   182d0:	0145a783          	lw	a5,20(a1)
   182d4:	00050813          	mv	a6,a0
   182d8:	01452503          	lw	a0,20(a0)
   182dc:	40f5053b          	subw	a0,a0,a5
   182e0:	04051263          	bnez	a0,18324 <__mcmp+0x54>
   182e4:	00279793          	slli	a5,a5,0x2
   182e8:	01880813          	addi	a6,a6,24
   182ec:	01858593          	addi	a1,a1,24
   182f0:	00f80733          	add	a4,a6,a5
   182f4:	00f587b3          	add	a5,a1,a5
   182f8:	0080006f          	j	18300 <__mcmp+0x30>
   182fc:	02e87463          	bgeu	a6,a4,18324 <__mcmp+0x54>
   18300:	ffc72603          	lw	a2,-4(a4)
   18304:	ffc7a683          	lw	a3,-4(a5)
   18308:	ffc70713          	addi	a4,a4,-4
   1830c:	ffc78793          	addi	a5,a5,-4
   18310:	fed606e3          	beq	a2,a3,182fc <__mcmp+0x2c>
   18314:	00100513          	li	a0,1
   18318:	00d67663          	bgeu	a2,a3,18324 <__mcmp+0x54>
   1831c:	fff00513          	li	a0,-1
   18320:	00008067          	ret
   18324:	00008067          	ret

0000000000018328 <__mdiff>:
   18328:	fe010113          	addi	sp,sp,-32
   1832c:	01462783          	lw	a5,20(a2)
   18330:	01213023          	sd	s2,0(sp)
   18334:	0145a903          	lw	s2,20(a1)
   18338:	00813823          	sd	s0,16(sp)
   1833c:	00913423          	sd	s1,8(sp)
   18340:	00113c23          	sd	ra,24(sp)
   18344:	40f9093b          	subw	s2,s2,a5
   18348:	00058493          	mv	s1,a1
   1834c:	00060413          	mv	s0,a2
   18350:	04091663          	bnez	s2,1839c <__mdiff+0x74>
   18354:	00279693          	slli	a3,a5,0x2
   18358:	01858593          	addi	a1,a1,24
   1835c:	01860713          	addi	a4,a2,24
   18360:	00d587b3          	add	a5,a1,a3
   18364:	00d70733          	add	a4,a4,a3
   18368:	0080006f          	j	18370 <__mdiff+0x48>
   1836c:	18f5fa63          	bgeu	a1,a5,18500 <__mdiff+0x1d8>
   18370:	ffc7a603          	lw	a2,-4(a5)
   18374:	ffc72683          	lw	a3,-4(a4)
   18378:	ffc78793          	addi	a5,a5,-4
   1837c:	ffc70713          	addi	a4,a4,-4
   18380:	fed606e3          	beq	a2,a3,1836c <__mdiff+0x44>
   18384:	02d67063          	bgeu	a2,a3,183a4 <__mdiff+0x7c>
   18388:	00048793          	mv	a5,s1
   1838c:	00100913          	li	s2,1
   18390:	00040493          	mv	s1,s0
   18394:	00078413          	mv	s0,a5
   18398:	00c0006f          	j	183a4 <__mdiff+0x7c>
   1839c:	fe0946e3          	bltz	s2,18388 <__mdiff+0x60>
   183a0:	00000913          	li	s2,0
   183a4:	0084a583          	lw	a1,8(s1)
   183a8:	bc4ff0ef          	jal	ra,1776c <_Balloc>
   183ac:	1a050e63          	beqz	a0,18568 <__mdiff+0x240>
   183b0:	0144a303          	lw	t1,20(s1)
   183b4:	01442f03          	lw	t5,20(s0)
   183b8:	01848293          	addi	t0,s1,24
   183bc:	00231e13          	slli	t3,t1,0x2
   183c0:	01840813          	addi	a6,s0,24
   183c4:	002f1f13          	slli	t5,t5,0x2
   183c8:	01850f93          	addi	t6,a0,24
   183cc:	000108b7          	lui	a7,0x10
   183d0:	01252823          	sw	s2,16(a0)
   183d4:	01c28e33          	add	t3,t0,t3
   183d8:	01e80f33          	add	t5,a6,t5
   183dc:	000f8613          	mv	a2,t6
   183e0:	00028e93          	mv	t4,t0
   183e4:	00000593          	li	a1,0
   183e8:	fff88893          	addi	a7,a7,-1 # ffff <exit-0xe9>
   183ec:	000ea703          	lw	a4,0(t4)
   183f0:	00082683          	lw	a3,0(a6)
   183f4:	00460613          	addi	a2,a2,4
   183f8:	011777b3          	and	a5,a4,a7
   183fc:	0116f3b3          	and	t2,a3,a7
   18400:	407787bb          	subw	a5,a5,t2
   18404:	00b787bb          	addw	a5,a5,a1
   18408:	0106d69b          	srliw	a3,a3,0x10
   1840c:	0107571b          	srliw	a4,a4,0x10
   18410:	40d7073b          	subw	a4,a4,a3
   18414:	4107d69b          	sraiw	a3,a5,0x10
   18418:	00d7073b          	addw	a4,a4,a3
   1841c:	00f8f7b3          	and	a5,a7,a5
   18420:	0107169b          	slliw	a3,a4,0x10
   18424:	00d7e7b3          	or	a5,a5,a3
   18428:	0007879b          	sext.w	a5,a5
   1842c:	00480813          	addi	a6,a6,4
   18430:	fef62e23          	sw	a5,-4(a2)
   18434:	004e8e93          	addi	t4,t4,4
   18438:	4107559b          	sraiw	a1,a4,0x10
   1843c:	fbe868e3          	bltu	a6,t5,183ec <__mdiff+0xc4>
   18440:	408f0733          	sub	a4,t5,s0
   18444:	fe770713          	addi	a4,a4,-25
   18448:	01940413          	addi	s0,s0,25
   1844c:	00275e93          	srli	t4,a4,0x2
   18450:	00400713          	li	a4,4
   18454:	008f6663          	bltu	t5,s0,18460 <__mdiff+0x138>
   18458:	001e8713          	addi	a4,t4,1
   1845c:	00271713          	slli	a4,a4,0x2
   18460:	00e282b3          	add	t0,t0,a4
   18464:	00ef8833          	add	a6,t6,a4
   18468:	000108b7          	lui	a7,0x10
   1846c:	00080613          	mv	a2,a6
   18470:	00028693          	mv	a3,t0
   18474:	fff88893          	addi	a7,a7,-1 # ffff <exit-0xe9>
   18478:	0bc2fc63          	bgeu	t0,t3,18530 <__mdiff+0x208>
   1847c:	0006a783          	lw	a5,0(a3)
   18480:	00058e9b          	sext.w	t4,a1
   18484:	00460613          	addi	a2,a2,4
   18488:	0117f733          	and	a4,a5,a7
   1848c:	00b7073b          	addw	a4,a4,a1
   18490:	4107571b          	sraiw	a4,a4,0x10
   18494:	0107d59b          	srliw	a1,a5,0x10
   18498:	00b7073b          	addw	a4,a4,a1
   1849c:	01d787bb          	addw	a5,a5,t4
   184a0:	0107159b          	slliw	a1,a4,0x10
   184a4:	0117f7b3          	and	a5,a5,a7
   184a8:	00b7e7b3          	or	a5,a5,a1
   184ac:	0007879b          	sext.w	a5,a5
   184b0:	00468693          	addi	a3,a3,4
   184b4:	fef62e23          	sw	a5,-4(a2)
   184b8:	4107559b          	sraiw	a1,a4,0x10
   184bc:	fdc6e0e3          	bltu	a3,t3,1847c <__mdiff+0x154>
   184c0:	fffe0e13          	addi	t3,t3,-1
   184c4:	405e0e33          	sub	t3,t3,t0
   184c8:	ffce7e13          	andi	t3,t3,-4
   184cc:	01c80733          	add	a4,a6,t3
   184d0:	00079a63          	bnez	a5,184e4 <__mdiff+0x1bc>
   184d4:	ffc72783          	lw	a5,-4(a4)
   184d8:	fff3031b          	addiw	t1,t1,-1
   184dc:	ffc70713          	addi	a4,a4,-4
   184e0:	fe078ae3          	beqz	a5,184d4 <__mdiff+0x1ac>
   184e4:	01813083          	ld	ra,24(sp)
   184e8:	01013403          	ld	s0,16(sp)
   184ec:	00652a23          	sw	t1,20(a0)
   184f0:	00813483          	ld	s1,8(sp)
   184f4:	00013903          	ld	s2,0(sp)
   184f8:	02010113          	addi	sp,sp,32
   184fc:	00008067          	ret
   18500:	00000593          	li	a1,0
   18504:	a68ff0ef          	jal	ra,1776c <_Balloc>
   18508:	04050263          	beqz	a0,1854c <__mdiff+0x224>
   1850c:	01813083          	ld	ra,24(sp)
   18510:	01013403          	ld	s0,16(sp)
   18514:	00100793          	li	a5,1
   18518:	00f52a23          	sw	a5,20(a0)
   1851c:	00052c23          	sw	zero,24(a0)
   18520:	00813483          	ld	s1,8(sp)
   18524:	00013903          	ld	s2,0(sp)
   18528:	02010113          	addi	sp,sp,32
   1852c:	00008067          	ret
   18530:	00000713          	li	a4,0
   18534:	008f7663          	bgeu	t5,s0,18540 <__mdiff+0x218>
   18538:	00ef8733          	add	a4,t6,a4
   1853c:	f95ff06f          	j	184d0 <__mdiff+0x1a8>
   18540:	002e9713          	slli	a4,t4,0x2
   18544:	00ef8733          	add	a4,t6,a4
   18548:	f89ff06f          	j	184d0 <__mdiff+0x1a8>
   1854c:	000226b7          	lui	a3,0x22
   18550:	00022537          	lui	a0,0x22
   18554:	25068693          	addi	a3,a3,592 # 22250 <blanks.1+0x70>
   18558:	00000613          	li	a2,0
   1855c:	23200593          	li	a1,562
   18560:	54050513          	addi	a0,a0,1344 # 22540 <ezero+0x30>
   18564:	76c040ef          	jal	ra,1ccd0 <__assert_func>
   18568:	000226b7          	lui	a3,0x22
   1856c:	00022537          	lui	a0,0x22
   18570:	25068693          	addi	a3,a3,592 # 22250 <blanks.1+0x70>
   18574:	00000613          	li	a2,0
   18578:	24000593          	li	a1,576
   1857c:	54050513          	addi	a0,a0,1344 # 22540 <ezero+0x30>
   18580:	750040ef          	jal	ra,1ccd0 <__assert_func>

0000000000018584 <__ulp>:
   18584:	7ff007b7          	lui	a5,0x7ff00
   18588:	02055513          	srli	a0,a0,0x20
   1858c:	00f57533          	and	a0,a0,a5
   18590:	fcc007b7          	lui	a5,0xfcc00
   18594:	00a7873b          	addw	a4,a5,a0
   18598:	00000513          	li	a0,0
   1859c:	00e05c63          	blez	a4,185b4 <__ulp+0x30>
   185a0:	02051513          	slli	a0,a0,0x20
   185a4:	02071713          	slli	a4,a4,0x20
   185a8:	02055513          	srli	a0,a0,0x20
   185ac:	00e56533          	or	a0,a0,a4
   185b0:	00008067          	ret
   185b4:	40e007bb          	negw	a5,a4
   185b8:	4147d69b          	sraiw	a3,a5,0x14
   185bc:	01300713          	li	a4,19
   185c0:	02d74263          	blt	a4,a3,185e4 <__ulp+0x60>
   185c4:	00080737          	lui	a4,0x80
   185c8:	00000513          	li	a0,0
   185cc:	40d7573b          	sraw	a4,a4,a3
   185d0:	02051513          	slli	a0,a0,0x20
   185d4:	02071713          	slli	a4,a4,0x20
   185d8:	02055513          	srli	a0,a0,0x20
   185dc:	00e56533          	or	a0,a0,a4
   185e0:	00008067          	ret
   185e4:	fec6879b          	addiw	a5,a3,-20
   185e8:	01e00713          	li	a4,30
   185ec:	00100513          	li	a0,1
   185f0:	00f74663          	blt	a4,a5,185fc <__ulp+0x78>
   185f4:	80000537          	lui	a0,0x80000
   185f8:	00f5553b          	srlw	a0,a0,a5
   185fc:	00000713          	li	a4,0
   18600:	02051513          	slli	a0,a0,0x20
   18604:	02071713          	slli	a4,a4,0x20
   18608:	02055513          	srli	a0,a0,0x20
   1860c:	00e56533          	or	a0,a0,a4
   18610:	00008067          	ret

0000000000018614 <__b2d>:
   18614:	fd010113          	addi	sp,sp,-48
   18618:	00913c23          	sd	s1,24(sp)
   1861c:	01452483          	lw	s1,20(a0) # ffffffff80000014 <__BSS_END__+0xffffffff7ffdbe0c>
   18620:	02813023          	sd	s0,32(sp)
   18624:	01850413          	addi	s0,a0,24
   18628:	00249493          	slli	s1,s1,0x2
   1862c:	009404b3          	add	s1,s0,s1
   18630:	01213823          	sd	s2,16(sp)
   18634:	ffc4a903          	lw	s2,-4(s1)
   18638:	01313423          	sd	s3,8(sp)
   1863c:	01413023          	sd	s4,0(sp)
   18640:	00090513          	mv	a0,s2
   18644:	00058993          	mv	s3,a1
   18648:	02113423          	sd	ra,40(sp)
   1864c:	cccff0ef          	jal	ra,17b18 <__hi0bits>
   18650:	02000693          	li	a3,32
   18654:	40a687bb          	subw	a5,a3,a0
   18658:	00f9a023          	sw	a5,0(s3)
   1865c:	00a00793          	li	a5,10
   18660:	ffc48a13          	addi	s4,s1,-4
   18664:	00050713          	mv	a4,a0
   18668:	0aa7dc63          	bge	a5,a0,18720 <__b2d+0x10c>
   1866c:	ff55079b          	addiw	a5,a0,-11
   18670:	05447663          	bgeu	s0,s4,186bc <__b2d+0xa8>
   18674:	ff84a703          	lw	a4,-8(s1)
   18678:	06078463          	beqz	a5,186e0 <__b2d+0xcc>
   1867c:	40f686bb          	subw	a3,a3,a5
   18680:	00d7563b          	srlw	a2,a4,a3
   18684:	00f9193b          	sllw	s2,s2,a5
   18688:	00c96933          	or	s2,s2,a2
   1868c:	3ff00637          	lui	a2,0x3ff00
   18690:	00c96933          	or	s2,s2,a2
   18694:	00f7163b          	sllw	a2,a4,a5
   18698:	ff848793          	addi	a5,s1,-8
   1869c:	02091513          	slli	a0,s2,0x20
   186a0:	0006071b          	sext.w	a4,a2
   186a4:	04f47463          	bgeu	s0,a5,186ec <__b2d+0xd8>
   186a8:	ff44a703          	lw	a4,-12(s1)
   186ac:	00d7573b          	srlw	a4,a4,a3
   186b0:	00c76733          	or	a4,a4,a2
   186b4:	0007071b          	sext.w	a4,a4
   186b8:	0340006f          	j	186ec <__b2d+0xd8>
   186bc:	00b00693          	li	a3,11
   186c0:	00d50e63          	beq	a0,a3,186dc <__b2d+0xc8>
   186c4:	00f9153b          	sllw	a0,s2,a5
   186c8:	3ff007b7          	lui	a5,0x3ff00
   186cc:	00f56533          	or	a0,a0,a5
   186d0:	02051513          	slli	a0,a0,0x20
   186d4:	00000713          	li	a4,0
   186d8:	0140006f          	j	186ec <__b2d+0xd8>
   186dc:	00000713          	li	a4,0
   186e0:	3ff00537          	lui	a0,0x3ff00
   186e4:	00a96533          	or	a0,s2,a0
   186e8:	02051513          	slli	a0,a0,0x20
   186ec:	02813083          	ld	ra,40(sp)
   186f0:	02013403          	ld	s0,32(sp)
   186f4:	02055513          	srli	a0,a0,0x20
   186f8:	02071713          	slli	a4,a4,0x20
   186fc:	02075713          	srli	a4,a4,0x20
   18700:	02051513          	slli	a0,a0,0x20
   18704:	01813483          	ld	s1,24(sp)
   18708:	01013903          	ld	s2,16(sp)
   1870c:	00813983          	ld	s3,8(sp)
   18710:	00013a03          	ld	s4,0(sp)
   18714:	00e56533          	or	a0,a0,a4
   18718:	03010113          	addi	sp,sp,48
   1871c:	00008067          	ret
   18720:	00b00693          	li	a3,11
   18724:	40a686bb          	subw	a3,a3,a0
   18728:	00d957bb          	srlw	a5,s2,a3
   1872c:	3ff00637          	lui	a2,0x3ff00
   18730:	00c7e7b3          	or	a5,a5,a2
   18734:	02079513          	slli	a0,a5,0x20
   18738:	00000793          	li	a5,0
   1873c:	01447663          	bgeu	s0,s4,18748 <__b2d+0x134>
   18740:	ff84a783          	lw	a5,-8(s1)
   18744:	00d7d7bb          	srlw	a5,a5,a3
   18748:	0157071b          	addiw	a4,a4,21 # 80015 <__BSS_END__+0x5be0d>
   1874c:	00e9173b          	sllw	a4,s2,a4
   18750:	00e7e733          	or	a4,a5,a4
   18754:	0007071b          	sext.w	a4,a4
   18758:	f95ff06f          	j	186ec <__b2d+0xd8>

000000000001875c <__d2b>:
   1875c:	fc010113          	addi	sp,sp,-64
   18760:	02813823          	sd	s0,48(sp)
   18764:	00058413          	mv	s0,a1
   18768:	00100593          	li	a1,1
   1876c:	03213023          	sd	s2,32(sp)
   18770:	01413823          	sd	s4,16(sp)
   18774:	02113c23          	sd	ra,56(sp)
   18778:	02913423          	sd	s1,40(sp)
   1877c:	01313c23          	sd	s3,24(sp)
   18780:	00060a13          	mv	s4,a2
   18784:	00068913          	mv	s2,a3
   18788:	fe5fe0ef          	jal	ra,1776c <_Balloc>
   1878c:	10050063          	beqz	a0,1888c <__d2b+0x130>
   18790:	42045793          	srai	a5,s0,0x20
   18794:	0147d99b          	srliw	s3,a5,0x14
   18798:	7ff9f993          	andi	s3,s3,2047
   1879c:	02c79793          	slli	a5,a5,0x2c
   187a0:	00050493          	mv	s1,a0
   187a4:	02c7d793          	srli	a5,a5,0x2c
   187a8:	00098663          	beqz	s3,187b4 <__d2b+0x58>
   187ac:	00100737          	lui	a4,0x100
   187b0:	00e7e7b3          	or	a5,a5,a4
   187b4:	00f12623          	sw	a5,12(sp)
   187b8:	0004041b          	sext.w	s0,s0
   187bc:	06041063          	bnez	s0,1881c <__d2b+0xc0>
   187c0:	00c10513          	addi	a0,sp,12
   187c4:	bd0ff0ef          	jal	ra,17b94 <__lo0bits>
   187c8:	00c12783          	lw	a5,12(sp)
   187cc:	00100413          	li	s0,1
   187d0:	0084aa23          	sw	s0,20(s1)
   187d4:	00f4ac23          	sw	a5,24(s1)
   187d8:	0205051b          	addiw	a0,a0,32 # 3ff00020 <__BSS_END__+0x3fedbe18>
   187dc:	08098663          	beqz	s3,18868 <__d2b+0x10c>
   187e0:	bcd9899b          	addiw	s3,s3,-1075
   187e4:	00a989bb          	addw	s3,s3,a0
   187e8:	03500413          	li	s0,53
   187ec:	013a2023          	sw	s3,0(s4)
   187f0:	40a4053b          	subw	a0,s0,a0
   187f4:	03813083          	ld	ra,56(sp)
   187f8:	03013403          	ld	s0,48(sp)
   187fc:	00a92023          	sw	a0,0(s2)
   18800:	01813983          	ld	s3,24(sp)
   18804:	02013903          	ld	s2,32(sp)
   18808:	01013a03          	ld	s4,16(sp)
   1880c:	00048513          	mv	a0,s1
   18810:	02813483          	ld	s1,40(sp)
   18814:	04010113          	addi	sp,sp,64
   18818:	00008067          	ret
   1881c:	00810513          	addi	a0,sp,8
   18820:	00812423          	sw	s0,8(sp)
   18824:	b70ff0ef          	jal	ra,17b94 <__lo0bits>
   18828:	00c12783          	lw	a5,12(sp)
   1882c:	00812703          	lw	a4,8(sp)
   18830:	02050063          	beqz	a0,18850 <__d2b+0xf4>
   18834:	02000693          	li	a3,32
   18838:	40a686bb          	subw	a3,a3,a0
   1883c:	00d796bb          	sllw	a3,a5,a3
   18840:	00d76733          	or	a4,a4,a3
   18844:	00a7d7bb          	srlw	a5,a5,a0
   18848:	0007071b          	sext.w	a4,a4
   1884c:	00f12623          	sw	a5,12(sp)
   18850:	00f03433          	snez	s0,a5
   18854:	00140413          	addi	s0,s0,1
   18858:	00e4ac23          	sw	a4,24(s1)
   1885c:	00f4ae23          	sw	a5,28(s1)
   18860:	0084aa23          	sw	s0,20(s1)
   18864:	f6099ee3          	bnez	s3,187e0 <__d2b+0x84>
   18868:	bce5051b          	addiw	a0,a0,-1074
   1886c:	00241793          	slli	a5,s0,0x2
   18870:	00aa2023          	sw	a0,0(s4)
   18874:	00f487b3          	add	a5,s1,a5
   18878:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedbe0c>
   1887c:	0054141b          	slliw	s0,s0,0x5
   18880:	a98ff0ef          	jal	ra,17b18 <__hi0bits>
   18884:	40a4053b          	subw	a0,s0,a0
   18888:	f6dff06f          	j	187f4 <__d2b+0x98>
   1888c:	000226b7          	lui	a3,0x22
   18890:	00022537          	lui	a0,0x22
   18894:	25068693          	addi	a3,a3,592 # 22250 <blanks.1+0x70>
   18898:	00000613          	li	a2,0
   1889c:	30a00593          	li	a1,778
   188a0:	54050513          	addi	a0,a0,1344 # 22540 <ezero+0x30>
   188a4:	42c040ef          	jal	ra,1ccd0 <__assert_func>

00000000000188a8 <__ratio>:
   188a8:	fd010113          	addi	sp,sp,-48
   188ac:	00913c23          	sd	s1,24(sp)
   188b0:	00058493          	mv	s1,a1
   188b4:	00810593          	addi	a1,sp,8
   188b8:	02113423          	sd	ra,40(sp)
   188bc:	02813023          	sd	s0,32(sp)
   188c0:	01213823          	sd	s2,16(sp)
   188c4:	00050913          	mv	s2,a0
   188c8:	d4dff0ef          	jal	ra,18614 <__b2d>
   188cc:	00c10593          	addi	a1,sp,12
   188d0:	00050413          	mv	s0,a0
   188d4:	00048513          	mv	a0,s1
   188d8:	d3dff0ef          	jal	ra,18614 <__b2d>
   188dc:	01492783          	lw	a5,20(s2)
   188e0:	0144a603          	lw	a2,20(s1)
   188e4:	00812703          	lw	a4,8(sp)
   188e8:	00c12683          	lw	a3,12(sp)
   188ec:	40c787bb          	subw	a5,a5,a2
   188f0:	0057979b          	slliw	a5,a5,0x5
   188f4:	40d7073b          	subw	a4,a4,a3
   188f8:	00e7873b          	addw	a4,a5,a4
   188fc:	00070793          	mv	a5,a4
   18900:	00050593          	mv	a1,a0
   18904:	04e05263          	blez	a4,18948 <__ratio+0xa0>
   18908:	02045713          	srli	a4,s0,0x20
   1890c:	0147979b          	slliw	a5,a5,0x14
   18910:	00e787bb          	addw	a5,a5,a4
   18914:	fff00713          	li	a4,-1
   18918:	02075713          	srli	a4,a4,0x20
   1891c:	02079793          	slli	a5,a5,0x20
   18920:	00877733          	and	a4,a4,s0
   18924:	00f76433          	or	s0,a4,a5
   18928:	00040513          	mv	a0,s0
   1892c:	035070ef          	jal	ra,20160 <__divdf3>
   18930:	02813083          	ld	ra,40(sp)
   18934:	02013403          	ld	s0,32(sp)
   18938:	01813483          	ld	s1,24(sp)
   1893c:	01013903          	ld	s2,16(sp)
   18940:	03010113          	addi	sp,sp,48
   18944:	00008067          	ret
   18948:	02055713          	srli	a4,a0,0x20
   1894c:	0147979b          	slliw	a5,a5,0x14
   18950:	40f707bb          	subw	a5,a4,a5
   18954:	fff00713          	li	a4,-1
   18958:	02075713          	srli	a4,a4,0x20
   1895c:	02079793          	slli	a5,a5,0x20
   18960:	00a775b3          	and	a1,a4,a0
   18964:	00f5e5b3          	or	a1,a1,a5
   18968:	fc1ff06f          	j	18928 <__ratio+0x80>

000000000001896c <_mprec_log10>:
   1896c:	fe010113          	addi	sp,sp,-32
   18970:	00813823          	sd	s0,16(sp)
   18974:	00113c23          	sd	ra,24(sp)
   18978:	00913423          	sd	s1,8(sp)
   1897c:	01700793          	li	a5,23
   18980:	00050413          	mv	s0,a0
   18984:	02a7d863          	bge	a5,a0,189b4 <_mprec_log10+0x48>
   18988:	7281b503          	ld	a0,1832(gp) # 24130 <__SDATA_BEGIN__+0x10>
   1898c:	7301b483          	ld	s1,1840(gp) # 24138 <__SDATA_BEGIN__+0x18>
   18990:	00048593          	mv	a1,s1
   18994:	fff4041b          	addiw	s0,s0,-1
   18998:	36d070ef          	jal	ra,20504 <__muldf3>
   1899c:	fe041ae3          	bnez	s0,18990 <_mprec_log10+0x24>
   189a0:	01813083          	ld	ra,24(sp)
   189a4:	01013403          	ld	s0,16(sp)
   189a8:	00813483          	ld	s1,8(sp)
   189ac:	02010113          	addi	sp,sp,32
   189b0:	00008067          	ret
   189b4:	000227b7          	lui	a5,0x22
   189b8:	00351413          	slli	s0,a0,0x3
   189bc:	5f078793          	addi	a5,a5,1520 # 225f0 <__mprec_tens>
   189c0:	01813083          	ld	ra,24(sp)
   189c4:	008787b3          	add	a5,a5,s0
   189c8:	01013403          	ld	s0,16(sp)
   189cc:	0007b503          	ld	a0,0(a5)
   189d0:	00813483          	ld	s1,8(sp)
   189d4:	02010113          	addi	sp,sp,32
   189d8:	00008067          	ret

00000000000189dc <__copybits>:
   189dc:	01462683          	lw	a3,20(a2) # 3ff00014 <__BSS_END__+0x3fedbe0c>
   189e0:	fff5859b          	addiw	a1,a1,-1
   189e4:	4055d59b          	sraiw	a1,a1,0x5
   189e8:	0015859b          	addiw	a1,a1,1
   189ec:	01860793          	addi	a5,a2,24
   189f0:	00269693          	slli	a3,a3,0x2
   189f4:	00259593          	slli	a1,a1,0x2
   189f8:	00d786b3          	add	a3,a5,a3
   189fc:	00b505b3          	add	a1,a0,a1
   18a00:	02d7f863          	bgeu	a5,a3,18a30 <__copybits+0x54>
   18a04:	00050713          	mv	a4,a0
   18a08:	0007a803          	lw	a6,0(a5)
   18a0c:	00478793          	addi	a5,a5,4
   18a10:	00470713          	addi	a4,a4,4 # 100004 <__BSS_END__+0xdbdfc>
   18a14:	ff072e23          	sw	a6,-4(a4)
   18a18:	fed7e8e3          	bltu	a5,a3,18a08 <__copybits+0x2c>
   18a1c:	40c687b3          	sub	a5,a3,a2
   18a20:	fe778793          	addi	a5,a5,-25
   18a24:	ffc7f793          	andi	a5,a5,-4
   18a28:	00478793          	addi	a5,a5,4
   18a2c:	00f50533          	add	a0,a0,a5
   18a30:	00b57863          	bgeu	a0,a1,18a40 <__copybits+0x64>
   18a34:	00450513          	addi	a0,a0,4
   18a38:	fe052e23          	sw	zero,-4(a0)
   18a3c:	feb56ce3          	bltu	a0,a1,18a34 <__copybits+0x58>
   18a40:	00008067          	ret

0000000000018a44 <__any_on>:
   18a44:	01452703          	lw	a4,20(a0)
   18a48:	4055d613          	srai	a2,a1,0x5
   18a4c:	01850693          	addi	a3,a0,24
   18a50:	02c75263          	bge	a4,a2,18a74 <__any_on+0x30>
   18a54:	00271713          	slli	a4,a4,0x2
   18a58:	00e687b3          	add	a5,a3,a4
   18a5c:	04f6f263          	bgeu	a3,a5,18aa0 <__any_on+0x5c>
   18a60:	ffc7a703          	lw	a4,-4(a5)
   18a64:	ffc78793          	addi	a5,a5,-4
   18a68:	fe070ae3          	beqz	a4,18a5c <__any_on+0x18>
   18a6c:	00100513          	li	a0,1
   18a70:	00008067          	ret
   18a74:	00261793          	slli	a5,a2,0x2
   18a78:	00f687b3          	add	a5,a3,a5
   18a7c:	fee650e3          	bge	a2,a4,18a5c <__any_on+0x18>
   18a80:	01f5f593          	andi	a1,a1,31
   18a84:	fc058ce3          	beqz	a1,18a5c <__any_on+0x18>
   18a88:	0007a603          	lw	a2,0(a5)
   18a8c:	00100513          	li	a0,1
   18a90:	00b6573b          	srlw	a4,a2,a1
   18a94:	00b7173b          	sllw	a4,a4,a1
   18a98:	fcc702e3          	beq	a4,a2,18a5c <__any_on+0x18>
   18a9c:	00008067          	ret
   18aa0:	00000513          	li	a0,0
   18aa4:	00008067          	ret

0000000000018aa8 <_sbrk_r>:
   18aa8:	fe010113          	addi	sp,sp,-32
   18aac:	00813823          	sd	s0,16(sp)
   18ab0:	00913423          	sd	s1,8(sp)
   18ab4:	00050413          	mv	s0,a0
   18ab8:	00058513          	mv	a0,a1
   18abc:	00113c23          	sd	ra,24(sp)
   18ac0:	7801a823          	sw	zero,1936(gp) # 24198 <errno>
   18ac4:	570070ef          	jal	ra,20034 <_sbrk>
   18ac8:	fff00793          	li	a5,-1
   18acc:	00f50c63          	beq	a0,a5,18ae4 <_sbrk_r+0x3c>
   18ad0:	01813083          	ld	ra,24(sp)
   18ad4:	01013403          	ld	s0,16(sp)
   18ad8:	00813483          	ld	s1,8(sp)
   18adc:	02010113          	addi	sp,sp,32
   18ae0:	00008067          	ret
   18ae4:	7901a783          	lw	a5,1936(gp) # 24198 <errno>
   18ae8:	fe0784e3          	beqz	a5,18ad0 <_sbrk_r+0x28>
   18aec:	01813083          	ld	ra,24(sp)
   18af0:	00f42023          	sw	a5,0(s0)
   18af4:	01013403          	ld	s0,16(sp)
   18af8:	00813483          	ld	s1,8(sp)
   18afc:	02010113          	addi	sp,sp,32
   18b00:	00008067          	ret

0000000000018b04 <frexp>:
   18b04:	fe010113          	addi	sp,sp,-32
   18b08:	00813823          	sd	s0,16(sp)
   18b0c:	80000437          	lui	s0,0x80000
   18b10:	00113c23          	sd	ra,24(sp)
   18b14:	00913423          	sd	s1,8(sp)
   18b18:	42055693          	srai	a3,a0,0x20
   18b1c:	fff44413          	not	s0,s0
   18b20:	0086f733          	and	a4,a3,s0
   18b24:	0005a023          	sw	zero,0(a1)
   18b28:	7ff00637          	lui	a2,0x7ff00
   18b2c:	00050793          	mv	a5,a0
   18b30:	06c77263          	bgeu	a4,a2,18b94 <frexp+0x90>
   18b34:	00a76633          	or	a2,a4,a0
   18b38:	0006061b          	sext.w	a2,a2
   18b3c:	04060c63          	beqz	a2,18b94 <frexp+0x90>
   18b40:	7ff00637          	lui	a2,0x7ff00
   18b44:	00c6f633          	and	a2,a3,a2
   18b48:	00058493          	mv	s1,a1
   18b4c:	06060063          	beqz	a2,18bac <frexp+0xa8>
   18b50:	0006869b          	sext.w	a3,a3
   18b54:	0007071b          	sext.w	a4,a4
   18b58:	00000593          	li	a1,0
   18b5c:	80100637          	lui	a2,0x80100
   18b60:	fff60613          	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800dbdf7>
   18b64:	00c6f6b3          	and	a3,a3,a2
   18b68:	3fe00637          	lui	a2,0x3fe00
   18b6c:	00c6e6b3          	or	a3,a3,a2
   18b70:	4147571b          	sraiw	a4,a4,0x14
   18b74:	fff00613          	li	a2,-1
   18b78:	c027071b          	addiw	a4,a4,-1022
   18b7c:	02065613          	srli	a2,a2,0x20
   18b80:	00b7073b          	addw	a4,a4,a1
   18b84:	02069693          	slli	a3,a3,0x20
   18b88:	00f677b3          	and	a5,a2,a5
   18b8c:	00e4a023          	sw	a4,0(s1)
   18b90:	00d7e7b3          	or	a5,a5,a3
   18b94:	01813083          	ld	ra,24(sp)
   18b98:	01013403          	ld	s0,16(sp)
   18b9c:	00813483          	ld	s1,8(sp)
   18ba0:	00078513          	mv	a0,a5
   18ba4:	02010113          	addi	sp,sp,32
   18ba8:	00008067          	ret
   18bac:	7381b583          	ld	a1,1848(gp) # 24140 <__SDATA_BEGIN__+0x20>
   18bb0:	155070ef          	jal	ra,20504 <__muldf3>
   18bb4:	42055713          	srai	a4,a0,0x20
   18bb8:	00070693          	mv	a3,a4
   18bbc:	00050793          	mv	a5,a0
   18bc0:	00877733          	and	a4,a4,s0
   18bc4:	fca00593          	li	a1,-54
   18bc8:	f95ff06f          	j	18b5c <frexp+0x58>

0000000000018bcc <_sprintf_r>:
   18bcc:	f0010113          	addi	sp,sp,-256
   18bd0:	0d810e93          	addi	t4,sp,216
   18bd4:	0ef13423          	sd	a5,232(sp)
   18bd8:	80000337          	lui	t1,0x80000
   18bdc:	ffff07b7          	lui	a5,0xffff0
   18be0:	00058e13          	mv	t3,a1
   18be4:	fff34313          	not	t1,t1
   18be8:	0cd13c23          	sd	a3,216(sp)
   18bec:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcc000>
   18bf0:	01010593          	addi	a1,sp,16
   18bf4:	000e8693          	mv	a3,t4
   18bf8:	0c113423          	sd	ra,200(sp)
   18bfc:	02f12023          	sw	a5,32(sp)
   18c00:	0ee13023          	sd	a4,224(sp)
   18c04:	0f013823          	sd	a6,240(sp)
   18c08:	0f113c23          	sd	a7,248(sp)
   18c0c:	01c13823          	sd	t3,16(sp)
   18c10:	03c13423          	sd	t3,40(sp)
   18c14:	00612e23          	sw	t1,28(sp)
   18c18:	02612823          	sw	t1,48(sp)
   18c1c:	01d13423          	sd	t4,8(sp)
   18c20:	570000ef          	jal	ra,19190 <_svfprintf_r>
   18c24:	01013783          	ld	a5,16(sp)
   18c28:	00078023          	sb	zero,0(a5)
   18c2c:	0c813083          	ld	ra,200(sp)
   18c30:	10010113          	addi	sp,sp,256
   18c34:	00008067          	ret

0000000000018c38 <sprintf>:
   18c38:	00050e13          	mv	t3,a0
   18c3c:	f0010113          	addi	sp,sp,-256
   18c40:	7581b503          	ld	a0,1880(gp) # 24160 <_impure_ptr>
   18c44:	0d010e93          	addi	t4,sp,208
   18c48:	0ef13423          	sd	a5,232(sp)
   18c4c:	80000337          	lui	t1,0x80000
   18c50:	ffff07b7          	lui	a5,0xffff0
   18c54:	fff34313          	not	t1,t1
   18c58:	0cc13823          	sd	a2,208(sp)
   18c5c:	0cd13c23          	sd	a3,216(sp)
   18c60:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcc000>
   18c64:	00058613          	mv	a2,a1
   18c68:	000e8693          	mv	a3,t4
   18c6c:	01010593          	addi	a1,sp,16
   18c70:	0c113423          	sd	ra,200(sp)
   18c74:	02f12023          	sw	a5,32(sp)
   18c78:	0ee13023          	sd	a4,224(sp)
   18c7c:	0f013823          	sd	a6,240(sp)
   18c80:	0f113c23          	sd	a7,248(sp)
   18c84:	01c13823          	sd	t3,16(sp)
   18c88:	03c13423          	sd	t3,40(sp)
   18c8c:	00612e23          	sw	t1,28(sp)
   18c90:	02612823          	sw	t1,48(sp)
   18c94:	01d13423          	sd	t4,8(sp)
   18c98:	4f8000ef          	jal	ra,19190 <_svfprintf_r>
   18c9c:	01013783          	ld	a5,16(sp)
   18ca0:	00078023          	sb	zero,0(a5)
   18ca4:	0c813083          	ld	ra,200(sp)
   18ca8:	10010113          	addi	sp,sp,256
   18cac:	00008067          	ret

0000000000018cb0 <__sread>:
   18cb0:	ff010113          	addi	sp,sp,-16
   18cb4:	00813023          	sd	s0,0(sp)
   18cb8:	00058413          	mv	s0,a1
   18cbc:	01259583          	lh	a1,18(a1)
   18cc0:	00113423          	sd	ra,8(sp)
   18cc4:	67d040ef          	jal	ra,1db40 <_read_r>
   18cc8:	02054063          	bltz	a0,18ce8 <__sread+0x38>
   18ccc:	09043783          	ld	a5,144(s0) # ffffffff80000090 <__BSS_END__+0xffffffff7ffdbe88>
   18cd0:	00813083          	ld	ra,8(sp)
   18cd4:	00a787b3          	add	a5,a5,a0
   18cd8:	08f43823          	sd	a5,144(s0)
   18cdc:	00013403          	ld	s0,0(sp)
   18ce0:	01010113          	addi	sp,sp,16
   18ce4:	00008067          	ret
   18ce8:	01045783          	lhu	a5,16(s0)
   18cec:	fffff737          	lui	a4,0xfffff
   18cf0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdadf7>
   18cf4:	00e7f7b3          	and	a5,a5,a4
   18cf8:	00813083          	ld	ra,8(sp)
   18cfc:	00f41823          	sh	a5,16(s0)
   18d00:	00013403          	ld	s0,0(sp)
   18d04:	01010113          	addi	sp,sp,16
   18d08:	00008067          	ret

0000000000018d0c <__seofread>:
   18d0c:	00000513          	li	a0,0
   18d10:	00008067          	ret

0000000000018d14 <__swrite>:
   18d14:	01059783          	lh	a5,16(a1)
   18d18:	fd010113          	addi	sp,sp,-48
   18d1c:	02813023          	sd	s0,32(sp)
   18d20:	00913c23          	sd	s1,24(sp)
   18d24:	01213823          	sd	s2,16(sp)
   18d28:	01313423          	sd	s3,8(sp)
   18d2c:	02113423          	sd	ra,40(sp)
   18d30:	1007f713          	andi	a4,a5,256
   18d34:	00058413          	mv	s0,a1
   18d38:	00050493          	mv	s1,a0
   18d3c:	00060913          	mv	s2,a2
   18d40:	00068993          	mv	s3,a3
   18d44:	04071063          	bnez	a4,18d84 <__swrite+0x70>
   18d48:	fffff737          	lui	a4,0xfffff
   18d4c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdadf7>
   18d50:	00e7f7b3          	and	a5,a5,a4
   18d54:	01241583          	lh	a1,18(s0)
   18d58:	00f41823          	sh	a5,16(s0)
   18d5c:	02013403          	ld	s0,32(sp)
   18d60:	02813083          	ld	ra,40(sp)
   18d64:	00098693          	mv	a3,s3
   18d68:	00090613          	mv	a2,s2
   18d6c:	00813983          	ld	s3,8(sp)
   18d70:	01013903          	ld	s2,16(sp)
   18d74:	00048513          	mv	a0,s1
   18d78:	01813483          	ld	s1,24(sp)
   18d7c:	03010113          	addi	sp,sp,48
   18d80:	6e90306f          	j	1cc68 <_write_r>
   18d84:	01259583          	lh	a1,18(a1)
   18d88:	00200693          	li	a3,2
   18d8c:	00000613          	li	a2,0
   18d90:	289040ef          	jal	ra,1d818 <_lseek_r>
   18d94:	01041783          	lh	a5,16(s0)
   18d98:	fb1ff06f          	j	18d48 <__swrite+0x34>

0000000000018d9c <__sseek>:
   18d9c:	ff010113          	addi	sp,sp,-16
   18da0:	00813023          	sd	s0,0(sp)
   18da4:	00058413          	mv	s0,a1
   18da8:	01259583          	lh	a1,18(a1)
   18dac:	00113423          	sd	ra,8(sp)
   18db0:	269040ef          	jal	ra,1d818 <_lseek_r>
   18db4:	fff00793          	li	a5,-1
   18db8:	02f50863          	beq	a0,a5,18de8 <__sseek+0x4c>
   18dbc:	01045783          	lhu	a5,16(s0)
   18dc0:	00001737          	lui	a4,0x1
   18dc4:	00813083          	ld	ra,8(sp)
   18dc8:	00e7e7b3          	or	a5,a5,a4
   18dcc:	0107979b          	slliw	a5,a5,0x10
   18dd0:	4107d79b          	sraiw	a5,a5,0x10
   18dd4:	08a43823          	sd	a0,144(s0)
   18dd8:	00f41823          	sh	a5,16(s0)
   18ddc:	00013403          	ld	s0,0(sp)
   18de0:	01010113          	addi	sp,sp,16
   18de4:	00008067          	ret
   18de8:	01045783          	lhu	a5,16(s0)
   18dec:	fffff737          	lui	a4,0xfffff
   18df0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdadf7>
   18df4:	00e7f7b3          	and	a5,a5,a4
   18df8:	0107979b          	slliw	a5,a5,0x10
   18dfc:	4107d79b          	sraiw	a5,a5,0x10
   18e00:	00813083          	ld	ra,8(sp)
   18e04:	00f41823          	sh	a5,16(s0)
   18e08:	00013403          	ld	s0,0(sp)
   18e0c:	01010113          	addi	sp,sp,16
   18e10:	00008067          	ret

0000000000018e14 <__sclose>:
   18e14:	01259583          	lh	a1,18(a1)
   18e18:	0f40406f          	j	1cf0c <_close_r>

0000000000018e1c <strcmp>:
   18e1c:	00b56733          	or	a4,a0,a1
   18e20:	fff00393          	li	t2,-1
   18e24:	00777713          	andi	a4,a4,7
   18e28:	0c071c63          	bnez	a4,18f00 <strcmp+0xe4>
   18e2c:	0000b797          	auipc	a5,0xb
   18e30:	31c7b783          	ld	a5,796(a5) # 24148 <mask>
   18e34:	00053603          	ld	a2,0(a0)
   18e38:	0005b683          	ld	a3,0(a1)
   18e3c:	00f672b3          	and	t0,a2,a5
   18e40:	00f66333          	or	t1,a2,a5
   18e44:	00f282b3          	add	t0,t0,a5
   18e48:	0062e2b3          	or	t0,t0,t1
   18e4c:	0c729e63          	bne	t0,t2,18f28 <strcmp+0x10c>
   18e50:	04d61663          	bne	a2,a3,18e9c <strcmp+0x80>
   18e54:	00853603          	ld	a2,8(a0)
   18e58:	0085b683          	ld	a3,8(a1)
   18e5c:	00f672b3          	and	t0,a2,a5
   18e60:	00f66333          	or	t1,a2,a5
   18e64:	00f282b3          	add	t0,t0,a5
   18e68:	0062e2b3          	or	t0,t0,t1
   18e6c:	0a729a63          	bne	t0,t2,18f20 <strcmp+0x104>
   18e70:	02d61663          	bne	a2,a3,18e9c <strcmp+0x80>
   18e74:	01053603          	ld	a2,16(a0)
   18e78:	0105b683          	ld	a3,16(a1)
   18e7c:	00f672b3          	and	t0,a2,a5
   18e80:	00f66333          	or	t1,a2,a5
   18e84:	00f282b3          	add	t0,t0,a5
   18e88:	0062e2b3          	or	t0,t0,t1
   18e8c:	0a729463          	bne	t0,t2,18f34 <strcmp+0x118>
   18e90:	01850513          	addi	a0,a0,24
   18e94:	01858593          	addi	a1,a1,24
   18e98:	f8d60ee3          	beq	a2,a3,18e34 <strcmp+0x18>
   18e9c:	03061713          	slli	a4,a2,0x30
   18ea0:	03069793          	slli	a5,a3,0x30
   18ea4:	02f71a63          	bne	a4,a5,18ed8 <strcmp+0xbc>
   18ea8:	02061713          	slli	a4,a2,0x20
   18eac:	02069793          	slli	a5,a3,0x20
   18eb0:	02f71463          	bne	a4,a5,18ed8 <strcmp+0xbc>
   18eb4:	01061713          	slli	a4,a2,0x10
   18eb8:	01069793          	slli	a5,a3,0x10
   18ebc:	00f71e63          	bne	a4,a5,18ed8 <strcmp+0xbc>
   18ec0:	03065713          	srli	a4,a2,0x30
   18ec4:	0306d793          	srli	a5,a3,0x30
   18ec8:	40f70533          	sub	a0,a4,a5
   18ecc:	0ff57593          	zext.b	a1,a0
   18ed0:	02059063          	bnez	a1,18ef0 <strcmp+0xd4>
   18ed4:	00008067          	ret
   18ed8:	03075713          	srli	a4,a4,0x30
   18edc:	0307d793          	srli	a5,a5,0x30
   18ee0:	40f70533          	sub	a0,a4,a5
   18ee4:	0ff57593          	zext.b	a1,a0
   18ee8:	00059463          	bnez	a1,18ef0 <strcmp+0xd4>
   18eec:	00008067          	ret
   18ef0:	0ff77713          	zext.b	a4,a4
   18ef4:	0ff7f793          	zext.b	a5,a5
   18ef8:	40f70533          	sub	a0,a4,a5
   18efc:	00008067          	ret
   18f00:	00054603          	lbu	a2,0(a0)
   18f04:	0005c683          	lbu	a3,0(a1)
   18f08:	00150513          	addi	a0,a0,1
   18f0c:	00158593          	addi	a1,a1,1
   18f10:	00d61463          	bne	a2,a3,18f18 <strcmp+0xfc>
   18f14:	fe0616e3          	bnez	a2,18f00 <strcmp+0xe4>
   18f18:	40d60533          	sub	a0,a2,a3
   18f1c:	00008067          	ret
   18f20:	00850513          	addi	a0,a0,8
   18f24:	00858593          	addi	a1,a1,8
   18f28:	fcd61ce3          	bne	a2,a3,18f00 <strcmp+0xe4>
   18f2c:	00000513          	li	a0,0
   18f30:	00008067          	ret
   18f34:	01050513          	addi	a0,a0,16
   18f38:	01058593          	addi	a1,a1,16
   18f3c:	fcd612e3          	bne	a2,a3,18f00 <strcmp+0xe4>
   18f40:	00000513          	li	a0,0
   18f44:	00008067          	ret

0000000000018f48 <strcpy>:
   18f48:	00b567b3          	or	a5,a0,a1
   18f4c:	0077f793          	andi	a5,a5,7
   18f50:	0a079463          	bnez	a5,18ff8 <strcpy+0xb0>
   18f54:	7401b683          	ld	a3,1856(gp) # 24148 <mask>
   18f58:	0005b703          	ld	a4,0(a1)
   18f5c:	fff00613          	li	a2,-1
   18f60:	00d777b3          	and	a5,a4,a3
   18f64:	00d787b3          	add	a5,a5,a3
   18f68:	00e7e7b3          	or	a5,a5,a4
   18f6c:	00d7e7b3          	or	a5,a5,a3
   18f70:	0ac79263          	bne	a5,a2,19014 <strcpy+0xcc>
   18f74:	00050613          	mv	a2,a0
   18f78:	fff00813          	li	a6,-1
   18f7c:	00e63023          	sd	a4,0(a2) # 3fe00000 <__BSS_END__+0x3fddbdf8>
   18f80:	0085b703          	ld	a4,8(a1)
   18f84:	00858593          	addi	a1,a1,8
   18f88:	00860613          	addi	a2,a2,8
   18f8c:	00d777b3          	and	a5,a4,a3
   18f90:	00d787b3          	add	a5,a5,a3
   18f94:	00e7e7b3          	or	a5,a5,a4
   18f98:	00d7e7b3          	or	a5,a5,a3
   18f9c:	ff0780e3          	beq	a5,a6,18f7c <strcpy+0x34>
   18fa0:	0005c783          	lbu	a5,0(a1)
   18fa4:	0015c703          	lbu	a4,1(a1)
   18fa8:	0025c683          	lbu	a3,2(a1)
   18fac:	00f60023          	sb	a5,0(a2)
   18fb0:	04078263          	beqz	a5,18ff4 <strcpy+0xac>
   18fb4:	00e600a3          	sb	a4,1(a2)
   18fb8:	02070e63          	beqz	a4,18ff4 <strcpy+0xac>
   18fbc:	0035c783          	lbu	a5,3(a1)
   18fc0:	00d60123          	sb	a3,2(a2)
   18fc4:	02068863          	beqz	a3,18ff4 <strcpy+0xac>
   18fc8:	0045c703          	lbu	a4,4(a1)
   18fcc:	00f601a3          	sb	a5,3(a2)
   18fd0:	02078263          	beqz	a5,18ff4 <strcpy+0xac>
   18fd4:	0055c783          	lbu	a5,5(a1)
   18fd8:	00e60223          	sb	a4,4(a2)
   18fdc:	00070c63          	beqz	a4,18ff4 <strcpy+0xac>
   18fe0:	0065c703          	lbu	a4,6(a1)
   18fe4:	00f602a3          	sb	a5,5(a2)
   18fe8:	00078663          	beqz	a5,18ff4 <strcpy+0xac>
   18fec:	00e60323          	sb	a4,6(a2)
   18ff0:	02071663          	bnez	a4,1901c <strcpy+0xd4>
   18ff4:	00008067          	ret
   18ff8:	00050793          	mv	a5,a0
   18ffc:	0005c703          	lbu	a4,0(a1)
   19000:	00178793          	addi	a5,a5,1
   19004:	00158593          	addi	a1,a1,1
   19008:	fee78fa3          	sb	a4,-1(a5)
   1900c:	fe0718e3          	bnez	a4,18ffc <strcpy+0xb4>
   19010:	00008067          	ret
   19014:	00050613          	mv	a2,a0
   19018:	f89ff06f          	j	18fa0 <strcpy+0x58>
   1901c:	000603a3          	sb	zero,7(a2)
   19020:	00008067          	ret

0000000000019024 <strlen>:
   19024:	00757793          	andi	a5,a0,7
   19028:	00050713          	mv	a4,a0
   1902c:	06079a63          	bnez	a5,190a0 <strlen+0x7c>
   19030:	7401b683          	ld	a3,1856(gp) # 24148 <mask>
   19034:	fff00593          	li	a1,-1
   19038:	00073603          	ld	a2,0(a4)
   1903c:	00870713          	addi	a4,a4,8
   19040:	00d677b3          	and	a5,a2,a3
   19044:	00d787b3          	add	a5,a5,a3
   19048:	00c7e7b3          	or	a5,a5,a2
   1904c:	00d7e7b3          	or	a5,a5,a3
   19050:	feb784e3          	beq	a5,a1,19038 <strlen+0x14>
   19054:	ff874683          	lbu	a3,-8(a4)
   19058:	40a707b3          	sub	a5,a4,a0
   1905c:	06068463          	beqz	a3,190c4 <strlen+0xa0>
   19060:	ff974683          	lbu	a3,-7(a4)
   19064:	04068c63          	beqz	a3,190bc <strlen+0x98>
   19068:	ffa74683          	lbu	a3,-6(a4)
   1906c:	06068463          	beqz	a3,190d4 <strlen+0xb0>
   19070:	ffb74683          	lbu	a3,-5(a4)
   19074:	04068c63          	beqz	a3,190cc <strlen+0xa8>
   19078:	ffc74683          	lbu	a3,-4(a4)
   1907c:	06068063          	beqz	a3,190dc <strlen+0xb8>
   19080:	ffd74683          	lbu	a3,-3(a4)
   19084:	06068063          	beqz	a3,190e4 <strlen+0xc0>
   19088:	ffe74503          	lbu	a0,-2(a4)
   1908c:	00a03533          	snez	a0,a0
   19090:	00f50533          	add	a0,a0,a5
   19094:	ffe50513          	addi	a0,a0,-2
   19098:	00008067          	ret
   1909c:	f8068ae3          	beqz	a3,19030 <strlen+0xc>
   190a0:	00074783          	lbu	a5,0(a4)
   190a4:	00170713          	addi	a4,a4,1
   190a8:	00777693          	andi	a3,a4,7
   190ac:	fe0798e3          	bnez	a5,1909c <strlen+0x78>
   190b0:	40a70733          	sub	a4,a4,a0
   190b4:	fff70513          	addi	a0,a4,-1
   190b8:	00008067          	ret
   190bc:	ff978513          	addi	a0,a5,-7
   190c0:	00008067          	ret
   190c4:	ff878513          	addi	a0,a5,-8
   190c8:	00008067          	ret
   190cc:	ffb78513          	addi	a0,a5,-5
   190d0:	00008067          	ret
   190d4:	ffa78513          	addi	a0,a5,-6
   190d8:	00008067          	ret
   190dc:	ffc78513          	addi	a0,a5,-4
   190e0:	00008067          	ret
   190e4:	ffd78513          	addi	a0,a5,-3
   190e8:	00008067          	ret

00000000000190ec <strncpy>:
   190ec:	00b567b3          	or	a5,a0,a1
   190f0:	0077f793          	andi	a5,a5,7
   190f4:	00079663          	bnez	a5,19100 <strncpy+0x14>
   190f8:	00700793          	li	a5,7
   190fc:	04c7e663          	bltu	a5,a2,19148 <strncpy+0x5c>
   19100:	00050713          	mv	a4,a0
   19104:	01c0006f          	j	19120 <strncpy+0x34>
   19108:	fff5c683          	lbu	a3,-1(a1)
   1910c:	fff60813          	addi	a6,a2,-1
   19110:	fed78fa3          	sb	a3,-1(a5)
   19114:	00068e63          	beqz	a3,19130 <strncpy+0x44>
   19118:	00078713          	mv	a4,a5
   1911c:	00080613          	mv	a2,a6
   19120:	00158593          	addi	a1,a1,1
   19124:	00170793          	addi	a5,a4,1
   19128:	fe0610e3          	bnez	a2,19108 <strncpy+0x1c>
   1912c:	00008067          	ret
   19130:	00c70733          	add	a4,a4,a2
   19134:	04080c63          	beqz	a6,1918c <strncpy+0xa0>
   19138:	00178793          	addi	a5,a5,1
   1913c:	fe078fa3          	sb	zero,-1(a5)
   19140:	fee79ce3          	bne	a5,a4,19138 <strncpy+0x4c>
   19144:	00008067          	ret
   19148:	7181b303          	ld	t1,1816(gp) # 24120 <__SDATA_BEGIN__>
   1914c:	7201b883          	ld	a7,1824(gp) # 24128 <__SDATA_BEGIN__+0x8>
   19150:	00050713          	mv	a4,a0
   19154:	00700e13          	li	t3,7
   19158:	0180006f          	j	19170 <strncpy+0x84>
   1915c:	00d73023          	sd	a3,0(a4)
   19160:	ff860613          	addi	a2,a2,-8
   19164:	00870713          	addi	a4,a4,8
   19168:	00858593          	addi	a1,a1,8
   1916c:	face7ae3          	bgeu	t3,a2,19120 <strncpy+0x34>
   19170:	0005b683          	ld	a3,0(a1)
   19174:	006687b3          	add	a5,a3,t1
   19178:	fff6c813          	not	a6,a3
   1917c:	0107f7b3          	and	a5,a5,a6
   19180:	0117f7b3          	and	a5,a5,a7
   19184:	fc078ce3          	beqz	a5,1915c <strncpy+0x70>
   19188:	f99ff06f          	j	19120 <strncpy+0x34>
   1918c:	00008067          	ret

0000000000019190 <_svfprintf_r>:
   19190:	d9010113          	addi	sp,sp,-624
   19194:	26113423          	sd	ra,616(sp)
   19198:	26813023          	sd	s0,608(sp)
   1919c:	25213823          	sd	s2,592(sp)
   191a0:	00058413          	mv	s0,a1
   191a4:	00b13023          	sd	a1,0(sp)
   191a8:	00060913          	mv	s2,a2
   191ac:	02d13023          	sd	a3,32(sp)
   191b0:	24913c23          	sd	s1,600(sp)
   191b4:	25313423          	sd	s3,584(sp)
   191b8:	25413023          	sd	s4,576(sp)
   191bc:	23513c23          	sd	s5,568(sp)
   191c0:	23613823          	sd	s6,560(sp)
   191c4:	23713423          	sd	s7,552(sp)
   191c8:	23813023          	sd	s8,544(sp)
   191cc:	21913c23          	sd	s9,536(sp)
   191d0:	21a13823          	sd	s10,528(sp)
   191d4:	21b13423          	sd	s11,520(sp)
   191d8:	04a13823          	sd	a0,80(sp)
   191dc:	901fd0ef          	jal	ra,16adc <_localeconv_r>
   191e0:	00053703          	ld	a4,0(a0)
   191e4:	00070513          	mv	a0,a4
   191e8:	06e13023          	sd	a4,96(sp)
   191ec:	e39ff0ef          	jal	ra,19024 <strlen>
   191f0:	01045703          	lhu	a4,16(s0)
   191f4:	0e013823          	sd	zero,240(sp)
   191f8:	0e013c23          	sd	zero,248(sp)
   191fc:	08077713          	andi	a4,a4,128
   19200:	04a13c23          	sd	a0,88(sp)
   19204:	00070863          	beqz	a4,19214 <_svfprintf_r+0x84>
   19208:	01843703          	ld	a4,24(s0)
   1920c:	00071463          	bnez	a4,19214 <_svfprintf_r+0x84>
   19210:	3540106f          	j	1a564 <_svfprintf_r+0x13d4>
   19214:	18010793          	addi	a5,sp,384
   19218:	00022737          	lui	a4,0x22
   1921c:	00078313          	mv	t1,a5
   19220:	10f13023          	sd	a5,256(sp)
   19224:	00090b13          	mv	s6,s2
   19228:	6b870793          	addi	a5,a4,1720 # 226b8 <__mprec_tens+0xc8>
   1922c:	00023737          	lui	a4,0x23
   19230:	02f13423          	sd	a5,40(sp)
   19234:	8c070793          	addi	a5,a4,-1856 # 228c0 <zeroes.0>
   19238:	000b4703          	lbu	a4,0(s6)
   1923c:	10013823          	sd	zero,272(sp)
   19240:	10012423          	sw	zero,264(sp)
   19244:	02013c23          	sd	zero,56(sp)
   19248:	06013423          	sd	zero,104(sp)
   1924c:	06013823          	sd	zero,112(sp)
   19250:	06013c23          	sd	zero,120(sp)
   19254:	08013023          	sd	zero,128(sp)
   19258:	08013423          	sd	zero,136(sp)
   1925c:	00013823          	sd	zero,16(sp)
   19260:	00f13423          	sd	a5,8(sp)
   19264:	05013983          	ld	s3,80(sp)
   19268:	00030413          	mv	s0,t1
   1926c:	24070063          	beqz	a4,194ac <_svfprintf_r+0x31c>
   19270:	000b0493          	mv	s1,s6
   19274:	02500693          	li	a3,37
   19278:	2ad70263          	beq	a4,a3,1951c <_svfprintf_r+0x38c>
   1927c:	0014c703          	lbu	a4,1(s1)
   19280:	00148493          	addi	s1,s1,1
   19284:	fe071ae3          	bnez	a4,19278 <_svfprintf_r+0xe8>
   19288:	4164893b          	subw	s2,s1,s6
   1928c:	22090063          	beqz	s2,194ac <_svfprintf_r+0x31c>
   19290:	11013d83          	ld	s11,272(sp)
   19294:	10812683          	lw	a3,264(sp)
   19298:	01643023          	sd	s6,0(s0)
   1929c:	012d8733          	add	a4,s11,s2
   192a0:	0016861b          	addiw	a2,a3,1
   192a4:	01243423          	sd	s2,8(s0)
   192a8:	10e13823          	sd	a4,272(sp)
   192ac:	10c12423          	sw	a2,264(sp)
   192b0:	00700713          	li	a4,7
   192b4:	01040413          	addi	s0,s0,16
   192b8:	26c74a63          	blt	a4,a2,1952c <_svfprintf_r+0x39c>
   192bc:	01013783          	ld	a5,16(sp)
   192c0:	0004c703          	lbu	a4,0(s1)
   192c4:	012787bb          	addw	a5,a5,s2
   192c8:	00f13823          	sd	a5,16(sp)
   192cc:	1e070063          	beqz	a4,194ac <_svfprintf_r+0x31c>
   192d0:	fff00313          	li	t1,-1
   192d4:	0014ce03          	lbu	t3,1(s1)
   192d8:	0c0107a3          	sb	zero,207(sp)
   192dc:	00148493          	addi	s1,s1,1
   192e0:	00000a13          	li	s4,0
   192e4:	00000913          	li	s2,0
   192e8:	05a00b93          	li	s7,90
   192ec:	00030a93          	mv	s5,t1
   192f0:	00148493          	addi	s1,s1,1
   192f4:	000e0c9b          	sext.w	s9,t3
   192f8:	fe0c879b          	addiw	a5,s9,-32
   192fc:	0007871b          	sext.w	a4,a5
   19300:	04ebec63          	bltu	s7,a4,19358 <_svfprintf_r+0x1c8>
   19304:	02079713          	slli	a4,a5,0x20
   19308:	01e75793          	srli	a5,a4,0x1e
   1930c:	02813703          	ld	a4,40(sp)
   19310:	00e787b3          	add	a5,a5,a4
   19314:	0007a783          	lw	a5,0(a5)
   19318:	00078067          	jr	a5
   1931c:	00000a13          	li	s4,0
   19320:	00900693          	li	a3,9
   19324:	0004c703          	lbu	a4,0(s1)
   19328:	002a179b          	slliw	a5,s4,0x2
   1932c:	01478a3b          	addw	s4,a5,s4
   19330:	fd0c8c9b          	addiw	s9,s9,-48
   19334:	001a1a1b          	slliw	s4,s4,0x1
   19338:	fd07079b          	addiw	a5,a4,-48
   1933c:	014c8a3b          	addw	s4,s9,s4
   19340:	00148493          	addi	s1,s1,1
   19344:	00070c9b          	sext.w	s9,a4
   19348:	fcf6fee3          	bgeu	a3,a5,19324 <_svfprintf_r+0x194>
   1934c:	fe0c879b          	addiw	a5,s9,-32
   19350:	0007871b          	sext.w	a4,a5
   19354:	faebf8e3          	bgeu	s7,a4,19304 <_svfprintf_r+0x174>
   19358:	140c8a63          	beqz	s9,194ac <_svfprintf_r+0x31c>
   1935c:	11910c23          	sb	s9,280(sp)
   19360:	0c0107a3          	sb	zero,207(sp)
   19364:	00100c13          	li	s8,1
   19368:	00100d13          	li	s10,1
   1936c:	11810b13          	addi	s6,sp,280
   19370:	00013c23          	sd	zero,24(sp)
   19374:	00000313          	li	t1,0
   19378:	04013423          	sd	zero,72(sp)
   1937c:	04013023          	sd	zero,64(sp)
   19380:	02013823          	sd	zero,48(sp)
   19384:	00297b93          	andi	s7,s2,2
   19388:	000b8463          	beqz	s7,19390 <_svfprintf_r+0x200>
   1938c:	002c0c1b          	addiw	s8,s8,2
   19390:	08497a93          	andi	s5,s2,132
   19394:	000a9663          	bnez	s5,193a0 <_svfprintf_r+0x210>
   19398:	418a073b          	subw	a4,s4,s8
   1939c:	30e042e3          	bgtz	a4,19ea0 <_svfprintf_r+0xd10>
   193a0:	0cf14703          	lbu	a4,207(sp)
   193a4:	11013d83          	ld	s11,272(sp)
   193a8:	02070c63          	beqz	a4,193e0 <_svfprintf_r+0x250>
   193ac:	10812603          	lw	a2,264(sp)
   193b0:	0cf10593          	addi	a1,sp,207
   193b4:	00b43023          	sd	a1,0(s0)
   193b8:	0016061b          	addiw	a2,a2,1
   193bc:	00100593          	li	a1,1
   193c0:	001d8d93          	addi	s11,s11,1
   193c4:	00b43423          	sd	a1,8(s0)
   193c8:	10c12423          	sw	a2,264(sp)
   193cc:	0006059b          	sext.w	a1,a2
   193d0:	11b13823          	sd	s11,272(sp)
   193d4:	00700613          	li	a2,7
   193d8:	01040413          	addi	s0,s0,16
   193dc:	24b64c63          	blt	a2,a1,19634 <_svfprintf_r+0x4a4>
   193e0:	020b8c63          	beqz	s7,19418 <_svfprintf_r+0x288>
   193e4:	10812603          	lw	a2,264(sp)
   193e8:	00200593          	li	a1,2
   193ec:	002d8d93          	addi	s11,s11,2
   193f0:	0016061b          	addiw	a2,a2,1
   193f4:	0d010793          	addi	a5,sp,208
   193f8:	00b43423          	sd	a1,8(s0)
   193fc:	00f43023          	sd	a5,0(s0)
   19400:	0006059b          	sext.w	a1,a2
   19404:	10c12423          	sw	a2,264(sp)
   19408:	11b13823          	sd	s11,272(sp)
   1940c:	00700613          	li	a2,7
   19410:	01040413          	addi	s0,s0,16
   19414:	38b642e3          	blt	a2,a1,19f98 <_svfprintf_r+0xe08>
   19418:	08000613          	li	a2,128
   1941c:	08ca8ce3          	beq	s5,a2,19cb4 <_svfprintf_r+0xb24>
   19420:	41a30bbb          	subw	s7,t1,s10
   19424:	17704ce3          	bgtz	s7,19d9c <_svfprintf_r+0xc0c>
   19428:	10097613          	andi	a2,s2,256
   1942c:	6c061463          	bnez	a2,19af4 <_svfprintf_r+0x964>
   19430:	10812603          	lw	a2,264(sp)
   19434:	01bd0733          	add	a4,s10,s11
   19438:	01643023          	sd	s6,0(s0)
   1943c:	0016069b          	addiw	a3,a2,1
   19440:	01a43423          	sd	s10,8(s0)
   19444:	10e13823          	sd	a4,272(sp)
   19448:	10d12423          	sw	a3,264(sp)
   1944c:	00700793          	li	a5,7
   19450:	2ed7c663          	blt	a5,a3,1973c <_svfprintf_r+0x5ac>
   19454:	01040413          	addi	s0,s0,16
   19458:	00497913          	andi	s2,s2,4
   1945c:	00090663          	beqz	s2,19468 <_svfprintf_r+0x2d8>
   19460:	418a093b          	subw	s2,s4,s8
   19464:	35204ee3          	bgtz	s2,19fc0 <_svfprintf_r+0xe30>
   19468:	000a0793          	mv	a5,s4
   1946c:	018a5463          	bge	s4,s8,19474 <_svfprintf_r+0x2e4>
   19470:	000c0793          	mv	a5,s8
   19474:	01013683          	ld	a3,16(sp)
   19478:	00d787bb          	addw	a5,a5,a3
   1947c:	00f13823          	sd	a5,16(sp)
   19480:	1e071ce3          	bnez	a4,19e78 <_svfprintf_r+0xce8>
   19484:	01813783          	ld	a5,24(sp)
   19488:	10012423          	sw	zero,264(sp)
   1948c:	00078863          	beqz	a5,1949c <_svfprintf_r+0x30c>
   19490:	01813583          	ld	a1,24(sp)
   19494:	00098513          	mv	a0,s3
   19498:	cfcfa0ef          	jal	ra,13994 <_free_r>
   1949c:	18010413          	addi	s0,sp,384
   194a0:	00048b13          	mv	s6,s1
   194a4:	000b4703          	lbu	a4,0(s6)
   194a8:	dc0714e3          	bnez	a4,19270 <_svfprintf_r+0xe0>
   194ac:	11013783          	ld	a5,272(sp)
   194b0:	00078463          	beqz	a5,194b8 <_svfprintf_r+0x328>
   194b4:	2490106f          	j	1aefc <_svfprintf_r+0x1d6c>
   194b8:	00013783          	ld	a5,0(sp)
   194bc:	0107d783          	lhu	a5,16(a5)
   194c0:	0407f793          	andi	a5,a5,64
   194c4:	00078463          	beqz	a5,194cc <_svfprintf_r+0x33c>
   194c8:	0bc0206f          	j	1b584 <_svfprintf_r+0x23f4>
   194cc:	26813083          	ld	ra,616(sp)
   194d0:	26013403          	ld	s0,608(sp)
   194d4:	01013503          	ld	a0,16(sp)
   194d8:	25813483          	ld	s1,600(sp)
   194dc:	25013903          	ld	s2,592(sp)
   194e0:	24813983          	ld	s3,584(sp)
   194e4:	24013a03          	ld	s4,576(sp)
   194e8:	23813a83          	ld	s5,568(sp)
   194ec:	23013b03          	ld	s6,560(sp)
   194f0:	22813b83          	ld	s7,552(sp)
   194f4:	22013c03          	ld	s8,544(sp)
   194f8:	21813c83          	ld	s9,536(sp)
   194fc:	21013d03          	ld	s10,528(sp)
   19500:	20813d83          	ld	s11,520(sp)
   19504:	27010113          	addi	sp,sp,624
   19508:	00008067          	ret
   1950c:	01096913          	ori	s2,s2,16
   19510:	0004ce03          	lbu	t3,0(s1)
   19514:	0009091b          	sext.w	s2,s2
   19518:	dd9ff06f          	j	192f0 <_svfprintf_r+0x160>
   1951c:	4164893b          	subw	s2,s1,s6
   19520:	d60918e3          	bnez	s2,19290 <_svfprintf_r+0x100>
   19524:	0004c703          	lbu	a4,0(s1)
   19528:	da5ff06f          	j	192cc <_svfprintf_r+0x13c>
   1952c:	00013583          	ld	a1,0(sp)
   19530:	10010613          	addi	a2,sp,256
   19534:	00098513          	mv	a0,s3
   19538:	581040ef          	jal	ra,1e2b8 <__ssprint_r>
   1953c:	f6051ee3          	bnez	a0,194b8 <_svfprintf_r+0x328>
   19540:	18010413          	addi	s0,sp,384
   19544:	d79ff06f          	j	192bc <_svfprintf_r+0x12c>
   19548:	00897713          	andi	a4,s2,8
   1954c:	000a8313          	mv	t1,s5
   19550:	6e0714e3          	bnez	a4,1a438 <_svfprintf_r+0x12a8>
   19554:	02013783          	ld	a5,32(sp)
   19558:	01513c23          	sd	s5,24(sp)
   1955c:	0007b503          	ld	a0,0(a5)
   19560:	00878a93          	addi	s5,a5,8
   19564:	03513023          	sd	s5,32(sp)
   19568:	6d8080ef          	jal	ra,21c40 <__extenddftf2>
   1956c:	01813303          	ld	t1,24(sp)
   19570:	00050713          	mv	a4,a0
   19574:	0f010513          	addi	a0,sp,240
   19578:	00613c23          	sd	t1,24(sp)
   1957c:	0ee13823          	sd	a4,240(sp)
   19580:	0eb13c23          	sd	a1,248(sp)
   19584:	ce8fd0ef          	jal	ra,16a6c <_ldcheck>
   19588:	0ca12c23          	sw	a0,216(sp)
   1958c:	00200713          	li	a4,2
   19590:	01813303          	ld	t1,24(sp)
   19594:	00e51463          	bne	a0,a4,1959c <_svfprintf_r+0x40c>
   19598:	5040106f          	j	1aa9c <_svfprintf_r+0x190c>
   1959c:	00100713          	li	a4,1
   195a0:	00e51463          	bne	a0,a4,195a8 <_svfprintf_r+0x418>
   195a4:	6900106f          	j	1ac34 <_svfprintf_r+0x1aa4>
   195a8:	06100713          	li	a4,97
   195ac:	00ec9463          	bne	s9,a4,195b4 <_svfprintf_r+0x424>
   195b0:	4950106f          	j	1b244 <_svfprintf_r+0x20b4>
   195b4:	04100713          	li	a4,65
   195b8:	00ec9463          	bne	s9,a4,195c0 <_svfprintf_r+0x430>
   195bc:	6810106f          	j	1b43c <_svfprintf_r+0x22ac>
   195c0:	fff00713          	li	a4,-1
   195c4:	00e31463          	bne	t1,a4,195cc <_svfprintf_r+0x43c>
   195c8:	1890106f          	j	1af50 <_svfprintf_r+0x1dc0>
   195cc:	fdfcf713          	andi	a4,s9,-33
   195d0:	04700693          	li	a3,71
   195d4:	00d71463          	bne	a4,a3,195dc <_svfprintf_r+0x44c>
   195d8:	7b90106f          	j	1b590 <_svfprintf_r+0x2400>
   195dc:	10096713          	ori	a4,s2,256
   195e0:	0f813c03          	ld	s8,248(sp)
   195e4:	0007079b          	sext.w	a5,a4
   195e8:	08f13823          	sd	a5,144(sp)
   195ec:	05213023          	sd	s2,64(sp)
   195f0:	0f013b83          	ld	s7,240(sp)
   195f4:	000c5463          	bgez	s8,195fc <_svfprintf_r+0x46c>
   195f8:	5010106f          	j	1b2f8 <_svfprintf_r+0x2168>
   195fc:	08013c23          	sd	zero,152(sp)
   19600:	00013c23          	sd	zero,24(sp)
   19604:	fbfc871b          	addiw	a4,s9,-65
   19608:	0007061b          	sext.w	a2,a4
   1960c:	02500693          	li	a3,37
   19610:	00c6f463          	bgeu	a3,a2,19618 <_svfprintf_r+0x488>
   19614:	7000106f          	j	1ad14 <_svfprintf_r+0x1b84>
   19618:	02071693          	slli	a3,a4,0x20
   1961c:	01e6d713          	srli	a4,a3,0x1e
   19620:	000236b7          	lui	a3,0x23
   19624:	82468693          	addi	a3,a3,-2012 # 22824 <__mprec_tens+0x234>
   19628:	00d70733          	add	a4,a4,a3
   1962c:	00072703          	lw	a4,0(a4)
   19630:	00070067          	jr	a4
   19634:	00013583          	ld	a1,0(sp)
   19638:	10010613          	addi	a2,sp,256
   1963c:	00098513          	mv	a0,s3
   19640:	08613823          	sd	t1,144(sp)
   19644:	475040ef          	jal	ra,1e2b8 <__ssprint_r>
   19648:	040512e3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1964c:	11013d83          	ld	s11,272(sp)
   19650:	09013303          	ld	t1,144(sp)
   19654:	18010413          	addi	s0,sp,384
   19658:	d89ff06f          	j	193e0 <_svfprintf_r+0x250>
   1965c:	03813783          	ld	a5,56(sp)
   19660:	00100693          	li	a3,1
   19664:	01040c93          	addi	s9,s0,16
   19668:	38f6dae3          	bge	a3,a5,1a1fc <_svfprintf_r+0x106c>
   1966c:	10812603          	lw	a2,264(sp)
   19670:	00100693          	li	a3,1
   19674:	001d8713          	addi	a4,s11,1
   19678:	0016061b          	addiw	a2,a2,1
   1967c:	00d43423          	sd	a3,8(s0)
   19680:	10c12423          	sw	a2,264(sp)
   19684:	0006069b          	sext.w	a3,a2
   19688:	01643023          	sd	s6,0(s0)
   1968c:	10e13823          	sd	a4,272(sp)
   19690:	00700613          	li	a2,7
   19694:	4ed64ae3          	blt	a2,a3,1a388 <_svfprintf_r+0x11f8>
   19698:	05813783          	ld	a5,88(sp)
   1969c:	0016841b          	addiw	s0,a3,1
   196a0:	10812423          	sw	s0,264(sp)
   196a4:	00e78d33          	add	s10,a5,a4
   196a8:	06013703          	ld	a4,96(sp)
   196ac:	00fcb423          	sd	a5,8(s9)
   196b0:	11a13823          	sd	s10,272(sp)
   196b4:	00ecb023          	sd	a4,0(s9)
   196b8:	00700713          	li	a4,7
   196bc:	010c8c93          	addi	s9,s9,16
   196c0:	4e8746e3          	blt	a4,s0,1a3ac <_svfprintf_r+0x121c>
   196c4:	0f013503          	ld	a0,240(sp)
   196c8:	0f813583          	ld	a1,248(sp)
   196cc:	00000613          	li	a2,0
   196d0:	00000693          	li	a3,0
   196d4:	1c0070ef          	jal	ra,20894 <__eqtf2>
   196d8:	03813783          	ld	a5,56(sp)
   196dc:	fff78a9b          	addiw	s5,a5,-1
   196e0:	360508e3          	beqz	a0,1a250 <_svfprintf_r+0x10c0>
   196e4:	001b0793          	addi	a5,s6,1
   196e8:	0014041b          	addiw	s0,s0,1
   196ec:	015d0d33          	add	s10,s10,s5
   196f0:	00fcb023          	sd	a5,0(s9)
   196f4:	015cb423          	sd	s5,8(s9)
   196f8:	11a13823          	sd	s10,272(sp)
   196fc:	10812423          	sw	s0,264(sp)
   19700:	00700793          	li	a5,7
   19704:	3287c4e3          	blt	a5,s0,1a22c <_svfprintf_r+0x109c>
   19708:	010c8c93          	addi	s9,s9,16
   1970c:	07013683          	ld	a3,112(sp)
   19710:	0014041b          	addiw	s0,s0,1
   19714:	0e010793          	addi	a5,sp,224
   19718:	01a68733          	add	a4,a3,s10
   1971c:	00fcb023          	sd	a5,0(s9)
   19720:	00dcb423          	sd	a3,8(s9)
   19724:	10812423          	sw	s0,264(sp)
   19728:	0004069b          	sext.w	a3,s0
   1972c:	10e13823          	sd	a4,272(sp)
   19730:	00700793          	li	a5,7
   19734:	010c8413          	addi	s0,s9,16
   19738:	d2d7d0e3          	bge	a5,a3,19458 <_svfprintf_r+0x2c8>
   1973c:	00013583          	ld	a1,0(sp)
   19740:	10010613          	addi	a2,sp,256
   19744:	00098513          	mv	a0,s3
   19748:	371040ef          	jal	ra,1e2b8 <__ssprint_r>
   1974c:	74051063          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   19750:	11013703          	ld	a4,272(sp)
   19754:	18010413          	addi	s0,sp,384
   19758:	d01ff06f          	j	19458 <_svfprintf_r+0x2c8>
   1975c:	02013703          	ld	a4,32(sp)
   19760:	0c0107a3          	sb	zero,207(sp)
   19764:	00100c13          	li	s8,1
   19768:	00072783          	lw	a5,0(a4)
   1976c:	00870713          	addi	a4,a4,8
   19770:	02e13023          	sd	a4,32(sp)
   19774:	10f10c23          	sb	a5,280(sp)
   19778:	00100d13          	li	s10,1
   1977c:	11810b13          	addi	s6,sp,280
   19780:	bf1ff06f          	j	19370 <_svfprintf_r+0x1e0>
   19784:	02013783          	ld	a5,32(sp)
   19788:	0c0107a3          	sb	zero,207(sp)
   1978c:	000a8313          	mv	t1,s5
   19790:	0007bb03          	ld	s6,0(a5)
   19794:	00878a93          	addi	s5,a5,8
   19798:	000b1463          	bnez	s6,197a0 <_svfprintf_r+0x610>
   1979c:	35c0106f          	j	1aaf8 <_svfprintf_r+0x1968>
   197a0:	fff00713          	li	a4,-1
   197a4:	66e304e3          	beq	t1,a4,1a60c <_svfprintf_r+0x147c>
   197a8:	00030613          	mv	a2,t1
   197ac:	00000593          	li	a1,0
   197b0:	000b0513          	mv	a0,s6
   197b4:	02613023          	sd	t1,32(sp)
   197b8:	ee9fd0ef          	jal	ra,176a0 <memchr>
   197bc:	00a13c23          	sd	a0,24(sp)
   197c0:	02013303          	ld	t1,32(sp)
   197c4:	00051463          	bnez	a0,197cc <_svfprintf_r+0x63c>
   197c8:	3d10106f          	j	1b398 <_svfprintf_r+0x2208>
   197cc:	01813783          	ld	a5,24(sp)
   197d0:	41678d3b          	subw	s10,a5,s6
   197d4:	0cf14703          	lbu	a4,207(sp)
   197d8:	fffd4813          	not	a6,s10
   197dc:	43f85813          	srai	a6,a6,0x3f
   197e0:	03513023          	sd	s5,32(sp)
   197e4:	00013c23          	sd	zero,24(sp)
   197e8:	04013423          	sd	zero,72(sp)
   197ec:	04013023          	sd	zero,64(sp)
   197f0:	02013823          	sd	zero,48(sp)
   197f4:	01a87c33          	and	s8,a6,s10
   197f8:	00000313          	li	t1,0
   197fc:	b80704e3          	beqz	a4,19384 <_svfprintf_r+0x1f4>
   19800:	001c0c1b          	addiw	s8,s8,1
   19804:	b81ff06f          	j	19384 <_svfprintf_r+0x1f4>
   19808:	02013783          	ld	a5,32(sp)
   1980c:	0007aa03          	lw	s4,0(a5)
   19810:	00878793          	addi	a5,a5,8
   19814:	3c0a5ae3          	bgez	s4,1a3e8 <_svfprintf_r+0x1258>
   19818:	41400a3b          	negw	s4,s4
   1981c:	02f13023          	sd	a5,32(sp)
   19820:	00496913          	ori	s2,s2,4
   19824:	0004ce03          	lbu	t3,0(s1)
   19828:	0009091b          	sext.w	s2,s2
   1982c:	ac5ff06f          	j	192f0 <_svfprintf_r+0x160>
   19830:	02b00793          	li	a5,43
   19834:	0004ce03          	lbu	t3,0(s1)
   19838:	0cf107a3          	sb	a5,207(sp)
   1983c:	ab5ff06f          	j	192f0 <_svfprintf_r+0x160>
   19840:	08096913          	ori	s2,s2,128
   19844:	0004ce03          	lbu	t3,0(s1)
   19848:	0009091b          	sext.w	s2,s2
   1984c:	aa5ff06f          	j	192f0 <_svfprintf_r+0x160>
   19850:	0004cc83          	lbu	s9,0(s1)
   19854:	02a00693          	li	a3,42
   19858:	00148793          	addi	a5,s1,1
   1985c:	00dc9463          	bne	s9,a3,19864 <_svfprintf_r+0x6d4>
   19860:	6ad0106f          	j	1b70c <_svfprintf_r+0x257c>
   19864:	fd0c871b          	addiw	a4,s9,-48
   19868:	00900613          	li	a2,9
   1986c:	00078493          	mv	s1,a5
   19870:	00000a93          	li	s5,0
   19874:	00900693          	li	a3,9
   19878:	a8e660e3          	bltu	a2,a4,192f8 <_svfprintf_r+0x168>
   1987c:	0004cc83          	lbu	s9,0(s1)
   19880:	002a979b          	slliw	a5,s5,0x2
   19884:	0157833b          	addw	t1,a5,s5
   19888:	0013131b          	slliw	t1,t1,0x1
   1988c:	00e30abb          	addw	s5,t1,a4
   19890:	fd0c871b          	addiw	a4,s9,-48
   19894:	00148493          	addi	s1,s1,1
   19898:	fee6f2e3          	bgeu	a3,a4,1987c <_svfprintf_r+0x6ec>
   1989c:	a5dff06f          	j	192f8 <_svfprintf_r+0x168>
   198a0:	00098513          	mv	a0,s3
   198a4:	a38fd0ef          	jal	ra,16adc <_localeconv_r>
   198a8:	00853783          	ld	a5,8(a0)
   198ac:	00078513          	mv	a0,a5
   198b0:	08f13423          	sd	a5,136(sp)
   198b4:	f70ff0ef          	jal	ra,19024 <strlen>
   198b8:	00050793          	mv	a5,a0
   198bc:	00098513          	mv	a0,s3
   198c0:	00078c13          	mv	s8,a5
   198c4:	08f13023          	sd	a5,128(sp)
   198c8:	a14fd0ef          	jal	ra,16adc <_localeconv_r>
   198cc:	01053703          	ld	a4,16(a0)
   198d0:	0004ce03          	lbu	t3,0(s1)
   198d4:	06e13c23          	sd	a4,120(sp)
   198d8:	a00c0ce3          	beqz	s8,192f0 <_svfprintf_r+0x160>
   198dc:	a0070ae3          	beqz	a4,192f0 <_svfprintf_r+0x160>
   198e0:	00074783          	lbu	a5,0(a4)
   198e4:	a00786e3          	beqz	a5,192f0 <_svfprintf_r+0x160>
   198e8:	40096913          	ori	s2,s2,1024
   198ec:	0009091b          	sext.w	s2,s2
   198f0:	a01ff06f          	j	192f0 <_svfprintf_r+0x160>
   198f4:	00196913          	ori	s2,s2,1
   198f8:	0004ce03          	lbu	t3,0(s1)
   198fc:	0009091b          	sext.w	s2,s2
   19900:	9f1ff06f          	j	192f0 <_svfprintf_r+0x160>
   19904:	0cf14783          	lbu	a5,207(sp)
   19908:	0004ce03          	lbu	t3,0(s1)
   1990c:	9e0792e3          	bnez	a5,192f0 <_svfprintf_r+0x160>
   19910:	02000793          	li	a5,32
   19914:	0cf107a3          	sb	a5,207(sp)
   19918:	9d9ff06f          	j	192f0 <_svfprintf_r+0x160>
   1991c:	01096d93          	ori	s11,s2,16
   19920:	000a8313          	mv	t1,s5
   19924:	000d8d9b          	sext.w	s11,s11
   19928:	02013683          	ld	a3,32(sp)
   1992c:	020df793          	andi	a5,s11,32
   19930:	00868713          	addi	a4,a3,8
   19934:	20078ee3          	beqz	a5,1a350 <_svfprintf_r+0x11c0>
   19938:	0006bd03          	ld	s10,0(a3)
   1993c:	00100793          	li	a5,1
   19940:	02e13023          	sd	a4,32(sp)
   19944:	00000713          	li	a4,0
   19948:	0ce107a3          	sb	a4,207(sp)
   1994c:	fff00713          	li	a4,-1
   19950:	2ae30e63          	beq	t1,a4,19c0c <_svfprintf_r+0xa7c>
   19954:	f7fdf913          	andi	s2,s11,-129
   19958:	0009091b          	sext.w	s2,s2
   1995c:	2a0d1663          	bnez	s10,19c08 <_svfprintf_r+0xa78>
   19960:	30031463          	bnez	t1,19c68 <_svfprintf_r+0xad8>
   19964:	20079ce3          	bnez	a5,1a37c <_svfprintf_r+0x11ec>
   19968:	001dfd13          	andi	s10,s11,1
   1996c:	17c10b13          	addi	s6,sp,380
   19970:	280d12e3          	bnez	s10,1a3f4 <_svfprintf_r+0x1264>
   19974:	0cf14703          	lbu	a4,207(sp)
   19978:	00030813          	mv	a6,t1
   1997c:	01a35463          	bge	t1,s10,19984 <_svfprintf_r+0x7f4>
   19980:	000d0813          	mv	a6,s10
   19984:	00013c23          	sd	zero,24(sp)
   19988:	04013423          	sd	zero,72(sp)
   1998c:	04013023          	sd	zero,64(sp)
   19990:	02013823          	sd	zero,48(sp)
   19994:	00080c1b          	sext.w	s8,a6
   19998:	e60714e3          	bnez	a4,19800 <_svfprintf_r+0x670>
   1999c:	9e9ff06f          	j	19384 <_svfprintf_r+0x1f4>
   199a0:	00896913          	ori	s2,s2,8
   199a4:	0004ce03          	lbu	t3,0(s1)
   199a8:	0009091b          	sext.w	s2,s2
   199ac:	945ff06f          	j	192f0 <_svfprintf_r+0x160>
   199b0:	01096913          	ori	s2,s2,16
   199b4:	000a8313          	mv	t1,s5
   199b8:	0009091b          	sext.w	s2,s2
   199bc:	02013683          	ld	a3,32(sp)
   199c0:	02097793          	andi	a5,s2,32
   199c4:	00868713          	addi	a4,a3,8
   199c8:	140784e3          	beqz	a5,1a310 <_svfprintf_r+0x1180>
   199cc:	0006b783          	ld	a5,0(a3)
   199d0:	00078d13          	mv	s10,a5
   199d4:	1607c2e3          	bltz	a5,1a338 <_svfprintf_r+0x11a8>
   199d8:	fff00793          	li	a5,-1
   199dc:	00f31463          	bne	t1,a5,199e4 <_svfprintf_r+0x854>
   199e0:	0100106f          	j	1a9f0 <_svfprintf_r+0x1860>
   199e4:	f7f97d93          	andi	s11,s2,-129
   199e8:	02e13023          	sd	a4,32(sp)
   199ec:	000d8d9b          	sext.w	s11,s11
   199f0:	280d0ee3          	beqz	s10,1a48c <_svfprintf_r+0x12fc>
   199f4:	00900793          	li	a5,9
   199f8:	63a7e0e3          	bltu	a5,s10,1a818 <_svfprintf_r+0x1688>
   199fc:	030d0d1b          	addiw	s10,s10,48
   19a00:	17a10da3          	sb	s10,379(sp)
   19a04:	000d8913          	mv	s2,s11
   19a08:	00100d13          	li	s10,1
   19a0c:	17b10b13          	addi	s6,sp,379
   19a10:	f65ff06f          	j	19974 <_svfprintf_r+0x7e4>
   19a14:	01096913          	ori	s2,s2,16
   19a18:	000a8313          	mv	t1,s5
   19a1c:	0009091b          	sext.w	s2,s2
   19a20:	02013683          	ld	a3,32(sp)
   19a24:	02097793          	andi	a5,s2,32
   19a28:	00868713          	addi	a4,a3,8
   19a2c:	0c0780e3          	beqz	a5,1a2ec <_svfprintf_r+0x115c>
   19a30:	0006bd03          	ld	s10,0(a3)
   19a34:	bff97d93          	andi	s11,s2,-1025
   19a38:	000d8d9b          	sext.w	s11,s11
   19a3c:	02e13023          	sd	a4,32(sp)
   19a40:	00000793          	li	a5,0
   19a44:	f01ff06f          	j	19944 <_svfprintf_r+0x7b4>
   19a48:	0004ce03          	lbu	t3,0(s1)
   19a4c:	06800793          	li	a5,104
   19a50:	2afe08e3          	beq	t3,a5,1a500 <_svfprintf_r+0x1370>
   19a54:	04096913          	ori	s2,s2,64
   19a58:	0009091b          	sext.w	s2,s2
   19a5c:	895ff06f          	j	192f0 <_svfprintf_r+0x160>
   19a60:	02096913          	ori	s2,s2,32
   19a64:	0004ce03          	lbu	t3,0(s1)
   19a68:	0009091b          	sext.w	s2,s2
   19a6c:	885ff06f          	j	192f0 <_svfprintf_r+0x160>
   19a70:	02013703          	ld	a4,32(sp)
   19a74:	ffff87b7          	lui	a5,0xffff8
   19a78:	8307c793          	xori	a5,a5,-2000
   19a7c:	0cf11823          	sh	a5,208(sp)
   19a80:	00870793          	addi	a5,a4,8
   19a84:	02f13023          	sd	a5,32(sp)
   19a88:	000227b7          	lui	a5,0x22
   19a8c:	fa878793          	addi	a5,a5,-88 # 21fa8 <__clzdi2+0x94>
   19a90:	00296d93          	ori	s11,s2,2
   19a94:	06f13423          	sd	a5,104(sp)
   19a98:	00073d03          	ld	s10,0(a4)
   19a9c:	000a8313          	mv	t1,s5
   19aa0:	000d8d9b          	sext.w	s11,s11
   19aa4:	00200793          	li	a5,2
   19aa8:	07800c93          	li	s9,120
   19aac:	e99ff06f          	j	19944 <_svfprintf_r+0x7b4>
   19ab0:	02013703          	ld	a4,32(sp)
   19ab4:	02097793          	andi	a5,s2,32
   19ab8:	00073703          	ld	a4,0(a4)
   19abc:	140784e3          	beqz	a5,1a404 <_svfprintf_r+0x1274>
   19ac0:	01013783          	ld	a5,16(sp)
   19ac4:	00f73023          	sd	a5,0(a4)
   19ac8:	02013783          	ld	a5,32(sp)
   19acc:	00048b13          	mv	s6,s1
   19ad0:	00878793          	addi	a5,a5,8
   19ad4:	02f13023          	sd	a5,32(sp)
   19ad8:	9cdff06f          	j	194a4 <_svfprintf_r+0x314>
   19adc:	0004ce03          	lbu	t3,0(s1)
   19ae0:	06c00793          	li	a5,108
   19ae4:	22fe08e3          	beq	t3,a5,1a514 <_svfprintf_r+0x1384>
   19ae8:	01096913          	ori	s2,s2,16
   19aec:	0009091b          	sext.w	s2,s2
   19af0:	801ff06f          	j	192f0 <_svfprintf_r+0x160>
   19af4:	06500693          	li	a3,101
   19af8:	b796d2e3          	bge	a3,s9,1965c <_svfprintf_r+0x4cc>
   19afc:	0f013503          	ld	a0,240(sp)
   19b00:	0f813583          	ld	a1,248(sp)
   19b04:	00000613          	li	a2,0
   19b08:	00000693          	li	a3,0
   19b0c:	589060ef          	jal	ra,20894 <__eqtf2>
   19b10:	56051063          	bnez	a0,1a070 <_svfprintf_r+0xee0>
   19b14:	10812783          	lw	a5,264(sp)
   19b18:	000226b7          	lui	a3,0x22
   19b1c:	fc868693          	addi	a3,a3,-56 # 21fc8 <__clzdi2+0xb4>
   19b20:	0017879b          	addiw	a5,a5,1
   19b24:	00d43023          	sd	a3,0(s0)
   19b28:	001d8d93          	addi	s11,s11,1
   19b2c:	00100693          	li	a3,1
   19b30:	00d43423          	sd	a3,8(s0)
   19b34:	10f12423          	sw	a5,264(sp)
   19b38:	0007869b          	sext.w	a3,a5
   19b3c:	11b13823          	sd	s11,272(sp)
   19b40:	00700793          	li	a5,7
   19b44:	01040413          	addi	s0,s0,16
   19b48:	6ad7cae3          	blt	a5,a3,1a9fc <_svfprintf_r+0x186c>
   19b4c:	0d812783          	lw	a5,216(sp)
   19b50:	03813703          	ld	a4,56(sp)
   19b54:	06e7dee3          	bge	a5,a4,1a3d0 <_svfprintf_r+0x1240>
   19b58:	05813683          	ld	a3,88(sp)
   19b5c:	10812783          	lw	a5,264(sp)
   19b60:	06013603          	ld	a2,96(sp)
   19b64:	01b68733          	add	a4,a3,s11
   19b68:	0017879b          	addiw	a5,a5,1
   19b6c:	00d43423          	sd	a3,8(s0)
   19b70:	00c43023          	sd	a2,0(s0)
   19b74:	0007869b          	sext.w	a3,a5
   19b78:	10f12423          	sw	a5,264(sp)
   19b7c:	10e13823          	sd	a4,272(sp)
   19b80:	00700793          	li	a5,7
   19b84:	01040413          	addi	s0,s0,16
   19b88:	1ad7cee3          	blt	a5,a3,1a544 <_svfprintf_r+0x13b4>
   19b8c:	03813783          	ld	a5,56(sp)
   19b90:	fff78c9b          	addiw	s9,a5,-1
   19b94:	8d9052e3          	blez	s9,19458 <_svfprintf_r+0x2c8>
   19b98:	00023f37          	lui	t5,0x23
   19b9c:	01000693          	li	a3,16
   19ba0:	10812783          	lw	a5,264(sp)
   19ba4:	8c0f0d93          	addi	s11,t5,-1856 # 228c0 <zeroes.0>
   19ba8:	6796dae3          	bge	a3,s9,1aa1c <_svfprintf_r+0x188c>
   19bac:	00013b03          	ld	s6,0(sp)
   19bb0:	01000d13          	li	s10,16
   19bb4:	00700a93          	li	s5,7
   19bb8:	00c0006f          	j	19bc4 <_svfprintf_r+0xa34>
   19bbc:	ff0c8c9b          	addiw	s9,s9,-16
   19bc0:	659d5ee3          	bge	s10,s9,1aa1c <_svfprintf_r+0x188c>
   19bc4:	0017879b          	addiw	a5,a5,1
   19bc8:	01070713          	addi	a4,a4,16
   19bcc:	01b43023          	sd	s11,0(s0)
   19bd0:	01a43423          	sd	s10,8(s0)
   19bd4:	10e13823          	sd	a4,272(sp)
   19bd8:	10f12423          	sw	a5,264(sp)
   19bdc:	01040413          	addi	s0,s0,16
   19be0:	fcfadee3          	bge	s5,a5,19bbc <_svfprintf_r+0xa2c>
   19be4:	10010613          	addi	a2,sp,256
   19be8:	000b0593          	mv	a1,s6
   19bec:	00098513          	mv	a0,s3
   19bf0:	6c8040ef          	jal	ra,1e2b8 <__ssprint_r>
   19bf4:	28051c63          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   19bf8:	11013703          	ld	a4,272(sp)
   19bfc:	10812783          	lw	a5,264(sp)
   19c00:	18010413          	addi	s0,sp,384
   19c04:	fb9ff06f          	j	19bbc <_svfprintf_r+0xa2c>
   19c08:	00090d93          	mv	s11,s2
   19c0c:	00100713          	li	a4,1
   19c10:	dee782e3          	beq	a5,a4,199f4 <_svfprintf_r+0x864>
   19c14:	00200713          	li	a4,2
   19c18:	06e78463          	beq	a5,a4,19c80 <_svfprintf_r+0xaf0>
   19c1c:	17c10a93          	addi	s5,sp,380
   19c20:	000a8b13          	mv	s6,s5
   19c24:	007d7713          	andi	a4,s10,7
   19c28:	03070713          	addi	a4,a4,48
   19c2c:	feeb0fa3          	sb	a4,-1(s6)
   19c30:	003d5d13          	srli	s10,s10,0x3
   19c34:	000b0613          	mv	a2,s6
   19c38:	fffb0b13          	addi	s6,s6,-1
   19c3c:	fe0d14e3          	bnez	s10,19c24 <_svfprintf_r+0xa94>
   19c40:	001df593          	andi	a1,s11,1
   19c44:	06058263          	beqz	a1,19ca8 <_svfprintf_r+0xb18>
   19c48:	03000593          	li	a1,48
   19c4c:	04b70e63          	beq	a4,a1,19ca8 <_svfprintf_r+0xb18>
   19c50:	ffe60613          	addi	a2,a2,-2
   19c54:	febb0fa3          	sb	a1,-1(s6)
   19c58:	40ca8d3b          	subw	s10,s5,a2
   19c5c:	000d8913          	mv	s2,s11
   19c60:	00060b13          	mv	s6,a2
   19c64:	d11ff06f          	j	19974 <_svfprintf_r+0x7e4>
   19c68:	00100713          	li	a4,1
   19c6c:	00e79463          	bne	a5,a4,19c74 <_svfprintf_r+0xae4>
   19c70:	7d40106f          	j	1b444 <_svfprintf_r+0x22b4>
   19c74:	00200713          	li	a4,2
   19c78:	00090d93          	mv	s11,s2
   19c7c:	fae790e3          	bne	a5,a4,19c1c <_svfprintf_r+0xa8c>
   19c80:	06813703          	ld	a4,104(sp)
   19c84:	17c10a93          	addi	s5,sp,380
   19c88:	000a8b13          	mv	s6,s5
   19c8c:	00fd7793          	andi	a5,s10,15
   19c90:	00f707b3          	add	a5,a4,a5
   19c94:	0007c783          	lbu	a5,0(a5)
   19c98:	004d5d13          	srli	s10,s10,0x4
   19c9c:	fffb0b13          	addi	s6,s6,-1
   19ca0:	00fb0023          	sb	a5,0(s6)
   19ca4:	fe0d14e3          	bnez	s10,19c8c <_svfprintf_r+0xafc>
   19ca8:	416a8d3b          	subw	s10,s5,s6
   19cac:	000d8913          	mv	s2,s11
   19cb0:	cc5ff06f          	j	19974 <_svfprintf_r+0x7e4>
   19cb4:	418a0abb          	subw	s5,s4,s8
   19cb8:	f7505463          	blez	s5,19420 <_svfprintf_r+0x290>
   19cbc:	00023f37          	lui	t5,0x23
   19cc0:	01000593          	li	a1,16
   19cc4:	000d8713          	mv	a4,s11
   19cc8:	10812603          	lw	a2,264(sp)
   19ccc:	8c0f0d93          	addi	s11,t5,-1856 # 228c0 <zeroes.0>
   19cd0:	0955de63          	bge	a1,s5,19d6c <_svfprintf_r+0xbdc>
   19cd4:	08913823          	sd	s1,144(sp)
   19cd8:	01000f93          	li	t6,16
   19cdc:	000a8493          	mv	s1,s5
   19ce0:	00700b93          	li	s7,7
   19ce4:	000a0a93          	mv	s5,s4
   19ce8:	00090a13          	mv	s4,s2
   19cec:	000d8913          	mv	s2,s11
   19cf0:	000b0d93          	mv	s11,s6
   19cf4:	00030b13          	mv	s6,t1
   19cf8:	00c0006f          	j	19d04 <_svfprintf_r+0xb74>
   19cfc:	ff04849b          	addiw	s1,s1,-16
   19d00:	049fd863          	bge	t6,s1,19d50 <_svfprintf_r+0xbc0>
   19d04:	0016061b          	addiw	a2,a2,1
   19d08:	01070713          	addi	a4,a4,16
   19d0c:	01243023          	sd	s2,0(s0)
   19d10:	01f43423          	sd	t6,8(s0)
   19d14:	10e13823          	sd	a4,272(sp)
   19d18:	10c12423          	sw	a2,264(sp)
   19d1c:	01040413          	addi	s0,s0,16
   19d20:	fccbdee3          	bge	s7,a2,19cfc <_svfprintf_r+0xb6c>
   19d24:	00013583          	ld	a1,0(sp)
   19d28:	10010613          	addi	a2,sp,256
   19d2c:	00098513          	mv	a0,s3
   19d30:	588040ef          	jal	ra,1e2b8 <__ssprint_r>
   19d34:	14051c63          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   19d38:	01000f93          	li	t6,16
   19d3c:	ff04849b          	addiw	s1,s1,-16
   19d40:	11013703          	ld	a4,272(sp)
   19d44:	10812603          	lw	a2,264(sp)
   19d48:	18010413          	addi	s0,sp,384
   19d4c:	fa9fcce3          	blt	t6,s1,19d04 <_svfprintf_r+0xb74>
   19d50:	000b0313          	mv	t1,s6
   19d54:	000d8b13          	mv	s6,s11
   19d58:	00090d93          	mv	s11,s2
   19d5c:	000a0913          	mv	s2,s4
   19d60:	000a8a13          	mv	s4,s5
   19d64:	00048a93          	mv	s5,s1
   19d68:	09013483          	ld	s1,144(sp)
   19d6c:	0016059b          	addiw	a1,a2,1
   19d70:	00ea8733          	add	a4,s5,a4
   19d74:	01b43023          	sd	s11,0(s0)
   19d78:	01543423          	sd	s5,8(s0)
   19d7c:	10e13823          	sd	a4,272(sp)
   19d80:	10b12423          	sw	a1,264(sp)
   19d84:	00700613          	li	a2,7
   19d88:	4eb646e3          	blt	a2,a1,1aa74 <_svfprintf_r+0x18e4>
   19d8c:	41a30bbb          	subw	s7,t1,s10
   19d90:	01040413          	addi	s0,s0,16
   19d94:	00070d93          	mv	s11,a4
   19d98:	e9705863          	blez	s7,19428 <_svfprintf_r+0x298>
   19d9c:	00023f37          	lui	t5,0x23
   19da0:	01000593          	li	a1,16
   19da4:	000d8713          	mv	a4,s11
   19da8:	10812603          	lw	a2,264(sp)
   19dac:	8c0f0d93          	addi	s11,t5,-1856 # 228c0 <zeroes.0>
   19db0:	0975de63          	bge	a1,s7,19e4c <_svfprintf_r+0xcbc>
   19db4:	000b0793          	mv	a5,s6
   19db8:	00813d83          	ld	s11,8(sp)
   19dbc:	000a0b13          	mv	s6,s4
   19dc0:	01000893          	li	a7,16
   19dc4:	00090a13          	mv	s4,s2
   19dc8:	00700a93          	li	s5,7
   19dcc:	00048913          	mv	s2,s1
   19dd0:	000b8493          	mv	s1,s7
   19dd4:	00078b93          	mv	s7,a5
   19dd8:	00c0006f          	j	19de4 <_svfprintf_r+0xc54>
   19ddc:	ff04849b          	addiw	s1,s1,-16
   19de0:	0498da63          	bge	a7,s1,19e34 <_svfprintf_r+0xca4>
   19de4:	00813683          	ld	a3,8(sp)
   19de8:	0016061b          	addiw	a2,a2,1
   19dec:	01070713          	addi	a4,a4,16
   19df0:	00d43023          	sd	a3,0(s0)
   19df4:	01143423          	sd	a7,8(s0)
   19df8:	10e13823          	sd	a4,272(sp)
   19dfc:	10c12423          	sw	a2,264(sp)
   19e00:	01040413          	addi	s0,s0,16
   19e04:	fccadce3          	bge	s5,a2,19ddc <_svfprintf_r+0xc4c>
   19e08:	00013583          	ld	a1,0(sp)
   19e0c:	10010613          	addi	a2,sp,256
   19e10:	00098513          	mv	a0,s3
   19e14:	4a4040ef          	jal	ra,1e2b8 <__ssprint_r>
   19e18:	06051a63          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   19e1c:	01000893          	li	a7,16
   19e20:	ff04849b          	addiw	s1,s1,-16
   19e24:	11013703          	ld	a4,272(sp)
   19e28:	10812603          	lw	a2,264(sp)
   19e2c:	18010413          	addi	s0,sp,384
   19e30:	fa98cae3          	blt	a7,s1,19de4 <_svfprintf_r+0xc54>
   19e34:	000b8793          	mv	a5,s7
   19e38:	00048b93          	mv	s7,s1
   19e3c:	00090493          	mv	s1,s2
   19e40:	000a0913          	mv	s2,s4
   19e44:	000b0a13          	mv	s4,s6
   19e48:	00078b13          	mv	s6,a5
   19e4c:	0016059b          	addiw	a1,a2,1
   19e50:	00eb8733          	add	a4,s7,a4
   19e54:	01b43023          	sd	s11,0(s0)
   19e58:	01743423          	sd	s7,8(s0)
   19e5c:	10e13823          	sd	a4,272(sp)
   19e60:	10b12423          	sw	a1,264(sp)
   19e64:	00700613          	li	a2,7
   19e68:	46b64263          	blt	a2,a1,1a2cc <_svfprintf_r+0x113c>
   19e6c:	01040413          	addi	s0,s0,16
   19e70:	00070d93          	mv	s11,a4
   19e74:	db4ff06f          	j	19428 <_svfprintf_r+0x298>
   19e78:	00013583          	ld	a1,0(sp)
   19e7c:	10010613          	addi	a2,sp,256
   19e80:	00098513          	mv	a0,s3
   19e84:	434040ef          	jal	ra,1e2b8 <__ssprint_r>
   19e88:	de050e63          	beqz	a0,19484 <_svfprintf_r+0x2f4>
   19e8c:	01813583          	ld	a1,24(sp)
   19e90:	e2058463          	beqz	a1,194b8 <_svfprintf_r+0x328>
   19e94:	05013503          	ld	a0,80(sp)
   19e98:	afdf90ef          	jal	ra,13994 <_free_r>
   19e9c:	e1cff06f          	j	194b8 <_svfprintf_r+0x328>
   19ea0:	000238b7          	lui	a7,0x23
   19ea4:	01000513          	li	a0,16
   19ea8:	11013583          	ld	a1,272(sp)
   19eac:	10812603          	lw	a2,264(sp)
   19eb0:	8d088d93          	addi	s11,a7,-1840 # 228d0 <blanks.1>
   19eb4:	08e55c63          	bge	a0,a4,19f4c <_svfprintf_r+0xdbc>
   19eb8:	08913823          	sd	s1,144(sp)
   19ebc:	00040793          	mv	a5,s0
   19ec0:	000d8493          	mv	s1,s11
   19ec4:	01000f13          	li	t5,16
   19ec8:	000b0d93          	mv	s11,s6
   19ecc:	00700393          	li	t2,7
   19ed0:	00070413          	mv	s0,a4
   19ed4:	00030b13          	mv	s6,t1
   19ed8:	00c0006f          	j	19ee4 <_svfprintf_r+0xd54>
   19edc:	ff04041b          	addiw	s0,s0,-16
   19ee0:	048f5a63          	bge	t5,s0,19f34 <_svfprintf_r+0xda4>
   19ee4:	0016061b          	addiw	a2,a2,1
   19ee8:	01058593          	addi	a1,a1,16
   19eec:	0097b023          	sd	s1,0(a5)
   19ef0:	01e7b423          	sd	t5,8(a5)
   19ef4:	10b13823          	sd	a1,272(sp)
   19ef8:	10c12423          	sw	a2,264(sp)
   19efc:	01078793          	addi	a5,a5,16
   19f00:	fcc3dee3          	bge	t2,a2,19edc <_svfprintf_r+0xd4c>
   19f04:	00013583          	ld	a1,0(sp)
   19f08:	10010613          	addi	a2,sp,256
   19f0c:	00098513          	mv	a0,s3
   19f10:	3a8040ef          	jal	ra,1e2b8 <__ssprint_r>
   19f14:	f6051ce3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   19f18:	01000f13          	li	t5,16
   19f1c:	ff04041b          	addiw	s0,s0,-16
   19f20:	11013583          	ld	a1,272(sp)
   19f24:	10812603          	lw	a2,264(sp)
   19f28:	18010793          	addi	a5,sp,384
   19f2c:	00700393          	li	t2,7
   19f30:	fa8f4ae3          	blt	t5,s0,19ee4 <_svfprintf_r+0xd54>
   19f34:	000b0313          	mv	t1,s6
   19f38:	000d8b13          	mv	s6,s11
   19f3c:	00048d93          	mv	s11,s1
   19f40:	09013483          	ld	s1,144(sp)
   19f44:	00040713          	mv	a4,s0
   19f48:	00078413          	mv	s0,a5
   19f4c:	00b705b3          	add	a1,a4,a1
   19f50:	0016061b          	addiw	a2,a2,1
   19f54:	00e43423          	sd	a4,8(s0)
   19f58:	01b43023          	sd	s11,0(s0)
   19f5c:	10b13823          	sd	a1,272(sp)
   19f60:	10c12423          	sw	a2,264(sp)
   19f64:	0006059b          	sext.w	a1,a2
   19f68:	00700713          	li	a4,7
   19f6c:	01040413          	addi	s0,s0,16
   19f70:	c2b75863          	bge	a4,a1,193a0 <_svfprintf_r+0x210>
   19f74:	00013583          	ld	a1,0(sp)
   19f78:	10010613          	addi	a2,sp,256
   19f7c:	00098513          	mv	a0,s3
   19f80:	08613823          	sd	t1,144(sp)
   19f84:	334040ef          	jal	ra,1e2b8 <__ssprint_r>
   19f88:	f00512e3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   19f8c:	09013303          	ld	t1,144(sp)
   19f90:	18010413          	addi	s0,sp,384
   19f94:	c0cff06f          	j	193a0 <_svfprintf_r+0x210>
   19f98:	00013583          	ld	a1,0(sp)
   19f9c:	10010613          	addi	a2,sp,256
   19fa0:	00098513          	mv	a0,s3
   19fa4:	08613823          	sd	t1,144(sp)
   19fa8:	310040ef          	jal	ra,1e2b8 <__ssprint_r>
   19fac:	ee0510e3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   19fb0:	11013d83          	ld	s11,272(sp)
   19fb4:	09013303          	ld	t1,144(sp)
   19fb8:	18010413          	addi	s0,sp,384
   19fbc:	c5cff06f          	j	19418 <_svfprintf_r+0x288>
   19fc0:	000238b7          	lui	a7,0x23
   19fc4:	01000693          	li	a3,16
   19fc8:	10812783          	lw	a5,264(sp)
   19fcc:	8d088d93          	addi	s11,a7,-1840 # 228d0 <blanks.1>
   19fd0:	0726d263          	bge	a3,s2,1a034 <_svfprintf_r+0xea4>
   19fd4:	00013a83          	ld	s5,0(sp)
   19fd8:	01000c93          	li	s9,16
   19fdc:	00700d13          	li	s10,7
   19fe0:	00c0006f          	j	19fec <_svfprintf_r+0xe5c>
   19fe4:	ff09091b          	addiw	s2,s2,-16
   19fe8:	052cd663          	bge	s9,s2,1a034 <_svfprintf_r+0xea4>
   19fec:	0017879b          	addiw	a5,a5,1
   19ff0:	01070713          	addi	a4,a4,16
   19ff4:	01b43023          	sd	s11,0(s0)
   19ff8:	01943423          	sd	s9,8(s0)
   19ffc:	10e13823          	sd	a4,272(sp)
   1a000:	10f12423          	sw	a5,264(sp)
   1a004:	01040413          	addi	s0,s0,16
   1a008:	fcfd5ee3          	bge	s10,a5,19fe4 <_svfprintf_r+0xe54>
   1a00c:	10010613          	addi	a2,sp,256
   1a010:	000a8593          	mv	a1,s5
   1a014:	00098513          	mv	a0,s3
   1a018:	2a0040ef          	jal	ra,1e2b8 <__ssprint_r>
   1a01c:	e60518e3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a020:	ff09091b          	addiw	s2,s2,-16
   1a024:	11013703          	ld	a4,272(sp)
   1a028:	10812783          	lw	a5,264(sp)
   1a02c:	18010413          	addi	s0,sp,384
   1a030:	fb2ccee3          	blt	s9,s2,19fec <_svfprintf_r+0xe5c>
   1a034:	0017869b          	addiw	a3,a5,1
   1a038:	01270733          	add	a4,a4,s2
   1a03c:	01b43023          	sd	s11,0(s0)
   1a040:	01243423          	sd	s2,8(s0)
   1a044:	10e13823          	sd	a4,272(sp)
   1a048:	10d12423          	sw	a3,264(sp)
   1a04c:	00700793          	li	a5,7
   1a050:	c0d7dc63          	bge	a5,a3,19468 <_svfprintf_r+0x2d8>
   1a054:	00013583          	ld	a1,0(sp)
   1a058:	10010613          	addi	a2,sp,256
   1a05c:	00098513          	mv	a0,s3
   1a060:	258040ef          	jal	ra,1e2b8 <__ssprint_r>
   1a064:	e20514e3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a068:	11013703          	ld	a4,272(sp)
   1a06c:	bfcff06f          	j	19468 <_svfprintf_r+0x2d8>
   1a070:	0d812603          	lw	a2,216(sp)
   1a074:	08c058e3          	blez	a2,1a904 <_svfprintf_r+0x1774>
   1a078:	03813783          	ld	a5,56(sp)
   1a07c:	03013703          	ld	a4,48(sp)
   1a080:	00fb0ab3          	add	s5,s6,a5
   1a084:	00078693          	mv	a3,a5
   1a088:	3ef74a63          	blt	a4,a5,1a47c <_svfprintf_r+0x12ec>
   1a08c:	00068c9b          	sext.w	s9,a3
   1a090:	03905663          	blez	s9,1a0bc <_svfprintf_r+0xf2c>
   1a094:	10812603          	lw	a2,264(sp)
   1a098:	019d8db3          	add	s11,s11,s9
   1a09c:	01643023          	sd	s6,0(s0)
   1a0a0:	0016059b          	addiw	a1,a2,1
   1a0a4:	01943423          	sd	s9,8(s0)
   1a0a8:	11b13823          	sd	s11,272(sp)
   1a0ac:	10b12423          	sw	a1,264(sp)
   1a0b0:	00700613          	li	a2,7
   1a0b4:	01040413          	addi	s0,s0,16
   1a0b8:	3cb64ae3          	blt	a2,a1,1ac8c <_svfprintf_r+0x1afc>
   1a0bc:	fffcc613          	not	a2,s9
   1a0c0:	03013783          	ld	a5,48(sp)
   1a0c4:	43f65613          	srai	a2,a2,0x3f
   1a0c8:	00ccf6b3          	and	a3,s9,a2
   1a0cc:	40d78cbb          	subw	s9,a5,a3
   1a0d0:	4d904263          	bgtz	s9,1a594 <_svfprintf_r+0x1404>
   1a0d4:	03013783          	ld	a5,48(sp)
   1a0d8:	40097693          	andi	a3,s2,1024
   1a0dc:	00fb0b33          	add	s6,s6,a5
   1a0e0:	52069e63          	bnez	a3,1a61c <_svfprintf_r+0x148c>
   1a0e4:	0d812683          	lw	a3,216(sp)
   1a0e8:	03813783          	ld	a5,56(sp)
   1a0ec:	00f6c663          	blt	a3,a5,1a0f8 <_svfprintf_r+0xf68>
   1a0f0:	00197613          	andi	a2,s2,1
   1a0f4:	3c0600e3          	beqz	a2,1acb4 <_svfprintf_r+0x1b24>
   1a0f8:	10812603          	lw	a2,264(sp)
   1a0fc:	05813783          	ld	a5,88(sp)
   1a100:	06013583          	ld	a1,96(sp)
   1a104:	01040413          	addi	s0,s0,16
   1a108:	01b78733          	add	a4,a5,s11
   1a10c:	feb43823          	sd	a1,-16(s0)
   1a110:	0016059b          	addiw	a1,a2,1
   1a114:	fef43c23          	sd	a5,-8(s0)
   1a118:	10e13823          	sd	a4,272(sp)
   1a11c:	10b12423          	sw	a1,264(sp)
   1a120:	00700613          	li	a2,7
   1a124:	00b65463          	bge	a2,a1,1a12c <_svfprintf_r+0xf9c>
   1a128:	1fc0106f          	j	1b324 <_svfprintf_r+0x2194>
   1a12c:	03813783          	ld	a5,56(sp)
   1a130:	416a8cb3          	sub	s9,s5,s6
   1a134:	000c859b          	sext.w	a1,s9
   1a138:	40d7863b          	subw	a2,a5,a3
   1a13c:	00b65463          	bge	a2,a1,1a144 <_svfprintf_r+0xfb4>
   1a140:	00060c93          	mv	s9,a2
   1a144:	000c8c9b          	sext.w	s9,s9
   1a148:	03905863          	blez	s9,1a178 <_svfprintf_r+0xfe8>
   1a14c:	10812683          	lw	a3,264(sp)
   1a150:	01970733          	add	a4,a4,s9
   1a154:	01643023          	sd	s6,0(s0)
   1a158:	0016869b          	addiw	a3,a3,1
   1a15c:	01943423          	sd	s9,8(s0)
   1a160:	10e13823          	sd	a4,272(sp)
   1a164:	10d12423          	sw	a3,264(sp)
   1a168:	00700793          	li	a5,7
   1a16c:	01040413          	addi	s0,s0,16
   1a170:	00d7d463          	bge	a5,a3,1a178 <_svfprintf_r+0xfe8>
   1a174:	2500106f          	j	1b3c4 <_svfprintf_r+0x2234>
   1a178:	fffcc793          	not	a5,s9
   1a17c:	43f7d793          	srai	a5,a5,0x3f
   1a180:	00fcfcb3          	and	s9,s9,a5
   1a184:	41960cbb          	subw	s9,a2,s9
   1a188:	ad905863          	blez	s9,19458 <_svfprintf_r+0x2c8>
   1a18c:	00023f37          	lui	t5,0x23
   1a190:	01000693          	li	a3,16
   1a194:	10812783          	lw	a5,264(sp)
   1a198:	8c0f0d93          	addi	s11,t5,-1856 # 228c0 <zeroes.0>
   1a19c:	0996d0e3          	bge	a3,s9,1aa1c <_svfprintf_r+0x188c>
   1a1a0:	00013b03          	ld	s6,0(sp)
   1a1a4:	01000d13          	li	s10,16
   1a1a8:	00700a93          	li	s5,7
   1a1ac:	00c0006f          	j	1a1b8 <_svfprintf_r+0x1028>
   1a1b0:	ff0c8c9b          	addiw	s9,s9,-16
   1a1b4:	079d54e3          	bge	s10,s9,1aa1c <_svfprintf_r+0x188c>
   1a1b8:	0017879b          	addiw	a5,a5,1
   1a1bc:	01070713          	addi	a4,a4,16
   1a1c0:	01b43023          	sd	s11,0(s0)
   1a1c4:	01a43423          	sd	s10,8(s0)
   1a1c8:	10e13823          	sd	a4,272(sp)
   1a1cc:	10f12423          	sw	a5,264(sp)
   1a1d0:	01040413          	addi	s0,s0,16
   1a1d4:	fcfadee3          	bge	s5,a5,1a1b0 <_svfprintf_r+0x1020>
   1a1d8:	10010613          	addi	a2,sp,256
   1a1dc:	000b0593          	mv	a1,s6
   1a1e0:	00098513          	mv	a0,s3
   1a1e4:	0d4040ef          	jal	ra,1e2b8 <__ssprint_r>
   1a1e8:	ca0512e3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a1ec:	11013703          	ld	a4,272(sp)
   1a1f0:	10812783          	lw	a5,264(sp)
   1a1f4:	18010413          	addi	s0,sp,384
   1a1f8:	fb9ff06f          	j	1a1b0 <_svfprintf_r+0x1020>
   1a1fc:	00197613          	andi	a2,s2,1
   1a200:	c6061663          	bnez	a2,1966c <_svfprintf_r+0x4dc>
   1a204:	10812603          	lw	a2,264(sp)
   1a208:	001d8d13          	addi	s10,s11,1
   1a20c:	01643023          	sd	s6,0(s0)
   1a210:	0016079b          	addiw	a5,a2,1
   1a214:	00d43423          	sd	a3,8(s0)
   1a218:	10f12423          	sw	a5,264(sp)
   1a21c:	0007841b          	sext.w	s0,a5
   1a220:	11a13823          	sd	s10,272(sp)
   1a224:	00700793          	li	a5,7
   1a228:	ce87d263          	bge	a5,s0,1970c <_svfprintf_r+0x57c>
   1a22c:	00013583          	ld	a1,0(sp)
   1a230:	10010613          	addi	a2,sp,256
   1a234:	00098513          	mv	a0,s3
   1a238:	080040ef          	jal	ra,1e2b8 <__ssprint_r>
   1a23c:	c40518e3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a240:	11013d03          	ld	s10,272(sp)
   1a244:	10812403          	lw	s0,264(sp)
   1a248:	18010c93          	addi	s9,sp,384
   1a24c:	cc0ff06f          	j	1970c <_svfprintf_r+0x57c>
   1a250:	03813703          	ld	a4,56(sp)
   1a254:	00100793          	li	a5,1
   1a258:	cae7da63          	bge	a5,a4,1970c <_svfprintf_r+0x57c>
   1a25c:	00023f37          	lui	t5,0x23
   1a260:	01100793          	li	a5,17
   1a264:	8c0f0d93          	addi	s11,t5,-1856 # 228c0 <zeroes.0>
   1a268:	0ae7dae3          	bge	a5,a4,1ab1c <_svfprintf_r+0x198c>
   1a26c:	00013b83          	ld	s7,0(sp)
   1a270:	01000713          	li	a4,16
   1a274:	00700b13          	li	s6,7
   1a278:	00c0006f          	j	1a284 <_svfprintf_r+0x10f4>
   1a27c:	ff0a8a9b          	addiw	s5,s5,-16
   1a280:	09575ee3          	bge	a4,s5,1ab1c <_svfprintf_r+0x198c>
   1a284:	0014041b          	addiw	s0,s0,1
   1a288:	010d0d13          	addi	s10,s10,16
   1a28c:	01bcb023          	sd	s11,0(s9)
   1a290:	00ecb423          	sd	a4,8(s9)
   1a294:	11a13823          	sd	s10,272(sp)
   1a298:	10812423          	sw	s0,264(sp)
   1a29c:	010c8c93          	addi	s9,s9,16
   1a2a0:	fc8b5ee3          	bge	s6,s0,1a27c <_svfprintf_r+0x10ec>
   1a2a4:	10010613          	addi	a2,sp,256
   1a2a8:	000b8593          	mv	a1,s7
   1a2ac:	00098513          	mv	a0,s3
   1a2b0:	008040ef          	jal	ra,1e2b8 <__ssprint_r>
   1a2b4:	bc051ce3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a2b8:	11013d03          	ld	s10,272(sp)
   1a2bc:	10812403          	lw	s0,264(sp)
   1a2c0:	18010c93          	addi	s9,sp,384
   1a2c4:	01000713          	li	a4,16
   1a2c8:	fb5ff06f          	j	1a27c <_svfprintf_r+0x10ec>
   1a2cc:	00013583          	ld	a1,0(sp)
   1a2d0:	10010613          	addi	a2,sp,256
   1a2d4:	00098513          	mv	a0,s3
   1a2d8:	7e1030ef          	jal	ra,1e2b8 <__ssprint_r>
   1a2dc:	ba0518e3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a2e0:	11013d83          	ld	s11,272(sp)
   1a2e4:	18010413          	addi	s0,sp,384
   1a2e8:	940ff06f          	j	19428 <_svfprintf_r+0x298>
   1a2ec:	01097793          	andi	a5,s2,16
   1a2f0:	12079e63          	bnez	a5,1a42c <_svfprintf_r+0x129c>
   1a2f4:	02013683          	ld	a3,32(sp)
   1a2f8:	04097793          	andi	a5,s2,64
   1a2fc:	0006ad03          	lw	s10,0(a3)
   1a300:	0e078ee3          	beqz	a5,1abfc <_svfprintf_r+0x1a6c>
   1a304:	030d1d13          	slli	s10,s10,0x30
   1a308:	030d5d13          	srli	s10,s10,0x30
   1a30c:	f28ff06f          	j	19a34 <_svfprintf_r+0x8a4>
   1a310:	01097793          	andi	a5,s2,16
   1a314:	14079c63          	bnez	a5,1a46c <_svfprintf_r+0x12dc>
   1a318:	02013683          	ld	a3,32(sp)
   1a31c:	04097793          	andi	a5,s2,64
   1a320:	0006ad03          	lw	s10,0(a3)
   1a324:	0e0784e3          	beqz	a5,1ac0c <_svfprintf_r+0x1a7c>
   1a328:	010d1d1b          	slliw	s10,s10,0x10
   1a32c:	410d5d1b          	sraiw	s10,s10,0x10
   1a330:	000d0793          	mv	a5,s10
   1a334:	ea07d263          	bgez	a5,199d8 <_svfprintf_r+0x848>
   1a338:	02e13023          	sd	a4,32(sp)
   1a33c:	41a00d33          	neg	s10,s10
   1a340:	00090d93          	mv	s11,s2
   1a344:	02d00713          	li	a4,45
   1a348:	00100793          	li	a5,1
   1a34c:	dfcff06f          	j	19948 <_svfprintf_r+0x7b8>
   1a350:	010df793          	andi	a5,s11,16
   1a354:	10079263          	bnez	a5,1a458 <_svfprintf_r+0x12c8>
   1a358:	02013683          	ld	a3,32(sp)
   1a35c:	040df793          	andi	a5,s11,64
   1a360:	0006ad03          	lw	s10,0(a3)
   1a364:	080780e3          	beqz	a5,1abe4 <_svfprintf_r+0x1a54>
   1a368:	030d1d13          	slli	s10,s10,0x30
   1a36c:	030d5d13          	srli	s10,s10,0x30
   1a370:	02e13023          	sd	a4,32(sp)
   1a374:	00100793          	li	a5,1
   1a378:	dccff06f          	j	19944 <_svfprintf_r+0x7b4>
   1a37c:	00000d13          	li	s10,0
   1a380:	17c10b13          	addi	s6,sp,380
   1a384:	df0ff06f          	j	19974 <_svfprintf_r+0x7e4>
   1a388:	00013583          	ld	a1,0(sp)
   1a38c:	10010613          	addi	a2,sp,256
   1a390:	00098513          	mv	a0,s3
   1a394:	725030ef          	jal	ra,1e2b8 <__ssprint_r>
   1a398:	ae051ae3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a39c:	11013703          	ld	a4,272(sp)
   1a3a0:	10812683          	lw	a3,264(sp)
   1a3a4:	18010c93          	addi	s9,sp,384
   1a3a8:	af0ff06f          	j	19698 <_svfprintf_r+0x508>
   1a3ac:	00013583          	ld	a1,0(sp)
   1a3b0:	10010613          	addi	a2,sp,256
   1a3b4:	00098513          	mv	a0,s3
   1a3b8:	701030ef          	jal	ra,1e2b8 <__ssprint_r>
   1a3bc:	ac0518e3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a3c0:	11013d03          	ld	s10,272(sp)
   1a3c4:	10812403          	lw	s0,264(sp)
   1a3c8:	18010c93          	addi	s9,sp,384
   1a3cc:	af8ff06f          	j	196c4 <_svfprintf_r+0x534>
   1a3d0:	00197793          	andi	a5,s2,1
   1a3d4:	000d8713          	mv	a4,s11
   1a3d8:	88078063          	beqz	a5,19458 <_svfprintf_r+0x2c8>
   1a3dc:	f7cff06f          	j	19b58 <_svfprintf_r+0x9c8>
   1a3e0:	000a8313          	mv	t1,s5
   1a3e4:	dd8ff06f          	j	199bc <_svfprintf_r+0x82c>
   1a3e8:	0004ce03          	lbu	t3,0(s1)
   1a3ec:	02f13023          	sd	a5,32(sp)
   1a3f0:	f01fe06f          	j	192f0 <_svfprintf_r+0x160>
   1a3f4:	03000793          	li	a5,48
   1a3f8:	16f10da3          	sb	a5,379(sp)
   1a3fc:	17b10b13          	addi	s6,sp,379
   1a400:	d74ff06f          	j	19974 <_svfprintf_r+0x7e4>
   1a404:	01097793          	andi	a5,s2,16
   1a408:	ea079c63          	bnez	a5,19ac0 <_svfprintf_r+0x930>
   1a40c:	04097793          	andi	a5,s2,64
   1a410:	0e079ce3          	bnez	a5,1ad08 <_svfprintf_r+0x1b78>
   1a414:	20097913          	andi	s2,s2,512
   1a418:	01013783          	ld	a5,16(sp)
   1a41c:	00091463          	bnez	s2,1a424 <_svfprintf_r+0x1294>
   1a420:	1500106f          	j	1b570 <_svfprintf_r+0x23e0>
   1a424:	00f70023          	sb	a5,0(a4)
   1a428:	ea0ff06f          	j	19ac8 <_svfprintf_r+0x938>
   1a42c:	02013783          	ld	a5,32(sp)
   1a430:	0007bd03          	ld	s10,0(a5)
   1a434:	e00ff06f          	j	19a34 <_svfprintf_r+0x8a4>
   1a438:	02013783          	ld	a5,32(sp)
   1a43c:	00f78a93          	addi	s5,a5,15
   1a440:	ff0afa93          	andi	s5,s5,-16
   1a444:	010a8793          	addi	a5,s5,16
   1a448:	000ab703          	ld	a4,0(s5)
   1a44c:	008ab583          	ld	a1,8(s5)
   1a450:	02f13023          	sd	a5,32(sp)
   1a454:	920ff06f          	j	19574 <_svfprintf_r+0x3e4>
   1a458:	02013783          	ld	a5,32(sp)
   1a45c:	02e13023          	sd	a4,32(sp)
   1a460:	0007bd03          	ld	s10,0(a5)
   1a464:	00100793          	li	a5,1
   1a468:	cdcff06f          	j	19944 <_svfprintf_r+0x7b4>
   1a46c:	02013783          	ld	a5,32(sp)
   1a470:	0007b783          	ld	a5,0(a5)
   1a474:	00078d13          	mv	s10,a5
   1a478:	d5cff06f          	j	199d4 <_svfprintf_r+0x844>
   1a47c:	00070693          	mv	a3,a4
   1a480:	00068c9b          	sext.w	s9,a3
   1a484:	c19048e3          	bgtz	s9,1a094 <_svfprintf_r+0xf04>
   1a488:	c35ff06f          	j	1a0bc <_svfprintf_r+0xf2c>
   1a48c:	d6031863          	bnez	t1,199fc <_svfprintf_r+0x86c>
   1a490:	000d8913          	mv	s2,s11
   1a494:	17c10b13          	addi	s6,sp,380
   1a498:	cdcff06f          	j	19974 <_svfprintf_r+0x7e4>
   1a49c:	000227b7          	lui	a5,0x22
   1a4a0:	f9078793          	addi	a5,a5,-112 # 21f90 <__clzdi2+0x7c>
   1a4a4:	000a8313          	mv	t1,s5
   1a4a8:	06f13423          	sd	a5,104(sp)
   1a4ac:	02013683          	ld	a3,32(sp)
   1a4b0:	02097793          	andi	a5,s2,32
   1a4b4:	00868713          	addi	a4,a3,8
   1a4b8:	32078263          	beqz	a5,1a7dc <_svfprintf_r+0x164c>
   1a4bc:	0006bd03          	ld	s10,0(a3)
   1a4c0:	00197793          	andi	a5,s2,1
   1a4c4:	00078e63          	beqz	a5,1a4e0 <_svfprintf_r+0x1350>
   1a4c8:	000d0c63          	beqz	s10,1a4e0 <_svfprintf_r+0x1350>
   1a4cc:	00296913          	ori	s2,s2,2
   1a4d0:	03000793          	li	a5,48
   1a4d4:	0cf10823          	sb	a5,208(sp)
   1a4d8:	0d9108a3          	sb	s9,209(sp)
   1a4dc:	0009091b          	sext.w	s2,s2
   1a4e0:	bff97d93          	andi	s11,s2,-1025
   1a4e4:	000d8d9b          	sext.w	s11,s11
   1a4e8:	02e13023          	sd	a4,32(sp)
   1a4ec:	00200793          	li	a5,2
   1a4f0:	c54ff06f          	j	19944 <_svfprintf_r+0x7b4>
   1a4f4:	000a8313          	mv	t1,s5
   1a4f8:	00090d93          	mv	s11,s2
   1a4fc:	c2cff06f          	j	19928 <_svfprintf_r+0x798>
   1a500:	20096913          	ori	s2,s2,512
   1a504:	0014ce03          	lbu	t3,1(s1)
   1a508:	0009091b          	sext.w	s2,s2
   1a50c:	00148493          	addi	s1,s1,1
   1a510:	de1fe06f          	j	192f0 <_svfprintf_r+0x160>
   1a514:	02096913          	ori	s2,s2,32
   1a518:	0014ce03          	lbu	t3,1(s1)
   1a51c:	0009091b          	sext.w	s2,s2
   1a520:	00148493          	addi	s1,s1,1
   1a524:	dcdfe06f          	j	192f0 <_svfprintf_r+0x160>
   1a528:	000a8313          	mv	t1,s5
   1a52c:	cf4ff06f          	j	19a20 <_svfprintf_r+0x890>
   1a530:	000227b7          	lui	a5,0x22
   1a534:	fa878793          	addi	a5,a5,-88 # 21fa8 <__clzdi2+0x94>
   1a538:	000a8313          	mv	t1,s5
   1a53c:	06f13423          	sd	a5,104(sp)
   1a540:	f6dff06f          	j	1a4ac <_svfprintf_r+0x131c>
   1a544:	00013583          	ld	a1,0(sp)
   1a548:	10010613          	addi	a2,sp,256
   1a54c:	00098513          	mv	a0,s3
   1a550:	569030ef          	jal	ra,1e2b8 <__ssprint_r>
   1a554:	92051ce3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a558:	11013703          	ld	a4,272(sp)
   1a55c:	18010413          	addi	s0,sp,384
   1a560:	e2cff06f          	j	19b8c <_svfprintf_r+0x9fc>
   1a564:	05013503          	ld	a0,80(sp)
   1a568:	04000593          	li	a1,64
   1a56c:	8e9fc0ef          	jal	ra,16e54 <_malloc_r>
   1a570:	00013783          	ld	a5,0(sp)
   1a574:	00a7b023          	sd	a0,0(a5)
   1a578:	00a7bc23          	sd	a0,24(a5)
   1a57c:	00051463          	bnez	a0,1a584 <_svfprintf_r+0x13f4>
   1a580:	7f90006f          	j	1b578 <_svfprintf_r+0x23e8>
   1a584:	00013783          	ld	a5,0(sp)
   1a588:	04000713          	li	a4,64
   1a58c:	02e7a023          	sw	a4,32(a5)
   1a590:	c85fe06f          	j	19214 <_svfprintf_r+0x84>
   1a594:	00023f37          	lui	t5,0x23
   1a598:	01000593          	li	a1,16
   1a59c:	000d8713          	mv	a4,s11
   1a5a0:	10812603          	lw	a2,264(sp)
   1a5a4:	8c0f0d93          	addi	s11,t5,-1856 # 228c0 <zeroes.0>
   1a5a8:	6b95d663          	bge	a1,s9,1ac54 <_svfprintf_r+0x1ac4>
   1a5ac:	00013b83          	ld	s7,0(sp)
   1a5b0:	01000893          	li	a7,16
   1a5b4:	00700d13          	li	s10,7
   1a5b8:	00c0006f          	j	1a5c4 <_svfprintf_r+0x1434>
   1a5bc:	ff0c8c9b          	addiw	s9,s9,-16
   1a5c0:	6998da63          	bge	a7,s9,1ac54 <_svfprintf_r+0x1ac4>
   1a5c4:	0016061b          	addiw	a2,a2,1
   1a5c8:	01070713          	addi	a4,a4,16
   1a5cc:	01b43023          	sd	s11,0(s0)
   1a5d0:	01143423          	sd	a7,8(s0)
   1a5d4:	10e13823          	sd	a4,272(sp)
   1a5d8:	10c12423          	sw	a2,264(sp)
   1a5dc:	01040413          	addi	s0,s0,16
   1a5e0:	fccd5ee3          	bge	s10,a2,1a5bc <_svfprintf_r+0x142c>
   1a5e4:	10010613          	addi	a2,sp,256
   1a5e8:	000b8593          	mv	a1,s7
   1a5ec:	00098513          	mv	a0,s3
   1a5f0:	4c9030ef          	jal	ra,1e2b8 <__ssprint_r>
   1a5f4:	88051ce3          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a5f8:	11013703          	ld	a4,272(sp)
   1a5fc:	10812603          	lw	a2,264(sp)
   1a600:	18010413          	addi	s0,sp,384
   1a604:	01000893          	li	a7,16
   1a608:	fb5ff06f          	j	1a5bc <_svfprintf_r+0x142c>
   1a60c:	000b0513          	mv	a0,s6
   1a610:	a15fe0ef          	jal	ra,19024 <strlen>
   1a614:	00050d1b          	sext.w	s10,a0
   1a618:	9bcff06f          	j	197d4 <_svfprintf_r+0x644>
   1a61c:	04013d03          	ld	s10,64(sp)
   1a620:	00023e37          	lui	t3,0x23
   1a624:	08913823          	sd	s1,144(sp)
   1a628:	09213c23          	sd	s2,152(sp)
   1a62c:	0b413023          	sd	s4,160(sp)
   1a630:	05813023          	sd	s8,64(sp)
   1a634:	000b0a13          	mv	s4,s6
   1a638:	07813903          	ld	s2,120(sp)
   1a63c:	08813483          	ld	s1,136(sp)
   1a640:	08013b03          	ld	s6,128(sp)
   1a644:	04813c03          	ld	s8,72(sp)
   1a648:	00013b83          	ld	s7,0(sp)
   1a64c:	00700313          	li	t1,7
   1a650:	01000893          	li	a7,16
   1a654:	8c0e0c93          	addi	s9,t3,-1856 # 228c0 <zeroes.0>
   1a658:	000d8713          	mv	a4,s11
   1a65c:	080d0c63          	beqz	s10,1a6f4 <_svfprintf_r+0x1564>
   1a660:	160c0863          	beqz	s8,1a7d0 <_svfprintf_r+0x1640>
   1a664:	fffc0c1b          	addiw	s8,s8,-1
   1a668:	10812783          	lw	a5,264(sp)
   1a66c:	01670733          	add	a4,a4,s6
   1a670:	00943023          	sd	s1,0(s0)
   1a674:	0017869b          	addiw	a3,a5,1
   1a678:	01643423          	sd	s6,8(s0)
   1a67c:	10e13823          	sd	a4,272(sp)
   1a680:	10d12423          	sw	a3,264(sp)
   1a684:	01040413          	addi	s0,s0,16
   1a688:	16d34463          	blt	t1,a3,1a7f0 <_svfprintf_r+0x1660>
   1a68c:	00094683          	lbu	a3,0(s2)
   1a690:	414a8db3          	sub	s11,s5,s4
   1a694:	000d879b          	sext.w	a5,s11
   1a698:	0006861b          	sext.w	a2,a3
   1a69c:	00f6d463          	bge	a3,a5,1a6a4 <_svfprintf_r+0x1514>
   1a6a0:	00060d93          	mv	s11,a2
   1a6a4:	000d8d9b          	sext.w	s11,s11
   1a6a8:	03b05863          	blez	s11,1a6d8 <_svfprintf_r+0x1548>
   1a6ac:	10812783          	lw	a5,264(sp)
   1a6b0:	01b70733          	add	a4,a4,s11
   1a6b4:	01443023          	sd	s4,0(s0)
   1a6b8:	0017869b          	addiw	a3,a5,1
   1a6bc:	01b43423          	sd	s11,8(s0)
   1a6c0:	10e13823          	sd	a4,272(sp)
   1a6c4:	10d12423          	sw	a3,264(sp)
   1a6c8:	36d34e63          	blt	t1,a3,1aa44 <_svfprintf_r+0x18b4>
   1a6cc:	00094683          	lbu	a3,0(s2)
   1a6d0:	01040413          	addi	s0,s0,16
   1a6d4:	0006861b          	sext.w	a2,a3
   1a6d8:	fffdc793          	not	a5,s11
   1a6dc:	43f7d793          	srai	a5,a5,0x3f
   1a6e0:	00fdf7b3          	and	a5,s11,a5
   1a6e4:	40f60dbb          	subw	s11,a2,a5
   1a6e8:	03b04c63          	bgtz	s11,1a720 <_svfprintf_r+0x1590>
   1a6ec:	00da0a33          	add	s4,s4,a3
   1a6f0:	f60d18e3          	bnez	s10,1a660 <_svfprintf_r+0x14d0>
   1a6f4:	f60c18e3          	bnez	s8,1a664 <_svfprintf_r+0x14d4>
   1a6f8:	07213c23          	sd	s2,120(sp)
   1a6fc:	000a0b13          	mv	s6,s4
   1a700:	09013483          	ld	s1,144(sp)
   1a704:	09813903          	ld	s2,152(sp)
   1a708:	0a013a03          	ld	s4,160(sp)
   1a70c:	04013c03          	ld	s8,64(sp)
   1a710:	00070d93          	mv	s11,a4
   1a714:	9d6af8e3          	bgeu	s5,s6,1a0e4 <_svfprintf_r+0xf54>
   1a718:	000a8b13          	mv	s6,s5
   1a71c:	9c9ff06f          	j	1a0e4 <_svfprintf_r+0xf54>
   1a720:	00023637          	lui	a2,0x23
   1a724:	10812783          	lw	a5,264(sp)
   1a728:	8c060613          	addi	a2,a2,-1856 # 228c0 <zeroes.0>
   1a72c:	07b8dc63          	bge	a7,s11,1a7a4 <_svfprintf_r+0x1614>
   1a730:	02913823          	sd	s1,48(sp)
   1a734:	000d8493          	mv	s1,s11
   1a738:	000c8d93          	mv	s11,s9
   1a73c:	00c0006f          	j	1a748 <_svfprintf_r+0x15b8>
   1a740:	ff04849b          	addiw	s1,s1,-16
   1a744:	0498da63          	bge	a7,s1,1a798 <_svfprintf_r+0x1608>
   1a748:	0017879b          	addiw	a5,a5,1
   1a74c:	01070713          	addi	a4,a4,16
   1a750:	01943023          	sd	s9,0(s0)
   1a754:	01143423          	sd	a7,8(s0)
   1a758:	10e13823          	sd	a4,272(sp)
   1a75c:	10f12423          	sw	a5,264(sp)
   1a760:	01040413          	addi	s0,s0,16
   1a764:	fcf35ee3          	bge	t1,a5,1a740 <_svfprintf_r+0x15b0>
   1a768:	10010613          	addi	a2,sp,256
   1a76c:	000b8593          	mv	a1,s7
   1a770:	00098513          	mv	a0,s3
   1a774:	345030ef          	jal	ra,1e2b8 <__ssprint_r>
   1a778:	f0051a63          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a77c:	01000893          	li	a7,16
   1a780:	ff04849b          	addiw	s1,s1,-16
   1a784:	11013703          	ld	a4,272(sp)
   1a788:	10812783          	lw	a5,264(sp)
   1a78c:	18010413          	addi	s0,sp,384
   1a790:	00700313          	li	t1,7
   1a794:	fa98cae3          	blt	a7,s1,1a748 <_svfprintf_r+0x15b8>
   1a798:	000d8613          	mv	a2,s11
   1a79c:	00048d93          	mv	s11,s1
   1a7a0:	03013483          	ld	s1,48(sp)
   1a7a4:	0017869b          	addiw	a3,a5,1
   1a7a8:	00ed8733          	add	a4,s11,a4
   1a7ac:	00c43023          	sd	a2,0(s0)
   1a7b0:	01b43423          	sd	s11,8(s0)
   1a7b4:	10e13823          	sd	a4,272(sp)
   1a7b8:	10d12423          	sw	a3,264(sp)
   1a7bc:	24d34ae3          	blt	t1,a3,1b210 <_svfprintf_r+0x2080>
   1a7c0:	00094683          	lbu	a3,0(s2)
   1a7c4:	01040413          	addi	s0,s0,16
   1a7c8:	00da0a33          	add	s4,s4,a3
   1a7cc:	f25ff06f          	j	1a6f0 <_svfprintf_r+0x1560>
   1a7d0:	fff90913          	addi	s2,s2,-1
   1a7d4:	fffd0d1b          	addiw	s10,s10,-1
   1a7d8:	e91ff06f          	j	1a668 <_svfprintf_r+0x14d8>
   1a7dc:	01097793          	andi	a5,s2,16
   1a7e0:	1e078a63          	beqz	a5,1a9d4 <_svfprintf_r+0x1844>
   1a7e4:	02013783          	ld	a5,32(sp)
   1a7e8:	0007bd03          	ld	s10,0(a5)
   1a7ec:	cd5ff06f          	j	1a4c0 <_svfprintf_r+0x1330>
   1a7f0:	10010613          	addi	a2,sp,256
   1a7f4:	000b8593          	mv	a1,s7
   1a7f8:	00098513          	mv	a0,s3
   1a7fc:	2bd030ef          	jal	ra,1e2b8 <__ssprint_r>
   1a800:	e8051663          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a804:	11013703          	ld	a4,272(sp)
   1a808:	18010413          	addi	s0,sp,384
   1a80c:	01000893          	li	a7,16
   1a810:	00700313          	li	t1,7
   1a814:	e79ff06f          	j	1a68c <_svfprintf_r+0x14fc>
   1a818:	17c10a93          	addi	s5,sp,380
   1a81c:	00913c23          	sd	s1,24(sp)
   1a820:	07813483          	ld	s1,120(sp)
   1a824:	400df913          	andi	s2,s11,1024
   1a828:	000a8b13          	mv	s6,s5
   1a82c:	00000793          	li	a5,0
   1a830:	02813c23          	sd	s0,56(sp)
   1a834:	00098a93          	mv	s5,s3
   1a838:	00090413          	mv	s0,s2
   1a83c:	00900b93          	li	s7,9
   1a840:	0ff00c13          	li	s8,255
   1a844:	02613823          	sd	t1,48(sp)
   1a848:	00078913          	mv	s2,a5
   1a84c:	000b0993          	mv	s3,s6
   1a850:	00a00593          	li	a1,10
   1a854:	000d0513          	mv	a0,s10
   1a858:	c4df50ef          	jal	ra,104a4 <__umoddi3>
   1a85c:	0305051b          	addiw	a0,a0,48
   1a860:	fea98fa3          	sb	a0,-1(s3)
   1a864:	0019091b          	addiw	s2,s2,1
   1a868:	fff98993          	addi	s3,s3,-1
   1a86c:	00040663          	beqz	s0,1a878 <_svfprintf_r+0x16e8>
   1a870:	0004c703          	lbu	a4,0(s1)
   1a874:	04e90663          	beq	s2,a4,1a8c0 <_svfprintf_r+0x1730>
   1a878:	00a00593          	li	a1,10
   1a87c:	000d0513          	mv	a0,s10
   1a880:	bddf50ef          	jal	ra,1045c <__hidden___udivdi3>
   1a884:	01abf663          	bgeu	s7,s10,1a890 <_svfprintf_r+0x1700>
   1a888:	00050d13          	mv	s10,a0
   1a88c:	fc5ff06f          	j	1a850 <_svfprintf_r+0x16c0>
   1a890:	000b0793          	mv	a5,s6
   1a894:	00098b13          	mv	s6,s3
   1a898:	000a8993          	mv	s3,s5
   1a89c:	00078a93          	mv	s5,a5
   1a8a0:	03813403          	ld	s0,56(sp)
   1a8a4:	06913c23          	sd	s1,120(sp)
   1a8a8:	03213c23          	sd	s2,56(sp)
   1a8ac:	01813483          	ld	s1,24(sp)
   1a8b0:	03013303          	ld	t1,48(sp)
   1a8b4:	416a8d3b          	subw	s10,s5,s6
   1a8b8:	000d8913          	mv	s2,s11
   1a8bc:	8b8ff06f          	j	19974 <_svfprintf_r+0x7e4>
   1a8c0:	fb870ce3          	beq	a4,s8,1a878 <_svfprintf_r+0x16e8>
   1a8c4:	fdabf6e3          	bgeu	s7,s10,1a890 <_svfprintf_r+0x1700>
   1a8c8:	08013783          	ld	a5,128(sp)
   1a8cc:	08813583          	ld	a1,136(sp)
   1a8d0:	00000913          	li	s2,0
   1a8d4:	40f989b3          	sub	s3,s3,a5
   1a8d8:	00078613          	mv	a2,a5
   1a8dc:	00098513          	mv	a0,s3
   1a8e0:	80dfe0ef          	jal	ra,190ec <strncpy>
   1a8e4:	0014c703          	lbu	a4,1(s1)
   1a8e8:	000d0513          	mv	a0,s10
   1a8ec:	00a00593          	li	a1,10
   1a8f0:	00e03733          	snez	a4,a4
   1a8f4:	00e484b3          	add	s1,s1,a4
   1a8f8:	b65f50ef          	jal	ra,1045c <__hidden___udivdi3>
   1a8fc:	00050d13          	mv	s10,a0
   1a900:	f51ff06f          	j	1a850 <_svfprintf_r+0x16c0>
   1a904:	10812683          	lw	a3,264(sp)
   1a908:	000225b7          	lui	a1,0x22
   1a90c:	fc858593          	addi	a1,a1,-56 # 21fc8 <__clzdi2+0xb4>
   1a910:	0016869b          	addiw	a3,a3,1
   1a914:	00b43023          	sd	a1,0(s0)
   1a918:	001d8713          	addi	a4,s11,1
   1a91c:	00100593          	li	a1,1
   1a920:	00b43423          	sd	a1,8(s0)
   1a924:	10d12423          	sw	a3,264(sp)
   1a928:	0006859b          	sext.w	a1,a3
   1a92c:	10e13823          	sd	a4,272(sp)
   1a930:	00700693          	li	a3,7
   1a934:	01040413          	addi	s0,s0,16
   1a938:	06b6cc63          	blt	a3,a1,1a9b0 <_svfprintf_r+0x1820>
   1a93c:	20061463          	bnez	a2,1ab44 <_svfprintf_r+0x19b4>
   1a940:	03813783          	ld	a5,56(sp)
   1a944:	00197693          	andi	a3,s2,1
   1a948:	00d7e6b3          	or	a3,a5,a3
   1a94c:	00069463          	bnez	a3,1a954 <_svfprintf_r+0x17c4>
   1a950:	b09fe06f          	j	19458 <_svfprintf_r+0x2c8>
   1a954:	10812603          	lw	a2,264(sp)
   1a958:	05813783          	ld	a5,88(sp)
   1a95c:	06013683          	ld	a3,96(sp)
   1a960:	00e78733          	add	a4,a5,a4
   1a964:	00d43023          	sd	a3,0(s0)
   1a968:	0016069b          	addiw	a3,a2,1
   1a96c:	00f43423          	sd	a5,8(s0)
   1a970:	10e13823          	sd	a4,272(sp)
   1a974:	10d12423          	sw	a3,264(sp)
   1a978:	00700613          	li	a2,7
   1a97c:	5ad64263          	blt	a2,a3,1af20 <_svfprintf_r+0x1d90>
   1a980:	01040413          	addi	s0,s0,16
   1a984:	03813783          	ld	a5,56(sp)
   1a988:	0016861b          	addiw	a2,a3,1
   1a98c:	01643023          	sd	s6,0(s0)
   1a990:	00e78733          	add	a4,a5,a4
   1a994:	00f43423          	sd	a5,8(s0)
   1a998:	10e13823          	sd	a4,272(sp)
   1a99c:	10c12423          	sw	a2,264(sp)
   1a9a0:	00700793          	li	a5,7
   1a9a4:	00c7c463          	blt	a5,a2,1a9ac <_svfprintf_r+0x181c>
   1a9a8:	aadfe06f          	j	19454 <_svfprintf_r+0x2c4>
   1a9ac:	d91fe06f          	j	1973c <_svfprintf_r+0x5ac>
   1a9b0:	00013583          	ld	a1,0(sp)
   1a9b4:	10010613          	addi	a2,sp,256
   1a9b8:	00098513          	mv	a0,s3
   1a9bc:	0fd030ef          	jal	ra,1e2b8 <__ssprint_r>
   1a9c0:	cc051663          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1a9c4:	0d812603          	lw	a2,216(sp)
   1a9c8:	11013703          	ld	a4,272(sp)
   1a9cc:	18010413          	addi	s0,sp,384
   1a9d0:	f6dff06f          	j	1a93c <_svfprintf_r+0x17ac>
   1a9d4:	02013683          	ld	a3,32(sp)
   1a9d8:	04097793          	andi	a5,s2,64
   1a9dc:	0006ad03          	lw	s10,0(a3)
   1a9e0:	24078263          	beqz	a5,1ac24 <_svfprintf_r+0x1a94>
   1a9e4:	030d1d13          	slli	s10,s10,0x30
   1a9e8:	030d5d13          	srli	s10,s10,0x30
   1a9ec:	ad5ff06f          	j	1a4c0 <_svfprintf_r+0x1330>
   1a9f0:	00090d93          	mv	s11,s2
   1a9f4:	02e13023          	sd	a4,32(sp)
   1a9f8:	ffdfe06f          	j	199f4 <_svfprintf_r+0x864>
   1a9fc:	00013583          	ld	a1,0(sp)
   1aa00:	10010613          	addi	a2,sp,256
   1aa04:	00098513          	mv	a0,s3
   1aa08:	0b1030ef          	jal	ra,1e2b8 <__ssprint_r>
   1aa0c:	c8051063          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1aa10:	11013d83          	ld	s11,272(sp)
   1aa14:	18010413          	addi	s0,sp,384
   1aa18:	934ff06f          	j	19b4c <_svfprintf_r+0x9bc>
   1aa1c:	0017869b          	addiw	a3,a5,1
   1aa20:	01b43023          	sd	s11,0(s0)
   1aa24:	01943423          	sd	s9,8(s0)
   1aa28:	01970733          	add	a4,a4,s9
   1aa2c:	10e13823          	sd	a4,272(sp)
   1aa30:	10d12423          	sw	a3,264(sp)
   1aa34:	00700793          	li	a5,7
   1aa38:	00d7c463          	blt	a5,a3,1aa40 <_svfprintf_r+0x18b0>
   1aa3c:	a19fe06f          	j	19454 <_svfprintf_r+0x2c4>
   1aa40:	cfdfe06f          	j	1973c <_svfprintf_r+0x5ac>
   1aa44:	10010613          	addi	a2,sp,256
   1aa48:	000b8593          	mv	a1,s7
   1aa4c:	00098513          	mv	a0,s3
   1aa50:	069030ef          	jal	ra,1e2b8 <__ssprint_r>
   1aa54:	c2051c63          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1aa58:	00094683          	lbu	a3,0(s2)
   1aa5c:	11013703          	ld	a4,272(sp)
   1aa60:	18010413          	addi	s0,sp,384
   1aa64:	0006861b          	sext.w	a2,a3
   1aa68:	01000893          	li	a7,16
   1aa6c:	00700313          	li	t1,7
   1aa70:	c69ff06f          	j	1a6d8 <_svfprintf_r+0x1548>
   1aa74:	00013583          	ld	a1,0(sp)
   1aa78:	10010613          	addi	a2,sp,256
   1aa7c:	00098513          	mv	a0,s3
   1aa80:	08613823          	sd	t1,144(sp)
   1aa84:	035030ef          	jal	ra,1e2b8 <__ssprint_r>
   1aa88:	c0051263          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1aa8c:	11013d83          	ld	s11,272(sp)
   1aa90:	09013303          	ld	t1,144(sp)
   1aa94:	18010413          	addi	s0,sp,384
   1aa98:	989fe06f          	j	19420 <_svfprintf_r+0x290>
   1aa9c:	0f013503          	ld	a0,240(sp)
   1aaa0:	0f813583          	ld	a1,248(sp)
   1aaa4:	00000613          	li	a2,0
   1aaa8:	00000693          	li	a3,0
   1aaac:	799050ef          	jal	ra,20a44 <__letf2>
   1aab0:	060542e3          	bltz	a0,1b314 <_svfprintf_r+0x2184>
   1aab4:	0cf14703          	lbu	a4,207(sp)
   1aab8:	04700793          	li	a5,71
   1aabc:	1d97d263          	bge	a5,s9,1ac80 <_svfprintf_r+0x1af0>
   1aac0:	000227b7          	lui	a5,0x22
   1aac4:	f7878b13          	addi	s6,a5,-136 # 21f78 <__clzdi2+0x64>
   1aac8:	f7f97913          	andi	s2,s2,-129
   1aacc:	00013c23          	sd	zero,24(sp)
   1aad0:	04013423          	sd	zero,72(sp)
   1aad4:	04013023          	sd	zero,64(sp)
   1aad8:	02013823          	sd	zero,48(sp)
   1aadc:	0009091b          	sext.w	s2,s2
   1aae0:	00300c13          	li	s8,3
   1aae4:	00300d13          	li	s10,3
   1aae8:	00000313          	li	t1,0
   1aaec:	00070463          	beqz	a4,1aaf4 <_svfprintf_r+0x1964>
   1aaf0:	d11fe06f          	j	19800 <_svfprintf_r+0x670>
   1aaf4:	891fe06f          	j	19384 <_svfprintf_r+0x1f4>
   1aaf8:	00600793          	li	a5,6
   1aafc:	00030693          	mv	a3,t1
   1ab00:	1a67e663          	bltu	a5,t1,1acac <_svfprintf_r+0x1b1c>
   1ab04:	00068d1b          	sext.w	s10,a3
   1ab08:	000227b7          	lui	a5,0x22
   1ab0c:	000d0c13          	mv	s8,s10
   1ab10:	03513023          	sd	s5,32(sp)
   1ab14:	fc078b13          	addi	s6,a5,-64 # 21fc0 <__clzdi2+0xac>
   1ab18:	859fe06f          	j	19370 <_svfprintf_r+0x1e0>
   1ab1c:	0014041b          	addiw	s0,s0,1
   1ab20:	015d0d33          	add	s10,s10,s5
   1ab24:	01bcb023          	sd	s11,0(s9)
   1ab28:	015cb423          	sd	s5,8(s9)
   1ab2c:	11a13823          	sd	s10,272(sp)
   1ab30:	10812423          	sw	s0,264(sp)
   1ab34:	00700793          	li	a5,7
   1ab38:	0087c463          	blt	a5,s0,1ab40 <_svfprintf_r+0x19b0>
   1ab3c:	bcdfe06f          	j	19708 <_svfprintf_r+0x578>
   1ab40:	eecff06f          	j	1a22c <_svfprintf_r+0x109c>
   1ab44:	10812583          	lw	a1,264(sp)
   1ab48:	05813783          	ld	a5,88(sp)
   1ab4c:	06013683          	ld	a3,96(sp)
   1ab50:	01040413          	addi	s0,s0,16
   1ab54:	00e78733          	add	a4,a5,a4
   1ab58:	fed43823          	sd	a3,-16(s0)
   1ab5c:	0015869b          	addiw	a3,a1,1
   1ab60:	fef43c23          	sd	a5,-8(s0)
   1ab64:	10e13823          	sd	a4,272(sp)
   1ab68:	10d12423          	sw	a3,264(sp)
   1ab6c:	00700593          	li	a1,7
   1ab70:	3ad5c863          	blt	a1,a3,1af20 <_svfprintf_r+0x1d90>
   1ab74:	e00658e3          	bgez	a2,1a984 <_svfprintf_r+0x17f4>
   1ab78:	00023f37          	lui	t5,0x23
   1ab7c:	ff000593          	li	a1,-16
   1ab80:	40c00cbb          	negw	s9,a2
   1ab84:	8c0f0d93          	addi	s11,t5,-1856 # 228c0 <zeroes.0>
   1ab88:	01000d13          	li	s10,16
   1ab8c:	00700a93          	li	s5,7
   1ab90:	00b64863          	blt	a2,a1,1aba0 <_svfprintf_r+0x1a10>
   1ab94:	1410006f          	j	1b4d4 <_svfprintf_r+0x2344>
   1ab98:	ff0c8c9b          	addiw	s9,s9,-16
   1ab9c:	139d5ce3          	bge	s10,s9,1b4d4 <_svfprintf_r+0x2344>
   1aba0:	0016869b          	addiw	a3,a3,1
   1aba4:	01070713          	addi	a4,a4,16
   1aba8:	01b43023          	sd	s11,0(s0)
   1abac:	01a43423          	sd	s10,8(s0)
   1abb0:	10e13823          	sd	a4,272(sp)
   1abb4:	10d12423          	sw	a3,264(sp)
   1abb8:	01040413          	addi	s0,s0,16
   1abbc:	fcdadee3          	bge	s5,a3,1ab98 <_svfprintf_r+0x1a08>
   1abc0:	00013583          	ld	a1,0(sp)
   1abc4:	10010613          	addi	a2,sp,256
   1abc8:	00098513          	mv	a0,s3
   1abcc:	6ec030ef          	jal	ra,1e2b8 <__ssprint_r>
   1abd0:	aa051e63          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1abd4:	11013703          	ld	a4,272(sp)
   1abd8:	10812683          	lw	a3,264(sp)
   1abdc:	18010413          	addi	s0,sp,384
   1abe0:	fb9ff06f          	j	1ab98 <_svfprintf_r+0x1a08>
   1abe4:	200df793          	andi	a5,s11,512
   1abe8:	0e078c63          	beqz	a5,1ace0 <_svfprintf_r+0x1b50>
   1abec:	0ffd7d13          	zext.b	s10,s10
   1abf0:	02e13023          	sd	a4,32(sp)
   1abf4:	00100793          	li	a5,1
   1abf8:	d4dfe06f          	j	19944 <_svfprintf_r+0x7b4>
   1abfc:	20097793          	andi	a5,s2,512
   1ac00:	0c078a63          	beqz	a5,1acd4 <_svfprintf_r+0x1b44>
   1ac04:	0ffd7d13          	zext.b	s10,s10
   1ac08:	e2dfe06f          	j	19a34 <_svfprintf_r+0x8a4>
   1ac0c:	20097793          	andi	a5,s2,512
   1ac10:	0e078863          	beqz	a5,1ad00 <_svfprintf_r+0x1b70>
   1ac14:	018d1d1b          	slliw	s10,s10,0x18
   1ac18:	418d5d1b          	sraiw	s10,s10,0x18
   1ac1c:	000d0793          	mv	a5,s10
   1ac20:	db5fe06f          	j	199d4 <_svfprintf_r+0x844>
   1ac24:	20097793          	andi	a5,s2,512
   1ac28:	0c078663          	beqz	a5,1acf4 <_svfprintf_r+0x1b64>
   1ac2c:	0ffd7d13          	zext.b	s10,s10
   1ac30:	891ff06f          	j	1a4c0 <_svfprintf_r+0x1330>
   1ac34:	0f813783          	ld	a5,248(sp)
   1ac38:	2c07cc63          	bltz	a5,1af10 <_svfprintf_r+0x1d80>
   1ac3c:	0cf14703          	lbu	a4,207(sp)
   1ac40:	04700793          	li	a5,71
   1ac44:	7b97d863          	bge	a5,s9,1b3f4 <_svfprintf_r+0x2264>
   1ac48:	000227b7          	lui	a5,0x22
   1ac4c:	f8878b13          	addi	s6,a5,-120 # 21f88 <__clzdi2+0x74>
   1ac50:	e79ff06f          	j	1aac8 <_svfprintf_r+0x1938>
   1ac54:	0016059b          	addiw	a1,a2,1
   1ac58:	00ec8733          	add	a4,s9,a4
   1ac5c:	01b43023          	sd	s11,0(s0)
   1ac60:	01943423          	sd	s9,8(s0)
   1ac64:	10e13823          	sd	a4,272(sp)
   1ac68:	10b12423          	sw	a1,264(sp)
   1ac6c:	00700693          	li	a3,7
   1ac70:	2eb6c463          	blt	a3,a1,1af58 <_svfprintf_r+0x1dc8>
   1ac74:	01040413          	addi	s0,s0,16
   1ac78:	00070d93          	mv	s11,a4
   1ac7c:	c58ff06f          	j	1a0d4 <_svfprintf_r+0xf44>
   1ac80:	000227b7          	lui	a5,0x22
   1ac84:	f7078b13          	addi	s6,a5,-144 # 21f70 <__clzdi2+0x5c>
   1ac88:	e41ff06f          	j	1aac8 <_svfprintf_r+0x1938>
   1ac8c:	00013583          	ld	a1,0(sp)
   1ac90:	10010613          	addi	a2,sp,256
   1ac94:	00098513          	mv	a0,s3
   1ac98:	620030ef          	jal	ra,1e2b8 <__ssprint_r>
   1ac9c:	9e051863          	bnez	a0,19e8c <_svfprintf_r+0xcfc>
   1aca0:	11013d83          	ld	s11,272(sp)
   1aca4:	18010413          	addi	s0,sp,384
   1aca8:	c14ff06f          	j	1a0bc <_svfprintf_r+0xf2c>
   1acac:	00600693          	li	a3,6
   1acb0:	e55ff06f          	j	1ab04 <_svfprintf_r+0x1974>
   1acb4:	416a8cb3          	sub	s9,s5,s6
   1acb8:	40d7863b          	subw	a2,a5,a3
   1acbc:	000c879b          	sext.w	a5,s9
   1acc0:	000d8713          	mv	a4,s11
   1acc4:	00f65463          	bge	a2,a5,1accc <_svfprintf_r+0x1b3c>
   1acc8:	00060c93          	mv	s9,a2
   1accc:	000c8c9b          	sext.w	s9,s9
   1acd0:	ca8ff06f          	j	1a178 <_svfprintf_r+0xfe8>
   1acd4:	020d1d13          	slli	s10,s10,0x20
   1acd8:	020d5d13          	srli	s10,s10,0x20
   1acdc:	d59fe06f          	j	19a34 <_svfprintf_r+0x8a4>
   1ace0:	020d1d13          	slli	s10,s10,0x20
   1ace4:	020d5d13          	srli	s10,s10,0x20
   1ace8:	02e13023          	sd	a4,32(sp)
   1acec:	00100793          	li	a5,1
   1acf0:	c55fe06f          	j	19944 <_svfprintf_r+0x7b4>
   1acf4:	020d1d13          	slli	s10,s10,0x20
   1acf8:	020d5d13          	srli	s10,s10,0x20
   1acfc:	fc4ff06f          	j	1a4c0 <_svfprintf_r+0x1330>
   1ad00:	000d0793          	mv	a5,s10
   1ad04:	cd1fe06f          	j	199d4 <_svfprintf_r+0x844>
   1ad08:	01013783          	ld	a5,16(sp)
   1ad0c:	00f71023          	sh	a5,0(a4)
   1ad10:	db9fe06f          	j	19ac8 <_svfprintf_r+0x938>
   1ad14:	00030913          	mv	s2,t1
   1ad18:	00200693          	li	a3,2
   1ad1c:	00090713          	mv	a4,s2
   1ad20:	0e810893          	addi	a7,sp,232
   1ad24:	0dc10813          	addi	a6,sp,220
   1ad28:	0d810793          	addi	a5,sp,216
   1ad2c:	000b8593          	mv	a1,s7
   1ad30:	000c0613          	mv	a2,s8
   1ad34:	00098513          	mv	a0,s3
   1ad38:	02613823          	sd	t1,48(sp)
   1ad3c:	a6dfa0ef          	jal	ra,157a8 <_ldtoa_r>
   1ad40:	06700713          	li	a4,103
   1ad44:	03013303          	ld	t1,48(sp)
   1ad48:	00050b13          	mv	s6,a0
   1ad4c:	4aec8663          	beq	s9,a4,1b1f8 <_svfprintf_r+0x2068>
   1ad50:	04700713          	li	a4,71
   1ad54:	4aec8263          	beq	s9,a4,1b1f8 <_svfprintf_r+0x2068>
   1ad58:	fdfcfa93          	andi	s5,s9,-33
   1ad5c:	04600713          	li	a4,70
   1ad60:	01250d33          	add	s10,a0,s2
   1ad64:	5eea8463          	beq	s5,a4,1b34c <_svfprintf_r+0x21bc>
   1ad68:	000c0593          	mv	a1,s8
   1ad6c:	00000613          	li	a2,0
   1ad70:	00000693          	li	a3,0
   1ad74:	000b8513          	mv	a0,s7
   1ad78:	02613823          	sd	t1,48(sp)
   1ad7c:	319050ef          	jal	ra,20894 <__eqtf2>
   1ad80:	03013303          	ld	t1,48(sp)
   1ad84:	000d0c13          	mv	s8,s10
   1ad88:	02050263          	beqz	a0,1adac <_svfprintf_r+0x1c1c>
   1ad8c:	0e813c03          	ld	s8,232(sp)
   1ad90:	01ac7e63          	bgeu	s8,s10,1adac <_svfprintf_r+0x1c1c>
   1ad94:	03000693          	li	a3,48
   1ad98:	001c0793          	addi	a5,s8,1
   1ad9c:	0ef13423          	sd	a5,232(sp)
   1ada0:	00dc0023          	sb	a3,0(s8)
   1ada4:	0e813c03          	ld	s8,232(sp)
   1ada8:	ffac68e3          	bltu	s8,s10,1ad98 <_svfprintf_r+0x1c08>
   1adac:	416c07bb          	subw	a5,s8,s6
   1adb0:	02f13c23          	sd	a5,56(sp)
   1adb4:	0d812703          	lw	a4,216(sp)
   1adb8:	04700693          	li	a3,71
   1adbc:	02e13823          	sd	a4,48(sp)
   1adc0:	3ada8463          	beq	s5,a3,1b168 <_svfprintf_r+0x1fd8>
   1adc4:	04600693          	li	a3,70
   1adc8:	68da8263          	beq	s5,a3,1b44c <_svfprintf_r+0x22bc>
   1adcc:	fff70d1b          	addiw	s10,a4,-1
   1add0:	0da12c23          	sw	s10,216(sp)
   1add4:	06100693          	li	a3,97
   1add8:	0cdc8ee3          	beq	s9,a3,1b6b4 <_svfprintf_r+0x2524>
   1addc:	04100613          	li	a2,65
   1ade0:	05000693          	li	a3,80
   1ade4:	3acc9063          	bne	s9,a2,1b184 <_svfprintf_r+0x1ff4>
   1ade8:	00100613          	li	a2,1
   1adec:	0ed10023          	sb	a3,224(sp)
   1adf0:	02b00693          	li	a3,43
   1adf4:	000d5863          	bgez	s10,1ae04 <_svfprintf_r+0x1c74>
   1adf8:	00100d13          	li	s10,1
   1adfc:	40ed0d3b          	subw	s10,s10,a4
   1ae00:	02d00693          	li	a3,45
   1ae04:	0ed100a3          	sb	a3,225(sp)
   1ae08:	00900713          	li	a4,9
   1ae0c:	71a75863          	bge	a4,s10,1b51c <_svfprintf_r+0x238c>
   1ae10:	0ef10913          	addi	s2,sp,239
   1ae14:	00090a93          	mv	s5,s2
   1ae18:	06300b93          	li	s7,99
   1ae1c:	00a00593          	li	a1,10
   1ae20:	000d0513          	mv	a0,s10
   1ae24:	eb4f50ef          	jal	ra,104d8 <__moddi3>
   1ae28:	0305079b          	addiw	a5,a0,48
   1ae2c:	fefa8fa3          	sb	a5,-1(s5)
   1ae30:	000d0513          	mv	a0,s10
   1ae34:	00a00593          	li	a1,10
   1ae38:	000d0c13          	mv	s8,s10
   1ae3c:	e18f50ef          	jal	ra,10454 <__divdi3>
   1ae40:	000a8d93          	mv	s11,s5
   1ae44:	00050d1b          	sext.w	s10,a0
   1ae48:	fffa8a93          	addi	s5,s5,-1
   1ae4c:	fd8bc8e3          	blt	s7,s8,1ae1c <_svfprintf_r+0x1c8c>
   1ae50:	030d0d1b          	addiw	s10,s10,48
   1ae54:	ffed8713          	addi	a4,s11,-2
   1ae58:	ffaa8fa3          	sb	s10,-1(s5)
   1ae5c:	072770e3          	bgeu	a4,s2,1b6bc <_svfprintf_r+0x252c>
   1ae60:	0e210693          	addi	a3,sp,226
   1ae64:	00074783          	lbu	a5,0(a4)
   1ae68:	00170713          	addi	a4,a4,1
   1ae6c:	00168693          	addi	a3,a3,1
   1ae70:	fef68fa3          	sb	a5,-1(a3)
   1ae74:	ff2718e3          	bne	a4,s2,1ae64 <_svfprintf_r+0x1cd4>
   1ae78:	0f110713          	addi	a4,sp,241
   1ae7c:	0e210793          	addi	a5,sp,226
   1ae80:	41b70733          	sub	a4,a4,s11
   1ae84:	00e78733          	add	a4,a5,a4
   1ae88:	0e010693          	addi	a3,sp,224
   1ae8c:	40d707bb          	subw	a5,a4,a3
   1ae90:	06f13823          	sd	a5,112(sp)
   1ae94:	07013703          	ld	a4,112(sp)
   1ae98:	03813783          	ld	a5,56(sp)
   1ae9c:	00100613          	li	a2,1
   1aea0:	00f70d3b          	addw	s10,a4,a5
   1aea4:	000d0713          	mv	a4,s10
   1aea8:	6ef65c63          	bge	a2,a5,1b5a0 <_svfprintf_r+0x2410>
   1aeac:	05813783          	ld	a5,88(sp)
   1aeb0:	00f70d3b          	addw	s10,a4,a5
   1aeb4:	04013783          	ld	a5,64(sp)
   1aeb8:	fffd4813          	not	a6,s10
   1aebc:	43f85813          	srai	a6,a6,0x3f
   1aec0:	bff7f913          	andi	s2,a5,-1025
   1aec4:	0009091b          	sext.w	s2,s2
   1aec8:	010d7833          	and	a6,s10,a6
   1aecc:	10096913          	ori	s2,s2,256
   1aed0:	00080c1b          	sext.w	s8,a6
   1aed4:	04013423          	sd	zero,72(sp)
   1aed8:	04013023          	sd	zero,64(sp)
   1aedc:	02013823          	sd	zero,48(sp)
   1aee0:	09813783          	ld	a5,152(sp)
   1aee4:	2a078663          	beqz	a5,1b190 <_svfprintf_r+0x2000>
   1aee8:	02d00713          	li	a4,45
   1aeec:	0ce107a3          	sb	a4,207(sp)
   1aef0:	00000313          	li	t1,0
   1aef4:	001c0c1b          	addiw	s8,s8,1
   1aef8:	c8cfe06f          	j	19384 <_svfprintf_r+0x1f4>
   1aefc:	00013583          	ld	a1,0(sp)
   1af00:	05013503          	ld	a0,80(sp)
   1af04:	10010613          	addi	a2,sp,256
   1af08:	3b0030ef          	jal	ra,1e2b8 <__ssprint_r>
   1af0c:	dacfe06f          	j	194b8 <_svfprintf_r+0x328>
   1af10:	02d00793          	li	a5,45
   1af14:	0cf107a3          	sb	a5,207(sp)
   1af18:	02d00713          	li	a4,45
   1af1c:	d25ff06f          	j	1ac40 <_svfprintf_r+0x1ab0>
   1af20:	00013583          	ld	a1,0(sp)
   1af24:	10010613          	addi	a2,sp,256
   1af28:	00098513          	mv	a0,s3
   1af2c:	38c030ef          	jal	ra,1e2b8 <__ssprint_r>
   1af30:	00050463          	beqz	a0,1af38 <_svfprintf_r+0x1da8>
   1af34:	f59fe06f          	j	19e8c <_svfprintf_r+0xcfc>
   1af38:	0d812603          	lw	a2,216(sp)
   1af3c:	11013703          	ld	a4,272(sp)
   1af40:	10812683          	lw	a3,264(sp)
   1af44:	18010413          	addi	s0,sp,384
   1af48:	a2065ee3          	bgez	a2,1a984 <_svfprintf_r+0x17f4>
   1af4c:	c2dff06f          	j	1ab78 <_svfprintf_r+0x19e8>
   1af50:	00600313          	li	t1,6
   1af54:	e88fe06f          	j	195dc <_svfprintf_r+0x44c>
   1af58:	00013583          	ld	a1,0(sp)
   1af5c:	10010613          	addi	a2,sp,256
   1af60:	00098513          	mv	a0,s3
   1af64:	354030ef          	jal	ra,1e2b8 <__ssprint_r>
   1af68:	00050463          	beqz	a0,1af70 <_svfprintf_r+0x1de0>
   1af6c:	f21fe06f          	j	19e8c <_svfprintf_r+0xcfc>
   1af70:	11013d83          	ld	s11,272(sp)
   1af74:	18010413          	addi	s0,sp,384
   1af78:	95cff06f          	j	1a0d4 <_svfprintf_r+0xf44>
   1af7c:	0013091b          	addiw	s2,t1,1 # ffffffff80000001 <__BSS_END__+0xffffffff7ffdbdf9>
   1af80:	00200693          	li	a3,2
   1af84:	d99ff06f          	j	1ad1c <_svfprintf_r+0x1b8c>
   1af88:	00030913          	mv	s2,t1
   1af8c:	00300693          	li	a3,3
   1af90:	d8dff06f          	j	1ad1c <_svfprintf_r+0x1b8c>
   1af94:	000c0593          	mv	a1,s8
   1af98:	000b8513          	mv	a0,s7
   1af9c:	02613823          	sd	t1,48(sp)
   1afa0:	591060ef          	jal	ra,21d30 <__trunctfdf2>
   1afa4:	0d810593          	addi	a1,sp,216
   1afa8:	b5dfd0ef          	jal	ra,18b04 <frexp>
   1afac:	495060ef          	jal	ra,21c40 <__extenddftf2>
   1afb0:	00022737          	lui	a4,0x22
   1afb4:	1f873683          	ld	a3,504(a4) # 221f8 <blanks.1+0x18>
   1afb8:	00000613          	li	a2,0
   1afbc:	395050ef          	jal	ra,20b50 <__multf3>
   1afc0:	00000613          	li	a2,0
   1afc4:	00000693          	li	a3,0
   1afc8:	00050d93          	mv	s11,a0
   1afcc:	00058913          	mv	s2,a1
   1afd0:	0c5050ef          	jal	ra,20894 <__eqtf2>
   1afd4:	03013303          	ld	t1,48(sp)
   1afd8:	00051663          	bnez	a0,1afe4 <_svfprintf_r+0x1e54>
   1afdc:	00100713          	li	a4,1
   1afe0:	0ce12c23          	sw	a4,216(sp)
   1afe4:	00022737          	lui	a4,0x22
   1afe8:	f9070793          	addi	a5,a4,-112 # 21f90 <__clzdi2+0x7c>
   1afec:	02f13c23          	sd	a5,56(sp)
   1aff0:	000226b7          	lui	a3,0x22
   1aff4:	2086b783          	ld	a5,520(a3) # 22208 <blanks.1+0x28>
   1aff8:	02031713          	slli	a4,t1,0x20
   1affc:	02075713          	srli	a4,a4,0x20
   1b000:	00170713          	addi	a4,a4,1
   1b004:	02f13823          	sd	a5,48(sp)
   1b008:	0003061b          	sext.w	a2,t1
   1b00c:	00eb07b3          	add	a5,s6,a4
   1b010:	04913423          	sd	s1,72(sp)
   1b014:	0b413023          	sd	s4,160(sp)
   1b018:	0a813823          	sd	s0,176(sp)
   1b01c:	0ac13c23          	sd	a2,184(sp)
   1b020:	03813403          	ld	s0,56(sp)
   1b024:	00078493          	mv	s1,a5
   1b028:	0a613423          	sd	t1,168(sp)
   1b02c:	000b0a13          	mv	s4,s6
   1b030:	00098b93          	mv	s7,s3
   1b034:	000b0d13          	mv	s10,s6
   1b038:	0140006f          	j	1b04c <_svfprintf_r+0x1ebc>
   1b03c:	00000613          	li	a2,0
   1b040:	00000693          	li	a3,0
   1b044:	051050ef          	jal	ra,20894 <__eqtf2>
   1b048:	56050463          	beqz	a0,1b5b0 <_svfprintf_r+0x2420>
   1b04c:	03013683          	ld	a3,48(sp)
   1b050:	00000613          	li	a2,0
   1b054:	000d8513          	mv	a0,s11
   1b058:	00090593          	mv	a1,s2
   1b05c:	2f5050ef          	jal	ra,20b50 <__multf3>
   1b060:	00058913          	mv	s2,a1
   1b064:	00050993          	mv	s3,a0
   1b068:	2e9060ef          	jal	ra,21b50 <__fixtfsi>
   1b06c:	00050c1b          	sext.w	s8,a0
   1b070:	000c0513          	mv	a0,s8
   1b074:	345060ef          	jal	ra,21bb8 <__floatsitf>
   1b078:	00058693          	mv	a3,a1
   1b07c:	00050613          	mv	a2,a0
   1b080:	00090593          	mv	a1,s2
   1b084:	00098513          	mv	a0,s3
   1b088:	214060ef          	jal	ra,2129c <__subtf3>
   1b08c:	01840733          	add	a4,s0,s8
   1b090:	00074683          	lbu	a3,0(a4)
   1b094:	000a0993          	mv	s3,s4
   1b098:	001a0a13          	addi	s4,s4,1
   1b09c:	feda0fa3          	sb	a3,-1(s4)
   1b0a0:	00050a93          	mv	s5,a0
   1b0a4:	00058b13          	mv	s6,a1
   1b0a8:	00050d93          	mv	s11,a0
   1b0ac:	00058913          	mv	s2,a1
   1b0b0:	f94496e3          	bne	s1,s4,1b03c <_svfprintf_r+0x1eac>
   1b0b4:	000a0a93          	mv	s5,s4
   1b0b8:	04813483          	ld	s1,72(sp)
   1b0bc:	0a813303          	ld	t1,168(sp)
   1b0c0:	0b013403          	ld	s0,176(sp)
   1b0c4:	0a013a03          	ld	s4,160(sp)
   1b0c8:	03313823          	sd	s3,48(sp)
   1b0cc:	000d0b13          	mv	s6,s10
   1b0d0:	000b8993          	mv	s3,s7
   1b0d4:	00050d13          	mv	s10,a0
   1b0d8:	00058b93          	mv	s7,a1
   1b0dc:	fff00d93          	li	s11,-1
   1b0e0:	000226b7          	lui	a3,0x22
   1b0e4:	2186b903          	ld	s2,536(a3) # 22218 <blanks.1+0x38>
   1b0e8:	00000613          	li	a2,0
   1b0ec:	000d0513          	mv	a0,s10
   1b0f0:	00090693          	mv	a3,s2
   1b0f4:	000b8593          	mv	a1,s7
   1b0f8:	04613423          	sd	t1,72(sp)
   1b0fc:	03d050ef          	jal	ra,20938 <__getf2>
   1b100:	04813303          	ld	t1,72(sp)
   1b104:	36a04663          	bgtz	a0,1b470 <_svfprintf_r+0x22e0>
   1b108:	00000613          	li	a2,0
   1b10c:	00090693          	mv	a3,s2
   1b110:	000d0513          	mv	a0,s10
   1b114:	000b8593          	mv	a1,s7
   1b118:	77c050ef          	jal	ra,20894 <__eqtf2>
   1b11c:	04813303          	ld	t1,72(sp)
   1b120:	00051663          	bnez	a0,1b12c <_svfprintf_r+0x1f9c>
   1b124:	001c7c13          	andi	s8,s8,1
   1b128:	340c1463          	bnez	s8,1b470 <_svfprintf_r+0x22e0>
   1b12c:	001d8c1b          	addiw	s8,s11,1
   1b130:	018a8c33          	add	s8,s5,s8
   1b134:	03000693          	li	a3,48
   1b138:	380dc263          	bltz	s11,1b4bc <_svfprintf_r+0x232c>
   1b13c:	001a8a93          	addi	s5,s5,1
   1b140:	feda8fa3          	sb	a3,-1(s5)
   1b144:	ff5c1ce3          	bne	s8,s5,1b13c <_svfprintf_r+0x1fac>
   1b148:	416c07bb          	subw	a5,s8,s6
   1b14c:	02f13c23          	sd	a5,56(sp)
   1b150:	fdfcfa93          	andi	s5,s9,-33
   1b154:	c61ff06f          	j	1adb4 <_svfprintf_r+0x1c24>
   1b158:	0e813c03          	ld	s8,232(sp)
   1b15c:	0d812703          	lw	a4,216(sp)
   1b160:	416c07bb          	subw	a5,s8,s6
   1b164:	02f13c23          	sd	a5,56(sp)
   1b168:	ffd00693          	li	a3,-3
   1b16c:	02e13823          	sd	a4,48(sp)
   1b170:	00d74463          	blt	a4,a3,1b178 <_svfprintf_r+0x1fe8>
   1b174:	02e35863          	bge	t1,a4,1b1a4 <_svfprintf_r+0x2014>
   1b178:	fff70d1b          	addiw	s10,a4,-1
   1b17c:	ffec8c9b          	addiw	s9,s9,-2
   1b180:	0da12c23          	sw	s10,216(sp)
   1b184:	0ffcf693          	zext.b	a3,s9
   1b188:	00000613          	li	a2,0
   1b18c:	c61ff06f          	j	1adec <_svfprintf_r+0x1c5c>
   1b190:	0cf14703          	lbu	a4,207(sp)
   1b194:	00000313          	li	t1,0
   1b198:	00070463          	beqz	a4,1b1a0 <_svfprintf_r+0x2010>
   1b19c:	e64fe06f          	j	19800 <_svfprintf_r+0x670>
   1b1a0:	9e4fe06f          	j	19384 <_svfprintf_r+0x1f4>
   1b1a4:	03813783          	ld	a5,56(sp)
   1b1a8:	24f74c63          	blt	a4,a5,1b400 <_svfprintf_r+0x2270>
   1b1ac:	04013783          	ld	a5,64(sp)
   1b1b0:	00070d13          	mv	s10,a4
   1b1b4:	0017f613          	andi	a2,a5,1
   1b1b8:	00060663          	beqz	a2,1b1c4 <_svfprintf_r+0x2034>
   1b1bc:	05813783          	ld	a5,88(sp)
   1b1c0:	00e78d3b          	addw	s10,a5,a4
   1b1c4:	04013783          	ld	a5,64(sp)
   1b1c8:	4007f613          	andi	a2,a5,1024
   1b1cc:	00060463          	beqz	a2,1b1d4 <_svfprintf_r+0x2044>
   1b1d0:	40e04c63          	bgtz	a4,1b5e8 <_svfprintf_r+0x2458>
   1b1d4:	fffd4813          	not	a6,s10
   1b1d8:	43f85813          	srai	a6,a6,0x3f
   1b1dc:	09013903          	ld	s2,144(sp)
   1b1e0:	010d7833          	and	a6,s10,a6
   1b1e4:	00080c1b          	sext.w	s8,a6
   1b1e8:	06700c93          	li	s9,103
   1b1ec:	04013423          	sd	zero,72(sp)
   1b1f0:	04013023          	sd	zero,64(sp)
   1b1f4:	cedff06f          	j	1aee0 <_svfprintf_r+0x1d50>
   1b1f8:	04013783          	ld	a5,64(sp)
   1b1fc:	0017f713          	andi	a4,a5,1
   1b200:	f4070ce3          	beqz	a4,1b158 <_svfprintf_r+0x1fc8>
   1b204:	012b0d33          	add	s10,s6,s2
   1b208:	04700a93          	li	s5,71
   1b20c:	b5dff06f          	j	1ad68 <_svfprintf_r+0x1bd8>
   1b210:	10010613          	addi	a2,sp,256
   1b214:	000b8593          	mv	a1,s7
   1b218:	00098513          	mv	a0,s3
   1b21c:	09c030ef          	jal	ra,1e2b8 <__ssprint_r>
   1b220:	00050463          	beqz	a0,1b228 <_svfprintf_r+0x2098>
   1b224:	c69fe06f          	j	19e8c <_svfprintf_r+0xcfc>
   1b228:	00094683          	lbu	a3,0(s2)
   1b22c:	11013703          	ld	a4,272(sp)
   1b230:	18010413          	addi	s0,sp,384
   1b234:	01000893          	li	a7,16
   1b238:	00700313          	li	t1,7
   1b23c:	00da0a33          	add	s4,s4,a3
   1b240:	cb0ff06f          	j	1a6f0 <_svfprintf_r+0x1560>
   1b244:	07800713          	li	a4,120
   1b248:	00296793          	ori	a5,s2,2
   1b24c:	03000693          	li	a3,48
   1b250:	0007879b          	sext.w	a5,a5
   1b254:	0ce108a3          	sb	a4,209(sp)
   1b258:	0cd10823          	sb	a3,208(sp)
   1b25c:	06300713          	li	a4,99
   1b260:	04f13023          	sd	a5,64(sp)
   1b264:	00013c23          	sd	zero,24(sp)
   1b268:	11810b13          	addi	s6,sp,280
   1b26c:	2e674063          	blt	a4,t1,1b54c <_svfprintf_r+0x23bc>
   1b270:	10296913          	ori	s2,s2,258
   1b274:	0f813c03          	ld	s8,248(sp)
   1b278:	0009079b          	sext.w	a5,s2
   1b27c:	08f13823          	sd	a5,144(sp)
   1b280:	08013c23          	sd	zero,152(sp)
   1b284:	0f013b83          	ld	s7,240(sp)
   1b288:	060c4a63          	bltz	s8,1b2fc <_svfprintf_r+0x216c>
   1b28c:	06100713          	li	a4,97
   1b290:	00ec8463          	beq	s9,a4,1b298 <_svfprintf_r+0x2108>
   1b294:	b70fe06f          	j	19604 <_svfprintf_r+0x474>
   1b298:	000c0593          	mv	a1,s8
   1b29c:	000b8513          	mv	a0,s7
   1b2a0:	02613823          	sd	t1,48(sp)
   1b2a4:	28d060ef          	jal	ra,21d30 <__trunctfdf2>
   1b2a8:	0d810593          	addi	a1,sp,216
   1b2ac:	859fd0ef          	jal	ra,18b04 <frexp>
   1b2b0:	191060ef          	jal	ra,21c40 <__extenddftf2>
   1b2b4:	00022737          	lui	a4,0x22
   1b2b8:	1f873683          	ld	a3,504(a4) # 221f8 <blanks.1+0x18>
   1b2bc:	00000613          	li	a2,0
   1b2c0:	091050ef          	jal	ra,20b50 <__multf3>
   1b2c4:	00000613          	li	a2,0
   1b2c8:	00000693          	li	a3,0
   1b2cc:	00050d93          	mv	s11,a0
   1b2d0:	00058913          	mv	s2,a1
   1b2d4:	5c0050ef          	jal	ra,20894 <__eqtf2>
   1b2d8:	03013303          	ld	t1,48(sp)
   1b2dc:	00051663          	bnez	a0,1b2e8 <_svfprintf_r+0x2158>
   1b2e0:	00100713          	li	a4,1
   1b2e4:	0ce12c23          	sw	a4,216(sp)
   1b2e8:	00022737          	lui	a4,0x22
   1b2ec:	fa870793          	addi	a5,a4,-88 # 21fa8 <__clzdi2+0x94>
   1b2f0:	02f13c23          	sd	a5,56(sp)
   1b2f4:	cfdff06f          	j	1aff0 <_svfprintf_r+0x1e60>
   1b2f8:	00013c23          	sd	zero,24(sp)
   1b2fc:	fff00713          	li	a4,-1
   1b300:	03f71713          	slli	a4,a4,0x3f
   1b304:	02d00793          	li	a5,45
   1b308:	00ec4c33          	xor	s8,s8,a4
   1b30c:	08f13c23          	sd	a5,152(sp)
   1b310:	f7dff06f          	j	1b28c <_svfprintf_r+0x20fc>
   1b314:	02d00793          	li	a5,45
   1b318:	0cf107a3          	sb	a5,207(sp)
   1b31c:	02d00713          	li	a4,45
   1b320:	f98ff06f          	j	1aab8 <_svfprintf_r+0x1928>
   1b324:	00013583          	ld	a1,0(sp)
   1b328:	10010613          	addi	a2,sp,256
   1b32c:	00098513          	mv	a0,s3
   1b330:	789020ef          	jal	ra,1e2b8 <__ssprint_r>
   1b334:	00050463          	beqz	a0,1b33c <_svfprintf_r+0x21ac>
   1b338:	b55fe06f          	j	19e8c <_svfprintf_r+0xcfc>
   1b33c:	0d812683          	lw	a3,216(sp)
   1b340:	11013703          	ld	a4,272(sp)
   1b344:	18010413          	addi	s0,sp,384
   1b348:	de5fe06f          	j	1a12c <_svfprintf_r+0xf9c>
   1b34c:	00054683          	lbu	a3,0(a0)
   1b350:	03000713          	li	a4,48
   1b354:	00e68863          	beq	a3,a4,1b364 <_svfprintf_r+0x21d4>
   1b358:	0d812683          	lw	a3,216(sp)
   1b35c:	00dd0d33          	add	s10,s10,a3
   1b360:	a09ff06f          	j	1ad68 <_svfprintf_r+0x1bd8>
   1b364:	00000613          	li	a2,0
   1b368:	00000693          	li	a3,0
   1b36c:	000b8513          	mv	a0,s7
   1b370:	000c0593          	mv	a1,s8
   1b374:	02613823          	sd	t1,48(sp)
   1b378:	51c050ef          	jal	ra,20894 <__eqtf2>
   1b37c:	03013303          	ld	t1,48(sp)
   1b380:	fc050ce3          	beqz	a0,1b358 <_svfprintf_r+0x21c8>
   1b384:	00100713          	li	a4,1
   1b388:	412706bb          	subw	a3,a4,s2
   1b38c:	0cd12c23          	sw	a3,216(sp)
   1b390:	00dd0d33          	add	s10,s10,a3
   1b394:	9d5ff06f          	j	1ad68 <_svfprintf_r+0x1bd8>
   1b398:	0cf14703          	lbu	a4,207(sp)
   1b39c:	03513023          	sd	s5,32(sp)
   1b3a0:	04013423          	sd	zero,72(sp)
   1b3a4:	04013023          	sd	zero,64(sp)
   1b3a8:	02013823          	sd	zero,48(sp)
   1b3ac:	00030c13          	mv	s8,t1
   1b3b0:	00030d13          	mv	s10,t1
   1b3b4:	00000313          	li	t1,0
   1b3b8:	00070463          	beqz	a4,1b3c0 <_svfprintf_r+0x2230>
   1b3bc:	c44fe06f          	j	19800 <_svfprintf_r+0x670>
   1b3c0:	fc5fd06f          	j	19384 <_svfprintf_r+0x1f4>
   1b3c4:	00013583          	ld	a1,0(sp)
   1b3c8:	10010613          	addi	a2,sp,256
   1b3cc:	00098513          	mv	a0,s3
   1b3d0:	6e9020ef          	jal	ra,1e2b8 <__ssprint_r>
   1b3d4:	00050463          	beqz	a0,1b3dc <_svfprintf_r+0x224c>
   1b3d8:	ab5fe06f          	j	19e8c <_svfprintf_r+0xcfc>
   1b3dc:	0d812603          	lw	a2,216(sp)
   1b3e0:	03813783          	ld	a5,56(sp)
   1b3e4:	11013703          	ld	a4,272(sp)
   1b3e8:	18010413          	addi	s0,sp,384
   1b3ec:	40c7863b          	subw	a2,a5,a2
   1b3f0:	d89fe06f          	j	1a178 <_svfprintf_r+0xfe8>
   1b3f4:	000227b7          	lui	a5,0x22
   1b3f8:	f8078b13          	addi	s6,a5,-128 # 21f80 <__clzdi2+0x6c>
   1b3fc:	eccff06f          	j	1aac8 <_svfprintf_r+0x1938>
   1b400:	05813783          	ld	a5,88(sp)
   1b404:	03813703          	ld	a4,56(sp)
   1b408:	06700c93          	li	s9,103
   1b40c:	00e78d3b          	addw	s10,a5,a4
   1b410:	03013783          	ld	a5,48(sp)
   1b414:	26f05463          	blez	a5,1b67c <_svfprintf_r+0x24ec>
   1b418:	04013783          	ld	a5,64(sp)
   1b41c:	4007f713          	andi	a4,a5,1024
   1b420:	1c071663          	bnez	a4,1b5ec <_svfprintf_r+0x245c>
   1b424:	fffd4813          	not	a6,s10
   1b428:	43f85813          	srai	a6,a6,0x3f
   1b42c:	010d7833          	and	a6,s10,a6
   1b430:	09013903          	ld	s2,144(sp)
   1b434:	00080c1b          	sext.w	s8,a6
   1b438:	db5ff06f          	j	1b1ec <_svfprintf_r+0x205c>
   1b43c:	05800713          	li	a4,88
   1b440:	e09ff06f          	j	1b248 <_svfprintf_r+0x20b8>
   1b444:	00090d93          	mv	s11,s2
   1b448:	db4fe06f          	j	199fc <_svfprintf_r+0x86c>
   1b44c:	04013783          	ld	a5,64(sp)
   1b450:	0017f713          	andi	a4,a5,1
   1b454:	03013783          	ld	a5,48(sp)
   1b458:	00e36733          	or	a4,t1,a4
   1b45c:	26f05663          	blez	a5,1b6c8 <_svfprintf_r+0x2538>
   1b460:	24071063          	bnez	a4,1b6a0 <_svfprintf_r+0x2510>
   1b464:	03013d03          	ld	s10,48(sp)
   1b468:	06600c93          	li	s9,102
   1b46c:	fadff06f          	j	1b418 <_svfprintf_r+0x2288>
   1b470:	03013783          	ld	a5,48(sp)
   1b474:	000a8693          	mv	a3,s5
   1b478:	0ef13423          	sd	a5,232(sp)
   1b47c:	03813783          	ld	a5,56(sp)
   1b480:	fffac603          	lbu	a2,-1(s5)
   1b484:	00f7c583          	lbu	a1,15(a5)
   1b488:	02c59063          	bne	a1,a2,1b4a8 <_svfprintf_r+0x2318>
   1b48c:	03000513          	li	a0,48
   1b490:	fea68fa3          	sb	a0,-1(a3)
   1b494:	0e813683          	ld	a3,232(sp)
   1b498:	fff68793          	addi	a5,a3,-1
   1b49c:	0ef13423          	sd	a5,232(sp)
   1b4a0:	fff6c603          	lbu	a2,-1(a3)
   1b4a4:	fec586e3          	beq	a1,a2,1b490 <_svfprintf_r+0x2300>
   1b4a8:	0016059b          	addiw	a1,a2,1
   1b4ac:	03900513          	li	a0,57
   1b4b0:	0ff5f593          	zext.b	a1,a1
   1b4b4:	00a60863          	beq	a2,a0,1b4c4 <_svfprintf_r+0x2334>
   1b4b8:	feb68fa3          	sb	a1,-1(a3)
   1b4bc:	000a8c13          	mv	s8,s5
   1b4c0:	c89ff06f          	j	1b148 <_svfprintf_r+0x1fb8>
   1b4c4:	03813783          	ld	a5,56(sp)
   1b4c8:	00a7c583          	lbu	a1,10(a5)
   1b4cc:	feb68fa3          	sb	a1,-1(a3)
   1b4d0:	fedff06f          	j	1b4bc <_svfprintf_r+0x232c>
   1b4d4:	0016869b          	addiw	a3,a3,1
   1b4d8:	01970733          	add	a4,a4,s9
   1b4dc:	01b43023          	sd	s11,0(s0)
   1b4e0:	01943423          	sd	s9,8(s0)
   1b4e4:	10e13823          	sd	a4,272(sp)
   1b4e8:	10d12423          	sw	a3,264(sp)
   1b4ec:	00700613          	li	a2,7
   1b4f0:	c8d65863          	bge	a2,a3,1a980 <_svfprintf_r+0x17f0>
   1b4f4:	00013583          	ld	a1,0(sp)
   1b4f8:	10010613          	addi	a2,sp,256
   1b4fc:	00098513          	mv	a0,s3
   1b500:	5b9020ef          	jal	ra,1e2b8 <__ssprint_r>
   1b504:	00050463          	beqz	a0,1b50c <_svfprintf_r+0x237c>
   1b508:	985fe06f          	j	19e8c <_svfprintf_r+0xcfc>
   1b50c:	11013703          	ld	a4,272(sp)
   1b510:	10812683          	lw	a3,264(sp)
   1b514:	18010413          	addi	s0,sp,384
   1b518:	c6cff06f          	j	1a984 <_svfprintf_r+0x17f4>
   1b51c:	0e210713          	addi	a4,sp,226
   1b520:	00061863          	bnez	a2,1b530 <_svfprintf_r+0x23a0>
   1b524:	03000713          	li	a4,48
   1b528:	0ee10123          	sb	a4,226(sp)
   1b52c:	0e310713          	addi	a4,sp,227
   1b530:	20010793          	addi	a5,sp,512
   1b534:	40f706b3          	sub	a3,a4,a5
   1b538:	030d0d1b          	addiw	s10,s10,48
   1b53c:	1216879b          	addiw	a5,a3,289
   1b540:	01a70023          	sb	s10,0(a4)
   1b544:	06f13823          	sd	a5,112(sp)
   1b548:	94dff06f          	j	1ae94 <_svfprintf_r+0x1d04>
   1b54c:	0013059b          	addiw	a1,t1,1
   1b550:	00098513          	mv	a0,s3
   1b554:	00613c23          	sd	t1,24(sp)
   1b558:	8fdfb0ef          	jal	ra,16e54 <_malloc_r>
   1b55c:	01813303          	ld	t1,24(sp)
   1b560:	00050b13          	mv	s6,a0
   1b564:	1e050063          	beqz	a0,1b744 <_svfprintf_r+0x25b4>
   1b568:	00a13c23          	sd	a0,24(sp)
   1b56c:	d05ff06f          	j	1b270 <_svfprintf_r+0x20e0>
   1b570:	00f72023          	sw	a5,0(a4)
   1b574:	d54fe06f          	j	19ac8 <_svfprintf_r+0x938>
   1b578:	05013703          	ld	a4,80(sp)
   1b57c:	00c00793          	li	a5,12
   1b580:	00f72023          	sw	a5,0(a4)
   1b584:	fff00793          	li	a5,-1
   1b588:	00f13823          	sd	a5,16(sp)
   1b58c:	f41fd06f          	j	194cc <_svfprintf_r+0x33c>
   1b590:	00030463          	beqz	t1,1b598 <_svfprintf_r+0x2408>
   1b594:	848fe06f          	j	195dc <_svfprintf_r+0x44c>
   1b598:	00100313          	li	t1,1
   1b59c:	840fe06f          	j	195dc <_svfprintf_r+0x44c>
   1b5a0:	04013783          	ld	a5,64(sp)
   1b5a4:	0017f613          	andi	a2,a5,1
   1b5a8:	900606e3          	beqz	a2,1aeb4 <_svfprintf_r+0x1d24>
   1b5ac:	901ff06f          	j	1aeac <_svfprintf_r+0x1d1c>
   1b5b0:	0b813603          	ld	a2,184(sp)
   1b5b4:	03313823          	sd	s3,48(sp)
   1b5b8:	000b8993          	mv	s3,s7
   1b5bc:	000b0b93          	mv	s7,s6
   1b5c0:	000d0b13          	mv	s6,s10
   1b5c4:	00cb063b          	addw	a2,s6,a2
   1b5c8:	000a8d13          	mv	s10,s5
   1b5cc:	000a0a93          	mv	s5,s4
   1b5d0:	04813483          	ld	s1,72(sp)
   1b5d4:	0a813303          	ld	t1,168(sp)
   1b5d8:	0b013403          	ld	s0,176(sp)
   1b5dc:	0a013a03          	ld	s4,160(sp)
   1b5e0:	41560dbb          	subw	s11,a2,s5
   1b5e4:	afdff06f          	j	1b0e0 <_svfprintf_r+0x1f50>
   1b5e8:	06700c93          	li	s9,103
   1b5ec:	07813683          	ld	a3,120(sp)
   1b5f0:	0ff00613          	li	a2,255
   1b5f4:	0006c703          	lbu	a4,0(a3)
   1b5f8:	14c70063          	beq	a4,a2,1b738 <_svfprintf_r+0x25a8>
   1b5fc:	03013783          	ld	a5,48(sp)
   1b600:	00000813          	li	a6,0
   1b604:	00000513          	li	a0,0
   1b608:	0ff00593          	li	a1,255
   1b60c:	0007061b          	sext.w	a2,a4
   1b610:	00f75e63          	bge	a4,a5,1b62c <_svfprintf_r+0x249c>
   1b614:	0016c703          	lbu	a4,1(a3)
   1b618:	40c787bb          	subw	a5,a5,a2
   1b61c:	04070a63          	beqz	a4,1b670 <_svfprintf_r+0x24e0>
   1b620:	0015051b          	addiw	a0,a0,1
   1b624:	00168693          	addi	a3,a3,1
   1b628:	feb712e3          	bne	a4,a1,1b60c <_svfprintf_r+0x247c>
   1b62c:	06d13c23          	sd	a3,120(sp)
   1b630:	02f13823          	sd	a5,48(sp)
   1b634:	04a13023          	sd	a0,64(sp)
   1b638:	05013423          	sd	a6,72(sp)
   1b63c:	04013703          	ld	a4,64(sp)
   1b640:	04813783          	ld	a5,72(sp)
   1b644:	08013583          	ld	a1,128(sp)
   1b648:	00e7853b          	addw	a0,a5,a4
   1b64c:	0a5060ef          	jal	ra,21ef0 <__muldi3>
   1b650:	01a5073b          	addw	a4,a0,s10
   1b654:	00070d1b          	sext.w	s10,a4
   1b658:	fffd4613          	not	a2,s10
   1b65c:	43f65613          	srai	a2,a2,0x3f
   1b660:	00c77733          	and	a4,a4,a2
   1b664:	09013903          	ld	s2,144(sp)
   1b668:	00070c1b          	sext.w	s8,a4
   1b66c:	875ff06f          	j	1aee0 <_svfprintf_r+0x1d50>
   1b670:	0006c703          	lbu	a4,0(a3)
   1b674:	0018081b          	addiw	a6,a6,1
   1b678:	fb1ff06f          	j	1b628 <_svfprintf_r+0x2498>
   1b67c:	40fd073b          	subw	a4,s10,a5
   1b680:	0017071b          	addiw	a4,a4,1
   1b684:	00070d1b          	sext.w	s10,a4
   1b688:	fffd4613          	not	a2,s10
   1b68c:	43f65613          	srai	a2,a2,0x3f
   1b690:	00c77733          	and	a4,a4,a2
   1b694:	09013903          	ld	s2,144(sp)
   1b698:	00070c1b          	sext.w	s8,a4
   1b69c:	b51ff06f          	j	1b1ec <_svfprintf_r+0x205c>
   1b6a0:	05813703          	ld	a4,88(sp)
   1b6a4:	06600c93          	li	s9,102
   1b6a8:	00f706bb          	addw	a3,a4,a5
   1b6ac:	00668d3b          	addw	s10,a3,t1
   1b6b0:	d69ff06f          	j	1b418 <_svfprintf_r+0x2288>
   1b6b4:	07000693          	li	a3,112
   1b6b8:	f30ff06f          	j	1ade8 <_svfprintf_r+0x1c58>
   1b6bc:	00200793          	li	a5,2
   1b6c0:	06f13823          	sd	a5,112(sp)
   1b6c4:	fd0ff06f          	j	1ae94 <_svfprintf_r+0x1d04>
   1b6c8:	00071c63          	bnez	a4,1b6e0 <_svfprintf_r+0x2550>
   1b6cc:	09013903          	ld	s2,144(sp)
   1b6d0:	00100c13          	li	s8,1
   1b6d4:	06600c93          	li	s9,102
   1b6d8:	00100d13          	li	s10,1
   1b6dc:	b11ff06f          	j	1b1ec <_svfprintf_r+0x205c>
   1b6e0:	05813783          	ld	a5,88(sp)
   1b6e4:	09013903          	ld	s2,144(sp)
   1b6e8:	06600c93          	li	s9,102
   1b6ec:	0017871b          	addiw	a4,a5,1
   1b6f0:	0067073b          	addw	a4,a4,t1
   1b6f4:	00070d1b          	sext.w	s10,a4
   1b6f8:	fffd4613          	not	a2,s10
   1b6fc:	43f65613          	srai	a2,a2,0x3f
   1b700:	00c77733          	and	a4,a4,a2
   1b704:	00070c1b          	sext.w	s8,a4
   1b708:	ae5ff06f          	j	1b1ec <_svfprintf_r+0x205c>
   1b70c:	02013683          	ld	a3,32(sp)
   1b710:	0006a703          	lw	a4,0(a3)
   1b714:	00868693          	addi	a3,a3,8
   1b718:	00070313          	mv	t1,a4
   1b71c:	00075463          	bgez	a4,1b724 <_svfprintf_r+0x2594>
   1b720:	fff00313          	li	t1,-1
   1b724:	0014ce03          	lbu	t3,1(s1)
   1b728:	00030a9b          	sext.w	s5,t1
   1b72c:	02d13023          	sd	a3,32(sp)
   1b730:	00078493          	mv	s1,a5
   1b734:	bbdfd06f          	j	192f0 <_svfprintf_r+0x160>
   1b738:	04013423          	sd	zero,72(sp)
   1b73c:	04013023          	sd	zero,64(sp)
   1b740:	efdff06f          	j	1b63c <_svfprintf_r+0x24ac>
   1b744:	00013703          	ld	a4,0(sp)
   1b748:	01075783          	lhu	a5,16(a4)
   1b74c:	0407e793          	ori	a5,a5,64
   1b750:	00f71823          	sh	a5,16(a4)
   1b754:	d65fd06f          	j	194b8 <_svfprintf_r+0x328>

000000000001b758 <__sprint_r.part.0>:
   1b758:	0ac5a783          	lw	a5,172(a1)
   1b75c:	fb010113          	addi	sp,sp,-80
   1b760:	01513c23          	sd	s5,24(sp)
   1b764:	00d7d793          	srli	a5,a5,0xd
   1b768:	04113423          	sd	ra,72(sp)
   1b76c:	04813023          	sd	s0,64(sp)
   1b770:	02913c23          	sd	s1,56(sp)
   1b774:	03213823          	sd	s2,48(sp)
   1b778:	03313423          	sd	s3,40(sp)
   1b77c:	03413023          	sd	s4,32(sp)
   1b780:	01613823          	sd	s6,16(sp)
   1b784:	01713423          	sd	s7,8(sp)
   1b788:	0017f793          	andi	a5,a5,1
   1b78c:	00060a93          	mv	s5,a2
   1b790:	0c078063          	beqz	a5,1b850 <__sprint_r.part.0+0xf8>
   1b794:	01063783          	ld	a5,16(a2)
   1b798:	00063b03          	ld	s6,0(a2)
   1b79c:	00058913          	mv	s2,a1
   1b7a0:	00050993          	mv	s3,a0
   1b7a4:	fff00a13          	li	s4,-1
   1b7a8:	0a078063          	beqz	a5,1b848 <__sprint_r.part.0+0xf0>
   1b7ac:	008b3483          	ld	s1,8(s6)
   1b7b0:	000b3403          	ld	s0,0(s6)
   1b7b4:	0024d493          	srli	s1,s1,0x2
   1b7b8:	00048b9b          	sext.w	s7,s1
   1b7bc:	07705c63          	blez	s7,1b834 <__sprint_r.part.0+0xdc>
   1b7c0:	fff4849b          	addiw	s1,s1,-1
   1b7c4:	02049793          	slli	a5,s1,0x20
   1b7c8:	01e7d493          	srli	s1,a5,0x1e
   1b7cc:	00440793          	addi	a5,s0,4
   1b7d0:	00f484b3          	add	s1,s1,a5
   1b7d4:	0080006f          	j	1b7dc <__sprint_r.part.0+0x84>
   1b7d8:	04848c63          	beq	s1,s0,1b830 <__sprint_r.part.0+0xd8>
   1b7dc:	00042583          	lw	a1,0(s0)
   1b7e0:	00090613          	mv	a2,s2
   1b7e4:	00098513          	mv	a0,s3
   1b7e8:	21d010ef          	jal	ra,1d204 <_fputwc_r>
   1b7ec:	0005051b          	sext.w	a0,a0
   1b7f0:	00440413          	addi	s0,s0,4
   1b7f4:	ff4512e3          	bne	a0,s4,1b7d8 <__sprint_r.part.0+0x80>
   1b7f8:	fff00513          	li	a0,-1
   1b7fc:	04813083          	ld	ra,72(sp)
   1b800:	04013403          	ld	s0,64(sp)
   1b804:	000ab823          	sd	zero,16(s5)
   1b808:	000aa423          	sw	zero,8(s5)
   1b80c:	03813483          	ld	s1,56(sp)
   1b810:	03013903          	ld	s2,48(sp)
   1b814:	02813983          	ld	s3,40(sp)
   1b818:	02013a03          	ld	s4,32(sp)
   1b81c:	01813a83          	ld	s5,24(sp)
   1b820:	01013b03          	ld	s6,16(sp)
   1b824:	00813b83          	ld	s7,8(sp)
   1b828:	05010113          	addi	sp,sp,80
   1b82c:	00008067          	ret
   1b830:	010ab783          	ld	a5,16(s5)
   1b834:	002b9b93          	slli	s7,s7,0x2
   1b838:	417787b3          	sub	a5,a5,s7
   1b83c:	00fab823          	sd	a5,16(s5)
   1b840:	010b0b13          	addi	s6,s6,16
   1b844:	f60794e3          	bnez	a5,1b7ac <__sprint_r.part.0+0x54>
   1b848:	00000513          	li	a0,0
   1b84c:	fb1ff06f          	j	1b7fc <__sprint_r.part.0+0xa4>
   1b850:	2c1010ef          	jal	ra,1d310 <__sfvwrite_r>
   1b854:	fa9ff06f          	j	1b7fc <__sprint_r.part.0+0xa4>

000000000001b858 <__sprint_r>:
   1b858:	01063703          	ld	a4,16(a2)
   1b85c:	00070463          	beqz	a4,1b864 <__sprint_r+0xc>
   1b860:	ef9ff06f          	j	1b758 <__sprint_r.part.0>
   1b864:	00062423          	sw	zero,8(a2)
   1b868:	00000513          	li	a0,0
   1b86c:	00008067          	ret

000000000001b870 <_vfiprintf_r>:
   1b870:	e2010113          	addi	sp,sp,-480
   1b874:	1d213023          	sd	s2,448(sp)
   1b878:	1b313c23          	sd	s3,440(sp)
   1b87c:	19713c23          	sd	s7,408(sp)
   1b880:	19813823          	sd	s8,400(sp)
   1b884:	1c113c23          	sd	ra,472(sp)
   1b888:	1c813823          	sd	s0,464(sp)
   1b88c:	1c913423          	sd	s1,456(sp)
   1b890:	1b413823          	sd	s4,432(sp)
   1b894:	1b513423          	sd	s5,424(sp)
   1b898:	1b613023          	sd	s6,416(sp)
   1b89c:	19913423          	sd	s9,392(sp)
   1b8a0:	19a13023          	sd	s10,384(sp)
   1b8a4:	17b13c23          	sd	s11,376(sp)
   1b8a8:	00050993          	mv	s3,a0
   1b8ac:	00058913          	mv	s2,a1
   1b8b0:	00060b93          	mv	s7,a2
   1b8b4:	00068c13          	mv	s8,a3
   1b8b8:	00050663          	beqz	a0,1b8c4 <_vfiprintf_r+0x54>
   1b8bc:	05052783          	lw	a5,80(a0)
   1b8c0:	40078e63          	beqz	a5,1bcdc <_vfiprintf_r+0x46c>
   1b8c4:	01091783          	lh	a5,16(s2)
   1b8c8:	03279713          	slli	a4,a5,0x32
   1b8cc:	02074663          	bltz	a4,1b8f8 <_vfiprintf_r+0x88>
   1b8d0:	0ac92703          	lw	a4,172(s2)
   1b8d4:	000026b7          	lui	a3,0x2
   1b8d8:	00d7e7b3          	or	a5,a5,a3
   1b8dc:	ffffe6b7          	lui	a3,0xffffe
   1b8e0:	0107979b          	slliw	a5,a5,0x10
   1b8e4:	fff68693          	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd9df7>
   1b8e8:	4107d79b          	sraiw	a5,a5,0x10
   1b8ec:	00d77733          	and	a4,a4,a3
   1b8f0:	00f91823          	sh	a5,16(s2)
   1b8f4:	0ae92623          	sw	a4,172(s2)
   1b8f8:	0087f713          	andi	a4,a5,8
   1b8fc:	12070663          	beqz	a4,1ba28 <_vfiprintf_r+0x1b8>
   1b900:	01893703          	ld	a4,24(s2)
   1b904:	12070263          	beqz	a4,1ba28 <_vfiprintf_r+0x1b8>
   1b908:	01a7f793          	andi	a5,a5,26
   1b90c:	00a00713          	li	a4,10
   1b910:	12e78e63          	beq	a5,a4,1ba4c <_vfiprintf_r+0x1dc>
   1b914:	000237b7          	lui	a5,0x23
   1b918:	0f010493          	addi	s1,sp,240
   1b91c:	8e078793          	addi	a5,a5,-1824 # 228e0 <blanks.1+0x10>
   1b920:	00023a37          	lui	s4,0x23
   1b924:	06913823          	sd	s1,112(sp)
   1b928:	08013023          	sd	zero,128(sp)
   1b92c:	06012c23          	sw	zero,120(sp)
   1b930:	00048713          	mv	a4,s1
   1b934:	00013423          	sd	zero,8(sp)
   1b938:	02013823          	sd	zero,48(sp)
   1b93c:	02013423          	sd	zero,40(sp)
   1b940:	02013c23          	sd	zero,56(sp)
   1b944:	00000a93          	li	s5,0
   1b948:	00f13023          	sd	a5,0(sp)
   1b94c:	01000413          	li	s0,16
   1b950:	a50a0a13          	addi	s4,s4,-1456 # 22a50 <zeroes.0>
   1b954:	000b8c93          	mv	s9,s7
   1b958:	000cc783          	lbu	a5,0(s9)
   1b95c:	14078263          	beqz	a5,1baa0 <_vfiprintf_r+0x230>
   1b960:	000c8b13          	mv	s6,s9
   1b964:	02500693          	li	a3,37
   1b968:	36d78263          	beq	a5,a3,1bccc <_vfiprintf_r+0x45c>
   1b96c:	001b4783          	lbu	a5,1(s6)
   1b970:	001b0b13          	addi	s6,s6,1
   1b974:	fe079ae3          	bnez	a5,1b968 <_vfiprintf_r+0xf8>
   1b978:	419b0bbb          	subw	s7,s6,s9
   1b97c:	120b8263          	beqz	s7,1baa0 <_vfiprintf_r+0x230>
   1b980:	07812783          	lw	a5,120(sp)
   1b984:	08013683          	ld	a3,128(sp)
   1b988:	01973023          	sd	s9,0(a4)
   1b98c:	0017861b          	addiw	a2,a5,1
   1b990:	00db86b3          	add	a3,s7,a3
   1b994:	01773423          	sd	s7,8(a4)
   1b998:	08d13023          	sd	a3,128(sp)
   1b99c:	06c12c23          	sw	a2,120(sp)
   1b9a0:	00700793          	li	a5,7
   1b9a4:	01070713          	addi	a4,a4,16
   1b9a8:	02c7d063          	bge	a5,a2,1b9c8 <_vfiprintf_r+0x158>
   1b9ac:	4e0684e3          	beqz	a3,1c694 <_vfiprintf_r+0xe24>
   1b9b0:	07010613          	addi	a2,sp,112
   1b9b4:	00090593          	mv	a1,s2
   1b9b8:	00098513          	mv	a0,s3
   1b9bc:	d9dff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1b9c0:	0e051663          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1b9c4:	00048713          	mv	a4,s1
   1b9c8:	000b4783          	lbu	a5,0(s6)
   1b9cc:	017a8abb          	addw	s5,s5,s7
   1b9d0:	0c078863          	beqz	a5,1baa0 <_vfiprintf_r+0x230>
   1b9d4:	fff00813          	li	a6,-1
   1b9d8:	00000e13          	li	t3,0
   1b9dc:	00000313          	li	t1,0
   1b9e0:	001b4783          	lbu	a5,1(s6)
   1b9e4:	001b0c93          	addi	s9,s6,1
   1b9e8:	060103a3          	sb	zero,103(sp)
   1b9ec:	05a00b93          	li	s7,90
   1b9f0:	00030b13          	mv	s6,t1
   1b9f4:	000e0d13          	mv	s10,t3
   1b9f8:	00080d93          	mv	s11,a6
   1b9fc:	001c8c93          	addi	s9,s9,1
   1ba00:	0007879b          	sext.w	a5,a5
   1ba04:	fe07869b          	addiw	a3,a5,-32
   1ba08:	0006861b          	sext.w	a2,a3
   1ba0c:	12cbe663          	bltu	s7,a2,1bb38 <_vfiprintf_r+0x2c8>
   1ba10:	02069613          	slli	a2,a3,0x20
   1ba14:	01e65693          	srli	a3,a2,0x1e
   1ba18:	00013603          	ld	a2,0(sp)
   1ba1c:	00c686b3          	add	a3,a3,a2
   1ba20:	0006a683          	lw	a3,0(a3)
   1ba24:	00068067          	jr	a3
   1ba28:	00090593          	mv	a1,s2
   1ba2c:	00098513          	mv	a0,s3
   1ba30:	cacf70ef          	jal	ra,12edc <__swsetup_r>
   1ba34:	00050463          	beqz	a0,1ba3c <_vfiprintf_r+0x1cc>
   1ba38:	0c80106f          	j	1cb00 <_vfiprintf_r+0x1290>
   1ba3c:	01091783          	lh	a5,16(s2)
   1ba40:	00a00713          	li	a4,10
   1ba44:	01a7f793          	andi	a5,a5,26
   1ba48:	ece796e3          	bne	a5,a4,1b914 <_vfiprintf_r+0xa4>
   1ba4c:	01291783          	lh	a5,18(s2)
   1ba50:	ec07c2e3          	bltz	a5,1b914 <_vfiprintf_r+0xa4>
   1ba54:	1d013403          	ld	s0,464(sp)
   1ba58:	1d813083          	ld	ra,472(sp)
   1ba5c:	1c813483          	ld	s1,456(sp)
   1ba60:	1b013a03          	ld	s4,432(sp)
   1ba64:	1a813a83          	ld	s5,424(sp)
   1ba68:	1a013b03          	ld	s6,416(sp)
   1ba6c:	18813c83          	ld	s9,392(sp)
   1ba70:	18013d03          	ld	s10,384(sp)
   1ba74:	17813d83          	ld	s11,376(sp)
   1ba78:	000c0693          	mv	a3,s8
   1ba7c:	000b8613          	mv	a2,s7
   1ba80:	19013c03          	ld	s8,400(sp)
   1ba84:	19813b83          	ld	s7,408(sp)
   1ba88:	00090593          	mv	a1,s2
   1ba8c:	00098513          	mv	a0,s3
   1ba90:	1c013903          	ld	s2,448(sp)
   1ba94:	1b813983          	ld	s3,440(sp)
   1ba98:	1e010113          	addi	sp,sp,480
   1ba9c:	0c40106f          	j	1cb60 <__sbprintf>
   1baa0:	08013783          	ld	a5,128(sp)
   1baa4:	00078463          	beqz	a5,1baac <_vfiprintf_r+0x23c>
   1baa8:	00c0106f          	j	1cab4 <_vfiprintf_r+0x1244>
   1baac:	01095783          	lhu	a5,16(s2)
   1bab0:	0407f793          	andi	a5,a5,64
   1bab4:	00078463          	beqz	a5,1babc <_vfiprintf_r+0x24c>
   1bab8:	0480106f          	j	1cb00 <_vfiprintf_r+0x1290>
   1babc:	1d813083          	ld	ra,472(sp)
   1bac0:	1d013403          	ld	s0,464(sp)
   1bac4:	1c813483          	ld	s1,456(sp)
   1bac8:	1c013903          	ld	s2,448(sp)
   1bacc:	1b813983          	ld	s3,440(sp)
   1bad0:	1b013a03          	ld	s4,432(sp)
   1bad4:	1a013b03          	ld	s6,416(sp)
   1bad8:	19813b83          	ld	s7,408(sp)
   1badc:	19013c03          	ld	s8,400(sp)
   1bae0:	18813c83          	ld	s9,392(sp)
   1bae4:	18013d03          	ld	s10,384(sp)
   1bae8:	17813d83          	ld	s11,376(sp)
   1baec:	000a8513          	mv	a0,s5
   1baf0:	1a813a83          	ld	s5,424(sp)
   1baf4:	1e010113          	addi	sp,sp,480
   1baf8:	00008067          	ret
   1bafc:	00000d13          	li	s10,0
   1bb00:	00900593          	li	a1,9
   1bb04:	000cc603          	lbu	a2,0(s9)
   1bb08:	002d169b          	slliw	a3,s10,0x2
   1bb0c:	01a68e3b          	addw	t3,a3,s10
   1bb10:	fd07879b          	addiw	a5,a5,-48
   1bb14:	001e1e1b          	slliw	t3,t3,0x1
   1bb18:	fd06069b          	addiw	a3,a2,-48
   1bb1c:	01c78d3b          	addw	s10,a5,t3
   1bb20:	001c8c93          	addi	s9,s9,1
   1bb24:	0006079b          	sext.w	a5,a2
   1bb28:	fcd5fee3          	bgeu	a1,a3,1bb04 <_vfiprintf_r+0x294>
   1bb2c:	fe07869b          	addiw	a3,a5,-32
   1bb30:	0006861b          	sext.w	a2,a3
   1bb34:	eccbfee3          	bgeu	s7,a2,1ba10 <_vfiprintf_r+0x1a0>
   1bb38:	000b0313          	mv	t1,s6
   1bb3c:	000d0e13          	mv	t3,s10
   1bb40:	f60780e3          	beqz	a5,1baa0 <_vfiprintf_r+0x230>
   1bb44:	08f10423          	sb	a5,136(sp)
   1bb48:	060103a3          	sb	zero,103(sp)
   1bb4c:	00100d93          	li	s11,1
   1bb50:	00100d13          	li	s10,1
   1bb54:	08810b93          	addi	s7,sp,136
   1bb58:	00000813          	li	a6,0
   1bb5c:	00237f93          	andi	t6,t1,2
   1bb60:	000f8463          	beqz	t6,1bb68 <_vfiprintf_r+0x2f8>
   1bb64:	002d8d9b          	addiw	s11,s11,2
   1bb68:	07812683          	lw	a3,120(sp)
   1bb6c:	08437293          	andi	t0,t1,132
   1bb70:	08013783          	ld	a5,128(sp)
   1bb74:	0016851b          	addiw	a0,a3,1
   1bb78:	00050613          	mv	a2,a0
   1bb7c:	00029663          	bnez	t0,1bb88 <_vfiprintf_r+0x318>
   1bb80:	41be0b3b          	subw	s6,t3,s11
   1bb84:	0d6040e3          	bgtz	s6,1c444 <_vfiprintf_r+0xbd4>
   1bb88:	06714603          	lbu	a2,103(sp)
   1bb8c:	02060a63          	beqz	a2,1bbc0 <_vfiprintf_r+0x350>
   1bb90:	06710693          	addi	a3,sp,103
   1bb94:	00178793          	addi	a5,a5,1
   1bb98:	00d73023          	sd	a3,0(a4)
   1bb9c:	00100693          	li	a3,1
   1bba0:	00d73423          	sd	a3,8(a4)
   1bba4:	08f13023          	sd	a5,128(sp)
   1bba8:	06a12c23          	sw	a0,120(sp)
   1bbac:	00700693          	li	a3,7
   1bbb0:	7ca6c663          	blt	a3,a0,1c37c <_vfiprintf_r+0xb0c>
   1bbb4:	00050693          	mv	a3,a0
   1bbb8:	01070713          	addi	a4,a4,16
   1bbbc:	0015051b          	addiw	a0,a0,1
   1bbc0:	060f8863          	beqz	t6,1bc30 <_vfiprintf_r+0x3c0>
   1bbc4:	06810693          	addi	a3,sp,104
   1bbc8:	00278793          	addi	a5,a5,2
   1bbcc:	00d73023          	sd	a3,0(a4)
   1bbd0:	00200693          	li	a3,2
   1bbd4:	00d73423          	sd	a3,8(a4)
   1bbd8:	08f13023          	sd	a5,128(sp)
   1bbdc:	06a12c23          	sw	a0,120(sp)
   1bbe0:	00700693          	li	a3,7
   1bbe4:	00a6d4e3          	bge	a3,a0,1c3ec <_vfiprintf_r+0xb7c>
   1bbe8:	2a078ce3          	beqz	a5,1c6a0 <_vfiprintf_r+0xe30>
   1bbec:	07010613          	addi	a2,sp,112
   1bbf0:	00090593          	mv	a1,s2
   1bbf4:	00098513          	mv	a0,s3
   1bbf8:	05013023          	sd	a6,64(sp)
   1bbfc:	03c13023          	sd	t3,32(sp)
   1bc00:	00613c23          	sd	t1,24(sp)
   1bc04:	00513823          	sd	t0,16(sp)
   1bc08:	b51ff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1bc0c:	ea0510e3          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1bc10:	07812683          	lw	a3,120(sp)
   1bc14:	08013783          	ld	a5,128(sp)
   1bc18:	04013803          	ld	a6,64(sp)
   1bc1c:	02013e03          	ld	t3,32(sp)
   1bc20:	01813303          	ld	t1,24(sp)
   1bc24:	01013283          	ld	t0,16(sp)
   1bc28:	00048713          	mv	a4,s1
   1bc2c:	0016851b          	addiw	a0,a3,1
   1bc30:	08000613          	li	a2,128
   1bc34:	54c28063          	beq	t0,a2,1c174 <_vfiprintf_r+0x904>
   1bc38:	41a80b3b          	subw	s6,a6,s10
   1bc3c:	65604863          	bgtz	s6,1c28c <_vfiprintf_r+0xa1c>
   1bc40:	00fd07b3          	add	a5,s10,a5
   1bc44:	01773023          	sd	s7,0(a4)
   1bc48:	01a73423          	sd	s10,8(a4)
   1bc4c:	08f13023          	sd	a5,128(sp)
   1bc50:	06a12c23          	sw	a0,120(sp)
   1bc54:	00700693          	li	a3,7
   1bc58:	50a6da63          	bge	a3,a0,1c16c <_vfiprintf_r+0x8fc>
   1bc5c:	0e0782e3          	beqz	a5,1c540 <_vfiprintf_r+0xcd0>
   1bc60:	07010613          	addi	a2,sp,112
   1bc64:	00090593          	mv	a1,s2
   1bc68:	00098513          	mv	a0,s3
   1bc6c:	01c13c23          	sd	t3,24(sp)
   1bc70:	00613823          	sd	t1,16(sp)
   1bc74:	ae5ff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1bc78:	e2051ae3          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1bc7c:	08013783          	ld	a5,128(sp)
   1bc80:	01813e03          	ld	t3,24(sp)
   1bc84:	01013303          	ld	t1,16(sp)
   1bc88:	00048713          	mv	a4,s1
   1bc8c:	00437313          	andi	t1,t1,4
   1bc90:	00030663          	beqz	t1,1bc9c <_vfiprintf_r+0x42c>
   1bc94:	41be0b3b          	subw	s6,t3,s11
   1bc98:	0d6040e3          	bgtz	s6,1c558 <_vfiprintf_r+0xce8>
   1bc9c:	000e0713          	mv	a4,t3
   1bca0:	01be5463          	bge	t3,s11,1bca8 <_vfiprintf_r+0x438>
   1bca4:	000d8713          	mv	a4,s11
   1bca8:	01570abb          	addw	s5,a4,s5
   1bcac:	6a079463          	bnez	a5,1c354 <_vfiprintf_r+0xae4>
   1bcb0:	06012c23          	sw	zero,120(sp)
   1bcb4:	00048713          	mv	a4,s1
   1bcb8:	ca1ff06f          	j	1b958 <_vfiprintf_r+0xe8>
   1bcbc:	010b6313          	ori	t1,s6,16
   1bcc0:	000cc783          	lbu	a5,0(s9)
   1bcc4:	00030b1b          	sext.w	s6,t1
   1bcc8:	d35ff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1bccc:	419b0bbb          	subw	s7,s6,s9
   1bcd0:	ca0b98e3          	bnez	s7,1b980 <_vfiprintf_r+0x110>
   1bcd4:	000b4783          	lbu	a5,0(s6)
   1bcd8:	cf9ff06f          	j	1b9d0 <_vfiprintf_r+0x160>
   1bcdc:	ae1f70ef          	jal	ra,137bc <__sinit>
   1bce0:	be5ff06f          	j	1b8c4 <_vfiprintf_r+0x54>
   1bce4:	000c3b83          	ld	s7,0(s8)
   1bce8:	060103a3          	sb	zero,103(sp)
   1bcec:	000b0313          	mv	t1,s6
   1bcf0:	000d0e13          	mv	t3,s10
   1bcf4:	008c0c13          	addi	s8,s8,8
   1bcf8:	4e0b88e3          	beqz	s7,1c9e8 <_vfiprintf_r+0x1178>
   1bcfc:	fff00793          	li	a5,-1
   1bd00:	40fd8ce3          	beq	s11,a5,1c918 <_vfiprintf_r+0x10a8>
   1bd04:	000d8613          	mv	a2,s11
   1bd08:	00000593          	li	a1,0
   1bd0c:	000b8513          	mv	a0,s7
   1bd10:	04e13023          	sd	a4,64(sp)
   1bd14:	03a13023          	sd	s10,32(sp)
   1bd18:	01613c23          	sd	s6,24(sp)
   1bd1c:	01b13823          	sd	s11,16(sp)
   1bd20:	981fb0ef          	jal	ra,176a0 <memchr>
   1bd24:	01013803          	ld	a6,16(sp)
   1bd28:	01813303          	ld	t1,24(sp)
   1bd2c:	02013e03          	ld	t3,32(sp)
   1bd30:	04013703          	ld	a4,64(sp)
   1bd34:	58050ae3          	beqz	a0,1cac8 <_vfiprintf_r+0x1258>
   1bd38:	41750d3b          	subw	s10,a0,s7
   1bd3c:	fffd4d93          	not	s11,s10
   1bd40:	43fddd93          	srai	s11,s11,0x3f
   1bd44:	01adfdb3          	and	s11,s11,s10
   1bd48:	00000813          	li	a6,0
   1bd4c:	0e40006f          	j	1be30 <_vfiprintf_r+0x5c0>
   1bd50:	000c2783          	lw	a5,0(s8)
   1bd54:	000d0e13          	mv	t3,s10
   1bd58:	000b0313          	mv	t1,s6
   1bd5c:	060103a3          	sb	zero,103(sp)
   1bd60:	008c0c13          	addi	s8,s8,8
   1bd64:	08f10423          	sb	a5,136(sp)
   1bd68:	00100d93          	li	s11,1
   1bd6c:	00100d13          	li	s10,1
   1bd70:	08810b93          	addi	s7,sp,136
   1bd74:	de5ff06f          	j	1bb58 <_vfiprintf_r+0x2e8>
   1bd78:	000b0313          	mv	t1,s6
   1bd7c:	000d0e13          	mv	t3,s10
   1bd80:	000d8813          	mv	a6,s11
   1bd84:	02037793          	andi	a5,t1,32
   1bd88:	008c0693          	addi	a3,s8,8
   1bd8c:	04079863          	bnez	a5,1bddc <_vfiprintf_r+0x56c>
   1bd90:	01037793          	andi	a5,t1,16
   1bd94:	04079463          	bnez	a5,1bddc <_vfiprintf_r+0x56c>
   1bd98:	04037613          	andi	a2,t1,64
   1bd9c:	000c2783          	lw	a5,0(s8)
   1bda0:	4a0602e3          	beqz	a2,1ca44 <_vfiprintf_r+0x11d4>
   1bda4:	01079d9b          	slliw	s11,a5,0x10
   1bda8:	410ddd9b          	sraiw	s11,s11,0x10
   1bdac:	000d8613          	mv	a2,s11
   1bdb0:	02064c63          	bltz	a2,1bde8 <_vfiprintf_r+0x578>
   1bdb4:	fff00613          	li	a2,-1
   1bdb8:	04c80663          	beq	a6,a2,1be04 <_vfiprintf_r+0x594>
   1bdbc:	f7f37313          	andi	t1,t1,-129
   1bdc0:	0003031b          	sext.w	t1,t1
   1bdc4:	040d9063          	bnez	s11,1be04 <_vfiprintf_r+0x594>
   1bdc8:	50081ee3          	bnez	a6,1cae4 <_vfiprintf_r+0x1274>
   1bdcc:	00000d13          	li	s10,0
   1bdd0:	00068c13          	mv	s8,a3
   1bdd4:	0ec10b93          	addi	s7,sp,236
   1bdd8:	0580006f          	j	1be30 <_vfiprintf_r+0x5c0>
   1bddc:	000c3603          	ld	a2,0(s8)
   1bde0:	00060d93          	mv	s11,a2
   1bde4:	fc0658e3          	bgez	a2,1bdb4 <_vfiprintf_r+0x544>
   1bde8:	02d00613          	li	a2,45
   1bdec:	06c103a3          	sb	a2,103(sp)
   1bdf0:	fff00613          	li	a2,-1
   1bdf4:	41b00db3          	neg	s11,s11
   1bdf8:	00c80663          	beq	a6,a2,1be04 <_vfiprintf_r+0x594>
   1bdfc:	f7f37313          	andi	t1,t1,-129
   1be00:	0003031b          	sext.w	t1,t1
   1be04:	00900613          	li	a2,9
   1be08:	11b666e3          	bltu	a2,s11,1c714 <_vfiprintf_r+0xea4>
   1be0c:	030d879b          	addiw	a5,s11,48
   1be10:	0ff7f793          	zext.b	a5,a5
   1be14:	00068c13          	mv	s8,a3
   1be18:	0ef105a3          	sb	a5,235(sp)
   1be1c:	00080d9b          	sext.w	s11,a6
   1be20:	01004463          	bgtz	a6,1be28 <_vfiprintf_r+0x5b8>
   1be24:	00100d93          	li	s11,1
   1be28:	00100d13          	li	s10,1
   1be2c:	0eb10b93          	addi	s7,sp,235
   1be30:	06714783          	lbu	a5,103(sp)
   1be34:	d20784e3          	beqz	a5,1bb5c <_vfiprintf_r+0x2ec>
   1be38:	001d8d9b          	addiw	s11,s11,1
   1be3c:	d21ff06f          	j	1bb5c <_vfiprintf_r+0x2ec>
   1be40:	000c2d03          	lw	s10,0(s8)
   1be44:	008c0c13          	addi	s8,s8,8
   1be48:	220d5663          	bgez	s10,1c074 <_vfiprintf_r+0x804>
   1be4c:	41a00d3b          	negw	s10,s10
   1be50:	004b6313          	ori	t1,s6,4
   1be54:	000cc783          	lbu	a5,0(s9)
   1be58:	00030b1b          	sext.w	s6,t1
   1be5c:	ba1ff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1be60:	02b00693          	li	a3,43
   1be64:	000cc783          	lbu	a5,0(s9)
   1be68:	06d103a3          	sb	a3,103(sp)
   1be6c:	b91ff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1be70:	010b6793          	ori	a5,s6,16
   1be74:	000d0e13          	mv	t3,s10
   1be78:	000d8813          	mv	a6,s11
   1be7c:	0007879b          	sext.w	a5,a5
   1be80:	0207f693          	andi	a3,a5,32
   1be84:	008c0593          	addi	a1,s8,8
   1be88:	00069663          	bnez	a3,1be94 <_vfiprintf_r+0x624>
   1be8c:	0107f693          	andi	a3,a5,16
   1be90:	160682e3          	beqz	a3,1c7f4 <_vfiprintf_r+0xf84>
   1be94:	000c3683          	ld	a3,0(s8)
   1be98:	bff7f313          	andi	t1,a5,-1025
   1be9c:	060103a3          	sb	zero,103(sp)
   1bea0:	fff00613          	li	a2,-1
   1bea4:	0003031b          	sext.w	t1,t1
   1bea8:	00058c13          	mv	s8,a1
   1beac:	0ac80463          	beq	a6,a2,1bf54 <_vfiprintf_r+0x6e4>
   1beb0:	b7f7f793          	andi	a5,a5,-1153
   1beb4:	0007879b          	sext.w	a5,a5
   1beb8:	2e069ce3          	bnez	a3,1c9b0 <_vfiprintf_r+0x1140>
   1bebc:	00030d13          	mv	s10,t1
   1bec0:	00078313          	mv	t1,a5
   1bec4:	06081e63          	bnez	a6,1bf40 <_vfiprintf_r+0x6d0>
   1bec8:	02069ee3          	bnez	a3,1c704 <_vfiprintf_r+0xe94>
   1becc:	001d7d13          	andi	s10,s10,1
   1bed0:	100d04e3          	beqz	s10,1c7d8 <_vfiprintf_r+0xf68>
   1bed4:	03000793          	li	a5,48
   1bed8:	0ef105a3          	sb	a5,235(sp)
   1bedc:	000d0d93          	mv	s11,s10
   1bee0:	0eb10b93          	addi	s7,sp,235
   1bee4:	f4dff06f          	j	1be30 <_vfiprintf_r+0x5c0>
   1bee8:	ffff87b7          	lui	a5,0xffff8
   1beec:	8307c793          	xori	a5,a5,-2000
   1bef0:	06f11423          	sh	a5,104(sp)
   1bef4:	000227b7          	lui	a5,0x22
   1bef8:	002b6313          	ori	t1,s6,2
   1befc:	fa878793          	addi	a5,a5,-88 # 21fa8 <__clzdi2+0x94>
   1bf00:	000c3683          	ld	a3,0(s8)
   1bf04:	000d0e13          	mv	t3,s10
   1bf08:	000d8813          	mv	a6,s11
   1bf0c:	0003031b          	sext.w	t1,t1
   1bf10:	008c0c13          	addi	s8,s8,8
   1bf14:	00f13423          	sd	a5,8(sp)
   1bf18:	060103a3          	sb	zero,103(sp)
   1bf1c:	fff00793          	li	a5,-1
   1bf20:	4ef80463          	beq	a6,a5,1c408 <_vfiprintf_r+0xb98>
   1bf24:	f7f37793          	andi	a5,t1,-129
   1bf28:	0007879b          	sext.w	a5,a5
   1bf2c:	4c069863          	bnez	a3,1c3fc <_vfiprintf_r+0xb8c>
   1bf30:	00030d13          	mv	s10,t1
   1bf34:	00200693          	li	a3,2
   1bf38:	00078313          	mv	t1,a5
   1bf3c:	f80806e3          	beqz	a6,1bec8 <_vfiprintf_r+0x658>
   1bf40:	00100793          	li	a5,1
   1bf44:	3af682e3          	beq	a3,a5,1cae8 <_vfiprintf_r+0x1278>
   1bf48:	00200793          	li	a5,2
   1bf4c:	2af68ce3          	beq	a3,a5,1ca04 <_vfiprintf_r+0x1194>
   1bf50:	00000693          	li	a3,0
   1bf54:	0ec10593          	addi	a1,sp,236
   1bf58:	00058b93          	mv	s7,a1
   1bf5c:	0076f793          	andi	a5,a3,7
   1bf60:	03078793          	addi	a5,a5,48
   1bf64:	fefb8fa3          	sb	a5,-1(s7)
   1bf68:	0036d693          	srli	a3,a3,0x3
   1bf6c:	000b8613          	mv	a2,s7
   1bf70:	fffb8b93          	addi	s7,s7,-1
   1bf74:	fe0694e3          	bnez	a3,1bf5c <_vfiprintf_r+0x6ec>
   1bf78:	00137693          	andi	a3,t1,1
   1bf7c:	4a068a63          	beqz	a3,1c430 <_vfiprintf_r+0xbc0>
   1bf80:	03000693          	li	a3,48
   1bf84:	4ad78663          	beq	a5,a3,1c430 <_vfiprintf_r+0xbc0>
   1bf88:	ffe60613          	addi	a2,a2,-2
   1bf8c:	40c58d3b          	subw	s10,a1,a2
   1bf90:	fedb8fa3          	sb	a3,-1(s7)
   1bf94:	000d0d9b          	sext.w	s11,s10
   1bf98:	0b0d4ce3          	blt	s10,a6,1c850 <_vfiprintf_r+0xfe0>
   1bf9c:	00060b93          	mv	s7,a2
   1bfa0:	e91ff06f          	j	1be30 <_vfiprintf_r+0x5c0>
   1bfa4:	010b6313          	ori	t1,s6,16
   1bfa8:	000d0e13          	mv	t3,s10
   1bfac:	000d8813          	mv	a6,s11
   1bfb0:	0003031b          	sext.w	t1,t1
   1bfb4:	dd1ff06f          	j	1bd84 <_vfiprintf_r+0x514>
   1bfb8:	000cc783          	lbu	a5,0(s9)
   1bfbc:	06800693          	li	a3,104
   1bfc0:	20d78ae3          	beq	a5,a3,1c9d4 <_vfiprintf_r+0x1164>
   1bfc4:	040b6313          	ori	t1,s6,64
   1bfc8:	00030b1b          	sext.w	s6,t1
   1bfcc:	a31ff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1bfd0:	020b6313          	ori	t1,s6,32
   1bfd4:	000cc783          	lbu	a5,0(s9)
   1bfd8:	00030b1b          	sext.w	s6,t1
   1bfdc:	a21ff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1bfe0:	020b7793          	andi	a5,s6,32
   1bfe4:	000c3683          	ld	a3,0(s8)
   1bfe8:	02079463          	bnez	a5,1c010 <_vfiprintf_r+0x7a0>
   1bfec:	010b7793          	andi	a5,s6,16
   1bff0:	02079063          	bnez	a5,1c010 <_vfiprintf_r+0x7a0>
   1bff4:	040b7793          	andi	a5,s6,64
   1bff8:	280796e3          	bnez	a5,1ca84 <_vfiprintf_r+0x1214>
   1bffc:	200b7313          	andi	t1,s6,512
   1c000:	30030ce3          	beqz	t1,1cb18 <_vfiprintf_r+0x12a8>
   1c004:	01568023          	sb	s5,0(a3)
   1c008:	008c0c13          	addi	s8,s8,8
   1c00c:	94dff06f          	j	1b958 <_vfiprintf_r+0xe8>
   1c010:	0156b023          	sd	s5,0(a3)
   1c014:	008c0c13          	addi	s8,s8,8
   1c018:	941ff06f          	j	1b958 <_vfiprintf_r+0xe8>
   1c01c:	000cc783          	lbu	a5,0(s9)
   1c020:	06c00693          	li	a3,108
   1c024:	18d78ee3          	beq	a5,a3,1c9c0 <_vfiprintf_r+0x1150>
   1c028:	010b6313          	ori	t1,s6,16
   1c02c:	00030b1b          	sext.w	s6,t1
   1c030:	9cdff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1c034:	00098513          	mv	a0,s3
   1c038:	00e13823          	sd	a4,16(sp)
   1c03c:	aa1fa0ef          	jal	ra,16adc <_localeconv_r>
   1c040:	00853783          	ld	a5,8(a0)
   1c044:	00078513          	mv	a0,a5
   1c048:	02f13c23          	sd	a5,56(sp)
   1c04c:	fd9fc0ef          	jal	ra,19024 <strlen>
   1c050:	00050793          	mv	a5,a0
   1c054:	00098513          	mv	a0,s3
   1c058:	02f13423          	sd	a5,40(sp)
   1c05c:	a81fa0ef          	jal	ra,16adc <_localeconv_r>
   1c060:	01053683          	ld	a3,16(a0)
   1c064:	02813783          	ld	a5,40(sp)
   1c068:	01013703          	ld	a4,16(sp)
   1c06c:	02d13823          	sd	a3,48(sp)
   1c070:	7a079a63          	bnez	a5,1c824 <_vfiprintf_r+0xfb4>
   1c074:	000cc783          	lbu	a5,0(s9)
   1c078:	985ff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1c07c:	001b6313          	ori	t1,s6,1
   1c080:	000cc783          	lbu	a5,0(s9)
   1c084:	00030b1b          	sext.w	s6,t1
   1c088:	975ff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1c08c:	06714683          	lbu	a3,103(sp)
   1c090:	000cc783          	lbu	a5,0(s9)
   1c094:	960694e3          	bnez	a3,1b9fc <_vfiprintf_r+0x18c>
   1c098:	02000693          	li	a3,32
   1c09c:	06d103a3          	sb	a3,103(sp)
   1c0a0:	95dff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1c0a4:	080b6313          	ori	t1,s6,128
   1c0a8:	000cc783          	lbu	a5,0(s9)
   1c0ac:	00030b1b          	sext.w	s6,t1
   1c0b0:	94dff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1c0b4:	000cc783          	lbu	a5,0(s9)
   1c0b8:	02a00593          	li	a1,42
   1c0bc:	001c8693          	addi	a3,s9,1
   1c0c0:	26b782e3          	beq	a5,a1,1cb24 <_vfiprintf_r+0x12b4>
   1c0c4:	fd07861b          	addiw	a2,a5,-48
   1c0c8:	00900513          	li	a0,9
   1c0cc:	00068c93          	mv	s9,a3
   1c0d0:	00000d93          	li	s11,0
   1c0d4:	00900593          	li	a1,9
   1c0d8:	92c566e3          	bltu	a0,a2,1ba04 <_vfiprintf_r+0x194>
   1c0dc:	000cc783          	lbu	a5,0(s9)
   1c0e0:	002d969b          	slliw	a3,s11,0x2
   1c0e4:	01b6883b          	addw	a6,a3,s11
   1c0e8:	0018181b          	slliw	a6,a6,0x1
   1c0ec:	00c80dbb          	addw	s11,a6,a2
   1c0f0:	fd07861b          	addiw	a2,a5,-48
   1c0f4:	001c8c93          	addi	s9,s9,1
   1c0f8:	fec5f2e3          	bgeu	a1,a2,1c0dc <_vfiprintf_r+0x86c>
   1c0fc:	909ff06f          	j	1ba04 <_vfiprintf_r+0x194>
   1c100:	000d0e13          	mv	t3,s10
   1c104:	010b6d13          	ori	s10,s6,16
   1c108:	000d8813          	mv	a6,s11
   1c10c:	000d0d1b          	sext.w	s10,s10
   1c110:	020d7793          	andi	a5,s10,32
   1c114:	008c0693          	addi	a3,s8,8
   1c118:	00079663          	bnez	a5,1c124 <_vfiprintf_r+0x8b4>
   1c11c:	010d7793          	andi	a5,s10,16
   1c120:	6e078663          	beqz	a5,1c80c <_vfiprintf_r+0xf9c>
   1c124:	000c3d83          	ld	s11,0(s8)
   1c128:	060103a3          	sb	zero,103(sp)
   1c12c:	fff00613          	li	a2,-1
   1c130:	000d0313          	mv	t1,s10
   1c134:	ccc808e3          	beq	a6,a2,1be04 <_vfiprintf_r+0x594>
   1c138:	f7fd7313          	andi	t1,s10,-129
   1c13c:	0003031b          	sext.w	t1,t1
   1c140:	cc0d92e3          	bnez	s11,1be04 <_vfiprintf_r+0x594>
   1c144:	00068c13          	mv	s8,a3
   1c148:	00100693          	li	a3,1
   1c14c:	d79ff06f          	j	1bec4 <_vfiprintf_r+0x654>
   1c150:	00100713          	li	a4,1
   1c154:	06e12c23          	sw	a4,120(sp)
   1c158:	000d0793          	mv	a5,s10
   1c15c:	0f713823          	sd	s7,240(sp)
   1c160:	0fa13c23          	sd	s10,248(sp)
   1c164:	09a13023          	sd	s10,128(sp)
   1c168:	00048713          	mv	a4,s1
   1c16c:	01070713          	addi	a4,a4,16
   1c170:	b1dff06f          	j	1bc8c <_vfiprintf_r+0x41c>
   1c174:	41be0b3b          	subw	s6,t3,s11
   1c178:	ad6050e3          	blez	s6,1bc38 <_vfiprintf_r+0x3c8>
   1c17c:	01000613          	li	a2,16
   1c180:	196654e3          	bge	a2,s6,1cb08 <_vfiprintf_r+0x1298>
   1c184:	00023eb7          	lui	t4,0x23
   1c188:	a50e8e93          	addi	t4,t4,-1456 # 22a50 <zeroes.0>
   1c18c:	01713823          	sd	s7,16(sp)
   1c190:	01000f13          	li	t5,16
   1c194:	00700f93          	li	t6,7
   1c198:	00613c23          	sd	t1,24(sp)
   1c19c:	03c13023          	sd	t3,32(sp)
   1c1a0:	05013023          	sd	a6,64(sp)
   1c1a4:	000e8b93          	mv	s7,t4
   1c1a8:	0180006f          	j	1c1c0 <_vfiprintf_r+0x950>
   1c1ac:	0026861b          	addiw	a2,a3,2
   1c1b0:	01070713          	addi	a4,a4,16
   1c1b4:	00058693          	mv	a3,a1
   1c1b8:	ff0b0b1b          	addiw	s6,s6,-16
   1c1bc:	056f5c63          	bge	t5,s6,1c214 <_vfiprintf_r+0x9a4>
   1c1c0:	0016859b          	addiw	a1,a3,1
   1c1c4:	01078793          	addi	a5,a5,16
   1c1c8:	01773023          	sd	s7,0(a4)
   1c1cc:	01e73423          	sd	t5,8(a4)
   1c1d0:	08f13023          	sd	a5,128(sp)
   1c1d4:	06b12c23          	sw	a1,120(sp)
   1c1d8:	fcbfdae3          	bge	t6,a1,1c1ac <_vfiprintf_r+0x93c>
   1c1dc:	18078863          	beqz	a5,1c36c <_vfiprintf_r+0xafc>
   1c1e0:	07010613          	addi	a2,sp,112
   1c1e4:	00090593          	mv	a1,s2
   1c1e8:	00098513          	mv	a0,s3
   1c1ec:	d6cff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1c1f0:	8a051ee3          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1c1f4:	07812683          	lw	a3,120(sp)
   1c1f8:	01000f13          	li	t5,16
   1c1fc:	ff0b0b1b          	addiw	s6,s6,-16
   1c200:	08013783          	ld	a5,128(sp)
   1c204:	00048713          	mv	a4,s1
   1c208:	0016861b          	addiw	a2,a3,1
   1c20c:	00700f93          	li	t6,7
   1c210:	fb6f48e3          	blt	t5,s6,1c1c0 <_vfiprintf_r+0x950>
   1c214:	000b8e93          	mv	t4,s7
   1c218:	01813303          	ld	t1,24(sp)
   1c21c:	02013e03          	ld	t3,32(sp)
   1c220:	04013803          	ld	a6,64(sp)
   1c224:	01013b83          	ld	s7,16(sp)
   1c228:	016787b3          	add	a5,a5,s6
   1c22c:	01d73023          	sd	t4,0(a4)
   1c230:	01673423          	sd	s6,8(a4)
   1c234:	08f13023          	sd	a5,128(sp)
   1c238:	06c12c23          	sw	a2,120(sp)
   1c23c:	00700693          	li	a3,7
   1c240:	5ac6d263          	bge	a3,a2,1c7e4 <_vfiprintf_r+0xf74>
   1c244:	00078ce3          	beqz	a5,1ca5c <_vfiprintf_r+0x11ec>
   1c248:	07010613          	addi	a2,sp,112
   1c24c:	00090593          	mv	a1,s2
   1c250:	00098513          	mv	a0,s3
   1c254:	03013023          	sd	a6,32(sp)
   1c258:	01c13c23          	sd	t3,24(sp)
   1c25c:	00613823          	sd	t1,16(sp)
   1c260:	cf8ff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1c264:	840514e3          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1c268:	02013803          	ld	a6,32(sp)
   1c26c:	07812683          	lw	a3,120(sp)
   1c270:	08013783          	ld	a5,128(sp)
   1c274:	41a80b3b          	subw	s6,a6,s10
   1c278:	01813e03          	ld	t3,24(sp)
   1c27c:	01013303          	ld	t1,16(sp)
   1c280:	00048713          	mv	a4,s1
   1c284:	0016851b          	addiw	a0,a3,1
   1c288:	9b605ce3          	blez	s6,1bc40 <_vfiprintf_r+0x3d0>
   1c28c:	00023eb7          	lui	t4,0x23
   1c290:	a50e8e93          	addi	t4,t4,-1456 # 22a50 <zeroes.0>
   1c294:	09645463          	bge	s0,s6,1c31c <_vfiprintf_r+0xaac>
   1c298:	00700813          	li	a6,7
   1c29c:	00613823          	sd	t1,16(sp)
   1c2a0:	01c13c23          	sd	t3,24(sp)
   1c2a4:	03413023          	sd	s4,32(sp)
   1c2a8:	0180006f          	j	1c2c0 <_vfiprintf_r+0xa50>
   1c2ac:	0026851b          	addiw	a0,a3,2
   1c2b0:	01070713          	addi	a4,a4,16
   1c2b4:	00058693          	mv	a3,a1
   1c2b8:	ff0b0b1b          	addiw	s6,s6,-16
   1c2bc:	05645a63          	bge	s0,s6,1c310 <_vfiprintf_r+0xaa0>
   1c2c0:	0016859b          	addiw	a1,a3,1
   1c2c4:	01078793          	addi	a5,a5,16
   1c2c8:	01473023          	sd	s4,0(a4)
   1c2cc:	00873423          	sd	s0,8(a4)
   1c2d0:	08f13023          	sd	a5,128(sp)
   1c2d4:	06b12c23          	sw	a1,120(sp)
   1c2d8:	fcb85ae3          	bge	a6,a1,1c2ac <_vfiprintf_r+0xa3c>
   1c2dc:	06078463          	beqz	a5,1c344 <_vfiprintf_r+0xad4>
   1c2e0:	07010613          	addi	a2,sp,112
   1c2e4:	00090593          	mv	a1,s2
   1c2e8:	00098513          	mv	a0,s3
   1c2ec:	c6cff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1c2f0:	fa051e63          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1c2f4:	07812683          	lw	a3,120(sp)
   1c2f8:	ff0b0b1b          	addiw	s6,s6,-16
   1c2fc:	08013783          	ld	a5,128(sp)
   1c300:	00048713          	mv	a4,s1
   1c304:	0016851b          	addiw	a0,a3,1
   1c308:	00700813          	li	a6,7
   1c30c:	fb644ae3          	blt	s0,s6,1c2c0 <_vfiprintf_r+0xa50>
   1c310:	01013303          	ld	t1,16(sp)
   1c314:	01813e03          	ld	t3,24(sp)
   1c318:	02013e83          	ld	t4,32(sp)
   1c31c:	016787b3          	add	a5,a5,s6
   1c320:	01d73023          	sd	t4,0(a4)
   1c324:	01673423          	sd	s6,8(a4)
   1c328:	08f13023          	sd	a5,128(sp)
   1c32c:	06a12c23          	sw	a0,120(sp)
   1c330:	00700693          	li	a3,7
   1c334:	32a6c263          	blt	a3,a0,1c658 <_vfiprintf_r+0xde8>
   1c338:	01070713          	addi	a4,a4,16
   1c33c:	0015051b          	addiw	a0,a0,1
   1c340:	901ff06f          	j	1bc40 <_vfiprintf_r+0x3d0>
   1c344:	00100513          	li	a0,1
   1c348:	00000693          	li	a3,0
   1c34c:	00048713          	mv	a4,s1
   1c350:	f69ff06f          	j	1c2b8 <_vfiprintf_r+0xa48>
   1c354:	07010613          	addi	a2,sp,112
   1c358:	00090593          	mv	a1,s2
   1c35c:	00098513          	mv	a0,s3
   1c360:	bf8ff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1c364:	940506e3          	beqz	a0,1bcb0 <_vfiprintf_r+0x440>
   1c368:	f44ff06f          	j	1baac <_vfiprintf_r+0x23c>
   1c36c:	00100613          	li	a2,1
   1c370:	00000693          	li	a3,0
   1c374:	00048713          	mv	a4,s1
   1c378:	e41ff06f          	j	1c1b8 <_vfiprintf_r+0x948>
   1c37c:	04078a63          	beqz	a5,1c3d0 <_vfiprintf_r+0xb60>
   1c380:	07010613          	addi	a2,sp,112
   1c384:	00090593          	mv	a1,s2
   1c388:	00098513          	mv	a0,s3
   1c38c:	05013423          	sd	a6,72(sp)
   1c390:	05c13023          	sd	t3,64(sp)
   1c394:	02613023          	sd	t1,32(sp)
   1c398:	00513c23          	sd	t0,24(sp)
   1c39c:	01f13823          	sd	t6,16(sp)
   1c3a0:	bb8ff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1c3a4:	f0051463          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1c3a8:	07812683          	lw	a3,120(sp)
   1c3ac:	08013783          	ld	a5,128(sp)
   1c3b0:	04813803          	ld	a6,72(sp)
   1c3b4:	04013e03          	ld	t3,64(sp)
   1c3b8:	02013303          	ld	t1,32(sp)
   1c3bc:	01813283          	ld	t0,24(sp)
   1c3c0:	01013f83          	ld	t6,16(sp)
   1c3c4:	00048713          	mv	a4,s1
   1c3c8:	0016851b          	addiw	a0,a3,1
   1c3cc:	ff4ff06f          	j	1bbc0 <_vfiprintf_r+0x350>
   1c3d0:	460f8863          	beqz	t6,1c840 <_vfiprintf_r+0xfd0>
   1c3d4:	06810793          	addi	a5,sp,104
   1c3d8:	0ef13823          	sd	a5,240(sp)
   1c3dc:	00200793          	li	a5,2
   1c3e0:	0ef13c23          	sd	a5,248(sp)
   1c3e4:	00100513          	li	a0,1
   1c3e8:	00048713          	mv	a4,s1
   1c3ec:	00050693          	mv	a3,a0
   1c3f0:	01070713          	addi	a4,a4,16
   1c3f4:	0015051b          	addiw	a0,a0,1
   1c3f8:	839ff06f          	j	1bc30 <_vfiprintf_r+0x3c0>
   1c3fc:	00078313          	mv	t1,a5
   1c400:	00200793          	li	a5,2
   1c404:	b40788e3          	beqz	a5,1bf54 <_vfiprintf_r+0x6e4>
   1c408:	00813603          	ld	a2,8(sp)
   1c40c:	0ec10593          	addi	a1,sp,236
   1c410:	00058b93          	mv	s7,a1
   1c414:	00f6f793          	andi	a5,a3,15
   1c418:	00f607b3          	add	a5,a2,a5
   1c41c:	0007c783          	lbu	a5,0(a5)
   1c420:	0046d693          	srli	a3,a3,0x4
   1c424:	fffb8b93          	addi	s7,s7,-1
   1c428:	00fb8023          	sb	a5,0(s7)
   1c42c:	fe0694e3          	bnez	a3,1c414 <_vfiprintf_r+0xba4>
   1c430:	41758d3b          	subw	s10,a1,s7
   1c434:	000d0d9b          	sext.w	s11,s10
   1c438:	9f0d5ce3          	bge	s10,a6,1be30 <_vfiprintf_r+0x5c0>
   1c43c:	00080d9b          	sext.w	s11,a6
   1c440:	9f1ff06f          	j	1be30 <_vfiprintf_r+0x5c0>
   1c444:	01000593          	li	a1,16
   1c448:	6965d863          	bge	a1,s6,1cad8 <_vfiprintf_r+0x1268>
   1c44c:	00023eb7          	lui	t4,0x23
   1c450:	a60e8e93          	addi	t4,t4,-1440 # 22a60 <blanks.1>
   1c454:	03713023          	sd	s7,32(sp)
   1c458:	01000f13          	li	t5,16
   1c45c:	00700393          	li	t2,7
   1c460:	01f13823          	sd	t6,16(sp)
   1c464:	00513c23          	sd	t0,24(sp)
   1c468:	04613023          	sd	t1,64(sp)
   1c46c:	05c13423          	sd	t3,72(sp)
   1c470:	05013823          	sd	a6,80(sp)
   1c474:	000e8b93          	mv	s7,t4
   1c478:	01c0006f          	j	1c494 <_vfiprintf_r+0xc24>
   1c47c:	0026861b          	addiw	a2,a3,2
   1c480:	01070713          	addi	a4,a4,16
   1c484:	00058693          	mv	a3,a1
   1c488:	ff0b0b1b          	addiw	s6,s6,-16
   1c48c:	056f5e63          	bge	t5,s6,1c4e8 <_vfiprintf_r+0xc78>
   1c490:	0016861b          	addiw	a2,a3,1
   1c494:	01078793          	addi	a5,a5,16
   1c498:	01773023          	sd	s7,0(a4)
   1c49c:	01e73423          	sd	t5,8(a4)
   1c4a0:	08f13023          	sd	a5,128(sp)
   1c4a4:	0006059b          	sext.w	a1,a2
   1c4a8:	06c12c23          	sw	a2,120(sp)
   1c4ac:	fcb3d8e3          	bge	t2,a1,1c47c <_vfiprintf_r+0xc0c>
   1c4b0:	08078063          	beqz	a5,1c530 <_vfiprintf_r+0xcc0>
   1c4b4:	07010613          	addi	a2,sp,112
   1c4b8:	00090593          	mv	a1,s2
   1c4bc:	00098513          	mv	a0,s3
   1c4c0:	a98ff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1c4c4:	de051463          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1c4c8:	07812683          	lw	a3,120(sp)
   1c4cc:	01000f13          	li	t5,16
   1c4d0:	ff0b0b1b          	addiw	s6,s6,-16
   1c4d4:	08013783          	ld	a5,128(sp)
   1c4d8:	00048713          	mv	a4,s1
   1c4dc:	0016861b          	addiw	a2,a3,1
   1c4e0:	00700393          	li	t2,7
   1c4e4:	fb6f46e3          	blt	t5,s6,1c490 <_vfiprintf_r+0xc20>
   1c4e8:	000b8e93          	mv	t4,s7
   1c4ec:	01013f83          	ld	t6,16(sp)
   1c4f0:	01813283          	ld	t0,24(sp)
   1c4f4:	04013303          	ld	t1,64(sp)
   1c4f8:	04813e03          	ld	t3,72(sp)
   1c4fc:	05013803          	ld	a6,80(sp)
   1c500:	02013b83          	ld	s7,32(sp)
   1c504:	016787b3          	add	a5,a5,s6
   1c508:	01d73023          	sd	t4,0(a4)
   1c50c:	01673423          	sd	s6,8(a4)
   1c510:	08f13023          	sd	a5,128(sp)
   1c514:	06c12c23          	sw	a2,120(sp)
   1c518:	00700693          	li	a3,7
   1c51c:	18c6ca63          	blt	a3,a2,1c6b0 <_vfiprintf_r+0xe40>
   1c520:	01070713          	addi	a4,a4,16
   1c524:	0016051b          	addiw	a0,a2,1
   1c528:	00060693          	mv	a3,a2
   1c52c:	e5cff06f          	j	1bb88 <_vfiprintf_r+0x318>
   1c530:	00000693          	li	a3,0
   1c534:	00100613          	li	a2,1
   1c538:	00048713          	mv	a4,s1
   1c53c:	f4dff06f          	j	1c488 <_vfiprintf_r+0xc18>
   1c540:	06012c23          	sw	zero,120(sp)
   1c544:	00437313          	andi	t1,t1,4
   1c548:	0e030e63          	beqz	t1,1c644 <_vfiprintf_r+0xdd4>
   1c54c:	41be0b3b          	subw	s6,t3,s11
   1c550:	0f605a63          	blez	s6,1c644 <_vfiprintf_r+0xdd4>
   1c554:	00048713          	mv	a4,s1
   1c558:	01000693          	li	a3,16
   1c55c:	07812603          	lw	a2,120(sp)
   1c560:	5966d863          	bge	a3,s6,1caf0 <_vfiprintf_r+0x1280>
   1c564:	00023eb7          	lui	t4,0x23
   1c568:	a60e8e93          	addi	t4,t4,-1440 # 22a60 <blanks.1>
   1c56c:	01813c23          	sd	s8,24(sp)
   1c570:	01000b93          	li	s7,16
   1c574:	00700d13          	li	s10,7
   1c578:	01c13823          	sd	t3,16(sp)
   1c57c:	000e8c13          	mv	s8,t4
   1c580:	0180006f          	j	1c598 <_vfiprintf_r+0xd28>
   1c584:	0026069b          	addiw	a3,a2,2
   1c588:	01070713          	addi	a4,a4,16
   1c58c:	00058613          	mv	a2,a1
   1c590:	ff0b0b1b          	addiw	s6,s6,-16
   1c594:	056bd863          	bge	s7,s6,1c5e4 <_vfiprintf_r+0xd74>
   1c598:	0016059b          	addiw	a1,a2,1
   1c59c:	01078793          	addi	a5,a5,16
   1c5a0:	01873023          	sd	s8,0(a4)
   1c5a4:	01773423          	sd	s7,8(a4)
   1c5a8:	08f13023          	sd	a5,128(sp)
   1c5ac:	06b12c23          	sw	a1,120(sp)
   1c5b0:	fcbd5ae3          	bge	s10,a1,1c584 <_vfiprintf_r+0xd14>
   1c5b4:	08078063          	beqz	a5,1c634 <_vfiprintf_r+0xdc4>
   1c5b8:	07010613          	addi	a2,sp,112
   1c5bc:	00090593          	mv	a1,s2
   1c5c0:	00098513          	mv	a0,s3
   1c5c4:	994ff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1c5c8:	ce051263          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1c5cc:	07812603          	lw	a2,120(sp)
   1c5d0:	ff0b0b1b          	addiw	s6,s6,-16
   1c5d4:	08013783          	ld	a5,128(sp)
   1c5d8:	00048713          	mv	a4,s1
   1c5dc:	0016069b          	addiw	a3,a2,1
   1c5e0:	fb6bcce3          	blt	s7,s6,1c598 <_vfiprintf_r+0xd28>
   1c5e4:	000c0e93          	mv	t4,s8
   1c5e8:	01013e03          	ld	t3,16(sp)
   1c5ec:	01813c03          	ld	s8,24(sp)
   1c5f0:	016787b3          	add	a5,a5,s6
   1c5f4:	01d73023          	sd	t4,0(a4)
   1c5f8:	01673423          	sd	s6,8(a4)
   1c5fc:	08f13023          	sd	a5,128(sp)
   1c600:	06d12c23          	sw	a3,120(sp)
   1c604:	00700713          	li	a4,7
   1c608:	e8d75a63          	bge	a4,a3,1bc9c <_vfiprintf_r+0x42c>
   1c60c:	02078c63          	beqz	a5,1c644 <_vfiprintf_r+0xdd4>
   1c610:	07010613          	addi	a2,sp,112
   1c614:	00090593          	mv	a1,s2
   1c618:	00098513          	mv	a0,s3
   1c61c:	01c13823          	sd	t3,16(sp)
   1c620:	938ff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1c624:	c8051463          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1c628:	08013783          	ld	a5,128(sp)
   1c62c:	01013e03          	ld	t3,16(sp)
   1c630:	e6cff06f          	j	1bc9c <_vfiprintf_r+0x42c>
   1c634:	00100693          	li	a3,1
   1c638:	00000613          	li	a2,0
   1c63c:	00048713          	mv	a4,s1
   1c640:	f51ff06f          	j	1c590 <_vfiprintf_r+0xd20>
   1c644:	000e0793          	mv	a5,t3
   1c648:	01be5463          	bge	t3,s11,1c650 <_vfiprintf_r+0xde0>
   1c64c:	000d8793          	mv	a5,s11
   1c650:	01578abb          	addw	s5,a5,s5
   1c654:	e5cff06f          	j	1bcb0 <_vfiprintf_r+0x440>
   1c658:	ae078ce3          	beqz	a5,1c150 <_vfiprintf_r+0x8e0>
   1c65c:	07010613          	addi	a2,sp,112
   1c660:	00090593          	mv	a1,s2
   1c664:	00098513          	mv	a0,s3
   1c668:	01c13c23          	sd	t3,24(sp)
   1c66c:	00613823          	sd	t1,16(sp)
   1c670:	8e8ff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1c674:	c2051c63          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1c678:	07812503          	lw	a0,120(sp)
   1c67c:	08013783          	ld	a5,128(sp)
   1c680:	01813e03          	ld	t3,24(sp)
   1c684:	01013303          	ld	t1,16(sp)
   1c688:	00048713          	mv	a4,s1
   1c68c:	0015051b          	addiw	a0,a0,1
   1c690:	db0ff06f          	j	1bc40 <_vfiprintf_r+0x3d0>
   1c694:	06012c23          	sw	zero,120(sp)
   1c698:	00048713          	mv	a4,s1
   1c69c:	b2cff06f          	j	1b9c8 <_vfiprintf_r+0x158>
   1c6a0:	00100513          	li	a0,1
   1c6a4:	00000693          	li	a3,0
   1c6a8:	00048713          	mv	a4,s1
   1c6ac:	d84ff06f          	j	1bc30 <_vfiprintf_r+0x3c0>
   1c6b0:	2a078063          	beqz	a5,1c950 <_vfiprintf_r+0x10e0>
   1c6b4:	07010613          	addi	a2,sp,112
   1c6b8:	00090593          	mv	a1,s2
   1c6bc:	00098513          	mv	a0,s3
   1c6c0:	05013423          	sd	a6,72(sp)
   1c6c4:	05c13023          	sd	t3,64(sp)
   1c6c8:	02613023          	sd	t1,32(sp)
   1c6cc:	00513c23          	sd	t0,24(sp)
   1c6d0:	01f13823          	sd	t6,16(sp)
   1c6d4:	884ff0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1c6d8:	bc051a63          	bnez	a0,1baac <_vfiprintf_r+0x23c>
   1c6dc:	07812683          	lw	a3,120(sp)
   1c6e0:	08013783          	ld	a5,128(sp)
   1c6e4:	04813803          	ld	a6,72(sp)
   1c6e8:	04013e03          	ld	t3,64(sp)
   1c6ec:	02013303          	ld	t1,32(sp)
   1c6f0:	01813283          	ld	t0,24(sp)
   1c6f4:	01013f83          	ld	t6,16(sp)
   1c6f8:	00048713          	mv	a4,s1
   1c6fc:	0016851b          	addiw	a0,a3,1
   1c700:	c88ff06f          	j	1bb88 <_vfiprintf_r+0x318>
   1c704:	00000d93          	li	s11,0
   1c708:	00000d13          	li	s10,0
   1c70c:	0ec10b93          	addi	s7,sp,236
   1c710:	f20ff06f          	j	1be30 <_vfiprintf_r+0x5c0>
   1c714:	05213c23          	sd	s2,88(sp)
   1c718:	03013903          	ld	s2,48(sp)
   1c71c:	0ec10593          	addi	a1,sp,236
   1c720:	05313823          	sd	s3,80(sp)
   1c724:	40037d13          	andi	s10,t1,1024
   1c728:	00000b13          	li	s6,0
   1c72c:	00058b93          	mv	s7,a1
   1c730:	00900c13          	li	s8,9
   1c734:	00613823          	sd	t1,16(sp)
   1c738:	01c13c23          	sd	t3,24(sp)
   1c73c:	03013023          	sd	a6,32(sp)
   1c740:	04e13023          	sd	a4,64(sp)
   1c744:	04d13423          	sd	a3,72(sp)
   1c748:	00058993          	mv	s3,a1
   1c74c:	00a00593          	li	a1,10
   1c750:	000d8513          	mv	a0,s11
   1c754:	d51f30ef          	jal	ra,104a4 <__umoddi3>
   1c758:	0305051b          	addiw	a0,a0,48
   1c75c:	fea98fa3          	sb	a0,-1(s3)
   1c760:	001b0b1b          	addiw	s6,s6,1
   1c764:	fff98993          	addi	s3,s3,-1
   1c768:	000d0663          	beqz	s10,1c774 <_vfiprintf_r+0xf04>
   1c76c:	00094703          	lbu	a4,0(s2)
   1c770:	01670e63          	beq	a4,s6,1c78c <_vfiprintf_r+0xf1c>
   1c774:	00a00593          	li	a1,10
   1c778:	000d8513          	mv	a0,s11
   1c77c:	ce1f30ef          	jal	ra,1045c <__hidden___udivdi3>
   1c780:	01bc7c63          	bgeu	s8,s11,1c798 <_vfiprintf_r+0xf28>
   1c784:	00050d93          	mv	s11,a0
   1c788:	fc5ff06f          	j	1c74c <_vfiprintf_r+0xedc>
   1c78c:	0ff00793          	li	a5,255
   1c790:	fef702e3          	beq	a4,a5,1c774 <_vfiprintf_r+0xf04>
   1c794:	1fbc6063          	bltu	s8,s11,1c974 <_vfiprintf_r+0x1104>
   1c798:	02013803          	ld	a6,32(sp)
   1c79c:	000b8593          	mv	a1,s7
   1c7a0:	00098b93          	mv	s7,s3
   1c7a4:	03213823          	sd	s2,48(sp)
   1c7a8:	41758d3b          	subw	s10,a1,s7
   1c7ac:	01013303          	ld	t1,16(sp)
   1c7b0:	01813e03          	ld	t3,24(sp)
   1c7b4:	04013703          	ld	a4,64(sp)
   1c7b8:	04813683          	ld	a3,72(sp)
   1c7bc:	05813903          	ld	s2,88(sp)
   1c7c0:	05013983          	ld	s3,80(sp)
   1c7c4:	000d0d9b          	sext.w	s11,s10
   1c7c8:	010d5463          	bge	s10,a6,1c7d0 <_vfiprintf_r+0xf60>
   1c7cc:	00080d9b          	sext.w	s11,a6
   1c7d0:	00068c13          	mv	s8,a3
   1c7d4:	e5cff06f          	j	1be30 <_vfiprintf_r+0x5c0>
   1c7d8:	00000d93          	li	s11,0
   1c7dc:	0ec10b93          	addi	s7,sp,236
   1c7e0:	e50ff06f          	j	1be30 <_vfiprintf_r+0x5c0>
   1c7e4:	01070713          	addi	a4,a4,16
   1c7e8:	0016051b          	addiw	a0,a2,1
   1c7ec:	00060693          	mv	a3,a2
   1c7f0:	c48ff06f          	j	1bc38 <_vfiprintf_r+0x3c8>
   1c7f4:	0407f613          	andi	a2,a5,64
   1c7f8:	000c2683          	lw	a3,0(s8)
   1c7fc:	20060863          	beqz	a2,1ca0c <_vfiprintf_r+0x119c>
   1c800:	03069693          	slli	a3,a3,0x30
   1c804:	0306d693          	srli	a3,a3,0x30
   1c808:	e90ff06f          	j	1be98 <_vfiprintf_r+0x628>
   1c80c:	040d7613          	andi	a2,s10,64
   1c810:	000c2783          	lw	a5,0(s8)
   1c814:	20060c63          	beqz	a2,1ca2c <_vfiprintf_r+0x11bc>
   1c818:	03079d93          	slli	s11,a5,0x30
   1c81c:	030ddd93          	srli	s11,s11,0x30
   1c820:	909ff06f          	j	1c128 <_vfiprintf_r+0x8b8>
   1c824:	000cc783          	lbu	a5,0(s9)
   1c828:	9c068a63          	beqz	a3,1b9fc <_vfiprintf_r+0x18c>
   1c82c:	0006c683          	lbu	a3,0(a3)
   1c830:	9c068663          	beqz	a3,1b9fc <_vfiprintf_r+0x18c>
   1c834:	400b6313          	ori	t1,s6,1024
   1c838:	00030b1b          	sext.w	s6,t1
   1c83c:	9c0ff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1c840:	00000693          	li	a3,0
   1c844:	00100513          	li	a0,1
   1c848:	00048713          	mv	a4,s1
   1c84c:	be4ff06f          	j	1bc30 <_vfiprintf_r+0x3c0>
   1c850:	00080d9b          	sext.w	s11,a6
   1c854:	00060b93          	mv	s7,a2
   1c858:	dd8ff06f          	j	1be30 <_vfiprintf_r+0x5c0>
   1c85c:	000226b7          	lui	a3,0x22
   1c860:	f9068693          	addi	a3,a3,-112 # 21f90 <__clzdi2+0x7c>
   1c864:	000b0313          	mv	t1,s6
   1c868:	00d13423          	sd	a3,8(sp)
   1c86c:	02037693          	andi	a3,t1,32
   1c870:	000d0e13          	mv	t3,s10
   1c874:	000d8813          	mv	a6,s11
   1c878:	008c0613          	addi	a2,s8,8
   1c87c:	08069a63          	bnez	a3,1c910 <_vfiprintf_r+0x10a0>
   1c880:	01037693          	andi	a3,t1,16
   1c884:	08069663          	bnez	a3,1c910 <_vfiprintf_r+0x10a0>
   1c888:	04037593          	andi	a1,t1,64
   1c88c:	000c2683          	lw	a3,0(s8)
   1c890:	18058663          	beqz	a1,1ca1c <_vfiprintf_r+0x11ac>
   1c894:	03069693          	slli	a3,a3,0x30
   1c898:	0306d693          	srli	a3,a3,0x30
   1c89c:	00137593          	andi	a1,t1,1
   1c8a0:	00058e63          	beqz	a1,1c8bc <_vfiprintf_r+0x104c>
   1c8a4:	00068c63          	beqz	a3,1c8bc <_vfiprintf_r+0x104c>
   1c8a8:	00236313          	ori	t1,t1,2
   1c8ac:	03000593          	li	a1,48
   1c8b0:	06b10423          	sb	a1,104(sp)
   1c8b4:	06f104a3          	sb	a5,105(sp)
   1c8b8:	0003031b          	sext.w	t1,t1
   1c8bc:	bff37313          	andi	t1,t1,-1025
   1c8c0:	0003031b          	sext.w	t1,t1
   1c8c4:	00060c13          	mv	s8,a2
   1c8c8:	e50ff06f          	j	1bf18 <_vfiprintf_r+0x6a8>
   1c8cc:	000d0e13          	mv	t3,s10
   1c8d0:	000d8813          	mv	a6,s11
   1c8d4:	000b0d13          	mv	s10,s6
   1c8d8:	839ff06f          	j	1c110 <_vfiprintf_r+0x8a0>
   1c8dc:	000d0e13          	mv	t3,s10
   1c8e0:	000d8813          	mv	a6,s11
   1c8e4:	000b0793          	mv	a5,s6
   1c8e8:	d98ff06f          	j	1be80 <_vfiprintf_r+0x610>
   1c8ec:	000226b7          	lui	a3,0x22
   1c8f0:	fa868693          	addi	a3,a3,-88 # 21fa8 <__clzdi2+0x94>
   1c8f4:	000b0313          	mv	t1,s6
   1c8f8:	00d13423          	sd	a3,8(sp)
   1c8fc:	02037693          	andi	a3,t1,32
   1c900:	000d0e13          	mv	t3,s10
   1c904:	000d8813          	mv	a6,s11
   1c908:	008c0613          	addi	a2,s8,8
   1c90c:	f6068ae3          	beqz	a3,1c880 <_vfiprintf_r+0x1010>
   1c910:	000c3683          	ld	a3,0(s8)
   1c914:	f89ff06f          	j	1c89c <_vfiprintf_r+0x102c>
   1c918:	000b8513          	mv	a0,s7
   1c91c:	02e13023          	sd	a4,32(sp)
   1c920:	01a13c23          	sd	s10,24(sp)
   1c924:	01613823          	sd	s6,16(sp)
   1c928:	efcfc0ef          	jal	ra,19024 <strlen>
   1c92c:	00050d1b          	sext.w	s10,a0
   1c930:	fffd4d93          	not	s11,s10
   1c934:	43fddd93          	srai	s11,s11,0x3f
   1c938:	01013303          	ld	t1,16(sp)
   1c93c:	01813e03          	ld	t3,24(sp)
   1c940:	02013703          	ld	a4,32(sp)
   1c944:	01adfdb3          	and	s11,s11,s10
   1c948:	00000813          	li	a6,0
   1c94c:	ce4ff06f          	j	1be30 <_vfiprintf_r+0x5c0>
   1c950:	06714703          	lbu	a4,103(sp)
   1c954:	12070063          	beqz	a4,1ca74 <_vfiprintf_r+0x1204>
   1c958:	06710793          	addi	a5,sp,103
   1c95c:	0ef13823          	sd	a5,240(sp)
   1c960:	00100793          	li	a5,1
   1c964:	0ef13c23          	sd	a5,248(sp)
   1c968:	00100513          	li	a0,1
   1c96c:	00048713          	mv	a4,s1
   1c970:	a44ff06f          	j	1bbb4 <_vfiprintf_r+0x344>
   1c974:	02813783          	ld	a5,40(sp)
   1c978:	03813583          	ld	a1,56(sp)
   1c97c:	00000b13          	li	s6,0
   1c980:	40f989b3          	sub	s3,s3,a5
   1c984:	00078613          	mv	a2,a5
   1c988:	00098513          	mv	a0,s3
   1c98c:	f60fc0ef          	jal	ra,190ec <strncpy>
   1c990:	00194703          	lbu	a4,1(s2)
   1c994:	000d8513          	mv	a0,s11
   1c998:	00a00593          	li	a1,10
   1c99c:	00e03733          	snez	a4,a4
   1c9a0:	00e90933          	add	s2,s2,a4
   1c9a4:	ab9f30ef          	jal	ra,1045c <__hidden___udivdi3>
   1c9a8:	00050d93          	mv	s11,a0
   1c9ac:	da1ff06f          	j	1c74c <_vfiprintf_r+0xedc>
   1c9b0:	00078313          	mv	t1,a5
   1c9b4:	00000793          	li	a5,0
   1c9b8:	d8078e63          	beqz	a5,1bf54 <_vfiprintf_r+0x6e4>
   1c9bc:	a4dff06f          	j	1c408 <_vfiprintf_r+0xb98>
   1c9c0:	020b6313          	ori	t1,s6,32
   1c9c4:	001cc783          	lbu	a5,1(s9)
   1c9c8:	00030b1b          	sext.w	s6,t1
   1c9cc:	001c8c93          	addi	s9,s9,1
   1c9d0:	82cff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1c9d4:	200b6313          	ori	t1,s6,512
   1c9d8:	001cc783          	lbu	a5,1(s9)
   1c9dc:	00030b1b          	sext.w	s6,t1
   1c9e0:	001c8c93          	addi	s9,s9,1
   1c9e4:	818ff06f          	j	1b9fc <_vfiprintf_r+0x18c>
   1c9e8:	00600793          	li	a5,6
   1c9ec:	000d8d1b          	sext.w	s10,s11
   1c9f0:	07b7ee63          	bltu	a5,s11,1ca6c <_vfiprintf_r+0x11fc>
   1c9f4:	00022bb7          	lui	s7,0x22
   1c9f8:	000d0d93          	mv	s11,s10
   1c9fc:	fc0b8b93          	addi	s7,s7,-64 # 21fc0 <__clzdi2+0xac>
   1ca00:	958ff06f          	j	1bb58 <_vfiprintf_r+0x2e8>
   1ca04:	00000693          	li	a3,0
   1ca08:	a01ff06f          	j	1c408 <_vfiprintf_r+0xb98>
   1ca0c:	2007f613          	andi	a2,a5,512
   1ca10:	08060c63          	beqz	a2,1caa8 <_vfiprintf_r+0x1238>
   1ca14:	0ff6f693          	zext.b	a3,a3
   1ca18:	c80ff06f          	j	1be98 <_vfiprintf_r+0x628>
   1ca1c:	20037593          	andi	a1,t1,512
   1ca20:	06058e63          	beqz	a1,1ca9c <_vfiprintf_r+0x122c>
   1ca24:	0ff6f693          	zext.b	a3,a3
   1ca28:	e75ff06f          	j	1c89c <_vfiprintf_r+0x102c>
   1ca2c:	200d7613          	andi	a2,s10,512
   1ca30:	0ff7fd93          	zext.b	s11,a5
   1ca34:	ee061a63          	bnez	a2,1c128 <_vfiprintf_r+0x8b8>
   1ca38:	02079d93          	slli	s11,a5,0x20
   1ca3c:	020ddd93          	srli	s11,s11,0x20
   1ca40:	ee8ff06f          	j	1c128 <_vfiprintf_r+0x8b8>
   1ca44:	20037613          	andi	a2,t1,512
   1ca48:	04060463          	beqz	a2,1ca90 <_vfiprintf_r+0x1220>
   1ca4c:	01879d9b          	slliw	s11,a5,0x18
   1ca50:	418ddd9b          	sraiw	s11,s11,0x18
   1ca54:	000d8613          	mv	a2,s11
   1ca58:	b58ff06f          	j	1bdb0 <_vfiprintf_r+0x540>
   1ca5c:	00100513          	li	a0,1
   1ca60:	00000693          	li	a3,0
   1ca64:	00048713          	mv	a4,s1
   1ca68:	9d0ff06f          	j	1bc38 <_vfiprintf_r+0x3c8>
   1ca6c:	00600d13          	li	s10,6
   1ca70:	f85ff06f          	j	1c9f4 <_vfiprintf_r+0x1184>
   1ca74:	00000693          	li	a3,0
   1ca78:	00100513          	li	a0,1
   1ca7c:	00048713          	mv	a4,s1
   1ca80:	940ff06f          	j	1bbc0 <_vfiprintf_r+0x350>
   1ca84:	01569023          	sh	s5,0(a3)
   1ca88:	008c0c13          	addi	s8,s8,8
   1ca8c:	ecdfe06f          	j	1b958 <_vfiprintf_r+0xe8>
   1ca90:	00078d93          	mv	s11,a5
   1ca94:	00078613          	mv	a2,a5
   1ca98:	b18ff06f          	j	1bdb0 <_vfiprintf_r+0x540>
   1ca9c:	02069693          	slli	a3,a3,0x20
   1caa0:	0206d693          	srli	a3,a3,0x20
   1caa4:	df9ff06f          	j	1c89c <_vfiprintf_r+0x102c>
   1caa8:	02069693          	slli	a3,a3,0x20
   1caac:	0206d693          	srli	a3,a3,0x20
   1cab0:	be8ff06f          	j	1be98 <_vfiprintf_r+0x628>
   1cab4:	07010613          	addi	a2,sp,112
   1cab8:	00090593          	mv	a1,s2
   1cabc:	00098513          	mv	a0,s3
   1cac0:	c99fe0ef          	jal	ra,1b758 <__sprint_r.part.0>
   1cac4:	fe9fe06f          	j	1baac <_vfiprintf_r+0x23c>
   1cac8:	00080d93          	mv	s11,a6
   1cacc:	00080d13          	mv	s10,a6
   1cad0:	00000813          	li	a6,0
   1cad4:	b5cff06f          	j	1be30 <_vfiprintf_r+0x5c0>
   1cad8:	00023eb7          	lui	t4,0x23
   1cadc:	a60e8e93          	addi	t4,t4,-1440 # 22a60 <blanks.1>
   1cae0:	a25ff06f          	j	1c504 <_vfiprintf_r+0xc94>
   1cae4:	00068c13          	mv	s8,a3
   1cae8:	03000793          	li	a5,48
   1caec:	b2cff06f          	j	1be18 <_vfiprintf_r+0x5a8>
   1caf0:	00023eb7          	lui	t4,0x23
   1caf4:	0016069b          	addiw	a3,a2,1
   1caf8:	a60e8e93          	addi	t4,t4,-1440 # 22a60 <blanks.1>
   1cafc:	af5ff06f          	j	1c5f0 <_vfiprintf_r+0xd80>
   1cb00:	fff00a93          	li	s5,-1
   1cb04:	fb9fe06f          	j	1babc <_vfiprintf_r+0x24c>
   1cb08:	00023eb7          	lui	t4,0x23
   1cb0c:	00050613          	mv	a2,a0
   1cb10:	a50e8e93          	addi	t4,t4,-1456 # 22a50 <zeroes.0>
   1cb14:	f14ff06f          	j	1c228 <_vfiprintf_r+0x9b8>
   1cb18:	0156a023          	sw	s5,0(a3)
   1cb1c:	008c0c13          	addi	s8,s8,8
   1cb20:	e39fe06f          	j	1b958 <_vfiprintf_r+0xe8>
   1cb24:	000c2783          	lw	a5,0(s8)
   1cb28:	008c0c13          	addi	s8,s8,8
   1cb2c:	00078813          	mv	a6,a5
   1cb30:	0007d463          	bgez	a5,1cb38 <_vfiprintf_r+0x12c8>
   1cb34:	fff00813          	li	a6,-1
   1cb38:	001cc783          	lbu	a5,1(s9)
   1cb3c:	00080d9b          	sext.w	s11,a6
   1cb40:	00068c93          	mv	s9,a3
   1cb44:	eb9fe06f          	j	1b9fc <_vfiprintf_r+0x18c>

000000000001cb48 <vfiprintf>:
   1cb48:	00050793          	mv	a5,a0
   1cb4c:	7581b503          	ld	a0,1880(gp) # 24160 <_impure_ptr>
   1cb50:	00060693          	mv	a3,a2
   1cb54:	00058613          	mv	a2,a1
   1cb58:	00078593          	mv	a1,a5
   1cb5c:	d15fe06f          	j	1b870 <_vfiprintf_r>

000000000001cb60 <__sbprintf>:
   1cb60:	01059783          	lh	a5,16(a1)
   1cb64:	0125d703          	lhu	a4,18(a1)
   1cb68:	0ac5a303          	lw	t1,172(a1)
   1cb6c:	ffd7f793          	andi	a5,a5,-3
   1cb70:	0107979b          	slliw	a5,a5,0x10
   1cb74:	0305b883          	ld	a7,48(a1)
   1cb78:	0405b803          	ld	a6,64(a1)
   1cb7c:	0107171b          	slliw	a4,a4,0x10
   1cb80:	0107d79b          	srliw	a5,a5,0x10
   1cb84:	b3010113          	addi	sp,sp,-1232
   1cb88:	00e7e7b3          	or	a5,a5,a4
   1cb8c:	4c813023          	sd	s0,1216(sp)
   1cb90:	40000713          	li	a4,1024
   1cb94:	00f12823          	sw	a5,16(sp)
   1cb98:	00058413          	mv	s0,a1
   1cb9c:	0b010793          	addi	a5,sp,176
   1cba0:	00010593          	mv	a1,sp
   1cba4:	4a913c23          	sd	s1,1208(sp)
   1cba8:	4b213823          	sd	s2,1200(sp)
   1cbac:	4c113423          	sd	ra,1224(sp)
   1cbb0:	00050913          	mv	s2,a0
   1cbb4:	0a612623          	sw	t1,172(sp)
   1cbb8:	03113823          	sd	a7,48(sp)
   1cbbc:	05013023          	sd	a6,64(sp)
   1cbc0:	00f13023          	sd	a5,0(sp)
   1cbc4:	00f13c23          	sd	a5,24(sp)
   1cbc8:	00e12623          	sw	a4,12(sp)
   1cbcc:	02e12023          	sw	a4,32(sp)
   1cbd0:	02012423          	sw	zero,40(sp)
   1cbd4:	c9dfe0ef          	jal	ra,1b870 <_vfiprintf_r>
   1cbd8:	00050493          	mv	s1,a0
   1cbdc:	02055c63          	bgez	a0,1cc14 <__sbprintf+0xb4>
   1cbe0:	01015783          	lhu	a5,16(sp)
   1cbe4:	0407f793          	andi	a5,a5,64
   1cbe8:	00078863          	beqz	a5,1cbf8 <__sbprintf+0x98>
   1cbec:	01045783          	lhu	a5,16(s0)
   1cbf0:	0407e793          	ori	a5,a5,64
   1cbf4:	00f41823          	sh	a5,16(s0)
   1cbf8:	4c813083          	ld	ra,1224(sp)
   1cbfc:	4c013403          	ld	s0,1216(sp)
   1cc00:	4b013903          	ld	s2,1200(sp)
   1cc04:	00048513          	mv	a0,s1
   1cc08:	4b813483          	ld	s1,1208(sp)
   1cc0c:	4d010113          	addi	sp,sp,1232
   1cc10:	00008067          	ret
   1cc14:	00010593          	mv	a1,sp
   1cc18:	00090513          	mv	a0,s2
   1cc1c:	f74f60ef          	jal	ra,13390 <_fflush_r>
   1cc20:	fc0500e3          	beqz	a0,1cbe0 <__sbprintf+0x80>
   1cc24:	fff00493          	li	s1,-1
   1cc28:	fb9ff06f          	j	1cbe0 <__sbprintf+0x80>

000000000001cc2c <_wctomb_r>:
   1cc2c:	e401b783          	ld	a5,-448(gp) # 23848 <__global_locale+0xe0>
   1cc30:	00078067          	jr	a5

000000000001cc34 <__ascii_wctomb>:
   1cc34:	0006079b          	sext.w	a5,a2
   1cc38:	02058463          	beqz	a1,1cc60 <__ascii_wctomb+0x2c>
   1cc3c:	0ff00713          	li	a4,255
   1cc40:	00f76863          	bltu	a4,a5,1cc50 <__ascii_wctomb+0x1c>
   1cc44:	00c58023          	sb	a2,0(a1)
   1cc48:	00100513          	li	a0,1
   1cc4c:	00008067          	ret
   1cc50:	08a00793          	li	a5,138
   1cc54:	00f52023          	sw	a5,0(a0)
   1cc58:	fff00513          	li	a0,-1
   1cc5c:	00008067          	ret
   1cc60:	00000513          	li	a0,0
   1cc64:	00008067          	ret

000000000001cc68 <_write_r>:
   1cc68:	fe010113          	addi	sp,sp,-32
   1cc6c:	00058713          	mv	a4,a1
   1cc70:	00813823          	sd	s0,16(sp)
   1cc74:	00913423          	sd	s1,8(sp)
   1cc78:	00060593          	mv	a1,a2
   1cc7c:	00050413          	mv	s0,a0
   1cc80:	00068613          	mv	a2,a3
   1cc84:	00070513          	mv	a0,a4
   1cc88:	00113c23          	sd	ra,24(sp)
   1cc8c:	7801a823          	sw	zero,1936(gp) # 24198 <errno>
   1cc90:	41c030ef          	jal	ra,200ac <_write>
   1cc94:	fff00793          	li	a5,-1
   1cc98:	00f50c63          	beq	a0,a5,1ccb0 <_write_r+0x48>
   1cc9c:	01813083          	ld	ra,24(sp)
   1cca0:	01013403          	ld	s0,16(sp)
   1cca4:	00813483          	ld	s1,8(sp)
   1cca8:	02010113          	addi	sp,sp,32
   1ccac:	00008067          	ret
   1ccb0:	7901a783          	lw	a5,1936(gp) # 24198 <errno>
   1ccb4:	fe0784e3          	beqz	a5,1cc9c <_write_r+0x34>
   1ccb8:	01813083          	ld	ra,24(sp)
   1ccbc:	00f42023          	sw	a5,0(s0)
   1ccc0:	01013403          	ld	s0,16(sp)
   1ccc4:	00813483          	ld	s1,8(sp)
   1ccc8:	02010113          	addi	sp,sp,32
   1cccc:	00008067          	ret

000000000001ccd0 <__assert_func>:
   1ccd0:	7581b703          	ld	a4,1880(gp) # 24160 <_impure_ptr>
   1ccd4:	ff010113          	addi	sp,sp,-16
   1ccd8:	00068793          	mv	a5,a3
   1ccdc:	00060813          	mv	a6,a2
   1cce0:	00113423          	sd	ra,8(sp)
   1cce4:	01873883          	ld	a7,24(a4)
   1cce8:	00050693          	mv	a3,a0
   1ccec:	00058713          	mv	a4,a1
   1ccf0:	00078613          	mv	a2,a5
   1ccf4:	02080063          	beqz	a6,1cd14 <__assert_func+0x44>
   1ccf8:	000237b7          	lui	a5,0x23
   1ccfc:	a7078793          	addi	a5,a5,-1424 # 22a70 <blanks.1+0x10>
   1cd00:	000235b7          	lui	a1,0x23
   1cd04:	a8058593          	addi	a1,a1,-1408 # 22a80 <blanks.1+0x20>
   1cd08:	00088513          	mv	a0,a7
   1cd0c:	3b8000ef          	jal	ra,1d0c4 <fiprintf>
   1cd10:	315020ef          	jal	ra,1f824 <abort>
   1cd14:	00022837          	lui	a6,0x22
   1cd18:	fa080793          	addi	a5,a6,-96 # 21fa0 <__clzdi2+0x8c>
   1cd1c:	fa080813          	addi	a6,a6,-96
   1cd20:	fe1ff06f          	j	1cd00 <__assert_func+0x30>

000000000001cd24 <__assert>:
   1cd24:	ff010113          	addi	sp,sp,-16
   1cd28:	00060693          	mv	a3,a2
   1cd2c:	00000613          	li	a2,0
   1cd30:	00113423          	sd	ra,8(sp)
   1cd34:	f9dff0ef          	jal	ra,1ccd0 <__assert_func>

000000000001cd38 <atexit>:
   1cd38:	00050593          	mv	a1,a0
   1cd3c:	00000693          	li	a3,0
   1cd40:	00000613          	li	a2,0
   1cd44:	00000513          	li	a0,0
   1cd48:	2f50206f          	j	1f83c <__register_exitproc>

000000000001cd4c <_calloc_r>:
   1cd4c:	fd010113          	addi	sp,sp,-48
   1cd50:	02813023          	sd	s0,32(sp)
   1cd54:	02113423          	sd	ra,40(sp)
   1cd58:	00913c23          	sd	s1,24(sp)
   1cd5c:	01213823          	sd	s2,16(sp)
   1cd60:	01313423          	sd	s3,8(sp)
   1cd64:	4205d693          	srai	a3,a1,0x20
   1cd68:	00058793          	mv	a5,a1
   1cd6c:	00050413          	mv	s0,a0
   1cd70:	02065713          	srli	a4,a2,0x20
   1cd74:	0c069c63          	bnez	a3,1ce4c <_calloc_r+0x100>
   1cd78:	16071263          	bnez	a4,1cedc <_calloc_r+0x190>
   1cd7c:	02061593          	slli	a1,a2,0x20
   1cd80:	02079513          	slli	a0,a5,0x20
   1cd84:	0205d593          	srli	a1,a1,0x20
   1cd88:	02055513          	srli	a0,a0,0x20
   1cd8c:	164050ef          	jal	ra,21ef0 <__muldi3>
   1cd90:	00050593          	mv	a1,a0
   1cd94:	00040513          	mv	a0,s0
   1cd98:	8bcfa0ef          	jal	ra,16e54 <_malloc_r>
   1cd9c:	00050413          	mv	s0,a0
   1cda0:	10050c63          	beqz	a0,1ceb8 <_calloc_r+0x16c>
   1cda4:	ff853603          	ld	a2,-8(a0)
   1cda8:	04800713          	li	a4,72
   1cdac:	ffc67613          	andi	a2,a2,-4
   1cdb0:	ff860613          	addi	a2,a2,-8
   1cdb4:	04c76e63          	bltu	a4,a2,1ce10 <_calloc_r+0xc4>
   1cdb8:	02700693          	li	a3,39
   1cdbc:	00050793          	mv	a5,a0
   1cdc0:	02c6f263          	bgeu	a3,a2,1cde4 <_calloc_r+0x98>
   1cdc4:	00053023          	sd	zero,0(a0)
   1cdc8:	00053423          	sd	zero,8(a0)
   1cdcc:	03700793          	li	a5,55
   1cdd0:	06c7f463          	bgeu	a5,a2,1ce38 <_calloc_r+0xec>
   1cdd4:	00053823          	sd	zero,16(a0)
   1cdd8:	00053c23          	sd	zero,24(a0)
   1cddc:	02050793          	addi	a5,a0,32
   1cde0:	10e60463          	beq	a2,a4,1cee8 <_calloc_r+0x19c>
   1cde4:	0007b023          	sd	zero,0(a5)
   1cde8:	0007b423          	sd	zero,8(a5)
   1cdec:	0007b823          	sd	zero,16(a5)
   1cdf0:	02813083          	ld	ra,40(sp)
   1cdf4:	00040513          	mv	a0,s0
   1cdf8:	02013403          	ld	s0,32(sp)
   1cdfc:	01813483          	ld	s1,24(sp)
   1ce00:	01013903          	ld	s2,16(sp)
   1ce04:	00813983          	ld	s3,8(sp)
   1ce08:	03010113          	addi	sp,sp,48
   1ce0c:	00008067          	ret
   1ce10:	00000593          	li	a1,0
   1ce14:	f9cf30ef          	jal	ra,105b0 <memset>
   1ce18:	02813083          	ld	ra,40(sp)
   1ce1c:	00040513          	mv	a0,s0
   1ce20:	02013403          	ld	s0,32(sp)
   1ce24:	01813483          	ld	s1,24(sp)
   1ce28:	01013903          	ld	s2,16(sp)
   1ce2c:	00813983          	ld	s3,8(sp)
   1ce30:	03010113          	addi	sp,sp,48
   1ce34:	00008067          	ret
   1ce38:	01050793          	addi	a5,a0,16
   1ce3c:	0007b023          	sd	zero,0(a5)
   1ce40:	0007b423          	sd	zero,8(a5)
   1ce44:	0007b823          	sd	zero,16(a5)
   1ce48:	fa9ff06f          	j	1cdf0 <_calloc_r+0xa4>
   1ce4c:	0a071663          	bnez	a4,1cef8 <_calloc_r+0x1ac>
   1ce50:	0205d593          	srli	a1,a1,0x20
   1ce54:	00058913          	mv	s2,a1
   1ce58:	00060993          	mv	s3,a2
   1ce5c:	02079513          	slli	a0,a5,0x20
   1ce60:	02061593          	slli	a1,a2,0x20
   1ce64:	0205d593          	srli	a1,a1,0x20
   1ce68:	02055513          	srli	a0,a0,0x20
   1ce6c:	084050ef          	jal	ra,21ef0 <__muldi3>
   1ce70:	00050493          	mv	s1,a0
   1ce74:	02091593          	slli	a1,s2,0x20
   1ce78:	02099513          	slli	a0,s3,0x20
   1ce7c:	0205d593          	srli	a1,a1,0x20
   1ce80:	02055513          	srli	a0,a0,0x20
   1ce84:	06c050ef          	jal	ra,21ef0 <__muldi3>
   1ce88:	0204d793          	srli	a5,s1,0x20
   1ce8c:	00f505b3          	add	a1,a0,a5
   1ce90:	4205d793          	srai	a5,a1,0x20
   1ce94:	06079263          	bnez	a5,1cef8 <_calloc_r+0x1ac>
   1ce98:	02049493          	slli	s1,s1,0x20
   1ce9c:	02059593          	slli	a1,a1,0x20
   1cea0:	0204d493          	srli	s1,s1,0x20
   1cea4:	00040513          	mv	a0,s0
   1cea8:	0095e5b3          	or	a1,a1,s1
   1ceac:	fa9f90ef          	jal	ra,16e54 <_malloc_r>
   1ceb0:	00050413          	mv	s0,a0
   1ceb4:	ee0518e3          	bnez	a0,1cda4 <_calloc_r+0x58>
   1ceb8:	00000413          	li	s0,0
   1cebc:	02813083          	ld	ra,40(sp)
   1cec0:	00040513          	mv	a0,s0
   1cec4:	02013403          	ld	s0,32(sp)
   1cec8:	01813483          	ld	s1,24(sp)
   1cecc:	01013903          	ld	s2,16(sp)
   1ced0:	00813983          	ld	s3,8(sp)
   1ced4:	03010113          	addi	sp,sp,48
   1ced8:	00008067          	ret
   1cedc:	00070913          	mv	s2,a4
   1cee0:	00058993          	mv	s3,a1
   1cee4:	f79ff06f          	j	1ce5c <_calloc_r+0x110>
   1cee8:	02053023          	sd	zero,32(a0)
   1ceec:	03050793          	addi	a5,a0,48
   1cef0:	02053423          	sd	zero,40(a0)
   1cef4:	ef1ff06f          	j	1cde4 <_calloc_r+0x98>
   1cef8:	070000ef          	jal	ra,1cf68 <__errno>
   1cefc:	00c00793          	li	a5,12
   1cf00:	00f52023          	sw	a5,0(a0)
   1cf04:	00000413          	li	s0,0
   1cf08:	fb5ff06f          	j	1cebc <_calloc_r+0x170>

000000000001cf0c <_close_r>:
   1cf0c:	fe010113          	addi	sp,sp,-32
   1cf10:	00813823          	sd	s0,16(sp)
   1cf14:	00913423          	sd	s1,8(sp)
   1cf18:	00050413          	mv	s0,a0
   1cf1c:	00058513          	mv	a0,a1
   1cf20:	00113c23          	sd	ra,24(sp)
   1cf24:	7801a823          	sw	zero,1936(gp) # 24198 <errno>
   1cf28:	741020ef          	jal	ra,1fe68 <_close>
   1cf2c:	fff00793          	li	a5,-1
   1cf30:	00f50c63          	beq	a0,a5,1cf48 <_close_r+0x3c>
   1cf34:	01813083          	ld	ra,24(sp)
   1cf38:	01013403          	ld	s0,16(sp)
   1cf3c:	00813483          	ld	s1,8(sp)
   1cf40:	02010113          	addi	sp,sp,32
   1cf44:	00008067          	ret
   1cf48:	7901a783          	lw	a5,1936(gp) # 24198 <errno>
   1cf4c:	fe0784e3          	beqz	a5,1cf34 <_close_r+0x28>
   1cf50:	01813083          	ld	ra,24(sp)
   1cf54:	00f42023          	sw	a5,0(s0)
   1cf58:	01013403          	ld	s0,16(sp)
   1cf5c:	00813483          	ld	s1,8(sp)
   1cf60:	02010113          	addi	sp,sp,32
   1cf64:	00008067          	ret

000000000001cf68 <__errno>:
   1cf68:	7581b503          	ld	a0,1880(gp) # 24160 <_impure_ptr>
   1cf6c:	00008067          	ret

000000000001cf70 <_fclose_r>:
   1cf70:	fe010113          	addi	sp,sp,-32
   1cf74:	00113c23          	sd	ra,24(sp)
   1cf78:	00813823          	sd	s0,16(sp)
   1cf7c:	00913423          	sd	s1,8(sp)
   1cf80:	01213023          	sd	s2,0(sp)
   1cf84:	02058063          	beqz	a1,1cfa4 <_fclose_r+0x34>
   1cf88:	00058413          	mv	s0,a1
   1cf8c:	00050493          	mv	s1,a0
   1cf90:	00050663          	beqz	a0,1cf9c <_fclose_r+0x2c>
   1cf94:	05052783          	lw	a5,80(a0)
   1cf98:	0a078c63          	beqz	a5,1d050 <_fclose_r+0xe0>
   1cf9c:	01041783          	lh	a5,16(s0)
   1cfa0:	02079263          	bnez	a5,1cfc4 <_fclose_r+0x54>
   1cfa4:	01813083          	ld	ra,24(sp)
   1cfa8:	01013403          	ld	s0,16(sp)
   1cfac:	00000913          	li	s2,0
   1cfb0:	00813483          	ld	s1,8(sp)
   1cfb4:	00090513          	mv	a0,s2
   1cfb8:	00013903          	ld	s2,0(sp)
   1cfbc:	02010113          	addi	sp,sp,32
   1cfc0:	00008067          	ret
   1cfc4:	00040593          	mv	a1,s0
   1cfc8:	00048513          	mv	a0,s1
   1cfcc:	978f60ef          	jal	ra,13144 <__sflush_r>
   1cfd0:	05043783          	ld	a5,80(s0)
   1cfd4:	00050913          	mv	s2,a0
   1cfd8:	00078a63          	beqz	a5,1cfec <_fclose_r+0x7c>
   1cfdc:	03043583          	ld	a1,48(s0)
   1cfe0:	00048513          	mv	a0,s1
   1cfe4:	000780e7          	jalr	a5
   1cfe8:	06054c63          	bltz	a0,1d060 <_fclose_r+0xf0>
   1cfec:	01045783          	lhu	a5,16(s0)
   1cff0:	0807f793          	andi	a5,a5,128
   1cff4:	06079e63          	bnez	a5,1d070 <_fclose_r+0x100>
   1cff8:	05843583          	ld	a1,88(s0)
   1cffc:	00058c63          	beqz	a1,1d014 <_fclose_r+0xa4>
   1d000:	07440793          	addi	a5,s0,116
   1d004:	00f58663          	beq	a1,a5,1d010 <_fclose_r+0xa0>
   1d008:	00048513          	mv	a0,s1
   1d00c:	989f60ef          	jal	ra,13994 <_free_r>
   1d010:	04043c23          	sd	zero,88(s0)
   1d014:	07843583          	ld	a1,120(s0)
   1d018:	00058863          	beqz	a1,1d028 <_fclose_r+0xb8>
   1d01c:	00048513          	mv	a0,s1
   1d020:	975f60ef          	jal	ra,13994 <_free_r>
   1d024:	06043c23          	sd	zero,120(s0)
   1d028:	fa4f60ef          	jal	ra,137cc <__sfp_lock_acquire>
   1d02c:	00041823          	sh	zero,16(s0)
   1d030:	fa0f60ef          	jal	ra,137d0 <__sfp_lock_release>
   1d034:	01813083          	ld	ra,24(sp)
   1d038:	01013403          	ld	s0,16(sp)
   1d03c:	00813483          	ld	s1,8(sp)
   1d040:	00090513          	mv	a0,s2
   1d044:	00013903          	ld	s2,0(sp)
   1d048:	02010113          	addi	sp,sp,32
   1d04c:	00008067          	ret
   1d050:	f6cf60ef          	jal	ra,137bc <__sinit>
   1d054:	01041783          	lh	a5,16(s0)
   1d058:	f40786e3          	beqz	a5,1cfa4 <_fclose_r+0x34>
   1d05c:	f69ff06f          	j	1cfc4 <_fclose_r+0x54>
   1d060:	01045783          	lhu	a5,16(s0)
   1d064:	fff00913          	li	s2,-1
   1d068:	0807f793          	andi	a5,a5,128
   1d06c:	f80786e3          	beqz	a5,1cff8 <_fclose_r+0x88>
   1d070:	01843583          	ld	a1,24(s0)
   1d074:	00048513          	mv	a0,s1
   1d078:	91df60ef          	jal	ra,13994 <_free_r>
   1d07c:	f7dff06f          	j	1cff8 <_fclose_r+0x88>

000000000001d080 <fclose>:
   1d080:	00050593          	mv	a1,a0
   1d084:	7581b503          	ld	a0,1880(gp) # 24160 <_impure_ptr>
   1d088:	ee9ff06f          	j	1cf70 <_fclose_r>

000000000001d08c <_fiprintf_r>:
   1d08c:	fb010113          	addi	sp,sp,-80
   1d090:	02810313          	addi	t1,sp,40
   1d094:	02d13423          	sd	a3,40(sp)
   1d098:	00030693          	mv	a3,t1
   1d09c:	00113c23          	sd	ra,24(sp)
   1d0a0:	02e13823          	sd	a4,48(sp)
   1d0a4:	02f13c23          	sd	a5,56(sp)
   1d0a8:	05013023          	sd	a6,64(sp)
   1d0ac:	05113423          	sd	a7,72(sp)
   1d0b0:	00613423          	sd	t1,8(sp)
   1d0b4:	fbcfe0ef          	jal	ra,1b870 <_vfiprintf_r>
   1d0b8:	01813083          	ld	ra,24(sp)
   1d0bc:	05010113          	addi	sp,sp,80
   1d0c0:	00008067          	ret

000000000001d0c4 <fiprintf>:
   1d0c4:	00050e13          	mv	t3,a0
   1d0c8:	fb010113          	addi	sp,sp,-80
   1d0cc:	7581b503          	ld	a0,1880(gp) # 24160 <_impure_ptr>
   1d0d0:	02010313          	addi	t1,sp,32
   1d0d4:	02c13023          	sd	a2,32(sp)
   1d0d8:	02d13423          	sd	a3,40(sp)
   1d0dc:	00058613          	mv	a2,a1
   1d0e0:	00030693          	mv	a3,t1
   1d0e4:	000e0593          	mv	a1,t3
   1d0e8:	00113c23          	sd	ra,24(sp)
   1d0ec:	02e13823          	sd	a4,48(sp)
   1d0f0:	02f13c23          	sd	a5,56(sp)
   1d0f4:	05013023          	sd	a6,64(sp)
   1d0f8:	05113423          	sd	a7,72(sp)
   1d0fc:	00613423          	sd	t1,8(sp)
   1d100:	f70fe0ef          	jal	ra,1b870 <_vfiprintf_r>
   1d104:	01813083          	ld	ra,24(sp)
   1d108:	05010113          	addi	sp,sp,80
   1d10c:	00008067          	ret

000000000001d110 <__fputwc>:
   1d110:	fd010113          	addi	sp,sp,-48
   1d114:	02813023          	sd	s0,32(sp)
   1d118:	00913c23          	sd	s1,24(sp)
   1d11c:	01213823          	sd	s2,16(sp)
   1d120:	02113423          	sd	ra,40(sp)
   1d124:	00050913          	mv	s2,a0
   1d128:	00058493          	mv	s1,a1
   1d12c:	00060413          	mv	s0,a2
   1d130:	a39f90ef          	jal	ra,16b68 <__locale_mb_cur_max>
   1d134:	00100793          	li	a5,1
   1d138:	00f51c63          	bne	a0,a5,1d150 <__fputwc+0x40>
   1d13c:	fff4879b          	addiw	a5,s1,-1
   1d140:	0fe00713          	li	a4,254
   1d144:	00f76663          	bltu	a4,a5,1d150 <__fputwc+0x40>
   1d148:	00910423          	sb	s1,8(sp)
   1d14c:	0240006f          	j	1d170 <__fputwc+0x60>
   1d150:	0a440693          	addi	a3,s0,164
   1d154:	00048613          	mv	a2,s1
   1d158:	00810593          	addi	a1,sp,8
   1d15c:	00090513          	mv	a0,s2
   1d160:	5c4020ef          	jal	ra,1f724 <_wcrtomb_r>
   1d164:	fff00793          	li	a5,-1
   1d168:	08f50463          	beq	a0,a5,1d1f0 <__fputwc+0xe0>
   1d16c:	02050c63          	beqz	a0,1d1a4 <__fputwc+0x94>
   1d170:	00c42783          	lw	a5,12(s0)
   1d174:	00814583          	lbu	a1,8(sp)
   1d178:	fff7871b          	addiw	a4,a5,-1
   1d17c:	00e42623          	sw	a4,12(s0)
   1d180:	00075a63          	bgez	a4,1d194 <__fputwc+0x84>
   1d184:	02842783          	lw	a5,40(s0)
   1d188:	02f74c63          	blt	a4,a5,1d1c0 <__fputwc+0xb0>
   1d18c:	00a00793          	li	a5,10
   1d190:	02f58863          	beq	a1,a5,1d1c0 <__fputwc+0xb0>
   1d194:	00043783          	ld	a5,0(s0)
   1d198:	00178713          	addi	a4,a5,1
   1d19c:	00e43023          	sd	a4,0(s0)
   1d1a0:	00b78023          	sb	a1,0(a5)
   1d1a4:	02813083          	ld	ra,40(sp)
   1d1a8:	02013403          	ld	s0,32(sp)
   1d1ac:	01013903          	ld	s2,16(sp)
   1d1b0:	0004851b          	sext.w	a0,s1
   1d1b4:	01813483          	ld	s1,24(sp)
   1d1b8:	03010113          	addi	sp,sp,48
   1d1bc:	00008067          	ret
   1d1c0:	00040613          	mv	a2,s0
   1d1c4:	00090513          	mv	a0,s2
   1d1c8:	3d4020ef          	jal	ra,1f59c <__swbuf_r>
   1d1cc:	fff00793          	li	a5,-1
   1d1d0:	fcf51ae3          	bne	a0,a5,1d1a4 <__fputwc+0x94>
   1d1d4:	fff00513          	li	a0,-1
   1d1d8:	02813083          	ld	ra,40(sp)
   1d1dc:	02013403          	ld	s0,32(sp)
   1d1e0:	01813483          	ld	s1,24(sp)
   1d1e4:	01013903          	ld	s2,16(sp)
   1d1e8:	03010113          	addi	sp,sp,48
   1d1ec:	00008067          	ret
   1d1f0:	01045783          	lhu	a5,16(s0)
   1d1f4:	fff00513          	li	a0,-1
   1d1f8:	0407e793          	ori	a5,a5,64
   1d1fc:	00f41823          	sh	a5,16(s0)
   1d200:	fd9ff06f          	j	1d1d8 <__fputwc+0xc8>

000000000001d204 <_fputwc_r>:
   1d204:	01061783          	lh	a5,16(a2)
   1d208:	03279713          	slli	a4,a5,0x32
   1d20c:	02074063          	bltz	a4,1d22c <_fputwc_r+0x28>
   1d210:	0ac62703          	lw	a4,172(a2)
   1d214:	000026b7          	lui	a3,0x2
   1d218:	00d7e7b3          	or	a5,a5,a3
   1d21c:	000026b7          	lui	a3,0x2
   1d220:	00d76733          	or	a4,a4,a3
   1d224:	00f61823          	sh	a5,16(a2)
   1d228:	0ae62623          	sw	a4,172(a2)
   1d22c:	ee5ff06f          	j	1d110 <__fputwc>

000000000001d230 <fputwc>:
   1d230:	fe010113          	addi	sp,sp,-32
   1d234:	00813823          	sd	s0,16(sp)
   1d238:	7581b403          	ld	s0,1880(gp) # 24160 <_impure_ptr>
   1d23c:	00113c23          	sd	ra,24(sp)
   1d240:	00058613          	mv	a2,a1
   1d244:	00050593          	mv	a1,a0
   1d248:	00040663          	beqz	s0,1d254 <fputwc+0x24>
   1d24c:	05042783          	lw	a5,80(s0)
   1d250:	04078063          	beqz	a5,1d290 <fputwc+0x60>
   1d254:	01061783          	lh	a5,16(a2)
   1d258:	03279713          	slli	a4,a5,0x32
   1d25c:	02074063          	bltz	a4,1d27c <fputwc+0x4c>
   1d260:	0ac62703          	lw	a4,172(a2)
   1d264:	000026b7          	lui	a3,0x2
   1d268:	00d7e7b3          	or	a5,a5,a3
   1d26c:	000026b7          	lui	a3,0x2
   1d270:	00d76733          	or	a4,a4,a3
   1d274:	00f61823          	sh	a5,16(a2)
   1d278:	0ae62623          	sw	a4,172(a2)
   1d27c:	00040513          	mv	a0,s0
   1d280:	01013403          	ld	s0,16(sp)
   1d284:	01813083          	ld	ra,24(sp)
   1d288:	02010113          	addi	sp,sp,32
   1d28c:	e85ff06f          	j	1d110 <__fputwc>
   1d290:	00a13023          	sd	a0,0(sp)
   1d294:	00040513          	mv	a0,s0
   1d298:	00c13423          	sd	a2,8(sp)
   1d29c:	d20f60ef          	jal	ra,137bc <__sinit>
   1d2a0:	00813603          	ld	a2,8(sp)
   1d2a4:	00013583          	ld	a1,0(sp)
   1d2a8:	fadff06f          	j	1d254 <fputwc+0x24>

000000000001d2ac <_fstat_r>:
   1d2ac:	fe010113          	addi	sp,sp,-32
   1d2b0:	00058713          	mv	a4,a1
   1d2b4:	00813823          	sd	s0,16(sp)
   1d2b8:	00913423          	sd	s1,8(sp)
   1d2bc:	00050413          	mv	s0,a0
   1d2c0:	00060593          	mv	a1,a2
   1d2c4:	00070513          	mv	a0,a4
   1d2c8:	00113c23          	sd	ra,24(sp)
   1d2cc:	7801a823          	sw	zero,1936(gp) # 24198 <errno>
   1d2d0:	40d020ef          	jal	ra,1fedc <_fstat>
   1d2d4:	fff00793          	li	a5,-1
   1d2d8:	00f50c63          	beq	a0,a5,1d2f0 <_fstat_r+0x44>
   1d2dc:	01813083          	ld	ra,24(sp)
   1d2e0:	01013403          	ld	s0,16(sp)
   1d2e4:	00813483          	ld	s1,8(sp)
   1d2e8:	02010113          	addi	sp,sp,32
   1d2ec:	00008067          	ret
   1d2f0:	7901a783          	lw	a5,1936(gp) # 24198 <errno>
   1d2f4:	fe0784e3          	beqz	a5,1d2dc <_fstat_r+0x30>
   1d2f8:	01813083          	ld	ra,24(sp)
   1d2fc:	00f42023          	sw	a5,0(s0)
   1d300:	01013403          	ld	s0,16(sp)
   1d304:	00813483          	ld	s1,8(sp)
   1d308:	02010113          	addi	sp,sp,32
   1d30c:	00008067          	ret

000000000001d310 <__sfvwrite_r>:
   1d310:	01063783          	ld	a5,16(a2)
   1d314:	28078063          	beqz	a5,1d594 <__sfvwrite_r+0x284>
   1d318:	01059703          	lh	a4,16(a1)
   1d31c:	fa010113          	addi	sp,sp,-96
   1d320:	04813823          	sd	s0,80(sp)
   1d324:	03413823          	sd	s4,48(sp)
   1d328:	03613023          	sd	s6,32(sp)
   1d32c:	04113c23          	sd	ra,88(sp)
   1d330:	04913423          	sd	s1,72(sp)
   1d334:	05213023          	sd	s2,64(sp)
   1d338:	03313c23          	sd	s3,56(sp)
   1d33c:	03513423          	sd	s5,40(sp)
   1d340:	01713c23          	sd	s7,24(sp)
   1d344:	01813823          	sd	s8,16(sp)
   1d348:	01913423          	sd	s9,8(sp)
   1d34c:	00877793          	andi	a5,a4,8
   1d350:	00060b13          	mv	s6,a2
   1d354:	00050a13          	mv	s4,a0
   1d358:	00058413          	mv	s0,a1
   1d35c:	08078863          	beqz	a5,1d3ec <__sfvwrite_r+0xdc>
   1d360:	0185b783          	ld	a5,24(a1)
   1d364:	08078463          	beqz	a5,1d3ec <__sfvwrite_r+0xdc>
   1d368:	00277793          	andi	a5,a4,2
   1d36c:	000b3483          	ld	s1,0(s6)
   1d370:	08078e63          	beqz	a5,1d40c <__sfvwrite_r+0xfc>
   1d374:	04043783          	ld	a5,64(s0)
   1d378:	03043583          	ld	a1,48(s0)
   1d37c:	80000ab7          	lui	s5,0x80000
   1d380:	00000993          	li	s3,0
   1d384:	00000913          	li	s2,0
   1d388:	c00aca93          	xori	s5,s5,-1024
   1d38c:	00098613          	mv	a2,s3
   1d390:	000a0513          	mv	a0,s4
   1d394:	04090463          	beqz	s2,1d3dc <__sfvwrite_r+0xcc>
   1d398:	00090693          	mv	a3,s2
   1d39c:	012af463          	bgeu	s5,s2,1d3a4 <__sfvwrite_r+0x94>
   1d3a0:	000a8693          	mv	a3,s5
   1d3a4:	0006869b          	sext.w	a3,a3
   1d3a8:	000780e7          	jalr	a5
   1d3ac:	1ca05a63          	blez	a0,1d580 <__sfvwrite_r+0x270>
   1d3b0:	010b3783          	ld	a5,16(s6)
   1d3b4:	00a989b3          	add	s3,s3,a0
   1d3b8:	40a90933          	sub	s2,s2,a0
   1d3bc:	40a787b3          	sub	a5,a5,a0
   1d3c0:	00fb3823          	sd	a5,16(s6)
   1d3c4:	16078a63          	beqz	a5,1d538 <__sfvwrite_r+0x228>
   1d3c8:	04043783          	ld	a5,64(s0)
   1d3cc:	03043583          	ld	a1,48(s0)
   1d3d0:	00098613          	mv	a2,s3
   1d3d4:	000a0513          	mv	a0,s4
   1d3d8:	fc0910e3          	bnez	s2,1d398 <__sfvwrite_r+0x88>
   1d3dc:	0004b983          	ld	s3,0(s1)
   1d3e0:	0084b903          	ld	s2,8(s1)
   1d3e4:	01048493          	addi	s1,s1,16
   1d3e8:	fa5ff06f          	j	1d38c <__sfvwrite_r+0x7c>
   1d3ec:	00040593          	mv	a1,s0
   1d3f0:	000a0513          	mv	a0,s4
   1d3f4:	ae9f50ef          	jal	ra,12edc <__swsetup_r>
   1d3f8:	18051a63          	bnez	a0,1d58c <__sfvwrite_r+0x27c>
   1d3fc:	01041703          	lh	a4,16(s0)
   1d400:	000b3483          	ld	s1,0(s6)
   1d404:	00277793          	andi	a5,a4,2
   1d408:	f60796e3          	bnez	a5,1d374 <__sfvwrite_r+0x64>
   1d40c:	00177793          	andi	a5,a4,1
   1d410:	08079e63          	bnez	a5,1d4ac <__sfvwrite_r+0x19c>
   1d414:	00c42b83          	lw	s7,12(s0)
   1d418:	00043783          	ld	a5,0(s0)
   1d41c:	80000ab7          	lui	s5,0x80000
   1d420:	00000c13          	li	s8,0
   1d424:	00000913          	li	s2,0
   1d428:	fffaca93          	not	s5,s5
   1d42c:	00078513          	mv	a0,a5
   1d430:	06090663          	beqz	s2,1d49c <__sfvwrite_r+0x18c>
   1d434:	20077693          	andi	a3,a4,512
   1d438:	1c068663          	beqz	a3,1d604 <__sfvwrite_r+0x2f4>
   1d43c:	27797263          	bgeu	s2,s7,1d6a0 <__sfvwrite_r+0x390>
   1d440:	00090c93          	mv	s9,s2
   1d444:	00090b93          	mv	s7,s2
   1d448:	000b8613          	mv	a2,s7
   1d44c:	000c0593          	mv	a1,s8
   1d450:	5d4000ef          	jal	ra,1da24 <memmove>
   1d454:	00c42703          	lw	a4,12(s0)
   1d458:	00043783          	ld	a5,0(s0)
   1d45c:	00090993          	mv	s3,s2
   1d460:	4197073b          	subw	a4,a4,s9
   1d464:	017787b3          	add	a5,a5,s7
   1d468:	00e42623          	sw	a4,12(s0)
   1d46c:	00f43023          	sd	a5,0(s0)
   1d470:	00000913          	li	s2,0
   1d474:	010b3783          	ld	a5,16(s6)
   1d478:	013c0c33          	add	s8,s8,s3
   1d47c:	413787b3          	sub	a5,a5,s3
   1d480:	00fb3823          	sd	a5,16(s6)
   1d484:	0a078a63          	beqz	a5,1d538 <__sfvwrite_r+0x228>
   1d488:	00043783          	ld	a5,0(s0)
   1d48c:	01041703          	lh	a4,16(s0)
   1d490:	00c42b83          	lw	s7,12(s0)
   1d494:	00078513          	mv	a0,a5
   1d498:	f8091ee3          	bnez	s2,1d434 <__sfvwrite_r+0x124>
   1d49c:	0004bc03          	ld	s8,0(s1)
   1d4a0:	0084b903          	ld	s2,8(s1)
   1d4a4:	01048493          	addi	s1,s1,16
   1d4a8:	f85ff06f          	j	1d42c <__sfvwrite_r+0x11c>
   1d4ac:	00000993          	li	s3,0
   1d4b0:	00000513          	li	a0,0
   1d4b4:	00000c93          	li	s9,0
   1d4b8:	00000c13          	li	s8,0
   1d4bc:	0e0c0063          	beqz	s8,1d59c <__sfvwrite_r+0x28c>
   1d4c0:	0e050863          	beqz	a0,1d5b0 <__sfvwrite_r+0x2a0>
   1d4c4:	00098b93          	mv	s7,s3
   1d4c8:	013c7463          	bgeu	s8,s3,1d4d0 <__sfvwrite_r+0x1c0>
   1d4cc:	000c0b93          	mv	s7,s8
   1d4d0:	00043503          	ld	a0,0(s0)
   1d4d4:	01843703          	ld	a4,24(s0)
   1d4d8:	00c42783          	lw	a5,12(s0)
   1d4dc:	02042683          	lw	a3,32(s0)
   1d4e0:	000b8913          	mv	s2,s7
   1d4e4:	00a77663          	bgeu	a4,a0,1d4f0 <__sfvwrite_r+0x1e0>
   1d4e8:	00d78abb          	addw	s5,a5,a3
   1d4ec:	0f7ac263          	blt	s5,s7,1d5d0 <__sfvwrite_r+0x2c0>
   1d4f0:	24dbc663          	blt	s7,a3,1d73c <__sfvwrite_r+0x42c>
   1d4f4:	04043783          	ld	a5,64(s0)
   1d4f8:	03043583          	ld	a1,48(s0)
   1d4fc:	000c8613          	mv	a2,s9
   1d500:	000a0513          	mv	a0,s4
   1d504:	000780e7          	jalr	a5
   1d508:	00050913          	mv	s2,a0
   1d50c:	06a05a63          	blez	a0,1d580 <__sfvwrite_r+0x270>
   1d510:	0005079b          	sext.w	a5,a0
   1d514:	40f989bb          	subw	s3,s3,a5
   1d518:	00100513          	li	a0,1
   1d51c:	04098a63          	beqz	s3,1d570 <__sfvwrite_r+0x260>
   1d520:	010b3783          	ld	a5,16(s6)
   1d524:	012c8cb3          	add	s9,s9,s2
   1d528:	412c0c33          	sub	s8,s8,s2
   1d52c:	412787b3          	sub	a5,a5,s2
   1d530:	00fb3823          	sd	a5,16(s6)
   1d534:	f80794e3          	bnez	a5,1d4bc <__sfvwrite_r+0x1ac>
   1d538:	00000513          	li	a0,0
   1d53c:	05813083          	ld	ra,88(sp)
   1d540:	05013403          	ld	s0,80(sp)
   1d544:	04813483          	ld	s1,72(sp)
   1d548:	04013903          	ld	s2,64(sp)
   1d54c:	03813983          	ld	s3,56(sp)
   1d550:	03013a03          	ld	s4,48(sp)
   1d554:	02813a83          	ld	s5,40(sp)
   1d558:	02013b03          	ld	s6,32(sp)
   1d55c:	01813b83          	ld	s7,24(sp)
   1d560:	01013c03          	ld	s8,16(sp)
   1d564:	00813c83          	ld	s9,8(sp)
   1d568:	06010113          	addi	sp,sp,96
   1d56c:	00008067          	ret
   1d570:	00040593          	mv	a1,s0
   1d574:	000a0513          	mv	a0,s4
   1d578:	e19f50ef          	jal	ra,13390 <_fflush_r>
   1d57c:	fa0502e3          	beqz	a0,1d520 <__sfvwrite_r+0x210>
   1d580:	01041783          	lh	a5,16(s0)
   1d584:	0407e793          	ori	a5,a5,64
   1d588:	00f41823          	sh	a5,16(s0)
   1d58c:	fff00513          	li	a0,-1
   1d590:	fadff06f          	j	1d53c <__sfvwrite_r+0x22c>
   1d594:	00000513          	li	a0,0
   1d598:	00008067          	ret
   1d59c:	0084bc03          	ld	s8,8(s1)
   1d5a0:	00048793          	mv	a5,s1
   1d5a4:	01048493          	addi	s1,s1,16
   1d5a8:	fe0c0ae3          	beqz	s8,1d59c <__sfvwrite_r+0x28c>
   1d5ac:	0007bc83          	ld	s9,0(a5)
   1d5b0:	000c0613          	mv	a2,s8
   1d5b4:	00a00593          	li	a1,10
   1d5b8:	000c8513          	mv	a0,s9
   1d5bc:	8e4fa0ef          	jal	ra,176a0 <memchr>
   1d5c0:	1e050263          	beqz	a0,1d7a4 <__sfvwrite_r+0x494>
   1d5c4:	00150513          	addi	a0,a0,1
   1d5c8:	419509bb          	subw	s3,a0,s9
   1d5cc:	ef9ff06f          	j	1d4c4 <__sfvwrite_r+0x1b4>
   1d5d0:	000c8593          	mv	a1,s9
   1d5d4:	000a8613          	mv	a2,s5
   1d5d8:	44c000ef          	jal	ra,1da24 <memmove>
   1d5dc:	00043783          	ld	a5,0(s0)
   1d5e0:	00040593          	mv	a1,s0
   1d5e4:	000a0513          	mv	a0,s4
   1d5e8:	015787b3          	add	a5,a5,s5
   1d5ec:	00f43023          	sd	a5,0(s0)
   1d5f0:	da1f50ef          	jal	ra,13390 <_fflush_r>
   1d5f4:	f80516e3          	bnez	a0,1d580 <__sfvwrite_r+0x270>
   1d5f8:	000a8793          	mv	a5,s5
   1d5fc:	000a8913          	mv	s2,s5
   1d600:	f15ff06f          	j	1d514 <__sfvwrite_r+0x204>
   1d604:	01843703          	ld	a4,24(s0)
   1d608:	04f76463          	bltu	a4,a5,1d650 <__sfvwrite_r+0x340>
   1d60c:	02042583          	lw	a1,32(s0)
   1d610:	04b96063          	bltu	s2,a1,1d650 <__sfvwrite_r+0x340>
   1d614:	00090993          	mv	s3,s2
   1d618:	012af463          	bgeu	s5,s2,1d620 <__sfvwrite_r+0x310>
   1d61c:	000a8993          	mv	s3,s5
   1d620:	0009851b          	sext.w	a0,s3
   1d624:	eb5f20ef          	jal	ra,104d8 <__moddi3>
   1d628:	04043783          	ld	a5,64(s0)
   1d62c:	03043583          	ld	a1,48(s0)
   1d630:	40a986bb          	subw	a3,s3,a0
   1d634:	000c0613          	mv	a2,s8
   1d638:	000a0513          	mv	a0,s4
   1d63c:	000780e7          	jalr	a5
   1d640:	00050993          	mv	s3,a0
   1d644:	f2a05ee3          	blez	a0,1d580 <__sfvwrite_r+0x270>
   1d648:	41390933          	sub	s2,s2,s3
   1d64c:	e29ff06f          	j	1d474 <__sfvwrite_r+0x164>
   1d650:	000b8993          	mv	s3,s7
   1d654:	01797463          	bgeu	s2,s7,1d65c <__sfvwrite_r+0x34c>
   1d658:	00090993          	mv	s3,s2
   1d65c:	00078513          	mv	a0,a5
   1d660:	00098613          	mv	a2,s3
   1d664:	000c0593          	mv	a1,s8
   1d668:	3bc000ef          	jal	ra,1da24 <memmove>
   1d66c:	00c42703          	lw	a4,12(s0)
   1d670:	00043783          	ld	a5,0(s0)
   1d674:	413706bb          	subw	a3,a4,s3
   1d678:	013787b3          	add	a5,a5,s3
   1d67c:	00d42623          	sw	a3,12(s0)
   1d680:	00f43023          	sd	a5,0(s0)
   1d684:	fc0692e3          	bnez	a3,1d648 <__sfvwrite_r+0x338>
   1d688:	00040593          	mv	a1,s0
   1d68c:	000a0513          	mv	a0,s4
   1d690:	d01f50ef          	jal	ra,13390 <_fflush_r>
   1d694:	ee0516e3          	bnez	a0,1d580 <__sfvwrite_r+0x270>
   1d698:	41390933          	sub	s2,s2,s3
   1d69c:	dd9ff06f          	j	1d474 <__sfvwrite_r+0x164>
   1d6a0:	48077693          	andi	a3,a4,1152
   1d6a4:	0c068263          	beqz	a3,1d768 <__sfvwrite_r+0x458>
   1d6a8:	02042603          	lw	a2,32(s0)
   1d6ac:	01843583          	ld	a1,24(s0)
   1d6b0:	0016169b          	slliw	a3,a2,0x1
   1d6b4:	00c686bb          	addw	a3,a3,a2
   1d6b8:	40b787b3          	sub	a5,a5,a1
   1d6bc:	01f6d99b          	srliw	s3,a3,0x1f
   1d6c0:	00078b9b          	sext.w	s7,a5
   1d6c4:	00d989bb          	addw	s3,s3,a3
   1d6c8:	001b8693          	addi	a3,s7,1
   1d6cc:	4019d99b          	sraiw	s3,s3,0x1
   1d6d0:	012686b3          	add	a3,a3,s2
   1d6d4:	00d9f663          	bgeu	s3,a3,1d6e0 <__sfvwrite_r+0x3d0>
   1d6d8:	0017879b          	addiw	a5,a5,1
   1d6dc:	012789bb          	addw	s3,a5,s2
   1d6e0:	40077713          	andi	a4,a4,1024
   1d6e4:	08070663          	beqz	a4,1d770 <__sfvwrite_r+0x460>
   1d6e8:	00098593          	mv	a1,s3
   1d6ec:	000a0513          	mv	a0,s4
   1d6f0:	f64f90ef          	jal	ra,16e54 <_malloc_r>
   1d6f4:	00050c93          	mv	s9,a0
   1d6f8:	0a050a63          	beqz	a0,1d7ac <__sfvwrite_r+0x49c>
   1d6fc:	01843583          	ld	a1,24(s0)
   1d700:	000b8613          	mv	a2,s7
   1d704:	17c000ef          	jal	ra,1d880 <memcpy>
   1d708:	01045783          	lhu	a5,16(s0)
   1d70c:	b7f7f793          	andi	a5,a5,-1153
   1d710:	0807e793          	ori	a5,a5,128
   1d714:	00f41823          	sh	a5,16(s0)
   1d718:	017c8533          	add	a0,s9,s7
   1d71c:	41798bbb          	subw	s7,s3,s7
   1d720:	01943c23          	sd	s9,24(s0)
   1d724:	01742623          	sw	s7,12(s0)
   1d728:	00a43023          	sd	a0,0(s0)
   1d72c:	03342023          	sw	s3,32(s0)
   1d730:	00090c93          	mv	s9,s2
   1d734:	00090b93          	mv	s7,s2
   1d738:	d11ff06f          	j	1d448 <__sfvwrite_r+0x138>
   1d73c:	000b8613          	mv	a2,s7
   1d740:	000c8593          	mv	a1,s9
   1d744:	2e0000ef          	jal	ra,1da24 <memmove>
   1d748:	00c42683          	lw	a3,12(s0)
   1d74c:	00043703          	ld	a4,0(s0)
   1d750:	000b879b          	sext.w	a5,s7
   1d754:	417686bb          	subw	a3,a3,s7
   1d758:	01770733          	add	a4,a4,s7
   1d75c:	00d42623          	sw	a3,12(s0)
   1d760:	00e43023          	sd	a4,0(s0)
   1d764:	db1ff06f          	j	1d514 <__sfvwrite_r+0x204>
   1d768:	000b8c93          	mv	s9,s7
   1d76c:	cddff06f          	j	1d448 <__sfvwrite_r+0x138>
   1d770:	00098613          	mv	a2,s3
   1d774:	000a0513          	mv	a0,s4
   1d778:	430000ef          	jal	ra,1dba8 <_realloc_r>
   1d77c:	00050c93          	mv	s9,a0
   1d780:	f8051ce3          	bnez	a0,1d718 <__sfvwrite_r+0x408>
   1d784:	01843583          	ld	a1,24(s0)
   1d788:	000a0513          	mv	a0,s4
   1d78c:	a08f60ef          	jal	ra,13994 <_free_r>
   1d790:	01041783          	lh	a5,16(s0)
   1d794:	00c00713          	li	a4,12
   1d798:	00ea2023          	sw	a4,0(s4)
   1d79c:	f7f7f793          	andi	a5,a5,-129
   1d7a0:	de5ff06f          	j	1d584 <__sfvwrite_r+0x274>
   1d7a4:	001c099b          	addiw	s3,s8,1
   1d7a8:	d1dff06f          	j	1d4c4 <__sfvwrite_r+0x1b4>
   1d7ac:	00c00713          	li	a4,12
   1d7b0:	01041783          	lh	a5,16(s0)
   1d7b4:	00ea2023          	sw	a4,0(s4)
   1d7b8:	dcdff06f          	j	1d584 <__sfvwrite_r+0x274>

000000000001d7bc <_isatty_r>:
   1d7bc:	fe010113          	addi	sp,sp,-32
   1d7c0:	00813823          	sd	s0,16(sp)
   1d7c4:	00913423          	sd	s1,8(sp)
   1d7c8:	00050413          	mv	s0,a0
   1d7cc:	00058513          	mv	a0,a1
   1d7d0:	00113c23          	sd	ra,24(sp)
   1d7d4:	7801a823          	sw	zero,1936(gp) # 24198 <errno>
   1d7d8:	770020ef          	jal	ra,1ff48 <_isatty>
   1d7dc:	fff00793          	li	a5,-1
   1d7e0:	00f50c63          	beq	a0,a5,1d7f8 <_isatty_r+0x3c>
   1d7e4:	01813083          	ld	ra,24(sp)
   1d7e8:	01013403          	ld	s0,16(sp)
   1d7ec:	00813483          	ld	s1,8(sp)
   1d7f0:	02010113          	addi	sp,sp,32
   1d7f4:	00008067          	ret
   1d7f8:	7901a783          	lw	a5,1936(gp) # 24198 <errno>
   1d7fc:	fe0784e3          	beqz	a5,1d7e4 <_isatty_r+0x28>
   1d800:	01813083          	ld	ra,24(sp)
   1d804:	00f42023          	sw	a5,0(s0)
   1d808:	01013403          	ld	s0,16(sp)
   1d80c:	00813483          	ld	s1,8(sp)
   1d810:	02010113          	addi	sp,sp,32
   1d814:	00008067          	ret

000000000001d818 <_lseek_r>:
   1d818:	fe010113          	addi	sp,sp,-32
   1d81c:	00058713          	mv	a4,a1
   1d820:	00813823          	sd	s0,16(sp)
   1d824:	00913423          	sd	s1,8(sp)
   1d828:	00060593          	mv	a1,a2
   1d82c:	00050413          	mv	s0,a0
   1d830:	00068613          	mv	a2,a3
   1d834:	00070513          	mv	a0,a4
   1d838:	00113c23          	sd	ra,24(sp)
   1d83c:	7801a823          	sw	zero,1936(gp) # 24198 <errno>
   1d840:	76c020ef          	jal	ra,1ffac <_lseek>
   1d844:	fff00793          	li	a5,-1
   1d848:	00f50c63          	beq	a0,a5,1d860 <_lseek_r+0x48>
   1d84c:	01813083          	ld	ra,24(sp)
   1d850:	01013403          	ld	s0,16(sp)
   1d854:	00813483          	ld	s1,8(sp)
   1d858:	02010113          	addi	sp,sp,32
   1d85c:	00008067          	ret
   1d860:	7901a783          	lw	a5,1936(gp) # 24198 <errno>
   1d864:	fe0784e3          	beqz	a5,1d84c <_lseek_r+0x34>
   1d868:	01813083          	ld	ra,24(sp)
   1d86c:	00f42023          	sw	a5,0(s0)
   1d870:	01013403          	ld	s0,16(sp)
   1d874:	00813483          	ld	s1,8(sp)
   1d878:	02010113          	addi	sp,sp,32
   1d87c:	00008067          	ret

000000000001d880 <memcpy>:
   1d880:	00b547b3          	xor	a5,a0,a1
   1d884:	0077f793          	andi	a5,a5,7
   1d888:	00c508b3          	add	a7,a0,a2
   1d88c:	06079463          	bnez	a5,1d8f4 <memcpy+0x74>
   1d890:	00700793          	li	a5,7
   1d894:	06c7f063          	bgeu	a5,a2,1d8f4 <memcpy+0x74>
   1d898:	00757793          	andi	a5,a0,7
   1d89c:	00050713          	mv	a4,a0
   1d8a0:	06079a63          	bnez	a5,1d914 <memcpy+0x94>
   1d8a4:	ff88f613          	andi	a2,a7,-8
   1d8a8:	40e606b3          	sub	a3,a2,a4
   1d8ac:	04000793          	li	a5,64
   1d8b0:	08d7ce63          	blt	a5,a3,1d94c <memcpy+0xcc>
   1d8b4:	00058693          	mv	a3,a1
   1d8b8:	00070793          	mv	a5,a4
   1d8bc:	02c77863          	bgeu	a4,a2,1d8ec <memcpy+0x6c>
   1d8c0:	0006b803          	ld	a6,0(a3) # 2000 <exit-0xe0e8>
   1d8c4:	00878793          	addi	a5,a5,8
   1d8c8:	00868693          	addi	a3,a3,8
   1d8cc:	ff07bc23          	sd	a6,-8(a5)
   1d8d0:	fec7e8e3          	bltu	a5,a2,1d8c0 <memcpy+0x40>
   1d8d4:	fff60793          	addi	a5,a2,-1
   1d8d8:	40e787b3          	sub	a5,a5,a4
   1d8dc:	ff87f793          	andi	a5,a5,-8
   1d8e0:	00878793          	addi	a5,a5,8
   1d8e4:	00f70733          	add	a4,a4,a5
   1d8e8:	00f585b3          	add	a1,a1,a5
   1d8ec:	01176863          	bltu	a4,a7,1d8fc <memcpy+0x7c>
   1d8f0:	00008067          	ret
   1d8f4:	00050713          	mv	a4,a0
   1d8f8:	05157863          	bgeu	a0,a7,1d948 <memcpy+0xc8>
   1d8fc:	0005c783          	lbu	a5,0(a1)
   1d900:	00170713          	addi	a4,a4,1
   1d904:	00158593          	addi	a1,a1,1
   1d908:	fef70fa3          	sb	a5,-1(a4)
   1d90c:	fee898e3          	bne	a7,a4,1d8fc <memcpy+0x7c>
   1d910:	00008067          	ret
   1d914:	0005c683          	lbu	a3,0(a1)
   1d918:	00170713          	addi	a4,a4,1
   1d91c:	00777793          	andi	a5,a4,7
   1d920:	fed70fa3          	sb	a3,-1(a4)
   1d924:	00158593          	addi	a1,a1,1
   1d928:	f6078ee3          	beqz	a5,1d8a4 <memcpy+0x24>
   1d92c:	0005c683          	lbu	a3,0(a1)
   1d930:	00170713          	addi	a4,a4,1
   1d934:	00777793          	andi	a5,a4,7
   1d938:	fed70fa3          	sb	a3,-1(a4)
   1d93c:	00158593          	addi	a1,a1,1
   1d940:	fc079ae3          	bnez	a5,1d914 <memcpy+0x94>
   1d944:	f61ff06f          	j	1d8a4 <memcpy+0x24>
   1d948:	00008067          	ret
   1d94c:	ff010113          	addi	sp,sp,-16
   1d950:	00813423          	sd	s0,8(sp)
   1d954:	04000413          	li	s0,64
   1d958:	0005b383          	ld	t2,0(a1)
   1d95c:	0085b283          	ld	t0,8(a1)
   1d960:	0105bf83          	ld	t6,16(a1)
   1d964:	0185bf03          	ld	t5,24(a1)
   1d968:	0205be83          	ld	t4,32(a1)
   1d96c:	0285be03          	ld	t3,40(a1)
   1d970:	0305b303          	ld	t1,48(a1)
   1d974:	0385b803          	ld	a6,56(a1)
   1d978:	0405b683          	ld	a3,64(a1)
   1d97c:	04870713          	addi	a4,a4,72
   1d980:	40e607b3          	sub	a5,a2,a4
   1d984:	fa773c23          	sd	t2,-72(a4)
   1d988:	fc573023          	sd	t0,-64(a4)
   1d98c:	fdf73423          	sd	t6,-56(a4)
   1d990:	fde73823          	sd	t5,-48(a4)
   1d994:	fdd73c23          	sd	t4,-40(a4)
   1d998:	ffc73023          	sd	t3,-32(a4)
   1d99c:	fe673423          	sd	t1,-24(a4)
   1d9a0:	ff073823          	sd	a6,-16(a4)
   1d9a4:	fed73c23          	sd	a3,-8(a4)
   1d9a8:	04858593          	addi	a1,a1,72
   1d9ac:	faf446e3          	blt	s0,a5,1d958 <memcpy+0xd8>
   1d9b0:	00058693          	mv	a3,a1
   1d9b4:	00070793          	mv	a5,a4
   1d9b8:	02c77863          	bgeu	a4,a2,1d9e8 <memcpy+0x168>
   1d9bc:	0006b803          	ld	a6,0(a3)
   1d9c0:	00878793          	addi	a5,a5,8
   1d9c4:	00868693          	addi	a3,a3,8
   1d9c8:	ff07bc23          	sd	a6,-8(a5)
   1d9cc:	fec7e8e3          	bltu	a5,a2,1d9bc <memcpy+0x13c>
   1d9d0:	fff60793          	addi	a5,a2,-1
   1d9d4:	40e787b3          	sub	a5,a5,a4
   1d9d8:	ff87f793          	andi	a5,a5,-8
   1d9dc:	00878793          	addi	a5,a5,8
   1d9e0:	00f70733          	add	a4,a4,a5
   1d9e4:	00f585b3          	add	a1,a1,a5
   1d9e8:	01176863          	bltu	a4,a7,1d9f8 <memcpy+0x178>
   1d9ec:	00813403          	ld	s0,8(sp)
   1d9f0:	01010113          	addi	sp,sp,16
   1d9f4:	00008067          	ret
   1d9f8:	0005c783          	lbu	a5,0(a1)
   1d9fc:	00170713          	addi	a4,a4,1
   1da00:	00158593          	addi	a1,a1,1
   1da04:	fef70fa3          	sb	a5,-1(a4)
   1da08:	fee882e3          	beq	a7,a4,1d9ec <memcpy+0x16c>
   1da0c:	0005c783          	lbu	a5,0(a1)
   1da10:	00170713          	addi	a4,a4,1
   1da14:	00158593          	addi	a1,a1,1
   1da18:	fef70fa3          	sb	a5,-1(a4)
   1da1c:	fce89ee3          	bne	a7,a4,1d9f8 <memcpy+0x178>
   1da20:	fcdff06f          	j	1d9ec <memcpy+0x16c>

000000000001da24 <memmove>:
   1da24:	02a5f663          	bgeu	a1,a0,1da50 <memmove+0x2c>
   1da28:	00c58733          	add	a4,a1,a2
   1da2c:	02e57263          	bgeu	a0,a4,1da50 <memmove+0x2c>
   1da30:	00c507b3          	add	a5,a0,a2
   1da34:	04060663          	beqz	a2,1da80 <memmove+0x5c>
   1da38:	fff74683          	lbu	a3,-1(a4)
   1da3c:	fff78793          	addi	a5,a5,-1
   1da40:	fff70713          	addi	a4,a4,-1
   1da44:	00d78023          	sb	a3,0(a5)
   1da48:	fef518e3          	bne	a0,a5,1da38 <memmove+0x14>
   1da4c:	00008067          	ret
   1da50:	01f00793          	li	a5,31
   1da54:	02c7e863          	bltu	a5,a2,1da84 <memmove+0x60>
   1da58:	00050793          	mv	a5,a0
   1da5c:	fff60693          	addi	a3,a2,-1
   1da60:	0c060a63          	beqz	a2,1db34 <memmove+0x110>
   1da64:	00168693          	addi	a3,a3,1
   1da68:	00d786b3          	add	a3,a5,a3
   1da6c:	0005c703          	lbu	a4,0(a1)
   1da70:	00178793          	addi	a5,a5,1
   1da74:	00158593          	addi	a1,a1,1
   1da78:	fee78fa3          	sb	a4,-1(a5)
   1da7c:	fed798e3          	bne	a5,a3,1da6c <memmove+0x48>
   1da80:	00008067          	ret
   1da84:	00b567b3          	or	a5,a0,a1
   1da88:	0077f793          	andi	a5,a5,7
   1da8c:	08079e63          	bnez	a5,1db28 <memmove+0x104>
   1da90:	fe060893          	addi	a7,a2,-32
   1da94:	fe08f893          	andi	a7,a7,-32
   1da98:	02088893          	addi	a7,a7,32
   1da9c:	011507b3          	add	a5,a0,a7
   1daa0:	00058693          	mv	a3,a1
   1daa4:	00050713          	mv	a4,a0
   1daa8:	0006b803          	ld	a6,0(a3)
   1daac:	02068693          	addi	a3,a3,32
   1dab0:	02070713          	addi	a4,a4,32
   1dab4:	ff073023          	sd	a6,-32(a4)
   1dab8:	fe86b803          	ld	a6,-24(a3)
   1dabc:	ff073423          	sd	a6,-24(a4)
   1dac0:	ff06b803          	ld	a6,-16(a3)
   1dac4:	ff073823          	sd	a6,-16(a4)
   1dac8:	ff86b803          	ld	a6,-8(a3)
   1dacc:	ff073c23          	sd	a6,-8(a4)
   1dad0:	fcf71ce3          	bne	a4,a5,1daa8 <memmove+0x84>
   1dad4:	01867713          	andi	a4,a2,24
   1dad8:	011585b3          	add	a1,a1,a7
   1dadc:	01f67813          	andi	a6,a2,31
   1dae0:	04070c63          	beqz	a4,1db38 <memmove+0x114>
   1dae4:	00058693          	mv	a3,a1
   1dae8:	00078713          	mv	a4,a5
   1daec:	01078eb3          	add	t4,a5,a6
   1daf0:	00700e13          	li	t3,7
   1daf4:	0006b303          	ld	t1,0(a3)
   1daf8:	00870713          	addi	a4,a4,8
   1dafc:	40ee88b3          	sub	a7,t4,a4
   1db00:	fe673c23          	sd	t1,-8(a4)
   1db04:	00868693          	addi	a3,a3,8
   1db08:	ff1e66e3          	bltu	t3,a7,1daf4 <memmove+0xd0>
   1db0c:	ff880713          	addi	a4,a6,-8
   1db10:	ff877713          	andi	a4,a4,-8
   1db14:	00870713          	addi	a4,a4,8
   1db18:	00767613          	andi	a2,a2,7
   1db1c:	00e787b3          	add	a5,a5,a4
   1db20:	00e585b3          	add	a1,a1,a4
   1db24:	f39ff06f          	j	1da5c <memmove+0x38>
   1db28:	fff60693          	addi	a3,a2,-1
   1db2c:	00050793          	mv	a5,a0
   1db30:	f35ff06f          	j	1da64 <memmove+0x40>
   1db34:	00008067          	ret
   1db38:	00080613          	mv	a2,a6
   1db3c:	f21ff06f          	j	1da5c <memmove+0x38>

000000000001db40 <_read_r>:
   1db40:	fe010113          	addi	sp,sp,-32
   1db44:	00058713          	mv	a4,a1
   1db48:	00813823          	sd	s0,16(sp)
   1db4c:	00913423          	sd	s1,8(sp)
   1db50:	00060593          	mv	a1,a2
   1db54:	00050413          	mv	s0,a0
   1db58:	00068613          	mv	a2,a3
   1db5c:	00070513          	mv	a0,a4
   1db60:	00113c23          	sd	ra,24(sp)
   1db64:	7801a823          	sw	zero,1936(gp) # 24198 <errno>
   1db68:	488020ef          	jal	ra,1fff0 <_read>
   1db6c:	fff00793          	li	a5,-1
   1db70:	00f50c63          	beq	a0,a5,1db88 <_read_r+0x48>
   1db74:	01813083          	ld	ra,24(sp)
   1db78:	01013403          	ld	s0,16(sp)
   1db7c:	00813483          	ld	s1,8(sp)
   1db80:	02010113          	addi	sp,sp,32
   1db84:	00008067          	ret
   1db88:	7901a783          	lw	a5,1936(gp) # 24198 <errno>
   1db8c:	fe0784e3          	beqz	a5,1db74 <_read_r+0x34>
   1db90:	01813083          	ld	ra,24(sp)
   1db94:	00f42023          	sw	a5,0(s0)
   1db98:	01013403          	ld	s0,16(sp)
   1db9c:	00813483          	ld	s1,8(sp)
   1dba0:	02010113          	addi	sp,sp,32
   1dba4:	00008067          	ret

000000000001dba8 <_realloc_r>:
   1dba8:	fb010113          	addi	sp,sp,-80
   1dbac:	03213823          	sd	s2,48(sp)
   1dbb0:	04113423          	sd	ra,72(sp)
   1dbb4:	04813023          	sd	s0,64(sp)
   1dbb8:	02913c23          	sd	s1,56(sp)
   1dbbc:	03313423          	sd	s3,40(sp)
   1dbc0:	03413023          	sd	s4,32(sp)
   1dbc4:	01513c23          	sd	s5,24(sp)
   1dbc8:	01613823          	sd	s6,16(sp)
   1dbcc:	01713423          	sd	s7,8(sp)
   1dbd0:	01813023          	sd	s8,0(sp)
   1dbd4:	00060913          	mv	s2,a2
   1dbd8:	1c058663          	beqz	a1,1dda4 <_realloc_r+0x1fc>
   1dbdc:	00058413          	mv	s0,a1
   1dbe0:	00050993          	mv	s3,a0
   1dbe4:	b81f90ef          	jal	ra,17764 <__malloc_lock>
   1dbe8:	ff843783          	ld	a5,-8(s0)
   1dbec:	01790493          	addi	s1,s2,23
   1dbf0:	02e00713          	li	a4,46
   1dbf4:	ff040a93          	addi	s5,s0,-16
   1dbf8:	ffc7fa13          	andi	s4,a5,-4
   1dbfc:	0e977a63          	bgeu	a4,s1,1dcf0 <_realloc_r+0x148>
   1dc00:	80000737          	lui	a4,0x80000
   1dc04:	ff04f493          	andi	s1,s1,-16
   1dc08:	fff74713          	not	a4,a4
   1dc0c:	0e976663          	bltu	a4,s1,1dcf8 <_realloc_r+0x150>
   1dc10:	0f24e463          	bltu	s1,s2,1dcf8 <_realloc_r+0x150>
   1dc14:	109a5463          	bge	s4,s1,1dd1c <_realloc_r+0x174>
   1dc18:	00024737          	lui	a4,0x24
   1dc1c:	91070c13          	addi	s8,a4,-1776 # 23910 <__malloc_av_>
   1dc20:	010c3603          	ld	a2,16(s8)
   1dc24:	014a86b3          	add	a3,s5,s4
   1dc28:	0086b703          	ld	a4,8(a3)
   1dc2c:	1cd60e63          	beq	a2,a3,1de08 <_realloc_r+0x260>
   1dc30:	ffe77613          	andi	a2,a4,-2
   1dc34:	00c68633          	add	a2,a3,a2
   1dc38:	00863603          	ld	a2,8(a2)
   1dc3c:	00167613          	andi	a2,a2,1
   1dc40:	14061463          	bnez	a2,1dd88 <_realloc_r+0x1e0>
   1dc44:	ffc77713          	andi	a4,a4,-4
   1dc48:	00ea0633          	add	a2,s4,a4
   1dc4c:	0a965e63          	bge	a2,s1,1dd08 <_realloc_r+0x160>
   1dc50:	0017f793          	andi	a5,a5,1
   1dc54:	02079463          	bnez	a5,1dc7c <_realloc_r+0xd4>
   1dc58:	ff043b83          	ld	s7,-16(s0)
   1dc5c:	417a8bb3          	sub	s7,s5,s7
   1dc60:	008bb783          	ld	a5,8(s7)
   1dc64:	ffc7f793          	andi	a5,a5,-4
   1dc68:	00f70733          	add	a4,a4,a5
   1dc6c:	01470b33          	add	s6,a4,s4
   1dc70:	329b5463          	bge	s6,s1,1df98 <_realloc_r+0x3f0>
   1dc74:	00fa0b33          	add	s6,s4,a5
   1dc78:	289b5663          	bge	s6,s1,1df04 <_realloc_r+0x35c>
   1dc7c:	00090593          	mv	a1,s2
   1dc80:	00098513          	mv	a0,s3
   1dc84:	9d0f90ef          	jal	ra,16e54 <_malloc_r>
   1dc88:	00050913          	mv	s2,a0
   1dc8c:	40050263          	beqz	a0,1e090 <_realloc_r+0x4e8>
   1dc90:	ff843783          	ld	a5,-8(s0)
   1dc94:	ff050713          	addi	a4,a0,-16
   1dc98:	ffe7f793          	andi	a5,a5,-2
   1dc9c:	00fa87b3          	add	a5,s5,a5
   1dca0:	24e78a63          	beq	a5,a4,1def4 <_realloc_r+0x34c>
   1dca4:	ff8a0613          	addi	a2,s4,-8
   1dca8:	04800793          	li	a5,72
   1dcac:	2ec7e063          	bltu	a5,a2,1df8c <_realloc_r+0x3e4>
   1dcb0:	02700713          	li	a4,39
   1dcb4:	20c76e63          	bltu	a4,a2,1ded0 <_realloc_r+0x328>
   1dcb8:	00050793          	mv	a5,a0
   1dcbc:	00040713          	mv	a4,s0
   1dcc0:	00073683          	ld	a3,0(a4)
   1dcc4:	00d7b023          	sd	a3,0(a5)
   1dcc8:	00873683          	ld	a3,8(a4)
   1dccc:	00d7b423          	sd	a3,8(a5)
   1dcd0:	01073703          	ld	a4,16(a4)
   1dcd4:	00e7b823          	sd	a4,16(a5)
   1dcd8:	00098513          	mv	a0,s3
   1dcdc:	00040593          	mv	a1,s0
   1dce0:	cb5f50ef          	jal	ra,13994 <_free_r>
   1dce4:	00098513          	mv	a0,s3
   1dce8:	a81f90ef          	jal	ra,17768 <__malloc_unlock>
   1dcec:	0680006f          	j	1dd54 <_realloc_r+0x1ac>
   1dcf0:	02000493          	li	s1,32
   1dcf4:	f324f0e3          	bgeu	s1,s2,1dc14 <_realloc_r+0x6c>
   1dcf8:	00c00793          	li	a5,12
   1dcfc:	00f9a023          	sw	a5,0(s3)
   1dd00:	00000913          	li	s2,0
   1dd04:	0500006f          	j	1dd54 <_realloc_r+0x1ac>
   1dd08:	0186b783          	ld	a5,24(a3)
   1dd0c:	0106b703          	ld	a4,16(a3)
   1dd10:	00060a13          	mv	s4,a2
   1dd14:	00f73c23          	sd	a5,24(a4)
   1dd18:	00e7b823          	sd	a4,16(a5)
   1dd1c:	008ab783          	ld	a5,8(s5) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdbe00>
   1dd20:	409a06b3          	sub	a3,s4,s1
   1dd24:	01f00613          	li	a2,31
   1dd28:	0017f793          	andi	a5,a5,1
   1dd2c:	014a8733          	add	a4,s5,s4
   1dd30:	0ad66463          	bltu	a2,a3,1ddd8 <_realloc_r+0x230>
   1dd34:	0147e7b3          	or	a5,a5,s4
   1dd38:	00fab423          	sd	a5,8(s5)
   1dd3c:	00873783          	ld	a5,8(a4)
   1dd40:	0017e793          	ori	a5,a5,1
   1dd44:	00f73423          	sd	a5,8(a4)
   1dd48:	00098513          	mv	a0,s3
   1dd4c:	a1df90ef          	jal	ra,17768 <__malloc_unlock>
   1dd50:	00040913          	mv	s2,s0
   1dd54:	04813083          	ld	ra,72(sp)
   1dd58:	04013403          	ld	s0,64(sp)
   1dd5c:	03813483          	ld	s1,56(sp)
   1dd60:	02813983          	ld	s3,40(sp)
   1dd64:	02013a03          	ld	s4,32(sp)
   1dd68:	01813a83          	ld	s5,24(sp)
   1dd6c:	01013b03          	ld	s6,16(sp)
   1dd70:	00813b83          	ld	s7,8(sp)
   1dd74:	00013c03          	ld	s8,0(sp)
   1dd78:	00090513          	mv	a0,s2
   1dd7c:	03013903          	ld	s2,48(sp)
   1dd80:	05010113          	addi	sp,sp,80
   1dd84:	00008067          	ret
   1dd88:	0017f793          	andi	a5,a5,1
   1dd8c:	ee0798e3          	bnez	a5,1dc7c <_realloc_r+0xd4>
   1dd90:	ff043b83          	ld	s7,-16(s0)
   1dd94:	417a8bb3          	sub	s7,s5,s7
   1dd98:	008bb783          	ld	a5,8(s7)
   1dd9c:	ffc7f793          	andi	a5,a5,-4
   1dda0:	ed5ff06f          	j	1dc74 <_realloc_r+0xcc>
   1dda4:	04013403          	ld	s0,64(sp)
   1dda8:	04813083          	ld	ra,72(sp)
   1ddac:	03813483          	ld	s1,56(sp)
   1ddb0:	03013903          	ld	s2,48(sp)
   1ddb4:	02813983          	ld	s3,40(sp)
   1ddb8:	02013a03          	ld	s4,32(sp)
   1ddbc:	01813a83          	ld	s5,24(sp)
   1ddc0:	01013b03          	ld	s6,16(sp)
   1ddc4:	00813b83          	ld	s7,8(sp)
   1ddc8:	00013c03          	ld	s8,0(sp)
   1ddcc:	00060593          	mv	a1,a2
   1ddd0:	05010113          	addi	sp,sp,80
   1ddd4:	880f906f          	j	16e54 <_malloc_r>
   1ddd8:	0097e7b3          	or	a5,a5,s1
   1dddc:	00fab423          	sd	a5,8(s5)
   1dde0:	009a85b3          	add	a1,s5,s1
   1dde4:	0016e693          	ori	a3,a3,1
   1dde8:	00d5b423          	sd	a3,8(a1)
   1ddec:	00873783          	ld	a5,8(a4)
   1ddf0:	01058593          	addi	a1,a1,16
   1ddf4:	00098513          	mv	a0,s3
   1ddf8:	0017e793          	ori	a5,a5,1
   1ddfc:	00f73423          	sd	a5,8(a4)
   1de00:	b95f50ef          	jal	ra,13994 <_free_r>
   1de04:	f45ff06f          	j	1dd48 <_realloc_r+0x1a0>
   1de08:	ffc77713          	andi	a4,a4,-4
   1de0c:	014706b3          	add	a3,a4,s4
   1de10:	02048613          	addi	a2,s1,32
   1de14:	22c6de63          	bge	a3,a2,1e050 <_realloc_r+0x4a8>
   1de18:	0017f793          	andi	a5,a5,1
   1de1c:	e60790e3          	bnez	a5,1dc7c <_realloc_r+0xd4>
   1de20:	ff043b83          	ld	s7,-16(s0)
   1de24:	417a8bb3          	sub	s7,s5,s7
   1de28:	008bb783          	ld	a5,8(s7)
   1de2c:	ffc7f793          	andi	a5,a5,-4
   1de30:	00f70733          	add	a4,a4,a5
   1de34:	01470b33          	add	s6,a4,s4
   1de38:	e2cb4ee3          	blt	s6,a2,1dc74 <_realloc_r+0xcc>
   1de3c:	018bb783          	ld	a5,24(s7)
   1de40:	010bb703          	ld	a4,16(s7)
   1de44:	ff8a0613          	addi	a2,s4,-8
   1de48:	04800693          	li	a3,72
   1de4c:	00f73c23          	sd	a5,24(a4)
   1de50:	00e7b823          	sd	a4,16(a5)
   1de54:	010b8913          	addi	s2,s7,16
   1de58:	26c6e263          	bltu	a3,a2,1e0bc <_realloc_r+0x514>
   1de5c:	02700713          	li	a4,39
   1de60:	00090793          	mv	a5,s2
   1de64:	02c77263          	bgeu	a4,a2,1de88 <_realloc_r+0x2e0>
   1de68:	00043703          	ld	a4,0(s0)
   1de6c:	03700793          	li	a5,55
   1de70:	00ebb823          	sd	a4,16(s7)
   1de74:	00843703          	ld	a4,8(s0)
   1de78:	00ebbc23          	sd	a4,24(s7)
   1de7c:	24c7e863          	bltu	a5,a2,1e0cc <_realloc_r+0x524>
   1de80:	01040413          	addi	s0,s0,16
   1de84:	020b8793          	addi	a5,s7,32
   1de88:	00043703          	ld	a4,0(s0)
   1de8c:	00e7b023          	sd	a4,0(a5)
   1de90:	00843703          	ld	a4,8(s0)
   1de94:	00e7b423          	sd	a4,8(a5)
   1de98:	01043703          	ld	a4,16(s0)
   1de9c:	00e7b823          	sd	a4,16(a5)
   1dea0:	009b8733          	add	a4,s7,s1
   1dea4:	409b07b3          	sub	a5,s6,s1
   1dea8:	00ec3823          	sd	a4,16(s8)
   1deac:	0017e793          	ori	a5,a5,1
   1deb0:	00f73423          	sd	a5,8(a4)
   1deb4:	008bb783          	ld	a5,8(s7)
   1deb8:	00098513          	mv	a0,s3
   1debc:	0017f793          	andi	a5,a5,1
   1dec0:	0097e7b3          	or	a5,a5,s1
   1dec4:	00fbb423          	sd	a5,8(s7)
   1dec8:	8a1f90ef          	jal	ra,17768 <__malloc_unlock>
   1decc:	e89ff06f          	j	1dd54 <_realloc_r+0x1ac>
   1ded0:	00043683          	ld	a3,0(s0)
   1ded4:	03700713          	li	a4,55
   1ded8:	00d53023          	sd	a3,0(a0)
   1dedc:	00843683          	ld	a3,8(s0)
   1dee0:	00d53423          	sd	a3,8(a0)
   1dee4:	14c76663          	bltu	a4,a2,1e030 <_realloc_r+0x488>
   1dee8:	01040713          	addi	a4,s0,16
   1deec:	01050793          	addi	a5,a0,16
   1def0:	dd1ff06f          	j	1dcc0 <_realloc_r+0x118>
   1def4:	ff853783          	ld	a5,-8(a0)
   1def8:	ffc7f793          	andi	a5,a5,-4
   1defc:	00fa0a33          	add	s4,s4,a5
   1df00:	e1dff06f          	j	1dd1c <_realloc_r+0x174>
   1df04:	018bb783          	ld	a5,24(s7)
   1df08:	010bb703          	ld	a4,16(s7)
   1df0c:	ff8a0613          	addi	a2,s4,-8
   1df10:	04800693          	li	a3,72
   1df14:	00f73c23          	sd	a5,24(a4)
   1df18:	00e7b823          	sd	a4,16(a5)
   1df1c:	010b8913          	addi	s2,s7,16
   1df20:	10c6e063          	bltu	a3,a2,1e020 <_realloc_r+0x478>
   1df24:	02700713          	li	a4,39
   1df28:	00090793          	mv	a5,s2
   1df2c:	02c77c63          	bgeu	a4,a2,1df64 <_realloc_r+0x3bc>
   1df30:	00043703          	ld	a4,0(s0)
   1df34:	03700793          	li	a5,55
   1df38:	00ebb823          	sd	a4,16(s7)
   1df3c:	00843703          	ld	a4,8(s0)
   1df40:	00ebbc23          	sd	a4,24(s7)
   1df44:	14c7f063          	bgeu	a5,a2,1e084 <_realloc_r+0x4dc>
   1df48:	01043783          	ld	a5,16(s0)
   1df4c:	02fbb023          	sd	a5,32(s7)
   1df50:	01843783          	ld	a5,24(s0)
   1df54:	02fbb423          	sd	a5,40(s7)
   1df58:	0ad60663          	beq	a2,a3,1e004 <_realloc_r+0x45c>
   1df5c:	02040413          	addi	s0,s0,32
   1df60:	030b8793          	addi	a5,s7,48
   1df64:	00043703          	ld	a4,0(s0)
   1df68:	00e7b023          	sd	a4,0(a5)
   1df6c:	00843703          	ld	a4,8(s0)
   1df70:	00e7b423          	sd	a4,8(a5)
   1df74:	01043703          	ld	a4,16(s0)
   1df78:	00e7b823          	sd	a4,16(a5)
   1df7c:	00090413          	mv	s0,s2
   1df80:	000b0a13          	mv	s4,s6
   1df84:	000b8a93          	mv	s5,s7
   1df88:	d95ff06f          	j	1dd1c <_realloc_r+0x174>
   1df8c:	00040593          	mv	a1,s0
   1df90:	a95ff0ef          	jal	ra,1da24 <memmove>
   1df94:	d45ff06f          	j	1dcd8 <_realloc_r+0x130>
   1df98:	0186b783          	ld	a5,24(a3)
   1df9c:	0106b703          	ld	a4,16(a3)
   1dfa0:	ff8a0613          	addi	a2,s4,-8
   1dfa4:	04800693          	li	a3,72
   1dfa8:	00f73c23          	sd	a5,24(a4)
   1dfac:	00e7b823          	sd	a4,16(a5)
   1dfb0:	010bb703          	ld	a4,16(s7)
   1dfb4:	018bb783          	ld	a5,24(s7)
   1dfb8:	010b8913          	addi	s2,s7,16
   1dfbc:	00f73c23          	sd	a5,24(a4)
   1dfc0:	00e7b823          	sd	a4,16(a5)
   1dfc4:	04c6ee63          	bltu	a3,a2,1e020 <_realloc_r+0x478>
   1dfc8:	02700713          	li	a4,39
   1dfcc:	00090793          	mv	a5,s2
   1dfd0:	f8c77ae3          	bgeu	a4,a2,1df64 <_realloc_r+0x3bc>
   1dfd4:	00043703          	ld	a4,0(s0)
   1dfd8:	03700793          	li	a5,55
   1dfdc:	00ebb823          	sd	a4,16(s7)
   1dfe0:	00843703          	ld	a4,8(s0)
   1dfe4:	00ebbc23          	sd	a4,24(s7)
   1dfe8:	08c7fe63          	bgeu	a5,a2,1e084 <_realloc_r+0x4dc>
   1dfec:	01043703          	ld	a4,16(s0)
   1dff0:	04800793          	li	a5,72
   1dff4:	02ebb023          	sd	a4,32(s7)
   1dff8:	01843703          	ld	a4,24(s0)
   1dffc:	02ebb423          	sd	a4,40(s7)
   1e000:	f4f61ee3          	bne	a2,a5,1df5c <_realloc_r+0x3b4>
   1e004:	02043703          	ld	a4,32(s0)
   1e008:	040b8793          	addi	a5,s7,64
   1e00c:	03040413          	addi	s0,s0,48
   1e010:	02ebb823          	sd	a4,48(s7)
   1e014:	ff843703          	ld	a4,-8(s0)
   1e018:	02ebbc23          	sd	a4,56(s7)
   1e01c:	f49ff06f          	j	1df64 <_realloc_r+0x3bc>
   1e020:	00040593          	mv	a1,s0
   1e024:	00090513          	mv	a0,s2
   1e028:	9fdff0ef          	jal	ra,1da24 <memmove>
   1e02c:	f51ff06f          	j	1df7c <_realloc_r+0x3d4>
   1e030:	01043703          	ld	a4,16(s0)
   1e034:	00e53823          	sd	a4,16(a0)
   1e038:	01843703          	ld	a4,24(s0)
   1e03c:	00e53c23          	sd	a4,24(a0)
   1e040:	06f60063          	beq	a2,a5,1e0a0 <_realloc_r+0x4f8>
   1e044:	02040713          	addi	a4,s0,32
   1e048:	02050793          	addi	a5,a0,32
   1e04c:	c75ff06f          	j	1dcc0 <_realloc_r+0x118>
   1e050:	009a8ab3          	add	s5,s5,s1
   1e054:	409687b3          	sub	a5,a3,s1
   1e058:	015c3823          	sd	s5,16(s8)
   1e05c:	0017e793          	ori	a5,a5,1
   1e060:	00fab423          	sd	a5,8(s5)
   1e064:	ff843783          	ld	a5,-8(s0)
   1e068:	00098513          	mv	a0,s3
   1e06c:	00040913          	mv	s2,s0
   1e070:	0017f793          	andi	a5,a5,1
   1e074:	0097e7b3          	or	a5,a5,s1
   1e078:	fef43c23          	sd	a5,-8(s0)
   1e07c:	eecf90ef          	jal	ra,17768 <__malloc_unlock>
   1e080:	cd5ff06f          	j	1dd54 <_realloc_r+0x1ac>
   1e084:	01040413          	addi	s0,s0,16
   1e088:	020b8793          	addi	a5,s7,32
   1e08c:	ed9ff06f          	j	1df64 <_realloc_r+0x3bc>
   1e090:	00098513          	mv	a0,s3
   1e094:	ed4f90ef          	jal	ra,17768 <__malloc_unlock>
   1e098:	00000913          	li	s2,0
   1e09c:	cb9ff06f          	j	1dd54 <_realloc_r+0x1ac>
   1e0a0:	02043683          	ld	a3,32(s0)
   1e0a4:	03040713          	addi	a4,s0,48
   1e0a8:	03050793          	addi	a5,a0,48
   1e0ac:	02d53023          	sd	a3,32(a0)
   1e0b0:	02843683          	ld	a3,40(s0)
   1e0b4:	02d53423          	sd	a3,40(a0)
   1e0b8:	c09ff06f          	j	1dcc0 <_realloc_r+0x118>
   1e0bc:	00040593          	mv	a1,s0
   1e0c0:	00090513          	mv	a0,s2
   1e0c4:	961ff0ef          	jal	ra,1da24 <memmove>
   1e0c8:	dd9ff06f          	j	1dea0 <_realloc_r+0x2f8>
   1e0cc:	01043783          	ld	a5,16(s0)
   1e0d0:	02fbb023          	sd	a5,32(s7)
   1e0d4:	01843783          	ld	a5,24(s0)
   1e0d8:	02fbb423          	sd	a5,40(s7)
   1e0dc:	00d60863          	beq	a2,a3,1e0ec <_realloc_r+0x544>
   1e0e0:	02040413          	addi	s0,s0,32
   1e0e4:	030b8793          	addi	a5,s7,48
   1e0e8:	da1ff06f          	j	1de88 <_realloc_r+0x2e0>
   1e0ec:	02043703          	ld	a4,32(s0)
   1e0f0:	040b8793          	addi	a5,s7,64
   1e0f4:	03040413          	addi	s0,s0,48
   1e0f8:	02ebb823          	sd	a4,48(s7)
   1e0fc:	ff843703          	ld	a4,-8(s0)
   1e100:	02ebbc23          	sd	a4,56(s7)
   1e104:	d85ff06f          	j	1de88 <_realloc_r+0x2e0>

000000000001e108 <cleanup_glue>:
   1e108:	fd010113          	addi	sp,sp,-48
   1e10c:	01213823          	sd	s2,16(sp)
   1e110:	0005b903          	ld	s2,0(a1)
   1e114:	02813023          	sd	s0,32(sp)
   1e118:	00913c23          	sd	s1,24(sp)
   1e11c:	02113423          	sd	ra,40(sp)
   1e120:	01313423          	sd	s3,8(sp)
   1e124:	01413023          	sd	s4,0(sp)
   1e128:	00058413          	mv	s0,a1
   1e12c:	00050493          	mv	s1,a0
   1e130:	04090263          	beqz	s2,1e174 <cleanup_glue+0x6c>
   1e134:	00093983          	ld	s3,0(s2)
   1e138:	02098863          	beqz	s3,1e168 <cleanup_glue+0x60>
   1e13c:	0009ba03          	ld	s4,0(s3)
   1e140:	000a0e63          	beqz	s4,1e15c <cleanup_glue+0x54>
   1e144:	000a3583          	ld	a1,0(s4)
   1e148:	00058463          	beqz	a1,1e150 <cleanup_glue+0x48>
   1e14c:	fbdff0ef          	jal	ra,1e108 <cleanup_glue>
   1e150:	000a0593          	mv	a1,s4
   1e154:	00048513          	mv	a0,s1
   1e158:	83df50ef          	jal	ra,13994 <_free_r>
   1e15c:	00098593          	mv	a1,s3
   1e160:	00048513          	mv	a0,s1
   1e164:	831f50ef          	jal	ra,13994 <_free_r>
   1e168:	00090593          	mv	a1,s2
   1e16c:	00048513          	mv	a0,s1
   1e170:	825f50ef          	jal	ra,13994 <_free_r>
   1e174:	00040593          	mv	a1,s0
   1e178:	02013403          	ld	s0,32(sp)
   1e17c:	02813083          	ld	ra,40(sp)
   1e180:	01013903          	ld	s2,16(sp)
   1e184:	00813983          	ld	s3,8(sp)
   1e188:	00013a03          	ld	s4,0(sp)
   1e18c:	00048513          	mv	a0,s1
   1e190:	01813483          	ld	s1,24(sp)
   1e194:	03010113          	addi	sp,sp,48
   1e198:	ffcf506f          	j	13994 <_free_r>

000000000001e19c <_reclaim_reent>:
   1e19c:	7581b783          	ld	a5,1880(gp) # 24160 <_impure_ptr>
   1e1a0:	10a78a63          	beq	a5,a0,1e2b4 <_reclaim_reent+0x118>
   1e1a4:	07853583          	ld	a1,120(a0)
   1e1a8:	fd010113          	addi	sp,sp,-48
   1e1ac:	00913c23          	sd	s1,24(sp)
   1e1b0:	02113423          	sd	ra,40(sp)
   1e1b4:	02813023          	sd	s0,32(sp)
   1e1b8:	01213823          	sd	s2,16(sp)
   1e1bc:	01313423          	sd	s3,8(sp)
   1e1c0:	00050493          	mv	s1,a0
   1e1c4:	04058063          	beqz	a1,1e204 <_reclaim_reent+0x68>
   1e1c8:	00000913          	li	s2,0
   1e1cc:	20000993          	li	s3,512
   1e1d0:	012587b3          	add	a5,a1,s2
   1e1d4:	0007b403          	ld	s0,0(a5)
   1e1d8:	00040e63          	beqz	s0,1e1f4 <_reclaim_reent+0x58>
   1e1dc:	00040593          	mv	a1,s0
   1e1e0:	00043403          	ld	s0,0(s0)
   1e1e4:	00048513          	mv	a0,s1
   1e1e8:	facf50ef          	jal	ra,13994 <_free_r>
   1e1ec:	fe0418e3          	bnez	s0,1e1dc <_reclaim_reent+0x40>
   1e1f0:	0784b583          	ld	a1,120(s1)
   1e1f4:	00890913          	addi	s2,s2,8
   1e1f8:	fd391ce3          	bne	s2,s3,1e1d0 <_reclaim_reent+0x34>
   1e1fc:	00048513          	mv	a0,s1
   1e200:	f94f50ef          	jal	ra,13994 <_free_r>
   1e204:	0604b583          	ld	a1,96(s1)
   1e208:	00058663          	beqz	a1,1e214 <_reclaim_reent+0x78>
   1e20c:	00048513          	mv	a0,s1
   1e210:	f84f50ef          	jal	ra,13994 <_free_r>
   1e214:	1f84b403          	ld	s0,504(s1)
   1e218:	02040063          	beqz	s0,1e238 <_reclaim_reent+0x9c>
   1e21c:	20048913          	addi	s2,s1,512
   1e220:	01240c63          	beq	s0,s2,1e238 <_reclaim_reent+0x9c>
   1e224:	00040593          	mv	a1,s0
   1e228:	00043403          	ld	s0,0(s0)
   1e22c:	00048513          	mv	a0,s1
   1e230:	f64f50ef          	jal	ra,13994 <_free_r>
   1e234:	fe8918e3          	bne	s2,s0,1e224 <_reclaim_reent+0x88>
   1e238:	0884b583          	ld	a1,136(s1)
   1e23c:	00058663          	beqz	a1,1e248 <_reclaim_reent+0xac>
   1e240:	00048513          	mv	a0,s1
   1e244:	f50f50ef          	jal	ra,13994 <_free_r>
   1e248:	0504a783          	lw	a5,80(s1)
   1e24c:	04078663          	beqz	a5,1e298 <_reclaim_reent+0xfc>
   1e250:	0584b783          	ld	a5,88(s1)
   1e254:	00048513          	mv	a0,s1
   1e258:	000780e7          	jalr	a5
   1e25c:	5204b403          	ld	s0,1312(s1)
   1e260:	02040c63          	beqz	s0,1e298 <_reclaim_reent+0xfc>
   1e264:	00043583          	ld	a1,0(s0)
   1e268:	00058663          	beqz	a1,1e274 <_reclaim_reent+0xd8>
   1e26c:	00048513          	mv	a0,s1
   1e270:	e99ff0ef          	jal	ra,1e108 <cleanup_glue>
   1e274:	00040593          	mv	a1,s0
   1e278:	02013403          	ld	s0,32(sp)
   1e27c:	02813083          	ld	ra,40(sp)
   1e280:	01013903          	ld	s2,16(sp)
   1e284:	00813983          	ld	s3,8(sp)
   1e288:	00048513          	mv	a0,s1
   1e28c:	01813483          	ld	s1,24(sp)
   1e290:	03010113          	addi	sp,sp,48
   1e294:	f00f506f          	j	13994 <_free_r>
   1e298:	02813083          	ld	ra,40(sp)
   1e29c:	02013403          	ld	s0,32(sp)
   1e2a0:	01813483          	ld	s1,24(sp)
   1e2a4:	01013903          	ld	s2,16(sp)
   1e2a8:	00813983          	ld	s3,8(sp)
   1e2ac:	03010113          	addi	sp,sp,48
   1e2b0:	00008067          	ret
   1e2b4:	00008067          	ret

000000000001e2b8 <__ssprint_r>:
   1e2b8:	01063783          	ld	a5,16(a2)
   1e2bc:	fb010113          	addi	sp,sp,-80
   1e2c0:	03313423          	sd	s3,40(sp)
   1e2c4:	01513c23          	sd	s5,24(sp)
   1e2c8:	04113423          	sd	ra,72(sp)
   1e2cc:	04813023          	sd	s0,64(sp)
   1e2d0:	02913c23          	sd	s1,56(sp)
   1e2d4:	03213823          	sd	s2,48(sp)
   1e2d8:	03413023          	sd	s4,32(sp)
   1e2dc:	01613823          	sd	s6,16(sp)
   1e2e0:	01713423          	sd	s7,8(sp)
   1e2e4:	01813023          	sd	s8,0(sp)
   1e2e8:	00063983          	ld	s3,0(a2)
   1e2ec:	00060a93          	mv	s5,a2
   1e2f0:	18078463          	beqz	a5,1e478 <__ssprint_r+0x1c0>
   1e2f4:	00c5a703          	lw	a4,12(a1)
   1e2f8:	0005b783          	ld	a5,0(a1)
   1e2fc:	00050b13          	mv	s6,a0
   1e300:	00058493          	mv	s1,a1
   1e304:	00000a13          	li	s4,0
   1e308:	00000413          	li	s0,0
   1e30c:	00070913          	mv	s2,a4
   1e310:	00078513          	mv	a0,a5
   1e314:	06040263          	beqz	s0,1e378 <__ssprint_r+0xc0>
   1e318:	06e47863          	bgeu	s0,a4,1e388 <__ssprint_r+0xd0>
   1e31c:	0004071b          	sext.w	a4,s0
   1e320:	00070913          	mv	s2,a4
   1e324:	00070b93          	mv	s7,a4
   1e328:	00078513          	mv	a0,a5
   1e32c:	000a0593          	mv	a1,s4
   1e330:	00090613          	mv	a2,s2
   1e334:	ef0ff0ef          	jal	ra,1da24 <memmove>
   1e338:	00c4a683          	lw	a3,12(s1)
   1e33c:	0004b783          	ld	a5,0(s1)
   1e340:	010ab703          	ld	a4,16(s5)
   1e344:	412686bb          	subw	a3,a3,s2
   1e348:	012787b3          	add	a5,a5,s2
   1e34c:	00d4a623          	sw	a3,12(s1)
   1e350:	00f4b023          	sd	a5,0(s1)
   1e354:	41770733          	sub	a4,a4,s7
   1e358:	00eab823          	sd	a4,16(s5)
   1e35c:	017a0a33          	add	s4,s4,s7
   1e360:	41740433          	sub	s0,s0,s7
   1e364:	10070a63          	beqz	a4,1e478 <__ssprint_r+0x1c0>
   1e368:	00c4a703          	lw	a4,12(s1)
   1e36c:	00078513          	mv	a0,a5
   1e370:	00070913          	mv	s2,a4
   1e374:	fa0412e3          	bnez	s0,1e318 <__ssprint_r+0x60>
   1e378:	0009ba03          	ld	s4,0(s3)
   1e37c:	0089b403          	ld	s0,8(s3)
   1e380:	01098993          	addi	s3,s3,16
   1e384:	f89ff06f          	j	1e30c <__ssprint_r+0x54>
   1e388:	01049703          	lh	a4,16(s1)
   1e38c:	00040b9b          	sext.w	s7,s0
   1e390:	48077693          	andi	a3,a4,1152
   1e394:	f8068ce3          	beqz	a3,1e32c <__ssprint_r+0x74>
   1e398:	0204a603          	lw	a2,32(s1)
   1e39c:	0184b583          	ld	a1,24(s1)
   1e3a0:	0016169b          	slliw	a3,a2,0x1
   1e3a4:	00c686bb          	addw	a3,a3,a2
   1e3a8:	40b787b3          	sub	a5,a5,a1
   1e3ac:	01f6d91b          	srliw	s2,a3,0x1f
   1e3b0:	00078b9b          	sext.w	s7,a5
   1e3b4:	00d9093b          	addw	s2,s2,a3
   1e3b8:	001b8693          	addi	a3,s7,1
   1e3bc:	4019591b          	sraiw	s2,s2,0x1
   1e3c0:	008686b3          	add	a3,a3,s0
   1e3c4:	00d97663          	bgeu	s2,a3,1e3d0 <__ssprint_r+0x118>
   1e3c8:	0017879b          	addiw	a5,a5,1
   1e3cc:	0087893b          	addw	s2,a5,s0
   1e3d0:	40077713          	andi	a4,a4,1024
   1e3d4:	06070263          	beqz	a4,1e438 <__ssprint_r+0x180>
   1e3d8:	00090593          	mv	a1,s2
   1e3dc:	000b0513          	mv	a0,s6
   1e3e0:	a75f80ef          	jal	ra,16e54 <_malloc_r>
   1e3e4:	00050c13          	mv	s8,a0
   1e3e8:	06050863          	beqz	a0,1e458 <__ssprint_r+0x1a0>
   1e3ec:	0184b583          	ld	a1,24(s1)
   1e3f0:	000b8613          	mv	a2,s7
   1e3f4:	c8cff0ef          	jal	ra,1d880 <memcpy>
   1e3f8:	0104d783          	lhu	a5,16(s1)
   1e3fc:	b7f7f793          	andi	a5,a5,-1153
   1e400:	0807e793          	ori	a5,a5,128
   1e404:	00f49823          	sh	a5,16(s1)
   1e408:	017c0533          	add	a0,s8,s7
   1e40c:	41790bbb          	subw	s7,s2,s7
   1e410:	0004071b          	sext.w	a4,s0
   1e414:	0324a023          	sw	s2,32(s1)
   1e418:	0174a623          	sw	s7,12(s1)
   1e41c:	0184bc23          	sd	s8,24(s1)
   1e420:	00a4b023          	sd	a0,0(s1)
   1e424:	00070913          	mv	s2,a4
   1e428:	00070b93          	mv	s7,a4
   1e42c:	00050793          	mv	a5,a0
   1e430:	eee47ee3          	bgeu	s0,a4,1e32c <__ssprint_r+0x74>
   1e434:	eedff06f          	j	1e320 <__ssprint_r+0x68>
   1e438:	00090613          	mv	a2,s2
   1e43c:	000b0513          	mv	a0,s6
   1e440:	f68ff0ef          	jal	ra,1dba8 <_realloc_r>
   1e444:	00050c13          	mv	s8,a0
   1e448:	fc0510e3          	bnez	a0,1e408 <__ssprint_r+0x150>
   1e44c:	0184b583          	ld	a1,24(s1)
   1e450:	000b0513          	mv	a0,s6
   1e454:	d40f50ef          	jal	ra,13994 <_free_r>
   1e458:	0104d783          	lhu	a5,16(s1)
   1e45c:	00c00713          	li	a4,12
   1e460:	00eb2023          	sw	a4,0(s6)
   1e464:	0407e793          	ori	a5,a5,64
   1e468:	00f49823          	sh	a5,16(s1)
   1e46c:	000ab823          	sd	zero,16(s5)
   1e470:	fff00513          	li	a0,-1
   1e474:	0080006f          	j	1e47c <__ssprint_r+0x1c4>
   1e478:	00000513          	li	a0,0
   1e47c:	04813083          	ld	ra,72(sp)
   1e480:	04013403          	ld	s0,64(sp)
   1e484:	000aa423          	sw	zero,8(s5)
   1e488:	03813483          	ld	s1,56(sp)
   1e48c:	03013903          	ld	s2,48(sp)
   1e490:	02813983          	ld	s3,40(sp)
   1e494:	02013a03          	ld	s4,32(sp)
   1e498:	01813a83          	ld	s5,24(sp)
   1e49c:	01013b03          	ld	s6,16(sp)
   1e4a0:	00813b83          	ld	s7,8(sp)
   1e4a4:	00013c03          	ld	s8,0(sp)
   1e4a8:	05010113          	addi	sp,sp,80
   1e4ac:	00008067          	ret

000000000001e4b0 <_svfiprintf_r>:
   1e4b0:	0105d783          	lhu	a5,16(a1)
   1e4b4:	e1010113          	addi	sp,sp,-496
   1e4b8:	1c913c23          	sd	s1,472(sp)
   1e4bc:	1d313423          	sd	s3,456(sp)
   1e4c0:	1b713423          	sd	s7,424(sp)
   1e4c4:	1b813023          	sd	s8,416(sp)
   1e4c8:	1e113423          	sd	ra,488(sp)
   1e4cc:	1e813023          	sd	s0,480(sp)
   1e4d0:	1d213823          	sd	s2,464(sp)
   1e4d4:	1d413023          	sd	s4,448(sp)
   1e4d8:	1b513c23          	sd	s5,440(sp)
   1e4dc:	1b613823          	sd	s6,432(sp)
   1e4e0:	19913c23          	sd	s9,408(sp)
   1e4e4:	19a13823          	sd	s10,400(sp)
   1e4e8:	19b13423          	sd	s11,392(sp)
   1e4ec:	0807f793          	andi	a5,a5,128
   1e4f0:	00058493          	mv	s1,a1
   1e4f4:	00050993          	mv	s3,a0
   1e4f8:	00060b93          	mv	s7,a2
   1e4fc:	00068c13          	mv	s8,a3
   1e500:	00078663          	beqz	a5,1e50c <_svfiprintf_r+0x5c>
   1e504:	0185b783          	ld	a5,24(a1)
   1e508:	700780e3          	beqz	a5,1f408 <_svfiprintf_r+0xf58>
   1e50c:	000236b7          	lui	a3,0x23
   1e510:	10010913          	addi	s2,sp,256
   1e514:	00000a93          	li	s5,0
   1e518:	bb468693          	addi	a3,a3,-1100 # 22bb4 <_ctype_+0x104>
   1e51c:	00023a37          	lui	s4,0x23
   1e520:	09213023          	sd	s2,128(sp)
   1e524:	08013823          	sd	zero,144(sp)
   1e528:	08012423          	sw	zero,136(sp)
   1e52c:	00000713          	li	a4,0
   1e530:	00090793          	mv	a5,s2
   1e534:	00013823          	sd	zero,16(sp)
   1e538:	04013023          	sd	zero,64(sp)
   1e53c:	02013c23          	sd	zero,56(sp)
   1e540:	04013423          	sd	zero,72(sp)
   1e544:	00d13423          	sd	a3,8(sp)
   1e548:	01000413          	li	s0,16
   1e54c:	d20a0a13          	addi	s4,s4,-736 # 22d20 <zeroes.0>
   1e550:	000a8c93          	mv	s9,s5
   1e554:	000b8813          	mv	a6,s7
   1e558:	00084683          	lbu	a3,0(a6)
   1e55c:	1e068e63          	beqz	a3,1e758 <_svfiprintf_r+0x2a8>
   1e560:	00080b13          	mv	s6,a6
   1e564:	02500613          	li	a2,37
   1e568:	22c68e63          	beq	a3,a2,1e7a4 <_svfiprintf_r+0x2f4>
   1e56c:	001b4683          	lbu	a3,1(s6)
   1e570:	001b0b13          	addi	s6,s6,1
   1e574:	fe069ae3          	bnez	a3,1e568 <_svfiprintf_r+0xb8>
   1e578:	410b0abb          	subw	s5,s6,a6
   1e57c:	1c0a8e63          	beqz	s5,1e758 <_svfiprintf_r+0x2a8>
   1e580:	08812683          	lw	a3,136(sp)
   1e584:	01570733          	add	a4,a4,s5
   1e588:	0107b023          	sd	a6,0(a5)
   1e58c:	0016861b          	addiw	a2,a3,1
   1e590:	0157b423          	sd	s5,8(a5)
   1e594:	08e13823          	sd	a4,144(sp)
   1e598:	08c12423          	sw	a2,136(sp)
   1e59c:	00700693          	li	a3,7
   1e5a0:	01078793          	addi	a5,a5,16
   1e5a4:	20c6c863          	blt	a3,a2,1e7b4 <_svfiprintf_r+0x304>
   1e5a8:	000b4683          	lbu	a3,0(s6)
   1e5ac:	015c8cbb          	addw	s9,s9,s5
   1e5b0:	1a068463          	beqz	a3,1e758 <_svfiprintf_r+0x2a8>
   1e5b4:	00000e13          	li	t3,0
   1e5b8:	00000893          	li	a7,0
   1e5bc:	001b4683          	lbu	a3,1(s6)
   1e5c0:	001b0813          	addi	a6,s6,1
   1e5c4:	06010ba3          	sb	zero,119(sp)
   1e5c8:	fff00a93          	li	s5,-1
   1e5cc:	05a00b93          	li	s7,90
   1e5d0:	00088b13          	mv	s6,a7
   1e5d4:	000e0d13          	mv	s10,t3
   1e5d8:	00078d93          	mv	s11,a5
   1e5dc:	00180813          	addi	a6,a6,1
   1e5e0:	0006869b          	sext.w	a3,a3
   1e5e4:	fe06861b          	addiw	a2,a3,-32
   1e5e8:	0006059b          	sext.w	a1,a2
   1e5ec:	04bbec63          	bltu	s7,a1,1e644 <_svfiprintf_r+0x194>
   1e5f0:	00813783          	ld	a5,8(sp)
   1e5f4:	02061593          	slli	a1,a2,0x20
   1e5f8:	01e5d613          	srli	a2,a1,0x1e
   1e5fc:	00f60633          	add	a2,a2,a5
   1e600:	00062603          	lw	a2,0(a2)
   1e604:	00060067          	jr	a2
   1e608:	00000d13          	li	s10,0
   1e60c:	00900513          	li	a0,9
   1e610:	00084583          	lbu	a1,0(a6)
   1e614:	002d161b          	slliw	a2,s10,0x2
   1e618:	01a60e3b          	addw	t3,a2,s10
   1e61c:	fd06869b          	addiw	a3,a3,-48
   1e620:	001e1e1b          	slliw	t3,t3,0x1
   1e624:	fd05861b          	addiw	a2,a1,-48
   1e628:	01c68d3b          	addw	s10,a3,t3
   1e62c:	00180813          	addi	a6,a6,1
   1e630:	0005869b          	sext.w	a3,a1
   1e634:	fcc57ee3          	bgeu	a0,a2,1e610 <_svfiprintf_r+0x160>
   1e638:	fe06861b          	addiw	a2,a3,-32
   1e63c:	0006059b          	sext.w	a1,a2
   1e640:	fabbf8e3          	bgeu	s7,a1,1e5f0 <_svfiprintf_r+0x140>
   1e644:	000b0893          	mv	a7,s6
   1e648:	000d0e13          	mv	t3,s10
   1e64c:	000d8793          	mv	a5,s11
   1e650:	10068463          	beqz	a3,1e758 <_svfiprintf_r+0x2a8>
   1e654:	08d10c23          	sb	a3,152(sp)
   1e658:	06010ba3          	sb	zero,119(sp)
   1e65c:	00100d93          	li	s11,1
   1e660:	00100d13          	li	s10,1
   1e664:	09810b93          	addi	s7,sp,152
   1e668:	00000a93          	li	s5,0
   1e66c:	0028f293          	andi	t0,a7,2
   1e670:	00028463          	beqz	t0,1e678 <_svfiprintf_r+0x1c8>
   1e674:	002d8d9b          	addiw	s11,s11,2
   1e678:	0848ff93          	andi	t6,a7,132
   1e67c:	08812683          	lw	a3,136(sp)
   1e680:	000f9663          	bnez	t6,1e68c <_svfiprintf_r+0x1dc>
   1e684:	41be0b3b          	subw	s6,t3,s11
   1e688:	0f6044e3          	bgtz	s6,1ef70 <_svfiprintf_r+0xac0>
   1e68c:	07714603          	lbu	a2,119(sp)
   1e690:	02060863          	beqz	a2,1e6c0 <_svfiprintf_r+0x210>
   1e694:	07710593          	addi	a1,sp,119
   1e698:	00b7b023          	sd	a1,0(a5)
   1e69c:	0016869b          	addiw	a3,a3,1
   1e6a0:	00170713          	addi	a4,a4,1
   1e6a4:	00100593          	li	a1,1
   1e6a8:	00b7b423          	sd	a1,8(a5)
   1e6ac:	08e13823          	sd	a4,144(sp)
   1e6b0:	08d12423          	sw	a3,136(sp)
   1e6b4:	00700613          	li	a2,7
   1e6b8:	01078793          	addi	a5,a5,16
   1e6bc:	16d64463          	blt	a2,a3,1e824 <_svfiprintf_r+0x374>
   1e6c0:	02028863          	beqz	t0,1e6f0 <_svfiprintf_r+0x240>
   1e6c4:	07810593          	addi	a1,sp,120
   1e6c8:	00b7b023          	sd	a1,0(a5)
   1e6cc:	0016869b          	addiw	a3,a3,1
   1e6d0:	00270713          	addi	a4,a4,2
   1e6d4:	00200593          	li	a1,2
   1e6d8:	00b7b423          	sd	a1,8(a5)
   1e6dc:	08e13823          	sd	a4,144(sp)
   1e6e0:	08d12423          	sw	a3,136(sp)
   1e6e4:	00700613          	li	a2,7
   1e6e8:	01078793          	addi	a5,a5,16
   1e6ec:	1ad644e3          	blt	a2,a3,1f094 <_svfiprintf_r+0xbe4>
   1e6f0:	08000613          	li	a2,128
   1e6f4:	5ecf8263          	beq	t6,a2,1ecd8 <_svfiprintf_r+0x828>
   1e6f8:	41aa8b3b          	subw	s6,s5,s10
   1e6fc:	6f604663          	bgtz	s6,1ede8 <_svfiprintf_r+0x938>
   1e700:	0016861b          	addiw	a2,a3,1
   1e704:	01a70733          	add	a4,a4,s10
   1e708:	0177b023          	sd	s7,0(a5)
   1e70c:	01a7b423          	sd	s10,8(a5)
   1e710:	08e13823          	sd	a4,144(sp)
   1e714:	08c12423          	sw	a2,136(sp)
   1e718:	00700693          	li	a3,7
   1e71c:	01078793          	addi	a5,a5,16
   1e720:	7ac6c663          	blt	a3,a2,1eecc <_svfiprintf_r+0xa1c>
   1e724:	0048f893          	andi	a7,a7,4
   1e728:	00088663          	beqz	a7,1e734 <_svfiprintf_r+0x284>
   1e72c:	41be0abb          	subw	s5,t3,s11
   1e730:	1b5044e3          	bgtz	s5,1f0d8 <_svfiprintf_r+0xc28>
   1e734:	000e0793          	mv	a5,t3
   1e738:	01be5463          	bge	t3,s11,1e740 <_svfiprintf_r+0x290>
   1e73c:	000d8793          	mv	a5,s11
   1e740:	01978cbb          	addw	s9,a5,s9
   1e744:	7c071063          	bnez	a4,1ef04 <_svfiprintf_r+0xa54>
   1e748:	00084683          	lbu	a3,0(a6)
   1e74c:	08012423          	sw	zero,136(sp)
   1e750:	00090793          	mv	a5,s2
   1e754:	e00696e3          	bnez	a3,1e560 <_svfiprintf_r+0xb0>
   1e758:	000c8a93          	mv	s5,s9
   1e75c:	06070e63          	beqz	a4,1e7d8 <_svfiprintf_r+0x328>
   1e760:	08010613          	addi	a2,sp,128
   1e764:	00048593          	mv	a1,s1
   1e768:	00098513          	mv	a0,s3
   1e76c:	b4dff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1e770:	0680006f          	j	1e7d8 <_svfiprintf_r+0x328>
   1e774:	010b6893          	ori	a7,s6,16
   1e778:	00084683          	lbu	a3,0(a6)
   1e77c:	00088b1b          	sext.w	s6,a7
   1e780:	e5dff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1e784:	000c2d03          	lw	s10,0(s8)
   1e788:	008c0c13          	addi	s8,s8,8
   1e78c:	460d5a63          	bgez	s10,1ec00 <_svfiprintf_r+0x750>
   1e790:	41a00d3b          	negw	s10,s10
   1e794:	004b6893          	ori	a7,s6,4
   1e798:	00084683          	lbu	a3,0(a6)
   1e79c:	00088b1b          	sext.w	s6,a7
   1e7a0:	e3dff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1e7a4:	410b0abb          	subw	s5,s6,a6
   1e7a8:	dc0a9ce3          	bnez	s5,1e580 <_svfiprintf_r+0xd0>
   1e7ac:	000b4683          	lbu	a3,0(s6)
   1e7b0:	e01ff06f          	j	1e5b0 <_svfiprintf_r+0x100>
   1e7b4:	08010613          	addi	a2,sp,128
   1e7b8:	00048593          	mv	a1,s1
   1e7bc:	00098513          	mv	a0,s3
   1e7c0:	af9ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1e7c4:	00051863          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1e7c8:	09013703          	ld	a4,144(sp)
   1e7cc:	00090793          	mv	a5,s2
   1e7d0:	dd9ff06f          	j	1e5a8 <_svfiprintf_r+0xf8>
   1e7d4:	000c8a93          	mv	s5,s9
   1e7d8:	0104d783          	lhu	a5,16(s1)
   1e7dc:	0407f793          	andi	a5,a5,64
   1e7e0:	58079ae3          	bnez	a5,1f574 <_svfiprintf_r+0x10c4>
   1e7e4:	1e813083          	ld	ra,488(sp)
   1e7e8:	1e013403          	ld	s0,480(sp)
   1e7ec:	1d813483          	ld	s1,472(sp)
   1e7f0:	1d013903          	ld	s2,464(sp)
   1e7f4:	1c813983          	ld	s3,456(sp)
   1e7f8:	1c013a03          	ld	s4,448(sp)
   1e7fc:	1b013b03          	ld	s6,432(sp)
   1e800:	1a813b83          	ld	s7,424(sp)
   1e804:	1a013c03          	ld	s8,416(sp)
   1e808:	19813c83          	ld	s9,408(sp)
   1e80c:	19013d03          	ld	s10,400(sp)
   1e810:	18813d83          	ld	s11,392(sp)
   1e814:	000a8513          	mv	a0,s5
   1e818:	1b813a83          	ld	s5,440(sp)
   1e81c:	1f010113          	addi	sp,sp,496
   1e820:	00008067          	ret
   1e824:	08010613          	addi	a2,sp,128
   1e828:	00048593          	mv	a1,s1
   1e82c:	00098513          	mv	a0,s3
   1e830:	05013823          	sd	a6,80(sp)
   1e834:	03c13823          	sd	t3,48(sp)
   1e838:	03f13423          	sd	t6,40(sp)
   1e83c:	02513023          	sd	t0,32(sp)
   1e840:	01113c23          	sd	a7,24(sp)
   1e844:	a75ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1e848:	f80516e3          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1e84c:	09013703          	ld	a4,144(sp)
   1e850:	08812683          	lw	a3,136(sp)
   1e854:	05013803          	ld	a6,80(sp)
   1e858:	03013e03          	ld	t3,48(sp)
   1e85c:	02813f83          	ld	t6,40(sp)
   1e860:	02013283          	ld	t0,32(sp)
   1e864:	01813883          	ld	a7,24(sp)
   1e868:	00090793          	mv	a5,s2
   1e86c:	e55ff06f          	j	1e6c0 <_svfiprintf_r+0x210>
   1e870:	000c3b83          	ld	s7,0(s8)
   1e874:	06010ba3          	sb	zero,119(sp)
   1e878:	000b0893          	mv	a7,s6
   1e87c:	000d0e13          	mv	t3,s10
   1e880:	000d8793          	mv	a5,s11
   1e884:	008c0c13          	addi	s8,s8,8
   1e888:	400b8ae3          	beqz	s7,1f49c <_svfiprintf_r+0xfec>
   1e88c:	fff00693          	li	a3,-1
   1e890:	05013823          	sd	a6,80(sp)
   1e894:	02e13823          	sd	a4,48(sp)
   1e898:	03b13423          	sd	s11,40(sp)
   1e89c:	03a13023          	sd	s10,32(sp)
   1e8a0:	01613c23          	sd	s6,24(sp)
   1e8a4:	32da82e3          	beq	s5,a3,1f3c8 <_svfiprintf_r+0xf18>
   1e8a8:	000a8613          	mv	a2,s5
   1e8ac:	00000593          	li	a1,0
   1e8b0:	000b8513          	mv	a0,s7
   1e8b4:	dedf80ef          	jal	ra,176a0 <memchr>
   1e8b8:	01813883          	ld	a7,24(sp)
   1e8bc:	02013e03          	ld	t3,32(sp)
   1e8c0:	02813783          	ld	a5,40(sp)
   1e8c4:	03013703          	ld	a4,48(sp)
   1e8c8:	05013803          	ld	a6,80(sp)
   1e8cc:	46050ce3          	beqz	a0,1f544 <_svfiprintf_r+0x1094>
   1e8d0:	41750d3b          	subw	s10,a0,s7
   1e8d4:	fffd4d93          	not	s11,s10
   1e8d8:	43fddd93          	srai	s11,s11,0x3f
   1e8dc:	01adfdb3          	and	s11,s11,s10
   1e8e0:	00000a93          	li	s5,0
   1e8e4:	1600006f          	j	1ea44 <_svfiprintf_r+0x594>
   1e8e8:	000c2683          	lw	a3,0(s8)
   1e8ec:	000d0e13          	mv	t3,s10
   1e8f0:	000d8793          	mv	a5,s11
   1e8f4:	000b0893          	mv	a7,s6
   1e8f8:	06010ba3          	sb	zero,119(sp)
   1e8fc:	008c0c13          	addi	s8,s8,8
   1e900:	08d10c23          	sb	a3,152(sp)
   1e904:	00100d93          	li	s11,1
   1e908:	00100d13          	li	s10,1
   1e90c:	09810b93          	addi	s7,sp,152
   1e910:	d59ff06f          	j	1e668 <_svfiprintf_r+0x1b8>
   1e914:	000b0893          	mv	a7,s6
   1e918:	000d0e13          	mv	t3,s10
   1e91c:	000d8793          	mv	a5,s11
   1e920:	0208f693          	andi	a3,a7,32
   1e924:	008c0613          	addi	a2,s8,8
   1e928:	04069863          	bnez	a3,1e978 <_svfiprintf_r+0x4c8>
   1e92c:	0108f693          	andi	a3,a7,16
   1e930:	04069463          	bnez	a3,1e978 <_svfiprintf_r+0x4c8>
   1e934:	0408f593          	andi	a1,a7,64
   1e938:	000c2683          	lw	a3,0(s8)
   1e93c:	3c0580e3          	beqz	a1,1f4fc <_svfiprintf_r+0x104c>
   1e940:	01069d9b          	slliw	s11,a3,0x10
   1e944:	410ddd9b          	sraiw	s11,s11,0x10
   1e948:	000d8593          	mv	a1,s11
   1e94c:	0205cc63          	bltz	a1,1e984 <_svfiprintf_r+0x4d4>
   1e950:	fff00593          	li	a1,-1
   1e954:	04ba8663          	beq	s5,a1,1e9a0 <_svfiprintf_r+0x4f0>
   1e958:	f7f8f893          	andi	a7,a7,-129
   1e95c:	0008889b          	sext.w	a7,a7
   1e960:	040d9063          	bnez	s11,1e9a0 <_svfiprintf_r+0x4f0>
   1e964:	3e0a98e3          	bnez	s5,1f554 <_svfiprintf_r+0x10a4>
   1e968:	00000d13          	li	s10,0
   1e96c:	00060c13          	mv	s8,a2
   1e970:	0fc10b93          	addi	s7,sp,252
   1e974:	0d00006f          	j	1ea44 <_svfiprintf_r+0x594>
   1e978:	000c3583          	ld	a1,0(s8)
   1e97c:	00058d93          	mv	s11,a1
   1e980:	fc05d8e3          	bgez	a1,1e950 <_svfiprintf_r+0x4a0>
   1e984:	02d00593          	li	a1,45
   1e988:	06b10ba3          	sb	a1,119(sp)
   1e98c:	fff00593          	li	a1,-1
   1e990:	41b00db3          	neg	s11,s11
   1e994:	00ba8663          	beq	s5,a1,1e9a0 <_svfiprintf_r+0x4f0>
   1e998:	f7f8f893          	andi	a7,a7,-129
   1e99c:	0008889b          	sext.w	a7,a7
   1e9a0:	00900593          	li	a1,9
   1e9a4:	03b5eae3          	bltu	a1,s11,1f1d8 <_svfiprintf_r+0xd28>
   1e9a8:	030d869b          	addiw	a3,s11,48
   1e9ac:	0ff6f693          	zext.b	a3,a3
   1e9b0:	00060c13          	mv	s8,a2
   1e9b4:	0ed10da3          	sb	a3,251(sp)
   1e9b8:	000a8d9b          	sext.w	s11,s5
   1e9bc:	01504463          	bgtz	s5,1e9c4 <_svfiprintf_r+0x514>
   1e9c0:	00100d93          	li	s11,1
   1e9c4:	00100d13          	li	s10,1
   1e9c8:	0fb10b93          	addi	s7,sp,251
   1e9cc:	0780006f          	j	1ea44 <_svfiprintf_r+0x594>
   1e9d0:	010b6693          	ori	a3,s6,16
   1e9d4:	000d0e13          	mv	t3,s10
   1e9d8:	000d8793          	mv	a5,s11
   1e9dc:	0006869b          	sext.w	a3,a3
   1e9e0:	0206f613          	andi	a2,a3,32
   1e9e4:	008c0513          	addi	a0,s8,8
   1e9e8:	00061663          	bnez	a2,1e9f4 <_svfiprintf_r+0x544>
   1e9ec:	0106f613          	andi	a2,a3,16
   1e9f0:	0e060ce3          	beqz	a2,1f2e8 <_svfiprintf_r+0xe38>
   1e9f4:	000c3603          	ld	a2,0(s8)
   1e9f8:	bff6f893          	andi	a7,a3,-1025
   1e9fc:	06010ba3          	sb	zero,119(sp)
   1ea00:	fff00593          	li	a1,-1
   1ea04:	0008889b          	sext.w	a7,a7
   1ea08:	00050c13          	mv	s8,a0
   1ea0c:	0eba8863          	beq	s5,a1,1eafc <_svfiprintf_r+0x64c>
   1ea10:	b7f6f693          	andi	a3,a3,-1153
   1ea14:	0006869b          	sext.w	a3,a3
   1ea18:	240616e3          	bnez	a2,1f464 <_svfiprintf_r+0xfb4>
   1ea1c:	00088d13          	mv	s10,a7
   1ea20:	00068893          	mv	a7,a3
   1ea24:	0c0a9263          	bnez	s5,1eae8 <_svfiprintf_r+0x638>
   1ea28:	7a061063          	bnez	a2,1f1c8 <_svfiprintf_r+0xd18>
   1ea2c:	001d7d13          	andi	s10,s10,1
   1ea30:	060d0ce3          	beqz	s10,1f2a8 <_svfiprintf_r+0xdf8>
   1ea34:	03000693          	li	a3,48
   1ea38:	0ed10da3          	sb	a3,251(sp)
   1ea3c:	000d0d93          	mv	s11,s10
   1ea40:	0fb10b93          	addi	s7,sp,251
   1ea44:	07714683          	lbu	a3,119(sp)
   1ea48:	c20682e3          	beqz	a3,1e66c <_svfiprintf_r+0x1bc>
   1ea4c:	001d8d9b          	addiw	s11,s11,1
   1ea50:	c1dff06f          	j	1e66c <_svfiprintf_r+0x1bc>
   1ea54:	010b6893          	ori	a7,s6,16
   1ea58:	000d0e13          	mv	t3,s10
   1ea5c:	000d8793          	mv	a5,s11
   1ea60:	0008889b          	sext.w	a7,a7
   1ea64:	ebdff06f          	j	1e920 <_svfiprintf_r+0x470>
   1ea68:	00084683          	lbu	a3,0(a6)
   1ea6c:	06c00613          	li	a2,108
   1ea70:	20c68ce3          	beq	a3,a2,1f488 <_svfiprintf_r+0xfd8>
   1ea74:	010b6893          	ori	a7,s6,16
   1ea78:	00088b1b          	sext.w	s6,a7
   1ea7c:	b61ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1ea80:	00084683          	lbu	a3,0(a6)
   1ea84:	06800613          	li	a2,104
   1ea88:	1ec686e3          	beq	a3,a2,1f474 <_svfiprintf_r+0xfc4>
   1ea8c:	040b6893          	ori	a7,s6,64
   1ea90:	00088b1b          	sext.w	s6,a7
   1ea94:	b49ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1ea98:	000d0e13          	mv	t3,s10
   1ea9c:	010b6d13          	ori	s10,s6,16
   1eaa0:	000d8793          	mv	a5,s11
   1eaa4:	000d0d1b          	sext.w	s10,s10
   1eaa8:	020d7693          	andi	a3,s10,32
   1eaac:	008c0613          	addi	a2,s8,8
   1eab0:	00069663          	bnez	a3,1eabc <_svfiprintf_r+0x60c>
   1eab4:	010d7693          	andi	a3,s10,16
   1eab8:	00068ce3          	beqz	a3,1f2d0 <_svfiprintf_r+0xe20>
   1eabc:	000c3d83          	ld	s11,0(s8)
   1eac0:	06010ba3          	sb	zero,119(sp)
   1eac4:	fff00593          	li	a1,-1
   1eac8:	000d0893          	mv	a7,s10
   1eacc:	ecba8ae3          	beq	s5,a1,1e9a0 <_svfiprintf_r+0x4f0>
   1ead0:	f7fd7893          	andi	a7,s10,-129
   1ead4:	0008889b          	sext.w	a7,a7
   1ead8:	ec0d94e3          	bnez	s11,1e9a0 <_svfiprintf_r+0x4f0>
   1eadc:	00060c13          	mv	s8,a2
   1eae0:	00100613          	li	a2,1
   1eae4:	f40a82e3          	beqz	s5,1ea28 <_svfiprintf_r+0x578>
   1eae8:	00100693          	li	a3,1
   1eaec:	26d606e3          	beq	a2,a3,1f558 <_svfiprintf_r+0x10a8>
   1eaf0:	00200693          	li	a3,2
   1eaf4:	1cd604e3          	beq	a2,a3,1f4bc <_svfiprintf_r+0x100c>
   1eaf8:	00000613          	li	a2,0
   1eafc:	0fc10593          	addi	a1,sp,252
   1eb00:	00058b93          	mv	s7,a1
   1eb04:	00767693          	andi	a3,a2,7
   1eb08:	03068693          	addi	a3,a3,48
   1eb0c:	fedb8fa3          	sb	a3,-1(s7)
   1eb10:	00365613          	srli	a2,a2,0x3
   1eb14:	000b8513          	mv	a0,s7
   1eb18:	fffb8b93          	addi	s7,s7,-1
   1eb1c:	fe0614e3          	bnez	a2,1eb04 <_svfiprintf_r+0x654>
   1eb20:	0018f613          	andi	a2,a7,1
   1eb24:	68060863          	beqz	a2,1f1b4 <_svfiprintf_r+0xd04>
   1eb28:	03000613          	li	a2,48
   1eb2c:	68c68463          	beq	a3,a2,1f1b4 <_svfiprintf_r+0xd04>
   1eb30:	ffe50513          	addi	a0,a0,-2
   1eb34:	40a58d3b          	subw	s10,a1,a0
   1eb38:	fecb8fa3          	sb	a2,-1(s7)
   1eb3c:	000d0d9b          	sext.w	s11,s10
   1eb40:	7d5d4063          	blt	s10,s5,1f300 <_svfiprintf_r+0xe50>
   1eb44:	00050b93          	mv	s7,a0
   1eb48:	efdff06f          	j	1ea44 <_svfiprintf_r+0x594>
   1eb4c:	080b6893          	ori	a7,s6,128
   1eb50:	00084683          	lbu	a3,0(a6)
   1eb54:	00088b1b          	sext.w	s6,a7
   1eb58:	a85ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1eb5c:	00084683          	lbu	a3,0(a6)
   1eb60:	02a00513          	li	a0,42
   1eb64:	00180613          	addi	a2,a6,1
   1eb68:	20a68ae3          	beq	a3,a0,1f57c <_svfiprintf_r+0x10cc>
   1eb6c:	fd06859b          	addiw	a1,a3,-48
   1eb70:	00900313          	li	t1,9
   1eb74:	00060813          	mv	a6,a2
   1eb78:	00000a93          	li	s5,0
   1eb7c:	00900513          	li	a0,9
   1eb80:	a6b362e3          	bltu	t1,a1,1e5e4 <_svfiprintf_r+0x134>
   1eb84:	00084683          	lbu	a3,0(a6)
   1eb88:	002a961b          	slliw	a2,s5,0x2
   1eb8c:	01560abb          	addw	s5,a2,s5
   1eb90:	001a9a9b          	slliw	s5,s5,0x1
   1eb94:	00ba8abb          	addw	s5,s5,a1
   1eb98:	fd06859b          	addiw	a1,a3,-48
   1eb9c:	00180813          	addi	a6,a6,1
   1eba0:	feb572e3          	bgeu	a0,a1,1eb84 <_svfiprintf_r+0x6d4>
   1eba4:	a41ff06f          	j	1e5e4 <_svfiprintf_r+0x134>
   1eba8:	02b00613          	li	a2,43
   1ebac:	00084683          	lbu	a3,0(a6)
   1ebb0:	06c10ba3          	sb	a2,119(sp)
   1ebb4:	a29ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1ebb8:	00098513          	mv	a0,s3
   1ebbc:	03013023          	sd	a6,32(sp)
   1ebc0:	00e13c23          	sd	a4,24(sp)
   1ebc4:	f19f70ef          	jal	ra,16adc <_localeconv_r>
   1ebc8:	00853783          	ld	a5,8(a0)
   1ebcc:	00078513          	mv	a0,a5
   1ebd0:	04f13423          	sd	a5,72(sp)
   1ebd4:	c50fa0ef          	jal	ra,19024 <strlen>
   1ebd8:	00050693          	mv	a3,a0
   1ebdc:	00098513          	mv	a0,s3
   1ebe0:	02d13c23          	sd	a3,56(sp)
   1ebe4:	ef9f70ef          	jal	ra,16adc <_localeconv_r>
   1ebe8:	01053603          	ld	a2,16(a0)
   1ebec:	03813783          	ld	a5,56(sp)
   1ebf0:	01813703          	ld	a4,24(sp)
   1ebf4:	04c13023          	sd	a2,64(sp)
   1ebf8:	02013803          	ld	a6,32(sp)
   1ebfc:	6a079c63          	bnez	a5,1f2b4 <_svfiprintf_r+0xe04>
   1ec00:	00084683          	lbu	a3,0(a6)
   1ec04:	9d9ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1ec08:	001b6893          	ori	a7,s6,1
   1ec0c:	00084683          	lbu	a3,0(a6)
   1ec10:	00088b1b          	sext.w	s6,a7
   1ec14:	9c9ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1ec18:	07714603          	lbu	a2,119(sp)
   1ec1c:	00084683          	lbu	a3,0(a6)
   1ec20:	9a061ee3          	bnez	a2,1e5dc <_svfiprintf_r+0x12c>
   1ec24:	02000613          	li	a2,32
   1ec28:	06c10ba3          	sb	a2,119(sp)
   1ec2c:	9b1ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1ec30:	020b6893          	ori	a7,s6,32
   1ec34:	00084683          	lbu	a3,0(a6)
   1ec38:	00088b1b          	sext.w	s6,a7
   1ec3c:	9a1ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1ec40:	ffff86b7          	lui	a3,0xffff8
   1ec44:	8306c693          	xori	a3,a3,-2000
   1ec48:	06d11c23          	sh	a3,120(sp)
   1ec4c:	000226b7          	lui	a3,0x22
   1ec50:	002b6893          	ori	a7,s6,2
   1ec54:	fa868693          	addi	a3,a3,-88 # 21fa8 <__clzdi2+0x94>
   1ec58:	000c3603          	ld	a2,0(s8)
   1ec5c:	000d0e13          	mv	t3,s10
   1ec60:	000d8793          	mv	a5,s11
   1ec64:	0008889b          	sext.w	a7,a7
   1ec68:	008c0c13          	addi	s8,s8,8
   1ec6c:	00d13823          	sd	a3,16(sp)
   1ec70:	06010ba3          	sb	zero,119(sp)
   1ec74:	fff00693          	li	a3,-1
   1ec78:	2ada8e63          	beq	s5,a3,1ef34 <_svfiprintf_r+0xa84>
   1ec7c:	f7f8f693          	andi	a3,a7,-129
   1ec80:	0006869b          	sext.w	a3,a3
   1ec84:	2a061263          	bnez	a2,1ef28 <_svfiprintf_r+0xa78>
   1ec88:	00088d13          	mv	s10,a7
   1ec8c:	00200613          	li	a2,2
   1ec90:	00068893          	mv	a7,a3
   1ec94:	d91ff06f          	j	1ea24 <_svfiprintf_r+0x574>
   1ec98:	020b7693          	andi	a3,s6,32
   1ec9c:	000c3603          	ld	a2,0(s8)
   1eca0:	000d8793          	mv	a5,s11
   1eca4:	02069463          	bnez	a3,1eccc <_svfiprintf_r+0x81c>
   1eca8:	010b7693          	andi	a3,s6,16
   1ecac:	02069063          	bnez	a3,1eccc <_svfiprintf_r+0x81c>
   1ecb0:	040b7693          	andi	a3,s6,64
   1ecb4:	060690e3          	bnez	a3,1f514 <_svfiprintf_r+0x1064>
   1ecb8:	200b7893          	andi	a7,s6,512
   1ecbc:	0a0882e3          	beqz	a7,1f560 <_svfiprintf_r+0x10b0>
   1ecc0:	01960023          	sb	s9,0(a2)
   1ecc4:	008c0c13          	addi	s8,s8,8
   1ecc8:	891ff06f          	j	1e558 <_svfiprintf_r+0xa8>
   1eccc:	01963023          	sd	s9,0(a2)
   1ecd0:	008c0c13          	addi	s8,s8,8
   1ecd4:	885ff06f          	j	1e558 <_svfiprintf_r+0xa8>
   1ecd8:	41be0b3b          	subw	s6,t3,s11
   1ecdc:	a1605ee3          	blez	s6,1e6f8 <_svfiprintf_r+0x248>
   1ece0:	00023eb7          	lui	t4,0x23
   1ece4:	01000613          	li	a2,16
   1ece8:	d20e8e93          	addi	t4,t4,-736 # 22d20 <zeroes.0>
   1ecec:	09665c63          	bge	a2,s6,1ed84 <_svfiprintf_r+0x8d4>
   1ecf0:	03513423          	sd	s5,40(sp)
   1ecf4:	01000f13          	li	t5,16
   1ecf8:	000b0a93          	mv	s5,s6
   1ecfc:	00700f93          	li	t6,7
   1ed00:	01113c23          	sd	a7,24(sp)
   1ed04:	03c13023          	sd	t3,32(sp)
   1ed08:	03013823          	sd	a6,48(sp)
   1ed0c:	000e8b13          	mv	s6,t4
   1ed10:	00c0006f          	j	1ed1c <_svfiprintf_r+0x86c>
   1ed14:	ff0a8a9b          	addiw	s5,s5,-16
   1ed18:	055f5a63          	bge	t5,s5,1ed6c <_svfiprintf_r+0x8bc>
   1ed1c:	0016869b          	addiw	a3,a3,1
   1ed20:	01070713          	addi	a4,a4,16
   1ed24:	0167b023          	sd	s6,0(a5)
   1ed28:	01e7b423          	sd	t5,8(a5)
   1ed2c:	08e13823          	sd	a4,144(sp)
   1ed30:	08d12423          	sw	a3,136(sp)
   1ed34:	01078793          	addi	a5,a5,16
   1ed38:	fcdfdee3          	bge	t6,a3,1ed14 <_svfiprintf_r+0x864>
   1ed3c:	08010613          	addi	a2,sp,128
   1ed40:	00048593          	mv	a1,s1
   1ed44:	00098513          	mv	a0,s3
   1ed48:	d70ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1ed4c:	a80514e3          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1ed50:	01000f13          	li	t5,16
   1ed54:	ff0a8a9b          	addiw	s5,s5,-16
   1ed58:	09013703          	ld	a4,144(sp)
   1ed5c:	08812683          	lw	a3,136(sp)
   1ed60:	00090793          	mv	a5,s2
   1ed64:	00700f93          	li	t6,7
   1ed68:	fb5f4ae3          	blt	t5,s5,1ed1c <_svfiprintf_r+0x86c>
   1ed6c:	000b0e93          	mv	t4,s6
   1ed70:	01813883          	ld	a7,24(sp)
   1ed74:	000a8b13          	mv	s6,s5
   1ed78:	02013e03          	ld	t3,32(sp)
   1ed7c:	03013803          	ld	a6,48(sp)
   1ed80:	02813a83          	ld	s5,40(sp)
   1ed84:	0016869b          	addiw	a3,a3,1
   1ed88:	01670733          	add	a4,a4,s6
   1ed8c:	01d7b023          	sd	t4,0(a5)
   1ed90:	0167b423          	sd	s6,8(a5)
   1ed94:	08e13823          	sd	a4,144(sp)
   1ed98:	08d12423          	sw	a3,136(sp)
   1ed9c:	00700613          	li	a2,7
   1eda0:	01078793          	addi	a5,a5,16
   1eda4:	94d65ae3          	bge	a2,a3,1e6f8 <_svfiprintf_r+0x248>
   1eda8:	08010613          	addi	a2,sp,128
   1edac:	00048593          	mv	a1,s1
   1edb0:	00098513          	mv	a0,s3
   1edb4:	03013423          	sd	a6,40(sp)
   1edb8:	03c13023          	sd	t3,32(sp)
   1edbc:	01113c23          	sd	a7,24(sp)
   1edc0:	cf8ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1edc4:	a00518e3          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1edc8:	41aa8b3b          	subw	s6,s5,s10
   1edcc:	09013703          	ld	a4,144(sp)
   1edd0:	08812683          	lw	a3,136(sp)
   1edd4:	02813803          	ld	a6,40(sp)
   1edd8:	02013e03          	ld	t3,32(sp)
   1eddc:	01813883          	ld	a7,24(sp)
   1ede0:	00090793          	mv	a5,s2
   1ede4:	91605ee3          	blez	s6,1e700 <_svfiprintf_r+0x250>
   1ede8:	00023eb7          	lui	t4,0x23
   1edec:	d20e8e93          	addi	t4,t4,-736 # 22d20 <zeroes.0>
   1edf0:	07645e63          	bge	s0,s6,1ee6c <_svfiprintf_r+0x9bc>
   1edf4:	00700a93          	li	s5,7
   1edf8:	01113c23          	sd	a7,24(sp)
   1edfc:	03c13023          	sd	t3,32(sp)
   1ee00:	03013423          	sd	a6,40(sp)
   1ee04:	03413823          	sd	s4,48(sp)
   1ee08:	00c0006f          	j	1ee14 <_svfiprintf_r+0x964>
   1ee0c:	ff0b0b1b          	addiw	s6,s6,-16
   1ee10:	05645663          	bge	s0,s6,1ee5c <_svfiprintf_r+0x9ac>
   1ee14:	0016869b          	addiw	a3,a3,1
   1ee18:	01070713          	addi	a4,a4,16
   1ee1c:	0147b023          	sd	s4,0(a5)
   1ee20:	0087b423          	sd	s0,8(a5)
   1ee24:	08e13823          	sd	a4,144(sp)
   1ee28:	08d12423          	sw	a3,136(sp)
   1ee2c:	01078793          	addi	a5,a5,16
   1ee30:	fcdadee3          	bge	s5,a3,1ee0c <_svfiprintf_r+0x95c>
   1ee34:	08010613          	addi	a2,sp,128
   1ee38:	00048593          	mv	a1,s1
   1ee3c:	00098513          	mv	a0,s3
   1ee40:	c78ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1ee44:	980518e3          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1ee48:	ff0b0b1b          	addiw	s6,s6,-16
   1ee4c:	09013703          	ld	a4,144(sp)
   1ee50:	08812683          	lw	a3,136(sp)
   1ee54:	00090793          	mv	a5,s2
   1ee58:	fb644ee3          	blt	s0,s6,1ee14 <_svfiprintf_r+0x964>
   1ee5c:	01813883          	ld	a7,24(sp)
   1ee60:	02013e03          	ld	t3,32(sp)
   1ee64:	02813803          	ld	a6,40(sp)
   1ee68:	03013e83          	ld	t4,48(sp)
   1ee6c:	0016869b          	addiw	a3,a3,1
   1ee70:	01670733          	add	a4,a4,s6
   1ee74:	01d7b023          	sd	t4,0(a5)
   1ee78:	0167b423          	sd	s6,8(a5)
   1ee7c:	08e13823          	sd	a4,144(sp)
   1ee80:	08d12423          	sw	a3,136(sp)
   1ee84:	00700613          	li	a2,7
   1ee88:	01078793          	addi	a5,a5,16
   1ee8c:	86d65ae3          	bge	a2,a3,1e700 <_svfiprintf_r+0x250>
   1ee90:	08010613          	addi	a2,sp,128
   1ee94:	00048593          	mv	a1,s1
   1ee98:	00098513          	mv	a0,s3
   1ee9c:	03013423          	sd	a6,40(sp)
   1eea0:	03c13023          	sd	t3,32(sp)
   1eea4:	01113c23          	sd	a7,24(sp)
   1eea8:	c10ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1eeac:	920514e3          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1eeb0:	09013703          	ld	a4,144(sp)
   1eeb4:	08812683          	lw	a3,136(sp)
   1eeb8:	02813803          	ld	a6,40(sp)
   1eebc:	02013e03          	ld	t3,32(sp)
   1eec0:	01813883          	ld	a7,24(sp)
   1eec4:	00090793          	mv	a5,s2
   1eec8:	839ff06f          	j	1e700 <_svfiprintf_r+0x250>
   1eecc:	08010613          	addi	a2,sp,128
   1eed0:	00048593          	mv	a1,s1
   1eed4:	00098513          	mv	a0,s3
   1eed8:	03013423          	sd	a6,40(sp)
   1eedc:	03c13023          	sd	t3,32(sp)
   1eee0:	01113c23          	sd	a7,24(sp)
   1eee4:	bd4ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1eee8:	8e0516e3          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1eeec:	09013703          	ld	a4,144(sp)
   1eef0:	02813803          	ld	a6,40(sp)
   1eef4:	02013e03          	ld	t3,32(sp)
   1eef8:	01813883          	ld	a7,24(sp)
   1eefc:	00090793          	mv	a5,s2
   1ef00:	825ff06f          	j	1e724 <_svfiprintf_r+0x274>
   1ef04:	08010613          	addi	a2,sp,128
   1ef08:	00048593          	mv	a1,s1
   1ef0c:	00098513          	mv	a0,s3
   1ef10:	01013c23          	sd	a6,24(sp)
   1ef14:	ba4ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1ef18:	8a051ee3          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1ef1c:	09013703          	ld	a4,144(sp)
   1ef20:	01813803          	ld	a6,24(sp)
   1ef24:	825ff06f          	j	1e748 <_svfiprintf_r+0x298>
   1ef28:	00068893          	mv	a7,a3
   1ef2c:	00200693          	li	a3,2
   1ef30:	bc0686e3          	beqz	a3,1eafc <_svfiprintf_r+0x64c>
   1ef34:	01013503          	ld	a0,16(sp)
   1ef38:	0fc10593          	addi	a1,sp,252
   1ef3c:	00058b93          	mv	s7,a1
   1ef40:	00f67693          	andi	a3,a2,15
   1ef44:	00d506b3          	add	a3,a0,a3
   1ef48:	0006c683          	lbu	a3,0(a3)
   1ef4c:	00465613          	srli	a2,a2,0x4
   1ef50:	fffb8b93          	addi	s7,s7,-1
   1ef54:	00db8023          	sb	a3,0(s7)
   1ef58:	fe0614e3          	bnez	a2,1ef40 <_svfiprintf_r+0xa90>
   1ef5c:	41758d3b          	subw	s10,a1,s7
   1ef60:	000a8d9b          	sext.w	s11,s5
   1ef64:	afaad0e3          	bge	s5,s10,1ea44 <_svfiprintf_r+0x594>
   1ef68:	000d0d9b          	sext.w	s11,s10
   1ef6c:	ad9ff06f          	j	1ea44 <_svfiprintf_r+0x594>
   1ef70:	00023eb7          	lui	t4,0x23
   1ef74:	01000613          	li	a2,16
   1ef78:	d30e8e93          	addi	t4,t4,-720 # 22d30 <blanks.1>
   1ef7c:	0b665463          	bge	a2,s6,1f024 <_svfiprintf_r+0xb74>
   1ef80:	05513823          	sd	s5,80(sp)
   1ef84:	01000f13          	li	t5,16
   1ef88:	000b0a93          	mv	s5,s6
   1ef8c:	00700393          	li	t2,7
   1ef90:	01113c23          	sd	a7,24(sp)
   1ef94:	02513023          	sd	t0,32(sp)
   1ef98:	03f13423          	sd	t6,40(sp)
   1ef9c:	03c13823          	sd	t3,48(sp)
   1efa0:	05013c23          	sd	a6,88(sp)
   1efa4:	000e8b13          	mv	s6,t4
   1efa8:	00c0006f          	j	1efb4 <_svfiprintf_r+0xb04>
   1efac:	ff0a8a9b          	addiw	s5,s5,-16
   1efb0:	055f5a63          	bge	t5,s5,1f004 <_svfiprintf_r+0xb54>
   1efb4:	0016869b          	addiw	a3,a3,1
   1efb8:	01070713          	addi	a4,a4,16
   1efbc:	0167b023          	sd	s6,0(a5)
   1efc0:	01e7b423          	sd	t5,8(a5)
   1efc4:	08e13823          	sd	a4,144(sp)
   1efc8:	08d12423          	sw	a3,136(sp)
   1efcc:	01078793          	addi	a5,a5,16
   1efd0:	fcd3dee3          	bge	t2,a3,1efac <_svfiprintf_r+0xafc>
   1efd4:	08010613          	addi	a2,sp,128
   1efd8:	00048593          	mv	a1,s1
   1efdc:	00098513          	mv	a0,s3
   1efe0:	ad8ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1efe4:	fe051863          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1efe8:	01000f13          	li	t5,16
   1efec:	ff0a8a9b          	addiw	s5,s5,-16
   1eff0:	09013703          	ld	a4,144(sp)
   1eff4:	08812683          	lw	a3,136(sp)
   1eff8:	00090793          	mv	a5,s2
   1effc:	00700393          	li	t2,7
   1f000:	fb5f4ae3          	blt	t5,s5,1efb4 <_svfiprintf_r+0xb04>
   1f004:	000b0e93          	mv	t4,s6
   1f008:	01813883          	ld	a7,24(sp)
   1f00c:	000a8b13          	mv	s6,s5
   1f010:	02013283          	ld	t0,32(sp)
   1f014:	02813f83          	ld	t6,40(sp)
   1f018:	03013e03          	ld	t3,48(sp)
   1f01c:	05813803          	ld	a6,88(sp)
   1f020:	05013a83          	ld	s5,80(sp)
   1f024:	0016869b          	addiw	a3,a3,1
   1f028:	01670733          	add	a4,a4,s6
   1f02c:	01d7b023          	sd	t4,0(a5)
   1f030:	0167b423          	sd	s6,8(a5)
   1f034:	08e13823          	sd	a4,144(sp)
   1f038:	08d12423          	sw	a3,136(sp)
   1f03c:	00700613          	li	a2,7
   1f040:	01078793          	addi	a5,a5,16
   1f044:	e4d65463          	bge	a2,a3,1e68c <_svfiprintf_r+0x1dc>
   1f048:	08010613          	addi	a2,sp,128
   1f04c:	00048593          	mv	a1,s1
   1f050:	00098513          	mv	a0,s3
   1f054:	05013823          	sd	a6,80(sp)
   1f058:	03c13823          	sd	t3,48(sp)
   1f05c:	03f13423          	sd	t6,40(sp)
   1f060:	02513023          	sd	t0,32(sp)
   1f064:	01113c23          	sd	a7,24(sp)
   1f068:	a50ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1f06c:	f6051463          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1f070:	09013703          	ld	a4,144(sp)
   1f074:	08812683          	lw	a3,136(sp)
   1f078:	05013803          	ld	a6,80(sp)
   1f07c:	03013e03          	ld	t3,48(sp)
   1f080:	02813f83          	ld	t6,40(sp)
   1f084:	02013283          	ld	t0,32(sp)
   1f088:	01813883          	ld	a7,24(sp)
   1f08c:	00090793          	mv	a5,s2
   1f090:	dfcff06f          	j	1e68c <_svfiprintf_r+0x1dc>
   1f094:	08010613          	addi	a2,sp,128
   1f098:	00048593          	mv	a1,s1
   1f09c:	00098513          	mv	a0,s3
   1f0a0:	03013823          	sd	a6,48(sp)
   1f0a4:	03c13423          	sd	t3,40(sp)
   1f0a8:	03f13023          	sd	t6,32(sp)
   1f0ac:	01113c23          	sd	a7,24(sp)
   1f0b0:	a08ff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1f0b4:	f2051063          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1f0b8:	09013703          	ld	a4,144(sp)
   1f0bc:	08812683          	lw	a3,136(sp)
   1f0c0:	03013803          	ld	a6,48(sp)
   1f0c4:	02813e03          	ld	t3,40(sp)
   1f0c8:	02013f83          	ld	t6,32(sp)
   1f0cc:	01813883          	ld	a7,24(sp)
   1f0d0:	00090793          	mv	a5,s2
   1f0d4:	e1cff06f          	j	1e6f0 <_svfiprintf_r+0x240>
   1f0d8:	00023eb7          	lui	t4,0x23
   1f0dc:	01000613          	li	a2,16
   1f0e0:	08812683          	lw	a3,136(sp)
   1f0e4:	d30e8e93          	addi	t4,t4,-720 # 22d30 <blanks.1>
   1f0e8:	09565063          	bge	a2,s5,1f168 <_svfiprintf_r+0xcb8>
   1f0ec:	03813023          	sd	s8,32(sp)
   1f0f0:	01000b13          	li	s6,16
   1f0f4:	00700b93          	li	s7,7
   1f0f8:	000e0d13          	mv	s10,t3
   1f0fc:	01013c23          	sd	a6,24(sp)
   1f100:	000e8c13          	mv	s8,t4
   1f104:	00c0006f          	j	1f110 <_svfiprintf_r+0xc60>
   1f108:	ff0a8a9b          	addiw	s5,s5,-16
   1f10c:	055b5663          	bge	s6,s5,1f158 <_svfiprintf_r+0xca8>
   1f110:	0016869b          	addiw	a3,a3,1
   1f114:	01070713          	addi	a4,a4,16
   1f118:	0187b023          	sd	s8,0(a5)
   1f11c:	0167b423          	sd	s6,8(a5)
   1f120:	08e13823          	sd	a4,144(sp)
   1f124:	08d12423          	sw	a3,136(sp)
   1f128:	01078793          	addi	a5,a5,16
   1f12c:	fcdbdee3          	bge	s7,a3,1f108 <_svfiprintf_r+0xc58>
   1f130:	08010613          	addi	a2,sp,128
   1f134:	00048593          	mv	a1,s1
   1f138:	00098513          	mv	a0,s3
   1f13c:	97cff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1f140:	e8051a63          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1f144:	ff0a8a9b          	addiw	s5,s5,-16
   1f148:	09013703          	ld	a4,144(sp)
   1f14c:	08812683          	lw	a3,136(sp)
   1f150:	00090793          	mv	a5,s2
   1f154:	fb5b4ee3          	blt	s6,s5,1f110 <_svfiprintf_r+0xc60>
   1f158:	000c0e93          	mv	t4,s8
   1f15c:	01813803          	ld	a6,24(sp)
   1f160:	02013c03          	ld	s8,32(sp)
   1f164:	000d0e13          	mv	t3,s10
   1f168:	0016861b          	addiw	a2,a3,1
   1f16c:	01570733          	add	a4,a4,s5
   1f170:	01d7b023          	sd	t4,0(a5)
   1f174:	0157b423          	sd	s5,8(a5)
   1f178:	08e13823          	sd	a4,144(sp)
   1f17c:	08c12423          	sw	a2,136(sp)
   1f180:	00700793          	li	a5,7
   1f184:	dac7d863          	bge	a5,a2,1e734 <_svfiprintf_r+0x284>
   1f188:	08010613          	addi	a2,sp,128
   1f18c:	00048593          	mv	a1,s1
   1f190:	00098513          	mv	a0,s3
   1f194:	03013023          	sd	a6,32(sp)
   1f198:	01c13c23          	sd	t3,24(sp)
   1f19c:	91cff0ef          	jal	ra,1e2b8 <__ssprint_r>
   1f1a0:	e2051a63          	bnez	a0,1e7d4 <_svfiprintf_r+0x324>
   1f1a4:	09013703          	ld	a4,144(sp)
   1f1a8:	02013803          	ld	a6,32(sp)
   1f1ac:	01813e03          	ld	t3,24(sp)
   1f1b0:	d84ff06f          	j	1e734 <_svfiprintf_r+0x284>
   1f1b4:	41758d3b          	subw	s10,a1,s7
   1f1b8:	000d0d9b          	sext.w	s11,s10
   1f1bc:	895d54e3          	bge	s10,s5,1ea44 <_svfiprintf_r+0x594>
   1f1c0:	000a8d9b          	sext.w	s11,s5
   1f1c4:	881ff06f          	j	1ea44 <_svfiprintf_r+0x594>
   1f1c8:	00000d93          	li	s11,0
   1f1cc:	00000d13          	li	s10,0
   1f1d0:	0fc10b93          	addi	s7,sp,252
   1f1d4:	871ff06f          	j	1ea44 <_svfiprintf_r+0x594>
   1f1d8:	05313c23          	sd	s3,88(sp)
   1f1dc:	04013983          	ld	s3,64(sp)
   1f1e0:	0fc10593          	addi	a1,sp,252
   1f1e4:	03513423          	sd	s5,40(sp)
   1f1e8:	06913023          	sd	s1,96(sp)
   1f1ec:	4008fd13          	andi	s10,a7,1024
   1f1f0:	00000b13          	li	s6,0
   1f1f4:	00058b93          	mv	s7,a1
   1f1f8:	00900c13          	li	s8,9
   1f1fc:	01113c23          	sd	a7,24(sp)
   1f200:	03c13023          	sd	t3,32(sp)
   1f204:	02f13823          	sd	a5,48(sp)
   1f208:	04e13823          	sd	a4,80(sp)
   1f20c:	00060a93          	mv	s5,a2
   1f210:	00058493          	mv	s1,a1
   1f214:	07013423          	sd	a6,104(sp)
   1f218:	00a00593          	li	a1,10
   1f21c:	000d8513          	mv	a0,s11
   1f220:	a84f10ef          	jal	ra,104a4 <__umoddi3>
   1f224:	0305051b          	addiw	a0,a0,48
   1f228:	fea48fa3          	sb	a0,-1(s1)
   1f22c:	001b0b1b          	addiw	s6,s6,1
   1f230:	fff48493          	addi	s1,s1,-1
   1f234:	000d0663          	beqz	s10,1f240 <_svfiprintf_r+0xd90>
   1f238:	0009c703          	lbu	a4,0(s3)
   1f23c:	01670e63          	beq	a4,s6,1f258 <_svfiprintf_r+0xda8>
   1f240:	00a00593          	li	a1,10
   1f244:	000d8513          	mv	a0,s11
   1f248:	a14f10ef          	jal	ra,1045c <__hidden___udivdi3>
   1f24c:	01bc7c63          	bgeu	s8,s11,1f264 <_svfiprintf_r+0xdb4>
   1f250:	00050d93          	mv	s11,a0
   1f254:	fc5ff06f          	j	1f218 <_svfiprintf_r+0xd68>
   1f258:	0ff00793          	li	a5,255
   1f25c:	fef702e3          	beq	a4,a5,1f240 <_svfiprintf_r+0xd90>
   1f260:	1dbc6463          	bltu	s8,s11,1f428 <_svfiprintf_r+0xf78>
   1f264:	000a8613          	mv	a2,s5
   1f268:	02813a83          	ld	s5,40(sp)
   1f26c:	000b8593          	mv	a1,s7
   1f270:	00048b93          	mv	s7,s1
   1f274:	05313023          	sd	s3,64(sp)
   1f278:	41758d3b          	subw	s10,a1,s7
   1f27c:	01813883          	ld	a7,24(sp)
   1f280:	02013e03          	ld	t3,32(sp)
   1f284:	03013783          	ld	a5,48(sp)
   1f288:	05013703          	ld	a4,80(sp)
   1f28c:	05813983          	ld	s3,88(sp)
   1f290:	06813803          	ld	a6,104(sp)
   1f294:	06013483          	ld	s1,96(sp)
   1f298:	000d0d9b          	sext.w	s11,s10
   1f29c:	175d4063          	blt	s10,s5,1f3fc <_svfiprintf_r+0xf4c>
   1f2a0:	00060c13          	mv	s8,a2
   1f2a4:	fa0ff06f          	j	1ea44 <_svfiprintf_r+0x594>
   1f2a8:	00000d93          	li	s11,0
   1f2ac:	0fc10b93          	addi	s7,sp,252
   1f2b0:	f94ff06f          	j	1ea44 <_svfiprintf_r+0x594>
   1f2b4:	00084683          	lbu	a3,0(a6)
   1f2b8:	b2060263          	beqz	a2,1e5dc <_svfiprintf_r+0x12c>
   1f2bc:	00064603          	lbu	a2,0(a2)
   1f2c0:	b0060e63          	beqz	a2,1e5dc <_svfiprintf_r+0x12c>
   1f2c4:	400b6893          	ori	a7,s6,1024
   1f2c8:	00088b1b          	sext.w	s6,a7
   1f2cc:	b10ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1f2d0:	040d7593          	andi	a1,s10,64
   1f2d4:	000c2683          	lw	a3,0(s8)
   1f2d8:	1e058663          	beqz	a1,1f4c4 <_svfiprintf_r+0x1014>
   1f2dc:	03069d93          	slli	s11,a3,0x30
   1f2e0:	030ddd93          	srli	s11,s11,0x30
   1f2e4:	fdcff06f          	j	1eac0 <_svfiprintf_r+0x610>
   1f2e8:	0406f593          	andi	a1,a3,64
   1f2ec:	000c2603          	lw	a2,0(s8)
   1f2f0:	1e058663          	beqz	a1,1f4dc <_svfiprintf_r+0x102c>
   1f2f4:	03061613          	slli	a2,a2,0x30
   1f2f8:	03065613          	srli	a2,a2,0x30
   1f2fc:	efcff06f          	j	1e9f8 <_svfiprintf_r+0x548>
   1f300:	000a8d9b          	sext.w	s11,s5
   1f304:	00050b93          	mv	s7,a0
   1f308:	f3cff06f          	j	1ea44 <_svfiprintf_r+0x594>
   1f30c:	000d0e13          	mv	t3,s10
   1f310:	000d8793          	mv	a5,s11
   1f314:	000b0d13          	mv	s10,s6
   1f318:	f90ff06f          	j	1eaa8 <_svfiprintf_r+0x5f8>
   1f31c:	000d0e13          	mv	t3,s10
   1f320:	000d8793          	mv	a5,s11
   1f324:	000b0693          	mv	a3,s6
   1f328:	eb8ff06f          	j	1e9e0 <_svfiprintf_r+0x530>
   1f32c:	00022637          	lui	a2,0x22
   1f330:	f9060613          	addi	a2,a2,-112 # 21f90 <__clzdi2+0x7c>
   1f334:	000b0893          	mv	a7,s6
   1f338:	00c13823          	sd	a2,16(sp)
   1f33c:	0208f613          	andi	a2,a7,32
   1f340:	000d0e13          	mv	t3,s10
   1f344:	000d8793          	mv	a5,s11
   1f348:	008c0593          	addi	a1,s8,8
   1f34c:	06061a63          	bnez	a2,1f3c0 <_svfiprintf_r+0xf10>
   1f350:	0108f613          	andi	a2,a7,16
   1f354:	06061663          	bnez	a2,1f3c0 <_svfiprintf_r+0xf10>
   1f358:	0408f513          	andi	a0,a7,64
   1f35c:	000c2603          	lw	a2,0(s8)
   1f360:	18050663          	beqz	a0,1f4ec <_svfiprintf_r+0x103c>
   1f364:	03061613          	slli	a2,a2,0x30
   1f368:	03065613          	srli	a2,a2,0x30
   1f36c:	0018f513          	andi	a0,a7,1
   1f370:	00050e63          	beqz	a0,1f38c <_svfiprintf_r+0xedc>
   1f374:	00060c63          	beqz	a2,1f38c <_svfiprintf_r+0xedc>
   1f378:	0028e893          	ori	a7,a7,2
   1f37c:	03000513          	li	a0,48
   1f380:	06a10c23          	sb	a0,120(sp)
   1f384:	06d10ca3          	sb	a3,121(sp)
   1f388:	0008889b          	sext.w	a7,a7
   1f38c:	bff8f893          	andi	a7,a7,-1025
   1f390:	0008889b          	sext.w	a7,a7
   1f394:	00058c13          	mv	s8,a1
   1f398:	8d9ff06f          	j	1ec70 <_svfiprintf_r+0x7c0>
   1f39c:	00022637          	lui	a2,0x22
   1f3a0:	fa860613          	addi	a2,a2,-88 # 21fa8 <__clzdi2+0x94>
   1f3a4:	000b0893          	mv	a7,s6
   1f3a8:	00c13823          	sd	a2,16(sp)
   1f3ac:	0208f613          	andi	a2,a7,32
   1f3b0:	000d0e13          	mv	t3,s10
   1f3b4:	000d8793          	mv	a5,s11
   1f3b8:	008c0593          	addi	a1,s8,8
   1f3bc:	f8060ae3          	beqz	a2,1f350 <_svfiprintf_r+0xea0>
   1f3c0:	000c3603          	ld	a2,0(s8)
   1f3c4:	fa9ff06f          	j	1f36c <_svfiprintf_r+0xebc>
   1f3c8:	000b8513          	mv	a0,s7
   1f3cc:	c59f90ef          	jal	ra,19024 <strlen>
   1f3d0:	00050d1b          	sext.w	s10,a0
   1f3d4:	fffd4d93          	not	s11,s10
   1f3d8:	43fddd93          	srai	s11,s11,0x3f
   1f3dc:	01813883          	ld	a7,24(sp)
   1f3e0:	02013e03          	ld	t3,32(sp)
   1f3e4:	02813783          	ld	a5,40(sp)
   1f3e8:	03013703          	ld	a4,48(sp)
   1f3ec:	05013803          	ld	a6,80(sp)
   1f3f0:	01adfdb3          	and	s11,s11,s10
   1f3f4:	00000a93          	li	s5,0
   1f3f8:	e4cff06f          	j	1ea44 <_svfiprintf_r+0x594>
   1f3fc:	000a8d9b          	sext.w	s11,s5
   1f400:	00060c13          	mv	s8,a2
   1f404:	e40ff06f          	j	1ea44 <_svfiprintf_r+0x594>
   1f408:	04000593          	li	a1,64
   1f40c:	a49f70ef          	jal	ra,16e54 <_malloc_r>
   1f410:	00a4b023          	sd	a0,0(s1)
   1f414:	00a4bc23          	sd	a0,24(s1)
   1f418:	14050a63          	beqz	a0,1f56c <_svfiprintf_r+0x10bc>
   1f41c:	04000793          	li	a5,64
   1f420:	02f4a023          	sw	a5,32(s1)
   1f424:	8e8ff06f          	j	1e50c <_svfiprintf_r+0x5c>
   1f428:	03813783          	ld	a5,56(sp)
   1f42c:	04813583          	ld	a1,72(sp)
   1f430:	00000b13          	li	s6,0
   1f434:	40f484b3          	sub	s1,s1,a5
   1f438:	00078613          	mv	a2,a5
   1f43c:	00048513          	mv	a0,s1
   1f440:	cadf90ef          	jal	ra,190ec <strncpy>
   1f444:	0019c703          	lbu	a4,1(s3)
   1f448:	000d8513          	mv	a0,s11
   1f44c:	00a00593          	li	a1,10
   1f450:	00e03733          	snez	a4,a4
   1f454:	00e989b3          	add	s3,s3,a4
   1f458:	804f10ef          	jal	ra,1045c <__hidden___udivdi3>
   1f45c:	00050d93          	mv	s11,a0
   1f460:	db9ff06f          	j	1f218 <_svfiprintf_r+0xd68>
   1f464:	00068893          	mv	a7,a3
   1f468:	00000693          	li	a3,0
   1f46c:	e8068863          	beqz	a3,1eafc <_svfiprintf_r+0x64c>
   1f470:	ac5ff06f          	j	1ef34 <_svfiprintf_r+0xa84>
   1f474:	200b6893          	ori	a7,s6,512
   1f478:	00184683          	lbu	a3,1(a6)
   1f47c:	00088b1b          	sext.w	s6,a7
   1f480:	00180813          	addi	a6,a6,1
   1f484:	958ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1f488:	020b6893          	ori	a7,s6,32
   1f48c:	00184683          	lbu	a3,1(a6)
   1f490:	00088b1b          	sext.w	s6,a7
   1f494:	00180813          	addi	a6,a6,1
   1f498:	944ff06f          	j	1e5dc <_svfiprintf_r+0x12c>
   1f49c:	00600693          	li	a3,6
   1f4a0:	000a8d1b          	sext.w	s10,s5
   1f4a4:	0156f463          	bgeu	a3,s5,1f4ac <_svfiprintf_r+0xffc>
   1f4a8:	00600d13          	li	s10,6
   1f4ac:	00022bb7          	lui	s7,0x22
   1f4b0:	000d0d93          	mv	s11,s10
   1f4b4:	fc0b8b93          	addi	s7,s7,-64 # 21fc0 <__clzdi2+0xac>
   1f4b8:	9b0ff06f          	j	1e668 <_svfiprintf_r+0x1b8>
   1f4bc:	00000613          	li	a2,0
   1f4c0:	a75ff06f          	j	1ef34 <_svfiprintf_r+0xa84>
   1f4c4:	200d7593          	andi	a1,s10,512
   1f4c8:	0ff6fd93          	zext.b	s11,a3
   1f4cc:	de059a63          	bnez	a1,1eac0 <_svfiprintf_r+0x610>
   1f4d0:	02069d93          	slli	s11,a3,0x20
   1f4d4:	020ddd93          	srli	s11,s11,0x20
   1f4d8:	de8ff06f          	j	1eac0 <_svfiprintf_r+0x610>
   1f4dc:	2006f593          	andi	a1,a3,512
   1f4e0:	04058c63          	beqz	a1,1f538 <_svfiprintf_r+0x1088>
   1f4e4:	0ff67613          	zext.b	a2,a2
   1f4e8:	d10ff06f          	j	1e9f8 <_svfiprintf_r+0x548>
   1f4ec:	2008f513          	andi	a0,a7,512
   1f4f0:	02050e63          	beqz	a0,1f52c <_svfiprintf_r+0x107c>
   1f4f4:	0ff67613          	zext.b	a2,a2
   1f4f8:	e75ff06f          	j	1f36c <_svfiprintf_r+0xebc>
   1f4fc:	2008f593          	andi	a1,a7,512
   1f500:	02058063          	beqz	a1,1f520 <_svfiprintf_r+0x1070>
   1f504:	01869d9b          	slliw	s11,a3,0x18
   1f508:	418ddd9b          	sraiw	s11,s11,0x18
   1f50c:	000d8593          	mv	a1,s11
   1f510:	c3cff06f          	j	1e94c <_svfiprintf_r+0x49c>
   1f514:	01961023          	sh	s9,0(a2)
   1f518:	008c0c13          	addi	s8,s8,8
   1f51c:	83cff06f          	j	1e558 <_svfiprintf_r+0xa8>
   1f520:	00068d93          	mv	s11,a3
   1f524:	00068593          	mv	a1,a3
   1f528:	c24ff06f          	j	1e94c <_svfiprintf_r+0x49c>
   1f52c:	02061613          	slli	a2,a2,0x20
   1f530:	02065613          	srli	a2,a2,0x20
   1f534:	e39ff06f          	j	1f36c <_svfiprintf_r+0xebc>
   1f538:	02061613          	slli	a2,a2,0x20
   1f53c:	02065613          	srli	a2,a2,0x20
   1f540:	cb8ff06f          	j	1e9f8 <_svfiprintf_r+0x548>
   1f544:	000a8d93          	mv	s11,s5
   1f548:	000a8d13          	mv	s10,s5
   1f54c:	00000a93          	li	s5,0
   1f550:	cf4ff06f          	j	1ea44 <_svfiprintf_r+0x594>
   1f554:	00060c13          	mv	s8,a2
   1f558:	03000693          	li	a3,48
   1f55c:	c58ff06f          	j	1e9b4 <_svfiprintf_r+0x504>
   1f560:	01962023          	sw	s9,0(a2)
   1f564:	008c0c13          	addi	s8,s8,8
   1f568:	ff1fe06f          	j	1e558 <_svfiprintf_r+0xa8>
   1f56c:	00c00793          	li	a5,12
   1f570:	00f9a023          	sw	a5,0(s3)
   1f574:	fff00a93          	li	s5,-1
   1f578:	a6cff06f          	j	1e7e4 <_svfiprintf_r+0x334>
   1f57c:	000c2683          	lw	a3,0(s8)
   1f580:	008c0c13          	addi	s8,s8,8
   1f584:	00068a9b          	sext.w	s5,a3
   1f588:	0006d463          	bgez	a3,1f590 <_svfiprintf_r+0x10e0>
   1f58c:	fff00a93          	li	s5,-1
   1f590:	00184683          	lbu	a3,1(a6)
   1f594:	00060813          	mv	a6,a2
   1f598:	844ff06f          	j	1e5dc <_svfiprintf_r+0x12c>

000000000001f59c <__swbuf_r>:
   1f59c:	fd010113          	addi	sp,sp,-48
   1f5a0:	02813023          	sd	s0,32(sp)
   1f5a4:	00913c23          	sd	s1,24(sp)
   1f5a8:	01213823          	sd	s2,16(sp)
   1f5ac:	02113423          	sd	ra,40(sp)
   1f5b0:	01313423          	sd	s3,8(sp)
   1f5b4:	00050913          	mv	s2,a0
   1f5b8:	00058493          	mv	s1,a1
   1f5bc:	00060413          	mv	s0,a2
   1f5c0:	00050663          	beqz	a0,1f5cc <__swbuf_r+0x30>
   1f5c4:	05052783          	lw	a5,80(a0)
   1f5c8:	14078063          	beqz	a5,1f708 <__swbuf_r+0x16c>
   1f5cc:	02842783          	lw	a5,40(s0)
   1f5d0:	01041703          	lh	a4,16(s0)
   1f5d4:	00f42623          	sw	a5,12(s0)
   1f5d8:	00877793          	andi	a5,a4,8
   1f5dc:	08078263          	beqz	a5,1f660 <__swbuf_r+0xc4>
   1f5e0:	01843783          	ld	a5,24(s0)
   1f5e4:	06078e63          	beqz	a5,1f660 <__swbuf_r+0xc4>
   1f5e8:	0ff4f993          	zext.b	s3,s1
   1f5ec:	03271693          	slli	a3,a4,0x32
   1f5f0:	00098493          	mv	s1,s3
   1f5f4:	0806da63          	bgez	a3,1f688 <__swbuf_r+0xec>
   1f5f8:	00043703          	ld	a4,0(s0)
   1f5fc:	02042683          	lw	a3,32(s0)
   1f600:	40f707bb          	subw	a5,a4,a5
   1f604:	0ad7da63          	bge	a5,a3,1f6b8 <__swbuf_r+0x11c>
   1f608:	00c42683          	lw	a3,12(s0)
   1f60c:	00170613          	addi	a2,a4,1
   1f610:	00c43023          	sd	a2,0(s0)
   1f614:	fff6869b          	addiw	a3,a3,-1
   1f618:	00d42623          	sw	a3,12(s0)
   1f61c:	01370023          	sb	s3,0(a4)
   1f620:	02042703          	lw	a4,32(s0)
   1f624:	0017879b          	addiw	a5,a5,1
   1f628:	0cf70463          	beq	a4,a5,1f6f0 <__swbuf_r+0x154>
   1f62c:	01045783          	lhu	a5,16(s0)
   1f630:	0017f793          	andi	a5,a5,1
   1f634:	00078663          	beqz	a5,1f640 <__swbuf_r+0xa4>
   1f638:	00a00793          	li	a5,10
   1f63c:	0af48a63          	beq	s1,a5,1f6f0 <__swbuf_r+0x154>
   1f640:	02813083          	ld	ra,40(sp)
   1f644:	02013403          	ld	s0,32(sp)
   1f648:	01013903          	ld	s2,16(sp)
   1f64c:	00813983          	ld	s3,8(sp)
   1f650:	00048513          	mv	a0,s1
   1f654:	01813483          	ld	s1,24(sp)
   1f658:	03010113          	addi	sp,sp,48
   1f65c:	00008067          	ret
   1f660:	00040593          	mv	a1,s0
   1f664:	00090513          	mv	a0,s2
   1f668:	875f30ef          	jal	ra,12edc <__swsetup_r>
   1f66c:	08051a63          	bnez	a0,1f700 <__swbuf_r+0x164>
   1f670:	01041703          	lh	a4,16(s0)
   1f674:	0ff4f993          	zext.b	s3,s1
   1f678:	01843783          	ld	a5,24(s0)
   1f67c:	03271693          	slli	a3,a4,0x32
   1f680:	00098493          	mv	s1,s3
   1f684:	f606cae3          	bltz	a3,1f5f8 <__swbuf_r+0x5c>
   1f688:	0ac42683          	lw	a3,172(s0)
   1f68c:	00002637          	lui	a2,0x2
   1f690:	00c76733          	or	a4,a4,a2
   1f694:	ffffe637          	lui	a2,0xffffe
   1f698:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd9df7>
   1f69c:	00c6f6b3          	and	a3,a3,a2
   1f6a0:	00e41823          	sh	a4,16(s0)
   1f6a4:	00043703          	ld	a4,0(s0)
   1f6a8:	0ad42623          	sw	a3,172(s0)
   1f6ac:	02042683          	lw	a3,32(s0)
   1f6b0:	40f707bb          	subw	a5,a4,a5
   1f6b4:	f4d7cae3          	blt	a5,a3,1f608 <__swbuf_r+0x6c>
   1f6b8:	00040593          	mv	a1,s0
   1f6bc:	00090513          	mv	a0,s2
   1f6c0:	cd1f30ef          	jal	ra,13390 <_fflush_r>
   1f6c4:	02051e63          	bnez	a0,1f700 <__swbuf_r+0x164>
   1f6c8:	00043703          	ld	a4,0(s0)
   1f6cc:	00c42683          	lw	a3,12(s0)
   1f6d0:	00100793          	li	a5,1
   1f6d4:	00170613          	addi	a2,a4,1
   1f6d8:	fff6869b          	addiw	a3,a3,-1
   1f6dc:	00c43023          	sd	a2,0(s0)
   1f6e0:	00d42623          	sw	a3,12(s0)
   1f6e4:	01370023          	sb	s3,0(a4)
   1f6e8:	02042703          	lw	a4,32(s0)
   1f6ec:	f4f710e3          	bne	a4,a5,1f62c <__swbuf_r+0x90>
   1f6f0:	00040593          	mv	a1,s0
   1f6f4:	00090513          	mv	a0,s2
   1f6f8:	c99f30ef          	jal	ra,13390 <_fflush_r>
   1f6fc:	f40502e3          	beqz	a0,1f640 <__swbuf_r+0xa4>
   1f700:	fff00493          	li	s1,-1
   1f704:	f3dff06f          	j	1f640 <__swbuf_r+0xa4>
   1f708:	8b4f40ef          	jal	ra,137bc <__sinit>
   1f70c:	ec1ff06f          	j	1f5cc <__swbuf_r+0x30>

000000000001f710 <__swbuf>:
   1f710:	00050793          	mv	a5,a0
   1f714:	7581b503          	ld	a0,1880(gp) # 24160 <_impure_ptr>
   1f718:	00058613          	mv	a2,a1
   1f71c:	00078593          	mv	a1,a5
   1f720:	e7dff06f          	j	1f59c <__swbuf_r>

000000000001f724 <_wcrtomb_r>:
   1f724:	fd010113          	addi	sp,sp,-48
   1f728:	02813023          	sd	s0,32(sp)
   1f72c:	00913c23          	sd	s1,24(sp)
   1f730:	02113423          	sd	ra,40(sp)
   1f734:	e401b783          	ld	a5,-448(gp) # 23848 <__global_locale+0xe0>
   1f738:	00050413          	mv	s0,a0
   1f73c:	00068493          	mv	s1,a3
   1f740:	02058263          	beqz	a1,1f764 <_wcrtomb_r+0x40>
   1f744:	000780e7          	jalr	a5
   1f748:	fff00793          	li	a5,-1
   1f74c:	02f50663          	beq	a0,a5,1f778 <_wcrtomb_r+0x54>
   1f750:	02813083          	ld	ra,40(sp)
   1f754:	02013403          	ld	s0,32(sp)
   1f758:	01813483          	ld	s1,24(sp)
   1f75c:	03010113          	addi	sp,sp,48
   1f760:	00008067          	ret
   1f764:	00000613          	li	a2,0
   1f768:	00010593          	mv	a1,sp
   1f76c:	000780e7          	jalr	a5
   1f770:	fff00793          	li	a5,-1
   1f774:	fcf51ee3          	bne	a0,a5,1f750 <_wcrtomb_r+0x2c>
   1f778:	0004a023          	sw	zero,0(s1)
   1f77c:	08a00793          	li	a5,138
   1f780:	02813083          	ld	ra,40(sp)
   1f784:	00f42023          	sw	a5,0(s0)
   1f788:	02013403          	ld	s0,32(sp)
   1f78c:	01813483          	ld	s1,24(sp)
   1f790:	03010113          	addi	sp,sp,48
   1f794:	00008067          	ret

000000000001f798 <wcrtomb>:
   1f798:	fd010113          	addi	sp,sp,-48
   1f79c:	02813023          	sd	s0,32(sp)
   1f7a0:	00913c23          	sd	s1,24(sp)
   1f7a4:	02113423          	sd	ra,40(sp)
   1f7a8:	7581b483          	ld	s1,1880(gp) # 24160 <_impure_ptr>
   1f7ac:	e401b783          	ld	a5,-448(gp) # 23848 <__global_locale+0xe0>
   1f7b0:	00060413          	mv	s0,a2
   1f7b4:	02050a63          	beqz	a0,1f7e8 <wcrtomb+0x50>
   1f7b8:	00058613          	mv	a2,a1
   1f7bc:	00040693          	mv	a3,s0
   1f7c0:	00050593          	mv	a1,a0
   1f7c4:	00048513          	mv	a0,s1
   1f7c8:	000780e7          	jalr	a5
   1f7cc:	fff00793          	li	a5,-1
   1f7d0:	02f50a63          	beq	a0,a5,1f804 <wcrtomb+0x6c>
   1f7d4:	02813083          	ld	ra,40(sp)
   1f7d8:	02013403          	ld	s0,32(sp)
   1f7dc:	01813483          	ld	s1,24(sp)
   1f7e0:	03010113          	addi	sp,sp,48
   1f7e4:	00008067          	ret
   1f7e8:	00060693          	mv	a3,a2
   1f7ec:	00010593          	mv	a1,sp
   1f7f0:	00000613          	li	a2,0
   1f7f4:	00048513          	mv	a0,s1
   1f7f8:	000780e7          	jalr	a5
   1f7fc:	fff00793          	li	a5,-1
   1f800:	fcf51ae3          	bne	a0,a5,1f7d4 <wcrtomb+0x3c>
   1f804:	00042023          	sw	zero,0(s0)
   1f808:	02813083          	ld	ra,40(sp)
   1f80c:	02013403          	ld	s0,32(sp)
   1f810:	08a00793          	li	a5,138
   1f814:	00f4a023          	sw	a5,0(s1)
   1f818:	01813483          	ld	s1,24(sp)
   1f81c:	03010113          	addi	sp,sp,48
   1f820:	00008067          	ret

000000000001f824 <abort>:
   1f824:	ff010113          	addi	sp,sp,-16
   1f828:	00600513          	li	a0,6
   1f82c:	00113423          	sd	ra,8(sp)
   1f830:	344000ef          	jal	ra,1fb74 <raise>
   1f834:	00100513          	li	a0,1
   1f838:	674000ef          	jal	ra,1feac <_exit>

000000000001f83c <__register_exitproc>:
   1f83c:	7481b703          	ld	a4,1864(gp) # 24150 <_global_impure_ptr>
   1f840:	1f873783          	ld	a5,504(a4)
   1f844:	06078063          	beqz	a5,1f8a4 <__register_exitproc+0x68>
   1f848:	0087a703          	lw	a4,8(a5)
   1f84c:	01f00813          	li	a6,31
   1f850:	08e84663          	blt	a6,a4,1f8dc <__register_exitproc+0xa0>
   1f854:	02050863          	beqz	a0,1f884 <__register_exitproc+0x48>
   1f858:	00371813          	slli	a6,a4,0x3
   1f85c:	01078833          	add	a6,a5,a6
   1f860:	10c83823          	sd	a2,272(a6)
   1f864:	3107a883          	lw	a7,784(a5)
   1f868:	00100613          	li	a2,1
   1f86c:	00e6163b          	sllw	a2,a2,a4
   1f870:	00c8e8b3          	or	a7,a7,a2
   1f874:	3117a823          	sw	a7,784(a5)
   1f878:	20d83823          	sd	a3,528(a6)
   1f87c:	00200693          	li	a3,2
   1f880:	02d50863          	beq	a0,a3,1f8b0 <__register_exitproc+0x74>
   1f884:	00270693          	addi	a3,a4,2
   1f888:	00369693          	slli	a3,a3,0x3
   1f88c:	0017071b          	addiw	a4,a4,1
   1f890:	00e7a423          	sw	a4,8(a5)
   1f894:	00d787b3          	add	a5,a5,a3
   1f898:	00b7b023          	sd	a1,0(a5)
   1f89c:	00000513          	li	a0,0
   1f8a0:	00008067          	ret
   1f8a4:	20070793          	addi	a5,a4,512
   1f8a8:	1ef73c23          	sd	a5,504(a4)
   1f8ac:	f9dff06f          	j	1f848 <__register_exitproc+0xc>
   1f8b0:	3147a683          	lw	a3,788(a5)
   1f8b4:	00000513          	li	a0,0
   1f8b8:	00c6e6b3          	or	a3,a3,a2
   1f8bc:	30d7aa23          	sw	a3,788(a5)
   1f8c0:	00270693          	addi	a3,a4,2
   1f8c4:	00369693          	slli	a3,a3,0x3
   1f8c8:	0017071b          	addiw	a4,a4,1
   1f8cc:	00e7a423          	sw	a4,8(a5)
   1f8d0:	00d787b3          	add	a5,a5,a3
   1f8d4:	00b7b023          	sd	a1,0(a5)
   1f8d8:	00008067          	ret
   1f8dc:	fff00513          	li	a0,-1
   1f8e0:	00008067          	ret

000000000001f8e4 <_init_signal_r>:
   1f8e4:	51853783          	ld	a5,1304(a0)
   1f8e8:	00078663          	beqz	a5,1f8f4 <_init_signal_r+0x10>
   1f8ec:	00000513          	li	a0,0
   1f8f0:	00008067          	ret
   1f8f4:	ff010113          	addi	sp,sp,-16
   1f8f8:	10000593          	li	a1,256
   1f8fc:	00813023          	sd	s0,0(sp)
   1f900:	00113423          	sd	ra,8(sp)
   1f904:	00050413          	mv	s0,a0
   1f908:	d4cf70ef          	jal	ra,16e54 <_malloc_r>
   1f90c:	50a43c23          	sd	a0,1304(s0)
   1f910:	02050463          	beqz	a0,1f938 <_init_signal_r+0x54>
   1f914:	10050793          	addi	a5,a0,256
   1f918:	00053023          	sd	zero,0(a0)
   1f91c:	00850513          	addi	a0,a0,8
   1f920:	fef51ce3          	bne	a0,a5,1f918 <_init_signal_r+0x34>
   1f924:	00000513          	li	a0,0
   1f928:	00813083          	ld	ra,8(sp)
   1f92c:	00013403          	ld	s0,0(sp)
   1f930:	01010113          	addi	sp,sp,16
   1f934:	00008067          	ret
   1f938:	fff00513          	li	a0,-1
   1f93c:	fedff06f          	j	1f928 <_init_signal_r+0x44>

000000000001f940 <_signal_r>:
   1f940:	fd010113          	addi	sp,sp,-48
   1f944:	00913c23          	sd	s1,24(sp)
   1f948:	02113423          	sd	ra,40(sp)
   1f94c:	02813023          	sd	s0,32(sp)
   1f950:	01f00793          	li	a5,31
   1f954:	00050493          	mv	s1,a0
   1f958:	02b7ea63          	bltu	a5,a1,1f98c <_signal_r+0x4c>
   1f95c:	51853783          	ld	a5,1304(a0)
   1f960:	00058413          	mv	s0,a1
   1f964:	02078c63          	beqz	a5,1f99c <_signal_r+0x5c>
   1f968:	00341413          	slli	s0,s0,0x3
   1f96c:	008787b3          	add	a5,a5,s0
   1f970:	0007b503          	ld	a0,0(a5)
   1f974:	00c7b023          	sd	a2,0(a5)
   1f978:	02813083          	ld	ra,40(sp)
   1f97c:	02013403          	ld	s0,32(sp)
   1f980:	01813483          	ld	s1,24(sp)
   1f984:	03010113          	addi	sp,sp,48
   1f988:	00008067          	ret
   1f98c:	01600793          	li	a5,22
   1f990:	00f52023          	sw	a5,0(a0)
   1f994:	fff00513          	li	a0,-1
   1f998:	fe1ff06f          	j	1f978 <_signal_r+0x38>
   1f99c:	10000593          	li	a1,256
   1f9a0:	00c13423          	sd	a2,8(sp)
   1f9a4:	cb0f70ef          	jal	ra,16e54 <_malloc_r>
   1f9a8:	50a4bc23          	sd	a0,1304(s1)
   1f9ac:	00813603          	ld	a2,8(sp)
   1f9b0:	00050793          	mv	a5,a0
   1f9b4:	00050713          	mv	a4,a0
   1f9b8:	10050693          	addi	a3,a0,256
   1f9bc:	fc050ce3          	beqz	a0,1f994 <_signal_r+0x54>
   1f9c0:	00073023          	sd	zero,0(a4)
   1f9c4:	00870713          	addi	a4,a4,8
   1f9c8:	fed71ce3          	bne	a4,a3,1f9c0 <_signal_r+0x80>
   1f9cc:	f9dff06f          	j	1f968 <_signal_r+0x28>

000000000001f9d0 <_raise_r>:
   1f9d0:	fe010113          	addi	sp,sp,-32
   1f9d4:	00913423          	sd	s1,8(sp)
   1f9d8:	00113c23          	sd	ra,24(sp)
   1f9dc:	00813823          	sd	s0,16(sp)
   1f9e0:	01f00793          	li	a5,31
   1f9e4:	00050493          	mv	s1,a0
   1f9e8:	08b7ee63          	bltu	a5,a1,1fa84 <_raise_r+0xb4>
   1f9ec:	51853783          	ld	a5,1304(a0)
   1f9f0:	00058413          	mv	s0,a1
   1f9f4:	04078463          	beqz	a5,1fa3c <_raise_r+0x6c>
   1f9f8:	00359713          	slli	a4,a1,0x3
   1f9fc:	00e787b3          	add	a5,a5,a4
   1fa00:	0007b703          	ld	a4,0(a5)
   1fa04:	02070c63          	beqz	a4,1fa3c <_raise_r+0x6c>
   1fa08:	00100693          	li	a3,1
   1fa0c:	00d70c63          	beq	a4,a3,1fa24 <_raise_r+0x54>
   1fa10:	fff00693          	li	a3,-1
   1fa14:	04d70863          	beq	a4,a3,1fa64 <_raise_r+0x94>
   1fa18:	0007b023          	sd	zero,0(a5)
   1fa1c:	00058513          	mv	a0,a1
   1fa20:	000700e7          	jalr	a4
   1fa24:	00000513          	li	a0,0
   1fa28:	01813083          	ld	ra,24(sp)
   1fa2c:	01013403          	ld	s0,16(sp)
   1fa30:	00813483          	ld	s1,8(sp)
   1fa34:	02010113          	addi	sp,sp,32
   1fa38:	00008067          	ret
   1fa3c:	00048513          	mv	a0,s1
   1fa40:	424000ef          	jal	ra,1fe64 <_getpid_r>
   1fa44:	00040613          	mv	a2,s0
   1fa48:	01013403          	ld	s0,16(sp)
   1fa4c:	01813083          	ld	ra,24(sp)
   1fa50:	00050593          	mv	a1,a0
   1fa54:	00048513          	mv	a0,s1
   1fa58:	00813483          	ld	s1,8(sp)
   1fa5c:	02010113          	addi	sp,sp,32
   1fa60:	3a00006f          	j	1fe00 <_kill_r>
   1fa64:	01813083          	ld	ra,24(sp)
   1fa68:	01013403          	ld	s0,16(sp)
   1fa6c:	01600793          	li	a5,22
   1fa70:	00f52023          	sw	a5,0(a0)
   1fa74:	00813483          	ld	s1,8(sp)
   1fa78:	00100513          	li	a0,1
   1fa7c:	02010113          	addi	sp,sp,32
   1fa80:	00008067          	ret
   1fa84:	01600793          	li	a5,22
   1fa88:	00f52023          	sw	a5,0(a0)
   1fa8c:	fff00513          	li	a0,-1
   1fa90:	f99ff06f          	j	1fa28 <_raise_r+0x58>

000000000001fa94 <__sigtramp_r>:
   1fa94:	01f00793          	li	a5,31
   1fa98:	0cb7ea63          	bltu	a5,a1,1fb6c <__sigtramp_r+0xd8>
   1fa9c:	51853783          	ld	a5,1304(a0)
   1faa0:	fe010113          	addi	sp,sp,-32
   1faa4:	00813823          	sd	s0,16(sp)
   1faa8:	00913423          	sd	s1,8(sp)
   1faac:	00113c23          	sd	ra,24(sp)
   1fab0:	00058413          	mv	s0,a1
   1fab4:	00050493          	mv	s1,a0
   1fab8:	08078063          	beqz	a5,1fb38 <__sigtramp_r+0xa4>
   1fabc:	00341713          	slli	a4,s0,0x3
   1fac0:	00e787b3          	add	a5,a5,a4
   1fac4:	0007b703          	ld	a4,0(a5)
   1fac8:	02070c63          	beqz	a4,1fb00 <__sigtramp_r+0x6c>
   1facc:	fff00693          	li	a3,-1
   1fad0:	06d70063          	beq	a4,a3,1fb30 <__sigtramp_r+0x9c>
   1fad4:	00100693          	li	a3,1
   1fad8:	04d70063          	beq	a4,a3,1fb18 <__sigtramp_r+0x84>
   1fadc:	00040513          	mv	a0,s0
   1fae0:	0007b023          	sd	zero,0(a5)
   1fae4:	000700e7          	jalr	a4
   1fae8:	00000513          	li	a0,0
   1faec:	01813083          	ld	ra,24(sp)
   1faf0:	01013403          	ld	s0,16(sp)
   1faf4:	00813483          	ld	s1,8(sp)
   1faf8:	02010113          	addi	sp,sp,32
   1fafc:	00008067          	ret
   1fb00:	01813083          	ld	ra,24(sp)
   1fb04:	01013403          	ld	s0,16(sp)
   1fb08:	00813483          	ld	s1,8(sp)
   1fb0c:	00100513          	li	a0,1
   1fb10:	02010113          	addi	sp,sp,32
   1fb14:	00008067          	ret
   1fb18:	01813083          	ld	ra,24(sp)
   1fb1c:	01013403          	ld	s0,16(sp)
   1fb20:	00813483          	ld	s1,8(sp)
   1fb24:	00300513          	li	a0,3
   1fb28:	02010113          	addi	sp,sp,32
   1fb2c:	00008067          	ret
   1fb30:	00200513          	li	a0,2
   1fb34:	fb9ff06f          	j	1faec <__sigtramp_r+0x58>
   1fb38:	10000593          	li	a1,256
   1fb3c:	b18f70ef          	jal	ra,16e54 <_malloc_r>
   1fb40:	50a4bc23          	sd	a0,1304(s1)
   1fb44:	00050793          	mv	a5,a0
   1fb48:	00050e63          	beqz	a0,1fb64 <__sigtramp_r+0xd0>
   1fb4c:	00050713          	mv	a4,a0
   1fb50:	10050693          	addi	a3,a0,256
   1fb54:	00073023          	sd	zero,0(a4)
   1fb58:	00870713          	addi	a4,a4,8
   1fb5c:	fee69ce3          	bne	a3,a4,1fb54 <__sigtramp_r+0xc0>
   1fb60:	f5dff06f          	j	1fabc <__sigtramp_r+0x28>
   1fb64:	fff00513          	li	a0,-1
   1fb68:	f85ff06f          	j	1faec <__sigtramp_r+0x58>
   1fb6c:	fff00513          	li	a0,-1
   1fb70:	00008067          	ret

000000000001fb74 <raise>:
   1fb74:	fe010113          	addi	sp,sp,-32
   1fb78:	00913423          	sd	s1,8(sp)
   1fb7c:	00113c23          	sd	ra,24(sp)
   1fb80:	00813823          	sd	s0,16(sp)
   1fb84:	01f00793          	li	a5,31
   1fb88:	7581b483          	ld	s1,1880(gp) # 24160 <_impure_ptr>
   1fb8c:	08a7ec63          	bltu	a5,a0,1fc24 <raise+0xb0>
   1fb90:	5184b783          	ld	a5,1304(s1)
   1fb94:	00050413          	mv	s0,a0
   1fb98:	04078263          	beqz	a5,1fbdc <raise+0x68>
   1fb9c:	00351713          	slli	a4,a0,0x3
   1fba0:	00e787b3          	add	a5,a5,a4
   1fba4:	0007b703          	ld	a4,0(a5)
   1fba8:	02070a63          	beqz	a4,1fbdc <raise+0x68>
   1fbac:	00100693          	li	a3,1
   1fbb0:	00d70a63          	beq	a4,a3,1fbc4 <raise+0x50>
   1fbb4:	fff00693          	li	a3,-1
   1fbb8:	04d70663          	beq	a4,a3,1fc04 <raise+0x90>
   1fbbc:	0007b023          	sd	zero,0(a5)
   1fbc0:	000700e7          	jalr	a4
   1fbc4:	00000513          	li	a0,0
   1fbc8:	01813083          	ld	ra,24(sp)
   1fbcc:	01013403          	ld	s0,16(sp)
   1fbd0:	00813483          	ld	s1,8(sp)
   1fbd4:	02010113          	addi	sp,sp,32
   1fbd8:	00008067          	ret
   1fbdc:	00048513          	mv	a0,s1
   1fbe0:	284000ef          	jal	ra,1fe64 <_getpid_r>
   1fbe4:	00040613          	mv	a2,s0
   1fbe8:	01013403          	ld	s0,16(sp)
   1fbec:	01813083          	ld	ra,24(sp)
   1fbf0:	00050593          	mv	a1,a0
   1fbf4:	00048513          	mv	a0,s1
   1fbf8:	00813483          	ld	s1,8(sp)
   1fbfc:	02010113          	addi	sp,sp,32
   1fc00:	2000006f          	j	1fe00 <_kill_r>
   1fc04:	01813083          	ld	ra,24(sp)
   1fc08:	01013403          	ld	s0,16(sp)
   1fc0c:	01600793          	li	a5,22
   1fc10:	00f4a023          	sw	a5,0(s1)
   1fc14:	00100513          	li	a0,1
   1fc18:	00813483          	ld	s1,8(sp)
   1fc1c:	02010113          	addi	sp,sp,32
   1fc20:	00008067          	ret
   1fc24:	01600793          	li	a5,22
   1fc28:	00f4a023          	sw	a5,0(s1)
   1fc2c:	fff00513          	li	a0,-1
   1fc30:	f99ff06f          	j	1fbc8 <raise+0x54>

000000000001fc34 <signal>:
   1fc34:	fe010113          	addi	sp,sp,-32
   1fc38:	01213023          	sd	s2,0(sp)
   1fc3c:	00113c23          	sd	ra,24(sp)
   1fc40:	00813823          	sd	s0,16(sp)
   1fc44:	00913423          	sd	s1,8(sp)
   1fc48:	01f00793          	li	a5,31
   1fc4c:	7581b903          	ld	s2,1880(gp) # 24160 <_impure_ptr>
   1fc50:	02a7ee63          	bltu	a5,a0,1fc8c <signal+0x58>
   1fc54:	00050413          	mv	s0,a0
   1fc58:	51893503          	ld	a0,1304(s2)
   1fc5c:	00058493          	mv	s1,a1
   1fc60:	02050e63          	beqz	a0,1fc9c <signal+0x68>
   1fc64:	00341413          	slli	s0,s0,0x3
   1fc68:	008507b3          	add	a5,a0,s0
   1fc6c:	0007b503          	ld	a0,0(a5)
   1fc70:	0097b023          	sd	s1,0(a5)
   1fc74:	01813083          	ld	ra,24(sp)
   1fc78:	01013403          	ld	s0,16(sp)
   1fc7c:	00813483          	ld	s1,8(sp)
   1fc80:	00013903          	ld	s2,0(sp)
   1fc84:	02010113          	addi	sp,sp,32
   1fc88:	00008067          	ret
   1fc8c:	01600793          	li	a5,22
   1fc90:	00f92023          	sw	a5,0(s2)
   1fc94:	fff00513          	li	a0,-1
   1fc98:	fddff06f          	j	1fc74 <signal+0x40>
   1fc9c:	10000593          	li	a1,256
   1fca0:	00090513          	mv	a0,s2
   1fca4:	9b0f70ef          	jal	ra,16e54 <_malloc_r>
   1fca8:	50a93c23          	sd	a0,1304(s2)
   1fcac:	00050793          	mv	a5,a0
   1fcb0:	10050713          	addi	a4,a0,256
   1fcb4:	fe0500e3          	beqz	a0,1fc94 <signal+0x60>
   1fcb8:	0007b023          	sd	zero,0(a5)
   1fcbc:	00878793          	addi	a5,a5,8
   1fcc0:	fee79ce3          	bne	a5,a4,1fcb8 <signal+0x84>
   1fcc4:	fa1ff06f          	j	1fc64 <signal+0x30>

000000000001fcc8 <_init_signal>:
   1fcc8:	ff010113          	addi	sp,sp,-16
   1fccc:	00813023          	sd	s0,0(sp)
   1fcd0:	7581b403          	ld	s0,1880(gp) # 24160 <_impure_ptr>
   1fcd4:	00113423          	sd	ra,8(sp)
   1fcd8:	51843783          	ld	a5,1304(s0)
   1fcdc:	00078c63          	beqz	a5,1fcf4 <_init_signal+0x2c>
   1fce0:	00000513          	li	a0,0
   1fce4:	00813083          	ld	ra,8(sp)
   1fce8:	00013403          	ld	s0,0(sp)
   1fcec:	01010113          	addi	sp,sp,16
   1fcf0:	00008067          	ret
   1fcf4:	10000593          	li	a1,256
   1fcf8:	00040513          	mv	a0,s0
   1fcfc:	958f70ef          	jal	ra,16e54 <_malloc_r>
   1fd00:	50a43c23          	sd	a0,1304(s0)
   1fd04:	00050c63          	beqz	a0,1fd1c <_init_signal+0x54>
   1fd08:	10050793          	addi	a5,a0,256
   1fd0c:	00053023          	sd	zero,0(a0)
   1fd10:	00850513          	addi	a0,a0,8
   1fd14:	fef51ce3          	bne	a0,a5,1fd0c <_init_signal+0x44>
   1fd18:	fc9ff06f          	j	1fce0 <_init_signal+0x18>
   1fd1c:	fff00513          	li	a0,-1
   1fd20:	fc5ff06f          	j	1fce4 <_init_signal+0x1c>

000000000001fd24 <__sigtramp>:
   1fd24:	fe010113          	addi	sp,sp,-32
   1fd28:	00913423          	sd	s1,8(sp)
   1fd2c:	00113c23          	sd	ra,24(sp)
   1fd30:	00813823          	sd	s0,16(sp)
   1fd34:	01f00793          	li	a5,31
   1fd38:	7581b483          	ld	s1,1880(gp) # 24160 <_impure_ptr>
   1fd3c:	0aa7ee63          	bltu	a5,a0,1fdf8 <__sigtramp+0xd4>
   1fd40:	5184b783          	ld	a5,1304(s1)
   1fd44:	00050413          	mv	s0,a0
   1fd48:	08078063          	beqz	a5,1fdc8 <__sigtramp+0xa4>
   1fd4c:	00341713          	slli	a4,s0,0x3
   1fd50:	00e787b3          	add	a5,a5,a4
   1fd54:	0007b703          	ld	a4,0(a5)
   1fd58:	02070c63          	beqz	a4,1fd90 <__sigtramp+0x6c>
   1fd5c:	fff00693          	li	a3,-1
   1fd60:	06d70063          	beq	a4,a3,1fdc0 <__sigtramp+0x9c>
   1fd64:	00100693          	li	a3,1
   1fd68:	04d70063          	beq	a4,a3,1fda8 <__sigtramp+0x84>
   1fd6c:	00040513          	mv	a0,s0
   1fd70:	0007b023          	sd	zero,0(a5)
   1fd74:	000700e7          	jalr	a4
   1fd78:	00000513          	li	a0,0
   1fd7c:	01813083          	ld	ra,24(sp)
   1fd80:	01013403          	ld	s0,16(sp)
   1fd84:	00813483          	ld	s1,8(sp)
   1fd88:	02010113          	addi	sp,sp,32
   1fd8c:	00008067          	ret
   1fd90:	01813083          	ld	ra,24(sp)
   1fd94:	01013403          	ld	s0,16(sp)
   1fd98:	00813483          	ld	s1,8(sp)
   1fd9c:	00100513          	li	a0,1
   1fda0:	02010113          	addi	sp,sp,32
   1fda4:	00008067          	ret
   1fda8:	01813083          	ld	ra,24(sp)
   1fdac:	01013403          	ld	s0,16(sp)
   1fdb0:	00813483          	ld	s1,8(sp)
   1fdb4:	00300513          	li	a0,3
   1fdb8:	02010113          	addi	sp,sp,32
   1fdbc:	00008067          	ret
   1fdc0:	00200513          	li	a0,2
   1fdc4:	fb9ff06f          	j	1fd7c <__sigtramp+0x58>
   1fdc8:	10000593          	li	a1,256
   1fdcc:	00048513          	mv	a0,s1
   1fdd0:	884f70ef          	jal	ra,16e54 <_malloc_r>
   1fdd4:	50a4bc23          	sd	a0,1304(s1)
   1fdd8:	00050793          	mv	a5,a0
   1fddc:	00050e63          	beqz	a0,1fdf8 <__sigtramp+0xd4>
   1fde0:	00050713          	mv	a4,a0
   1fde4:	10050693          	addi	a3,a0,256
   1fde8:	00073023          	sd	zero,0(a4)
   1fdec:	00870713          	addi	a4,a4,8
   1fdf0:	fee69ce3          	bne	a3,a4,1fde8 <__sigtramp+0xc4>
   1fdf4:	f59ff06f          	j	1fd4c <__sigtramp+0x28>
   1fdf8:	fff00513          	li	a0,-1
   1fdfc:	f81ff06f          	j	1fd7c <__sigtramp+0x58>

000000000001fe00 <_kill_r>:
   1fe00:	fe010113          	addi	sp,sp,-32
   1fe04:	00058713          	mv	a4,a1
   1fe08:	00813823          	sd	s0,16(sp)
   1fe0c:	00913423          	sd	s1,8(sp)
   1fe10:	00050413          	mv	s0,a0
   1fe14:	00060593          	mv	a1,a2
   1fe18:	00070513          	mv	a0,a4
   1fe1c:	00113c23          	sd	ra,24(sp)
   1fe20:	7801a823          	sw	zero,1936(gp) # 24198 <errno>
   1fe24:	164000ef          	jal	ra,1ff88 <_kill>
   1fe28:	fff00793          	li	a5,-1
   1fe2c:	00f50c63          	beq	a0,a5,1fe44 <_kill_r+0x44>
   1fe30:	01813083          	ld	ra,24(sp)
   1fe34:	01013403          	ld	s0,16(sp)
   1fe38:	00813483          	ld	s1,8(sp)
   1fe3c:	02010113          	addi	sp,sp,32
   1fe40:	00008067          	ret
   1fe44:	7901a783          	lw	a5,1936(gp) # 24198 <errno>
   1fe48:	fe0784e3          	beqz	a5,1fe30 <_kill_r+0x30>
   1fe4c:	01813083          	ld	ra,24(sp)
   1fe50:	00f42023          	sw	a5,0(s0)
   1fe54:	01013403          	ld	s0,16(sp)
   1fe58:	00813483          	ld	s1,8(sp)
   1fe5c:	02010113          	addi	sp,sp,32
   1fe60:	00008067          	ret

000000000001fe64 <_getpid_r>:
   1fe64:	0dc0006f          	j	1ff40 <_getpid>

000000000001fe68 <_close>:
   1fe68:	ff010113          	addi	sp,sp,-16
   1fe6c:	00113423          	sd	ra,8(sp)
   1fe70:	00813023          	sd	s0,0(sp)
   1fe74:	03900893          	li	a7,57
   1fe78:	00000073          	ecall
   1fe7c:	00050413          	mv	s0,a0
   1fe80:	00054c63          	bltz	a0,1fe98 <_close+0x30>
   1fe84:	0005051b          	sext.w	a0,a0
   1fe88:	00813083          	ld	ra,8(sp)
   1fe8c:	00013403          	ld	s0,0(sp)
   1fe90:	01010113          	addi	sp,sp,16
   1fe94:	00008067          	ret
   1fe98:	8d0fd0ef          	jal	ra,1cf68 <__errno>
   1fe9c:	4080043b          	negw	s0,s0
   1fea0:	00852023          	sw	s0,0(a0)
   1fea4:	fff00513          	li	a0,-1
   1fea8:	fe1ff06f          	j	1fe88 <_close+0x20>

000000000001feac <_exit>:
   1feac:	05d00893          	li	a7,93
   1feb0:	00000073          	ecall
   1feb4:	00054463          	bltz	a0,1febc <_exit+0x10>
   1feb8:	0000006f          	j	1feb8 <_exit+0xc>
   1febc:	ff010113          	addi	sp,sp,-16
   1fec0:	00813023          	sd	s0,0(sp)
   1fec4:	00050413          	mv	s0,a0
   1fec8:	00113423          	sd	ra,8(sp)
   1fecc:	4080043b          	negw	s0,s0
   1fed0:	898fd0ef          	jal	ra,1cf68 <__errno>
   1fed4:	00852023          	sw	s0,0(a0)
   1fed8:	0000006f          	j	1fed8 <_exit+0x2c>

000000000001fedc <_fstat>:
   1fedc:	f6010113          	addi	sp,sp,-160
   1fee0:	08913423          	sd	s1,136(sp)
   1fee4:	08113c23          	sd	ra,152(sp)
   1fee8:	00058493          	mv	s1,a1
   1feec:	08813823          	sd	s0,144(sp)
   1fef0:	05000893          	li	a7,80
   1fef4:	00010593          	mv	a1,sp
   1fef8:	00000073          	ecall
   1fefc:	00050413          	mv	s0,a0
   1ff00:	02054663          	bltz	a0,1ff2c <_fstat+0x50>
   1ff04:	0005041b          	sext.w	s0,a0
   1ff08:	00048513          	mv	a0,s1
   1ff0c:	00010593          	mv	a1,sp
   1ff10:	1e0000ef          	jal	ra,200f0 <_conv_stat>
   1ff14:	09813083          	ld	ra,152(sp)
   1ff18:	00040513          	mv	a0,s0
   1ff1c:	09013403          	ld	s0,144(sp)
   1ff20:	08813483          	ld	s1,136(sp)
   1ff24:	0a010113          	addi	sp,sp,160
   1ff28:	00008067          	ret
   1ff2c:	4080043b          	negw	s0,s0
   1ff30:	838fd0ef          	jal	ra,1cf68 <__errno>
   1ff34:	00852023          	sw	s0,0(a0)
   1ff38:	fff00413          	li	s0,-1
   1ff3c:	fcdff06f          	j	1ff08 <_fstat+0x2c>

000000000001ff40 <_getpid>:
   1ff40:	00100513          	li	a0,1
   1ff44:	00008067          	ret

000000000001ff48 <_isatty>:
   1ff48:	f8010113          	addi	sp,sp,-128
   1ff4c:	00810593          	addi	a1,sp,8
   1ff50:	06113c23          	sd	ra,120(sp)
   1ff54:	f89ff0ef          	jal	ra,1fedc <_fstat>
   1ff58:	fff00793          	li	a5,-1
   1ff5c:	00f50e63          	beq	a0,a5,1ff78 <_isatty+0x30>
   1ff60:	00c12503          	lw	a0,12(sp)
   1ff64:	07813083          	ld	ra,120(sp)
   1ff68:	40d5551b          	sraiw	a0,a0,0xd
   1ff6c:	00157513          	andi	a0,a0,1
   1ff70:	08010113          	addi	sp,sp,128
   1ff74:	00008067          	ret
   1ff78:	07813083          	ld	ra,120(sp)
   1ff7c:	00000513          	li	a0,0
   1ff80:	08010113          	addi	sp,sp,128
   1ff84:	00008067          	ret

000000000001ff88 <_kill>:
   1ff88:	ff010113          	addi	sp,sp,-16
   1ff8c:	00113423          	sd	ra,8(sp)
   1ff90:	fd9fc0ef          	jal	ra,1cf68 <__errno>
   1ff94:	00813083          	ld	ra,8(sp)
   1ff98:	01600793          	li	a5,22
   1ff9c:	00f52023          	sw	a5,0(a0)
   1ffa0:	fff00513          	li	a0,-1
   1ffa4:	01010113          	addi	sp,sp,16
   1ffa8:	00008067          	ret

000000000001ffac <_lseek>:
   1ffac:	ff010113          	addi	sp,sp,-16
   1ffb0:	00113423          	sd	ra,8(sp)
   1ffb4:	00813023          	sd	s0,0(sp)
   1ffb8:	03e00893          	li	a7,62
   1ffbc:	00000073          	ecall
   1ffc0:	00050413          	mv	s0,a0
   1ffc4:	00054c63          	bltz	a0,1ffdc <_lseek+0x30>
   1ffc8:	00813083          	ld	ra,8(sp)
   1ffcc:	00040513          	mv	a0,s0
   1ffd0:	00013403          	ld	s0,0(sp)
   1ffd4:	01010113          	addi	sp,sp,16
   1ffd8:	00008067          	ret
   1ffdc:	4080043b          	negw	s0,s0
   1ffe0:	f89fc0ef          	jal	ra,1cf68 <__errno>
   1ffe4:	00852023          	sw	s0,0(a0)
   1ffe8:	fff00413          	li	s0,-1
   1ffec:	fddff06f          	j	1ffc8 <_lseek+0x1c>

000000000001fff0 <_read>:
   1fff0:	ff010113          	addi	sp,sp,-16
   1fff4:	00113423          	sd	ra,8(sp)
   1fff8:	00813023          	sd	s0,0(sp)
   1fffc:	03f00893          	li	a7,63
   20000:	00000073          	ecall
   20004:	00050413          	mv	s0,a0
   20008:	00054c63          	bltz	a0,20020 <_read+0x30>
   2000c:	00813083          	ld	ra,8(sp)
   20010:	00040513          	mv	a0,s0
   20014:	00013403          	ld	s0,0(sp)
   20018:	01010113          	addi	sp,sp,16
   2001c:	00008067          	ret
   20020:	4080043b          	negw	s0,s0
   20024:	f45fc0ef          	jal	ra,1cf68 <__errno>
   20028:	00852023          	sw	s0,0(a0)
   2002c:	fff00413          	li	s0,-1
   20030:	fddff06f          	j	2000c <_read+0x1c>

0000000000020034 <_sbrk>:
   20034:	7981b703          	ld	a4,1944(gp) # 241a0 <heap_end.0>
   20038:	ff010113          	addi	sp,sp,-16
   2003c:	00113423          	sd	ra,8(sp)
   20040:	00050793          	mv	a5,a0
   20044:	02071063          	bnez	a4,20064 <_sbrk+0x30>
   20048:	0d600893          	li	a7,214
   2004c:	00000513          	li	a0,0
   20050:	00000073          	ecall
   20054:	fff00613          	li	a2,-1
   20058:	00050713          	mv	a4,a0
   2005c:	02c50a63          	beq	a0,a2,20090 <_sbrk+0x5c>
   20060:	78a1bc23          	sd	a0,1944(gp) # 241a0 <heap_end.0>
   20064:	0d600893          	li	a7,214
   20068:	00e78533          	add	a0,a5,a4
   2006c:	00000073          	ecall
   20070:	7981b703          	ld	a4,1944(gp) # 241a0 <heap_end.0>
   20074:	00e787b3          	add	a5,a5,a4
   20078:	00f51c63          	bne	a0,a5,20090 <_sbrk+0x5c>
   2007c:	00813083          	ld	ra,8(sp)
   20080:	78a1bc23          	sd	a0,1944(gp) # 241a0 <heap_end.0>
   20084:	00070513          	mv	a0,a4
   20088:	01010113          	addi	sp,sp,16
   2008c:	00008067          	ret
   20090:	ed9fc0ef          	jal	ra,1cf68 <__errno>
   20094:	00813083          	ld	ra,8(sp)
   20098:	00c00793          	li	a5,12
   2009c:	00f52023          	sw	a5,0(a0)
   200a0:	fff00513          	li	a0,-1
   200a4:	01010113          	addi	sp,sp,16
   200a8:	00008067          	ret

00000000000200ac <_write>:
   200ac:	ff010113          	addi	sp,sp,-16
   200b0:	00113423          	sd	ra,8(sp)
   200b4:	00813023          	sd	s0,0(sp)
   200b8:	04000893          	li	a7,64
   200bc:	00000073          	ecall
   200c0:	00050413          	mv	s0,a0
   200c4:	00054c63          	bltz	a0,200dc <_write+0x30>
   200c8:	00813083          	ld	ra,8(sp)
   200cc:	00040513          	mv	a0,s0
   200d0:	00013403          	ld	s0,0(sp)
   200d4:	01010113          	addi	sp,sp,16
   200d8:	00008067          	ret
   200dc:	4080043b          	negw	s0,s0
   200e0:	e89fc0ef          	jal	ra,1cf68 <__errno>
   200e4:	00852023          	sw	s0,0(a0)
   200e8:	fff00413          	li	s0,-1
   200ec:	fddff06f          	j	200c8 <_write+0x1c>

00000000000200f0 <_conv_stat>:
   200f0:	0185d703          	lhu	a4,24(a1)
   200f4:	0145d783          	lhu	a5,20(a1)
   200f8:	01c5a603          	lw	a2,28(a1)
   200fc:	0205b683          	ld	a3,32(a1)
   20100:	0005b303          	ld	t1,0(a1)
   20104:	0085b883          	ld	a7,8(a1)
   20108:	0105a803          	lw	a6,16(a1)
   2010c:	0107171b          	slliw	a4,a4,0x10
   20110:	00e7e7b3          	or	a5,a5,a4
   20114:	00c51623          	sh	a2,12(a0)
   20118:	00d51723          	sh	a3,14(a0)
   2011c:	00651023          	sh	t1,0(a0)
   20120:	01151123          	sh	a7,2(a0)
   20124:	01052223          	sw	a6,4(a0)
   20128:	00f52423          	sw	a5,8(a0)
   2012c:	0305b703          	ld	a4,48(a1)
   20130:	0485b783          	ld	a5,72(a1)
   20134:	0405b603          	ld	a2,64(a1)
   20138:	0385a683          	lw	a3,56(a1)
   2013c:	00e53823          	sd	a4,16(a0)
   20140:	00f53c23          	sd	a5,24(a0)
   20144:	0585b703          	ld	a4,88(a1)
   20148:	0685b783          	ld	a5,104(a1)
   2014c:	04c53823          	sd	a2,80(a0)
   20150:	04d53423          	sd	a3,72(a0)
   20154:	02e53423          	sd	a4,40(a0)
   20158:	02f53c23          	sd	a5,56(a0)
   2015c:	00008067          	ret

0000000000020160 <__divdf3>:
   20160:	fb010113          	addi	sp,sp,-80
   20164:	02913c23          	sd	s1,56(sp)
   20168:	03455493          	srli	s1,a0,0x34
   2016c:	03313423          	sd	s3,40(sp)
   20170:	01513c23          	sd	s5,24(sp)
   20174:	01613823          	sd	s6,16(sp)
   20178:	00c51a93          	slli	s5,a0,0xc
   2017c:	04113423          	sd	ra,72(sp)
   20180:	04813023          	sd	s0,64(sp)
   20184:	03213823          	sd	s2,48(sp)
   20188:	03413023          	sd	s4,32(sp)
   2018c:	01713423          	sd	s7,8(sp)
   20190:	01813023          	sd	s8,0(sp)
   20194:	7ff4f493          	andi	s1,s1,2047
   20198:	00058b13          	mv	s6,a1
   2019c:	00cada93          	srli	s5,s5,0xc
   201a0:	03f55993          	srli	s3,a0,0x3f
   201a4:	08048863          	beqz	s1,20234 <__divdf3+0xd4>
   201a8:	7ff00793          	li	a5,2047
   201ac:	0af48663          	beq	s1,a5,20258 <__divdf3+0xf8>
   201b0:	00100793          	li	a5,1
   201b4:	003a9a93          	slli	s5,s5,0x3
   201b8:	03779793          	slli	a5,a5,0x37
   201bc:	00faeab3          	or	s5,s5,a5
   201c0:	c0148493          	addi	s1,s1,-1023
   201c4:	00000b93          	li	s7,0
   201c8:	034b5793          	srli	a5,s6,0x34
   201cc:	00cb1413          	slli	s0,s6,0xc
   201d0:	7ff7f793          	andi	a5,a5,2047
   201d4:	00c45413          	srli	s0,s0,0xc
   201d8:	03fb5b13          	srli	s6,s6,0x3f
   201dc:	08078e63          	beqz	a5,20278 <__divdf3+0x118>
   201e0:	7ff00713          	li	a4,2047
   201e4:	0ae78c63          	beq	a5,a4,2029c <__divdf3+0x13c>
   201e8:	00100713          	li	a4,1
   201ec:	00341413          	slli	s0,s0,0x3
   201f0:	03771713          	slli	a4,a4,0x37
   201f4:	00e46433          	or	s0,s0,a4
   201f8:	c0178793          	addi	a5,a5,-1023
   201fc:	00000713          	li	a4,0
   20200:	40f48a33          	sub	s4,s1,a5
   20204:	002b9793          	slli	a5,s7,0x2
   20208:	00e7e7b3          	or	a5,a5,a4
   2020c:	fff78793          	addi	a5,a5,-1
   20210:	00e00693          	li	a3,14
   20214:	0169c933          	xor	s2,s3,s6
   20218:	0cf6ea63          	bltu	a3,a5,202ec <__divdf3+0x18c>
   2021c:	000236b7          	lui	a3,0x23
   20220:	00279793          	slli	a5,a5,0x2
   20224:	d4068693          	addi	a3,a3,-704 # 22d40 <blanks.1+0x10>
   20228:	00d787b3          	add	a5,a5,a3
   2022c:	0007a783          	lw	a5,0(a5)
   20230:	00078067          	jr	a5
   20234:	020a8c63          	beqz	s5,2026c <__divdf3+0x10c>
   20238:	000a8513          	mv	a0,s5
   2023c:	4d9010ef          	jal	ra,21f14 <__clzdi2>
   20240:	0005079b          	sext.w	a5,a0
   20244:	c0d00493          	li	s1,-1011
   20248:	ff85051b          	addiw	a0,a0,-8
   2024c:	00aa9ab3          	sll	s5,s5,a0
   20250:	40f484b3          	sub	s1,s1,a5
   20254:	f71ff06f          	j	201c4 <__divdf3+0x64>
   20258:	7ff00493          	li	s1,2047
   2025c:	00300b93          	li	s7,3
   20260:	f60a94e3          	bnez	s5,201c8 <__divdf3+0x68>
   20264:	00200b93          	li	s7,2
   20268:	f61ff06f          	j	201c8 <__divdf3+0x68>
   2026c:	00000493          	li	s1,0
   20270:	00100b93          	li	s7,1
   20274:	f55ff06f          	j	201c8 <__divdf3+0x68>
   20278:	02040c63          	beqz	s0,202b0 <__divdf3+0x150>
   2027c:	00040513          	mv	a0,s0
   20280:	495010ef          	jal	ra,21f14 <__clzdi2>
   20284:	0005071b          	sext.w	a4,a0
   20288:	c0d00793          	li	a5,-1011
   2028c:	ff85051b          	addiw	a0,a0,-8
   20290:	00a41433          	sll	s0,s0,a0
   20294:	40e787b3          	sub	a5,a5,a4
   20298:	f65ff06f          	j	201fc <__divdf3+0x9c>
   2029c:	7ff00793          	li	a5,2047
   202a0:	00300713          	li	a4,3
   202a4:	f4041ee3          	bnez	s0,20200 <__divdf3+0xa0>
   202a8:	00200713          	li	a4,2
   202ac:	f55ff06f          	j	20200 <__divdf3+0xa0>
   202b0:	00000793          	li	a5,0
   202b4:	00100713          	li	a4,1
   202b8:	f49ff06f          	j	20200 <__divdf3+0xa0>
   202bc:	00098913          	mv	s2,s3
   202c0:	000a8413          	mv	s0,s5
   202c4:	000b8713          	mv	a4,s7
   202c8:	00200793          	li	a5,2
   202cc:	22f70663          	beq	a4,a5,204f8 <__divdf3+0x398>
   202d0:	00300793          	li	a5,3
   202d4:	20f70863          	beq	a4,a5,204e4 <__divdf3+0x384>
   202d8:	00100793          	li	a5,1
   202dc:	0ef71c63          	bne	a4,a5,203d4 <__divdf3+0x274>
   202e0:	00000793          	li	a5,0
   202e4:	00000513          	li	a0,0
   202e8:	1380006f          	j	20420 <__divdf3+0x2c0>
   202ec:	00841c13          	slli	s8,s0,0x8
   202f0:	168afc63          	bgeu	s5,s0,20468 <__divdf3+0x308>
   202f4:	fffa0a13          	addi	s4,s4,-1
   202f8:	00000413          	li	s0,0
   202fc:	020c5b13          	srli	s6,s8,0x20
   20300:	fff00993          	li	s3,-1
   20304:	000b0593          	mv	a1,s6
   20308:	0209d993          	srli	s3,s3,0x20
   2030c:	000a8513          	mv	a0,s5
   20310:	94cf00ef          	jal	ra,1045c <__hidden___udivdi3>
   20314:	013c79b3          	and	s3,s8,s3
   20318:	00050593          	mv	a1,a0
   2031c:	00050b93          	mv	s7,a0
   20320:	00098513          	mv	a0,s3
   20324:	3cd010ef          	jal	ra,21ef0 <__muldi3>
   20328:	00050493          	mv	s1,a0
   2032c:	000b0593          	mv	a1,s6
   20330:	000a8513          	mv	a0,s5
   20334:	970f00ef          	jal	ra,104a4 <__umoddi3>
   20338:	02045793          	srli	a5,s0,0x20
   2033c:	02051513          	slli	a0,a0,0x20
   20340:	00a7e7b3          	or	a5,a5,a0
   20344:	000b8413          	mv	s0,s7
   20348:	0097fe63          	bgeu	a5,s1,20364 <__divdf3+0x204>
   2034c:	00fc07b3          	add	a5,s8,a5
   20350:	fffb8413          	addi	s0,s7,-1
   20354:	0187e863          	bltu	a5,s8,20364 <__divdf3+0x204>
   20358:	0097f663          	bgeu	a5,s1,20364 <__divdf3+0x204>
   2035c:	ffeb8413          	addi	s0,s7,-2
   20360:	018787b3          	add	a5,a5,s8
   20364:	409784b3          	sub	s1,a5,s1
   20368:	000b0593          	mv	a1,s6
   2036c:	00048513          	mv	a0,s1
   20370:	8ecf00ef          	jal	ra,1045c <__hidden___udivdi3>
   20374:	00050593          	mv	a1,a0
   20378:	00050a93          	mv	s5,a0
   2037c:	00098513          	mv	a0,s3
   20380:	371010ef          	jal	ra,21ef0 <__muldi3>
   20384:	00050993          	mv	s3,a0
   20388:	000b0593          	mv	a1,s6
   2038c:	00048513          	mv	a0,s1
   20390:	914f00ef          	jal	ra,104a4 <__umoddi3>
   20394:	02051793          	slli	a5,a0,0x20
   20398:	000a8713          	mv	a4,s5
   2039c:	0337f263          	bgeu	a5,s3,203c0 <__divdf3+0x260>
   203a0:	018786b3          	add	a3,a5,s8
   203a4:	00f6b633          	sltu	a2,a3,a5
   203a8:	fffa8713          	addi	a4,s5,-1
   203ac:	00068793          	mv	a5,a3
   203b0:	00061863          	bnez	a2,203c0 <__divdf3+0x260>
   203b4:	0136f663          	bgeu	a3,s3,203c0 <__divdf3+0x260>
   203b8:	ffea8713          	addi	a4,s5,-2
   203bc:	018687b3          	add	a5,a3,s8
   203c0:	02041413          	slli	s0,s0,0x20
   203c4:	413787b3          	sub	a5,a5,s3
   203c8:	00e46433          	or	s0,s0,a4
   203cc:	00f037b3          	snez	a5,a5
   203d0:	00f46433          	or	s0,s0,a5
   203d4:	3ffa0513          	addi	a0,s4,1023
   203d8:	0aa05263          	blez	a0,2047c <__divdf3+0x31c>
   203dc:	00747793          	andi	a5,s0,7
   203e0:	00078a63          	beqz	a5,203f4 <__divdf3+0x294>
   203e4:	00f47793          	andi	a5,s0,15
   203e8:	00400713          	li	a4,4
   203ec:	00e78463          	beq	a5,a4,203f4 <__divdf3+0x294>
   203f0:	00440413          	addi	s0,s0,4
   203f4:	03845793          	srli	a5,s0,0x38
   203f8:	0017f793          	andi	a5,a5,1
   203fc:	00078c63          	beqz	a5,20414 <__divdf3+0x2b4>
   20400:	fff00793          	li	a5,-1
   20404:	03879793          	slli	a5,a5,0x38
   20408:	fff78793          	addi	a5,a5,-1
   2040c:	00f47433          	and	s0,s0,a5
   20410:	400a0513          	addi	a0,s4,1024
   20414:	7fe00793          	li	a5,2046
   20418:	0ea7c063          	blt	a5,a0,204f8 <__divdf3+0x398>
   2041c:	00345793          	srli	a5,s0,0x3
   20420:	04813083          	ld	ra,72(sp)
   20424:	04013403          	ld	s0,64(sp)
   20428:	00c79793          	slli	a5,a5,0xc
   2042c:	03451513          	slli	a0,a0,0x34
   20430:	00c7d793          	srli	a5,a5,0xc
   20434:	03f91913          	slli	s2,s2,0x3f
   20438:	00f56533          	or	a0,a0,a5
   2043c:	03813483          	ld	s1,56(sp)
   20440:	02813983          	ld	s3,40(sp)
   20444:	02013a03          	ld	s4,32(sp)
   20448:	01813a83          	ld	s5,24(sp)
   2044c:	01013b03          	ld	s6,16(sp)
   20450:	00813b83          	ld	s7,8(sp)
   20454:	00013c03          	ld	s8,0(sp)
   20458:	01256533          	or	a0,a0,s2
   2045c:	03013903          	ld	s2,48(sp)
   20460:	05010113          	addi	sp,sp,80
   20464:	00008067          	ret
   20468:	03fa9413          	slli	s0,s5,0x3f
   2046c:	001ada93          	srli	s5,s5,0x1
   20470:	e8dff06f          	j	202fc <__divdf3+0x19c>
   20474:	000b0913          	mv	s2,s6
   20478:	e51ff06f          	j	202c8 <__divdf3+0x168>
   2047c:	00100713          	li	a4,1
   20480:	00050c63          	beqz	a0,20498 <__divdf3+0x338>
   20484:	40a70733          	sub	a4,a4,a0
   20488:	03800693          	li	a3,56
   2048c:	00000793          	li	a5,0
   20490:	00000513          	li	a0,0
   20494:	f8e6c6e3          	blt	a3,a4,20420 <__divdf3+0x2c0>
   20498:	04000693          	li	a3,64
   2049c:	00e457b3          	srl	a5,s0,a4
   204a0:	40e6873b          	subw	a4,a3,a4
   204a4:	00e41433          	sll	s0,s0,a4
   204a8:	00803433          	snez	s0,s0
   204ac:	0087e7b3          	or	a5,a5,s0
   204b0:	0077f713          	andi	a4,a5,7
   204b4:	00070a63          	beqz	a4,204c8 <__divdf3+0x368>
   204b8:	00f7f713          	andi	a4,a5,15
   204bc:	00400693          	li	a3,4
   204c0:	00d70463          	beq	a4,a3,204c8 <__divdf3+0x368>
   204c4:	00478793          	addi	a5,a5,4
   204c8:	0377d713          	srli	a4,a5,0x37
   204cc:	00177713          	andi	a4,a4,1
   204d0:	0037d793          	srli	a5,a5,0x3
   204d4:	e00708e3          	beqz	a4,202e4 <__divdf3+0x184>
   204d8:	00000793          	li	a5,0
   204dc:	00100513          	li	a0,1
   204e0:	f41ff06f          	j	20420 <__divdf3+0x2c0>
   204e4:	00100793          	li	a5,1
   204e8:	03379793          	slli	a5,a5,0x33
   204ec:	7ff00513          	li	a0,2047
   204f0:	00000913          	li	s2,0
   204f4:	f2dff06f          	j	20420 <__divdf3+0x2c0>
   204f8:	00000793          	li	a5,0
   204fc:	7ff00513          	li	a0,2047
   20500:	f21ff06f          	j	20420 <__divdf3+0x2c0>

0000000000020504 <__muldf3>:
   20504:	fc010113          	addi	sp,sp,-64
   20508:	03213023          	sd	s2,32(sp)
   2050c:	03455913          	srli	s2,a0,0x34
   20510:	02913423          	sd	s1,40(sp)
   20514:	01313c23          	sd	s3,24(sp)
   20518:	01513423          	sd	s5,8(sp)
   2051c:	00c51493          	slli	s1,a0,0xc
   20520:	02113c23          	sd	ra,56(sp)
   20524:	02813823          	sd	s0,48(sp)
   20528:	01413823          	sd	s4,16(sp)
   2052c:	7ff97913          	andi	s2,s2,2047
   20530:	00058a93          	mv	s5,a1
   20534:	00c4d493          	srli	s1,s1,0xc
   20538:	03f55993          	srli	s3,a0,0x3f
   2053c:	1c090c63          	beqz	s2,20714 <__muldf3+0x210>
   20540:	7ff00793          	li	a5,2047
   20544:	1ef90a63          	beq	s2,a5,20738 <__muldf3+0x234>
   20548:	00100793          	li	a5,1
   2054c:	00349493          	slli	s1,s1,0x3
   20550:	03779793          	slli	a5,a5,0x37
   20554:	00f4e4b3          	or	s1,s1,a5
   20558:	c0190913          	addi	s2,s2,-1023
   2055c:	00000a13          	li	s4,0
   20560:	034ad793          	srli	a5,s5,0x34
   20564:	00ca9413          	slli	s0,s5,0xc
   20568:	7ff7f793          	andi	a5,a5,2047
   2056c:	00c45413          	srli	s0,s0,0xc
   20570:	03fada93          	srli	s5,s5,0x3f
   20574:	1e078263          	beqz	a5,20758 <__muldf3+0x254>
   20578:	7ff00713          	li	a4,2047
   2057c:	20e78063          	beq	a5,a4,2077c <__muldf3+0x278>
   20580:	00100713          	li	a4,1
   20584:	00341413          	slli	s0,s0,0x3
   20588:	03771713          	slli	a4,a4,0x37
   2058c:	00e46433          	or	s0,s0,a4
   20590:	c0178793          	addi	a5,a5,-1023
   20594:	00000693          	li	a3,0
   20598:	002a1713          	slli	a4,s4,0x2
   2059c:	00f90933          	add	s2,s2,a5
   205a0:	00d76733          	or	a4,a4,a3
   205a4:	00a00793          	li	a5,10
   205a8:	0159c833          	xor	a6,s3,s5
   205ac:	00190893          	addi	a7,s2,1
   205b0:	22e7ca63          	blt	a5,a4,207e4 <__muldf3+0x2e0>
   205b4:	00200793          	li	a5,2
   205b8:	1ee7c263          	blt	a5,a4,2079c <__muldf3+0x298>
   205bc:	fff70713          	addi	a4,a4,-1
   205c0:	00100793          	li	a5,1
   205c4:	1ee7fe63          	bgeu	a5,a4,207c0 <__muldf3+0x2bc>
   205c8:	fff00793          	li	a5,-1
   205cc:	0207d793          	srli	a5,a5,0x20
   205d0:	0204df13          	srli	t5,s1,0x20
   205d4:	00f4f4b3          	and	s1,s1,a5
   205d8:	00f477b3          	and	a5,s0,a5
   205dc:	02045e93          	srli	t4,s0,0x20
   205e0:	00048513          	mv	a0,s1
   205e4:	00078593          	mv	a1,a5
   205e8:	109010ef          	jal	ra,21ef0 <__muldi3>
   205ec:	00050313          	mv	t1,a0
   205f0:	000e8593          	mv	a1,t4
   205f4:	00048513          	mv	a0,s1
   205f8:	0f9010ef          	jal	ra,21ef0 <__muldi3>
   205fc:	00050713          	mv	a4,a0
   20600:	00078593          	mv	a1,a5
   20604:	000f0513          	mv	a0,t5
   20608:	0e9010ef          	jal	ra,21ef0 <__muldi3>
   2060c:	00050e13          	mv	t3,a0
   20610:	000e8593          	mv	a1,t4
   20614:	000f0513          	mv	a0,t5
   20618:	0d9010ef          	jal	ra,21ef0 <__muldi3>
   2061c:	02035793          	srli	a5,t1,0x20
   20620:	01c70733          	add	a4,a4,t3
   20624:	00e787b3          	add	a5,a5,a4
   20628:	00050693          	mv	a3,a0
   2062c:	01c7f863          	bgeu	a5,t3,2063c <__muldf3+0x138>
   20630:	00100713          	li	a4,1
   20634:	02071713          	slli	a4,a4,0x20
   20638:	00e506b3          	add	a3,a0,a4
   2063c:	fff00613          	li	a2,-1
   20640:	02065613          	srli	a2,a2,0x20
   20644:	00c7f733          	and	a4,a5,a2
   20648:	02071713          	slli	a4,a4,0x20
   2064c:	00c37333          	and	t1,t1,a2
   20650:	00670733          	add	a4,a4,t1
   20654:	00971413          	slli	s0,a4,0x9
   20658:	0207d793          	srli	a5,a5,0x20
   2065c:	00803433          	snez	s0,s0
   20660:	03775713          	srli	a4,a4,0x37
   20664:	00d787b3          	add	a5,a5,a3
   20668:	00979793          	slli	a5,a5,0x9
   2066c:	00e46433          	or	s0,s0,a4
   20670:	0087e433          	or	s0,a5,s0
   20674:	0387d793          	srli	a5,a5,0x38
   20678:	0017f793          	andi	a5,a5,1
   2067c:	18078463          	beqz	a5,20804 <__muldf3+0x300>
   20680:	00145793          	srli	a5,s0,0x1
   20684:	00147413          	andi	s0,s0,1
   20688:	0087e433          	or	s0,a5,s0
   2068c:	3ff88513          	addi	a0,a7,1023
   20690:	16a05e63          	blez	a0,2080c <__muldf3+0x308>
   20694:	00747793          	andi	a5,s0,7
   20698:	00078a63          	beqz	a5,206ac <__muldf3+0x1a8>
   2069c:	00f47793          	andi	a5,s0,15
   206a0:	00400713          	li	a4,4
   206a4:	00e78463          	beq	a5,a4,206ac <__muldf3+0x1a8>
   206a8:	00440413          	addi	s0,s0,4
   206ac:	03845793          	srli	a5,s0,0x38
   206b0:	0017f793          	andi	a5,a5,1
   206b4:	00078c63          	beqz	a5,206cc <__muldf3+0x1c8>
   206b8:	fff00793          	li	a5,-1
   206bc:	03879793          	slli	a5,a5,0x38
   206c0:	fff78793          	addi	a5,a5,-1
   206c4:	00f47433          	and	s0,s0,a5
   206c8:	40088513          	addi	a0,a7,1024
   206cc:	7fe00793          	li	a5,2046
   206d0:	1aa7cc63          	blt	a5,a0,20888 <__muldf3+0x384>
   206d4:	00345793          	srli	a5,s0,0x3
   206d8:	03813083          	ld	ra,56(sp)
   206dc:	03013403          	ld	s0,48(sp)
   206e0:	00c79793          	slli	a5,a5,0xc
   206e4:	03451513          	slli	a0,a0,0x34
   206e8:	00c7d793          	srli	a5,a5,0xc
   206ec:	00f56533          	or	a0,a0,a5
   206f0:	03f81813          	slli	a6,a6,0x3f
   206f4:	02813483          	ld	s1,40(sp)
   206f8:	02013903          	ld	s2,32(sp)
   206fc:	01813983          	ld	s3,24(sp)
   20700:	01013a03          	ld	s4,16(sp)
   20704:	00813a83          	ld	s5,8(sp)
   20708:	01056533          	or	a0,a0,a6
   2070c:	04010113          	addi	sp,sp,64
   20710:	00008067          	ret
   20714:	02048c63          	beqz	s1,2074c <__muldf3+0x248>
   20718:	00048513          	mv	a0,s1
   2071c:	7f8010ef          	jal	ra,21f14 <__clzdi2>
   20720:	0005079b          	sext.w	a5,a0
   20724:	c0d00913          	li	s2,-1011
   20728:	ff85051b          	addiw	a0,a0,-8
   2072c:	00a494b3          	sll	s1,s1,a0
   20730:	40f90933          	sub	s2,s2,a5
   20734:	e29ff06f          	j	2055c <__muldf3+0x58>
   20738:	7ff00913          	li	s2,2047
   2073c:	00300a13          	li	s4,3
   20740:	e20490e3          	bnez	s1,20560 <__muldf3+0x5c>
   20744:	00200a13          	li	s4,2
   20748:	e19ff06f          	j	20560 <__muldf3+0x5c>
   2074c:	00000913          	li	s2,0
   20750:	00100a13          	li	s4,1
   20754:	e0dff06f          	j	20560 <__muldf3+0x5c>
   20758:	02040c63          	beqz	s0,20790 <__muldf3+0x28c>
   2075c:	00040513          	mv	a0,s0
   20760:	7b4010ef          	jal	ra,21f14 <__clzdi2>
   20764:	0005071b          	sext.w	a4,a0
   20768:	c0d00793          	li	a5,-1011
   2076c:	ff85051b          	addiw	a0,a0,-8
   20770:	00a41433          	sll	s0,s0,a0
   20774:	40e787b3          	sub	a5,a5,a4
   20778:	e1dff06f          	j	20594 <__muldf3+0x90>
   2077c:	7ff00793          	li	a5,2047
   20780:	00300693          	li	a3,3
   20784:	e0041ae3          	bnez	s0,20598 <__muldf3+0x94>
   20788:	00200693          	li	a3,2
   2078c:	e0dff06f          	j	20598 <__muldf3+0x94>
   20790:	00000793          	li	a5,0
   20794:	00100693          	li	a3,1
   20798:	e01ff06f          	j	20598 <__muldf3+0x94>
   2079c:	00100793          	li	a5,1
   207a0:	00e79733          	sll	a4,a5,a4
   207a4:	53077613          	andi	a2,a4,1328
   207a8:	04061863          	bnez	a2,207f8 <__muldf3+0x2f4>
   207ac:	24077613          	andi	a2,a4,576
   207b0:	0c061463          	bnez	a2,20878 <__muldf3+0x374>
   207b4:	08877713          	andi	a4,a4,136
   207b8:	e00708e3          	beqz	a4,205c8 <__muldf3+0xc4>
   207bc:	000a8813          	mv	a6,s5
   207c0:	00200793          	li	a5,2
   207c4:	0cf68263          	beq	a3,a5,20888 <__muldf3+0x384>
   207c8:	00300793          	li	a5,3
   207cc:	0af68463          	beq	a3,a5,20874 <__muldf3+0x370>
   207d0:	00100793          	li	a5,1
   207d4:	eaf69ce3          	bne	a3,a5,2068c <__muldf3+0x188>
   207d8:	00000793          	li	a5,0
   207dc:	00000513          	li	a0,0
   207e0:	ef9ff06f          	j	206d8 <__muldf3+0x1d4>
   207e4:	00f00793          	li	a5,15
   207e8:	08f70663          	beq	a4,a5,20874 <__muldf3+0x370>
   207ec:	00b00793          	li	a5,11
   207f0:	00098813          	mv	a6,s3
   207f4:	fcf704e3          	beq	a4,a5,207bc <__muldf3+0x2b8>
   207f8:	00048413          	mv	s0,s1
   207fc:	000a0693          	mv	a3,s4
   20800:	fc1ff06f          	j	207c0 <__muldf3+0x2bc>
   20804:	00090893          	mv	a7,s2
   20808:	e85ff06f          	j	2068c <__muldf3+0x188>
   2080c:	00100713          	li	a4,1
   20810:	00050c63          	beqz	a0,20828 <__muldf3+0x324>
   20814:	40a70733          	sub	a4,a4,a0
   20818:	03800693          	li	a3,56
   2081c:	00000793          	li	a5,0
   20820:	00000513          	li	a0,0
   20824:	eae6cae3          	blt	a3,a4,206d8 <__muldf3+0x1d4>
   20828:	04000693          	li	a3,64
   2082c:	00e457b3          	srl	a5,s0,a4
   20830:	40e6873b          	subw	a4,a3,a4
   20834:	00e41433          	sll	s0,s0,a4
   20838:	00803433          	snez	s0,s0
   2083c:	0087e7b3          	or	a5,a5,s0
   20840:	0077f713          	andi	a4,a5,7
   20844:	00070a63          	beqz	a4,20858 <__muldf3+0x354>
   20848:	00f7f713          	andi	a4,a5,15
   2084c:	00400693          	li	a3,4
   20850:	00d70463          	beq	a4,a3,20858 <__muldf3+0x354>
   20854:	00478793          	addi	a5,a5,4
   20858:	0377d713          	srli	a4,a5,0x37
   2085c:	00177713          	andi	a4,a4,1
   20860:	0037d793          	srli	a5,a5,0x3
   20864:	f6070ce3          	beqz	a4,207dc <__muldf3+0x2d8>
   20868:	00000793          	li	a5,0
   2086c:	00100513          	li	a0,1
   20870:	e69ff06f          	j	206d8 <__muldf3+0x1d4>
   20874:	00100793          	li	a5,1
   20878:	03379793          	slli	a5,a5,0x33
   2087c:	7ff00513          	li	a0,2047
   20880:	00000813          	li	a6,0
   20884:	e55ff06f          	j	206d8 <__muldf3+0x1d4>
   20888:	00000793          	li	a5,0
   2088c:	7ff00513          	li	a0,2047
   20890:	e49ff06f          	j	206d8 <__muldf3+0x1d4>

0000000000020894 <__eqtf2>:
   20894:	00008837          	lui	a6,0x8
   20898:	0305d893          	srli	a7,a1,0x30
   2089c:	fff80813          	addi	a6,a6,-1 # 7fff <exit-0x80e9>
   208a0:	fff00793          	li	a5,-1
   208a4:	0107d793          	srli	a5,a5,0x10
   208a8:	0306d313          	srli	t1,a3,0x30
   208ac:	0108f8b3          	and	a7,a7,a6
   208b0:	00f5f733          	and	a4,a1,a5
   208b4:	01037333          	and	t1,t1,a6
   208b8:	00f6f7b3          	and	a5,a3,a5
   208bc:	03f5d593          	srli	a1,a1,0x3f
   208c0:	03f6d693          	srli	a3,a3,0x3f
   208c4:	01088e63          	beq	a7,a6,208e0 <__eqtf2+0x4c>
   208c8:	05031263          	bne	t1,a6,2090c <__eqtf2+0x78>
   208cc:	00c7e7b3          	or	a5,a5,a2
   208d0:	00100513          	li	a0,1
   208d4:	00100813          	li	a6,1
   208d8:	02078663          	beqz	a5,20904 <__eqtf2+0x70>
   208dc:	00008067          	ret
   208e0:	00a76733          	or	a4,a4,a0
   208e4:	00100513          	li	a0,1
   208e8:	fe071ae3          	bnez	a4,208dc <__eqtf2+0x48>
   208ec:	00100813          	li	a6,1
   208f0:	01131a63          	bne	t1,a7,20904 <__eqtf2+0x70>
   208f4:	00c7e7b3          	or	a5,a5,a2
   208f8:	fe0792e3          	bnez	a5,208dc <__eqtf2+0x48>
   208fc:	40d585b3          	sub	a1,a1,a3
   20900:	00b03833          	snez	a6,a1
   20904:	00080513          	mv	a0,a6
   20908:	fd5ff06f          	j	208dc <__eqtf2+0x48>
   2090c:	00100813          	li	a6,1
   20910:	fe689ae3          	bne	a7,t1,20904 <__eqtf2+0x70>
   20914:	fef718e3          	bne	a4,a5,20904 <__eqtf2+0x70>
   20918:	fec516e3          	bne	a0,a2,20904 <__eqtf2+0x70>
   2091c:	00d58a63          	beq	a1,a3,20930 <__eqtf2+0x9c>
   20920:	fe0892e3          	bnez	a7,20904 <__eqtf2+0x70>
   20924:	00a76733          	or	a4,a4,a0
   20928:	00e03833          	snez	a6,a4
   2092c:	fd9ff06f          	j	20904 <__eqtf2+0x70>
   20930:	00000813          	li	a6,0
   20934:	fd1ff06f          	j	20904 <__eqtf2+0x70>

0000000000020938 <__getf2>:
   20938:	00008e37          	lui	t3,0x8
   2093c:	0305d893          	srli	a7,a1,0x30
   20940:	fffe0e13          	addi	t3,t3,-1 # 7fff <exit-0x80e9>
   20944:	fff00713          	li	a4,-1
   20948:	01075713          	srli	a4,a4,0x10
   2094c:	0306d793          	srli	a5,a3,0x30
   20950:	01c8f8b3          	and	a7,a7,t3
   20954:	00e5f833          	and	a6,a1,a4
   20958:	00050313          	mv	t1,a0
   2095c:	00e6f733          	and	a4,a3,a4
   20960:	03f5d593          	srli	a1,a1,0x3f
   20964:	01c7f533          	and	a0,a5,t3
   20968:	03f6d693          	srli	a3,a3,0x3f
   2096c:	03c89c63          	bne	a7,t3,209a4 <__getf2+0x6c>
   20970:	00686833          	or	a6,a6,t1
   20974:	0c081463          	bnez	a6,20a3c <__getf2+0x104>
   20978:	01150a63          	beq	a0,a7,2098c <__getf2+0x54>
   2097c:	00100513          	li	a0,1
   20980:	0a058c63          	beqz	a1,20a38 <__getf2+0x100>
   20984:	fff00513          	li	a0,-1
   20988:	00008067          	ret
   2098c:	00c76733          	or	a4,a4,a2
   20990:	ffe00513          	li	a0,-2
   20994:	0a071263          	bnez	a4,20a38 <__getf2+0x100>
   20998:	fed592e3          	bne	a1,a3,2097c <__getf2+0x44>
   2099c:	00000513          	li	a0,0
   209a0:	00008067          	ret
   209a4:	05c51063          	bne	a0,t3,209e4 <__getf2+0xac>
   209a8:	00c76733          	or	a4,a4,a2
   209ac:	ffe00513          	li	a0,-2
   209b0:	08071463          	bnez	a4,20a38 <__getf2+0x100>
   209b4:	00088c63          	beqz	a7,209cc <__getf2+0x94>
   209b8:	fcd592e3          	bne	a1,a3,2097c <__getf2+0x44>
   209bc:	fff00513          	li	a0,-1
   209c0:	06058c63          	beqz	a1,20a38 <__getf2+0x100>
   209c4:	00058513          	mv	a0,a1
   209c8:	00008067          	ret
   209cc:	00686833          	or	a6,a6,t1
   209d0:	fe0814e3          	bnez	a6,209b8 <__getf2+0x80>
   209d4:	fff00513          	li	a0,-1
   209d8:	06068063          	beqz	a3,20a38 <__getf2+0x100>
   209dc:	00068513          	mv	a0,a3
   209e0:	00008067          	ret
   209e4:	02088663          	beqz	a7,20a10 <__getf2+0xd8>
   209e8:	f8050ae3          	beqz	a0,2097c <__getf2+0x44>
   209ec:	f8d598e3          	bne	a1,a3,2097c <__getf2+0x44>
   209f0:	f91546e3          	blt	a0,a7,2097c <__getf2+0x44>
   209f4:	fca8c4e3          	blt	a7,a0,209bc <__getf2+0x84>
   209f8:	f90762e3          	bltu	a4,a6,2097c <__getf2+0x44>
   209fc:	fce810e3          	bne	a6,a4,209bc <__getf2+0x84>
   20a00:	f6666ee3          	bltu	a2,t1,2097c <__getf2+0x44>
   20a04:	00000513          	li	a0,0
   20a08:	02c37863          	bgeu	t1,a2,20a38 <__getf2+0x100>
   20a0c:	fb1ff06f          	j	209bc <__getf2+0x84>
   20a10:	006867b3          	or	a5,a6,t1
   20a14:	00050663          	beqz	a0,20a20 <__getf2+0xe8>
   20a18:	fa078ee3          	beqz	a5,209d4 <__getf2+0x9c>
   20a1c:	f9dff06f          	j	209b8 <__getf2+0x80>
   20a20:	00c768b3          	or	a7,a4,a2
   20a24:	00088863          	beqz	a7,20a34 <__getf2+0xfc>
   20a28:	fa0786e3          	beqz	a5,209d4 <__getf2+0x9c>
   20a2c:	fcd586e3          	beq	a1,a3,209f8 <__getf2+0xc0>
   20a30:	f4dff06f          	j	2097c <__getf2+0x44>
   20a34:	f40794e3          	bnez	a5,2097c <__getf2+0x44>
   20a38:	00008067          	ret
   20a3c:	ffe00513          	li	a0,-2
   20a40:	00008067          	ret

0000000000020a44 <__letf2>:
   20a44:	00008e37          	lui	t3,0x8
   20a48:	0305d893          	srli	a7,a1,0x30
   20a4c:	fffe0e13          	addi	t3,t3,-1 # 7fff <exit-0x80e9>
   20a50:	fff00713          	li	a4,-1
   20a54:	01075713          	srli	a4,a4,0x10
   20a58:	0306d793          	srli	a5,a3,0x30
   20a5c:	01c8f8b3          	and	a7,a7,t3
   20a60:	00e5f833          	and	a6,a1,a4
   20a64:	00050313          	mv	t1,a0
   20a68:	00e6f733          	and	a4,a3,a4
   20a6c:	03f5d593          	srli	a1,a1,0x3f
   20a70:	01c7f533          	and	a0,a5,t3
   20a74:	03f6d693          	srli	a3,a3,0x3f
   20a78:	03c89c63          	bne	a7,t3,20ab0 <__letf2+0x6c>
   20a7c:	00686833          	or	a6,a6,t1
   20a80:	0c081463          	bnez	a6,20b48 <__letf2+0x104>
   20a84:	01150a63          	beq	a0,a7,20a98 <__letf2+0x54>
   20a88:	00100513          	li	a0,1
   20a8c:	0a058c63          	beqz	a1,20b44 <__letf2+0x100>
   20a90:	fff00513          	li	a0,-1
   20a94:	00008067          	ret
   20a98:	00c76733          	or	a4,a4,a2
   20a9c:	00200513          	li	a0,2
   20aa0:	0a071263          	bnez	a4,20b44 <__letf2+0x100>
   20aa4:	fed592e3          	bne	a1,a3,20a88 <__letf2+0x44>
   20aa8:	00000513          	li	a0,0
   20aac:	00008067          	ret
   20ab0:	05c51063          	bne	a0,t3,20af0 <__letf2+0xac>
   20ab4:	00c76733          	or	a4,a4,a2
   20ab8:	00200513          	li	a0,2
   20abc:	08071463          	bnez	a4,20b44 <__letf2+0x100>
   20ac0:	00088c63          	beqz	a7,20ad8 <__letf2+0x94>
   20ac4:	fcd592e3          	bne	a1,a3,20a88 <__letf2+0x44>
   20ac8:	fff00513          	li	a0,-1
   20acc:	06058c63          	beqz	a1,20b44 <__letf2+0x100>
   20ad0:	00058513          	mv	a0,a1
   20ad4:	00008067          	ret
   20ad8:	00686833          	or	a6,a6,t1
   20adc:	fe0814e3          	bnez	a6,20ac4 <__letf2+0x80>
   20ae0:	fff00513          	li	a0,-1
   20ae4:	06068063          	beqz	a3,20b44 <__letf2+0x100>
   20ae8:	00068513          	mv	a0,a3
   20aec:	00008067          	ret
   20af0:	02088663          	beqz	a7,20b1c <__letf2+0xd8>
   20af4:	f8050ae3          	beqz	a0,20a88 <__letf2+0x44>
   20af8:	f8d598e3          	bne	a1,a3,20a88 <__letf2+0x44>
   20afc:	f91546e3          	blt	a0,a7,20a88 <__letf2+0x44>
   20b00:	fca8c4e3          	blt	a7,a0,20ac8 <__letf2+0x84>
   20b04:	f90762e3          	bltu	a4,a6,20a88 <__letf2+0x44>
   20b08:	fce810e3          	bne	a6,a4,20ac8 <__letf2+0x84>
   20b0c:	f6666ee3          	bltu	a2,t1,20a88 <__letf2+0x44>
   20b10:	00000513          	li	a0,0
   20b14:	02c37863          	bgeu	t1,a2,20b44 <__letf2+0x100>
   20b18:	fb1ff06f          	j	20ac8 <__letf2+0x84>
   20b1c:	006867b3          	or	a5,a6,t1
   20b20:	00050663          	beqz	a0,20b2c <__letf2+0xe8>
   20b24:	fa078ee3          	beqz	a5,20ae0 <__letf2+0x9c>
   20b28:	f9dff06f          	j	20ac4 <__letf2+0x80>
   20b2c:	00c768b3          	or	a7,a4,a2
   20b30:	00088863          	beqz	a7,20b40 <__letf2+0xfc>
   20b34:	fa0786e3          	beqz	a5,20ae0 <__letf2+0x9c>
   20b38:	fcd586e3          	beq	a1,a3,20b04 <__letf2+0xc0>
   20b3c:	f4dff06f          	j	20a88 <__letf2+0x44>
   20b40:	f40794e3          	bnez	a5,20a88 <__letf2+0x44>
   20b44:	00008067          	ret
   20b48:	00200513          	li	a0,2
   20b4c:	00008067          	ret

0000000000020b50 <__multf3>:
   20b50:	00008737          	lui	a4,0x8
   20b54:	fb010113          	addi	sp,sp,-80
   20b58:	0305d793          	srli	a5,a1,0x30
   20b5c:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   20b60:	04813023          	sd	s0,64(sp)
   20b64:	02913c23          	sd	s1,56(sp)
   20b68:	03313423          	sd	s3,40(sp)
   20b6c:	03413023          	sd	s4,32(sp)
   20b70:	01613823          	sd	s6,16(sp)
   20b74:	01059493          	slli	s1,a1,0x10
   20b78:	04113423          	sd	ra,72(sp)
   20b7c:	03213823          	sd	s2,48(sp)
   20b80:	01513c23          	sd	s5,24(sp)
   20b84:	01713423          	sd	s7,8(sp)
   20b88:	01813023          	sd	s8,0(sp)
   20b8c:	00e7f7b3          	and	a5,a5,a4
   20b90:	00050413          	mv	s0,a0
   20b94:	00060b13          	mv	s6,a2
   20b98:	00068993          	mv	s3,a3
   20b9c:	0104d493          	srli	s1,s1,0x10
   20ba0:	03f5da13          	srli	s4,a1,0x3f
   20ba4:	42078463          	beqz	a5,20fcc <__multf3+0x47c>
   20ba8:	0007891b          	sext.w	s2,a5
   20bac:	48e78863          	beq	a5,a4,2103c <__multf3+0x4ec>
   20bb0:	00349493          	slli	s1,s1,0x3
   20bb4:	03d55713          	srli	a4,a0,0x3d
   20bb8:	00976733          	or	a4,a4,s1
   20bbc:	ffffc937          	lui	s2,0xffffc
   20bc0:	00100493          	li	s1,1
   20bc4:	03349493          	slli	s1,s1,0x33
   20bc8:	00190913          	addi	s2,s2,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd7df9>
   20bcc:	009764b3          	or	s1,a4,s1
   20bd0:	00351a93          	slli	s5,a0,0x3
   20bd4:	01278933          	add	s2,a5,s2
   20bd8:	00000b93          	li	s7,0
   20bdc:	000087b7          	lui	a5,0x8
   20be0:	0309d613          	srli	a2,s3,0x30
   20be4:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   20be8:	01099413          	slli	s0,s3,0x10
   20bec:	00f67633          	and	a2,a2,a5
   20bf0:	01045413          	srli	s0,s0,0x10
   20bf4:	03f9d993          	srli	s3,s3,0x3f
   20bf8:	46060a63          	beqz	a2,2106c <__multf3+0x51c>
   20bfc:	0006071b          	sext.w	a4,a2
   20c00:	4ef60063          	beq	a2,a5,210e0 <__multf3+0x590>
   20c04:	00341413          	slli	s0,s0,0x3
   20c08:	03db5793          	srli	a5,s6,0x3d
   20c0c:	0087e7b3          	or	a5,a5,s0
   20c10:	ffffc737          	lui	a4,0xffffc
   20c14:	00100413          	li	s0,1
   20c18:	03341413          	slli	s0,s0,0x33
   20c1c:	00170713          	addi	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd7df9>
   20c20:	0087e433          	or	s0,a5,s0
   20c24:	00e60733          	add	a4,a2,a4
   20c28:	003b1793          	slli	a5,s6,0x3
   20c2c:	00000693          	li	a3,0
   20c30:	002b9613          	slli	a2,s7,0x2
   20c34:	01270333          	add	t1,a4,s2
   20c38:	00d66633          	or	a2,a2,a3
   20c3c:	00a00713          	li	a4,10
   20c40:	013a4833          	xor	a6,s4,s3
   20c44:	00130893          	addi	a7,t1,1
   20c48:	50c74863          	blt	a4,a2,21158 <__multf3+0x608>
   20c4c:	00200713          	li	a4,2
   20c50:	4cc74063          	blt	a4,a2,21110 <__multf3+0x5c0>
   20c54:	fff60613          	addi	a2,a2,-1
   20c58:	00100713          	li	a4,1
   20c5c:	4cc77c63          	bgeu	a4,a2,21134 <__multf3+0x5e4>
   20c60:	fff00713          	li	a4,-1
   20c64:	01548b33          	add	s6,s1,s5
   20c68:	00878a33          	add	s4,a5,s0
   20c6c:	02075713          	srli	a4,a4,0x20
   20c70:	00fa32b3          	sltu	t0,s4,a5
   20c74:	009b3fb3          	sltu	t6,s6,s1
   20c78:	020ad993          	srli	s3,s5,0x20
   20c7c:	0207de93          	srli	t4,a5,0x20
   20c80:	00eafab3          	and	s5,s5,a4
   20c84:	00e7f7b3          	and	a5,a5,a4
   20c88:	000f8393          	mv	t2,t6
   20c8c:	00028e13          	mv	t3,t0
   20c90:	000a8513          	mv	a0,s5
   20c94:	00078593          	mv	a1,a5
   20c98:	258010ef          	jal	ra,21ef0 <__muldi3>
   20c9c:	00050713          	mv	a4,a0
   20ca0:	000e8593          	mv	a1,t4
   20ca4:	000a8513          	mv	a0,s5
   20ca8:	248010ef          	jal	ra,21ef0 <__muldi3>
   20cac:	00050f13          	mv	t5,a0
   20cb0:	00078593          	mv	a1,a5
   20cb4:	00098513          	mv	a0,s3
   20cb8:	238010ef          	jal	ra,21ef0 <__muldi3>
   20cbc:	00050913          	mv	s2,a0
   20cc0:	000e8593          	mv	a1,t4
   20cc4:	00098513          	mv	a0,s3
   20cc8:	228010ef          	jal	ra,21ef0 <__muldi3>
   20ccc:	02075e93          	srli	t4,a4,0x20
   20cd0:	012f0f33          	add	t5,t5,s2
   20cd4:	01ee8eb3          	add	t4,t4,t5
   20cd8:	00050793          	mv	a5,a0
   20cdc:	012ef863          	bgeu	t4,s2,20cec <__multf3+0x19c>
   20ce0:	00100693          	li	a3,1
   20ce4:	02069693          	slli	a3,a3,0x20
   20ce8:	00d507b3          	add	a5,a0,a3
   20cec:	020edf13          	srli	t5,t4,0x20
   20cf0:	00ff0f33          	add	t5,t5,a5
   20cf4:	fff00793          	li	a5,-1
   20cf8:	0207d793          	srli	a5,a5,0x20
   20cfc:	00fefeb3          	and	t4,t4,a5
   20d00:	00f77733          	and	a4,a4,a5
   20d04:	00fb7933          	and	s2,s6,a5
   20d08:	020e9e93          	slli	t4,t4,0x20
   20d0c:	00fa77b3          	and	a5,s4,a5
   20d10:	00ee8eb3          	add	t4,t4,a4
   20d14:	020b5993          	srli	s3,s6,0x20
   20d18:	020a5713          	srli	a4,s4,0x20
   20d1c:	00090513          	mv	a0,s2
   20d20:	00078593          	mv	a1,a5
   20d24:	1cc010ef          	jal	ra,21ef0 <__muldi3>
   20d28:	00050a93          	mv	s5,a0
   20d2c:	00070593          	mv	a1,a4
   20d30:	00090513          	mv	a0,s2
   20d34:	1bc010ef          	jal	ra,21ef0 <__muldi3>
   20d38:	00050913          	mv	s2,a0
   20d3c:	00078593          	mv	a1,a5
   20d40:	00098513          	mv	a0,s3
   20d44:	1ac010ef          	jal	ra,21ef0 <__muldi3>
   20d48:	00050793          	mv	a5,a0
   20d4c:	00070593          	mv	a1,a4
   20d50:	00098513          	mv	a0,s3
   20d54:	19c010ef          	jal	ra,21ef0 <__muldi3>
   20d58:	020ad713          	srli	a4,s5,0x20
   20d5c:	00f90933          	add	s2,s2,a5
   20d60:	01270733          	add	a4,a4,s2
   20d64:	00050993          	mv	s3,a0
   20d68:	00f77863          	bgeu	a4,a5,20d78 <__multf3+0x228>
   20d6c:	00100793          	li	a5,1
   20d70:	02079793          	slli	a5,a5,0x20
   20d74:	00f509b3          	add	s3,a0,a5
   20d78:	fff00593          	li	a1,-1
   20d7c:	0205d593          	srli	a1,a1,0x20
   20d80:	02075913          	srli	s2,a4,0x20
   20d84:	00b77733          	and	a4,a4,a1
   20d88:	00bafab3          	and	s5,s5,a1
   20d8c:	0204dc13          	srli	s8,s1,0x20
   20d90:	00b477b3          	and	a5,s0,a1
   20d94:	00b4f4b3          	and	s1,s1,a1
   20d98:	02071713          	slli	a4,a4,0x20
   20d9c:	01570733          	add	a4,a4,s5
   20da0:	02045b93          	srli	s7,s0,0x20
   20da4:	00048513          	mv	a0,s1
   20da8:	00078593          	mv	a1,a5
   20dac:	144010ef          	jal	ra,21ef0 <__muldi3>
   20db0:	00050413          	mv	s0,a0
   20db4:	000b8593          	mv	a1,s7
   20db8:	00048513          	mv	a0,s1
   20dbc:	134010ef          	jal	ra,21ef0 <__muldi3>
   20dc0:	00050493          	mv	s1,a0
   20dc4:	00078593          	mv	a1,a5
   20dc8:	000c0513          	mv	a0,s8
   20dcc:	124010ef          	jal	ra,21ef0 <__muldi3>
   20dd0:	00050a93          	mv	s5,a0
   20dd4:	000b8593          	mv	a1,s7
   20dd8:	000c0513          	mv	a0,s8
   20ddc:	114010ef          	jal	ra,21ef0 <__muldi3>
   20de0:	02045793          	srli	a5,s0,0x20
   20de4:	015484b3          	add	s1,s1,s5
   20de8:	009787b3          	add	a5,a5,s1
   20dec:	0157f863          	bgeu	a5,s5,20dfc <__multf3+0x2ac>
   20df0:	00100693          	li	a3,1
   20df4:	02069693          	slli	a3,a3,0x20
   20df8:	00d50533          	add	a0,a0,a3
   20dfc:	0207d693          	srli	a3,a5,0x20
   20e00:	00a686b3          	add	a3,a3,a0
   20e04:	01e70533          	add	a0,a4,t5
   20e08:	00e53733          	sltu	a4,a0,a4
   20e0c:	00e905b3          	add	a1,s2,a4
   20e10:	fff00613          	li	a2,-1
   20e14:	02065613          	srli	a2,a2,0x20
   20e18:	013585b3          	add	a1,a1,s3
   20e1c:	41c00e33          	neg	t3,t3
   20e20:	00e5b733          	sltu	a4,a1,a4
   20e24:	00c7f7b3          	and	a5,a5,a2
   20e28:	00c47433          	and	s0,s0,a2
   20e2c:	016e7e33          	and	t3,t3,s6
   20e30:	005fffb3          	and	t6,t6,t0
   20e34:	40700633          	neg	a2,t2
   20e38:	01f70fb3          	add	t6,a4,t6
   20e3c:	01467633          	and	a2,a2,s4
   20e40:	01c58733          	add	a4,a1,t3
   20e44:	00b735b3          	sltu	a1,a4,a1
   20e48:	00e60733          	add	a4,a2,a4
   20e4c:	01f585b3          	add	a1,a1,t6
   20e50:	00c73633          	sltu	a2,a4,a2
   20e54:	41d50e33          	sub	t3,a0,t4
   20e58:	01c53fb3          	sltu	t6,a0,t3
   20e5c:	02079793          	slli	a5,a5,0x20
   20e60:	00b60633          	add	a2,a2,a1
   20e64:	41e705b3          	sub	a1,a4,t5
   20e68:	00b732b3          	sltu	t0,a4,a1
   20e6c:	008787b3          	add	a5,a5,s0
   20e70:	41f585b3          	sub	a1,a1,t6
   20e74:	00000f93          	li	t6,0
   20e78:	01c57663          	bgeu	a0,t3,20e84 <__multf3+0x334>
   20e7c:	40ef0f33          	sub	t5,t5,a4
   20e80:	001f3f93          	seqz	t6,t5
   20e84:	40fe0533          	sub	a0,t3,a5
   20e88:	00d60633          	add	a2,a2,a3
   20e8c:	00ae3733          	sltu	a4,t3,a0
   20e90:	40d586b3          	sub	a3,a1,a3
   20e94:	005fefb3          	or	t6,t6,t0
   20e98:	00d5b5b3          	sltu	a1,a1,a3
   20e9c:	40e78733          	sub	a4,a5,a4
   20ea0:	00000f13          	li	t5,0
   20ea4:	00ae7463          	bgeu	t3,a0,20eac <__multf3+0x35c>
   20ea8:	0016bf13          	seqz	t5,a3
   20eac:	00e686b3          	add	a3,a3,a4
   20eb0:	00f6b733          	sltu	a4,a3,a5
   20eb4:	00c70733          	add	a4,a4,a2
   20eb8:	41f70733          	sub	a4,a4,t6
   20ebc:	00bf6f33          	or	t5,t5,a1
   20ec0:	00d51793          	slli	a5,a0,0xd
   20ec4:	41e70733          	sub	a4,a4,t5
   20ec8:	00d71713          	slli	a4,a4,0xd
   20ecc:	0336d413          	srli	s0,a3,0x33
   20ed0:	01d7e7b3          	or	a5,a5,t4
   20ed4:	00876433          	or	s0,a4,s0
   20ed8:	00f037b3          	snez	a5,a5
   20edc:	03355513          	srli	a0,a0,0x33
   20ee0:	03475713          	srli	a4,a4,0x34
   20ee4:	00a7e7b3          	or	a5,a5,a0
   20ee8:	00d69693          	slli	a3,a3,0xd
   20eec:	00177713          	andi	a4,a4,1
   20ef0:	00d7e7b3          	or	a5,a5,a3
   20ef4:	28070463          	beqz	a4,2117c <__multf3+0x62c>
   20ef8:	0017d713          	srli	a4,a5,0x1
   20efc:	0017f793          	andi	a5,a5,1
   20f00:	00f76733          	or	a4,a4,a5
   20f04:	03f41793          	slli	a5,s0,0x3f
   20f08:	00f767b3          	or	a5,a4,a5
   20f0c:	00145413          	srli	s0,s0,0x1
   20f10:	000045b7          	lui	a1,0x4
   20f14:	fff58593          	addi	a1,a1,-1 # 3fff <exit-0xc0e9>
   20f18:	00b885b3          	add	a1,a7,a1
   20f1c:	26b05463          	blez	a1,21184 <__multf3+0x634>
   20f20:	0077f713          	andi	a4,a5,7
   20f24:	02070063          	beqz	a4,20f44 <__multf3+0x3f4>
   20f28:	00f7f713          	andi	a4,a5,15
   20f2c:	00400693          	li	a3,4
   20f30:	00d70a63          	beq	a4,a3,20f44 <__multf3+0x3f4>
   20f34:	00478713          	addi	a4,a5,4
   20f38:	00f736b3          	sltu	a3,a4,a5
   20f3c:	00d40433          	add	s0,s0,a3
   20f40:	00070793          	mv	a5,a4
   20f44:	03445713          	srli	a4,s0,0x34
   20f48:	00177713          	andi	a4,a4,1
   20f4c:	00070e63          	beqz	a4,20f68 <__multf3+0x418>
   20f50:	fff00713          	li	a4,-1
   20f54:	03471713          	slli	a4,a4,0x34
   20f58:	fff70713          	addi	a4,a4,-1
   20f5c:	000045b7          	lui	a1,0x4
   20f60:	00e47433          	and	s0,s0,a4
   20f64:	00b885b3          	add	a1,a7,a1
   20f68:	000086b7          	lui	a3,0x8
   20f6c:	ffe68713          	addi	a4,a3,-2 # 7ffe <exit-0x80ea>
   20f70:	30b74663          	blt	a4,a1,2127c <__multf3+0x72c>
   20f74:	0037d793          	srli	a5,a5,0x3
   20f78:	03d41513          	slli	a0,s0,0x3d
   20f7c:	00f56533          	or	a0,a0,a5
   20f80:	00345713          	srli	a4,s0,0x3
   20f84:	04813083          	ld	ra,72(sp)
   20f88:	04013403          	ld	s0,64(sp)
   20f8c:	00f8181b          	slliw	a6,a6,0xf
   20f90:	01071713          	slli	a4,a4,0x10
   20f94:	0105e5b3          	or	a1,a1,a6
   20f98:	03059593          	slli	a1,a1,0x30
   20f9c:	01075713          	srli	a4,a4,0x10
   20fa0:	03813483          	ld	s1,56(sp)
   20fa4:	03013903          	ld	s2,48(sp)
   20fa8:	02813983          	ld	s3,40(sp)
   20fac:	02013a03          	ld	s4,32(sp)
   20fb0:	01813a83          	ld	s5,24(sp)
   20fb4:	01013b03          	ld	s6,16(sp)
   20fb8:	00813b83          	ld	s7,8(sp)
   20fbc:	00013c03          	ld	s8,0(sp)
   20fc0:	00b765b3          	or	a1,a4,a1
   20fc4:	05010113          	addi	sp,sp,80
   20fc8:	00008067          	ret
   20fcc:	00a4eab3          	or	s5,s1,a0
   20fd0:	080a8063          	beqz	s5,21050 <__multf3+0x500>
   20fd4:	04048463          	beqz	s1,2101c <__multf3+0x4cc>
   20fd8:	00048513          	mv	a0,s1
   20fdc:	739000ef          	jal	ra,21f14 <__clzdi2>
   20fe0:	0005051b          	sext.w	a0,a0
   20fe4:	ff150793          	addi	a5,a0,-15
   20fe8:	03d00713          	li	a4,61
   20fec:	0037869b          	addiw	a3,a5,3
   20ff0:	40f707bb          	subw	a5,a4,a5
   20ff4:	00d494b3          	sll	s1,s1,a3
   20ff8:	00f457b3          	srl	a5,s0,a5
   20ffc:	0097e7b3          	or	a5,a5,s1
   21000:	00d414b3          	sll	s1,s0,a3
   21004:	ffffc937          	lui	s2,0xffffc
   21008:	01190913          	addi	s2,s2,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7e09>
   2100c:	00048a93          	mv	s5,s1
   21010:	40a90933          	sub	s2,s2,a0
   21014:	00078493          	mv	s1,a5
   21018:	bc1ff06f          	j	20bd8 <__multf3+0x88>
   2101c:	6f9000ef          	jal	ra,21f14 <__clzdi2>
   21020:	0405051b          	addiw	a0,a0,64
   21024:	ff150793          	addi	a5,a0,-15
   21028:	03c00713          	li	a4,60
   2102c:	faf75ee3          	bge	a4,a5,20fe8 <__multf3+0x498>
   21030:	fc37879b          	addiw	a5,a5,-61
   21034:	00f417b3          	sll	a5,s0,a5
   21038:	fcdff06f          	j	21004 <__multf3+0x4b4>
   2103c:	00a4eab3          	or	s5,s1,a0
   21040:	020a8063          	beqz	s5,21060 <__multf3+0x510>
   21044:	00050a93          	mv	s5,a0
   21048:	00300b93          	li	s7,3
   2104c:	b91ff06f          	j	20bdc <__multf3+0x8c>
   21050:	00000493          	li	s1,0
   21054:	00000913          	li	s2,0
   21058:	00100b93          	li	s7,1
   2105c:	b81ff06f          	j	20bdc <__multf3+0x8c>
   21060:	00000493          	li	s1,0
   21064:	00200b93          	li	s7,2
   21068:	b75ff06f          	j	20bdc <__multf3+0x8c>
   2106c:	008b67b3          	or	a5,s6,s0
   21070:	08078263          	beqz	a5,210f4 <__multf3+0x5a4>
   21074:	04040463          	beqz	s0,210bc <__multf3+0x56c>
   21078:	00040513          	mv	a0,s0
   2107c:	699000ef          	jal	ra,21f14 <__clzdi2>
   21080:	0005051b          	sext.w	a0,a0
   21084:	ff150793          	addi	a5,a0,-15
   21088:	03d00713          	li	a4,61
   2108c:	0037861b          	addiw	a2,a5,3
   21090:	40f707bb          	subw	a5,a4,a5
   21094:	00c41433          	sll	s0,s0,a2
   21098:	00fb57b3          	srl	a5,s6,a5
   2109c:	0087e6b3          	or	a3,a5,s0
   210a0:	00cb1433          	sll	s0,s6,a2
   210a4:	ffffc737          	lui	a4,0xffffc
   210a8:	01170713          	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7e09>
   210ac:	00040793          	mv	a5,s0
   210b0:	40a70733          	sub	a4,a4,a0
   210b4:	00068413          	mv	s0,a3
   210b8:	b75ff06f          	j	20c2c <__multf3+0xdc>
   210bc:	000b0513          	mv	a0,s6
   210c0:	655000ef          	jal	ra,21f14 <__clzdi2>
   210c4:	0405051b          	addiw	a0,a0,64
   210c8:	ff150793          	addi	a5,a0,-15
   210cc:	03c00713          	li	a4,60
   210d0:	faf75ce3          	bge	a4,a5,21088 <__multf3+0x538>
   210d4:	fc37879b          	addiw	a5,a5,-61
   210d8:	00fb16b3          	sll	a3,s6,a5
   210dc:	fc9ff06f          	j	210a4 <__multf3+0x554>
   210e0:	008b67b3          	or	a5,s6,s0
   210e4:	02078063          	beqz	a5,21104 <__multf3+0x5b4>
   210e8:	000b0793          	mv	a5,s6
   210ec:	00300693          	li	a3,3
   210f0:	b41ff06f          	j	20c30 <__multf3+0xe0>
   210f4:	00000413          	li	s0,0
   210f8:	00000713          	li	a4,0
   210fc:	00100693          	li	a3,1
   21100:	b31ff06f          	j	20c30 <__multf3+0xe0>
   21104:	00000413          	li	s0,0
   21108:	00200693          	li	a3,2
   2110c:	b25ff06f          	j	20c30 <__multf3+0xe0>
   21110:	00100713          	li	a4,1
   21114:	00c71633          	sll	a2,a4,a2
   21118:	53067513          	andi	a0,a2,1328
   2111c:	04051863          	bnez	a0,2116c <__multf3+0x61c>
   21120:	24067593          	andi	a1,a2,576
   21124:	12059063          	bnez	a1,21244 <__multf3+0x6f4>
   21128:	08867613          	andi	a2,a2,136
   2112c:	b2060ae3          	beqz	a2,20c60 <__multf3+0x110>
   21130:	00098813          	mv	a6,s3
   21134:	00200713          	li	a4,2
   21138:	12e68063          	beq	a3,a4,21258 <__multf3+0x708>
   2113c:	00300713          	li	a4,3
   21140:	12e68663          	beq	a3,a4,2126c <__multf3+0x71c>
   21144:	00100713          	li	a4,1
   21148:	dce694e3          	bne	a3,a4,20f10 <__multf3+0x3c0>
   2114c:	00000713          	li	a4,0
   21150:	00000513          	li	a0,0
   21154:	0b40006f          	j	21208 <__multf3+0x6b8>
   21158:	00f00713          	li	a4,15
   2115c:	10e60863          	beq	a2,a4,2126c <__multf3+0x71c>
   21160:	00b00713          	li	a4,11
   21164:	000a0813          	mv	a6,s4
   21168:	fce604e3          	beq	a2,a4,21130 <__multf3+0x5e0>
   2116c:	00048413          	mv	s0,s1
   21170:	000a8793          	mv	a5,s5
   21174:	000b8693          	mv	a3,s7
   21178:	fbdff06f          	j	21134 <__multf3+0x5e4>
   2117c:	00030893          	mv	a7,t1
   21180:	d91ff06f          	j	20f10 <__multf3+0x3c0>
   21184:	00100713          	li	a4,1
   21188:	00058e63          	beqz	a1,211a4 <__multf3+0x654>
   2118c:	40b70733          	sub	a4,a4,a1
   21190:	07400693          	li	a3,116
   21194:	fae6cce3          	blt	a3,a4,2114c <__multf3+0x5fc>
   21198:	03f00693          	li	a3,63
   2119c:	0007061b          	sext.w	a2,a4
   211a0:	06e6c863          	blt	a3,a4,21210 <__multf3+0x6c0>
   211a4:	04000693          	li	a3,64
   211a8:	40e686bb          	subw	a3,a3,a4
   211ac:	00d41533          	sll	a0,s0,a3
   211b0:	00e7d633          	srl	a2,a5,a4
   211b4:	00d796b3          	sll	a3,a5,a3
   211b8:	00c56533          	or	a0,a0,a2
   211bc:	00d036b3          	snez	a3,a3
   211c0:	00d56533          	or	a0,a0,a3
   211c4:	00e45733          	srl	a4,s0,a4
   211c8:	00757793          	andi	a5,a0,7
   211cc:	02078063          	beqz	a5,211ec <__multf3+0x69c>
   211d0:	00f57793          	andi	a5,a0,15
   211d4:	00400693          	li	a3,4
   211d8:	00d78a63          	beq	a5,a3,211ec <__multf3+0x69c>
   211dc:	00450793          	addi	a5,a0,4
   211e0:	00a7b6b3          	sltu	a3,a5,a0
   211e4:	00d70733          	add	a4,a4,a3
   211e8:	00078513          	mv	a0,a5
   211ec:	03375793          	srli	a5,a4,0x33
   211f0:	0017f793          	andi	a5,a5,1
   211f4:	08079c63          	bnez	a5,2128c <__multf3+0x73c>
   211f8:	03d71793          	slli	a5,a4,0x3d
   211fc:	00355513          	srli	a0,a0,0x3
   21200:	00a7e533          	or	a0,a5,a0
   21204:	00375713          	srli	a4,a4,0x3
   21208:	00000593          	li	a1,0
   2120c:	d79ff06f          	j	20f84 <__multf3+0x434>
   21210:	fc06051b          	addiw	a0,a2,-64
   21214:	04000593          	li	a1,64
   21218:	00a45533          	srl	a0,s0,a0
   2121c:	00000693          	li	a3,0
   21220:	00b70863          	beq	a4,a1,21230 <__multf3+0x6e0>
   21224:	08000693          	li	a3,128
   21228:	40c686bb          	subw	a3,a3,a2
   2122c:	00d416b3          	sll	a3,s0,a3
   21230:	00f6e6b3          	or	a3,a3,a5
   21234:	00d036b3          	snez	a3,a3
   21238:	00d56533          	or	a0,a0,a3
   2123c:	00000713          	li	a4,0
   21240:	f89ff06f          	j	211c8 <__multf3+0x678>
   21244:	02f71713          	slli	a4,a4,0x2f
   21248:	000085b7          	lui	a1,0x8
   2124c:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   21250:	00000813          	li	a6,0
   21254:	d31ff06f          	j	20f84 <__multf3+0x434>
   21258:	000085b7          	lui	a1,0x8
   2125c:	00000713          	li	a4,0
   21260:	00000513          	li	a0,0
   21264:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   21268:	d1dff06f          	j	20f84 <__multf3+0x434>
   2126c:	00100713          	li	a4,1
   21270:	02f71713          	slli	a4,a4,0x2f
   21274:	00000513          	li	a0,0
   21278:	fd1ff06f          	j	21248 <__multf3+0x6f8>
   2127c:	00000713          	li	a4,0
   21280:	00000513          	li	a0,0
   21284:	fff68593          	addi	a1,a3,-1
   21288:	cfdff06f          	j	20f84 <__multf3+0x434>
   2128c:	00000713          	li	a4,0
   21290:	00000513          	li	a0,0
   21294:	00100593          	li	a1,1
   21298:	cedff06f          	j	20f84 <__multf3+0x434>

000000000002129c <__subtf3>:
   2129c:	fff00713          	li	a4,-1
   212a0:	fd010113          	addi	sp,sp,-48
   212a4:	01075713          	srli	a4,a4,0x10
   212a8:	00008e37          	lui	t3,0x8
   212ac:	0305d793          	srli	a5,a1,0x30
   212b0:	fffe0e13          	addi	t3,t3,-1 # 7fff <exit-0x80e9>
   212b4:	01213823          	sd	s2,16(sp)
   212b8:	03f5d913          	srli	s2,a1,0x3f
   212bc:	00e5f5b3          	and	a1,a1,a4
   212c0:	00913c23          	sd	s1,24(sp)
   212c4:	01c7f4b3          	and	s1,a5,t3
   212c8:	00359793          	slli	a5,a1,0x3
   212cc:	03d55593          	srli	a1,a0,0x3d
   212d0:	0306d813          	srli	a6,a3,0x30
   212d4:	00f5e5b3          	or	a1,a1,a5
   212d8:	03f6d793          	srli	a5,a3,0x3f
   212dc:	00e6f6b3          	and	a3,a3,a4
   212e0:	03d65313          	srli	t1,a2,0x3d
   212e4:	00369693          	slli	a3,a3,0x3
   212e8:	02113423          	sd	ra,40(sp)
   212ec:	02813023          	sd	s0,32(sp)
   212f0:	01313423          	sd	s3,8(sp)
   212f4:	01c87833          	and	a6,a6,t3
   212f8:	00351893          	slli	a7,a0,0x3
   212fc:	00d36333          	or	t1,t1,a3
   21300:	00361613          	slli	a2,a2,0x3
   21304:	0fc81663          	bne	a6,t3,213f0 <__subtf3+0x154>
   21308:	ffff8737          	lui	a4,0xffff8
   2130c:	0017071b          	addiw	a4,a4,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd3df9>
   21310:	00c366b3          	or	a3,t1,a2
   21314:	0097073b          	addw	a4,a4,s1
   21318:	04068063          	beqz	a3,21358 <__subtf3+0xbc>
   2131c:	00078e93          	mv	t4,a5
   21320:	48f91663          	bne	s2,a5,217ac <__subtf3+0x510>
   21324:	2e070263          	beqz	a4,21608 <__subtf3+0x36c>
   21328:	28049463          	bnez	s1,215b0 <__subtf3+0x314>
   2132c:	0115e7b3          	or	a5,a1,a7
   21330:	28078063          	beqz	a5,215b0 <__subtf3+0x314>
   21334:	fff74793          	not	a5,a4
   21338:	26079663          	bnez	a5,215a4 <__subtf3+0x308>
   2133c:	00c88633          	add	a2,a7,a2
   21340:	011637b3          	sltu	a5,a2,a7
   21344:	006585b3          	add	a1,a1,t1
   21348:	00060893          	mv	a7,a2
   2134c:	00f585b3          	add	a1,a1,a5
   21350:	00080493          	mv	s1,a6
   21354:	0d40006f          	j	21428 <__subtf3+0x18c>
   21358:	0017ce93          	xori	t4,a5,1
   2135c:	47d91663          	bne	s2,t4,217c8 <__subtf3+0x52c>
   21360:	2a070463          	beqz	a4,21608 <__subtf3+0x36c>
   21364:	fc0484e3          	beqz	s1,2132c <__subtf3+0x90>
   21368:	00000593          	li	a1,0
   2136c:	00000893          	li	a7,0
   21370:	00080493          	mv	s1,a6
   21374:	0335d793          	srli	a5,a1,0x33
   21378:	0017f793          	andi	a5,a5,1
   2137c:	72078e63          	beqz	a5,21ab8 <__subtf3+0x81c>
   21380:	000087b7          	lui	a5,0x8
   21384:	00148493          	addi	s1,s1,1
   21388:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   2138c:	7af48663          	beq	s1,a5,21b38 <__subtf3+0x89c>
   21390:	fff00793          	li	a5,-1
   21394:	03379793          	slli	a5,a5,0x33
   21398:	fff78793          	addi	a5,a5,-1
   2139c:	00f5f7b3          	and	a5,a1,a5
   213a0:	0038d893          	srli	a7,a7,0x3
   213a4:	03d79513          	slli	a0,a5,0x3d
   213a8:	01156533          	or	a0,a0,a7
   213ac:	0037d593          	srli	a1,a5,0x3
   213b0:	00090713          	mv	a4,s2
   213b4:	03149793          	slli	a5,s1,0x31
   213b8:	02813083          	ld	ra,40(sp)
   213bc:	02013403          	ld	s0,32(sp)
   213c0:	00f7171b          	slliw	a4,a4,0xf
   213c4:	0317d793          	srli	a5,a5,0x31
   213c8:	01059593          	slli	a1,a1,0x10
   213cc:	00e7e7b3          	or	a5,a5,a4
   213d0:	03079793          	slli	a5,a5,0x30
   213d4:	0105d593          	srli	a1,a1,0x10
   213d8:	01813483          	ld	s1,24(sp)
   213dc:	01013903          	ld	s2,16(sp)
   213e0:	00813983          	ld	s3,8(sp)
   213e4:	00f5e5b3          	or	a1,a1,a5
   213e8:	03010113          	addi	sp,sp,48
   213ec:	00008067          	ret
   213f0:	0017ce93          	xori	t4,a5,1
   213f4:	4104873b          	subw	a4,s1,a6
   213f8:	2dd91263          	bne	s2,t4,216bc <__subtf3+0x420>
   213fc:	14e05263          	blez	a4,21540 <__subtf3+0x2a4>
   21400:	08081e63          	bnez	a6,2149c <__subtf3+0x200>
   21404:	00c367b3          	or	a5,t1,a2
   21408:	06078663          	beqz	a5,21474 <__subtf3+0x1d8>
   2140c:	fff7071b          	addiw	a4,a4,-1
   21410:	06071063          	bnez	a4,21470 <__subtf3+0x1d4>
   21414:	00c88633          	add	a2,a7,a2
   21418:	011637b3          	sltu	a5,a2,a7
   2141c:	006585b3          	add	a1,a1,t1
   21420:	00060893          	mv	a7,a2
   21424:	00f585b3          	add	a1,a1,a5
   21428:	0335d793          	srli	a5,a1,0x33
   2142c:	0017f793          	andi	a5,a5,1
   21430:	04078263          	beqz	a5,21474 <__subtf3+0x1d8>
   21434:	000087b7          	lui	a5,0x8
   21438:	00148493          	addi	s1,s1,1
   2143c:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   21440:	6af48063          	beq	s1,a5,21ae0 <__subtf3+0x844>
   21444:	fff00793          	li	a5,-1
   21448:	03379793          	slli	a5,a5,0x33
   2144c:	fff78793          	addi	a5,a5,-1
   21450:	0018f513          	andi	a0,a7,1
   21454:	00f5f7b3          	and	a5,a1,a5
   21458:	0018d713          	srli	a4,a7,0x1
   2145c:	00a76733          	or	a4,a4,a0
   21460:	03f79513          	slli	a0,a5,0x3f
   21464:	00e568b3          	or	a7,a0,a4
   21468:	0017d593          	srli	a1,a5,0x1
   2146c:	0080006f          	j	21474 <__subtf3+0x1d8>
   21470:	09c49463          	bne	s1,t3,214f8 <__subtf3+0x25c>
   21474:	0078f793          	andi	a5,a7,7
   21478:	ee078ee3          	beqz	a5,21374 <__subtf3+0xd8>
   2147c:	00f8f793          	andi	a5,a7,15
   21480:	00400713          	li	a4,4
   21484:	eee788e3          	beq	a5,a4,21374 <__subtf3+0xd8>
   21488:	00488793          	addi	a5,a7,4
   2148c:	0117b733          	sltu	a4,a5,a7
   21490:	00e585b3          	add	a1,a1,a4
   21494:	00078893          	mv	a7,a5
   21498:	eddff06f          	j	21374 <__subtf3+0xd8>
   2149c:	fdc48ce3          	beq	s1,t3,21474 <__subtf3+0x1d8>
   214a0:	07400793          	li	a5,116
   214a4:	04e7ce63          	blt	a5,a4,21500 <__subtf3+0x264>
   214a8:	00100793          	li	a5,1
   214ac:	03379793          	slli	a5,a5,0x33
   214b0:	00f36333          	or	t1,t1,a5
   214b4:	03f00793          	li	a5,63
   214b8:	04e7ca63          	blt	a5,a4,2150c <__subtf3+0x270>
   214bc:	04000693          	li	a3,64
   214c0:	40e686bb          	subw	a3,a3,a4
   214c4:	00d317b3          	sll	a5,t1,a3
   214c8:	00e65533          	srl	a0,a2,a4
   214cc:	00d616b3          	sll	a3,a2,a3
   214d0:	00a7e7b3          	or	a5,a5,a0
   214d4:	00d036b3          	snez	a3,a3
   214d8:	00d7e7b3          	or	a5,a5,a3
   214dc:	00e35733          	srl	a4,t1,a4
   214e0:	01178533          	add	a0,a5,a7
   214e4:	00b70733          	add	a4,a4,a1
   214e8:	00f537b3          	sltu	a5,a0,a5
   214ec:	00050893          	mv	a7,a0
   214f0:	00f705b3          	add	a1,a4,a5
   214f4:	f35ff06f          	j	21428 <__subtf3+0x18c>
   214f8:	07400793          	li	a5,116
   214fc:	fae7dce3          	bge	a5,a4,214b4 <__subtf3+0x218>
   21500:	00000713          	li	a4,0
   21504:	00100793          	li	a5,1
   21508:	fd9ff06f          	j	214e0 <__subtf3+0x244>
   2150c:	fc07079b          	addiw	a5,a4,-64
   21510:	04000513          	li	a0,64
   21514:	00f357b3          	srl	a5,t1,a5
   21518:	00000693          	li	a3,0
   2151c:	00a70863          	beq	a4,a0,2152c <__subtf3+0x290>
   21520:	08000693          	li	a3,128
   21524:	40e686bb          	subw	a3,a3,a4
   21528:	00d316b3          	sll	a3,t1,a3
   2152c:	00c6e6b3          	or	a3,a3,a2
   21530:	00d036b3          	snez	a3,a3
   21534:	00d7e7b3          	or	a5,a5,a3
   21538:	00000713          	li	a4,0
   2153c:	fa5ff06f          	j	214e0 <__subtf3+0x244>
   21540:	0c070463          	beqz	a4,21608 <__subtf3+0x36c>
   21544:	de0484e3          	beqz	s1,2132c <__subtf3+0x90>
   21548:	f8c00793          	li	a5,-116
   2154c:	06f74e63          	blt	a4,a5,215c8 <__subtf3+0x32c>
   21550:	40e007bb          	negw	a5,a4
   21554:	00100713          	li	a4,1
   21558:	03371713          	slli	a4,a4,0x33
   2155c:	00e5e5b3          	or	a1,a1,a4
   21560:	03f00713          	li	a4,63
   21564:	06f74863          	blt	a4,a5,215d4 <__subtf3+0x338>
   21568:	04000693          	li	a3,64
   2156c:	40f686bb          	subw	a3,a3,a5
   21570:	00d59733          	sll	a4,a1,a3
   21574:	00f8d533          	srl	a0,a7,a5
   21578:	00d896b3          	sll	a3,a7,a3
   2157c:	00a76733          	or	a4,a4,a0
   21580:	00d036b3          	snez	a3,a3
   21584:	00d76733          	or	a4,a4,a3
   21588:	00f5d7b3          	srl	a5,a1,a5
   2158c:	00c70633          	add	a2,a4,a2
   21590:	006787b3          	add	a5,a5,t1
   21594:	00e63733          	sltu	a4,a2,a4
   21598:	00060893          	mv	a7,a2
   2159c:	00e785b3          	add	a1,a5,a4
   215a0:	db1ff06f          	j	21350 <__subtf3+0xb4>
   215a4:	00008737          	lui	a4,0x8
   215a8:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   215ac:	00e81a63          	bne	a6,a4,215c0 <__subtf3+0x324>
   215b0:	00030593          	mv	a1,t1
   215b4:	00060893          	mv	a7,a2
   215b8:	00080493          	mv	s1,a6
   215bc:	eb9ff06f          	j	21474 <__subtf3+0x1d8>
   215c0:	07400713          	li	a4,116
   215c4:	f8f75ee3          	bge	a4,a5,21560 <__subtf3+0x2c4>
   215c8:	00000793          	li	a5,0
   215cc:	00100713          	li	a4,1
   215d0:	fbdff06f          	j	2158c <__subtf3+0x2f0>
   215d4:	fc07871b          	addiw	a4,a5,-64
   215d8:	04000513          	li	a0,64
   215dc:	00e5d733          	srl	a4,a1,a4
   215e0:	00000693          	li	a3,0
   215e4:	00a78863          	beq	a5,a0,215f4 <__subtf3+0x358>
   215e8:	08000693          	li	a3,128
   215ec:	40f686bb          	subw	a3,a3,a5
   215f0:	00d596b3          	sll	a3,a1,a3
   215f4:	0116e6b3          	or	a3,a3,a7
   215f8:	00d036b3          	snez	a3,a3
   215fc:	00d76733          	or	a4,a4,a3
   21600:	00000793          	li	a5,0
   21604:	f89ff06f          	j	2158c <__subtf3+0x2f0>
   21608:	000087b7          	lui	a5,0x8
   2160c:	00148693          	addi	a3,s1,1
   21610:	ffe78713          	addi	a4,a5,-2 # 7ffe <exit-0x80ea>
   21614:	00e6f733          	and	a4,a3,a4
   21618:	06071a63          	bnez	a4,2168c <__subtf3+0x3f0>
   2161c:	0115e6b3          	or	a3,a1,a7
   21620:	04049463          	bnez	s1,21668 <__subtf3+0x3cc>
   21624:	4e068663          	beqz	a3,21b10 <__subtf3+0x874>
   21628:	00c367b3          	or	a5,t1,a2
   2162c:	e40784e3          	beqz	a5,21474 <__subtf3+0x1d8>
   21630:	00c88633          	add	a2,a7,a2
   21634:	011637b3          	sltu	a5,a2,a7
   21638:	006585b3          	add	a1,a1,t1
   2163c:	00f585b3          	add	a1,a1,a5
   21640:	0335d793          	srli	a5,a1,0x33
   21644:	0017f793          	andi	a5,a5,1
   21648:	00060893          	mv	a7,a2
   2164c:	e20784e3          	beqz	a5,21474 <__subtf3+0x1d8>
   21650:	fff00793          	li	a5,-1
   21654:	03379793          	slli	a5,a5,0x33
   21658:	fff78793          	addi	a5,a5,-1
   2165c:	00f5f5b3          	and	a1,a1,a5
   21660:	00100493          	li	s1,1
   21664:	e11ff06f          	j	21474 <__subtf3+0x1d8>
   21668:	fff78793          	addi	a5,a5,-1
   2166c:	4a068863          	beqz	a3,21b1c <__subtf3+0x880>
   21670:	00c36633          	or	a2,t1,a2
   21674:	00078493          	mv	s1,a5
   21678:	de060ee3          	beqz	a2,21474 <__subtf3+0x1d8>
   2167c:	00100593          	li	a1,1
   21680:	02f59593          	slli	a1,a1,0x2f
   21684:	00000513          	li	a0,0
   21688:	d2dff06f          	j	213b4 <__subtf3+0x118>
   2168c:	fff78793          	addi	a5,a5,-1
   21690:	44f68863          	beq	a3,a5,21ae0 <__subtf3+0x844>
   21694:	00c88633          	add	a2,a7,a2
   21698:	01163533          	sltu	a0,a2,a7
   2169c:	006585b3          	add	a1,a1,t1
   216a0:	00a585b3          	add	a1,a1,a0
   216a4:	03f59513          	slli	a0,a1,0x3f
   216a8:	00165613          	srli	a2,a2,0x1
   216ac:	00c568b3          	or	a7,a0,a2
   216b0:	0015d593          	srli	a1,a1,0x1
   216b4:	00068493          	mv	s1,a3
   216b8:	dbdff06f          	j	21474 <__subtf3+0x1d8>
   216bc:	12e05463          	blez	a4,217e4 <__subtf3+0x548>
   216c0:	04081e63          	bnez	a6,2171c <__subtf3+0x480>
   216c4:	00c367b3          	or	a5,t1,a2
   216c8:	da0786e3          	beqz	a5,21474 <__subtf3+0x1d8>
   216cc:	fff7071b          	addiw	a4,a4,-1
   216d0:	02071a63          	bnez	a4,21704 <__subtf3+0x468>
   216d4:	40c88633          	sub	a2,a7,a2
   216d8:	00c8b7b3          	sltu	a5,a7,a2
   216dc:	406585b3          	sub	a1,a1,t1
   216e0:	00060893          	mv	a7,a2
   216e4:	40f585b3          	sub	a1,a1,a5
   216e8:	0335d793          	srli	a5,a1,0x33
   216ec:	0017f793          	andi	a5,a5,1
   216f0:	d80782e3          	beqz	a5,21474 <__subtf3+0x1d8>
   216f4:	00d59413          	slli	s0,a1,0xd
   216f8:	00d45413          	srli	s0,s0,0xd
   216fc:	00088993          	mv	s3,a7
   21700:	2cc0006f          	j	219cc <__subtf3+0x730>
   21704:	d7c488e3          	beq	s1,t3,21474 <__subtf3+0x1d8>
   21708:	07400793          	li	a5,116
   2170c:	02e7d463          	bge	a5,a4,21734 <__subtf3+0x498>
   21710:	00000713          	li	a4,0
   21714:	00100793          	li	a5,1
   21718:	0480006f          	j	21760 <__subtf3+0x4c4>
   2171c:	d5c48ce3          	beq	s1,t3,21474 <__subtf3+0x1d8>
   21720:	07400793          	li	a5,116
   21724:	fee7c6e3          	blt	a5,a4,21710 <__subtf3+0x474>
   21728:	00100793          	li	a5,1
   2172c:	03379793          	slli	a5,a5,0x33
   21730:	00f36333          	or	t1,t1,a5
   21734:	03f00793          	li	a5,63
   21738:	04e7c063          	blt	a5,a4,21778 <__subtf3+0x4dc>
   2173c:	04000693          	li	a3,64
   21740:	40e686bb          	subw	a3,a3,a4
   21744:	00d317b3          	sll	a5,t1,a3
   21748:	00e65533          	srl	a0,a2,a4
   2174c:	00d616b3          	sll	a3,a2,a3
   21750:	00a7e7b3          	or	a5,a5,a0
   21754:	00d036b3          	snez	a3,a3
   21758:	00d7e7b3          	or	a5,a5,a3
   2175c:	00e35733          	srl	a4,t1,a4
   21760:	40f887b3          	sub	a5,a7,a5
   21764:	00f8b6b3          	sltu	a3,a7,a5
   21768:	40e58733          	sub	a4,a1,a4
   2176c:	00078893          	mv	a7,a5
   21770:	40d705b3          	sub	a1,a4,a3
   21774:	f75ff06f          	j	216e8 <__subtf3+0x44c>
   21778:	fc07079b          	addiw	a5,a4,-64
   2177c:	04000513          	li	a0,64
   21780:	00f357b3          	srl	a5,t1,a5
   21784:	00000693          	li	a3,0
   21788:	00a70863          	beq	a4,a0,21798 <__subtf3+0x4fc>
   2178c:	08000693          	li	a3,128
   21790:	40e686bb          	subw	a3,a3,a4
   21794:	00d316b3          	sll	a3,t1,a3
   21798:	00c6e6b3          	or	a3,a3,a2
   2179c:	00d036b3          	snez	a3,a3
   217a0:	00d7e7b3          	or	a5,a5,a3
   217a4:	00000713          	li	a4,0
   217a8:	fb9ff06f          	j	21760 <__subtf3+0x4c4>
   217ac:	12070a63          	beqz	a4,218e0 <__subtf3+0x644>
   217b0:	04048263          	beqz	s1,217f4 <__subtf3+0x558>
   217b4:	00030593          	mv	a1,t1
   217b8:	00060893          	mv	a7,a2
   217bc:	00080493          	mv	s1,a6
   217c0:	00078913          	mv	s2,a5
   217c4:	cb1ff06f          	j	21474 <__subtf3+0x1d8>
   217c8:	10070c63          	beqz	a4,218e0 <__subtf3+0x644>
   217cc:	02048063          	beqz	s1,217ec <__subtf3+0x550>
   217d0:	00000593          	li	a1,0
   217d4:	00000893          	li	a7,0
   217d8:	00080493          	mv	s1,a6
   217dc:	000e8913          	mv	s2,t4
   217e0:	b95ff06f          	j	21374 <__subtf3+0xd8>
   217e4:	0e070e63          	beqz	a4,218e0 <__subtf3+0x644>
   217e8:	04049e63          	bnez	s1,21844 <__subtf3+0x5a8>
   217ec:	000e8913          	mv	s2,t4
   217f0:	0080006f          	j	217f8 <__subtf3+0x55c>
   217f4:	00078913          	mv	s2,a5
   217f8:	0115e7b3          	or	a5,a1,a7
   217fc:	da078ae3          	beqz	a5,215b0 <__subtf3+0x314>
   21800:	fff74793          	not	a5,a4
   21804:	02079063          	bnez	a5,21824 <__subtf3+0x588>
   21808:	41160533          	sub	a0,a2,a7
   2180c:	40b305b3          	sub	a1,t1,a1
   21810:	00a63633          	sltu	a2,a2,a0
   21814:	00050893          	mv	a7,a0
   21818:	40c585b3          	sub	a1,a1,a2
   2181c:	00080493          	mv	s1,a6
   21820:	ec9ff06f          	j	216e8 <__subtf3+0x44c>
   21824:	00008737          	lui	a4,0x8
   21828:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   2182c:	d8e802e3          	beq	a6,a4,215b0 <__subtf3+0x314>
   21830:	07400713          	li	a4,116
   21834:	02f75663          	bge	a4,a5,21860 <__subtf3+0x5c4>
   21838:	00000793          	li	a5,0
   2183c:	00100713          	li	a4,1
   21840:	04c0006f          	j	2188c <__subtf3+0x5f0>
   21844:	f8c00793          	li	a5,-116
   21848:	08f74863          	blt	a4,a5,218d8 <__subtf3+0x63c>
   2184c:	40e007bb          	negw	a5,a4
   21850:	00100713          	li	a4,1
   21854:	03371713          	slli	a4,a4,0x33
   21858:	00e5e5b3          	or	a1,a1,a4
   2185c:	000e8913          	mv	s2,t4
   21860:	03f00713          	li	a4,63
   21864:	04f74063          	blt	a4,a5,218a4 <__subtf3+0x608>
   21868:	04000693          	li	a3,64
   2186c:	40f686bb          	subw	a3,a3,a5
   21870:	00d59733          	sll	a4,a1,a3
   21874:	00f8d533          	srl	a0,a7,a5
   21878:	00d896b3          	sll	a3,a7,a3
   2187c:	00a76733          	or	a4,a4,a0
   21880:	00d036b3          	snez	a3,a3
   21884:	00d76733          	or	a4,a4,a3
   21888:	00f5d7b3          	srl	a5,a1,a5
   2188c:	40e60733          	sub	a4,a2,a4
   21890:	40f307b3          	sub	a5,t1,a5
   21894:	00e635b3          	sltu	a1,a2,a4
   21898:	00070893          	mv	a7,a4
   2189c:	40b785b3          	sub	a1,a5,a1
   218a0:	f7dff06f          	j	2181c <__subtf3+0x580>
   218a4:	fc07871b          	addiw	a4,a5,-64
   218a8:	04000513          	li	a0,64
   218ac:	00e5d733          	srl	a4,a1,a4
   218b0:	00000693          	li	a3,0
   218b4:	00a78863          	beq	a5,a0,218c4 <__subtf3+0x628>
   218b8:	08000693          	li	a3,128
   218bc:	40f686bb          	subw	a3,a3,a5
   218c0:	00d596b3          	sll	a3,a1,a3
   218c4:	0116e6b3          	or	a3,a3,a7
   218c8:	00d036b3          	snez	a3,a3
   218cc:	00d76733          	or	a4,a4,a3
   218d0:	00000793          	li	a5,0
   218d4:	fb9ff06f          	j	2188c <__subtf3+0x5f0>
   218d8:	000e8913          	mv	s2,t4
   218dc:	f5dff06f          	j	21838 <__subtf3+0x59c>
   218e0:	000087b7          	lui	a5,0x8
   218e4:	00148713          	addi	a4,s1,1
   218e8:	ffe78693          	addi	a3,a5,-2 # 7ffe <exit-0x80ea>
   218ec:	00d77733          	and	a4,a4,a3
   218f0:	0a071463          	bnez	a4,21998 <__subtf3+0x6fc>
   218f4:	00c36533          	or	a0,t1,a2
   218f8:	0115e6b3          	or	a3,a1,a7
   218fc:	06049863          	bnez	s1,2196c <__subtf3+0x6d0>
   21900:	00069e63          	bnez	a3,2191c <__subtf3+0x680>
   21904:	00000593          	li	a1,0
   21908:	aa0506e3          	beqz	a0,213b4 <__subtf3+0x118>
   2190c:	00030593          	mv	a1,t1
   21910:	00060893          	mv	a7,a2
   21914:	000e8913          	mv	s2,t4
   21918:	b5dff06f          	j	21474 <__subtf3+0x1d8>
   2191c:	b4050ce3          	beqz	a0,21474 <__subtf3+0x1d8>
   21920:	40c886b3          	sub	a3,a7,a2
   21924:	00d8b533          	sltu	a0,a7,a3
   21928:	406587b3          	sub	a5,a1,t1
   2192c:	40a787b3          	sub	a5,a5,a0
   21930:	0337d513          	srli	a0,a5,0x33
   21934:	00157513          	andi	a0,a0,1
   21938:	00050e63          	beqz	a0,21954 <__subtf3+0x6b8>
   2193c:	41160533          	sub	a0,a2,a7
   21940:	40b305b3          	sub	a1,t1,a1
   21944:	00a63633          	sltu	a2,a2,a0
   21948:	00050893          	mv	a7,a0
   2194c:	40c585b3          	sub	a1,a1,a2
   21950:	fc5ff06f          	j	21914 <__subtf3+0x678>
   21954:	00f6e533          	or	a0,a3,a5
   21958:	00000593          	li	a1,0
   2195c:	a4050ce3          	beqz	a0,213b4 <__subtf3+0x118>
   21960:	00078593          	mv	a1,a5
   21964:	00068893          	mv	a7,a3
   21968:	b0dff06f          	j	21474 <__subtf3+0x1d8>
   2196c:	fff78793          	addi	a5,a5,-1
   21970:	00069e63          	bnez	a3,2198c <__subtf3+0x6f0>
   21974:	1a050a63          	beqz	a0,21b28 <__subtf3+0x88c>
   21978:	00030593          	mv	a1,t1
   2197c:	00060893          	mv	a7,a2
   21980:	000e8913          	mv	s2,t4
   21984:	00078493          	mv	s1,a5
   21988:	aedff06f          	j	21474 <__subtf3+0x1d8>
   2198c:	00078493          	mv	s1,a5
   21990:	ae0502e3          	beqz	a0,21474 <__subtf3+0x1d8>
   21994:	ce9ff06f          	j	2167c <__subtf3+0x3e0>
   21998:	40c88533          	sub	a0,a7,a2
   2199c:	00a8b7b3          	sltu	a5,a7,a0
   219a0:	40658433          	sub	s0,a1,t1
   219a4:	40f40433          	sub	s0,s0,a5
   219a8:	03345793          	srli	a5,s0,0x33
   219ac:	0017f793          	andi	a5,a5,1
   219b0:	00050993          	mv	s3,a0
   219b4:	06078c63          	beqz	a5,21a2c <__subtf3+0x790>
   219b8:	411609b3          	sub	s3,a2,a7
   219bc:	40b30433          	sub	s0,t1,a1
   219c0:	01363633          	sltu	a2,a2,s3
   219c4:	40c40433          	sub	s0,s0,a2
   219c8:	000e8913          	mv	s2,t4
   219cc:	06040c63          	beqz	s0,21a44 <__subtf3+0x7a8>
   219d0:	00040513          	mv	a0,s0
   219d4:	540000ef          	jal	ra,21f14 <__clzdi2>
   219d8:	ff45071b          	addiw	a4,a0,-12
   219dc:	04000593          	li	a1,64
   219e0:	40e585bb          	subw	a1,a1,a4
   219e4:	00e41433          	sll	s0,s0,a4
   219e8:	00b9d5b3          	srl	a1,s3,a1
   219ec:	0085e5b3          	or	a1,a1,s0
   219f0:	00e99433          	sll	s0,s3,a4
   219f4:	10974063          	blt	a4,s1,21af4 <__subtf3+0x858>
   219f8:	4097073b          	subw	a4,a4,s1
   219fc:	0017071b          	addiw	a4,a4,1
   21a00:	04000793          	li	a5,64
   21a04:	40e787bb          	subw	a5,a5,a4
   21a08:	00f59533          	sll	a0,a1,a5
   21a0c:	00e456b3          	srl	a3,s0,a4
   21a10:	00f417b3          	sll	a5,s0,a5
   21a14:	00d56533          	or	a0,a0,a3
   21a18:	00f037b3          	snez	a5,a5
   21a1c:	00f568b3          	or	a7,a0,a5
   21a20:	00e5d5b3          	srl	a1,a1,a4
   21a24:	00000493          	li	s1,0
   21a28:	a4dff06f          	j	21474 <__subtf3+0x1d8>
   21a2c:	00856533          	or	a0,a0,s0
   21a30:	f8051ee3          	bnez	a0,219cc <__subtf3+0x730>
   21a34:	00000593          	li	a1,0
   21a38:	00000493          	li	s1,0
   21a3c:	00000713          	li	a4,0
   21a40:	975ff06f          	j	213b4 <__subtf3+0x118>
   21a44:	00098513          	mv	a0,s3
   21a48:	4cc000ef          	jal	ra,21f14 <__clzdi2>
   21a4c:	0345071b          	addiw	a4,a0,52
   21a50:	03f00613          	li	a2,63
   21a54:	f8e654e3          	bge	a2,a4,219dc <__subtf3+0x740>
   21a58:	ff45059b          	addiw	a1,a0,-12
   21a5c:	00b995b3          	sll	a1,s3,a1
   21a60:	04974063          	blt	a4,s1,21aa0 <__subtf3+0x804>
   21a64:	409707bb          	subw	a5,a4,s1
   21a68:	0017871b          	addiw	a4,a5,1
   21a6c:	f8e65ae3          	bge	a2,a4,21a00 <__subtf3+0x764>
   21a70:	fc17879b          	addiw	a5,a5,-63
   21a74:	04000613          	li	a2,64
   21a78:	00f5d7b3          	srl	a5,a1,a5
   21a7c:	00000513          	li	a0,0
   21a80:	00c70863          	beq	a4,a2,21a90 <__subtf3+0x7f4>
   21a84:	08000513          	li	a0,128
   21a88:	40e5053b          	subw	a0,a0,a4
   21a8c:	00a59533          	sll	a0,a1,a0
   21a90:	00a03533          	snez	a0,a0
   21a94:	00f568b3          	or	a7,a0,a5
   21a98:	00000593          	li	a1,0
   21a9c:	f89ff06f          	j	21a24 <__subtf3+0x788>
   21aa0:	fff00793          	li	a5,-1
   21aa4:	03379793          	slli	a5,a5,0x33
   21aa8:	fff78793          	addi	a5,a5,-1
   21aac:	40e484b3          	sub	s1,s1,a4
   21ab0:	00f5f5b3          	and	a1,a1,a5
   21ab4:	00000893          	li	a7,0
   21ab8:	03d59793          	slli	a5,a1,0x3d
   21abc:	0038d513          	srli	a0,a7,0x3
   21ac0:	00a7e533          	or	a0,a5,a0
   21ac4:	000087b7          	lui	a5,0x8
   21ac8:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   21acc:	0035d593          	srli	a1,a1,0x3
   21ad0:	00090713          	mv	a4,s2
   21ad4:	8ef490e3          	bne	s1,a5,213b4 <__subtf3+0x118>
   21ad8:	00b565b3          	or	a1,a0,a1
   21adc:	06059263          	bnez	a1,21b40 <__subtf3+0x8a4>
   21ae0:	000087b7          	lui	a5,0x8
   21ae4:	00090713          	mv	a4,s2
   21ae8:	fff78493          	addi	s1,a5,-1 # 7fff <exit-0x80e9>
   21aec:	00000593          	li	a1,0
   21af0:	b95ff06f          	j	21684 <__subtf3+0x3e8>
   21af4:	fff00793          	li	a5,-1
   21af8:	03379793          	slli	a5,a5,0x33
   21afc:	fff78793          	addi	a5,a5,-1
   21b00:	40e484b3          	sub	s1,s1,a4
   21b04:	00f5f5b3          	and	a1,a1,a5
   21b08:	00040893          	mv	a7,s0
   21b0c:	969ff06f          	j	21474 <__subtf3+0x1d8>
   21b10:	00030593          	mv	a1,t1
   21b14:	00060893          	mv	a7,a2
   21b18:	95dff06f          	j	21474 <__subtf3+0x1d8>
   21b1c:	00030593          	mv	a1,t1
   21b20:	00060893          	mv	a7,a2
   21b24:	e61ff06f          	j	21984 <__subtf3+0x6e8>
   21b28:	00100593          	li	a1,1
   21b2c:	00078493          	mv	s1,a5
   21b30:	02f59593          	slli	a1,a1,0x2f
   21b34:	881ff06f          	j	213b4 <__subtf3+0x118>
   21b38:	00090713          	mv	a4,s2
   21b3c:	fb1ff06f          	j	21aec <__subtf3+0x850>
   21b40:	00100593          	li	a1,1
   21b44:	02f59593          	slli	a1,a1,0x2f
   21b48:	00000513          	li	a0,0
   21b4c:	ef1ff06f          	j	21a3c <__subtf3+0x7a0>

0000000000021b50 <__fixtfsi>:
   21b50:	00159713          	slli	a4,a1,0x1
   21b54:	000047b7          	lui	a5,0x4
   21b58:	03175713          	srli	a4,a4,0x31
   21b5c:	ffe78613          	addi	a2,a5,-2 # 3ffe <exit-0xc0ea>
   21b60:	03f5d693          	srli	a3,a1,0x3f
   21b64:	00000513          	li	a0,0
   21b68:	04e65663          	bge	a2,a4,21bb4 <__fixtfsi+0x64>
   21b6c:	01d78793          	addi	a5,a5,29
   21b70:	00e7da63          	bge	a5,a4,21b84 <__fixtfsi+0x34>
   21b74:	80000537          	lui	a0,0x80000
   21b78:	fff54513          	not	a0,a0
   21b7c:	00d5053b          	addw	a0,a0,a3
   21b80:	00008067          	ret
   21b84:	01059513          	slli	a0,a1,0x10
   21b88:	00100793          	li	a5,1
   21b8c:	03079793          	slli	a5,a5,0x30
   21b90:	01055513          	srli	a0,a0,0x10
   21b94:	00f56533          	or	a0,a0,a5
   21b98:	000047b7          	lui	a5,0x4
   21b9c:	02f7879b          	addiw	a5,a5,47 # 402f <exit-0xc0b9>
   21ba0:	40e787bb          	subw	a5,a5,a4
   21ba4:	00f55533          	srl	a0,a0,a5
   21ba8:	0005051b          	sext.w	a0,a0
   21bac:	00068463          	beqz	a3,21bb4 <__fixtfsi+0x64>
   21bb0:	40a0053b          	negw	a0,a0
   21bb4:	00008067          	ret

0000000000021bb8 <__floatsitf>:
   21bb8:	fe010113          	addi	sp,sp,-32
   21bbc:	00113c23          	sd	ra,24(sp)
   21bc0:	00813823          	sd	s0,16(sp)
   21bc4:	00913423          	sd	s1,8(sp)
   21bc8:	06050463          	beqz	a0,21c30 <__floatsitf+0x78>
   21bcc:	0005079b          	sext.w	a5,a0
   21bd0:	03f55493          	srli	s1,a0,0x3f
   21bd4:	00055463          	bgez	a0,21bdc <__floatsitf+0x24>
   21bd8:	40f007bb          	negw	a5,a5
   21bdc:	02079413          	slli	s0,a5,0x20
   21be0:	02045413          	srli	s0,s0,0x20
   21be4:	00040513          	mv	a0,s0
   21be8:	32c000ef          	jal	ra,21f14 <__clzdi2>
   21bec:	000045b7          	lui	a1,0x4
   21bf0:	03e5859b          	addiw	a1,a1,62 # 403e <exit-0xc0aa>
   21bf4:	40a585bb          	subw	a1,a1,a0
   21bf8:	ff15051b          	addiw	a0,a0,-15 # 7ffffff1 <__BSS_END__+0x7ffdbde9>
   21bfc:	00a417b3          	sll	a5,s0,a0
   21c00:	01813083          	ld	ra,24(sp)
   21c04:	01013403          	ld	s0,16(sp)
   21c08:	00f4949b          	slliw	s1,s1,0xf
   21c0c:	0095e5b3          	or	a1,a1,s1
   21c10:	01079793          	slli	a5,a5,0x10
   21c14:	03059593          	slli	a1,a1,0x30
   21c18:	0107d793          	srli	a5,a5,0x10
   21c1c:	00813483          	ld	s1,8(sp)
   21c20:	00000513          	li	a0,0
   21c24:	00b7e5b3          	or	a1,a5,a1
   21c28:	02010113          	addi	sp,sp,32
   21c2c:	00008067          	ret
   21c30:	00000793          	li	a5,0
   21c34:	00000593          	li	a1,0
   21c38:	00000493          	li	s1,0
   21c3c:	fc5ff06f          	j	21c00 <__floatsitf+0x48>

0000000000021c40 <__extenddftf2>:
   21c40:	03455793          	srli	a5,a0,0x34
   21c44:	7ff7f793          	andi	a5,a5,2047
   21c48:	fe010113          	addi	sp,sp,-32
   21c4c:	00178713          	addi	a4,a5,1
   21c50:	00813823          	sd	s0,16(sp)
   21c54:	00913423          	sd	s1,8(sp)
   21c58:	00c51413          	slli	s0,a0,0xc
   21c5c:	00113c23          	sd	ra,24(sp)
   21c60:	7fe77713          	andi	a4,a4,2046
   21c64:	00c45413          	srli	s0,s0,0xc
   21c68:	03f55493          	srli	s1,a0,0x3f
   21c6c:	04070463          	beqz	a4,21cb4 <__extenddftf2+0x74>
   21c70:	00004737          	lui	a4,0x4
   21c74:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc4e8>
   21c78:	00445593          	srli	a1,s0,0x4
   21c7c:	00e787b3          	add	a5,a5,a4
   21c80:	03c41413          	slli	s0,s0,0x3c
   21c84:	00f4951b          	slliw	a0,s1,0xf
   21c88:	01813083          	ld	ra,24(sp)
   21c8c:	00a7e7b3          	or	a5,a5,a0
   21c90:	00040513          	mv	a0,s0
   21c94:	01013403          	ld	s0,16(sp)
   21c98:	01059593          	slli	a1,a1,0x10
   21c9c:	03079793          	slli	a5,a5,0x30
   21ca0:	0105d593          	srli	a1,a1,0x10
   21ca4:	00813483          	ld	s1,8(sp)
   21ca8:	00f5e5b3          	or	a1,a1,a5
   21cac:	02010113          	addi	sp,sp,32
   21cb0:	00008067          	ret
   21cb4:	04079a63          	bnez	a5,21d08 <__extenddftf2+0xc8>
   21cb8:	00000593          	li	a1,0
   21cbc:	fc0404e3          	beqz	s0,21c84 <__extenddftf2+0x44>
   21cc0:	00040513          	mv	a0,s0
   21cc4:	250000ef          	jal	ra,21f14 <__clzdi2>
   21cc8:	0005071b          	sext.w	a4,a0
   21ccc:	00e00793          	li	a5,14
   21cd0:	02e7c463          	blt	a5,a4,21cf8 <__extenddftf2+0xb8>
   21cd4:	00f00593          	li	a1,15
   21cd8:	40a585bb          	subw	a1,a1,a0
   21cdc:	0315079b          	addiw	a5,a0,49
   21ce0:	00b455b3          	srl	a1,s0,a1
   21ce4:	00f41433          	sll	s0,s0,a5
   21ce8:	000047b7          	lui	a5,0x4
   21cec:	c0c7879b          	addiw	a5,a5,-1012 # 3c0c <exit-0xc4dc>
   21cf0:	40a787bb          	subw	a5,a5,a0
   21cf4:	f91ff06f          	j	21c84 <__extenddftf2+0x44>
   21cf8:	ff15059b          	addiw	a1,a0,-15
   21cfc:	00b415b3          	sll	a1,s0,a1
   21d00:	00000413          	li	s0,0
   21d04:	fe5ff06f          	j	21ce8 <__extenddftf2+0xa8>
   21d08:	00000593          	li	a1,0
   21d0c:	00040c63          	beqz	s0,21d24 <__extenddftf2+0xe4>
   21d10:	00100793          	li	a5,1
   21d14:	00445593          	srli	a1,s0,0x4
   21d18:	02f79793          	slli	a5,a5,0x2f
   21d1c:	00f5e5b3          	or	a1,a1,a5
   21d20:	03c41413          	slli	s0,s0,0x3c
   21d24:	000087b7          	lui	a5,0x8
   21d28:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   21d2c:	f59ff06f          	j	21c84 <__extenddftf2+0x44>

0000000000021d30 <__trunctfdf2>:
   21d30:	00008737          	lui	a4,0x8
   21d34:	fff70693          	addi	a3,a4,-1 # 7fff <exit-0x80e9>
   21d38:	0305d793          	srli	a5,a1,0x30
   21d3c:	03f5d813          	srli	a6,a1,0x3f
   21d40:	01059593          	slli	a1,a1,0x10
   21d44:	00d7f7b3          	and	a5,a5,a3
   21d48:	00d5d593          	srli	a1,a1,0xd
   21d4c:	03d55693          	srli	a3,a0,0x3d
   21d50:	00b6e6b3          	or	a3,a3,a1
   21d54:	ffe70713          	addi	a4,a4,-2
   21d58:	00178593          	addi	a1,a5,1
   21d5c:	00e5f733          	and	a4,a1,a4
   21d60:	00351613          	slli	a2,a0,0x3
   21d64:	10070e63          	beqz	a4,21e80 <__trunctfdf2+0x150>
   21d68:	ffffc737          	lui	a4,0xffffc
   21d6c:	40070713          	addi	a4,a4,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd81f8>
   21d70:	00e787b3          	add	a5,a5,a4
   21d74:	7fe00713          	li	a4,2046
   21d78:	16f74463          	blt	a4,a5,21ee0 <__trunctfdf2+0x1b0>
   21d7c:	0af04a63          	bgtz	a5,21e30 <__trunctfdf2+0x100>
   21d80:	fcc00713          	li	a4,-52
   21d84:	16e7c263          	blt	a5,a4,21ee8 <__trunctfdf2+0x1b8>
   21d88:	00100713          	li	a4,1
   21d8c:	03d00893          	li	a7,61
   21d90:	03371713          	slli	a4,a4,0x33
   21d94:	40f888b3          	sub	a7,a7,a5
   21d98:	0007851b          	sext.w	a0,a5
   21d9c:	03f00793          	li	a5,63
   21da0:	00e6e6b3          	or	a3,a3,a4
   21da4:	0317cc63          	blt	a5,a7,21ddc <__trunctfdf2+0xac>
   21da8:	03d00793          	li	a5,61
   21dac:	0035071b          	addiw	a4,a0,3
   21db0:	40a787bb          	subw	a5,a5,a0
   21db4:	00f657b3          	srl	a5,a2,a5
   21db8:	00e61633          	sll	a2,a2,a4
   21dbc:	00c03633          	snez	a2,a2
   21dc0:	00c7e7b3          	or	a5,a5,a2
   21dc4:	00e696b3          	sll	a3,a3,a4
   21dc8:	00f6e6b3          	or	a3,a3,a5
   21dcc:	0076f793          	andi	a5,a3,7
   21dd0:	0c079c63          	bnez	a5,21ea8 <__trunctfdf2+0x178>
   21dd4:	0036d713          	srli	a4,a3,0x3
   21dd8:	03c0006f          	j	21e14 <__trunctfdf2+0xe4>
   21ddc:	ffd00713          	li	a4,-3
   21de0:	40a7073b          	subw	a4,a4,a0
   21de4:	04000793          	li	a5,64
   21de8:	00e6d733          	srl	a4,a3,a4
   21dec:	00000593          	li	a1,0
   21df0:	00f88663          	beq	a7,a5,21dfc <__trunctfdf2+0xcc>
   21df4:	0435079b          	addiw	a5,a0,67
   21df8:	00f695b3          	sll	a1,a3,a5
   21dfc:	00c5e5b3          	or	a1,a1,a2
   21e00:	00b035b3          	snez	a1,a1
   21e04:	00b76733          	or	a4,a4,a1
   21e08:	00777793          	andi	a5,a4,7
   21e0c:	0a079a63          	bnez	a5,21ec0 <__trunctfdf2+0x190>
   21e10:	00375713          	srli	a4,a4,0x3
   21e14:	00c71713          	slli	a4,a4,0xc
   21e18:	00c75713          	srli	a4,a4,0xc
   21e1c:	03479793          	slli	a5,a5,0x34
   21e20:	00e7e7b3          	or	a5,a5,a4
   21e24:	03f81513          	slli	a0,a6,0x3f
   21e28:	00a7e533          	or	a0,a5,a0
   21e2c:	00008067          	ret
   21e30:	00751713          	slli	a4,a0,0x7
   21e34:	00e03733          	snez	a4,a4
   21e38:	03c65613          	srli	a2,a2,0x3c
   21e3c:	00c76733          	or	a4,a4,a2
   21e40:	00469693          	slli	a3,a3,0x4
   21e44:	00e6e6b3          	or	a3,a3,a4
   21e48:	00777713          	andi	a4,a4,7
   21e4c:	f80704e3          	beqz	a4,21dd4 <__trunctfdf2+0xa4>
   21e50:	00f6f613          	andi	a2,a3,15
   21e54:	00400593          	li	a1,4
   21e58:	0036d713          	srli	a4,a3,0x3
   21e5c:	fab60ce3          	beq	a2,a1,21e14 <__trunctfdf2+0xe4>
   21e60:	00468693          	addi	a3,a3,4
   21e64:	0376d613          	srli	a2,a3,0x37
   21e68:	00167613          	andi	a2,a2,1
   21e6c:	0036d713          	srli	a4,a3,0x3
   21e70:	fa0602e3          	beqz	a2,21e14 <__trunctfdf2+0xe4>
   21e74:	00178793          	addi	a5,a5,1
   21e78:	00000713          	li	a4,0
   21e7c:	f99ff06f          	j	21e14 <__trunctfdf2+0xe4>
   21e80:	00000713          	li	a4,0
   21e84:	f80788e3          	beqz	a5,21e14 <__trunctfdf2+0xe4>
   21e88:	00c6e733          	or	a4,a3,a2
   21e8c:	7ff00793          	li	a5,2047
   21e90:	f80702e3          	beqz	a4,21e14 <__trunctfdf2+0xe4>
   21e94:	00100713          	li	a4,1
   21e98:	00000813          	li	a6,0
   21e9c:	7ff00793          	li	a5,2047
   21ea0:	03371713          	slli	a4,a4,0x33
   21ea4:	f71ff06f          	j	21e14 <__trunctfdf2+0xe4>
   21ea8:	00f6f793          	andi	a5,a3,15
   21eac:	00400713          	li	a4,4
   21eb0:	02e79463          	bne	a5,a4,21ed8 <__trunctfdf2+0x1a8>
   21eb4:	0036d713          	srli	a4,a3,0x3
   21eb8:	00000793          	li	a5,0
   21ebc:	f59ff06f          	j	21e14 <__trunctfdf2+0xe4>
   21ec0:	00f77793          	andi	a5,a4,15
   21ec4:	00400693          	li	a3,4
   21ec8:	00d78463          	beq	a5,a3,21ed0 <__trunctfdf2+0x1a0>
   21ecc:	00470713          	addi	a4,a4,4
   21ed0:	00375713          	srli	a4,a4,0x3
   21ed4:	fe5ff06f          	j	21eb8 <__trunctfdf2+0x188>
   21ed8:	00000793          	li	a5,0
   21edc:	f85ff06f          	j	21e60 <__trunctfdf2+0x130>
   21ee0:	7ff00793          	li	a5,2047
   21ee4:	f95ff06f          	j	21e78 <__trunctfdf2+0x148>
   21ee8:	00000793          	li	a5,0
   21eec:	f8dff06f          	j	21e78 <__trunctfdf2+0x148>

0000000000021ef0 <__muldi3>:
   21ef0:	00050613          	mv	a2,a0
   21ef4:	00000513          	li	a0,0
   21ef8:	0015f693          	andi	a3,a1,1
   21efc:	00068463          	beqz	a3,21f04 <__muldi3+0x14>
   21f00:	00c50533          	add	a0,a0,a2
   21f04:	0015d593          	srli	a1,a1,0x1
   21f08:	00161613          	slli	a2,a2,0x1
   21f0c:	fe0596e3          	bnez	a1,21ef8 <__muldi3+0x8>
   21f10:	00008067          	ret

0000000000021f14 <__clzdi2>:
   21f14:	03855793          	srli	a5,a0,0x38
   21f18:	04079063          	bnez	a5,21f58 <__clzdi2+0x44>
   21f1c:	03800793          	li	a5,56
   21f20:	ff878793          	addi	a5,a5,-8
   21f24:	00078863          	beqz	a5,21f34 <__clzdi2+0x20>
   21f28:	00f55733          	srl	a4,a0,a5
   21f2c:	0ff77713          	zext.b	a4,a4
   21f30:	fe0708e3          	beqz	a4,21f20 <__clzdi2+0xc>
   21f34:	00023737          	lui	a4,0x23
   21f38:	04000693          	li	a3,64
   21f3c:	40f686b3          	sub	a3,a3,a5
   21f40:	00f55533          	srl	a0,a0,a5
   21f44:	d8070793          	addi	a5,a4,-640 # 22d80 <__clz_tab>
   21f48:	00a787b3          	add	a5,a5,a0
   21f4c:	0007c503          	lbu	a0,0(a5)
   21f50:	40a6853b          	subw	a0,a3,a0
   21f54:	00008067          	ret
   21f58:	03800793          	li	a5,56
   21f5c:	fd9ff06f          	j	21f34 <__clzdi2+0x20>
