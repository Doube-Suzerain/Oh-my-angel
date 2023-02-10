
a_plus_b：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	addi	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	39d020ef          	jal	ra,12c98 <__call_exitprocs>
   10100:	7481b503          	ld	a0,1864(gp) # 24d50 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	2150f0ef          	jal	ra,1fb28 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00013537          	lui	a0,0x13
   10124:	47850513          	addi	a0,a0,1144 # 13478 <__libc_fini_array>
   10128:	08d0c06f          	j	1c9b4 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00014197          	auipc	gp,0x14
   10134:	4d818193          	addi	gp,gp,1240 # 24608 <__global_pointer$>
   10138:	77018513          	addi	a0,gp,1904 # 24d78 <_PathLocale>
   1013c:	00015617          	auipc	a2,0x15
   10140:	ccc60613          	addi	a2,a2,-820 # 24e08 <__BSS_END__>
   10144:	40a60633          	sub	a2,a2,a0
   10148:	00000593          	li	a1,0
   1014c:	190000ef          	jal	ra,102dc <memset>
   10150:	0000d517          	auipc	a0,0xd
   10154:	86450513          	addi	a0,a0,-1948 # 1c9b4 <atexit>
   10158:	00050863          	beqz	a0,10168 <_start+0x38>
   1015c:	00003517          	auipc	a0,0x3
   10160:	31c50513          	addi	a0,a0,796 # 13478 <__libc_fini_array>
   10164:	0510c0ef          	jal	ra,1c9b4 <atexit>
   10168:	0d8000ef          	jal	ra,10240 <__libc_init_array>
   1016c:	00012503          	lw	a0,0(sp)
   10170:	00810593          	addi	a1,sp,8
   10174:	00000613          	li	a2,0
   10178:	06c000ef          	jal	ra,101e4 <main>
   1017c:	f6dff06f          	j	100e8 <exit>

0000000000010180 <__do_global_dtors_aux>:
   10180:	ff010113          	addi	sp,sp,-16
   10184:	00813023          	sd	s0,0(sp)
   10188:	7a01c783          	lbu	a5,1952(gp) # 24da8 <completed.1>
   1018c:	00113423          	sd	ra,8(sp)
   10190:	02079263          	bnez	a5,101b4 <__do_global_dtors_aux+0x34>
   10194:	00000793          	li	a5,0
   10198:	00078a63          	beqz	a5,101ac <__do_global_dtors_aux+0x2c>
   1019c:	00024537          	lui	a0,0x24
   101a0:	c0050513          	addi	a0,a0,-1024 # 23c00 <__FRAME_END__>
   101a4:	00000097          	auipc	ra,0x0
   101a8:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101ac:	00100793          	li	a5,1
   101b0:	7af18023          	sb	a5,1952(gp) # 24da8 <completed.1>
   101b4:	00813083          	ld	ra,8(sp)
   101b8:	00013403          	ld	s0,0(sp)
   101bc:	01010113          	addi	sp,sp,16
   101c0:	00008067          	ret

00000000000101c4 <frame_dummy>:
   101c4:	00000793          	li	a5,0
   101c8:	00078c63          	beqz	a5,101e0 <frame_dummy+0x1c>
   101cc:	00024537          	lui	a0,0x24
   101d0:	7a818593          	addi	a1,gp,1960 # 24db0 <object.0>
   101d4:	c0050513          	addi	a0,a0,-1024 # 23c00 <__FRAME_END__>
   101d8:	00000317          	auipc	t1,0x0
   101dc:	00000067          	jr	zero # 0 <exit-0x100e8>
   101e0:	00008067          	ret

00000000000101e4 <main>:
   101e4:	fe010113          	addi	sp,sp,-32
   101e8:	00113c23          	sd	ra,24(sp)
   101ec:	00813823          	sd	s0,16(sp)
   101f0:	02010413          	addi	s0,sp,32
   101f4:	03800793          	li	a5,56
   101f8:	fef42623          	sw	a5,-20(s0)
   101fc:	02600793          	li	a5,38
   10200:	fef42423          	sw	a5,-24(s0)
   10204:	fec42783          	lw	a5,-20(s0)
   10208:	00078713          	mv	a4,a5
   1020c:	fe842783          	lw	a5,-24(s0)
   10210:	00f707bb          	addw	a5,a4,a5
   10214:	0007879b          	sext.w	a5,a5
   10218:	00078593          	mv	a1,a5
   1021c:	000227b7          	lui	a5,0x22
   10220:	ce078513          	addi	a0,a5,-800 # 21ce0 <__clzdi2+0x50>
   10224:	1d4000ef          	jal	ra,103f8 <printf>
   10228:	00000793          	li	a5,0
   1022c:	00078513          	mv	a0,a5
   10230:	01813083          	ld	ra,24(sp)
   10234:	01013403          	ld	s0,16(sp)
   10238:	02010113          	addi	sp,sp,32
   1023c:	00008067          	ret

0000000000010240 <__libc_init_array>:
   10240:	fe010113          	addi	sp,sp,-32
   10244:	00813823          	sd	s0,16(sp)
   10248:	000247b7          	lui	a5,0x24
   1024c:	00024437          	lui	s0,0x24
   10250:	01213023          	sd	s2,0(sp)
   10254:	c0478793          	addi	a5,a5,-1020 # 23c04 <__preinit_array_end>
   10258:	c0440713          	addi	a4,s0,-1020 # 23c04 <__preinit_array_end>
   1025c:	00113c23          	sd	ra,24(sp)
   10260:	00913423          	sd	s1,8(sp)
   10264:	40e78933          	sub	s2,a5,a4
   10268:	02e78263          	beq	a5,a4,1028c <__libc_init_array+0x4c>
   1026c:	40395913          	srai	s2,s2,0x3
   10270:	c0440413          	addi	s0,s0,-1020
   10274:	00000493          	li	s1,0
   10278:	00043783          	ld	a5,0(s0)
   1027c:	00148493          	addi	s1,s1,1
   10280:	00840413          	addi	s0,s0,8
   10284:	000780e7          	jalr	a5
   10288:	ff24e8e3          	bltu	s1,s2,10278 <__libc_init_array+0x38>
   1028c:	00024437          	lui	s0,0x24
   10290:	000247b7          	lui	a5,0x24
   10294:	c1878793          	addi	a5,a5,-1000 # 23c18 <__do_global_dtors_aux_fini_array_entry>
   10298:	c0840713          	addi	a4,s0,-1016 # 23c08 <__init_array_start>
   1029c:	40e78933          	sub	s2,a5,a4
   102a0:	40395913          	srai	s2,s2,0x3
   102a4:	02e78063          	beq	a5,a4,102c4 <__libc_init_array+0x84>
   102a8:	c0840413          	addi	s0,s0,-1016
   102ac:	00000493          	li	s1,0
   102b0:	00043783          	ld	a5,0(s0)
   102b4:	00148493          	addi	s1,s1,1
   102b8:	00840413          	addi	s0,s0,8
   102bc:	000780e7          	jalr	a5
   102c0:	ff24e8e3          	bltu	s1,s2,102b0 <__libc_init_array+0x70>
   102c4:	01813083          	ld	ra,24(sp)
   102c8:	01013403          	ld	s0,16(sp)
   102cc:	00813483          	ld	s1,8(sp)
   102d0:	00013903          	ld	s2,0(sp)
   102d4:	02010113          	addi	sp,sp,32
   102d8:	00008067          	ret

00000000000102dc <memset>:
   102dc:	00f00313          	li	t1,15
   102e0:	00050713          	mv	a4,a0
   102e4:	02c37a63          	bgeu	t1,a2,10318 <memset+0x3c>
   102e8:	00f77793          	andi	a5,a4,15
   102ec:	0a079063          	bnez	a5,1038c <memset+0xb0>
   102f0:	06059e63          	bnez	a1,1036c <memset+0x90>
   102f4:	ff067693          	andi	a3,a2,-16
   102f8:	00f67613          	andi	a2,a2,15
   102fc:	00e686b3          	add	a3,a3,a4
   10300:	00b73023          	sd	a1,0(a4)
   10304:	00b73423          	sd	a1,8(a4)
   10308:	01070713          	addi	a4,a4,16
   1030c:	fed76ae3          	bltu	a4,a3,10300 <memset+0x24>
   10310:	00061463          	bnez	a2,10318 <memset+0x3c>
   10314:	00008067          	ret
   10318:	40c306b3          	sub	a3,t1,a2
   1031c:	00269693          	slli	a3,a3,0x2
   10320:	00000297          	auipc	t0,0x0
   10324:	005686b3          	add	a3,a3,t0
   10328:	00c68067          	jr	12(a3)
   1032c:	00b70723          	sb	a1,14(a4)
   10330:	00b706a3          	sb	a1,13(a4)
   10334:	00b70623          	sb	a1,12(a4)
   10338:	00b705a3          	sb	a1,11(a4)
   1033c:	00b70523          	sb	a1,10(a4)
   10340:	00b704a3          	sb	a1,9(a4)
   10344:	00b70423          	sb	a1,8(a4)
   10348:	00b703a3          	sb	a1,7(a4)
   1034c:	00b70323          	sb	a1,6(a4)
   10350:	00b702a3          	sb	a1,5(a4)
   10354:	00b70223          	sb	a1,4(a4)
   10358:	00b701a3          	sb	a1,3(a4)
   1035c:	00b70123          	sb	a1,2(a4)
   10360:	00b700a3          	sb	a1,1(a4)
   10364:	00b70023          	sb	a1,0(a4)
   10368:	00008067          	ret
   1036c:	0ff5f593          	zext.b	a1,a1
   10370:	00859693          	slli	a3,a1,0x8
   10374:	00d5e5b3          	or	a1,a1,a3
   10378:	01059693          	slli	a3,a1,0x10
   1037c:	00d5e5b3          	or	a1,a1,a3
   10380:	02059693          	slli	a3,a1,0x20
   10384:	00d5e5b3          	or	a1,a1,a3
   10388:	f6dff06f          	j	102f4 <memset+0x18>
   1038c:	00279693          	slli	a3,a5,0x2
   10390:	00000297          	auipc	t0,0x0
   10394:	005686b3          	add	a3,a3,t0
   10398:	00008293          	mv	t0,ra
   1039c:	f98680e7          	jalr	-104(a3)
   103a0:	00028093          	mv	ra,t0
   103a4:	ff078793          	addi	a5,a5,-16
   103a8:	40f70733          	sub	a4,a4,a5
   103ac:	00f60633          	add	a2,a2,a5
   103b0:	f6c374e3          	bgeu	t1,a2,10318 <memset+0x3c>
   103b4:	f3dff06f          	j	102f0 <memset+0x14>

00000000000103b8 <_printf_r>:
   103b8:	fb010113          	addi	sp,sp,-80
   103bc:	02c13023          	sd	a2,32(sp)
   103c0:	02d13423          	sd	a3,40(sp)
   103c4:	02e13823          	sd	a4,48(sp)
   103c8:	02f13c23          	sd	a5,56(sp)
   103cc:	05013023          	sd	a6,64(sp)
   103d0:	05113423          	sd	a7,72(sp)
   103d4:	00058613          	mv	a2,a1
   103d8:	01053583          	ld	a1,16(a0)
   103dc:	02010693          	addi	a3,sp,32
   103e0:	00113c23          	sd	ra,24(sp)
   103e4:	00d13423          	sd	a3,8(sp)
   103e8:	05c000ef          	jal	ra,10444 <_vfprintf_r>
   103ec:	01813083          	ld	ra,24(sp)
   103f0:	05010113          	addi	sp,sp,80
   103f4:	00008067          	ret

00000000000103f8 <printf>:
   103f8:	7581b303          	ld	t1,1880(gp) # 24d60 <_impure_ptr>
   103fc:	fa010113          	addi	sp,sp,-96
   10400:	02c13823          	sd	a2,48(sp)
   10404:	02d13c23          	sd	a3,56(sp)
   10408:	02b13423          	sd	a1,40(sp)
   1040c:	04e13023          	sd	a4,64(sp)
   10410:	04f13423          	sd	a5,72(sp)
   10414:	05013823          	sd	a6,80(sp)
   10418:	05113c23          	sd	a7,88(sp)
   1041c:	01033583          	ld	a1,16(t1) # 101e8 <main+0x4>
   10420:	02810693          	addi	a3,sp,40
   10424:	00050613          	mv	a2,a0
   10428:	00030513          	mv	a0,t1
   1042c:	00113c23          	sd	ra,24(sp)
   10430:	00d13423          	sd	a3,8(sp)
   10434:	010000ef          	jal	ra,10444 <_vfprintf_r>
   10438:	01813083          	ld	ra,24(sp)
   1043c:	06010113          	addi	sp,sp,96
   10440:	00008067          	ret

0000000000010444 <_vfprintf_r>:
   10444:	d9010113          	addi	sp,sp,-624
   10448:	26113423          	sd	ra,616(sp)
   1044c:	26813023          	sd	s0,608(sp)
   10450:	25213823          	sd	s2,592(sp)
   10454:	00b13023          	sd	a1,0(sp)
   10458:	00060913          	mv	s2,a2
   1045c:	02d13023          	sd	a3,32(sp)
   10460:	24913c23          	sd	s1,600(sp)
   10464:	25313423          	sd	s3,584(sp)
   10468:	25413023          	sd	s4,576(sp)
   1046c:	23513c23          	sd	s5,568(sp)
   10470:	23613823          	sd	s6,560(sp)
   10474:	23713423          	sd	s7,552(sp)
   10478:	23813023          	sd	s8,544(sp)
   1047c:	21913c23          	sd	s9,536(sp)
   10480:	21a13823          	sd	s10,528(sp)
   10484:	21b13423          	sd	s11,520(sp)
   10488:	00050413          	mv	s0,a0
   1048c:	04a13823          	sd	a0,80(sp)
   10490:	2c8060ef          	jal	ra,16758 <_localeconv_r>
   10494:	00053703          	ld	a4,0(a0)
   10498:	00070513          	mv	a0,a4
   1049c:	06e13023          	sd	a4,96(sp)
   104a0:	001080ef          	jal	ra,18ca0 <strlen>
   104a4:	04a13c23          	sd	a0,88(sp)
   104a8:	0e013823          	sd	zero,240(sp)
   104ac:	0e013c23          	sd	zero,248(sp)
   104b0:	00040663          	beqz	s0,104bc <_vfprintf_r+0x78>
   104b4:	05042703          	lw	a4,80(s0)
   104b8:	5e070a63          	beqz	a4,10aac <_vfprintf_r+0x668>
   104bc:	00013783          	ld	a5,0(sp)
   104c0:	01079703          	lh	a4,16(a5)
   104c4:	03271693          	slli	a3,a4,0x32
   104c8:	0206c663          	bltz	a3,104f4 <_vfprintf_r+0xb0>
   104cc:	0ac7a683          	lw	a3,172(a5)
   104d0:	00002637          	lui	a2,0x2
   104d4:	00c76733          	or	a4,a4,a2
   104d8:	ffffe637          	lui	a2,0xffffe
   104dc:	0107171b          	slliw	a4,a4,0x10
   104e0:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd91f7>
   104e4:	4107571b          	sraiw	a4,a4,0x10
   104e8:	00c6f6b3          	and	a3,a3,a2
   104ec:	00e79823          	sh	a4,16(a5)
   104f0:	0ad7a623          	sw	a3,172(a5)
   104f4:	00877693          	andi	a3,a4,8
   104f8:	32068263          	beqz	a3,1081c <_vfprintf_r+0x3d8>
   104fc:	00013783          	ld	a5,0(sp)
   10500:	0187b683          	ld	a3,24(a5)
   10504:	30068c63          	beqz	a3,1081c <_vfprintf_r+0x3d8>
   10508:	01a77713          	andi	a4,a4,26
   1050c:	00a00693          	li	a3,10
   10510:	32d70a63          	beq	a4,a3,10844 <_vfprintf_r+0x400>
   10514:	18010793          	addi	a5,sp,384
   10518:	00022737          	lui	a4,0x22
   1051c:	00078313          	mv	t1,a5
   10520:	10f13023          	sd	a5,256(sp)
   10524:	00090b13          	mv	s6,s2
   10528:	d4470793          	addi	a5,a4,-700 # 21d44 <__clzdi2+0xb4>
   1052c:	00022737          	lui	a4,0x22
   10530:	02f13423          	sd	a5,40(sp)
   10534:	f4870793          	addi	a5,a4,-184 # 21f48 <zeroes.0>
   10538:	000b4703          	lbu	a4,0(s6)
   1053c:	10013823          	sd	zero,272(sp)
   10540:	10012423          	sw	zero,264(sp)
   10544:	02013c23          	sd	zero,56(sp)
   10548:	06013423          	sd	zero,104(sp)
   1054c:	06013823          	sd	zero,112(sp)
   10550:	06013c23          	sd	zero,120(sp)
   10554:	08013023          	sd	zero,128(sp)
   10558:	08013423          	sd	zero,136(sp)
   1055c:	00013823          	sd	zero,16(sp)
   10560:	00f13423          	sd	a5,8(sp)
   10564:	05013983          	ld	s3,80(sp)
   10568:	00030413          	mv	s0,t1
   1056c:	24070063          	beqz	a4,107ac <_vfprintf_r+0x368>
   10570:	000b0493          	mv	s1,s6
   10574:	02500693          	li	a3,37
   10578:	2ed70a63          	beq	a4,a3,1086c <_vfprintf_r+0x428>
   1057c:	0014c703          	lbu	a4,1(s1)
   10580:	00148493          	addi	s1,s1,1
   10584:	fe071ae3          	bnez	a4,10578 <_vfprintf_r+0x134>
   10588:	4164893b          	subw	s2,s1,s6
   1058c:	22090063          	beqz	s2,107ac <_vfprintf_r+0x368>
   10590:	11013d83          	ld	s11,272(sp)
   10594:	10812683          	lw	a3,264(sp)
   10598:	01643023          	sd	s6,0(s0)
   1059c:	012d8733          	add	a4,s11,s2
   105a0:	0016861b          	addiw	a2,a3,1
   105a4:	01243423          	sd	s2,8(s0)
   105a8:	10e13823          	sd	a4,272(sp)
   105ac:	10c12423          	sw	a2,264(sp)
   105b0:	00700713          	li	a4,7
   105b4:	01040413          	addi	s0,s0,16
   105b8:	2cc74263          	blt	a4,a2,1087c <_vfprintf_r+0x438>
   105bc:	01013783          	ld	a5,16(sp)
   105c0:	0004c703          	lbu	a4,0(s1)
   105c4:	012787bb          	addw	a5,a5,s2
   105c8:	00f13823          	sd	a5,16(sp)
   105cc:	1e070063          	beqz	a4,107ac <_vfprintf_r+0x368>
   105d0:	fff00313          	li	t1,-1
   105d4:	0014ce03          	lbu	t3,1(s1)
   105d8:	0c0107a3          	sb	zero,207(sp)
   105dc:	00148493          	addi	s1,s1,1
   105e0:	00000a13          	li	s4,0
   105e4:	00000913          	li	s2,0
   105e8:	05a00b93          	li	s7,90
   105ec:	00030a93          	mv	s5,t1
   105f0:	00148493          	addi	s1,s1,1
   105f4:	000e0c9b          	sext.w	s9,t3
   105f8:	fe0c879b          	addiw	a5,s9,-32
   105fc:	0007871b          	sext.w	a4,a5
   10600:	04ebec63          	bltu	s7,a4,10658 <_vfprintf_r+0x214>
   10604:	02079713          	slli	a4,a5,0x20
   10608:	01e75793          	srli	a5,a4,0x1e
   1060c:	02813703          	ld	a4,40(sp)
   10610:	00e787b3          	add	a5,a5,a4
   10614:	0007a783          	lw	a5,0(a5)
   10618:	00078067          	jr	a5
   1061c:	00000a13          	li	s4,0
   10620:	00900693          	li	a3,9
   10624:	0004c703          	lbu	a4,0(s1)
   10628:	002a179b          	slliw	a5,s4,0x2
   1062c:	01478a3b          	addw	s4,a5,s4
   10630:	fd0c8c9b          	addiw	s9,s9,-48
   10634:	001a1a1b          	slliw	s4,s4,0x1
   10638:	fd07079b          	addiw	a5,a4,-48
   1063c:	014c8a3b          	addw	s4,s9,s4
   10640:	00148493          	addi	s1,s1,1
   10644:	00070c9b          	sext.w	s9,a4
   10648:	fcf6fee3          	bgeu	a3,a5,10624 <_vfprintf_r+0x1e0>
   1064c:	fe0c879b          	addiw	a5,s9,-32
   10650:	0007871b          	sext.w	a4,a5
   10654:	faebf8e3          	bgeu	s7,a4,10604 <_vfprintf_r+0x1c0>
   10658:	140c8a63          	beqz	s9,107ac <_vfprintf_r+0x368>
   1065c:	11910c23          	sb	s9,280(sp)
   10660:	0c0107a3          	sb	zero,207(sp)
   10664:	00100c13          	li	s8,1
   10668:	00100d13          	li	s10,1
   1066c:	11810b13          	addi	s6,sp,280
   10670:	00013c23          	sd	zero,24(sp)
   10674:	00000313          	li	t1,0
   10678:	04013423          	sd	zero,72(sp)
   1067c:	04013023          	sd	zero,64(sp)
   10680:	02013823          	sd	zero,48(sp)
   10684:	00297b93          	andi	s7,s2,2
   10688:	000b8463          	beqz	s7,10690 <_vfprintf_r+0x24c>
   1068c:	002c0c1b          	addiw	s8,s8,2
   10690:	08497a93          	andi	s5,s2,132
   10694:	000a9663          	bnez	s5,106a0 <_vfprintf_r+0x25c>
   10698:	418a073b          	subw	a4,s4,s8
   1069c:	34e046e3          	bgtz	a4,111e8 <_vfprintf_r+0xda4>
   106a0:	0cf14703          	lbu	a4,207(sp)
   106a4:	11013d83          	ld	s11,272(sp)
   106a8:	02070c63          	beqz	a4,106e0 <_vfprintf_r+0x29c>
   106ac:	10812603          	lw	a2,264(sp)
   106b0:	0cf10593          	addi	a1,sp,207
   106b4:	00b43023          	sd	a1,0(s0)
   106b8:	0016061b          	addiw	a2,a2,1
   106bc:	00100593          	li	a1,1
   106c0:	001d8d93          	addi	s11,s11,1
   106c4:	00b43423          	sd	a1,8(s0)
   106c8:	10c12423          	sw	a2,264(sp)
   106cc:	0006059b          	sext.w	a1,a2
   106d0:	11b13823          	sd	s11,272(sp)
   106d4:	00700613          	li	a2,7
   106d8:	01040413          	addi	s0,s0,16
   106dc:	2ab64463          	blt	a2,a1,10984 <_vfprintf_r+0x540>
   106e0:	020b8c63          	beqz	s7,10718 <_vfprintf_r+0x2d4>
   106e4:	10812603          	lw	a2,264(sp)
   106e8:	00200593          	li	a1,2
   106ec:	002d8d93          	addi	s11,s11,2
   106f0:	0016061b          	addiw	a2,a2,1
   106f4:	0d010793          	addi	a5,sp,208
   106f8:	00b43423          	sd	a1,8(s0)
   106fc:	00f43023          	sd	a5,0(s0)
   10700:	0006059b          	sext.w	a1,a2
   10704:	10c12423          	sw	a2,264(sp)
   10708:	11b13823          	sd	s11,272(sp)
   1070c:	00700613          	li	a2,7
   10710:	01040413          	addi	s0,s0,16
   10714:	3eb64ae3          	blt	a2,a1,11308 <_vfprintf_r+0xec4>
   10718:	08000613          	li	a2,128
   1071c:	0eca80e3          	beq	s5,a2,10ffc <_vfprintf_r+0xbb8>
   10720:	41a30bbb          	subw	s7,t1,s10
   10724:	1d7040e3          	bgtz	s7,110e4 <_vfprintf_r+0xca0>
   10728:	10097613          	andi	a2,s2,256
   1072c:	70061863          	bnez	a2,10e3c <_vfprintf_r+0x9f8>
   10730:	10812603          	lw	a2,264(sp)
   10734:	01bd0733          	add	a4,s10,s11
   10738:	01643023          	sd	s6,0(s0)
   1073c:	0016069b          	addiw	a3,a2,1
   10740:	01a43423          	sd	s10,8(s0)
   10744:	10e13823          	sd	a4,272(sp)
   10748:	10d12423          	sw	a3,264(sp)
   1074c:	00700793          	li	a5,7
   10750:	32d7ce63          	blt	a5,a3,10a8c <_vfprintf_r+0x648>
   10754:	01040413          	addi	s0,s0,16
   10758:	00497913          	andi	s2,s2,4
   1075c:	00090663          	beqz	s2,10768 <_vfprintf_r+0x324>
   10760:	418a093b          	subw	s2,s4,s8
   10764:	3d2046e3          	bgtz	s2,11330 <_vfprintf_r+0xeec>
   10768:	000a0793          	mv	a5,s4
   1076c:	018a5463          	bge	s4,s8,10774 <_vfprintf_r+0x330>
   10770:	000c0793          	mv	a5,s8
   10774:	01013683          	ld	a3,16(sp)
   10778:	00d787bb          	addw	a5,a5,a3
   1077c:	00f13823          	sd	a5,16(sp)
   10780:	240710e3          	bnez	a4,111c0 <_vfprintf_r+0xd7c>
   10784:	01813783          	ld	a5,24(sp)
   10788:	10012423          	sw	zero,264(sp)
   1078c:	00078863          	beqz	a5,1079c <_vfprintf_r+0x358>
   10790:	01813583          	ld	a1,24(sp)
   10794:	00098513          	mv	a0,s3
   10798:	679020ef          	jal	ra,13610 <_free_r>
   1079c:	18010413          	addi	s0,sp,384
   107a0:	00048b13          	mv	s6,s1
   107a4:	000b4703          	lbu	a4,0(s6)
   107a8:	dc0714e3          	bnez	a4,10570 <_vfprintf_r+0x12c>
   107ac:	11013783          	ld	a5,272(sp)
   107b0:	00078463          	beqz	a5,107b8 <_vfprintf_r+0x374>
   107b4:	2190106f          	j	121cc <_vfprintf_r+0x1d88>
   107b8:	00013783          	ld	a5,0(sp)
   107bc:	0107d783          	lhu	a5,16(a5)
   107c0:	0407f793          	andi	a5,a5,64
   107c4:	00078463          	beqz	a5,107cc <_vfprintf_r+0x388>
   107c8:	7ed0106f          	j	127b4 <_vfprintf_r+0x2370>
   107cc:	26813083          	ld	ra,616(sp)
   107d0:	26013403          	ld	s0,608(sp)
   107d4:	01013503          	ld	a0,16(sp)
   107d8:	25813483          	ld	s1,600(sp)
   107dc:	25013903          	ld	s2,592(sp)
   107e0:	24813983          	ld	s3,584(sp)
   107e4:	24013a03          	ld	s4,576(sp)
   107e8:	23813a83          	ld	s5,568(sp)
   107ec:	23013b03          	ld	s6,560(sp)
   107f0:	22813b83          	ld	s7,552(sp)
   107f4:	22013c03          	ld	s8,544(sp)
   107f8:	21813c83          	ld	s9,536(sp)
   107fc:	21013d03          	ld	s10,528(sp)
   10800:	20813d83          	ld	s11,520(sp)
   10804:	27010113          	addi	sp,sp,624
   10808:	00008067          	ret
   1080c:	01096913          	ori	s2,s2,16
   10810:	0004ce03          	lbu	t3,0(s1)
   10814:	0009091b          	sext.w	s2,s2
   10818:	dd9ff06f          	j	105f0 <_vfprintf_r+0x1ac>
   1081c:	00013583          	ld	a1,0(sp)
   10820:	05013503          	ld	a0,80(sp)
   10824:	334020ef          	jal	ra,12b58 <__swsetup_r>
   10828:	00050463          	beqz	a0,10830 <_vfprintf_r+0x3ec>
   1082c:	7890106f          	j	127b4 <_vfprintf_r+0x2370>
   10830:	00013783          	ld	a5,0(sp)
   10834:	00a00693          	li	a3,10
   10838:	01079703          	lh	a4,16(a5)
   1083c:	01a77713          	andi	a4,a4,26
   10840:	ccd71ae3          	bne	a4,a3,10514 <_vfprintf_r+0xd0>
   10844:	00013783          	ld	a5,0(sp)
   10848:	01279703          	lh	a4,18(a5)
   1084c:	cc0744e3          	bltz	a4,10514 <_vfprintf_r+0xd0>
   10850:	02013683          	ld	a3,32(sp)
   10854:	05013503          	ld	a0,80(sp)
   10858:	00090613          	mv	a2,s2
   1085c:	00078593          	mv	a1,a5
   10860:	22c020ef          	jal	ra,12a8c <__sbprintf>
   10864:	00a13823          	sd	a0,16(sp)
   10868:	f65ff06f          	j	107cc <_vfprintf_r+0x388>
   1086c:	4164893b          	subw	s2,s1,s6
   10870:	d20910e3          	bnez	s2,10590 <_vfprintf_r+0x14c>
   10874:	0004c703          	lbu	a4,0(s1)
   10878:	d55ff06f          	j	105cc <_vfprintf_r+0x188>
   1087c:	00013583          	ld	a1,0(sp)
   10880:	10010613          	addi	a2,sp,256
   10884:	00098513          	mv	a0,s3
   10888:	44d0a0ef          	jal	ra,1b4d4 <__sprint_r>
   1088c:	f20516e3          	bnez	a0,107b8 <_vfprintf_r+0x374>
   10890:	18010413          	addi	s0,sp,384
   10894:	d29ff06f          	j	105bc <_vfprintf_r+0x178>
   10898:	00897713          	andi	a4,s2,8
   1089c:	000a8313          	mv	t1,s5
   108a0:	6a071ce3          	bnez	a4,11758 <_vfprintf_r+0x1314>
   108a4:	02013783          	ld	a5,32(sp)
   108a8:	01513c23          	sd	s5,24(sp)
   108ac:	0007b503          	ld	a0,0(a5)
   108b0:	00878a93          	addi	s5,a5,8
   108b4:	03513023          	sd	s5,32(sp)
   108b8:	004110ef          	jal	ra,218bc <__extenddftf2>
   108bc:	01813303          	ld	t1,24(sp)
   108c0:	00050713          	mv	a4,a0
   108c4:	0f010513          	addi	a0,sp,240
   108c8:	00613c23          	sd	t1,24(sp)
   108cc:	0ee13823          	sd	a4,240(sp)
   108d0:	0eb13c23          	sd	a1,248(sp)
   108d4:	615050ef          	jal	ra,166e8 <_ldcheck>
   108d8:	0ca12c23          	sw	a0,216(sp)
   108dc:	00200713          	li	a4,2
   108e0:	01813303          	ld	t1,24(sp)
   108e4:	00e51463          	bne	a0,a4,108ec <_vfprintf_r+0x4a8>
   108e8:	28c0106f          	j	11b74 <_vfprintf_r+0x1730>
   108ec:	00100713          	li	a4,1
   108f0:	00e51463          	bne	a0,a4,108f8 <_vfprintf_r+0x4b4>
   108f4:	3c40106f          	j	11cb8 <_vfprintf_r+0x1874>
   108f8:	06100713          	li	a4,97
   108fc:	00ec9463          	bne	s9,a4,10904 <_vfprintf_r+0x4c0>
   10900:	4c90106f          	j	125c8 <_vfprintf_r+0x2184>
   10904:	04100713          	li	a4,65
   10908:	00ec9463          	bne	s9,a4,10910 <_vfprintf_r+0x4cc>
   1090c:	1010106f          	j	1220c <_vfprintf_r+0x1dc8>
   10910:	fff00713          	li	a4,-1
   10914:	00e31463          	bne	t1,a4,1091c <_vfprintf_r+0x4d8>
   10918:	7f10106f          	j	12908 <_vfprintf_r+0x24c4>
   1091c:	fdfcf713          	andi	a4,s9,-33
   10920:	04700693          	li	a3,71
   10924:	00d71463          	bne	a4,a3,1092c <_vfprintf_r+0x4e8>
   10928:	7d10106f          	j	128f8 <_vfprintf_r+0x24b4>
   1092c:	10096713          	ori	a4,s2,256
   10930:	0f813c03          	ld	s8,248(sp)
   10934:	0007079b          	sext.w	a5,a4
   10938:	08f13823          	sd	a5,144(sp)
   1093c:	05213023          	sd	s2,64(sp)
   10940:	0f013b83          	ld	s7,240(sp)
   10944:	000c5463          	bgez	s8,1094c <_vfprintf_r+0x508>
   10948:	4190106f          	j	12560 <_vfprintf_r+0x211c>
   1094c:	08013c23          	sd	zero,152(sp)
   10950:	00013c23          	sd	zero,24(sp)
   10954:	fbfc871b          	addiw	a4,s9,-65
   10958:	0007061b          	sext.w	a2,a4
   1095c:	02500693          	li	a3,37
   10960:	00c6f463          	bgeu	a3,a2,10968 <_vfprintf_r+0x524>
   10964:	5e80106f          	j	11f4c <_vfprintf_r+0x1b08>
   10968:	02071693          	slli	a3,a4,0x20
   1096c:	01e6d713          	srli	a4,a3,0x1e
   10970:	000226b7          	lui	a3,0x22
   10974:	eb068693          	addi	a3,a3,-336 # 21eb0 <__clzdi2+0x220>
   10978:	00d70733          	add	a4,a4,a3
   1097c:	00072703          	lw	a4,0(a4)
   10980:	00070067          	jr	a4
   10984:	00013583          	ld	a1,0(sp)
   10988:	10010613          	addi	a2,sp,256
   1098c:	00098513          	mv	a0,s3
   10990:	08613823          	sd	t1,144(sp)
   10994:	3410a0ef          	jal	ra,1b4d4 <__sprint_r>
   10998:	02051ee3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   1099c:	11013d83          	ld	s11,272(sp)
   109a0:	09013303          	ld	t1,144(sp)
   109a4:	18010413          	addi	s0,sp,384
   109a8:	d39ff06f          	j	106e0 <_vfprintf_r+0x29c>
   109ac:	03813783          	ld	a5,56(sp)
   109b0:	00100693          	li	a3,1
   109b4:	01040c93          	addi	s9,s0,16
   109b8:	3af6dae3          	bge	a3,a5,1156c <_vfprintf_r+0x1128>
   109bc:	10812603          	lw	a2,264(sp)
   109c0:	00100693          	li	a3,1
   109c4:	001d8713          	addi	a4,s11,1
   109c8:	0016061b          	addiw	a2,a2,1
   109cc:	00d43423          	sd	a3,8(s0)
   109d0:	10c12423          	sw	a2,264(sp)
   109d4:	0006069b          	sext.w	a3,a2
   109d8:	01643023          	sd	s6,0(s0)
   109dc:	10e13823          	sd	a4,272(sp)
   109e0:	00700613          	li	a2,7
   109e4:	76d64ae3          	blt	a2,a3,11958 <_vfprintf_r+0x1514>
   109e8:	05813783          	ld	a5,88(sp)
   109ec:	0016841b          	addiw	s0,a3,1
   109f0:	10812423          	sw	s0,264(sp)
   109f4:	00e78d33          	add	s10,a5,a4
   109f8:	06013703          	ld	a4,96(sp)
   109fc:	00fcb423          	sd	a5,8(s9)
   10a00:	11a13823          	sd	s10,272(sp)
   10a04:	00ecb023          	sd	a4,0(s9)
   10a08:	00700713          	li	a4,7
   10a0c:	010c8c93          	addi	s9,s9,16
   10a10:	768746e3          	blt	a4,s0,1197c <_vfprintf_r+0x1538>
   10a14:	0f013503          	ld	a0,240(sp)
   10a18:	0f813583          	ld	a1,248(sp)
   10a1c:	00000613          	li	a2,0
   10a20:	00000693          	li	a3,0
   10a24:	2ed0f0ef          	jal	ra,20510 <__eqtf2>
   10a28:	03813783          	ld	a5,56(sp)
   10a2c:	fff78a9b          	addiw	s5,a5,-1
   10a30:	380508e3          	beqz	a0,115c0 <_vfprintf_r+0x117c>
   10a34:	001b0793          	addi	a5,s6,1
   10a38:	0014041b          	addiw	s0,s0,1
   10a3c:	015d0d33          	add	s10,s10,s5
   10a40:	00fcb023          	sd	a5,0(s9)
   10a44:	015cb423          	sd	s5,8(s9)
   10a48:	11a13823          	sd	s10,272(sp)
   10a4c:	10812423          	sw	s0,264(sp)
   10a50:	00700793          	li	a5,7
   10a54:	3487c4e3          	blt	a5,s0,1159c <_vfprintf_r+0x1158>
   10a58:	010c8c93          	addi	s9,s9,16
   10a5c:	07013683          	ld	a3,112(sp)
   10a60:	0014041b          	addiw	s0,s0,1
   10a64:	0e010793          	addi	a5,sp,224
   10a68:	01a68733          	add	a4,a3,s10
   10a6c:	00fcb023          	sd	a5,0(s9)
   10a70:	00dcb423          	sd	a3,8(s9)
   10a74:	10812423          	sw	s0,264(sp)
   10a78:	0004069b          	sext.w	a3,s0
   10a7c:	10e13823          	sd	a4,272(sp)
   10a80:	00700793          	li	a5,7
   10a84:	010c8413          	addi	s0,s9,16
   10a88:	ccd7d8e3          	bge	a5,a3,10758 <_vfprintf_r+0x314>
   10a8c:	00013583          	ld	a1,0(sp)
   10a90:	10010613          	addi	a2,sp,256
   10a94:	00098513          	mv	a0,s3
   10a98:	23d0a0ef          	jal	ra,1b4d4 <__sprint_r>
   10a9c:	72051c63          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   10aa0:	11013703          	ld	a4,272(sp)
   10aa4:	18010413          	addi	s0,sp,384
   10aa8:	cb1ff06f          	j	10758 <_vfprintf_r+0x314>
   10aac:	05013503          	ld	a0,80(sp)
   10ab0:	189020ef          	jal	ra,13438 <__sinit>
   10ab4:	a09ff06f          	j	104bc <_vfprintf_r+0x78>
   10ab8:	02013703          	ld	a4,32(sp)
   10abc:	0c0107a3          	sb	zero,207(sp)
   10ac0:	00100c13          	li	s8,1
   10ac4:	00072783          	lw	a5,0(a4)
   10ac8:	00870713          	addi	a4,a4,8
   10acc:	02e13023          	sd	a4,32(sp)
   10ad0:	10f10c23          	sb	a5,280(sp)
   10ad4:	00100d13          	li	s10,1
   10ad8:	11810b13          	addi	s6,sp,280
   10adc:	b95ff06f          	j	10670 <_vfprintf_r+0x22c>
   10ae0:	02013783          	ld	a5,32(sp)
   10ae4:	0c0107a3          	sb	zero,207(sp)
   10ae8:	000a8313          	mv	t1,s5
   10aec:	0007bb03          	ld	s6,0(a5)
   10af0:	00878a93          	addi	s5,a5,8
   10af4:	5a0b0ae3          	beqz	s6,118a8 <_vfprintf_r+0x1464>
   10af8:	fff00713          	li	a4,-1
   10afc:	00e31463          	bne	t1,a4,10b04 <_vfprintf_r+0x6c0>
   10b00:	1300106f          	j	11c30 <_vfprintf_r+0x17ec>
   10b04:	00030613          	mv	a2,t1
   10b08:	00000593          	li	a1,0
   10b0c:	000b0513          	mv	a0,s6
   10b10:	02613023          	sd	t1,32(sp)
   10b14:	009060ef          	jal	ra,1731c <memchr>
   10b18:	00a13c23          	sd	a0,24(sp)
   10b1c:	02013303          	ld	t1,32(sp)
   10b20:	00051463          	bnez	a0,10b28 <_vfprintf_r+0x6e4>
   10b24:	3310106f          	j	12654 <_vfprintf_r+0x2210>
   10b28:	01813783          	ld	a5,24(sp)
   10b2c:	41678d3b          	subw	s10,a5,s6
   10b30:	0cf14703          	lbu	a4,207(sp)
   10b34:	fffd4813          	not	a6,s10
   10b38:	43f85813          	srai	a6,a6,0x3f
   10b3c:	03513023          	sd	s5,32(sp)
   10b40:	00013c23          	sd	zero,24(sp)
   10b44:	04013423          	sd	zero,72(sp)
   10b48:	04013023          	sd	zero,64(sp)
   10b4c:	02013823          	sd	zero,48(sp)
   10b50:	01a87c33          	and	s8,a6,s10
   10b54:	00000313          	li	t1,0
   10b58:	b20706e3          	beqz	a4,10684 <_vfprintf_r+0x240>
   10b5c:	001c0c1b          	addiw	s8,s8,1
   10b60:	b25ff06f          	j	10684 <_vfprintf_r+0x240>
   10b64:	02013783          	ld	a5,32(sp)
   10b68:	0007aa03          	lw	s4,0(a5)
   10b6c:	00878793          	addi	a5,a5,8
   10b70:	3a0a52e3          	bgez	s4,11714 <_vfprintf_r+0x12d0>
   10b74:	41400a3b          	negw	s4,s4
   10b78:	02f13023          	sd	a5,32(sp)
   10b7c:	00496913          	ori	s2,s2,4
   10b80:	0004ce03          	lbu	t3,0(s1)
   10b84:	0009091b          	sext.w	s2,s2
   10b88:	a69ff06f          	j	105f0 <_vfprintf_r+0x1ac>
   10b8c:	02b00793          	li	a5,43
   10b90:	0004ce03          	lbu	t3,0(s1)
   10b94:	0cf107a3          	sb	a5,207(sp)
   10b98:	a59ff06f          	j	105f0 <_vfprintf_r+0x1ac>
   10b9c:	08096913          	ori	s2,s2,128
   10ba0:	0004ce03          	lbu	t3,0(s1)
   10ba4:	0009091b          	sext.w	s2,s2
   10ba8:	a49ff06f          	j	105f0 <_vfprintf_r+0x1ac>
   10bac:	0004cc83          	lbu	s9,0(s1)
   10bb0:	02a00693          	li	a3,42
   10bb4:	00148793          	addi	a5,s1,1
   10bb8:	00dc9463          	bne	s9,a3,10bc0 <_vfprintf_r+0x77c>
   10bbc:	6610106f          	j	12a1c <_vfprintf_r+0x25d8>
   10bc0:	fd0c871b          	addiw	a4,s9,-48
   10bc4:	00900613          	li	a2,9
   10bc8:	00078493          	mv	s1,a5
   10bcc:	00000a93          	li	s5,0
   10bd0:	00900693          	li	a3,9
   10bd4:	a2e662e3          	bltu	a2,a4,105f8 <_vfprintf_r+0x1b4>
   10bd8:	0004cc83          	lbu	s9,0(s1)
   10bdc:	002a979b          	slliw	a5,s5,0x2
   10be0:	0157833b          	addw	t1,a5,s5
   10be4:	0013131b          	slliw	t1,t1,0x1
   10be8:	00e30abb          	addw	s5,t1,a4
   10bec:	fd0c871b          	addiw	a4,s9,-48
   10bf0:	00148493          	addi	s1,s1,1
   10bf4:	fee6f2e3          	bgeu	a3,a4,10bd8 <_vfprintf_r+0x794>
   10bf8:	a01ff06f          	j	105f8 <_vfprintf_r+0x1b4>
   10bfc:	00098513          	mv	a0,s3
   10c00:	359050ef          	jal	ra,16758 <_localeconv_r>
   10c04:	00853783          	ld	a5,8(a0)
   10c08:	00078513          	mv	a0,a5
   10c0c:	08f13423          	sd	a5,136(sp)
   10c10:	090080ef          	jal	ra,18ca0 <strlen>
   10c14:	00050793          	mv	a5,a0
   10c18:	00098513          	mv	a0,s3
   10c1c:	00078c13          	mv	s8,a5
   10c20:	08f13023          	sd	a5,128(sp)
   10c24:	335050ef          	jal	ra,16758 <_localeconv_r>
   10c28:	01053703          	ld	a4,16(a0)
   10c2c:	0004ce03          	lbu	t3,0(s1)
   10c30:	06e13c23          	sd	a4,120(sp)
   10c34:	9a0c0ee3          	beqz	s8,105f0 <_vfprintf_r+0x1ac>
   10c38:	9a070ce3          	beqz	a4,105f0 <_vfprintf_r+0x1ac>
   10c3c:	00074783          	lbu	a5,0(a4)
   10c40:	9a0788e3          	beqz	a5,105f0 <_vfprintf_r+0x1ac>
   10c44:	40096913          	ori	s2,s2,1024
   10c48:	0009091b          	sext.w	s2,s2
   10c4c:	9a5ff06f          	j	105f0 <_vfprintf_r+0x1ac>
   10c50:	00196913          	ori	s2,s2,1
   10c54:	0004ce03          	lbu	t3,0(s1)
   10c58:	0009091b          	sext.w	s2,s2
   10c5c:	995ff06f          	j	105f0 <_vfprintf_r+0x1ac>
   10c60:	0cf14783          	lbu	a5,207(sp)
   10c64:	0004ce03          	lbu	t3,0(s1)
   10c68:	980794e3          	bnez	a5,105f0 <_vfprintf_r+0x1ac>
   10c6c:	02000793          	li	a5,32
   10c70:	0cf107a3          	sb	a5,207(sp)
   10c74:	97dff06f          	j	105f0 <_vfprintf_r+0x1ac>
   10c78:	01096d93          	ori	s11,s2,16
   10c7c:	000a8313          	mv	t1,s5
   10c80:	000d8d9b          	sext.w	s11,s11
   10c84:	02013683          	ld	a3,32(sp)
   10c88:	020df793          	andi	a5,s11,32
   10c8c:	00868713          	addi	a4,a3,8
   10c90:	220788e3          	beqz	a5,116c0 <_vfprintf_r+0x127c>
   10c94:	0006bd03          	ld	s10,0(a3)
   10c98:	00100793          	li	a5,1
   10c9c:	02e13023          	sd	a4,32(sp)
   10ca0:	00000713          	li	a4,0
   10ca4:	0ce107a3          	sb	a4,207(sp)
   10ca8:	fff00713          	li	a4,-1
   10cac:	2ae30463          	beq	t1,a4,10f54 <_vfprintf_r+0xb10>
   10cb0:	f7fdf913          	andi	s2,s11,-129
   10cb4:	0009091b          	sext.w	s2,s2
   10cb8:	280d1c63          	bnez	s10,10f50 <_vfprintf_r+0xb0c>
   10cbc:	2e031a63          	bnez	t1,10fb0 <_vfprintf_r+0xb6c>
   10cc0:	220796e3          	bnez	a5,116ec <_vfprintf_r+0x12a8>
   10cc4:	001dfd13          	andi	s10,s11,1
   10cc8:	17c10b13          	addi	s6,sp,380
   10ccc:	240d1ae3          	bnez	s10,11720 <_vfprintf_r+0x12dc>
   10cd0:	0cf14703          	lbu	a4,207(sp)
   10cd4:	000d0813          	mv	a6,s10
   10cd8:	006d5463          	bge	s10,t1,10ce0 <_vfprintf_r+0x89c>
   10cdc:	00030813          	mv	a6,t1
   10ce0:	00013c23          	sd	zero,24(sp)
   10ce4:	04013423          	sd	zero,72(sp)
   10ce8:	04013023          	sd	zero,64(sp)
   10cec:	02013823          	sd	zero,48(sp)
   10cf0:	00080c1b          	sext.w	s8,a6
   10cf4:	e60714e3          	bnez	a4,10b5c <_vfprintf_r+0x718>
   10cf8:	98dff06f          	j	10684 <_vfprintf_r+0x240>
   10cfc:	00896913          	ori	s2,s2,8
   10d00:	0004ce03          	lbu	t3,0(s1)
   10d04:	0009091b          	sext.w	s2,s2
   10d08:	8e9ff06f          	j	105f0 <_vfprintf_r+0x1ac>
   10d0c:	01096913          	ori	s2,s2,16
   10d10:	000a8313          	mv	t1,s5
   10d14:	0009091b          	sext.w	s2,s2
   10d18:	02013683          	ld	a3,32(sp)
   10d1c:	02097793          	andi	a5,s2,32
   10d20:	00868713          	addi	a4,a3,8
   10d24:	12078ce3          	beqz	a5,1165c <_vfprintf_r+0x1218>
   10d28:	0006b783          	ld	a5,0(a3)
   10d2c:	00078d13          	mv	s10,a5
   10d30:	1407cae3          	bltz	a5,11684 <_vfprintf_r+0x1240>
   10d34:	fff00793          	li	a5,-1
   10d38:	5af30463          	beq	t1,a5,112e0 <_vfprintf_r+0xe9c>
   10d3c:	f7f97d93          	andi	s11,s2,-129
   10d40:	02e13023          	sd	a4,32(sp)
   10d44:	000d8d9b          	sext.w	s11,s11
   10d48:	5a0d1063          	bnez	s10,112e8 <_vfprintf_r+0xea4>
   10d4c:	5a031263          	bnez	t1,112f0 <_vfprintf_r+0xeac>
   10d50:	000d8913          	mv	s2,s11
   10d54:	17c10b13          	addi	s6,sp,380
   10d58:	f79ff06f          	j	10cd0 <_vfprintf_r+0x88c>
   10d5c:	01096913          	ori	s2,s2,16
   10d60:	000a8313          	mv	t1,s5
   10d64:	0009091b          	sext.w	s2,s2
   10d68:	02013683          	ld	a3,32(sp)
   10d6c:	02097793          	andi	a5,s2,32
   10d70:	00868713          	addi	a4,a3,8
   10d74:	120784e3          	beqz	a5,1169c <_vfprintf_r+0x1258>
   10d78:	0006bd03          	ld	s10,0(a3)
   10d7c:	bff97d93          	andi	s11,s2,-1025
   10d80:	000d8d9b          	sext.w	s11,s11
   10d84:	02e13023          	sd	a4,32(sp)
   10d88:	00000793          	li	a5,0
   10d8c:	f15ff06f          	j	10ca0 <_vfprintf_r+0x85c>
   10d90:	02096913          	ori	s2,s2,32
   10d94:	0004ce03          	lbu	t3,0(s1)
   10d98:	0009091b          	sext.w	s2,s2
   10d9c:	855ff06f          	j	105f0 <_vfprintf_r+0x1ac>
   10da0:	02013703          	ld	a4,32(sp)
   10da4:	02097793          	andi	a5,s2,32
   10da8:	00073703          	ld	a4,0(a4)
   10dac:	180782e3          	beqz	a5,11730 <_vfprintf_r+0x12ec>
   10db0:	01013783          	ld	a5,16(sp)
   10db4:	00f73023          	sd	a5,0(a4)
   10db8:	02013783          	ld	a5,32(sp)
   10dbc:	00048b13          	mv	s6,s1
   10dc0:	00878793          	addi	a5,a5,8
   10dc4:	02f13023          	sd	a5,32(sp)
   10dc8:	9ddff06f          	j	107a4 <_vfprintf_r+0x360>
   10dcc:	0004ce03          	lbu	t3,0(s1)
   10dd0:	06c00793          	li	a5,108
   10dd4:	28fe02e3          	beq	t3,a5,11858 <_vfprintf_r+0x1414>
   10dd8:	01096913          	ori	s2,s2,16
   10ddc:	0009091b          	sext.w	s2,s2
   10de0:	811ff06f          	j	105f0 <_vfprintf_r+0x1ac>
   10de4:	0004ce03          	lbu	t3,0(s1)
   10de8:	06800793          	li	a5,104
   10dec:	24fe0ce3          	beq	t3,a5,11844 <_vfprintf_r+0x1400>
   10df0:	04096913          	ori	s2,s2,64
   10df4:	0009091b          	sext.w	s2,s2
   10df8:	ff8ff06f          	j	105f0 <_vfprintf_r+0x1ac>
   10dfc:	02013703          	ld	a4,32(sp)
   10e00:	ffff87b7          	lui	a5,0xffff8
   10e04:	8307c793          	xori	a5,a5,-2000
   10e08:	0cf11823          	sh	a5,208(sp)
   10e0c:	00870793          	addi	a5,a4,8
   10e10:	02f13023          	sd	a5,32(sp)
   10e14:	000227b7          	lui	a5,0x22
   10e18:	d2078793          	addi	a5,a5,-736 # 21d20 <__clzdi2+0x90>
   10e1c:	00296d93          	ori	s11,s2,2
   10e20:	06f13423          	sd	a5,104(sp)
   10e24:	00073d03          	ld	s10,0(a4)
   10e28:	000a8313          	mv	t1,s5
   10e2c:	000d8d9b          	sext.w	s11,s11
   10e30:	00200793          	li	a5,2
   10e34:	07800c93          	li	s9,120
   10e38:	e69ff06f          	j	10ca0 <_vfprintf_r+0x85c>
   10e3c:	06500693          	li	a3,101
   10e40:	b796d6e3          	bge	a3,s9,109ac <_vfprintf_r+0x568>
   10e44:	0f013503          	ld	a0,240(sp)
   10e48:	0f813583          	ld	a1,248(sp)
   10e4c:	00000613          	li	a2,0
   10e50:	00000693          	li	a3,0
   10e54:	6bc0f0ef          	jal	ra,20510 <__eqtf2>
   10e58:	58051463          	bnez	a0,113e0 <_vfprintf_r+0xf9c>
   10e5c:	10812783          	lw	a5,264(sp)
   10e60:	000226b7          	lui	a3,0x22
   10e64:	d4068693          	addi	a3,a3,-704 # 21d40 <__clzdi2+0xb0>
   10e68:	0017879b          	addiw	a5,a5,1
   10e6c:	00d43023          	sd	a3,0(s0)
   10e70:	001d8d93          	addi	s11,s11,1
   10e74:	00100693          	li	a3,1
   10e78:	00d43423          	sd	a3,8(s0)
   10e7c:	10f12423          	sw	a5,264(sp)
   10e80:	0007869b          	sext.w	a3,a5
   10e84:	11b13823          	sd	s11,272(sp)
   10e88:	00700793          	li	a5,7
   10e8c:	01040413          	addi	s0,s0,16
   10e90:	48d7cee3          	blt	a5,a3,11b2c <_vfprintf_r+0x16e8>
   10e94:	0d812783          	lw	a5,216(sp)
   10e98:	03813703          	ld	a4,56(sp)
   10e9c:	04e7dee3          	bge	a5,a4,116f8 <_vfprintf_r+0x12b4>
   10ea0:	05813683          	ld	a3,88(sp)
   10ea4:	10812783          	lw	a5,264(sp)
   10ea8:	06013603          	ld	a2,96(sp)
   10eac:	01b68733          	add	a4,a3,s11
   10eb0:	0017879b          	addiw	a5,a5,1
   10eb4:	00d43423          	sd	a3,8(s0)
   10eb8:	00c43023          	sd	a2,0(s0)
   10ebc:	0007869b          	sext.w	a3,a5
   10ec0:	10f12423          	sw	a5,264(sp)
   10ec4:	10e13823          	sd	a4,272(sp)
   10ec8:	00700793          	li	a5,7
   10ecc:	01040413          	addi	s0,s0,16
   10ed0:	1ad7cce3          	blt	a5,a3,11888 <_vfprintf_r+0x1444>
   10ed4:	03813783          	ld	a5,56(sp)
   10ed8:	fff78c9b          	addiw	s9,a5,-1
   10edc:	87905ee3          	blez	s9,10758 <_vfprintf_r+0x314>
   10ee0:	00022f37          	lui	t5,0x22
   10ee4:	01000693          	li	a3,16
   10ee8:	10812783          	lw	a5,264(sp)
   10eec:	f48f0d93          	addi	s11,t5,-184 # 21f48 <zeroes.0>
   10ef0:	4596dee3          	bge	a3,s9,11b4c <_vfprintf_r+0x1708>
   10ef4:	00013b03          	ld	s6,0(sp)
   10ef8:	01000d13          	li	s10,16
   10efc:	00700a93          	li	s5,7
   10f00:	00c0006f          	j	10f0c <_vfprintf_r+0xac8>
   10f04:	ff0c8c9b          	addiw	s9,s9,-16
   10f08:	459d52e3          	bge	s10,s9,11b4c <_vfprintf_r+0x1708>
   10f0c:	0017879b          	addiw	a5,a5,1
   10f10:	01070713          	addi	a4,a4,16
   10f14:	01b43023          	sd	s11,0(s0)
   10f18:	01a43423          	sd	s10,8(s0)
   10f1c:	10e13823          	sd	a4,272(sp)
   10f20:	10f12423          	sw	a5,264(sp)
   10f24:	01040413          	addi	s0,s0,16
   10f28:	fcfadee3          	bge	s5,a5,10f04 <_vfprintf_r+0xac0>
   10f2c:	10010613          	addi	a2,sp,256
   10f30:	000b0593          	mv	a1,s6
   10f34:	00098513          	mv	a0,s3
   10f38:	59c0a0ef          	jal	ra,1b4d4 <__sprint_r>
   10f3c:	28051c63          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   10f40:	11013703          	ld	a4,272(sp)
   10f44:	10812783          	lw	a5,264(sp)
   10f48:	18010413          	addi	s0,sp,384
   10f4c:	fb9ff06f          	j	10f04 <_vfprintf_r+0xac0>
   10f50:	00090d93          	mv	s11,s2
   10f54:	00100713          	li	a4,1
   10f58:	38e78863          	beq	a5,a4,112e8 <_vfprintf_r+0xea4>
   10f5c:	00200713          	li	a4,2
   10f60:	06e78463          	beq	a5,a4,10fc8 <_vfprintf_r+0xb84>
   10f64:	17c10a93          	addi	s5,sp,380
   10f68:	000a8b13          	mv	s6,s5
   10f6c:	007d7713          	andi	a4,s10,7
   10f70:	03070713          	addi	a4,a4,48
   10f74:	feeb0fa3          	sb	a4,-1(s6)
   10f78:	003d5d13          	srli	s10,s10,0x3
   10f7c:	000b0613          	mv	a2,s6
   10f80:	fffb0b13          	addi	s6,s6,-1
   10f84:	fe0d14e3          	bnez	s10,10f6c <_vfprintf_r+0xb28>
   10f88:	001df593          	andi	a1,s11,1
   10f8c:	06058263          	beqz	a1,10ff0 <_vfprintf_r+0xbac>
   10f90:	03000593          	li	a1,48
   10f94:	04b70e63          	beq	a4,a1,10ff0 <_vfprintf_r+0xbac>
   10f98:	ffe60613          	addi	a2,a2,-2
   10f9c:	febb0fa3          	sb	a1,-1(s6)
   10fa0:	40ca8d3b          	subw	s10,s5,a2
   10fa4:	000d8913          	mv	s2,s11
   10fa8:	00060b13          	mv	s6,a2
   10fac:	d25ff06f          	j	10cd0 <_vfprintf_r+0x88c>
   10fb0:	00100713          	li	a4,1
   10fb4:	00e79463          	bne	a5,a4,10fbc <_vfprintf_r+0xb78>
   10fb8:	7040106f          	j	126bc <_vfprintf_r+0x2278>
   10fbc:	00200713          	li	a4,2
   10fc0:	00090d93          	mv	s11,s2
   10fc4:	fae790e3          	bne	a5,a4,10f64 <_vfprintf_r+0xb20>
   10fc8:	06813703          	ld	a4,104(sp)
   10fcc:	17c10a93          	addi	s5,sp,380
   10fd0:	000a8b13          	mv	s6,s5
   10fd4:	00fd7793          	andi	a5,s10,15
   10fd8:	00f707b3          	add	a5,a4,a5
   10fdc:	0007c783          	lbu	a5,0(a5)
   10fe0:	004d5d13          	srli	s10,s10,0x4
   10fe4:	fffb0b13          	addi	s6,s6,-1
   10fe8:	00fb0023          	sb	a5,0(s6)
   10fec:	fe0d14e3          	bnez	s10,10fd4 <_vfprintf_r+0xb90>
   10ff0:	416a8d3b          	subw	s10,s5,s6
   10ff4:	000d8913          	mv	s2,s11
   10ff8:	cd9ff06f          	j	10cd0 <_vfprintf_r+0x88c>
   10ffc:	418a0abb          	subw	s5,s4,s8
   11000:	f3505063          	blez	s5,10720 <_vfprintf_r+0x2dc>
   11004:	00022f37          	lui	t5,0x22
   11008:	01000593          	li	a1,16
   1100c:	000d8713          	mv	a4,s11
   11010:	10812603          	lw	a2,264(sp)
   11014:	f48f0d93          	addi	s11,t5,-184 # 21f48 <zeroes.0>
   11018:	0955de63          	bge	a1,s5,110b4 <_vfprintf_r+0xc70>
   1101c:	08913823          	sd	s1,144(sp)
   11020:	01000f93          	li	t6,16
   11024:	000a8493          	mv	s1,s5
   11028:	00700b93          	li	s7,7
   1102c:	000a0a93          	mv	s5,s4
   11030:	00090a13          	mv	s4,s2
   11034:	000d8913          	mv	s2,s11
   11038:	000b0d93          	mv	s11,s6
   1103c:	00030b13          	mv	s6,t1
   11040:	00c0006f          	j	1104c <_vfprintf_r+0xc08>
   11044:	ff04849b          	addiw	s1,s1,-16
   11048:	049fd863          	bge	t6,s1,11098 <_vfprintf_r+0xc54>
   1104c:	0016061b          	addiw	a2,a2,1
   11050:	01070713          	addi	a4,a4,16
   11054:	01243023          	sd	s2,0(s0)
   11058:	01f43423          	sd	t6,8(s0)
   1105c:	10e13823          	sd	a4,272(sp)
   11060:	10c12423          	sw	a2,264(sp)
   11064:	01040413          	addi	s0,s0,16
   11068:	fccbdee3          	bge	s7,a2,11044 <_vfprintf_r+0xc00>
   1106c:	00013583          	ld	a1,0(sp)
   11070:	10010613          	addi	a2,sp,256
   11074:	00098513          	mv	a0,s3
   11078:	45c0a0ef          	jal	ra,1b4d4 <__sprint_r>
   1107c:	14051c63          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11080:	01000f93          	li	t6,16
   11084:	ff04849b          	addiw	s1,s1,-16
   11088:	11013703          	ld	a4,272(sp)
   1108c:	10812603          	lw	a2,264(sp)
   11090:	18010413          	addi	s0,sp,384
   11094:	fa9fcce3          	blt	t6,s1,1104c <_vfprintf_r+0xc08>
   11098:	000b0313          	mv	t1,s6
   1109c:	000d8b13          	mv	s6,s11
   110a0:	00090d93          	mv	s11,s2
   110a4:	000a0913          	mv	s2,s4
   110a8:	000a8a13          	mv	s4,s5
   110ac:	00048a93          	mv	s5,s1
   110b0:	09013483          	ld	s1,144(sp)
   110b4:	0016059b          	addiw	a1,a2,1
   110b8:	00ea8733          	add	a4,s5,a4
   110bc:	01b43023          	sd	s11,0(s0)
   110c0:	01543423          	sd	s5,8(s0)
   110c4:	10e13823          	sd	a4,272(sp)
   110c8:	10b12423          	sw	a1,264(sp)
   110cc:	00700613          	li	a2,7
   110d0:	6eb64463          	blt	a2,a1,117b8 <_vfprintf_r+0x1374>
   110d4:	41a30bbb          	subw	s7,t1,s10
   110d8:	01040413          	addi	s0,s0,16
   110dc:	00070d93          	mv	s11,a4
   110e0:	e5705463          	blez	s7,10728 <_vfprintf_r+0x2e4>
   110e4:	00022f37          	lui	t5,0x22
   110e8:	01000593          	li	a1,16
   110ec:	000d8713          	mv	a4,s11
   110f0:	10812603          	lw	a2,264(sp)
   110f4:	f48f0d93          	addi	s11,t5,-184 # 21f48 <zeroes.0>
   110f8:	0975de63          	bge	a1,s7,11194 <_vfprintf_r+0xd50>
   110fc:	000b0793          	mv	a5,s6
   11100:	00813d83          	ld	s11,8(sp)
   11104:	000a0b13          	mv	s6,s4
   11108:	01000893          	li	a7,16
   1110c:	00090a13          	mv	s4,s2
   11110:	00700a93          	li	s5,7
   11114:	00048913          	mv	s2,s1
   11118:	000b8493          	mv	s1,s7
   1111c:	00078b93          	mv	s7,a5
   11120:	00c0006f          	j	1112c <_vfprintf_r+0xce8>
   11124:	ff04849b          	addiw	s1,s1,-16
   11128:	0498da63          	bge	a7,s1,1117c <_vfprintf_r+0xd38>
   1112c:	00813683          	ld	a3,8(sp)
   11130:	0016061b          	addiw	a2,a2,1
   11134:	01070713          	addi	a4,a4,16
   11138:	00d43023          	sd	a3,0(s0)
   1113c:	01143423          	sd	a7,8(s0)
   11140:	10e13823          	sd	a4,272(sp)
   11144:	10c12423          	sw	a2,264(sp)
   11148:	01040413          	addi	s0,s0,16
   1114c:	fccadce3          	bge	s5,a2,11124 <_vfprintf_r+0xce0>
   11150:	00013583          	ld	a1,0(sp)
   11154:	10010613          	addi	a2,sp,256
   11158:	00098513          	mv	a0,s3
   1115c:	3780a0ef          	jal	ra,1b4d4 <__sprint_r>
   11160:	06051a63          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11164:	01000893          	li	a7,16
   11168:	ff04849b          	addiw	s1,s1,-16
   1116c:	11013703          	ld	a4,272(sp)
   11170:	10812603          	lw	a2,264(sp)
   11174:	18010413          	addi	s0,sp,384
   11178:	fa98cae3          	blt	a7,s1,1112c <_vfprintf_r+0xce8>
   1117c:	000b8793          	mv	a5,s7
   11180:	00048b93          	mv	s7,s1
   11184:	00090493          	mv	s1,s2
   11188:	000a0913          	mv	s2,s4
   1118c:	000b0a13          	mv	s4,s6
   11190:	00078b13          	mv	s6,a5
   11194:	0016059b          	addiw	a1,a2,1
   11198:	00eb8733          	add	a4,s7,a4
   1119c:	01b43023          	sd	s11,0(s0)
   111a0:	01743423          	sd	s7,8(s0)
   111a4:	10e13823          	sd	a4,272(sp)
   111a8:	10b12423          	sw	a1,264(sp)
   111ac:	00700613          	li	a2,7
   111b0:	48b64663          	blt	a2,a1,1163c <_vfprintf_r+0x11f8>
   111b4:	01040413          	addi	s0,s0,16
   111b8:	00070d93          	mv	s11,a4
   111bc:	d6cff06f          	j	10728 <_vfprintf_r+0x2e4>
   111c0:	00013583          	ld	a1,0(sp)
   111c4:	10010613          	addi	a2,sp,256
   111c8:	00098513          	mv	a0,s3
   111cc:	3080a0ef          	jal	ra,1b4d4 <__sprint_r>
   111d0:	da050a63          	beqz	a0,10784 <_vfprintf_r+0x340>
   111d4:	01813583          	ld	a1,24(sp)
   111d8:	de058063          	beqz	a1,107b8 <_vfprintf_r+0x374>
   111dc:	05013503          	ld	a0,80(sp)
   111e0:	430020ef          	jal	ra,13610 <_free_r>
   111e4:	dd4ff06f          	j	107b8 <_vfprintf_r+0x374>
   111e8:	000228b7          	lui	a7,0x22
   111ec:	01000513          	li	a0,16
   111f0:	11013583          	ld	a1,272(sp)
   111f4:	10812603          	lw	a2,264(sp)
   111f8:	f5888d93          	addi	s11,a7,-168 # 21f58 <blanks.1>
   111fc:	08e55c63          	bge	a0,a4,11294 <_vfprintf_r+0xe50>
   11200:	08913823          	sd	s1,144(sp)
   11204:	00040793          	mv	a5,s0
   11208:	000d8493          	mv	s1,s11
   1120c:	01000f13          	li	t5,16
   11210:	000b0d93          	mv	s11,s6
   11214:	00700393          	li	t2,7
   11218:	00070413          	mv	s0,a4
   1121c:	00030b13          	mv	s6,t1
   11220:	00c0006f          	j	1122c <_vfprintf_r+0xde8>
   11224:	ff04041b          	addiw	s0,s0,-16
   11228:	048f5a63          	bge	t5,s0,1127c <_vfprintf_r+0xe38>
   1122c:	0016061b          	addiw	a2,a2,1
   11230:	01058593          	addi	a1,a1,16
   11234:	0097b023          	sd	s1,0(a5)
   11238:	01e7b423          	sd	t5,8(a5)
   1123c:	10b13823          	sd	a1,272(sp)
   11240:	10c12423          	sw	a2,264(sp)
   11244:	01078793          	addi	a5,a5,16
   11248:	fcc3dee3          	bge	t2,a2,11224 <_vfprintf_r+0xde0>
   1124c:	00013583          	ld	a1,0(sp)
   11250:	10010613          	addi	a2,sp,256
   11254:	00098513          	mv	a0,s3
   11258:	27c0a0ef          	jal	ra,1b4d4 <__sprint_r>
   1125c:	f6051ce3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11260:	01000f13          	li	t5,16
   11264:	ff04041b          	addiw	s0,s0,-16
   11268:	11013583          	ld	a1,272(sp)
   1126c:	10812603          	lw	a2,264(sp)
   11270:	18010793          	addi	a5,sp,384
   11274:	00700393          	li	t2,7
   11278:	fa8f4ae3          	blt	t5,s0,1122c <_vfprintf_r+0xde8>
   1127c:	000b0313          	mv	t1,s6
   11280:	000d8b13          	mv	s6,s11
   11284:	00048d93          	mv	s11,s1
   11288:	09013483          	ld	s1,144(sp)
   1128c:	00040713          	mv	a4,s0
   11290:	00078413          	mv	s0,a5
   11294:	00b705b3          	add	a1,a4,a1
   11298:	0016061b          	addiw	a2,a2,1
   1129c:	00e43423          	sd	a4,8(s0)
   112a0:	01b43023          	sd	s11,0(s0)
   112a4:	10b13823          	sd	a1,272(sp)
   112a8:	10c12423          	sw	a2,264(sp)
   112ac:	0006059b          	sext.w	a1,a2
   112b0:	00700713          	li	a4,7
   112b4:	01040413          	addi	s0,s0,16
   112b8:	beb75463          	bge	a4,a1,106a0 <_vfprintf_r+0x25c>
   112bc:	00013583          	ld	a1,0(sp)
   112c0:	10010613          	addi	a2,sp,256
   112c4:	00098513          	mv	a0,s3
   112c8:	08613823          	sd	t1,144(sp)
   112cc:	2080a0ef          	jal	ra,1b4d4 <__sprint_r>
   112d0:	f00512e3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   112d4:	09013303          	ld	t1,144(sp)
   112d8:	18010413          	addi	s0,sp,384
   112dc:	bc4ff06f          	j	106a0 <_vfprintf_r+0x25c>
   112e0:	00090d93          	mv	s11,s2
   112e4:	02e13023          	sd	a4,32(sp)
   112e8:	00900793          	li	a5,9
   112ec:	6ba7ea63          	bltu	a5,s10,119a0 <_vfprintf_r+0x155c>
   112f0:	030d0d1b          	addiw	s10,s10,48
   112f4:	17a10da3          	sb	s10,379(sp)
   112f8:	000d8913          	mv	s2,s11
   112fc:	00100d13          	li	s10,1
   11300:	17b10b13          	addi	s6,sp,379
   11304:	9cdff06f          	j	10cd0 <_vfprintf_r+0x88c>
   11308:	00013583          	ld	a1,0(sp)
   1130c:	10010613          	addi	a2,sp,256
   11310:	00098513          	mv	a0,s3
   11314:	08613823          	sd	t1,144(sp)
   11318:	1bc0a0ef          	jal	ra,1b4d4 <__sprint_r>
   1131c:	ea051ce3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11320:	11013d83          	ld	s11,272(sp)
   11324:	09013303          	ld	t1,144(sp)
   11328:	18010413          	addi	s0,sp,384
   1132c:	becff06f          	j	10718 <_vfprintf_r+0x2d4>
   11330:	000228b7          	lui	a7,0x22
   11334:	01000693          	li	a3,16
   11338:	10812783          	lw	a5,264(sp)
   1133c:	f5888d93          	addi	s11,a7,-168 # 21f58 <blanks.1>
   11340:	0726d263          	bge	a3,s2,113a4 <_vfprintf_r+0xf60>
   11344:	00013a83          	ld	s5,0(sp)
   11348:	01000c93          	li	s9,16
   1134c:	00700d13          	li	s10,7
   11350:	00c0006f          	j	1135c <_vfprintf_r+0xf18>
   11354:	ff09091b          	addiw	s2,s2,-16
   11358:	052cd663          	bge	s9,s2,113a4 <_vfprintf_r+0xf60>
   1135c:	0017879b          	addiw	a5,a5,1
   11360:	01070713          	addi	a4,a4,16
   11364:	01b43023          	sd	s11,0(s0)
   11368:	01943423          	sd	s9,8(s0)
   1136c:	10e13823          	sd	a4,272(sp)
   11370:	10f12423          	sw	a5,264(sp)
   11374:	01040413          	addi	s0,s0,16
   11378:	fcfd5ee3          	bge	s10,a5,11354 <_vfprintf_r+0xf10>
   1137c:	10010613          	addi	a2,sp,256
   11380:	000a8593          	mv	a1,s5
   11384:	00098513          	mv	a0,s3
   11388:	14c0a0ef          	jal	ra,1b4d4 <__sprint_r>
   1138c:	e40514e3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11390:	ff09091b          	addiw	s2,s2,-16
   11394:	11013703          	ld	a4,272(sp)
   11398:	10812783          	lw	a5,264(sp)
   1139c:	18010413          	addi	s0,sp,384
   113a0:	fb2ccee3          	blt	s9,s2,1135c <_vfprintf_r+0xf18>
   113a4:	0017869b          	addiw	a3,a5,1
   113a8:	01270733          	add	a4,a4,s2
   113ac:	01b43023          	sd	s11,0(s0)
   113b0:	01243423          	sd	s2,8(s0)
   113b4:	10e13823          	sd	a4,272(sp)
   113b8:	10d12423          	sw	a3,264(sp)
   113bc:	00700793          	li	a5,7
   113c0:	bad7d463          	bge	a5,a3,10768 <_vfprintf_r+0x324>
   113c4:	00013583          	ld	a1,0(sp)
   113c8:	10010613          	addi	a2,sp,256
   113cc:	00098513          	mv	a0,s3
   113d0:	1040a0ef          	jal	ra,1b4d4 <__sprint_r>
   113d4:	e00510e3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   113d8:	11013703          	ld	a4,272(sp)
   113dc:	b8cff06f          	j	10768 <_vfprintf_r+0x324>
   113e0:	0d812603          	lw	a2,216(sp)
   113e4:	6ac05463          	blez	a2,11a8c <_vfprintf_r+0x1648>
   113e8:	03813783          	ld	a5,56(sp)
   113ec:	03013703          	ld	a4,48(sp)
   113f0:	00fb0ab3          	add	s5,s6,a5
   113f4:	00070693          	mv	a3,a4
   113f8:	3ae7c863          	blt	a5,a4,117a8 <_vfprintf_r+0x1364>
   113fc:	00068c9b          	sext.w	s9,a3
   11400:	03905663          	blez	s9,1142c <_vfprintf_r+0xfe8>
   11404:	10812603          	lw	a2,264(sp)
   11408:	019d8db3          	add	s11,s11,s9
   1140c:	01643023          	sd	s6,0(s0)
   11410:	0016059b          	addiw	a1,a2,1
   11414:	01943423          	sd	s9,8(s0)
   11418:	11b13823          	sd	s11,272(sp)
   1141c:	10b12423          	sw	a1,264(sp)
   11420:	00700613          	li	a2,7
   11424:	01040413          	addi	s0,s0,16
   11428:	50b646e3          	blt	a2,a1,12134 <_vfprintf_r+0x1cf0>
   1142c:	fffcc613          	not	a2,s9
   11430:	03013783          	ld	a5,48(sp)
   11434:	43f65613          	srai	a2,a2,0x3f
   11438:	00ccf6b3          	and	a3,s9,a2
   1143c:	40d78cbb          	subw	s9,a5,a3
   11440:	49904663          	bgtz	s9,118cc <_vfprintf_r+0x1488>
   11444:	03013783          	ld	a5,48(sp)
   11448:	40097693          	andi	a3,s2,1024
   1144c:	00fb0b33          	add	s6,s6,a5
   11450:	0a069ae3          	bnez	a3,11d04 <_vfprintf_r+0x18c0>
   11454:	0d812683          	lw	a3,216(sp)
   11458:	03813783          	ld	a5,56(sp)
   1145c:	00f6c663          	blt	a3,a5,11468 <_vfprintf_r+0x1024>
   11460:	00197613          	andi	a2,s2,1
   11464:	4e060ce3          	beqz	a2,1215c <_vfprintf_r+0x1d18>
   11468:	10812603          	lw	a2,264(sp)
   1146c:	05813783          	ld	a5,88(sp)
   11470:	06013583          	ld	a1,96(sp)
   11474:	01040413          	addi	s0,s0,16
   11478:	01b78733          	add	a4,a5,s11
   1147c:	feb43823          	sd	a1,-16(s0)
   11480:	0016059b          	addiw	a1,a2,1
   11484:	fef43c23          	sd	a5,-8(s0)
   11488:	10e13823          	sd	a4,272(sp)
   1148c:	10b12423          	sw	a1,264(sp)
   11490:	00700613          	li	a2,7
   11494:	00b65463          	bge	a2,a1,1149c <_vfprintf_r+0x1058>
   11498:	1380106f          	j	125d0 <_vfprintf_r+0x218c>
   1149c:	03813783          	ld	a5,56(sp)
   114a0:	416a8cb3          	sub	s9,s5,s6
   114a4:	000c859b          	sext.w	a1,s9
   114a8:	40d7863b          	subw	a2,a5,a3
   114ac:	00b65463          	bge	a2,a1,114b4 <_vfprintf_r+0x1070>
   114b0:	00060c93          	mv	s9,a2
   114b4:	000c8c9b          	sext.w	s9,s9
   114b8:	03905863          	blez	s9,114e8 <_vfprintf_r+0x10a4>
   114bc:	10812683          	lw	a3,264(sp)
   114c0:	01970733          	add	a4,a4,s9
   114c4:	01643023          	sd	s6,0(s0)
   114c8:	0016869b          	addiw	a3,a3,1
   114cc:	01943423          	sd	s9,8(s0)
   114d0:	10e13823          	sd	a4,272(sp)
   114d4:	10d12423          	sw	a3,264(sp)
   114d8:	00700793          	li	a5,7
   114dc:	01040413          	addi	s0,s0,16
   114e0:	00d7d463          	bge	a5,a3,114e8 <_vfprintf_r+0x10a4>
   114e4:	19c0106f          	j	12680 <_vfprintf_r+0x223c>
   114e8:	fffcc793          	not	a5,s9
   114ec:	43f7d793          	srai	a5,a5,0x3f
   114f0:	00fcfcb3          	and	s9,s9,a5
   114f4:	41960cbb          	subw	s9,a2,s9
   114f8:	a7905063          	blez	s9,10758 <_vfprintf_r+0x314>
   114fc:	00022f37          	lui	t5,0x22
   11500:	01000693          	li	a3,16
   11504:	10812783          	lw	a5,264(sp)
   11508:	f48f0d93          	addi	s11,t5,-184 # 21f48 <zeroes.0>
   1150c:	6596d063          	bge	a3,s9,11b4c <_vfprintf_r+0x1708>
   11510:	00013b03          	ld	s6,0(sp)
   11514:	01000d13          	li	s10,16
   11518:	00700a93          	li	s5,7
   1151c:	00c0006f          	j	11528 <_vfprintf_r+0x10e4>
   11520:	ff0c8c9b          	addiw	s9,s9,-16
   11524:	639d5463          	bge	s10,s9,11b4c <_vfprintf_r+0x1708>
   11528:	0017879b          	addiw	a5,a5,1
   1152c:	01070713          	addi	a4,a4,16
   11530:	01b43023          	sd	s11,0(s0)
   11534:	01a43423          	sd	s10,8(s0)
   11538:	10e13823          	sd	a4,272(sp)
   1153c:	10f12423          	sw	a5,264(sp)
   11540:	01040413          	addi	s0,s0,16
   11544:	fcfadee3          	bge	s5,a5,11520 <_vfprintf_r+0x10dc>
   11548:	10010613          	addi	a2,sp,256
   1154c:	000b0593          	mv	a1,s6
   11550:	00098513          	mv	a0,s3
   11554:	781090ef          	jal	ra,1b4d4 <__sprint_r>
   11558:	c6051ee3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   1155c:	11013703          	ld	a4,272(sp)
   11560:	10812783          	lw	a5,264(sp)
   11564:	18010413          	addi	s0,sp,384
   11568:	fb9ff06f          	j	11520 <_vfprintf_r+0x10dc>
   1156c:	00197613          	andi	a2,s2,1
   11570:	c4061663          	bnez	a2,109bc <_vfprintf_r+0x578>
   11574:	10812603          	lw	a2,264(sp)
   11578:	001d8d13          	addi	s10,s11,1
   1157c:	01643023          	sd	s6,0(s0)
   11580:	0016079b          	addiw	a5,a2,1
   11584:	00d43423          	sd	a3,8(s0)
   11588:	10f12423          	sw	a5,264(sp)
   1158c:	0007841b          	sext.w	s0,a5
   11590:	11a13823          	sd	s10,272(sp)
   11594:	00700793          	li	a5,7
   11598:	cc87d263          	bge	a5,s0,10a5c <_vfprintf_r+0x618>
   1159c:	00013583          	ld	a1,0(sp)
   115a0:	10010613          	addi	a2,sp,256
   115a4:	00098513          	mv	a0,s3
   115a8:	72d090ef          	jal	ra,1b4d4 <__sprint_r>
   115ac:	c20514e3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   115b0:	11013d03          	ld	s10,272(sp)
   115b4:	10812403          	lw	s0,264(sp)
   115b8:	18010c93          	addi	s9,sp,384
   115bc:	ca0ff06f          	j	10a5c <_vfprintf_r+0x618>
   115c0:	03813703          	ld	a4,56(sp)
   115c4:	00100793          	li	a5,1
   115c8:	c8e7da63          	bge	a5,a4,10a5c <_vfprintf_r+0x618>
   115cc:	00022f37          	lui	t5,0x22
   115d0:	01100793          	li	a5,17
   115d4:	f48f0d93          	addi	s11,t5,-184 # 21f48 <zeroes.0>
   115d8:	66e7d463          	bge	a5,a4,11c40 <_vfprintf_r+0x17fc>
   115dc:	00013b83          	ld	s7,0(sp)
   115e0:	01000713          	li	a4,16
   115e4:	00700b13          	li	s6,7
   115e8:	00c0006f          	j	115f4 <_vfprintf_r+0x11b0>
   115ec:	ff0a8a9b          	addiw	s5,s5,-16
   115f0:	65575863          	bge	a4,s5,11c40 <_vfprintf_r+0x17fc>
   115f4:	0014041b          	addiw	s0,s0,1
   115f8:	010d0d13          	addi	s10,s10,16
   115fc:	01bcb023          	sd	s11,0(s9)
   11600:	00ecb423          	sd	a4,8(s9)
   11604:	11a13823          	sd	s10,272(sp)
   11608:	10812423          	sw	s0,264(sp)
   1160c:	010c8c93          	addi	s9,s9,16
   11610:	fc8b5ee3          	bge	s6,s0,115ec <_vfprintf_r+0x11a8>
   11614:	10010613          	addi	a2,sp,256
   11618:	000b8593          	mv	a1,s7
   1161c:	00098513          	mv	a0,s3
   11620:	6b5090ef          	jal	ra,1b4d4 <__sprint_r>
   11624:	ba0518e3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11628:	11013d03          	ld	s10,272(sp)
   1162c:	10812403          	lw	s0,264(sp)
   11630:	18010c93          	addi	s9,sp,384
   11634:	01000713          	li	a4,16
   11638:	fb5ff06f          	j	115ec <_vfprintf_r+0x11a8>
   1163c:	00013583          	ld	a1,0(sp)
   11640:	10010613          	addi	a2,sp,256
   11644:	00098513          	mv	a0,s3
   11648:	68d090ef          	jal	ra,1b4d4 <__sprint_r>
   1164c:	b80514e3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11650:	11013d83          	ld	s11,272(sp)
   11654:	18010413          	addi	s0,sp,384
   11658:	8d0ff06f          	j	10728 <_vfprintf_r+0x2e4>
   1165c:	01097793          	andi	a5,s2,16
   11660:	12079c63          	bnez	a5,11798 <_vfprintf_r+0x1354>
   11664:	02013683          	ld	a3,32(sp)
   11668:	04097793          	andi	a5,s2,64
   1166c:	0006ad03          	lw	s10,0(a3)
   11670:	5e078c63          	beqz	a5,11c68 <_vfprintf_r+0x1824>
   11674:	010d1d1b          	slliw	s10,s10,0x10
   11678:	410d5d1b          	sraiw	s10,s10,0x10
   1167c:	000d0793          	mv	a5,s10
   11680:	ea07da63          	bgez	a5,10d34 <_vfprintf_r+0x8f0>
   11684:	02e13023          	sd	a4,32(sp)
   11688:	41a00d33          	neg	s10,s10
   1168c:	00090d93          	mv	s11,s2
   11690:	02d00713          	li	a4,45
   11694:	00100793          	li	a5,1
   11698:	e0cff06f          	j	10ca4 <_vfprintf_r+0x860>
   1169c:	01097793          	andi	a5,s2,16
   116a0:	0e079663          	bnez	a5,1178c <_vfprintf_r+0x1348>
   116a4:	02013683          	ld	a3,32(sp)
   116a8:	04097793          	andi	a5,s2,64
   116ac:	0006ad03          	lw	s10,0(a3)
   116b0:	5e078c63          	beqz	a5,11ca8 <_vfprintf_r+0x1864>
   116b4:	030d1d13          	slli	s10,s10,0x30
   116b8:	030d5d13          	srli	s10,s10,0x30
   116bc:	ec0ff06f          	j	10d7c <_vfprintf_r+0x938>
   116c0:	010df793          	andi	a5,s11,16
   116c4:	0a079a63          	bnez	a5,11778 <_vfprintf_r+0x1334>
   116c8:	02013683          	ld	a3,32(sp)
   116cc:	040df793          	andi	a5,s11,64
   116d0:	0006ad03          	lw	s10,0(a3)
   116d4:	5a078e63          	beqz	a5,11c90 <_vfprintf_r+0x184c>
   116d8:	030d1d13          	slli	s10,s10,0x30
   116dc:	030d5d13          	srli	s10,s10,0x30
   116e0:	02e13023          	sd	a4,32(sp)
   116e4:	00100793          	li	a5,1
   116e8:	db8ff06f          	j	10ca0 <_vfprintf_r+0x85c>
   116ec:	00000d13          	li	s10,0
   116f0:	17c10b13          	addi	s6,sp,380
   116f4:	ddcff06f          	j	10cd0 <_vfprintf_r+0x88c>
   116f8:	00197793          	andi	a5,s2,1
   116fc:	000d8713          	mv	a4,s11
   11700:	00079463          	bnez	a5,11708 <_vfprintf_r+0x12c4>
   11704:	854ff06f          	j	10758 <_vfprintf_r+0x314>
   11708:	f98ff06f          	j	10ea0 <_vfprintf_r+0xa5c>
   1170c:	000a8313          	mv	t1,s5
   11710:	e08ff06f          	j	10d18 <_vfprintf_r+0x8d4>
   11714:	0004ce03          	lbu	t3,0(s1)
   11718:	02f13023          	sd	a5,32(sp)
   1171c:	ed5fe06f          	j	105f0 <_vfprintf_r+0x1ac>
   11720:	03000793          	li	a5,48
   11724:	16f10da3          	sb	a5,379(sp)
   11728:	17b10b13          	addi	s6,sp,379
   1172c:	da4ff06f          	j	10cd0 <_vfprintf_r+0x88c>
   11730:	01097793          	andi	a5,s2,16
   11734:	e6079e63          	bnez	a5,10db0 <_vfprintf_r+0x96c>
   11738:	04097793          	andi	a5,s2,64
   1173c:	240796e3          	bnez	a5,12188 <_vfprintf_r+0x1d44>
   11740:	20097913          	andi	s2,s2,512
   11744:	01013783          	ld	a5,16(sp)
   11748:	00091463          	bnez	s2,11750 <_vfprintf_r+0x130c>
   1174c:	1d40106f          	j	12920 <_vfprintf_r+0x24dc>
   11750:	00f70023          	sb	a5,0(a4)
   11754:	e64ff06f          	j	10db8 <_vfprintf_r+0x974>
   11758:	02013783          	ld	a5,32(sp)
   1175c:	00f78a93          	addi	s5,a5,15
   11760:	ff0afa93          	andi	s5,s5,-16
   11764:	010a8793          	addi	a5,s5,16
   11768:	000ab703          	ld	a4,0(s5)
   1176c:	008ab583          	ld	a1,8(s5)
   11770:	02f13023          	sd	a5,32(sp)
   11774:	950ff06f          	j	108c4 <_vfprintf_r+0x480>
   11778:	02013783          	ld	a5,32(sp)
   1177c:	02e13023          	sd	a4,32(sp)
   11780:	0007bd03          	ld	s10,0(a5)
   11784:	00100793          	li	a5,1
   11788:	d18ff06f          	j	10ca0 <_vfprintf_r+0x85c>
   1178c:	02013783          	ld	a5,32(sp)
   11790:	0007bd03          	ld	s10,0(a5)
   11794:	de8ff06f          	j	10d7c <_vfprintf_r+0x938>
   11798:	02013783          	ld	a5,32(sp)
   1179c:	0007b783          	ld	a5,0(a5)
   117a0:	00078d13          	mv	s10,a5
   117a4:	d8cff06f          	j	10d30 <_vfprintf_r+0x8ec>
   117a8:	00078693          	mv	a3,a5
   117ac:	00068c9b          	sext.w	s9,a3
   117b0:	c5904ae3          	bgtz	s9,11404 <_vfprintf_r+0xfc0>
   117b4:	c79ff06f          	j	1142c <_vfprintf_r+0xfe8>
   117b8:	00013583          	ld	a1,0(sp)
   117bc:	10010613          	addi	a2,sp,256
   117c0:	00098513          	mv	a0,s3
   117c4:	08613823          	sd	t1,144(sp)
   117c8:	50d090ef          	jal	ra,1b4d4 <__sprint_r>
   117cc:	a00514e3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   117d0:	11013d83          	ld	s11,272(sp)
   117d4:	09013303          	ld	t1,144(sp)
   117d8:	18010413          	addi	s0,sp,384
   117dc:	f45fe06f          	j	10720 <_vfprintf_r+0x2dc>
   117e0:	000227b7          	lui	a5,0x22
   117e4:	d0878793          	addi	a5,a5,-760 # 21d08 <__clzdi2+0x78>
   117e8:	000a8313          	mv	t1,s5
   117ec:	06f13423          	sd	a5,104(sp)
   117f0:	02013683          	ld	a3,32(sp)
   117f4:	02097793          	andi	a5,s2,32
   117f8:	00868713          	addi	a4,a3,8
   117fc:	14078463          	beqz	a5,11944 <_vfprintf_r+0x1500>
   11800:	0006bd03          	ld	s10,0(a3)
   11804:	00197793          	andi	a5,s2,1
   11808:	00078e63          	beqz	a5,11824 <_vfprintf_r+0x13e0>
   1180c:	000d0c63          	beqz	s10,11824 <_vfprintf_r+0x13e0>
   11810:	00296913          	ori	s2,s2,2
   11814:	03000793          	li	a5,48
   11818:	0cf10823          	sb	a5,208(sp)
   1181c:	0d9108a3          	sb	s9,209(sp)
   11820:	0009091b          	sext.w	s2,s2
   11824:	bff97d93          	andi	s11,s2,-1025
   11828:	000d8d9b          	sext.w	s11,s11
   1182c:	02e13023          	sd	a4,32(sp)
   11830:	00200793          	li	a5,2
   11834:	c6cff06f          	j	10ca0 <_vfprintf_r+0x85c>
   11838:	000a8313          	mv	t1,s5
   1183c:	00090d93          	mv	s11,s2
   11840:	c44ff06f          	j	10c84 <_vfprintf_r+0x840>
   11844:	20096913          	ori	s2,s2,512
   11848:	0014ce03          	lbu	t3,1(s1)
   1184c:	0009091b          	sext.w	s2,s2
   11850:	00148493          	addi	s1,s1,1
   11854:	d9dfe06f          	j	105f0 <_vfprintf_r+0x1ac>
   11858:	02096913          	ori	s2,s2,32
   1185c:	0014ce03          	lbu	t3,1(s1)
   11860:	0009091b          	sext.w	s2,s2
   11864:	00148493          	addi	s1,s1,1
   11868:	d89fe06f          	j	105f0 <_vfprintf_r+0x1ac>
   1186c:	000a8313          	mv	t1,s5
   11870:	cf8ff06f          	j	10d68 <_vfprintf_r+0x924>
   11874:	000227b7          	lui	a5,0x22
   11878:	d2078793          	addi	a5,a5,-736 # 21d20 <__clzdi2+0x90>
   1187c:	000a8313          	mv	t1,s5
   11880:	06f13423          	sd	a5,104(sp)
   11884:	f6dff06f          	j	117f0 <_vfprintf_r+0x13ac>
   11888:	00013583          	ld	a1,0(sp)
   1188c:	10010613          	addi	a2,sp,256
   11890:	00098513          	mv	a0,s3
   11894:	441090ef          	jal	ra,1b4d4 <__sprint_r>
   11898:	92051ee3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   1189c:	11013703          	ld	a4,272(sp)
   118a0:	18010413          	addi	s0,sp,384
   118a4:	e30ff06f          	j	10ed4 <_vfprintf_r+0xa90>
   118a8:	00600793          	li	a5,6
   118ac:	00030693          	mv	a3,t1
   118b0:	0a67e2e3          	bltu	a5,t1,12154 <_vfprintf_r+0x1d10>
   118b4:	00068d1b          	sext.w	s10,a3
   118b8:	000227b7          	lui	a5,0x22
   118bc:	000d0c13          	mv	s8,s10
   118c0:	03513023          	sd	s5,32(sp)
   118c4:	d3878b13          	addi	s6,a5,-712 # 21d38 <__clzdi2+0xa8>
   118c8:	da9fe06f          	j	10670 <_vfprintf_r+0x22c>
   118cc:	00022f37          	lui	t5,0x22
   118d0:	01000593          	li	a1,16
   118d4:	000d8713          	mv	a4,s11
   118d8:	10812603          	lw	a2,264(sp)
   118dc:	f48f0d93          	addi	s11,t5,-184 # 21f48 <zeroes.0>
   118e0:	3f95dc63          	bge	a1,s9,11cd8 <_vfprintf_r+0x1894>
   118e4:	00013b83          	ld	s7,0(sp)
   118e8:	01000893          	li	a7,16
   118ec:	00700d13          	li	s10,7
   118f0:	00c0006f          	j	118fc <_vfprintf_r+0x14b8>
   118f4:	ff0c8c9b          	addiw	s9,s9,-16
   118f8:	3f98d063          	bge	a7,s9,11cd8 <_vfprintf_r+0x1894>
   118fc:	0016061b          	addiw	a2,a2,1
   11900:	01070713          	addi	a4,a4,16
   11904:	01b43023          	sd	s11,0(s0)
   11908:	01143423          	sd	a7,8(s0)
   1190c:	10e13823          	sd	a4,272(sp)
   11910:	10c12423          	sw	a2,264(sp)
   11914:	01040413          	addi	s0,s0,16
   11918:	fccd5ee3          	bge	s10,a2,118f4 <_vfprintf_r+0x14b0>
   1191c:	10010613          	addi	a2,sp,256
   11920:	000b8593          	mv	a1,s7
   11924:	00098513          	mv	a0,s3
   11928:	3ad090ef          	jal	ra,1b4d4 <__sprint_r>
   1192c:	8a0514e3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11930:	11013703          	ld	a4,272(sp)
   11934:	10812603          	lw	a2,264(sp)
   11938:	18010413          	addi	s0,sp,384
   1193c:	01000893          	li	a7,16
   11940:	fb5ff06f          	j	118f4 <_vfprintf_r+0x14b0>
   11944:	01097793          	andi	a5,s2,16
   11948:	1c078463          	beqz	a5,11b10 <_vfprintf_r+0x16cc>
   1194c:	02013783          	ld	a5,32(sp)
   11950:	0007bd03          	ld	s10,0(a5)
   11954:	eb1ff06f          	j	11804 <_vfprintf_r+0x13c0>
   11958:	00013583          	ld	a1,0(sp)
   1195c:	10010613          	addi	a2,sp,256
   11960:	00098513          	mv	a0,s3
   11964:	371090ef          	jal	ra,1b4d4 <__sprint_r>
   11968:	860516e3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   1196c:	11013703          	ld	a4,272(sp)
   11970:	10812683          	lw	a3,264(sp)
   11974:	18010c93          	addi	s9,sp,384
   11978:	870ff06f          	j	109e8 <_vfprintf_r+0x5a4>
   1197c:	00013583          	ld	a1,0(sp)
   11980:	10010613          	addi	a2,sp,256
   11984:	00098513          	mv	a0,s3
   11988:	34d090ef          	jal	ra,1b4d4 <__sprint_r>
   1198c:	840514e3          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11990:	11013d03          	ld	s10,272(sp)
   11994:	10812403          	lw	s0,264(sp)
   11998:	18010c93          	addi	s9,sp,384
   1199c:	878ff06f          	j	10a14 <_vfprintf_r+0x5d0>
   119a0:	17c10a93          	addi	s5,sp,380
   119a4:	00913c23          	sd	s1,24(sp)
   119a8:	07813483          	ld	s1,120(sp)
   119ac:	400df913          	andi	s2,s11,1024
   119b0:	000a8b13          	mv	s6,s5
   119b4:	00000793          	li	a5,0
   119b8:	04813023          	sd	s0,64(sp)
   119bc:	00098a93          	mv	s5,s3
   119c0:	00090413          	mv	s0,s2
   119c4:	00900b93          	li	s7,9
   119c8:	0ff00c13          	li	s8,255
   119cc:	02613823          	sd	t1,48(sp)
   119d0:	00078913          	mv	s2,a5
   119d4:	000b0993          	mv	s3,s6
   119d8:	00a00593          	li	a1,10
   119dc:	000d0513          	mv	a0,s10
   119e0:	240100ef          	jal	ra,21c20 <__umoddi3>
   119e4:	0305051b          	addiw	a0,a0,48
   119e8:	fea98fa3          	sb	a0,-1(s3)
   119ec:	0019091b          	addiw	s2,s2,1
   119f0:	fff98993          	addi	s3,s3,-1
   119f4:	00040663          	beqz	s0,11a00 <_vfprintf_r+0x15bc>
   119f8:	0004c703          	lbu	a4,0(s1)
   119fc:	04e90663          	beq	s2,a4,11a48 <_vfprintf_r+0x1604>
   11a00:	00a00593          	li	a1,10
   11a04:	000d0513          	mv	a0,s10
   11a08:	1d0100ef          	jal	ra,21bd8 <__hidden___udivdi3>
   11a0c:	01abf663          	bgeu	s7,s10,11a18 <_vfprintf_r+0x15d4>
   11a10:	00050d13          	mv	s10,a0
   11a14:	fc5ff06f          	j	119d8 <_vfprintf_r+0x1594>
   11a18:	000b0793          	mv	a5,s6
   11a1c:	00098b13          	mv	s6,s3
   11a20:	000a8993          	mv	s3,s5
   11a24:	00078a93          	mv	s5,a5
   11a28:	03213c23          	sd	s2,56(sp)
   11a2c:	06913c23          	sd	s1,120(sp)
   11a30:	03013303          	ld	t1,48(sp)
   11a34:	01813483          	ld	s1,24(sp)
   11a38:	04013403          	ld	s0,64(sp)
   11a3c:	416a8d3b          	subw	s10,s5,s6
   11a40:	000d8913          	mv	s2,s11
   11a44:	a8cff06f          	j	10cd0 <_vfprintf_r+0x88c>
   11a48:	fb870ce3          	beq	a4,s8,11a00 <_vfprintf_r+0x15bc>
   11a4c:	fdabf6e3          	bgeu	s7,s10,11a18 <_vfprintf_r+0x15d4>
   11a50:	08013783          	ld	a5,128(sp)
   11a54:	08813583          	ld	a1,136(sp)
   11a58:	00000913          	li	s2,0
   11a5c:	40f989b3          	sub	s3,s3,a5
   11a60:	00078613          	mv	a2,a5
   11a64:	00098513          	mv	a0,s3
   11a68:	300070ef          	jal	ra,18d68 <strncpy>
   11a6c:	0014c703          	lbu	a4,1(s1)
   11a70:	000d0513          	mv	a0,s10
   11a74:	00a00593          	li	a1,10
   11a78:	00e03733          	snez	a4,a4
   11a7c:	00e484b3          	add	s1,s1,a4
   11a80:	158100ef          	jal	ra,21bd8 <__hidden___udivdi3>
   11a84:	00050d13          	mv	s10,a0
   11a88:	f51ff06f          	j	119d8 <_vfprintf_r+0x1594>
   11a8c:	10812683          	lw	a3,264(sp)
   11a90:	000225b7          	lui	a1,0x22
   11a94:	d4058593          	addi	a1,a1,-704 # 21d40 <__clzdi2+0xb0>
   11a98:	0016869b          	addiw	a3,a3,1
   11a9c:	00b43023          	sd	a1,0(s0)
   11aa0:	001d8713          	addi	a4,s11,1
   11aa4:	00100593          	li	a1,1
   11aa8:	00b43423          	sd	a1,8(s0)
   11aac:	10d12423          	sw	a3,264(sp)
   11ab0:	0006859b          	sext.w	a1,a3
   11ab4:	10e13823          	sd	a4,272(sp)
   11ab8:	00700693          	li	a3,7
   11abc:	01040413          	addi	s0,s0,16
   11ac0:	44b6ce63          	blt	a3,a1,11f1c <_vfprintf_r+0x1ad8>
   11ac4:	10061663          	bnez	a2,11bd0 <_vfprintf_r+0x178c>
   11ac8:	03813783          	ld	a5,56(sp)
   11acc:	00197693          	andi	a3,s2,1
   11ad0:	00d7e6b3          	or	a3,a5,a3
   11ad4:	00069463          	bnez	a3,11adc <_vfprintf_r+0x1698>
   11ad8:	c81fe06f          	j	10758 <_vfprintf_r+0x314>
   11adc:	10812603          	lw	a2,264(sp)
   11ae0:	05813783          	ld	a5,88(sp)
   11ae4:	06013683          	ld	a3,96(sp)
   11ae8:	00e78733          	add	a4,a5,a4
   11aec:	00d43023          	sd	a3,0(s0)
   11af0:	0016069b          	addiw	a3,a2,1
   11af4:	00f43423          	sd	a5,8(s0)
   11af8:	10e13823          	sd	a4,272(sp)
   11afc:	10d12423          	sw	a3,264(sp)
   11b00:	00700613          	li	a2,7
   11b04:	6cd64e63          	blt	a2,a3,121e0 <_vfprintf_r+0x1d9c>
   11b08:	01040413          	addi	s0,s0,16
   11b0c:	0f80006f          	j	11c04 <_vfprintf_r+0x17c0>
   11b10:	02013683          	ld	a3,32(sp)
   11b14:	04097793          	andi	a5,s2,64
   11b18:	0006ad03          	lw	s10,0(a3)
   11b1c:	16078263          	beqz	a5,11c80 <_vfprintf_r+0x183c>
   11b20:	030d1d13          	slli	s10,s10,0x30
   11b24:	030d5d13          	srli	s10,s10,0x30
   11b28:	cddff06f          	j	11804 <_vfprintf_r+0x13c0>
   11b2c:	00013583          	ld	a1,0(sp)
   11b30:	10010613          	addi	a2,sp,256
   11b34:	00098513          	mv	a0,s3
   11b38:	19d090ef          	jal	ra,1b4d4 <__sprint_r>
   11b3c:	e8051c63          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11b40:	11013d83          	ld	s11,272(sp)
   11b44:	18010413          	addi	s0,sp,384
   11b48:	b4cff06f          	j	10e94 <_vfprintf_r+0xa50>
   11b4c:	0017869b          	addiw	a3,a5,1
   11b50:	01b43023          	sd	s11,0(s0)
   11b54:	01943423          	sd	s9,8(s0)
   11b58:	01970733          	add	a4,a4,s9
   11b5c:	10e13823          	sd	a4,272(sp)
   11b60:	10d12423          	sw	a3,264(sp)
   11b64:	00700793          	li	a5,7
   11b68:	00d7c463          	blt	a5,a3,11b70 <_vfprintf_r+0x172c>
   11b6c:	be9fe06f          	j	10754 <_vfprintf_r+0x310>
   11b70:	f1dfe06f          	j	10a8c <_vfprintf_r+0x648>
   11b74:	0f013503          	ld	a0,240(sp)
   11b78:	0f813583          	ld	a1,248(sp)
   11b7c:	00000613          	li	a2,0
   11b80:	00000693          	li	a3,0
   11b84:	33d0e0ef          	jal	ra,206c0 <__letf2>
   11b88:	260548e3          	bltz	a0,125f8 <_vfprintf_r+0x21b4>
   11b8c:	0cf14703          	lbu	a4,207(sp)
   11b90:	04700793          	li	a5,71
   11b94:	3b97d663          	bge	a5,s9,11f40 <_vfprintf_r+0x1afc>
   11b98:	000227b7          	lui	a5,0x22
   11b9c:	cf078b13          	addi	s6,a5,-784 # 21cf0 <__clzdi2+0x60>
   11ba0:	f7f97913          	andi	s2,s2,-129
   11ba4:	00013c23          	sd	zero,24(sp)
   11ba8:	04013423          	sd	zero,72(sp)
   11bac:	04013023          	sd	zero,64(sp)
   11bb0:	02013823          	sd	zero,48(sp)
   11bb4:	0009091b          	sext.w	s2,s2
   11bb8:	00300c13          	li	s8,3
   11bbc:	00300d13          	li	s10,3
   11bc0:	00000313          	li	t1,0
   11bc4:	00070463          	beqz	a4,11bcc <_vfprintf_r+0x1788>
   11bc8:	f95fe06f          	j	10b5c <_vfprintf_r+0x718>
   11bcc:	ab9fe06f          	j	10684 <_vfprintf_r+0x240>
   11bd0:	10812583          	lw	a1,264(sp)
   11bd4:	05813783          	ld	a5,88(sp)
   11bd8:	06013683          	ld	a3,96(sp)
   11bdc:	01040413          	addi	s0,s0,16
   11be0:	00e78733          	add	a4,a5,a4
   11be4:	fed43823          	sd	a3,-16(s0)
   11be8:	0015869b          	addiw	a3,a1,1
   11bec:	fef43c23          	sd	a5,-8(s0)
   11bf0:	10e13823          	sd	a4,272(sp)
   11bf4:	10d12423          	sw	a3,264(sp)
   11bf8:	00700593          	li	a1,7
   11bfc:	5ed5c263          	blt	a1,a3,121e0 <_vfprintf_r+0x1d9c>
   11c00:	2c0642e3          	bltz	a2,126c4 <_vfprintf_r+0x2280>
   11c04:	03813783          	ld	a5,56(sp)
   11c08:	0016861b          	addiw	a2,a3,1
   11c0c:	01643023          	sd	s6,0(s0)
   11c10:	00e78733          	add	a4,a5,a4
   11c14:	00f43423          	sd	a5,8(s0)
   11c18:	10e13823          	sd	a4,272(sp)
   11c1c:	10c12423          	sw	a2,264(sp)
   11c20:	00700793          	li	a5,7
   11c24:	00c7c463          	blt	a5,a2,11c2c <_vfprintf_r+0x17e8>
   11c28:	b2dfe06f          	j	10754 <_vfprintf_r+0x310>
   11c2c:	e61fe06f          	j	10a8c <_vfprintf_r+0x648>
   11c30:	000b0513          	mv	a0,s6
   11c34:	06c070ef          	jal	ra,18ca0 <strlen>
   11c38:	00050d1b          	sext.w	s10,a0
   11c3c:	ef5fe06f          	j	10b30 <_vfprintf_r+0x6ec>
   11c40:	0014041b          	addiw	s0,s0,1
   11c44:	015d0d33          	add	s10,s10,s5
   11c48:	01bcb023          	sd	s11,0(s9)
   11c4c:	015cb423          	sd	s5,8(s9)
   11c50:	11a13823          	sd	s10,272(sp)
   11c54:	10812423          	sw	s0,264(sp)
   11c58:	00700793          	li	a5,7
   11c5c:	0087c463          	blt	a5,s0,11c64 <_vfprintf_r+0x1820>
   11c60:	df9fe06f          	j	10a58 <_vfprintf_r+0x614>
   11c64:	939ff06f          	j	1159c <_vfprintf_r+0x1158>
   11c68:	20097793          	andi	a5,s2,512
   11c6c:	52078a63          	beqz	a5,121a0 <_vfprintf_r+0x1d5c>
   11c70:	018d1d1b          	slliw	s10,s10,0x18
   11c74:	418d5d1b          	sraiw	s10,s10,0x18
   11c78:	000d0793          	mv	a5,s10
   11c7c:	8b4ff06f          	j	10d30 <_vfprintf_r+0x8ec>
   11c80:	20097793          	andi	a5,s2,512
   11c84:	50078863          	beqz	a5,12194 <_vfprintf_r+0x1d50>
   11c88:	0ffd7d13          	zext.b	s10,s10
   11c8c:	b79ff06f          	j	11804 <_vfprintf_r+0x13c0>
   11c90:	200df793          	andi	a5,s11,512
   11c94:	50078a63          	beqz	a5,121a8 <_vfprintf_r+0x1d64>
   11c98:	0ffd7d13          	zext.b	s10,s10
   11c9c:	02e13023          	sd	a4,32(sp)
   11ca0:	00100793          	li	a5,1
   11ca4:	ffdfe06f          	j	10ca0 <_vfprintf_r+0x85c>
   11ca8:	20097793          	andi	a5,s2,512
   11cac:	4c078863          	beqz	a5,1217c <_vfprintf_r+0x1d38>
   11cb0:	0ffd7d13          	zext.b	s10,s10
   11cb4:	8c8ff06f          	j	10d7c <_vfprintf_r+0x938>
   11cb8:	0f813783          	ld	a5,248(sp)
   11cbc:	5007c063          	bltz	a5,121bc <_vfprintf_r+0x1d78>
   11cc0:	0cf14703          	lbu	a4,207(sp)
   11cc4:	04700793          	li	a5,71
   11cc8:	1f97d4e3          	bge	a5,s9,126b0 <_vfprintf_r+0x226c>
   11ccc:	000227b7          	lui	a5,0x22
   11cd0:	d0078b13          	addi	s6,a5,-768 # 21d00 <__clzdi2+0x70>
   11cd4:	ecdff06f          	j	11ba0 <_vfprintf_r+0x175c>
   11cd8:	0016059b          	addiw	a1,a2,1
   11cdc:	00ec8733          	add	a4,s9,a4
   11ce0:	01b43023          	sd	s11,0(s0)
   11ce4:	01943423          	sd	s9,8(s0)
   11ce8:	10e13823          	sd	a4,272(sp)
   11cec:	10b12423          	sw	a1,264(sp)
   11cf0:	00700693          	li	a3,7
   11cf4:	72b6c863          	blt	a3,a1,12424 <_vfprintf_r+0x1fe0>
   11cf8:	01040413          	addi	s0,s0,16
   11cfc:	00070d93          	mv	s11,a4
   11d00:	f44ff06f          	j	11444 <_vfprintf_r+0x1000>
   11d04:	04013c83          	ld	s9,64(sp)
   11d08:	00022e37          	lui	t3,0x22
   11d0c:	08913823          	sd	s1,144(sp)
   11d10:	09213c23          	sd	s2,152(sp)
   11d14:	0b413023          	sd	s4,160(sp)
   11d18:	05813023          	sd	s8,64(sp)
   11d1c:	000b0a13          	mv	s4,s6
   11d20:	07813903          	ld	s2,120(sp)
   11d24:	08813483          	ld	s1,136(sp)
   11d28:	08013b03          	ld	s6,128(sp)
   11d2c:	04813c03          	ld	s8,72(sp)
   11d30:	00013b83          	ld	s7,0(sp)
   11d34:	00700313          	li	t1,7
   11d38:	01000893          	li	a7,16
   11d3c:	f48e0d13          	addi	s10,t3,-184 # 21f48 <zeroes.0>
   11d40:	000d8713          	mv	a4,s11
   11d44:	080c8c63          	beqz	s9,11ddc <_vfprintf_r+0x1998>
   11d48:	160c0863          	beqz	s8,11eb8 <_vfprintf_r+0x1a74>
   11d4c:	fffc0c1b          	addiw	s8,s8,-1
   11d50:	10812783          	lw	a5,264(sp)
   11d54:	01670733          	add	a4,a4,s6
   11d58:	00943023          	sd	s1,0(s0)
   11d5c:	0017869b          	addiw	a3,a5,1
   11d60:	01643423          	sd	s6,8(s0)
   11d64:	10e13823          	sd	a4,272(sp)
   11d68:	10d12423          	sw	a3,264(sp)
   11d6c:	01040413          	addi	s0,s0,16
   11d70:	14d34a63          	blt	t1,a3,11ec4 <_vfprintf_r+0x1a80>
   11d74:	00094683          	lbu	a3,0(s2)
   11d78:	414a8db3          	sub	s11,s5,s4
   11d7c:	000d879b          	sext.w	a5,s11
   11d80:	0006861b          	sext.w	a2,a3
   11d84:	00f6d463          	bge	a3,a5,11d8c <_vfprintf_r+0x1948>
   11d88:	00060d93          	mv	s11,a2
   11d8c:	000d8d9b          	sext.w	s11,s11
   11d90:	03b05863          	blez	s11,11dc0 <_vfprintf_r+0x197c>
   11d94:	10812783          	lw	a5,264(sp)
   11d98:	01b70733          	add	a4,a4,s11
   11d9c:	01443023          	sd	s4,0(s0)
   11da0:	0017869b          	addiw	a3,a5,1
   11da4:	01b43423          	sd	s11,8(s0)
   11da8:	10e13823          	sd	a4,272(sp)
   11dac:	10d12423          	sw	a3,264(sp)
   11db0:	12d34e63          	blt	t1,a3,11eec <_vfprintf_r+0x1aa8>
   11db4:	00094683          	lbu	a3,0(s2)
   11db8:	01040413          	addi	s0,s0,16
   11dbc:	0006861b          	sext.w	a2,a3
   11dc0:	fffdc793          	not	a5,s11
   11dc4:	43f7d793          	srai	a5,a5,0x3f
   11dc8:	00fdf7b3          	and	a5,s11,a5
   11dcc:	40f60dbb          	subw	s11,a2,a5
   11dd0:	03b04c63          	bgtz	s11,11e08 <_vfprintf_r+0x19c4>
   11dd4:	00da0a33          	add	s4,s4,a3
   11dd8:	f60c98e3          	bnez	s9,11d48 <_vfprintf_r+0x1904>
   11ddc:	f60c18e3          	bnez	s8,11d4c <_vfprintf_r+0x1908>
   11de0:	07213c23          	sd	s2,120(sp)
   11de4:	000a0b13          	mv	s6,s4
   11de8:	09013483          	ld	s1,144(sp)
   11dec:	09813903          	ld	s2,152(sp)
   11df0:	0a013a03          	ld	s4,160(sp)
   11df4:	04013c03          	ld	s8,64(sp)
   11df8:	00070d93          	mv	s11,a4
   11dfc:	e56afc63          	bgeu	s5,s6,11454 <_vfprintf_r+0x1010>
   11e00:	000a8b13          	mv	s6,s5
   11e04:	e50ff06f          	j	11454 <_vfprintf_r+0x1010>
   11e08:	00022637          	lui	a2,0x22
   11e0c:	10812783          	lw	a5,264(sp)
   11e10:	f4860613          	addi	a2,a2,-184 # 21f48 <zeroes.0>
   11e14:	07b8dc63          	bge	a7,s11,11e8c <_vfprintf_r+0x1a48>
   11e18:	02913823          	sd	s1,48(sp)
   11e1c:	000d8493          	mv	s1,s11
   11e20:	000d0d93          	mv	s11,s10
   11e24:	00c0006f          	j	11e30 <_vfprintf_r+0x19ec>
   11e28:	ff04849b          	addiw	s1,s1,-16
   11e2c:	0498da63          	bge	a7,s1,11e80 <_vfprintf_r+0x1a3c>
   11e30:	0017879b          	addiw	a5,a5,1
   11e34:	01070713          	addi	a4,a4,16
   11e38:	01a43023          	sd	s10,0(s0)
   11e3c:	01143423          	sd	a7,8(s0)
   11e40:	10e13823          	sd	a4,272(sp)
   11e44:	10f12423          	sw	a5,264(sp)
   11e48:	01040413          	addi	s0,s0,16
   11e4c:	fcf35ee3          	bge	t1,a5,11e28 <_vfprintf_r+0x19e4>
   11e50:	10010613          	addi	a2,sp,256
   11e54:	000b8593          	mv	a1,s7
   11e58:	00098513          	mv	a0,s3
   11e5c:	678090ef          	jal	ra,1b4d4 <__sprint_r>
   11e60:	b6051a63          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11e64:	01000893          	li	a7,16
   11e68:	ff04849b          	addiw	s1,s1,-16
   11e6c:	11013703          	ld	a4,272(sp)
   11e70:	10812783          	lw	a5,264(sp)
   11e74:	18010413          	addi	s0,sp,384
   11e78:	00700313          	li	t1,7
   11e7c:	fa98cae3          	blt	a7,s1,11e30 <_vfprintf_r+0x19ec>
   11e80:	000d8613          	mv	a2,s11
   11e84:	00048d93          	mv	s11,s1
   11e88:	03013483          	ld	s1,48(sp)
   11e8c:	0017869b          	addiw	a3,a5,1
   11e90:	00ed8733          	add	a4,s11,a4
   11e94:	00c43023          	sd	a2,0(s0)
   11e98:	01b43423          	sd	s11,8(s0)
   11e9c:	10e13823          	sd	a4,272(sp)
   11ea0:	10d12423          	sw	a3,264(sp)
   11ea4:	6ed34863          	blt	t1,a3,12594 <_vfprintf_r+0x2150>
   11ea8:	00094683          	lbu	a3,0(s2)
   11eac:	01040413          	addi	s0,s0,16
   11eb0:	00da0a33          	add	s4,s4,a3
   11eb4:	f25ff06f          	j	11dd8 <_vfprintf_r+0x1994>
   11eb8:	fff90913          	addi	s2,s2,-1
   11ebc:	fffc8c9b          	addiw	s9,s9,-1
   11ec0:	e91ff06f          	j	11d50 <_vfprintf_r+0x190c>
   11ec4:	10010613          	addi	a2,sp,256
   11ec8:	000b8593          	mv	a1,s7
   11ecc:	00098513          	mv	a0,s3
   11ed0:	604090ef          	jal	ra,1b4d4 <__sprint_r>
   11ed4:	b0051063          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11ed8:	11013703          	ld	a4,272(sp)
   11edc:	18010413          	addi	s0,sp,384
   11ee0:	01000893          	li	a7,16
   11ee4:	00700313          	li	t1,7
   11ee8:	e8dff06f          	j	11d74 <_vfprintf_r+0x1930>
   11eec:	10010613          	addi	a2,sp,256
   11ef0:	000b8593          	mv	a1,s7
   11ef4:	00098513          	mv	a0,s3
   11ef8:	5dc090ef          	jal	ra,1b4d4 <__sprint_r>
   11efc:	ac051c63          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11f00:	00094683          	lbu	a3,0(s2)
   11f04:	11013703          	ld	a4,272(sp)
   11f08:	18010413          	addi	s0,sp,384
   11f0c:	0006861b          	sext.w	a2,a3
   11f10:	01000893          	li	a7,16
   11f14:	00700313          	li	t1,7
   11f18:	ea9ff06f          	j	11dc0 <_vfprintf_r+0x197c>
   11f1c:	00013583          	ld	a1,0(sp)
   11f20:	10010613          	addi	a2,sp,256
   11f24:	00098513          	mv	a0,s3
   11f28:	5ac090ef          	jal	ra,1b4d4 <__sprint_r>
   11f2c:	aa051463          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   11f30:	0d812603          	lw	a2,216(sp)
   11f34:	11013703          	ld	a4,272(sp)
   11f38:	18010413          	addi	s0,sp,384
   11f3c:	b89ff06f          	j	11ac4 <_vfprintf_r+0x1680>
   11f40:	000227b7          	lui	a5,0x22
   11f44:	ce878b13          	addi	s6,a5,-792 # 21ce8 <__clzdi2+0x58>
   11f48:	c59ff06f          	j	11ba0 <_vfprintf_r+0x175c>
   11f4c:	00030913          	mv	s2,t1
   11f50:	00200693          	li	a3,2
   11f54:	00090713          	mv	a4,s2
   11f58:	0e810893          	addi	a7,sp,232
   11f5c:	0dc10813          	addi	a6,sp,220
   11f60:	0d810793          	addi	a5,sp,216
   11f64:	000b8593          	mv	a1,s7
   11f68:	000c0613          	mv	a2,s8
   11f6c:	00098513          	mv	a0,s3
   11f70:	02613823          	sd	t1,48(sp)
   11f74:	4b0030ef          	jal	ra,15424 <_ldtoa_r>
   11f78:	06700713          	li	a4,103
   11f7c:	03013303          	ld	t1,48(sp)
   11f80:	00050b13          	mv	s6,a0
   11f84:	5eec8c63          	beq	s9,a4,1257c <_vfprintf_r+0x2138>
   11f88:	04700713          	li	a4,71
   11f8c:	5eec8863          	beq	s9,a4,1257c <_vfprintf_r+0x2138>
   11f90:	fdfcfa93          	andi	s5,s9,-33
   11f94:	04600713          	li	a4,70
   11f98:	01250d33          	add	s10,a0,s2
   11f9c:	66ea8663          	beq	s5,a4,12608 <_vfprintf_r+0x21c4>
   11fa0:	000c0593          	mv	a1,s8
   11fa4:	00000613          	li	a2,0
   11fa8:	00000693          	li	a3,0
   11fac:	000b8513          	mv	a0,s7
   11fb0:	02613823          	sd	t1,48(sp)
   11fb4:	55c0e0ef          	jal	ra,20510 <__eqtf2>
   11fb8:	03013303          	ld	t1,48(sp)
   11fbc:	000d0c13          	mv	s8,s10
   11fc0:	02050263          	beqz	a0,11fe4 <_vfprintf_r+0x1ba0>
   11fc4:	0e813c03          	ld	s8,232(sp)
   11fc8:	01ac7e63          	bgeu	s8,s10,11fe4 <_vfprintf_r+0x1ba0>
   11fcc:	03000693          	li	a3,48
   11fd0:	001c0793          	addi	a5,s8,1
   11fd4:	0ef13423          	sd	a5,232(sp)
   11fd8:	00dc0023          	sb	a3,0(s8)
   11fdc:	0e813c03          	ld	s8,232(sp)
   11fe0:	ffac68e3          	bltu	s8,s10,11fd0 <_vfprintf_r+0x1b8c>
   11fe4:	416c07bb          	subw	a5,s8,s6
   11fe8:	02f13c23          	sd	a5,56(sp)
   11fec:	0d812703          	lw	a4,216(sp)
   11ff0:	04700693          	li	a3,71
   11ff4:	02e13823          	sd	a4,48(sp)
   11ff8:	4cda8c63          	beq	s5,a3,124d0 <_vfprintf_r+0x208c>
   11ffc:	04600693          	li	a3,70
   12000:	72da8a63          	beq	s5,a3,12734 <_vfprintf_r+0x22f0>
   12004:	fff70d1b          	addiw	s10,a4,-1
   12008:	0da12c23          	sw	s10,216(sp)
   1200c:	06100693          	li	a3,97
   12010:	1cdc80e3          	beq	s9,a3,129d0 <_vfprintf_r+0x258c>
   12014:	04100613          	li	a2,65
   12018:	05000693          	li	a3,80
   1201c:	4ccc9863          	bne	s9,a2,124ec <_vfprintf_r+0x20a8>
   12020:	00100613          	li	a2,1
   12024:	0ed10023          	sb	a3,224(sp)
   12028:	02b00693          	li	a3,43
   1202c:	000d5863          	bgez	s10,1203c <_vfprintf_r+0x1bf8>
   12030:	00100d13          	li	s10,1
   12034:	40ed0d3b          	subw	s10,s10,a4
   12038:	02d00693          	li	a3,45
   1203c:	0ed100a3          	sb	a3,225(sp)
   12040:	00900713          	li	a4,9
   12044:	77a75e63          	bge	a4,s10,127c0 <_vfprintf_r+0x237c>
   12048:	0ef10913          	addi	s2,sp,239
   1204c:	00090a93          	mv	s5,s2
   12050:	06300b93          	li	s7,99
   12054:	00a00593          	li	a1,10
   12058:	000d0513          	mv	a0,s10
   1205c:	3f90f0ef          	jal	ra,21c54 <__moddi3>
   12060:	0305079b          	addiw	a5,a0,48
   12064:	fefa8fa3          	sb	a5,-1(s5)
   12068:	000d0513          	mv	a0,s10
   1206c:	00a00593          	li	a1,10
   12070:	000d0c13          	mv	s8,s10
   12074:	35d0f0ef          	jal	ra,21bd0 <__divdi3>
   12078:	000a8d93          	mv	s11,s5
   1207c:	00050d1b          	sext.w	s10,a0
   12080:	fffa8a93          	addi	s5,s5,-1
   12084:	fd8bc8e3          	blt	s7,s8,12054 <_vfprintf_r+0x1c10>
   12088:	030d0d1b          	addiw	s10,s10,48
   1208c:	ffed8713          	addi	a4,s11,-2
   12090:	ffaa8fa3          	sb	s10,-1(s5)
   12094:	1b277ae3          	bgeu	a4,s2,12a48 <_vfprintf_r+0x2604>
   12098:	0e210693          	addi	a3,sp,226
   1209c:	00074783          	lbu	a5,0(a4)
   120a0:	00170713          	addi	a4,a4,1
   120a4:	00168693          	addi	a3,a3,1
   120a8:	fef68fa3          	sb	a5,-1(a3)
   120ac:	ff2718e3          	bne	a4,s2,1209c <_vfprintf_r+0x1c58>
   120b0:	0f110713          	addi	a4,sp,241
   120b4:	0e210793          	addi	a5,sp,226
   120b8:	41b70733          	sub	a4,a4,s11
   120bc:	00e78733          	add	a4,a5,a4
   120c0:	0e010693          	addi	a3,sp,224
   120c4:	40d707bb          	subw	a5,a4,a3
   120c8:	06f13823          	sd	a5,112(sp)
   120cc:	07013703          	ld	a4,112(sp)
   120d0:	03813783          	ld	a5,56(sp)
   120d4:	00100613          	li	a2,1
   120d8:	00e78d3b          	addw	s10,a5,a4
   120dc:	000d0713          	mv	a4,s10
   120e0:	02f658e3          	bge	a2,a5,12910 <_vfprintf_r+0x24cc>
   120e4:	05813783          	ld	a5,88(sp)
   120e8:	00f70d3b          	addw	s10,a4,a5
   120ec:	04013783          	ld	a5,64(sp)
   120f0:	fffd4813          	not	a6,s10
   120f4:	43f85813          	srai	a6,a6,0x3f
   120f8:	bff7f913          	andi	s2,a5,-1025
   120fc:	0009091b          	sext.w	s2,s2
   12100:	010d7833          	and	a6,s10,a6
   12104:	10096913          	ori	s2,s2,256
   12108:	00080c1b          	sext.w	s8,a6
   1210c:	04013423          	sd	zero,72(sp)
   12110:	04013023          	sd	zero,64(sp)
   12114:	02013823          	sd	zero,48(sp)
   12118:	09813783          	ld	a5,152(sp)
   1211c:	3c078e63          	beqz	a5,124f8 <_vfprintf_r+0x20b4>
   12120:	02d00713          	li	a4,45
   12124:	0ce107a3          	sb	a4,207(sp)
   12128:	00000313          	li	t1,0
   1212c:	001c0c1b          	addiw	s8,s8,1
   12130:	d54fe06f          	j	10684 <_vfprintf_r+0x240>
   12134:	00013583          	ld	a1,0(sp)
   12138:	10010613          	addi	a2,sp,256
   1213c:	00098513          	mv	a0,s3
   12140:	394090ef          	jal	ra,1b4d4 <__sprint_r>
   12144:	88051863          	bnez	a0,111d4 <_vfprintf_r+0xd90>
   12148:	11013d83          	ld	s11,272(sp)
   1214c:	18010413          	addi	s0,sp,384
   12150:	adcff06f          	j	1142c <_vfprintf_r+0xfe8>
   12154:	00600693          	li	a3,6
   12158:	f5cff06f          	j	118b4 <_vfprintf_r+0x1470>
   1215c:	416a8cb3          	sub	s9,s5,s6
   12160:	40d7863b          	subw	a2,a5,a3
   12164:	000c879b          	sext.w	a5,s9
   12168:	000d8713          	mv	a4,s11
   1216c:	00f65463          	bge	a2,a5,12174 <_vfprintf_r+0x1d30>
   12170:	00060c93          	mv	s9,a2
   12174:	000c8c9b          	sext.w	s9,s9
   12178:	b70ff06f          	j	114e8 <_vfprintf_r+0x10a4>
   1217c:	020d1d13          	slli	s10,s10,0x20
   12180:	020d5d13          	srli	s10,s10,0x20
   12184:	bf9fe06f          	j	10d7c <_vfprintf_r+0x938>
   12188:	01013783          	ld	a5,16(sp)
   1218c:	00f71023          	sh	a5,0(a4)
   12190:	c29fe06f          	j	10db8 <_vfprintf_r+0x974>
   12194:	020d1d13          	slli	s10,s10,0x20
   12198:	020d5d13          	srli	s10,s10,0x20
   1219c:	e68ff06f          	j	11804 <_vfprintf_r+0x13c0>
   121a0:	000d0793          	mv	a5,s10
   121a4:	b8dfe06f          	j	10d30 <_vfprintf_r+0x8ec>
   121a8:	020d1d13          	slli	s10,s10,0x20
   121ac:	020d5d13          	srli	s10,s10,0x20
   121b0:	02e13023          	sd	a4,32(sp)
   121b4:	00100793          	li	a5,1
   121b8:	ae9fe06f          	j	10ca0 <_vfprintf_r+0x85c>
   121bc:	02d00793          	li	a5,45
   121c0:	0cf107a3          	sb	a5,207(sp)
   121c4:	02d00713          	li	a4,45
   121c8:	afdff06f          	j	11cc4 <_vfprintf_r+0x1880>
   121cc:	00013583          	ld	a1,0(sp)
   121d0:	05013503          	ld	a0,80(sp)
   121d4:	10010613          	addi	a2,sp,256
   121d8:	2fc090ef          	jal	ra,1b4d4 <__sprint_r>
   121dc:	ddcfe06f          	j	107b8 <_vfprintf_r+0x374>
   121e0:	00013583          	ld	a1,0(sp)
   121e4:	10010613          	addi	a2,sp,256
   121e8:	00098513          	mv	a0,s3
   121ec:	2e8090ef          	jal	ra,1b4d4 <__sprint_r>
   121f0:	00050463          	beqz	a0,121f8 <_vfprintf_r+0x1db4>
   121f4:	fe1fe06f          	j	111d4 <_vfprintf_r+0xd90>
   121f8:	0d812603          	lw	a2,216(sp)
   121fc:	11013703          	ld	a4,272(sp)
   12200:	10812683          	lw	a3,264(sp)
   12204:	18010413          	addi	s0,sp,384
   12208:	9f9ff06f          	j	11c00 <_vfprintf_r+0x17bc>
   1220c:	05800713          	li	a4,88
   12210:	00296793          	ori	a5,s2,2
   12214:	03000693          	li	a3,48
   12218:	0007879b          	sext.w	a5,a5
   1221c:	0ce108a3          	sb	a4,209(sp)
   12220:	0cd10823          	sb	a3,208(sp)
   12224:	06300713          	li	a4,99
   12228:	04f13023          	sd	a5,64(sp)
   1222c:	00013c23          	sd	zero,24(sp)
   12230:	11810b13          	addi	s6,sp,280
   12234:	64674c63          	blt	a4,t1,1288c <_vfprintf_r+0x2448>
   12238:	10296913          	ori	s2,s2,258
   1223c:	0f813c03          	ld	s8,248(sp)
   12240:	0009079b          	sext.w	a5,s2
   12244:	08f13823          	sd	a5,144(sp)
   12248:	08013c23          	sd	zero,152(sp)
   1224c:	0f013b83          	ld	s7,240(sp)
   12250:	300c4a63          	bltz	s8,12564 <_vfprintf_r+0x2120>
   12254:	06100713          	li	a4,97
   12258:	00ec8463          	beq	s9,a4,12260 <_vfprintf_r+0x1e1c>
   1225c:	ef8fe06f          	j	10954 <_vfprintf_r+0x510>
   12260:	000c0593          	mv	a1,s8
   12264:	000b8513          	mv	a0,s7
   12268:	02613823          	sd	t1,48(sp)
   1226c:	7400f0ef          	jal	ra,219ac <__trunctfdf2>
   12270:	0d810593          	addi	a1,sp,216
   12274:	50c060ef          	jal	ra,18780 <frexp>
   12278:	6440f0ef          	jal	ra,218bc <__extenddftf2>
   1227c:	00022737          	lui	a4,0x22
   12280:	f7873683          	ld	a3,-136(a4) # 21f78 <blanks.1+0x20>
   12284:	00000613          	li	a2,0
   12288:	5440e0ef          	jal	ra,207cc <__multf3>
   1228c:	00000613          	li	a2,0
   12290:	00000693          	li	a3,0
   12294:	00050d93          	mv	s11,a0
   12298:	00058913          	mv	s2,a1
   1229c:	2740e0ef          	jal	ra,20510 <__eqtf2>
   122a0:	03013303          	ld	t1,48(sp)
   122a4:	00051663          	bnez	a0,122b0 <_vfprintf_r+0x1e6c>
   122a8:	00100713          	li	a4,1
   122ac:	0ce12c23          	sw	a4,216(sp)
   122b0:	00022737          	lui	a4,0x22
   122b4:	d2070793          	addi	a5,a4,-736 # 21d20 <__clzdi2+0x90>
   122b8:	02f13c23          	sd	a5,56(sp)
   122bc:	000226b7          	lui	a3,0x22
   122c0:	f886b783          	ld	a5,-120(a3) # 21f88 <blanks.1+0x30>
   122c4:	02031713          	slli	a4,t1,0x20
   122c8:	02075713          	srli	a4,a4,0x20
   122cc:	00170713          	addi	a4,a4,1
   122d0:	02f13823          	sd	a5,48(sp)
   122d4:	0003061b          	sext.w	a2,t1
   122d8:	00eb07b3          	add	a5,s6,a4
   122dc:	04913423          	sd	s1,72(sp)
   122e0:	0b413023          	sd	s4,160(sp)
   122e4:	0a813823          	sd	s0,176(sp)
   122e8:	03813483          	ld	s1,56(sp)
   122ec:	0ac13c23          	sd	a2,184(sp)
   122f0:	0a613423          	sd	t1,168(sp)
   122f4:	00078413          	mv	s0,a5
   122f8:	000b0a13          	mv	s4,s6
   122fc:	00098b93          	mv	s7,s3
   12300:	000b0d13          	mv	s10,s6
   12304:	0140006f          	j	12318 <_vfprintf_r+0x1ed4>
   12308:	00000613          	li	a2,0
   1230c:	00000693          	li	a3,0
   12310:	2000e0ef          	jal	ra,20510 <__eqtf2>
   12314:	5a050663          	beqz	a0,128c0 <_vfprintf_r+0x247c>
   12318:	03013683          	ld	a3,48(sp)
   1231c:	00000613          	li	a2,0
   12320:	000d8513          	mv	a0,s11
   12324:	00090593          	mv	a1,s2
   12328:	4a40e0ef          	jal	ra,207cc <__multf3>
   1232c:	00058913          	mv	s2,a1
   12330:	00050993          	mv	s3,a0
   12334:	4980f0ef          	jal	ra,217cc <__fixtfsi>
   12338:	00050c1b          	sext.w	s8,a0
   1233c:	000c0513          	mv	a0,s8
   12340:	4f40f0ef          	jal	ra,21834 <__floatsitf>
   12344:	00058693          	mv	a3,a1
   12348:	00050613          	mv	a2,a0
   1234c:	00090593          	mv	a1,s2
   12350:	00098513          	mv	a0,s3
   12354:	3c50e0ef          	jal	ra,20f18 <__subtf3>
   12358:	01848733          	add	a4,s1,s8
   1235c:	00074683          	lbu	a3,0(a4)
   12360:	000a0993          	mv	s3,s4
   12364:	001a0a13          	addi	s4,s4,1
   12368:	feda0fa3          	sb	a3,-1(s4)
   1236c:	00050a93          	mv	s5,a0
   12370:	00058b13          	mv	s6,a1
   12374:	00050d93          	mv	s11,a0
   12378:	00058913          	mv	s2,a1
   1237c:	f94416e3          	bne	s0,s4,12308 <_vfprintf_r+0x1ec4>
   12380:	000a0a93          	mv	s5,s4
   12384:	04813483          	ld	s1,72(sp)
   12388:	0a813303          	ld	t1,168(sp)
   1238c:	0b013403          	ld	s0,176(sp)
   12390:	0a013a03          	ld	s4,160(sp)
   12394:	03313823          	sd	s3,48(sp)
   12398:	000d0b13          	mv	s6,s10
   1239c:	000b8993          	mv	s3,s7
   123a0:	00050d13          	mv	s10,a0
   123a4:	00058b93          	mv	s7,a1
   123a8:	fff00d93          	li	s11,-1
   123ac:	000226b7          	lui	a3,0x22
   123b0:	f986b903          	ld	s2,-104(a3) # 21f98 <blanks.1+0x40>
   123b4:	00000613          	li	a2,0
   123b8:	000d0513          	mv	a0,s10
   123bc:	00090693          	mv	a3,s2
   123c0:	000b8593          	mv	a1,s7
   123c4:	04613423          	sd	t1,72(sp)
   123c8:	1ec0e0ef          	jal	ra,205b4 <__getf2>
   123cc:	04813303          	ld	t1,72(sp)
   123d0:	46a04463          	bgtz	a0,12838 <_vfprintf_r+0x23f4>
   123d4:	00000613          	li	a2,0
   123d8:	00090693          	mv	a3,s2
   123dc:	000d0513          	mv	a0,s10
   123e0:	000b8593          	mv	a1,s7
   123e4:	12c0e0ef          	jal	ra,20510 <__eqtf2>
   123e8:	04813303          	ld	t1,72(sp)
   123ec:	00051663          	bnez	a0,123f8 <_vfprintf_r+0x1fb4>
   123f0:	001c7c13          	andi	s8,s8,1
   123f4:	440c1263          	bnez	s8,12838 <_vfprintf_r+0x23f4>
   123f8:	001d8c1b          	addiw	s8,s11,1
   123fc:	018a8c33          	add	s8,s5,s8
   12400:	03000693          	li	a3,48
   12404:	480dc063          	bltz	s11,12884 <_vfprintf_r+0x2440>
   12408:	001a8a93          	addi	s5,s5,1
   1240c:	feda8fa3          	sb	a3,-1(s5)
   12410:	ff5c1ce3          	bne	s8,s5,12408 <_vfprintf_r+0x1fc4>
   12414:	416c07bb          	subw	a5,s8,s6
   12418:	02f13c23          	sd	a5,56(sp)
   1241c:	fdfcfa93          	andi	s5,s9,-33
   12420:	bcdff06f          	j	11fec <_vfprintf_r+0x1ba8>
   12424:	00013583          	ld	a1,0(sp)
   12428:	10010613          	addi	a2,sp,256
   1242c:	00098513          	mv	a0,s3
   12430:	0a4090ef          	jal	ra,1b4d4 <__sprint_r>
   12434:	00050463          	beqz	a0,1243c <_vfprintf_r+0x1ff8>
   12438:	d9dfe06f          	j	111d4 <_vfprintf_r+0xd90>
   1243c:	11013d83          	ld	s11,272(sp)
   12440:	18010413          	addi	s0,sp,384
   12444:	800ff06f          	j	11444 <_vfprintf_r+0x1000>
   12448:	0013091b          	addiw	s2,t1,1
   1244c:	00200693          	li	a3,2
   12450:	b05ff06f          	j	11f54 <_vfprintf_r+0x1b10>
   12454:	00030913          	mv	s2,t1
   12458:	00300693          	li	a3,3
   1245c:	af9ff06f          	j	11f54 <_vfprintf_r+0x1b10>
   12460:	000c0593          	mv	a1,s8
   12464:	000b8513          	mv	a0,s7
   12468:	02613823          	sd	t1,48(sp)
   1246c:	5400f0ef          	jal	ra,219ac <__trunctfdf2>
   12470:	0d810593          	addi	a1,sp,216
   12474:	30c060ef          	jal	ra,18780 <frexp>
   12478:	4440f0ef          	jal	ra,218bc <__extenddftf2>
   1247c:	00022737          	lui	a4,0x22
   12480:	f7873683          	ld	a3,-136(a4) # 21f78 <blanks.1+0x20>
   12484:	00000613          	li	a2,0
   12488:	3440e0ef          	jal	ra,207cc <__multf3>
   1248c:	00000613          	li	a2,0
   12490:	00000693          	li	a3,0
   12494:	00050d93          	mv	s11,a0
   12498:	00058913          	mv	s2,a1
   1249c:	0740e0ef          	jal	ra,20510 <__eqtf2>
   124a0:	03013303          	ld	t1,48(sp)
   124a4:	00051663          	bnez	a0,124b0 <_vfprintf_r+0x206c>
   124a8:	00100713          	li	a4,1
   124ac:	0ce12c23          	sw	a4,216(sp)
   124b0:	00022737          	lui	a4,0x22
   124b4:	d0870793          	addi	a5,a4,-760 # 21d08 <__clzdi2+0x78>
   124b8:	02f13c23          	sd	a5,56(sp)
   124bc:	e01ff06f          	j	122bc <_vfprintf_r+0x1e78>
   124c0:	0e813c03          	ld	s8,232(sp)
   124c4:	0d812703          	lw	a4,216(sp)
   124c8:	416c07bb          	subw	a5,s8,s6
   124cc:	02f13c23          	sd	a5,56(sp)
   124d0:	ffd00693          	li	a3,-3
   124d4:	02e13823          	sd	a4,48(sp)
   124d8:	00d74463          	blt	a4,a3,124e0 <_vfprintf_r+0x209c>
   124dc:	02e35863          	bge	t1,a4,1250c <_vfprintf_r+0x20c8>
   124e0:	fff70d1b          	addiw	s10,a4,-1
   124e4:	ffec8c9b          	addiw	s9,s9,-2
   124e8:	0da12c23          	sw	s10,216(sp)
   124ec:	0ffcf693          	zext.b	a3,s9
   124f0:	00000613          	li	a2,0
   124f4:	b31ff06f          	j	12024 <_vfprintf_r+0x1be0>
   124f8:	0cf14703          	lbu	a4,207(sp)
   124fc:	00000313          	li	t1,0
   12500:	00070463          	beqz	a4,12508 <_vfprintf_r+0x20c4>
   12504:	e58fe06f          	j	10b5c <_vfprintf_r+0x718>
   12508:	97cfe06f          	j	10684 <_vfprintf_r+0x240>
   1250c:	03813783          	ld	a5,56(sp)
   12510:	26f74463          	blt	a4,a5,12778 <_vfprintf_r+0x2334>
   12514:	04013783          	ld	a5,64(sp)
   12518:	00070d13          	mv	s10,a4
   1251c:	0017f613          	andi	a2,a5,1
   12520:	00060663          	beqz	a2,1252c <_vfprintf_r+0x20e8>
   12524:	05813783          	ld	a5,88(sp)
   12528:	00e78d3b          	addw	s10,a5,a4
   1252c:	04013783          	ld	a5,64(sp)
   12530:	4007f613          	andi	a2,a5,1024
   12534:	00060463          	beqz	a2,1253c <_vfprintf_r+0x20f8>
   12538:	3ee04863          	bgtz	a4,12928 <_vfprintf_r+0x24e4>
   1253c:	fffd4813          	not	a6,s10
   12540:	43f85813          	srai	a6,a6,0x3f
   12544:	09013903          	ld	s2,144(sp)
   12548:	010d7833          	and	a6,s10,a6
   1254c:	00080c1b          	sext.w	s8,a6
   12550:	06700c93          	li	s9,103
   12554:	04013423          	sd	zero,72(sp)
   12558:	04013023          	sd	zero,64(sp)
   1255c:	bbdff06f          	j	12118 <_vfprintf_r+0x1cd4>
   12560:	00013c23          	sd	zero,24(sp)
   12564:	fff00713          	li	a4,-1
   12568:	03f71713          	slli	a4,a4,0x3f
   1256c:	02d00793          	li	a5,45
   12570:	00ec4c33          	xor	s8,s8,a4
   12574:	08f13c23          	sd	a5,152(sp)
   12578:	cddff06f          	j	12254 <_vfprintf_r+0x1e10>
   1257c:	04013783          	ld	a5,64(sp)
   12580:	0017f713          	andi	a4,a5,1
   12584:	f2070ee3          	beqz	a4,124c0 <_vfprintf_r+0x207c>
   12588:	012b0d33          	add	s10,s6,s2
   1258c:	04700a93          	li	s5,71
   12590:	a11ff06f          	j	11fa0 <_vfprintf_r+0x1b5c>
   12594:	10010613          	addi	a2,sp,256
   12598:	000b8593          	mv	a1,s7
   1259c:	00098513          	mv	a0,s3
   125a0:	735080ef          	jal	ra,1b4d4 <__sprint_r>
   125a4:	00050463          	beqz	a0,125ac <_vfprintf_r+0x2168>
   125a8:	c2dfe06f          	j	111d4 <_vfprintf_r+0xd90>
   125ac:	00094683          	lbu	a3,0(s2)
   125b0:	11013703          	ld	a4,272(sp)
   125b4:	18010413          	addi	s0,sp,384
   125b8:	01000893          	li	a7,16
   125bc:	00700313          	li	t1,7
   125c0:	00da0a33          	add	s4,s4,a3
   125c4:	815ff06f          	j	11dd8 <_vfprintf_r+0x1994>
   125c8:	07800713          	li	a4,120
   125cc:	c45ff06f          	j	12210 <_vfprintf_r+0x1dcc>
   125d0:	00013583          	ld	a1,0(sp)
   125d4:	10010613          	addi	a2,sp,256
   125d8:	00098513          	mv	a0,s3
   125dc:	6f9080ef          	jal	ra,1b4d4 <__sprint_r>
   125e0:	00050463          	beqz	a0,125e8 <_vfprintf_r+0x21a4>
   125e4:	bf1fe06f          	j	111d4 <_vfprintf_r+0xd90>
   125e8:	0d812683          	lw	a3,216(sp)
   125ec:	11013703          	ld	a4,272(sp)
   125f0:	18010413          	addi	s0,sp,384
   125f4:	ea9fe06f          	j	1149c <_vfprintf_r+0x1058>
   125f8:	02d00793          	li	a5,45
   125fc:	0cf107a3          	sb	a5,207(sp)
   12600:	02d00713          	li	a4,45
   12604:	d8cff06f          	j	11b90 <_vfprintf_r+0x174c>
   12608:	00054683          	lbu	a3,0(a0)
   1260c:	03000713          	li	a4,48
   12610:	00e68863          	beq	a3,a4,12620 <_vfprintf_r+0x21dc>
   12614:	0d812683          	lw	a3,216(sp)
   12618:	00dd0d33          	add	s10,s10,a3
   1261c:	985ff06f          	j	11fa0 <_vfprintf_r+0x1b5c>
   12620:	00000613          	li	a2,0
   12624:	00000693          	li	a3,0
   12628:	000b8513          	mv	a0,s7
   1262c:	000c0593          	mv	a1,s8
   12630:	02613823          	sd	t1,48(sp)
   12634:	6dd0d0ef          	jal	ra,20510 <__eqtf2>
   12638:	03013303          	ld	t1,48(sp)
   1263c:	fc050ce3          	beqz	a0,12614 <_vfprintf_r+0x21d0>
   12640:	00100713          	li	a4,1
   12644:	412706bb          	subw	a3,a4,s2
   12648:	0cd12c23          	sw	a3,216(sp)
   1264c:	00dd0d33          	add	s10,s10,a3
   12650:	951ff06f          	j	11fa0 <_vfprintf_r+0x1b5c>
   12654:	0cf14703          	lbu	a4,207(sp)
   12658:	03513023          	sd	s5,32(sp)
   1265c:	04013423          	sd	zero,72(sp)
   12660:	04013023          	sd	zero,64(sp)
   12664:	02013823          	sd	zero,48(sp)
   12668:	00030c13          	mv	s8,t1
   1266c:	00030d13          	mv	s10,t1
   12670:	00000313          	li	t1,0
   12674:	00070463          	beqz	a4,1267c <_vfprintf_r+0x2238>
   12678:	ce4fe06f          	j	10b5c <_vfprintf_r+0x718>
   1267c:	808fe06f          	j	10684 <_vfprintf_r+0x240>
   12680:	00013583          	ld	a1,0(sp)
   12684:	10010613          	addi	a2,sp,256
   12688:	00098513          	mv	a0,s3
   1268c:	649080ef          	jal	ra,1b4d4 <__sprint_r>
   12690:	00050463          	beqz	a0,12698 <_vfprintf_r+0x2254>
   12694:	b41fe06f          	j	111d4 <_vfprintf_r+0xd90>
   12698:	0d812603          	lw	a2,216(sp)
   1269c:	03813783          	ld	a5,56(sp)
   126a0:	11013703          	ld	a4,272(sp)
   126a4:	18010413          	addi	s0,sp,384
   126a8:	40c7863b          	subw	a2,a5,a2
   126ac:	e3dfe06f          	j	114e8 <_vfprintf_r+0x10a4>
   126b0:	000227b7          	lui	a5,0x22
   126b4:	cf878b13          	addi	s6,a5,-776 # 21cf8 <__clzdi2+0x68>
   126b8:	ce8ff06f          	j	11ba0 <_vfprintf_r+0x175c>
   126bc:	00090d93          	mv	s11,s2
   126c0:	c31fe06f          	j	112f0 <_vfprintf_r+0xeac>
   126c4:	00022f37          	lui	t5,0x22
   126c8:	ff000593          	li	a1,-16
   126cc:	40c00cbb          	negw	s9,a2
   126d0:	f48f0d93          	addi	s11,t5,-184 # 21f48 <zeroes.0>
   126d4:	01000d13          	li	s10,16
   126d8:	00700a93          	li	s5,7
   126dc:	00b64863          	blt	a2,a1,126ec <_vfprintf_r+0x22a8>
   126e0:	1100006f          	j	127f0 <_vfprintf_r+0x23ac>
   126e4:	ff0c8c9b          	addiw	s9,s9,-16
   126e8:	119d5463          	bge	s10,s9,127f0 <_vfprintf_r+0x23ac>
   126ec:	0016869b          	addiw	a3,a3,1
   126f0:	01070713          	addi	a4,a4,16
   126f4:	01b43023          	sd	s11,0(s0)
   126f8:	01a43423          	sd	s10,8(s0)
   126fc:	10e13823          	sd	a4,272(sp)
   12700:	10d12423          	sw	a3,264(sp)
   12704:	01040413          	addi	s0,s0,16
   12708:	fcdadee3          	bge	s5,a3,126e4 <_vfprintf_r+0x22a0>
   1270c:	00013583          	ld	a1,0(sp)
   12710:	10010613          	addi	a2,sp,256
   12714:	00098513          	mv	a0,s3
   12718:	5bd080ef          	jal	ra,1b4d4 <__sprint_r>
   1271c:	00050463          	beqz	a0,12724 <_vfprintf_r+0x22e0>
   12720:	ab5fe06f          	j	111d4 <_vfprintf_r+0xd90>
   12724:	11013703          	ld	a4,272(sp)
   12728:	10812683          	lw	a3,264(sp)
   1272c:	18010413          	addi	s0,sp,384
   12730:	fb5ff06f          	j	126e4 <_vfprintf_r+0x22a0>
   12734:	04013783          	ld	a5,64(sp)
   12738:	0017f713          	andi	a4,a5,1
   1273c:	03013783          	ld	a5,48(sp)
   12740:	00e36733          	or	a4,t1,a4
   12744:	28f05a63          	blez	a5,129d8 <_vfprintf_r+0x2594>
   12748:	26071a63          	bnez	a4,129bc <_vfprintf_r+0x2578>
   1274c:	03013d03          	ld	s10,48(sp)
   12750:	06600c93          	li	s9,102
   12754:	04013783          	ld	a5,64(sp)
   12758:	4007f713          	andi	a4,a5,1024
   1275c:	1c071863          	bnez	a4,1292c <_vfprintf_r+0x24e8>
   12760:	fffd4813          	not	a6,s10
   12764:	43f85813          	srai	a6,a6,0x3f
   12768:	010d7833          	and	a6,s10,a6
   1276c:	09013903          	ld	s2,144(sp)
   12770:	00080c1b          	sext.w	s8,a6
   12774:	de1ff06f          	j	12554 <_vfprintf_r+0x2110>
   12778:	05813783          	ld	a5,88(sp)
   1277c:	03813703          	ld	a4,56(sp)
   12780:	06700c93          	li	s9,103
   12784:	00e78d3b          	addw	s10,a5,a4
   12788:	03013783          	ld	a5,48(sp)
   1278c:	fcf044e3          	bgtz	a5,12754 <_vfprintf_r+0x2310>
   12790:	40fd073b          	subw	a4,s10,a5
   12794:	0017071b          	addiw	a4,a4,1
   12798:	00070d1b          	sext.w	s10,a4
   1279c:	fffd4613          	not	a2,s10
   127a0:	43f65613          	srai	a2,a2,0x3f
   127a4:	00c77733          	and	a4,a4,a2
   127a8:	09013903          	ld	s2,144(sp)
   127ac:	00070c1b          	sext.w	s8,a4
   127b0:	da5ff06f          	j	12554 <_vfprintf_r+0x2110>
   127b4:	fff00793          	li	a5,-1
   127b8:	00f13823          	sd	a5,16(sp)
   127bc:	810fe06f          	j	107cc <_vfprintf_r+0x388>
   127c0:	0e210713          	addi	a4,sp,226
   127c4:	00061863          	bnez	a2,127d4 <_vfprintf_r+0x2390>
   127c8:	03000713          	li	a4,48
   127cc:	0ee10123          	sb	a4,226(sp)
   127d0:	0e310713          	addi	a4,sp,227
   127d4:	20010793          	addi	a5,sp,512
   127d8:	40f706b3          	sub	a3,a4,a5
   127dc:	030d0d1b          	addiw	s10,s10,48
   127e0:	1216879b          	addiw	a5,a3,289
   127e4:	01a70023          	sb	s10,0(a4)
   127e8:	06f13823          	sd	a5,112(sp)
   127ec:	8e1ff06f          	j	120cc <_vfprintf_r+0x1c88>
   127f0:	0016869b          	addiw	a3,a3,1
   127f4:	01970733          	add	a4,a4,s9
   127f8:	01b43023          	sd	s11,0(s0)
   127fc:	01943423          	sd	s9,8(s0)
   12800:	10e13823          	sd	a4,272(sp)
   12804:	10d12423          	sw	a3,264(sp)
   12808:	00700613          	li	a2,7
   1280c:	aed65e63          	bge	a2,a3,11b08 <_vfprintf_r+0x16c4>
   12810:	00013583          	ld	a1,0(sp)
   12814:	10010613          	addi	a2,sp,256
   12818:	00098513          	mv	a0,s3
   1281c:	4b9080ef          	jal	ra,1b4d4 <__sprint_r>
   12820:	00050463          	beqz	a0,12828 <_vfprintf_r+0x23e4>
   12824:	9b1fe06f          	j	111d4 <_vfprintf_r+0xd90>
   12828:	11013703          	ld	a4,272(sp)
   1282c:	10812683          	lw	a3,264(sp)
   12830:	18010413          	addi	s0,sp,384
   12834:	bd0ff06f          	j	11c04 <_vfprintf_r+0x17c0>
   12838:	03013783          	ld	a5,48(sp)
   1283c:	000a8693          	mv	a3,s5
   12840:	0ef13423          	sd	a5,232(sp)
   12844:	03813783          	ld	a5,56(sp)
   12848:	fffac603          	lbu	a2,-1(s5)
   1284c:	00f7c583          	lbu	a1,15(a5)
   12850:	02c59063          	bne	a1,a2,12870 <_vfprintf_r+0x242c>
   12854:	03000513          	li	a0,48
   12858:	fea68fa3          	sb	a0,-1(a3)
   1285c:	0e813683          	ld	a3,232(sp)
   12860:	fff68793          	addi	a5,a3,-1
   12864:	0ef13423          	sd	a5,232(sp)
   12868:	fff6c603          	lbu	a2,-1(a3)
   1286c:	fec586e3          	beq	a1,a2,12858 <_vfprintf_r+0x2414>
   12870:	0016059b          	addiw	a1,a2,1
   12874:	03900513          	li	a0,57
   12878:	0ff5f593          	zext.b	a1,a1
   1287c:	02a60a63          	beq	a2,a0,128b0 <_vfprintf_r+0x246c>
   12880:	feb68fa3          	sb	a1,-1(a3)
   12884:	000a8c13          	mv	s8,s5
   12888:	b8dff06f          	j	12414 <_vfprintf_r+0x1fd0>
   1288c:	0013059b          	addiw	a1,t1,1
   12890:	00098513          	mv	a0,s3
   12894:	00613c23          	sd	t1,24(sp)
   12898:	238040ef          	jal	ra,16ad0 <_malloc_r>
   1289c:	01813303          	ld	t1,24(sp)
   128a0:	00050b13          	mv	s6,a0
   128a4:	1a050e63          	beqz	a0,12a60 <_vfprintf_r+0x261c>
   128a8:	00a13c23          	sd	a0,24(sp)
   128ac:	98dff06f          	j	12238 <_vfprintf_r+0x1df4>
   128b0:	03813783          	ld	a5,56(sp)
   128b4:	00a7c583          	lbu	a1,10(a5)
   128b8:	feb68fa3          	sb	a1,-1(a3)
   128bc:	fc9ff06f          	j	12884 <_vfprintf_r+0x2440>
   128c0:	0b813603          	ld	a2,184(sp)
   128c4:	03313823          	sd	s3,48(sp)
   128c8:	000b8993          	mv	s3,s7
   128cc:	000b0b93          	mv	s7,s6
   128d0:	000d0b13          	mv	s6,s10
   128d4:	00cb063b          	addw	a2,s6,a2
   128d8:	000a8d13          	mv	s10,s5
   128dc:	000a0a93          	mv	s5,s4
   128e0:	04813483          	ld	s1,72(sp)
   128e4:	0a813303          	ld	t1,168(sp)
   128e8:	0b013403          	ld	s0,176(sp)
   128ec:	0a013a03          	ld	s4,160(sp)
   128f0:	41560dbb          	subw	s11,a2,s5
   128f4:	ab9ff06f          	j	123ac <_vfprintf_r+0x1f68>
   128f8:	00030463          	beqz	t1,12900 <_vfprintf_r+0x24bc>
   128fc:	830fe06f          	j	1092c <_vfprintf_r+0x4e8>
   12900:	00100313          	li	t1,1
   12904:	828fe06f          	j	1092c <_vfprintf_r+0x4e8>
   12908:	00600313          	li	t1,6
   1290c:	820fe06f          	j	1092c <_vfprintf_r+0x4e8>
   12910:	04013783          	ld	a5,64(sp)
   12914:	0017f613          	andi	a2,a5,1
   12918:	fc060a63          	beqz	a2,120ec <_vfprintf_r+0x1ca8>
   1291c:	fc8ff06f          	j	120e4 <_vfprintf_r+0x1ca0>
   12920:	00f72023          	sw	a5,0(a4)
   12924:	c94fe06f          	j	10db8 <_vfprintf_r+0x974>
   12928:	06700c93          	li	s9,103
   1292c:	07813683          	ld	a3,120(sp)
   12930:	0ff00613          	li	a2,255
   12934:	0006c703          	lbu	a4,0(a3)
   12938:	10c70e63          	beq	a4,a2,12a54 <_vfprintf_r+0x2610>
   1293c:	03013783          	ld	a5,48(sp)
   12940:	00000813          	li	a6,0
   12944:	00000513          	li	a0,0
   12948:	0ff00593          	li	a1,255
   1294c:	0007061b          	sext.w	a2,a4
   12950:	00f75e63          	bge	a4,a5,1296c <_vfprintf_r+0x2528>
   12954:	0016c703          	lbu	a4,1(a3)
   12958:	40c787bb          	subw	a5,a5,a2
   1295c:	04070a63          	beqz	a4,129b0 <_vfprintf_r+0x256c>
   12960:	0015051b          	addiw	a0,a0,1
   12964:	00168693          	addi	a3,a3,1
   12968:	feb712e3          	bne	a4,a1,1294c <_vfprintf_r+0x2508>
   1296c:	02f13823          	sd	a5,48(sp)
   12970:	06d13c23          	sd	a3,120(sp)
   12974:	04a13023          	sd	a0,64(sp)
   12978:	05013423          	sd	a6,72(sp)
   1297c:	04013703          	ld	a4,64(sp)
   12980:	04813783          	ld	a5,72(sp)
   12984:	08013583          	ld	a1,128(sp)
   12988:	00e7853b          	addw	a0,a5,a4
   1298c:	1e00f0ef          	jal	ra,21b6c <__muldi3>
   12990:	01a5073b          	addw	a4,a0,s10
   12994:	00070d1b          	sext.w	s10,a4
   12998:	fffd4613          	not	a2,s10
   1299c:	43f65613          	srai	a2,a2,0x3f
   129a0:	00c77733          	and	a4,a4,a2
   129a4:	09013903          	ld	s2,144(sp)
   129a8:	00070c1b          	sext.w	s8,a4
   129ac:	f6cff06f          	j	12118 <_vfprintf_r+0x1cd4>
   129b0:	0006c703          	lbu	a4,0(a3)
   129b4:	0018081b          	addiw	a6,a6,1
   129b8:	fb1ff06f          	j	12968 <_vfprintf_r+0x2524>
   129bc:	05813703          	ld	a4,88(sp)
   129c0:	06600c93          	li	s9,102
   129c4:	00f706bb          	addw	a3,a4,a5
   129c8:	00668d3b          	addw	s10,a3,t1
   129cc:	d89ff06f          	j	12754 <_vfprintf_r+0x2310>
   129d0:	07000693          	li	a3,112
   129d4:	e4cff06f          	j	12020 <_vfprintf_r+0x1bdc>
   129d8:	00071c63          	bnez	a4,129f0 <_vfprintf_r+0x25ac>
   129dc:	09013903          	ld	s2,144(sp)
   129e0:	00100c13          	li	s8,1
   129e4:	06600c93          	li	s9,102
   129e8:	00100d13          	li	s10,1
   129ec:	b69ff06f          	j	12554 <_vfprintf_r+0x2110>
   129f0:	05813783          	ld	a5,88(sp)
   129f4:	09013903          	ld	s2,144(sp)
   129f8:	06600c93          	li	s9,102
   129fc:	0017871b          	addiw	a4,a5,1
   12a00:	0067073b          	addw	a4,a4,t1
   12a04:	00070d1b          	sext.w	s10,a4
   12a08:	fffd4613          	not	a2,s10
   12a0c:	43f65613          	srai	a2,a2,0x3f
   12a10:	00c77733          	and	a4,a4,a2
   12a14:	00070c1b          	sext.w	s8,a4
   12a18:	b3dff06f          	j	12554 <_vfprintf_r+0x2110>
   12a1c:	02013683          	ld	a3,32(sp)
   12a20:	0006a703          	lw	a4,0(a3)
   12a24:	00868693          	addi	a3,a3,8
   12a28:	00070313          	mv	t1,a4
   12a2c:	00075463          	bgez	a4,12a34 <_vfprintf_r+0x25f0>
   12a30:	fff00313          	li	t1,-1
   12a34:	0014ce03          	lbu	t3,1(s1)
   12a38:	00030a9b          	sext.w	s5,t1
   12a3c:	02d13023          	sd	a3,32(sp)
   12a40:	00078493          	mv	s1,a5
   12a44:	badfd06f          	j	105f0 <_vfprintf_r+0x1ac>
   12a48:	00200793          	li	a5,2
   12a4c:	06f13823          	sd	a5,112(sp)
   12a50:	e7cff06f          	j	120cc <_vfprintf_r+0x1c88>
   12a54:	04013423          	sd	zero,72(sp)
   12a58:	04013023          	sd	zero,64(sp)
   12a5c:	f21ff06f          	j	1297c <_vfprintf_r+0x2538>
   12a60:	00013703          	ld	a4,0(sp)
   12a64:	01075783          	lhu	a5,16(a4)
   12a68:	0407e793          	ori	a5,a5,64
   12a6c:	00f71823          	sh	a5,16(a4)
   12a70:	d49fd06f          	j	107b8 <_vfprintf_r+0x374>

0000000000012a74 <vfprintf>:
   12a74:	00050793          	mv	a5,a0
   12a78:	7581b503          	ld	a0,1880(gp) # 24d60 <_impure_ptr>
   12a7c:	00060693          	mv	a3,a2
   12a80:	00058613          	mv	a2,a1
   12a84:	00078593          	mv	a1,a5
   12a88:	9bdfd06f          	j	10444 <_vfprintf_r>

0000000000012a8c <__sbprintf>:
   12a8c:	01059783          	lh	a5,16(a1)
   12a90:	0125d703          	lhu	a4,18(a1)
   12a94:	0ac5a303          	lw	t1,172(a1)
   12a98:	ffd7f793          	andi	a5,a5,-3
   12a9c:	0107979b          	slliw	a5,a5,0x10
   12aa0:	0305b883          	ld	a7,48(a1)
   12aa4:	0405b803          	ld	a6,64(a1)
   12aa8:	0107171b          	slliw	a4,a4,0x10
   12aac:	0107d79b          	srliw	a5,a5,0x10
   12ab0:	b3010113          	addi	sp,sp,-1232
   12ab4:	00e7e7b3          	or	a5,a5,a4
   12ab8:	4c813023          	sd	s0,1216(sp)
   12abc:	40000713          	li	a4,1024
   12ac0:	00f12823          	sw	a5,16(sp)
   12ac4:	00058413          	mv	s0,a1
   12ac8:	0b010793          	addi	a5,sp,176
   12acc:	00010593          	mv	a1,sp
   12ad0:	4a913c23          	sd	s1,1208(sp)
   12ad4:	4b213823          	sd	s2,1200(sp)
   12ad8:	4c113423          	sd	ra,1224(sp)
   12adc:	00050913          	mv	s2,a0
   12ae0:	0a612623          	sw	t1,172(sp)
   12ae4:	03113823          	sd	a7,48(sp)
   12ae8:	05013023          	sd	a6,64(sp)
   12aec:	00f13023          	sd	a5,0(sp)
   12af0:	00f13c23          	sd	a5,24(sp)
   12af4:	00e12623          	sw	a4,12(sp)
   12af8:	02e12023          	sw	a4,32(sp)
   12afc:	02012423          	sw	zero,40(sp)
   12b00:	945fd0ef          	jal	ra,10444 <_vfprintf_r>
   12b04:	00050493          	mv	s1,a0
   12b08:	02055c63          	bgez	a0,12b40 <__sbprintf+0xb4>
   12b0c:	01015783          	lhu	a5,16(sp)
   12b10:	0407f793          	andi	a5,a5,64
   12b14:	00078863          	beqz	a5,12b24 <__sbprintf+0x98>
   12b18:	01045783          	lhu	a5,16(s0)
   12b1c:	0407e793          	ori	a5,a5,64
   12b20:	00f41823          	sh	a5,16(s0)
   12b24:	4c813083          	ld	ra,1224(sp)
   12b28:	4c013403          	ld	s0,1216(sp)
   12b2c:	4b013903          	ld	s2,1200(sp)
   12b30:	00048513          	mv	a0,s1
   12b34:	4b813483          	ld	s1,1208(sp)
   12b38:	4d010113          	addi	sp,sp,1232
   12b3c:	00008067          	ret
   12b40:	00010593          	mv	a1,sp
   12b44:	00090513          	mv	a0,s2
   12b48:	4c4000ef          	jal	ra,1300c <_fflush_r>
   12b4c:	fc0500e3          	beqz	a0,12b0c <__sbprintf+0x80>
   12b50:	fff00493          	li	s1,-1
   12b54:	fb9ff06f          	j	12b0c <__sbprintf+0x80>

0000000000012b58 <__swsetup_r>:
   12b58:	7581b783          	ld	a5,1880(gp) # 24d60 <_impure_ptr>
   12b5c:	fe010113          	addi	sp,sp,-32
   12b60:	00813823          	sd	s0,16(sp)
   12b64:	00913423          	sd	s1,8(sp)
   12b68:	00113c23          	sd	ra,24(sp)
   12b6c:	00050493          	mv	s1,a0
   12b70:	00058413          	mv	s0,a1
   12b74:	00078663          	beqz	a5,12b80 <__swsetup_r+0x28>
   12b78:	0507a703          	lw	a4,80(a5)
   12b7c:	08070063          	beqz	a4,12bfc <__swsetup_r+0xa4>
   12b80:	01041783          	lh	a5,16(s0)
   12b84:	0087f713          	andi	a4,a5,8
   12b88:	08070463          	beqz	a4,12c10 <__swsetup_r+0xb8>
   12b8c:	01843703          	ld	a4,24(s0)
   12b90:	0a070063          	beqz	a4,12c30 <__swsetup_r+0xd8>
   12b94:	0017f693          	andi	a3,a5,1
   12b98:	02068863          	beqz	a3,12bc8 <__swsetup_r+0x70>
   12b9c:	02042683          	lw	a3,32(s0)
   12ba0:	00042623          	sw	zero,12(s0)
   12ba4:	00000513          	li	a0,0
   12ba8:	40d006bb          	negw	a3,a3
   12bac:	02d42423          	sw	a3,40(s0)
   12bb0:	02070a63          	beqz	a4,12be4 <__swsetup_r+0x8c>
   12bb4:	01813083          	ld	ra,24(sp)
   12bb8:	01013403          	ld	s0,16(sp)
   12bbc:	00813483          	ld	s1,8(sp)
   12bc0:	02010113          	addi	sp,sp,32
   12bc4:	00008067          	ret
   12bc8:	0027f693          	andi	a3,a5,2
   12bcc:	00000613          	li	a2,0
   12bd0:	00069463          	bnez	a3,12bd8 <__swsetup_r+0x80>
   12bd4:	02042603          	lw	a2,32(s0)
   12bd8:	00c42623          	sw	a2,12(s0)
   12bdc:	00000513          	li	a0,0
   12be0:	fc071ae3          	bnez	a4,12bb4 <__swsetup_r+0x5c>
   12be4:	0807f713          	andi	a4,a5,128
   12be8:	fc0706e3          	beqz	a4,12bb4 <__swsetup_r+0x5c>
   12bec:	0407e793          	ori	a5,a5,64
   12bf0:	00f41823          	sh	a5,16(s0)
   12bf4:	fff00513          	li	a0,-1
   12bf8:	fbdff06f          	j	12bb4 <__swsetup_r+0x5c>
   12bfc:	00078513          	mv	a0,a5
   12c00:	039000ef          	jal	ra,13438 <__sinit>
   12c04:	01041783          	lh	a5,16(s0)
   12c08:	0087f713          	andi	a4,a5,8
   12c0c:	f80710e3          	bnez	a4,12b8c <__swsetup_r+0x34>
   12c10:	0107f713          	andi	a4,a5,16
   12c14:	06070a63          	beqz	a4,12c88 <__swsetup_r+0x130>
   12c18:	0047f713          	andi	a4,a5,4
   12c1c:	02071c63          	bnez	a4,12c54 <__swsetup_r+0xfc>
   12c20:	01843703          	ld	a4,24(s0)
   12c24:	0087e793          	ori	a5,a5,8
   12c28:	00f41823          	sh	a5,16(s0)
   12c2c:	f60714e3          	bnez	a4,12b94 <__swsetup_r+0x3c>
   12c30:	2807f693          	andi	a3,a5,640
   12c34:	20000613          	li	a2,512
   12c38:	f4c68ee3          	beq	a3,a2,12b94 <__swsetup_r+0x3c>
   12c3c:	00040593          	mv	a1,s0
   12c40:	00048513          	mv	a0,s1
   12c44:	425030ef          	jal	ra,16868 <__smakebuf_r>
   12c48:	01041783          	lh	a5,16(s0)
   12c4c:	01843703          	ld	a4,24(s0)
   12c50:	f45ff06f          	j	12b94 <__swsetup_r+0x3c>
   12c54:	05843583          	ld	a1,88(s0)
   12c58:	00058e63          	beqz	a1,12c74 <__swsetup_r+0x11c>
   12c5c:	07440713          	addi	a4,s0,116
   12c60:	00e58863          	beq	a1,a4,12c70 <__swsetup_r+0x118>
   12c64:	00048513          	mv	a0,s1
   12c68:	1a9000ef          	jal	ra,13610 <_free_r>
   12c6c:	01041783          	lh	a5,16(s0)
   12c70:	04043c23          	sd	zero,88(s0)
   12c74:	01843703          	ld	a4,24(s0)
   12c78:	fdb7f793          	andi	a5,a5,-37
   12c7c:	00042423          	sw	zero,8(s0)
   12c80:	00e43023          	sd	a4,0(s0)
   12c84:	fa1ff06f          	j	12c24 <__swsetup_r+0xcc>
   12c88:	00900713          	li	a4,9
   12c8c:	00e4a023          	sw	a4,0(s1)
   12c90:	0407e793          	ori	a5,a5,64
   12c94:	f5dff06f          	j	12bf0 <__swsetup_r+0x98>

0000000000012c98 <__call_exitprocs>:
   12c98:	fb010113          	addi	sp,sp,-80
   12c9c:	03413023          	sd	s4,32(sp)
   12ca0:	7481ba03          	ld	s4,1864(gp) # 24d50 <_global_impure_ptr>
   12ca4:	03213823          	sd	s2,48(sp)
   12ca8:	04113423          	sd	ra,72(sp)
   12cac:	1f8a3903          	ld	s2,504(s4)
   12cb0:	04813023          	sd	s0,64(sp)
   12cb4:	02913c23          	sd	s1,56(sp)
   12cb8:	03313423          	sd	s3,40(sp)
   12cbc:	01513c23          	sd	s5,24(sp)
   12cc0:	01613823          	sd	s6,16(sp)
   12cc4:	01713423          	sd	s7,8(sp)
   12cc8:	01813023          	sd	s8,0(sp)
   12ccc:	04090063          	beqz	s2,12d0c <__call_exitprocs+0x74>
   12cd0:	00050b13          	mv	s6,a0
   12cd4:	00058b93          	mv	s7,a1
   12cd8:	00100a93          	li	s5,1
   12cdc:	fff00993          	li	s3,-1
   12ce0:	00892483          	lw	s1,8(s2)
   12ce4:	fff4841b          	addiw	s0,s1,-1
   12ce8:	02044263          	bltz	s0,12d0c <__call_exitprocs+0x74>
   12cec:	00349493          	slli	s1,s1,0x3
   12cf0:	009904b3          	add	s1,s2,s1
   12cf4:	040b8463          	beqz	s7,12d3c <__call_exitprocs+0xa4>
   12cf8:	2084b783          	ld	a5,520(s1)
   12cfc:	05778063          	beq	a5,s7,12d3c <__call_exitprocs+0xa4>
   12d00:	fff4041b          	addiw	s0,s0,-1
   12d04:	ff848493          	addi	s1,s1,-8
   12d08:	ff3416e3          	bne	s0,s3,12cf4 <__call_exitprocs+0x5c>
   12d0c:	04813083          	ld	ra,72(sp)
   12d10:	04013403          	ld	s0,64(sp)
   12d14:	03813483          	ld	s1,56(sp)
   12d18:	03013903          	ld	s2,48(sp)
   12d1c:	02813983          	ld	s3,40(sp)
   12d20:	02013a03          	ld	s4,32(sp)
   12d24:	01813a83          	ld	s5,24(sp)
   12d28:	01013b03          	ld	s6,16(sp)
   12d2c:	00813b83          	ld	s7,8(sp)
   12d30:	00013c03          	ld	s8,0(sp)
   12d34:	05010113          	addi	sp,sp,80
   12d38:	00008067          	ret
   12d3c:	00892783          	lw	a5,8(s2)
   12d40:	0084b703          	ld	a4,8(s1)
   12d44:	fff7879b          	addiw	a5,a5,-1
   12d48:	06878263          	beq	a5,s0,12dac <__call_exitprocs+0x114>
   12d4c:	0004b423          	sd	zero,8(s1)
   12d50:	fa0708e3          	beqz	a4,12d00 <__call_exitprocs+0x68>
   12d54:	31092783          	lw	a5,784(s2)
   12d58:	008a96bb          	sllw	a3,s5,s0
   12d5c:	00892c03          	lw	s8,8(s2)
   12d60:	00d7f7b3          	and	a5,a5,a3
   12d64:	0007879b          	sext.w	a5,a5
   12d68:	02079263          	bnez	a5,12d8c <__call_exitprocs+0xf4>
   12d6c:	000700e7          	jalr	a4
   12d70:	00892703          	lw	a4,8(s2)
   12d74:	1f8a3783          	ld	a5,504(s4)
   12d78:	01871463          	bne	a4,s8,12d80 <__call_exitprocs+0xe8>
   12d7c:	f92782e3          	beq	a5,s2,12d00 <__call_exitprocs+0x68>
   12d80:	f80786e3          	beqz	a5,12d0c <__call_exitprocs+0x74>
   12d84:	00078913          	mv	s2,a5
   12d88:	f59ff06f          	j	12ce0 <__call_exitprocs+0x48>
   12d8c:	31492783          	lw	a5,788(s2)
   12d90:	1084b583          	ld	a1,264(s1)
   12d94:	00d7f7b3          	and	a5,a5,a3
   12d98:	0007879b          	sext.w	a5,a5
   12d9c:	00079c63          	bnez	a5,12db4 <__call_exitprocs+0x11c>
   12da0:	000b0513          	mv	a0,s6
   12da4:	000700e7          	jalr	a4
   12da8:	fc9ff06f          	j	12d70 <__call_exitprocs+0xd8>
   12dac:	00892423          	sw	s0,8(s2)
   12db0:	fa1ff06f          	j	12d50 <__call_exitprocs+0xb8>
   12db4:	00058513          	mv	a0,a1
   12db8:	000700e7          	jalr	a4
   12dbc:	fb5ff06f          	j	12d70 <__call_exitprocs+0xd8>

0000000000012dc0 <__sflush_r>:
   12dc0:	01059783          	lh	a5,16(a1)
   12dc4:	fd010113          	addi	sp,sp,-48
   12dc8:	02813023          	sd	s0,32(sp)
   12dcc:	01313423          	sd	s3,8(sp)
   12dd0:	02113423          	sd	ra,40(sp)
   12dd4:	00913c23          	sd	s1,24(sp)
   12dd8:	01213823          	sd	s2,16(sp)
   12ddc:	0087f713          	andi	a4,a5,8
   12de0:	00058413          	mv	s0,a1
   12de4:	00050993          	mv	s3,a0
   12de8:	12071263          	bnez	a4,12f0c <__sflush_r+0x14c>
   12dec:	00001737          	lui	a4,0x1
   12df0:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8e8>
   12df4:	0085a683          	lw	a3,8(a1)
   12df8:	00e7e733          	or	a4,a5,a4
   12dfc:	00e59823          	sh	a4,16(a1)
   12e00:	18d05863          	blez	a3,12f90 <__sflush_r+0x1d0>
   12e04:	04843803          	ld	a6,72(s0)
   12e08:	0e080263          	beqz	a6,12eec <__sflush_r+0x12c>
   12e0c:	00c7d793          	srli	a5,a5,0xc
   12e10:	0009a483          	lw	s1,0(s3)
   12e14:	0017f793          	andi	a5,a5,1
   12e18:	0009a023          	sw	zero,0(s3)
   12e1c:	03043583          	ld	a1,48(s0)
   12e20:	18079063          	bnez	a5,12fa0 <__sflush_r+0x1e0>
   12e24:	00000613          	li	a2,0
   12e28:	00100693          	li	a3,1
   12e2c:	00098513          	mv	a0,s3
   12e30:	000800e7          	jalr	a6
   12e34:	fff00793          	li	a5,-1
   12e38:	00050613          	mv	a2,a0
   12e3c:	1af50063          	beq	a0,a5,12fdc <__sflush_r+0x21c>
   12e40:	01041703          	lh	a4,16(s0)
   12e44:	04843803          	ld	a6,72(s0)
   12e48:	03043583          	ld	a1,48(s0)
   12e4c:	00477713          	andi	a4,a4,4
   12e50:	00070e63          	beqz	a4,12e6c <__sflush_r+0xac>
   12e54:	00842703          	lw	a4,8(s0)
   12e58:	05843783          	ld	a5,88(s0)
   12e5c:	40e60633          	sub	a2,a2,a4
   12e60:	00078663          	beqz	a5,12e6c <__sflush_r+0xac>
   12e64:	07042783          	lw	a5,112(s0)
   12e68:	40f60633          	sub	a2,a2,a5
   12e6c:	00000693          	li	a3,0
   12e70:	00098513          	mv	a0,s3
   12e74:	000800e7          	jalr	a6
   12e78:	fff00793          	li	a5,-1
   12e7c:	12f51663          	bne	a0,a5,12fa8 <__sflush_r+0x1e8>
   12e80:	0009a683          	lw	a3,0(s3)
   12e84:	01d00793          	li	a5,29
   12e88:	0cd7ee63          	bltu	a5,a3,12f64 <__sflush_r+0x1a4>
   12e8c:	dfc00737          	lui	a4,0xdfc00
   12e90:	ffe70713          	addi	a4,a4,-2 # ffffffffdfbffffe <__BSS_END__+0xffffffffdfbdb1f6>
   12e94:	40d75733          	sra	a4,a4,a3
   12e98:	00177713          	andi	a4,a4,1
   12e9c:	01041783          	lh	a5,16(s0)
   12ea0:	0c071463          	bnez	a4,12f68 <__sflush_r+0x1a8>
   12ea4:	01843603          	ld	a2,24(s0)
   12ea8:	fffff737          	lui	a4,0xfffff
   12eac:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffda9f7>
   12eb0:	00e7f733          	and	a4,a5,a4
   12eb4:	00c7d793          	srli	a5,a5,0xc
   12eb8:	00e41823          	sh	a4,16(s0)
   12ebc:	00042423          	sw	zero,8(s0)
   12ec0:	00c43023          	sd	a2,0(s0)
   12ec4:	0017f793          	andi	a5,a5,1
   12ec8:	12079c63          	bnez	a5,13000 <__sflush_r+0x240>
   12ecc:	05843583          	ld	a1,88(s0)
   12ed0:	0099a023          	sw	s1,0(s3)
   12ed4:	00058c63          	beqz	a1,12eec <__sflush_r+0x12c>
   12ed8:	07440793          	addi	a5,s0,116
   12edc:	00f58663          	beq	a1,a5,12ee8 <__sflush_r+0x128>
   12ee0:	00098513          	mv	a0,s3
   12ee4:	72c000ef          	jal	ra,13610 <_free_r>
   12ee8:	04043c23          	sd	zero,88(s0)
   12eec:	00000513          	li	a0,0
   12ef0:	02813083          	ld	ra,40(sp)
   12ef4:	02013403          	ld	s0,32(sp)
   12ef8:	01813483          	ld	s1,24(sp)
   12efc:	01013903          	ld	s2,16(sp)
   12f00:	00813983          	ld	s3,8(sp)
   12f04:	03010113          	addi	sp,sp,48
   12f08:	00008067          	ret
   12f0c:	0185b903          	ld	s2,24(a1)
   12f10:	fc090ee3          	beqz	s2,12eec <__sflush_r+0x12c>
   12f14:	0005b483          	ld	s1,0(a1)
   12f18:	0037f793          	andi	a5,a5,3
   12f1c:	0125b023          	sd	s2,0(a1)
   12f20:	412484bb          	subw	s1,s1,s2
   12f24:	00000713          	li	a4,0
   12f28:	00079463          	bnez	a5,12f30 <__sflush_r+0x170>
   12f2c:	0205a703          	lw	a4,32(a1)
   12f30:	00e42623          	sw	a4,12(s0)
   12f34:	00904863          	bgtz	s1,12f44 <__sflush_r+0x184>
   12f38:	fb5ff06f          	j	12eec <__sflush_r+0x12c>
   12f3c:	00a90933          	add	s2,s2,a0
   12f40:	fa9056e3          	blez	s1,12eec <__sflush_r+0x12c>
   12f44:	04043783          	ld	a5,64(s0)
   12f48:	03043583          	ld	a1,48(s0)
   12f4c:	00048693          	mv	a3,s1
   12f50:	00090613          	mv	a2,s2
   12f54:	00098513          	mv	a0,s3
   12f58:	000780e7          	jalr	a5
   12f5c:	40a484bb          	subw	s1,s1,a0
   12f60:	fca04ee3          	bgtz	a0,12f3c <__sflush_r+0x17c>
   12f64:	01041783          	lh	a5,16(s0)
   12f68:	0407e793          	ori	a5,a5,64
   12f6c:	02813083          	ld	ra,40(sp)
   12f70:	00f41823          	sh	a5,16(s0)
   12f74:	02013403          	ld	s0,32(sp)
   12f78:	01813483          	ld	s1,24(sp)
   12f7c:	01013903          	ld	s2,16(sp)
   12f80:	00813983          	ld	s3,8(sp)
   12f84:	fff00513          	li	a0,-1
   12f88:	03010113          	addi	sp,sp,48
   12f8c:	00008067          	ret
   12f90:	0705a683          	lw	a3,112(a1)
   12f94:	e6d048e3          	bgtz	a3,12e04 <__sflush_r+0x44>
   12f98:	00000513          	li	a0,0
   12f9c:	f55ff06f          	j	12ef0 <__sflush_r+0x130>
   12fa0:	09043603          	ld	a2,144(s0)
   12fa4:	ea9ff06f          	j	12e4c <__sflush_r+0x8c>
   12fa8:	01041783          	lh	a5,16(s0)
   12fac:	01843683          	ld	a3,24(s0)
   12fb0:	fffff737          	lui	a4,0xfffff
   12fb4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffda9f7>
   12fb8:	00e7f733          	and	a4,a5,a4
   12fbc:	00c7d793          	srli	a5,a5,0xc
   12fc0:	00e41823          	sh	a4,16(s0)
   12fc4:	00042423          	sw	zero,8(s0)
   12fc8:	00d43023          	sd	a3,0(s0)
   12fcc:	0017f793          	andi	a5,a5,1
   12fd0:	ee078ee3          	beqz	a5,12ecc <__sflush_r+0x10c>
   12fd4:	08a43823          	sd	a0,144(s0)
   12fd8:	ef5ff06f          	j	12ecc <__sflush_r+0x10c>
   12fdc:	0009a783          	lw	a5,0(s3)
   12fe0:	e60780e3          	beqz	a5,12e40 <__sflush_r+0x80>
   12fe4:	01d00713          	li	a4,29
   12fe8:	00e78663          	beq	a5,a4,12ff4 <__sflush_r+0x234>
   12fec:	01600713          	li	a4,22
   12ff0:	f6e79ae3          	bne	a5,a4,12f64 <__sflush_r+0x1a4>
   12ff4:	0099a023          	sw	s1,0(s3)
   12ff8:	00000513          	li	a0,0
   12ffc:	ef5ff06f          	j	12ef0 <__sflush_r+0x130>
   13000:	ec0696e3          	bnez	a3,12ecc <__sflush_r+0x10c>
   13004:	08a43823          	sd	a0,144(s0)
   13008:	ec5ff06f          	j	12ecc <__sflush_r+0x10c>

000000000001300c <_fflush_r>:
   1300c:	fe010113          	addi	sp,sp,-32
   13010:	00813823          	sd	s0,16(sp)
   13014:	00113c23          	sd	ra,24(sp)
   13018:	00050413          	mv	s0,a0
   1301c:	00050663          	beqz	a0,13028 <_fflush_r+0x1c>
   13020:	05052783          	lw	a5,80(a0)
   13024:	02078063          	beqz	a5,13044 <_fflush_r+0x38>
   13028:	01059783          	lh	a5,16(a1)
   1302c:	02079663          	bnez	a5,13058 <_fflush_r+0x4c>
   13030:	01813083          	ld	ra,24(sp)
   13034:	01013403          	ld	s0,16(sp)
   13038:	00000513          	li	a0,0
   1303c:	02010113          	addi	sp,sp,32
   13040:	00008067          	ret
   13044:	00b13423          	sd	a1,8(sp)
   13048:	3f0000ef          	jal	ra,13438 <__sinit>
   1304c:	00813583          	ld	a1,8(sp)
   13050:	01059783          	lh	a5,16(a1)
   13054:	fc078ee3          	beqz	a5,13030 <_fflush_r+0x24>
   13058:	00040513          	mv	a0,s0
   1305c:	01013403          	ld	s0,16(sp)
   13060:	01813083          	ld	ra,24(sp)
   13064:	02010113          	addi	sp,sp,32
   13068:	d59ff06f          	j	12dc0 <__sflush_r>

000000000001306c <fflush>:
   1306c:	06050663          	beqz	a0,130d8 <fflush+0x6c>
   13070:	fe010113          	addi	sp,sp,-32
   13074:	00813823          	sd	s0,16(sp)
   13078:	00050413          	mv	s0,a0
   1307c:	7581b503          	ld	a0,1880(gp) # 24d60 <_impure_ptr>
   13080:	00113c23          	sd	ra,24(sp)
   13084:	00050663          	beqz	a0,13090 <fflush+0x24>
   13088:	05052783          	lw	a5,80(a0)
   1308c:	02078a63          	beqz	a5,130c0 <fflush+0x54>
   13090:	01041783          	lh	a5,16(s0)
   13094:	00079c63          	bnez	a5,130ac <fflush+0x40>
   13098:	01813083          	ld	ra,24(sp)
   1309c:	01013403          	ld	s0,16(sp)
   130a0:	00000513          	li	a0,0
   130a4:	02010113          	addi	sp,sp,32
   130a8:	00008067          	ret
   130ac:	00040593          	mv	a1,s0
   130b0:	01013403          	ld	s0,16(sp)
   130b4:	01813083          	ld	ra,24(sp)
   130b8:	02010113          	addi	sp,sp,32
   130bc:	d05ff06f          	j	12dc0 <__sflush_r>
   130c0:	00a13423          	sd	a0,8(sp)
   130c4:	374000ef          	jal	ra,13438 <__sinit>
   130c8:	01041783          	lh	a5,16(s0)
   130cc:	00813503          	ld	a0,8(sp)
   130d0:	fc0784e3          	beqz	a5,13098 <fflush+0x2c>
   130d4:	fd9ff06f          	j	130ac <fflush+0x40>
   130d8:	7481b503          	ld	a0,1864(gp) # 24d50 <_global_impure_ptr>
   130dc:	000135b7          	lui	a1,0x13
   130e0:	00c58593          	addi	a1,a1,12 # 1300c <_fflush_r>
   130e4:	10d0006f          	j	139f0 <_fwalk_reent>

00000000000130e8 <__fp_lock>:
   130e8:	00000513          	li	a0,0
   130ec:	00008067          	ret

00000000000130f0 <_cleanup_r>:
   130f0:	0001d5b7          	lui	a1,0x1d
   130f4:	bec58593          	addi	a1,a1,-1044 # 1cbec <_fclose_r>
   130f8:	0f90006f          	j	139f0 <_fwalk_reent>

00000000000130fc <__fp_unlock>:
   130fc:	00000513          	li	a0,0
   13100:	00008067          	ret

0000000000013104 <__sinit.part.0>:
   13104:	fc010113          	addi	sp,sp,-64
   13108:	000137b7          	lui	a5,0x13
   1310c:	02113c23          	sd	ra,56(sp)
   13110:	02813823          	sd	s0,48(sp)
   13114:	02913423          	sd	s1,40(sp)
   13118:	03213023          	sd	s2,32(sp)
   1311c:	01313c23          	sd	s3,24(sp)
   13120:	01413823          	sd	s4,16(sp)
   13124:	01513423          	sd	s5,8(sp)
   13128:	01613023          	sd	s6,0(sp)
   1312c:	00853403          	ld	s0,8(a0)
   13130:	0f078793          	addi	a5,a5,240 # 130f0 <_cleanup_r>
   13134:	04f53c23          	sd	a5,88(a0)
   13138:	53850713          	addi	a4,a0,1336
   1313c:	00300793          	li	a5,3
   13140:	52e53823          	sd	a4,1328(a0)
   13144:	52f52423          	sw	a5,1320(a0)
   13148:	52053023          	sd	zero,1312(a0)
   1314c:	00400793          	li	a5,4
   13150:	00050913          	mv	s2,a0
   13154:	00f42823          	sw	a5,16(s0)
   13158:	00800613          	li	a2,8
   1315c:	00000593          	li	a1,0
   13160:	00043023          	sd	zero,0(s0)
   13164:	00043423          	sd	zero,8(s0)
   13168:	0a042623          	sw	zero,172(s0)
   1316c:	00043c23          	sd	zero,24(s0)
   13170:	02042023          	sw	zero,32(s0)
   13174:	02042423          	sw	zero,40(s0)
   13178:	0a440513          	addi	a0,s0,164
   1317c:	960fd0ef          	jal	ra,102dc <memset>
   13180:	00019b37          	lui	s6,0x19
   13184:	01093483          	ld	s1,16(s2)
   13188:	00019ab7          	lui	s5,0x19
   1318c:	00019a37          	lui	s4,0x19
   13190:	000199b7          	lui	s3,0x19
   13194:	92cb0b13          	addi	s6,s6,-1748 # 1892c <__sread>
   13198:	990a8a93          	addi	s5,s5,-1648 # 18990 <__swrite>
   1319c:	a18a0a13          	addi	s4,s4,-1512 # 18a18 <__sseek>
   131a0:	a9098993          	addi	s3,s3,-1392 # 18a90 <__sclose>
   131a4:	000107b7          	lui	a5,0x10
   131a8:	03643c23          	sd	s6,56(s0)
   131ac:	05543023          	sd	s5,64(s0)
   131b0:	05443423          	sd	s4,72(s0)
   131b4:	05343823          	sd	s3,80(s0)
   131b8:	02843823          	sd	s0,48(s0)
   131bc:	00978793          	addi	a5,a5,9 # 10009 <exit-0xdf>
   131c0:	00f4a823          	sw	a5,16(s1)
   131c4:	00800613          	li	a2,8
   131c8:	00000593          	li	a1,0
   131cc:	0004b023          	sd	zero,0(s1)
   131d0:	0004b423          	sd	zero,8(s1)
   131d4:	0a04a623          	sw	zero,172(s1)
   131d8:	0004bc23          	sd	zero,24(s1)
   131dc:	0204a023          	sw	zero,32(s1)
   131e0:	0204a423          	sw	zero,40(s1)
   131e4:	0a448513          	addi	a0,s1,164
   131e8:	8f4fd0ef          	jal	ra,102dc <memset>
   131ec:	01893403          	ld	s0,24(s2)
   131f0:	000207b7          	lui	a5,0x20
   131f4:	0364bc23          	sd	s6,56(s1)
   131f8:	0554b023          	sd	s5,64(s1)
   131fc:	0544b423          	sd	s4,72(s1)
   13200:	0534b823          	sd	s3,80(s1)
   13204:	0294b823          	sd	s1,48(s1)
   13208:	01278793          	addi	a5,a5,18 # 20012 <__divdf3+0x236>
   1320c:	00f42823          	sw	a5,16(s0)
   13210:	00043023          	sd	zero,0(s0)
   13214:	00043423          	sd	zero,8(s0)
   13218:	0a042623          	sw	zero,172(s0)
   1321c:	00043c23          	sd	zero,24(s0)
   13220:	02042023          	sw	zero,32(s0)
   13224:	02042423          	sw	zero,40(s0)
   13228:	0a440513          	addi	a0,s0,164
   1322c:	00800613          	li	a2,8
   13230:	00000593          	li	a1,0
   13234:	8a8fd0ef          	jal	ra,102dc <memset>
   13238:	03813083          	ld	ra,56(sp)
   1323c:	03643c23          	sd	s6,56(s0)
   13240:	05543023          	sd	s5,64(s0)
   13244:	05443423          	sd	s4,72(s0)
   13248:	05343823          	sd	s3,80(s0)
   1324c:	02843823          	sd	s0,48(s0)
   13250:	03013403          	ld	s0,48(sp)
   13254:	00100793          	li	a5,1
   13258:	04f92823          	sw	a5,80(s2)
   1325c:	02813483          	ld	s1,40(sp)
   13260:	02013903          	ld	s2,32(sp)
   13264:	01813983          	ld	s3,24(sp)
   13268:	01013a03          	ld	s4,16(sp)
   1326c:	00813a83          	ld	s5,8(sp)
   13270:	00013b03          	ld	s6,0(sp)
   13274:	04010113          	addi	sp,sp,64
   13278:	00008067          	ret

000000000001327c <__sfmoreglue>:
   1327c:	fe010113          	addi	sp,sp,-32
   13280:	fff5879b          	addiw	a5,a1,-1
   13284:	00813823          	sd	s0,16(sp)
   13288:	00179413          	slli	s0,a5,0x1
   1328c:	00f40433          	add	s0,s0,a5
   13290:	00241413          	slli	s0,s0,0x2
   13294:	40f40433          	sub	s0,s0,a5
   13298:	00441413          	slli	s0,s0,0x4
   1329c:	01213023          	sd	s2,0(sp)
   132a0:	00058913          	mv	s2,a1
   132a4:	0c840593          	addi	a1,s0,200
   132a8:	00913423          	sd	s1,8(sp)
   132ac:	00113c23          	sd	ra,24(sp)
   132b0:	021030ef          	jal	ra,16ad0 <_malloc_r>
   132b4:	00050493          	mv	s1,a0
   132b8:	02050063          	beqz	a0,132d8 <__sfmoreglue+0x5c>
   132bc:	01850513          	addi	a0,a0,24
   132c0:	0004b023          	sd	zero,0(s1)
   132c4:	0124a423          	sw	s2,8(s1)
   132c8:	00a4b823          	sd	a0,16(s1)
   132cc:	0b040613          	addi	a2,s0,176
   132d0:	00000593          	li	a1,0
   132d4:	808fd0ef          	jal	ra,102dc <memset>
   132d8:	01813083          	ld	ra,24(sp)
   132dc:	01013403          	ld	s0,16(sp)
   132e0:	00013903          	ld	s2,0(sp)
   132e4:	00048513          	mv	a0,s1
   132e8:	00813483          	ld	s1,8(sp)
   132ec:	02010113          	addi	sp,sp,32
   132f0:	00008067          	ret

00000000000132f4 <__sfp>:
   132f4:	fe010113          	addi	sp,sp,-32
   132f8:	01213023          	sd	s2,0(sp)
   132fc:	7481b903          	ld	s2,1864(gp) # 24d50 <_global_impure_ptr>
   13300:	00913423          	sd	s1,8(sp)
   13304:	00113c23          	sd	ra,24(sp)
   13308:	05092783          	lw	a5,80(s2)
   1330c:	00813823          	sd	s0,16(sp)
   13310:	00050493          	mv	s1,a0
   13314:	0a078c63          	beqz	a5,133cc <__sfp+0xd8>
   13318:	52090913          	addi	s2,s2,1312
   1331c:	00892703          	lw	a4,8(s2)
   13320:	01093403          	ld	s0,16(s2)
   13324:	08e05c63          	blez	a4,133bc <__sfp+0xc8>
   13328:	02071713          	slli	a4,a4,0x20
   1332c:	02075713          	srli	a4,a4,0x20
   13330:	00171793          	slli	a5,a4,0x1
   13334:	00e787b3          	add	a5,a5,a4
   13338:	00279793          	slli	a5,a5,0x2
   1333c:	40e787b3          	sub	a5,a5,a4
   13340:	00479793          	slli	a5,a5,0x4
   13344:	00f407b3          	add	a5,s0,a5
   13348:	00c0006f          	j	13354 <__sfp+0x60>
   1334c:	0b040413          	addi	s0,s0,176
   13350:	06f40663          	beq	s0,a5,133bc <__sfp+0xc8>
   13354:	01041703          	lh	a4,16(s0)
   13358:	fe071ae3          	bnez	a4,1334c <__sfp+0x58>
   1335c:	ffff07b7          	lui	a5,0xffff0
   13360:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcb1f9>
   13364:	00f42823          	sw	a5,16(s0)
   13368:	0a042623          	sw	zero,172(s0)
   1336c:	00043023          	sd	zero,0(s0)
   13370:	00043423          	sd	zero,8(s0)
   13374:	00043c23          	sd	zero,24(s0)
   13378:	02042023          	sw	zero,32(s0)
   1337c:	02042423          	sw	zero,40(s0)
   13380:	00800613          	li	a2,8
   13384:	00000593          	li	a1,0
   13388:	0a440513          	addi	a0,s0,164
   1338c:	f51fc0ef          	jal	ra,102dc <memset>
   13390:	04043c23          	sd	zero,88(s0)
   13394:	06042023          	sw	zero,96(s0)
   13398:	06043c23          	sd	zero,120(s0)
   1339c:	08042023          	sw	zero,128(s0)
   133a0:	01813083          	ld	ra,24(sp)
   133a4:	00040513          	mv	a0,s0
   133a8:	01013403          	ld	s0,16(sp)
   133ac:	00813483          	ld	s1,8(sp)
   133b0:	00013903          	ld	s2,0(sp)
   133b4:	02010113          	addi	sp,sp,32
   133b8:	00008067          	ret
   133bc:	00093403          	ld	s0,0(s2)
   133c0:	00040c63          	beqz	s0,133d8 <__sfp+0xe4>
   133c4:	00040913          	mv	s2,s0
   133c8:	f55ff06f          	j	1331c <__sfp+0x28>
   133cc:	00090513          	mv	a0,s2
   133d0:	d35ff0ef          	jal	ra,13104 <__sinit.part.0>
   133d4:	f45ff06f          	j	13318 <__sfp+0x24>
   133d8:	2d800593          	li	a1,728
   133dc:	00048513          	mv	a0,s1
   133e0:	6f0030ef          	jal	ra,16ad0 <_malloc_r>
   133e4:	00050413          	mv	s0,a0
   133e8:	02050863          	beqz	a0,13418 <__sfp+0x124>
   133ec:	01850513          	addi	a0,a0,24
   133f0:	00400793          	li	a5,4
   133f4:	00043023          	sd	zero,0(s0)
   133f8:	00f42423          	sw	a5,8(s0)
   133fc:	00a43823          	sd	a0,16(s0)
   13400:	2c000613          	li	a2,704
   13404:	00000593          	li	a1,0
   13408:	ed5fc0ef          	jal	ra,102dc <memset>
   1340c:	00893023          	sd	s0,0(s2)
   13410:	00040913          	mv	s2,s0
   13414:	f09ff06f          	j	1331c <__sfp+0x28>
   13418:	00093023          	sd	zero,0(s2)
   1341c:	00c00793          	li	a5,12
   13420:	00f4a023          	sw	a5,0(s1)
   13424:	f7dff06f          	j	133a0 <__sfp+0xac>

0000000000013428 <_cleanup>:
   13428:	7481b503          	ld	a0,1864(gp) # 24d50 <_global_impure_ptr>
   1342c:	0001d5b7          	lui	a1,0x1d
   13430:	bec58593          	addi	a1,a1,-1044 # 1cbec <_fclose_r>
   13434:	5bc0006f          	j	139f0 <_fwalk_reent>

0000000000013438 <__sinit>:
   13438:	05052783          	lw	a5,80(a0)
   1343c:	00078463          	beqz	a5,13444 <__sinit+0xc>
   13440:	00008067          	ret
   13444:	cc1ff06f          	j	13104 <__sinit.part.0>

0000000000013448 <__sfp_lock_acquire>:
   13448:	00008067          	ret

000000000001344c <__sfp_lock_release>:
   1344c:	00008067          	ret

0000000000013450 <__sinit_lock_acquire>:
   13450:	00008067          	ret

0000000000013454 <__sinit_lock_release>:
   13454:	00008067          	ret

0000000000013458 <__fp_lock_all>:
   13458:	7581b503          	ld	a0,1880(gp) # 24d60 <_impure_ptr>
   1345c:	000135b7          	lui	a1,0x13
   13460:	0e858593          	addi	a1,a1,232 # 130e8 <__fp_lock>
   13464:	4cc0006f          	j	13930 <_fwalk>

0000000000013468 <__fp_unlock_all>:
   13468:	7581b503          	ld	a0,1880(gp) # 24d60 <_impure_ptr>
   1346c:	000135b7          	lui	a1,0x13
   13470:	0fc58593          	addi	a1,a1,252 # 130fc <__fp_unlock>
   13474:	4bc0006f          	j	13930 <_fwalk>

0000000000013478 <__libc_fini_array>:
   13478:	fe010113          	addi	sp,sp,-32
   1347c:	00813823          	sd	s0,16(sp)
   13480:	000247b7          	lui	a5,0x24
   13484:	00024437          	lui	s0,0x24
   13488:	c1878793          	addi	a5,a5,-1000 # 23c18 <__do_global_dtors_aux_fini_array_entry>
   1348c:	c2040413          	addi	s0,s0,-992 # 23c20 <impure_data>
   13490:	40f40433          	sub	s0,s0,a5
   13494:	00913423          	sd	s1,8(sp)
   13498:	00113c23          	sd	ra,24(sp)
   1349c:	40345493          	srai	s1,s0,0x3
   134a0:	02048063          	beqz	s1,134c0 <__libc_fini_array+0x48>
   134a4:	ff840413          	addi	s0,s0,-8
   134a8:	00f40433          	add	s0,s0,a5
   134ac:	00043783          	ld	a5,0(s0)
   134b0:	fff48493          	addi	s1,s1,-1
   134b4:	ff840413          	addi	s0,s0,-8
   134b8:	000780e7          	jalr	a5
   134bc:	fe0498e3          	bnez	s1,134ac <__libc_fini_array+0x34>
   134c0:	01813083          	ld	ra,24(sp)
   134c4:	01013403          	ld	s0,16(sp)
   134c8:	00813483          	ld	s1,8(sp)
   134cc:	02010113          	addi	sp,sp,32
   134d0:	00008067          	ret

00000000000134d4 <_malloc_trim_r>:
   134d4:	fd010113          	addi	sp,sp,-48
   134d8:	01313423          	sd	s3,8(sp)
   134dc:	000249b7          	lui	s3,0x24
   134e0:	02813023          	sd	s0,32(sp)
   134e4:	00913c23          	sd	s1,24(sp)
   134e8:	01213823          	sd	s2,16(sp)
   134ec:	01413023          	sd	s4,0(sp)
   134f0:	02113423          	sd	ra,40(sp)
   134f4:	00058a13          	mv	s4,a1
   134f8:	00050913          	mv	s2,a0
   134fc:	51098993          	addi	s3,s3,1296 # 24510 <__malloc_av_>
   13500:	6e1030ef          	jal	ra,173e0 <__malloc_lock>
   13504:	0109b703          	ld	a4,16(s3)
   13508:	000017b7          	lui	a5,0x1
   1350c:	fdf78413          	addi	s0,a5,-33 # fdf <exit-0xf109>
   13510:	00873483          	ld	s1,8(a4)
   13514:	ffc4f493          	andi	s1,s1,-4
   13518:	00848433          	add	s0,s1,s0
   1351c:	41440433          	sub	s0,s0,s4
   13520:	00c45413          	srli	s0,s0,0xc
   13524:	fff40413          	addi	s0,s0,-1
   13528:	00c41413          	slli	s0,s0,0xc
   1352c:	00f44e63          	blt	s0,a5,13548 <_malloc_trim_r+0x74>
   13530:	00000593          	li	a1,0
   13534:	00090513          	mv	a0,s2
   13538:	1ec050ef          	jal	ra,18724 <_sbrk_r>
   1353c:	0109b783          	ld	a5,16(s3)
   13540:	009787b3          	add	a5,a5,s1
   13544:	02f50863          	beq	a0,a5,13574 <_malloc_trim_r+0xa0>
   13548:	00090513          	mv	a0,s2
   1354c:	699030ef          	jal	ra,173e4 <__malloc_unlock>
   13550:	02813083          	ld	ra,40(sp)
   13554:	02013403          	ld	s0,32(sp)
   13558:	01813483          	ld	s1,24(sp)
   1355c:	01013903          	ld	s2,16(sp)
   13560:	00813983          	ld	s3,8(sp)
   13564:	00013a03          	ld	s4,0(sp)
   13568:	00000513          	li	a0,0
   1356c:	03010113          	addi	sp,sp,48
   13570:	00008067          	ret
   13574:	408005b3          	neg	a1,s0
   13578:	00090513          	mv	a0,s2
   1357c:	1a8050ef          	jal	ra,18724 <_sbrk_r>
   13580:	fff00793          	li	a5,-1
   13584:	04f50a63          	beq	a0,a5,135d8 <_malloc_trim_r+0x104>
   13588:	000257b7          	lui	a5,0x25
   1358c:	de078793          	addi	a5,a5,-544 # 24de0 <__malloc_current_mallinfo>
   13590:	0007a703          	lw	a4,0(a5)
   13594:	0109b683          	ld	a3,16(s3)
   13598:	408484b3          	sub	s1,s1,s0
   1359c:	0014e493          	ori	s1,s1,1
   135a0:	4087073b          	subw	a4,a4,s0
   135a4:	00090513          	mv	a0,s2
   135a8:	0096b423          	sd	s1,8(a3)
   135ac:	00e7a023          	sw	a4,0(a5)
   135b0:	635030ef          	jal	ra,173e4 <__malloc_unlock>
   135b4:	02813083          	ld	ra,40(sp)
   135b8:	02013403          	ld	s0,32(sp)
   135bc:	01813483          	ld	s1,24(sp)
   135c0:	01013903          	ld	s2,16(sp)
   135c4:	00813983          	ld	s3,8(sp)
   135c8:	00013a03          	ld	s4,0(sp)
   135cc:	00100513          	li	a0,1
   135d0:	03010113          	addi	sp,sp,48
   135d4:	00008067          	ret
   135d8:	00000593          	li	a1,0
   135dc:	00090513          	mv	a0,s2
   135e0:	144050ef          	jal	ra,18724 <_sbrk_r>
   135e4:	0109b703          	ld	a4,16(s3)
   135e8:	01f00693          	li	a3,31
   135ec:	40e507b3          	sub	a5,a0,a4
   135f0:	f4f6dce3          	bge	a3,a5,13548 <_malloc_trim_r+0x74>
   135f4:	7601b683          	ld	a3,1888(gp) # 24d68 <__malloc_sbrk_base>
   135f8:	0017e793          	ori	a5,a5,1
   135fc:	00f73423          	sd	a5,8(a4)
   13600:	40d50533          	sub	a0,a0,a3
   13604:	000256b7          	lui	a3,0x25
   13608:	dea6a023          	sw	a0,-544(a3) # 24de0 <__malloc_current_mallinfo>
   1360c:	f3dff06f          	j	13548 <_malloc_trim_r+0x74>

0000000000013610 <_free_r>:
   13610:	18058863          	beqz	a1,137a0 <_free_r+0x190>
   13614:	fe010113          	addi	sp,sp,-32
   13618:	00813823          	sd	s0,16(sp)
   1361c:	00913423          	sd	s1,8(sp)
   13620:	00058413          	mv	s0,a1
   13624:	00050493          	mv	s1,a0
   13628:	00113c23          	sd	ra,24(sp)
   1362c:	5b5030ef          	jal	ra,173e0 <__malloc_lock>
   13630:	ff843503          	ld	a0,-8(s0)
   13634:	ff040713          	addi	a4,s0,-16
   13638:	000245b7          	lui	a1,0x24
   1363c:	ffe57793          	andi	a5,a0,-2
   13640:	00f70633          	add	a2,a4,a5
   13644:	51058593          	addi	a1,a1,1296 # 24510 <__malloc_av_>
   13648:	00863683          	ld	a3,8(a2)
   1364c:	0105b803          	ld	a6,16(a1)
   13650:	ffc6f693          	andi	a3,a3,-4
   13654:	1ac80863          	beq	a6,a2,13804 <_free_r+0x1f4>
   13658:	00d63423          	sd	a3,8(a2)
   1365c:	00157513          	andi	a0,a0,1
   13660:	00d60833          	add	a6,a2,a3
   13664:	0a051463          	bnez	a0,1370c <_free_r+0xfc>
   13668:	ff043303          	ld	t1,-16(s0)
   1366c:	00883803          	ld	a6,8(a6)
   13670:	00024537          	lui	a0,0x24
   13674:	40670733          	sub	a4,a4,t1
   13678:	01073883          	ld	a7,16(a4)
   1367c:	52050513          	addi	a0,a0,1312 # 24520 <__malloc_av_+0x10>
   13680:	006787b3          	add	a5,a5,t1
   13684:	00187813          	andi	a6,a6,1
   13688:	14a88863          	beq	a7,a0,137d8 <_free_r+0x1c8>
   1368c:	01873303          	ld	t1,24(a4)
   13690:	0068bc23          	sd	t1,24(a7)
   13694:	01133823          	sd	a7,16(t1)
   13698:	1a080c63          	beqz	a6,13850 <_free_r+0x240>
   1369c:	0017e693          	ori	a3,a5,1
   136a0:	00d73423          	sd	a3,8(a4)
   136a4:	00f63023          	sd	a5,0(a2)
   136a8:	1ff00693          	li	a3,511
   136ac:	08f6e063          	bltu	a3,a5,1372c <_free_r+0x11c>
   136b0:	0037d793          	srli	a5,a5,0x3
   136b4:	0017869b          	addiw	a3,a5,1
   136b8:	0016969b          	slliw	a3,a3,0x1
   136bc:	00369693          	slli	a3,a3,0x3
   136c0:	0085b803          	ld	a6,8(a1)
   136c4:	00d586b3          	add	a3,a1,a3
   136c8:	0006b503          	ld	a0,0(a3)
   136cc:	4027d61b          	sraiw	a2,a5,0x2
   136d0:	00100793          	li	a5,1
   136d4:	00c797b3          	sll	a5,a5,a2
   136d8:	0107e7b3          	or	a5,a5,a6
   136dc:	ff068613          	addi	a2,a3,-16
   136e0:	00c73c23          	sd	a2,24(a4)
   136e4:	00a73823          	sd	a0,16(a4)
   136e8:	00f5b423          	sd	a5,8(a1)
   136ec:	00e6b023          	sd	a4,0(a3)
   136f0:	00e53c23          	sd	a4,24(a0)
   136f4:	01013403          	ld	s0,16(sp)
   136f8:	01813083          	ld	ra,24(sp)
   136fc:	00048513          	mv	a0,s1
   13700:	00813483          	ld	s1,8(sp)
   13704:	02010113          	addi	sp,sp,32
   13708:	4dd0306f          	j	173e4 <__malloc_unlock>
   1370c:	00883503          	ld	a0,8(a6)
   13710:	00157513          	andi	a0,a0,1
   13714:	08050863          	beqz	a0,137a4 <_free_r+0x194>
   13718:	0017e693          	ori	a3,a5,1
   1371c:	fed43c23          	sd	a3,-8(s0)
   13720:	00f63023          	sd	a5,0(a2)
   13724:	1ff00693          	li	a3,511
   13728:	f8f6f4e3          	bgeu	a3,a5,136b0 <_free_r+0xa0>
   1372c:	0097d693          	srli	a3,a5,0x9
   13730:	00400613          	li	a2,4
   13734:	12d66263          	bltu	a2,a3,13858 <_free_r+0x248>
   13738:	0067d693          	srli	a3,a5,0x6
   1373c:	0396851b          	addiw	a0,a3,57
   13740:	0015151b          	slliw	a0,a0,0x1
   13744:	0386861b          	addiw	a2,a3,56
   13748:	00351513          	slli	a0,a0,0x3
   1374c:	00a58533          	add	a0,a1,a0
   13750:	00053683          	ld	a3,0(a0)
   13754:	ff050513          	addi	a0,a0,-16
   13758:	00d51863          	bne	a0,a3,13768 <_free_r+0x158>
   1375c:	15c0006f          	j	138b8 <_free_r+0x2a8>
   13760:	0106b683          	ld	a3,16(a3)
   13764:	00d50863          	beq	a0,a3,13774 <_free_r+0x164>
   13768:	0086b603          	ld	a2,8(a3)
   1376c:	ffc67613          	andi	a2,a2,-4
   13770:	fec7e8e3          	bltu	a5,a2,13760 <_free_r+0x150>
   13774:	0186b503          	ld	a0,24(a3)
   13778:	00a73c23          	sd	a0,24(a4)
   1377c:	00d73823          	sd	a3,16(a4)
   13780:	01013403          	ld	s0,16(sp)
   13784:	00e53823          	sd	a4,16(a0)
   13788:	01813083          	ld	ra,24(sp)
   1378c:	00048513          	mv	a0,s1
   13790:	00813483          	ld	s1,8(sp)
   13794:	00e6bc23          	sd	a4,24(a3)
   13798:	02010113          	addi	sp,sp,32
   1379c:	4490306f          	j	173e4 <__malloc_unlock>
   137a0:	00008067          	ret
   137a4:	00024537          	lui	a0,0x24
   137a8:	00d787b3          	add	a5,a5,a3
   137ac:	52050513          	addi	a0,a0,1312 # 24520 <__malloc_av_+0x10>
   137b0:	01063683          	ld	a3,16(a2)
   137b4:	0ea68063          	beq	a3,a0,13894 <_free_r+0x284>
   137b8:	01863803          	ld	a6,24(a2)
   137bc:	0017e513          	ori	a0,a5,1
   137c0:	00f70633          	add	a2,a4,a5
   137c4:	0106bc23          	sd	a6,24(a3)
   137c8:	00d83823          	sd	a3,16(a6)
   137cc:	00a73423          	sd	a0,8(a4)
   137d0:	00f63023          	sd	a5,0(a2)
   137d4:	ed5ff06f          	j	136a8 <_free_r+0x98>
   137d8:	14081463          	bnez	a6,13920 <_free_r+0x310>
   137dc:	01063583          	ld	a1,16(a2)
   137e0:	01863603          	ld	a2,24(a2)
   137e4:	00f686b3          	add	a3,a3,a5
   137e8:	0016e793          	ori	a5,a3,1
   137ec:	00c5bc23          	sd	a2,24(a1)
   137f0:	00b63823          	sd	a1,16(a2)
   137f4:	00f73423          	sd	a5,8(a4)
   137f8:	00d70733          	add	a4,a4,a3
   137fc:	00d73023          	sd	a3,0(a4)
   13800:	ef5ff06f          	j	136f4 <_free_r+0xe4>
   13804:	00157513          	andi	a0,a0,1
   13808:	00d786b3          	add	a3,a5,a3
   1380c:	02051063          	bnez	a0,1382c <_free_r+0x21c>
   13810:	ff043503          	ld	a0,-16(s0)
   13814:	40a70733          	sub	a4,a4,a0
   13818:	01873783          	ld	a5,24(a4)
   1381c:	01073603          	ld	a2,16(a4)
   13820:	00a686b3          	add	a3,a3,a0
   13824:	00f63c23          	sd	a5,24(a2)
   13828:	00c7b823          	sd	a2,16(a5)
   1382c:	0016e613          	ori	a2,a3,1
   13830:	7681b783          	ld	a5,1896(gp) # 24d70 <__malloc_trim_threshold>
   13834:	00c73423          	sd	a2,8(a4)
   13838:	00e5b823          	sd	a4,16(a1)
   1383c:	eaf6ece3          	bltu	a3,a5,136f4 <_free_r+0xe4>
   13840:	7881b583          	ld	a1,1928(gp) # 24d90 <__malloc_top_pad>
   13844:	00048513          	mv	a0,s1
   13848:	c8dff0ef          	jal	ra,134d4 <_malloc_trim_r>
   1384c:	ea9ff06f          	j	136f4 <_free_r+0xe4>
   13850:	00d787b3          	add	a5,a5,a3
   13854:	f5dff06f          	j	137b0 <_free_r+0x1a0>
   13858:	01400613          	li	a2,20
   1385c:	02d67263          	bgeu	a2,a3,13880 <_free_r+0x270>
   13860:	05400613          	li	a2,84
   13864:	06d66863          	bltu	a2,a3,138d4 <_free_r+0x2c4>
   13868:	00c7d693          	srli	a3,a5,0xc
   1386c:	06f6851b          	addiw	a0,a3,111
   13870:	0015151b          	slliw	a0,a0,0x1
   13874:	06e6861b          	addiw	a2,a3,110
   13878:	00351513          	slli	a0,a0,0x3
   1387c:	ed1ff06f          	j	1374c <_free_r+0x13c>
   13880:	05c6851b          	addiw	a0,a3,92
   13884:	0015151b          	slliw	a0,a0,0x1
   13888:	05b6861b          	addiw	a2,a3,91
   1388c:	00351513          	slli	a0,a0,0x3
   13890:	ebdff06f          	j	1374c <_free_r+0x13c>
   13894:	02e5b423          	sd	a4,40(a1)
   13898:	02e5b023          	sd	a4,32(a1)
   1389c:	0017e693          	ori	a3,a5,1
   138a0:	00a73c23          	sd	a0,24(a4)
   138a4:	00a73823          	sd	a0,16(a4)
   138a8:	00d73423          	sd	a3,8(a4)
   138ac:	00f70733          	add	a4,a4,a5
   138b0:	00f73023          	sd	a5,0(a4)
   138b4:	e41ff06f          	j	136f4 <_free_r+0xe4>
   138b8:	0085b803          	ld	a6,8(a1)
   138bc:	4026561b          	sraiw	a2,a2,0x2
   138c0:	00100793          	li	a5,1
   138c4:	00c797b3          	sll	a5,a5,a2
   138c8:	0107e7b3          	or	a5,a5,a6
   138cc:	00f5b423          	sd	a5,8(a1)
   138d0:	ea9ff06f          	j	13778 <_free_r+0x168>
   138d4:	15400613          	li	a2,340
   138d8:	00d66e63          	bltu	a2,a3,138f4 <_free_r+0x2e4>
   138dc:	00f7d693          	srli	a3,a5,0xf
   138e0:	0786851b          	addiw	a0,a3,120
   138e4:	0015151b          	slliw	a0,a0,0x1
   138e8:	0776861b          	addiw	a2,a3,119
   138ec:	00351513          	slli	a0,a0,0x3
   138f0:	e5dff06f          	j	1374c <_free_r+0x13c>
   138f4:	55400613          	li	a2,1364
   138f8:	00d66e63          	bltu	a2,a3,13914 <_free_r+0x304>
   138fc:	0127d693          	srli	a3,a5,0x12
   13900:	07d6851b          	addiw	a0,a3,125
   13904:	0015151b          	slliw	a0,a0,0x1
   13908:	07c6861b          	addiw	a2,a3,124
   1390c:	00351513          	slli	a0,a0,0x3
   13910:	e3dff06f          	j	1374c <_free_r+0x13c>
   13914:	7f000513          	li	a0,2032
   13918:	07e00613          	li	a2,126
   1391c:	e31ff06f          	j	1374c <_free_r+0x13c>
   13920:	0017e693          	ori	a3,a5,1
   13924:	00d73423          	sd	a3,8(a4)
   13928:	00f63023          	sd	a5,0(a2)
   1392c:	dc9ff06f          	j	136f4 <_free_r+0xe4>

0000000000013930 <_fwalk>:
   13930:	fc010113          	addi	sp,sp,-64
   13934:	03213023          	sd	s2,32(sp)
   13938:	01313c23          	sd	s3,24(sp)
   1393c:	01413823          	sd	s4,16(sp)
   13940:	01513423          	sd	s5,8(sp)
   13944:	01613023          	sd	s6,0(sp)
   13948:	02113c23          	sd	ra,56(sp)
   1394c:	02813823          	sd	s0,48(sp)
   13950:	02913423          	sd	s1,40(sp)
   13954:	00058a93          	mv	s5,a1
   13958:	52050993          	addi	s3,a0,1312
   1395c:	00000913          	li	s2,0
   13960:	00100b13          	li	s6,1
   13964:	fff00a13          	li	s4,-1
   13968:	0089a783          	lw	a5,8(s3)
   1396c:	0109b403          	ld	s0,16(s3)
   13970:	04f05663          	blez	a5,139bc <_fwalk+0x8c>
   13974:	02079793          	slli	a5,a5,0x20
   13978:	0207d793          	srli	a5,a5,0x20
   1397c:	00179493          	slli	s1,a5,0x1
   13980:	00f484b3          	add	s1,s1,a5
   13984:	00249493          	slli	s1,s1,0x2
   13988:	40f484b3          	sub	s1,s1,a5
   1398c:	00449493          	slli	s1,s1,0x4
   13990:	009404b3          	add	s1,s0,s1
   13994:	01045783          	lhu	a5,16(s0)
   13998:	00fb7e63          	bgeu	s6,a5,139b4 <_fwalk+0x84>
   1399c:	01241783          	lh	a5,18(s0)
   139a0:	00040513          	mv	a0,s0
   139a4:	01478863          	beq	a5,s4,139b4 <_fwalk+0x84>
   139a8:	000a80e7          	jalr	s5
   139ac:	01256933          	or	s2,a0,s2
   139b0:	0009091b          	sext.w	s2,s2
   139b4:	0b040413          	addi	s0,s0,176
   139b8:	fc849ee3          	bne	s1,s0,13994 <_fwalk+0x64>
   139bc:	0009b983          	ld	s3,0(s3)
   139c0:	fa0994e3          	bnez	s3,13968 <_fwalk+0x38>
   139c4:	03813083          	ld	ra,56(sp)
   139c8:	03013403          	ld	s0,48(sp)
   139cc:	02813483          	ld	s1,40(sp)
   139d0:	01813983          	ld	s3,24(sp)
   139d4:	01013a03          	ld	s4,16(sp)
   139d8:	00813a83          	ld	s5,8(sp)
   139dc:	00013b03          	ld	s6,0(sp)
   139e0:	00090513          	mv	a0,s2
   139e4:	02013903          	ld	s2,32(sp)
   139e8:	04010113          	addi	sp,sp,64
   139ec:	00008067          	ret

00000000000139f0 <_fwalk_reent>:
   139f0:	fb010113          	addi	sp,sp,-80
   139f4:	03213823          	sd	s2,48(sp)
   139f8:	03313423          	sd	s3,40(sp)
   139fc:	03413023          	sd	s4,32(sp)
   13a00:	01513c23          	sd	s5,24(sp)
   13a04:	01613823          	sd	s6,16(sp)
   13a08:	01713423          	sd	s7,8(sp)
   13a0c:	04113423          	sd	ra,72(sp)
   13a10:	04813023          	sd	s0,64(sp)
   13a14:	02913c23          	sd	s1,56(sp)
   13a18:	00050913          	mv	s2,a0
   13a1c:	00058a93          	mv	s5,a1
   13a20:	52050993          	addi	s3,a0,1312
   13a24:	00000b13          	li	s6,0
   13a28:	00100b93          	li	s7,1
   13a2c:	fff00a13          	li	s4,-1
   13a30:	0089a783          	lw	a5,8(s3)
   13a34:	0109b403          	ld	s0,16(s3)
   13a38:	04f05863          	blez	a5,13a88 <_fwalk_reent+0x98>
   13a3c:	02079793          	slli	a5,a5,0x20
   13a40:	0207d793          	srli	a5,a5,0x20
   13a44:	00179493          	slli	s1,a5,0x1
   13a48:	00f484b3          	add	s1,s1,a5
   13a4c:	00249493          	slli	s1,s1,0x2
   13a50:	40f484b3          	sub	s1,s1,a5
   13a54:	00449493          	slli	s1,s1,0x4
   13a58:	009404b3          	add	s1,s0,s1
   13a5c:	01045783          	lhu	a5,16(s0)
   13a60:	02fbf063          	bgeu	s7,a5,13a80 <_fwalk_reent+0x90>
   13a64:	01241783          	lh	a5,18(s0)
   13a68:	00040593          	mv	a1,s0
   13a6c:	00090513          	mv	a0,s2
   13a70:	01478863          	beq	a5,s4,13a80 <_fwalk_reent+0x90>
   13a74:	000a80e7          	jalr	s5
   13a78:	01656b33          	or	s6,a0,s6
   13a7c:	000b0b1b          	sext.w	s6,s6
   13a80:	0b040413          	addi	s0,s0,176
   13a84:	fc849ce3          	bne	s1,s0,13a5c <_fwalk_reent+0x6c>
   13a88:	0009b983          	ld	s3,0(s3)
   13a8c:	fa0992e3          	bnez	s3,13a30 <_fwalk_reent+0x40>
   13a90:	04813083          	ld	ra,72(sp)
   13a94:	04013403          	ld	s0,64(sp)
   13a98:	03813483          	ld	s1,56(sp)
   13a9c:	03013903          	ld	s2,48(sp)
   13aa0:	02813983          	ld	s3,40(sp)
   13aa4:	02013a03          	ld	s4,32(sp)
   13aa8:	01813a83          	ld	s5,24(sp)
   13aac:	00813b83          	ld	s7,8(sp)
   13ab0:	000b0513          	mv	a0,s6
   13ab4:	01013b03          	ld	s6,16(sp)
   13ab8:	05010113          	addi	sp,sp,80
   13abc:	00008067          	ret

0000000000013ac0 <eshdn1>:
   13ac0:	00450693          	addi	a3,a0,4
   13ac4:	00000713          	li	a4,0
   13ac8:	01a50513          	addi	a0,a0,26
   13acc:	ffff8837          	lui	a6,0xffff8
   13ad0:	0006d783          	lhu	a5,0(a3)
   13ad4:	0017f613          	andi	a2,a5,1
   13ad8:	00060463          	beqz	a2,13ae0 <eshdn1+0x20>
   13adc:	00176713          	ori	a4,a4,1
   13ae0:	00277613          	andi	a2,a4,2
   13ae4:	0017d793          	srli	a5,a5,0x1
   13ae8:	0017171b          	slliw	a4,a4,0x1
   13aec:	0107e5b3          	or	a1,a5,a6
   13af0:	00060663          	beqz	a2,13afc <eshdn1+0x3c>
   13af4:	03059793          	slli	a5,a1,0x30
   13af8:	0307d793          	srli	a5,a5,0x30
   13afc:	00f69023          	sh	a5,0(a3)
   13b00:	03071713          	slli	a4,a4,0x30
   13b04:	00268693          	addi	a3,a3,2
   13b08:	03075713          	srli	a4,a4,0x30
   13b0c:	fcd512e3          	bne	a0,a3,13ad0 <eshdn1+0x10>
   13b10:	00008067          	ret

0000000000013b14 <eshup1>:
   13b14:	01850693          	addi	a3,a0,24
   13b18:	00000713          	li	a4,0
   13b1c:	00250513          	addi	a0,a0,2
   13b20:	0006d783          	lhu	a5,0(a3)
   13b24:	00f7d613          	srli	a2,a5,0xf
   13b28:	0017979b          	slliw	a5,a5,0x1
   13b2c:	00060463          	beqz	a2,13b34 <eshup1+0x20>
   13b30:	00176713          	ori	a4,a4,1
   13b34:	00277613          	andi	a2,a4,2
   13b38:	03079793          	slli	a5,a5,0x30
   13b3c:	0017171b          	slliw	a4,a4,0x1
   13b40:	0307d793          	srli	a5,a5,0x30
   13b44:	00060463          	beqz	a2,13b4c <eshup1+0x38>
   13b48:	0017e793          	ori	a5,a5,1
   13b4c:	00f69023          	sh	a5,0(a3)
   13b50:	03071713          	slli	a4,a4,0x30
   13b54:	ffe68693          	addi	a3,a3,-2
   13b58:	03075713          	srli	a4,a4,0x30
   13b5c:	fcd512e3          	bne	a0,a3,13b20 <eshup1+0xc>
   13b60:	00008067          	ret

0000000000013b64 <m16m>:
   13b64:	fa010113          	addi	sp,sp,-96
   13b68:	03413823          	sd	s4,48(sp)
   13b6c:	00010a37          	lui	s4,0x10
   13b70:	04813823          	sd	s0,80(sp)
   13b74:	04913423          	sd	s1,72(sp)
   13b78:	05213023          	sd	s2,64(sp)
   13b7c:	03313c23          	sd	s3,56(sp)
   13b80:	03513423          	sd	s5,40(sp)
   13b84:	04113c23          	sd	ra,88(sp)
   13b88:	00050993          	mv	s3,a0
   13b8c:	00060493          	mv	s1,a2
   13b90:	00011b23          	sh	zero,22(sp)
   13b94:	00011c23          	sh	zero,24(sp)
   13b98:	01858913          	addi	s2,a1,24
   13b9c:	01810413          	addi	s0,sp,24
   13ba0:	00410a93          	addi	s5,sp,4
   13ba4:	fffa0a13          	addi	s4,s4,-1 # ffff <exit-0xe9>
   13ba8:	00095503          	lhu	a0,0(s2)
   13bac:	00098593          	mv	a1,s3
   13bb0:	ffe40413          	addi	s0,s0,-2
   13bb4:	ffe90913          	addi	s2,s2,-2
   13bb8:	02050a63          	beqz	a0,13bec <m16m+0x88>
   13bbc:	7b10d0ef          	jal	ra,21b6c <__muldi3>
   13bc0:	00245703          	lhu	a4,2(s0)
   13bc4:	00045683          	lhu	a3,0(s0)
   13bc8:	014577b3          	and	a5,a0,s4
   13bcc:	00e787b3          	add	a5,a5,a4
   13bd0:	01055513          	srli	a0,a0,0x10
   13bd4:	0107d713          	srli	a4,a5,0x10
   13bd8:	00d50533          	add	a0,a0,a3
   13bdc:	00e50533          	add	a0,a0,a4
   13be0:	00a41023          	sh	a0,0(s0)
   13be4:	00f41123          	sh	a5,2(s0)
   13be8:	0105551b          	srliw	a0,a0,0x10
   13bec:	fea41f23          	sh	a0,-2(s0)
   13bf0:	fb541ce3          	bne	s0,s5,13ba8 <m16m+0x44>
   13bf4:	00448613          	addi	a2,s1,4
   13bf8:	01a10713          	addi	a4,sp,26
   13bfc:	00045783          	lhu	a5,0(s0)
   13c00:	00240413          	addi	s0,s0,2
   13c04:	00260613          	addi	a2,a2,2
   13c08:	fef61f23          	sh	a5,-2(a2)
   13c0c:	fe8718e3          	bne	a4,s0,13bfc <m16m+0x98>
   13c10:	05813083          	ld	ra,88(sp)
   13c14:	05013403          	ld	s0,80(sp)
   13c18:	04813483          	ld	s1,72(sp)
   13c1c:	04013903          	ld	s2,64(sp)
   13c20:	03813983          	ld	s3,56(sp)
   13c24:	03013a03          	ld	s4,48(sp)
   13c28:	02813a83          	ld	s5,40(sp)
   13c2c:	06010113          	addi	sp,sp,96
   13c30:	00008067          	ret

0000000000013c34 <emovo.constprop.0>:
   13c34:	00055703          	lhu	a4,0(a0)
   13c38:	00255783          	lhu	a5,2(a0)
   13c3c:	00070663          	beqz	a4,13c48 <emovo.constprop.0+0x14>
   13c40:	00008737          	lui	a4,0x8
   13c44:	00e7e7b3          	or	a5,a5,a4
   13c48:	00f59923          	sh	a5,18(a1)
   13c4c:	00255703          	lhu	a4,2(a0)
   13c50:	000087b7          	lui	a5,0x8
   13c54:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13c58:	02f70463          	beq	a4,a5,13c80 <emovo.constprop.0+0x4c>
   13c5c:	00650793          	addi	a5,a0,6
   13c60:	01058593          	addi	a1,a1,16
   13c64:	01850513          	addi	a0,a0,24
   13c68:	0007d703          	lhu	a4,0(a5)
   13c6c:	00278793          	addi	a5,a5,2
   13c70:	ffe58593          	addi	a1,a1,-2
   13c74:	00e59123          	sh	a4,2(a1)
   13c78:	fea798e3          	bne	a5,a0,13c68 <emovo.constprop.0+0x34>
   13c7c:	00008067          	ret
   13c80:	00650793          	addi	a5,a0,6
   13c84:	01a50513          	addi	a0,a0,26
   13c88:	0007d703          	lhu	a4,0(a5)
   13c8c:	00278793          	addi	a5,a5,2
   13c90:	02071a63          	bnez	a4,13cc4 <emovo.constprop.0+0x90>
   13c94:	fef51ae3          	bne	a0,a5,13c88 <emovo.constprop.0+0x54>
   13c98:	01258713          	addi	a4,a1,18
   13c9c:	00058793          	mv	a5,a1
   13ca0:	00278793          	addi	a5,a5,2
   13ca4:	fe079f23          	sh	zero,-2(a5)
   13ca8:	fee79ce3          	bne	a5,a4,13ca0 <emovo.constprop.0+0x6c>
   13cac:	0125d783          	lhu	a5,18(a1)
   13cb0:	00008737          	lui	a4,0x8
   13cb4:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   13cb8:	00e7e7b3          	or	a5,a5,a4
   13cbc:	00f59923          	sh	a5,18(a1)
   13cc0:	00008067          	ret
   13cc4:	01058713          	addi	a4,a1,16
   13cc8:	00058793          	mv	a5,a1
   13ccc:	00278793          	addi	a5,a5,2
   13cd0:	fe079f23          	sh	zero,-2(a5)
   13cd4:	fee79ce3          	bne	a5,a4,13ccc <emovo.constprop.0+0x98>
   13cd8:	ffffc7b7          	lui	a5,0xffffc
   13cdc:	00f59823          	sh	a5,16(a1)
   13ce0:	ffff87b7          	lui	a5,0xffff8
   13ce4:	fff7c793          	not	a5,a5
   13ce8:	00f59923          	sh	a5,18(a1)
   13cec:	00008067          	ret

0000000000013cf0 <enormlz>:
   13cf0:	00455783          	lhu	a5,4(a0)
   13cf4:	fe010113          	addi	sp,sp,-32
   13cf8:	00913423          	sd	s1,8(sp)
   13cfc:	00113c23          	sd	ra,24(sp)
   13d00:	00813823          	sd	s0,16(sp)
   13d04:	01213023          	sd	s2,0(sp)
   13d08:	00050493          	mv	s1,a0
   13d0c:	0c079663          	bnez	a5,13dd8 <enormlz+0xe8>
   13d10:	00655783          	lhu	a5,6(a0)
   13d14:	00000413          	li	s0,0
   13d18:	00f7d713          	srli	a4,a5,0xf
   13d1c:	0a071063          	bnez	a4,13dbc <enormlz+0xcc>
   13d20:	01850693          	addi	a3,a0,24
   13d24:	0a000613          	li	a2,160
   13d28:	02079663          	bnez	a5,13d54 <enormlz+0x64>
   13d2c:	00448793          	addi	a5,s1,4
   13d30:	0027d703          	lhu	a4,2(a5) # ffffffffffff8002 <__BSS_END__+0xfffffffffffd31fa>
   13d34:	00278793          	addi	a5,a5,2
   13d38:	fee79f23          	sh	a4,-2(a5)
   13d3c:	fed79ae3          	bne	a5,a3,13d30 <enormlz+0x40>
   13d40:	00049c23          	sh	zero,24(s1)
   13d44:	0104041b          	addiw	s0,s0,16
   13d48:	06c40a63          	beq	s0,a2,13dbc <enormlz+0xcc>
   13d4c:	0064d783          	lhu	a5,6(s1)
   13d50:	fc078ee3          	beqz	a5,13d2c <enormlz+0x3c>
   13d54:	0ff00713          	li	a4,255
   13d58:	04f76063          	bltu	a4,a5,13d98 <enormlz+0xa8>
   13d5c:	01848813          	addi	a6,s1,24
   13d60:	00248593          	addi	a1,s1,2
   13d64:	0ff00513          	li	a0,255
   13d68:	00000793          	li	a5,0
   13d6c:	00080713          	mv	a4,a6
   13d70:	00075683          	lhu	a3,0(a4)
   13d74:	ffe70713          	addi	a4,a4,-2
   13d78:	0086961b          	slliw	a2,a3,0x8
   13d7c:	00c7e7b3          	or	a5,a5,a2
   13d80:	00f71123          	sh	a5,2(a4)
   13d84:	0086d793          	srli	a5,a3,0x8
   13d88:	feb714e3          	bne	a4,a1,13d70 <enormlz+0x80>
   13d8c:	0064d783          	lhu	a5,6(s1)
   13d90:	0084041b          	addiw	s0,s0,8
   13d94:	fcf57ae3          	bgeu	a0,a5,13d68 <enormlz+0x78>
   13d98:	0a000913          	li	s2,160
   13d9c:	0140006f          	j	13db0 <enormlz+0xc0>
   13da0:	0014041b          	addiw	s0,s0,1
   13da4:	d71ff0ef          	jal	ra,13b14 <eshup1>
   13da8:	00894a63          	blt	s2,s0,13dbc <enormlz+0xcc>
   13dac:	0064d783          	lhu	a5,6(s1)
   13db0:	00f7d793          	srli	a5,a5,0xf
   13db4:	00048513          	mv	a0,s1
   13db8:	fe0784e3          	beqz	a5,13da0 <enormlz+0xb0>
   13dbc:	01813083          	ld	ra,24(sp)
   13dc0:	00040513          	mv	a0,s0
   13dc4:	01013403          	ld	s0,16(sp)
   13dc8:	00813483          	ld	s1,8(sp)
   13dcc:	00013903          	ld	s2,0(sp)
   13dd0:	02010113          	addi	sp,sp,32
   13dd4:	00008067          	ret
   13dd8:	0ff00713          	li	a4,255
   13ddc:	00000413          	li	s0,0
   13de0:	04f76063          	bltu	a4,a5,13e20 <enormlz+0x130>
   13de4:	f6f00913          	li	s2,-145
   13de8:	0140006f          	j	13dfc <enormlz+0x10c>
   13dec:	fff4041b          	addiw	s0,s0,-1
   13df0:	cd1ff0ef          	jal	ra,13ac0 <eshdn1>
   13df4:	fd2404e3          	beq	s0,s2,13dbc <enormlz+0xcc>
   13df8:	0044d783          	lhu	a5,4(s1)
   13dfc:	00048513          	mv	a0,s1
   13e00:	fe0796e3          	bnez	a5,13dec <enormlz+0xfc>
   13e04:	01813083          	ld	ra,24(sp)
   13e08:	00040513          	mv	a0,s0
   13e0c:	01013403          	ld	s0,16(sp)
   13e10:	00813483          	ld	s1,8(sp)
   13e14:	00013903          	ld	s2,0(sp)
   13e18:	02010113          	addi	sp,sp,32
   13e1c:	00008067          	ret
   13e20:	00450713          	addi	a4,a0,4
   13e24:	01a50593          	addi	a1,a0,26
   13e28:	00000793          	li	a5,0
   13e2c:	00075683          	lhu	a3,0(a4)
   13e30:	00270713          	addi	a4,a4,2
   13e34:	0086d61b          	srliw	a2,a3,0x8
   13e38:	00c7e7b3          	or	a5,a5,a2
   13e3c:	0086969b          	slliw	a3,a3,0x8
   13e40:	fef71f23          	sh	a5,-2(a4)
   13e44:	03069793          	slli	a5,a3,0x30
   13e48:	0307d793          	srli	a5,a5,0x30
   13e4c:	feb710e3          	bne	a4,a1,13e2c <enormlz+0x13c>
   13e50:	0044d783          	lhu	a5,4(s1)
   13e54:	ff800413          	li	s0,-8
   13e58:	f8dff06f          	j	13de4 <enormlz+0xf4>

0000000000013e5c <eshift.part.0>:
   13e5c:	fd010113          	addi	sp,sp,-48
   13e60:	02813023          	sd	s0,32(sp)
   13e64:	00913c23          	sd	s1,24(sp)
   13e68:	02113423          	sd	ra,40(sp)
   13e6c:	01213823          	sd	s2,16(sp)
   13e70:	01313423          	sd	s3,8(sp)
   13e74:	00058493          	mv	s1,a1
   13e78:	00050413          	mv	s0,a0
   13e7c:	0a05c463          	bltz	a1,13f24 <eshift.part.0+0xc8>
   13e80:	00f00793          	li	a5,15
   13e84:	00058613          	mv	a2,a1
   13e88:	00450513          	addi	a0,a0,4
   13e8c:	01840693          	addi	a3,s0,24
   13e90:	00f00593          	li	a1,15
   13e94:	0297d463          	bge	a5,s1,13ebc <eshift.part.0+0x60>
   13e98:	00050793          	mv	a5,a0
   13e9c:	0027d703          	lhu	a4,2(a5)
   13ea0:	00278793          	addi	a5,a5,2
   13ea4:	fee79f23          	sh	a4,-2(a5)
   13ea8:	fed79ae3          	bne	a5,a3,13e9c <eshift.part.0+0x40>
   13eac:	00041c23          	sh	zero,24(s0)
   13eb0:	ff06061b          	addiw	a2,a2,-16
   13eb4:	fec5c2e3          	blt	a1,a2,13e98 <eshift.part.0+0x3c>
   13eb8:	00f4f493          	andi	s1,s1,15
   13ebc:	00700793          	li	a5,7
   13ec0:	0297d863          	bge	a5,s1,13ef0 <eshift.part.0+0x94>
   13ec4:	01840713          	addi	a4,s0,24
   13ec8:	00240593          	addi	a1,s0,2
   13ecc:	00000793          	li	a5,0
   13ed0:	00075683          	lhu	a3,0(a4)
   13ed4:	ffe70713          	addi	a4,a4,-2
   13ed8:	0086961b          	slliw	a2,a3,0x8
   13edc:	00c7e7b3          	or	a5,a5,a2
   13ee0:	00f71123          	sh	a5,2(a4)
   13ee4:	0086d793          	srli	a5,a3,0x8
   13ee8:	feb714e3          	bne	a4,a1,13ed0 <eshift.part.0+0x74>
   13eec:	ff84849b          	addiw	s1,s1,-8
   13ef0:	00048a63          	beqz	s1,13f04 <eshift.part.0+0xa8>
   13ef4:	fff4849b          	addiw	s1,s1,-1
   13ef8:	00040513          	mv	a0,s0
   13efc:	c19ff0ef          	jal	ra,13b14 <eshup1>
   13f00:	fe049ae3          	bnez	s1,13ef4 <eshift.part.0+0x98>
   13f04:	00000513          	li	a0,0
   13f08:	02813083          	ld	ra,40(sp)
   13f0c:	02013403          	ld	s0,32(sp)
   13f10:	01813483          	ld	s1,24(sp)
   13f14:	01013903          	ld	s2,16(sp)
   13f18:	00813983          	ld	s3,8(sp)
   13f1c:	03010113          	addi	sp,sp,48
   13f20:	00008067          	ret
   13f24:	ff100793          	li	a5,-15
   13f28:	40b0093b          	negw	s2,a1
   13f2c:	00000993          	li	s3,0
   13f30:	01850593          	addi	a1,a0,24
   13f34:	00450693          	addi	a3,a0,4
   13f38:	00f00613          	li	a2,15
   13f3c:	0cf4dc63          	bge	s1,a5,14014 <eshift.part.0+0x1b8>
   13f40:	01845703          	lhu	a4,24(s0)
   13f44:	00058793          	mv	a5,a1
   13f48:	00e9e9b3          	or	s3,s3,a4
   13f4c:	ffe7d703          	lhu	a4,-2(a5)
   13f50:	ffe78793          	addi	a5,a5,-2
   13f54:	00e79123          	sh	a4,2(a5)
   13f58:	fed79ae3          	bne	a5,a3,13f4c <eshift.part.0+0xf0>
   13f5c:	00041223          	sh	zero,4(s0)
   13f60:	ff09091b          	addiw	s2,s2,-16
   13f64:	fd264ee3          	blt	a2,s2,13f40 <eshift.part.0+0xe4>
   13f68:	ff000913          	li	s2,-16
   13f6c:	ff100713          	li	a4,-15
   13f70:	4099093b          	subw	s2,s2,s1
   13f74:	00000793          	li	a5,0
   13f78:	08e4c863          	blt	s1,a4,14008 <eshift.part.0+0x1ac>
   13f7c:	00f9093b          	addw	s2,s2,a5
   13f80:	00700793          	li	a5,7
   13f84:	0327de63          	bge	a5,s2,13fc0 <eshift.part.0+0x164>
   13f88:	01844783          	lbu	a5,24(s0)
   13f8c:	01a40593          	addi	a1,s0,26
   13f90:	00f9e9b3          	or	s3,s3,a5
   13f94:	00000793          	li	a5,0
   13f98:	0006d703          	lhu	a4,0(a3)
   13f9c:	00268693          	addi	a3,a3,2
   13fa0:	0087561b          	srliw	a2,a4,0x8
   13fa4:	00c7e7b3          	or	a5,a5,a2
   13fa8:	0087171b          	slliw	a4,a4,0x8
   13fac:	fef69f23          	sh	a5,-2(a3)
   13fb0:	03071793          	slli	a5,a4,0x30
   13fb4:	0307d793          	srli	a5,a5,0x30
   13fb8:	feb690e3          	bne	a3,a1,13f98 <eshift.part.0+0x13c>
   13fbc:	ff89091b          	addiw	s2,s2,-8
   13fc0:	01303533          	snez	a0,s3
   13fc4:	f40902e3          	beqz	s2,13f08 <eshift.part.0+0xac>
   13fc8:	01845783          	lhu	a5,24(s0)
   13fcc:	fff9091b          	addiw	s2,s2,-1
   13fd0:	00040513          	mv	a0,s0
   13fd4:	0017f793          	andi	a5,a5,1
   13fd8:	00f9e9b3          	or	s3,s3,a5
   13fdc:	ae5ff0ef          	jal	ra,13ac0 <eshdn1>
   13fe0:	fe0914e3          	bnez	s2,13fc8 <eshift.part.0+0x16c>
   13fe4:	02813083          	ld	ra,40(sp)
   13fe8:	02013403          	ld	s0,32(sp)
   13fec:	0009899b          	sext.w	s3,s3
   13ff0:	01813483          	ld	s1,24(sp)
   13ff4:	01013903          	ld	s2,16(sp)
   13ff8:	01303533          	snez	a0,s3
   13ffc:	00813983          	ld	s3,8(sp)
   14000:	03010113          	addi	sp,sp,48
   14004:	00008067          	ret
   14008:	ff097793          	andi	a5,s2,-16
   1400c:	40f007bb          	negw	a5,a5
   14010:	f6dff06f          	j	13f7c <eshift.part.0+0x120>
   14014:	ff900793          	li	a5,-7
   14018:	f6f4c8e3          	blt	s1,a5,13f88 <eshift.part.0+0x12c>
   1401c:	fadff06f          	j	13fc8 <eshift.part.0+0x16c>

0000000000014020 <emovi>:
   14020:	01255783          	lhu	a5,18(a0)
   14024:	000086b7          	lui	a3,0x8
   14028:	fff68693          	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1402c:	00f7d79b          	srliw	a5,a5,0xf
   14030:	40f007bb          	negw	a5,a5
   14034:	00f59023          	sh	a5,0(a1)
   14038:	01255703          	lhu	a4,18(a0)
   1403c:	01050793          	addi	a5,a0,16
   14040:	00d77733          	and	a4,a4,a3
   14044:	00e59123          	sh	a4,2(a1)
   14048:	0007061b          	sext.w	a2,a4
   1404c:	02d70663          	beq	a4,a3,14078 <emovi+0x58>
   14050:	00658713          	addi	a4,a1,6
   14054:	00059223          	sh	zero,4(a1)
   14058:	ffe50513          	addi	a0,a0,-2
   1405c:	0007d683          	lhu	a3,0(a5)
   14060:	ffe78793          	addi	a5,a5,-2
   14064:	00270713          	addi	a4,a4,2
   14068:	fed71f23          	sh	a3,-2(a4)
   1406c:	fea798e3          	bne	a5,a0,1405c <emovi+0x3c>
   14070:	00059c23          	sh	zero,24(a1)
   14074:	00008067          	ret
   14078:	01255703          	lhu	a4,18(a0)
   1407c:	00c77733          	and	a4,a4,a2
   14080:	00c71e63          	bne	a4,a2,1409c <emovi+0x7c>
   14084:	01250613          	addi	a2,a0,18
   14088:	00050713          	mv	a4,a0
   1408c:	00075683          	lhu	a3,0(a4)
   14090:	00270713          	addi	a4,a4,2
   14094:	02069063          	bnez	a3,140b4 <emovi+0x94>
   14098:	fec71ae3          	bne	a4,a2,1408c <emovi+0x6c>
   1409c:	00458793          	addi	a5,a1,4
   140a0:	01a58593          	addi	a1,a1,26
   140a4:	00278793          	addi	a5,a5,2
   140a8:	fe079f23          	sh	zero,-2(a5)
   140ac:	feb79ce3          	bne	a5,a1,140a4 <emovi+0x84>
   140b0:	00008067          	ret
   140b4:	00658713          	addi	a4,a1,6
   140b8:	00059223          	sh	zero,4(a1)
   140bc:	ffc50513          	addi	a0,a0,-4
   140c0:	0007d683          	lhu	a3,0(a5)
   140c4:	ffe78793          	addi	a5,a5,-2
   140c8:	00270713          	addi	a4,a4,2
   140cc:	fed71f23          	sh	a3,-2(a4)
   140d0:	fef518e3          	bne	a0,a5,140c0 <emovi+0xa0>
   140d4:	00008067          	ret

00000000000140d8 <ecmp>:
   140d8:	01255783          	lhu	a5,18(a0)
   140dc:	fb010113          	addi	sp,sp,-80
   140e0:	04813023          	sd	s0,64(sp)
   140e4:	fff7c793          	not	a5,a5
   140e8:	04113423          	sd	ra,72(sp)
   140ec:	03179713          	slli	a4,a5,0x31
   140f0:	00058413          	mv	s0,a1
   140f4:	00071e63          	bnez	a4,14110 <ecmp+0x38>
   140f8:	01250693          	addi	a3,a0,18
   140fc:	00050793          	mv	a5,a0
   14100:	0007d703          	lhu	a4,0(a5)
   14104:	00278793          	addi	a5,a5,2
   14108:	08071c63          	bnez	a4,141a0 <ecmp+0xc8>
   1410c:	fed79ae3          	bne	a5,a3,14100 <ecmp+0x28>
   14110:	01245783          	lhu	a5,18(s0)
   14114:	fff7c793          	not	a5,a5
   14118:	03179713          	slli	a4,a5,0x31
   1411c:	06070063          	beqz	a4,1417c <ecmp+0xa4>
   14120:	00010593          	mv	a1,sp
   14124:	efdff0ef          	jal	ra,14020 <emovi>
   14128:	02010593          	addi	a1,sp,32
   1412c:	00040513          	mv	a0,s0
   14130:	ef1ff0ef          	jal	ra,14020 <emovi>
   14134:	00015583          	lhu	a1,0(sp)
   14138:	02015783          	lhu	a5,32(sp)
   1413c:	06b78c63          	beq	a5,a1,141b4 <ecmp+0xdc>
   14140:	00210793          	addi	a5,sp,2
   14144:	02210713          	addi	a4,sp,34
   14148:	01810613          	addi	a2,sp,24
   1414c:	0007d683          	lhu	a3,0(a5)
   14150:	00278793          	addi	a5,a5,2
   14154:	0a069663          	bnez	a3,14200 <ecmp+0x128>
   14158:	00075683          	lhu	a3,0(a4)
   1415c:	00270713          	addi	a4,a4,2
   14160:	0a069063          	bnez	a3,14200 <ecmp+0x128>
   14164:	fef614e3          	bne	a2,a5,1414c <ecmp+0x74>
   14168:	00000513          	li	a0,0
   1416c:	04813083          	ld	ra,72(sp)
   14170:	04013403          	ld	s0,64(sp)
   14174:	05010113          	addi	sp,sp,80
   14178:	00008067          	ret
   1417c:	00040793          	mv	a5,s0
   14180:	0007d703          	lhu	a4,0(a5)
   14184:	01240693          	addi	a3,s0,18
   14188:	00278793          	addi	a5,a5,2
   1418c:	00071a63          	bnez	a4,141a0 <ecmp+0xc8>
   14190:	f8d788e3          	beq	a5,a3,14120 <ecmp+0x48>
   14194:	0007d703          	lhu	a4,0(a5)
   14198:	00278793          	addi	a5,a5,2
   1419c:	fe070ae3          	beqz	a4,14190 <ecmp+0xb8>
   141a0:	04813083          	ld	ra,72(sp)
   141a4:	04013403          	ld	s0,64(sp)
   141a8:	ffe00513          	li	a0,-2
   141ac:	05010113          	addi	sp,sp,80
   141b0:	00008067          	ret
   141b4:	fff00513          	li	a0,-1
   141b8:	06058063          	beqz	a1,14218 <ecmp+0x140>
   141bc:	00010793          	mv	a5,sp
   141c0:	0007d603          	lhu	a2,0(a5)
   141c4:	02015683          	lhu	a3,32(sp)
   141c8:	02010713          	addi	a4,sp,32
   141cc:	01810593          	addi	a1,sp,24
   141d0:	00278793          	addi	a5,a5,2
   141d4:	00270713          	addi	a4,a4,2
   141d8:	00d61e63          	bne	a2,a3,141f4 <ecmp+0x11c>
   141dc:	f8b786e3          	beq	a5,a1,14168 <ecmp+0x90>
   141e0:	0007d603          	lhu	a2,0(a5)
   141e4:	00075683          	lhu	a3,0(a4)
   141e8:	00278793          	addi	a5,a5,2
   141ec:	00270713          	addi	a4,a4,2
   141f0:	fed606e3          	beq	a2,a3,141dc <ecmp+0x104>
   141f4:	f6c6ece3          	bltu	a3,a2,1416c <ecmp+0x94>
   141f8:	40a0053b          	negw	a0,a0
   141fc:	f71ff06f          	j	1416c <ecmp+0x94>
   14200:	02059063          	bnez	a1,14220 <ecmp+0x148>
   14204:	04813083          	ld	ra,72(sp)
   14208:	04013403          	ld	s0,64(sp)
   1420c:	00100513          	li	a0,1
   14210:	05010113          	addi	sp,sp,80
   14214:	00008067          	ret
   14218:	00100513          	li	a0,1
   1421c:	fa1ff06f          	j	141bc <ecmp+0xe4>
   14220:	fff00513          	li	a0,-1
   14224:	f49ff06f          	j	1416c <ecmp+0x94>

0000000000014228 <emdnorm>:
   14228:	fc010113          	addi	sp,sp,-64
   1422c:	02813823          	sd	s0,48(sp)
   14230:	02913423          	sd	s1,40(sp)
   14234:	03213023          	sd	s2,32(sp)
   14238:	01313c23          	sd	s3,24(sp)
   1423c:	01413823          	sd	s4,16(sp)
   14240:	01513423          	sd	s5,8(sp)
   14244:	00068913          	mv	s2,a3
   14248:	00078413          	mv	s0,a5
   1424c:	02113c23          	sd	ra,56(sp)
   14250:	00050493          	mv	s1,a0
   14254:	00058993          	mv	s3,a1
   14258:	00060a13          	mv	s4,a2
   1425c:	00070a93          	mv	s5,a4
   14260:	a91ff0ef          	jal	ra,13cf0 <enormlz>
   14264:	09000793          	li	a5,144
   14268:	40a90933          	sub	s2,s2,a0
   1426c:	18a7d863          	bge	a5,a0,143fc <emdnorm+0x1d4>
   14270:	000087b7          	lui	a5,0x8
   14274:	ffe78793          	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   14278:	2d27da63          	bge	a5,s2,1454c <emdnorm+0x324>
   1427c:	220a8a63          	beqz	s5,144b0 <emdnorm+0x288>
   14280:	00442a83          	lw	s5,4(s0)
   14284:	00042783          	lw	a5,0(s0)
   14288:	28fa8a63          	beq	s5,a5,1451c <emdnorm+0x2f4>
   1428c:	01a40713          	addi	a4,s0,26
   14290:	03440793          	addi	a5,s0,52
   14294:	00270713          	addi	a4,a4,2
   14298:	fe071f23          	sh	zero,-2(a4)
   1429c:	fee79ce3          	bne	a5,a4,14294 <emdnorm+0x6c>
   142a0:	03800793          	li	a5,56
   142a4:	38fa8863          	beq	s5,a5,14634 <emdnorm+0x40c>
   142a8:	1b57da63          	bge	a5,s5,1445c <emdnorm+0x234>
   142ac:	04000793          	li	a5,64
   142b0:	2afa8a63          	beq	s5,a5,14564 <emdnorm+0x33c>
   142b4:	07100793          	li	a5,113
   142b8:	3afa9c63          	bne	s5,a5,14670 <emdnorm+0x448>
   142bc:	400087b7          	lui	a5,0x40008
   142c0:	00a00693          	li	a3,10
   142c4:	ffff8737          	lui	a4,0xffff8
   142c8:	fff78793          	addi	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe31f7>
   142cc:	00d42423          	sw	a3,8(s0)
   142d0:	00f42a23          	sw	a5,20(s0)
   142d4:	00e41c23          	sh	a4,24(s0)
   142d8:	00d42623          	sw	a3,12(s0)
   142dc:	02e41723          	sh	a4,46(s0)
   142e0:	01542023          	sw	s5,0(s0)
   142e4:	23205063          	blez	s2,14504 <emdnorm+0x2dc>
   142e8:	0144d603          	lhu	a2,20(s1)
   142ec:	01448593          	addi	a1,s1,20
   142f0:	00b00793          	li	a5,11
   142f4:	03161613          	slli	a2,a2,0x31
   142f8:	03165613          	srli	a2,a2,0x31
   142fc:	00c00713          	li	a4,12
   14300:	40f7073b          	subw	a4,a4,a5
   14304:	02071713          	slli	a4,a4,0x20
   14308:	02075713          	srli	a4,a4,0x20
   1430c:	00f70733          	add	a4,a4,a5
   14310:	00171713          	slli	a4,a4,0x1
   14314:	00179793          	slli	a5,a5,0x1
   14318:	00248693          	addi	a3,s1,2
   1431c:	00f487b3          	add	a5,s1,a5
   14320:	00d70733          	add	a4,a4,a3
   14324:	0007d683          	lhu	a3,0(a5)
   14328:	00068463          	beqz	a3,14330 <emdnorm+0x108>
   1432c:	00166613          	ori	a2,a2,1
   14330:	00079023          	sh	zero,0(a5)
   14334:	00278793          	addi	a5,a5,2
   14338:	fef716e3          	bne	a4,a5,14324 <emdnorm+0xfc>
   1433c:	0005d703          	lhu	a4,0(a1)
   14340:	01445683          	lhu	a3,20(s0)
   14344:	fff6c693          	not	a3,a3
   14348:	00d77733          	and	a4,a4,a3
   1434c:	00e59023          	sh	a4,0(a1)
   14350:	01645783          	lhu	a5,22(s0)
   14354:	00c7f733          	and	a4,a5,a2
   14358:	06070063          	beqz	a4,143b8 <emdnorm+0x190>
   1435c:	02c79263          	bne	a5,a2,14380 <emdnorm+0x158>
   14360:	2c099663          	bnez	s3,1462c <emdnorm+0x404>
   14364:	00c42783          	lw	a5,12(s0)
   14368:	01845703          	lhu	a4,24(s0)
   1436c:	00179793          	slli	a5,a5,0x1
   14370:	00f487b3          	add	a5,s1,a5
   14374:	0007d783          	lhu	a5,0(a5)
   14378:	00e7f7b3          	and	a5,a5,a4
   1437c:	02078e63          	beqz	a5,143b8 <emdnorm+0x190>
   14380:	03240793          	addi	a5,s0,50
   14384:	01848613          	addi	a2,s1,24
   14388:	00248513          	addi	a0,s1,2
   1438c:	00000593          	li	a1,0
   14390:	0007d703          	lhu	a4,0(a5)
   14394:	00065683          	lhu	a3,0(a2)
   14398:	ffe60613          	addi	a2,a2,-2
   1439c:	ffe78793          	addi	a5,a5,-2
   143a0:	00d70733          	add	a4,a4,a3
   143a4:	00b70733          	add	a4,a4,a1
   143a8:	01075593          	srli	a1,a4,0x10
   143ac:	00e61123          	sh	a4,2(a2)
   143b0:	0015f593          	andi	a1,a1,1
   143b4:	fca61ee3          	bne	a2,a0,14390 <emdnorm+0x168>
   143b8:	23205a63          	blez	s2,145ec <emdnorm+0x3c4>
   143bc:	0044d783          	lhu	a5,4(s1)
   143c0:	20079663          	bnez	a5,145cc <emdnorm+0x3a4>
   143c4:	000087b7          	lui	a5,0x8
   143c8:	00049c23          	sh	zero,24(s1)
   143cc:	ffe78793          	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   143d0:	0f27c263          	blt	a5,s2,144b4 <emdnorm+0x28c>
   143d4:	01249123          	sh	s2,2(s1)
   143d8:	03813083          	ld	ra,56(sp)
   143dc:	03013403          	ld	s0,48(sp)
   143e0:	02813483          	ld	s1,40(sp)
   143e4:	02013903          	ld	s2,32(sp)
   143e8:	01813983          	ld	s3,24(sp)
   143ec:	01013a03          	ld	s4,16(sp)
   143f0:	00813a83          	ld	s5,8(sp)
   143f4:	04010113          	addi	sp,sp,64
   143f8:	00008067          	ret
   143fc:	04094063          	bltz	s2,1443c <emdnorm+0x214>
   14400:	fc0a82e3          	beqz	s5,143c4 <emdnorm+0x19c>
   14404:	00442a83          	lw	s5,4(s0)
   14408:	00042783          	lw	a5,0(s0)
   1440c:	e8fa90e3          	bne	s5,a5,1428c <emdnorm+0x64>
   14410:	2d204263          	bgtz	s2,146d4 <emdnorm+0x4ac>
   14414:	09000713          	li	a4,144
   14418:	2ce79263          	bne	a5,a4,146dc <emdnorm+0x4b4>
   1441c:	00842583          	lw	a1,8(s0)
   14420:	01445683          	lhu	a3,20(s0)
   14424:	09000a93          	li	s5,144
   14428:	00159593          	slli	a1,a1,0x1
   1442c:	00b485b3          	add	a1,s1,a1
   14430:	0005d703          	lhu	a4,0(a1)
   14434:	00d77633          	and	a2,a4,a3
   14438:	f0dff06f          	j	14344 <emdnorm+0x11c>
   1443c:	f7000793          	li	a5,-144
   14440:	16f95263          	bge	s2,a5,145a4 <emdnorm+0x37c>
   14444:	00248793          	addi	a5,s1,2
   14448:	01a48493          	addi	s1,s1,26
   1444c:	00278793          	addi	a5,a5,2
   14450:	fe079f23          	sh	zero,-2(a5)
   14454:	fef49ce3          	bne	s1,a5,1444c <emdnorm+0x224>
   14458:	f81ff06f          	j	143d8 <emdnorm+0x1b0>
   1445c:	01800793          	li	a5,24
   14460:	06fa8c63          	beq	s5,a5,144d8 <emdnorm+0x2b0>
   14464:	03500793          	li	a5,53
   14468:	20fa9463          	bne	s5,a5,14670 <emdnorm+0x448>
   1446c:	000017b7          	lui	a5,0x1
   14470:	04000737          	lui	a4,0x4000
   14474:	00600693          	li	a3,6
   14478:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8e8>
   1447c:	7ff70713          	addi	a4,a4,2047 # 40007ff <__BSS_END__+0x3fdb9f7>
   14480:	00d42423          	sw	a3,8(s0)
   14484:	00e42a23          	sw	a4,20(s0)
   14488:	00f41c23          	sh	a5,24(s0)
   1448c:	00d42623          	sw	a3,12(s0)
   14490:	02f41323          	sh	a5,38(s0)
   14494:	01542023          	sw	s5,0(s0)
   14498:	07205663          	blez	s2,14504 <emdnorm+0x2dc>
   1449c:	00c4d603          	lhu	a2,12(s1)
   144a0:	00c48593          	addi	a1,s1,12
   144a4:	00700793          	li	a5,7
   144a8:	7ff67613          	andi	a2,a2,2047
   144ac:	e51ff06f          	j	142fc <emdnorm+0xd4>
   144b0:	00049c23          	sh	zero,24(s1)
   144b4:	ffff87b7          	lui	a5,0xffff8
   144b8:	fff7c793          	not	a5,a5
   144bc:	00f49123          	sh	a5,2(s1)
   144c0:	00448793          	addi	a5,s1,4
   144c4:	01848493          	addi	s1,s1,24
   144c8:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31f8>
   144cc:	00278793          	addi	a5,a5,2
   144d0:	fe979ce3          	bne	a5,s1,144c8 <emdnorm+0x2a0>
   144d4:	f05ff06f          	j	143d8 <emdnorm+0x1b0>
   144d8:	008007b7          	lui	a5,0x800
   144dc:	00400693          	li	a3,4
   144e0:	10000713          	li	a4,256
   144e4:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7db2f7>
   144e8:	00d42423          	sw	a3,8(s0)
   144ec:	00f42a23          	sw	a5,20(s0)
   144f0:	00e41c23          	sh	a4,24(s0)
   144f4:	00d42623          	sw	a3,12(s0)
   144f8:	02e41123          	sh	a4,34(s0)
   144fc:	01542023          	sw	s5,0(s0)
   14500:	1b204c63          	bgtz	s2,146b8 <emdnorm+0x490>
   14504:	0184d783          	lhu	a5,24(s1)
   14508:	00048513          	mv	a0,s1
   1450c:	0017f793          	andi	a5,a5,1
   14510:	00f9e7b3          	or	a5,s3,a5
   14514:	0007899b          	sext.w	s3,a5
   14518:	da8ff0ef          	jal	ra,13ac0 <eshdn1>
   1451c:	00842783          	lw	a5,8(s0)
   14520:	01445683          	lhu	a3,20(s0)
   14524:	08f00513          	li	a0,143
   14528:	00179593          	slli	a1,a5,0x1
   1452c:	00b485b3          	add	a1,s1,a1
   14530:	0005d703          	lhu	a4,0(a1)
   14534:	00d77633          	and	a2,a4,a3
   14538:	e15546e3          	blt	a0,s5,14344 <emdnorm+0x11c>
   1453c:	0017879b          	addiw	a5,a5,1
   14540:	00c00513          	li	a0,12
   14544:	daf55ce3          	bge	a0,a5,142fc <emdnorm+0xd4>
   14548:	dfdff06f          	j	14344 <emdnorm+0x11c>
   1454c:	00248793          	addi	a5,s1,2
   14550:	01a48493          	addi	s1,s1,26
   14554:	00278793          	addi	a5,a5,2
   14558:	fe079f23          	sh	zero,-2(a5)
   1455c:	fef49ce3          	bne	s1,a5,14554 <emdnorm+0x32c>
   14560:	e79ff06f          	j	143d8 <emdnorm+0x1b0>
   14564:	00700793          	li	a5,7
   14568:	00f42423          	sw	a5,8(s0)
   1456c:	800107b7          	lui	a5,0x80010
   14570:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb1f7>
   14574:	00100713          	li	a4,1
   14578:	00f42a23          	sw	a5,20(s0)
   1457c:	00600793          	li	a5,6
   14580:	00e41c23          	sh	a4,24(s0)
   14584:	00f42623          	sw	a5,12(s0)
   14588:	02e41323          	sh	a4,38(s0)
   1458c:	01542023          	sw	s5,0(s0)
   14590:	f7205ae3          	blez	s2,14504 <emdnorm+0x2dc>
   14594:	00e4d603          	lhu	a2,14(s1)
   14598:	00e48593          	addi	a1,s1,14
   1459c:	00800793          	li	a5,8
   145a0:	d5dff06f          	j	142fc <emdnorm+0xd4>
   145a4:	0009059b          	sext.w	a1,s2
   145a8:	00048513          	mv	a0,s1
   145ac:	8b1ff0ef          	jal	ra,13e5c <eshift.part.0>
   145b0:	0e050a63          	beqz	a0,146a4 <emdnorm+0x47c>
   145b4:	100a8a63          	beqz	s5,146c8 <emdnorm+0x4a0>
   145b8:	00442a83          	lw	s5,4(s0)
   145bc:	00042783          	lw	a5,0(s0)
   145c0:	00100993          	li	s3,1
   145c4:	ccfa94e3          	bne	s5,a5,1428c <emdnorm+0x64>
   145c8:	e4dff06f          	j	14414 <emdnorm+0x1ec>
   145cc:	00048513          	mv	a0,s1
   145d0:	cf0ff0ef          	jal	ra,13ac0 <eshdn1>
   145d4:	000087b7          	lui	a5,0x8
   145d8:	00190913          	addi	s2,s2,1
   145dc:	00049c23          	sh	zero,24(s1)
   145e0:	ffe78793          	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   145e4:	ed27c8e3          	blt	a5,s2,144b4 <emdnorm+0x28c>
   145e8:	dedff06f          	j	143d4 <emdnorm+0x1ac>
   145ec:	09000793          	li	a5,144
   145f0:	02fa8263          	beq	s5,a5,14614 <emdnorm+0x3ec>
   145f4:	00048513          	mv	a0,s1
   145f8:	d1cff0ef          	jal	ra,13b14 <eshup1>
   145fc:	0044d783          	lhu	a5,4(s1)
   14600:	00079e63          	bnez	a5,1461c <emdnorm+0x3f4>
   14604:	00049c23          	sh	zero,24(s1)
   14608:	dc0956e3          	bgez	s2,143d4 <emdnorm+0x1ac>
   1460c:	00049123          	sh	zero,2(s1)
   14610:	dc9ff06f          	j	143d8 <emdnorm+0x1b0>
   14614:	0044d783          	lhu	a5,4(s1)
   14618:	fe0786e3          	beqz	a5,14604 <emdnorm+0x3dc>
   1461c:	00048513          	mv	a0,s1
   14620:	ca0ff0ef          	jal	ra,13ac0 <eshdn1>
   14624:	00190913          	addi	s2,s2,1
   14628:	fddff06f          	j	14604 <emdnorm+0x3dc>
   1462c:	d40a0ae3          	beqz	s4,14380 <emdnorm+0x158>
   14630:	d89ff06f          	j	143b8 <emdnorm+0x190>
   14634:	008007b7          	lui	a5,0x800
   14638:	00600693          	li	a3,6
   1463c:	10000713          	li	a4,256
   14640:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7db2f7>
   14644:	00d42423          	sw	a3,8(s0)
   14648:	00f42a23          	sw	a5,20(s0)
   1464c:	00e41c23          	sh	a4,24(s0)
   14650:	00d42623          	sw	a3,12(s0)
   14654:	02e41323          	sh	a4,38(s0)
   14658:	01542023          	sw	s5,0(s0)
   1465c:	eb2054e3          	blez	s2,14504 <emdnorm+0x2dc>
   14660:	00c4c603          	lbu	a2,12(s1)
   14664:	00c48593          	addi	a1,s1,12
   14668:	00700793          	li	a5,7
   1466c:	c91ff06f          	j	142fc <emdnorm+0xd4>
   14670:	00c00793          	li	a5,12
   14674:	00f42423          	sw	a5,8(s0)
   14678:	800107b7          	lui	a5,0x80010
   1467c:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb1f7>
   14680:	00100713          	li	a4,1
   14684:	00f42a23          	sw	a5,20(s0)
   14688:	00b00793          	li	a5,11
   1468c:	00f42623          	sw	a5,12(s0)
   14690:	00e41c23          	sh	a4,24(s0)
   14694:	02e41823          	sh	a4,48(s0)
   14698:	01542023          	sw	s5,0(s0)
   1469c:	000a8793          	mv	a5,s5
   146a0:	d71ff06f          	j	14410 <emdnorm+0x1e8>
   146a4:	020a8263          	beqz	s5,146c8 <emdnorm+0x4a0>
   146a8:	00442a83          	lw	s5,4(s0)
   146ac:	00042783          	lw	a5,0(s0)
   146b0:	bcfa9ee3          	bne	s5,a5,1428c <emdnorm+0x64>
   146b4:	d61ff06f          	j	14414 <emdnorm+0x1ec>
   146b8:	0084c603          	lbu	a2,8(s1)
   146bc:	00848593          	addi	a1,s1,8
   146c0:	00500793          	li	a5,5
   146c4:	c39ff06f          	j	142fc <emdnorm+0xd4>
   146c8:	00049c23          	sh	zero,24(s1)
   146cc:	00049123          	sh	zero,2(s1)
   146d0:	d09ff06f          	j	143d8 <emdnorm+0x1b0>
   146d4:	00078a93          	mv	s5,a5
   146d8:	e45ff06f          	j	1451c <emdnorm+0x2f4>
   146dc:	00078a93          	mv	s5,a5
   146e0:	e25ff06f          	j	14504 <emdnorm+0x2dc>

00000000000146e4 <eiremain>:
   146e4:	fa010113          	addi	sp,sp,-96
   146e8:	05213023          	sd	s2,64(sp)
   146ec:	03313c23          	sd	s3,56(sp)
   146f0:	00058913          	mv	s2,a1
   146f4:	00255983          	lhu	s3,2(a0)
   146f8:	04113c23          	sd	ra,88(sp)
   146fc:	04813823          	sd	s0,80(sp)
   14700:	04913423          	sd	s1,72(sp)
   14704:	03413823          	sd	s4,48(sp)
   14708:	00060493          	mv	s1,a2
   1470c:	01713c23          	sd	s7,24(sp)
   14710:	03513423          	sd	s5,40(sp)
   14714:	03613023          	sd	s6,32(sp)
   14718:	01813823          	sd	s8,16(sp)
   1471c:	01913423          	sd	s9,8(sp)
   14720:	01a13023          	sd	s10,0(sp)
   14724:	00050b93          	mv	s7,a0
   14728:	dc8ff0ef          	jal	ra,13cf0 <enormlz>
   1472c:	00295403          	lhu	s0,2(s2)
   14730:	00050793          	mv	a5,a0
   14734:	00090513          	mv	a0,s2
   14738:	40f989b3          	sub	s3,s3,a5
   1473c:	03448a13          	addi	s4,s1,52
   14740:	db0ff0ef          	jal	ra,13cf0 <enormlz>
   14744:	40a40433          	sub	s0,s0,a0
   14748:	04e48713          	addi	a4,s1,78
   1474c:	000a0793          	mv	a5,s4
   14750:	00278793          	addi	a5,a5,2
   14754:	fe079f23          	sh	zero,-2(a5)
   14758:	fee79ce3          	bne	a5,a4,14750 <eiremain+0x6c>
   1475c:	09344863          	blt	s0,s3,147ec <eiremain+0x108>
   14760:	004b8b13          	addi	s6,s7,4
   14764:	00490a93          	addi	s5,s2,4
   14768:	01ab8c13          	addi	s8,s7,26
   1476c:	00290d13          	addi	s10,s2,2
   14770:	000a8713          	mv	a4,s5
   14774:	000b0793          	mv	a5,s6
   14778:	0007d603          	lhu	a2,0(a5)
   1477c:	00075683          	lhu	a3,0(a4)
   14780:	00278793          	addi	a5,a5,2
   14784:	00270713          	addi	a4,a4,2
   14788:	0ad61a63          	bne	a2,a3,1483c <eiremain+0x158>
   1478c:	fefc16e3          	bne	s8,a5,14778 <eiremain+0x94>
   14790:	018b8613          	addi	a2,s7,24
   14794:	01890713          	addi	a4,s2,24
   14798:	00000693          	li	a3,0
   1479c:	00075783          	lhu	a5,0(a4)
   147a0:	00065583          	lhu	a1,0(a2)
   147a4:	ffe70713          	addi	a4,a4,-2
   147a8:	ffe60613          	addi	a2,a2,-2
   147ac:	40b787b3          	sub	a5,a5,a1
   147b0:	40d787b3          	sub	a5,a5,a3
   147b4:	0107d693          	srli	a3,a5,0x10
   147b8:	00f71123          	sh	a5,2(a4)
   147bc:	0016f693          	andi	a3,a3,1
   147c0:	fda71ee3          	bne	a4,s10,1479c <eiremain+0xb8>
   147c4:	00100c93          	li	s9,1
   147c8:	000a0513          	mv	a0,s4
   147cc:	b48ff0ef          	jal	ra,13b14 <eshup1>
   147d0:	04c4d783          	lhu	a5,76(s1)
   147d4:	fff40413          	addi	s0,s0,-1
   147d8:	00090513          	mv	a0,s2
   147dc:	00fce7b3          	or	a5,s9,a5
   147e0:	04f49623          	sh	a5,76(s1)
   147e4:	b30ff0ef          	jal	ra,13b14 <eshup1>
   147e8:	f93454e3          	bge	s0,s3,14770 <eiremain+0x8c>
   147ec:	00040693          	mv	a3,s0
   147f0:	05013403          	ld	s0,80(sp)
   147f4:	05813083          	ld	ra,88(sp)
   147f8:	03813983          	ld	s3,56(sp)
   147fc:	03013a03          	ld	s4,48(sp)
   14800:	02813a83          	ld	s5,40(sp)
   14804:	02013b03          	ld	s6,32(sp)
   14808:	01813b83          	ld	s7,24(sp)
   1480c:	01013c03          	ld	s8,16(sp)
   14810:	00813c83          	ld	s9,8(sp)
   14814:	00013d03          	ld	s10,0(sp)
   14818:	00048793          	mv	a5,s1
   1481c:	00090513          	mv	a0,s2
   14820:	04813483          	ld	s1,72(sp)
   14824:	04013903          	ld	s2,64(sp)
   14828:	00000713          	li	a4,0
   1482c:	00000613          	li	a2,0
   14830:	00000593          	li	a1,0
   14834:	06010113          	addi	sp,sp,96
   14838:	9f1ff06f          	j	14228 <emdnorm>
   1483c:	00000c93          	li	s9,0
   14840:	f8c6e4e3          	bltu	a3,a2,147c8 <eiremain+0xe4>
   14844:	f4dff06f          	j	14790 <eiremain+0xac>

0000000000014848 <e113toe.isra.0>:
   14848:	fd010113          	addi	sp,sp,-48
   1484c:	02813023          	sd	s0,32(sp)
   14850:	02113423          	sd	ra,40(sp)
   14854:	00058413          	mv	s0,a1
   14858:	00010793          	mv	a5,sp
   1485c:	01a10713          	addi	a4,sp,26
   14860:	00278793          	addi	a5,a5,2
   14864:	fe079f23          	sh	zero,-2(a5)
   14868:	fee79ce3          	bne	a5,a4,14860 <e113toe.isra.0+0x18>
   1486c:	00e55783          	lhu	a5,14(a0)
   14870:	00008737          	lui	a4,0x8
   14874:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14878:	03079693          	slli	a3,a5,0x30
   1487c:	43f6d693          	srai	a3,a3,0x3f
   14880:	00d11023          	sh	a3,0(sp)
   14884:	00e7f6b3          	and	a3,a5,a4
   14888:	00068613          	mv	a2,a3
   1488c:	06e68063          	beq	a3,a4,148ec <e113toe.isra.0+0xa4>
   14890:	00e50793          	addi	a5,a0,14
   14894:	00d11123          	sh	a3,2(sp)
   14898:	00610713          	addi	a4,sp,6
   1489c:	ffe7d683          	lhu	a3,-2(a5)
   148a0:	ffe78793          	addi	a5,a5,-2
   148a4:	00270713          	addi	a4,a4,2
   148a8:	fed71f23          	sh	a3,-2(a4)
   148ac:	fef518e3          	bne	a0,a5,1489c <e113toe.isra.0+0x54>
   148b0:	02061263          	bnez	a2,148d4 <e113toe.isra.0+0x8c>
   148b4:	00011223          	sh	zero,4(sp)
   148b8:	00040593          	mv	a1,s0
   148bc:	00010513          	mv	a0,sp
   148c0:	b74ff0ef          	jal	ra,13c34 <emovo.constprop.0>
   148c4:	02813083          	ld	ra,40(sp)
   148c8:	02013403          	ld	s0,32(sp)
   148cc:	03010113          	addi	sp,sp,48
   148d0:	00008067          	ret
   148d4:	00100793          	li	a5,1
   148d8:	fff00593          	li	a1,-1
   148dc:	00010513          	mv	a0,sp
   148e0:	00f11223          	sh	a5,4(sp)
   148e4:	d78ff0ef          	jal	ra,13e5c <eshift.part.0>
   148e8:	fd1ff06f          	j	148b8 <e113toe.isra.0+0x70>
   148ec:	00050793          	mv	a5,a0
   148f0:	00e50693          	addi	a3,a0,14
   148f4:	0007d703          	lhu	a4,0(a5)
   148f8:	00278793          	addi	a5,a5,2
   148fc:	06071c63          	bnez	a4,14974 <e113toe.isra.0+0x12c>
   14900:	fed79ae3          	bne	a5,a3,148f4 <e113toe.isra.0+0xac>
   14904:	01440713          	addi	a4,s0,20
   14908:	00040793          	mv	a5,s0
   1490c:	00278793          	addi	a5,a5,2
   14910:	fe079f23          	sh	zero,-2(a5)
   14914:	fee79ce3          	bne	a5,a4,1490c <e113toe.isra.0+0xc4>
   14918:	01240713          	addi	a4,s0,18
   1491c:	00040793          	mv	a5,s0
   14920:	00278793          	addi	a5,a5,2
   14924:	fe079f23          	sh	zero,-2(a5)
   14928:	fee79ce3          	bne	a5,a4,14920 <e113toe.isra.0+0xd8>
   1492c:	01245783          	lhu	a5,18(s0)
   14930:	000086b7          	lui	a3,0x8
   14934:	fff68693          	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   14938:	00d7e7b3          	or	a5,a5,a3
   1493c:	03079793          	slli	a5,a5,0x30
   14940:	0307d793          	srli	a5,a5,0x30
   14944:	00f41923          	sh	a5,18(s0)
   14948:	00e51683          	lh	a3,14(a0)
   1494c:	f606dce3          	bgez	a3,148c4 <e113toe.isra.0+0x7c>
   14950:	00040693          	mv	a3,s0
   14954:	0006d603          	lhu	a2,0(a3)
   14958:	00268693          	addi	a3,a3,2
   1495c:	f60614e3          	bnez	a2,148c4 <e113toe.isra.0+0x7c>
   14960:	fee69ae3          	bne	a3,a4,14954 <e113toe.isra.0+0x10c>
   14964:	ffff8737          	lui	a4,0xffff8
   14968:	00e7c7b3          	xor	a5,a5,a4
   1496c:	00f41923          	sh	a5,18(s0)
   14970:	f55ff06f          	j	148c4 <e113toe.isra.0+0x7c>
   14974:	01040713          	addi	a4,s0,16
   14978:	00040793          	mv	a5,s0
   1497c:	00278793          	addi	a5,a5,2
   14980:	fe079f23          	sh	zero,-2(a5)
   14984:	fee79ce3          	bne	a5,a4,1497c <e113toe.isra.0+0x134>
   14988:	ffffc7b7          	lui	a5,0xffffc
   1498c:	00f41823          	sh	a5,16(s0)
   14990:	ffff87b7          	lui	a5,0xffff8
   14994:	fff7c793          	not	a5,a5
   14998:	00f41923          	sh	a5,18(s0)
   1499c:	f29ff06f          	j	148c4 <e113toe.isra.0+0x7c>

00000000000149a0 <ediv>:
   149a0:	01255783          	lhu	a5,18(a0)
   149a4:	f1010113          	addi	sp,sp,-240
   149a8:	0e813023          	sd	s0,224(sp)
   149ac:	fff7c793          	not	a5,a5
   149b0:	0c913c23          	sd	s1,216(sp)
   149b4:	0d213823          	sd	s2,208(sp)
   149b8:	0d313423          	sd	s3,200(sp)
   149bc:	0e113423          	sd	ra,232(sp)
   149c0:	0d413023          	sd	s4,192(sp)
   149c4:	0b513c23          	sd	s5,184(sp)
   149c8:	0b613823          	sd	s6,176(sp)
   149cc:	0b713423          	sd	s7,168(sp)
   149d0:	0b813023          	sd	s8,160(sp)
   149d4:	09913c23          	sd	s9,152(sp)
   149d8:	09a13823          	sd	s10,144(sp)
   149dc:	09b13423          	sd	s11,136(sp)
   149e0:	03179713          	slli	a4,a5,0x31
   149e4:	00050493          	mv	s1,a0
   149e8:	00058993          	mv	s3,a1
   149ec:	00060413          	mv	s0,a2
   149f0:	00068913          	mv	s2,a3
   149f4:	00071e63          	bnez	a4,14a10 <ediv+0x70>
   149f8:	01250693          	addi	a3,a0,18
   149fc:	00050793          	mv	a5,a0
   14a00:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31f8>
   14a04:	00278793          	addi	a5,a5,2
   14a08:	0e071e63          	bnez	a4,14b04 <ediv+0x164>
   14a0c:	fed79ae3          	bne	a5,a3,14a00 <ediv+0x60>
   14a10:	0129d783          	lhu	a5,18(s3)
   14a14:	fff7c793          	not	a5,a5
   14a18:	03179713          	slli	a4,a5,0x31
   14a1c:	00071e63          	bnez	a4,14a38 <ediv+0x98>
   14a20:	01298693          	addi	a3,s3,18
   14a24:	00098793          	mv	a5,s3
   14a28:	0007d703          	lhu	a4,0(a5)
   14a2c:	00278793          	addi	a5,a5,2
   14a30:	0e071863          	bnez	a4,14b20 <ediv+0x180>
   14a34:	fed79ae3          	bne	a5,a3,14a28 <ediv+0x88>
   14a38:	00022a37          	lui	s4,0x22
   14a3c:	290a0593          	addi	a1,s4,656 # 22290 <ezero>
   14a40:	00048513          	mv	a0,s1
   14a44:	e94ff0ef          	jal	ra,140d8 <ecmp>
   14a48:	18050a63          	beqz	a0,14bdc <ediv+0x23c>
   14a4c:	0124d603          	lhu	a2,18(s1)
   14a50:	000087b7          	lui	a5,0x8
   14a54:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14a58:	00f67533          	and	a0,a2,a5
   14a5c:	0ef51063          	bne	a0,a5,14b3c <ediv+0x19c>
   14a60:	01248693          	addi	a3,s1,18
   14a64:	00048793          	mv	a5,s1
   14a68:	0007d703          	lhu	a4,0(a5)
   14a6c:	00278793          	addi	a5,a5,2
   14a70:	0c071663          	bnez	a4,14b3c <ediv+0x19c>
   14a74:	fed79ae3          	bne	a5,a3,14a68 <ediv+0xc8>
   14a78:	0129d703          	lhu	a4,18(s3)
   14a7c:	fff74793          	not	a5,a4
   14a80:	03179693          	slli	a3,a5,0x31
   14a84:	14069263          	bnez	a3,14bc8 <ediv+0x228>
   14a88:	01298693          	addi	a3,s3,18
   14a8c:	00098793          	mv	a5,s3
   14a90:	0007d583          	lhu	a1,0(a5)
   14a94:	00278793          	addi	a5,a5,2
   14a98:	48059c63          	bnez	a1,14f30 <ediv+0x590>
   14a9c:	fed79ae3          	bne	a5,a3,14a90 <ediv+0xf0>
   14aa0:	01040713          	addi	a4,s0,16
   14aa4:	00040793          	mv	a5,s0
   14aa8:	00278793          	addi	a5,a5,2
   14aac:	fe079f23          	sh	zero,-2(a5)
   14ab0:	fee79ce3          	bne	a5,a4,14aa8 <ediv+0x108>
   14ab4:	ffffc7b7          	lui	a5,0xffffc
   14ab8:	00f41823          	sh	a5,16(s0)
   14abc:	ffff87b7          	lui	a5,0xffff8
   14ac0:	fff7c793          	not	a5,a5
   14ac4:	00f41923          	sh	a5,18(s0)
   14ac8:	0e813083          	ld	ra,232(sp)
   14acc:	0e013403          	ld	s0,224(sp)
   14ad0:	0d813483          	ld	s1,216(sp)
   14ad4:	0d013903          	ld	s2,208(sp)
   14ad8:	0c813983          	ld	s3,200(sp)
   14adc:	0c013a03          	ld	s4,192(sp)
   14ae0:	0b813a83          	ld	s5,184(sp)
   14ae4:	0b013b03          	ld	s6,176(sp)
   14ae8:	0a813b83          	ld	s7,168(sp)
   14aec:	0a013c03          	ld	s8,160(sp)
   14af0:	09813c83          	ld	s9,152(sp)
   14af4:	09013d03          	ld	s10,144(sp)
   14af8:	08813d83          	ld	s11,136(sp)
   14afc:	0f010113          	addi	sp,sp,240
   14b00:	00008067          	ret
   14b04:	01448713          	addi	a4,s1,20
   14b08:	0004d783          	lhu	a5,0(s1)
   14b0c:	00248493          	addi	s1,s1,2
   14b10:	00240413          	addi	s0,s0,2
   14b14:	fef41f23          	sh	a5,-2(s0)
   14b18:	fee498e3          	bne	s1,a4,14b08 <ediv+0x168>
   14b1c:	fadff06f          	j	14ac8 <ediv+0x128>
   14b20:	01440713          	addi	a4,s0,20
   14b24:	0009d783          	lhu	a5,0(s3)
   14b28:	00240413          	addi	s0,s0,2
   14b2c:	00298993          	addi	s3,s3,2
   14b30:	fef41f23          	sh	a5,-2(s0)
   14b34:	fee418e3          	bne	s0,a4,14b24 <ediv+0x184>
   14b38:	f91ff06f          	j	14ac8 <ediv+0x128>
   14b3c:	0129d703          	lhu	a4,18(s3)
   14b40:	fff74793          	not	a5,a4
   14b44:	03179693          	slli	a3,a5,0x31
   14b48:	0a069463          	bnez	a3,14bf0 <ediv+0x250>
   14b4c:	00000813          	li	a6,0
   14b50:	01298693          	addi	a3,s3,18
   14b54:	00098793          	mv	a5,s3
   14b58:	0007d583          	lhu	a1,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31f8>
   14b5c:	00278793          	addi	a5,a5,2
   14b60:	06059263          	bnez	a1,14bc4 <ediv+0x224>
   14b64:	fed79ae3          	bne	a5,a3,14b58 <ediv+0x1b8>
   14b68:	000087b7          	lui	a5,0x8
   14b6c:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14b70:	0cf50863          	beq	a0,a5,14c40 <ediv+0x2a0>
   14b74:	00f65613          	srli	a2,a2,0xf
   14b78:	0009d783          	lhu	a5,0(s3)
   14b7c:	00298993          	addi	s3,s3,2
   14b80:	3a079063          	bnez	a5,14f20 <ediv+0x580>
   14b84:	fed99ae3          	bne	s3,a3,14b78 <ediv+0x1d8>
   14b88:	00f75793          	srli	a5,a4,0xf
   14b8c:	00c7c7b3          	xor	a5,a5,a2
   14b90:	00f7979b          	slliw	a5,a5,0xf
   14b94:	00f41923          	sh	a5,18(s0)
   14b98:	01240713          	addi	a4,s0,18
   14b9c:	00040793          	mv	a5,s0
   14ba0:	00278793          	addi	a5,a5,2
   14ba4:	fe079f23          	sh	zero,-2(a5)
   14ba8:	fee79ce3          	bne	a5,a4,14ba0 <ediv+0x200>
   14bac:	01245783          	lhu	a5,18(s0)
   14bb0:	00008737          	lui	a4,0x8
   14bb4:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14bb8:	00e7e7b3          	or	a5,a5,a4
   14bbc:	00f41923          	sh	a5,18(s0)
   14bc0:	f09ff06f          	j	14ac8 <ediv+0x128>
   14bc4:	02080663          	beqz	a6,14bf0 <ediv+0x250>
   14bc8:	01440793          	addi	a5,s0,20
   14bcc:	00240413          	addi	s0,s0,2
   14bd0:	fe041f23          	sh	zero,-2(s0)
   14bd4:	fef41ce3          	bne	s0,a5,14bcc <ediv+0x22c>
   14bd8:	ef1ff06f          	j	14ac8 <ediv+0x128>
   14bdc:	290a0593          	addi	a1,s4,656
   14be0:	00098513          	mv	a0,s3
   14be4:	cf4ff0ef          	jal	ra,140d8 <ecmp>
   14be8:	e60512e3          	bnez	a0,14a4c <ediv+0xac>
   14bec:	eb5ff06f          	j	14aa0 <ediv+0x100>
   14bf0:	02010593          	addi	a1,sp,32
   14bf4:	00048513          	mv	a0,s1
   14bf8:	c28ff0ef          	jal	ra,14020 <emovi>
   14bfc:	04010593          	addi	a1,sp,64
   14c00:	00098513          	mv	a0,s3
   14c04:	c1cff0ef          	jal	ra,14020 <emovi>
   14c08:	04215b03          	lhu	s6,66(sp)
   14c0c:	02215c03          	lhu	s8,34(sp)
   14c10:	040b1463          	bnez	s6,14c58 <ediv+0x2b8>
   14c14:	04210793          	addi	a5,sp,66
   14c18:	05810c93          	addi	s9,sp,88
   14c1c:	0007d703          	lhu	a4,0(a5)
   14c20:	00278793          	addi	a5,a5,2
   14c24:	2c071a63          	bnez	a4,14ef8 <ediv+0x558>
   14c28:	fefc9ae3          	bne	s9,a5,14c1c <ediv+0x27c>
   14c2c:	01440793          	addi	a5,s0,20
   14c30:	00240413          	addi	s0,s0,2
   14c34:	fe041f23          	sh	zero,-2(s0)
   14c38:	fef41ce3          	bne	s0,a5,14c30 <ediv+0x290>
   14c3c:	e8dff06f          	j	14ac8 <ediv+0x128>
   14c40:	01248593          	addi	a1,s1,18
   14c44:	0004d783          	lhu	a5,0(s1)
   14c48:	00248493          	addi	s1,s1,2
   14c4c:	2c079e63          	bnez	a5,14f28 <ediv+0x588>
   14c50:	feb49ae3          	bne	s1,a1,14c44 <ediv+0x2a4>
   14c54:	f21ff06f          	j	14b74 <ediv+0x1d4>
   14c58:	01613423          	sd	s6,8(sp)
   14c5c:	040c1663          	bnez	s8,14ca8 <ediv+0x308>
   14c60:	02210793          	addi	a5,sp,34
   14c64:	03810693          	addi	a3,sp,56
   14c68:	0007d703          	lhu	a4,0(a5)
   14c6c:	00278793          	addi	a5,a5,2
   14c70:	28071e63          	bnez	a4,14f0c <ediv+0x56c>
   14c74:	fed79ae3          	bne	a5,a3,14c68 <ediv+0x2c8>
   14c78:	02015683          	lhu	a3,32(sp)
   14c7c:	04015603          	lhu	a2,64(sp)
   14c80:	01240713          	addi	a4,s0,18
   14c84:	00040793          	mv	a5,s0
   14c88:	40c686b3          	sub	a3,a3,a2
   14c8c:	00d036b3          	snez	a3,a3
   14c90:	00f6969b          	slliw	a3,a3,0xf
   14c94:	00d41923          	sh	a3,18(s0)
   14c98:	00278793          	addi	a5,a5,2
   14c9c:	fe079f23          	sh	zero,-2(a5)
   14ca0:	fee79ce3          	bne	a5,a4,14c98 <ediv+0x2f8>
   14ca4:	f09ff06f          	j	14bac <ediv+0x20c>
   14ca8:	01813823          	sd	s8,16(sp)
   14cac:	04012783          	lw	a5,64(sp)
   14cb0:	03890493          	addi	s1,s2,56
   14cb4:	03490713          	addi	a4,s2,52
   14cb8:	02f92a23          	sw	a5,52(s2)
   14cbc:	00e13c23          	sd	a4,24(sp)
   14cc0:	04e90993          	addi	s3,s2,78
   14cc4:	00048793          	mv	a5,s1
   14cc8:	00278793          	addi	a5,a5,2
   14ccc:	fe079f23          	sh	zero,-2(a5)
   14cd0:	ff379ce3          	bne	a5,s3,14cc8 <ediv+0x328>
   14cd4:	04010513          	addi	a0,sp,64
   14cd8:	de9fe0ef          	jal	ra,13ac0 <eshdn1>
   14cdc:	02615b83          	lhu	s7,38(sp)
   14ce0:	00010a37          	lui	s4,0x10
   14ce4:	04210d13          	addi	s10,sp,66
   14ce8:	010b9a93          	slli	s5,s7,0x10
   14cec:	417a8ab3          	sub	s5,s5,s7
   14cf0:	05810c93          	addi	s9,sp,88
   14cf4:	fffa0a13          	addi	s4,s4,-1 # ffff <exit-0xe9>
   14cf8:	07a10d93          	addi	s11,sp,122
   14cfc:	06210c13          	addi	s8,sp,98
   14d00:	04415503          	lhu	a0,68(sp)
   14d04:	04615783          	lhu	a5,70(sp)
   14d08:	000a0b13          	mv	s6,s4
   14d0c:	01051513          	slli	a0,a0,0x10
   14d10:	00f50533          	add	a0,a0,a5
   14d14:	00aaea63          	bltu	s5,a0,14d28 <ediv+0x388>
   14d18:	000b8593          	mv	a1,s7
   14d1c:	6bd0c0ef          	jal	ra,21bd8 <__hidden___udivdi3>
   14d20:	03051b13          	slli	s6,a0,0x30
   14d24:	030b5b13          	srli	s6,s6,0x30
   14d28:	06010613          	addi	a2,sp,96
   14d2c:	02010593          	addi	a1,sp,32
   14d30:	000b0513          	mv	a0,s6
   14d34:	e31fe0ef          	jal	ra,13b64 <m16m>
   14d38:	04410713          	addi	a4,sp,68
   14d3c:	06410793          	addi	a5,sp,100
   14d40:	0007d603          	lhu	a2,0(a5)
   14d44:	00075683          	lhu	a3,0(a4)
   14d48:	00278793          	addi	a5,a5,2
   14d4c:	00270713          	addi	a4,a4,2
   14d50:	0ed61a63          	bne	a2,a3,14e44 <ediv+0x4a4>
   14d54:	ffb796e3          	bne	a5,s11,14d40 <ediv+0x3a0>
   14d58:	00000693          	li	a3,0
   14d5c:	07810613          	addi	a2,sp,120
   14d60:	000c8793          	mv	a5,s9
   14d64:	0007d703          	lhu	a4,0(a5)
   14d68:	00065583          	lhu	a1,0(a2)
   14d6c:	ffe78793          	addi	a5,a5,-2
   14d70:	ffe60613          	addi	a2,a2,-2
   14d74:	40b70733          	sub	a4,a4,a1
   14d78:	40d70733          	sub	a4,a4,a3
   14d7c:	01075693          	srli	a3,a4,0x10
   14d80:	00e79123          	sh	a4,2(a5)
   14d84:	0016f693          	andi	a3,a3,1
   14d88:	fda79ee3          	bne	a5,s10,14d64 <ediv+0x3c4>
   14d8c:	01649023          	sh	s6,0(s1)
   14d90:	04410793          	addi	a5,sp,68
   14d94:	0027d703          	lhu	a4,2(a5)
   14d98:	00278793          	addi	a5,a5,2
   14d9c:	fee79f23          	sh	a4,-2(a5)
   14da0:	ff979ae3          	bne	a5,s9,14d94 <ediv+0x3f4>
   14da4:	04011c23          	sh	zero,88(sp)
   14da8:	00248493          	addi	s1,s1,2
   14dac:	f4999ae3          	bne	s3,s1,14d00 <ediv+0x360>
   14db0:	00000713          	li	a4,0
   14db4:	04410793          	addi	a5,sp,68
   14db8:	05a10693          	addi	a3,sp,90
   14dbc:	0007d603          	lhu	a2,0(a5)
   14dc0:	00278793          	addi	a5,a5,2
   14dc4:	00c76733          	or	a4,a4,a2
   14dc8:	fed79ae3          	bne	a5,a3,14dbc <ediv+0x41c>
   14dcc:	01813483          	ld	s1,24(sp)
   14dd0:	0007071b          	sext.w	a4,a4
   14dd4:	00e035b3          	snez	a1,a4
   14dd8:	04010793          	addi	a5,sp,64
   14ddc:	0004d703          	lhu	a4,0(s1)
   14de0:	00278793          	addi	a5,a5,2
   14de4:	00248493          	addi	s1,s1,2
   14de8:	fee79f23          	sh	a4,-2(a5)
   14dec:	fef698e3          	bne	a3,a5,14ddc <ediv+0x43c>
   14df0:	00813783          	ld	a5,8(sp)
   14df4:	01013703          	ld	a4,16(sp)
   14df8:	000046b7          	lui	a3,0x4
   14dfc:	fff68693          	addi	a3,a3,-1 # 3fff <exit-0xc0e9>
   14e00:	40e78b33          	sub	s6,a5,a4
   14e04:	04010513          	addi	a0,sp,64
   14e08:	00090793          	mv	a5,s2
   14e0c:	04000713          	li	a4,64
   14e10:	00db06b3          	add	a3,s6,a3
   14e14:	00000613          	li	a2,0
   14e18:	c10ff0ef          	jal	ra,14228 <emdnorm>
   14e1c:	04015703          	lhu	a4,64(sp)
   14e20:	02015783          	lhu	a5,32(sp)
   14e24:	00040593          	mv	a1,s0
   14e28:	04010513          	addi	a0,sp,64
   14e2c:	40e787b3          	sub	a5,a5,a4
   14e30:	00f037b3          	snez	a5,a5
   14e34:	40f007bb          	negw	a5,a5
   14e38:	04f11023          	sh	a5,64(sp)
   14e3c:	df9fe0ef          	jal	ra,13c34 <emovo.constprop.0>
   14e40:	c89ff06f          	j	14ac8 <ediv+0x128>
   14e44:	f0c6fae3          	bgeu	a3,a2,14d58 <ediv+0x3b8>
   14e48:	fffb079b          	addiw	a5,s6,-1
   14e4c:	03079513          	slli	a0,a5,0x30
   14e50:	03055513          	srli	a0,a0,0x30
   14e54:	00000693          	li	a3,0
   14e58:	03810613          	addi	a2,sp,56
   14e5c:	07810713          	addi	a4,sp,120
   14e60:	00075783          	lhu	a5,0(a4)
   14e64:	00065583          	lhu	a1,0(a2)
   14e68:	ffe70713          	addi	a4,a4,-2
   14e6c:	ffe60613          	addi	a2,a2,-2
   14e70:	40b787b3          	sub	a5,a5,a1
   14e74:	40d787b3          	sub	a5,a5,a3
   14e78:	0107d693          	srli	a3,a5,0x10
   14e7c:	00f71123          	sh	a5,2(a4)
   14e80:	0016f693          	andi	a3,a3,1
   14e84:	fd871ee3          	bne	a4,s8,14e60 <ediv+0x4c0>
   14e88:	04410713          	addi	a4,sp,68
   14e8c:	06410793          	addi	a5,sp,100
   14e90:	0007d603          	lhu	a2,0(a5)
   14e94:	00075683          	lhu	a3,0(a4)
   14e98:	00278793          	addi	a5,a5,2
   14e9c:	00270713          	addi	a4,a4,2
   14ea0:	00d61863          	bne	a2,a3,14eb0 <ediv+0x510>
   14ea4:	ffb796e3          	bne	a5,s11,14e90 <ediv+0x4f0>
   14ea8:	00050b13          	mv	s6,a0
   14eac:	eadff06f          	j	14d58 <ediv+0x3b8>
   14eb0:	fec6fce3          	bgeu	a3,a2,14ea8 <ediv+0x508>
   14eb4:	ffeb031b          	addiw	t1,s6,-2
   14eb8:	03031b13          	slli	s6,t1,0x30
   14ebc:	030b5b13          	srli	s6,s6,0x30
   14ec0:	00000693          	li	a3,0
   14ec4:	03810613          	addi	a2,sp,56
   14ec8:	07810713          	addi	a4,sp,120
   14ecc:	00075783          	lhu	a5,0(a4)
   14ed0:	00065583          	lhu	a1,0(a2)
   14ed4:	ffe70713          	addi	a4,a4,-2
   14ed8:	ffe60613          	addi	a2,a2,-2
   14edc:	40b787b3          	sub	a5,a5,a1
   14ee0:	40d787b3          	sub	a5,a5,a3
   14ee4:	0107d693          	srli	a3,a5,0x10
   14ee8:	00f71123          	sh	a5,2(a4)
   14eec:	0016f693          	andi	a3,a3,1
   14ef0:	fd871ee3          	bne	a4,s8,14ecc <ediv+0x52c>
   14ef4:	e65ff06f          	j	14d58 <ediv+0x3b8>
   14ef8:	04010513          	addi	a0,sp,64
   14efc:	df5fe0ef          	jal	ra,13cf0 <enormlz>
   14f00:	40a007b3          	neg	a5,a0
   14f04:	00f13423          	sd	a5,8(sp)
   14f08:	d55ff06f          	j	14c5c <ediv+0x2bc>
   14f0c:	02010513          	addi	a0,sp,32
   14f10:	de1fe0ef          	jal	ra,13cf0 <enormlz>
   14f14:	40a007b3          	neg	a5,a0
   14f18:	00f13823          	sd	a5,16(sp)
   14f1c:	d91ff06f          	j	14cac <ediv+0x30c>
   14f20:	00000793          	li	a5,0
   14f24:	c69ff06f          	j	14b8c <ediv+0x1ec>
   14f28:	00000613          	li	a2,0
   14f2c:	c4dff06f          	j	14b78 <ediv+0x1d8>
   14f30:	00100813          	li	a6,1
   14f34:	c21ff06f          	j	14b54 <ediv+0x1b4>

0000000000014f38 <emul>:
   14f38:	01255803          	lhu	a6,18(a0)
   14f3c:	00008737          	lui	a4,0x8
   14f40:	f4010113          	addi	sp,sp,-192
   14f44:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14f48:	0a813823          	sd	s0,176(sp)
   14f4c:	0a913423          	sd	s1,168(sp)
   14f50:	0b213023          	sd	s2,160(sp)
   14f54:	09513423          	sd	s5,136(sp)
   14f58:	00050493          	mv	s1,a0
   14f5c:	0a113c23          	sd	ra,184(sp)
   14f60:	09313c23          	sd	s3,152(sp)
   14f64:	09413823          	sd	s4,144(sp)
   14f68:	09613023          	sd	s6,128(sp)
   14f6c:	07713c23          	sd	s7,120(sp)
   14f70:	07813823          	sd	s8,112(sp)
   14f74:	07913423          	sd	s9,104(sp)
   14f78:	07a13023          	sd	s10,96(sp)
   14f7c:	00e87533          	and	a0,a6,a4
   14f80:	00058913          	mv	s2,a1
   14f84:	00060413          	mv	s0,a2
   14f88:	00068a93          	mv	s5,a3
   14f8c:	18e51663          	bne	a0,a4,15118 <emul+0x1e0>
   14f90:	01248993          	addi	s3,s1,18
   14f94:	00048713          	mv	a4,s1
   14f98:	00075603          	lhu	a2,0(a4)
   14f9c:	00270713          	addi	a4,a4,2
   14fa0:	20061463          	bnez	a2,151a8 <emul+0x270>
   14fa4:	ff371ae3          	bne	a4,s3,14f98 <emul+0x60>
   14fa8:	01295603          	lhu	a2,18(s2)
   14fac:	fff64793          	not	a5,a2
   14fb0:	03179713          	slli	a4,a5,0x31
   14fb4:	16070863          	beqz	a4,15124 <emul+0x1ec>
   14fb8:	00048793          	mv	a5,s1
   14fbc:	0007d703          	lhu	a4,0(a5)
   14fc0:	00278793          	addi	a5,a5,2
   14fc4:	28071063          	bnez	a4,15244 <emul+0x30c>
   14fc8:	ff379ae3          	bne	a5,s3,14fbc <emul+0x84>
   14fcc:	000225b7          	lui	a1,0x22
   14fd0:	29058593          	addi	a1,a1,656 # 22290 <ezero>
   14fd4:	00090513          	mv	a0,s2
   14fd8:	900ff0ef          	jal	ra,140d8 <ecmp>
   14fdc:	28050e63          	beqz	a0,15278 <emul+0x340>
   14fe0:	01295603          	lhu	a2,18(s2)
   14fe4:	000085b7          	lui	a1,0x8
   14fe8:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   14fec:	00b67733          	and	a4,a2,a1
   14ff0:	00070693          	mv	a3,a4
   14ff4:	01290793          	addi	a5,s2,18
   14ff8:	40b71e63          	bne	a4,a1,15414 <emul+0x4dc>
   14ffc:	00090713          	mv	a4,s2
   15000:	00075683          	lhu	a3,0(a4)
   15004:	00270713          	addi	a4,a4,2
   15008:	20069263          	bnez	a3,1520c <emul+0x2d4>
   1500c:	fee79ae3          	bne	a5,a4,15000 <emul+0xc8>
   15010:	000225b7          	lui	a1,0x22
   15014:	29058593          	addi	a1,a1,656 # 22290 <ezero>
   15018:	00048513          	mv	a0,s1
   1501c:	8bcff0ef          	jal	ra,140d8 <ecmp>
   15020:	24050c63          	beqz	a0,15278 <emul+0x340>
   15024:	0124d803          	lhu	a6,18(s1)
   15028:	01295603          	lhu	a2,18(s2)
   1502c:	000087b7          	lui	a5,0x8
   15030:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   15034:	00f87733          	and	a4,a6,a5
   15038:	00f676b3          	and	a3,a2,a5
   1503c:	00070593          	mv	a1,a4
   15040:	1ef70263          	beq	a4,a5,15224 <emul+0x2ec>
   15044:	00068713          	mv	a4,a3
   15048:	00058693          	mv	a3,a1
   1504c:	000087b7          	lui	a5,0x8
   15050:	0007071b          	sext.w	a4,a4
   15054:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   15058:	0ef71e63          	bne	a4,a5,15154 <emul+0x21c>
   1505c:	01290793          	addi	a5,s2,18
   15060:	00090713          	mv	a4,s2
   15064:	00075583          	lhu	a1,0(a4)
   15068:	00270713          	addi	a4,a4,2
   1506c:	0e059463          	bnez	a1,15154 <emul+0x21c>
   15070:	fef71ae3          	bne	a4,a5,15064 <emul+0x12c>
   15074:	000085b7          	lui	a1,0x8
   15078:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   1507c:	0006871b          	sext.w	a4,a3
   15080:	01248993          	addi	s3,s1,18
   15084:	22b69063          	bne	a3,a1,152a4 <emul+0x36c>
   15088:	0004d783          	lhu	a5,0(s1)
   1508c:	00248493          	addi	s1,s1,2
   15090:	20079e63          	bnez	a5,152ac <emul+0x374>
   15094:	fe999ae3          	bne	s3,s1,15088 <emul+0x150>
   15098:	00f85813          	srli	a6,a6,0xf
   1509c:	000087b7          	lui	a5,0x8
   150a0:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   150a4:	1af70e63          	beq	a4,a5,15260 <emul+0x328>
   150a8:	00f65793          	srli	a5,a2,0xf
   150ac:	0107c7b3          	xor	a5,a5,a6
   150b0:	00f7979b          	slliw	a5,a5,0xf
   150b4:	00f41923          	sh	a5,18(s0)
   150b8:	01240713          	addi	a4,s0,18
   150bc:	00040793          	mv	a5,s0
   150c0:	00278793          	addi	a5,a5,2
   150c4:	fe079f23          	sh	zero,-2(a5)
   150c8:	fee79ce3          	bne	a5,a4,150c0 <emul+0x188>
   150cc:	01245783          	lhu	a5,18(s0)
   150d0:	00008737          	lui	a4,0x8
   150d4:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   150d8:	00e7e7b3          	or	a5,a5,a4
   150dc:	00f41923          	sh	a5,18(s0)
   150e0:	0b813083          	ld	ra,184(sp)
   150e4:	0b013403          	ld	s0,176(sp)
   150e8:	0a813483          	ld	s1,168(sp)
   150ec:	0a013903          	ld	s2,160(sp)
   150f0:	09813983          	ld	s3,152(sp)
   150f4:	09013a03          	ld	s4,144(sp)
   150f8:	08813a83          	ld	s5,136(sp)
   150fc:	08013b03          	ld	s6,128(sp)
   15100:	07813b83          	ld	s7,120(sp)
   15104:	07013c03          	ld	s8,112(sp)
   15108:	06813c83          	ld	s9,104(sp)
   1510c:	06013d03          	ld	s10,96(sp)
   15110:	0c010113          	addi	sp,sp,192
   15114:	00008067          	ret
   15118:	0125d603          	lhu	a2,18(a1)
   1511c:	00e677b3          	and	a5,a2,a4
   15120:	02e79a63          	bne	a5,a4,15154 <emul+0x21c>
   15124:	01290793          	addi	a5,s2,18
   15128:	00090713          	mv	a4,s2
   1512c:	00075683          	lhu	a3,0(a4)
   15130:	00270713          	addi	a4,a4,2
   15134:	08069863          	bnez	a3,151c4 <emul+0x28c>
   15138:	fef71ae3          	bne	a4,a5,1512c <emul+0x1f4>
   1513c:	00008737          	lui	a4,0x8
   15140:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   15144:	01248993          	addi	s3,s1,18
   15148:	e6e508e3          	beq	a0,a4,14fb8 <emul+0x80>
   1514c:	00e676b3          	and	a3,a2,a4
   15150:	eae686e3          	beq	a3,a4,14ffc <emul+0xc4>
   15154:	00048513          	mv	a0,s1
   15158:	00010593          	mv	a1,sp
   1515c:	ec5fe0ef          	jal	ra,14020 <emovi>
   15160:	00090513          	mv	a0,s2
   15164:	02010593          	addi	a1,sp,32
   15168:	eb9fe0ef          	jal	ra,14020 <emovi>
   1516c:	00215903          	lhu	s2,2(sp)
   15170:	02215483          	lhu	s1,34(sp)
   15174:	06090663          	beqz	s2,151e0 <emul+0x2a8>
   15178:	14049a63          	bnez	s1,152cc <emul+0x394>
   1517c:	02210793          	addi	a5,sp,34
   15180:	03810693          	addi	a3,sp,56
   15184:	0007d703          	lhu	a4,0(a5)
   15188:	00278793          	addi	a5,a5,2
   1518c:	26071a63          	bnez	a4,15400 <emul+0x4c8>
   15190:	fed79ae3          	bne	a5,a3,15184 <emul+0x24c>
   15194:	01440793          	addi	a5,s0,20
   15198:	00240413          	addi	s0,s0,2
   1519c:	fe041f23          	sh	zero,-2(s0)
   151a0:	fe879ce3          	bne	a5,s0,15198 <emul+0x260>
   151a4:	f3dff06f          	j	150e0 <emul+0x1a8>
   151a8:	01440713          	addi	a4,s0,20
   151ac:	0004d783          	lhu	a5,0(s1)
   151b0:	00240413          	addi	s0,s0,2
   151b4:	00248493          	addi	s1,s1,2
   151b8:	fef41f23          	sh	a5,-2(s0)
   151bc:	fee418e3          	bne	s0,a4,151ac <emul+0x274>
   151c0:	f21ff06f          	j	150e0 <emul+0x1a8>
   151c4:	01490713          	addi	a4,s2,20
   151c8:	00095783          	lhu	a5,0(s2)
   151cc:	00290913          	addi	s2,s2,2
   151d0:	00240413          	addi	s0,s0,2
   151d4:	fef41f23          	sh	a5,-2(s0)
   151d8:	ff2718e3          	bne	a4,s2,151c8 <emul+0x290>
   151dc:	f05ff06f          	j	150e0 <emul+0x1a8>
   151e0:	00210793          	addi	a5,sp,2
   151e4:	01810693          	addi	a3,sp,24
   151e8:	0007d703          	lhu	a4,0(a5)
   151ec:	00278793          	addi	a5,a5,2
   151f0:	20071063          	bnez	a4,153f0 <emul+0x4b8>
   151f4:	fef69ae3          	bne	a3,a5,151e8 <emul+0x2b0>
   151f8:	01440793          	addi	a5,s0,20
   151fc:	00240413          	addi	s0,s0,2
   15200:	fe041f23          	sh	zero,-2(s0)
   15204:	fef41ce3          	bne	s0,a5,151fc <emul+0x2c4>
   15208:	ed9ff06f          	j	150e0 <emul+0x1a8>
   1520c:	0124d803          	lhu	a6,18(s1)
   15210:	000085b7          	lui	a1,0x8
   15214:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   15218:	00b87733          	and	a4,a6,a1
   1521c:	00070693          	mv	a3,a4
   15220:	e4b710e3          	bne	a4,a1,15060 <emul+0x128>
   15224:	01248993          	addi	s3,s1,18
   15228:	00048793          	mv	a5,s1
   1522c:	0007d703          	lhu	a4,0(a5)
   15230:	00278793          	addi	a5,a5,2
   15234:	08071463          	bnez	a4,152bc <emul+0x384>
   15238:	fef99ae3          	bne	s3,a5,1522c <emul+0x2f4>
   1523c:	0006871b          	sext.w	a4,a3
   15240:	e49ff06f          	j	15088 <emul+0x150>
   15244:	000085b7          	lui	a1,0x8
   15248:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   1524c:	00b67733          	and	a4,a2,a1
   15250:	00070693          	mv	a3,a4
   15254:	01290793          	addi	a5,s2,18
   15258:	dab702e3          	beq	a4,a1,14ffc <emul+0xc4>
   1525c:	fcdff06f          	j	15228 <emul+0x2f0>
   15260:	01290793          	addi	a5,s2,18
   15264:	00095703          	lhu	a4,0(s2)
   15268:	00290913          	addi	s2,s2,2
   1526c:	04071463          	bnez	a4,152b4 <emul+0x37c>
   15270:	ff279ae3          	bne	a5,s2,15264 <emul+0x32c>
   15274:	e35ff06f          	j	150a8 <emul+0x170>
   15278:	01040713          	addi	a4,s0,16
   1527c:	00040793          	mv	a5,s0
   15280:	00278793          	addi	a5,a5,2
   15284:	fe079f23          	sh	zero,-2(a5)
   15288:	fef71ce3          	bne	a4,a5,15280 <emul+0x348>
   1528c:	ffffc7b7          	lui	a5,0xffffc
   15290:	00f41823          	sh	a5,16(s0)
   15294:	ffff87b7          	lui	a5,0xffff8
   15298:	fff7c793          	not	a5,a5
   1529c:	00f41923          	sh	a5,18(s0)
   152a0:	e41ff06f          	j	150e0 <emul+0x1a8>
   152a4:	00f85813          	srli	a6,a6,0xf
   152a8:	fbdff06f          	j	15264 <emul+0x32c>
   152ac:	00000813          	li	a6,0
   152b0:	dedff06f          	j	1509c <emul+0x164>
   152b4:	00000793          	li	a5,0
   152b8:	df5ff06f          	j	150ac <emul+0x174>
   152bc:	00068713          	mv	a4,a3
   152c0:	000086b7          	lui	a3,0x8
   152c4:	fff68693          	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   152c8:	d85ff06f          	j	1504c <emul+0x114>
   152cc:	00048993          	mv	s3,s1
   152d0:	02015783          	lhu	a5,32(sp)
   152d4:	0104949b          	slliw	s1,s1,0x10
   152d8:	038a8a13          	addi	s4,s5,56
   152dc:	0097e7b3          	or	a5,a5,s1
   152e0:	02faaa23          	sw	a5,52(s5)
   152e4:	034a8493          	addi	s1,s5,52
   152e8:	000a0793          	mv	a5,s4
   152ec:	04ea8713          	addi	a4,s5,78
   152f0:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31f8>
   152f4:	00278793          	addi	a5,a5,2
   152f8:	fee79ce3          	bne	a5,a4,152f0 <emul+0x3b8>
   152fc:	04ca8c93          	addi	s9,s5,76
   15300:	00000c13          	li	s8,0
   15304:	01810b13          	addi	s6,sp,24
   15308:	00410d13          	addi	s10,sp,4
   1530c:	04210b93          	addi	s7,sp,66
   15310:	000b5503          	lhu	a0,0(s6)
   15314:	ffeb0b13          	addi	s6,s6,-2
   15318:	08051a63          	bnez	a0,153ac <emul+0x474>
   1531c:	04cad783          	lhu	a5,76(s5)
   15320:	000c8713          	mv	a4,s9
   15324:	00fc6c33          	or	s8,s8,a5
   15328:	ffe75603          	lhu	a2,-2(a4)
   1532c:	ffe70713          	addi	a4,a4,-2
   15330:	00c71123          	sh	a2,2(a4)
   15334:	feea1ae3          	bne	s4,a4,15328 <emul+0x3f0>
   15338:	020a9c23          	sh	zero,56(s5)
   1533c:	fdab1ae3          	bne	s6,s10,15310 <emul+0x3d8>
   15340:	02010793          	addi	a5,sp,32
   15344:	03a10693          	addi	a3,sp,58
   15348:	0004d703          	lhu	a4,0(s1)
   1534c:	00278793          	addi	a5,a5,2
   15350:	00248493          	addi	s1,s1,2
   15354:	fee79f23          	sh	a4,-2(a5)
   15358:	fed798e3          	bne	a5,a3,15348 <emul+0x410>
   1535c:	ffffc6b7          	lui	a3,0xffffc
   15360:	01390933          	add	s2,s2,s3
   15364:	00268693          	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd71fa>
   15368:	000c0593          	mv	a1,s8
   1536c:	02010513          	addi	a0,sp,32
   15370:	000a8793          	mv	a5,s5
   15374:	04000713          	li	a4,64
   15378:	00d906b3          	add	a3,s2,a3
   1537c:	00000613          	li	a2,0
   15380:	ea9fe0ef          	jal	ra,14228 <emdnorm>
   15384:	02015703          	lhu	a4,32(sp)
   15388:	00015783          	lhu	a5,0(sp)
   1538c:	00040593          	mv	a1,s0
   15390:	02010513          	addi	a0,sp,32
   15394:	40e787b3          	sub	a5,a5,a4
   15398:	00f037b3          	snez	a5,a5
   1539c:	40f007bb          	negw	a5,a5
   153a0:	02f11023          	sh	a5,32(sp)
   153a4:	891fe0ef          	jal	ra,13c34 <emovo.constprop.0>
   153a8:	d39ff06f          	j	150e0 <emul+0x1a8>
   153ac:	04010613          	addi	a2,sp,64
   153b0:	02010593          	addi	a1,sp,32
   153b4:	fb0fe0ef          	jal	ra,13b64 <m16m>
   153b8:	000c8513          	mv	a0,s9
   153bc:	00000593          	li	a1,0
   153c0:	05810613          	addi	a2,sp,88
   153c4:	00055783          	lhu	a5,0(a0)
   153c8:	00065703          	lhu	a4,0(a2)
   153cc:	ffe50513          	addi	a0,a0,-2
   153d0:	ffe60613          	addi	a2,a2,-2
   153d4:	00f70733          	add	a4,a4,a5
   153d8:	00b70733          	add	a4,a4,a1
   153dc:	01075593          	srli	a1,a4,0x10
   153e0:	00e51123          	sh	a4,2(a0)
   153e4:	0015f593          	andi	a1,a1,1
   153e8:	fd761ee3          	bne	a2,s7,153c4 <emul+0x48c>
   153ec:	f31ff06f          	j	1531c <emul+0x3e4>
   153f0:	00010513          	mv	a0,sp
   153f4:	8fdfe0ef          	jal	ra,13cf0 <enormlz>
   153f8:	40a00933          	neg	s2,a0
   153fc:	d7dff06f          	j	15178 <emul+0x240>
   15400:	02010513          	addi	a0,sp,32
   15404:	8edfe0ef          	jal	ra,13cf0 <enormlz>
   15408:	40a009b3          	neg	s3,a0
   1540c:	02215483          	lhu	s1,34(sp)
   15410:	ec1ff06f          	j	152d0 <emul+0x398>
   15414:	0124d803          	lhu	a6,18(s1)
   15418:	00b877b3          	and	a5,a6,a1
   1541c:	e0b786e3          	beq	a5,a1,15228 <emul+0x2f0>
   15420:	d35ff06f          	j	15154 <emul+0x21c>

0000000000015424 <_ldtoa_r>:
   15424:	d8010113          	addi	sp,sp,-640
   15428:	09100313          	li	t1,145
   1542c:	06c13c23          	sd	a2,120(sp)
   15430:	06053e03          	ld	t3,96(a0)
   15434:	02031613          	slli	a2,t1,0x20
   15438:	fff60613          	addi	a2,a2,-1
   1543c:	26813823          	sd	s0,624(sp)
   15440:	27213023          	sd	s2,608(sp)
   15444:	26113c23          	sd	ra,632(sp)
   15448:	26913423          	sd	s1,616(sp)
   1544c:	25313c23          	sd	s3,600(sp)
   15450:	25413823          	sd	s4,592(sp)
   15454:	25513423          	sd	s5,584(sp)
   15458:	25613023          	sd	s6,576(sp)
   1545c:	23713c23          	sd	s7,568(sp)
   15460:	23813823          	sd	s8,560(sp)
   15464:	23913423          	sd	s9,552(sp)
   15468:	23a13023          	sd	s10,544(sp)
   1546c:	21b13c23          	sd	s11,536(sp)
   15470:	06b13823          	sd	a1,112(sp)
   15474:	1cc13023          	sd	a2,448(sp)
   15478:	00d13423          	sd	a3,8(sp)
   1547c:	00e13c23          	sd	a4,24(sp)
   15480:	02f13023          	sd	a5,32(sp)
   15484:	03113423          	sd	a7,40(sp)
   15488:	00050913          	mv	s2,a0
   1548c:	00080413          	mv	s0,a6
   15490:	020e0863          	beqz	t3,154c0 <_ldtoa_r+0x9c>
   15494:	06852783          	lw	a5,104(a0)
   15498:	00100713          	li	a4,1
   1549c:	000e0593          	mv	a1,t3
   154a0:	00f7173b          	sllw	a4,a4,a5
   154a4:	02079793          	slli	a5,a5,0x20
   154a8:	02071713          	slli	a4,a4,0x20
   154ac:	0207d793          	srli	a5,a5,0x20
   154b0:	00e7e7b3          	or	a5,a5,a4
   154b4:	00fe3423          	sd	a5,8(t3)
   154b8:	7dd010ef          	jal	ra,17494 <_Bfree>
   154bc:	06093023          	sd	zero,96(s2)
   154c0:	0a010593          	addi	a1,sp,160
   154c4:	07010513          	addi	a0,sp,112
   154c8:	b80ff0ef          	jal	ra,14848 <e113toe.isra.0>
   154cc:	0b215683          	lhu	a3,178(sp)
   154d0:	000087b7          	lui	a5,0x8
   154d4:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   154d8:	00f6f733          	and	a4,a3,a5
   154dc:	02e13823          	sd	a4,48(sp)
   154e0:	46f70863          	beq	a4,a5,15950 <_ldtoa_r+0x52c>
   154e4:	0106979b          	slliw	a5,a3,0x10
   154e8:	4107d79b          	sraiw	a5,a5,0x10
   154ec:	00813703          	ld	a4,8(sp)
   154f0:	01f7d79b          	srliw	a5,a5,0x1f
   154f4:	00f42023          	sw	a5,0(s0)
   154f8:	00300793          	li	a5,3
   154fc:	12f70ae3          	beq	a4,a5,15e30 <_ldtoa_r+0xa0c>
   15500:	01400793          	li	a5,20
   15504:	00f13823          	sd	a5,16(sp)
   15508:	00813783          	ld	a5,8(sp)
   1550c:	140792e3          	bnez	a5,15e50 <_ldtoa_r+0xa2c>
   15510:	0c010793          	addi	a5,sp,192
   15514:	0a010713          	addi	a4,sp,160
   15518:	0d410413          	addi	s0,sp,212
   1551c:	00075683          	lhu	a3,0(a4)
   15520:	00278793          	addi	a5,a5,2
   15524:	00270713          	addi	a4,a4,2
   15528:	fed79f23          	sh	a3,-2(a5)
   1552c:	fe8798e3          	bne	a5,s0,1551c <_ldtoa_r+0xf8>
   15530:	0d215a83          	lhu	s5,210(sp)
   15534:	00000993          	li	s3,0
   15538:	00fad793          	srli	a5,s5,0xf
   1553c:	00078c63          	beqz	a5,15554 <_ldtoa_r+0x130>
   15540:	031a9f13          	slli	t5,s5,0x31
   15544:	031f5a93          	srli	s5,t5,0x31
   15548:	000107b7          	lui	a5,0x10
   1554c:	0d511923          	sh	s5,210(sp)
   15550:	fff78993          	addi	s3,a5,-1 # ffff <exit-0xe9>
   15554:	00022bb7          	lui	s7,0x22
   15558:	000224b7          	lui	s1,0x22
   1555c:	0e010713          	addi	a4,sp,224
   15560:	278b8793          	addi	a5,s7,632 # 22278 <eone>
   15564:	28c48493          	addi	s1,s1,652 # 2228c <eone+0x14>
   15568:	0007d683          	lhu	a3,0(a5)
   1556c:	00278793          	addi	a5,a5,2
   15570:	00270713          	addi	a4,a4,2
   15574:	fed71f23          	sh	a3,-2(a4)
   15578:	fe9798e3          	bne	a5,s1,15568 <_ldtoa_r+0x144>
   1557c:	6a0a9c63          	bnez	s5,15c34 <_ldtoa_r+0x810>
   15580:	0c010793          	addi	a5,sp,192
   15584:	0d210693          	addi	a3,sp,210
   15588:	0007d703          	lhu	a4,0(a5)
   1558c:	6a071e63          	bnez	a4,15c48 <_ldtoa_r+0x824>
   15590:	00278793          	addi	a5,a5,2
   15594:	fef69ae3          	bne	a3,a5,15588 <_ldtoa_r+0x164>
   15598:	00000413          	li	s0,0
   1559c:	18010c13          	addi	s8,sp,384
   155a0:	1c010b13          	addi	s6,sp,448
   155a4:	12010a13          	addi	s4,sp,288
   155a8:	13810d93          	addi	s11,sp,312
   155ac:	000a0593          	mv	a1,s4
   155b0:	0e010513          	addi	a0,sp,224
   155b4:	a6dfe0ef          	jal	ra,14020 <emovi>
   155b8:	000a0493          	mv	s1,s4
   155bc:	0e010693          	addi	a3,sp,224
   155c0:	000a0793          	mv	a5,s4
   155c4:	0007b703          	ld	a4,0(a5)
   155c8:	00878793          	addi	a5,a5,8
   155cc:	00868693          	addi	a3,a3,8
   155d0:	fee6bc23          	sd	a4,-8(a3)
   155d4:	ffb798e3          	bne	a5,s11,155c4 <_ldtoa_r+0x1a0>
   155d8:	000a0593          	mv	a1,s4
   155dc:	0c010513          	addi	a0,sp,192
   155e0:	0e011c23          	sh	zero,248(sp)
   155e4:	a3dfe0ef          	jal	ra,14020 <emovi>
   155e8:	0d810b93          	addi	s7,sp,216
   155ec:	0c010793          	addi	a5,sp,192
   155f0:	0004b703          	ld	a4,0(s1)
   155f4:	00878793          	addi	a5,a5,8
   155f8:	00848493          	addi	s1,s1,8
   155fc:	fee7bc23          	sd	a4,-8(a5)
   15600:	fefb98e3          	bne	s7,a5,155f0 <_ldtoa_r+0x1cc>
   15604:	000b0613          	mv	a2,s6
   15608:	0c010593          	addi	a1,sp,192
   1560c:	0e010513          	addi	a0,sp,224
   15610:	0c011c23          	sh	zero,216(sp)
   15614:	8d0ff0ef          	jal	ra,146e4 <eiremain>
   15618:	20c15d83          	lhu	s11,524(sp)
   1561c:	000224b7          	lui	s1,0x22
   15620:	0c210d13          	addi	s10,sp,194
   15624:	10210c93          	addi	s9,sp,258
   15628:	160d9063          	bnez	s11,15788 <_ldtoa_r+0x364>
   1562c:	29048593          	addi	a1,s1,656 # 22290 <ezero>
   15630:	0c010513          	addi	a0,sp,192
   15634:	aa5fe0ef          	jal	ra,140d8 <ecmp>
   15638:	14050863          	beqz	a0,15788 <_ldtoa_r+0x364>
   1563c:	00000713          	li	a4,0
   15640:	000b8693          	mv	a3,s7
   15644:	0006d783          	lhu	a5,0(a3)
   15648:	00f7d613          	srli	a2,a5,0xf
   1564c:	00060463          	beqz	a2,15654 <_ldtoa_r+0x230>
   15650:	00176713          	ori	a4,a4,1
   15654:	0017979b          	slliw	a5,a5,0x1
   15658:	03079793          	slli	a5,a5,0x30
   1565c:	00277613          	andi	a2,a4,2
   15660:	0307d793          	srli	a5,a5,0x30
   15664:	00060463          	beqz	a2,1566c <_ldtoa_r+0x248>
   15668:	0017e793          	ori	a5,a5,1
   1566c:	0017171b          	slliw	a4,a4,0x1
   15670:	00f69023          	sh	a5,0(a3)
   15674:	03071713          	slli	a4,a4,0x30
   15678:	ffe68693          	addi	a3,a3,-2
   1567c:	03075713          	srli	a4,a4,0x30
   15680:	fda692e3          	bne	a3,s10,15644 <_ldtoa_r+0x220>
   15684:	10010713          	addi	a4,sp,256
   15688:	0c010793          	addi	a5,sp,192
   1568c:	0007b683          	ld	a3,0(a5)
   15690:	00878793          	addi	a5,a5,8
   15694:	00870713          	addi	a4,a4,8
   15698:	fed73c23          	sd	a3,-8(a4)
   1569c:	fefb98e3          	bne	s7,a5,1568c <_ldtoa_r+0x268>
   156a0:	10011c23          	sh	zero,280(sp)
   156a4:	00000713          	li	a4,0
   156a8:	11810693          	addi	a3,sp,280
   156ac:	0006d783          	lhu	a5,0(a3)
   156b0:	00f7d613          	srli	a2,a5,0xf
   156b4:	00060463          	beqz	a2,156bc <_ldtoa_r+0x298>
   156b8:	00176713          	ori	a4,a4,1
   156bc:	0017979b          	slliw	a5,a5,0x1
   156c0:	03079793          	slli	a5,a5,0x30
   156c4:	00277613          	andi	a2,a4,2
   156c8:	0307d793          	srli	a5,a5,0x30
   156cc:	00060463          	beqz	a2,156d4 <_ldtoa_r+0x2b0>
   156d0:	0017e793          	ori	a5,a5,1
   156d4:	0017171b          	slliw	a4,a4,0x1
   156d8:	00f69023          	sh	a5,0(a3)
   156dc:	03071713          	slli	a4,a4,0x30
   156e0:	ffe68693          	addi	a3,a3,-2
   156e4:	03075713          	srli	a4,a4,0x30
   156e8:	fd9692e3          	bne	a3,s9,156ac <_ldtoa_r+0x288>
   156ec:	00000713          	li	a4,0
   156f0:	11810693          	addi	a3,sp,280
   156f4:	0006d783          	lhu	a5,0(a3)
   156f8:	00f7d613          	srli	a2,a5,0xf
   156fc:	00060463          	beqz	a2,15704 <_ldtoa_r+0x2e0>
   15700:	00176713          	ori	a4,a4,1
   15704:	0017979b          	slliw	a5,a5,0x1
   15708:	03079793          	slli	a5,a5,0x30
   1570c:	00277613          	andi	a2,a4,2
   15710:	0307d793          	srli	a5,a5,0x30
   15714:	00060463          	beqz	a2,1571c <_ldtoa_r+0x2f8>
   15718:	0017e793          	ori	a5,a5,1
   1571c:	0017171b          	slliw	a4,a4,0x1
   15720:	00f69023          	sh	a5,0(a3)
   15724:	03071713          	slli	a4,a4,0x30
   15728:	ffe68693          	addi	a3,a3,-2
   1572c:	03075713          	srli	a4,a4,0x30
   15730:	fd9692e3          	bne	a3,s9,156f4 <_ldtoa_r+0x2d0>
   15734:	00000613          	li	a2,0
   15738:	000b8693          	mv	a3,s7
   1573c:	11810713          	addi	a4,sp,280
   15740:	0006d583          	lhu	a1,0(a3)
   15744:	00075783          	lhu	a5,0(a4)
   15748:	ffe68693          	addi	a3,a3,-2
   1574c:	ffe70713          	addi	a4,a4,-2
   15750:	00b787b3          	add	a5,a5,a1
   15754:	00c787b3          	add	a5,a5,a2
   15758:	0107d613          	srli	a2,a5,0x10
   1575c:	00f69123          	sh	a5,2(a3)
   15760:	00167613          	andi	a2,a2,1
   15764:	fd971ee3          	bne	a4,s9,15740 <_ldtoa_r+0x31c>
   15768:	000b0613          	mv	a2,s6
   1576c:	0c010593          	addi	a1,sp,192
   15770:	0e010513          	addi	a0,sp,224
   15774:	f71fe0ef          	jal	ra,146e4 <eiremain>
   15778:	20c15783          	lhu	a5,524(sp)
   1577c:	fff4041b          	addiw	s0,s0,-1
   15780:	ea0786e3          	beqz	a5,1562c <_ldtoa_r+0x208>
   15784:	00078d93          	mv	s11,a5
   15788:	02000793          	li	a5,32
   1578c:	00098463          	beqz	s3,15794 <_ldtoa_r+0x370>
   15790:	02d00793          	li	a5,45
   15794:	00813703          	ld	a4,8(sp)
   15798:	18f10023          	sb	a5,384(sp)
   1579c:	00300693          	li	a3,3
   157a0:	01013783          	ld	a5,16(sp)
   157a4:	00d71463          	bne	a4,a3,157ac <_ldtoa_r+0x388>
   157a8:	008787bb          	addw	a5,a5,s0
   157ac:	02a00693          	li	a3,42
   157b0:	00078613          	mv	a2,a5
   157b4:	00f6d463          	bge	a3,a5,157bc <_ldtoa_r+0x398>
   157b8:	02a00613          	li	a2,42
   157bc:	00a00693          	li	a3,10
   157c0:	00060a1b          	sext.w	s4,a2
   157c4:	64dd8063          	beq	s11,a3,15e04 <_ldtoa_r+0x9e0>
   157c8:	030d8d9b          	addiw	s11,s11,48
   157cc:	02e00693          	li	a3,46
   157d0:	19b100a3          	sb	s11,385(sp)
   157d4:	18d10123          	sb	a3,386(sp)
   157d8:	2407c063          	bltz	a5,15a18 <_ldtoa_r+0x5f4>
   157dc:	18310a93          	addi	s5,sp,387
   157e0:	00000993          	li	s3,0
   157e4:	10010c93          	addi	s9,sp,256
   157e8:	11810d93          	addi	s11,sp,280
   157ec:	0c210d13          	addi	s10,sp,194
   157f0:	10210493          	addi	s1,sp,258
   157f4:	00000713          	li	a4,0
   157f8:	000b8693          	mv	a3,s7
   157fc:	0006d783          	lhu	a5,0(a3)
   15800:	00f7d613          	srli	a2,a5,0xf
   15804:	00060463          	beqz	a2,1580c <_ldtoa_r+0x3e8>
   15808:	00176713          	ori	a4,a4,1
   1580c:	0017979b          	slliw	a5,a5,0x1
   15810:	03079793          	slli	a5,a5,0x30
   15814:	00277613          	andi	a2,a4,2
   15818:	0307d793          	srli	a5,a5,0x30
   1581c:	00060463          	beqz	a2,15824 <_ldtoa_r+0x400>
   15820:	0017e793          	ori	a5,a5,1
   15824:	0017171b          	slliw	a4,a4,0x1
   15828:	00f69023          	sh	a5,0(a3)
   1582c:	03071713          	slli	a4,a4,0x30
   15830:	ffe68693          	addi	a3,a3,-2
   15834:	03075713          	srli	a4,a4,0x30
   15838:	fda692e3          	bne	a3,s10,157fc <_ldtoa_r+0x3d8>
   1583c:	000c8793          	mv	a5,s9
   15840:	0c010713          	addi	a4,sp,192
   15844:	00073683          	ld	a3,0(a4)
   15848:	00878793          	addi	a5,a5,8
   1584c:	00870713          	addi	a4,a4,8
   15850:	fed7bc23          	sd	a3,-8(a5)
   15854:	fefd98e3          	bne	s11,a5,15844 <_ldtoa_r+0x420>
   15858:	10011c23          	sh	zero,280(sp)
   1585c:	00000713          	li	a4,0
   15860:	000d8693          	mv	a3,s11
   15864:	0006d783          	lhu	a5,0(a3)
   15868:	00f7d613          	srli	a2,a5,0xf
   1586c:	00060463          	beqz	a2,15874 <_ldtoa_r+0x450>
   15870:	00176713          	ori	a4,a4,1
   15874:	0017979b          	slliw	a5,a5,0x1
   15878:	03079793          	slli	a5,a5,0x30
   1587c:	00277613          	andi	a2,a4,2
   15880:	0307d793          	srli	a5,a5,0x30
   15884:	00060463          	beqz	a2,1588c <_ldtoa_r+0x468>
   15888:	0017e793          	ori	a5,a5,1
   1588c:	0017171b          	slliw	a4,a4,0x1
   15890:	00f69023          	sh	a5,0(a3)
   15894:	03071713          	slli	a4,a4,0x30
   15898:	ffe68693          	addi	a3,a3,-2
   1589c:	03075713          	srli	a4,a4,0x30
   158a0:	fc9692e3          	bne	a3,s1,15864 <_ldtoa_r+0x440>
   158a4:	00000713          	li	a4,0
   158a8:	000d8693          	mv	a3,s11
   158ac:	0006d783          	lhu	a5,0(a3)
   158b0:	00f7d613          	srli	a2,a5,0xf
   158b4:	00060463          	beqz	a2,158bc <_ldtoa_r+0x498>
   158b8:	00176713          	ori	a4,a4,1
   158bc:	0017979b          	slliw	a5,a5,0x1
   158c0:	03079793          	slli	a5,a5,0x30
   158c4:	00277613          	andi	a2,a4,2
   158c8:	0307d793          	srli	a5,a5,0x30
   158cc:	00060463          	beqz	a2,158d4 <_ldtoa_r+0x4b0>
   158d0:	0017e793          	ori	a5,a5,1
   158d4:	0017171b          	slliw	a4,a4,0x1
   158d8:	00f69023          	sh	a5,0(a3)
   158dc:	03071713          	slli	a4,a4,0x30
   158e0:	ffe68693          	addi	a3,a3,-2
   158e4:	03075713          	srli	a4,a4,0x30
   158e8:	fc9692e3          	bne	a3,s1,158ac <_ldtoa_r+0x488>
   158ec:	00000613          	li	a2,0
   158f0:	000b8693          	mv	a3,s7
   158f4:	000d8713          	mv	a4,s11
   158f8:	0006d583          	lhu	a1,0(a3)
   158fc:	00075783          	lhu	a5,0(a4)
   15900:	ffe68693          	addi	a3,a3,-2
   15904:	ffe70713          	addi	a4,a4,-2
   15908:	00b787b3          	add	a5,a5,a1
   1590c:	00c787b3          	add	a5,a5,a2
   15910:	0107d613          	srli	a2,a5,0x10
   15914:	00f69123          	sh	a5,2(a3)
   15918:	00167613          	andi	a2,a2,1
   1591c:	fc971ee3          	bne	a4,s1,158f8 <_ldtoa_r+0x4d4>
   15920:	0c010593          	addi	a1,sp,192
   15924:	000b0613          	mv	a2,s6
   15928:	0e010513          	addi	a0,sp,224
   1592c:	db9fe0ef          	jal	ra,146e4 <eiremain>
   15930:	20c15583          	lhu	a1,524(sp)
   15934:	001a8793          	addi	a5,s5,1
   15938:	0019899b          	addiw	s3,s3,1
   1593c:	0305871b          	addiw	a4,a1,48
   15940:	fee78fa3          	sb	a4,-1(a5)
   15944:	0f3a4063          	blt	s4,s3,15a24 <_ldtoa_r+0x600>
   15948:	00078a93          	mv	s5,a5
   1594c:	ea9ff06f          	j	157f4 <_ldtoa_r+0x3d0>
   15950:	0a010793          	addi	a5,sp,160
   15954:	0b210613          	addi	a2,sp,178
   15958:	0007d703          	lhu	a4,0(a5)
   1595c:	00278793          	addi	a5,a5,2
   15960:	7e071063          	bnez	a4,16140 <_ldtoa_r+0xd1c>
   15964:	fec79ae3          	bne	a5,a2,15958 <_ldtoa_r+0x534>
   15968:	00f6d693          	srli	a3,a3,0xf
   1596c:	00813703          	ld	a4,8(sp)
   15970:	00d42023          	sw	a3,0(s0)
   15974:	00300793          	li	a5,3
   15978:	7af70463          	beq	a4,a5,16120 <_ldtoa_r+0xcfc>
   1597c:	01400793          	li	a5,20
   15980:	00f13823          	sd	a5,16(sp)
   15984:	00070e63          	beqz	a4,159a0 <_ldtoa_r+0x57c>
   15988:	01813783          	ld	a5,24(sp)
   1598c:	fff78a1b          	addiw	s4,a5,-1
   15990:	02a00793          	li	a5,42
   15994:	0147d463          	bge	a5,s4,1599c <_ldtoa_r+0x578>
   15998:	02a00a13          	li	s4,42
   1599c:	01413823          	sd	s4,16(sp)
   159a0:	0a015703          	lhu	a4,160(sp)
   159a4:	0a010793          	addi	a5,sp,160
   159a8:	0b210693          	addi	a3,sp,178
   159ac:	00278793          	addi	a5,a5,2
   159b0:	00071a63          	bnez	a4,159c4 <_ldtoa_r+0x5a0>
   159b4:	b4d78ee3          	beq	a5,a3,15510 <_ldtoa_r+0xec>
   159b8:	0007d703          	lhu	a4,0(a5)
   159bc:	00278793          	addi	a5,a5,2
   159c0:	fe070ae3          	beqz	a4,159b4 <_ldtoa_r+0x590>
   159c4:	18010c13          	addi	s8,sp,384
   159c8:	000225b7          	lui	a1,0x22
   159cc:	03858593          	addi	a1,a1,56 # 22038 <blanks.1+0xe0>
   159d0:	000c0513          	mv	a0,s8
   159d4:	6e1020ef          	jal	ra,188b4 <sprintf>
   159d8:	00002437          	lui	s0,0x2
   159dc:	70f40413          	addi	s0,s0,1807 # 270f <exit-0xd9d9>
   159e0:	09000793          	li	a5,144
   159e4:	1cf12223          	sw	a5,452(sp)
   159e8:	1c812823          	sw	s0,464(sp)
   159ec:	0a010793          	addi	a5,sp,160
   159f0:	0b210613          	addi	a2,sp,178
   159f4:	0007d703          	lhu	a4,0(a5)
   159f8:	00278793          	addi	a5,a5,2
   159fc:	140710e3          	bnez	a4,1633c <_ldtoa_r+0xf18>
   15a00:	fec79ae3          	bne	a5,a2,159f4 <_ldtoa_r+0x5d0>
   15a04:	02013703          	ld	a4,32(sp)
   15a08:	000027b7          	lui	a5,0x2
   15a0c:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   15a10:	00f72023          	sw	a5,0(a4)
   15a14:	0e00006f          	j	15af4 <_ldtoa_r+0x6d0>
   15a18:	20c15583          	lhu	a1,524(sp)
   15a1c:	18210a93          	addi	s5,sp,386
   15a20:	18310793          	addi	a5,sp,387
   15a24:	00400693          	li	a3,4
   15a28:	04b6d863          	bge	a3,a1,15a78 <_ldtoa_r+0x654>
   15a2c:	00500693          	li	a3,5
   15a30:	14d58ae3          	beq	a1,a3,16384 <_ldtoa_r+0xf60>
   15a34:	ffe7c683          	lbu	a3,-2(a5)
   15a38:	ffe78593          	addi	a1,a5,-2
   15a3c:	07f6f693          	andi	a3,a3,127
   15a40:	020a4663          	bltz	s4,15a6c <_ldtoa_r+0x648>
   15a44:	02e00793          	li	a5,46
   15a48:	03800613          	li	a2,56
   15a4c:	03000513          	li	a0,48
   15a50:	0cf688e3          	beq	a3,a5,16320 <_ldtoa_r+0xefc>
   15a54:	0cd670e3          	bgeu	a2,a3,16314 <_ldtoa_r+0xef0>
   15a58:	fff5c683          	lbu	a3,-1(a1)
   15a5c:	00a58023          	sb	a0,0(a1)
   15a60:	fff58593          	addi	a1,a1,-1
   15a64:	07f6f693          	andi	a3,a3,127
   15a68:	fe9ff06f          	j	15a50 <_ldtoa_r+0x62c>
   15a6c:	03100693          	li	a3,49
   15a70:	fed78f23          	sb	a3,-2(a5)
   15a74:	0014041b          	addiw	s0,s0,1
   15a78:	000225b7          	lui	a1,0x22
   15a7c:	00040613          	mv	a2,s0
   15a80:	fc858593          	addi	a1,a1,-56 # 21fc8 <blanks.1+0x70>
   15a84:	000a8513          	mv	a0,s5
   15a88:	62d020ef          	jal	ra,188b4 <sprintf>
   15a8c:	09000793          	li	a5,144
   15a90:	03013703          	ld	a4,48(sp)
   15a94:	1cf12223          	sw	a5,452(sp)
   15a98:	000087b7          	lui	a5,0x8
   15a9c:	1c812823          	sw	s0,464(sp)
   15aa0:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   15aa4:	f4f704e3          	beq	a4,a5,159ec <_ldtoa_r+0x5c8>
   15aa8:	02013703          	ld	a4,32(sp)
   15aac:	18014683          	lbu	a3,384(sp)
   15ab0:	0014079b          	addiw	a5,s0,1
   15ab4:	00f72023          	sw	a5,0(a4)
   15ab8:	66068063          	beqz	a3,16118 <_ldtoa_r+0xcf4>
   15abc:	000c0793          	mv	a5,s8
   15ac0:	02e00613          	li	a2,46
   15ac4:	30c68a63          	beq	a3,a2,15dd8 <_ldtoa_r+0x9b4>
   15ac8:	0017c683          	lbu	a3,1(a5)
   15acc:	00178793          	addi	a5,a5,1
   15ad0:	fe069ae3          	bnez	a3,15ac4 <_ldtoa_r+0x6a0>
   15ad4:	04500613          	li	a2,69
   15ad8:	00fc6663          	bltu	s8,a5,15ae4 <_ldtoa_r+0x6c0>
   15adc:	0140006f          	j	15af0 <_ldtoa_r+0x6cc>
   15ae0:	63878c63          	beq	a5,s8,16118 <_ldtoa_r+0xcf4>
   15ae4:	fff7c703          	lbu	a4,-1(a5)
   15ae8:	fff78793          	addi	a5,a5,-1
   15aec:	fec71ae3          	bne	a4,a2,15ae0 <_ldtoa_r+0x6bc>
   15af0:	00078023          	sb	zero,0(a5)
   15af4:	000c0793          	mv	a5,s8
   15af8:	02000613          	li	a2,32
   15afc:	02d00593          	li	a1,45
   15b00:	0007c703          	lbu	a4,0(a5)
   15b04:	00c70463          	beq	a4,a2,15b0c <_ldtoa_r+0x6e8>
   15b08:	00b71663          	bne	a4,a1,15b14 <_ldtoa_r+0x6f0>
   15b0c:	00178793          	addi	a5,a5,1
   15b10:	ff1ff06f          	j	15b00 <_ldtoa_r+0x6dc>
   15b14:	000c0613          	mv	a2,s8
   15b18:	0007c703          	lbu	a4,0(a5)
   15b1c:	00060493          	mv	s1,a2
   15b20:	00178793          	addi	a5,a5,1
   15b24:	00e60023          	sb	a4,0(a2)
   15b28:	00160613          	addi	a2,a2,1
   15b2c:	fe0716e3          	bnez	a4,15b18 <_ldtoa_r+0x6f4>
   15b30:	00813703          	ld	a4,8(sp)
   15b34:	00200793          	li	a5,2
   15b38:	fff4c603          	lbu	a2,-1(s1)
   15b3c:	28f70263          	beq	a4,a5,15dc0 <_ldtoa_r+0x99c>
   15b40:	01013703          	ld	a4,16(sp)
   15b44:	00070793          	mv	a5,a4
   15b48:	00875463          	bge	a4,s0,15b50 <_ldtoa_r+0x72c>
   15b4c:	00040793          	mv	a5,s0
   15b50:	03000593          	li	a1,48
   15b54:	0007869b          	sext.w	a3,a5
   15b58:	02b61663          	bne	a2,a1,15b84 <_ldtoa_r+0x760>
   15b5c:	418487b3          	sub	a5,s1,s8
   15b60:	02f6d263          	bge	a3,a5,15b84 <_ldtoa_r+0x760>
   15b64:	03000613          	li	a2,48
   15b68:	00c0006f          	j	15b74 <_ldtoa_r+0x750>
   15b6c:	418487b3          	sub	a5,s1,s8
   15b70:	00f6da63          	bge	a3,a5,15b84 <_ldtoa_r+0x760>
   15b74:	ffe4c783          	lbu	a5,-2(s1)
   15b78:	fe048fa3          	sb	zero,-1(s1)
   15b7c:	fff48493          	addi	s1,s1,-1
   15b80:	fec786e3          	beq	a5,a2,15b6c <_ldtoa_r+0x748>
   15b84:	00813703          	ld	a4,8(sp)
   15b88:	00300793          	li	a5,3
   15b8c:	1ef70863          	beq	a4,a5,15d7c <_ldtoa_r+0x958>
   15b90:	01813783          	ld	a5,24(sp)
   15b94:	01f00613          	li	a2,31
   15b98:	00100693          	li	a3,1
   15b9c:	0097851b          	addiw	a0,a5,9
   15ba0:	00400793          	li	a5,4
   15ba4:	20a67863          	bgeu	a2,a0,15db4 <_ldtoa_r+0x990>
   15ba8:	0017979b          	slliw	a5,a5,0x1
   15bac:	01c78713          	addi	a4,a5,28
   15bb0:	0006859b          	sext.w	a1,a3
   15bb4:	0016869b          	addiw	a3,a3,1
   15bb8:	fee578e3          	bgeu	a0,a4,15ba8 <_ldtoa_r+0x784>
   15bbc:	0005859b          	sext.w	a1,a1
   15bc0:	06b92423          	sw	a1,104(s2)
   15bc4:	00090513          	mv	a0,s2
   15bc8:	021010ef          	jal	ra,173e8 <_Balloc>
   15bcc:	00050413          	mv	s0,a0
   15bd0:	1a050ee3          	beqz	a0,1658c <_ldtoa_r+0x1168>
   15bd4:	06a93023          	sd	a0,96(s2)
   15bd8:	000c0593          	mv	a1,s8
   15bdc:	7e9020ef          	jal	ra,18bc4 <strcpy>
   15be0:	02813703          	ld	a4,40(sp)
   15be4:	00070863          	beqz	a4,15bf4 <_ldtoa_r+0x7d0>
   15be8:	418487b3          	sub	a5,s1,s8
   15bec:	00f407b3          	add	a5,s0,a5
   15bf0:	00f73023          	sd	a5,0(a4)
   15bf4:	27813083          	ld	ra,632(sp)
   15bf8:	00040513          	mv	a0,s0
   15bfc:	27013403          	ld	s0,624(sp)
   15c00:	26813483          	ld	s1,616(sp)
   15c04:	26013903          	ld	s2,608(sp)
   15c08:	25813983          	ld	s3,600(sp)
   15c0c:	25013a03          	ld	s4,592(sp)
   15c10:	24813a83          	ld	s5,584(sp)
   15c14:	24013b03          	ld	s6,576(sp)
   15c18:	23813b83          	ld	s7,568(sp)
   15c1c:	23013c03          	ld	s8,560(sp)
   15c20:	22813c83          	ld	s9,552(sp)
   15c24:	22013d03          	ld	s10,544(sp)
   15c28:	21813d83          	ld	s11,536(sp)
   15c2c:	28010113          	addi	sp,sp,640
   15c30:	00008067          	ret
   15c34:	000087b7          	lui	a5,0x8
   15c38:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   15c3c:	6afa8663          	beq	s5,a5,162e8 <_ldtoa_r+0xec4>
   15c40:	0d011783          	lh	a5,208(sp)
   15c44:	7207d463          	bgez	a5,1636c <_ldtoa_r+0xf48>
   15c48:	0c010593          	addi	a1,sp,192
   15c4c:	278b8513          	addi	a0,s7,632
   15c50:	c88fe0ef          	jal	ra,140d8 <ecmp>
   15c54:	940502e3          	beqz	a0,15598 <_ldtoa_r+0x174>
   15c58:	20054a63          	bltz	a0,15e6c <_ldtoa_r+0xa48>
   15c5c:	7a0a9063          	bnez	s5,163fc <_ldtoa_r+0xfd8>
   15c60:	0d011783          	lh	a5,208(sp)
   15c64:	00000413          	li	s0,0
   15c68:	1c010b13          	addi	s6,sp,448
   15c6c:	0207c463          	bltz	a5,15c94 <_ldtoa_r+0x870>
   15c70:	00022d37          	lui	s10,0x22
   15c74:	0c010613          	addi	a2,sp,192
   15c78:	000b0693          	mv	a3,s6
   15c7c:	00060593          	mv	a1,a2
   15c80:	260d0513          	addi	a0,s10,608 # 22260 <etens+0xf0>
   15c84:	ab4ff0ef          	jal	ra,14f38 <emul>
   15c88:	0d011783          	lh	a5,208(sp)
   15c8c:	fff4041b          	addiw	s0,s0,-1
   15c90:	fe07d2e3          	bgez	a5,15c74 <_ldtoa_r+0x850>
   15c94:	12010a13          	addi	s4,sp,288
   15c98:	13810d93          	addi	s11,sp,312
   15c9c:	000a0793          	mv	a5,s4
   15ca0:	0c010713          	addi	a4,sp,192
   15ca4:	13410613          	addi	a2,sp,308
   15ca8:	00075683          	lhu	a3,0(a4)
   15cac:	00278793          	addi	a5,a5,2
   15cb0:	00270713          	addi	a4,a4,2
   15cb4:	fed79f23          	sh	a3,-2(a5)
   15cb8:	fec798e3          	bne	a5,a2,15ca8 <_ldtoa_r+0x884>
   15cbc:	000227b7          	lui	a5,0x22
   15cc0:	0e010713          	addi	a4,sp,224
   15cc4:	27878793          	addi	a5,a5,632 # 22278 <eone>
   15cc8:	0007d683          	lhu	a3,0(a5)
   15ccc:	00278793          	addi	a5,a5,2
   15cd0:	00270713          	addi	a4,a4,2
   15cd4:	fed71f23          	sh	a3,-2(a4)
   15cd8:	fe9798e3          	bne	a5,s1,15cc8 <_ldtoa_r+0x8a4>
   15cdc:	00022d37          	lui	s10,0x22
   15ce0:	00022cb7          	lui	s9,0x22
   15ce4:	000227b7          	lui	a5,0x22
   15ce8:	fffff4b7          	lui	s1,0xfffff
   15cec:	170d0d13          	addi	s10,s10,368 # 22170 <etens>
   15cf0:	068c8c93          	addi	s9,s9,104 # 22068 <emtens>
   15cf4:	15878a93          	addi	s5,a5,344 # 22158 <emtens+0xf0>
   15cf8:	00c0006f          	j	15d04 <_ldtoa_r+0x8e0>
   15cfc:	014c8c93          	addi	s9,s9,20
   15d00:	014d0d13          	addi	s10,s10,20
   15d04:	000a0593          	mv	a1,s4
   15d08:	278b8513          	addi	a0,s7,632
   15d0c:	bccfe0ef          	jal	ra,140d8 <ecmp>
   15d10:	04a05863          	blez	a0,15d60 <_ldtoa_r+0x93c>
   15d14:	000a0593          	mv	a1,s4
   15d18:	000c8513          	mv	a0,s9
   15d1c:	bbcfe0ef          	jal	ra,140d8 <ecmp>
   15d20:	02054863          	bltz	a0,15d50 <_ldtoa_r+0x92c>
   15d24:	000b0693          	mv	a3,s6
   15d28:	000a0613          	mv	a2,s4
   15d2c:	000a0593          	mv	a1,s4
   15d30:	000d0513          	mv	a0,s10
   15d34:	a04ff0ef          	jal	ra,14f38 <emul>
   15d38:	0e010613          	addi	a2,sp,224
   15d3c:	000b0693          	mv	a3,s6
   15d40:	00060593          	mv	a1,a2
   15d44:	000d0513          	mv	a0,s10
   15d48:	9f0ff0ef          	jal	ra,14f38 <emul>
   15d4c:	0084843b          	addw	s0,s1,s0
   15d50:	01f4d79b          	srliw	a5,s1,0x1f
   15d54:	009787bb          	addw	a5,a5,s1
   15d58:	4017d49b          	sraiw	s1,a5,0x1
   15d5c:	fb5c90e3          	bne	s9,s5,15cfc <_ldtoa_r+0x8d8>
   15d60:	0e010613          	addi	a2,sp,224
   15d64:	000b0693          	mv	a3,s6
   15d68:	278b8593          	addi	a1,s7,632
   15d6c:	00060513          	mv	a0,a2
   15d70:	c31fe0ef          	jal	ra,149a0 <ediv>
   15d74:	18010c13          	addi	s8,sp,384
   15d78:	835ff06f          	j	155ac <_ldtoa_r+0x188>
   15d7c:	01013783          	ld	a5,16(sp)
   15d80:	0087843b          	addw	s0,a5,s0
   15d84:	52044c63          	bltz	s0,162bc <_ldtoa_r+0xe98>
   15d88:	02013783          	ld	a5,32(sp)
   15d8c:	01813703          	ld	a4,24(sp)
   15d90:	0007a783          	lw	a5,0(a5)
   15d94:	00e787bb          	addw	a5,a5,a4
   15d98:	00f13c23          	sd	a5,24(sp)
   15d9c:	01813783          	ld	a5,24(sp)
   15da0:	01f00613          	li	a2,31
   15da4:	00100693          	li	a3,1
   15da8:	0037851b          	addiw	a0,a5,3
   15dac:	00400793          	li	a5,4
   15db0:	dea66ce3          	bltu	a2,a0,15ba8 <_ldtoa_r+0x784>
   15db4:	06092423          	sw	zero,104(s2)
   15db8:	00000593          	li	a1,0
   15dbc:	e09ff06f          	j	15bc4 <_ldtoa_r+0x7a0>
   15dc0:	03000793          	li	a5,48
   15dc4:	dcf616e3          	bne	a2,a5,15b90 <_ldtoa_r+0x76c>
   15dc8:	418487b3          	sub	a5,s1,s8
   15dcc:	00100693          	li	a3,1
   15dd0:	d8f6cae3          	blt	a3,a5,15b64 <_ldtoa_r+0x740>
   15dd4:	dbdff06f          	j	15b90 <_ldtoa_r+0x76c>
   15dd8:	0007c683          	lbu	a3,0(a5)
   15ddc:	ce068ce3          	beqz	a3,15ad4 <_ldtoa_r+0x6b0>
   15de0:	0017c703          	lbu	a4,1(a5)
   15de4:	00178793          	addi	a5,a5,1
   15de8:	fee78fa3          	sb	a4,-1(a5)
   15dec:	ce0704e3          	beqz	a4,15ad4 <_ldtoa_r+0x6b0>
   15df0:	0017c703          	lbu	a4,1(a5)
   15df4:	00178793          	addi	a5,a5,1
   15df8:	fee78fa3          	sb	a4,-1(a5)
   15dfc:	fe0712e3          	bnez	a4,15de0 <_ldtoa_r+0x9bc>
   15e00:	cd5ff06f          	j	15ad4 <_ldtoa_r+0x6b0>
   15e04:	03100693          	li	a3,49
   15e08:	18d100a3          	sb	a3,385(sp)
   15e0c:	02e00693          	li	a3,46
   15e10:	18d10123          	sb	a3,386(sp)
   15e14:	0014041b          	addiw	s0,s0,1
   15e18:	2ef05863          	blez	a5,16108 <_ldtoa_r+0xce4>
   15e1c:	03000793          	li	a5,48
   15e20:	18f101a3          	sb	a5,387(sp)
   15e24:	fffa0a1b          	addiw	s4,s4,-1
   15e28:	18410a93          	addi	s5,sp,388
   15e2c:	9b5ff06f          	j	157e0 <_ldtoa_r+0x3bc>
   15e30:	01813703          	ld	a4,24(sp)
   15e34:	02a00793          	li	a5,42
   15e38:	00070a13          	mv	s4,a4
   15e3c:	00e7d463          	bge	a5,a4,15e44 <_ldtoa_r+0xa20>
   15e40:	02a00a13          	li	s4,42
   15e44:	000a079b          	sext.w	a5,s4
   15e48:	00f13823          	sd	a5,16(sp)
   15e4c:	ec4ff06f          	j	15510 <_ldtoa_r+0xec>
   15e50:	01813783          	ld	a5,24(sp)
   15e54:	fff78a1b          	addiw	s4,a5,-1
   15e58:	02a00793          	li	a5,42
   15e5c:	0147d463          	bge	a5,s4,15e64 <_ldtoa_r+0xa40>
   15e60:	02a00a13          	li	s4,42
   15e64:	01413823          	sd	s4,16(sp)
   15e68:	ea8ff06f          	j	15510 <_ldtoa_r+0xec>
   15e6c:	10010c93          	addi	s9,sp,256
   15e70:	000c8713          	mv	a4,s9
   15e74:	0c010793          	addi	a5,sp,192
   15e78:	0007d683          	lhu	a3,0(a5)
   15e7c:	00278793          	addi	a5,a5,2
   15e80:	00270713          	addi	a4,a4,2
   15e84:	fed71f23          	sh	a3,-2(a4)
   15e88:	fe8798e3          	bne	a5,s0,15e78 <_ldtoa_r+0xa54>
   15e8c:	000047b7          	lui	a5,0x4
   15e90:	08e78793          	addi	a5,a5,142 # 408e <exit-0xc05a>
   15e94:	10f11923          	sh	a5,274(sp)
   15e98:	000227b7          	lui	a5,0x22
   15e9c:	27478793          	addi	a5,a5,628 # 22274 <etens+0x104>
   15ea0:	04f13423          	sd	a5,72(sp)
   15ea4:	000087b7          	lui	a5,0x8
   15ea8:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   15eac:	02f13c23          	sd	a5,56(sp)
   15eb0:	ffffc7b7          	lui	a5,0xffffc
   15eb4:	0027879b          	addiw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd71fa>
   15eb8:	00022eb7          	lui	t4,0x22
   15ebc:	04f12223          	sw	a5,68(sp)
   15ec0:	000227b7          	lui	a5,0x22
   15ec4:	00000413          	li	s0,0
   15ec8:	01000713          	li	a4,16
   15ecc:	210e8e93          	addi	t4,t4,528 # 22210 <etens+0xa0>
   15ed0:	04078793          	addi	a5,a5,64 # 22040 <bmask>
   15ed4:	05313c23          	sd	s3,88(sp)
   15ed8:	07213023          	sd	s2,96(sp)
   15edc:	18010c13          	addi	s8,sp,384
   15ee0:	00040913          	mv	s2,s0
   15ee4:	1c010b13          	addi	s6,sp,448
   15ee8:	12010a13          	addi	s4,sp,288
   15eec:	0f210d93          	addi	s11,sp,242
   15ef0:	04f13823          	sd	a5,80(sp)
   15ef4:	0f410d13          	addi	s10,sp,244
   15ef8:	000e8993          	mv	s3,t4
   15efc:	00070413          	mv	s0,a4
   15f00:	000b0693          	mv	a3,s6
   15f04:	0e010613          	addi	a2,sp,224
   15f08:	000c8593          	mv	a1,s9
   15f0c:	00098513          	mv	a0,s3
   15f10:	a91fe0ef          	jal	ra,149a0 <ediv>
   15f14:	08810793          	addi	a5,sp,136
   15f18:	0e010713          	addi	a4,sp,224
   15f1c:	09c10893          	addi	a7,sp,156
   15f20:	00075683          	lhu	a3,0(a4)
   15f24:	00278793          	addi	a5,a5,2
   15f28:	00270713          	addi	a4,a4,2
   15f2c:	fed79f23          	sh	a3,-2(a5)
   15f30:	ff1798e3          	bne	a5,a7,15f20 <_ldtoa_r+0xafc>
   15f34:	03813783          	ld	a5,56(sp)
   15f38:	09a15503          	lhu	a0,154(sp)
   15f3c:	00f575b3          	and	a1,a0,a5
   15f40:	04412783          	lw	a5,68(sp)
   15f44:	00f587bb          	addw	a5,a1,a5
   15f48:	00078593          	mv	a1,a5
   15f4c:	38f05263          	blez	a5,162d0 <_ldtoa_r+0xeac>
   15f50:	09000793          	li	a5,144
   15f54:	40b7863b          	subw	a2,a5,a1
   15f58:	000a0713          	mv	a4,s4
   15f5c:	08810793          	addi	a5,sp,136
   15f60:	0007d683          	lhu	a3,0(a5)
   15f64:	00278793          	addi	a5,a5,2
   15f68:	00270713          	addi	a4,a4,2
   15f6c:	fed71f23          	sh	a3,-2(a4)
   15f70:	ff1798e3          	bne	a5,a7,15f60 <_ldtoa_r+0xb3c>
   15f74:	06c05663          	blez	a2,15fe0 <_ldtoa_r+0xbbc>
   15f78:	00f00793          	li	a5,15
   15f7c:	000a0713          	mv	a4,s4
   15f80:	02c7de63          	bge	a5,a2,15fbc <_ldtoa_r+0xb98>
   15f84:	08000693          	li	a3,128
   15f88:	40b686bb          	subw	a3,a3,a1
   15f8c:	0046d69b          	srliw	a3,a3,0x4
   15f90:	0016871b          	addiw	a4,a3,1
   15f94:	00171713          	slli	a4,a4,0x1
   15f98:	00ea0733          	add	a4,s4,a4
   15f9c:	000a0793          	mv	a5,s4
   15fa0:	00278793          	addi	a5,a5,2
   15fa4:	fe079f23          	sh	zero,-2(a5)
   15fa8:	fee79ce3          	bne	a5,a4,15fa0 <_ldtoa_r+0xb7c>
   15fac:	08000613          	li	a2,128
   15fb0:	40b6063b          	subw	a2,a2,a1
   15fb4:	0046969b          	slliw	a3,a3,0x4
   15fb8:	40d6063b          	subw	a2,a2,a3
   15fbc:	05013683          	ld	a3,80(sp)
   15fc0:	00161793          	slli	a5,a2,0x1
   15fc4:	00f687b3          	add	a5,a3,a5
   15fc8:	0007d783          	lhu	a5,0(a5)
   15fcc:	00075683          	lhu	a3,0(a4)
   15fd0:	00f6f7b3          	and	a5,a3,a5
   15fd4:	00f71023          	sh	a5,0(a4)
   15fd8:	00f55513          	srli	a0,a0,0xf
   15fdc:	16051663          	bnez	a0,16148 <_ldtoa_r+0xd24>
   15fe0:	0e010793          	addi	a5,sp,224
   15fe4:	000a0713          	mv	a4,s4
   15fe8:	0007d603          	lhu	a2,0(a5)
   15fec:	00075683          	lhu	a3,0(a4)
   15ff0:	02d61863          	bne	a2,a3,16020 <_ldtoa_r+0xbfc>
   15ff4:	00278793          	addi	a5,a5,2
   15ff8:	00270713          	addi	a4,a4,2
   15ffc:	fefd96e3          	bne	s11,a5,15fe8 <_ldtoa_r+0xbc4>
   16000:	000c8713          	mv	a4,s9
   16004:	0e010793          	addi	a5,sp,224
   16008:	0007d683          	lhu	a3,0(a5)
   1600c:	00278793          	addi	a5,a5,2
   16010:	00270713          	addi	a4,a4,2
   16014:	fed71f23          	sh	a3,-2(a4)
   16018:	ffa798e3          	bne	a5,s10,16008 <_ldtoa_r+0xbe4>
   1601c:	0124093b          	addw	s2,s0,s2
   16020:	04813783          	ld	a5,72(sp)
   16024:	01498993          	addi	s3,s3,20
   16028:	00145413          	srli	s0,s0,0x1
   1602c:	ecf99ae3          	bne	s3,a5,15f00 <_ldtoa_r+0xadc>
   16030:	11215683          	lhu	a3,274(sp)
   16034:	ffffc7b7          	lui	a5,0xffffc
   16038:	f727879b          	addiw	a5,a5,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffd716a>
   1603c:	00d787bb          	addw	a5,a5,a3
   16040:	00090413          	mv	s0,s2
   16044:	05813983          	ld	s3,88(sp)
   16048:	06013903          	ld	s2,96(sp)
   1604c:	015787bb          	addw	a5,a5,s5
   16050:	10f11923          	sh	a5,274(sp)
   16054:	0c010693          	addi	a3,sp,192
   16058:	000c8793          	mv	a5,s9
   1605c:	11410593          	addi	a1,sp,276
   16060:	0007d703          	lhu	a4,0(a5)
   16064:	00278793          	addi	a5,a5,2
   16068:	00268693          	addi	a3,a3,2
   1606c:	fee69f23          	sh	a4,-2(a3)
   16070:	feb798e3          	bne	a5,a1,16060 <_ldtoa_r+0xc3c>
   16074:	000227b7          	lui	a5,0x22
   16078:	0e010693          	addi	a3,sp,224
   1607c:	27878793          	addi	a5,a5,632 # 22278 <eone>
   16080:	0007d703          	lhu	a4,0(a5)
   16084:	00278793          	addi	a5,a5,2
   16088:	00268693          	addi	a3,a3,2
   1608c:	fee69f23          	sh	a4,-2(a3)
   16090:	fe9798e3          	bne	a5,s1,16080 <_ldtoa_r+0xc5c>
   16094:	000224b7          	lui	s1,0x22
   16098:	00001bb7          	lui	s7,0x1
   1609c:	17048493          	addi	s1,s1,368 # 22170 <etens>
   160a0:	00022d37          	lui	s10,0x22
   160a4:	0140006f          	j	160b8 <_ldtoa_r+0xc94>
   160a8:	260d0793          	addi	a5,s10,608 # 22260 <etens+0xf0>
   160ac:	001bdb93          	srli	s7,s7,0x1
   160b0:	24f48e63          	beq	s1,a5,1630c <_ldtoa_r+0xee8>
   160b4:	01448493          	addi	s1,s1,20
   160b8:	000c8593          	mv	a1,s9
   160bc:	260d0513          	addi	a0,s10,608
   160c0:	818fe0ef          	jal	ra,140d8 <ecmp>
   160c4:	24a04463          	bgtz	a0,1630c <_ldtoa_r+0xee8>
   160c8:	000c8593          	mv	a1,s9
   160cc:	00048513          	mv	a0,s1
   160d0:	808fe0ef          	jal	ra,140d8 <ecmp>
   160d4:	fca04ae3          	bgtz	a0,160a8 <_ldtoa_r+0xc84>
   160d8:	000b0693          	mv	a3,s6
   160dc:	000c8613          	mv	a2,s9
   160e0:	000c8593          	mv	a1,s9
   160e4:	00048513          	mv	a0,s1
   160e8:	8b9fe0ef          	jal	ra,149a0 <ediv>
   160ec:	0e010613          	addi	a2,sp,224
   160f0:	000b0693          	mv	a3,s6
   160f4:	00060593          	mv	a1,a2
   160f8:	00048513          	mv	a0,s1
   160fc:	e3dfe0ef          	jal	ra,14f38 <emul>
   16100:	008b843b          	addw	s0,s7,s0
   16104:	fa5ff06f          	j	160a8 <_ldtoa_r+0xc84>
   16108:	18310a93          	addi	s5,sp,387
   1610c:	00000a13          	li	s4,0
   16110:	960794e3          	bnez	a5,15a78 <_ldtoa_r+0x654>
   16114:	eccff06f          	j	157e0 <_ldtoa_r+0x3bc>
   16118:	000c0793          	mv	a5,s8
   1611c:	9d5ff06f          	j	15af0 <_ldtoa_r+0x6cc>
   16120:	01813703          	ld	a4,24(sp)
   16124:	02a00793          	li	a5,42
   16128:	00070a13          	mv	s4,a4
   1612c:	00e7d463          	bge	a5,a4,16134 <_ldtoa_r+0xd10>
   16130:	02a00a13          	li	s4,42
   16134:	000a079b          	sext.w	a5,s4
   16138:	00f13823          	sd	a5,16(sp)
   1613c:	865ff06f          	j	159a0 <_ldtoa_r+0x57c>
   16140:	00000693          	li	a3,0
   16144:	829ff06f          	j	1596c <_ldtoa_r+0x548>
   16148:	08810793          	addi	a5,sp,136
   1614c:	000a0713          	mv	a4,s4
   16150:	0140006f          	j	16164 <_ldtoa_r+0xd40>
   16154:	00278793          	addi	a5,a5,2
   16158:	09a10693          	addi	a3,sp,154
   1615c:	00270713          	addi	a4,a4,2
   16160:	e8d780e3          	beq	a5,a3,15fe0 <_ldtoa_r+0xbbc>
   16164:	0007d603          	lhu	a2,0(a5)
   16168:	00075683          	lhu	a3,0(a4)
   1616c:	fed604e3          	beq	a2,a3,16154 <_ldtoa_r+0xd30>
   16170:	13215783          	lhu	a5,306(sp)
   16174:	fff7c793          	not	a5,a5
   16178:	03179713          	slli	a4,a5,0x31
   1617c:	38070c63          	beqz	a4,16514 <_ldtoa_r+0x10f0>
   16180:	14010593          	addi	a1,sp,320
   16184:	278b8513          	addi	a0,s7,632 # 1278 <exit-0xee70>
   16188:	e99fd0ef          	jal	ra,14020 <emovi>
   1618c:	16010593          	addi	a1,sp,352
   16190:	000a0513          	mv	a0,s4
   16194:	e8dfd0ef          	jal	ra,14020 <emovi>
   16198:	14015783          	lhu	a5,320(sp)
   1619c:	16215703          	lhu	a4,354(sp)
   161a0:	14215303          	lhu	t1,322(sp)
   161a4:	fff7c793          	not	a5,a5
   161a8:	14f11023          	sh	a5,320(sp)
   161ac:	40e305b3          	sub	a1,t1,a4
   161b0:	00070693          	mv	a3,a4
   161b4:	06b05e63          	blez	a1,16230 <_ldtoa_r+0xe0c>
   161b8:	16010593          	addi	a1,sp,352
   161bc:	000c0693          	mv	a3,s8
   161c0:	17810793          	addi	a5,sp,376
   161c4:	000c0513          	mv	a0,s8
   161c8:	00058613          	mv	a2,a1
   161cc:	00063803          	ld	a6,0(a2)
   161d0:	00860613          	addi	a2,a2,8
   161d4:	00850513          	addi	a0,a0,8
   161d8:	ff053c23          	sd	a6,-8(a0)
   161dc:	fec798e3          	bne	a5,a2,161cc <_ldtoa_r+0xda8>
   161e0:	14010613          	addi	a2,sp,320
   161e4:	18011c23          	sh	zero,408(sp)
   161e8:	15810513          	addi	a0,sp,344
   161ec:	00060793          	mv	a5,a2
   161f0:	0007b803          	ld	a6,0(a5)
   161f4:	00878793          	addi	a5,a5,8
   161f8:	00858593          	addi	a1,a1,8
   161fc:	ff05bc23          	sd	a6,-8(a1)
   16200:	fea798e3          	bne	a5,a0,161f0 <_ldtoa_r+0xdcc>
   16204:	16011c23          	sh	zero,376(sp)
   16208:	018c0793          	addi	a5,s8,24
   1620c:	0006b583          	ld	a1,0(a3)
   16210:	00868693          	addi	a3,a3,8
   16214:	00860613          	addi	a2,a2,8
   16218:	feb63c23          	sd	a1,-8(a2)
   1621c:	fef698e3          	bne	a3,a5,1620c <_ldtoa_r+0xde8>
   16220:	16215683          	lhu	a3,354(sp)
   16224:	406705b3          	sub	a1,a4,t1
   16228:	14011c23          	sh	zero,344(sp)
   1622c:	00068713          	mv	a4,a3
   16230:	30058a63          	beqz	a1,16544 <_ldtoa_r+0x1120>
   16234:	06d13423          	sd	a3,104(sp)
   16238:	f6f00793          	li	a5,-145
   1623c:	06f5c863          	blt	a1,a5,162ac <_ldtoa_r+0xe88>
   16240:	0005859b          	sext.w	a1,a1
   16244:	14010513          	addi	a0,sp,320
   16248:	c15fd0ef          	jal	ra,13e5c <eshift.part.0>
   1624c:	06813683          	ld	a3,104(sp)
   16250:	00050593          	mv	a1,a0
   16254:	17810793          	addi	a5,sp,376
   16258:	14015603          	lhu	a2,320(sp)
   1625c:	16015703          	lhu	a4,352(sp)
   16260:	44e60663          	beq	a2,a4,166ac <_ldtoa_r+0x1288>
   16264:	00000713          	li	a4,0
   16268:	15810313          	addi	t1,sp,344
   1626c:	16210513          	addi	a0,sp,354
   16270:	0007d603          	lhu	a2,0(a5)
   16274:	00035803          	lhu	a6,0(t1)
   16278:	ffe78793          	addi	a5,a5,-2
   1627c:	ffe30313          	addi	t1,t1,-2
   16280:	41060633          	sub	a2,a2,a6
   16284:	40e60733          	sub	a4,a2,a4
   16288:	01075613          	srli	a2,a4,0x10
   1628c:	00e79123          	sh	a4,2(a5)
   16290:	00167713          	andi	a4,a2,1
   16294:	fca79ee3          	bne	a5,a0,16270 <_ldtoa_r+0xe4c>
   16298:	00100613          	li	a2,1
   1629c:	000b0793          	mv	a5,s6
   162a0:	04000713          	li	a4,64
   162a4:	16010513          	addi	a0,sp,352
   162a8:	f81fd0ef          	jal	ra,14228 <emdnorm>
   162ac:	000a0593          	mv	a1,s4
   162b0:	16010513          	addi	a0,sp,352
   162b4:	981fd0ef          	jal	ra,13c34 <emovo.constprop.0>
   162b8:	d29ff06f          	j	15fe0 <_ldtoa_r+0xbbc>
   162bc:	02013783          	ld	a5,32(sp)
   162c0:	18010023          	sb	zero,384(sp)
   162c4:	000c0493          	mv	s1,s8
   162c8:	0007a023          	sw	zero,0(a5)
   162cc:	ad1ff06f          	j	15d9c <_ldtoa_r+0x978>
   162d0:	000a0793          	mv	a5,s4
   162d4:	00278793          	addi	a5,a5,2
   162d8:	13410713          	addi	a4,sp,308
   162dc:	fe079f23          	sh	zero,-2(a5)
   162e0:	fee79ae3          	bne	a5,a4,162d4 <_ldtoa_r+0xeb0>
   162e4:	cf5ff06f          	j	15fd8 <_ldtoa_r+0xbb4>
   162e8:	18010c13          	addi	s8,sp,384
   162ec:	0e098863          	beqz	s3,163dc <_ldtoa_r+0xfb8>
   162f0:	000225b7          	lui	a1,0x22
   162f4:	fa058593          	addi	a1,a1,-96 # 21fa0 <blanks.1+0x48>
   162f8:	000c0513          	mv	a0,s8
   162fc:	5b8020ef          	jal	ra,188b4 <sprintf>
   16300:	00002437          	lui	s0,0x2
   16304:	70f40413          	addi	s0,s0,1807 # 270f <exit-0xd9d9>
   16308:	f84ff06f          	j	15a8c <_ldtoa_r+0x668>
   1630c:	13810d93          	addi	s11,sp,312
   16310:	a9cff06f          	j	155ac <_ldtoa_r+0x188>
   16314:	0016869b          	addiw	a3,a3,1
   16318:	00d58023          	sb	a3,0(a1)
   1631c:	f5cff06f          	j	15a78 <_ldtoa_r+0x654>
   16320:	fff5c783          	lbu	a5,-1(a1)
   16324:	03800693          	li	a3,56
   16328:	0cf6f463          	bgeu	a3,a5,163f0 <_ldtoa_r+0xfcc>
   1632c:	03100793          	li	a5,49
   16330:	0014041b          	addiw	s0,s0,1
   16334:	fef58fa3          	sb	a5,-1(a1)
   16338:	f40ff06f          	j	15a78 <_ldtoa_r+0x654>
   1633c:	0a010793          	addi	a5,sp,160
   16340:	0b210613          	addi	a2,sp,178
   16344:	0080006f          	j	1634c <_ldtoa_r+0xf28>
   16348:	f6c78063          	beq	a5,a2,15aa8 <_ldtoa_r+0x684>
   1634c:	0007d703          	lhu	a4,0(a5)
   16350:	00278793          	addi	a5,a5,2
   16354:	fe070ae3          	beqz	a4,16348 <_ldtoa_r+0xf24>
   16358:	02013703          	ld	a4,32(sp)
   1635c:	000027b7          	lui	a5,0x2
   16360:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   16364:	00f72023          	sw	a5,0(a4)
   16368:	f8cff06f          	j	15af4 <_ldtoa_r+0x6d0>
   1636c:	18010c13          	addi	s8,sp,384
   16370:	000225b7          	lui	a1,0x22
   16374:	fc058593          	addi	a1,a1,-64 # 21fc0 <blanks.1+0x68>
   16378:	000c0513          	mv	a0,s8
   1637c:	538020ef          	jal	ra,188b4 <sprintf>
   16380:	f81ff06f          	j	16300 <_ldtoa_r+0xedc>
   16384:	0e010593          	addi	a1,sp,224
   16388:	0c010513          	addi	a0,sp,192
   1638c:	02f13c23          	sd	a5,56(sp)
   16390:	8a5fd0ef          	jal	ra,13c34 <emovo.constprop.0>
   16394:	000225b7          	lui	a1,0x22
   16398:	29058593          	addi	a1,a1,656 # 22290 <ezero>
   1639c:	0e010513          	addi	a0,sp,224
   163a0:	d39fd0ef          	jal	ra,140d8 <ecmp>
   163a4:	03813783          	ld	a5,56(sp)
   163a8:	e8051663          	bnez	a0,15a34 <_ldtoa_r+0x610>
   163ac:	ec0a4663          	bltz	s4,15a78 <_ldtoa_r+0x654>
   163b0:	ffe7c683          	lbu	a3,-2(a5)
   163b4:	ffe78593          	addi	a1,a5,-2
   163b8:	fd268613          	addi	a2,a3,-46
   163bc:	00163613          	seqz	a2,a2
   163c0:	fff64613          	not	a2,a2
   163c4:	00ca8633          	add	a2,s5,a2
   163c8:	00064603          	lbu	a2,0(a2)
   163cc:	07f6f693          	andi	a3,a3,127
   163d0:	00167613          	andi	a2,a2,1
   163d4:	e6061863          	bnez	a2,15a44 <_ldtoa_r+0x620>
   163d8:	ea0ff06f          	j	15a78 <_ldtoa_r+0x654>
   163dc:	000225b7          	lui	a1,0x22
   163e0:	fb058593          	addi	a1,a1,-80 # 21fb0 <blanks.1+0x58>
   163e4:	000c0513          	mv	a0,s8
   163e8:	4cc020ef          	jal	ra,188b4 <sprintf>
   163ec:	f15ff06f          	j	16300 <_ldtoa_r+0xedc>
   163f0:	0017879b          	addiw	a5,a5,1
   163f4:	fef58fa3          	sb	a5,-1(a1)
   163f8:	e80ff06f          	j	15a78 <_ldtoa_r+0x654>
   163fc:	12010a13          	addi	s4,sp,288
   16400:	000a0593          	mv	a1,s4
   16404:	0c010513          	addi	a0,sp,192
   16408:	00004d37          	lui	s10,0x4
   1640c:	c15fd0ef          	jal	ra,14020 <emovi>
   16410:	00000413          	li	s0,0
   16414:	13810d93          	addi	s11,sp,312
   16418:	12210b13          	addi	s6,sp,290
   1641c:	ffed0d13          	addi	s10,s10,-2 # 3ffe <exit-0xc0ea>
   16420:	11810c93          	addi	s9,sp,280
   16424:	13815783          	lhu	a5,312(sp)
   16428:	0077f793          	andi	a5,a5,7
   1642c:	0c079a63          	bnez	a5,16500 <_ldtoa_r+0x10dc>
   16430:	10010a93          	addi	s5,sp,256
   16434:	000a0c13          	mv	s8,s4
   16438:	000a8713          	mv	a4,s5
   1643c:	000a0793          	mv	a5,s4
   16440:	0007b683          	ld	a3,0(a5)
   16444:	00878793          	addi	a5,a5,8
   16448:	00870713          	addi	a4,a4,8
   1644c:	fed73c23          	sd	a3,-8(a4)
   16450:	ffb798e3          	bne	a5,s11,16440 <_ldtoa_r+0x101c>
   16454:	10010513          	addi	a0,sp,256
   16458:	10011c23          	sh	zero,280(sp)
   1645c:	e64fd0ef          	jal	ra,13ac0 <eshdn1>
   16460:	10010513          	addi	a0,sp,256
   16464:	e5cfd0ef          	jal	ra,13ac0 <eshdn1>
   16468:	00000613          	li	a2,0
   1646c:	11810693          	addi	a3,sp,280
   16470:	000d8713          	mv	a4,s11
   16474:	0006d583          	lhu	a1,0(a3)
   16478:	00075783          	lhu	a5,0(a4)
   1647c:	ffe68693          	addi	a3,a3,-2
   16480:	ffe70713          	addi	a4,a4,-2
   16484:	00b787b3          	add	a5,a5,a1
   16488:	00c787b3          	add	a5,a5,a2
   1648c:	0107d613          	srli	a2,a5,0x10
   16490:	00f69123          	sh	a5,2(a3)
   16494:	00167613          	andi	a2,a2,1
   16498:	fd671ee3          	bne	a4,s6,16474 <_ldtoa_r+0x1050>
   1649c:	10215783          	lhu	a5,258(sp)
   164a0:	10415703          	lhu	a4,260(sp)
   164a4:	0037879b          	addiw	a5,a5,3
   164a8:	10f11123          	sh	a5,258(sp)
   164ac:	02070063          	beqz	a4,164cc <_ldtoa_r+0x10a8>
   164b0:	10010513          	addi	a0,sp,256
   164b4:	e0cfd0ef          	jal	ra,13ac0 <eshdn1>
   164b8:	10215783          	lhu	a5,258(sp)
   164bc:	10415703          	lhu	a4,260(sp)
   164c0:	0017879b          	addiw	a5,a5,1
   164c4:	10f11123          	sh	a5,258(sp)
   164c8:	fe0714e3          	bnez	a4,164b0 <_ldtoa_r+0x108c>
   164cc:	11815783          	lhu	a5,280(sp)
   164d0:	02079863          	bnez	a5,16500 <_ldtoa_r+0x10dc>
   164d4:	10215783          	lhu	a5,258(sp)
   164d8:	02fd6463          	bltu	s10,a5,16500 <_ldtoa_r+0x10dc>
   164dc:	000ab783          	ld	a5,0(s5)
   164e0:	008a8a93          	addi	s5,s5,8
   164e4:	008c0c13          	addi	s8,s8,8
   164e8:	fefc3c23          	sd	a5,-8(s8)
   164ec:	ff9a98e3          	bne	s5,s9,164dc <_ldtoa_r+0x10b8>
   164f0:	12011c23          	sh	zero,312(sp)
   164f4:	fff4041b          	addiw	s0,s0,-1
   164f8:	fd500793          	li	a5,-43
   164fc:	f2f414e3          	bne	s0,a5,16424 <_ldtoa_r+0x1000>
   16500:	0c010593          	addi	a1,sp,192
   16504:	000a0513          	mv	a0,s4
   16508:	f2cfd0ef          	jal	ra,13c34 <emovo.constprop.0>
   1650c:	1c010b13          	addi	s6,sp,448
   16510:	f8cff06f          	j	15c9c <_ldtoa_r+0x878>
   16514:	000a0793          	mv	a5,s4
   16518:	13210713          	addi	a4,sp,306
   1651c:	0007d683          	lhu	a3,0(a5)
   16520:	00278793          	addi	a5,a5,2
   16524:	aa069ee3          	bnez	a3,15fe0 <_ldtoa_r+0xbbc>
   16528:	fee79ae3          	bne	a5,a4,1651c <_ldtoa_r+0x10f8>
   1652c:	000a0793          	mv	a5,s4
   16530:	0007d683          	lhu	a3,0(a5)
   16534:	00278793          	addi	a5,a5,2
   16538:	c40694e3          	bnez	a3,16180 <_ldtoa_r+0xd5c>
   1653c:	fee79ae3          	bne	a5,a4,16530 <_ldtoa_r+0x110c>
   16540:	aa1ff06f          	j	15fe0 <_ldtoa_r+0xbbc>
   16544:	16410613          	addi	a2,sp,356
   16548:	14410793          	addi	a5,sp,324
   1654c:	15a10313          	addi	t1,sp,346
   16550:	0007d503          	lhu	a0,0(a5)
   16554:	00065583          	lhu	a1,0(a2)
   16558:	00278793          	addi	a5,a5,2
   1655c:	00260613          	addi	a2,a2,2
   16560:	04b51663          	bne	a0,a1,165ac <_ldtoa_r+0x1188>
   16564:	fe6796e3          	bne	a5,t1,16550 <_ldtoa_r+0x112c>
   16568:	14015603          	lhu	a2,320(sp)
   1656c:	16015783          	lhu	a5,352(sp)
   16570:	0af60a63          	beq	a2,a5,16624 <_ldtoa_r+0x1200>
   16574:	000a0793          	mv	a5,s4
   16578:	13410713          	addi	a4,sp,308
   1657c:	00278793          	addi	a5,a5,2
   16580:	fe079f23          	sh	zero,-2(a5)
   16584:	fee79ce3          	bne	a5,a4,1657c <_ldtoa_r+0x1158>
   16588:	a59ff06f          	j	15fe0 <_ldtoa_r+0xbbc>
   1658c:	000226b7          	lui	a3,0x22
   16590:	000015b7          	lui	a1,0x1
   16594:	00022537          	lui	a0,0x22
   16598:	fd068693          	addi	a3,a3,-48 # 21fd0 <blanks.1+0x78>
   1659c:	00000613          	li	a2,0
   165a0:	b6e58593          	addi	a1,a1,-1170 # b6e <exit-0xf57a>
   165a4:	fe850513          	addi	a0,a0,-24 # 21fe8 <blanks.1+0x90>
   165a8:	3a4060ef          	jal	ra,1c94c <__assert_func>
   165ac:	17810793          	addi	a5,sp,376
   165b0:	06a5f663          	bgeu	a1,a0,1661c <_ldtoa_r+0x11f8>
   165b4:	16010713          	addi	a4,sp,352
   165b8:	000c0593          	mv	a1,s8
   165bc:	17810793          	addi	a5,sp,376
   165c0:	000c0513          	mv	a0,s8
   165c4:	00070613          	mv	a2,a4
   165c8:	00063803          	ld	a6,0(a2)
   165cc:	00860613          	addi	a2,a2,8
   165d0:	00850513          	addi	a0,a0,8
   165d4:	ff053c23          	sd	a6,-8(a0)
   165d8:	fec798e3          	bne	a5,a2,165c8 <_ldtoa_r+0x11a4>
   165dc:	14010613          	addi	a2,sp,320
   165e0:	18011c23          	sh	zero,408(sp)
   165e4:	00060513          	mv	a0,a2
   165e8:	00053803          	ld	a6,0(a0)
   165ec:	00870713          	addi	a4,a4,8
   165f0:	00850513          	addi	a0,a0,8
   165f4:	ff073c23          	sd	a6,-8(a4)
   165f8:	fee798e3          	bne	a5,a4,165e8 <_ldtoa_r+0x11c4>
   165fc:	16011c23          	sh	zero,376(sp)
   16600:	15810713          	addi	a4,sp,344
   16604:	0005b503          	ld	a0,0(a1)
   16608:	00860613          	addi	a2,a2,8
   1660c:	00858593          	addi	a1,a1,8
   16610:	fea63c23          	sd	a0,-8(a2)
   16614:	fec718e3          	bne	a4,a2,16604 <_ldtoa_r+0x11e0>
   16618:	14011c23          	sh	zero,344(sp)
   1661c:	00000593          	li	a1,0
   16620:	c39ff06f          	j	16258 <_ldtoa_r+0xe34>
   16624:	00068793          	mv	a5,a3
   16628:	00069663          	bnez	a3,16634 <_ldtoa_r+0x1210>
   1662c:	16611603          	lh	a2,358(sp)
   16630:	02065263          	bgez	a2,16654 <_ldtoa_r+0x1230>
   16634:	16210613          	addi	a2,sp,354
   16638:	17810793          	addi	a5,sp,376
   1663c:	00065583          	lhu	a1,0(a2)
   16640:	06059063          	bnez	a1,166a0 <_ldtoa_r+0x127c>
   16644:	00260613          	addi	a2,a2,2
   16648:	fec79ae3          	bne	a5,a2,1663c <_ldtoa_r+0x1218>
   1664c:	16e11123          	sh	a4,354(sp)
   16650:	c5dff06f          	j	162ac <_ldtoa_r+0xe88>
   16654:	17810693          	addi	a3,sp,376
   16658:	16210513          	addi	a0,sp,354
   1665c:	0006d703          	lhu	a4,0(a3)
   16660:	00f75613          	srli	a2,a4,0xf
   16664:	00060463          	beqz	a2,1666c <_ldtoa_r+0x1248>
   16668:	0017e793          	ori	a5,a5,1
   1666c:	0017171b          	slliw	a4,a4,0x1
   16670:	03071713          	slli	a4,a4,0x30
   16674:	0027f613          	andi	a2,a5,2
   16678:	03075713          	srli	a4,a4,0x30
   1667c:	00060463          	beqz	a2,16684 <_ldtoa_r+0x1260>
   16680:	00176713          	ori	a4,a4,1
   16684:	0017979b          	slliw	a5,a5,0x1
   16688:	00e69023          	sh	a4,0(a3)
   1668c:	03079793          	slli	a5,a5,0x30
   16690:	ffe68693          	addi	a3,a3,-2
   16694:	0307d793          	srli	a5,a5,0x30
   16698:	fca692e3          	bne	a3,a0,1665c <_ldtoa_r+0x1238>
   1669c:	c11ff06f          	j	162ac <_ldtoa_r+0xe88>
   166a0:	00168713          	addi	a4,a3,1
   166a4:	16e11123          	sh	a4,354(sp)
   166a8:	c05ff06f          	j	162ac <_ldtoa_r+0xe88>
   166ac:	00000713          	li	a4,0
   166b0:	15810513          	addi	a0,sp,344
   166b4:	14210313          	addi	t1,sp,322
   166b8:	0007d803          	lhu	a6,0(a5)
   166bc:	00055603          	lhu	a2,0(a0)
   166c0:	ffe78793          	addi	a5,a5,-2
   166c4:	ffe50513          	addi	a0,a0,-2
   166c8:	01060633          	add	a2,a2,a6
   166cc:	00e60733          	add	a4,a2,a4
   166d0:	01075613          	srli	a2,a4,0x10
   166d4:	00e79123          	sh	a4,2(a5)
   166d8:	00167713          	andi	a4,a2,1
   166dc:	fc651ee3          	bne	a0,t1,166b8 <_ldtoa_r+0x1294>
   166e0:	00000613          	li	a2,0
   166e4:	bb9ff06f          	j	1629c <_ldtoa_r+0xe78>

00000000000166e8 <_ldcheck>:
   166e8:	00053703          	ld	a4,0(a0)
   166ec:	00853783          	ld	a5,8(a0)
   166f0:	fc010113          	addi	sp,sp,-64
   166f4:	00010513          	mv	a0,sp
   166f8:	01010593          	addi	a1,sp,16
   166fc:	00e13023          	sd	a4,0(sp)
   16700:	00f13423          	sd	a5,8(sp)
   16704:	02113c23          	sd	ra,56(sp)
   16708:	940fe0ef          	jal	ra,14848 <e113toe.isra.0>
   1670c:	02215783          	lhu	a5,34(sp)
   16710:	00000513          	li	a0,0
   16714:	fff7c793          	not	a5,a5
   16718:	03179713          	slli	a4,a5,0x31
   1671c:	02071063          	bnez	a4,1673c <_ldcheck+0x54>
   16720:	01010793          	addi	a5,sp,16
   16724:	02210693          	addi	a3,sp,34
   16728:	0007d703          	lhu	a4,0(a5)
   1672c:	00278793          	addi	a5,a5,2
   16730:	00071c63          	bnez	a4,16748 <_ldcheck+0x60>
   16734:	fed79ae3          	bne	a5,a3,16728 <_ldcheck+0x40>
   16738:	00200513          	li	a0,2
   1673c:	03813083          	ld	ra,56(sp)
   16740:	04010113          	addi	sp,sp,64
   16744:	00008067          	ret
   16748:	00100513          	li	a0,1
   1674c:	ff1ff06f          	j	1673c <_ldcheck+0x54>

0000000000016750 <__localeconv_l>:
   16750:	10050513          	addi	a0,a0,256
   16754:	00008067          	ret

0000000000016758 <_localeconv_r>:
   16758:	e6018513          	addi	a0,gp,-416 # 24468 <__global_locale+0x100>
   1675c:	00008067          	ret

0000000000016760 <localeconv>:
   16760:	e6018513          	addi	a0,gp,-416 # 24468 <__global_locale+0x100>
   16764:	00008067          	ret

0000000000016768 <_setlocale_r>:
   16768:	fe010113          	addi	sp,sp,-32
   1676c:	00113c23          	sd	ra,24(sp)
   16770:	00813823          	sd	s0,16(sp)
   16774:	00913423          	sd	s1,8(sp)
   16778:	02060c63          	beqz	a2,167b0 <_setlocale_r+0x48>
   1677c:	000225b7          	lui	a1,0x22
   16780:	2b058593          	addi	a1,a1,688 # 222b0 <ezero+0x20>
   16784:	00060513          	mv	a0,a2
   16788:	00060413          	mv	s0,a2
   1678c:	30c020ef          	jal	ra,18a98 <strcmp>
   16790:	000224b7          	lui	s1,0x22
   16794:	02051263          	bnez	a0,167b8 <_setlocale_r+0x50>
   16798:	2a848513          	addi	a0,s1,680 # 222a8 <ezero+0x18>
   1679c:	01813083          	ld	ra,24(sp)
   167a0:	01013403          	ld	s0,16(sp)
   167a4:	00813483          	ld	s1,8(sp)
   167a8:	02010113          	addi	sp,sp,32
   167ac:	00008067          	ret
   167b0:	000224b7          	lui	s1,0x22
   167b4:	fe5ff06f          	j	16798 <_setlocale_r+0x30>
   167b8:	2a848593          	addi	a1,s1,680 # 222a8 <ezero+0x18>
   167bc:	00040513          	mv	a0,s0
   167c0:	2d8020ef          	jal	ra,18a98 <strcmp>
   167c4:	fc050ae3          	beqz	a0,16798 <_setlocale_r+0x30>
   167c8:	000225b7          	lui	a1,0x22
   167cc:	d1858593          	addi	a1,a1,-744 # 21d18 <__clzdi2+0x88>
   167d0:	00040513          	mv	a0,s0
   167d4:	2c4020ef          	jal	ra,18a98 <strcmp>
   167d8:	fc0500e3          	beqz	a0,16798 <_setlocale_r+0x30>
   167dc:	00000513          	li	a0,0
   167e0:	fbdff06f          	j	1679c <_setlocale_r+0x34>

00000000000167e4 <__locale_mb_cur_max>:
   167e4:	ec01c503          	lbu	a0,-320(gp) # 244c8 <__global_locale+0x160>
   167e8:	00008067          	ret

00000000000167ec <setlocale>:
   167ec:	fe010113          	addi	sp,sp,-32
   167f0:	00113c23          	sd	ra,24(sp)
   167f4:	00813823          	sd	s0,16(sp)
   167f8:	00913423          	sd	s1,8(sp)
   167fc:	02058c63          	beqz	a1,16834 <setlocale+0x48>
   16800:	00058413          	mv	s0,a1
   16804:	000225b7          	lui	a1,0x22
   16808:	2b058593          	addi	a1,a1,688 # 222b0 <ezero+0x20>
   1680c:	00040513          	mv	a0,s0
   16810:	288020ef          	jal	ra,18a98 <strcmp>
   16814:	000224b7          	lui	s1,0x22
   16818:	02051263          	bnez	a0,1683c <setlocale+0x50>
   1681c:	2a848513          	addi	a0,s1,680 # 222a8 <ezero+0x18>
   16820:	01813083          	ld	ra,24(sp)
   16824:	01013403          	ld	s0,16(sp)
   16828:	00813483          	ld	s1,8(sp)
   1682c:	02010113          	addi	sp,sp,32
   16830:	00008067          	ret
   16834:	000224b7          	lui	s1,0x22
   16838:	fe5ff06f          	j	1681c <setlocale+0x30>
   1683c:	2a848593          	addi	a1,s1,680 # 222a8 <ezero+0x18>
   16840:	00040513          	mv	a0,s0
   16844:	254020ef          	jal	ra,18a98 <strcmp>
   16848:	fc050ae3          	beqz	a0,1681c <setlocale+0x30>
   1684c:	000225b7          	lui	a1,0x22
   16850:	d1858593          	addi	a1,a1,-744 # 21d18 <__clzdi2+0x88>
   16854:	00040513          	mv	a0,s0
   16858:	240020ef          	jal	ra,18a98 <strcmp>
   1685c:	fc0500e3          	beqz	a0,1681c <setlocale+0x30>
   16860:	00000513          	li	a0,0
   16864:	fbdff06f          	j	16820 <setlocale+0x34>

0000000000016868 <__smakebuf_r>:
   16868:	01059783          	lh	a5,16(a1)
   1686c:	f6010113          	addi	sp,sp,-160
   16870:	08813823          	sd	s0,144(sp)
   16874:	08113c23          	sd	ra,152(sp)
   16878:	08913423          	sd	s1,136(sp)
   1687c:	09213023          	sd	s2,128(sp)
   16880:	07313c23          	sd	s3,120(sp)
   16884:	07413823          	sd	s4,112(sp)
   16888:	0027f713          	andi	a4,a5,2
   1688c:	00058413          	mv	s0,a1
   16890:	02070c63          	beqz	a4,168c8 <__smakebuf_r+0x60>
   16894:	07758793          	addi	a5,a1,119
   16898:	00f5b023          	sd	a5,0(a1)
   1689c:	00f5bc23          	sd	a5,24(a1)
   168a0:	00100793          	li	a5,1
   168a4:	02f5a023          	sw	a5,32(a1)
   168a8:	09813083          	ld	ra,152(sp)
   168ac:	09013403          	ld	s0,144(sp)
   168b0:	08813483          	ld	s1,136(sp)
   168b4:	08013903          	ld	s2,128(sp)
   168b8:	07813983          	ld	s3,120(sp)
   168bc:	07013a03          	ld	s4,112(sp)
   168c0:	0a010113          	addi	sp,sp,160
   168c4:	00008067          	ret
   168c8:	01259583          	lh	a1,18(a1)
   168cc:	00050493          	mv	s1,a0
   168d0:	0805cc63          	bltz	a1,16968 <__smakebuf_r+0x100>
   168d4:	00810613          	addi	a2,sp,8
   168d8:	650060ef          	jal	ra,1cf28 <_fstat_r>
   168dc:	08054463          	bltz	a0,16964 <__smakebuf_r+0xfc>
   168e0:	00c12903          	lw	s2,12(sp)
   168e4:	0000f7b7          	lui	a5,0xf
   168e8:	000019b7          	lui	s3,0x1
   168ec:	00f97933          	and	s2,s2,a5
   168f0:	000027b7          	lui	a5,0x2
   168f4:	40f90933          	sub	s2,s2,a5
   168f8:	00193913          	seqz	s2,s2
   168fc:	40000a13          	li	s4,1024
   16900:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf8e8>
   16904:	000a0593          	mv	a1,s4
   16908:	00048513          	mv	a0,s1
   1690c:	1c4000ef          	jal	ra,16ad0 <_malloc_r>
   16910:	01041783          	lh	a5,16(s0)
   16914:	06050e63          	beqz	a0,16990 <__smakebuf_r+0x128>
   16918:	00013737          	lui	a4,0x13
   1691c:	0f070713          	addi	a4,a4,240 # 130f0 <_cleanup_r>
   16920:	04e4bc23          	sd	a4,88(s1)
   16924:	0807e793          	ori	a5,a5,128
   16928:	00f41823          	sh	a5,16(s0)
   1692c:	00a43023          	sd	a0,0(s0)
   16930:	00a43c23          	sd	a0,24(s0)
   16934:	03442023          	sw	s4,32(s0)
   16938:	08091863          	bnez	s2,169c8 <__smakebuf_r+0x160>
   1693c:	0137e7b3          	or	a5,a5,s3
   16940:	09813083          	ld	ra,152(sp)
   16944:	00f41823          	sh	a5,16(s0)
   16948:	09013403          	ld	s0,144(sp)
   1694c:	08813483          	ld	s1,136(sp)
   16950:	08013903          	ld	s2,128(sp)
   16954:	07813983          	ld	s3,120(sp)
   16958:	07013a03          	ld	s4,112(sp)
   1695c:	0a010113          	addi	sp,sp,160
   16960:	00008067          	ret
   16964:	01041783          	lh	a5,16(s0)
   16968:	0807f793          	andi	a5,a5,128
   1696c:	00000913          	li	s2,0
   16970:	04078663          	beqz	a5,169bc <__smakebuf_r+0x154>
   16974:	04000a13          	li	s4,64
   16978:	000a0593          	mv	a1,s4
   1697c:	00048513          	mv	a0,s1
   16980:	150000ef          	jal	ra,16ad0 <_malloc_r>
   16984:	01041783          	lh	a5,16(s0)
   16988:	00000993          	li	s3,0
   1698c:	f80516e3          	bnez	a0,16918 <__smakebuf_r+0xb0>
   16990:	2007f713          	andi	a4,a5,512
   16994:	f0071ae3          	bnez	a4,168a8 <__smakebuf_r+0x40>
   16998:	ffc7f793          	andi	a5,a5,-4
   1699c:	0027e793          	ori	a5,a5,2
   169a0:	07740713          	addi	a4,s0,119
   169a4:	00f41823          	sh	a5,16(s0)
   169a8:	00100793          	li	a5,1
   169ac:	00e43023          	sd	a4,0(s0)
   169b0:	00e43c23          	sd	a4,24(s0)
   169b4:	02f42023          	sw	a5,32(s0)
   169b8:	ef1ff06f          	j	168a8 <__smakebuf_r+0x40>
   169bc:	40000a13          	li	s4,1024
   169c0:	00000993          	li	s3,0
   169c4:	f41ff06f          	j	16904 <__smakebuf_r+0x9c>
   169c8:	01241583          	lh	a1,18(s0)
   169cc:	00048513          	mv	a0,s1
   169d0:	269060ef          	jal	ra,1d438 <_isatty_r>
   169d4:	00051663          	bnez	a0,169e0 <__smakebuf_r+0x178>
   169d8:	01041783          	lh	a5,16(s0)
   169dc:	f61ff06f          	j	1693c <__smakebuf_r+0xd4>
   169e0:	01045783          	lhu	a5,16(s0)
   169e4:	ffc7f793          	andi	a5,a5,-4
   169e8:	0017e793          	ori	a5,a5,1
   169ec:	0107979b          	slliw	a5,a5,0x10
   169f0:	4107d79b          	sraiw	a5,a5,0x10
   169f4:	f49ff06f          	j	1693c <__smakebuf_r+0xd4>

00000000000169f8 <__swhatbuf_r>:
   169f8:	f7010113          	addi	sp,sp,-144
   169fc:	08813023          	sd	s0,128(sp)
   16a00:	00058413          	mv	s0,a1
   16a04:	01259583          	lh	a1,18(a1)
   16a08:	06913c23          	sd	s1,120(sp)
   16a0c:	07213823          	sd	s2,112(sp)
   16a10:	08113423          	sd	ra,136(sp)
   16a14:	00060493          	mv	s1,a2
   16a18:	00068913          	mv	s2,a3
   16a1c:	0405ca63          	bltz	a1,16a70 <__swhatbuf_r+0x78>
   16a20:	00810613          	addi	a2,sp,8
   16a24:	504060ef          	jal	ra,1cf28 <_fstat_r>
   16a28:	04054463          	bltz	a0,16a70 <__swhatbuf_r+0x78>
   16a2c:	00c12783          	lw	a5,12(sp)
   16a30:	0000f737          	lui	a4,0xf
   16a34:	08813083          	ld	ra,136(sp)
   16a38:	00e7f7b3          	and	a5,a5,a4
   16a3c:	00002737          	lui	a4,0x2
   16a40:	40e787b3          	sub	a5,a5,a4
   16a44:	08013403          	ld	s0,128(sp)
   16a48:	0017b793          	seqz	a5,a5
   16a4c:	00f92023          	sw	a5,0(s2)
   16a50:	40000713          	li	a4,1024
   16a54:	00e4b023          	sd	a4,0(s1)
   16a58:	00001537          	lui	a0,0x1
   16a5c:	07813483          	ld	s1,120(sp)
   16a60:	07013903          	ld	s2,112(sp)
   16a64:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8e8>
   16a68:	09010113          	addi	sp,sp,144
   16a6c:	00008067          	ret
   16a70:	01045783          	lhu	a5,16(s0)
   16a74:	0807f793          	andi	a5,a5,128
   16a78:	02078863          	beqz	a5,16aa8 <__swhatbuf_r+0xb0>
   16a7c:	08813083          	ld	ra,136(sp)
   16a80:	08013403          	ld	s0,128(sp)
   16a84:	00000793          	li	a5,0
   16a88:	00f92023          	sw	a5,0(s2)
   16a8c:	04000713          	li	a4,64
   16a90:	00e4b023          	sd	a4,0(s1)
   16a94:	07013903          	ld	s2,112(sp)
   16a98:	07813483          	ld	s1,120(sp)
   16a9c:	00000513          	li	a0,0
   16aa0:	09010113          	addi	sp,sp,144
   16aa4:	00008067          	ret
   16aa8:	08813083          	ld	ra,136(sp)
   16aac:	08013403          	ld	s0,128(sp)
   16ab0:	00f92023          	sw	a5,0(s2)
   16ab4:	40000713          	li	a4,1024
   16ab8:	00e4b023          	sd	a4,0(s1)
   16abc:	07013903          	ld	s2,112(sp)
   16ac0:	07813483          	ld	s1,120(sp)
   16ac4:	00000513          	li	a0,0
   16ac8:	09010113          	addi	sp,sp,144
   16acc:	00008067          	ret

0000000000016ad0 <_malloc_r>:
   16ad0:	fa010113          	addi	sp,sp,-96
   16ad4:	04913423          	sd	s1,72(sp)
   16ad8:	05213023          	sd	s2,64(sp)
   16adc:	04113c23          	sd	ra,88(sp)
   16ae0:	04813823          	sd	s0,80(sp)
   16ae4:	03313c23          	sd	s3,56(sp)
   16ae8:	03413823          	sd	s4,48(sp)
   16aec:	03513423          	sd	s5,40(sp)
   16af0:	03613023          	sd	s6,32(sp)
   16af4:	01713c23          	sd	s7,24(sp)
   16af8:	01813823          	sd	s8,16(sp)
   16afc:	01913423          	sd	s9,8(sp)
   16b00:	01758493          	addi	s1,a1,23
   16b04:	02e00793          	li	a5,46
   16b08:	00050913          	mv	s2,a0
   16b0c:	0897ee63          	bltu	a5,s1,16ba8 <_malloc_r+0xd8>
   16b10:	02000793          	li	a5,32
   16b14:	24b7e063          	bltu	a5,a1,16d54 <_malloc_r+0x284>
   16b18:	0c9000ef          	jal	ra,173e0 <__malloc_lock>
   16b1c:	02000493          	li	s1,32
   16b20:	05000793          	li	a5,80
   16b24:	00400613          	li	a2,4
   16b28:	000249b7          	lui	s3,0x24
   16b2c:	51098993          	addi	s3,s3,1296 # 24510 <__malloc_av_>
   16b30:	00f987b3          	add	a5,s3,a5
   16b34:	0087b403          	ld	s0,8(a5) # 2008 <exit-0xe0e0>
   16b38:	ff078713          	addi	a4,a5,-16
   16b3c:	32e40663          	beq	s0,a4,16e68 <_malloc_r+0x398>
   16b40:	00843783          	ld	a5,8(s0)
   16b44:	01843683          	ld	a3,24(s0)
   16b48:	01043603          	ld	a2,16(s0)
   16b4c:	ffc7f793          	andi	a5,a5,-4
   16b50:	00f407b3          	add	a5,s0,a5
   16b54:	0087b703          	ld	a4,8(a5)
   16b58:	00d63c23          	sd	a3,24(a2)
   16b5c:	00c6b823          	sd	a2,16(a3)
   16b60:	00176713          	ori	a4,a4,1
   16b64:	00090513          	mv	a0,s2
   16b68:	00e7b423          	sd	a4,8(a5)
   16b6c:	079000ef          	jal	ra,173e4 <__malloc_unlock>
   16b70:	01040513          	addi	a0,s0,16
   16b74:	05813083          	ld	ra,88(sp)
   16b78:	05013403          	ld	s0,80(sp)
   16b7c:	04813483          	ld	s1,72(sp)
   16b80:	04013903          	ld	s2,64(sp)
   16b84:	03813983          	ld	s3,56(sp)
   16b88:	03013a03          	ld	s4,48(sp)
   16b8c:	02813a83          	ld	s5,40(sp)
   16b90:	02013b03          	ld	s6,32(sp)
   16b94:	01813b83          	ld	s7,24(sp)
   16b98:	01013c03          	ld	s8,16(sp)
   16b9c:	00813c83          	ld	s9,8(sp)
   16ba0:	06010113          	addi	sp,sp,96
   16ba4:	00008067          	ret
   16ba8:	800007b7          	lui	a5,0x80000
   16bac:	ff04f493          	andi	s1,s1,-16
   16bb0:	fff7c793          	not	a5,a5
   16bb4:	1a97e063          	bltu	a5,s1,16d54 <_malloc_r+0x284>
   16bb8:	18b4ee63          	bltu	s1,a1,16d54 <_malloc_r+0x284>
   16bbc:	025000ef          	jal	ra,173e0 <__malloc_lock>
   16bc0:	1f700793          	li	a5,503
   16bc4:	3e97fe63          	bgeu	a5,s1,16fc0 <_malloc_r+0x4f0>
   16bc8:	0094d793          	srli	a5,s1,0x9
   16bcc:	18078c63          	beqz	a5,16d64 <_malloc_r+0x294>
   16bd0:	00400713          	li	a4,4
   16bd4:	30f76463          	bltu	a4,a5,16edc <_malloc_r+0x40c>
   16bd8:	0064d793          	srli	a5,s1,0x6
   16bdc:	0397861b          	addiw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffdb231>
   16be0:	0016169b          	slliw	a3,a2,0x1
   16be4:	0387851b          	addiw	a0,a5,56
   16be8:	00369693          	slli	a3,a3,0x3
   16bec:	000249b7          	lui	s3,0x24
   16bf0:	51098993          	addi	s3,s3,1296 # 24510 <__malloc_av_>
   16bf4:	00d986b3          	add	a3,s3,a3
   16bf8:	0086b403          	ld	s0,8(a3)
   16bfc:	ff068693          	addi	a3,a3,-16
   16c00:	02868663          	beq	a3,s0,16c2c <_malloc_r+0x15c>
   16c04:	01f00593          	li	a1,31
   16c08:	0100006f          	j	16c18 <_malloc_r+0x148>
   16c0c:	24075863          	bgez	a4,16e5c <_malloc_r+0x38c>
   16c10:	01843403          	ld	s0,24(s0)
   16c14:	00868c63          	beq	a3,s0,16c2c <_malloc_r+0x15c>
   16c18:	00843783          	ld	a5,8(s0)
   16c1c:	ffc7f793          	andi	a5,a5,-4
   16c20:	40978733          	sub	a4,a5,s1
   16c24:	fee5d4e3          	bge	a1,a4,16c0c <_malloc_r+0x13c>
   16c28:	00050613          	mv	a2,a0
   16c2c:	0209b403          	ld	s0,32(s3)
   16c30:	00024837          	lui	a6,0x24
   16c34:	52080813          	addi	a6,a6,1312 # 24520 <__malloc_av_+0x10>
   16c38:	21040e63          	beq	s0,a6,16e54 <_malloc_r+0x384>
   16c3c:	00843783          	ld	a5,8(s0)
   16c40:	01f00693          	li	a3,31
   16c44:	ffc7f793          	andi	a5,a5,-4
   16c48:	40978733          	sub	a4,a5,s1
   16c4c:	32e6cc63          	blt	a3,a4,16f84 <_malloc_r+0x4b4>
   16c50:	0309b423          	sd	a6,40(s3)
   16c54:	0309b023          	sd	a6,32(s3)
   16c58:	30075663          	bgez	a4,16f64 <_malloc_r+0x494>
   16c5c:	1ff00713          	li	a4,511
   16c60:	0089b503          	ld	a0,8(s3)
   16c64:	20f76a63          	bltu	a4,a5,16e78 <_malloc_r+0x3a8>
   16c68:	0037d793          	srli	a5,a5,0x3
   16c6c:	0017871b          	addiw	a4,a5,1
   16c70:	0017171b          	slliw	a4,a4,0x1
   16c74:	00371713          	slli	a4,a4,0x3
   16c78:	00e98733          	add	a4,s3,a4
   16c7c:	00073583          	ld	a1,0(a4) # 2000 <exit-0xe0e8>
   16c80:	4027d79b          	sraiw	a5,a5,0x2
   16c84:	00100693          	li	a3,1
   16c88:	00f697b3          	sll	a5,a3,a5
   16c8c:	00f56533          	or	a0,a0,a5
   16c90:	ff070793          	addi	a5,a4,-16
   16c94:	00f43c23          	sd	a5,24(s0)
   16c98:	00b43823          	sd	a1,16(s0)
   16c9c:	00a9b423          	sd	a0,8(s3)
   16ca0:	00873023          	sd	s0,0(a4)
   16ca4:	0085bc23          	sd	s0,24(a1)
   16ca8:	4026579b          	sraiw	a5,a2,0x2
   16cac:	00100593          	li	a1,1
   16cb0:	00f595b3          	sll	a1,a1,a5
   16cb4:	0cb56063          	bltu	a0,a1,16d74 <_malloc_r+0x2a4>
   16cb8:	00a5f7b3          	and	a5,a1,a0
   16cbc:	02079463          	bnez	a5,16ce4 <_malloc_r+0x214>
   16cc0:	00159593          	slli	a1,a1,0x1
   16cc4:	ffc67613          	andi	a2,a2,-4
   16cc8:	00a5f7b3          	and	a5,a1,a0
   16ccc:	0046061b          	addiw	a2,a2,4
   16cd0:	00079a63          	bnez	a5,16ce4 <_malloc_r+0x214>
   16cd4:	00159593          	slli	a1,a1,0x1
   16cd8:	00a5f7b3          	and	a5,a1,a0
   16cdc:	0046061b          	addiw	a2,a2,4
   16ce0:	fe078ae3          	beqz	a5,16cd4 <_malloc_r+0x204>
   16ce4:	01f00893          	li	a7,31
   16ce8:	0016031b          	addiw	t1,a2,1
   16cec:	0013131b          	slliw	t1,t1,0x1
   16cf0:	00331313          	slli	t1,t1,0x3
   16cf4:	ff030313          	addi	t1,t1,-16
   16cf8:	00698333          	add	t1,s3,t1
   16cfc:	00030513          	mv	a0,t1
   16d00:	01853783          	ld	a5,24(a0)
   16d04:	00060e13          	mv	t3,a2
   16d08:	1ef50e63          	beq	a0,a5,16f04 <_malloc_r+0x434>
   16d0c:	0087b703          	ld	a4,8(a5)
   16d10:	00078413          	mv	s0,a5
   16d14:	0187b783          	ld	a5,24(a5)
   16d18:	ffc77713          	andi	a4,a4,-4
   16d1c:	409706b3          	sub	a3,a4,s1
   16d20:	1ed8ce63          	blt	a7,a3,16f1c <_malloc_r+0x44c>
   16d24:	fe06c2e3          	bltz	a3,16d08 <_malloc_r+0x238>
   16d28:	00e40733          	add	a4,s0,a4
   16d2c:	00873683          	ld	a3,8(a4)
   16d30:	01043603          	ld	a2,16(s0)
   16d34:	00090513          	mv	a0,s2
   16d38:	0016e693          	ori	a3,a3,1
   16d3c:	00d73423          	sd	a3,8(a4)
   16d40:	00f63c23          	sd	a5,24(a2)
   16d44:	00c7b823          	sd	a2,16(a5)
   16d48:	69c000ef          	jal	ra,173e4 <__malloc_unlock>
   16d4c:	01040513          	addi	a0,s0,16
   16d50:	e25ff06f          	j	16b74 <_malloc_r+0xa4>
   16d54:	00c00793          	li	a5,12
   16d58:	00f92023          	sw	a5,0(s2)
   16d5c:	00000513          	li	a0,0
   16d60:	e15ff06f          	j	16b74 <_malloc_r+0xa4>
   16d64:	40000693          	li	a3,1024
   16d68:	04000613          	li	a2,64
   16d6c:	03f00513          	li	a0,63
   16d70:	e7dff06f          	j	16bec <_malloc_r+0x11c>
   16d74:	0109b403          	ld	s0,16(s3)
   16d78:	00843783          	ld	a5,8(s0)
   16d7c:	ffc7fa93          	andi	s5,a5,-4
   16d80:	009ae863          	bltu	s5,s1,16d90 <_malloc_r+0x2c0>
   16d84:	409a8733          	sub	a4,s5,s1
   16d88:	01f00793          	li	a5,31
   16d8c:	0ae7c063          	blt	a5,a4,16e2c <_malloc_r+0x35c>
   16d90:	7881ba03          	ld	s4,1928(gp) # 24d90 <__malloc_top_pad>
   16d94:	7601b703          	ld	a4,1888(gp) # 24d68 <__malloc_sbrk_base>
   16d98:	fff00793          	li	a5,-1
   16d9c:	01540c33          	add	s8,s0,s5
   16da0:	01448a33          	add	s4,s1,s4
   16da4:	3cf70863          	beq	a4,a5,17174 <_malloc_r+0x6a4>
   16da8:	000017b7          	lui	a5,0x1
   16dac:	01f78793          	addi	a5,a5,31 # 101f <exit-0xf0c9>
   16db0:	00fa0a33          	add	s4,s4,a5
   16db4:	fffff7b7          	lui	a5,0xfffff
   16db8:	00fa7a33          	and	s4,s4,a5
   16dbc:	000a0593          	mv	a1,s4
   16dc0:	00090513          	mv	a0,s2
   16dc4:	161010ef          	jal	ra,18724 <_sbrk_r>
   16dc8:	fff00793          	li	a5,-1
   16dcc:	00050b13          	mv	s6,a0
   16dd0:	22f50263          	beq	a0,a5,16ff4 <_malloc_r+0x524>
   16dd4:	21856e63          	bltu	a0,s8,16ff0 <_malloc_r+0x520>
   16dd8:	00025bb7          	lui	s7,0x25
   16ddc:	de0b8b93          	addi	s7,s7,-544 # 24de0 <__malloc_current_mallinfo>
   16de0:	000ba783          	lw	a5,0(s7)
   16de4:	0147873b          	addw	a4,a5,s4
   16de8:	00eba023          	sw	a4,0(s7)
   16dec:	00070693          	mv	a3,a4
   16df0:	2aac1663          	bne	s8,a0,1709c <_malloc_r+0x5cc>
   16df4:	03451793          	slli	a5,a0,0x34
   16df8:	2a079263          	bnez	a5,1709c <_malloc_r+0x5cc>
   16dfc:	0109bb03          	ld	s6,16(s3)
   16e00:	014a87b3          	add	a5,s5,s4
   16e04:	0017e793          	ori	a5,a5,1
   16e08:	00fb3423          	sd	a5,8(s6)
   16e0c:	7801b603          	ld	a2,1920(gp) # 24d88 <__malloc_max_sbrked_mem>
   16e10:	00e67463          	bgeu	a2,a4,16e18 <_malloc_r+0x348>
   16e14:	78e1b023          	sd	a4,1920(gp) # 24d88 <__malloc_max_sbrked_mem>
   16e18:	7781b603          	ld	a2,1912(gp) # 24d80 <__malloc_max_total_mem>
   16e1c:	00e67463          	bgeu	a2,a4,16e24 <_malloc_r+0x354>
   16e20:	76e1bc23          	sd	a4,1912(gp) # 24d80 <__malloc_max_total_mem>
   16e24:	000b0413          	mv	s0,s6
   16e28:	1d40006f          	j	16ffc <_malloc_r+0x52c>
   16e2c:	0014e793          	ori	a5,s1,1
   16e30:	00f43423          	sd	a5,8(s0)
   16e34:	009404b3          	add	s1,s0,s1
   16e38:	0099b823          	sd	s1,16(s3)
   16e3c:	00176713          	ori	a4,a4,1
   16e40:	00090513          	mv	a0,s2
   16e44:	00e4b423          	sd	a4,8(s1)
   16e48:	59c000ef          	jal	ra,173e4 <__malloc_unlock>
   16e4c:	01040513          	addi	a0,s0,16
   16e50:	d25ff06f          	j	16b74 <_malloc_r+0xa4>
   16e54:	0089b503          	ld	a0,8(s3)
   16e58:	e51ff06f          	j	16ca8 <_malloc_r+0x1d8>
   16e5c:	01843683          	ld	a3,24(s0)
   16e60:	01043603          	ld	a2,16(s0)
   16e64:	cedff06f          	j	16b50 <_malloc_r+0x80>
   16e68:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffda210>
   16e6c:	0026061b          	addiw	a2,a2,2
   16e70:	da878ee3          	beq	a5,s0,16c2c <_malloc_r+0x15c>
   16e74:	ccdff06f          	j	16b40 <_malloc_r+0x70>
   16e78:	0097d713          	srli	a4,a5,0x9
   16e7c:	00400693          	li	a3,4
   16e80:	14e6fc63          	bgeu	a3,a4,16fd8 <_malloc_r+0x508>
   16e84:	01400693          	li	a3,20
   16e88:	32e6ec63          	bltu	a3,a4,171c0 <_malloc_r+0x6f0>
   16e8c:	05c7059b          	addiw	a1,a4,92
   16e90:	0015959b          	slliw	a1,a1,0x1
   16e94:	05b7069b          	addiw	a3,a4,91
   16e98:	00359593          	slli	a1,a1,0x3
   16e9c:	00b985b3          	add	a1,s3,a1
   16ea0:	0005b703          	ld	a4,0(a1)
   16ea4:	ff058593          	addi	a1,a1,-16
   16ea8:	00e59863          	bne	a1,a4,16eb8 <_malloc_r+0x3e8>
   16eac:	2d00006f          	j	1717c <_malloc_r+0x6ac>
   16eb0:	01073703          	ld	a4,16(a4)
   16eb4:	00e58863          	beq	a1,a4,16ec4 <_malloc_r+0x3f4>
   16eb8:	00873683          	ld	a3,8(a4)
   16ebc:	ffc6f693          	andi	a3,a3,-4
   16ec0:	fed7e8e3          	bltu	a5,a3,16eb0 <_malloc_r+0x3e0>
   16ec4:	01873583          	ld	a1,24(a4)
   16ec8:	00b43c23          	sd	a1,24(s0)
   16ecc:	00e43823          	sd	a4,16(s0)
   16ed0:	0085b823          	sd	s0,16(a1)
   16ed4:	00873c23          	sd	s0,24(a4)
   16ed8:	dd1ff06f          	j	16ca8 <_malloc_r+0x1d8>
   16edc:	01400713          	li	a4,20
   16ee0:	14f77063          	bgeu	a4,a5,17020 <_malloc_r+0x550>
   16ee4:	05400713          	li	a4,84
   16ee8:	2ef76c63          	bltu	a4,a5,171e0 <_malloc_r+0x710>
   16eec:	00c4d793          	srli	a5,s1,0xc
   16ef0:	06f7861b          	addiw	a2,a5,111
   16ef4:	0016169b          	slliw	a3,a2,0x1
   16ef8:	06e7851b          	addiw	a0,a5,110
   16efc:	00369693          	slli	a3,a3,0x3
   16f00:	cedff06f          	j	16bec <_malloc_r+0x11c>
   16f04:	001e0e1b          	addiw	t3,t3,1
   16f08:	003e7793          	andi	a5,t3,3
   16f0c:	01050513          	addi	a0,a0,16
   16f10:	12078863          	beqz	a5,17040 <_malloc_r+0x570>
   16f14:	01853783          	ld	a5,24(a0)
   16f18:	df1ff06f          	j	16d08 <_malloc_r+0x238>
   16f1c:	01043603          	ld	a2,16(s0)
   16f20:	0014e593          	ori	a1,s1,1
   16f24:	00b43423          	sd	a1,8(s0)
   16f28:	00f63c23          	sd	a5,24(a2)
   16f2c:	00c7b823          	sd	a2,16(a5)
   16f30:	009404b3          	add	s1,s0,s1
   16f34:	0299b423          	sd	s1,40(s3)
   16f38:	0299b023          	sd	s1,32(s3)
   16f3c:	0016e793          	ori	a5,a3,1
   16f40:	0104bc23          	sd	a6,24(s1)
   16f44:	0104b823          	sd	a6,16(s1)
   16f48:	00f4b423          	sd	a5,8(s1)
   16f4c:	00e40733          	add	a4,s0,a4
   16f50:	00090513          	mv	a0,s2
   16f54:	00d73023          	sd	a3,0(a4)
   16f58:	48c000ef          	jal	ra,173e4 <__malloc_unlock>
   16f5c:	01040513          	addi	a0,s0,16
   16f60:	c15ff06f          	j	16b74 <_malloc_r+0xa4>
   16f64:	00f407b3          	add	a5,s0,a5
   16f68:	0087b703          	ld	a4,8(a5)
   16f6c:	00090513          	mv	a0,s2
   16f70:	00176713          	ori	a4,a4,1
   16f74:	00e7b423          	sd	a4,8(a5)
   16f78:	46c000ef          	jal	ra,173e4 <__malloc_unlock>
   16f7c:	01040513          	addi	a0,s0,16
   16f80:	bf5ff06f          	j	16b74 <_malloc_r+0xa4>
   16f84:	0014e693          	ori	a3,s1,1
   16f88:	00d43423          	sd	a3,8(s0)
   16f8c:	009404b3          	add	s1,s0,s1
   16f90:	0299b423          	sd	s1,40(s3)
   16f94:	0299b023          	sd	s1,32(s3)
   16f98:	00176693          	ori	a3,a4,1
   16f9c:	0104bc23          	sd	a6,24(s1)
   16fa0:	0104b823          	sd	a6,16(s1)
   16fa4:	00d4b423          	sd	a3,8(s1)
   16fa8:	00f407b3          	add	a5,s0,a5
   16fac:	00090513          	mv	a0,s2
   16fb0:	00e7b023          	sd	a4,0(a5)
   16fb4:	430000ef          	jal	ra,173e4 <__malloc_unlock>
   16fb8:	01040513          	addi	a0,s0,16
   16fbc:	bb9ff06f          	j	16b74 <_malloc_r+0xa4>
   16fc0:	0034d613          	srli	a2,s1,0x3
   16fc4:	0016079b          	addiw	a5,a2,1
   16fc8:	0017979b          	slliw	a5,a5,0x1
   16fcc:	0006061b          	sext.w	a2,a2
   16fd0:	00379793          	slli	a5,a5,0x3
   16fd4:	b55ff06f          	j	16b28 <_malloc_r+0x58>
   16fd8:	0067d713          	srli	a4,a5,0x6
   16fdc:	0397059b          	addiw	a1,a4,57
   16fe0:	0015959b          	slliw	a1,a1,0x1
   16fe4:	0387069b          	addiw	a3,a4,56
   16fe8:	00359593          	slli	a1,a1,0x3
   16fec:	eb1ff06f          	j	16e9c <_malloc_r+0x3cc>
   16ff0:	09340c63          	beq	s0,s3,17088 <_malloc_r+0x5b8>
   16ff4:	0109b403          	ld	s0,16(s3)
   16ff8:	00843783          	ld	a5,8(s0)
   16ffc:	ffc7f793          	andi	a5,a5,-4
   17000:	40978733          	sub	a4,a5,s1
   17004:	0097e663          	bltu	a5,s1,17010 <_malloc_r+0x540>
   17008:	01f00793          	li	a5,31
   1700c:	e2e7c0e3          	blt	a5,a4,16e2c <_malloc_r+0x35c>
   17010:	00090513          	mv	a0,s2
   17014:	3d0000ef          	jal	ra,173e4 <__malloc_unlock>
   17018:	00000513          	li	a0,0
   1701c:	b59ff06f          	j	16b74 <_malloc_r+0xa4>
   17020:	05c7861b          	addiw	a2,a5,92
   17024:	0016169b          	slliw	a3,a2,0x1
   17028:	05b7851b          	addiw	a0,a5,91
   1702c:	00369693          	slli	a3,a3,0x3
   17030:	bbdff06f          	j	16bec <_malloc_r+0x11c>
   17034:	01033783          	ld	a5,16(t1)
   17038:	fff6061b          	addiw	a2,a2,-1
   1703c:	26679463          	bne	a5,t1,172a4 <_malloc_r+0x7d4>
   17040:	00367793          	andi	a5,a2,3
   17044:	ff030313          	addi	t1,t1,-16
   17048:	fe0796e3          	bnez	a5,17034 <_malloc_r+0x564>
   1704c:	0089b703          	ld	a4,8(s3)
   17050:	fff5c793          	not	a5,a1
   17054:	00e7f7b3          	and	a5,a5,a4
   17058:	00f9b423          	sd	a5,8(s3)
   1705c:	00159593          	slli	a1,a1,0x1
   17060:	d0b7eae3          	bltu	a5,a1,16d74 <_malloc_r+0x2a4>
   17064:	d00588e3          	beqz	a1,16d74 <_malloc_r+0x2a4>
   17068:	00f5f733          	and	a4,a1,a5
   1706c:	00071a63          	bnez	a4,17080 <_malloc_r+0x5b0>
   17070:	00159593          	slli	a1,a1,0x1
   17074:	00f5f733          	and	a4,a1,a5
   17078:	004e0e1b          	addiw	t3,t3,4
   1707c:	fe070ae3          	beqz	a4,17070 <_malloc_r+0x5a0>
   17080:	000e0613          	mv	a2,t3
   17084:	c65ff06f          	j	16ce8 <_malloc_r+0x218>
   17088:	00025bb7          	lui	s7,0x25
   1708c:	de0b8b93          	addi	s7,s7,-544 # 24de0 <__malloc_current_mallinfo>
   17090:	000ba783          	lw	a5,0(s7)
   17094:	014786bb          	addw	a3,a5,s4
   17098:	00dba023          	sw	a3,0(s7)
   1709c:	7601b703          	ld	a4,1888(gp) # 24d68 <__malloc_sbrk_base>
   170a0:	fff00793          	li	a5,-1
   170a4:	14f70e63          	beq	a4,a5,17200 <_malloc_r+0x730>
   170a8:	418b07b3          	sub	a5,s6,s8
   170ac:	00d787bb          	addw	a5,a5,a3
   170b0:	00fba023          	sw	a5,0(s7)
   170b4:	00fb7c93          	andi	s9,s6,15
   170b8:	0c0c8e63          	beqz	s9,17194 <_malloc_r+0x6c4>
   170bc:	00001737          	lui	a4,0x1
   170c0:	419b0b33          	sub	s6,s6,s9
   170c4:	01070c13          	addi	s8,a4,16 # 1010 <exit-0xf0d8>
   170c8:	010b0b13          	addi	s6,s6,16
   170cc:	419c0c33          	sub	s8,s8,s9
   170d0:	014b0a33          	add	s4,s6,s4
   170d4:	fff70713          	addi	a4,a4,-1
   170d8:	414c0c33          	sub	s8,s8,s4
   170dc:	00ec7c33          	and	s8,s8,a4
   170e0:	000c0593          	mv	a1,s8
   170e4:	00090513          	mv	a0,s2
   170e8:	63c010ef          	jal	ra,18724 <_sbrk_r>
   170ec:	fff00793          	li	a5,-1
   170f0:	16f50263          	beq	a0,a5,17254 <_malloc_r+0x784>
   170f4:	41650533          	sub	a0,a0,s6
   170f8:	000c069b          	sext.w	a3,s8
   170fc:	01850a33          	add	s4,a0,s8
   17100:	000ba703          	lw	a4,0(s7)
   17104:	0169b823          	sd	s6,16(s3)
   17108:	001a6793          	ori	a5,s4,1
   1710c:	00d7073b          	addw	a4,a4,a3
   17110:	00eba023          	sw	a4,0(s7)
   17114:	00fb3423          	sd	a5,8(s6)
   17118:	cf340ae3          	beq	s0,s3,16e0c <_malloc_r+0x33c>
   1711c:	01f00613          	li	a2,31
   17120:	0f567463          	bgeu	a2,s5,17208 <_malloc_r+0x738>
   17124:	00843683          	ld	a3,8(s0)
   17128:	fe8a8793          	addi	a5,s5,-24
   1712c:	ff07f793          	andi	a5,a5,-16
   17130:	0016f693          	andi	a3,a3,1
   17134:	00f6e6b3          	or	a3,a3,a5
   17138:	00d43423          	sd	a3,8(s0)
   1713c:	00900593          	li	a1,9
   17140:	00f406b3          	add	a3,s0,a5
   17144:	00b6b423          	sd	a1,8(a3)
   17148:	00b6b823          	sd	a1,16(a3)
   1714c:	00f66663          	bltu	a2,a5,17158 <_malloc_r+0x688>
   17150:	008b3783          	ld	a5,8(s6)
   17154:	cb9ff06f          	j	16e0c <_malloc_r+0x33c>
   17158:	01040593          	addi	a1,s0,16
   1715c:	00090513          	mv	a0,s2
   17160:	cb0fc0ef          	jal	ra,13610 <_free_r>
   17164:	0109bb03          	ld	s6,16(s3)
   17168:	000ba703          	lw	a4,0(s7)
   1716c:	008b3783          	ld	a5,8(s6)
   17170:	c9dff06f          	j	16e0c <_malloc_r+0x33c>
   17174:	020a0a13          	addi	s4,s4,32
   17178:	c45ff06f          	j	16dbc <_malloc_r+0x2ec>
   1717c:	4026d69b          	sraiw	a3,a3,0x2
   17180:	00100793          	li	a5,1
   17184:	00d797b3          	sll	a5,a5,a3
   17188:	00f56533          	or	a0,a0,a5
   1718c:	00a9b423          	sd	a0,8(s3)
   17190:	d39ff06f          	j	16ec8 <_malloc_r+0x3f8>
   17194:	014b0c33          	add	s8,s6,s4
   17198:	41800c33          	neg	s8,s8
   1719c:	034c1c13          	slli	s8,s8,0x34
   171a0:	034c5c13          	srli	s8,s8,0x34
   171a4:	000c0593          	mv	a1,s8
   171a8:	00090513          	mv	a0,s2
   171ac:	578010ef          	jal	ra,18724 <_sbrk_r>
   171b0:	fff00793          	li	a5,-1
   171b4:	00000693          	li	a3,0
   171b8:	f2f51ee3          	bne	a0,a5,170f4 <_malloc_r+0x624>
   171bc:	f45ff06f          	j	17100 <_malloc_r+0x630>
   171c0:	05400693          	li	a3,84
   171c4:	04e6e863          	bltu	a3,a4,17214 <_malloc_r+0x744>
   171c8:	00c7d713          	srli	a4,a5,0xc
   171cc:	06f7059b          	addiw	a1,a4,111
   171d0:	0015959b          	slliw	a1,a1,0x1
   171d4:	06e7069b          	addiw	a3,a4,110
   171d8:	00359593          	slli	a1,a1,0x3
   171dc:	cc1ff06f          	j	16e9c <_malloc_r+0x3cc>
   171e0:	15400713          	li	a4,340
   171e4:	04f76863          	bltu	a4,a5,17234 <_malloc_r+0x764>
   171e8:	00f4d793          	srli	a5,s1,0xf
   171ec:	0787861b          	addiw	a2,a5,120
   171f0:	0016169b          	slliw	a3,a2,0x1
   171f4:	0777851b          	addiw	a0,a5,119
   171f8:	00369693          	slli	a3,a3,0x3
   171fc:	9f1ff06f          	j	16bec <_malloc_r+0x11c>
   17200:	7761b023          	sd	s6,1888(gp) # 24d68 <__malloc_sbrk_base>
   17204:	eb1ff06f          	j	170b4 <_malloc_r+0x5e4>
   17208:	00100793          	li	a5,1
   1720c:	00fb3423          	sd	a5,8(s6)
   17210:	e01ff06f          	j	17010 <_malloc_r+0x540>
   17214:	15400693          	li	a3,340
   17218:	04e6e863          	bltu	a3,a4,17268 <_malloc_r+0x798>
   1721c:	00f7d713          	srli	a4,a5,0xf
   17220:	0787059b          	addiw	a1,a4,120
   17224:	0015959b          	slliw	a1,a1,0x1
   17228:	0777069b          	addiw	a3,a4,119
   1722c:	00359593          	slli	a1,a1,0x3
   17230:	c6dff06f          	j	16e9c <_malloc_r+0x3cc>
   17234:	55400713          	li	a4,1364
   17238:	04f76863          	bltu	a4,a5,17288 <_malloc_r+0x7b8>
   1723c:	0124d793          	srli	a5,s1,0x12
   17240:	07d7861b          	addiw	a2,a5,125
   17244:	0016169b          	slliw	a3,a2,0x1
   17248:	07c7851b          	addiw	a0,a5,124
   1724c:	00369693          	slli	a3,a3,0x3
   17250:	99dff06f          	j	16bec <_malloc_r+0x11c>
   17254:	ff0c8c93          	addi	s9,s9,-16
   17258:	019a0a33          	add	s4,s4,s9
   1725c:	416a0a33          	sub	s4,s4,s6
   17260:	00000693          	li	a3,0
   17264:	e9dff06f          	j	17100 <_malloc_r+0x630>
   17268:	55400693          	li	a3,1364
   1726c:	02e6e663          	bltu	a3,a4,17298 <_malloc_r+0x7c8>
   17270:	0127d713          	srli	a4,a5,0x12
   17274:	07d7059b          	addiw	a1,a4,125
   17278:	0015959b          	slliw	a1,a1,0x1
   1727c:	07c7069b          	addiw	a3,a4,124
   17280:	00359593          	slli	a1,a1,0x3
   17284:	c19ff06f          	j	16e9c <_malloc_r+0x3cc>
   17288:	7f000693          	li	a3,2032
   1728c:	07f00613          	li	a2,127
   17290:	07e00513          	li	a0,126
   17294:	959ff06f          	j	16bec <_malloc_r+0x11c>
   17298:	7f000593          	li	a1,2032
   1729c:	07e00693          	li	a3,126
   172a0:	bfdff06f          	j	16e9c <_malloc_r+0x3cc>
   172a4:	0089b783          	ld	a5,8(s3)
   172a8:	db5ff06f          	j	1705c <_malloc_r+0x58c>

00000000000172ac <_mbtowc_r>:
   172ac:	e481b783          	ld	a5,-440(gp) # 24450 <__global_locale+0xe8>
   172b0:	00078067          	jr	a5

00000000000172b4 <__ascii_mbtowc>:
   172b4:	02058063          	beqz	a1,172d4 <__ascii_mbtowc+0x20>
   172b8:	04060263          	beqz	a2,172fc <__ascii_mbtowc+0x48>
   172bc:	04068863          	beqz	a3,1730c <__ascii_mbtowc+0x58>
   172c0:	00064783          	lbu	a5,0(a2)
   172c4:	00f5a023          	sw	a5,0(a1)
   172c8:	00064503          	lbu	a0,0(a2)
   172cc:	00a03533          	snez	a0,a0
   172d0:	00008067          	ret
   172d4:	ff010113          	addi	sp,sp,-16
   172d8:	00c10593          	addi	a1,sp,12
   172dc:	02060463          	beqz	a2,17304 <__ascii_mbtowc+0x50>
   172e0:	02068a63          	beqz	a3,17314 <__ascii_mbtowc+0x60>
   172e4:	00064783          	lbu	a5,0(a2)
   172e8:	00f5a023          	sw	a5,0(a1)
   172ec:	00064503          	lbu	a0,0(a2)
   172f0:	00a03533          	snez	a0,a0
   172f4:	01010113          	addi	sp,sp,16
   172f8:	00008067          	ret
   172fc:	00000513          	li	a0,0
   17300:	00008067          	ret
   17304:	00000513          	li	a0,0
   17308:	fedff06f          	j	172f4 <__ascii_mbtowc+0x40>
   1730c:	ffe00513          	li	a0,-2
   17310:	00008067          	ret
   17314:	ffe00513          	li	a0,-2
   17318:	fddff06f          	j	172f4 <__ascii_mbtowc+0x40>

000000000001731c <memchr>:
   1731c:	00757793          	andi	a5,a0,7
   17320:	0ff5f693          	zext.b	a3,a1
   17324:	02078e63          	beqz	a5,17360 <memchr+0x44>
   17328:	fff60793          	addi	a5,a2,-1
   1732c:	02060663          	beqz	a2,17358 <memchr+0x3c>
   17330:	fff00613          	li	a2,-1
   17334:	0180006f          	j	1734c <memchr+0x30>
   17338:	00150513          	addi	a0,a0,1
   1733c:	00757713          	andi	a4,a0,7
   17340:	02070263          	beqz	a4,17364 <memchr+0x48>
   17344:	fff78793          	addi	a5,a5,-1
   17348:	00c78863          	beq	a5,a2,17358 <memchr+0x3c>
   1734c:	00054703          	lbu	a4,0(a0)
   17350:	fed714e3          	bne	a4,a3,17338 <memchr+0x1c>
   17354:	00008067          	ret
   17358:	00000513          	li	a0,0
   1735c:	00008067          	ret
   17360:	00060793          	mv	a5,a2
   17364:	00700713          	li	a4,7
   17368:	04f77c63          	bgeu	a4,a5,173c0 <memchr+0xa4>
   1736c:	0ff5f593          	zext.b	a1,a1
   17370:	00859713          	slli	a4,a1,0x8
   17374:	00b70733          	add	a4,a4,a1
   17378:	01071593          	slli	a1,a4,0x10
   1737c:	00e585b3          	add	a1,a1,a4
   17380:	7181b883          	ld	a7,1816(gp) # 24d20 <__SDATA_BEGIN__>
   17384:	7201b803          	ld	a6,1824(gp) # 24d28 <__SDATA_BEGIN__+0x8>
   17388:	02059713          	slli	a4,a1,0x20
   1738c:	00e585b3          	add	a1,a1,a4
   17390:	00700313          	li	t1,7
   17394:	0100006f          	j	173a4 <memchr+0x88>
   17398:	ff878793          	addi	a5,a5,-8
   1739c:	00850513          	addi	a0,a0,8
   173a0:	02f37063          	bgeu	t1,a5,173c0 <memchr+0xa4>
   173a4:	00053703          	ld	a4,0(a0)
   173a8:	00e5c733          	xor	a4,a1,a4
   173ac:	01170633          	add	a2,a4,a7
   173b0:	fff74713          	not	a4,a4
   173b4:	00e67733          	and	a4,a2,a4
   173b8:	01077733          	and	a4,a4,a6
   173bc:	fc070ee3          	beqz	a4,17398 <memchr+0x7c>
   173c0:	00f50733          	add	a4,a0,a5
   173c4:	00079863          	bnez	a5,173d4 <memchr+0xb8>
   173c8:	f91ff06f          	j	17358 <memchr+0x3c>
   173cc:	00150513          	addi	a0,a0,1
   173d0:	f8a704e3          	beq	a4,a0,17358 <memchr+0x3c>
   173d4:	00054783          	lbu	a5,0(a0)
   173d8:	fed79ae3          	bne	a5,a3,173cc <memchr+0xb0>
   173dc:	00008067          	ret

00000000000173e0 <__malloc_lock>:
   173e0:	00008067          	ret

00000000000173e4 <__malloc_unlock>:
   173e4:	00008067          	ret

00000000000173e8 <_Balloc>:
   173e8:	07853783          	ld	a5,120(a0)
   173ec:	fe010113          	addi	sp,sp,-32
   173f0:	00813823          	sd	s0,16(sp)
   173f4:	00913423          	sd	s1,8(sp)
   173f8:	00113c23          	sd	ra,24(sp)
   173fc:	00050493          	mv	s1,a0
   17400:	00058413          	mv	s0,a1
   17404:	02078a63          	beqz	a5,17438 <_Balloc+0x50>
   17408:	00341713          	slli	a4,s0,0x3
   1740c:	00e787b3          	add	a5,a5,a4
   17410:	0007b503          	ld	a0,0(a5)
   17414:	04050263          	beqz	a0,17458 <_Balloc+0x70>
   17418:	00053703          	ld	a4,0(a0)
   1741c:	00e7b023          	sd	a4,0(a5)
   17420:	00053823          	sd	zero,16(a0)
   17424:	01813083          	ld	ra,24(sp)
   17428:	01013403          	ld	s0,16(sp)
   1742c:	00813483          	ld	s1,8(sp)
   17430:	02010113          	addi	sp,sp,32
   17434:	00008067          	ret
   17438:	04100613          	li	a2,65
   1743c:	00800593          	li	a1,8
   17440:	588050ef          	jal	ra,1c9c8 <_calloc_r>
   17444:	06a4bc23          	sd	a0,120(s1)
   17448:	00050793          	mv	a5,a0
   1744c:	fa051ee3          	bnez	a0,17408 <_Balloc+0x20>
   17450:	00000513          	li	a0,0
   17454:	fd1ff06f          	j	17424 <_Balloc+0x3c>
   17458:	00100793          	li	a5,1
   1745c:	008797bb          	sllw	a5,a5,s0
   17460:	0007861b          	sext.w	a2,a5
   17464:	00760613          	addi	a2,a2,7
   17468:	02041413          	slli	s0,s0,0x20
   1746c:	02079793          	slli	a5,a5,0x20
   17470:	02045413          	srli	s0,s0,0x20
   17474:	00261613          	slli	a2,a2,0x2
   17478:	00100593          	li	a1,1
   1747c:	00048513          	mv	a0,s1
   17480:	00f46433          	or	s0,s0,a5
   17484:	544050ef          	jal	ra,1c9c8 <_calloc_r>
   17488:	fc0504e3          	beqz	a0,17450 <_Balloc+0x68>
   1748c:	00853423          	sd	s0,8(a0)
   17490:	f91ff06f          	j	17420 <_Balloc+0x38>

0000000000017494 <_Bfree>:
   17494:	02058063          	beqz	a1,174b4 <_Bfree+0x20>
   17498:	0085a703          	lw	a4,8(a1)
   1749c:	07853783          	ld	a5,120(a0)
   174a0:	00371713          	slli	a4,a4,0x3
   174a4:	00e787b3          	add	a5,a5,a4
   174a8:	0007b703          	ld	a4,0(a5)
   174ac:	00e5b023          	sd	a4,0(a1)
   174b0:	00b7b023          	sd	a1,0(a5)
   174b4:	00008067          	ret

00000000000174b8 <__multadd>:
   174b8:	fb010113          	addi	sp,sp,-80
   174bc:	03213823          	sd	s2,48(sp)
   174c0:	0145a903          	lw	s2,20(a1)
   174c4:	01813023          	sd	s8,0(sp)
   174c8:	00010c37          	lui	s8,0x10
   174cc:	04813023          	sd	s0,64(sp)
   174d0:	02913c23          	sd	s1,56(sp)
   174d4:	03313423          	sd	s3,40(sp)
   174d8:	03413023          	sd	s4,32(sp)
   174dc:	01513c23          	sd	s5,24(sp)
   174e0:	01613823          	sd	s6,16(sp)
   174e4:	04113423          	sd	ra,72(sp)
   174e8:	01713423          	sd	s7,8(sp)
   174ec:	00058993          	mv	s3,a1
   174f0:	00050a13          	mv	s4,a0
   174f4:	00068413          	mv	s0,a3
   174f8:	01858493          	addi	s1,a1,24
   174fc:	00060a93          	mv	s5,a2
   17500:	00000b13          	li	s6,0
   17504:	fffc0c13          	addi	s8,s8,-1 # ffff <exit-0xe9>
   17508:	0004ab83          	lw	s7,0(s1)
   1750c:	000a8593          	mv	a1,s5
   17510:	00448493          	addi	s1,s1,4
   17514:	018bf533          	and	a0,s7,s8
   17518:	6540a0ef          	jal	ra,21b6c <__muldi3>
   1751c:	0085043b          	addw	s0,a0,s0
   17520:	000a8593          	mv	a1,s5
   17524:	010bd51b          	srliw	a0,s7,0x10
   17528:	6440a0ef          	jal	ra,21b6c <__muldi3>
   1752c:	0104569b          	srliw	a3,s0,0x10
   17530:	00a686bb          	addw	a3,a3,a0
   17534:	008c7433          	and	s0,s8,s0
   17538:	0106979b          	slliw	a5,a3,0x10
   1753c:	008787bb          	addw	a5,a5,s0
   17540:	fef4ae23          	sw	a5,-4(s1)
   17544:	001b0b1b          	addiw	s6,s6,1
   17548:	0106db9b          	srliw	s7,a3,0x10
   1754c:	0106d41b          	srliw	s0,a3,0x10
   17550:	fb2b4ce3          	blt	s6,s2,17508 <__multadd+0x50>
   17554:	02040263          	beqz	s0,17578 <__multadd+0xc0>
   17558:	00c9a783          	lw	a5,12(s3)
   1755c:	04f95863          	bge	s2,a5,175ac <__multadd+0xf4>
   17560:	00490793          	addi	a5,s2,4
   17564:	00279793          	slli	a5,a5,0x2
   17568:	00f987b3          	add	a5,s3,a5
   1756c:	0177a423          	sw	s7,8(a5)
   17570:	0019091b          	addiw	s2,s2,1
   17574:	0129aa23          	sw	s2,20(s3)
   17578:	04813083          	ld	ra,72(sp)
   1757c:	04013403          	ld	s0,64(sp)
   17580:	03813483          	ld	s1,56(sp)
   17584:	03013903          	ld	s2,48(sp)
   17588:	02013a03          	ld	s4,32(sp)
   1758c:	01813a83          	ld	s5,24(sp)
   17590:	01013b03          	ld	s6,16(sp)
   17594:	00813b83          	ld	s7,8(sp)
   17598:	00013c03          	ld	s8,0(sp)
   1759c:	00098513          	mv	a0,s3
   175a0:	02813983          	ld	s3,40(sp)
   175a4:	05010113          	addi	sp,sp,80
   175a8:	00008067          	ret
   175ac:	0089a583          	lw	a1,8(s3)
   175b0:	000a0513          	mv	a0,s4
   175b4:	0015859b          	addiw	a1,a1,1
   175b8:	e31ff0ef          	jal	ra,173e8 <_Balloc>
   175bc:	00050413          	mv	s0,a0
   175c0:	04050c63          	beqz	a0,17618 <__multadd+0x160>
   175c4:	0149a603          	lw	a2,20(s3)
   175c8:	01098593          	addi	a1,s3,16
   175cc:	01050513          	addi	a0,a0,16
   175d0:	00260613          	addi	a2,a2,2
   175d4:	00261613          	slli	a2,a2,0x2
   175d8:	725050ef          	jal	ra,1d4fc <memcpy>
   175dc:	0089a703          	lw	a4,8(s3)
   175e0:	078a3783          	ld	a5,120(s4)
   175e4:	00371713          	slli	a4,a4,0x3
   175e8:	00e787b3          	add	a5,a5,a4
   175ec:	0007b703          	ld	a4,0(a5)
   175f0:	00e9b023          	sd	a4,0(s3)
   175f4:	0137b023          	sd	s3,0(a5)
   175f8:	00490793          	addi	a5,s2,4
   175fc:	00040993          	mv	s3,s0
   17600:	00279793          	slli	a5,a5,0x2
   17604:	00f987b3          	add	a5,s3,a5
   17608:	0177a423          	sw	s7,8(a5)
   1760c:	0019091b          	addiw	s2,s2,1
   17610:	0129aa23          	sw	s2,20(s3)
   17614:	f65ff06f          	j	17578 <__multadd+0xc0>
   17618:	000226b7          	lui	a3,0x22
   1761c:	00022537          	lui	a0,0x22
   17620:	fd068693          	addi	a3,a3,-48 # 21fd0 <blanks.1+0x78>
   17624:	00000613          	li	a2,0
   17628:	0b500593          	li	a1,181
   1762c:	2c050513          	addi	a0,a0,704 # 222c0 <ezero+0x30>
   17630:	31c050ef          	jal	ra,1c94c <__assert_func>

0000000000017634 <__s2b>:
   17634:	fc010113          	addi	sp,sp,-64
   17638:	02813823          	sd	s0,48(sp)
   1763c:	03213023          	sd	s2,32(sp)
   17640:	00058413          	mv	s0,a1
   17644:	00050913          	mv	s2,a0
   17648:	00900593          	li	a1,9
   1764c:	0086851b          	addiw	a0,a3,8
   17650:	02913423          	sd	s1,40(sp)
   17654:	01313c23          	sd	s3,24(sp)
   17658:	01413823          	sd	s4,16(sp)
   1765c:	02113c23          	sd	ra,56(sp)
   17660:	01513423          	sd	s5,8(sp)
   17664:	01613023          	sd	s6,0(sp)
   17668:	00068493          	mv	s1,a3
   1766c:	00060993          	mv	s3,a2
   17670:	00070a13          	mv	s4,a4
   17674:	55c0a0ef          	jal	ra,21bd0 <__divdi3>
   17678:	00900793          	li	a5,9
   1767c:	0e97da63          	bge	a5,s1,17770 <__s2b+0x13c>
   17680:	0005051b          	sext.w	a0,a0
   17684:	00100793          	li	a5,1
   17688:	00000593          	li	a1,0
   1768c:	0017979b          	slliw	a5,a5,0x1
   17690:	0015859b          	addiw	a1,a1,1
   17694:	fea7cce3          	blt	a5,a0,1768c <__s2b+0x58>
   17698:	00090513          	mv	a0,s2
   1769c:	d4dff0ef          	jal	ra,173e8 <_Balloc>
   176a0:	00050593          	mv	a1,a0
   176a4:	0c050a63          	beqz	a0,17778 <__s2b+0x144>
   176a8:	00100793          	li	a5,1
   176ac:	00f52a23          	sw	a5,20(a0)
   176b0:	01452c23          	sw	s4,24(a0)
   176b4:	00900793          	li	a5,9
   176b8:	0b37d663          	bge	a5,s3,17764 <__s2b+0x130>
   176bc:	02099a13          	slli	s4,s3,0x20
   176c0:	00940b13          	addi	s6,s0,9
   176c4:	020a5a13          	srli	s4,s4,0x20
   176c8:	01440a33          	add	s4,s0,s4
   176cc:	00098a9b          	sext.w	s5,s3
   176d0:	000b0413          	mv	s0,s6
   176d4:	00044683          	lbu	a3,0(s0)
   176d8:	00a00613          	li	a2,10
   176dc:	00090513          	mv	a0,s2
   176e0:	fd06869b          	addiw	a3,a3,-48
   176e4:	dd5ff0ef          	jal	ra,174b8 <__multadd>
   176e8:	00140413          	addi	s0,s0,1
   176ec:	00050593          	mv	a1,a0
   176f0:	ff4412e3          	bne	s0,s4,176d4 <__s2b+0xa0>
   176f4:	ff8a8a9b          	addiw	s5,s5,-8
   176f8:	020a9a93          	slli	s5,s5,0x20
   176fc:	020ada93          	srli	s5,s5,0x20
   17700:	015b0433          	add	s0,s6,s5
   17704:	0299da63          	bge	s3,s1,17738 <__s2b+0x104>
   17708:	413484bb          	subw	s1,s1,s3
   1770c:	02049493          	slli	s1,s1,0x20
   17710:	0204d493          	srli	s1,s1,0x20
   17714:	009404b3          	add	s1,s0,s1
   17718:	00044683          	lbu	a3,0(s0)
   1771c:	00a00613          	li	a2,10
   17720:	00090513          	mv	a0,s2
   17724:	fd06869b          	addiw	a3,a3,-48
   17728:	d91ff0ef          	jal	ra,174b8 <__multadd>
   1772c:	00140413          	addi	s0,s0,1
   17730:	00050593          	mv	a1,a0
   17734:	fe9412e3          	bne	s0,s1,17718 <__s2b+0xe4>
   17738:	03813083          	ld	ra,56(sp)
   1773c:	03013403          	ld	s0,48(sp)
   17740:	02813483          	ld	s1,40(sp)
   17744:	02013903          	ld	s2,32(sp)
   17748:	01813983          	ld	s3,24(sp)
   1774c:	01013a03          	ld	s4,16(sp)
   17750:	00813a83          	ld	s5,8(sp)
   17754:	00013b03          	ld	s6,0(sp)
   17758:	00058513          	mv	a0,a1
   1775c:	04010113          	addi	sp,sp,64
   17760:	00008067          	ret
   17764:	00a40413          	addi	s0,s0,10
   17768:	00900993          	li	s3,9
   1776c:	f99ff06f          	j	17704 <__s2b+0xd0>
   17770:	00000593          	li	a1,0
   17774:	f25ff06f          	j	17698 <__s2b+0x64>
   17778:	000226b7          	lui	a3,0x22
   1777c:	00022537          	lui	a0,0x22
   17780:	fd068693          	addi	a3,a3,-48 # 21fd0 <blanks.1+0x78>
   17784:	00000613          	li	a2,0
   17788:	0ce00593          	li	a1,206
   1778c:	2c050513          	addi	a0,a0,704 # 222c0 <ezero+0x30>
   17790:	1bc050ef          	jal	ra,1c94c <__assert_func>

0000000000017794 <__hi0bits>:
   17794:	00050793          	mv	a5,a0
   17798:	00010737          	lui	a4,0x10
   1779c:	00000513          	li	a0,0
   177a0:	00e7f663          	bgeu	a5,a4,177ac <__hi0bits+0x18>
   177a4:	0107979b          	slliw	a5,a5,0x10
   177a8:	01000513          	li	a0,16
   177ac:	01000737          	lui	a4,0x1000
   177b0:	00e7f663          	bgeu	a5,a4,177bc <__hi0bits+0x28>
   177b4:	0087979b          	slliw	a5,a5,0x8
   177b8:	0085051b          	addiw	a0,a0,8
   177bc:	10000737          	lui	a4,0x10000
   177c0:	00e7f663          	bgeu	a5,a4,177cc <__hi0bits+0x38>
   177c4:	0047979b          	slliw	a5,a5,0x4
   177c8:	0045051b          	addiw	a0,a0,4
   177cc:	40000737          	lui	a4,0x40000
   177d0:	00e7e863          	bltu	a5,a4,177e0 <__hi0bits+0x4c>
   177d4:	0207c463          	bltz	a5,177fc <__hi0bits+0x68>
   177d8:	0015051b          	addiw	a0,a0,1
   177dc:	00008067          	ret
   177e0:	0027979b          	slliw	a5,a5,0x2
   177e4:	0007871b          	sext.w	a4,a5
   177e8:	00074c63          	bltz	a4,17800 <__hi0bits+0x6c>
   177ec:	40000737          	lui	a4,0x40000
   177f0:	00e7f7b3          	and	a5,a5,a4
   177f4:	00079a63          	bnez	a5,17808 <__hi0bits+0x74>
   177f8:	02000513          	li	a0,32
   177fc:	00008067          	ret
   17800:	0025051b          	addiw	a0,a0,2
   17804:	00008067          	ret
   17808:	0035051b          	addiw	a0,a0,3
   1780c:	00008067          	ret

0000000000017810 <__lo0bits>:
   17810:	00052783          	lw	a5,0(a0)
   17814:	00050713          	mv	a4,a0
   17818:	0077f693          	andi	a3,a5,7
   1781c:	00078613          	mv	a2,a5
   17820:	02068463          	beqz	a3,17848 <__lo0bits+0x38>
   17824:	0017f693          	andi	a3,a5,1
   17828:	00000513          	li	a0,0
   1782c:	04069e63          	bnez	a3,17888 <__lo0bits+0x78>
   17830:	00267613          	andi	a2,a2,2
   17834:	0a060863          	beqz	a2,178e4 <__lo0bits+0xd4>
   17838:	0017d79b          	srliw	a5,a5,0x1
   1783c:	00f72023          	sw	a5,0(a4) # 40000000 <__BSS_END__+0x3ffdb1f8>
   17840:	00100513          	li	a0,1
   17844:	00008067          	ret
   17848:	03079693          	slli	a3,a5,0x30
   1784c:	0306d693          	srli	a3,a3,0x30
   17850:	00000513          	li	a0,0
   17854:	06068e63          	beqz	a3,178d0 <__lo0bits+0xc0>
   17858:	0ff7f693          	zext.b	a3,a5
   1785c:	06068063          	beqz	a3,178bc <__lo0bits+0xac>
   17860:	00f7f693          	andi	a3,a5,15
   17864:	04068263          	beqz	a3,178a8 <__lo0bits+0x98>
   17868:	0037f693          	andi	a3,a5,3
   1786c:	02068463          	beqz	a3,17894 <__lo0bits+0x84>
   17870:	0017f693          	andi	a3,a5,1
   17874:	00069c63          	bnez	a3,1788c <__lo0bits+0x7c>
   17878:	0017d79b          	srliw	a5,a5,0x1
   1787c:	0015051b          	addiw	a0,a0,1
   17880:	00079663          	bnez	a5,1788c <__lo0bits+0x7c>
   17884:	02000513          	li	a0,32
   17888:	00008067          	ret
   1788c:	00f72023          	sw	a5,0(a4)
   17890:	00008067          	ret
   17894:	0027d79b          	srliw	a5,a5,0x2
   17898:	0017f693          	andi	a3,a5,1
   1789c:	0025051b          	addiw	a0,a0,2
   178a0:	fe0696e3          	bnez	a3,1788c <__lo0bits+0x7c>
   178a4:	fd5ff06f          	j	17878 <__lo0bits+0x68>
   178a8:	0047d79b          	srliw	a5,a5,0x4
   178ac:	0037f693          	andi	a3,a5,3
   178b0:	0045051b          	addiw	a0,a0,4
   178b4:	fa069ee3          	bnez	a3,17870 <__lo0bits+0x60>
   178b8:	fddff06f          	j	17894 <__lo0bits+0x84>
   178bc:	0087d79b          	srliw	a5,a5,0x8
   178c0:	00f7f693          	andi	a3,a5,15
   178c4:	0085051b          	addiw	a0,a0,8
   178c8:	fa0690e3          	bnez	a3,17868 <__lo0bits+0x58>
   178cc:	fddff06f          	j	178a8 <__lo0bits+0x98>
   178d0:	0107d79b          	srliw	a5,a5,0x10
   178d4:	0ff7f693          	zext.b	a3,a5
   178d8:	01000513          	li	a0,16
   178dc:	f80692e3          	bnez	a3,17860 <__lo0bits+0x50>
   178e0:	fddff06f          	j	178bc <__lo0bits+0xac>
   178e4:	0027d79b          	srliw	a5,a5,0x2
   178e8:	00f72023          	sw	a5,0(a4)
   178ec:	00200513          	li	a0,2
   178f0:	00008067          	ret

00000000000178f4 <__i2b>:
   178f4:	07853783          	ld	a5,120(a0)
   178f8:	fe010113          	addi	sp,sp,-32
   178fc:	00813823          	sd	s0,16(sp)
   17900:	00913423          	sd	s1,8(sp)
   17904:	00113c23          	sd	ra,24(sp)
   17908:	00050413          	mv	s0,a0
   1790c:	00058493          	mv	s1,a1
   17910:	02078c63          	beqz	a5,17948 <__i2b+0x54>
   17914:	0087b503          	ld	a0,8(a5)
   17918:	06050263          	beqz	a0,1797c <__i2b+0x88>
   1791c:	00053703          	ld	a4,0(a0)
   17920:	00e7b423          	sd	a4,8(a5)
   17924:	01813083          	ld	ra,24(sp)
   17928:	01013403          	ld	s0,16(sp)
   1792c:	00100793          	li	a5,1
   17930:	02079793          	slli	a5,a5,0x20
   17934:	00952c23          	sw	s1,24(a0)
   17938:	00f53823          	sd	a5,16(a0)
   1793c:	00813483          	ld	s1,8(sp)
   17940:	02010113          	addi	sp,sp,32
   17944:	00008067          	ret
   17948:	04100613          	li	a2,65
   1794c:	00800593          	li	a1,8
   17950:	078050ef          	jal	ra,1c9c8 <_calloc_r>
   17954:	06a43c23          	sd	a0,120(s0)
   17958:	00050793          	mv	a5,a0
   1795c:	fa051ce3          	bnez	a0,17914 <__i2b+0x20>
   17960:	000226b7          	lui	a3,0x22
   17964:	00022537          	lui	a0,0x22
   17968:	fd068693          	addi	a3,a3,-48 # 21fd0 <blanks.1+0x78>
   1796c:	00000613          	li	a2,0
   17970:	14000593          	li	a1,320
   17974:	2c050513          	addi	a0,a0,704 # 222c0 <ezero+0x30>
   17978:	7d5040ef          	jal	ra,1c94c <__assert_func>
   1797c:	02400613          	li	a2,36
   17980:	00100593          	li	a1,1
   17984:	00040513          	mv	a0,s0
   17988:	040050ef          	jal	ra,1c9c8 <_calloc_r>
   1798c:	fc050ae3          	beqz	a0,17960 <__i2b+0x6c>
   17990:	00100793          	li	a5,1
   17994:	02179793          	slli	a5,a5,0x21
   17998:	00178793          	addi	a5,a5,1
   1799c:	00f53423          	sd	a5,8(a0)
   179a0:	f85ff06f          	j	17924 <__i2b+0x30>

00000000000179a4 <__multiply>:
   179a4:	f7010113          	addi	sp,sp,-144
   179a8:	07213823          	sd	s2,112(sp)
   179ac:	05713423          	sd	s7,72(sp)
   179b0:	01462903          	lw	s2,20(a2)
   179b4:	0145ab83          	lw	s7,20(a1)
   179b8:	08813023          	sd	s0,128(sp)
   179bc:	07313423          	sd	s3,104(sp)
   179c0:	08113423          	sd	ra,136(sp)
   179c4:	06913c23          	sd	s1,120(sp)
   179c8:	07413023          	sd	s4,96(sp)
   179cc:	05513c23          	sd	s5,88(sp)
   179d0:	05613823          	sd	s6,80(sp)
   179d4:	05813023          	sd	s8,64(sp)
   179d8:	03913c23          	sd	s9,56(sp)
   179dc:	03a13823          	sd	s10,48(sp)
   179e0:	03b13423          	sd	s11,40(sp)
   179e4:	00058993          	mv	s3,a1
   179e8:	00060413          	mv	s0,a2
   179ec:	012bcc63          	blt	s7,s2,17a04 <__multiply+0x60>
   179f0:	00090793          	mv	a5,s2
   179f4:	00058413          	mv	s0,a1
   179f8:	000b8913          	mv	s2,s7
   179fc:	00060993          	mv	s3,a2
   17a00:	00078b93          	mv	s7,a5
   17a04:	00c42783          	lw	a5,12(s0)
   17a08:	01790b3b          	addw	s6,s2,s7
   17a0c:	00842583          	lw	a1,8(s0)
   17a10:	0167d463          	bge	a5,s6,17a18 <__multiply+0x74>
   17a14:	0015859b          	addiw	a1,a1,1
   17a18:	9d1ff0ef          	jal	ra,173e8 <_Balloc>
   17a1c:	00a13c23          	sd	a0,24(sp)
   17a20:	20050e63          	beqz	a0,17c3c <__multiply+0x298>
   17a24:	01813783          	ld	a5,24(sp)
   17a28:	002b1a13          	slli	s4,s6,0x2
   17a2c:	01878a93          	addi	s5,a5,24
   17a30:	014a8a33          	add	s4,s5,s4
   17a34:	000a8793          	mv	a5,s5
   17a38:	014af863          	bgeu	s5,s4,17a48 <__multiply+0xa4>
   17a3c:	0007a023          	sw	zero,0(a5)
   17a40:	00478793          	addi	a5,a5,4
   17a44:	ff47ece3          	bltu	a5,s4,17a3c <__multiply+0x98>
   17a48:	01898993          	addi	s3,s3,24
   17a4c:	002b9b93          	slli	s7,s7,0x2
   17a50:	01840793          	addi	a5,s0,24
   17a54:	01798733          	add	a4,s3,s7
   17a58:	00291913          	slli	s2,s2,0x2
   17a5c:	00f13823          	sd	a5,16(sp)
   17a60:	00e13023          	sd	a4,0(sp)
   17a64:	01278933          	add	s2,a5,s2
   17a68:	14e9fc63          	bgeu	s3,a4,17bc0 <__multiply+0x21c>
   17a6c:	00400713          	li	a4,4
   17a70:	01940793          	addi	a5,s0,25
   17a74:	00e13423          	sd	a4,8(sp)
   17a78:	1af97663          	bgeu	s2,a5,17c24 <__multiply+0x280>
   17a7c:	00010437          	lui	s0,0x10
   17a80:	fff40413          	addi	s0,s0,-1 # ffff <exit-0xe9>
   17a84:	01c0006f          	j	17aa0 <__multiply+0xfc>
   17a88:	010ddd9b          	srliw	s11,s11,0x10
   17a8c:	0a0d9263          	bnez	s11,17b30 <__multiply+0x18c>
   17a90:	00013783          	ld	a5,0(sp)
   17a94:	00498993          	addi	s3,s3,4
   17a98:	004a8a93          	addi	s5,s5,4
   17a9c:	12f9f263          	bgeu	s3,a5,17bc0 <__multiply+0x21c>
   17aa0:	0009ad83          	lw	s11,0(s3)
   17aa4:	008df4b3          	and	s1,s11,s0
   17aa8:	fe0480e3          	beqz	s1,17a88 <__multiply+0xe4>
   17aac:	01013c03          	ld	s8,16(sp)
   17ab0:	000a8c93          	mv	s9,s5
   17ab4:	00000b93          	li	s7,0
   17ab8:	000c2d03          	lw	s10,0(s8)
   17abc:	000cad83          	lw	s11,0(s9)
   17ac0:	00048593          	mv	a1,s1
   17ac4:	008d7533          	and	a0,s10,s0
   17ac8:	0a40a0ef          	jal	ra,21b6c <__muldi3>
   17acc:	008df733          	and	a4,s11,s0
   17ad0:	00e5073b          	addw	a4,a0,a4
   17ad4:	00048593          	mv	a1,s1
   17ad8:	010d551b          	srliw	a0,s10,0x10
   17adc:	01770bbb          	addw	s7,a4,s7
   17ae0:	010ddd9b          	srliw	s11,s11,0x10
   17ae4:	0880a0ef          	jal	ra,21b6c <__muldi3>
   17ae8:	010bd79b          	srliw	a5,s7,0x10
   17aec:	00ad8dbb          	addw	s11,s11,a0
   17af0:	00fd87bb          	addw	a5,s11,a5
   17af4:	01747733          	and	a4,s0,s7
   17af8:	0107959b          	slliw	a1,a5,0x10
   17afc:	00b76733          	or	a4,a4,a1
   17b00:	00eca023          	sw	a4,0(s9)
   17b04:	004c0c13          	addi	s8,s8,4
   17b08:	004c8c93          	addi	s9,s9,4
   17b0c:	0107d71b          	srliw	a4,a5,0x10
   17b10:	0107db9b          	srliw	s7,a5,0x10
   17b14:	fb2c62e3          	bltu	s8,s2,17ab8 <__multiply+0x114>
   17b18:	00813783          	ld	a5,8(sp)
   17b1c:	00fa87b3          	add	a5,s5,a5
   17b20:	00e7a023          	sw	a4,0(a5)
   17b24:	0009ad83          	lw	s11,0(s3)
   17b28:	010ddd9b          	srliw	s11,s11,0x10
   17b2c:	f60d82e3          	beqz	s11,17a90 <__multiply+0xec>
   17b30:	000aad03          	lw	s10,0(s5)
   17b34:	01013c83          	ld	s9,16(sp)
   17b38:	000a8b93          	mv	s7,s5
   17b3c:	000d0493          	mv	s1,s10
   17b40:	00000c13          	li	s8,0
   17b44:	000ca503          	lw	a0,0(s9)
   17b48:	000d8593          	mv	a1,s11
   17b4c:	0104d49b          	srliw	s1,s1,0x10
   17b50:	00857533          	and	a0,a0,s0
   17b54:	0180a0ef          	jal	ra,21b6c <__muldi3>
   17b58:	018507bb          	addw	a5,a0,s8
   17b5c:	00978c3b          	addw	s8,a5,s1
   17b60:	010c159b          	slliw	a1,s8,0x10
   17b64:	008d7733          	and	a4,s10,s0
   17b68:	00b76733          	or	a4,a4,a1
   17b6c:	00eba023          	sw	a4,0(s7)
   17b70:	002cd503          	lhu	a0,2(s9)
   17b74:	004ba483          	lw	s1,4(s7)
   17b78:	000d8593          	mv	a1,s11
   17b7c:	7f1090ef          	jal	ra,21b6c <__muldi3>
   17b80:	0084f733          	and	a4,s1,s0
   17b84:	010c579b          	srliw	a5,s8,0x10
   17b88:	00e5053b          	addw	a0,a0,a4
   17b8c:	00f5053b          	addw	a0,a0,a5
   17b90:	004c8c93          	addi	s9,s9,4
   17b94:	004b8b93          	addi	s7,s7,4
   17b98:	00050d1b          	sext.w	s10,a0
   17b9c:	01055c1b          	srliw	s8,a0,0x10
   17ba0:	fb2ce2e3          	bltu	s9,s2,17b44 <__multiply+0x1a0>
   17ba4:	00813783          	ld	a5,8(sp)
   17ba8:	00498993          	addi	s3,s3,4
   17bac:	00fa87b3          	add	a5,s5,a5
   17bb0:	00a7a023          	sw	a0,0(a5)
   17bb4:	00013783          	ld	a5,0(sp)
   17bb8:	004a8a93          	addi	s5,s5,4
   17bbc:	eef9e2e3          	bltu	s3,a5,17aa0 <__multiply+0xfc>
   17bc0:	01604863          	bgtz	s6,17bd0 <__multiply+0x22c>
   17bc4:	0180006f          	j	17bdc <__multiply+0x238>
   17bc8:	fffb0b1b          	addiw	s6,s6,-1
   17bcc:	000b0863          	beqz	s6,17bdc <__multiply+0x238>
   17bd0:	ffca2783          	lw	a5,-4(s4)
   17bd4:	ffca0a13          	addi	s4,s4,-4
   17bd8:	fe0788e3          	beqz	a5,17bc8 <__multiply+0x224>
   17bdc:	01813783          	ld	a5,24(sp)
   17be0:	08813083          	ld	ra,136(sp)
   17be4:	08013403          	ld	s0,128(sp)
   17be8:	0167aa23          	sw	s6,20(a5)
   17bec:	07813483          	ld	s1,120(sp)
   17bf0:	07013903          	ld	s2,112(sp)
   17bf4:	06813983          	ld	s3,104(sp)
   17bf8:	06013a03          	ld	s4,96(sp)
   17bfc:	05813a83          	ld	s5,88(sp)
   17c00:	05013b03          	ld	s6,80(sp)
   17c04:	04813b83          	ld	s7,72(sp)
   17c08:	04013c03          	ld	s8,64(sp)
   17c0c:	03813c83          	ld	s9,56(sp)
   17c10:	03013d03          	ld	s10,48(sp)
   17c14:	02813d83          	ld	s11,40(sp)
   17c18:	00078513          	mv	a0,a5
   17c1c:	09010113          	addi	sp,sp,144
   17c20:	00008067          	ret
   17c24:	408907b3          	sub	a5,s2,s0
   17c28:	fe778793          	addi	a5,a5,-25
   17c2c:	ffc7f793          	andi	a5,a5,-4
   17c30:	00478793          	addi	a5,a5,4
   17c34:	00f13423          	sd	a5,8(sp)
   17c38:	e45ff06f          	j	17a7c <__multiply+0xd8>
   17c3c:	000226b7          	lui	a3,0x22
   17c40:	00022537          	lui	a0,0x22
   17c44:	fd068693          	addi	a3,a3,-48 # 21fd0 <blanks.1+0x78>
   17c48:	00000613          	li	a2,0
   17c4c:	15d00593          	li	a1,349
   17c50:	2c050513          	addi	a0,a0,704 # 222c0 <ezero+0x30>
   17c54:	4f9040ef          	jal	ra,1c94c <__assert_func>

0000000000017c58 <__pow5mult>:
   17c58:	fd010113          	addi	sp,sp,-48
   17c5c:	02813023          	sd	s0,32(sp)
   17c60:	01213823          	sd	s2,16(sp)
   17c64:	01313423          	sd	s3,8(sp)
   17c68:	02113423          	sd	ra,40(sp)
   17c6c:	00913c23          	sd	s1,24(sp)
   17c70:	00367793          	andi	a5,a2,3
   17c74:	00060413          	mv	s0,a2
   17c78:	00050993          	mv	s3,a0
   17c7c:	00058913          	mv	s2,a1
   17c80:	0a079a63          	bnez	a5,17d34 <__pow5mult+0xdc>
   17c84:	40245413          	srai	s0,s0,0x2
   17c88:	06040663          	beqz	s0,17cf4 <__pow5mult+0x9c>
   17c8c:	0709b483          	ld	s1,112(s3)
   17c90:	0c048663          	beqz	s1,17d5c <__pow5mult+0x104>
   17c94:	00147793          	andi	a5,s0,1
   17c98:	02079063          	bnez	a5,17cb8 <__pow5mult+0x60>
   17c9c:	40145413          	srai	s0,s0,0x1
   17ca0:	04040a63          	beqz	s0,17cf4 <__pow5mult+0x9c>
   17ca4:	0004b503          	ld	a0,0(s1)
   17ca8:	06050663          	beqz	a0,17d14 <__pow5mult+0xbc>
   17cac:	00050493          	mv	s1,a0
   17cb0:	00147793          	andi	a5,s0,1
   17cb4:	fe0784e3          	beqz	a5,17c9c <__pow5mult+0x44>
   17cb8:	00048613          	mv	a2,s1
   17cbc:	00090593          	mv	a1,s2
   17cc0:	00098513          	mv	a0,s3
   17cc4:	ce1ff0ef          	jal	ra,179a4 <__multiply>
   17cc8:	02090063          	beqz	s2,17ce8 <__pow5mult+0x90>
   17ccc:	00892703          	lw	a4,8(s2)
   17cd0:	0789b783          	ld	a5,120(s3)
   17cd4:	00371713          	slli	a4,a4,0x3
   17cd8:	00e787b3          	add	a5,a5,a4
   17cdc:	0007b703          	ld	a4,0(a5)
   17ce0:	00e93023          	sd	a4,0(s2)
   17ce4:	0127b023          	sd	s2,0(a5)
   17ce8:	40145413          	srai	s0,s0,0x1
   17cec:	00050913          	mv	s2,a0
   17cf0:	fa041ae3          	bnez	s0,17ca4 <__pow5mult+0x4c>
   17cf4:	02813083          	ld	ra,40(sp)
   17cf8:	02013403          	ld	s0,32(sp)
   17cfc:	01813483          	ld	s1,24(sp)
   17d00:	00813983          	ld	s3,8(sp)
   17d04:	00090513          	mv	a0,s2
   17d08:	01013903          	ld	s2,16(sp)
   17d0c:	03010113          	addi	sp,sp,48
   17d10:	00008067          	ret
   17d14:	00048613          	mv	a2,s1
   17d18:	00048593          	mv	a1,s1
   17d1c:	00098513          	mv	a0,s3
   17d20:	c85ff0ef          	jal	ra,179a4 <__multiply>
   17d24:	00a4b023          	sd	a0,0(s1)
   17d28:	00053023          	sd	zero,0(a0)
   17d2c:	00050493          	mv	s1,a0
   17d30:	f81ff06f          	j	17cb0 <__pow5mult+0x58>
   17d34:	fff7879b          	addiw	a5,a5,-1
   17d38:	00022737          	lui	a4,0x22
   17d3c:	31070713          	addi	a4,a4,784 # 22310 <p05.0>
   17d40:	00279793          	slli	a5,a5,0x2
   17d44:	00f707b3          	add	a5,a4,a5
   17d48:	0007a603          	lw	a2,0(a5)
   17d4c:	00000693          	li	a3,0
   17d50:	f68ff0ef          	jal	ra,174b8 <__multadd>
   17d54:	00050913          	mv	s2,a0
   17d58:	f2dff06f          	j	17c84 <__pow5mult+0x2c>
   17d5c:	00100593          	li	a1,1
   17d60:	00098513          	mv	a0,s3
   17d64:	e84ff0ef          	jal	ra,173e8 <_Balloc>
   17d68:	00050493          	mv	s1,a0
   17d6c:	02050063          	beqz	a0,17d8c <__pow5mult+0x134>
   17d70:	27100793          	li	a5,625
   17d74:	00f52c23          	sw	a5,24(a0)
   17d78:	00100793          	li	a5,1
   17d7c:	00f52a23          	sw	a5,20(a0)
   17d80:	06a9b823          	sd	a0,112(s3)
   17d84:	00053023          	sd	zero,0(a0)
   17d88:	f0dff06f          	j	17c94 <__pow5mult+0x3c>
   17d8c:	000226b7          	lui	a3,0x22
   17d90:	00022537          	lui	a0,0x22
   17d94:	fd068693          	addi	a3,a3,-48 # 21fd0 <blanks.1+0x78>
   17d98:	00000613          	li	a2,0
   17d9c:	14000593          	li	a1,320
   17da0:	2c050513          	addi	a0,a0,704 # 222c0 <ezero+0x30>
   17da4:	3a9040ef          	jal	ra,1c94c <__assert_func>

0000000000017da8 <__lshift>:
   17da8:	fc010113          	addi	sp,sp,-64
   17dac:	02813823          	sd	s0,48(sp)
   17db0:	0145a403          	lw	s0,20(a1)
   17db4:	00c5a783          	lw	a5,12(a1)
   17db8:	01513423          	sd	s5,8(sp)
   17dbc:	40565a9b          	sraiw	s5,a2,0x5
   17dc0:	008a843b          	addw	s0,s5,s0
   17dc4:	02913423          	sd	s1,40(sp)
   17dc8:	03213023          	sd	s2,32(sp)
   17dcc:	01313c23          	sd	s3,24(sp)
   17dd0:	01413823          	sd	s4,16(sp)
   17dd4:	01613023          	sd	s6,0(sp)
   17dd8:	02113c23          	sd	ra,56(sp)
   17ddc:	0014091b          	addiw	s2,s0,1
   17de0:	00058493          	mv	s1,a1
   17de4:	00060a13          	mv	s4,a2
   17de8:	0085a583          	lw	a1,8(a1)
   17dec:	00050993          	mv	s3,a0
   17df0:	40565b13          	srai	s6,a2,0x5
   17df4:	0127d863          	bge	a5,s2,17e04 <__lshift+0x5c>
   17df8:	0017979b          	slliw	a5,a5,0x1
   17dfc:	0015859b          	addiw	a1,a1,1
   17e00:	ff27cce3          	blt	a5,s2,17df8 <__lshift+0x50>
   17e04:	00098513          	mv	a0,s3
   17e08:	de0ff0ef          	jal	ra,173e8 <_Balloc>
   17e0c:	12050263          	beqz	a0,17f30 <__lshift+0x188>
   17e10:	01850713          	addi	a4,a0,24
   17e14:	03605663          	blez	s6,17e40 <__lshift+0x98>
   17e18:	006a869b          	addiw	a3,s5,6
   17e1c:	00269693          	slli	a3,a3,0x2
   17e20:	00d506b3          	add	a3,a0,a3
   17e24:	00070793          	mv	a5,a4
   17e28:	00478793          	addi	a5,a5,4
   17e2c:	fe07ae23          	sw	zero,-4(a5)
   17e30:	fef69ce3          	bne	a3,a5,17e28 <__lshift+0x80>
   17e34:	020a9793          	slli	a5,s5,0x20
   17e38:	01e7da93          	srli	s5,a5,0x1e
   17e3c:	01570733          	add	a4,a4,s5
   17e40:	0144a883          	lw	a7,20(s1)
   17e44:	01848793          	addi	a5,s1,24
   17e48:	01fa7613          	andi	a2,s4,31
   17e4c:	00289893          	slli	a7,a7,0x2
   17e50:	011788b3          	add	a7,a5,a7
   17e54:	0a060863          	beqz	a2,17f04 <__lshift+0x15c>
   17e58:	02000593          	li	a1,32
   17e5c:	40c585bb          	subw	a1,a1,a2
   17e60:	00070313          	mv	t1,a4
   17e64:	00000693          	li	a3,0
   17e68:	0007a803          	lw	a6,0(a5)
   17e6c:	00430313          	addi	t1,t1,4
   17e70:	00478793          	addi	a5,a5,4
   17e74:	00c8183b          	sllw	a6,a6,a2
   17e78:	0106e6b3          	or	a3,a3,a6
   17e7c:	fed32e23          	sw	a3,-4(t1)
   17e80:	ffc7a803          	lw	a6,-4(a5)
   17e84:	00b856bb          	srlw	a3,a6,a1
   17e88:	00068813          	mv	a6,a3
   17e8c:	fd17eee3          	bltu	a5,a7,17e68 <__lshift+0xc0>
   17e90:	01948793          	addi	a5,s1,25
   17e94:	00400613          	li	a2,4
   17e98:	00f8ea63          	bltu	a7,a5,17eac <__lshift+0x104>
   17e9c:	409887b3          	sub	a5,a7,s1
   17ea0:	fe778793          	addi	a5,a5,-25
   17ea4:	ffc7f793          	andi	a5,a5,-4
   17ea8:	00478613          	addi	a2,a5,4
   17eac:	00c70733          	add	a4,a4,a2
   17eb0:	01072023          	sw	a6,0(a4)
   17eb4:	00069463          	bnez	a3,17ebc <__lshift+0x114>
   17eb8:	00040913          	mv	s2,s0
   17ebc:	0084a703          	lw	a4,8(s1)
   17ec0:	0789b783          	ld	a5,120(s3)
   17ec4:	03813083          	ld	ra,56(sp)
   17ec8:	00371713          	slli	a4,a4,0x3
   17ecc:	00e787b3          	add	a5,a5,a4
   17ed0:	0007b703          	ld	a4,0(a5)
   17ed4:	01252a23          	sw	s2,20(a0)
   17ed8:	03013403          	ld	s0,48(sp)
   17edc:	00e4b023          	sd	a4,0(s1)
   17ee0:	0097b023          	sd	s1,0(a5)
   17ee4:	02013903          	ld	s2,32(sp)
   17ee8:	02813483          	ld	s1,40(sp)
   17eec:	01813983          	ld	s3,24(sp)
   17ef0:	01013a03          	ld	s4,16(sp)
   17ef4:	00813a83          	ld	s5,8(sp)
   17ef8:	00013b03          	ld	s6,0(sp)
   17efc:	04010113          	addi	sp,sp,64
   17f00:	00008067          	ret
   17f04:	0007a683          	lw	a3,0(a5)
   17f08:	00478793          	addi	a5,a5,4
   17f0c:	00470713          	addi	a4,a4,4
   17f10:	fed72e23          	sw	a3,-4(a4)
   17f14:	fb17f2e3          	bgeu	a5,a7,17eb8 <__lshift+0x110>
   17f18:	0007a683          	lw	a3,0(a5)
   17f1c:	00478793          	addi	a5,a5,4
   17f20:	00470713          	addi	a4,a4,4
   17f24:	fed72e23          	sw	a3,-4(a4)
   17f28:	fd17eee3          	bltu	a5,a7,17f04 <__lshift+0x15c>
   17f2c:	f8dff06f          	j	17eb8 <__lshift+0x110>
   17f30:	000226b7          	lui	a3,0x22
   17f34:	00022537          	lui	a0,0x22
   17f38:	fd068693          	addi	a3,a3,-48 # 21fd0 <blanks.1+0x78>
   17f3c:	00000613          	li	a2,0
   17f40:	1d900593          	li	a1,473
   17f44:	2c050513          	addi	a0,a0,704 # 222c0 <ezero+0x30>
   17f48:	205040ef          	jal	ra,1c94c <__assert_func>

0000000000017f4c <__mcmp>:
   17f4c:	0145a783          	lw	a5,20(a1)
   17f50:	00050813          	mv	a6,a0
   17f54:	01452503          	lw	a0,20(a0)
   17f58:	40f5053b          	subw	a0,a0,a5
   17f5c:	04051263          	bnez	a0,17fa0 <__mcmp+0x54>
   17f60:	00279793          	slli	a5,a5,0x2
   17f64:	01880813          	addi	a6,a6,24
   17f68:	01858593          	addi	a1,a1,24
   17f6c:	00f80733          	add	a4,a6,a5
   17f70:	00f587b3          	add	a5,a1,a5
   17f74:	0080006f          	j	17f7c <__mcmp+0x30>
   17f78:	02e87463          	bgeu	a6,a4,17fa0 <__mcmp+0x54>
   17f7c:	ffc72603          	lw	a2,-4(a4)
   17f80:	ffc7a683          	lw	a3,-4(a5)
   17f84:	ffc70713          	addi	a4,a4,-4
   17f88:	ffc78793          	addi	a5,a5,-4
   17f8c:	fed606e3          	beq	a2,a3,17f78 <__mcmp+0x2c>
   17f90:	00100513          	li	a0,1
   17f94:	00d67663          	bgeu	a2,a3,17fa0 <__mcmp+0x54>
   17f98:	fff00513          	li	a0,-1
   17f9c:	00008067          	ret
   17fa0:	00008067          	ret

0000000000017fa4 <__mdiff>:
   17fa4:	fe010113          	addi	sp,sp,-32
   17fa8:	01462783          	lw	a5,20(a2)
   17fac:	01213023          	sd	s2,0(sp)
   17fb0:	0145a903          	lw	s2,20(a1)
   17fb4:	00813823          	sd	s0,16(sp)
   17fb8:	00913423          	sd	s1,8(sp)
   17fbc:	00113c23          	sd	ra,24(sp)
   17fc0:	40f9093b          	subw	s2,s2,a5
   17fc4:	00058493          	mv	s1,a1
   17fc8:	00060413          	mv	s0,a2
   17fcc:	04091663          	bnez	s2,18018 <__mdiff+0x74>
   17fd0:	00279693          	slli	a3,a5,0x2
   17fd4:	01858593          	addi	a1,a1,24
   17fd8:	01860713          	addi	a4,a2,24
   17fdc:	00d587b3          	add	a5,a1,a3
   17fe0:	00d70733          	add	a4,a4,a3
   17fe4:	0080006f          	j	17fec <__mdiff+0x48>
   17fe8:	18f5fa63          	bgeu	a1,a5,1817c <__mdiff+0x1d8>
   17fec:	ffc7a603          	lw	a2,-4(a5)
   17ff0:	ffc72683          	lw	a3,-4(a4)
   17ff4:	ffc78793          	addi	a5,a5,-4
   17ff8:	ffc70713          	addi	a4,a4,-4
   17ffc:	fed606e3          	beq	a2,a3,17fe8 <__mdiff+0x44>
   18000:	02d67063          	bgeu	a2,a3,18020 <__mdiff+0x7c>
   18004:	00048793          	mv	a5,s1
   18008:	00100913          	li	s2,1
   1800c:	00040493          	mv	s1,s0
   18010:	00078413          	mv	s0,a5
   18014:	00c0006f          	j	18020 <__mdiff+0x7c>
   18018:	fe0946e3          	bltz	s2,18004 <__mdiff+0x60>
   1801c:	00000913          	li	s2,0
   18020:	0084a583          	lw	a1,8(s1)
   18024:	bc4ff0ef          	jal	ra,173e8 <_Balloc>
   18028:	1a050e63          	beqz	a0,181e4 <__mdiff+0x240>
   1802c:	0144a303          	lw	t1,20(s1)
   18030:	01442f03          	lw	t5,20(s0)
   18034:	01848293          	addi	t0,s1,24
   18038:	00231e13          	slli	t3,t1,0x2
   1803c:	01840813          	addi	a6,s0,24
   18040:	002f1f13          	slli	t5,t5,0x2
   18044:	01850f93          	addi	t6,a0,24
   18048:	000108b7          	lui	a7,0x10
   1804c:	01252823          	sw	s2,16(a0)
   18050:	01c28e33          	add	t3,t0,t3
   18054:	01e80f33          	add	t5,a6,t5
   18058:	000f8613          	mv	a2,t6
   1805c:	00028e93          	mv	t4,t0
   18060:	00000593          	li	a1,0
   18064:	fff88893          	addi	a7,a7,-1 # ffff <exit-0xe9>
   18068:	000ea703          	lw	a4,0(t4)
   1806c:	00082683          	lw	a3,0(a6)
   18070:	00460613          	addi	a2,a2,4
   18074:	011777b3          	and	a5,a4,a7
   18078:	0116f3b3          	and	t2,a3,a7
   1807c:	407787bb          	subw	a5,a5,t2
   18080:	00b787bb          	addw	a5,a5,a1
   18084:	0106d69b          	srliw	a3,a3,0x10
   18088:	0107571b          	srliw	a4,a4,0x10
   1808c:	40d7073b          	subw	a4,a4,a3
   18090:	4107d69b          	sraiw	a3,a5,0x10
   18094:	00d7073b          	addw	a4,a4,a3
   18098:	00f8f7b3          	and	a5,a7,a5
   1809c:	0107169b          	slliw	a3,a4,0x10
   180a0:	00d7e7b3          	or	a5,a5,a3
   180a4:	0007879b          	sext.w	a5,a5
   180a8:	00480813          	addi	a6,a6,4
   180ac:	fef62e23          	sw	a5,-4(a2)
   180b0:	004e8e93          	addi	t4,t4,4
   180b4:	4107559b          	sraiw	a1,a4,0x10
   180b8:	fbe868e3          	bltu	a6,t5,18068 <__mdiff+0xc4>
   180bc:	408f0733          	sub	a4,t5,s0
   180c0:	fe770713          	addi	a4,a4,-25
   180c4:	01940413          	addi	s0,s0,25
   180c8:	00275e93          	srli	t4,a4,0x2
   180cc:	00400713          	li	a4,4
   180d0:	008f6663          	bltu	t5,s0,180dc <__mdiff+0x138>
   180d4:	001e8713          	addi	a4,t4,1
   180d8:	00271713          	slli	a4,a4,0x2
   180dc:	00e282b3          	add	t0,t0,a4
   180e0:	00ef8833          	add	a6,t6,a4
   180e4:	000108b7          	lui	a7,0x10
   180e8:	00080613          	mv	a2,a6
   180ec:	00028693          	mv	a3,t0
   180f0:	fff88893          	addi	a7,a7,-1 # ffff <exit-0xe9>
   180f4:	0bc2fc63          	bgeu	t0,t3,181ac <__mdiff+0x208>
   180f8:	0006a783          	lw	a5,0(a3)
   180fc:	00058e9b          	sext.w	t4,a1
   18100:	00460613          	addi	a2,a2,4
   18104:	0117f733          	and	a4,a5,a7
   18108:	00b7073b          	addw	a4,a4,a1
   1810c:	4107571b          	sraiw	a4,a4,0x10
   18110:	0107d59b          	srliw	a1,a5,0x10
   18114:	00b7073b          	addw	a4,a4,a1
   18118:	01d787bb          	addw	a5,a5,t4
   1811c:	0107159b          	slliw	a1,a4,0x10
   18120:	0117f7b3          	and	a5,a5,a7
   18124:	00b7e7b3          	or	a5,a5,a1
   18128:	0007879b          	sext.w	a5,a5
   1812c:	00468693          	addi	a3,a3,4
   18130:	fef62e23          	sw	a5,-4(a2)
   18134:	4107559b          	sraiw	a1,a4,0x10
   18138:	fdc6e0e3          	bltu	a3,t3,180f8 <__mdiff+0x154>
   1813c:	fffe0e13          	addi	t3,t3,-1
   18140:	405e0e33          	sub	t3,t3,t0
   18144:	ffce7e13          	andi	t3,t3,-4
   18148:	01c80733          	add	a4,a6,t3
   1814c:	00079a63          	bnez	a5,18160 <__mdiff+0x1bc>
   18150:	ffc72783          	lw	a5,-4(a4)
   18154:	fff3031b          	addiw	t1,t1,-1
   18158:	ffc70713          	addi	a4,a4,-4
   1815c:	fe078ae3          	beqz	a5,18150 <__mdiff+0x1ac>
   18160:	01813083          	ld	ra,24(sp)
   18164:	01013403          	ld	s0,16(sp)
   18168:	00652a23          	sw	t1,20(a0)
   1816c:	00813483          	ld	s1,8(sp)
   18170:	00013903          	ld	s2,0(sp)
   18174:	02010113          	addi	sp,sp,32
   18178:	00008067          	ret
   1817c:	00000593          	li	a1,0
   18180:	a68ff0ef          	jal	ra,173e8 <_Balloc>
   18184:	04050263          	beqz	a0,181c8 <__mdiff+0x224>
   18188:	01813083          	ld	ra,24(sp)
   1818c:	01013403          	ld	s0,16(sp)
   18190:	00100793          	li	a5,1
   18194:	00f52a23          	sw	a5,20(a0)
   18198:	00052c23          	sw	zero,24(a0)
   1819c:	00813483          	ld	s1,8(sp)
   181a0:	00013903          	ld	s2,0(sp)
   181a4:	02010113          	addi	sp,sp,32
   181a8:	00008067          	ret
   181ac:	00000713          	li	a4,0
   181b0:	008f7663          	bgeu	t5,s0,181bc <__mdiff+0x218>
   181b4:	00ef8733          	add	a4,t6,a4
   181b8:	f95ff06f          	j	1814c <__mdiff+0x1a8>
   181bc:	002e9713          	slli	a4,t4,0x2
   181c0:	00ef8733          	add	a4,t6,a4
   181c4:	f89ff06f          	j	1814c <__mdiff+0x1a8>
   181c8:	000226b7          	lui	a3,0x22
   181cc:	00022537          	lui	a0,0x22
   181d0:	fd068693          	addi	a3,a3,-48 # 21fd0 <blanks.1+0x78>
   181d4:	00000613          	li	a2,0
   181d8:	23200593          	li	a1,562
   181dc:	2c050513          	addi	a0,a0,704 # 222c0 <ezero+0x30>
   181e0:	76c040ef          	jal	ra,1c94c <__assert_func>
   181e4:	000226b7          	lui	a3,0x22
   181e8:	00022537          	lui	a0,0x22
   181ec:	fd068693          	addi	a3,a3,-48 # 21fd0 <blanks.1+0x78>
   181f0:	00000613          	li	a2,0
   181f4:	24000593          	li	a1,576
   181f8:	2c050513          	addi	a0,a0,704 # 222c0 <ezero+0x30>
   181fc:	750040ef          	jal	ra,1c94c <__assert_func>

0000000000018200 <__ulp>:
   18200:	7ff007b7          	lui	a5,0x7ff00
   18204:	02055513          	srli	a0,a0,0x20
   18208:	00f57533          	and	a0,a0,a5
   1820c:	fcc007b7          	lui	a5,0xfcc00
   18210:	00a7873b          	addw	a4,a5,a0
   18214:	00000513          	li	a0,0
   18218:	00e05c63          	blez	a4,18230 <__ulp+0x30>
   1821c:	02051513          	slli	a0,a0,0x20
   18220:	02071713          	slli	a4,a4,0x20
   18224:	02055513          	srli	a0,a0,0x20
   18228:	00e56533          	or	a0,a0,a4
   1822c:	00008067          	ret
   18230:	40e007bb          	negw	a5,a4
   18234:	4147d69b          	sraiw	a3,a5,0x14
   18238:	01300713          	li	a4,19
   1823c:	02d74263          	blt	a4,a3,18260 <__ulp+0x60>
   18240:	00080737          	lui	a4,0x80
   18244:	00000513          	li	a0,0
   18248:	40d7573b          	sraw	a4,a4,a3
   1824c:	02051513          	slli	a0,a0,0x20
   18250:	02071713          	slli	a4,a4,0x20
   18254:	02055513          	srli	a0,a0,0x20
   18258:	00e56533          	or	a0,a0,a4
   1825c:	00008067          	ret
   18260:	fec6879b          	addiw	a5,a3,-20
   18264:	01e00713          	li	a4,30
   18268:	00100513          	li	a0,1
   1826c:	00f74663          	blt	a4,a5,18278 <__ulp+0x78>
   18270:	80000537          	lui	a0,0x80000
   18274:	00f5553b          	srlw	a0,a0,a5
   18278:	00000713          	li	a4,0
   1827c:	02051513          	slli	a0,a0,0x20
   18280:	02071713          	slli	a4,a4,0x20
   18284:	02055513          	srli	a0,a0,0x20
   18288:	00e56533          	or	a0,a0,a4
   1828c:	00008067          	ret

0000000000018290 <__b2d>:
   18290:	fd010113          	addi	sp,sp,-48
   18294:	00913c23          	sd	s1,24(sp)
   18298:	01452483          	lw	s1,20(a0) # ffffffff80000014 <__BSS_END__+0xffffffff7ffdb20c>
   1829c:	02813023          	sd	s0,32(sp)
   182a0:	01850413          	addi	s0,a0,24
   182a4:	00249493          	slli	s1,s1,0x2
   182a8:	009404b3          	add	s1,s0,s1
   182ac:	01213823          	sd	s2,16(sp)
   182b0:	ffc4a903          	lw	s2,-4(s1)
   182b4:	01313423          	sd	s3,8(sp)
   182b8:	01413023          	sd	s4,0(sp)
   182bc:	00090513          	mv	a0,s2
   182c0:	00058993          	mv	s3,a1
   182c4:	02113423          	sd	ra,40(sp)
   182c8:	cccff0ef          	jal	ra,17794 <__hi0bits>
   182cc:	02000693          	li	a3,32
   182d0:	40a687bb          	subw	a5,a3,a0
   182d4:	00f9a023          	sw	a5,0(s3)
   182d8:	00a00793          	li	a5,10
   182dc:	ffc48a13          	addi	s4,s1,-4
   182e0:	00050713          	mv	a4,a0
   182e4:	0aa7dc63          	bge	a5,a0,1839c <__b2d+0x10c>
   182e8:	ff55079b          	addiw	a5,a0,-11
   182ec:	05447663          	bgeu	s0,s4,18338 <__b2d+0xa8>
   182f0:	ff84a703          	lw	a4,-8(s1)
   182f4:	06078463          	beqz	a5,1835c <__b2d+0xcc>
   182f8:	40f686bb          	subw	a3,a3,a5
   182fc:	00d7563b          	srlw	a2,a4,a3
   18300:	00f9193b          	sllw	s2,s2,a5
   18304:	00c96933          	or	s2,s2,a2
   18308:	3ff00637          	lui	a2,0x3ff00
   1830c:	00c96933          	or	s2,s2,a2
   18310:	00f7163b          	sllw	a2,a4,a5
   18314:	ff848793          	addi	a5,s1,-8
   18318:	02091513          	slli	a0,s2,0x20
   1831c:	0006071b          	sext.w	a4,a2
   18320:	04f47463          	bgeu	s0,a5,18368 <__b2d+0xd8>
   18324:	ff44a703          	lw	a4,-12(s1)
   18328:	00d7573b          	srlw	a4,a4,a3
   1832c:	00c76733          	or	a4,a4,a2
   18330:	0007071b          	sext.w	a4,a4
   18334:	0340006f          	j	18368 <__b2d+0xd8>
   18338:	00b00693          	li	a3,11
   1833c:	00d50e63          	beq	a0,a3,18358 <__b2d+0xc8>
   18340:	00f9153b          	sllw	a0,s2,a5
   18344:	3ff007b7          	lui	a5,0x3ff00
   18348:	00f56533          	or	a0,a0,a5
   1834c:	02051513          	slli	a0,a0,0x20
   18350:	00000713          	li	a4,0
   18354:	0140006f          	j	18368 <__b2d+0xd8>
   18358:	00000713          	li	a4,0
   1835c:	3ff00537          	lui	a0,0x3ff00
   18360:	00a96533          	or	a0,s2,a0
   18364:	02051513          	slli	a0,a0,0x20
   18368:	02813083          	ld	ra,40(sp)
   1836c:	02013403          	ld	s0,32(sp)
   18370:	02055513          	srli	a0,a0,0x20
   18374:	02071713          	slli	a4,a4,0x20
   18378:	02075713          	srli	a4,a4,0x20
   1837c:	02051513          	slli	a0,a0,0x20
   18380:	01813483          	ld	s1,24(sp)
   18384:	01013903          	ld	s2,16(sp)
   18388:	00813983          	ld	s3,8(sp)
   1838c:	00013a03          	ld	s4,0(sp)
   18390:	00e56533          	or	a0,a0,a4
   18394:	03010113          	addi	sp,sp,48
   18398:	00008067          	ret
   1839c:	00b00693          	li	a3,11
   183a0:	40a686bb          	subw	a3,a3,a0
   183a4:	00d957bb          	srlw	a5,s2,a3
   183a8:	3ff00637          	lui	a2,0x3ff00
   183ac:	00c7e7b3          	or	a5,a5,a2
   183b0:	02079513          	slli	a0,a5,0x20
   183b4:	00000793          	li	a5,0
   183b8:	01447663          	bgeu	s0,s4,183c4 <__b2d+0x134>
   183bc:	ff84a783          	lw	a5,-8(s1)
   183c0:	00d7d7bb          	srlw	a5,a5,a3
   183c4:	0157071b          	addiw	a4,a4,21 # 80015 <__BSS_END__+0x5b20d>
   183c8:	00e9173b          	sllw	a4,s2,a4
   183cc:	00e7e733          	or	a4,a5,a4
   183d0:	0007071b          	sext.w	a4,a4
   183d4:	f95ff06f          	j	18368 <__b2d+0xd8>

00000000000183d8 <__d2b>:
   183d8:	fc010113          	addi	sp,sp,-64
   183dc:	02813823          	sd	s0,48(sp)
   183e0:	00058413          	mv	s0,a1
   183e4:	00100593          	li	a1,1
   183e8:	03213023          	sd	s2,32(sp)
   183ec:	01413823          	sd	s4,16(sp)
   183f0:	02113c23          	sd	ra,56(sp)
   183f4:	02913423          	sd	s1,40(sp)
   183f8:	01313c23          	sd	s3,24(sp)
   183fc:	00060a13          	mv	s4,a2
   18400:	00068913          	mv	s2,a3
   18404:	fe5fe0ef          	jal	ra,173e8 <_Balloc>
   18408:	10050063          	beqz	a0,18508 <__d2b+0x130>
   1840c:	42045793          	srai	a5,s0,0x20
   18410:	0147d99b          	srliw	s3,a5,0x14
   18414:	7ff9f993          	andi	s3,s3,2047
   18418:	02c79793          	slli	a5,a5,0x2c
   1841c:	00050493          	mv	s1,a0
   18420:	02c7d793          	srli	a5,a5,0x2c
   18424:	00098663          	beqz	s3,18430 <__d2b+0x58>
   18428:	00100737          	lui	a4,0x100
   1842c:	00e7e7b3          	or	a5,a5,a4
   18430:	00f12623          	sw	a5,12(sp)
   18434:	0004041b          	sext.w	s0,s0
   18438:	06041063          	bnez	s0,18498 <__d2b+0xc0>
   1843c:	00c10513          	addi	a0,sp,12
   18440:	bd0ff0ef          	jal	ra,17810 <__lo0bits>
   18444:	00c12783          	lw	a5,12(sp)
   18448:	00100413          	li	s0,1
   1844c:	0084aa23          	sw	s0,20(s1)
   18450:	00f4ac23          	sw	a5,24(s1)
   18454:	0205051b          	addiw	a0,a0,32 # 3ff00020 <__BSS_END__+0x3fedb218>
   18458:	08098663          	beqz	s3,184e4 <__d2b+0x10c>
   1845c:	bcd9899b          	addiw	s3,s3,-1075
   18460:	00a989bb          	addw	s3,s3,a0
   18464:	03500413          	li	s0,53
   18468:	013a2023          	sw	s3,0(s4)
   1846c:	40a4053b          	subw	a0,s0,a0
   18470:	03813083          	ld	ra,56(sp)
   18474:	03013403          	ld	s0,48(sp)
   18478:	00a92023          	sw	a0,0(s2)
   1847c:	01813983          	ld	s3,24(sp)
   18480:	02013903          	ld	s2,32(sp)
   18484:	01013a03          	ld	s4,16(sp)
   18488:	00048513          	mv	a0,s1
   1848c:	02813483          	ld	s1,40(sp)
   18490:	04010113          	addi	sp,sp,64
   18494:	00008067          	ret
   18498:	00810513          	addi	a0,sp,8
   1849c:	00812423          	sw	s0,8(sp)
   184a0:	b70ff0ef          	jal	ra,17810 <__lo0bits>
   184a4:	00c12783          	lw	a5,12(sp)
   184a8:	00812703          	lw	a4,8(sp)
   184ac:	02050063          	beqz	a0,184cc <__d2b+0xf4>
   184b0:	02000693          	li	a3,32
   184b4:	40a686bb          	subw	a3,a3,a0
   184b8:	00d796bb          	sllw	a3,a5,a3
   184bc:	00d76733          	or	a4,a4,a3
   184c0:	00a7d7bb          	srlw	a5,a5,a0
   184c4:	0007071b          	sext.w	a4,a4
   184c8:	00f12623          	sw	a5,12(sp)
   184cc:	00f03433          	snez	s0,a5
   184d0:	00140413          	addi	s0,s0,1
   184d4:	00e4ac23          	sw	a4,24(s1)
   184d8:	00f4ae23          	sw	a5,28(s1)
   184dc:	0084aa23          	sw	s0,20(s1)
   184e0:	f6099ee3          	bnez	s3,1845c <__d2b+0x84>
   184e4:	bce5051b          	addiw	a0,a0,-1074
   184e8:	00241793          	slli	a5,s0,0x2
   184ec:	00aa2023          	sw	a0,0(s4)
   184f0:	00f487b3          	add	a5,s1,a5
   184f4:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedb20c>
   184f8:	0054141b          	slliw	s0,s0,0x5
   184fc:	a98ff0ef          	jal	ra,17794 <__hi0bits>
   18500:	40a4053b          	subw	a0,s0,a0
   18504:	f6dff06f          	j	18470 <__d2b+0x98>
   18508:	000226b7          	lui	a3,0x22
   1850c:	00022537          	lui	a0,0x22
   18510:	fd068693          	addi	a3,a3,-48 # 21fd0 <blanks.1+0x78>
   18514:	00000613          	li	a2,0
   18518:	30a00593          	li	a1,778
   1851c:	2c050513          	addi	a0,a0,704 # 222c0 <ezero+0x30>
   18520:	42c040ef          	jal	ra,1c94c <__assert_func>

0000000000018524 <__ratio>:
   18524:	fd010113          	addi	sp,sp,-48
   18528:	00913c23          	sd	s1,24(sp)
   1852c:	00058493          	mv	s1,a1
   18530:	00810593          	addi	a1,sp,8
   18534:	02113423          	sd	ra,40(sp)
   18538:	02813023          	sd	s0,32(sp)
   1853c:	01213823          	sd	s2,16(sp)
   18540:	00050913          	mv	s2,a0
   18544:	d4dff0ef          	jal	ra,18290 <__b2d>
   18548:	00c10593          	addi	a1,sp,12
   1854c:	00050413          	mv	s0,a0
   18550:	00048513          	mv	a0,s1
   18554:	d3dff0ef          	jal	ra,18290 <__b2d>
   18558:	01492783          	lw	a5,20(s2)
   1855c:	0144a603          	lw	a2,20(s1)
   18560:	00812703          	lw	a4,8(sp)
   18564:	00c12683          	lw	a3,12(sp)
   18568:	40c787bb          	subw	a5,a5,a2
   1856c:	0057979b          	slliw	a5,a5,0x5
   18570:	40d7073b          	subw	a4,a4,a3
   18574:	00e7873b          	addw	a4,a5,a4
   18578:	00070793          	mv	a5,a4
   1857c:	00050593          	mv	a1,a0
   18580:	04e05263          	blez	a4,185c4 <__ratio+0xa0>
   18584:	02045713          	srli	a4,s0,0x20
   18588:	0147979b          	slliw	a5,a5,0x14
   1858c:	00e787bb          	addw	a5,a5,a4
   18590:	fff00713          	li	a4,-1
   18594:	02075713          	srli	a4,a4,0x20
   18598:	02079793          	slli	a5,a5,0x20
   1859c:	00877733          	and	a4,a4,s0
   185a0:	00f76433          	or	s0,a4,a5
   185a4:	00040513          	mv	a0,s0
   185a8:	035070ef          	jal	ra,1fddc <__divdf3>
   185ac:	02813083          	ld	ra,40(sp)
   185b0:	02013403          	ld	s0,32(sp)
   185b4:	01813483          	ld	s1,24(sp)
   185b8:	01013903          	ld	s2,16(sp)
   185bc:	03010113          	addi	sp,sp,48
   185c0:	00008067          	ret
   185c4:	02055713          	srli	a4,a0,0x20
   185c8:	0147979b          	slliw	a5,a5,0x14
   185cc:	40f707bb          	subw	a5,a4,a5
   185d0:	fff00713          	li	a4,-1
   185d4:	02075713          	srli	a4,a4,0x20
   185d8:	02079793          	slli	a5,a5,0x20
   185dc:	00a775b3          	and	a1,a4,a0
   185e0:	00f5e5b3          	or	a1,a1,a5
   185e4:	fc1ff06f          	j	185a4 <__ratio+0x80>

00000000000185e8 <_mprec_log10>:
   185e8:	fe010113          	addi	sp,sp,-32
   185ec:	00813823          	sd	s0,16(sp)
   185f0:	00113c23          	sd	ra,24(sp)
   185f4:	00913423          	sd	s1,8(sp)
   185f8:	01700793          	li	a5,23
   185fc:	00050413          	mv	s0,a0
   18600:	02a7d863          	bge	a5,a0,18630 <_mprec_log10+0x48>
   18604:	7281b503          	ld	a0,1832(gp) # 24d30 <__SDATA_BEGIN__+0x10>
   18608:	7301b483          	ld	s1,1840(gp) # 24d38 <__SDATA_BEGIN__+0x18>
   1860c:	00048593          	mv	a1,s1
   18610:	fff4041b          	addiw	s0,s0,-1
   18614:	36d070ef          	jal	ra,20180 <__muldf3>
   18618:	fe041ae3          	bnez	s0,1860c <_mprec_log10+0x24>
   1861c:	01813083          	ld	ra,24(sp)
   18620:	01013403          	ld	s0,16(sp)
   18624:	00813483          	ld	s1,8(sp)
   18628:	02010113          	addi	sp,sp,32
   1862c:	00008067          	ret
   18630:	000227b7          	lui	a5,0x22
   18634:	00351413          	slli	s0,a0,0x3
   18638:	37078793          	addi	a5,a5,880 # 22370 <__mprec_tens>
   1863c:	01813083          	ld	ra,24(sp)
   18640:	008787b3          	add	a5,a5,s0
   18644:	01013403          	ld	s0,16(sp)
   18648:	0007b503          	ld	a0,0(a5)
   1864c:	00813483          	ld	s1,8(sp)
   18650:	02010113          	addi	sp,sp,32
   18654:	00008067          	ret

0000000000018658 <__copybits>:
   18658:	01462683          	lw	a3,20(a2) # 3ff00014 <__BSS_END__+0x3fedb20c>
   1865c:	fff5859b          	addiw	a1,a1,-1
   18660:	4055d59b          	sraiw	a1,a1,0x5
   18664:	0015859b          	addiw	a1,a1,1
   18668:	01860793          	addi	a5,a2,24
   1866c:	00269693          	slli	a3,a3,0x2
   18670:	00259593          	slli	a1,a1,0x2
   18674:	00d786b3          	add	a3,a5,a3
   18678:	00b505b3          	add	a1,a0,a1
   1867c:	02d7f863          	bgeu	a5,a3,186ac <__copybits+0x54>
   18680:	00050713          	mv	a4,a0
   18684:	0007a803          	lw	a6,0(a5)
   18688:	00478793          	addi	a5,a5,4
   1868c:	00470713          	addi	a4,a4,4 # 100004 <__BSS_END__+0xdb1fc>
   18690:	ff072e23          	sw	a6,-4(a4)
   18694:	fed7e8e3          	bltu	a5,a3,18684 <__copybits+0x2c>
   18698:	40c687b3          	sub	a5,a3,a2
   1869c:	fe778793          	addi	a5,a5,-25
   186a0:	ffc7f793          	andi	a5,a5,-4
   186a4:	00478793          	addi	a5,a5,4
   186a8:	00f50533          	add	a0,a0,a5
   186ac:	00b57863          	bgeu	a0,a1,186bc <__copybits+0x64>
   186b0:	00450513          	addi	a0,a0,4
   186b4:	fe052e23          	sw	zero,-4(a0)
   186b8:	feb56ce3          	bltu	a0,a1,186b0 <__copybits+0x58>
   186bc:	00008067          	ret

00000000000186c0 <__any_on>:
   186c0:	01452703          	lw	a4,20(a0)
   186c4:	4055d613          	srai	a2,a1,0x5
   186c8:	01850693          	addi	a3,a0,24
   186cc:	02c75263          	bge	a4,a2,186f0 <__any_on+0x30>
   186d0:	00271713          	slli	a4,a4,0x2
   186d4:	00e687b3          	add	a5,a3,a4
   186d8:	04f6f263          	bgeu	a3,a5,1871c <__any_on+0x5c>
   186dc:	ffc7a703          	lw	a4,-4(a5)
   186e0:	ffc78793          	addi	a5,a5,-4
   186e4:	fe070ae3          	beqz	a4,186d8 <__any_on+0x18>
   186e8:	00100513          	li	a0,1
   186ec:	00008067          	ret
   186f0:	00261793          	slli	a5,a2,0x2
   186f4:	00f687b3          	add	a5,a3,a5
   186f8:	fee650e3          	bge	a2,a4,186d8 <__any_on+0x18>
   186fc:	01f5f593          	andi	a1,a1,31
   18700:	fc058ce3          	beqz	a1,186d8 <__any_on+0x18>
   18704:	0007a603          	lw	a2,0(a5)
   18708:	00100513          	li	a0,1
   1870c:	00b6573b          	srlw	a4,a2,a1
   18710:	00b7173b          	sllw	a4,a4,a1
   18714:	fcc702e3          	beq	a4,a2,186d8 <__any_on+0x18>
   18718:	00008067          	ret
   1871c:	00000513          	li	a0,0
   18720:	00008067          	ret

0000000000018724 <_sbrk_r>:
   18724:	fe010113          	addi	sp,sp,-32
   18728:	00813823          	sd	s0,16(sp)
   1872c:	00913423          	sd	s1,8(sp)
   18730:	00050413          	mv	s0,a0
   18734:	00058513          	mv	a0,a1
   18738:	00113c23          	sd	ra,24(sp)
   1873c:	7801a823          	sw	zero,1936(gp) # 24d98 <errno>
   18740:	570070ef          	jal	ra,1fcb0 <_sbrk>
   18744:	fff00793          	li	a5,-1
   18748:	00f50c63          	beq	a0,a5,18760 <_sbrk_r+0x3c>
   1874c:	01813083          	ld	ra,24(sp)
   18750:	01013403          	ld	s0,16(sp)
   18754:	00813483          	ld	s1,8(sp)
   18758:	02010113          	addi	sp,sp,32
   1875c:	00008067          	ret
   18760:	7901a783          	lw	a5,1936(gp) # 24d98 <errno>
   18764:	fe0784e3          	beqz	a5,1874c <_sbrk_r+0x28>
   18768:	01813083          	ld	ra,24(sp)
   1876c:	00f42023          	sw	a5,0(s0)
   18770:	01013403          	ld	s0,16(sp)
   18774:	00813483          	ld	s1,8(sp)
   18778:	02010113          	addi	sp,sp,32
   1877c:	00008067          	ret

0000000000018780 <frexp>:
   18780:	fe010113          	addi	sp,sp,-32
   18784:	00813823          	sd	s0,16(sp)
   18788:	80000437          	lui	s0,0x80000
   1878c:	00113c23          	sd	ra,24(sp)
   18790:	00913423          	sd	s1,8(sp)
   18794:	42055693          	srai	a3,a0,0x20
   18798:	fff44413          	not	s0,s0
   1879c:	0086f733          	and	a4,a3,s0
   187a0:	0005a023          	sw	zero,0(a1)
   187a4:	7ff00637          	lui	a2,0x7ff00
   187a8:	00050793          	mv	a5,a0
   187ac:	06c77263          	bgeu	a4,a2,18810 <frexp+0x90>
   187b0:	00a76633          	or	a2,a4,a0
   187b4:	0006061b          	sext.w	a2,a2
   187b8:	04060c63          	beqz	a2,18810 <frexp+0x90>
   187bc:	7ff00637          	lui	a2,0x7ff00
   187c0:	00c6f633          	and	a2,a3,a2
   187c4:	00058493          	mv	s1,a1
   187c8:	06060063          	beqz	a2,18828 <frexp+0xa8>
   187cc:	0006869b          	sext.w	a3,a3
   187d0:	0007071b          	sext.w	a4,a4
   187d4:	00000593          	li	a1,0
   187d8:	80100637          	lui	a2,0x80100
   187dc:	fff60613          	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800db1f7>
   187e0:	00c6f6b3          	and	a3,a3,a2
   187e4:	3fe00637          	lui	a2,0x3fe00
   187e8:	00c6e6b3          	or	a3,a3,a2
   187ec:	4147571b          	sraiw	a4,a4,0x14
   187f0:	fff00613          	li	a2,-1
   187f4:	c027071b          	addiw	a4,a4,-1022
   187f8:	02065613          	srli	a2,a2,0x20
   187fc:	00b7073b          	addw	a4,a4,a1
   18800:	02069693          	slli	a3,a3,0x20
   18804:	00f677b3          	and	a5,a2,a5
   18808:	00e4a023          	sw	a4,0(s1)
   1880c:	00d7e7b3          	or	a5,a5,a3
   18810:	01813083          	ld	ra,24(sp)
   18814:	01013403          	ld	s0,16(sp)
   18818:	00813483          	ld	s1,8(sp)
   1881c:	00078513          	mv	a0,a5
   18820:	02010113          	addi	sp,sp,32
   18824:	00008067          	ret
   18828:	7381b583          	ld	a1,1848(gp) # 24d40 <__SDATA_BEGIN__+0x20>
   1882c:	155070ef          	jal	ra,20180 <__muldf3>
   18830:	42055713          	srai	a4,a0,0x20
   18834:	00070693          	mv	a3,a4
   18838:	00050793          	mv	a5,a0
   1883c:	00877733          	and	a4,a4,s0
   18840:	fca00593          	li	a1,-54
   18844:	f95ff06f          	j	187d8 <frexp+0x58>

0000000000018848 <_sprintf_r>:
   18848:	f0010113          	addi	sp,sp,-256
   1884c:	0d810e93          	addi	t4,sp,216
   18850:	0ef13423          	sd	a5,232(sp)
   18854:	80000337          	lui	t1,0x80000
   18858:	ffff07b7          	lui	a5,0xffff0
   1885c:	00058e13          	mv	t3,a1
   18860:	fff34313          	not	t1,t1
   18864:	0cd13c23          	sd	a3,216(sp)
   18868:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb400>
   1886c:	01010593          	addi	a1,sp,16
   18870:	000e8693          	mv	a3,t4
   18874:	0c113423          	sd	ra,200(sp)
   18878:	02f12023          	sw	a5,32(sp)
   1887c:	0ee13023          	sd	a4,224(sp)
   18880:	0f013823          	sd	a6,240(sp)
   18884:	0f113c23          	sd	a7,248(sp)
   18888:	01c13823          	sd	t3,16(sp)
   1888c:	03c13423          	sd	t3,40(sp)
   18890:	00612e23          	sw	t1,28(sp)
   18894:	02612823          	sw	t1,48(sp)
   18898:	01d13423          	sd	t4,8(sp)
   1889c:	570000ef          	jal	ra,18e0c <_svfprintf_r>
   188a0:	01013783          	ld	a5,16(sp)
   188a4:	00078023          	sb	zero,0(a5)
   188a8:	0c813083          	ld	ra,200(sp)
   188ac:	10010113          	addi	sp,sp,256
   188b0:	00008067          	ret

00000000000188b4 <sprintf>:
   188b4:	00050e13          	mv	t3,a0
   188b8:	f0010113          	addi	sp,sp,-256
   188bc:	7581b503          	ld	a0,1880(gp) # 24d60 <_impure_ptr>
   188c0:	0d010e93          	addi	t4,sp,208
   188c4:	0ef13423          	sd	a5,232(sp)
   188c8:	80000337          	lui	t1,0x80000
   188cc:	ffff07b7          	lui	a5,0xffff0
   188d0:	fff34313          	not	t1,t1
   188d4:	0cc13823          	sd	a2,208(sp)
   188d8:	0cd13c23          	sd	a3,216(sp)
   188dc:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb400>
   188e0:	00058613          	mv	a2,a1
   188e4:	000e8693          	mv	a3,t4
   188e8:	01010593          	addi	a1,sp,16
   188ec:	0c113423          	sd	ra,200(sp)
   188f0:	02f12023          	sw	a5,32(sp)
   188f4:	0ee13023          	sd	a4,224(sp)
   188f8:	0f013823          	sd	a6,240(sp)
   188fc:	0f113c23          	sd	a7,248(sp)
   18900:	01c13823          	sd	t3,16(sp)
   18904:	03c13423          	sd	t3,40(sp)
   18908:	00612e23          	sw	t1,28(sp)
   1890c:	02612823          	sw	t1,48(sp)
   18910:	01d13423          	sd	t4,8(sp)
   18914:	4f8000ef          	jal	ra,18e0c <_svfprintf_r>
   18918:	01013783          	ld	a5,16(sp)
   1891c:	00078023          	sb	zero,0(a5)
   18920:	0c813083          	ld	ra,200(sp)
   18924:	10010113          	addi	sp,sp,256
   18928:	00008067          	ret

000000000001892c <__sread>:
   1892c:	ff010113          	addi	sp,sp,-16
   18930:	00813023          	sd	s0,0(sp)
   18934:	00058413          	mv	s0,a1
   18938:	01259583          	lh	a1,18(a1)
   1893c:	00113423          	sd	ra,8(sp)
   18940:	67d040ef          	jal	ra,1d7bc <_read_r>
   18944:	02054063          	bltz	a0,18964 <__sread+0x38>
   18948:	09043783          	ld	a5,144(s0) # ffffffff80000090 <__BSS_END__+0xffffffff7ffdb288>
   1894c:	00813083          	ld	ra,8(sp)
   18950:	00a787b3          	add	a5,a5,a0
   18954:	08f43823          	sd	a5,144(s0)
   18958:	00013403          	ld	s0,0(sp)
   1895c:	01010113          	addi	sp,sp,16
   18960:	00008067          	ret
   18964:	01045783          	lhu	a5,16(s0)
   18968:	fffff737          	lui	a4,0xfffff
   1896c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda1f7>
   18970:	00e7f7b3          	and	a5,a5,a4
   18974:	00813083          	ld	ra,8(sp)
   18978:	00f41823          	sh	a5,16(s0)
   1897c:	00013403          	ld	s0,0(sp)
   18980:	01010113          	addi	sp,sp,16
   18984:	00008067          	ret

0000000000018988 <__seofread>:
   18988:	00000513          	li	a0,0
   1898c:	00008067          	ret

0000000000018990 <__swrite>:
   18990:	01059783          	lh	a5,16(a1)
   18994:	fd010113          	addi	sp,sp,-48
   18998:	02813023          	sd	s0,32(sp)
   1899c:	00913c23          	sd	s1,24(sp)
   189a0:	01213823          	sd	s2,16(sp)
   189a4:	01313423          	sd	s3,8(sp)
   189a8:	02113423          	sd	ra,40(sp)
   189ac:	1007f713          	andi	a4,a5,256
   189b0:	00058413          	mv	s0,a1
   189b4:	00050493          	mv	s1,a0
   189b8:	00060913          	mv	s2,a2
   189bc:	00068993          	mv	s3,a3
   189c0:	04071063          	bnez	a4,18a00 <__swrite+0x70>
   189c4:	fffff737          	lui	a4,0xfffff
   189c8:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda1f7>
   189cc:	00e7f7b3          	and	a5,a5,a4
   189d0:	01241583          	lh	a1,18(s0)
   189d4:	00f41823          	sh	a5,16(s0)
   189d8:	02013403          	ld	s0,32(sp)
   189dc:	02813083          	ld	ra,40(sp)
   189e0:	00098693          	mv	a3,s3
   189e4:	00090613          	mv	a2,s2
   189e8:	00813983          	ld	s3,8(sp)
   189ec:	01013903          	ld	s2,16(sp)
   189f0:	00048513          	mv	a0,s1
   189f4:	01813483          	ld	s1,24(sp)
   189f8:	03010113          	addi	sp,sp,48
   189fc:	6e90306f          	j	1c8e4 <_write_r>
   18a00:	01259583          	lh	a1,18(a1)
   18a04:	00200693          	li	a3,2
   18a08:	00000613          	li	a2,0
   18a0c:	289040ef          	jal	ra,1d494 <_lseek_r>
   18a10:	01041783          	lh	a5,16(s0)
   18a14:	fb1ff06f          	j	189c4 <__swrite+0x34>

0000000000018a18 <__sseek>:
   18a18:	ff010113          	addi	sp,sp,-16
   18a1c:	00813023          	sd	s0,0(sp)
   18a20:	00058413          	mv	s0,a1
   18a24:	01259583          	lh	a1,18(a1)
   18a28:	00113423          	sd	ra,8(sp)
   18a2c:	269040ef          	jal	ra,1d494 <_lseek_r>
   18a30:	fff00793          	li	a5,-1
   18a34:	02f50863          	beq	a0,a5,18a64 <__sseek+0x4c>
   18a38:	01045783          	lhu	a5,16(s0)
   18a3c:	00001737          	lui	a4,0x1
   18a40:	00813083          	ld	ra,8(sp)
   18a44:	00e7e7b3          	or	a5,a5,a4
   18a48:	0107979b          	slliw	a5,a5,0x10
   18a4c:	4107d79b          	sraiw	a5,a5,0x10
   18a50:	08a43823          	sd	a0,144(s0)
   18a54:	00f41823          	sh	a5,16(s0)
   18a58:	00013403          	ld	s0,0(sp)
   18a5c:	01010113          	addi	sp,sp,16
   18a60:	00008067          	ret
   18a64:	01045783          	lhu	a5,16(s0)
   18a68:	fffff737          	lui	a4,0xfffff
   18a6c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda1f7>
   18a70:	00e7f7b3          	and	a5,a5,a4
   18a74:	0107979b          	slliw	a5,a5,0x10
   18a78:	4107d79b          	sraiw	a5,a5,0x10
   18a7c:	00813083          	ld	ra,8(sp)
   18a80:	00f41823          	sh	a5,16(s0)
   18a84:	00013403          	ld	s0,0(sp)
   18a88:	01010113          	addi	sp,sp,16
   18a8c:	00008067          	ret

0000000000018a90 <__sclose>:
   18a90:	01259583          	lh	a1,18(a1)
   18a94:	0f40406f          	j	1cb88 <_close_r>

0000000000018a98 <strcmp>:
   18a98:	00b56733          	or	a4,a0,a1
   18a9c:	fff00393          	li	t2,-1
   18aa0:	00777713          	andi	a4,a4,7
   18aa4:	0c071c63          	bnez	a4,18b7c <strcmp+0xe4>
   18aa8:	0000c797          	auipc	a5,0xc
   18aac:	2a07b783          	ld	a5,672(a5) # 24d48 <mask>
   18ab0:	00053603          	ld	a2,0(a0)
   18ab4:	0005b683          	ld	a3,0(a1)
   18ab8:	00f672b3          	and	t0,a2,a5
   18abc:	00f66333          	or	t1,a2,a5
   18ac0:	00f282b3          	add	t0,t0,a5
   18ac4:	0062e2b3          	or	t0,t0,t1
   18ac8:	0c729e63          	bne	t0,t2,18ba4 <strcmp+0x10c>
   18acc:	04d61663          	bne	a2,a3,18b18 <strcmp+0x80>
   18ad0:	00853603          	ld	a2,8(a0)
   18ad4:	0085b683          	ld	a3,8(a1)
   18ad8:	00f672b3          	and	t0,a2,a5
   18adc:	00f66333          	or	t1,a2,a5
   18ae0:	00f282b3          	add	t0,t0,a5
   18ae4:	0062e2b3          	or	t0,t0,t1
   18ae8:	0a729a63          	bne	t0,t2,18b9c <strcmp+0x104>
   18aec:	02d61663          	bne	a2,a3,18b18 <strcmp+0x80>
   18af0:	01053603          	ld	a2,16(a0)
   18af4:	0105b683          	ld	a3,16(a1)
   18af8:	00f672b3          	and	t0,a2,a5
   18afc:	00f66333          	or	t1,a2,a5
   18b00:	00f282b3          	add	t0,t0,a5
   18b04:	0062e2b3          	or	t0,t0,t1
   18b08:	0a729463          	bne	t0,t2,18bb0 <strcmp+0x118>
   18b0c:	01850513          	addi	a0,a0,24
   18b10:	01858593          	addi	a1,a1,24
   18b14:	f8d60ee3          	beq	a2,a3,18ab0 <strcmp+0x18>
   18b18:	03061713          	slli	a4,a2,0x30
   18b1c:	03069793          	slli	a5,a3,0x30
   18b20:	02f71a63          	bne	a4,a5,18b54 <strcmp+0xbc>
   18b24:	02061713          	slli	a4,a2,0x20
   18b28:	02069793          	slli	a5,a3,0x20
   18b2c:	02f71463          	bne	a4,a5,18b54 <strcmp+0xbc>
   18b30:	01061713          	slli	a4,a2,0x10
   18b34:	01069793          	slli	a5,a3,0x10
   18b38:	00f71e63          	bne	a4,a5,18b54 <strcmp+0xbc>
   18b3c:	03065713          	srli	a4,a2,0x30
   18b40:	0306d793          	srli	a5,a3,0x30
   18b44:	40f70533          	sub	a0,a4,a5
   18b48:	0ff57593          	zext.b	a1,a0
   18b4c:	02059063          	bnez	a1,18b6c <strcmp+0xd4>
   18b50:	00008067          	ret
   18b54:	03075713          	srli	a4,a4,0x30
   18b58:	0307d793          	srli	a5,a5,0x30
   18b5c:	40f70533          	sub	a0,a4,a5
   18b60:	0ff57593          	zext.b	a1,a0
   18b64:	00059463          	bnez	a1,18b6c <strcmp+0xd4>
   18b68:	00008067          	ret
   18b6c:	0ff77713          	zext.b	a4,a4
   18b70:	0ff7f793          	zext.b	a5,a5
   18b74:	40f70533          	sub	a0,a4,a5
   18b78:	00008067          	ret
   18b7c:	00054603          	lbu	a2,0(a0)
   18b80:	0005c683          	lbu	a3,0(a1)
   18b84:	00150513          	addi	a0,a0,1
   18b88:	00158593          	addi	a1,a1,1
   18b8c:	00d61463          	bne	a2,a3,18b94 <strcmp+0xfc>
   18b90:	fe0616e3          	bnez	a2,18b7c <strcmp+0xe4>
   18b94:	40d60533          	sub	a0,a2,a3
   18b98:	00008067          	ret
   18b9c:	00850513          	addi	a0,a0,8
   18ba0:	00858593          	addi	a1,a1,8
   18ba4:	fcd61ce3          	bne	a2,a3,18b7c <strcmp+0xe4>
   18ba8:	00000513          	li	a0,0
   18bac:	00008067          	ret
   18bb0:	01050513          	addi	a0,a0,16
   18bb4:	01058593          	addi	a1,a1,16
   18bb8:	fcd612e3          	bne	a2,a3,18b7c <strcmp+0xe4>
   18bbc:	00000513          	li	a0,0
   18bc0:	00008067          	ret

0000000000018bc4 <strcpy>:
   18bc4:	00b567b3          	or	a5,a0,a1
   18bc8:	0077f793          	andi	a5,a5,7
   18bcc:	0a079463          	bnez	a5,18c74 <strcpy+0xb0>
   18bd0:	7401b683          	ld	a3,1856(gp) # 24d48 <mask>
   18bd4:	0005b703          	ld	a4,0(a1)
   18bd8:	fff00613          	li	a2,-1
   18bdc:	00d777b3          	and	a5,a4,a3
   18be0:	00d787b3          	add	a5,a5,a3
   18be4:	00e7e7b3          	or	a5,a5,a4
   18be8:	00d7e7b3          	or	a5,a5,a3
   18bec:	0ac79263          	bne	a5,a2,18c90 <strcpy+0xcc>
   18bf0:	00050613          	mv	a2,a0
   18bf4:	fff00813          	li	a6,-1
   18bf8:	00e63023          	sd	a4,0(a2) # 3fe00000 <__BSS_END__+0x3fddb1f8>
   18bfc:	0085b703          	ld	a4,8(a1)
   18c00:	00858593          	addi	a1,a1,8
   18c04:	00860613          	addi	a2,a2,8
   18c08:	00d777b3          	and	a5,a4,a3
   18c0c:	00d787b3          	add	a5,a5,a3
   18c10:	00e7e7b3          	or	a5,a5,a4
   18c14:	00d7e7b3          	or	a5,a5,a3
   18c18:	ff0780e3          	beq	a5,a6,18bf8 <strcpy+0x34>
   18c1c:	0005c783          	lbu	a5,0(a1)
   18c20:	0015c703          	lbu	a4,1(a1)
   18c24:	0025c683          	lbu	a3,2(a1)
   18c28:	00f60023          	sb	a5,0(a2)
   18c2c:	04078263          	beqz	a5,18c70 <strcpy+0xac>
   18c30:	00e600a3          	sb	a4,1(a2)
   18c34:	02070e63          	beqz	a4,18c70 <strcpy+0xac>
   18c38:	0035c783          	lbu	a5,3(a1)
   18c3c:	00d60123          	sb	a3,2(a2)
   18c40:	02068863          	beqz	a3,18c70 <strcpy+0xac>
   18c44:	0045c703          	lbu	a4,4(a1)
   18c48:	00f601a3          	sb	a5,3(a2)
   18c4c:	02078263          	beqz	a5,18c70 <strcpy+0xac>
   18c50:	0055c783          	lbu	a5,5(a1)
   18c54:	00e60223          	sb	a4,4(a2)
   18c58:	00070c63          	beqz	a4,18c70 <strcpy+0xac>
   18c5c:	0065c703          	lbu	a4,6(a1)
   18c60:	00f602a3          	sb	a5,5(a2)
   18c64:	00078663          	beqz	a5,18c70 <strcpy+0xac>
   18c68:	00e60323          	sb	a4,6(a2)
   18c6c:	02071663          	bnez	a4,18c98 <strcpy+0xd4>
   18c70:	00008067          	ret
   18c74:	00050793          	mv	a5,a0
   18c78:	0005c703          	lbu	a4,0(a1)
   18c7c:	00178793          	addi	a5,a5,1
   18c80:	00158593          	addi	a1,a1,1
   18c84:	fee78fa3          	sb	a4,-1(a5)
   18c88:	fe0718e3          	bnez	a4,18c78 <strcpy+0xb4>
   18c8c:	00008067          	ret
   18c90:	00050613          	mv	a2,a0
   18c94:	f89ff06f          	j	18c1c <strcpy+0x58>
   18c98:	000603a3          	sb	zero,7(a2)
   18c9c:	00008067          	ret

0000000000018ca0 <strlen>:
   18ca0:	00757793          	andi	a5,a0,7
   18ca4:	00050713          	mv	a4,a0
   18ca8:	06079a63          	bnez	a5,18d1c <strlen+0x7c>
   18cac:	7401b683          	ld	a3,1856(gp) # 24d48 <mask>
   18cb0:	fff00593          	li	a1,-1
   18cb4:	00073603          	ld	a2,0(a4)
   18cb8:	00870713          	addi	a4,a4,8
   18cbc:	00d677b3          	and	a5,a2,a3
   18cc0:	00d787b3          	add	a5,a5,a3
   18cc4:	00c7e7b3          	or	a5,a5,a2
   18cc8:	00d7e7b3          	or	a5,a5,a3
   18ccc:	feb784e3          	beq	a5,a1,18cb4 <strlen+0x14>
   18cd0:	ff874683          	lbu	a3,-8(a4)
   18cd4:	40a707b3          	sub	a5,a4,a0
   18cd8:	06068463          	beqz	a3,18d40 <strlen+0xa0>
   18cdc:	ff974683          	lbu	a3,-7(a4)
   18ce0:	04068c63          	beqz	a3,18d38 <strlen+0x98>
   18ce4:	ffa74683          	lbu	a3,-6(a4)
   18ce8:	06068463          	beqz	a3,18d50 <strlen+0xb0>
   18cec:	ffb74683          	lbu	a3,-5(a4)
   18cf0:	04068c63          	beqz	a3,18d48 <strlen+0xa8>
   18cf4:	ffc74683          	lbu	a3,-4(a4)
   18cf8:	06068063          	beqz	a3,18d58 <strlen+0xb8>
   18cfc:	ffd74683          	lbu	a3,-3(a4)
   18d00:	06068063          	beqz	a3,18d60 <strlen+0xc0>
   18d04:	ffe74503          	lbu	a0,-2(a4)
   18d08:	00a03533          	snez	a0,a0
   18d0c:	00f50533          	add	a0,a0,a5
   18d10:	ffe50513          	addi	a0,a0,-2
   18d14:	00008067          	ret
   18d18:	f8068ae3          	beqz	a3,18cac <strlen+0xc>
   18d1c:	00074783          	lbu	a5,0(a4)
   18d20:	00170713          	addi	a4,a4,1
   18d24:	00777693          	andi	a3,a4,7
   18d28:	fe0798e3          	bnez	a5,18d18 <strlen+0x78>
   18d2c:	40a70733          	sub	a4,a4,a0
   18d30:	fff70513          	addi	a0,a4,-1
   18d34:	00008067          	ret
   18d38:	ff978513          	addi	a0,a5,-7
   18d3c:	00008067          	ret
   18d40:	ff878513          	addi	a0,a5,-8
   18d44:	00008067          	ret
   18d48:	ffb78513          	addi	a0,a5,-5
   18d4c:	00008067          	ret
   18d50:	ffa78513          	addi	a0,a5,-6
   18d54:	00008067          	ret
   18d58:	ffc78513          	addi	a0,a5,-4
   18d5c:	00008067          	ret
   18d60:	ffd78513          	addi	a0,a5,-3
   18d64:	00008067          	ret

0000000000018d68 <strncpy>:
   18d68:	00b567b3          	or	a5,a0,a1
   18d6c:	0077f793          	andi	a5,a5,7
   18d70:	00079663          	bnez	a5,18d7c <strncpy+0x14>
   18d74:	00700793          	li	a5,7
   18d78:	04c7e663          	bltu	a5,a2,18dc4 <strncpy+0x5c>
   18d7c:	00050713          	mv	a4,a0
   18d80:	01c0006f          	j	18d9c <strncpy+0x34>
   18d84:	fff5c683          	lbu	a3,-1(a1)
   18d88:	fff60813          	addi	a6,a2,-1
   18d8c:	fed78fa3          	sb	a3,-1(a5)
   18d90:	00068e63          	beqz	a3,18dac <strncpy+0x44>
   18d94:	00078713          	mv	a4,a5
   18d98:	00080613          	mv	a2,a6
   18d9c:	00158593          	addi	a1,a1,1
   18da0:	00170793          	addi	a5,a4,1
   18da4:	fe0610e3          	bnez	a2,18d84 <strncpy+0x1c>
   18da8:	00008067          	ret
   18dac:	00c70733          	add	a4,a4,a2
   18db0:	04080c63          	beqz	a6,18e08 <strncpy+0xa0>
   18db4:	00178793          	addi	a5,a5,1
   18db8:	fe078fa3          	sb	zero,-1(a5)
   18dbc:	fee79ce3          	bne	a5,a4,18db4 <strncpy+0x4c>
   18dc0:	00008067          	ret
   18dc4:	7181b303          	ld	t1,1816(gp) # 24d20 <__SDATA_BEGIN__>
   18dc8:	7201b883          	ld	a7,1824(gp) # 24d28 <__SDATA_BEGIN__+0x8>
   18dcc:	00050713          	mv	a4,a0
   18dd0:	00700e13          	li	t3,7
   18dd4:	0180006f          	j	18dec <strncpy+0x84>
   18dd8:	00d73023          	sd	a3,0(a4)
   18ddc:	ff860613          	addi	a2,a2,-8
   18de0:	00870713          	addi	a4,a4,8
   18de4:	00858593          	addi	a1,a1,8
   18de8:	face7ae3          	bgeu	t3,a2,18d9c <strncpy+0x34>
   18dec:	0005b683          	ld	a3,0(a1)
   18df0:	006687b3          	add	a5,a3,t1
   18df4:	fff6c813          	not	a6,a3
   18df8:	0107f7b3          	and	a5,a5,a6
   18dfc:	0117f7b3          	and	a5,a5,a7
   18e00:	fc078ce3          	beqz	a5,18dd8 <strncpy+0x70>
   18e04:	f99ff06f          	j	18d9c <strncpy+0x34>
   18e08:	00008067          	ret

0000000000018e0c <_svfprintf_r>:
   18e0c:	d9010113          	addi	sp,sp,-624
   18e10:	26113423          	sd	ra,616(sp)
   18e14:	26813023          	sd	s0,608(sp)
   18e18:	25213823          	sd	s2,592(sp)
   18e1c:	00058413          	mv	s0,a1
   18e20:	00b13023          	sd	a1,0(sp)
   18e24:	00060913          	mv	s2,a2
   18e28:	02d13023          	sd	a3,32(sp)
   18e2c:	24913c23          	sd	s1,600(sp)
   18e30:	25313423          	sd	s3,584(sp)
   18e34:	25413023          	sd	s4,576(sp)
   18e38:	23513c23          	sd	s5,568(sp)
   18e3c:	23613823          	sd	s6,560(sp)
   18e40:	23713423          	sd	s7,552(sp)
   18e44:	23813023          	sd	s8,544(sp)
   18e48:	21913c23          	sd	s9,536(sp)
   18e4c:	21a13823          	sd	s10,528(sp)
   18e50:	21b13423          	sd	s11,520(sp)
   18e54:	04a13823          	sd	a0,80(sp)
   18e58:	901fd0ef          	jal	ra,16758 <_localeconv_r>
   18e5c:	00053703          	ld	a4,0(a0)
   18e60:	00070513          	mv	a0,a4
   18e64:	06e13023          	sd	a4,96(sp)
   18e68:	e39ff0ef          	jal	ra,18ca0 <strlen>
   18e6c:	01045703          	lhu	a4,16(s0)
   18e70:	0e013823          	sd	zero,240(sp)
   18e74:	0e013c23          	sd	zero,248(sp)
   18e78:	08077713          	andi	a4,a4,128
   18e7c:	04a13c23          	sd	a0,88(sp)
   18e80:	00070863          	beqz	a4,18e90 <_svfprintf_r+0x84>
   18e84:	01843703          	ld	a4,24(s0)
   18e88:	00071463          	bnez	a4,18e90 <_svfprintf_r+0x84>
   18e8c:	3540106f          	j	1a1e0 <_svfprintf_r+0x13d4>
   18e90:	18010793          	addi	a5,sp,384
   18e94:	00022737          	lui	a4,0x22
   18e98:	00078313          	mv	t1,a5
   18e9c:	10f13023          	sd	a5,256(sp)
   18ea0:	00090b13          	mv	s6,s2
   18ea4:	43870793          	addi	a5,a4,1080 # 22438 <__mprec_tens+0xc8>
   18ea8:	00022737          	lui	a4,0x22
   18eac:	02f13423          	sd	a5,40(sp)
   18eb0:	64070793          	addi	a5,a4,1600 # 22640 <zeroes.0>
   18eb4:	000b4703          	lbu	a4,0(s6)
   18eb8:	10013823          	sd	zero,272(sp)
   18ebc:	10012423          	sw	zero,264(sp)
   18ec0:	02013c23          	sd	zero,56(sp)
   18ec4:	06013423          	sd	zero,104(sp)
   18ec8:	06013823          	sd	zero,112(sp)
   18ecc:	06013c23          	sd	zero,120(sp)
   18ed0:	08013023          	sd	zero,128(sp)
   18ed4:	08013423          	sd	zero,136(sp)
   18ed8:	00013823          	sd	zero,16(sp)
   18edc:	00f13423          	sd	a5,8(sp)
   18ee0:	05013983          	ld	s3,80(sp)
   18ee4:	00030413          	mv	s0,t1
   18ee8:	24070063          	beqz	a4,19128 <_svfprintf_r+0x31c>
   18eec:	000b0493          	mv	s1,s6
   18ef0:	02500693          	li	a3,37
   18ef4:	2ad70263          	beq	a4,a3,19198 <_svfprintf_r+0x38c>
   18ef8:	0014c703          	lbu	a4,1(s1)
   18efc:	00148493          	addi	s1,s1,1
   18f00:	fe071ae3          	bnez	a4,18ef4 <_svfprintf_r+0xe8>
   18f04:	4164893b          	subw	s2,s1,s6
   18f08:	22090063          	beqz	s2,19128 <_svfprintf_r+0x31c>
   18f0c:	11013d83          	ld	s11,272(sp)
   18f10:	10812683          	lw	a3,264(sp)
   18f14:	01643023          	sd	s6,0(s0)
   18f18:	012d8733          	add	a4,s11,s2
   18f1c:	0016861b          	addiw	a2,a3,1
   18f20:	01243423          	sd	s2,8(s0)
   18f24:	10e13823          	sd	a4,272(sp)
   18f28:	10c12423          	sw	a2,264(sp)
   18f2c:	00700713          	li	a4,7
   18f30:	01040413          	addi	s0,s0,16
   18f34:	26c74a63          	blt	a4,a2,191a8 <_svfprintf_r+0x39c>
   18f38:	01013783          	ld	a5,16(sp)
   18f3c:	0004c703          	lbu	a4,0(s1)
   18f40:	012787bb          	addw	a5,a5,s2
   18f44:	00f13823          	sd	a5,16(sp)
   18f48:	1e070063          	beqz	a4,19128 <_svfprintf_r+0x31c>
   18f4c:	fff00313          	li	t1,-1
   18f50:	0014ce03          	lbu	t3,1(s1)
   18f54:	0c0107a3          	sb	zero,207(sp)
   18f58:	00148493          	addi	s1,s1,1
   18f5c:	00000a13          	li	s4,0
   18f60:	00000913          	li	s2,0
   18f64:	05a00b93          	li	s7,90
   18f68:	00030a93          	mv	s5,t1
   18f6c:	00148493          	addi	s1,s1,1
   18f70:	000e0c9b          	sext.w	s9,t3
   18f74:	fe0c879b          	addiw	a5,s9,-32
   18f78:	0007871b          	sext.w	a4,a5
   18f7c:	04ebec63          	bltu	s7,a4,18fd4 <_svfprintf_r+0x1c8>
   18f80:	02079713          	slli	a4,a5,0x20
   18f84:	01e75793          	srli	a5,a4,0x1e
   18f88:	02813703          	ld	a4,40(sp)
   18f8c:	00e787b3          	add	a5,a5,a4
   18f90:	0007a783          	lw	a5,0(a5)
   18f94:	00078067          	jr	a5
   18f98:	00000a13          	li	s4,0
   18f9c:	00900693          	li	a3,9
   18fa0:	0004c703          	lbu	a4,0(s1)
   18fa4:	002a179b          	slliw	a5,s4,0x2
   18fa8:	01478a3b          	addw	s4,a5,s4
   18fac:	fd0c8c9b          	addiw	s9,s9,-48
   18fb0:	001a1a1b          	slliw	s4,s4,0x1
   18fb4:	fd07079b          	addiw	a5,a4,-48
   18fb8:	014c8a3b          	addw	s4,s9,s4
   18fbc:	00148493          	addi	s1,s1,1
   18fc0:	00070c9b          	sext.w	s9,a4
   18fc4:	fcf6fee3          	bgeu	a3,a5,18fa0 <_svfprintf_r+0x194>
   18fc8:	fe0c879b          	addiw	a5,s9,-32
   18fcc:	0007871b          	sext.w	a4,a5
   18fd0:	faebf8e3          	bgeu	s7,a4,18f80 <_svfprintf_r+0x174>
   18fd4:	140c8a63          	beqz	s9,19128 <_svfprintf_r+0x31c>
   18fd8:	11910c23          	sb	s9,280(sp)
   18fdc:	0c0107a3          	sb	zero,207(sp)
   18fe0:	00100c13          	li	s8,1
   18fe4:	00100d13          	li	s10,1
   18fe8:	11810b13          	addi	s6,sp,280
   18fec:	00013c23          	sd	zero,24(sp)
   18ff0:	00000313          	li	t1,0
   18ff4:	04013423          	sd	zero,72(sp)
   18ff8:	04013023          	sd	zero,64(sp)
   18ffc:	02013823          	sd	zero,48(sp)
   19000:	00297b93          	andi	s7,s2,2
   19004:	000b8463          	beqz	s7,1900c <_svfprintf_r+0x200>
   19008:	002c0c1b          	addiw	s8,s8,2
   1900c:	08497a93          	andi	s5,s2,132
   19010:	000a9663          	bnez	s5,1901c <_svfprintf_r+0x210>
   19014:	418a073b          	subw	a4,s4,s8
   19018:	30e042e3          	bgtz	a4,19b1c <_svfprintf_r+0xd10>
   1901c:	0cf14703          	lbu	a4,207(sp)
   19020:	11013d83          	ld	s11,272(sp)
   19024:	02070c63          	beqz	a4,1905c <_svfprintf_r+0x250>
   19028:	10812603          	lw	a2,264(sp)
   1902c:	0cf10593          	addi	a1,sp,207
   19030:	00b43023          	sd	a1,0(s0)
   19034:	0016061b          	addiw	a2,a2,1
   19038:	00100593          	li	a1,1
   1903c:	001d8d93          	addi	s11,s11,1
   19040:	00b43423          	sd	a1,8(s0)
   19044:	10c12423          	sw	a2,264(sp)
   19048:	0006059b          	sext.w	a1,a2
   1904c:	11b13823          	sd	s11,272(sp)
   19050:	00700613          	li	a2,7
   19054:	01040413          	addi	s0,s0,16
   19058:	24b64c63          	blt	a2,a1,192b0 <_svfprintf_r+0x4a4>
   1905c:	020b8c63          	beqz	s7,19094 <_svfprintf_r+0x288>
   19060:	10812603          	lw	a2,264(sp)
   19064:	00200593          	li	a1,2
   19068:	002d8d93          	addi	s11,s11,2
   1906c:	0016061b          	addiw	a2,a2,1
   19070:	0d010793          	addi	a5,sp,208
   19074:	00b43423          	sd	a1,8(s0)
   19078:	00f43023          	sd	a5,0(s0)
   1907c:	0006059b          	sext.w	a1,a2
   19080:	10c12423          	sw	a2,264(sp)
   19084:	11b13823          	sd	s11,272(sp)
   19088:	00700613          	li	a2,7
   1908c:	01040413          	addi	s0,s0,16
   19090:	38b642e3          	blt	a2,a1,19c14 <_svfprintf_r+0xe08>
   19094:	08000613          	li	a2,128
   19098:	08ca8ce3          	beq	s5,a2,19930 <_svfprintf_r+0xb24>
   1909c:	41a30bbb          	subw	s7,t1,s10
   190a0:	17704ce3          	bgtz	s7,19a18 <_svfprintf_r+0xc0c>
   190a4:	10097613          	andi	a2,s2,256
   190a8:	6c061463          	bnez	a2,19770 <_svfprintf_r+0x964>
   190ac:	10812603          	lw	a2,264(sp)
   190b0:	01bd0733          	add	a4,s10,s11
   190b4:	01643023          	sd	s6,0(s0)
   190b8:	0016069b          	addiw	a3,a2,1
   190bc:	01a43423          	sd	s10,8(s0)
   190c0:	10e13823          	sd	a4,272(sp)
   190c4:	10d12423          	sw	a3,264(sp)
   190c8:	00700793          	li	a5,7
   190cc:	2ed7c663          	blt	a5,a3,193b8 <_svfprintf_r+0x5ac>
   190d0:	01040413          	addi	s0,s0,16
   190d4:	00497913          	andi	s2,s2,4
   190d8:	00090663          	beqz	s2,190e4 <_svfprintf_r+0x2d8>
   190dc:	418a093b          	subw	s2,s4,s8
   190e0:	35204ee3          	bgtz	s2,19c3c <_svfprintf_r+0xe30>
   190e4:	000a0793          	mv	a5,s4
   190e8:	018a5463          	bge	s4,s8,190f0 <_svfprintf_r+0x2e4>
   190ec:	000c0793          	mv	a5,s8
   190f0:	01013683          	ld	a3,16(sp)
   190f4:	00d787bb          	addw	a5,a5,a3
   190f8:	00f13823          	sd	a5,16(sp)
   190fc:	1e071ce3          	bnez	a4,19af4 <_svfprintf_r+0xce8>
   19100:	01813783          	ld	a5,24(sp)
   19104:	10012423          	sw	zero,264(sp)
   19108:	00078863          	beqz	a5,19118 <_svfprintf_r+0x30c>
   1910c:	01813583          	ld	a1,24(sp)
   19110:	00098513          	mv	a0,s3
   19114:	cfcfa0ef          	jal	ra,13610 <_free_r>
   19118:	18010413          	addi	s0,sp,384
   1911c:	00048b13          	mv	s6,s1
   19120:	000b4703          	lbu	a4,0(s6)
   19124:	dc0714e3          	bnez	a4,18eec <_svfprintf_r+0xe0>
   19128:	11013783          	ld	a5,272(sp)
   1912c:	00078463          	beqz	a5,19134 <_svfprintf_r+0x328>
   19130:	2490106f          	j	1ab78 <_svfprintf_r+0x1d6c>
   19134:	00013783          	ld	a5,0(sp)
   19138:	0107d783          	lhu	a5,16(a5)
   1913c:	0407f793          	andi	a5,a5,64
   19140:	00078463          	beqz	a5,19148 <_svfprintf_r+0x33c>
   19144:	0bc0206f          	j	1b200 <_svfprintf_r+0x23f4>
   19148:	26813083          	ld	ra,616(sp)
   1914c:	26013403          	ld	s0,608(sp)
   19150:	01013503          	ld	a0,16(sp)
   19154:	25813483          	ld	s1,600(sp)
   19158:	25013903          	ld	s2,592(sp)
   1915c:	24813983          	ld	s3,584(sp)
   19160:	24013a03          	ld	s4,576(sp)
   19164:	23813a83          	ld	s5,568(sp)
   19168:	23013b03          	ld	s6,560(sp)
   1916c:	22813b83          	ld	s7,552(sp)
   19170:	22013c03          	ld	s8,544(sp)
   19174:	21813c83          	ld	s9,536(sp)
   19178:	21013d03          	ld	s10,528(sp)
   1917c:	20813d83          	ld	s11,520(sp)
   19180:	27010113          	addi	sp,sp,624
   19184:	00008067          	ret
   19188:	01096913          	ori	s2,s2,16
   1918c:	0004ce03          	lbu	t3,0(s1)
   19190:	0009091b          	sext.w	s2,s2
   19194:	dd9ff06f          	j	18f6c <_svfprintf_r+0x160>
   19198:	4164893b          	subw	s2,s1,s6
   1919c:	d60918e3          	bnez	s2,18f0c <_svfprintf_r+0x100>
   191a0:	0004c703          	lbu	a4,0(s1)
   191a4:	da5ff06f          	j	18f48 <_svfprintf_r+0x13c>
   191a8:	00013583          	ld	a1,0(sp)
   191ac:	10010613          	addi	a2,sp,256
   191b0:	00098513          	mv	a0,s3
   191b4:	581040ef          	jal	ra,1df34 <__ssprint_r>
   191b8:	f6051ee3          	bnez	a0,19134 <_svfprintf_r+0x328>
   191bc:	18010413          	addi	s0,sp,384
   191c0:	d79ff06f          	j	18f38 <_svfprintf_r+0x12c>
   191c4:	00897713          	andi	a4,s2,8
   191c8:	000a8313          	mv	t1,s5
   191cc:	6e0714e3          	bnez	a4,1a0b4 <_svfprintf_r+0x12a8>
   191d0:	02013783          	ld	a5,32(sp)
   191d4:	01513c23          	sd	s5,24(sp)
   191d8:	0007b503          	ld	a0,0(a5)
   191dc:	00878a93          	addi	s5,a5,8
   191e0:	03513023          	sd	s5,32(sp)
   191e4:	6d8080ef          	jal	ra,218bc <__extenddftf2>
   191e8:	01813303          	ld	t1,24(sp)
   191ec:	00050713          	mv	a4,a0
   191f0:	0f010513          	addi	a0,sp,240
   191f4:	00613c23          	sd	t1,24(sp)
   191f8:	0ee13823          	sd	a4,240(sp)
   191fc:	0eb13c23          	sd	a1,248(sp)
   19200:	ce8fd0ef          	jal	ra,166e8 <_ldcheck>
   19204:	0ca12c23          	sw	a0,216(sp)
   19208:	00200713          	li	a4,2
   1920c:	01813303          	ld	t1,24(sp)
   19210:	00e51463          	bne	a0,a4,19218 <_svfprintf_r+0x40c>
   19214:	5040106f          	j	1a718 <_svfprintf_r+0x190c>
   19218:	00100713          	li	a4,1
   1921c:	00e51463          	bne	a0,a4,19224 <_svfprintf_r+0x418>
   19220:	6900106f          	j	1a8b0 <_svfprintf_r+0x1aa4>
   19224:	06100713          	li	a4,97
   19228:	00ec9463          	bne	s9,a4,19230 <_svfprintf_r+0x424>
   1922c:	4950106f          	j	1aec0 <_svfprintf_r+0x20b4>
   19230:	04100713          	li	a4,65
   19234:	00ec9463          	bne	s9,a4,1923c <_svfprintf_r+0x430>
   19238:	6810106f          	j	1b0b8 <_svfprintf_r+0x22ac>
   1923c:	fff00713          	li	a4,-1
   19240:	00e31463          	bne	t1,a4,19248 <_svfprintf_r+0x43c>
   19244:	1890106f          	j	1abcc <_svfprintf_r+0x1dc0>
   19248:	fdfcf713          	andi	a4,s9,-33
   1924c:	04700693          	li	a3,71
   19250:	00d71463          	bne	a4,a3,19258 <_svfprintf_r+0x44c>
   19254:	7b90106f          	j	1b20c <_svfprintf_r+0x2400>
   19258:	10096713          	ori	a4,s2,256
   1925c:	0f813c03          	ld	s8,248(sp)
   19260:	0007079b          	sext.w	a5,a4
   19264:	08f13823          	sd	a5,144(sp)
   19268:	05213023          	sd	s2,64(sp)
   1926c:	0f013b83          	ld	s7,240(sp)
   19270:	000c5463          	bgez	s8,19278 <_svfprintf_r+0x46c>
   19274:	5010106f          	j	1af74 <_svfprintf_r+0x2168>
   19278:	08013c23          	sd	zero,152(sp)
   1927c:	00013c23          	sd	zero,24(sp)
   19280:	fbfc871b          	addiw	a4,s9,-65
   19284:	0007061b          	sext.w	a2,a4
   19288:	02500693          	li	a3,37
   1928c:	00c6f463          	bgeu	a3,a2,19294 <_svfprintf_r+0x488>
   19290:	7000106f          	j	1a990 <_svfprintf_r+0x1b84>
   19294:	02071693          	slli	a3,a4,0x20
   19298:	01e6d713          	srli	a4,a3,0x1e
   1929c:	000226b7          	lui	a3,0x22
   192a0:	5a468693          	addi	a3,a3,1444 # 225a4 <__mprec_tens+0x234>
   192a4:	00d70733          	add	a4,a4,a3
   192a8:	00072703          	lw	a4,0(a4)
   192ac:	00070067          	jr	a4
   192b0:	00013583          	ld	a1,0(sp)
   192b4:	10010613          	addi	a2,sp,256
   192b8:	00098513          	mv	a0,s3
   192bc:	08613823          	sd	t1,144(sp)
   192c0:	475040ef          	jal	ra,1df34 <__ssprint_r>
   192c4:	040512e3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   192c8:	11013d83          	ld	s11,272(sp)
   192cc:	09013303          	ld	t1,144(sp)
   192d0:	18010413          	addi	s0,sp,384
   192d4:	d89ff06f          	j	1905c <_svfprintf_r+0x250>
   192d8:	03813783          	ld	a5,56(sp)
   192dc:	00100693          	li	a3,1
   192e0:	01040c93          	addi	s9,s0,16
   192e4:	38f6dae3          	bge	a3,a5,19e78 <_svfprintf_r+0x106c>
   192e8:	10812603          	lw	a2,264(sp)
   192ec:	00100693          	li	a3,1
   192f0:	001d8713          	addi	a4,s11,1
   192f4:	0016061b          	addiw	a2,a2,1
   192f8:	00d43423          	sd	a3,8(s0)
   192fc:	10c12423          	sw	a2,264(sp)
   19300:	0006069b          	sext.w	a3,a2
   19304:	01643023          	sd	s6,0(s0)
   19308:	10e13823          	sd	a4,272(sp)
   1930c:	00700613          	li	a2,7
   19310:	4ed64ae3          	blt	a2,a3,1a004 <_svfprintf_r+0x11f8>
   19314:	05813783          	ld	a5,88(sp)
   19318:	0016841b          	addiw	s0,a3,1
   1931c:	10812423          	sw	s0,264(sp)
   19320:	00e78d33          	add	s10,a5,a4
   19324:	06013703          	ld	a4,96(sp)
   19328:	00fcb423          	sd	a5,8(s9)
   1932c:	11a13823          	sd	s10,272(sp)
   19330:	00ecb023          	sd	a4,0(s9)
   19334:	00700713          	li	a4,7
   19338:	010c8c93          	addi	s9,s9,16
   1933c:	4e8746e3          	blt	a4,s0,1a028 <_svfprintf_r+0x121c>
   19340:	0f013503          	ld	a0,240(sp)
   19344:	0f813583          	ld	a1,248(sp)
   19348:	00000613          	li	a2,0
   1934c:	00000693          	li	a3,0
   19350:	1c0070ef          	jal	ra,20510 <__eqtf2>
   19354:	03813783          	ld	a5,56(sp)
   19358:	fff78a9b          	addiw	s5,a5,-1
   1935c:	360508e3          	beqz	a0,19ecc <_svfprintf_r+0x10c0>
   19360:	001b0793          	addi	a5,s6,1
   19364:	0014041b          	addiw	s0,s0,1
   19368:	015d0d33          	add	s10,s10,s5
   1936c:	00fcb023          	sd	a5,0(s9)
   19370:	015cb423          	sd	s5,8(s9)
   19374:	11a13823          	sd	s10,272(sp)
   19378:	10812423          	sw	s0,264(sp)
   1937c:	00700793          	li	a5,7
   19380:	3287c4e3          	blt	a5,s0,19ea8 <_svfprintf_r+0x109c>
   19384:	010c8c93          	addi	s9,s9,16
   19388:	07013683          	ld	a3,112(sp)
   1938c:	0014041b          	addiw	s0,s0,1
   19390:	0e010793          	addi	a5,sp,224
   19394:	01a68733          	add	a4,a3,s10
   19398:	00fcb023          	sd	a5,0(s9)
   1939c:	00dcb423          	sd	a3,8(s9)
   193a0:	10812423          	sw	s0,264(sp)
   193a4:	0004069b          	sext.w	a3,s0
   193a8:	10e13823          	sd	a4,272(sp)
   193ac:	00700793          	li	a5,7
   193b0:	010c8413          	addi	s0,s9,16
   193b4:	d2d7d0e3          	bge	a5,a3,190d4 <_svfprintf_r+0x2c8>
   193b8:	00013583          	ld	a1,0(sp)
   193bc:	10010613          	addi	a2,sp,256
   193c0:	00098513          	mv	a0,s3
   193c4:	371040ef          	jal	ra,1df34 <__ssprint_r>
   193c8:	74051063          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   193cc:	11013703          	ld	a4,272(sp)
   193d0:	18010413          	addi	s0,sp,384
   193d4:	d01ff06f          	j	190d4 <_svfprintf_r+0x2c8>
   193d8:	02013703          	ld	a4,32(sp)
   193dc:	0c0107a3          	sb	zero,207(sp)
   193e0:	00100c13          	li	s8,1
   193e4:	00072783          	lw	a5,0(a4)
   193e8:	00870713          	addi	a4,a4,8
   193ec:	02e13023          	sd	a4,32(sp)
   193f0:	10f10c23          	sb	a5,280(sp)
   193f4:	00100d13          	li	s10,1
   193f8:	11810b13          	addi	s6,sp,280
   193fc:	bf1ff06f          	j	18fec <_svfprintf_r+0x1e0>
   19400:	02013783          	ld	a5,32(sp)
   19404:	0c0107a3          	sb	zero,207(sp)
   19408:	000a8313          	mv	t1,s5
   1940c:	0007bb03          	ld	s6,0(a5)
   19410:	00878a93          	addi	s5,a5,8
   19414:	000b1463          	bnez	s6,1941c <_svfprintf_r+0x610>
   19418:	35c0106f          	j	1a774 <_svfprintf_r+0x1968>
   1941c:	fff00713          	li	a4,-1
   19420:	66e304e3          	beq	t1,a4,1a288 <_svfprintf_r+0x147c>
   19424:	00030613          	mv	a2,t1
   19428:	00000593          	li	a1,0
   1942c:	000b0513          	mv	a0,s6
   19430:	02613023          	sd	t1,32(sp)
   19434:	ee9fd0ef          	jal	ra,1731c <memchr>
   19438:	00a13c23          	sd	a0,24(sp)
   1943c:	02013303          	ld	t1,32(sp)
   19440:	00051463          	bnez	a0,19448 <_svfprintf_r+0x63c>
   19444:	3d10106f          	j	1b014 <_svfprintf_r+0x2208>
   19448:	01813783          	ld	a5,24(sp)
   1944c:	41678d3b          	subw	s10,a5,s6
   19450:	0cf14703          	lbu	a4,207(sp)
   19454:	fffd4813          	not	a6,s10
   19458:	43f85813          	srai	a6,a6,0x3f
   1945c:	03513023          	sd	s5,32(sp)
   19460:	00013c23          	sd	zero,24(sp)
   19464:	04013423          	sd	zero,72(sp)
   19468:	04013023          	sd	zero,64(sp)
   1946c:	02013823          	sd	zero,48(sp)
   19470:	01a87c33          	and	s8,a6,s10
   19474:	00000313          	li	t1,0
   19478:	b80704e3          	beqz	a4,19000 <_svfprintf_r+0x1f4>
   1947c:	001c0c1b          	addiw	s8,s8,1
   19480:	b81ff06f          	j	19000 <_svfprintf_r+0x1f4>
   19484:	02013783          	ld	a5,32(sp)
   19488:	0007aa03          	lw	s4,0(a5)
   1948c:	00878793          	addi	a5,a5,8
   19490:	3c0a5ae3          	bgez	s4,1a064 <_svfprintf_r+0x1258>
   19494:	41400a3b          	negw	s4,s4
   19498:	02f13023          	sd	a5,32(sp)
   1949c:	00496913          	ori	s2,s2,4
   194a0:	0004ce03          	lbu	t3,0(s1)
   194a4:	0009091b          	sext.w	s2,s2
   194a8:	ac5ff06f          	j	18f6c <_svfprintf_r+0x160>
   194ac:	02b00793          	li	a5,43
   194b0:	0004ce03          	lbu	t3,0(s1)
   194b4:	0cf107a3          	sb	a5,207(sp)
   194b8:	ab5ff06f          	j	18f6c <_svfprintf_r+0x160>
   194bc:	08096913          	ori	s2,s2,128
   194c0:	0004ce03          	lbu	t3,0(s1)
   194c4:	0009091b          	sext.w	s2,s2
   194c8:	aa5ff06f          	j	18f6c <_svfprintf_r+0x160>
   194cc:	0004cc83          	lbu	s9,0(s1)
   194d0:	02a00693          	li	a3,42
   194d4:	00148793          	addi	a5,s1,1
   194d8:	00dc9463          	bne	s9,a3,194e0 <_svfprintf_r+0x6d4>
   194dc:	6ad0106f          	j	1b388 <_svfprintf_r+0x257c>
   194e0:	fd0c871b          	addiw	a4,s9,-48
   194e4:	00900613          	li	a2,9
   194e8:	00078493          	mv	s1,a5
   194ec:	00000a93          	li	s5,0
   194f0:	00900693          	li	a3,9
   194f4:	a8e660e3          	bltu	a2,a4,18f74 <_svfprintf_r+0x168>
   194f8:	0004cc83          	lbu	s9,0(s1)
   194fc:	002a979b          	slliw	a5,s5,0x2
   19500:	0157833b          	addw	t1,a5,s5
   19504:	0013131b          	slliw	t1,t1,0x1
   19508:	00e30abb          	addw	s5,t1,a4
   1950c:	fd0c871b          	addiw	a4,s9,-48
   19510:	00148493          	addi	s1,s1,1
   19514:	fee6f2e3          	bgeu	a3,a4,194f8 <_svfprintf_r+0x6ec>
   19518:	a5dff06f          	j	18f74 <_svfprintf_r+0x168>
   1951c:	00098513          	mv	a0,s3
   19520:	a38fd0ef          	jal	ra,16758 <_localeconv_r>
   19524:	00853783          	ld	a5,8(a0)
   19528:	00078513          	mv	a0,a5
   1952c:	08f13423          	sd	a5,136(sp)
   19530:	f70ff0ef          	jal	ra,18ca0 <strlen>
   19534:	00050793          	mv	a5,a0
   19538:	00098513          	mv	a0,s3
   1953c:	00078c13          	mv	s8,a5
   19540:	08f13023          	sd	a5,128(sp)
   19544:	a14fd0ef          	jal	ra,16758 <_localeconv_r>
   19548:	01053703          	ld	a4,16(a0)
   1954c:	0004ce03          	lbu	t3,0(s1)
   19550:	06e13c23          	sd	a4,120(sp)
   19554:	a00c0ce3          	beqz	s8,18f6c <_svfprintf_r+0x160>
   19558:	a0070ae3          	beqz	a4,18f6c <_svfprintf_r+0x160>
   1955c:	00074783          	lbu	a5,0(a4)
   19560:	a00786e3          	beqz	a5,18f6c <_svfprintf_r+0x160>
   19564:	40096913          	ori	s2,s2,1024
   19568:	0009091b          	sext.w	s2,s2
   1956c:	a01ff06f          	j	18f6c <_svfprintf_r+0x160>
   19570:	00196913          	ori	s2,s2,1
   19574:	0004ce03          	lbu	t3,0(s1)
   19578:	0009091b          	sext.w	s2,s2
   1957c:	9f1ff06f          	j	18f6c <_svfprintf_r+0x160>
   19580:	0cf14783          	lbu	a5,207(sp)
   19584:	0004ce03          	lbu	t3,0(s1)
   19588:	9e0792e3          	bnez	a5,18f6c <_svfprintf_r+0x160>
   1958c:	02000793          	li	a5,32
   19590:	0cf107a3          	sb	a5,207(sp)
   19594:	9d9ff06f          	j	18f6c <_svfprintf_r+0x160>
   19598:	01096d93          	ori	s11,s2,16
   1959c:	000a8313          	mv	t1,s5
   195a0:	000d8d9b          	sext.w	s11,s11
   195a4:	02013683          	ld	a3,32(sp)
   195a8:	020df793          	andi	a5,s11,32
   195ac:	00868713          	addi	a4,a3,8
   195b0:	20078ee3          	beqz	a5,19fcc <_svfprintf_r+0x11c0>
   195b4:	0006bd03          	ld	s10,0(a3)
   195b8:	00100793          	li	a5,1
   195bc:	02e13023          	sd	a4,32(sp)
   195c0:	00000713          	li	a4,0
   195c4:	0ce107a3          	sb	a4,207(sp)
   195c8:	fff00713          	li	a4,-1
   195cc:	2ae30e63          	beq	t1,a4,19888 <_svfprintf_r+0xa7c>
   195d0:	f7fdf913          	andi	s2,s11,-129
   195d4:	0009091b          	sext.w	s2,s2
   195d8:	2a0d1663          	bnez	s10,19884 <_svfprintf_r+0xa78>
   195dc:	30031463          	bnez	t1,198e4 <_svfprintf_r+0xad8>
   195e0:	20079ce3          	bnez	a5,19ff8 <_svfprintf_r+0x11ec>
   195e4:	001dfd13          	andi	s10,s11,1
   195e8:	17c10b13          	addi	s6,sp,380
   195ec:	280d12e3          	bnez	s10,1a070 <_svfprintf_r+0x1264>
   195f0:	0cf14703          	lbu	a4,207(sp)
   195f4:	00030813          	mv	a6,t1
   195f8:	01a35463          	bge	t1,s10,19600 <_svfprintf_r+0x7f4>
   195fc:	000d0813          	mv	a6,s10
   19600:	00013c23          	sd	zero,24(sp)
   19604:	04013423          	sd	zero,72(sp)
   19608:	04013023          	sd	zero,64(sp)
   1960c:	02013823          	sd	zero,48(sp)
   19610:	00080c1b          	sext.w	s8,a6
   19614:	e60714e3          	bnez	a4,1947c <_svfprintf_r+0x670>
   19618:	9e9ff06f          	j	19000 <_svfprintf_r+0x1f4>
   1961c:	00896913          	ori	s2,s2,8
   19620:	0004ce03          	lbu	t3,0(s1)
   19624:	0009091b          	sext.w	s2,s2
   19628:	945ff06f          	j	18f6c <_svfprintf_r+0x160>
   1962c:	01096913          	ori	s2,s2,16
   19630:	000a8313          	mv	t1,s5
   19634:	0009091b          	sext.w	s2,s2
   19638:	02013683          	ld	a3,32(sp)
   1963c:	02097793          	andi	a5,s2,32
   19640:	00868713          	addi	a4,a3,8
   19644:	140784e3          	beqz	a5,19f8c <_svfprintf_r+0x1180>
   19648:	0006b783          	ld	a5,0(a3)
   1964c:	00078d13          	mv	s10,a5
   19650:	1607c2e3          	bltz	a5,19fb4 <_svfprintf_r+0x11a8>
   19654:	fff00793          	li	a5,-1
   19658:	00f31463          	bne	t1,a5,19660 <_svfprintf_r+0x854>
   1965c:	0100106f          	j	1a66c <_svfprintf_r+0x1860>
   19660:	f7f97d93          	andi	s11,s2,-129
   19664:	02e13023          	sd	a4,32(sp)
   19668:	000d8d9b          	sext.w	s11,s11
   1966c:	280d0ee3          	beqz	s10,1a108 <_svfprintf_r+0x12fc>
   19670:	00900793          	li	a5,9
   19674:	63a7e0e3          	bltu	a5,s10,1a494 <_svfprintf_r+0x1688>
   19678:	030d0d1b          	addiw	s10,s10,48
   1967c:	17a10da3          	sb	s10,379(sp)
   19680:	000d8913          	mv	s2,s11
   19684:	00100d13          	li	s10,1
   19688:	17b10b13          	addi	s6,sp,379
   1968c:	f65ff06f          	j	195f0 <_svfprintf_r+0x7e4>
   19690:	01096913          	ori	s2,s2,16
   19694:	000a8313          	mv	t1,s5
   19698:	0009091b          	sext.w	s2,s2
   1969c:	02013683          	ld	a3,32(sp)
   196a0:	02097793          	andi	a5,s2,32
   196a4:	00868713          	addi	a4,a3,8
   196a8:	0c0780e3          	beqz	a5,19f68 <_svfprintf_r+0x115c>
   196ac:	0006bd03          	ld	s10,0(a3)
   196b0:	bff97d93          	andi	s11,s2,-1025
   196b4:	000d8d9b          	sext.w	s11,s11
   196b8:	02e13023          	sd	a4,32(sp)
   196bc:	00000793          	li	a5,0
   196c0:	f01ff06f          	j	195c0 <_svfprintf_r+0x7b4>
   196c4:	0004ce03          	lbu	t3,0(s1)
   196c8:	06800793          	li	a5,104
   196cc:	2afe08e3          	beq	t3,a5,1a17c <_svfprintf_r+0x1370>
   196d0:	04096913          	ori	s2,s2,64
   196d4:	0009091b          	sext.w	s2,s2
   196d8:	895ff06f          	j	18f6c <_svfprintf_r+0x160>
   196dc:	02096913          	ori	s2,s2,32
   196e0:	0004ce03          	lbu	t3,0(s1)
   196e4:	0009091b          	sext.w	s2,s2
   196e8:	885ff06f          	j	18f6c <_svfprintf_r+0x160>
   196ec:	02013703          	ld	a4,32(sp)
   196f0:	ffff87b7          	lui	a5,0xffff8
   196f4:	8307c793          	xori	a5,a5,-2000
   196f8:	0cf11823          	sh	a5,208(sp)
   196fc:	00870793          	addi	a5,a4,8
   19700:	02f13023          	sd	a5,32(sp)
   19704:	000227b7          	lui	a5,0x22
   19708:	d2078793          	addi	a5,a5,-736 # 21d20 <__clzdi2+0x90>
   1970c:	00296d93          	ori	s11,s2,2
   19710:	06f13423          	sd	a5,104(sp)
   19714:	00073d03          	ld	s10,0(a4)
   19718:	000a8313          	mv	t1,s5
   1971c:	000d8d9b          	sext.w	s11,s11
   19720:	00200793          	li	a5,2
   19724:	07800c93          	li	s9,120
   19728:	e99ff06f          	j	195c0 <_svfprintf_r+0x7b4>
   1972c:	02013703          	ld	a4,32(sp)
   19730:	02097793          	andi	a5,s2,32
   19734:	00073703          	ld	a4,0(a4)
   19738:	140784e3          	beqz	a5,1a080 <_svfprintf_r+0x1274>
   1973c:	01013783          	ld	a5,16(sp)
   19740:	00f73023          	sd	a5,0(a4)
   19744:	02013783          	ld	a5,32(sp)
   19748:	00048b13          	mv	s6,s1
   1974c:	00878793          	addi	a5,a5,8
   19750:	02f13023          	sd	a5,32(sp)
   19754:	9cdff06f          	j	19120 <_svfprintf_r+0x314>
   19758:	0004ce03          	lbu	t3,0(s1)
   1975c:	06c00793          	li	a5,108
   19760:	22fe08e3          	beq	t3,a5,1a190 <_svfprintf_r+0x1384>
   19764:	01096913          	ori	s2,s2,16
   19768:	0009091b          	sext.w	s2,s2
   1976c:	801ff06f          	j	18f6c <_svfprintf_r+0x160>
   19770:	06500693          	li	a3,101
   19774:	b796d2e3          	bge	a3,s9,192d8 <_svfprintf_r+0x4cc>
   19778:	0f013503          	ld	a0,240(sp)
   1977c:	0f813583          	ld	a1,248(sp)
   19780:	00000613          	li	a2,0
   19784:	00000693          	li	a3,0
   19788:	589060ef          	jal	ra,20510 <__eqtf2>
   1978c:	56051063          	bnez	a0,19cec <_svfprintf_r+0xee0>
   19790:	10812783          	lw	a5,264(sp)
   19794:	000226b7          	lui	a3,0x22
   19798:	d4068693          	addi	a3,a3,-704 # 21d40 <__clzdi2+0xb0>
   1979c:	0017879b          	addiw	a5,a5,1
   197a0:	00d43023          	sd	a3,0(s0)
   197a4:	001d8d93          	addi	s11,s11,1
   197a8:	00100693          	li	a3,1
   197ac:	00d43423          	sd	a3,8(s0)
   197b0:	10f12423          	sw	a5,264(sp)
   197b4:	0007869b          	sext.w	a3,a5
   197b8:	11b13823          	sd	s11,272(sp)
   197bc:	00700793          	li	a5,7
   197c0:	01040413          	addi	s0,s0,16
   197c4:	6ad7cae3          	blt	a5,a3,1a678 <_svfprintf_r+0x186c>
   197c8:	0d812783          	lw	a5,216(sp)
   197cc:	03813703          	ld	a4,56(sp)
   197d0:	06e7dee3          	bge	a5,a4,1a04c <_svfprintf_r+0x1240>
   197d4:	05813683          	ld	a3,88(sp)
   197d8:	10812783          	lw	a5,264(sp)
   197dc:	06013603          	ld	a2,96(sp)
   197e0:	01b68733          	add	a4,a3,s11
   197e4:	0017879b          	addiw	a5,a5,1
   197e8:	00d43423          	sd	a3,8(s0)
   197ec:	00c43023          	sd	a2,0(s0)
   197f0:	0007869b          	sext.w	a3,a5
   197f4:	10f12423          	sw	a5,264(sp)
   197f8:	10e13823          	sd	a4,272(sp)
   197fc:	00700793          	li	a5,7
   19800:	01040413          	addi	s0,s0,16
   19804:	1ad7cee3          	blt	a5,a3,1a1c0 <_svfprintf_r+0x13b4>
   19808:	03813783          	ld	a5,56(sp)
   1980c:	fff78c9b          	addiw	s9,a5,-1
   19810:	8d9052e3          	blez	s9,190d4 <_svfprintf_r+0x2c8>
   19814:	00022f37          	lui	t5,0x22
   19818:	01000693          	li	a3,16
   1981c:	10812783          	lw	a5,264(sp)
   19820:	640f0d93          	addi	s11,t5,1600 # 22640 <zeroes.0>
   19824:	6796dae3          	bge	a3,s9,1a698 <_svfprintf_r+0x188c>
   19828:	00013b03          	ld	s6,0(sp)
   1982c:	01000d13          	li	s10,16
   19830:	00700a93          	li	s5,7
   19834:	00c0006f          	j	19840 <_svfprintf_r+0xa34>
   19838:	ff0c8c9b          	addiw	s9,s9,-16
   1983c:	659d5ee3          	bge	s10,s9,1a698 <_svfprintf_r+0x188c>
   19840:	0017879b          	addiw	a5,a5,1
   19844:	01070713          	addi	a4,a4,16
   19848:	01b43023          	sd	s11,0(s0)
   1984c:	01a43423          	sd	s10,8(s0)
   19850:	10e13823          	sd	a4,272(sp)
   19854:	10f12423          	sw	a5,264(sp)
   19858:	01040413          	addi	s0,s0,16
   1985c:	fcfadee3          	bge	s5,a5,19838 <_svfprintf_r+0xa2c>
   19860:	10010613          	addi	a2,sp,256
   19864:	000b0593          	mv	a1,s6
   19868:	00098513          	mv	a0,s3
   1986c:	6c8040ef          	jal	ra,1df34 <__ssprint_r>
   19870:	28051c63          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19874:	11013703          	ld	a4,272(sp)
   19878:	10812783          	lw	a5,264(sp)
   1987c:	18010413          	addi	s0,sp,384
   19880:	fb9ff06f          	j	19838 <_svfprintf_r+0xa2c>
   19884:	00090d93          	mv	s11,s2
   19888:	00100713          	li	a4,1
   1988c:	dee782e3          	beq	a5,a4,19670 <_svfprintf_r+0x864>
   19890:	00200713          	li	a4,2
   19894:	06e78463          	beq	a5,a4,198fc <_svfprintf_r+0xaf0>
   19898:	17c10a93          	addi	s5,sp,380
   1989c:	000a8b13          	mv	s6,s5
   198a0:	007d7713          	andi	a4,s10,7
   198a4:	03070713          	addi	a4,a4,48
   198a8:	feeb0fa3          	sb	a4,-1(s6)
   198ac:	003d5d13          	srli	s10,s10,0x3
   198b0:	000b0613          	mv	a2,s6
   198b4:	fffb0b13          	addi	s6,s6,-1
   198b8:	fe0d14e3          	bnez	s10,198a0 <_svfprintf_r+0xa94>
   198bc:	001df593          	andi	a1,s11,1
   198c0:	06058263          	beqz	a1,19924 <_svfprintf_r+0xb18>
   198c4:	03000593          	li	a1,48
   198c8:	04b70e63          	beq	a4,a1,19924 <_svfprintf_r+0xb18>
   198cc:	ffe60613          	addi	a2,a2,-2
   198d0:	febb0fa3          	sb	a1,-1(s6)
   198d4:	40ca8d3b          	subw	s10,s5,a2
   198d8:	000d8913          	mv	s2,s11
   198dc:	00060b13          	mv	s6,a2
   198e0:	d11ff06f          	j	195f0 <_svfprintf_r+0x7e4>
   198e4:	00100713          	li	a4,1
   198e8:	00e79463          	bne	a5,a4,198f0 <_svfprintf_r+0xae4>
   198ec:	7d40106f          	j	1b0c0 <_svfprintf_r+0x22b4>
   198f0:	00200713          	li	a4,2
   198f4:	00090d93          	mv	s11,s2
   198f8:	fae790e3          	bne	a5,a4,19898 <_svfprintf_r+0xa8c>
   198fc:	06813703          	ld	a4,104(sp)
   19900:	17c10a93          	addi	s5,sp,380
   19904:	000a8b13          	mv	s6,s5
   19908:	00fd7793          	andi	a5,s10,15
   1990c:	00f707b3          	add	a5,a4,a5
   19910:	0007c783          	lbu	a5,0(a5)
   19914:	004d5d13          	srli	s10,s10,0x4
   19918:	fffb0b13          	addi	s6,s6,-1
   1991c:	00fb0023          	sb	a5,0(s6)
   19920:	fe0d14e3          	bnez	s10,19908 <_svfprintf_r+0xafc>
   19924:	416a8d3b          	subw	s10,s5,s6
   19928:	000d8913          	mv	s2,s11
   1992c:	cc5ff06f          	j	195f0 <_svfprintf_r+0x7e4>
   19930:	418a0abb          	subw	s5,s4,s8
   19934:	f7505463          	blez	s5,1909c <_svfprintf_r+0x290>
   19938:	00022f37          	lui	t5,0x22
   1993c:	01000593          	li	a1,16
   19940:	000d8713          	mv	a4,s11
   19944:	10812603          	lw	a2,264(sp)
   19948:	640f0d93          	addi	s11,t5,1600 # 22640 <zeroes.0>
   1994c:	0955de63          	bge	a1,s5,199e8 <_svfprintf_r+0xbdc>
   19950:	08913823          	sd	s1,144(sp)
   19954:	01000f93          	li	t6,16
   19958:	000a8493          	mv	s1,s5
   1995c:	00700b93          	li	s7,7
   19960:	000a0a93          	mv	s5,s4
   19964:	00090a13          	mv	s4,s2
   19968:	000d8913          	mv	s2,s11
   1996c:	000b0d93          	mv	s11,s6
   19970:	00030b13          	mv	s6,t1
   19974:	00c0006f          	j	19980 <_svfprintf_r+0xb74>
   19978:	ff04849b          	addiw	s1,s1,-16
   1997c:	049fd863          	bge	t6,s1,199cc <_svfprintf_r+0xbc0>
   19980:	0016061b          	addiw	a2,a2,1
   19984:	01070713          	addi	a4,a4,16
   19988:	01243023          	sd	s2,0(s0)
   1998c:	01f43423          	sd	t6,8(s0)
   19990:	10e13823          	sd	a4,272(sp)
   19994:	10c12423          	sw	a2,264(sp)
   19998:	01040413          	addi	s0,s0,16
   1999c:	fccbdee3          	bge	s7,a2,19978 <_svfprintf_r+0xb6c>
   199a0:	00013583          	ld	a1,0(sp)
   199a4:	10010613          	addi	a2,sp,256
   199a8:	00098513          	mv	a0,s3
   199ac:	588040ef          	jal	ra,1df34 <__ssprint_r>
   199b0:	14051c63          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   199b4:	01000f93          	li	t6,16
   199b8:	ff04849b          	addiw	s1,s1,-16
   199bc:	11013703          	ld	a4,272(sp)
   199c0:	10812603          	lw	a2,264(sp)
   199c4:	18010413          	addi	s0,sp,384
   199c8:	fa9fcce3          	blt	t6,s1,19980 <_svfprintf_r+0xb74>
   199cc:	000b0313          	mv	t1,s6
   199d0:	000d8b13          	mv	s6,s11
   199d4:	00090d93          	mv	s11,s2
   199d8:	000a0913          	mv	s2,s4
   199dc:	000a8a13          	mv	s4,s5
   199e0:	00048a93          	mv	s5,s1
   199e4:	09013483          	ld	s1,144(sp)
   199e8:	0016059b          	addiw	a1,a2,1
   199ec:	00ea8733          	add	a4,s5,a4
   199f0:	01b43023          	sd	s11,0(s0)
   199f4:	01543423          	sd	s5,8(s0)
   199f8:	10e13823          	sd	a4,272(sp)
   199fc:	10b12423          	sw	a1,264(sp)
   19a00:	00700613          	li	a2,7
   19a04:	4eb646e3          	blt	a2,a1,1a6f0 <_svfprintf_r+0x18e4>
   19a08:	41a30bbb          	subw	s7,t1,s10
   19a0c:	01040413          	addi	s0,s0,16
   19a10:	00070d93          	mv	s11,a4
   19a14:	e9705863          	blez	s7,190a4 <_svfprintf_r+0x298>
   19a18:	00022f37          	lui	t5,0x22
   19a1c:	01000593          	li	a1,16
   19a20:	000d8713          	mv	a4,s11
   19a24:	10812603          	lw	a2,264(sp)
   19a28:	640f0d93          	addi	s11,t5,1600 # 22640 <zeroes.0>
   19a2c:	0975de63          	bge	a1,s7,19ac8 <_svfprintf_r+0xcbc>
   19a30:	000b0793          	mv	a5,s6
   19a34:	00813d83          	ld	s11,8(sp)
   19a38:	000a0b13          	mv	s6,s4
   19a3c:	01000893          	li	a7,16
   19a40:	00090a13          	mv	s4,s2
   19a44:	00700a93          	li	s5,7
   19a48:	00048913          	mv	s2,s1
   19a4c:	000b8493          	mv	s1,s7
   19a50:	00078b93          	mv	s7,a5
   19a54:	00c0006f          	j	19a60 <_svfprintf_r+0xc54>
   19a58:	ff04849b          	addiw	s1,s1,-16
   19a5c:	0498da63          	bge	a7,s1,19ab0 <_svfprintf_r+0xca4>
   19a60:	00813683          	ld	a3,8(sp)
   19a64:	0016061b          	addiw	a2,a2,1
   19a68:	01070713          	addi	a4,a4,16
   19a6c:	00d43023          	sd	a3,0(s0)
   19a70:	01143423          	sd	a7,8(s0)
   19a74:	10e13823          	sd	a4,272(sp)
   19a78:	10c12423          	sw	a2,264(sp)
   19a7c:	01040413          	addi	s0,s0,16
   19a80:	fccadce3          	bge	s5,a2,19a58 <_svfprintf_r+0xc4c>
   19a84:	00013583          	ld	a1,0(sp)
   19a88:	10010613          	addi	a2,sp,256
   19a8c:	00098513          	mv	a0,s3
   19a90:	4a4040ef          	jal	ra,1df34 <__ssprint_r>
   19a94:	06051a63          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19a98:	01000893          	li	a7,16
   19a9c:	ff04849b          	addiw	s1,s1,-16
   19aa0:	11013703          	ld	a4,272(sp)
   19aa4:	10812603          	lw	a2,264(sp)
   19aa8:	18010413          	addi	s0,sp,384
   19aac:	fa98cae3          	blt	a7,s1,19a60 <_svfprintf_r+0xc54>
   19ab0:	000b8793          	mv	a5,s7
   19ab4:	00048b93          	mv	s7,s1
   19ab8:	00090493          	mv	s1,s2
   19abc:	000a0913          	mv	s2,s4
   19ac0:	000b0a13          	mv	s4,s6
   19ac4:	00078b13          	mv	s6,a5
   19ac8:	0016059b          	addiw	a1,a2,1
   19acc:	00eb8733          	add	a4,s7,a4
   19ad0:	01b43023          	sd	s11,0(s0)
   19ad4:	01743423          	sd	s7,8(s0)
   19ad8:	10e13823          	sd	a4,272(sp)
   19adc:	10b12423          	sw	a1,264(sp)
   19ae0:	00700613          	li	a2,7
   19ae4:	46b64263          	blt	a2,a1,19f48 <_svfprintf_r+0x113c>
   19ae8:	01040413          	addi	s0,s0,16
   19aec:	00070d93          	mv	s11,a4
   19af0:	db4ff06f          	j	190a4 <_svfprintf_r+0x298>
   19af4:	00013583          	ld	a1,0(sp)
   19af8:	10010613          	addi	a2,sp,256
   19afc:	00098513          	mv	a0,s3
   19b00:	434040ef          	jal	ra,1df34 <__ssprint_r>
   19b04:	de050e63          	beqz	a0,19100 <_svfprintf_r+0x2f4>
   19b08:	01813583          	ld	a1,24(sp)
   19b0c:	e2058463          	beqz	a1,19134 <_svfprintf_r+0x328>
   19b10:	05013503          	ld	a0,80(sp)
   19b14:	afdf90ef          	jal	ra,13610 <_free_r>
   19b18:	e1cff06f          	j	19134 <_svfprintf_r+0x328>
   19b1c:	000228b7          	lui	a7,0x22
   19b20:	01000513          	li	a0,16
   19b24:	11013583          	ld	a1,272(sp)
   19b28:	10812603          	lw	a2,264(sp)
   19b2c:	65088d93          	addi	s11,a7,1616 # 22650 <blanks.1>
   19b30:	08e55c63          	bge	a0,a4,19bc8 <_svfprintf_r+0xdbc>
   19b34:	08913823          	sd	s1,144(sp)
   19b38:	00040793          	mv	a5,s0
   19b3c:	000d8493          	mv	s1,s11
   19b40:	01000f13          	li	t5,16
   19b44:	000b0d93          	mv	s11,s6
   19b48:	00700393          	li	t2,7
   19b4c:	00070413          	mv	s0,a4
   19b50:	00030b13          	mv	s6,t1
   19b54:	00c0006f          	j	19b60 <_svfprintf_r+0xd54>
   19b58:	ff04041b          	addiw	s0,s0,-16
   19b5c:	048f5a63          	bge	t5,s0,19bb0 <_svfprintf_r+0xda4>
   19b60:	0016061b          	addiw	a2,a2,1
   19b64:	01058593          	addi	a1,a1,16
   19b68:	0097b023          	sd	s1,0(a5)
   19b6c:	01e7b423          	sd	t5,8(a5)
   19b70:	10b13823          	sd	a1,272(sp)
   19b74:	10c12423          	sw	a2,264(sp)
   19b78:	01078793          	addi	a5,a5,16
   19b7c:	fcc3dee3          	bge	t2,a2,19b58 <_svfprintf_r+0xd4c>
   19b80:	00013583          	ld	a1,0(sp)
   19b84:	10010613          	addi	a2,sp,256
   19b88:	00098513          	mv	a0,s3
   19b8c:	3a8040ef          	jal	ra,1df34 <__ssprint_r>
   19b90:	f6051ce3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19b94:	01000f13          	li	t5,16
   19b98:	ff04041b          	addiw	s0,s0,-16
   19b9c:	11013583          	ld	a1,272(sp)
   19ba0:	10812603          	lw	a2,264(sp)
   19ba4:	18010793          	addi	a5,sp,384
   19ba8:	00700393          	li	t2,7
   19bac:	fa8f4ae3          	blt	t5,s0,19b60 <_svfprintf_r+0xd54>
   19bb0:	000b0313          	mv	t1,s6
   19bb4:	000d8b13          	mv	s6,s11
   19bb8:	00048d93          	mv	s11,s1
   19bbc:	09013483          	ld	s1,144(sp)
   19bc0:	00040713          	mv	a4,s0
   19bc4:	00078413          	mv	s0,a5
   19bc8:	00b705b3          	add	a1,a4,a1
   19bcc:	0016061b          	addiw	a2,a2,1
   19bd0:	00e43423          	sd	a4,8(s0)
   19bd4:	01b43023          	sd	s11,0(s0)
   19bd8:	10b13823          	sd	a1,272(sp)
   19bdc:	10c12423          	sw	a2,264(sp)
   19be0:	0006059b          	sext.w	a1,a2
   19be4:	00700713          	li	a4,7
   19be8:	01040413          	addi	s0,s0,16
   19bec:	c2b75863          	bge	a4,a1,1901c <_svfprintf_r+0x210>
   19bf0:	00013583          	ld	a1,0(sp)
   19bf4:	10010613          	addi	a2,sp,256
   19bf8:	00098513          	mv	a0,s3
   19bfc:	08613823          	sd	t1,144(sp)
   19c00:	334040ef          	jal	ra,1df34 <__ssprint_r>
   19c04:	f00512e3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19c08:	09013303          	ld	t1,144(sp)
   19c0c:	18010413          	addi	s0,sp,384
   19c10:	c0cff06f          	j	1901c <_svfprintf_r+0x210>
   19c14:	00013583          	ld	a1,0(sp)
   19c18:	10010613          	addi	a2,sp,256
   19c1c:	00098513          	mv	a0,s3
   19c20:	08613823          	sd	t1,144(sp)
   19c24:	310040ef          	jal	ra,1df34 <__ssprint_r>
   19c28:	ee0510e3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19c2c:	11013d83          	ld	s11,272(sp)
   19c30:	09013303          	ld	t1,144(sp)
   19c34:	18010413          	addi	s0,sp,384
   19c38:	c5cff06f          	j	19094 <_svfprintf_r+0x288>
   19c3c:	000228b7          	lui	a7,0x22
   19c40:	01000693          	li	a3,16
   19c44:	10812783          	lw	a5,264(sp)
   19c48:	65088d93          	addi	s11,a7,1616 # 22650 <blanks.1>
   19c4c:	0726d263          	bge	a3,s2,19cb0 <_svfprintf_r+0xea4>
   19c50:	00013a83          	ld	s5,0(sp)
   19c54:	01000c93          	li	s9,16
   19c58:	00700d13          	li	s10,7
   19c5c:	00c0006f          	j	19c68 <_svfprintf_r+0xe5c>
   19c60:	ff09091b          	addiw	s2,s2,-16
   19c64:	052cd663          	bge	s9,s2,19cb0 <_svfprintf_r+0xea4>
   19c68:	0017879b          	addiw	a5,a5,1
   19c6c:	01070713          	addi	a4,a4,16
   19c70:	01b43023          	sd	s11,0(s0)
   19c74:	01943423          	sd	s9,8(s0)
   19c78:	10e13823          	sd	a4,272(sp)
   19c7c:	10f12423          	sw	a5,264(sp)
   19c80:	01040413          	addi	s0,s0,16
   19c84:	fcfd5ee3          	bge	s10,a5,19c60 <_svfprintf_r+0xe54>
   19c88:	10010613          	addi	a2,sp,256
   19c8c:	000a8593          	mv	a1,s5
   19c90:	00098513          	mv	a0,s3
   19c94:	2a0040ef          	jal	ra,1df34 <__ssprint_r>
   19c98:	e60518e3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19c9c:	ff09091b          	addiw	s2,s2,-16
   19ca0:	11013703          	ld	a4,272(sp)
   19ca4:	10812783          	lw	a5,264(sp)
   19ca8:	18010413          	addi	s0,sp,384
   19cac:	fb2ccee3          	blt	s9,s2,19c68 <_svfprintf_r+0xe5c>
   19cb0:	0017869b          	addiw	a3,a5,1
   19cb4:	01270733          	add	a4,a4,s2
   19cb8:	01b43023          	sd	s11,0(s0)
   19cbc:	01243423          	sd	s2,8(s0)
   19cc0:	10e13823          	sd	a4,272(sp)
   19cc4:	10d12423          	sw	a3,264(sp)
   19cc8:	00700793          	li	a5,7
   19ccc:	c0d7dc63          	bge	a5,a3,190e4 <_svfprintf_r+0x2d8>
   19cd0:	00013583          	ld	a1,0(sp)
   19cd4:	10010613          	addi	a2,sp,256
   19cd8:	00098513          	mv	a0,s3
   19cdc:	258040ef          	jal	ra,1df34 <__ssprint_r>
   19ce0:	e20514e3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19ce4:	11013703          	ld	a4,272(sp)
   19ce8:	bfcff06f          	j	190e4 <_svfprintf_r+0x2d8>
   19cec:	0d812603          	lw	a2,216(sp)
   19cf0:	08c058e3          	blez	a2,1a580 <_svfprintf_r+0x1774>
   19cf4:	03813783          	ld	a5,56(sp)
   19cf8:	03013703          	ld	a4,48(sp)
   19cfc:	00fb0ab3          	add	s5,s6,a5
   19d00:	00078693          	mv	a3,a5
   19d04:	3ef74a63          	blt	a4,a5,1a0f8 <_svfprintf_r+0x12ec>
   19d08:	00068c9b          	sext.w	s9,a3
   19d0c:	03905663          	blez	s9,19d38 <_svfprintf_r+0xf2c>
   19d10:	10812603          	lw	a2,264(sp)
   19d14:	019d8db3          	add	s11,s11,s9
   19d18:	01643023          	sd	s6,0(s0)
   19d1c:	0016059b          	addiw	a1,a2,1
   19d20:	01943423          	sd	s9,8(s0)
   19d24:	11b13823          	sd	s11,272(sp)
   19d28:	10b12423          	sw	a1,264(sp)
   19d2c:	00700613          	li	a2,7
   19d30:	01040413          	addi	s0,s0,16
   19d34:	3cb64ae3          	blt	a2,a1,1a908 <_svfprintf_r+0x1afc>
   19d38:	fffcc613          	not	a2,s9
   19d3c:	03013783          	ld	a5,48(sp)
   19d40:	43f65613          	srai	a2,a2,0x3f
   19d44:	00ccf6b3          	and	a3,s9,a2
   19d48:	40d78cbb          	subw	s9,a5,a3
   19d4c:	4d904263          	bgtz	s9,1a210 <_svfprintf_r+0x1404>
   19d50:	03013783          	ld	a5,48(sp)
   19d54:	40097693          	andi	a3,s2,1024
   19d58:	00fb0b33          	add	s6,s6,a5
   19d5c:	52069e63          	bnez	a3,1a298 <_svfprintf_r+0x148c>
   19d60:	0d812683          	lw	a3,216(sp)
   19d64:	03813783          	ld	a5,56(sp)
   19d68:	00f6c663          	blt	a3,a5,19d74 <_svfprintf_r+0xf68>
   19d6c:	00197613          	andi	a2,s2,1
   19d70:	3c0600e3          	beqz	a2,1a930 <_svfprintf_r+0x1b24>
   19d74:	10812603          	lw	a2,264(sp)
   19d78:	05813783          	ld	a5,88(sp)
   19d7c:	06013583          	ld	a1,96(sp)
   19d80:	01040413          	addi	s0,s0,16
   19d84:	01b78733          	add	a4,a5,s11
   19d88:	feb43823          	sd	a1,-16(s0)
   19d8c:	0016059b          	addiw	a1,a2,1
   19d90:	fef43c23          	sd	a5,-8(s0)
   19d94:	10e13823          	sd	a4,272(sp)
   19d98:	10b12423          	sw	a1,264(sp)
   19d9c:	00700613          	li	a2,7
   19da0:	00b65463          	bge	a2,a1,19da8 <_svfprintf_r+0xf9c>
   19da4:	1fc0106f          	j	1afa0 <_svfprintf_r+0x2194>
   19da8:	03813783          	ld	a5,56(sp)
   19dac:	416a8cb3          	sub	s9,s5,s6
   19db0:	000c859b          	sext.w	a1,s9
   19db4:	40d7863b          	subw	a2,a5,a3
   19db8:	00b65463          	bge	a2,a1,19dc0 <_svfprintf_r+0xfb4>
   19dbc:	00060c93          	mv	s9,a2
   19dc0:	000c8c9b          	sext.w	s9,s9
   19dc4:	03905863          	blez	s9,19df4 <_svfprintf_r+0xfe8>
   19dc8:	10812683          	lw	a3,264(sp)
   19dcc:	01970733          	add	a4,a4,s9
   19dd0:	01643023          	sd	s6,0(s0)
   19dd4:	0016869b          	addiw	a3,a3,1
   19dd8:	01943423          	sd	s9,8(s0)
   19ddc:	10e13823          	sd	a4,272(sp)
   19de0:	10d12423          	sw	a3,264(sp)
   19de4:	00700793          	li	a5,7
   19de8:	01040413          	addi	s0,s0,16
   19dec:	00d7d463          	bge	a5,a3,19df4 <_svfprintf_r+0xfe8>
   19df0:	2500106f          	j	1b040 <_svfprintf_r+0x2234>
   19df4:	fffcc793          	not	a5,s9
   19df8:	43f7d793          	srai	a5,a5,0x3f
   19dfc:	00fcfcb3          	and	s9,s9,a5
   19e00:	41960cbb          	subw	s9,a2,s9
   19e04:	ad905863          	blez	s9,190d4 <_svfprintf_r+0x2c8>
   19e08:	00022f37          	lui	t5,0x22
   19e0c:	01000693          	li	a3,16
   19e10:	10812783          	lw	a5,264(sp)
   19e14:	640f0d93          	addi	s11,t5,1600 # 22640 <zeroes.0>
   19e18:	0996d0e3          	bge	a3,s9,1a698 <_svfprintf_r+0x188c>
   19e1c:	00013b03          	ld	s6,0(sp)
   19e20:	01000d13          	li	s10,16
   19e24:	00700a93          	li	s5,7
   19e28:	00c0006f          	j	19e34 <_svfprintf_r+0x1028>
   19e2c:	ff0c8c9b          	addiw	s9,s9,-16
   19e30:	079d54e3          	bge	s10,s9,1a698 <_svfprintf_r+0x188c>
   19e34:	0017879b          	addiw	a5,a5,1
   19e38:	01070713          	addi	a4,a4,16
   19e3c:	01b43023          	sd	s11,0(s0)
   19e40:	01a43423          	sd	s10,8(s0)
   19e44:	10e13823          	sd	a4,272(sp)
   19e48:	10f12423          	sw	a5,264(sp)
   19e4c:	01040413          	addi	s0,s0,16
   19e50:	fcfadee3          	bge	s5,a5,19e2c <_svfprintf_r+0x1020>
   19e54:	10010613          	addi	a2,sp,256
   19e58:	000b0593          	mv	a1,s6
   19e5c:	00098513          	mv	a0,s3
   19e60:	0d4040ef          	jal	ra,1df34 <__ssprint_r>
   19e64:	ca0512e3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19e68:	11013703          	ld	a4,272(sp)
   19e6c:	10812783          	lw	a5,264(sp)
   19e70:	18010413          	addi	s0,sp,384
   19e74:	fb9ff06f          	j	19e2c <_svfprintf_r+0x1020>
   19e78:	00197613          	andi	a2,s2,1
   19e7c:	c6061663          	bnez	a2,192e8 <_svfprintf_r+0x4dc>
   19e80:	10812603          	lw	a2,264(sp)
   19e84:	001d8d13          	addi	s10,s11,1
   19e88:	01643023          	sd	s6,0(s0)
   19e8c:	0016079b          	addiw	a5,a2,1
   19e90:	00d43423          	sd	a3,8(s0)
   19e94:	10f12423          	sw	a5,264(sp)
   19e98:	0007841b          	sext.w	s0,a5
   19e9c:	11a13823          	sd	s10,272(sp)
   19ea0:	00700793          	li	a5,7
   19ea4:	ce87d263          	bge	a5,s0,19388 <_svfprintf_r+0x57c>
   19ea8:	00013583          	ld	a1,0(sp)
   19eac:	10010613          	addi	a2,sp,256
   19eb0:	00098513          	mv	a0,s3
   19eb4:	080040ef          	jal	ra,1df34 <__ssprint_r>
   19eb8:	c40518e3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19ebc:	11013d03          	ld	s10,272(sp)
   19ec0:	10812403          	lw	s0,264(sp)
   19ec4:	18010c93          	addi	s9,sp,384
   19ec8:	cc0ff06f          	j	19388 <_svfprintf_r+0x57c>
   19ecc:	03813703          	ld	a4,56(sp)
   19ed0:	00100793          	li	a5,1
   19ed4:	cae7da63          	bge	a5,a4,19388 <_svfprintf_r+0x57c>
   19ed8:	00022f37          	lui	t5,0x22
   19edc:	01100793          	li	a5,17
   19ee0:	640f0d93          	addi	s11,t5,1600 # 22640 <zeroes.0>
   19ee4:	0ae7dae3          	bge	a5,a4,1a798 <_svfprintf_r+0x198c>
   19ee8:	00013b83          	ld	s7,0(sp)
   19eec:	01000713          	li	a4,16
   19ef0:	00700b13          	li	s6,7
   19ef4:	00c0006f          	j	19f00 <_svfprintf_r+0x10f4>
   19ef8:	ff0a8a9b          	addiw	s5,s5,-16
   19efc:	09575ee3          	bge	a4,s5,1a798 <_svfprintf_r+0x198c>
   19f00:	0014041b          	addiw	s0,s0,1
   19f04:	010d0d13          	addi	s10,s10,16
   19f08:	01bcb023          	sd	s11,0(s9)
   19f0c:	00ecb423          	sd	a4,8(s9)
   19f10:	11a13823          	sd	s10,272(sp)
   19f14:	10812423          	sw	s0,264(sp)
   19f18:	010c8c93          	addi	s9,s9,16
   19f1c:	fc8b5ee3          	bge	s6,s0,19ef8 <_svfprintf_r+0x10ec>
   19f20:	10010613          	addi	a2,sp,256
   19f24:	000b8593          	mv	a1,s7
   19f28:	00098513          	mv	a0,s3
   19f2c:	008040ef          	jal	ra,1df34 <__ssprint_r>
   19f30:	bc051ce3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19f34:	11013d03          	ld	s10,272(sp)
   19f38:	10812403          	lw	s0,264(sp)
   19f3c:	18010c93          	addi	s9,sp,384
   19f40:	01000713          	li	a4,16
   19f44:	fb5ff06f          	j	19ef8 <_svfprintf_r+0x10ec>
   19f48:	00013583          	ld	a1,0(sp)
   19f4c:	10010613          	addi	a2,sp,256
   19f50:	00098513          	mv	a0,s3
   19f54:	7e1030ef          	jal	ra,1df34 <__ssprint_r>
   19f58:	ba0518e3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   19f5c:	11013d83          	ld	s11,272(sp)
   19f60:	18010413          	addi	s0,sp,384
   19f64:	940ff06f          	j	190a4 <_svfprintf_r+0x298>
   19f68:	01097793          	andi	a5,s2,16
   19f6c:	12079e63          	bnez	a5,1a0a8 <_svfprintf_r+0x129c>
   19f70:	02013683          	ld	a3,32(sp)
   19f74:	04097793          	andi	a5,s2,64
   19f78:	0006ad03          	lw	s10,0(a3)
   19f7c:	0e078ee3          	beqz	a5,1a878 <_svfprintf_r+0x1a6c>
   19f80:	030d1d13          	slli	s10,s10,0x30
   19f84:	030d5d13          	srli	s10,s10,0x30
   19f88:	f28ff06f          	j	196b0 <_svfprintf_r+0x8a4>
   19f8c:	01097793          	andi	a5,s2,16
   19f90:	14079c63          	bnez	a5,1a0e8 <_svfprintf_r+0x12dc>
   19f94:	02013683          	ld	a3,32(sp)
   19f98:	04097793          	andi	a5,s2,64
   19f9c:	0006ad03          	lw	s10,0(a3)
   19fa0:	0e0784e3          	beqz	a5,1a888 <_svfprintf_r+0x1a7c>
   19fa4:	010d1d1b          	slliw	s10,s10,0x10
   19fa8:	410d5d1b          	sraiw	s10,s10,0x10
   19fac:	000d0793          	mv	a5,s10
   19fb0:	ea07d263          	bgez	a5,19654 <_svfprintf_r+0x848>
   19fb4:	02e13023          	sd	a4,32(sp)
   19fb8:	41a00d33          	neg	s10,s10
   19fbc:	00090d93          	mv	s11,s2
   19fc0:	02d00713          	li	a4,45
   19fc4:	00100793          	li	a5,1
   19fc8:	dfcff06f          	j	195c4 <_svfprintf_r+0x7b8>
   19fcc:	010df793          	andi	a5,s11,16
   19fd0:	10079263          	bnez	a5,1a0d4 <_svfprintf_r+0x12c8>
   19fd4:	02013683          	ld	a3,32(sp)
   19fd8:	040df793          	andi	a5,s11,64
   19fdc:	0006ad03          	lw	s10,0(a3)
   19fe0:	080780e3          	beqz	a5,1a860 <_svfprintf_r+0x1a54>
   19fe4:	030d1d13          	slli	s10,s10,0x30
   19fe8:	030d5d13          	srli	s10,s10,0x30
   19fec:	02e13023          	sd	a4,32(sp)
   19ff0:	00100793          	li	a5,1
   19ff4:	dccff06f          	j	195c0 <_svfprintf_r+0x7b4>
   19ff8:	00000d13          	li	s10,0
   19ffc:	17c10b13          	addi	s6,sp,380
   1a000:	df0ff06f          	j	195f0 <_svfprintf_r+0x7e4>
   1a004:	00013583          	ld	a1,0(sp)
   1a008:	10010613          	addi	a2,sp,256
   1a00c:	00098513          	mv	a0,s3
   1a010:	725030ef          	jal	ra,1df34 <__ssprint_r>
   1a014:	ae051ae3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a018:	11013703          	ld	a4,272(sp)
   1a01c:	10812683          	lw	a3,264(sp)
   1a020:	18010c93          	addi	s9,sp,384
   1a024:	af0ff06f          	j	19314 <_svfprintf_r+0x508>
   1a028:	00013583          	ld	a1,0(sp)
   1a02c:	10010613          	addi	a2,sp,256
   1a030:	00098513          	mv	a0,s3
   1a034:	701030ef          	jal	ra,1df34 <__ssprint_r>
   1a038:	ac0518e3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a03c:	11013d03          	ld	s10,272(sp)
   1a040:	10812403          	lw	s0,264(sp)
   1a044:	18010c93          	addi	s9,sp,384
   1a048:	af8ff06f          	j	19340 <_svfprintf_r+0x534>
   1a04c:	00197793          	andi	a5,s2,1
   1a050:	000d8713          	mv	a4,s11
   1a054:	88078063          	beqz	a5,190d4 <_svfprintf_r+0x2c8>
   1a058:	f7cff06f          	j	197d4 <_svfprintf_r+0x9c8>
   1a05c:	000a8313          	mv	t1,s5
   1a060:	dd8ff06f          	j	19638 <_svfprintf_r+0x82c>
   1a064:	0004ce03          	lbu	t3,0(s1)
   1a068:	02f13023          	sd	a5,32(sp)
   1a06c:	f01fe06f          	j	18f6c <_svfprintf_r+0x160>
   1a070:	03000793          	li	a5,48
   1a074:	16f10da3          	sb	a5,379(sp)
   1a078:	17b10b13          	addi	s6,sp,379
   1a07c:	d74ff06f          	j	195f0 <_svfprintf_r+0x7e4>
   1a080:	01097793          	andi	a5,s2,16
   1a084:	ea079c63          	bnez	a5,1973c <_svfprintf_r+0x930>
   1a088:	04097793          	andi	a5,s2,64
   1a08c:	0e079ce3          	bnez	a5,1a984 <_svfprintf_r+0x1b78>
   1a090:	20097913          	andi	s2,s2,512
   1a094:	01013783          	ld	a5,16(sp)
   1a098:	00091463          	bnez	s2,1a0a0 <_svfprintf_r+0x1294>
   1a09c:	1500106f          	j	1b1ec <_svfprintf_r+0x23e0>
   1a0a0:	00f70023          	sb	a5,0(a4)
   1a0a4:	ea0ff06f          	j	19744 <_svfprintf_r+0x938>
   1a0a8:	02013783          	ld	a5,32(sp)
   1a0ac:	0007bd03          	ld	s10,0(a5)
   1a0b0:	e00ff06f          	j	196b0 <_svfprintf_r+0x8a4>
   1a0b4:	02013783          	ld	a5,32(sp)
   1a0b8:	00f78a93          	addi	s5,a5,15
   1a0bc:	ff0afa93          	andi	s5,s5,-16
   1a0c0:	010a8793          	addi	a5,s5,16
   1a0c4:	000ab703          	ld	a4,0(s5)
   1a0c8:	008ab583          	ld	a1,8(s5)
   1a0cc:	02f13023          	sd	a5,32(sp)
   1a0d0:	920ff06f          	j	191f0 <_svfprintf_r+0x3e4>
   1a0d4:	02013783          	ld	a5,32(sp)
   1a0d8:	02e13023          	sd	a4,32(sp)
   1a0dc:	0007bd03          	ld	s10,0(a5)
   1a0e0:	00100793          	li	a5,1
   1a0e4:	cdcff06f          	j	195c0 <_svfprintf_r+0x7b4>
   1a0e8:	02013783          	ld	a5,32(sp)
   1a0ec:	0007b783          	ld	a5,0(a5)
   1a0f0:	00078d13          	mv	s10,a5
   1a0f4:	d5cff06f          	j	19650 <_svfprintf_r+0x844>
   1a0f8:	00070693          	mv	a3,a4
   1a0fc:	00068c9b          	sext.w	s9,a3
   1a100:	c19048e3          	bgtz	s9,19d10 <_svfprintf_r+0xf04>
   1a104:	c35ff06f          	j	19d38 <_svfprintf_r+0xf2c>
   1a108:	d6031863          	bnez	t1,19678 <_svfprintf_r+0x86c>
   1a10c:	000d8913          	mv	s2,s11
   1a110:	17c10b13          	addi	s6,sp,380
   1a114:	cdcff06f          	j	195f0 <_svfprintf_r+0x7e4>
   1a118:	000227b7          	lui	a5,0x22
   1a11c:	d0878793          	addi	a5,a5,-760 # 21d08 <__clzdi2+0x78>
   1a120:	000a8313          	mv	t1,s5
   1a124:	06f13423          	sd	a5,104(sp)
   1a128:	02013683          	ld	a3,32(sp)
   1a12c:	02097793          	andi	a5,s2,32
   1a130:	00868713          	addi	a4,a3,8
   1a134:	32078263          	beqz	a5,1a458 <_svfprintf_r+0x164c>
   1a138:	0006bd03          	ld	s10,0(a3)
   1a13c:	00197793          	andi	a5,s2,1
   1a140:	00078e63          	beqz	a5,1a15c <_svfprintf_r+0x1350>
   1a144:	000d0c63          	beqz	s10,1a15c <_svfprintf_r+0x1350>
   1a148:	00296913          	ori	s2,s2,2
   1a14c:	03000793          	li	a5,48
   1a150:	0cf10823          	sb	a5,208(sp)
   1a154:	0d9108a3          	sb	s9,209(sp)
   1a158:	0009091b          	sext.w	s2,s2
   1a15c:	bff97d93          	andi	s11,s2,-1025
   1a160:	000d8d9b          	sext.w	s11,s11
   1a164:	02e13023          	sd	a4,32(sp)
   1a168:	00200793          	li	a5,2
   1a16c:	c54ff06f          	j	195c0 <_svfprintf_r+0x7b4>
   1a170:	000a8313          	mv	t1,s5
   1a174:	00090d93          	mv	s11,s2
   1a178:	c2cff06f          	j	195a4 <_svfprintf_r+0x798>
   1a17c:	20096913          	ori	s2,s2,512
   1a180:	0014ce03          	lbu	t3,1(s1)
   1a184:	0009091b          	sext.w	s2,s2
   1a188:	00148493          	addi	s1,s1,1
   1a18c:	de1fe06f          	j	18f6c <_svfprintf_r+0x160>
   1a190:	02096913          	ori	s2,s2,32
   1a194:	0014ce03          	lbu	t3,1(s1)
   1a198:	0009091b          	sext.w	s2,s2
   1a19c:	00148493          	addi	s1,s1,1
   1a1a0:	dcdfe06f          	j	18f6c <_svfprintf_r+0x160>
   1a1a4:	000a8313          	mv	t1,s5
   1a1a8:	cf4ff06f          	j	1969c <_svfprintf_r+0x890>
   1a1ac:	000227b7          	lui	a5,0x22
   1a1b0:	d2078793          	addi	a5,a5,-736 # 21d20 <__clzdi2+0x90>
   1a1b4:	000a8313          	mv	t1,s5
   1a1b8:	06f13423          	sd	a5,104(sp)
   1a1bc:	f6dff06f          	j	1a128 <_svfprintf_r+0x131c>
   1a1c0:	00013583          	ld	a1,0(sp)
   1a1c4:	10010613          	addi	a2,sp,256
   1a1c8:	00098513          	mv	a0,s3
   1a1cc:	569030ef          	jal	ra,1df34 <__ssprint_r>
   1a1d0:	92051ce3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a1d4:	11013703          	ld	a4,272(sp)
   1a1d8:	18010413          	addi	s0,sp,384
   1a1dc:	e2cff06f          	j	19808 <_svfprintf_r+0x9fc>
   1a1e0:	05013503          	ld	a0,80(sp)
   1a1e4:	04000593          	li	a1,64
   1a1e8:	8e9fc0ef          	jal	ra,16ad0 <_malloc_r>
   1a1ec:	00013783          	ld	a5,0(sp)
   1a1f0:	00a7b023          	sd	a0,0(a5)
   1a1f4:	00a7bc23          	sd	a0,24(a5)
   1a1f8:	00051463          	bnez	a0,1a200 <_svfprintf_r+0x13f4>
   1a1fc:	7f90006f          	j	1b1f4 <_svfprintf_r+0x23e8>
   1a200:	00013783          	ld	a5,0(sp)
   1a204:	04000713          	li	a4,64
   1a208:	02e7a023          	sw	a4,32(a5)
   1a20c:	c85fe06f          	j	18e90 <_svfprintf_r+0x84>
   1a210:	00022f37          	lui	t5,0x22
   1a214:	01000593          	li	a1,16
   1a218:	000d8713          	mv	a4,s11
   1a21c:	10812603          	lw	a2,264(sp)
   1a220:	640f0d93          	addi	s11,t5,1600 # 22640 <zeroes.0>
   1a224:	6b95d663          	bge	a1,s9,1a8d0 <_svfprintf_r+0x1ac4>
   1a228:	00013b83          	ld	s7,0(sp)
   1a22c:	01000893          	li	a7,16
   1a230:	00700d13          	li	s10,7
   1a234:	00c0006f          	j	1a240 <_svfprintf_r+0x1434>
   1a238:	ff0c8c9b          	addiw	s9,s9,-16
   1a23c:	6998da63          	bge	a7,s9,1a8d0 <_svfprintf_r+0x1ac4>
   1a240:	0016061b          	addiw	a2,a2,1
   1a244:	01070713          	addi	a4,a4,16
   1a248:	01b43023          	sd	s11,0(s0)
   1a24c:	01143423          	sd	a7,8(s0)
   1a250:	10e13823          	sd	a4,272(sp)
   1a254:	10c12423          	sw	a2,264(sp)
   1a258:	01040413          	addi	s0,s0,16
   1a25c:	fccd5ee3          	bge	s10,a2,1a238 <_svfprintf_r+0x142c>
   1a260:	10010613          	addi	a2,sp,256
   1a264:	000b8593          	mv	a1,s7
   1a268:	00098513          	mv	a0,s3
   1a26c:	4c9030ef          	jal	ra,1df34 <__ssprint_r>
   1a270:	88051ce3          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a274:	11013703          	ld	a4,272(sp)
   1a278:	10812603          	lw	a2,264(sp)
   1a27c:	18010413          	addi	s0,sp,384
   1a280:	01000893          	li	a7,16
   1a284:	fb5ff06f          	j	1a238 <_svfprintf_r+0x142c>
   1a288:	000b0513          	mv	a0,s6
   1a28c:	a15fe0ef          	jal	ra,18ca0 <strlen>
   1a290:	00050d1b          	sext.w	s10,a0
   1a294:	9bcff06f          	j	19450 <_svfprintf_r+0x644>
   1a298:	04013d03          	ld	s10,64(sp)
   1a29c:	00022e37          	lui	t3,0x22
   1a2a0:	08913823          	sd	s1,144(sp)
   1a2a4:	09213c23          	sd	s2,152(sp)
   1a2a8:	0b413023          	sd	s4,160(sp)
   1a2ac:	05813023          	sd	s8,64(sp)
   1a2b0:	000b0a13          	mv	s4,s6
   1a2b4:	07813903          	ld	s2,120(sp)
   1a2b8:	08813483          	ld	s1,136(sp)
   1a2bc:	08013b03          	ld	s6,128(sp)
   1a2c0:	04813c03          	ld	s8,72(sp)
   1a2c4:	00013b83          	ld	s7,0(sp)
   1a2c8:	00700313          	li	t1,7
   1a2cc:	01000893          	li	a7,16
   1a2d0:	640e0c93          	addi	s9,t3,1600 # 22640 <zeroes.0>
   1a2d4:	000d8713          	mv	a4,s11
   1a2d8:	080d0c63          	beqz	s10,1a370 <_svfprintf_r+0x1564>
   1a2dc:	160c0863          	beqz	s8,1a44c <_svfprintf_r+0x1640>
   1a2e0:	fffc0c1b          	addiw	s8,s8,-1
   1a2e4:	10812783          	lw	a5,264(sp)
   1a2e8:	01670733          	add	a4,a4,s6
   1a2ec:	00943023          	sd	s1,0(s0)
   1a2f0:	0017869b          	addiw	a3,a5,1
   1a2f4:	01643423          	sd	s6,8(s0)
   1a2f8:	10e13823          	sd	a4,272(sp)
   1a2fc:	10d12423          	sw	a3,264(sp)
   1a300:	01040413          	addi	s0,s0,16
   1a304:	16d34463          	blt	t1,a3,1a46c <_svfprintf_r+0x1660>
   1a308:	00094683          	lbu	a3,0(s2)
   1a30c:	414a8db3          	sub	s11,s5,s4
   1a310:	000d879b          	sext.w	a5,s11
   1a314:	0006861b          	sext.w	a2,a3
   1a318:	00f6d463          	bge	a3,a5,1a320 <_svfprintf_r+0x1514>
   1a31c:	00060d93          	mv	s11,a2
   1a320:	000d8d9b          	sext.w	s11,s11
   1a324:	03b05863          	blez	s11,1a354 <_svfprintf_r+0x1548>
   1a328:	10812783          	lw	a5,264(sp)
   1a32c:	01b70733          	add	a4,a4,s11
   1a330:	01443023          	sd	s4,0(s0)
   1a334:	0017869b          	addiw	a3,a5,1
   1a338:	01b43423          	sd	s11,8(s0)
   1a33c:	10e13823          	sd	a4,272(sp)
   1a340:	10d12423          	sw	a3,264(sp)
   1a344:	36d34e63          	blt	t1,a3,1a6c0 <_svfprintf_r+0x18b4>
   1a348:	00094683          	lbu	a3,0(s2)
   1a34c:	01040413          	addi	s0,s0,16
   1a350:	0006861b          	sext.w	a2,a3
   1a354:	fffdc793          	not	a5,s11
   1a358:	43f7d793          	srai	a5,a5,0x3f
   1a35c:	00fdf7b3          	and	a5,s11,a5
   1a360:	40f60dbb          	subw	s11,a2,a5
   1a364:	03b04c63          	bgtz	s11,1a39c <_svfprintf_r+0x1590>
   1a368:	00da0a33          	add	s4,s4,a3
   1a36c:	f60d18e3          	bnez	s10,1a2dc <_svfprintf_r+0x14d0>
   1a370:	f60c18e3          	bnez	s8,1a2e0 <_svfprintf_r+0x14d4>
   1a374:	07213c23          	sd	s2,120(sp)
   1a378:	000a0b13          	mv	s6,s4
   1a37c:	09013483          	ld	s1,144(sp)
   1a380:	09813903          	ld	s2,152(sp)
   1a384:	0a013a03          	ld	s4,160(sp)
   1a388:	04013c03          	ld	s8,64(sp)
   1a38c:	00070d93          	mv	s11,a4
   1a390:	9d6af8e3          	bgeu	s5,s6,19d60 <_svfprintf_r+0xf54>
   1a394:	000a8b13          	mv	s6,s5
   1a398:	9c9ff06f          	j	19d60 <_svfprintf_r+0xf54>
   1a39c:	00022637          	lui	a2,0x22
   1a3a0:	10812783          	lw	a5,264(sp)
   1a3a4:	64060613          	addi	a2,a2,1600 # 22640 <zeroes.0>
   1a3a8:	07b8dc63          	bge	a7,s11,1a420 <_svfprintf_r+0x1614>
   1a3ac:	02913823          	sd	s1,48(sp)
   1a3b0:	000d8493          	mv	s1,s11
   1a3b4:	000c8d93          	mv	s11,s9
   1a3b8:	00c0006f          	j	1a3c4 <_svfprintf_r+0x15b8>
   1a3bc:	ff04849b          	addiw	s1,s1,-16
   1a3c0:	0498da63          	bge	a7,s1,1a414 <_svfprintf_r+0x1608>
   1a3c4:	0017879b          	addiw	a5,a5,1
   1a3c8:	01070713          	addi	a4,a4,16
   1a3cc:	01943023          	sd	s9,0(s0)
   1a3d0:	01143423          	sd	a7,8(s0)
   1a3d4:	10e13823          	sd	a4,272(sp)
   1a3d8:	10f12423          	sw	a5,264(sp)
   1a3dc:	01040413          	addi	s0,s0,16
   1a3e0:	fcf35ee3          	bge	t1,a5,1a3bc <_svfprintf_r+0x15b0>
   1a3e4:	10010613          	addi	a2,sp,256
   1a3e8:	000b8593          	mv	a1,s7
   1a3ec:	00098513          	mv	a0,s3
   1a3f0:	345030ef          	jal	ra,1df34 <__ssprint_r>
   1a3f4:	f0051a63          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a3f8:	01000893          	li	a7,16
   1a3fc:	ff04849b          	addiw	s1,s1,-16
   1a400:	11013703          	ld	a4,272(sp)
   1a404:	10812783          	lw	a5,264(sp)
   1a408:	18010413          	addi	s0,sp,384
   1a40c:	00700313          	li	t1,7
   1a410:	fa98cae3          	blt	a7,s1,1a3c4 <_svfprintf_r+0x15b8>
   1a414:	000d8613          	mv	a2,s11
   1a418:	00048d93          	mv	s11,s1
   1a41c:	03013483          	ld	s1,48(sp)
   1a420:	0017869b          	addiw	a3,a5,1
   1a424:	00ed8733          	add	a4,s11,a4
   1a428:	00c43023          	sd	a2,0(s0)
   1a42c:	01b43423          	sd	s11,8(s0)
   1a430:	10e13823          	sd	a4,272(sp)
   1a434:	10d12423          	sw	a3,264(sp)
   1a438:	24d34ae3          	blt	t1,a3,1ae8c <_svfprintf_r+0x2080>
   1a43c:	00094683          	lbu	a3,0(s2)
   1a440:	01040413          	addi	s0,s0,16
   1a444:	00da0a33          	add	s4,s4,a3
   1a448:	f25ff06f          	j	1a36c <_svfprintf_r+0x1560>
   1a44c:	fff90913          	addi	s2,s2,-1
   1a450:	fffd0d1b          	addiw	s10,s10,-1
   1a454:	e91ff06f          	j	1a2e4 <_svfprintf_r+0x14d8>
   1a458:	01097793          	andi	a5,s2,16
   1a45c:	1e078a63          	beqz	a5,1a650 <_svfprintf_r+0x1844>
   1a460:	02013783          	ld	a5,32(sp)
   1a464:	0007bd03          	ld	s10,0(a5)
   1a468:	cd5ff06f          	j	1a13c <_svfprintf_r+0x1330>
   1a46c:	10010613          	addi	a2,sp,256
   1a470:	000b8593          	mv	a1,s7
   1a474:	00098513          	mv	a0,s3
   1a478:	2bd030ef          	jal	ra,1df34 <__ssprint_r>
   1a47c:	e8051663          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a480:	11013703          	ld	a4,272(sp)
   1a484:	18010413          	addi	s0,sp,384
   1a488:	01000893          	li	a7,16
   1a48c:	00700313          	li	t1,7
   1a490:	e79ff06f          	j	1a308 <_svfprintf_r+0x14fc>
   1a494:	17c10a93          	addi	s5,sp,380
   1a498:	00913c23          	sd	s1,24(sp)
   1a49c:	07813483          	ld	s1,120(sp)
   1a4a0:	400df913          	andi	s2,s11,1024
   1a4a4:	000a8b13          	mv	s6,s5
   1a4a8:	00000793          	li	a5,0
   1a4ac:	02813c23          	sd	s0,56(sp)
   1a4b0:	00098a93          	mv	s5,s3
   1a4b4:	00090413          	mv	s0,s2
   1a4b8:	00900b93          	li	s7,9
   1a4bc:	0ff00c13          	li	s8,255
   1a4c0:	02613823          	sd	t1,48(sp)
   1a4c4:	00078913          	mv	s2,a5
   1a4c8:	000b0993          	mv	s3,s6
   1a4cc:	00a00593          	li	a1,10
   1a4d0:	000d0513          	mv	a0,s10
   1a4d4:	74c070ef          	jal	ra,21c20 <__umoddi3>
   1a4d8:	0305051b          	addiw	a0,a0,48
   1a4dc:	fea98fa3          	sb	a0,-1(s3)
   1a4e0:	0019091b          	addiw	s2,s2,1
   1a4e4:	fff98993          	addi	s3,s3,-1
   1a4e8:	00040663          	beqz	s0,1a4f4 <_svfprintf_r+0x16e8>
   1a4ec:	0004c703          	lbu	a4,0(s1)
   1a4f0:	04e90663          	beq	s2,a4,1a53c <_svfprintf_r+0x1730>
   1a4f4:	00a00593          	li	a1,10
   1a4f8:	000d0513          	mv	a0,s10
   1a4fc:	6dc070ef          	jal	ra,21bd8 <__hidden___udivdi3>
   1a500:	01abf663          	bgeu	s7,s10,1a50c <_svfprintf_r+0x1700>
   1a504:	00050d13          	mv	s10,a0
   1a508:	fc5ff06f          	j	1a4cc <_svfprintf_r+0x16c0>
   1a50c:	000b0793          	mv	a5,s6
   1a510:	00098b13          	mv	s6,s3
   1a514:	000a8993          	mv	s3,s5
   1a518:	00078a93          	mv	s5,a5
   1a51c:	03813403          	ld	s0,56(sp)
   1a520:	06913c23          	sd	s1,120(sp)
   1a524:	03213c23          	sd	s2,56(sp)
   1a528:	01813483          	ld	s1,24(sp)
   1a52c:	03013303          	ld	t1,48(sp)
   1a530:	416a8d3b          	subw	s10,s5,s6
   1a534:	000d8913          	mv	s2,s11
   1a538:	8b8ff06f          	j	195f0 <_svfprintf_r+0x7e4>
   1a53c:	fb870ce3          	beq	a4,s8,1a4f4 <_svfprintf_r+0x16e8>
   1a540:	fdabf6e3          	bgeu	s7,s10,1a50c <_svfprintf_r+0x1700>
   1a544:	08013783          	ld	a5,128(sp)
   1a548:	08813583          	ld	a1,136(sp)
   1a54c:	00000913          	li	s2,0
   1a550:	40f989b3          	sub	s3,s3,a5
   1a554:	00078613          	mv	a2,a5
   1a558:	00098513          	mv	a0,s3
   1a55c:	80dfe0ef          	jal	ra,18d68 <strncpy>
   1a560:	0014c703          	lbu	a4,1(s1)
   1a564:	000d0513          	mv	a0,s10
   1a568:	00a00593          	li	a1,10
   1a56c:	00e03733          	snez	a4,a4
   1a570:	00e484b3          	add	s1,s1,a4
   1a574:	664070ef          	jal	ra,21bd8 <__hidden___udivdi3>
   1a578:	00050d13          	mv	s10,a0
   1a57c:	f51ff06f          	j	1a4cc <_svfprintf_r+0x16c0>
   1a580:	10812683          	lw	a3,264(sp)
   1a584:	000225b7          	lui	a1,0x22
   1a588:	d4058593          	addi	a1,a1,-704 # 21d40 <__clzdi2+0xb0>
   1a58c:	0016869b          	addiw	a3,a3,1
   1a590:	00b43023          	sd	a1,0(s0)
   1a594:	001d8713          	addi	a4,s11,1
   1a598:	00100593          	li	a1,1
   1a59c:	00b43423          	sd	a1,8(s0)
   1a5a0:	10d12423          	sw	a3,264(sp)
   1a5a4:	0006859b          	sext.w	a1,a3
   1a5a8:	10e13823          	sd	a4,272(sp)
   1a5ac:	00700693          	li	a3,7
   1a5b0:	01040413          	addi	s0,s0,16
   1a5b4:	06b6cc63          	blt	a3,a1,1a62c <_svfprintf_r+0x1820>
   1a5b8:	20061463          	bnez	a2,1a7c0 <_svfprintf_r+0x19b4>
   1a5bc:	03813783          	ld	a5,56(sp)
   1a5c0:	00197693          	andi	a3,s2,1
   1a5c4:	00d7e6b3          	or	a3,a5,a3
   1a5c8:	00069463          	bnez	a3,1a5d0 <_svfprintf_r+0x17c4>
   1a5cc:	b09fe06f          	j	190d4 <_svfprintf_r+0x2c8>
   1a5d0:	10812603          	lw	a2,264(sp)
   1a5d4:	05813783          	ld	a5,88(sp)
   1a5d8:	06013683          	ld	a3,96(sp)
   1a5dc:	00e78733          	add	a4,a5,a4
   1a5e0:	00d43023          	sd	a3,0(s0)
   1a5e4:	0016069b          	addiw	a3,a2,1
   1a5e8:	00f43423          	sd	a5,8(s0)
   1a5ec:	10e13823          	sd	a4,272(sp)
   1a5f0:	10d12423          	sw	a3,264(sp)
   1a5f4:	00700613          	li	a2,7
   1a5f8:	5ad64263          	blt	a2,a3,1ab9c <_svfprintf_r+0x1d90>
   1a5fc:	01040413          	addi	s0,s0,16
   1a600:	03813783          	ld	a5,56(sp)
   1a604:	0016861b          	addiw	a2,a3,1
   1a608:	01643023          	sd	s6,0(s0)
   1a60c:	00e78733          	add	a4,a5,a4
   1a610:	00f43423          	sd	a5,8(s0)
   1a614:	10e13823          	sd	a4,272(sp)
   1a618:	10c12423          	sw	a2,264(sp)
   1a61c:	00700793          	li	a5,7
   1a620:	00c7c463          	blt	a5,a2,1a628 <_svfprintf_r+0x181c>
   1a624:	aadfe06f          	j	190d0 <_svfprintf_r+0x2c4>
   1a628:	d91fe06f          	j	193b8 <_svfprintf_r+0x5ac>
   1a62c:	00013583          	ld	a1,0(sp)
   1a630:	10010613          	addi	a2,sp,256
   1a634:	00098513          	mv	a0,s3
   1a638:	0fd030ef          	jal	ra,1df34 <__ssprint_r>
   1a63c:	cc051663          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a640:	0d812603          	lw	a2,216(sp)
   1a644:	11013703          	ld	a4,272(sp)
   1a648:	18010413          	addi	s0,sp,384
   1a64c:	f6dff06f          	j	1a5b8 <_svfprintf_r+0x17ac>
   1a650:	02013683          	ld	a3,32(sp)
   1a654:	04097793          	andi	a5,s2,64
   1a658:	0006ad03          	lw	s10,0(a3)
   1a65c:	24078263          	beqz	a5,1a8a0 <_svfprintf_r+0x1a94>
   1a660:	030d1d13          	slli	s10,s10,0x30
   1a664:	030d5d13          	srli	s10,s10,0x30
   1a668:	ad5ff06f          	j	1a13c <_svfprintf_r+0x1330>
   1a66c:	00090d93          	mv	s11,s2
   1a670:	02e13023          	sd	a4,32(sp)
   1a674:	ffdfe06f          	j	19670 <_svfprintf_r+0x864>
   1a678:	00013583          	ld	a1,0(sp)
   1a67c:	10010613          	addi	a2,sp,256
   1a680:	00098513          	mv	a0,s3
   1a684:	0b1030ef          	jal	ra,1df34 <__ssprint_r>
   1a688:	c8051063          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a68c:	11013d83          	ld	s11,272(sp)
   1a690:	18010413          	addi	s0,sp,384
   1a694:	934ff06f          	j	197c8 <_svfprintf_r+0x9bc>
   1a698:	0017869b          	addiw	a3,a5,1
   1a69c:	01b43023          	sd	s11,0(s0)
   1a6a0:	01943423          	sd	s9,8(s0)
   1a6a4:	01970733          	add	a4,a4,s9
   1a6a8:	10e13823          	sd	a4,272(sp)
   1a6ac:	10d12423          	sw	a3,264(sp)
   1a6b0:	00700793          	li	a5,7
   1a6b4:	00d7c463          	blt	a5,a3,1a6bc <_svfprintf_r+0x18b0>
   1a6b8:	a19fe06f          	j	190d0 <_svfprintf_r+0x2c4>
   1a6bc:	cfdfe06f          	j	193b8 <_svfprintf_r+0x5ac>
   1a6c0:	10010613          	addi	a2,sp,256
   1a6c4:	000b8593          	mv	a1,s7
   1a6c8:	00098513          	mv	a0,s3
   1a6cc:	069030ef          	jal	ra,1df34 <__ssprint_r>
   1a6d0:	c2051c63          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a6d4:	00094683          	lbu	a3,0(s2)
   1a6d8:	11013703          	ld	a4,272(sp)
   1a6dc:	18010413          	addi	s0,sp,384
   1a6e0:	0006861b          	sext.w	a2,a3
   1a6e4:	01000893          	li	a7,16
   1a6e8:	00700313          	li	t1,7
   1a6ec:	c69ff06f          	j	1a354 <_svfprintf_r+0x1548>
   1a6f0:	00013583          	ld	a1,0(sp)
   1a6f4:	10010613          	addi	a2,sp,256
   1a6f8:	00098513          	mv	a0,s3
   1a6fc:	08613823          	sd	t1,144(sp)
   1a700:	035030ef          	jal	ra,1df34 <__ssprint_r>
   1a704:	c0051263          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a708:	11013d83          	ld	s11,272(sp)
   1a70c:	09013303          	ld	t1,144(sp)
   1a710:	18010413          	addi	s0,sp,384
   1a714:	989fe06f          	j	1909c <_svfprintf_r+0x290>
   1a718:	0f013503          	ld	a0,240(sp)
   1a71c:	0f813583          	ld	a1,248(sp)
   1a720:	00000613          	li	a2,0
   1a724:	00000693          	li	a3,0
   1a728:	799050ef          	jal	ra,206c0 <__letf2>
   1a72c:	060542e3          	bltz	a0,1af90 <_svfprintf_r+0x2184>
   1a730:	0cf14703          	lbu	a4,207(sp)
   1a734:	04700793          	li	a5,71
   1a738:	1d97d263          	bge	a5,s9,1a8fc <_svfprintf_r+0x1af0>
   1a73c:	000227b7          	lui	a5,0x22
   1a740:	cf078b13          	addi	s6,a5,-784 # 21cf0 <__clzdi2+0x60>
   1a744:	f7f97913          	andi	s2,s2,-129
   1a748:	00013c23          	sd	zero,24(sp)
   1a74c:	04013423          	sd	zero,72(sp)
   1a750:	04013023          	sd	zero,64(sp)
   1a754:	02013823          	sd	zero,48(sp)
   1a758:	0009091b          	sext.w	s2,s2
   1a75c:	00300c13          	li	s8,3
   1a760:	00300d13          	li	s10,3
   1a764:	00000313          	li	t1,0
   1a768:	00070463          	beqz	a4,1a770 <_svfprintf_r+0x1964>
   1a76c:	d11fe06f          	j	1947c <_svfprintf_r+0x670>
   1a770:	891fe06f          	j	19000 <_svfprintf_r+0x1f4>
   1a774:	00600793          	li	a5,6
   1a778:	00030693          	mv	a3,t1
   1a77c:	1a67e663          	bltu	a5,t1,1a928 <_svfprintf_r+0x1b1c>
   1a780:	00068d1b          	sext.w	s10,a3
   1a784:	000227b7          	lui	a5,0x22
   1a788:	000d0c13          	mv	s8,s10
   1a78c:	03513023          	sd	s5,32(sp)
   1a790:	d3878b13          	addi	s6,a5,-712 # 21d38 <__clzdi2+0xa8>
   1a794:	859fe06f          	j	18fec <_svfprintf_r+0x1e0>
   1a798:	0014041b          	addiw	s0,s0,1
   1a79c:	015d0d33          	add	s10,s10,s5
   1a7a0:	01bcb023          	sd	s11,0(s9)
   1a7a4:	015cb423          	sd	s5,8(s9)
   1a7a8:	11a13823          	sd	s10,272(sp)
   1a7ac:	10812423          	sw	s0,264(sp)
   1a7b0:	00700793          	li	a5,7
   1a7b4:	0087c463          	blt	a5,s0,1a7bc <_svfprintf_r+0x19b0>
   1a7b8:	bcdfe06f          	j	19384 <_svfprintf_r+0x578>
   1a7bc:	eecff06f          	j	19ea8 <_svfprintf_r+0x109c>
   1a7c0:	10812583          	lw	a1,264(sp)
   1a7c4:	05813783          	ld	a5,88(sp)
   1a7c8:	06013683          	ld	a3,96(sp)
   1a7cc:	01040413          	addi	s0,s0,16
   1a7d0:	00e78733          	add	a4,a5,a4
   1a7d4:	fed43823          	sd	a3,-16(s0)
   1a7d8:	0015869b          	addiw	a3,a1,1
   1a7dc:	fef43c23          	sd	a5,-8(s0)
   1a7e0:	10e13823          	sd	a4,272(sp)
   1a7e4:	10d12423          	sw	a3,264(sp)
   1a7e8:	00700593          	li	a1,7
   1a7ec:	3ad5c863          	blt	a1,a3,1ab9c <_svfprintf_r+0x1d90>
   1a7f0:	e00658e3          	bgez	a2,1a600 <_svfprintf_r+0x17f4>
   1a7f4:	00022f37          	lui	t5,0x22
   1a7f8:	ff000593          	li	a1,-16
   1a7fc:	40c00cbb          	negw	s9,a2
   1a800:	640f0d93          	addi	s11,t5,1600 # 22640 <zeroes.0>
   1a804:	01000d13          	li	s10,16
   1a808:	00700a93          	li	s5,7
   1a80c:	00b64863          	blt	a2,a1,1a81c <_svfprintf_r+0x1a10>
   1a810:	1410006f          	j	1b150 <_svfprintf_r+0x2344>
   1a814:	ff0c8c9b          	addiw	s9,s9,-16
   1a818:	139d5ce3          	bge	s10,s9,1b150 <_svfprintf_r+0x2344>
   1a81c:	0016869b          	addiw	a3,a3,1
   1a820:	01070713          	addi	a4,a4,16
   1a824:	01b43023          	sd	s11,0(s0)
   1a828:	01a43423          	sd	s10,8(s0)
   1a82c:	10e13823          	sd	a4,272(sp)
   1a830:	10d12423          	sw	a3,264(sp)
   1a834:	01040413          	addi	s0,s0,16
   1a838:	fcdadee3          	bge	s5,a3,1a814 <_svfprintf_r+0x1a08>
   1a83c:	00013583          	ld	a1,0(sp)
   1a840:	10010613          	addi	a2,sp,256
   1a844:	00098513          	mv	a0,s3
   1a848:	6ec030ef          	jal	ra,1df34 <__ssprint_r>
   1a84c:	aa051e63          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a850:	11013703          	ld	a4,272(sp)
   1a854:	10812683          	lw	a3,264(sp)
   1a858:	18010413          	addi	s0,sp,384
   1a85c:	fb9ff06f          	j	1a814 <_svfprintf_r+0x1a08>
   1a860:	200df793          	andi	a5,s11,512
   1a864:	0e078c63          	beqz	a5,1a95c <_svfprintf_r+0x1b50>
   1a868:	0ffd7d13          	zext.b	s10,s10
   1a86c:	02e13023          	sd	a4,32(sp)
   1a870:	00100793          	li	a5,1
   1a874:	d4dfe06f          	j	195c0 <_svfprintf_r+0x7b4>
   1a878:	20097793          	andi	a5,s2,512
   1a87c:	0c078a63          	beqz	a5,1a950 <_svfprintf_r+0x1b44>
   1a880:	0ffd7d13          	zext.b	s10,s10
   1a884:	e2dfe06f          	j	196b0 <_svfprintf_r+0x8a4>
   1a888:	20097793          	andi	a5,s2,512
   1a88c:	0e078863          	beqz	a5,1a97c <_svfprintf_r+0x1b70>
   1a890:	018d1d1b          	slliw	s10,s10,0x18
   1a894:	418d5d1b          	sraiw	s10,s10,0x18
   1a898:	000d0793          	mv	a5,s10
   1a89c:	db5fe06f          	j	19650 <_svfprintf_r+0x844>
   1a8a0:	20097793          	andi	a5,s2,512
   1a8a4:	0c078663          	beqz	a5,1a970 <_svfprintf_r+0x1b64>
   1a8a8:	0ffd7d13          	zext.b	s10,s10
   1a8ac:	891ff06f          	j	1a13c <_svfprintf_r+0x1330>
   1a8b0:	0f813783          	ld	a5,248(sp)
   1a8b4:	2c07cc63          	bltz	a5,1ab8c <_svfprintf_r+0x1d80>
   1a8b8:	0cf14703          	lbu	a4,207(sp)
   1a8bc:	04700793          	li	a5,71
   1a8c0:	7b97d863          	bge	a5,s9,1b070 <_svfprintf_r+0x2264>
   1a8c4:	000227b7          	lui	a5,0x22
   1a8c8:	d0078b13          	addi	s6,a5,-768 # 21d00 <__clzdi2+0x70>
   1a8cc:	e79ff06f          	j	1a744 <_svfprintf_r+0x1938>
   1a8d0:	0016059b          	addiw	a1,a2,1
   1a8d4:	00ec8733          	add	a4,s9,a4
   1a8d8:	01b43023          	sd	s11,0(s0)
   1a8dc:	01943423          	sd	s9,8(s0)
   1a8e0:	10e13823          	sd	a4,272(sp)
   1a8e4:	10b12423          	sw	a1,264(sp)
   1a8e8:	00700693          	li	a3,7
   1a8ec:	2eb6c463          	blt	a3,a1,1abd4 <_svfprintf_r+0x1dc8>
   1a8f0:	01040413          	addi	s0,s0,16
   1a8f4:	00070d93          	mv	s11,a4
   1a8f8:	c58ff06f          	j	19d50 <_svfprintf_r+0xf44>
   1a8fc:	000227b7          	lui	a5,0x22
   1a900:	ce878b13          	addi	s6,a5,-792 # 21ce8 <__clzdi2+0x58>
   1a904:	e41ff06f          	j	1a744 <_svfprintf_r+0x1938>
   1a908:	00013583          	ld	a1,0(sp)
   1a90c:	10010613          	addi	a2,sp,256
   1a910:	00098513          	mv	a0,s3
   1a914:	620030ef          	jal	ra,1df34 <__ssprint_r>
   1a918:	9e051863          	bnez	a0,19b08 <_svfprintf_r+0xcfc>
   1a91c:	11013d83          	ld	s11,272(sp)
   1a920:	18010413          	addi	s0,sp,384
   1a924:	c14ff06f          	j	19d38 <_svfprintf_r+0xf2c>
   1a928:	00600693          	li	a3,6
   1a92c:	e55ff06f          	j	1a780 <_svfprintf_r+0x1974>
   1a930:	416a8cb3          	sub	s9,s5,s6
   1a934:	40d7863b          	subw	a2,a5,a3
   1a938:	000c879b          	sext.w	a5,s9
   1a93c:	000d8713          	mv	a4,s11
   1a940:	00f65463          	bge	a2,a5,1a948 <_svfprintf_r+0x1b3c>
   1a944:	00060c93          	mv	s9,a2
   1a948:	000c8c9b          	sext.w	s9,s9
   1a94c:	ca8ff06f          	j	19df4 <_svfprintf_r+0xfe8>
   1a950:	020d1d13          	slli	s10,s10,0x20
   1a954:	020d5d13          	srli	s10,s10,0x20
   1a958:	d59fe06f          	j	196b0 <_svfprintf_r+0x8a4>
   1a95c:	020d1d13          	slli	s10,s10,0x20
   1a960:	020d5d13          	srli	s10,s10,0x20
   1a964:	02e13023          	sd	a4,32(sp)
   1a968:	00100793          	li	a5,1
   1a96c:	c55fe06f          	j	195c0 <_svfprintf_r+0x7b4>
   1a970:	020d1d13          	slli	s10,s10,0x20
   1a974:	020d5d13          	srli	s10,s10,0x20
   1a978:	fc4ff06f          	j	1a13c <_svfprintf_r+0x1330>
   1a97c:	000d0793          	mv	a5,s10
   1a980:	cd1fe06f          	j	19650 <_svfprintf_r+0x844>
   1a984:	01013783          	ld	a5,16(sp)
   1a988:	00f71023          	sh	a5,0(a4)
   1a98c:	db9fe06f          	j	19744 <_svfprintf_r+0x938>
   1a990:	00030913          	mv	s2,t1
   1a994:	00200693          	li	a3,2
   1a998:	00090713          	mv	a4,s2
   1a99c:	0e810893          	addi	a7,sp,232
   1a9a0:	0dc10813          	addi	a6,sp,220
   1a9a4:	0d810793          	addi	a5,sp,216
   1a9a8:	000b8593          	mv	a1,s7
   1a9ac:	000c0613          	mv	a2,s8
   1a9b0:	00098513          	mv	a0,s3
   1a9b4:	02613823          	sd	t1,48(sp)
   1a9b8:	a6dfa0ef          	jal	ra,15424 <_ldtoa_r>
   1a9bc:	06700713          	li	a4,103
   1a9c0:	03013303          	ld	t1,48(sp)
   1a9c4:	00050b13          	mv	s6,a0
   1a9c8:	4aec8663          	beq	s9,a4,1ae74 <_svfprintf_r+0x2068>
   1a9cc:	04700713          	li	a4,71
   1a9d0:	4aec8263          	beq	s9,a4,1ae74 <_svfprintf_r+0x2068>
   1a9d4:	fdfcfa93          	andi	s5,s9,-33
   1a9d8:	04600713          	li	a4,70
   1a9dc:	01250d33          	add	s10,a0,s2
   1a9e0:	5eea8463          	beq	s5,a4,1afc8 <_svfprintf_r+0x21bc>
   1a9e4:	000c0593          	mv	a1,s8
   1a9e8:	00000613          	li	a2,0
   1a9ec:	00000693          	li	a3,0
   1a9f0:	000b8513          	mv	a0,s7
   1a9f4:	02613823          	sd	t1,48(sp)
   1a9f8:	319050ef          	jal	ra,20510 <__eqtf2>
   1a9fc:	03013303          	ld	t1,48(sp)
   1aa00:	000d0c13          	mv	s8,s10
   1aa04:	02050263          	beqz	a0,1aa28 <_svfprintf_r+0x1c1c>
   1aa08:	0e813c03          	ld	s8,232(sp)
   1aa0c:	01ac7e63          	bgeu	s8,s10,1aa28 <_svfprintf_r+0x1c1c>
   1aa10:	03000693          	li	a3,48
   1aa14:	001c0793          	addi	a5,s8,1
   1aa18:	0ef13423          	sd	a5,232(sp)
   1aa1c:	00dc0023          	sb	a3,0(s8)
   1aa20:	0e813c03          	ld	s8,232(sp)
   1aa24:	ffac68e3          	bltu	s8,s10,1aa14 <_svfprintf_r+0x1c08>
   1aa28:	416c07bb          	subw	a5,s8,s6
   1aa2c:	02f13c23          	sd	a5,56(sp)
   1aa30:	0d812703          	lw	a4,216(sp)
   1aa34:	04700693          	li	a3,71
   1aa38:	02e13823          	sd	a4,48(sp)
   1aa3c:	3ada8463          	beq	s5,a3,1ade4 <_svfprintf_r+0x1fd8>
   1aa40:	04600693          	li	a3,70
   1aa44:	68da8263          	beq	s5,a3,1b0c8 <_svfprintf_r+0x22bc>
   1aa48:	fff70d1b          	addiw	s10,a4,-1
   1aa4c:	0da12c23          	sw	s10,216(sp)
   1aa50:	06100693          	li	a3,97
   1aa54:	0cdc8ee3          	beq	s9,a3,1b330 <_svfprintf_r+0x2524>
   1aa58:	04100613          	li	a2,65
   1aa5c:	05000693          	li	a3,80
   1aa60:	3acc9063          	bne	s9,a2,1ae00 <_svfprintf_r+0x1ff4>
   1aa64:	00100613          	li	a2,1
   1aa68:	0ed10023          	sb	a3,224(sp)
   1aa6c:	02b00693          	li	a3,43
   1aa70:	000d5863          	bgez	s10,1aa80 <_svfprintf_r+0x1c74>
   1aa74:	00100d13          	li	s10,1
   1aa78:	40ed0d3b          	subw	s10,s10,a4
   1aa7c:	02d00693          	li	a3,45
   1aa80:	0ed100a3          	sb	a3,225(sp)
   1aa84:	00900713          	li	a4,9
   1aa88:	71a75863          	bge	a4,s10,1b198 <_svfprintf_r+0x238c>
   1aa8c:	0ef10913          	addi	s2,sp,239
   1aa90:	00090a93          	mv	s5,s2
   1aa94:	06300b93          	li	s7,99
   1aa98:	00a00593          	li	a1,10
   1aa9c:	000d0513          	mv	a0,s10
   1aaa0:	1b4070ef          	jal	ra,21c54 <__moddi3>
   1aaa4:	0305079b          	addiw	a5,a0,48
   1aaa8:	fefa8fa3          	sb	a5,-1(s5)
   1aaac:	000d0513          	mv	a0,s10
   1aab0:	00a00593          	li	a1,10
   1aab4:	000d0c13          	mv	s8,s10
   1aab8:	118070ef          	jal	ra,21bd0 <__divdi3>
   1aabc:	000a8d93          	mv	s11,s5
   1aac0:	00050d1b          	sext.w	s10,a0
   1aac4:	fffa8a93          	addi	s5,s5,-1
   1aac8:	fd8bc8e3          	blt	s7,s8,1aa98 <_svfprintf_r+0x1c8c>
   1aacc:	030d0d1b          	addiw	s10,s10,48
   1aad0:	ffed8713          	addi	a4,s11,-2
   1aad4:	ffaa8fa3          	sb	s10,-1(s5)
   1aad8:	072770e3          	bgeu	a4,s2,1b338 <_svfprintf_r+0x252c>
   1aadc:	0e210693          	addi	a3,sp,226
   1aae0:	00074783          	lbu	a5,0(a4)
   1aae4:	00170713          	addi	a4,a4,1
   1aae8:	00168693          	addi	a3,a3,1
   1aaec:	fef68fa3          	sb	a5,-1(a3)
   1aaf0:	ff2718e3          	bne	a4,s2,1aae0 <_svfprintf_r+0x1cd4>
   1aaf4:	0f110713          	addi	a4,sp,241
   1aaf8:	0e210793          	addi	a5,sp,226
   1aafc:	41b70733          	sub	a4,a4,s11
   1ab00:	00e78733          	add	a4,a5,a4
   1ab04:	0e010693          	addi	a3,sp,224
   1ab08:	40d707bb          	subw	a5,a4,a3
   1ab0c:	06f13823          	sd	a5,112(sp)
   1ab10:	07013703          	ld	a4,112(sp)
   1ab14:	03813783          	ld	a5,56(sp)
   1ab18:	00100613          	li	a2,1
   1ab1c:	00f70d3b          	addw	s10,a4,a5
   1ab20:	000d0713          	mv	a4,s10
   1ab24:	6ef65c63          	bge	a2,a5,1b21c <_svfprintf_r+0x2410>
   1ab28:	05813783          	ld	a5,88(sp)
   1ab2c:	00f70d3b          	addw	s10,a4,a5
   1ab30:	04013783          	ld	a5,64(sp)
   1ab34:	fffd4813          	not	a6,s10
   1ab38:	43f85813          	srai	a6,a6,0x3f
   1ab3c:	bff7f913          	andi	s2,a5,-1025
   1ab40:	0009091b          	sext.w	s2,s2
   1ab44:	010d7833          	and	a6,s10,a6
   1ab48:	10096913          	ori	s2,s2,256
   1ab4c:	00080c1b          	sext.w	s8,a6
   1ab50:	04013423          	sd	zero,72(sp)
   1ab54:	04013023          	sd	zero,64(sp)
   1ab58:	02013823          	sd	zero,48(sp)
   1ab5c:	09813783          	ld	a5,152(sp)
   1ab60:	2a078663          	beqz	a5,1ae0c <_svfprintf_r+0x2000>
   1ab64:	02d00713          	li	a4,45
   1ab68:	0ce107a3          	sb	a4,207(sp)
   1ab6c:	00000313          	li	t1,0
   1ab70:	001c0c1b          	addiw	s8,s8,1
   1ab74:	c8cfe06f          	j	19000 <_svfprintf_r+0x1f4>
   1ab78:	00013583          	ld	a1,0(sp)
   1ab7c:	05013503          	ld	a0,80(sp)
   1ab80:	10010613          	addi	a2,sp,256
   1ab84:	3b0030ef          	jal	ra,1df34 <__ssprint_r>
   1ab88:	dacfe06f          	j	19134 <_svfprintf_r+0x328>
   1ab8c:	02d00793          	li	a5,45
   1ab90:	0cf107a3          	sb	a5,207(sp)
   1ab94:	02d00713          	li	a4,45
   1ab98:	d25ff06f          	j	1a8bc <_svfprintf_r+0x1ab0>
   1ab9c:	00013583          	ld	a1,0(sp)
   1aba0:	10010613          	addi	a2,sp,256
   1aba4:	00098513          	mv	a0,s3
   1aba8:	38c030ef          	jal	ra,1df34 <__ssprint_r>
   1abac:	00050463          	beqz	a0,1abb4 <_svfprintf_r+0x1da8>
   1abb0:	f59fe06f          	j	19b08 <_svfprintf_r+0xcfc>
   1abb4:	0d812603          	lw	a2,216(sp)
   1abb8:	11013703          	ld	a4,272(sp)
   1abbc:	10812683          	lw	a3,264(sp)
   1abc0:	18010413          	addi	s0,sp,384
   1abc4:	a2065ee3          	bgez	a2,1a600 <_svfprintf_r+0x17f4>
   1abc8:	c2dff06f          	j	1a7f4 <_svfprintf_r+0x19e8>
   1abcc:	00600313          	li	t1,6
   1abd0:	e88fe06f          	j	19258 <_svfprintf_r+0x44c>
   1abd4:	00013583          	ld	a1,0(sp)
   1abd8:	10010613          	addi	a2,sp,256
   1abdc:	00098513          	mv	a0,s3
   1abe0:	354030ef          	jal	ra,1df34 <__ssprint_r>
   1abe4:	00050463          	beqz	a0,1abec <_svfprintf_r+0x1de0>
   1abe8:	f21fe06f          	j	19b08 <_svfprintf_r+0xcfc>
   1abec:	11013d83          	ld	s11,272(sp)
   1abf0:	18010413          	addi	s0,sp,384
   1abf4:	95cff06f          	j	19d50 <_svfprintf_r+0xf44>
   1abf8:	0013091b          	addiw	s2,t1,1 # ffffffff80000001 <__BSS_END__+0xffffffff7ffdb1f9>
   1abfc:	00200693          	li	a3,2
   1ac00:	d99ff06f          	j	1a998 <_svfprintf_r+0x1b8c>
   1ac04:	00030913          	mv	s2,t1
   1ac08:	00300693          	li	a3,3
   1ac0c:	d8dff06f          	j	1a998 <_svfprintf_r+0x1b8c>
   1ac10:	000c0593          	mv	a1,s8
   1ac14:	000b8513          	mv	a0,s7
   1ac18:	02613823          	sd	t1,48(sp)
   1ac1c:	591060ef          	jal	ra,219ac <__trunctfdf2>
   1ac20:	0d810593          	addi	a1,sp,216
   1ac24:	b5dfd0ef          	jal	ra,18780 <frexp>
   1ac28:	495060ef          	jal	ra,218bc <__extenddftf2>
   1ac2c:	00022737          	lui	a4,0x22
   1ac30:	f7873683          	ld	a3,-136(a4) # 21f78 <blanks.1+0x20>
   1ac34:	00000613          	li	a2,0
   1ac38:	395050ef          	jal	ra,207cc <__multf3>
   1ac3c:	00000613          	li	a2,0
   1ac40:	00000693          	li	a3,0
   1ac44:	00050d93          	mv	s11,a0
   1ac48:	00058913          	mv	s2,a1
   1ac4c:	0c5050ef          	jal	ra,20510 <__eqtf2>
   1ac50:	03013303          	ld	t1,48(sp)
   1ac54:	00051663          	bnez	a0,1ac60 <_svfprintf_r+0x1e54>
   1ac58:	00100713          	li	a4,1
   1ac5c:	0ce12c23          	sw	a4,216(sp)
   1ac60:	00022737          	lui	a4,0x22
   1ac64:	d0870793          	addi	a5,a4,-760 # 21d08 <__clzdi2+0x78>
   1ac68:	02f13c23          	sd	a5,56(sp)
   1ac6c:	000226b7          	lui	a3,0x22
   1ac70:	f886b783          	ld	a5,-120(a3) # 21f88 <blanks.1+0x30>
   1ac74:	02031713          	slli	a4,t1,0x20
   1ac78:	02075713          	srli	a4,a4,0x20
   1ac7c:	00170713          	addi	a4,a4,1
   1ac80:	02f13823          	sd	a5,48(sp)
   1ac84:	0003061b          	sext.w	a2,t1
   1ac88:	00eb07b3          	add	a5,s6,a4
   1ac8c:	04913423          	sd	s1,72(sp)
   1ac90:	0b413023          	sd	s4,160(sp)
   1ac94:	0a813823          	sd	s0,176(sp)
   1ac98:	0ac13c23          	sd	a2,184(sp)
   1ac9c:	03813403          	ld	s0,56(sp)
   1aca0:	00078493          	mv	s1,a5
   1aca4:	0a613423          	sd	t1,168(sp)
   1aca8:	000b0a13          	mv	s4,s6
   1acac:	00098b93          	mv	s7,s3
   1acb0:	000b0d13          	mv	s10,s6
   1acb4:	0140006f          	j	1acc8 <_svfprintf_r+0x1ebc>
   1acb8:	00000613          	li	a2,0
   1acbc:	00000693          	li	a3,0
   1acc0:	051050ef          	jal	ra,20510 <__eqtf2>
   1acc4:	56050463          	beqz	a0,1b22c <_svfprintf_r+0x2420>
   1acc8:	03013683          	ld	a3,48(sp)
   1accc:	00000613          	li	a2,0
   1acd0:	000d8513          	mv	a0,s11
   1acd4:	00090593          	mv	a1,s2
   1acd8:	2f5050ef          	jal	ra,207cc <__multf3>
   1acdc:	00058913          	mv	s2,a1
   1ace0:	00050993          	mv	s3,a0
   1ace4:	2e9060ef          	jal	ra,217cc <__fixtfsi>
   1ace8:	00050c1b          	sext.w	s8,a0
   1acec:	000c0513          	mv	a0,s8
   1acf0:	345060ef          	jal	ra,21834 <__floatsitf>
   1acf4:	00058693          	mv	a3,a1
   1acf8:	00050613          	mv	a2,a0
   1acfc:	00090593          	mv	a1,s2
   1ad00:	00098513          	mv	a0,s3
   1ad04:	214060ef          	jal	ra,20f18 <__subtf3>
   1ad08:	01840733          	add	a4,s0,s8
   1ad0c:	00074683          	lbu	a3,0(a4)
   1ad10:	000a0993          	mv	s3,s4
   1ad14:	001a0a13          	addi	s4,s4,1
   1ad18:	feda0fa3          	sb	a3,-1(s4)
   1ad1c:	00050a93          	mv	s5,a0
   1ad20:	00058b13          	mv	s6,a1
   1ad24:	00050d93          	mv	s11,a0
   1ad28:	00058913          	mv	s2,a1
   1ad2c:	f94496e3          	bne	s1,s4,1acb8 <_svfprintf_r+0x1eac>
   1ad30:	000a0a93          	mv	s5,s4
   1ad34:	04813483          	ld	s1,72(sp)
   1ad38:	0a813303          	ld	t1,168(sp)
   1ad3c:	0b013403          	ld	s0,176(sp)
   1ad40:	0a013a03          	ld	s4,160(sp)
   1ad44:	03313823          	sd	s3,48(sp)
   1ad48:	000d0b13          	mv	s6,s10
   1ad4c:	000b8993          	mv	s3,s7
   1ad50:	00050d13          	mv	s10,a0
   1ad54:	00058b93          	mv	s7,a1
   1ad58:	fff00d93          	li	s11,-1
   1ad5c:	000226b7          	lui	a3,0x22
   1ad60:	f986b903          	ld	s2,-104(a3) # 21f98 <blanks.1+0x40>
   1ad64:	00000613          	li	a2,0
   1ad68:	000d0513          	mv	a0,s10
   1ad6c:	00090693          	mv	a3,s2
   1ad70:	000b8593          	mv	a1,s7
   1ad74:	04613423          	sd	t1,72(sp)
   1ad78:	03d050ef          	jal	ra,205b4 <__getf2>
   1ad7c:	04813303          	ld	t1,72(sp)
   1ad80:	36a04663          	bgtz	a0,1b0ec <_svfprintf_r+0x22e0>
   1ad84:	00000613          	li	a2,0
   1ad88:	00090693          	mv	a3,s2
   1ad8c:	000d0513          	mv	a0,s10
   1ad90:	000b8593          	mv	a1,s7
   1ad94:	77c050ef          	jal	ra,20510 <__eqtf2>
   1ad98:	04813303          	ld	t1,72(sp)
   1ad9c:	00051663          	bnez	a0,1ada8 <_svfprintf_r+0x1f9c>
   1ada0:	001c7c13          	andi	s8,s8,1
   1ada4:	340c1463          	bnez	s8,1b0ec <_svfprintf_r+0x22e0>
   1ada8:	001d8c1b          	addiw	s8,s11,1
   1adac:	018a8c33          	add	s8,s5,s8
   1adb0:	03000693          	li	a3,48
   1adb4:	380dc263          	bltz	s11,1b138 <_svfprintf_r+0x232c>
   1adb8:	001a8a93          	addi	s5,s5,1
   1adbc:	feda8fa3          	sb	a3,-1(s5)
   1adc0:	ff5c1ce3          	bne	s8,s5,1adb8 <_svfprintf_r+0x1fac>
   1adc4:	416c07bb          	subw	a5,s8,s6
   1adc8:	02f13c23          	sd	a5,56(sp)
   1adcc:	fdfcfa93          	andi	s5,s9,-33
   1add0:	c61ff06f          	j	1aa30 <_svfprintf_r+0x1c24>
   1add4:	0e813c03          	ld	s8,232(sp)
   1add8:	0d812703          	lw	a4,216(sp)
   1addc:	416c07bb          	subw	a5,s8,s6
   1ade0:	02f13c23          	sd	a5,56(sp)
   1ade4:	ffd00693          	li	a3,-3
   1ade8:	02e13823          	sd	a4,48(sp)
   1adec:	00d74463          	blt	a4,a3,1adf4 <_svfprintf_r+0x1fe8>
   1adf0:	02e35863          	bge	t1,a4,1ae20 <_svfprintf_r+0x2014>
   1adf4:	fff70d1b          	addiw	s10,a4,-1
   1adf8:	ffec8c9b          	addiw	s9,s9,-2
   1adfc:	0da12c23          	sw	s10,216(sp)
   1ae00:	0ffcf693          	zext.b	a3,s9
   1ae04:	00000613          	li	a2,0
   1ae08:	c61ff06f          	j	1aa68 <_svfprintf_r+0x1c5c>
   1ae0c:	0cf14703          	lbu	a4,207(sp)
   1ae10:	00000313          	li	t1,0
   1ae14:	00070463          	beqz	a4,1ae1c <_svfprintf_r+0x2010>
   1ae18:	e64fe06f          	j	1947c <_svfprintf_r+0x670>
   1ae1c:	9e4fe06f          	j	19000 <_svfprintf_r+0x1f4>
   1ae20:	03813783          	ld	a5,56(sp)
   1ae24:	24f74c63          	blt	a4,a5,1b07c <_svfprintf_r+0x2270>
   1ae28:	04013783          	ld	a5,64(sp)
   1ae2c:	00070d13          	mv	s10,a4
   1ae30:	0017f613          	andi	a2,a5,1
   1ae34:	00060663          	beqz	a2,1ae40 <_svfprintf_r+0x2034>
   1ae38:	05813783          	ld	a5,88(sp)
   1ae3c:	00e78d3b          	addw	s10,a5,a4
   1ae40:	04013783          	ld	a5,64(sp)
   1ae44:	4007f613          	andi	a2,a5,1024
   1ae48:	00060463          	beqz	a2,1ae50 <_svfprintf_r+0x2044>
   1ae4c:	40e04c63          	bgtz	a4,1b264 <_svfprintf_r+0x2458>
   1ae50:	fffd4813          	not	a6,s10
   1ae54:	43f85813          	srai	a6,a6,0x3f
   1ae58:	09013903          	ld	s2,144(sp)
   1ae5c:	010d7833          	and	a6,s10,a6
   1ae60:	00080c1b          	sext.w	s8,a6
   1ae64:	06700c93          	li	s9,103
   1ae68:	04013423          	sd	zero,72(sp)
   1ae6c:	04013023          	sd	zero,64(sp)
   1ae70:	cedff06f          	j	1ab5c <_svfprintf_r+0x1d50>
   1ae74:	04013783          	ld	a5,64(sp)
   1ae78:	0017f713          	andi	a4,a5,1
   1ae7c:	f4070ce3          	beqz	a4,1add4 <_svfprintf_r+0x1fc8>
   1ae80:	012b0d33          	add	s10,s6,s2
   1ae84:	04700a93          	li	s5,71
   1ae88:	b5dff06f          	j	1a9e4 <_svfprintf_r+0x1bd8>
   1ae8c:	10010613          	addi	a2,sp,256
   1ae90:	000b8593          	mv	a1,s7
   1ae94:	00098513          	mv	a0,s3
   1ae98:	09c030ef          	jal	ra,1df34 <__ssprint_r>
   1ae9c:	00050463          	beqz	a0,1aea4 <_svfprintf_r+0x2098>
   1aea0:	c69fe06f          	j	19b08 <_svfprintf_r+0xcfc>
   1aea4:	00094683          	lbu	a3,0(s2)
   1aea8:	11013703          	ld	a4,272(sp)
   1aeac:	18010413          	addi	s0,sp,384
   1aeb0:	01000893          	li	a7,16
   1aeb4:	00700313          	li	t1,7
   1aeb8:	00da0a33          	add	s4,s4,a3
   1aebc:	cb0ff06f          	j	1a36c <_svfprintf_r+0x1560>
   1aec0:	07800713          	li	a4,120
   1aec4:	00296793          	ori	a5,s2,2
   1aec8:	03000693          	li	a3,48
   1aecc:	0007879b          	sext.w	a5,a5
   1aed0:	0ce108a3          	sb	a4,209(sp)
   1aed4:	0cd10823          	sb	a3,208(sp)
   1aed8:	06300713          	li	a4,99
   1aedc:	04f13023          	sd	a5,64(sp)
   1aee0:	00013c23          	sd	zero,24(sp)
   1aee4:	11810b13          	addi	s6,sp,280
   1aee8:	2e674063          	blt	a4,t1,1b1c8 <_svfprintf_r+0x23bc>
   1aeec:	10296913          	ori	s2,s2,258
   1aef0:	0f813c03          	ld	s8,248(sp)
   1aef4:	0009079b          	sext.w	a5,s2
   1aef8:	08f13823          	sd	a5,144(sp)
   1aefc:	08013c23          	sd	zero,152(sp)
   1af00:	0f013b83          	ld	s7,240(sp)
   1af04:	060c4a63          	bltz	s8,1af78 <_svfprintf_r+0x216c>
   1af08:	06100713          	li	a4,97
   1af0c:	00ec8463          	beq	s9,a4,1af14 <_svfprintf_r+0x2108>
   1af10:	b70fe06f          	j	19280 <_svfprintf_r+0x474>
   1af14:	000c0593          	mv	a1,s8
   1af18:	000b8513          	mv	a0,s7
   1af1c:	02613823          	sd	t1,48(sp)
   1af20:	28d060ef          	jal	ra,219ac <__trunctfdf2>
   1af24:	0d810593          	addi	a1,sp,216
   1af28:	859fd0ef          	jal	ra,18780 <frexp>
   1af2c:	191060ef          	jal	ra,218bc <__extenddftf2>
   1af30:	00022737          	lui	a4,0x22
   1af34:	f7873683          	ld	a3,-136(a4) # 21f78 <blanks.1+0x20>
   1af38:	00000613          	li	a2,0
   1af3c:	091050ef          	jal	ra,207cc <__multf3>
   1af40:	00000613          	li	a2,0
   1af44:	00000693          	li	a3,0
   1af48:	00050d93          	mv	s11,a0
   1af4c:	00058913          	mv	s2,a1
   1af50:	5c0050ef          	jal	ra,20510 <__eqtf2>
   1af54:	03013303          	ld	t1,48(sp)
   1af58:	00051663          	bnez	a0,1af64 <_svfprintf_r+0x2158>
   1af5c:	00100713          	li	a4,1
   1af60:	0ce12c23          	sw	a4,216(sp)
   1af64:	00022737          	lui	a4,0x22
   1af68:	d2070793          	addi	a5,a4,-736 # 21d20 <__clzdi2+0x90>
   1af6c:	02f13c23          	sd	a5,56(sp)
   1af70:	cfdff06f          	j	1ac6c <_svfprintf_r+0x1e60>
   1af74:	00013c23          	sd	zero,24(sp)
   1af78:	fff00713          	li	a4,-1
   1af7c:	03f71713          	slli	a4,a4,0x3f
   1af80:	02d00793          	li	a5,45
   1af84:	00ec4c33          	xor	s8,s8,a4
   1af88:	08f13c23          	sd	a5,152(sp)
   1af8c:	f7dff06f          	j	1af08 <_svfprintf_r+0x20fc>
   1af90:	02d00793          	li	a5,45
   1af94:	0cf107a3          	sb	a5,207(sp)
   1af98:	02d00713          	li	a4,45
   1af9c:	f98ff06f          	j	1a734 <_svfprintf_r+0x1928>
   1afa0:	00013583          	ld	a1,0(sp)
   1afa4:	10010613          	addi	a2,sp,256
   1afa8:	00098513          	mv	a0,s3
   1afac:	789020ef          	jal	ra,1df34 <__ssprint_r>
   1afb0:	00050463          	beqz	a0,1afb8 <_svfprintf_r+0x21ac>
   1afb4:	b55fe06f          	j	19b08 <_svfprintf_r+0xcfc>
   1afb8:	0d812683          	lw	a3,216(sp)
   1afbc:	11013703          	ld	a4,272(sp)
   1afc0:	18010413          	addi	s0,sp,384
   1afc4:	de5fe06f          	j	19da8 <_svfprintf_r+0xf9c>
   1afc8:	00054683          	lbu	a3,0(a0)
   1afcc:	03000713          	li	a4,48
   1afd0:	00e68863          	beq	a3,a4,1afe0 <_svfprintf_r+0x21d4>
   1afd4:	0d812683          	lw	a3,216(sp)
   1afd8:	00dd0d33          	add	s10,s10,a3
   1afdc:	a09ff06f          	j	1a9e4 <_svfprintf_r+0x1bd8>
   1afe0:	00000613          	li	a2,0
   1afe4:	00000693          	li	a3,0
   1afe8:	000b8513          	mv	a0,s7
   1afec:	000c0593          	mv	a1,s8
   1aff0:	02613823          	sd	t1,48(sp)
   1aff4:	51c050ef          	jal	ra,20510 <__eqtf2>
   1aff8:	03013303          	ld	t1,48(sp)
   1affc:	fc050ce3          	beqz	a0,1afd4 <_svfprintf_r+0x21c8>
   1b000:	00100713          	li	a4,1
   1b004:	412706bb          	subw	a3,a4,s2
   1b008:	0cd12c23          	sw	a3,216(sp)
   1b00c:	00dd0d33          	add	s10,s10,a3
   1b010:	9d5ff06f          	j	1a9e4 <_svfprintf_r+0x1bd8>
   1b014:	0cf14703          	lbu	a4,207(sp)
   1b018:	03513023          	sd	s5,32(sp)
   1b01c:	04013423          	sd	zero,72(sp)
   1b020:	04013023          	sd	zero,64(sp)
   1b024:	02013823          	sd	zero,48(sp)
   1b028:	00030c13          	mv	s8,t1
   1b02c:	00030d13          	mv	s10,t1
   1b030:	00000313          	li	t1,0
   1b034:	00070463          	beqz	a4,1b03c <_svfprintf_r+0x2230>
   1b038:	c44fe06f          	j	1947c <_svfprintf_r+0x670>
   1b03c:	fc5fd06f          	j	19000 <_svfprintf_r+0x1f4>
   1b040:	00013583          	ld	a1,0(sp)
   1b044:	10010613          	addi	a2,sp,256
   1b048:	00098513          	mv	a0,s3
   1b04c:	6e9020ef          	jal	ra,1df34 <__ssprint_r>
   1b050:	00050463          	beqz	a0,1b058 <_svfprintf_r+0x224c>
   1b054:	ab5fe06f          	j	19b08 <_svfprintf_r+0xcfc>
   1b058:	0d812603          	lw	a2,216(sp)
   1b05c:	03813783          	ld	a5,56(sp)
   1b060:	11013703          	ld	a4,272(sp)
   1b064:	18010413          	addi	s0,sp,384
   1b068:	40c7863b          	subw	a2,a5,a2
   1b06c:	d89fe06f          	j	19df4 <_svfprintf_r+0xfe8>
   1b070:	000227b7          	lui	a5,0x22
   1b074:	cf878b13          	addi	s6,a5,-776 # 21cf8 <__clzdi2+0x68>
   1b078:	eccff06f          	j	1a744 <_svfprintf_r+0x1938>
   1b07c:	05813783          	ld	a5,88(sp)
   1b080:	03813703          	ld	a4,56(sp)
   1b084:	06700c93          	li	s9,103
   1b088:	00e78d3b          	addw	s10,a5,a4
   1b08c:	03013783          	ld	a5,48(sp)
   1b090:	26f05463          	blez	a5,1b2f8 <_svfprintf_r+0x24ec>
   1b094:	04013783          	ld	a5,64(sp)
   1b098:	4007f713          	andi	a4,a5,1024
   1b09c:	1c071663          	bnez	a4,1b268 <_svfprintf_r+0x245c>
   1b0a0:	fffd4813          	not	a6,s10
   1b0a4:	43f85813          	srai	a6,a6,0x3f
   1b0a8:	010d7833          	and	a6,s10,a6
   1b0ac:	09013903          	ld	s2,144(sp)
   1b0b0:	00080c1b          	sext.w	s8,a6
   1b0b4:	db5ff06f          	j	1ae68 <_svfprintf_r+0x205c>
   1b0b8:	05800713          	li	a4,88
   1b0bc:	e09ff06f          	j	1aec4 <_svfprintf_r+0x20b8>
   1b0c0:	00090d93          	mv	s11,s2
   1b0c4:	db4fe06f          	j	19678 <_svfprintf_r+0x86c>
   1b0c8:	04013783          	ld	a5,64(sp)
   1b0cc:	0017f713          	andi	a4,a5,1
   1b0d0:	03013783          	ld	a5,48(sp)
   1b0d4:	00e36733          	or	a4,t1,a4
   1b0d8:	26f05663          	blez	a5,1b344 <_svfprintf_r+0x2538>
   1b0dc:	24071063          	bnez	a4,1b31c <_svfprintf_r+0x2510>
   1b0e0:	03013d03          	ld	s10,48(sp)
   1b0e4:	06600c93          	li	s9,102
   1b0e8:	fadff06f          	j	1b094 <_svfprintf_r+0x2288>
   1b0ec:	03013783          	ld	a5,48(sp)
   1b0f0:	000a8693          	mv	a3,s5
   1b0f4:	0ef13423          	sd	a5,232(sp)
   1b0f8:	03813783          	ld	a5,56(sp)
   1b0fc:	fffac603          	lbu	a2,-1(s5)
   1b100:	00f7c583          	lbu	a1,15(a5)
   1b104:	02c59063          	bne	a1,a2,1b124 <_svfprintf_r+0x2318>
   1b108:	03000513          	li	a0,48
   1b10c:	fea68fa3          	sb	a0,-1(a3)
   1b110:	0e813683          	ld	a3,232(sp)
   1b114:	fff68793          	addi	a5,a3,-1
   1b118:	0ef13423          	sd	a5,232(sp)
   1b11c:	fff6c603          	lbu	a2,-1(a3)
   1b120:	fec586e3          	beq	a1,a2,1b10c <_svfprintf_r+0x2300>
   1b124:	0016059b          	addiw	a1,a2,1
   1b128:	03900513          	li	a0,57
   1b12c:	0ff5f593          	zext.b	a1,a1
   1b130:	00a60863          	beq	a2,a0,1b140 <_svfprintf_r+0x2334>
   1b134:	feb68fa3          	sb	a1,-1(a3)
   1b138:	000a8c13          	mv	s8,s5
   1b13c:	c89ff06f          	j	1adc4 <_svfprintf_r+0x1fb8>
   1b140:	03813783          	ld	a5,56(sp)
   1b144:	00a7c583          	lbu	a1,10(a5)
   1b148:	feb68fa3          	sb	a1,-1(a3)
   1b14c:	fedff06f          	j	1b138 <_svfprintf_r+0x232c>
   1b150:	0016869b          	addiw	a3,a3,1
   1b154:	01970733          	add	a4,a4,s9
   1b158:	01b43023          	sd	s11,0(s0)
   1b15c:	01943423          	sd	s9,8(s0)
   1b160:	10e13823          	sd	a4,272(sp)
   1b164:	10d12423          	sw	a3,264(sp)
   1b168:	00700613          	li	a2,7
   1b16c:	c8d65863          	bge	a2,a3,1a5fc <_svfprintf_r+0x17f0>
   1b170:	00013583          	ld	a1,0(sp)
   1b174:	10010613          	addi	a2,sp,256
   1b178:	00098513          	mv	a0,s3
   1b17c:	5b9020ef          	jal	ra,1df34 <__ssprint_r>
   1b180:	00050463          	beqz	a0,1b188 <_svfprintf_r+0x237c>
   1b184:	985fe06f          	j	19b08 <_svfprintf_r+0xcfc>
   1b188:	11013703          	ld	a4,272(sp)
   1b18c:	10812683          	lw	a3,264(sp)
   1b190:	18010413          	addi	s0,sp,384
   1b194:	c6cff06f          	j	1a600 <_svfprintf_r+0x17f4>
   1b198:	0e210713          	addi	a4,sp,226
   1b19c:	00061863          	bnez	a2,1b1ac <_svfprintf_r+0x23a0>
   1b1a0:	03000713          	li	a4,48
   1b1a4:	0ee10123          	sb	a4,226(sp)
   1b1a8:	0e310713          	addi	a4,sp,227
   1b1ac:	20010793          	addi	a5,sp,512
   1b1b0:	40f706b3          	sub	a3,a4,a5
   1b1b4:	030d0d1b          	addiw	s10,s10,48
   1b1b8:	1216879b          	addiw	a5,a3,289
   1b1bc:	01a70023          	sb	s10,0(a4)
   1b1c0:	06f13823          	sd	a5,112(sp)
   1b1c4:	94dff06f          	j	1ab10 <_svfprintf_r+0x1d04>
   1b1c8:	0013059b          	addiw	a1,t1,1
   1b1cc:	00098513          	mv	a0,s3
   1b1d0:	00613c23          	sd	t1,24(sp)
   1b1d4:	8fdfb0ef          	jal	ra,16ad0 <_malloc_r>
   1b1d8:	01813303          	ld	t1,24(sp)
   1b1dc:	00050b13          	mv	s6,a0
   1b1e0:	1e050063          	beqz	a0,1b3c0 <_svfprintf_r+0x25b4>
   1b1e4:	00a13c23          	sd	a0,24(sp)
   1b1e8:	d05ff06f          	j	1aeec <_svfprintf_r+0x20e0>
   1b1ec:	00f72023          	sw	a5,0(a4)
   1b1f0:	d54fe06f          	j	19744 <_svfprintf_r+0x938>
   1b1f4:	05013703          	ld	a4,80(sp)
   1b1f8:	00c00793          	li	a5,12
   1b1fc:	00f72023          	sw	a5,0(a4)
   1b200:	fff00793          	li	a5,-1
   1b204:	00f13823          	sd	a5,16(sp)
   1b208:	f41fd06f          	j	19148 <_svfprintf_r+0x33c>
   1b20c:	00030463          	beqz	t1,1b214 <_svfprintf_r+0x2408>
   1b210:	848fe06f          	j	19258 <_svfprintf_r+0x44c>
   1b214:	00100313          	li	t1,1
   1b218:	840fe06f          	j	19258 <_svfprintf_r+0x44c>
   1b21c:	04013783          	ld	a5,64(sp)
   1b220:	0017f613          	andi	a2,a5,1
   1b224:	900606e3          	beqz	a2,1ab30 <_svfprintf_r+0x1d24>
   1b228:	901ff06f          	j	1ab28 <_svfprintf_r+0x1d1c>
   1b22c:	0b813603          	ld	a2,184(sp)
   1b230:	03313823          	sd	s3,48(sp)
   1b234:	000b8993          	mv	s3,s7
   1b238:	000b0b93          	mv	s7,s6
   1b23c:	000d0b13          	mv	s6,s10
   1b240:	00cb063b          	addw	a2,s6,a2
   1b244:	000a8d13          	mv	s10,s5
   1b248:	000a0a93          	mv	s5,s4
   1b24c:	04813483          	ld	s1,72(sp)
   1b250:	0a813303          	ld	t1,168(sp)
   1b254:	0b013403          	ld	s0,176(sp)
   1b258:	0a013a03          	ld	s4,160(sp)
   1b25c:	41560dbb          	subw	s11,a2,s5
   1b260:	afdff06f          	j	1ad5c <_svfprintf_r+0x1f50>
   1b264:	06700c93          	li	s9,103
   1b268:	07813683          	ld	a3,120(sp)
   1b26c:	0ff00613          	li	a2,255
   1b270:	0006c703          	lbu	a4,0(a3)
   1b274:	14c70063          	beq	a4,a2,1b3b4 <_svfprintf_r+0x25a8>
   1b278:	03013783          	ld	a5,48(sp)
   1b27c:	00000813          	li	a6,0
   1b280:	00000513          	li	a0,0
   1b284:	0ff00593          	li	a1,255
   1b288:	0007061b          	sext.w	a2,a4
   1b28c:	00f75e63          	bge	a4,a5,1b2a8 <_svfprintf_r+0x249c>
   1b290:	0016c703          	lbu	a4,1(a3)
   1b294:	40c787bb          	subw	a5,a5,a2
   1b298:	04070a63          	beqz	a4,1b2ec <_svfprintf_r+0x24e0>
   1b29c:	0015051b          	addiw	a0,a0,1
   1b2a0:	00168693          	addi	a3,a3,1
   1b2a4:	feb712e3          	bne	a4,a1,1b288 <_svfprintf_r+0x247c>
   1b2a8:	06d13c23          	sd	a3,120(sp)
   1b2ac:	02f13823          	sd	a5,48(sp)
   1b2b0:	04a13023          	sd	a0,64(sp)
   1b2b4:	05013423          	sd	a6,72(sp)
   1b2b8:	04013703          	ld	a4,64(sp)
   1b2bc:	04813783          	ld	a5,72(sp)
   1b2c0:	08013583          	ld	a1,128(sp)
   1b2c4:	00e7853b          	addw	a0,a5,a4
   1b2c8:	0a5060ef          	jal	ra,21b6c <__muldi3>
   1b2cc:	01a5073b          	addw	a4,a0,s10
   1b2d0:	00070d1b          	sext.w	s10,a4
   1b2d4:	fffd4613          	not	a2,s10
   1b2d8:	43f65613          	srai	a2,a2,0x3f
   1b2dc:	00c77733          	and	a4,a4,a2
   1b2e0:	09013903          	ld	s2,144(sp)
   1b2e4:	00070c1b          	sext.w	s8,a4
   1b2e8:	875ff06f          	j	1ab5c <_svfprintf_r+0x1d50>
   1b2ec:	0006c703          	lbu	a4,0(a3)
   1b2f0:	0018081b          	addiw	a6,a6,1
   1b2f4:	fb1ff06f          	j	1b2a4 <_svfprintf_r+0x2498>
   1b2f8:	40fd073b          	subw	a4,s10,a5
   1b2fc:	0017071b          	addiw	a4,a4,1
   1b300:	00070d1b          	sext.w	s10,a4
   1b304:	fffd4613          	not	a2,s10
   1b308:	43f65613          	srai	a2,a2,0x3f
   1b30c:	00c77733          	and	a4,a4,a2
   1b310:	09013903          	ld	s2,144(sp)
   1b314:	00070c1b          	sext.w	s8,a4
   1b318:	b51ff06f          	j	1ae68 <_svfprintf_r+0x205c>
   1b31c:	05813703          	ld	a4,88(sp)
   1b320:	06600c93          	li	s9,102
   1b324:	00f706bb          	addw	a3,a4,a5
   1b328:	00668d3b          	addw	s10,a3,t1
   1b32c:	d69ff06f          	j	1b094 <_svfprintf_r+0x2288>
   1b330:	07000693          	li	a3,112
   1b334:	f30ff06f          	j	1aa64 <_svfprintf_r+0x1c58>
   1b338:	00200793          	li	a5,2
   1b33c:	06f13823          	sd	a5,112(sp)
   1b340:	fd0ff06f          	j	1ab10 <_svfprintf_r+0x1d04>
   1b344:	00071c63          	bnez	a4,1b35c <_svfprintf_r+0x2550>
   1b348:	09013903          	ld	s2,144(sp)
   1b34c:	00100c13          	li	s8,1
   1b350:	06600c93          	li	s9,102
   1b354:	00100d13          	li	s10,1
   1b358:	b11ff06f          	j	1ae68 <_svfprintf_r+0x205c>
   1b35c:	05813783          	ld	a5,88(sp)
   1b360:	09013903          	ld	s2,144(sp)
   1b364:	06600c93          	li	s9,102
   1b368:	0017871b          	addiw	a4,a5,1
   1b36c:	0067073b          	addw	a4,a4,t1
   1b370:	00070d1b          	sext.w	s10,a4
   1b374:	fffd4613          	not	a2,s10
   1b378:	43f65613          	srai	a2,a2,0x3f
   1b37c:	00c77733          	and	a4,a4,a2
   1b380:	00070c1b          	sext.w	s8,a4
   1b384:	ae5ff06f          	j	1ae68 <_svfprintf_r+0x205c>
   1b388:	02013683          	ld	a3,32(sp)
   1b38c:	0006a703          	lw	a4,0(a3)
   1b390:	00868693          	addi	a3,a3,8
   1b394:	00070313          	mv	t1,a4
   1b398:	00075463          	bgez	a4,1b3a0 <_svfprintf_r+0x2594>
   1b39c:	fff00313          	li	t1,-1
   1b3a0:	0014ce03          	lbu	t3,1(s1)
   1b3a4:	00030a9b          	sext.w	s5,t1
   1b3a8:	02d13023          	sd	a3,32(sp)
   1b3ac:	00078493          	mv	s1,a5
   1b3b0:	bbdfd06f          	j	18f6c <_svfprintf_r+0x160>
   1b3b4:	04013423          	sd	zero,72(sp)
   1b3b8:	04013023          	sd	zero,64(sp)
   1b3bc:	efdff06f          	j	1b2b8 <_svfprintf_r+0x24ac>
   1b3c0:	00013703          	ld	a4,0(sp)
   1b3c4:	01075783          	lhu	a5,16(a4)
   1b3c8:	0407e793          	ori	a5,a5,64
   1b3cc:	00f71823          	sh	a5,16(a4)
   1b3d0:	d65fd06f          	j	19134 <_svfprintf_r+0x328>

000000000001b3d4 <__sprint_r.part.0>:
   1b3d4:	0ac5a783          	lw	a5,172(a1)
   1b3d8:	fb010113          	addi	sp,sp,-80
   1b3dc:	01513c23          	sd	s5,24(sp)
   1b3e0:	00d7d793          	srli	a5,a5,0xd
   1b3e4:	04113423          	sd	ra,72(sp)
   1b3e8:	04813023          	sd	s0,64(sp)
   1b3ec:	02913c23          	sd	s1,56(sp)
   1b3f0:	03213823          	sd	s2,48(sp)
   1b3f4:	03313423          	sd	s3,40(sp)
   1b3f8:	03413023          	sd	s4,32(sp)
   1b3fc:	01613823          	sd	s6,16(sp)
   1b400:	01713423          	sd	s7,8(sp)
   1b404:	0017f793          	andi	a5,a5,1
   1b408:	00060a93          	mv	s5,a2
   1b40c:	0c078063          	beqz	a5,1b4cc <__sprint_r.part.0+0xf8>
   1b410:	01063783          	ld	a5,16(a2)
   1b414:	00063b03          	ld	s6,0(a2)
   1b418:	00058913          	mv	s2,a1
   1b41c:	00050993          	mv	s3,a0
   1b420:	fff00a13          	li	s4,-1
   1b424:	0a078063          	beqz	a5,1b4c4 <__sprint_r.part.0+0xf0>
   1b428:	008b3483          	ld	s1,8(s6)
   1b42c:	000b3403          	ld	s0,0(s6)
   1b430:	0024d493          	srli	s1,s1,0x2
   1b434:	00048b9b          	sext.w	s7,s1
   1b438:	07705c63          	blez	s7,1b4b0 <__sprint_r.part.0+0xdc>
   1b43c:	fff4849b          	addiw	s1,s1,-1
   1b440:	02049793          	slli	a5,s1,0x20
   1b444:	01e7d493          	srli	s1,a5,0x1e
   1b448:	00440793          	addi	a5,s0,4
   1b44c:	00f484b3          	add	s1,s1,a5
   1b450:	0080006f          	j	1b458 <__sprint_r.part.0+0x84>
   1b454:	04848c63          	beq	s1,s0,1b4ac <__sprint_r.part.0+0xd8>
   1b458:	00042583          	lw	a1,0(s0)
   1b45c:	00090613          	mv	a2,s2
   1b460:	00098513          	mv	a0,s3
   1b464:	21d010ef          	jal	ra,1ce80 <_fputwc_r>
   1b468:	0005051b          	sext.w	a0,a0
   1b46c:	00440413          	addi	s0,s0,4
   1b470:	ff4512e3          	bne	a0,s4,1b454 <__sprint_r.part.0+0x80>
   1b474:	fff00513          	li	a0,-1
   1b478:	04813083          	ld	ra,72(sp)
   1b47c:	04013403          	ld	s0,64(sp)
   1b480:	000ab823          	sd	zero,16(s5)
   1b484:	000aa423          	sw	zero,8(s5)
   1b488:	03813483          	ld	s1,56(sp)
   1b48c:	03013903          	ld	s2,48(sp)
   1b490:	02813983          	ld	s3,40(sp)
   1b494:	02013a03          	ld	s4,32(sp)
   1b498:	01813a83          	ld	s5,24(sp)
   1b49c:	01013b03          	ld	s6,16(sp)
   1b4a0:	00813b83          	ld	s7,8(sp)
   1b4a4:	05010113          	addi	sp,sp,80
   1b4a8:	00008067          	ret
   1b4ac:	010ab783          	ld	a5,16(s5)
   1b4b0:	002b9b93          	slli	s7,s7,0x2
   1b4b4:	417787b3          	sub	a5,a5,s7
   1b4b8:	00fab823          	sd	a5,16(s5)
   1b4bc:	010b0b13          	addi	s6,s6,16
   1b4c0:	f60794e3          	bnez	a5,1b428 <__sprint_r.part.0+0x54>
   1b4c4:	00000513          	li	a0,0
   1b4c8:	fb1ff06f          	j	1b478 <__sprint_r.part.0+0xa4>
   1b4cc:	2c1010ef          	jal	ra,1cf8c <__sfvwrite_r>
   1b4d0:	fa9ff06f          	j	1b478 <__sprint_r.part.0+0xa4>

000000000001b4d4 <__sprint_r>:
   1b4d4:	01063703          	ld	a4,16(a2)
   1b4d8:	00070463          	beqz	a4,1b4e0 <__sprint_r+0xc>
   1b4dc:	ef9ff06f          	j	1b3d4 <__sprint_r.part.0>
   1b4e0:	00062423          	sw	zero,8(a2)
   1b4e4:	00000513          	li	a0,0
   1b4e8:	00008067          	ret

000000000001b4ec <_vfiprintf_r>:
   1b4ec:	e2010113          	addi	sp,sp,-480
   1b4f0:	1d213023          	sd	s2,448(sp)
   1b4f4:	1b313c23          	sd	s3,440(sp)
   1b4f8:	19713c23          	sd	s7,408(sp)
   1b4fc:	19813823          	sd	s8,400(sp)
   1b500:	1c113c23          	sd	ra,472(sp)
   1b504:	1c813823          	sd	s0,464(sp)
   1b508:	1c913423          	sd	s1,456(sp)
   1b50c:	1b413823          	sd	s4,432(sp)
   1b510:	1b513423          	sd	s5,424(sp)
   1b514:	1b613023          	sd	s6,416(sp)
   1b518:	19913423          	sd	s9,392(sp)
   1b51c:	19a13023          	sd	s10,384(sp)
   1b520:	17b13c23          	sd	s11,376(sp)
   1b524:	00050993          	mv	s3,a0
   1b528:	00058913          	mv	s2,a1
   1b52c:	00060b93          	mv	s7,a2
   1b530:	00068c13          	mv	s8,a3
   1b534:	00050663          	beqz	a0,1b540 <_vfiprintf_r+0x54>
   1b538:	05052783          	lw	a5,80(a0)
   1b53c:	40078e63          	beqz	a5,1b958 <_vfiprintf_r+0x46c>
   1b540:	01091783          	lh	a5,16(s2)
   1b544:	03279713          	slli	a4,a5,0x32
   1b548:	02074663          	bltz	a4,1b574 <_vfiprintf_r+0x88>
   1b54c:	0ac92703          	lw	a4,172(s2)
   1b550:	000026b7          	lui	a3,0x2
   1b554:	00d7e7b3          	or	a5,a5,a3
   1b558:	ffffe6b7          	lui	a3,0xffffe
   1b55c:	0107979b          	slliw	a5,a5,0x10
   1b560:	fff68693          	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd91f7>
   1b564:	4107d79b          	sraiw	a5,a5,0x10
   1b568:	00d77733          	and	a4,a4,a3
   1b56c:	00f91823          	sh	a5,16(s2)
   1b570:	0ae92623          	sw	a4,172(s2)
   1b574:	0087f713          	andi	a4,a5,8
   1b578:	12070663          	beqz	a4,1b6a4 <_vfiprintf_r+0x1b8>
   1b57c:	01893703          	ld	a4,24(s2)
   1b580:	12070263          	beqz	a4,1b6a4 <_vfiprintf_r+0x1b8>
   1b584:	01a7f793          	andi	a5,a5,26
   1b588:	00a00713          	li	a4,10
   1b58c:	12e78e63          	beq	a5,a4,1b6c8 <_vfiprintf_r+0x1dc>
   1b590:	000227b7          	lui	a5,0x22
   1b594:	0f010493          	addi	s1,sp,240
   1b598:	66078793          	addi	a5,a5,1632 # 22660 <blanks.1+0x10>
   1b59c:	00022a37          	lui	s4,0x22
   1b5a0:	06913823          	sd	s1,112(sp)
   1b5a4:	08013023          	sd	zero,128(sp)
   1b5a8:	06012c23          	sw	zero,120(sp)
   1b5ac:	00048713          	mv	a4,s1
   1b5b0:	00013423          	sd	zero,8(sp)
   1b5b4:	02013823          	sd	zero,48(sp)
   1b5b8:	02013423          	sd	zero,40(sp)
   1b5bc:	02013c23          	sd	zero,56(sp)
   1b5c0:	00000a93          	li	s5,0
   1b5c4:	00f13023          	sd	a5,0(sp)
   1b5c8:	01000413          	li	s0,16
   1b5cc:	7d0a0a13          	addi	s4,s4,2000 # 227d0 <zeroes.0>
   1b5d0:	000b8c93          	mv	s9,s7
   1b5d4:	000cc783          	lbu	a5,0(s9)
   1b5d8:	14078263          	beqz	a5,1b71c <_vfiprintf_r+0x230>
   1b5dc:	000c8b13          	mv	s6,s9
   1b5e0:	02500693          	li	a3,37
   1b5e4:	36d78263          	beq	a5,a3,1b948 <_vfiprintf_r+0x45c>
   1b5e8:	001b4783          	lbu	a5,1(s6)
   1b5ec:	001b0b13          	addi	s6,s6,1
   1b5f0:	fe079ae3          	bnez	a5,1b5e4 <_vfiprintf_r+0xf8>
   1b5f4:	419b0bbb          	subw	s7,s6,s9
   1b5f8:	120b8263          	beqz	s7,1b71c <_vfiprintf_r+0x230>
   1b5fc:	07812783          	lw	a5,120(sp)
   1b600:	08013683          	ld	a3,128(sp)
   1b604:	01973023          	sd	s9,0(a4)
   1b608:	0017861b          	addiw	a2,a5,1
   1b60c:	00db86b3          	add	a3,s7,a3
   1b610:	01773423          	sd	s7,8(a4)
   1b614:	08d13023          	sd	a3,128(sp)
   1b618:	06c12c23          	sw	a2,120(sp)
   1b61c:	00700793          	li	a5,7
   1b620:	01070713          	addi	a4,a4,16
   1b624:	02c7d063          	bge	a5,a2,1b644 <_vfiprintf_r+0x158>
   1b628:	4e0684e3          	beqz	a3,1c310 <_vfiprintf_r+0xe24>
   1b62c:	07010613          	addi	a2,sp,112
   1b630:	00090593          	mv	a1,s2
   1b634:	00098513          	mv	a0,s3
   1b638:	d9dff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1b63c:	0e051663          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1b640:	00048713          	mv	a4,s1
   1b644:	000b4783          	lbu	a5,0(s6)
   1b648:	017a8abb          	addw	s5,s5,s7
   1b64c:	0c078863          	beqz	a5,1b71c <_vfiprintf_r+0x230>
   1b650:	fff00813          	li	a6,-1
   1b654:	00000e13          	li	t3,0
   1b658:	00000313          	li	t1,0
   1b65c:	001b4783          	lbu	a5,1(s6)
   1b660:	001b0c93          	addi	s9,s6,1
   1b664:	060103a3          	sb	zero,103(sp)
   1b668:	05a00b93          	li	s7,90
   1b66c:	00030b13          	mv	s6,t1
   1b670:	000e0d13          	mv	s10,t3
   1b674:	00080d93          	mv	s11,a6
   1b678:	001c8c93          	addi	s9,s9,1
   1b67c:	0007879b          	sext.w	a5,a5
   1b680:	fe07869b          	addiw	a3,a5,-32
   1b684:	0006861b          	sext.w	a2,a3
   1b688:	12cbe663          	bltu	s7,a2,1b7b4 <_vfiprintf_r+0x2c8>
   1b68c:	02069613          	slli	a2,a3,0x20
   1b690:	01e65693          	srli	a3,a2,0x1e
   1b694:	00013603          	ld	a2,0(sp)
   1b698:	00c686b3          	add	a3,a3,a2
   1b69c:	0006a683          	lw	a3,0(a3)
   1b6a0:	00068067          	jr	a3
   1b6a4:	00090593          	mv	a1,s2
   1b6a8:	00098513          	mv	a0,s3
   1b6ac:	cacf70ef          	jal	ra,12b58 <__swsetup_r>
   1b6b0:	00050463          	beqz	a0,1b6b8 <_vfiprintf_r+0x1cc>
   1b6b4:	0c80106f          	j	1c77c <_vfiprintf_r+0x1290>
   1b6b8:	01091783          	lh	a5,16(s2)
   1b6bc:	00a00713          	li	a4,10
   1b6c0:	01a7f793          	andi	a5,a5,26
   1b6c4:	ece796e3          	bne	a5,a4,1b590 <_vfiprintf_r+0xa4>
   1b6c8:	01291783          	lh	a5,18(s2)
   1b6cc:	ec07c2e3          	bltz	a5,1b590 <_vfiprintf_r+0xa4>
   1b6d0:	1d013403          	ld	s0,464(sp)
   1b6d4:	1d813083          	ld	ra,472(sp)
   1b6d8:	1c813483          	ld	s1,456(sp)
   1b6dc:	1b013a03          	ld	s4,432(sp)
   1b6e0:	1a813a83          	ld	s5,424(sp)
   1b6e4:	1a013b03          	ld	s6,416(sp)
   1b6e8:	18813c83          	ld	s9,392(sp)
   1b6ec:	18013d03          	ld	s10,384(sp)
   1b6f0:	17813d83          	ld	s11,376(sp)
   1b6f4:	000c0693          	mv	a3,s8
   1b6f8:	000b8613          	mv	a2,s7
   1b6fc:	19013c03          	ld	s8,400(sp)
   1b700:	19813b83          	ld	s7,408(sp)
   1b704:	00090593          	mv	a1,s2
   1b708:	00098513          	mv	a0,s3
   1b70c:	1c013903          	ld	s2,448(sp)
   1b710:	1b813983          	ld	s3,440(sp)
   1b714:	1e010113          	addi	sp,sp,480
   1b718:	0c40106f          	j	1c7dc <__sbprintf>
   1b71c:	08013783          	ld	a5,128(sp)
   1b720:	00078463          	beqz	a5,1b728 <_vfiprintf_r+0x23c>
   1b724:	00c0106f          	j	1c730 <_vfiprintf_r+0x1244>
   1b728:	01095783          	lhu	a5,16(s2)
   1b72c:	0407f793          	andi	a5,a5,64
   1b730:	00078463          	beqz	a5,1b738 <_vfiprintf_r+0x24c>
   1b734:	0480106f          	j	1c77c <_vfiprintf_r+0x1290>
   1b738:	1d813083          	ld	ra,472(sp)
   1b73c:	1d013403          	ld	s0,464(sp)
   1b740:	1c813483          	ld	s1,456(sp)
   1b744:	1c013903          	ld	s2,448(sp)
   1b748:	1b813983          	ld	s3,440(sp)
   1b74c:	1b013a03          	ld	s4,432(sp)
   1b750:	1a013b03          	ld	s6,416(sp)
   1b754:	19813b83          	ld	s7,408(sp)
   1b758:	19013c03          	ld	s8,400(sp)
   1b75c:	18813c83          	ld	s9,392(sp)
   1b760:	18013d03          	ld	s10,384(sp)
   1b764:	17813d83          	ld	s11,376(sp)
   1b768:	000a8513          	mv	a0,s5
   1b76c:	1a813a83          	ld	s5,424(sp)
   1b770:	1e010113          	addi	sp,sp,480
   1b774:	00008067          	ret
   1b778:	00000d13          	li	s10,0
   1b77c:	00900593          	li	a1,9
   1b780:	000cc603          	lbu	a2,0(s9)
   1b784:	002d169b          	slliw	a3,s10,0x2
   1b788:	01a68e3b          	addw	t3,a3,s10
   1b78c:	fd07879b          	addiw	a5,a5,-48
   1b790:	001e1e1b          	slliw	t3,t3,0x1
   1b794:	fd06069b          	addiw	a3,a2,-48
   1b798:	01c78d3b          	addw	s10,a5,t3
   1b79c:	001c8c93          	addi	s9,s9,1
   1b7a0:	0006079b          	sext.w	a5,a2
   1b7a4:	fcd5fee3          	bgeu	a1,a3,1b780 <_vfiprintf_r+0x294>
   1b7a8:	fe07869b          	addiw	a3,a5,-32
   1b7ac:	0006861b          	sext.w	a2,a3
   1b7b0:	eccbfee3          	bgeu	s7,a2,1b68c <_vfiprintf_r+0x1a0>
   1b7b4:	000b0313          	mv	t1,s6
   1b7b8:	000d0e13          	mv	t3,s10
   1b7bc:	f60780e3          	beqz	a5,1b71c <_vfiprintf_r+0x230>
   1b7c0:	08f10423          	sb	a5,136(sp)
   1b7c4:	060103a3          	sb	zero,103(sp)
   1b7c8:	00100d93          	li	s11,1
   1b7cc:	00100d13          	li	s10,1
   1b7d0:	08810b93          	addi	s7,sp,136
   1b7d4:	00000813          	li	a6,0
   1b7d8:	00237f93          	andi	t6,t1,2
   1b7dc:	000f8463          	beqz	t6,1b7e4 <_vfiprintf_r+0x2f8>
   1b7e0:	002d8d9b          	addiw	s11,s11,2
   1b7e4:	07812683          	lw	a3,120(sp)
   1b7e8:	08437293          	andi	t0,t1,132
   1b7ec:	08013783          	ld	a5,128(sp)
   1b7f0:	0016851b          	addiw	a0,a3,1
   1b7f4:	00050613          	mv	a2,a0
   1b7f8:	00029663          	bnez	t0,1b804 <_vfiprintf_r+0x318>
   1b7fc:	41be0b3b          	subw	s6,t3,s11
   1b800:	0d6040e3          	bgtz	s6,1c0c0 <_vfiprintf_r+0xbd4>
   1b804:	06714603          	lbu	a2,103(sp)
   1b808:	02060a63          	beqz	a2,1b83c <_vfiprintf_r+0x350>
   1b80c:	06710693          	addi	a3,sp,103
   1b810:	00178793          	addi	a5,a5,1
   1b814:	00d73023          	sd	a3,0(a4)
   1b818:	00100693          	li	a3,1
   1b81c:	00d73423          	sd	a3,8(a4)
   1b820:	08f13023          	sd	a5,128(sp)
   1b824:	06a12c23          	sw	a0,120(sp)
   1b828:	00700693          	li	a3,7
   1b82c:	7ca6c663          	blt	a3,a0,1bff8 <_vfiprintf_r+0xb0c>
   1b830:	00050693          	mv	a3,a0
   1b834:	01070713          	addi	a4,a4,16
   1b838:	0015051b          	addiw	a0,a0,1
   1b83c:	060f8863          	beqz	t6,1b8ac <_vfiprintf_r+0x3c0>
   1b840:	06810693          	addi	a3,sp,104
   1b844:	00278793          	addi	a5,a5,2
   1b848:	00d73023          	sd	a3,0(a4)
   1b84c:	00200693          	li	a3,2
   1b850:	00d73423          	sd	a3,8(a4)
   1b854:	08f13023          	sd	a5,128(sp)
   1b858:	06a12c23          	sw	a0,120(sp)
   1b85c:	00700693          	li	a3,7
   1b860:	00a6d4e3          	bge	a3,a0,1c068 <_vfiprintf_r+0xb7c>
   1b864:	2a078ce3          	beqz	a5,1c31c <_vfiprintf_r+0xe30>
   1b868:	07010613          	addi	a2,sp,112
   1b86c:	00090593          	mv	a1,s2
   1b870:	00098513          	mv	a0,s3
   1b874:	05013023          	sd	a6,64(sp)
   1b878:	03c13023          	sd	t3,32(sp)
   1b87c:	00613c23          	sd	t1,24(sp)
   1b880:	00513823          	sd	t0,16(sp)
   1b884:	b51ff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1b888:	ea0510e3          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1b88c:	07812683          	lw	a3,120(sp)
   1b890:	08013783          	ld	a5,128(sp)
   1b894:	04013803          	ld	a6,64(sp)
   1b898:	02013e03          	ld	t3,32(sp)
   1b89c:	01813303          	ld	t1,24(sp)
   1b8a0:	01013283          	ld	t0,16(sp)
   1b8a4:	00048713          	mv	a4,s1
   1b8a8:	0016851b          	addiw	a0,a3,1
   1b8ac:	08000613          	li	a2,128
   1b8b0:	54c28063          	beq	t0,a2,1bdf0 <_vfiprintf_r+0x904>
   1b8b4:	41a80b3b          	subw	s6,a6,s10
   1b8b8:	65604863          	bgtz	s6,1bf08 <_vfiprintf_r+0xa1c>
   1b8bc:	00fd07b3          	add	a5,s10,a5
   1b8c0:	01773023          	sd	s7,0(a4)
   1b8c4:	01a73423          	sd	s10,8(a4)
   1b8c8:	08f13023          	sd	a5,128(sp)
   1b8cc:	06a12c23          	sw	a0,120(sp)
   1b8d0:	00700693          	li	a3,7
   1b8d4:	50a6da63          	bge	a3,a0,1bde8 <_vfiprintf_r+0x8fc>
   1b8d8:	0e0782e3          	beqz	a5,1c1bc <_vfiprintf_r+0xcd0>
   1b8dc:	07010613          	addi	a2,sp,112
   1b8e0:	00090593          	mv	a1,s2
   1b8e4:	00098513          	mv	a0,s3
   1b8e8:	01c13c23          	sd	t3,24(sp)
   1b8ec:	00613823          	sd	t1,16(sp)
   1b8f0:	ae5ff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1b8f4:	e2051ae3          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1b8f8:	08013783          	ld	a5,128(sp)
   1b8fc:	01813e03          	ld	t3,24(sp)
   1b900:	01013303          	ld	t1,16(sp)
   1b904:	00048713          	mv	a4,s1
   1b908:	00437313          	andi	t1,t1,4
   1b90c:	00030663          	beqz	t1,1b918 <_vfiprintf_r+0x42c>
   1b910:	41be0b3b          	subw	s6,t3,s11
   1b914:	0d6040e3          	bgtz	s6,1c1d4 <_vfiprintf_r+0xce8>
   1b918:	000e0713          	mv	a4,t3
   1b91c:	01be5463          	bge	t3,s11,1b924 <_vfiprintf_r+0x438>
   1b920:	000d8713          	mv	a4,s11
   1b924:	01570abb          	addw	s5,a4,s5
   1b928:	6a079463          	bnez	a5,1bfd0 <_vfiprintf_r+0xae4>
   1b92c:	06012c23          	sw	zero,120(sp)
   1b930:	00048713          	mv	a4,s1
   1b934:	ca1ff06f          	j	1b5d4 <_vfiprintf_r+0xe8>
   1b938:	010b6313          	ori	t1,s6,16
   1b93c:	000cc783          	lbu	a5,0(s9)
   1b940:	00030b1b          	sext.w	s6,t1
   1b944:	d35ff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1b948:	419b0bbb          	subw	s7,s6,s9
   1b94c:	ca0b98e3          	bnez	s7,1b5fc <_vfiprintf_r+0x110>
   1b950:	000b4783          	lbu	a5,0(s6)
   1b954:	cf9ff06f          	j	1b64c <_vfiprintf_r+0x160>
   1b958:	ae1f70ef          	jal	ra,13438 <__sinit>
   1b95c:	be5ff06f          	j	1b540 <_vfiprintf_r+0x54>
   1b960:	000c3b83          	ld	s7,0(s8)
   1b964:	060103a3          	sb	zero,103(sp)
   1b968:	000b0313          	mv	t1,s6
   1b96c:	000d0e13          	mv	t3,s10
   1b970:	008c0c13          	addi	s8,s8,8
   1b974:	4e0b88e3          	beqz	s7,1c664 <_vfiprintf_r+0x1178>
   1b978:	fff00793          	li	a5,-1
   1b97c:	40fd8ce3          	beq	s11,a5,1c594 <_vfiprintf_r+0x10a8>
   1b980:	000d8613          	mv	a2,s11
   1b984:	00000593          	li	a1,0
   1b988:	000b8513          	mv	a0,s7
   1b98c:	04e13023          	sd	a4,64(sp)
   1b990:	03a13023          	sd	s10,32(sp)
   1b994:	01613c23          	sd	s6,24(sp)
   1b998:	01b13823          	sd	s11,16(sp)
   1b99c:	981fb0ef          	jal	ra,1731c <memchr>
   1b9a0:	01013803          	ld	a6,16(sp)
   1b9a4:	01813303          	ld	t1,24(sp)
   1b9a8:	02013e03          	ld	t3,32(sp)
   1b9ac:	04013703          	ld	a4,64(sp)
   1b9b0:	58050ae3          	beqz	a0,1c744 <_vfiprintf_r+0x1258>
   1b9b4:	41750d3b          	subw	s10,a0,s7
   1b9b8:	fffd4d93          	not	s11,s10
   1b9bc:	43fddd93          	srai	s11,s11,0x3f
   1b9c0:	01adfdb3          	and	s11,s11,s10
   1b9c4:	00000813          	li	a6,0
   1b9c8:	0e40006f          	j	1baac <_vfiprintf_r+0x5c0>
   1b9cc:	000c2783          	lw	a5,0(s8)
   1b9d0:	000d0e13          	mv	t3,s10
   1b9d4:	000b0313          	mv	t1,s6
   1b9d8:	060103a3          	sb	zero,103(sp)
   1b9dc:	008c0c13          	addi	s8,s8,8
   1b9e0:	08f10423          	sb	a5,136(sp)
   1b9e4:	00100d93          	li	s11,1
   1b9e8:	00100d13          	li	s10,1
   1b9ec:	08810b93          	addi	s7,sp,136
   1b9f0:	de5ff06f          	j	1b7d4 <_vfiprintf_r+0x2e8>
   1b9f4:	000b0313          	mv	t1,s6
   1b9f8:	000d0e13          	mv	t3,s10
   1b9fc:	000d8813          	mv	a6,s11
   1ba00:	02037793          	andi	a5,t1,32
   1ba04:	008c0693          	addi	a3,s8,8
   1ba08:	04079863          	bnez	a5,1ba58 <_vfiprintf_r+0x56c>
   1ba0c:	01037793          	andi	a5,t1,16
   1ba10:	04079463          	bnez	a5,1ba58 <_vfiprintf_r+0x56c>
   1ba14:	04037613          	andi	a2,t1,64
   1ba18:	000c2783          	lw	a5,0(s8)
   1ba1c:	4a0602e3          	beqz	a2,1c6c0 <_vfiprintf_r+0x11d4>
   1ba20:	01079d9b          	slliw	s11,a5,0x10
   1ba24:	410ddd9b          	sraiw	s11,s11,0x10
   1ba28:	000d8613          	mv	a2,s11
   1ba2c:	02064c63          	bltz	a2,1ba64 <_vfiprintf_r+0x578>
   1ba30:	fff00613          	li	a2,-1
   1ba34:	04c80663          	beq	a6,a2,1ba80 <_vfiprintf_r+0x594>
   1ba38:	f7f37313          	andi	t1,t1,-129
   1ba3c:	0003031b          	sext.w	t1,t1
   1ba40:	040d9063          	bnez	s11,1ba80 <_vfiprintf_r+0x594>
   1ba44:	50081ee3          	bnez	a6,1c760 <_vfiprintf_r+0x1274>
   1ba48:	00000d13          	li	s10,0
   1ba4c:	00068c13          	mv	s8,a3
   1ba50:	0ec10b93          	addi	s7,sp,236
   1ba54:	0580006f          	j	1baac <_vfiprintf_r+0x5c0>
   1ba58:	000c3603          	ld	a2,0(s8)
   1ba5c:	00060d93          	mv	s11,a2
   1ba60:	fc0658e3          	bgez	a2,1ba30 <_vfiprintf_r+0x544>
   1ba64:	02d00613          	li	a2,45
   1ba68:	06c103a3          	sb	a2,103(sp)
   1ba6c:	fff00613          	li	a2,-1
   1ba70:	41b00db3          	neg	s11,s11
   1ba74:	00c80663          	beq	a6,a2,1ba80 <_vfiprintf_r+0x594>
   1ba78:	f7f37313          	andi	t1,t1,-129
   1ba7c:	0003031b          	sext.w	t1,t1
   1ba80:	00900613          	li	a2,9
   1ba84:	11b666e3          	bltu	a2,s11,1c390 <_vfiprintf_r+0xea4>
   1ba88:	030d879b          	addiw	a5,s11,48
   1ba8c:	0ff7f793          	zext.b	a5,a5
   1ba90:	00068c13          	mv	s8,a3
   1ba94:	0ef105a3          	sb	a5,235(sp)
   1ba98:	00080d9b          	sext.w	s11,a6
   1ba9c:	01004463          	bgtz	a6,1baa4 <_vfiprintf_r+0x5b8>
   1baa0:	00100d93          	li	s11,1
   1baa4:	00100d13          	li	s10,1
   1baa8:	0eb10b93          	addi	s7,sp,235
   1baac:	06714783          	lbu	a5,103(sp)
   1bab0:	d20784e3          	beqz	a5,1b7d8 <_vfiprintf_r+0x2ec>
   1bab4:	001d8d9b          	addiw	s11,s11,1
   1bab8:	d21ff06f          	j	1b7d8 <_vfiprintf_r+0x2ec>
   1babc:	000c2d03          	lw	s10,0(s8)
   1bac0:	008c0c13          	addi	s8,s8,8
   1bac4:	220d5663          	bgez	s10,1bcf0 <_vfiprintf_r+0x804>
   1bac8:	41a00d3b          	negw	s10,s10
   1bacc:	004b6313          	ori	t1,s6,4
   1bad0:	000cc783          	lbu	a5,0(s9)
   1bad4:	00030b1b          	sext.w	s6,t1
   1bad8:	ba1ff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1badc:	02b00693          	li	a3,43
   1bae0:	000cc783          	lbu	a5,0(s9)
   1bae4:	06d103a3          	sb	a3,103(sp)
   1bae8:	b91ff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1baec:	010b6793          	ori	a5,s6,16
   1baf0:	000d0e13          	mv	t3,s10
   1baf4:	000d8813          	mv	a6,s11
   1baf8:	0007879b          	sext.w	a5,a5
   1bafc:	0207f693          	andi	a3,a5,32
   1bb00:	008c0593          	addi	a1,s8,8
   1bb04:	00069663          	bnez	a3,1bb10 <_vfiprintf_r+0x624>
   1bb08:	0107f693          	andi	a3,a5,16
   1bb0c:	160682e3          	beqz	a3,1c470 <_vfiprintf_r+0xf84>
   1bb10:	000c3683          	ld	a3,0(s8)
   1bb14:	bff7f313          	andi	t1,a5,-1025
   1bb18:	060103a3          	sb	zero,103(sp)
   1bb1c:	fff00613          	li	a2,-1
   1bb20:	0003031b          	sext.w	t1,t1
   1bb24:	00058c13          	mv	s8,a1
   1bb28:	0ac80463          	beq	a6,a2,1bbd0 <_vfiprintf_r+0x6e4>
   1bb2c:	b7f7f793          	andi	a5,a5,-1153
   1bb30:	0007879b          	sext.w	a5,a5
   1bb34:	2e069ce3          	bnez	a3,1c62c <_vfiprintf_r+0x1140>
   1bb38:	00030d13          	mv	s10,t1
   1bb3c:	00078313          	mv	t1,a5
   1bb40:	06081e63          	bnez	a6,1bbbc <_vfiprintf_r+0x6d0>
   1bb44:	02069ee3          	bnez	a3,1c380 <_vfiprintf_r+0xe94>
   1bb48:	001d7d13          	andi	s10,s10,1
   1bb4c:	100d04e3          	beqz	s10,1c454 <_vfiprintf_r+0xf68>
   1bb50:	03000793          	li	a5,48
   1bb54:	0ef105a3          	sb	a5,235(sp)
   1bb58:	000d0d93          	mv	s11,s10
   1bb5c:	0eb10b93          	addi	s7,sp,235
   1bb60:	f4dff06f          	j	1baac <_vfiprintf_r+0x5c0>
   1bb64:	ffff87b7          	lui	a5,0xffff8
   1bb68:	8307c793          	xori	a5,a5,-2000
   1bb6c:	06f11423          	sh	a5,104(sp)
   1bb70:	000227b7          	lui	a5,0x22
   1bb74:	002b6313          	ori	t1,s6,2
   1bb78:	d2078793          	addi	a5,a5,-736 # 21d20 <__clzdi2+0x90>
   1bb7c:	000c3683          	ld	a3,0(s8)
   1bb80:	000d0e13          	mv	t3,s10
   1bb84:	000d8813          	mv	a6,s11
   1bb88:	0003031b          	sext.w	t1,t1
   1bb8c:	008c0c13          	addi	s8,s8,8
   1bb90:	00f13423          	sd	a5,8(sp)
   1bb94:	060103a3          	sb	zero,103(sp)
   1bb98:	fff00793          	li	a5,-1
   1bb9c:	4ef80463          	beq	a6,a5,1c084 <_vfiprintf_r+0xb98>
   1bba0:	f7f37793          	andi	a5,t1,-129
   1bba4:	0007879b          	sext.w	a5,a5
   1bba8:	4c069863          	bnez	a3,1c078 <_vfiprintf_r+0xb8c>
   1bbac:	00030d13          	mv	s10,t1
   1bbb0:	00200693          	li	a3,2
   1bbb4:	00078313          	mv	t1,a5
   1bbb8:	f80806e3          	beqz	a6,1bb44 <_vfiprintf_r+0x658>
   1bbbc:	00100793          	li	a5,1
   1bbc0:	3af682e3          	beq	a3,a5,1c764 <_vfiprintf_r+0x1278>
   1bbc4:	00200793          	li	a5,2
   1bbc8:	2af68ce3          	beq	a3,a5,1c680 <_vfiprintf_r+0x1194>
   1bbcc:	00000693          	li	a3,0
   1bbd0:	0ec10593          	addi	a1,sp,236
   1bbd4:	00058b93          	mv	s7,a1
   1bbd8:	0076f793          	andi	a5,a3,7
   1bbdc:	03078793          	addi	a5,a5,48
   1bbe0:	fefb8fa3          	sb	a5,-1(s7)
   1bbe4:	0036d693          	srli	a3,a3,0x3
   1bbe8:	000b8613          	mv	a2,s7
   1bbec:	fffb8b93          	addi	s7,s7,-1
   1bbf0:	fe0694e3          	bnez	a3,1bbd8 <_vfiprintf_r+0x6ec>
   1bbf4:	00137693          	andi	a3,t1,1
   1bbf8:	4a068a63          	beqz	a3,1c0ac <_vfiprintf_r+0xbc0>
   1bbfc:	03000693          	li	a3,48
   1bc00:	4ad78663          	beq	a5,a3,1c0ac <_vfiprintf_r+0xbc0>
   1bc04:	ffe60613          	addi	a2,a2,-2
   1bc08:	40c58d3b          	subw	s10,a1,a2
   1bc0c:	fedb8fa3          	sb	a3,-1(s7)
   1bc10:	000d0d9b          	sext.w	s11,s10
   1bc14:	0b0d4ce3          	blt	s10,a6,1c4cc <_vfiprintf_r+0xfe0>
   1bc18:	00060b93          	mv	s7,a2
   1bc1c:	e91ff06f          	j	1baac <_vfiprintf_r+0x5c0>
   1bc20:	010b6313          	ori	t1,s6,16
   1bc24:	000d0e13          	mv	t3,s10
   1bc28:	000d8813          	mv	a6,s11
   1bc2c:	0003031b          	sext.w	t1,t1
   1bc30:	dd1ff06f          	j	1ba00 <_vfiprintf_r+0x514>
   1bc34:	000cc783          	lbu	a5,0(s9)
   1bc38:	06800693          	li	a3,104
   1bc3c:	20d78ae3          	beq	a5,a3,1c650 <_vfiprintf_r+0x1164>
   1bc40:	040b6313          	ori	t1,s6,64
   1bc44:	00030b1b          	sext.w	s6,t1
   1bc48:	a31ff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1bc4c:	020b6313          	ori	t1,s6,32
   1bc50:	000cc783          	lbu	a5,0(s9)
   1bc54:	00030b1b          	sext.w	s6,t1
   1bc58:	a21ff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1bc5c:	020b7793          	andi	a5,s6,32
   1bc60:	000c3683          	ld	a3,0(s8)
   1bc64:	02079463          	bnez	a5,1bc8c <_vfiprintf_r+0x7a0>
   1bc68:	010b7793          	andi	a5,s6,16
   1bc6c:	02079063          	bnez	a5,1bc8c <_vfiprintf_r+0x7a0>
   1bc70:	040b7793          	andi	a5,s6,64
   1bc74:	280796e3          	bnez	a5,1c700 <_vfiprintf_r+0x1214>
   1bc78:	200b7313          	andi	t1,s6,512
   1bc7c:	30030ce3          	beqz	t1,1c794 <_vfiprintf_r+0x12a8>
   1bc80:	01568023          	sb	s5,0(a3)
   1bc84:	008c0c13          	addi	s8,s8,8
   1bc88:	94dff06f          	j	1b5d4 <_vfiprintf_r+0xe8>
   1bc8c:	0156b023          	sd	s5,0(a3)
   1bc90:	008c0c13          	addi	s8,s8,8
   1bc94:	941ff06f          	j	1b5d4 <_vfiprintf_r+0xe8>
   1bc98:	000cc783          	lbu	a5,0(s9)
   1bc9c:	06c00693          	li	a3,108
   1bca0:	18d78ee3          	beq	a5,a3,1c63c <_vfiprintf_r+0x1150>
   1bca4:	010b6313          	ori	t1,s6,16
   1bca8:	00030b1b          	sext.w	s6,t1
   1bcac:	9cdff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1bcb0:	00098513          	mv	a0,s3
   1bcb4:	00e13823          	sd	a4,16(sp)
   1bcb8:	aa1fa0ef          	jal	ra,16758 <_localeconv_r>
   1bcbc:	00853783          	ld	a5,8(a0)
   1bcc0:	00078513          	mv	a0,a5
   1bcc4:	02f13c23          	sd	a5,56(sp)
   1bcc8:	fd9fc0ef          	jal	ra,18ca0 <strlen>
   1bccc:	00050793          	mv	a5,a0
   1bcd0:	00098513          	mv	a0,s3
   1bcd4:	02f13423          	sd	a5,40(sp)
   1bcd8:	a81fa0ef          	jal	ra,16758 <_localeconv_r>
   1bcdc:	01053683          	ld	a3,16(a0)
   1bce0:	02813783          	ld	a5,40(sp)
   1bce4:	01013703          	ld	a4,16(sp)
   1bce8:	02d13823          	sd	a3,48(sp)
   1bcec:	7a079a63          	bnez	a5,1c4a0 <_vfiprintf_r+0xfb4>
   1bcf0:	000cc783          	lbu	a5,0(s9)
   1bcf4:	985ff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1bcf8:	001b6313          	ori	t1,s6,1
   1bcfc:	000cc783          	lbu	a5,0(s9)
   1bd00:	00030b1b          	sext.w	s6,t1
   1bd04:	975ff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1bd08:	06714683          	lbu	a3,103(sp)
   1bd0c:	000cc783          	lbu	a5,0(s9)
   1bd10:	960694e3          	bnez	a3,1b678 <_vfiprintf_r+0x18c>
   1bd14:	02000693          	li	a3,32
   1bd18:	06d103a3          	sb	a3,103(sp)
   1bd1c:	95dff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1bd20:	080b6313          	ori	t1,s6,128
   1bd24:	000cc783          	lbu	a5,0(s9)
   1bd28:	00030b1b          	sext.w	s6,t1
   1bd2c:	94dff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1bd30:	000cc783          	lbu	a5,0(s9)
   1bd34:	02a00593          	li	a1,42
   1bd38:	001c8693          	addi	a3,s9,1
   1bd3c:	26b782e3          	beq	a5,a1,1c7a0 <_vfiprintf_r+0x12b4>
   1bd40:	fd07861b          	addiw	a2,a5,-48
   1bd44:	00900513          	li	a0,9
   1bd48:	00068c93          	mv	s9,a3
   1bd4c:	00000d93          	li	s11,0
   1bd50:	00900593          	li	a1,9
   1bd54:	92c566e3          	bltu	a0,a2,1b680 <_vfiprintf_r+0x194>
   1bd58:	000cc783          	lbu	a5,0(s9)
   1bd5c:	002d969b          	slliw	a3,s11,0x2
   1bd60:	01b6883b          	addw	a6,a3,s11
   1bd64:	0018181b          	slliw	a6,a6,0x1
   1bd68:	00c80dbb          	addw	s11,a6,a2
   1bd6c:	fd07861b          	addiw	a2,a5,-48
   1bd70:	001c8c93          	addi	s9,s9,1
   1bd74:	fec5f2e3          	bgeu	a1,a2,1bd58 <_vfiprintf_r+0x86c>
   1bd78:	909ff06f          	j	1b680 <_vfiprintf_r+0x194>
   1bd7c:	000d0e13          	mv	t3,s10
   1bd80:	010b6d13          	ori	s10,s6,16
   1bd84:	000d8813          	mv	a6,s11
   1bd88:	000d0d1b          	sext.w	s10,s10
   1bd8c:	020d7793          	andi	a5,s10,32
   1bd90:	008c0693          	addi	a3,s8,8
   1bd94:	00079663          	bnez	a5,1bda0 <_vfiprintf_r+0x8b4>
   1bd98:	010d7793          	andi	a5,s10,16
   1bd9c:	6e078663          	beqz	a5,1c488 <_vfiprintf_r+0xf9c>
   1bda0:	000c3d83          	ld	s11,0(s8)
   1bda4:	060103a3          	sb	zero,103(sp)
   1bda8:	fff00613          	li	a2,-1
   1bdac:	000d0313          	mv	t1,s10
   1bdb0:	ccc808e3          	beq	a6,a2,1ba80 <_vfiprintf_r+0x594>
   1bdb4:	f7fd7313          	andi	t1,s10,-129
   1bdb8:	0003031b          	sext.w	t1,t1
   1bdbc:	cc0d92e3          	bnez	s11,1ba80 <_vfiprintf_r+0x594>
   1bdc0:	00068c13          	mv	s8,a3
   1bdc4:	00100693          	li	a3,1
   1bdc8:	d79ff06f          	j	1bb40 <_vfiprintf_r+0x654>
   1bdcc:	00100713          	li	a4,1
   1bdd0:	06e12c23          	sw	a4,120(sp)
   1bdd4:	000d0793          	mv	a5,s10
   1bdd8:	0f713823          	sd	s7,240(sp)
   1bddc:	0fa13c23          	sd	s10,248(sp)
   1bde0:	09a13023          	sd	s10,128(sp)
   1bde4:	00048713          	mv	a4,s1
   1bde8:	01070713          	addi	a4,a4,16
   1bdec:	b1dff06f          	j	1b908 <_vfiprintf_r+0x41c>
   1bdf0:	41be0b3b          	subw	s6,t3,s11
   1bdf4:	ad6050e3          	blez	s6,1b8b4 <_vfiprintf_r+0x3c8>
   1bdf8:	01000613          	li	a2,16
   1bdfc:	196654e3          	bge	a2,s6,1c784 <_vfiprintf_r+0x1298>
   1be00:	00022eb7          	lui	t4,0x22
   1be04:	7d0e8e93          	addi	t4,t4,2000 # 227d0 <zeroes.0>
   1be08:	01713823          	sd	s7,16(sp)
   1be0c:	01000f13          	li	t5,16
   1be10:	00700f93          	li	t6,7
   1be14:	00613c23          	sd	t1,24(sp)
   1be18:	03c13023          	sd	t3,32(sp)
   1be1c:	05013023          	sd	a6,64(sp)
   1be20:	000e8b93          	mv	s7,t4
   1be24:	0180006f          	j	1be3c <_vfiprintf_r+0x950>
   1be28:	0026861b          	addiw	a2,a3,2
   1be2c:	01070713          	addi	a4,a4,16
   1be30:	00058693          	mv	a3,a1
   1be34:	ff0b0b1b          	addiw	s6,s6,-16
   1be38:	056f5c63          	bge	t5,s6,1be90 <_vfiprintf_r+0x9a4>
   1be3c:	0016859b          	addiw	a1,a3,1
   1be40:	01078793          	addi	a5,a5,16
   1be44:	01773023          	sd	s7,0(a4)
   1be48:	01e73423          	sd	t5,8(a4)
   1be4c:	08f13023          	sd	a5,128(sp)
   1be50:	06b12c23          	sw	a1,120(sp)
   1be54:	fcbfdae3          	bge	t6,a1,1be28 <_vfiprintf_r+0x93c>
   1be58:	18078863          	beqz	a5,1bfe8 <_vfiprintf_r+0xafc>
   1be5c:	07010613          	addi	a2,sp,112
   1be60:	00090593          	mv	a1,s2
   1be64:	00098513          	mv	a0,s3
   1be68:	d6cff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1be6c:	8a051ee3          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1be70:	07812683          	lw	a3,120(sp)
   1be74:	01000f13          	li	t5,16
   1be78:	ff0b0b1b          	addiw	s6,s6,-16
   1be7c:	08013783          	ld	a5,128(sp)
   1be80:	00048713          	mv	a4,s1
   1be84:	0016861b          	addiw	a2,a3,1
   1be88:	00700f93          	li	t6,7
   1be8c:	fb6f48e3          	blt	t5,s6,1be3c <_vfiprintf_r+0x950>
   1be90:	000b8e93          	mv	t4,s7
   1be94:	01813303          	ld	t1,24(sp)
   1be98:	02013e03          	ld	t3,32(sp)
   1be9c:	04013803          	ld	a6,64(sp)
   1bea0:	01013b83          	ld	s7,16(sp)
   1bea4:	016787b3          	add	a5,a5,s6
   1bea8:	01d73023          	sd	t4,0(a4)
   1beac:	01673423          	sd	s6,8(a4)
   1beb0:	08f13023          	sd	a5,128(sp)
   1beb4:	06c12c23          	sw	a2,120(sp)
   1beb8:	00700693          	li	a3,7
   1bebc:	5ac6d263          	bge	a3,a2,1c460 <_vfiprintf_r+0xf74>
   1bec0:	00078ce3          	beqz	a5,1c6d8 <_vfiprintf_r+0x11ec>
   1bec4:	07010613          	addi	a2,sp,112
   1bec8:	00090593          	mv	a1,s2
   1becc:	00098513          	mv	a0,s3
   1bed0:	03013023          	sd	a6,32(sp)
   1bed4:	01c13c23          	sd	t3,24(sp)
   1bed8:	00613823          	sd	t1,16(sp)
   1bedc:	cf8ff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1bee0:	840514e3          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1bee4:	02013803          	ld	a6,32(sp)
   1bee8:	07812683          	lw	a3,120(sp)
   1beec:	08013783          	ld	a5,128(sp)
   1bef0:	41a80b3b          	subw	s6,a6,s10
   1bef4:	01813e03          	ld	t3,24(sp)
   1bef8:	01013303          	ld	t1,16(sp)
   1befc:	00048713          	mv	a4,s1
   1bf00:	0016851b          	addiw	a0,a3,1
   1bf04:	9b605ce3          	blez	s6,1b8bc <_vfiprintf_r+0x3d0>
   1bf08:	00022eb7          	lui	t4,0x22
   1bf0c:	7d0e8e93          	addi	t4,t4,2000 # 227d0 <zeroes.0>
   1bf10:	09645463          	bge	s0,s6,1bf98 <_vfiprintf_r+0xaac>
   1bf14:	00700813          	li	a6,7
   1bf18:	00613823          	sd	t1,16(sp)
   1bf1c:	01c13c23          	sd	t3,24(sp)
   1bf20:	03413023          	sd	s4,32(sp)
   1bf24:	0180006f          	j	1bf3c <_vfiprintf_r+0xa50>
   1bf28:	0026851b          	addiw	a0,a3,2
   1bf2c:	01070713          	addi	a4,a4,16
   1bf30:	00058693          	mv	a3,a1
   1bf34:	ff0b0b1b          	addiw	s6,s6,-16
   1bf38:	05645a63          	bge	s0,s6,1bf8c <_vfiprintf_r+0xaa0>
   1bf3c:	0016859b          	addiw	a1,a3,1
   1bf40:	01078793          	addi	a5,a5,16
   1bf44:	01473023          	sd	s4,0(a4)
   1bf48:	00873423          	sd	s0,8(a4)
   1bf4c:	08f13023          	sd	a5,128(sp)
   1bf50:	06b12c23          	sw	a1,120(sp)
   1bf54:	fcb85ae3          	bge	a6,a1,1bf28 <_vfiprintf_r+0xa3c>
   1bf58:	06078463          	beqz	a5,1bfc0 <_vfiprintf_r+0xad4>
   1bf5c:	07010613          	addi	a2,sp,112
   1bf60:	00090593          	mv	a1,s2
   1bf64:	00098513          	mv	a0,s3
   1bf68:	c6cff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1bf6c:	fa051e63          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1bf70:	07812683          	lw	a3,120(sp)
   1bf74:	ff0b0b1b          	addiw	s6,s6,-16
   1bf78:	08013783          	ld	a5,128(sp)
   1bf7c:	00048713          	mv	a4,s1
   1bf80:	0016851b          	addiw	a0,a3,1
   1bf84:	00700813          	li	a6,7
   1bf88:	fb644ae3          	blt	s0,s6,1bf3c <_vfiprintf_r+0xa50>
   1bf8c:	01013303          	ld	t1,16(sp)
   1bf90:	01813e03          	ld	t3,24(sp)
   1bf94:	02013e83          	ld	t4,32(sp)
   1bf98:	016787b3          	add	a5,a5,s6
   1bf9c:	01d73023          	sd	t4,0(a4)
   1bfa0:	01673423          	sd	s6,8(a4)
   1bfa4:	08f13023          	sd	a5,128(sp)
   1bfa8:	06a12c23          	sw	a0,120(sp)
   1bfac:	00700693          	li	a3,7
   1bfb0:	32a6c263          	blt	a3,a0,1c2d4 <_vfiprintf_r+0xde8>
   1bfb4:	01070713          	addi	a4,a4,16
   1bfb8:	0015051b          	addiw	a0,a0,1
   1bfbc:	901ff06f          	j	1b8bc <_vfiprintf_r+0x3d0>
   1bfc0:	00100513          	li	a0,1
   1bfc4:	00000693          	li	a3,0
   1bfc8:	00048713          	mv	a4,s1
   1bfcc:	f69ff06f          	j	1bf34 <_vfiprintf_r+0xa48>
   1bfd0:	07010613          	addi	a2,sp,112
   1bfd4:	00090593          	mv	a1,s2
   1bfd8:	00098513          	mv	a0,s3
   1bfdc:	bf8ff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1bfe0:	940506e3          	beqz	a0,1b92c <_vfiprintf_r+0x440>
   1bfe4:	f44ff06f          	j	1b728 <_vfiprintf_r+0x23c>
   1bfe8:	00100613          	li	a2,1
   1bfec:	00000693          	li	a3,0
   1bff0:	00048713          	mv	a4,s1
   1bff4:	e41ff06f          	j	1be34 <_vfiprintf_r+0x948>
   1bff8:	04078a63          	beqz	a5,1c04c <_vfiprintf_r+0xb60>
   1bffc:	07010613          	addi	a2,sp,112
   1c000:	00090593          	mv	a1,s2
   1c004:	00098513          	mv	a0,s3
   1c008:	05013423          	sd	a6,72(sp)
   1c00c:	05c13023          	sd	t3,64(sp)
   1c010:	02613023          	sd	t1,32(sp)
   1c014:	00513c23          	sd	t0,24(sp)
   1c018:	01f13823          	sd	t6,16(sp)
   1c01c:	bb8ff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1c020:	f0051463          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1c024:	07812683          	lw	a3,120(sp)
   1c028:	08013783          	ld	a5,128(sp)
   1c02c:	04813803          	ld	a6,72(sp)
   1c030:	04013e03          	ld	t3,64(sp)
   1c034:	02013303          	ld	t1,32(sp)
   1c038:	01813283          	ld	t0,24(sp)
   1c03c:	01013f83          	ld	t6,16(sp)
   1c040:	00048713          	mv	a4,s1
   1c044:	0016851b          	addiw	a0,a3,1
   1c048:	ff4ff06f          	j	1b83c <_vfiprintf_r+0x350>
   1c04c:	460f8863          	beqz	t6,1c4bc <_vfiprintf_r+0xfd0>
   1c050:	06810793          	addi	a5,sp,104
   1c054:	0ef13823          	sd	a5,240(sp)
   1c058:	00200793          	li	a5,2
   1c05c:	0ef13c23          	sd	a5,248(sp)
   1c060:	00100513          	li	a0,1
   1c064:	00048713          	mv	a4,s1
   1c068:	00050693          	mv	a3,a0
   1c06c:	01070713          	addi	a4,a4,16
   1c070:	0015051b          	addiw	a0,a0,1
   1c074:	839ff06f          	j	1b8ac <_vfiprintf_r+0x3c0>
   1c078:	00078313          	mv	t1,a5
   1c07c:	00200793          	li	a5,2
   1c080:	b40788e3          	beqz	a5,1bbd0 <_vfiprintf_r+0x6e4>
   1c084:	00813603          	ld	a2,8(sp)
   1c088:	0ec10593          	addi	a1,sp,236
   1c08c:	00058b93          	mv	s7,a1
   1c090:	00f6f793          	andi	a5,a3,15
   1c094:	00f607b3          	add	a5,a2,a5
   1c098:	0007c783          	lbu	a5,0(a5)
   1c09c:	0046d693          	srli	a3,a3,0x4
   1c0a0:	fffb8b93          	addi	s7,s7,-1
   1c0a4:	00fb8023          	sb	a5,0(s7)
   1c0a8:	fe0694e3          	bnez	a3,1c090 <_vfiprintf_r+0xba4>
   1c0ac:	41758d3b          	subw	s10,a1,s7
   1c0b0:	000d0d9b          	sext.w	s11,s10
   1c0b4:	9f0d5ce3          	bge	s10,a6,1baac <_vfiprintf_r+0x5c0>
   1c0b8:	00080d9b          	sext.w	s11,a6
   1c0bc:	9f1ff06f          	j	1baac <_vfiprintf_r+0x5c0>
   1c0c0:	01000593          	li	a1,16
   1c0c4:	6965d863          	bge	a1,s6,1c754 <_vfiprintf_r+0x1268>
   1c0c8:	00022eb7          	lui	t4,0x22
   1c0cc:	7e0e8e93          	addi	t4,t4,2016 # 227e0 <blanks.1>
   1c0d0:	03713023          	sd	s7,32(sp)
   1c0d4:	01000f13          	li	t5,16
   1c0d8:	00700393          	li	t2,7
   1c0dc:	01f13823          	sd	t6,16(sp)
   1c0e0:	00513c23          	sd	t0,24(sp)
   1c0e4:	04613023          	sd	t1,64(sp)
   1c0e8:	05c13423          	sd	t3,72(sp)
   1c0ec:	05013823          	sd	a6,80(sp)
   1c0f0:	000e8b93          	mv	s7,t4
   1c0f4:	01c0006f          	j	1c110 <_vfiprintf_r+0xc24>
   1c0f8:	0026861b          	addiw	a2,a3,2
   1c0fc:	01070713          	addi	a4,a4,16
   1c100:	00058693          	mv	a3,a1
   1c104:	ff0b0b1b          	addiw	s6,s6,-16
   1c108:	056f5e63          	bge	t5,s6,1c164 <_vfiprintf_r+0xc78>
   1c10c:	0016861b          	addiw	a2,a3,1
   1c110:	01078793          	addi	a5,a5,16
   1c114:	01773023          	sd	s7,0(a4)
   1c118:	01e73423          	sd	t5,8(a4)
   1c11c:	08f13023          	sd	a5,128(sp)
   1c120:	0006059b          	sext.w	a1,a2
   1c124:	06c12c23          	sw	a2,120(sp)
   1c128:	fcb3d8e3          	bge	t2,a1,1c0f8 <_vfiprintf_r+0xc0c>
   1c12c:	08078063          	beqz	a5,1c1ac <_vfiprintf_r+0xcc0>
   1c130:	07010613          	addi	a2,sp,112
   1c134:	00090593          	mv	a1,s2
   1c138:	00098513          	mv	a0,s3
   1c13c:	a98ff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1c140:	de051463          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1c144:	07812683          	lw	a3,120(sp)
   1c148:	01000f13          	li	t5,16
   1c14c:	ff0b0b1b          	addiw	s6,s6,-16
   1c150:	08013783          	ld	a5,128(sp)
   1c154:	00048713          	mv	a4,s1
   1c158:	0016861b          	addiw	a2,a3,1
   1c15c:	00700393          	li	t2,7
   1c160:	fb6f46e3          	blt	t5,s6,1c10c <_vfiprintf_r+0xc20>
   1c164:	000b8e93          	mv	t4,s7
   1c168:	01013f83          	ld	t6,16(sp)
   1c16c:	01813283          	ld	t0,24(sp)
   1c170:	04013303          	ld	t1,64(sp)
   1c174:	04813e03          	ld	t3,72(sp)
   1c178:	05013803          	ld	a6,80(sp)
   1c17c:	02013b83          	ld	s7,32(sp)
   1c180:	016787b3          	add	a5,a5,s6
   1c184:	01d73023          	sd	t4,0(a4)
   1c188:	01673423          	sd	s6,8(a4)
   1c18c:	08f13023          	sd	a5,128(sp)
   1c190:	06c12c23          	sw	a2,120(sp)
   1c194:	00700693          	li	a3,7
   1c198:	18c6ca63          	blt	a3,a2,1c32c <_vfiprintf_r+0xe40>
   1c19c:	01070713          	addi	a4,a4,16
   1c1a0:	0016051b          	addiw	a0,a2,1
   1c1a4:	00060693          	mv	a3,a2
   1c1a8:	e5cff06f          	j	1b804 <_vfiprintf_r+0x318>
   1c1ac:	00000693          	li	a3,0
   1c1b0:	00100613          	li	a2,1
   1c1b4:	00048713          	mv	a4,s1
   1c1b8:	f4dff06f          	j	1c104 <_vfiprintf_r+0xc18>
   1c1bc:	06012c23          	sw	zero,120(sp)
   1c1c0:	00437313          	andi	t1,t1,4
   1c1c4:	0e030e63          	beqz	t1,1c2c0 <_vfiprintf_r+0xdd4>
   1c1c8:	41be0b3b          	subw	s6,t3,s11
   1c1cc:	0f605a63          	blez	s6,1c2c0 <_vfiprintf_r+0xdd4>
   1c1d0:	00048713          	mv	a4,s1
   1c1d4:	01000693          	li	a3,16
   1c1d8:	07812603          	lw	a2,120(sp)
   1c1dc:	5966d863          	bge	a3,s6,1c76c <_vfiprintf_r+0x1280>
   1c1e0:	00022eb7          	lui	t4,0x22
   1c1e4:	7e0e8e93          	addi	t4,t4,2016 # 227e0 <blanks.1>
   1c1e8:	01813c23          	sd	s8,24(sp)
   1c1ec:	01000b93          	li	s7,16
   1c1f0:	00700d13          	li	s10,7
   1c1f4:	01c13823          	sd	t3,16(sp)
   1c1f8:	000e8c13          	mv	s8,t4
   1c1fc:	0180006f          	j	1c214 <_vfiprintf_r+0xd28>
   1c200:	0026069b          	addiw	a3,a2,2
   1c204:	01070713          	addi	a4,a4,16
   1c208:	00058613          	mv	a2,a1
   1c20c:	ff0b0b1b          	addiw	s6,s6,-16
   1c210:	056bd863          	bge	s7,s6,1c260 <_vfiprintf_r+0xd74>
   1c214:	0016059b          	addiw	a1,a2,1
   1c218:	01078793          	addi	a5,a5,16
   1c21c:	01873023          	sd	s8,0(a4)
   1c220:	01773423          	sd	s7,8(a4)
   1c224:	08f13023          	sd	a5,128(sp)
   1c228:	06b12c23          	sw	a1,120(sp)
   1c22c:	fcbd5ae3          	bge	s10,a1,1c200 <_vfiprintf_r+0xd14>
   1c230:	08078063          	beqz	a5,1c2b0 <_vfiprintf_r+0xdc4>
   1c234:	07010613          	addi	a2,sp,112
   1c238:	00090593          	mv	a1,s2
   1c23c:	00098513          	mv	a0,s3
   1c240:	994ff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1c244:	ce051263          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1c248:	07812603          	lw	a2,120(sp)
   1c24c:	ff0b0b1b          	addiw	s6,s6,-16
   1c250:	08013783          	ld	a5,128(sp)
   1c254:	00048713          	mv	a4,s1
   1c258:	0016069b          	addiw	a3,a2,1
   1c25c:	fb6bcce3          	blt	s7,s6,1c214 <_vfiprintf_r+0xd28>
   1c260:	000c0e93          	mv	t4,s8
   1c264:	01013e03          	ld	t3,16(sp)
   1c268:	01813c03          	ld	s8,24(sp)
   1c26c:	016787b3          	add	a5,a5,s6
   1c270:	01d73023          	sd	t4,0(a4)
   1c274:	01673423          	sd	s6,8(a4)
   1c278:	08f13023          	sd	a5,128(sp)
   1c27c:	06d12c23          	sw	a3,120(sp)
   1c280:	00700713          	li	a4,7
   1c284:	e8d75a63          	bge	a4,a3,1b918 <_vfiprintf_r+0x42c>
   1c288:	02078c63          	beqz	a5,1c2c0 <_vfiprintf_r+0xdd4>
   1c28c:	07010613          	addi	a2,sp,112
   1c290:	00090593          	mv	a1,s2
   1c294:	00098513          	mv	a0,s3
   1c298:	01c13823          	sd	t3,16(sp)
   1c29c:	938ff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1c2a0:	c8051463          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1c2a4:	08013783          	ld	a5,128(sp)
   1c2a8:	01013e03          	ld	t3,16(sp)
   1c2ac:	e6cff06f          	j	1b918 <_vfiprintf_r+0x42c>
   1c2b0:	00100693          	li	a3,1
   1c2b4:	00000613          	li	a2,0
   1c2b8:	00048713          	mv	a4,s1
   1c2bc:	f51ff06f          	j	1c20c <_vfiprintf_r+0xd20>
   1c2c0:	000e0793          	mv	a5,t3
   1c2c4:	01be5463          	bge	t3,s11,1c2cc <_vfiprintf_r+0xde0>
   1c2c8:	000d8793          	mv	a5,s11
   1c2cc:	01578abb          	addw	s5,a5,s5
   1c2d0:	e5cff06f          	j	1b92c <_vfiprintf_r+0x440>
   1c2d4:	ae078ce3          	beqz	a5,1bdcc <_vfiprintf_r+0x8e0>
   1c2d8:	07010613          	addi	a2,sp,112
   1c2dc:	00090593          	mv	a1,s2
   1c2e0:	00098513          	mv	a0,s3
   1c2e4:	01c13c23          	sd	t3,24(sp)
   1c2e8:	00613823          	sd	t1,16(sp)
   1c2ec:	8e8ff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1c2f0:	c2051c63          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1c2f4:	07812503          	lw	a0,120(sp)
   1c2f8:	08013783          	ld	a5,128(sp)
   1c2fc:	01813e03          	ld	t3,24(sp)
   1c300:	01013303          	ld	t1,16(sp)
   1c304:	00048713          	mv	a4,s1
   1c308:	0015051b          	addiw	a0,a0,1
   1c30c:	db0ff06f          	j	1b8bc <_vfiprintf_r+0x3d0>
   1c310:	06012c23          	sw	zero,120(sp)
   1c314:	00048713          	mv	a4,s1
   1c318:	b2cff06f          	j	1b644 <_vfiprintf_r+0x158>
   1c31c:	00100513          	li	a0,1
   1c320:	00000693          	li	a3,0
   1c324:	00048713          	mv	a4,s1
   1c328:	d84ff06f          	j	1b8ac <_vfiprintf_r+0x3c0>
   1c32c:	2a078063          	beqz	a5,1c5cc <_vfiprintf_r+0x10e0>
   1c330:	07010613          	addi	a2,sp,112
   1c334:	00090593          	mv	a1,s2
   1c338:	00098513          	mv	a0,s3
   1c33c:	05013423          	sd	a6,72(sp)
   1c340:	05c13023          	sd	t3,64(sp)
   1c344:	02613023          	sd	t1,32(sp)
   1c348:	00513c23          	sd	t0,24(sp)
   1c34c:	01f13823          	sd	t6,16(sp)
   1c350:	884ff0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1c354:	bc051a63          	bnez	a0,1b728 <_vfiprintf_r+0x23c>
   1c358:	07812683          	lw	a3,120(sp)
   1c35c:	08013783          	ld	a5,128(sp)
   1c360:	04813803          	ld	a6,72(sp)
   1c364:	04013e03          	ld	t3,64(sp)
   1c368:	02013303          	ld	t1,32(sp)
   1c36c:	01813283          	ld	t0,24(sp)
   1c370:	01013f83          	ld	t6,16(sp)
   1c374:	00048713          	mv	a4,s1
   1c378:	0016851b          	addiw	a0,a3,1
   1c37c:	c88ff06f          	j	1b804 <_vfiprintf_r+0x318>
   1c380:	00000d93          	li	s11,0
   1c384:	00000d13          	li	s10,0
   1c388:	0ec10b93          	addi	s7,sp,236
   1c38c:	f20ff06f          	j	1baac <_vfiprintf_r+0x5c0>
   1c390:	05213c23          	sd	s2,88(sp)
   1c394:	03013903          	ld	s2,48(sp)
   1c398:	0ec10593          	addi	a1,sp,236
   1c39c:	05313823          	sd	s3,80(sp)
   1c3a0:	40037d13          	andi	s10,t1,1024
   1c3a4:	00000b13          	li	s6,0
   1c3a8:	00058b93          	mv	s7,a1
   1c3ac:	00900c13          	li	s8,9
   1c3b0:	00613823          	sd	t1,16(sp)
   1c3b4:	01c13c23          	sd	t3,24(sp)
   1c3b8:	03013023          	sd	a6,32(sp)
   1c3bc:	04e13023          	sd	a4,64(sp)
   1c3c0:	04d13423          	sd	a3,72(sp)
   1c3c4:	00058993          	mv	s3,a1
   1c3c8:	00a00593          	li	a1,10
   1c3cc:	000d8513          	mv	a0,s11
   1c3d0:	051050ef          	jal	ra,21c20 <__umoddi3>
   1c3d4:	0305051b          	addiw	a0,a0,48
   1c3d8:	fea98fa3          	sb	a0,-1(s3)
   1c3dc:	001b0b1b          	addiw	s6,s6,1
   1c3e0:	fff98993          	addi	s3,s3,-1
   1c3e4:	000d0663          	beqz	s10,1c3f0 <_vfiprintf_r+0xf04>
   1c3e8:	00094703          	lbu	a4,0(s2)
   1c3ec:	01670e63          	beq	a4,s6,1c408 <_vfiprintf_r+0xf1c>
   1c3f0:	00a00593          	li	a1,10
   1c3f4:	000d8513          	mv	a0,s11
   1c3f8:	7e0050ef          	jal	ra,21bd8 <__hidden___udivdi3>
   1c3fc:	01bc7c63          	bgeu	s8,s11,1c414 <_vfiprintf_r+0xf28>
   1c400:	00050d93          	mv	s11,a0
   1c404:	fc5ff06f          	j	1c3c8 <_vfiprintf_r+0xedc>
   1c408:	0ff00793          	li	a5,255
   1c40c:	fef702e3          	beq	a4,a5,1c3f0 <_vfiprintf_r+0xf04>
   1c410:	1fbc6063          	bltu	s8,s11,1c5f0 <_vfiprintf_r+0x1104>
   1c414:	02013803          	ld	a6,32(sp)
   1c418:	000b8593          	mv	a1,s7
   1c41c:	00098b93          	mv	s7,s3
   1c420:	03213823          	sd	s2,48(sp)
   1c424:	41758d3b          	subw	s10,a1,s7
   1c428:	01013303          	ld	t1,16(sp)
   1c42c:	01813e03          	ld	t3,24(sp)
   1c430:	04013703          	ld	a4,64(sp)
   1c434:	04813683          	ld	a3,72(sp)
   1c438:	05813903          	ld	s2,88(sp)
   1c43c:	05013983          	ld	s3,80(sp)
   1c440:	000d0d9b          	sext.w	s11,s10
   1c444:	010d5463          	bge	s10,a6,1c44c <_vfiprintf_r+0xf60>
   1c448:	00080d9b          	sext.w	s11,a6
   1c44c:	00068c13          	mv	s8,a3
   1c450:	e5cff06f          	j	1baac <_vfiprintf_r+0x5c0>
   1c454:	00000d93          	li	s11,0
   1c458:	0ec10b93          	addi	s7,sp,236
   1c45c:	e50ff06f          	j	1baac <_vfiprintf_r+0x5c0>
   1c460:	01070713          	addi	a4,a4,16
   1c464:	0016051b          	addiw	a0,a2,1
   1c468:	00060693          	mv	a3,a2
   1c46c:	c48ff06f          	j	1b8b4 <_vfiprintf_r+0x3c8>
   1c470:	0407f613          	andi	a2,a5,64
   1c474:	000c2683          	lw	a3,0(s8)
   1c478:	20060863          	beqz	a2,1c688 <_vfiprintf_r+0x119c>
   1c47c:	03069693          	slli	a3,a3,0x30
   1c480:	0306d693          	srli	a3,a3,0x30
   1c484:	e90ff06f          	j	1bb14 <_vfiprintf_r+0x628>
   1c488:	040d7613          	andi	a2,s10,64
   1c48c:	000c2783          	lw	a5,0(s8)
   1c490:	20060c63          	beqz	a2,1c6a8 <_vfiprintf_r+0x11bc>
   1c494:	03079d93          	slli	s11,a5,0x30
   1c498:	030ddd93          	srli	s11,s11,0x30
   1c49c:	909ff06f          	j	1bda4 <_vfiprintf_r+0x8b8>
   1c4a0:	000cc783          	lbu	a5,0(s9)
   1c4a4:	9c068a63          	beqz	a3,1b678 <_vfiprintf_r+0x18c>
   1c4a8:	0006c683          	lbu	a3,0(a3)
   1c4ac:	9c068663          	beqz	a3,1b678 <_vfiprintf_r+0x18c>
   1c4b0:	400b6313          	ori	t1,s6,1024
   1c4b4:	00030b1b          	sext.w	s6,t1
   1c4b8:	9c0ff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1c4bc:	00000693          	li	a3,0
   1c4c0:	00100513          	li	a0,1
   1c4c4:	00048713          	mv	a4,s1
   1c4c8:	be4ff06f          	j	1b8ac <_vfiprintf_r+0x3c0>
   1c4cc:	00080d9b          	sext.w	s11,a6
   1c4d0:	00060b93          	mv	s7,a2
   1c4d4:	dd8ff06f          	j	1baac <_vfiprintf_r+0x5c0>
   1c4d8:	000226b7          	lui	a3,0x22
   1c4dc:	d0868693          	addi	a3,a3,-760 # 21d08 <__clzdi2+0x78>
   1c4e0:	000b0313          	mv	t1,s6
   1c4e4:	00d13423          	sd	a3,8(sp)
   1c4e8:	02037693          	andi	a3,t1,32
   1c4ec:	000d0e13          	mv	t3,s10
   1c4f0:	000d8813          	mv	a6,s11
   1c4f4:	008c0613          	addi	a2,s8,8
   1c4f8:	08069a63          	bnez	a3,1c58c <_vfiprintf_r+0x10a0>
   1c4fc:	01037693          	andi	a3,t1,16
   1c500:	08069663          	bnez	a3,1c58c <_vfiprintf_r+0x10a0>
   1c504:	04037593          	andi	a1,t1,64
   1c508:	000c2683          	lw	a3,0(s8)
   1c50c:	18058663          	beqz	a1,1c698 <_vfiprintf_r+0x11ac>
   1c510:	03069693          	slli	a3,a3,0x30
   1c514:	0306d693          	srli	a3,a3,0x30
   1c518:	00137593          	andi	a1,t1,1
   1c51c:	00058e63          	beqz	a1,1c538 <_vfiprintf_r+0x104c>
   1c520:	00068c63          	beqz	a3,1c538 <_vfiprintf_r+0x104c>
   1c524:	00236313          	ori	t1,t1,2
   1c528:	03000593          	li	a1,48
   1c52c:	06b10423          	sb	a1,104(sp)
   1c530:	06f104a3          	sb	a5,105(sp)
   1c534:	0003031b          	sext.w	t1,t1
   1c538:	bff37313          	andi	t1,t1,-1025
   1c53c:	0003031b          	sext.w	t1,t1
   1c540:	00060c13          	mv	s8,a2
   1c544:	e50ff06f          	j	1bb94 <_vfiprintf_r+0x6a8>
   1c548:	000d0e13          	mv	t3,s10
   1c54c:	000d8813          	mv	a6,s11
   1c550:	000b0d13          	mv	s10,s6
   1c554:	839ff06f          	j	1bd8c <_vfiprintf_r+0x8a0>
   1c558:	000d0e13          	mv	t3,s10
   1c55c:	000d8813          	mv	a6,s11
   1c560:	000b0793          	mv	a5,s6
   1c564:	d98ff06f          	j	1bafc <_vfiprintf_r+0x610>
   1c568:	000226b7          	lui	a3,0x22
   1c56c:	d2068693          	addi	a3,a3,-736 # 21d20 <__clzdi2+0x90>
   1c570:	000b0313          	mv	t1,s6
   1c574:	00d13423          	sd	a3,8(sp)
   1c578:	02037693          	andi	a3,t1,32
   1c57c:	000d0e13          	mv	t3,s10
   1c580:	000d8813          	mv	a6,s11
   1c584:	008c0613          	addi	a2,s8,8
   1c588:	f6068ae3          	beqz	a3,1c4fc <_vfiprintf_r+0x1010>
   1c58c:	000c3683          	ld	a3,0(s8)
   1c590:	f89ff06f          	j	1c518 <_vfiprintf_r+0x102c>
   1c594:	000b8513          	mv	a0,s7
   1c598:	02e13023          	sd	a4,32(sp)
   1c59c:	01a13c23          	sd	s10,24(sp)
   1c5a0:	01613823          	sd	s6,16(sp)
   1c5a4:	efcfc0ef          	jal	ra,18ca0 <strlen>
   1c5a8:	00050d1b          	sext.w	s10,a0
   1c5ac:	fffd4d93          	not	s11,s10
   1c5b0:	43fddd93          	srai	s11,s11,0x3f
   1c5b4:	01013303          	ld	t1,16(sp)
   1c5b8:	01813e03          	ld	t3,24(sp)
   1c5bc:	02013703          	ld	a4,32(sp)
   1c5c0:	01adfdb3          	and	s11,s11,s10
   1c5c4:	00000813          	li	a6,0
   1c5c8:	ce4ff06f          	j	1baac <_vfiprintf_r+0x5c0>
   1c5cc:	06714703          	lbu	a4,103(sp)
   1c5d0:	12070063          	beqz	a4,1c6f0 <_vfiprintf_r+0x1204>
   1c5d4:	06710793          	addi	a5,sp,103
   1c5d8:	0ef13823          	sd	a5,240(sp)
   1c5dc:	00100793          	li	a5,1
   1c5e0:	0ef13c23          	sd	a5,248(sp)
   1c5e4:	00100513          	li	a0,1
   1c5e8:	00048713          	mv	a4,s1
   1c5ec:	a44ff06f          	j	1b830 <_vfiprintf_r+0x344>
   1c5f0:	02813783          	ld	a5,40(sp)
   1c5f4:	03813583          	ld	a1,56(sp)
   1c5f8:	00000b13          	li	s6,0
   1c5fc:	40f989b3          	sub	s3,s3,a5
   1c600:	00078613          	mv	a2,a5
   1c604:	00098513          	mv	a0,s3
   1c608:	f60fc0ef          	jal	ra,18d68 <strncpy>
   1c60c:	00194703          	lbu	a4,1(s2)
   1c610:	000d8513          	mv	a0,s11
   1c614:	00a00593          	li	a1,10
   1c618:	00e03733          	snez	a4,a4
   1c61c:	00e90933          	add	s2,s2,a4
   1c620:	5b8050ef          	jal	ra,21bd8 <__hidden___udivdi3>
   1c624:	00050d93          	mv	s11,a0
   1c628:	da1ff06f          	j	1c3c8 <_vfiprintf_r+0xedc>
   1c62c:	00078313          	mv	t1,a5
   1c630:	00000793          	li	a5,0
   1c634:	d8078e63          	beqz	a5,1bbd0 <_vfiprintf_r+0x6e4>
   1c638:	a4dff06f          	j	1c084 <_vfiprintf_r+0xb98>
   1c63c:	020b6313          	ori	t1,s6,32
   1c640:	001cc783          	lbu	a5,1(s9)
   1c644:	00030b1b          	sext.w	s6,t1
   1c648:	001c8c93          	addi	s9,s9,1
   1c64c:	82cff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1c650:	200b6313          	ori	t1,s6,512
   1c654:	001cc783          	lbu	a5,1(s9)
   1c658:	00030b1b          	sext.w	s6,t1
   1c65c:	001c8c93          	addi	s9,s9,1
   1c660:	818ff06f          	j	1b678 <_vfiprintf_r+0x18c>
   1c664:	00600793          	li	a5,6
   1c668:	000d8d1b          	sext.w	s10,s11
   1c66c:	07b7ee63          	bltu	a5,s11,1c6e8 <_vfiprintf_r+0x11fc>
   1c670:	00022bb7          	lui	s7,0x22
   1c674:	000d0d93          	mv	s11,s10
   1c678:	d38b8b93          	addi	s7,s7,-712 # 21d38 <__clzdi2+0xa8>
   1c67c:	958ff06f          	j	1b7d4 <_vfiprintf_r+0x2e8>
   1c680:	00000693          	li	a3,0
   1c684:	a01ff06f          	j	1c084 <_vfiprintf_r+0xb98>
   1c688:	2007f613          	andi	a2,a5,512
   1c68c:	08060c63          	beqz	a2,1c724 <_vfiprintf_r+0x1238>
   1c690:	0ff6f693          	zext.b	a3,a3
   1c694:	c80ff06f          	j	1bb14 <_vfiprintf_r+0x628>
   1c698:	20037593          	andi	a1,t1,512
   1c69c:	06058e63          	beqz	a1,1c718 <_vfiprintf_r+0x122c>
   1c6a0:	0ff6f693          	zext.b	a3,a3
   1c6a4:	e75ff06f          	j	1c518 <_vfiprintf_r+0x102c>
   1c6a8:	200d7613          	andi	a2,s10,512
   1c6ac:	0ff7fd93          	zext.b	s11,a5
   1c6b0:	ee061a63          	bnez	a2,1bda4 <_vfiprintf_r+0x8b8>
   1c6b4:	02079d93          	slli	s11,a5,0x20
   1c6b8:	020ddd93          	srli	s11,s11,0x20
   1c6bc:	ee8ff06f          	j	1bda4 <_vfiprintf_r+0x8b8>
   1c6c0:	20037613          	andi	a2,t1,512
   1c6c4:	04060463          	beqz	a2,1c70c <_vfiprintf_r+0x1220>
   1c6c8:	01879d9b          	slliw	s11,a5,0x18
   1c6cc:	418ddd9b          	sraiw	s11,s11,0x18
   1c6d0:	000d8613          	mv	a2,s11
   1c6d4:	b58ff06f          	j	1ba2c <_vfiprintf_r+0x540>
   1c6d8:	00100513          	li	a0,1
   1c6dc:	00000693          	li	a3,0
   1c6e0:	00048713          	mv	a4,s1
   1c6e4:	9d0ff06f          	j	1b8b4 <_vfiprintf_r+0x3c8>
   1c6e8:	00600d13          	li	s10,6
   1c6ec:	f85ff06f          	j	1c670 <_vfiprintf_r+0x1184>
   1c6f0:	00000693          	li	a3,0
   1c6f4:	00100513          	li	a0,1
   1c6f8:	00048713          	mv	a4,s1
   1c6fc:	940ff06f          	j	1b83c <_vfiprintf_r+0x350>
   1c700:	01569023          	sh	s5,0(a3)
   1c704:	008c0c13          	addi	s8,s8,8
   1c708:	ecdfe06f          	j	1b5d4 <_vfiprintf_r+0xe8>
   1c70c:	00078d93          	mv	s11,a5
   1c710:	00078613          	mv	a2,a5
   1c714:	b18ff06f          	j	1ba2c <_vfiprintf_r+0x540>
   1c718:	02069693          	slli	a3,a3,0x20
   1c71c:	0206d693          	srli	a3,a3,0x20
   1c720:	df9ff06f          	j	1c518 <_vfiprintf_r+0x102c>
   1c724:	02069693          	slli	a3,a3,0x20
   1c728:	0206d693          	srli	a3,a3,0x20
   1c72c:	be8ff06f          	j	1bb14 <_vfiprintf_r+0x628>
   1c730:	07010613          	addi	a2,sp,112
   1c734:	00090593          	mv	a1,s2
   1c738:	00098513          	mv	a0,s3
   1c73c:	c99fe0ef          	jal	ra,1b3d4 <__sprint_r.part.0>
   1c740:	fe9fe06f          	j	1b728 <_vfiprintf_r+0x23c>
   1c744:	00080d93          	mv	s11,a6
   1c748:	00080d13          	mv	s10,a6
   1c74c:	00000813          	li	a6,0
   1c750:	b5cff06f          	j	1baac <_vfiprintf_r+0x5c0>
   1c754:	00022eb7          	lui	t4,0x22
   1c758:	7e0e8e93          	addi	t4,t4,2016 # 227e0 <blanks.1>
   1c75c:	a25ff06f          	j	1c180 <_vfiprintf_r+0xc94>
   1c760:	00068c13          	mv	s8,a3
   1c764:	03000793          	li	a5,48
   1c768:	b2cff06f          	j	1ba94 <_vfiprintf_r+0x5a8>
   1c76c:	00022eb7          	lui	t4,0x22
   1c770:	0016069b          	addiw	a3,a2,1
   1c774:	7e0e8e93          	addi	t4,t4,2016 # 227e0 <blanks.1>
   1c778:	af5ff06f          	j	1c26c <_vfiprintf_r+0xd80>
   1c77c:	fff00a93          	li	s5,-1
   1c780:	fb9fe06f          	j	1b738 <_vfiprintf_r+0x24c>
   1c784:	00022eb7          	lui	t4,0x22
   1c788:	00050613          	mv	a2,a0
   1c78c:	7d0e8e93          	addi	t4,t4,2000 # 227d0 <zeroes.0>
   1c790:	f14ff06f          	j	1bea4 <_vfiprintf_r+0x9b8>
   1c794:	0156a023          	sw	s5,0(a3)
   1c798:	008c0c13          	addi	s8,s8,8
   1c79c:	e39fe06f          	j	1b5d4 <_vfiprintf_r+0xe8>
   1c7a0:	000c2783          	lw	a5,0(s8)
   1c7a4:	008c0c13          	addi	s8,s8,8
   1c7a8:	00078813          	mv	a6,a5
   1c7ac:	0007d463          	bgez	a5,1c7b4 <_vfiprintf_r+0x12c8>
   1c7b0:	fff00813          	li	a6,-1
   1c7b4:	001cc783          	lbu	a5,1(s9)
   1c7b8:	00080d9b          	sext.w	s11,a6
   1c7bc:	00068c93          	mv	s9,a3
   1c7c0:	eb9fe06f          	j	1b678 <_vfiprintf_r+0x18c>

000000000001c7c4 <vfiprintf>:
   1c7c4:	00050793          	mv	a5,a0
   1c7c8:	7581b503          	ld	a0,1880(gp) # 24d60 <_impure_ptr>
   1c7cc:	00060693          	mv	a3,a2
   1c7d0:	00058613          	mv	a2,a1
   1c7d4:	00078593          	mv	a1,a5
   1c7d8:	d15fe06f          	j	1b4ec <_vfiprintf_r>

000000000001c7dc <__sbprintf>:
   1c7dc:	01059783          	lh	a5,16(a1)
   1c7e0:	0125d703          	lhu	a4,18(a1)
   1c7e4:	0ac5a303          	lw	t1,172(a1)
   1c7e8:	ffd7f793          	andi	a5,a5,-3
   1c7ec:	0107979b          	slliw	a5,a5,0x10
   1c7f0:	0305b883          	ld	a7,48(a1)
   1c7f4:	0405b803          	ld	a6,64(a1)
   1c7f8:	0107171b          	slliw	a4,a4,0x10
   1c7fc:	0107d79b          	srliw	a5,a5,0x10
   1c800:	b3010113          	addi	sp,sp,-1232
   1c804:	00e7e7b3          	or	a5,a5,a4
   1c808:	4c813023          	sd	s0,1216(sp)
   1c80c:	40000713          	li	a4,1024
   1c810:	00f12823          	sw	a5,16(sp)
   1c814:	00058413          	mv	s0,a1
   1c818:	0b010793          	addi	a5,sp,176
   1c81c:	00010593          	mv	a1,sp
   1c820:	4a913c23          	sd	s1,1208(sp)
   1c824:	4b213823          	sd	s2,1200(sp)
   1c828:	4c113423          	sd	ra,1224(sp)
   1c82c:	00050913          	mv	s2,a0
   1c830:	0a612623          	sw	t1,172(sp)
   1c834:	03113823          	sd	a7,48(sp)
   1c838:	05013023          	sd	a6,64(sp)
   1c83c:	00f13023          	sd	a5,0(sp)
   1c840:	00f13c23          	sd	a5,24(sp)
   1c844:	00e12623          	sw	a4,12(sp)
   1c848:	02e12023          	sw	a4,32(sp)
   1c84c:	02012423          	sw	zero,40(sp)
   1c850:	c9dfe0ef          	jal	ra,1b4ec <_vfiprintf_r>
   1c854:	00050493          	mv	s1,a0
   1c858:	02055c63          	bgez	a0,1c890 <__sbprintf+0xb4>
   1c85c:	01015783          	lhu	a5,16(sp)
   1c860:	0407f793          	andi	a5,a5,64
   1c864:	00078863          	beqz	a5,1c874 <__sbprintf+0x98>
   1c868:	01045783          	lhu	a5,16(s0)
   1c86c:	0407e793          	ori	a5,a5,64
   1c870:	00f41823          	sh	a5,16(s0)
   1c874:	4c813083          	ld	ra,1224(sp)
   1c878:	4c013403          	ld	s0,1216(sp)
   1c87c:	4b013903          	ld	s2,1200(sp)
   1c880:	00048513          	mv	a0,s1
   1c884:	4b813483          	ld	s1,1208(sp)
   1c888:	4d010113          	addi	sp,sp,1232
   1c88c:	00008067          	ret
   1c890:	00010593          	mv	a1,sp
   1c894:	00090513          	mv	a0,s2
   1c898:	f74f60ef          	jal	ra,1300c <_fflush_r>
   1c89c:	fc0500e3          	beqz	a0,1c85c <__sbprintf+0x80>
   1c8a0:	fff00493          	li	s1,-1
   1c8a4:	fb9ff06f          	j	1c85c <__sbprintf+0x80>

000000000001c8a8 <_wctomb_r>:
   1c8a8:	e401b783          	ld	a5,-448(gp) # 24448 <__global_locale+0xe0>
   1c8ac:	00078067          	jr	a5

000000000001c8b0 <__ascii_wctomb>:
   1c8b0:	0006079b          	sext.w	a5,a2
   1c8b4:	02058463          	beqz	a1,1c8dc <__ascii_wctomb+0x2c>
   1c8b8:	0ff00713          	li	a4,255
   1c8bc:	00f76863          	bltu	a4,a5,1c8cc <__ascii_wctomb+0x1c>
   1c8c0:	00c58023          	sb	a2,0(a1)
   1c8c4:	00100513          	li	a0,1
   1c8c8:	00008067          	ret
   1c8cc:	08a00793          	li	a5,138
   1c8d0:	00f52023          	sw	a5,0(a0)
   1c8d4:	fff00513          	li	a0,-1
   1c8d8:	00008067          	ret
   1c8dc:	00000513          	li	a0,0
   1c8e0:	00008067          	ret

000000000001c8e4 <_write_r>:
   1c8e4:	fe010113          	addi	sp,sp,-32
   1c8e8:	00058713          	mv	a4,a1
   1c8ec:	00813823          	sd	s0,16(sp)
   1c8f0:	00913423          	sd	s1,8(sp)
   1c8f4:	00060593          	mv	a1,a2
   1c8f8:	00050413          	mv	s0,a0
   1c8fc:	00068613          	mv	a2,a3
   1c900:	00070513          	mv	a0,a4
   1c904:	00113c23          	sd	ra,24(sp)
   1c908:	7801a823          	sw	zero,1936(gp) # 24d98 <errno>
   1c90c:	41c030ef          	jal	ra,1fd28 <_write>
   1c910:	fff00793          	li	a5,-1
   1c914:	00f50c63          	beq	a0,a5,1c92c <_write_r+0x48>
   1c918:	01813083          	ld	ra,24(sp)
   1c91c:	01013403          	ld	s0,16(sp)
   1c920:	00813483          	ld	s1,8(sp)
   1c924:	02010113          	addi	sp,sp,32
   1c928:	00008067          	ret
   1c92c:	7901a783          	lw	a5,1936(gp) # 24d98 <errno>
   1c930:	fe0784e3          	beqz	a5,1c918 <_write_r+0x34>
   1c934:	01813083          	ld	ra,24(sp)
   1c938:	00f42023          	sw	a5,0(s0)
   1c93c:	01013403          	ld	s0,16(sp)
   1c940:	00813483          	ld	s1,8(sp)
   1c944:	02010113          	addi	sp,sp,32
   1c948:	00008067          	ret

000000000001c94c <__assert_func>:
   1c94c:	7581b703          	ld	a4,1880(gp) # 24d60 <_impure_ptr>
   1c950:	ff010113          	addi	sp,sp,-16
   1c954:	00068793          	mv	a5,a3
   1c958:	00060813          	mv	a6,a2
   1c95c:	00113423          	sd	ra,8(sp)
   1c960:	01873883          	ld	a7,24(a4)
   1c964:	00050693          	mv	a3,a0
   1c968:	00058713          	mv	a4,a1
   1c96c:	00078613          	mv	a2,a5
   1c970:	02080063          	beqz	a6,1c990 <__assert_func+0x44>
   1c974:	000227b7          	lui	a5,0x22
   1c978:	7f078793          	addi	a5,a5,2032 # 227f0 <blanks.1+0x10>
   1c97c:	000235b7          	lui	a1,0x23
   1c980:	80058593          	addi	a1,a1,-2048 # 22800 <blanks.1+0x20>
   1c984:	00088513          	mv	a0,a7
   1c988:	3b8000ef          	jal	ra,1cd40 <fiprintf>
   1c98c:	315020ef          	jal	ra,1f4a0 <abort>
   1c990:	00022837          	lui	a6,0x22
   1c994:	d1880793          	addi	a5,a6,-744 # 21d18 <__clzdi2+0x88>
   1c998:	d1880813          	addi	a6,a6,-744
   1c99c:	fe1ff06f          	j	1c97c <__assert_func+0x30>

000000000001c9a0 <__assert>:
   1c9a0:	ff010113          	addi	sp,sp,-16
   1c9a4:	00060693          	mv	a3,a2
   1c9a8:	00000613          	li	a2,0
   1c9ac:	00113423          	sd	ra,8(sp)
   1c9b0:	f9dff0ef          	jal	ra,1c94c <__assert_func>

000000000001c9b4 <atexit>:
   1c9b4:	00050593          	mv	a1,a0
   1c9b8:	00000693          	li	a3,0
   1c9bc:	00000613          	li	a2,0
   1c9c0:	00000513          	li	a0,0
   1c9c4:	2f50206f          	j	1f4b8 <__register_exitproc>

000000000001c9c8 <_calloc_r>:
   1c9c8:	fd010113          	addi	sp,sp,-48
   1c9cc:	02813023          	sd	s0,32(sp)
   1c9d0:	02113423          	sd	ra,40(sp)
   1c9d4:	00913c23          	sd	s1,24(sp)
   1c9d8:	01213823          	sd	s2,16(sp)
   1c9dc:	01313423          	sd	s3,8(sp)
   1c9e0:	4205d693          	srai	a3,a1,0x20
   1c9e4:	00058793          	mv	a5,a1
   1c9e8:	00050413          	mv	s0,a0
   1c9ec:	02065713          	srli	a4,a2,0x20
   1c9f0:	0c069c63          	bnez	a3,1cac8 <_calloc_r+0x100>
   1c9f4:	16071263          	bnez	a4,1cb58 <_calloc_r+0x190>
   1c9f8:	02061593          	slli	a1,a2,0x20
   1c9fc:	02079513          	slli	a0,a5,0x20
   1ca00:	0205d593          	srli	a1,a1,0x20
   1ca04:	02055513          	srli	a0,a0,0x20
   1ca08:	164050ef          	jal	ra,21b6c <__muldi3>
   1ca0c:	00050593          	mv	a1,a0
   1ca10:	00040513          	mv	a0,s0
   1ca14:	8bcfa0ef          	jal	ra,16ad0 <_malloc_r>
   1ca18:	00050413          	mv	s0,a0
   1ca1c:	10050c63          	beqz	a0,1cb34 <_calloc_r+0x16c>
   1ca20:	ff853603          	ld	a2,-8(a0)
   1ca24:	04800713          	li	a4,72
   1ca28:	ffc67613          	andi	a2,a2,-4
   1ca2c:	ff860613          	addi	a2,a2,-8
   1ca30:	04c76e63          	bltu	a4,a2,1ca8c <_calloc_r+0xc4>
   1ca34:	02700693          	li	a3,39
   1ca38:	00050793          	mv	a5,a0
   1ca3c:	02c6f263          	bgeu	a3,a2,1ca60 <_calloc_r+0x98>
   1ca40:	00053023          	sd	zero,0(a0)
   1ca44:	00053423          	sd	zero,8(a0)
   1ca48:	03700793          	li	a5,55
   1ca4c:	06c7f463          	bgeu	a5,a2,1cab4 <_calloc_r+0xec>
   1ca50:	00053823          	sd	zero,16(a0)
   1ca54:	00053c23          	sd	zero,24(a0)
   1ca58:	02050793          	addi	a5,a0,32
   1ca5c:	10e60463          	beq	a2,a4,1cb64 <_calloc_r+0x19c>
   1ca60:	0007b023          	sd	zero,0(a5)
   1ca64:	0007b423          	sd	zero,8(a5)
   1ca68:	0007b823          	sd	zero,16(a5)
   1ca6c:	02813083          	ld	ra,40(sp)
   1ca70:	00040513          	mv	a0,s0
   1ca74:	02013403          	ld	s0,32(sp)
   1ca78:	01813483          	ld	s1,24(sp)
   1ca7c:	01013903          	ld	s2,16(sp)
   1ca80:	00813983          	ld	s3,8(sp)
   1ca84:	03010113          	addi	sp,sp,48
   1ca88:	00008067          	ret
   1ca8c:	00000593          	li	a1,0
   1ca90:	84df30ef          	jal	ra,102dc <memset>
   1ca94:	02813083          	ld	ra,40(sp)
   1ca98:	00040513          	mv	a0,s0
   1ca9c:	02013403          	ld	s0,32(sp)
   1caa0:	01813483          	ld	s1,24(sp)
   1caa4:	01013903          	ld	s2,16(sp)
   1caa8:	00813983          	ld	s3,8(sp)
   1caac:	03010113          	addi	sp,sp,48
   1cab0:	00008067          	ret
   1cab4:	01050793          	addi	a5,a0,16
   1cab8:	0007b023          	sd	zero,0(a5)
   1cabc:	0007b423          	sd	zero,8(a5)
   1cac0:	0007b823          	sd	zero,16(a5)
   1cac4:	fa9ff06f          	j	1ca6c <_calloc_r+0xa4>
   1cac8:	0a071663          	bnez	a4,1cb74 <_calloc_r+0x1ac>
   1cacc:	0205d593          	srli	a1,a1,0x20
   1cad0:	00058913          	mv	s2,a1
   1cad4:	00060993          	mv	s3,a2
   1cad8:	02079513          	slli	a0,a5,0x20
   1cadc:	02061593          	slli	a1,a2,0x20
   1cae0:	0205d593          	srli	a1,a1,0x20
   1cae4:	02055513          	srli	a0,a0,0x20
   1cae8:	084050ef          	jal	ra,21b6c <__muldi3>
   1caec:	00050493          	mv	s1,a0
   1caf0:	02091593          	slli	a1,s2,0x20
   1caf4:	02099513          	slli	a0,s3,0x20
   1caf8:	0205d593          	srli	a1,a1,0x20
   1cafc:	02055513          	srli	a0,a0,0x20
   1cb00:	06c050ef          	jal	ra,21b6c <__muldi3>
   1cb04:	0204d793          	srli	a5,s1,0x20
   1cb08:	00f505b3          	add	a1,a0,a5
   1cb0c:	4205d793          	srai	a5,a1,0x20
   1cb10:	06079263          	bnez	a5,1cb74 <_calloc_r+0x1ac>
   1cb14:	02049493          	slli	s1,s1,0x20
   1cb18:	02059593          	slli	a1,a1,0x20
   1cb1c:	0204d493          	srli	s1,s1,0x20
   1cb20:	00040513          	mv	a0,s0
   1cb24:	0095e5b3          	or	a1,a1,s1
   1cb28:	fa9f90ef          	jal	ra,16ad0 <_malloc_r>
   1cb2c:	00050413          	mv	s0,a0
   1cb30:	ee0518e3          	bnez	a0,1ca20 <_calloc_r+0x58>
   1cb34:	00000413          	li	s0,0
   1cb38:	02813083          	ld	ra,40(sp)
   1cb3c:	00040513          	mv	a0,s0
   1cb40:	02013403          	ld	s0,32(sp)
   1cb44:	01813483          	ld	s1,24(sp)
   1cb48:	01013903          	ld	s2,16(sp)
   1cb4c:	00813983          	ld	s3,8(sp)
   1cb50:	03010113          	addi	sp,sp,48
   1cb54:	00008067          	ret
   1cb58:	00070913          	mv	s2,a4
   1cb5c:	00058993          	mv	s3,a1
   1cb60:	f79ff06f          	j	1cad8 <_calloc_r+0x110>
   1cb64:	02053023          	sd	zero,32(a0)
   1cb68:	03050793          	addi	a5,a0,48
   1cb6c:	02053423          	sd	zero,40(a0)
   1cb70:	ef1ff06f          	j	1ca60 <_calloc_r+0x98>
   1cb74:	070000ef          	jal	ra,1cbe4 <__errno>
   1cb78:	00c00793          	li	a5,12
   1cb7c:	00f52023          	sw	a5,0(a0)
   1cb80:	00000413          	li	s0,0
   1cb84:	fb5ff06f          	j	1cb38 <_calloc_r+0x170>

000000000001cb88 <_close_r>:
   1cb88:	fe010113          	addi	sp,sp,-32
   1cb8c:	00813823          	sd	s0,16(sp)
   1cb90:	00913423          	sd	s1,8(sp)
   1cb94:	00050413          	mv	s0,a0
   1cb98:	00058513          	mv	a0,a1
   1cb9c:	00113c23          	sd	ra,24(sp)
   1cba0:	7801a823          	sw	zero,1936(gp) # 24d98 <errno>
   1cba4:	741020ef          	jal	ra,1fae4 <_close>
   1cba8:	fff00793          	li	a5,-1
   1cbac:	00f50c63          	beq	a0,a5,1cbc4 <_close_r+0x3c>
   1cbb0:	01813083          	ld	ra,24(sp)
   1cbb4:	01013403          	ld	s0,16(sp)
   1cbb8:	00813483          	ld	s1,8(sp)
   1cbbc:	02010113          	addi	sp,sp,32
   1cbc0:	00008067          	ret
   1cbc4:	7901a783          	lw	a5,1936(gp) # 24d98 <errno>
   1cbc8:	fe0784e3          	beqz	a5,1cbb0 <_close_r+0x28>
   1cbcc:	01813083          	ld	ra,24(sp)
   1cbd0:	00f42023          	sw	a5,0(s0)
   1cbd4:	01013403          	ld	s0,16(sp)
   1cbd8:	00813483          	ld	s1,8(sp)
   1cbdc:	02010113          	addi	sp,sp,32
   1cbe0:	00008067          	ret

000000000001cbe4 <__errno>:
   1cbe4:	7581b503          	ld	a0,1880(gp) # 24d60 <_impure_ptr>
   1cbe8:	00008067          	ret

000000000001cbec <_fclose_r>:
   1cbec:	fe010113          	addi	sp,sp,-32
   1cbf0:	00113c23          	sd	ra,24(sp)
   1cbf4:	00813823          	sd	s0,16(sp)
   1cbf8:	00913423          	sd	s1,8(sp)
   1cbfc:	01213023          	sd	s2,0(sp)
   1cc00:	02058063          	beqz	a1,1cc20 <_fclose_r+0x34>
   1cc04:	00058413          	mv	s0,a1
   1cc08:	00050493          	mv	s1,a0
   1cc0c:	00050663          	beqz	a0,1cc18 <_fclose_r+0x2c>
   1cc10:	05052783          	lw	a5,80(a0)
   1cc14:	0a078c63          	beqz	a5,1cccc <_fclose_r+0xe0>
   1cc18:	01041783          	lh	a5,16(s0)
   1cc1c:	02079263          	bnez	a5,1cc40 <_fclose_r+0x54>
   1cc20:	01813083          	ld	ra,24(sp)
   1cc24:	01013403          	ld	s0,16(sp)
   1cc28:	00000913          	li	s2,0
   1cc2c:	00813483          	ld	s1,8(sp)
   1cc30:	00090513          	mv	a0,s2
   1cc34:	00013903          	ld	s2,0(sp)
   1cc38:	02010113          	addi	sp,sp,32
   1cc3c:	00008067          	ret
   1cc40:	00040593          	mv	a1,s0
   1cc44:	00048513          	mv	a0,s1
   1cc48:	978f60ef          	jal	ra,12dc0 <__sflush_r>
   1cc4c:	05043783          	ld	a5,80(s0)
   1cc50:	00050913          	mv	s2,a0
   1cc54:	00078a63          	beqz	a5,1cc68 <_fclose_r+0x7c>
   1cc58:	03043583          	ld	a1,48(s0)
   1cc5c:	00048513          	mv	a0,s1
   1cc60:	000780e7          	jalr	a5
   1cc64:	06054c63          	bltz	a0,1ccdc <_fclose_r+0xf0>
   1cc68:	01045783          	lhu	a5,16(s0)
   1cc6c:	0807f793          	andi	a5,a5,128
   1cc70:	06079e63          	bnez	a5,1ccec <_fclose_r+0x100>
   1cc74:	05843583          	ld	a1,88(s0)
   1cc78:	00058c63          	beqz	a1,1cc90 <_fclose_r+0xa4>
   1cc7c:	07440793          	addi	a5,s0,116
   1cc80:	00f58663          	beq	a1,a5,1cc8c <_fclose_r+0xa0>
   1cc84:	00048513          	mv	a0,s1
   1cc88:	989f60ef          	jal	ra,13610 <_free_r>
   1cc8c:	04043c23          	sd	zero,88(s0)
   1cc90:	07843583          	ld	a1,120(s0)
   1cc94:	00058863          	beqz	a1,1cca4 <_fclose_r+0xb8>
   1cc98:	00048513          	mv	a0,s1
   1cc9c:	975f60ef          	jal	ra,13610 <_free_r>
   1cca0:	06043c23          	sd	zero,120(s0)
   1cca4:	fa4f60ef          	jal	ra,13448 <__sfp_lock_acquire>
   1cca8:	00041823          	sh	zero,16(s0)
   1ccac:	fa0f60ef          	jal	ra,1344c <__sfp_lock_release>
   1ccb0:	01813083          	ld	ra,24(sp)
   1ccb4:	01013403          	ld	s0,16(sp)
   1ccb8:	00813483          	ld	s1,8(sp)
   1ccbc:	00090513          	mv	a0,s2
   1ccc0:	00013903          	ld	s2,0(sp)
   1ccc4:	02010113          	addi	sp,sp,32
   1ccc8:	00008067          	ret
   1cccc:	f6cf60ef          	jal	ra,13438 <__sinit>
   1ccd0:	01041783          	lh	a5,16(s0)
   1ccd4:	f40786e3          	beqz	a5,1cc20 <_fclose_r+0x34>
   1ccd8:	f69ff06f          	j	1cc40 <_fclose_r+0x54>
   1ccdc:	01045783          	lhu	a5,16(s0)
   1cce0:	fff00913          	li	s2,-1
   1cce4:	0807f793          	andi	a5,a5,128
   1cce8:	f80786e3          	beqz	a5,1cc74 <_fclose_r+0x88>
   1ccec:	01843583          	ld	a1,24(s0)
   1ccf0:	00048513          	mv	a0,s1
   1ccf4:	91df60ef          	jal	ra,13610 <_free_r>
   1ccf8:	f7dff06f          	j	1cc74 <_fclose_r+0x88>

000000000001ccfc <fclose>:
   1ccfc:	00050593          	mv	a1,a0
   1cd00:	7581b503          	ld	a0,1880(gp) # 24d60 <_impure_ptr>
   1cd04:	ee9ff06f          	j	1cbec <_fclose_r>

000000000001cd08 <_fiprintf_r>:
   1cd08:	fb010113          	addi	sp,sp,-80
   1cd0c:	02810313          	addi	t1,sp,40
   1cd10:	02d13423          	sd	a3,40(sp)
   1cd14:	00030693          	mv	a3,t1
   1cd18:	00113c23          	sd	ra,24(sp)
   1cd1c:	02e13823          	sd	a4,48(sp)
   1cd20:	02f13c23          	sd	a5,56(sp)
   1cd24:	05013023          	sd	a6,64(sp)
   1cd28:	05113423          	sd	a7,72(sp)
   1cd2c:	00613423          	sd	t1,8(sp)
   1cd30:	fbcfe0ef          	jal	ra,1b4ec <_vfiprintf_r>
   1cd34:	01813083          	ld	ra,24(sp)
   1cd38:	05010113          	addi	sp,sp,80
   1cd3c:	00008067          	ret

000000000001cd40 <fiprintf>:
   1cd40:	00050e13          	mv	t3,a0
   1cd44:	fb010113          	addi	sp,sp,-80
   1cd48:	7581b503          	ld	a0,1880(gp) # 24d60 <_impure_ptr>
   1cd4c:	02010313          	addi	t1,sp,32
   1cd50:	02c13023          	sd	a2,32(sp)
   1cd54:	02d13423          	sd	a3,40(sp)
   1cd58:	00058613          	mv	a2,a1
   1cd5c:	00030693          	mv	a3,t1
   1cd60:	000e0593          	mv	a1,t3
   1cd64:	00113c23          	sd	ra,24(sp)
   1cd68:	02e13823          	sd	a4,48(sp)
   1cd6c:	02f13c23          	sd	a5,56(sp)
   1cd70:	05013023          	sd	a6,64(sp)
   1cd74:	05113423          	sd	a7,72(sp)
   1cd78:	00613423          	sd	t1,8(sp)
   1cd7c:	f70fe0ef          	jal	ra,1b4ec <_vfiprintf_r>
   1cd80:	01813083          	ld	ra,24(sp)
   1cd84:	05010113          	addi	sp,sp,80
   1cd88:	00008067          	ret

000000000001cd8c <__fputwc>:
   1cd8c:	fd010113          	addi	sp,sp,-48
   1cd90:	02813023          	sd	s0,32(sp)
   1cd94:	00913c23          	sd	s1,24(sp)
   1cd98:	01213823          	sd	s2,16(sp)
   1cd9c:	02113423          	sd	ra,40(sp)
   1cda0:	00050913          	mv	s2,a0
   1cda4:	00058493          	mv	s1,a1
   1cda8:	00060413          	mv	s0,a2
   1cdac:	a39f90ef          	jal	ra,167e4 <__locale_mb_cur_max>
   1cdb0:	00100793          	li	a5,1
   1cdb4:	00f51c63          	bne	a0,a5,1cdcc <__fputwc+0x40>
   1cdb8:	fff4879b          	addiw	a5,s1,-1
   1cdbc:	0fe00713          	li	a4,254
   1cdc0:	00f76663          	bltu	a4,a5,1cdcc <__fputwc+0x40>
   1cdc4:	00910423          	sb	s1,8(sp)
   1cdc8:	0240006f          	j	1cdec <__fputwc+0x60>
   1cdcc:	0a440693          	addi	a3,s0,164
   1cdd0:	00048613          	mv	a2,s1
   1cdd4:	00810593          	addi	a1,sp,8
   1cdd8:	00090513          	mv	a0,s2
   1cddc:	5c4020ef          	jal	ra,1f3a0 <_wcrtomb_r>
   1cde0:	fff00793          	li	a5,-1
   1cde4:	08f50463          	beq	a0,a5,1ce6c <__fputwc+0xe0>
   1cde8:	02050c63          	beqz	a0,1ce20 <__fputwc+0x94>
   1cdec:	00c42783          	lw	a5,12(s0)
   1cdf0:	00814583          	lbu	a1,8(sp)
   1cdf4:	fff7871b          	addiw	a4,a5,-1
   1cdf8:	00e42623          	sw	a4,12(s0)
   1cdfc:	00075a63          	bgez	a4,1ce10 <__fputwc+0x84>
   1ce00:	02842783          	lw	a5,40(s0)
   1ce04:	02f74c63          	blt	a4,a5,1ce3c <__fputwc+0xb0>
   1ce08:	00a00793          	li	a5,10
   1ce0c:	02f58863          	beq	a1,a5,1ce3c <__fputwc+0xb0>
   1ce10:	00043783          	ld	a5,0(s0)
   1ce14:	00178713          	addi	a4,a5,1
   1ce18:	00e43023          	sd	a4,0(s0)
   1ce1c:	00b78023          	sb	a1,0(a5)
   1ce20:	02813083          	ld	ra,40(sp)
   1ce24:	02013403          	ld	s0,32(sp)
   1ce28:	01013903          	ld	s2,16(sp)
   1ce2c:	0004851b          	sext.w	a0,s1
   1ce30:	01813483          	ld	s1,24(sp)
   1ce34:	03010113          	addi	sp,sp,48
   1ce38:	00008067          	ret
   1ce3c:	00040613          	mv	a2,s0
   1ce40:	00090513          	mv	a0,s2
   1ce44:	3d4020ef          	jal	ra,1f218 <__swbuf_r>
   1ce48:	fff00793          	li	a5,-1
   1ce4c:	fcf51ae3          	bne	a0,a5,1ce20 <__fputwc+0x94>
   1ce50:	fff00513          	li	a0,-1
   1ce54:	02813083          	ld	ra,40(sp)
   1ce58:	02013403          	ld	s0,32(sp)
   1ce5c:	01813483          	ld	s1,24(sp)
   1ce60:	01013903          	ld	s2,16(sp)
   1ce64:	03010113          	addi	sp,sp,48
   1ce68:	00008067          	ret
   1ce6c:	01045783          	lhu	a5,16(s0)
   1ce70:	fff00513          	li	a0,-1
   1ce74:	0407e793          	ori	a5,a5,64
   1ce78:	00f41823          	sh	a5,16(s0)
   1ce7c:	fd9ff06f          	j	1ce54 <__fputwc+0xc8>

000000000001ce80 <_fputwc_r>:
   1ce80:	01061783          	lh	a5,16(a2)
   1ce84:	03279713          	slli	a4,a5,0x32
   1ce88:	02074063          	bltz	a4,1cea8 <_fputwc_r+0x28>
   1ce8c:	0ac62703          	lw	a4,172(a2)
   1ce90:	000026b7          	lui	a3,0x2
   1ce94:	00d7e7b3          	or	a5,a5,a3
   1ce98:	000026b7          	lui	a3,0x2
   1ce9c:	00d76733          	or	a4,a4,a3
   1cea0:	00f61823          	sh	a5,16(a2)
   1cea4:	0ae62623          	sw	a4,172(a2)
   1cea8:	ee5ff06f          	j	1cd8c <__fputwc>

000000000001ceac <fputwc>:
   1ceac:	fe010113          	addi	sp,sp,-32
   1ceb0:	00813823          	sd	s0,16(sp)
   1ceb4:	7581b403          	ld	s0,1880(gp) # 24d60 <_impure_ptr>
   1ceb8:	00113c23          	sd	ra,24(sp)
   1cebc:	00058613          	mv	a2,a1
   1cec0:	00050593          	mv	a1,a0
   1cec4:	00040663          	beqz	s0,1ced0 <fputwc+0x24>
   1cec8:	05042783          	lw	a5,80(s0)
   1cecc:	04078063          	beqz	a5,1cf0c <fputwc+0x60>
   1ced0:	01061783          	lh	a5,16(a2)
   1ced4:	03279713          	slli	a4,a5,0x32
   1ced8:	02074063          	bltz	a4,1cef8 <fputwc+0x4c>
   1cedc:	0ac62703          	lw	a4,172(a2)
   1cee0:	000026b7          	lui	a3,0x2
   1cee4:	00d7e7b3          	or	a5,a5,a3
   1cee8:	000026b7          	lui	a3,0x2
   1ceec:	00d76733          	or	a4,a4,a3
   1cef0:	00f61823          	sh	a5,16(a2)
   1cef4:	0ae62623          	sw	a4,172(a2)
   1cef8:	00040513          	mv	a0,s0
   1cefc:	01013403          	ld	s0,16(sp)
   1cf00:	01813083          	ld	ra,24(sp)
   1cf04:	02010113          	addi	sp,sp,32
   1cf08:	e85ff06f          	j	1cd8c <__fputwc>
   1cf0c:	00a13023          	sd	a0,0(sp)
   1cf10:	00040513          	mv	a0,s0
   1cf14:	00c13423          	sd	a2,8(sp)
   1cf18:	d20f60ef          	jal	ra,13438 <__sinit>
   1cf1c:	00813603          	ld	a2,8(sp)
   1cf20:	00013583          	ld	a1,0(sp)
   1cf24:	fadff06f          	j	1ced0 <fputwc+0x24>

000000000001cf28 <_fstat_r>:
   1cf28:	fe010113          	addi	sp,sp,-32
   1cf2c:	00058713          	mv	a4,a1
   1cf30:	00813823          	sd	s0,16(sp)
   1cf34:	00913423          	sd	s1,8(sp)
   1cf38:	00050413          	mv	s0,a0
   1cf3c:	00060593          	mv	a1,a2
   1cf40:	00070513          	mv	a0,a4
   1cf44:	00113c23          	sd	ra,24(sp)
   1cf48:	7801a823          	sw	zero,1936(gp) # 24d98 <errno>
   1cf4c:	40d020ef          	jal	ra,1fb58 <_fstat>
   1cf50:	fff00793          	li	a5,-1
   1cf54:	00f50c63          	beq	a0,a5,1cf6c <_fstat_r+0x44>
   1cf58:	01813083          	ld	ra,24(sp)
   1cf5c:	01013403          	ld	s0,16(sp)
   1cf60:	00813483          	ld	s1,8(sp)
   1cf64:	02010113          	addi	sp,sp,32
   1cf68:	00008067          	ret
   1cf6c:	7901a783          	lw	a5,1936(gp) # 24d98 <errno>
   1cf70:	fe0784e3          	beqz	a5,1cf58 <_fstat_r+0x30>
   1cf74:	01813083          	ld	ra,24(sp)
   1cf78:	00f42023          	sw	a5,0(s0)
   1cf7c:	01013403          	ld	s0,16(sp)
   1cf80:	00813483          	ld	s1,8(sp)
   1cf84:	02010113          	addi	sp,sp,32
   1cf88:	00008067          	ret

000000000001cf8c <__sfvwrite_r>:
   1cf8c:	01063783          	ld	a5,16(a2)
   1cf90:	28078063          	beqz	a5,1d210 <__sfvwrite_r+0x284>
   1cf94:	01059703          	lh	a4,16(a1)
   1cf98:	fa010113          	addi	sp,sp,-96
   1cf9c:	04813823          	sd	s0,80(sp)
   1cfa0:	03413823          	sd	s4,48(sp)
   1cfa4:	03613023          	sd	s6,32(sp)
   1cfa8:	04113c23          	sd	ra,88(sp)
   1cfac:	04913423          	sd	s1,72(sp)
   1cfb0:	05213023          	sd	s2,64(sp)
   1cfb4:	03313c23          	sd	s3,56(sp)
   1cfb8:	03513423          	sd	s5,40(sp)
   1cfbc:	01713c23          	sd	s7,24(sp)
   1cfc0:	01813823          	sd	s8,16(sp)
   1cfc4:	01913423          	sd	s9,8(sp)
   1cfc8:	00877793          	andi	a5,a4,8
   1cfcc:	00060b13          	mv	s6,a2
   1cfd0:	00050a13          	mv	s4,a0
   1cfd4:	00058413          	mv	s0,a1
   1cfd8:	08078863          	beqz	a5,1d068 <__sfvwrite_r+0xdc>
   1cfdc:	0185b783          	ld	a5,24(a1)
   1cfe0:	08078463          	beqz	a5,1d068 <__sfvwrite_r+0xdc>
   1cfe4:	00277793          	andi	a5,a4,2
   1cfe8:	000b3483          	ld	s1,0(s6)
   1cfec:	08078e63          	beqz	a5,1d088 <__sfvwrite_r+0xfc>
   1cff0:	04043783          	ld	a5,64(s0)
   1cff4:	03043583          	ld	a1,48(s0)
   1cff8:	80000ab7          	lui	s5,0x80000
   1cffc:	00000993          	li	s3,0
   1d000:	00000913          	li	s2,0
   1d004:	c00aca93          	xori	s5,s5,-1024
   1d008:	00098613          	mv	a2,s3
   1d00c:	000a0513          	mv	a0,s4
   1d010:	04090463          	beqz	s2,1d058 <__sfvwrite_r+0xcc>
   1d014:	00090693          	mv	a3,s2
   1d018:	012af463          	bgeu	s5,s2,1d020 <__sfvwrite_r+0x94>
   1d01c:	000a8693          	mv	a3,s5
   1d020:	0006869b          	sext.w	a3,a3
   1d024:	000780e7          	jalr	a5
   1d028:	1ca05a63          	blez	a0,1d1fc <__sfvwrite_r+0x270>
   1d02c:	010b3783          	ld	a5,16(s6)
   1d030:	00a989b3          	add	s3,s3,a0
   1d034:	40a90933          	sub	s2,s2,a0
   1d038:	40a787b3          	sub	a5,a5,a0
   1d03c:	00fb3823          	sd	a5,16(s6)
   1d040:	16078a63          	beqz	a5,1d1b4 <__sfvwrite_r+0x228>
   1d044:	04043783          	ld	a5,64(s0)
   1d048:	03043583          	ld	a1,48(s0)
   1d04c:	00098613          	mv	a2,s3
   1d050:	000a0513          	mv	a0,s4
   1d054:	fc0910e3          	bnez	s2,1d014 <__sfvwrite_r+0x88>
   1d058:	0004b983          	ld	s3,0(s1)
   1d05c:	0084b903          	ld	s2,8(s1)
   1d060:	01048493          	addi	s1,s1,16
   1d064:	fa5ff06f          	j	1d008 <__sfvwrite_r+0x7c>
   1d068:	00040593          	mv	a1,s0
   1d06c:	000a0513          	mv	a0,s4
   1d070:	ae9f50ef          	jal	ra,12b58 <__swsetup_r>
   1d074:	18051a63          	bnez	a0,1d208 <__sfvwrite_r+0x27c>
   1d078:	01041703          	lh	a4,16(s0)
   1d07c:	000b3483          	ld	s1,0(s6)
   1d080:	00277793          	andi	a5,a4,2
   1d084:	f60796e3          	bnez	a5,1cff0 <__sfvwrite_r+0x64>
   1d088:	00177793          	andi	a5,a4,1
   1d08c:	08079e63          	bnez	a5,1d128 <__sfvwrite_r+0x19c>
   1d090:	00c42b83          	lw	s7,12(s0)
   1d094:	00043783          	ld	a5,0(s0)
   1d098:	80000ab7          	lui	s5,0x80000
   1d09c:	00000c13          	li	s8,0
   1d0a0:	00000913          	li	s2,0
   1d0a4:	fffaca93          	not	s5,s5
   1d0a8:	00078513          	mv	a0,a5
   1d0ac:	06090663          	beqz	s2,1d118 <__sfvwrite_r+0x18c>
   1d0b0:	20077693          	andi	a3,a4,512
   1d0b4:	1c068663          	beqz	a3,1d280 <__sfvwrite_r+0x2f4>
   1d0b8:	27797263          	bgeu	s2,s7,1d31c <__sfvwrite_r+0x390>
   1d0bc:	00090c93          	mv	s9,s2
   1d0c0:	00090b93          	mv	s7,s2
   1d0c4:	000b8613          	mv	a2,s7
   1d0c8:	000c0593          	mv	a1,s8
   1d0cc:	5d4000ef          	jal	ra,1d6a0 <memmove>
   1d0d0:	00c42703          	lw	a4,12(s0)
   1d0d4:	00043783          	ld	a5,0(s0)
   1d0d8:	00090993          	mv	s3,s2
   1d0dc:	4197073b          	subw	a4,a4,s9
   1d0e0:	017787b3          	add	a5,a5,s7
   1d0e4:	00e42623          	sw	a4,12(s0)
   1d0e8:	00f43023          	sd	a5,0(s0)
   1d0ec:	00000913          	li	s2,0
   1d0f0:	010b3783          	ld	a5,16(s6)
   1d0f4:	013c0c33          	add	s8,s8,s3
   1d0f8:	413787b3          	sub	a5,a5,s3
   1d0fc:	00fb3823          	sd	a5,16(s6)
   1d100:	0a078a63          	beqz	a5,1d1b4 <__sfvwrite_r+0x228>
   1d104:	00043783          	ld	a5,0(s0)
   1d108:	01041703          	lh	a4,16(s0)
   1d10c:	00c42b83          	lw	s7,12(s0)
   1d110:	00078513          	mv	a0,a5
   1d114:	f8091ee3          	bnez	s2,1d0b0 <__sfvwrite_r+0x124>
   1d118:	0004bc03          	ld	s8,0(s1)
   1d11c:	0084b903          	ld	s2,8(s1)
   1d120:	01048493          	addi	s1,s1,16
   1d124:	f85ff06f          	j	1d0a8 <__sfvwrite_r+0x11c>
   1d128:	00000993          	li	s3,0
   1d12c:	00000513          	li	a0,0
   1d130:	00000c93          	li	s9,0
   1d134:	00000c13          	li	s8,0
   1d138:	0e0c0063          	beqz	s8,1d218 <__sfvwrite_r+0x28c>
   1d13c:	0e050863          	beqz	a0,1d22c <__sfvwrite_r+0x2a0>
   1d140:	00098b93          	mv	s7,s3
   1d144:	013c7463          	bgeu	s8,s3,1d14c <__sfvwrite_r+0x1c0>
   1d148:	000c0b93          	mv	s7,s8
   1d14c:	00043503          	ld	a0,0(s0)
   1d150:	01843703          	ld	a4,24(s0)
   1d154:	00c42783          	lw	a5,12(s0)
   1d158:	02042683          	lw	a3,32(s0)
   1d15c:	000b8913          	mv	s2,s7
   1d160:	00a77663          	bgeu	a4,a0,1d16c <__sfvwrite_r+0x1e0>
   1d164:	00d78abb          	addw	s5,a5,a3
   1d168:	0f7ac263          	blt	s5,s7,1d24c <__sfvwrite_r+0x2c0>
   1d16c:	24dbc663          	blt	s7,a3,1d3b8 <__sfvwrite_r+0x42c>
   1d170:	04043783          	ld	a5,64(s0)
   1d174:	03043583          	ld	a1,48(s0)
   1d178:	000c8613          	mv	a2,s9
   1d17c:	000a0513          	mv	a0,s4
   1d180:	000780e7          	jalr	a5
   1d184:	00050913          	mv	s2,a0
   1d188:	06a05a63          	blez	a0,1d1fc <__sfvwrite_r+0x270>
   1d18c:	0005079b          	sext.w	a5,a0
   1d190:	40f989bb          	subw	s3,s3,a5
   1d194:	00100513          	li	a0,1
   1d198:	04098a63          	beqz	s3,1d1ec <__sfvwrite_r+0x260>
   1d19c:	010b3783          	ld	a5,16(s6)
   1d1a0:	012c8cb3          	add	s9,s9,s2
   1d1a4:	412c0c33          	sub	s8,s8,s2
   1d1a8:	412787b3          	sub	a5,a5,s2
   1d1ac:	00fb3823          	sd	a5,16(s6)
   1d1b0:	f80794e3          	bnez	a5,1d138 <__sfvwrite_r+0x1ac>
   1d1b4:	00000513          	li	a0,0
   1d1b8:	05813083          	ld	ra,88(sp)
   1d1bc:	05013403          	ld	s0,80(sp)
   1d1c0:	04813483          	ld	s1,72(sp)
   1d1c4:	04013903          	ld	s2,64(sp)
   1d1c8:	03813983          	ld	s3,56(sp)
   1d1cc:	03013a03          	ld	s4,48(sp)
   1d1d0:	02813a83          	ld	s5,40(sp)
   1d1d4:	02013b03          	ld	s6,32(sp)
   1d1d8:	01813b83          	ld	s7,24(sp)
   1d1dc:	01013c03          	ld	s8,16(sp)
   1d1e0:	00813c83          	ld	s9,8(sp)
   1d1e4:	06010113          	addi	sp,sp,96
   1d1e8:	00008067          	ret
   1d1ec:	00040593          	mv	a1,s0
   1d1f0:	000a0513          	mv	a0,s4
   1d1f4:	e19f50ef          	jal	ra,1300c <_fflush_r>
   1d1f8:	fa0502e3          	beqz	a0,1d19c <__sfvwrite_r+0x210>
   1d1fc:	01041783          	lh	a5,16(s0)
   1d200:	0407e793          	ori	a5,a5,64
   1d204:	00f41823          	sh	a5,16(s0)
   1d208:	fff00513          	li	a0,-1
   1d20c:	fadff06f          	j	1d1b8 <__sfvwrite_r+0x22c>
   1d210:	00000513          	li	a0,0
   1d214:	00008067          	ret
   1d218:	0084bc03          	ld	s8,8(s1)
   1d21c:	00048793          	mv	a5,s1
   1d220:	01048493          	addi	s1,s1,16
   1d224:	fe0c0ae3          	beqz	s8,1d218 <__sfvwrite_r+0x28c>
   1d228:	0007bc83          	ld	s9,0(a5)
   1d22c:	000c0613          	mv	a2,s8
   1d230:	00a00593          	li	a1,10
   1d234:	000c8513          	mv	a0,s9
   1d238:	8e4fa0ef          	jal	ra,1731c <memchr>
   1d23c:	1e050263          	beqz	a0,1d420 <__sfvwrite_r+0x494>
   1d240:	00150513          	addi	a0,a0,1
   1d244:	419509bb          	subw	s3,a0,s9
   1d248:	ef9ff06f          	j	1d140 <__sfvwrite_r+0x1b4>
   1d24c:	000c8593          	mv	a1,s9
   1d250:	000a8613          	mv	a2,s5
   1d254:	44c000ef          	jal	ra,1d6a0 <memmove>
   1d258:	00043783          	ld	a5,0(s0)
   1d25c:	00040593          	mv	a1,s0
   1d260:	000a0513          	mv	a0,s4
   1d264:	015787b3          	add	a5,a5,s5
   1d268:	00f43023          	sd	a5,0(s0)
   1d26c:	da1f50ef          	jal	ra,1300c <_fflush_r>
   1d270:	f80516e3          	bnez	a0,1d1fc <__sfvwrite_r+0x270>
   1d274:	000a8793          	mv	a5,s5
   1d278:	000a8913          	mv	s2,s5
   1d27c:	f15ff06f          	j	1d190 <__sfvwrite_r+0x204>
   1d280:	01843703          	ld	a4,24(s0)
   1d284:	04f76463          	bltu	a4,a5,1d2cc <__sfvwrite_r+0x340>
   1d288:	02042583          	lw	a1,32(s0)
   1d28c:	04b96063          	bltu	s2,a1,1d2cc <__sfvwrite_r+0x340>
   1d290:	00090993          	mv	s3,s2
   1d294:	012af463          	bgeu	s5,s2,1d29c <__sfvwrite_r+0x310>
   1d298:	000a8993          	mv	s3,s5
   1d29c:	0009851b          	sext.w	a0,s3
   1d2a0:	1b5040ef          	jal	ra,21c54 <__moddi3>
   1d2a4:	04043783          	ld	a5,64(s0)
   1d2a8:	03043583          	ld	a1,48(s0)
   1d2ac:	40a986bb          	subw	a3,s3,a0
   1d2b0:	000c0613          	mv	a2,s8
   1d2b4:	000a0513          	mv	a0,s4
   1d2b8:	000780e7          	jalr	a5
   1d2bc:	00050993          	mv	s3,a0
   1d2c0:	f2a05ee3          	blez	a0,1d1fc <__sfvwrite_r+0x270>
   1d2c4:	41390933          	sub	s2,s2,s3
   1d2c8:	e29ff06f          	j	1d0f0 <__sfvwrite_r+0x164>
   1d2cc:	000b8993          	mv	s3,s7
   1d2d0:	01797463          	bgeu	s2,s7,1d2d8 <__sfvwrite_r+0x34c>
   1d2d4:	00090993          	mv	s3,s2
   1d2d8:	00078513          	mv	a0,a5
   1d2dc:	00098613          	mv	a2,s3
   1d2e0:	000c0593          	mv	a1,s8
   1d2e4:	3bc000ef          	jal	ra,1d6a0 <memmove>
   1d2e8:	00c42703          	lw	a4,12(s0)
   1d2ec:	00043783          	ld	a5,0(s0)
   1d2f0:	413706bb          	subw	a3,a4,s3
   1d2f4:	013787b3          	add	a5,a5,s3
   1d2f8:	00d42623          	sw	a3,12(s0)
   1d2fc:	00f43023          	sd	a5,0(s0)
   1d300:	fc0692e3          	bnez	a3,1d2c4 <__sfvwrite_r+0x338>
   1d304:	00040593          	mv	a1,s0
   1d308:	000a0513          	mv	a0,s4
   1d30c:	d01f50ef          	jal	ra,1300c <_fflush_r>
   1d310:	ee0516e3          	bnez	a0,1d1fc <__sfvwrite_r+0x270>
   1d314:	41390933          	sub	s2,s2,s3
   1d318:	dd9ff06f          	j	1d0f0 <__sfvwrite_r+0x164>
   1d31c:	48077693          	andi	a3,a4,1152
   1d320:	0c068263          	beqz	a3,1d3e4 <__sfvwrite_r+0x458>
   1d324:	02042603          	lw	a2,32(s0)
   1d328:	01843583          	ld	a1,24(s0)
   1d32c:	0016169b          	slliw	a3,a2,0x1
   1d330:	00c686bb          	addw	a3,a3,a2
   1d334:	40b787b3          	sub	a5,a5,a1
   1d338:	01f6d99b          	srliw	s3,a3,0x1f
   1d33c:	00078b9b          	sext.w	s7,a5
   1d340:	00d989bb          	addw	s3,s3,a3
   1d344:	001b8693          	addi	a3,s7,1
   1d348:	4019d99b          	sraiw	s3,s3,0x1
   1d34c:	012686b3          	add	a3,a3,s2
   1d350:	00d9f663          	bgeu	s3,a3,1d35c <__sfvwrite_r+0x3d0>
   1d354:	0017879b          	addiw	a5,a5,1
   1d358:	012789bb          	addw	s3,a5,s2
   1d35c:	40077713          	andi	a4,a4,1024
   1d360:	08070663          	beqz	a4,1d3ec <__sfvwrite_r+0x460>
   1d364:	00098593          	mv	a1,s3
   1d368:	000a0513          	mv	a0,s4
   1d36c:	f64f90ef          	jal	ra,16ad0 <_malloc_r>
   1d370:	00050c93          	mv	s9,a0
   1d374:	0a050a63          	beqz	a0,1d428 <__sfvwrite_r+0x49c>
   1d378:	01843583          	ld	a1,24(s0)
   1d37c:	000b8613          	mv	a2,s7
   1d380:	17c000ef          	jal	ra,1d4fc <memcpy>
   1d384:	01045783          	lhu	a5,16(s0)
   1d388:	b7f7f793          	andi	a5,a5,-1153
   1d38c:	0807e793          	ori	a5,a5,128
   1d390:	00f41823          	sh	a5,16(s0)
   1d394:	017c8533          	add	a0,s9,s7
   1d398:	41798bbb          	subw	s7,s3,s7
   1d39c:	01943c23          	sd	s9,24(s0)
   1d3a0:	01742623          	sw	s7,12(s0)
   1d3a4:	00a43023          	sd	a0,0(s0)
   1d3a8:	03342023          	sw	s3,32(s0)
   1d3ac:	00090c93          	mv	s9,s2
   1d3b0:	00090b93          	mv	s7,s2
   1d3b4:	d11ff06f          	j	1d0c4 <__sfvwrite_r+0x138>
   1d3b8:	000b8613          	mv	a2,s7
   1d3bc:	000c8593          	mv	a1,s9
   1d3c0:	2e0000ef          	jal	ra,1d6a0 <memmove>
   1d3c4:	00c42683          	lw	a3,12(s0)
   1d3c8:	00043703          	ld	a4,0(s0)
   1d3cc:	000b879b          	sext.w	a5,s7
   1d3d0:	417686bb          	subw	a3,a3,s7
   1d3d4:	01770733          	add	a4,a4,s7
   1d3d8:	00d42623          	sw	a3,12(s0)
   1d3dc:	00e43023          	sd	a4,0(s0)
   1d3e0:	db1ff06f          	j	1d190 <__sfvwrite_r+0x204>
   1d3e4:	000b8c93          	mv	s9,s7
   1d3e8:	cddff06f          	j	1d0c4 <__sfvwrite_r+0x138>
   1d3ec:	00098613          	mv	a2,s3
   1d3f0:	000a0513          	mv	a0,s4
   1d3f4:	430000ef          	jal	ra,1d824 <_realloc_r>
   1d3f8:	00050c93          	mv	s9,a0
   1d3fc:	f8051ce3          	bnez	a0,1d394 <__sfvwrite_r+0x408>
   1d400:	01843583          	ld	a1,24(s0)
   1d404:	000a0513          	mv	a0,s4
   1d408:	a08f60ef          	jal	ra,13610 <_free_r>
   1d40c:	01041783          	lh	a5,16(s0)
   1d410:	00c00713          	li	a4,12
   1d414:	00ea2023          	sw	a4,0(s4)
   1d418:	f7f7f793          	andi	a5,a5,-129
   1d41c:	de5ff06f          	j	1d200 <__sfvwrite_r+0x274>
   1d420:	001c099b          	addiw	s3,s8,1
   1d424:	d1dff06f          	j	1d140 <__sfvwrite_r+0x1b4>
   1d428:	00c00713          	li	a4,12
   1d42c:	01041783          	lh	a5,16(s0)
   1d430:	00ea2023          	sw	a4,0(s4)
   1d434:	dcdff06f          	j	1d200 <__sfvwrite_r+0x274>

000000000001d438 <_isatty_r>:
   1d438:	fe010113          	addi	sp,sp,-32
   1d43c:	00813823          	sd	s0,16(sp)
   1d440:	00913423          	sd	s1,8(sp)
   1d444:	00050413          	mv	s0,a0
   1d448:	00058513          	mv	a0,a1
   1d44c:	00113c23          	sd	ra,24(sp)
   1d450:	7801a823          	sw	zero,1936(gp) # 24d98 <errno>
   1d454:	770020ef          	jal	ra,1fbc4 <_isatty>
   1d458:	fff00793          	li	a5,-1
   1d45c:	00f50c63          	beq	a0,a5,1d474 <_isatty_r+0x3c>
   1d460:	01813083          	ld	ra,24(sp)
   1d464:	01013403          	ld	s0,16(sp)
   1d468:	00813483          	ld	s1,8(sp)
   1d46c:	02010113          	addi	sp,sp,32
   1d470:	00008067          	ret
   1d474:	7901a783          	lw	a5,1936(gp) # 24d98 <errno>
   1d478:	fe0784e3          	beqz	a5,1d460 <_isatty_r+0x28>
   1d47c:	01813083          	ld	ra,24(sp)
   1d480:	00f42023          	sw	a5,0(s0)
   1d484:	01013403          	ld	s0,16(sp)
   1d488:	00813483          	ld	s1,8(sp)
   1d48c:	02010113          	addi	sp,sp,32
   1d490:	00008067          	ret

000000000001d494 <_lseek_r>:
   1d494:	fe010113          	addi	sp,sp,-32
   1d498:	00058713          	mv	a4,a1
   1d49c:	00813823          	sd	s0,16(sp)
   1d4a0:	00913423          	sd	s1,8(sp)
   1d4a4:	00060593          	mv	a1,a2
   1d4a8:	00050413          	mv	s0,a0
   1d4ac:	00068613          	mv	a2,a3
   1d4b0:	00070513          	mv	a0,a4
   1d4b4:	00113c23          	sd	ra,24(sp)
   1d4b8:	7801a823          	sw	zero,1936(gp) # 24d98 <errno>
   1d4bc:	76c020ef          	jal	ra,1fc28 <_lseek>
   1d4c0:	fff00793          	li	a5,-1
   1d4c4:	00f50c63          	beq	a0,a5,1d4dc <_lseek_r+0x48>
   1d4c8:	01813083          	ld	ra,24(sp)
   1d4cc:	01013403          	ld	s0,16(sp)
   1d4d0:	00813483          	ld	s1,8(sp)
   1d4d4:	02010113          	addi	sp,sp,32
   1d4d8:	00008067          	ret
   1d4dc:	7901a783          	lw	a5,1936(gp) # 24d98 <errno>
   1d4e0:	fe0784e3          	beqz	a5,1d4c8 <_lseek_r+0x34>
   1d4e4:	01813083          	ld	ra,24(sp)
   1d4e8:	00f42023          	sw	a5,0(s0)
   1d4ec:	01013403          	ld	s0,16(sp)
   1d4f0:	00813483          	ld	s1,8(sp)
   1d4f4:	02010113          	addi	sp,sp,32
   1d4f8:	00008067          	ret

000000000001d4fc <memcpy>:
   1d4fc:	00b547b3          	xor	a5,a0,a1
   1d500:	0077f793          	andi	a5,a5,7
   1d504:	00c508b3          	add	a7,a0,a2
   1d508:	06079463          	bnez	a5,1d570 <memcpy+0x74>
   1d50c:	00700793          	li	a5,7
   1d510:	06c7f063          	bgeu	a5,a2,1d570 <memcpy+0x74>
   1d514:	00757793          	andi	a5,a0,7
   1d518:	00050713          	mv	a4,a0
   1d51c:	06079a63          	bnez	a5,1d590 <memcpy+0x94>
   1d520:	ff88f613          	andi	a2,a7,-8
   1d524:	40e606b3          	sub	a3,a2,a4
   1d528:	04000793          	li	a5,64
   1d52c:	08d7ce63          	blt	a5,a3,1d5c8 <memcpy+0xcc>
   1d530:	00058693          	mv	a3,a1
   1d534:	00070793          	mv	a5,a4
   1d538:	02c77863          	bgeu	a4,a2,1d568 <memcpy+0x6c>
   1d53c:	0006b803          	ld	a6,0(a3) # 2000 <exit-0xe0e8>
   1d540:	00878793          	addi	a5,a5,8
   1d544:	00868693          	addi	a3,a3,8
   1d548:	ff07bc23          	sd	a6,-8(a5)
   1d54c:	fec7e8e3          	bltu	a5,a2,1d53c <memcpy+0x40>
   1d550:	fff60793          	addi	a5,a2,-1
   1d554:	40e787b3          	sub	a5,a5,a4
   1d558:	ff87f793          	andi	a5,a5,-8
   1d55c:	00878793          	addi	a5,a5,8
   1d560:	00f70733          	add	a4,a4,a5
   1d564:	00f585b3          	add	a1,a1,a5
   1d568:	01176863          	bltu	a4,a7,1d578 <memcpy+0x7c>
   1d56c:	00008067          	ret
   1d570:	00050713          	mv	a4,a0
   1d574:	05157863          	bgeu	a0,a7,1d5c4 <memcpy+0xc8>
   1d578:	0005c783          	lbu	a5,0(a1)
   1d57c:	00170713          	addi	a4,a4,1
   1d580:	00158593          	addi	a1,a1,1
   1d584:	fef70fa3          	sb	a5,-1(a4)
   1d588:	fee898e3          	bne	a7,a4,1d578 <memcpy+0x7c>
   1d58c:	00008067          	ret
   1d590:	0005c683          	lbu	a3,0(a1)
   1d594:	00170713          	addi	a4,a4,1
   1d598:	00777793          	andi	a5,a4,7
   1d59c:	fed70fa3          	sb	a3,-1(a4)
   1d5a0:	00158593          	addi	a1,a1,1
   1d5a4:	f6078ee3          	beqz	a5,1d520 <memcpy+0x24>
   1d5a8:	0005c683          	lbu	a3,0(a1)
   1d5ac:	00170713          	addi	a4,a4,1
   1d5b0:	00777793          	andi	a5,a4,7
   1d5b4:	fed70fa3          	sb	a3,-1(a4)
   1d5b8:	00158593          	addi	a1,a1,1
   1d5bc:	fc079ae3          	bnez	a5,1d590 <memcpy+0x94>
   1d5c0:	f61ff06f          	j	1d520 <memcpy+0x24>
   1d5c4:	00008067          	ret
   1d5c8:	ff010113          	addi	sp,sp,-16
   1d5cc:	00813423          	sd	s0,8(sp)
   1d5d0:	04000413          	li	s0,64
   1d5d4:	0005b383          	ld	t2,0(a1)
   1d5d8:	0085b283          	ld	t0,8(a1)
   1d5dc:	0105bf83          	ld	t6,16(a1)
   1d5e0:	0185bf03          	ld	t5,24(a1)
   1d5e4:	0205be83          	ld	t4,32(a1)
   1d5e8:	0285be03          	ld	t3,40(a1)
   1d5ec:	0305b303          	ld	t1,48(a1)
   1d5f0:	0385b803          	ld	a6,56(a1)
   1d5f4:	0405b683          	ld	a3,64(a1)
   1d5f8:	04870713          	addi	a4,a4,72
   1d5fc:	40e607b3          	sub	a5,a2,a4
   1d600:	fa773c23          	sd	t2,-72(a4)
   1d604:	fc573023          	sd	t0,-64(a4)
   1d608:	fdf73423          	sd	t6,-56(a4)
   1d60c:	fde73823          	sd	t5,-48(a4)
   1d610:	fdd73c23          	sd	t4,-40(a4)
   1d614:	ffc73023          	sd	t3,-32(a4)
   1d618:	fe673423          	sd	t1,-24(a4)
   1d61c:	ff073823          	sd	a6,-16(a4)
   1d620:	fed73c23          	sd	a3,-8(a4)
   1d624:	04858593          	addi	a1,a1,72
   1d628:	faf446e3          	blt	s0,a5,1d5d4 <memcpy+0xd8>
   1d62c:	00058693          	mv	a3,a1
   1d630:	00070793          	mv	a5,a4
   1d634:	02c77863          	bgeu	a4,a2,1d664 <memcpy+0x168>
   1d638:	0006b803          	ld	a6,0(a3)
   1d63c:	00878793          	addi	a5,a5,8
   1d640:	00868693          	addi	a3,a3,8
   1d644:	ff07bc23          	sd	a6,-8(a5)
   1d648:	fec7e8e3          	bltu	a5,a2,1d638 <memcpy+0x13c>
   1d64c:	fff60793          	addi	a5,a2,-1
   1d650:	40e787b3          	sub	a5,a5,a4
   1d654:	ff87f793          	andi	a5,a5,-8
   1d658:	00878793          	addi	a5,a5,8
   1d65c:	00f70733          	add	a4,a4,a5
   1d660:	00f585b3          	add	a1,a1,a5
   1d664:	01176863          	bltu	a4,a7,1d674 <memcpy+0x178>
   1d668:	00813403          	ld	s0,8(sp)
   1d66c:	01010113          	addi	sp,sp,16
   1d670:	00008067          	ret
   1d674:	0005c783          	lbu	a5,0(a1)
   1d678:	00170713          	addi	a4,a4,1
   1d67c:	00158593          	addi	a1,a1,1
   1d680:	fef70fa3          	sb	a5,-1(a4)
   1d684:	fee882e3          	beq	a7,a4,1d668 <memcpy+0x16c>
   1d688:	0005c783          	lbu	a5,0(a1)
   1d68c:	00170713          	addi	a4,a4,1
   1d690:	00158593          	addi	a1,a1,1
   1d694:	fef70fa3          	sb	a5,-1(a4)
   1d698:	fce89ee3          	bne	a7,a4,1d674 <memcpy+0x178>
   1d69c:	fcdff06f          	j	1d668 <memcpy+0x16c>

000000000001d6a0 <memmove>:
   1d6a0:	02a5f663          	bgeu	a1,a0,1d6cc <memmove+0x2c>
   1d6a4:	00c58733          	add	a4,a1,a2
   1d6a8:	02e57263          	bgeu	a0,a4,1d6cc <memmove+0x2c>
   1d6ac:	00c507b3          	add	a5,a0,a2
   1d6b0:	04060663          	beqz	a2,1d6fc <memmove+0x5c>
   1d6b4:	fff74683          	lbu	a3,-1(a4)
   1d6b8:	fff78793          	addi	a5,a5,-1
   1d6bc:	fff70713          	addi	a4,a4,-1
   1d6c0:	00d78023          	sb	a3,0(a5)
   1d6c4:	fef518e3          	bne	a0,a5,1d6b4 <memmove+0x14>
   1d6c8:	00008067          	ret
   1d6cc:	01f00793          	li	a5,31
   1d6d0:	02c7e863          	bltu	a5,a2,1d700 <memmove+0x60>
   1d6d4:	00050793          	mv	a5,a0
   1d6d8:	fff60693          	addi	a3,a2,-1
   1d6dc:	0c060a63          	beqz	a2,1d7b0 <memmove+0x110>
   1d6e0:	00168693          	addi	a3,a3,1
   1d6e4:	00d786b3          	add	a3,a5,a3
   1d6e8:	0005c703          	lbu	a4,0(a1)
   1d6ec:	00178793          	addi	a5,a5,1
   1d6f0:	00158593          	addi	a1,a1,1
   1d6f4:	fee78fa3          	sb	a4,-1(a5)
   1d6f8:	fed798e3          	bne	a5,a3,1d6e8 <memmove+0x48>
   1d6fc:	00008067          	ret
   1d700:	00b567b3          	or	a5,a0,a1
   1d704:	0077f793          	andi	a5,a5,7
   1d708:	08079e63          	bnez	a5,1d7a4 <memmove+0x104>
   1d70c:	fe060893          	addi	a7,a2,-32
   1d710:	fe08f893          	andi	a7,a7,-32
   1d714:	02088893          	addi	a7,a7,32
   1d718:	011507b3          	add	a5,a0,a7
   1d71c:	00058693          	mv	a3,a1
   1d720:	00050713          	mv	a4,a0
   1d724:	0006b803          	ld	a6,0(a3)
   1d728:	02068693          	addi	a3,a3,32
   1d72c:	02070713          	addi	a4,a4,32
   1d730:	ff073023          	sd	a6,-32(a4)
   1d734:	fe86b803          	ld	a6,-24(a3)
   1d738:	ff073423          	sd	a6,-24(a4)
   1d73c:	ff06b803          	ld	a6,-16(a3)
   1d740:	ff073823          	sd	a6,-16(a4)
   1d744:	ff86b803          	ld	a6,-8(a3)
   1d748:	ff073c23          	sd	a6,-8(a4)
   1d74c:	fcf71ce3          	bne	a4,a5,1d724 <memmove+0x84>
   1d750:	01867713          	andi	a4,a2,24
   1d754:	011585b3          	add	a1,a1,a7
   1d758:	01f67813          	andi	a6,a2,31
   1d75c:	04070c63          	beqz	a4,1d7b4 <memmove+0x114>
   1d760:	00058693          	mv	a3,a1
   1d764:	00078713          	mv	a4,a5
   1d768:	01078eb3          	add	t4,a5,a6
   1d76c:	00700e13          	li	t3,7
   1d770:	0006b303          	ld	t1,0(a3)
   1d774:	00870713          	addi	a4,a4,8
   1d778:	40ee88b3          	sub	a7,t4,a4
   1d77c:	fe673c23          	sd	t1,-8(a4)
   1d780:	00868693          	addi	a3,a3,8
   1d784:	ff1e66e3          	bltu	t3,a7,1d770 <memmove+0xd0>
   1d788:	ff880713          	addi	a4,a6,-8
   1d78c:	ff877713          	andi	a4,a4,-8
   1d790:	00870713          	addi	a4,a4,8
   1d794:	00767613          	andi	a2,a2,7
   1d798:	00e787b3          	add	a5,a5,a4
   1d79c:	00e585b3          	add	a1,a1,a4
   1d7a0:	f39ff06f          	j	1d6d8 <memmove+0x38>
   1d7a4:	fff60693          	addi	a3,a2,-1
   1d7a8:	00050793          	mv	a5,a0
   1d7ac:	f35ff06f          	j	1d6e0 <memmove+0x40>
   1d7b0:	00008067          	ret
   1d7b4:	00080613          	mv	a2,a6
   1d7b8:	f21ff06f          	j	1d6d8 <memmove+0x38>

000000000001d7bc <_read_r>:
   1d7bc:	fe010113          	addi	sp,sp,-32
   1d7c0:	00058713          	mv	a4,a1
   1d7c4:	00813823          	sd	s0,16(sp)
   1d7c8:	00913423          	sd	s1,8(sp)
   1d7cc:	00060593          	mv	a1,a2
   1d7d0:	00050413          	mv	s0,a0
   1d7d4:	00068613          	mv	a2,a3
   1d7d8:	00070513          	mv	a0,a4
   1d7dc:	00113c23          	sd	ra,24(sp)
   1d7e0:	7801a823          	sw	zero,1936(gp) # 24d98 <errno>
   1d7e4:	488020ef          	jal	ra,1fc6c <_read>
   1d7e8:	fff00793          	li	a5,-1
   1d7ec:	00f50c63          	beq	a0,a5,1d804 <_read_r+0x48>
   1d7f0:	01813083          	ld	ra,24(sp)
   1d7f4:	01013403          	ld	s0,16(sp)
   1d7f8:	00813483          	ld	s1,8(sp)
   1d7fc:	02010113          	addi	sp,sp,32
   1d800:	00008067          	ret
   1d804:	7901a783          	lw	a5,1936(gp) # 24d98 <errno>
   1d808:	fe0784e3          	beqz	a5,1d7f0 <_read_r+0x34>
   1d80c:	01813083          	ld	ra,24(sp)
   1d810:	00f42023          	sw	a5,0(s0)
   1d814:	01013403          	ld	s0,16(sp)
   1d818:	00813483          	ld	s1,8(sp)
   1d81c:	02010113          	addi	sp,sp,32
   1d820:	00008067          	ret

000000000001d824 <_realloc_r>:
   1d824:	fb010113          	addi	sp,sp,-80
   1d828:	03213823          	sd	s2,48(sp)
   1d82c:	04113423          	sd	ra,72(sp)
   1d830:	04813023          	sd	s0,64(sp)
   1d834:	02913c23          	sd	s1,56(sp)
   1d838:	03313423          	sd	s3,40(sp)
   1d83c:	03413023          	sd	s4,32(sp)
   1d840:	01513c23          	sd	s5,24(sp)
   1d844:	01613823          	sd	s6,16(sp)
   1d848:	01713423          	sd	s7,8(sp)
   1d84c:	01813023          	sd	s8,0(sp)
   1d850:	00060913          	mv	s2,a2
   1d854:	1c058663          	beqz	a1,1da20 <_realloc_r+0x1fc>
   1d858:	00058413          	mv	s0,a1
   1d85c:	00050993          	mv	s3,a0
   1d860:	b81f90ef          	jal	ra,173e0 <__malloc_lock>
   1d864:	ff843783          	ld	a5,-8(s0)
   1d868:	01790493          	addi	s1,s2,23
   1d86c:	02e00713          	li	a4,46
   1d870:	ff040a93          	addi	s5,s0,-16
   1d874:	ffc7fa13          	andi	s4,a5,-4
   1d878:	0e977a63          	bgeu	a4,s1,1d96c <_realloc_r+0x148>
   1d87c:	80000737          	lui	a4,0x80000
   1d880:	ff04f493          	andi	s1,s1,-16
   1d884:	fff74713          	not	a4,a4
   1d888:	0e976663          	bltu	a4,s1,1d974 <_realloc_r+0x150>
   1d88c:	0f24e463          	bltu	s1,s2,1d974 <_realloc_r+0x150>
   1d890:	109a5463          	bge	s4,s1,1d998 <_realloc_r+0x174>
   1d894:	00024737          	lui	a4,0x24
   1d898:	51070c13          	addi	s8,a4,1296 # 24510 <__malloc_av_>
   1d89c:	010c3603          	ld	a2,16(s8)
   1d8a0:	014a86b3          	add	a3,s5,s4
   1d8a4:	0086b703          	ld	a4,8(a3)
   1d8a8:	1cd60e63          	beq	a2,a3,1da84 <_realloc_r+0x260>
   1d8ac:	ffe77613          	andi	a2,a4,-2
   1d8b0:	00c68633          	add	a2,a3,a2
   1d8b4:	00863603          	ld	a2,8(a2)
   1d8b8:	00167613          	andi	a2,a2,1
   1d8bc:	14061463          	bnez	a2,1da04 <_realloc_r+0x1e0>
   1d8c0:	ffc77713          	andi	a4,a4,-4
   1d8c4:	00ea0633          	add	a2,s4,a4
   1d8c8:	0a965e63          	bge	a2,s1,1d984 <_realloc_r+0x160>
   1d8cc:	0017f793          	andi	a5,a5,1
   1d8d0:	02079463          	bnez	a5,1d8f8 <_realloc_r+0xd4>
   1d8d4:	ff043b83          	ld	s7,-16(s0)
   1d8d8:	417a8bb3          	sub	s7,s5,s7
   1d8dc:	008bb783          	ld	a5,8(s7)
   1d8e0:	ffc7f793          	andi	a5,a5,-4
   1d8e4:	00f70733          	add	a4,a4,a5
   1d8e8:	01470b33          	add	s6,a4,s4
   1d8ec:	329b5463          	bge	s6,s1,1dc14 <_realloc_r+0x3f0>
   1d8f0:	00fa0b33          	add	s6,s4,a5
   1d8f4:	289b5663          	bge	s6,s1,1db80 <_realloc_r+0x35c>
   1d8f8:	00090593          	mv	a1,s2
   1d8fc:	00098513          	mv	a0,s3
   1d900:	9d0f90ef          	jal	ra,16ad0 <_malloc_r>
   1d904:	00050913          	mv	s2,a0
   1d908:	40050263          	beqz	a0,1dd0c <_realloc_r+0x4e8>
   1d90c:	ff843783          	ld	a5,-8(s0)
   1d910:	ff050713          	addi	a4,a0,-16
   1d914:	ffe7f793          	andi	a5,a5,-2
   1d918:	00fa87b3          	add	a5,s5,a5
   1d91c:	24e78a63          	beq	a5,a4,1db70 <_realloc_r+0x34c>
   1d920:	ff8a0613          	addi	a2,s4,-8
   1d924:	04800793          	li	a5,72
   1d928:	2ec7e063          	bltu	a5,a2,1dc08 <_realloc_r+0x3e4>
   1d92c:	02700713          	li	a4,39
   1d930:	20c76e63          	bltu	a4,a2,1db4c <_realloc_r+0x328>
   1d934:	00050793          	mv	a5,a0
   1d938:	00040713          	mv	a4,s0
   1d93c:	00073683          	ld	a3,0(a4)
   1d940:	00d7b023          	sd	a3,0(a5)
   1d944:	00873683          	ld	a3,8(a4)
   1d948:	00d7b423          	sd	a3,8(a5)
   1d94c:	01073703          	ld	a4,16(a4)
   1d950:	00e7b823          	sd	a4,16(a5)
   1d954:	00098513          	mv	a0,s3
   1d958:	00040593          	mv	a1,s0
   1d95c:	cb5f50ef          	jal	ra,13610 <_free_r>
   1d960:	00098513          	mv	a0,s3
   1d964:	a81f90ef          	jal	ra,173e4 <__malloc_unlock>
   1d968:	0680006f          	j	1d9d0 <_realloc_r+0x1ac>
   1d96c:	02000493          	li	s1,32
   1d970:	f324f0e3          	bgeu	s1,s2,1d890 <_realloc_r+0x6c>
   1d974:	00c00793          	li	a5,12
   1d978:	00f9a023          	sw	a5,0(s3)
   1d97c:	00000913          	li	s2,0
   1d980:	0500006f          	j	1d9d0 <_realloc_r+0x1ac>
   1d984:	0186b783          	ld	a5,24(a3)
   1d988:	0106b703          	ld	a4,16(a3)
   1d98c:	00060a13          	mv	s4,a2
   1d990:	00f73c23          	sd	a5,24(a4)
   1d994:	00e7b823          	sd	a4,16(a5)
   1d998:	008ab783          	ld	a5,8(s5) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdb200>
   1d99c:	409a06b3          	sub	a3,s4,s1
   1d9a0:	01f00613          	li	a2,31
   1d9a4:	0017f793          	andi	a5,a5,1
   1d9a8:	014a8733          	add	a4,s5,s4
   1d9ac:	0ad66463          	bltu	a2,a3,1da54 <_realloc_r+0x230>
   1d9b0:	0147e7b3          	or	a5,a5,s4
   1d9b4:	00fab423          	sd	a5,8(s5)
   1d9b8:	00873783          	ld	a5,8(a4)
   1d9bc:	0017e793          	ori	a5,a5,1
   1d9c0:	00f73423          	sd	a5,8(a4)
   1d9c4:	00098513          	mv	a0,s3
   1d9c8:	a1df90ef          	jal	ra,173e4 <__malloc_unlock>
   1d9cc:	00040913          	mv	s2,s0
   1d9d0:	04813083          	ld	ra,72(sp)
   1d9d4:	04013403          	ld	s0,64(sp)
   1d9d8:	03813483          	ld	s1,56(sp)
   1d9dc:	02813983          	ld	s3,40(sp)
   1d9e0:	02013a03          	ld	s4,32(sp)
   1d9e4:	01813a83          	ld	s5,24(sp)
   1d9e8:	01013b03          	ld	s6,16(sp)
   1d9ec:	00813b83          	ld	s7,8(sp)
   1d9f0:	00013c03          	ld	s8,0(sp)
   1d9f4:	00090513          	mv	a0,s2
   1d9f8:	03013903          	ld	s2,48(sp)
   1d9fc:	05010113          	addi	sp,sp,80
   1da00:	00008067          	ret
   1da04:	0017f793          	andi	a5,a5,1
   1da08:	ee0798e3          	bnez	a5,1d8f8 <_realloc_r+0xd4>
   1da0c:	ff043b83          	ld	s7,-16(s0)
   1da10:	417a8bb3          	sub	s7,s5,s7
   1da14:	008bb783          	ld	a5,8(s7)
   1da18:	ffc7f793          	andi	a5,a5,-4
   1da1c:	ed5ff06f          	j	1d8f0 <_realloc_r+0xcc>
   1da20:	04013403          	ld	s0,64(sp)
   1da24:	04813083          	ld	ra,72(sp)
   1da28:	03813483          	ld	s1,56(sp)
   1da2c:	03013903          	ld	s2,48(sp)
   1da30:	02813983          	ld	s3,40(sp)
   1da34:	02013a03          	ld	s4,32(sp)
   1da38:	01813a83          	ld	s5,24(sp)
   1da3c:	01013b03          	ld	s6,16(sp)
   1da40:	00813b83          	ld	s7,8(sp)
   1da44:	00013c03          	ld	s8,0(sp)
   1da48:	00060593          	mv	a1,a2
   1da4c:	05010113          	addi	sp,sp,80
   1da50:	880f906f          	j	16ad0 <_malloc_r>
   1da54:	0097e7b3          	or	a5,a5,s1
   1da58:	00fab423          	sd	a5,8(s5)
   1da5c:	009a85b3          	add	a1,s5,s1
   1da60:	0016e693          	ori	a3,a3,1
   1da64:	00d5b423          	sd	a3,8(a1)
   1da68:	00873783          	ld	a5,8(a4)
   1da6c:	01058593          	addi	a1,a1,16
   1da70:	00098513          	mv	a0,s3
   1da74:	0017e793          	ori	a5,a5,1
   1da78:	00f73423          	sd	a5,8(a4)
   1da7c:	b95f50ef          	jal	ra,13610 <_free_r>
   1da80:	f45ff06f          	j	1d9c4 <_realloc_r+0x1a0>
   1da84:	ffc77713          	andi	a4,a4,-4
   1da88:	014706b3          	add	a3,a4,s4
   1da8c:	02048613          	addi	a2,s1,32
   1da90:	22c6de63          	bge	a3,a2,1dccc <_realloc_r+0x4a8>
   1da94:	0017f793          	andi	a5,a5,1
   1da98:	e60790e3          	bnez	a5,1d8f8 <_realloc_r+0xd4>
   1da9c:	ff043b83          	ld	s7,-16(s0)
   1daa0:	417a8bb3          	sub	s7,s5,s7
   1daa4:	008bb783          	ld	a5,8(s7)
   1daa8:	ffc7f793          	andi	a5,a5,-4
   1daac:	00f70733          	add	a4,a4,a5
   1dab0:	01470b33          	add	s6,a4,s4
   1dab4:	e2cb4ee3          	blt	s6,a2,1d8f0 <_realloc_r+0xcc>
   1dab8:	018bb783          	ld	a5,24(s7)
   1dabc:	010bb703          	ld	a4,16(s7)
   1dac0:	ff8a0613          	addi	a2,s4,-8
   1dac4:	04800693          	li	a3,72
   1dac8:	00f73c23          	sd	a5,24(a4)
   1dacc:	00e7b823          	sd	a4,16(a5)
   1dad0:	010b8913          	addi	s2,s7,16
   1dad4:	26c6e263          	bltu	a3,a2,1dd38 <_realloc_r+0x514>
   1dad8:	02700713          	li	a4,39
   1dadc:	00090793          	mv	a5,s2
   1dae0:	02c77263          	bgeu	a4,a2,1db04 <_realloc_r+0x2e0>
   1dae4:	00043703          	ld	a4,0(s0)
   1dae8:	03700793          	li	a5,55
   1daec:	00ebb823          	sd	a4,16(s7)
   1daf0:	00843703          	ld	a4,8(s0)
   1daf4:	00ebbc23          	sd	a4,24(s7)
   1daf8:	24c7e863          	bltu	a5,a2,1dd48 <_realloc_r+0x524>
   1dafc:	01040413          	addi	s0,s0,16
   1db00:	020b8793          	addi	a5,s7,32
   1db04:	00043703          	ld	a4,0(s0)
   1db08:	00e7b023          	sd	a4,0(a5)
   1db0c:	00843703          	ld	a4,8(s0)
   1db10:	00e7b423          	sd	a4,8(a5)
   1db14:	01043703          	ld	a4,16(s0)
   1db18:	00e7b823          	sd	a4,16(a5)
   1db1c:	009b8733          	add	a4,s7,s1
   1db20:	409b07b3          	sub	a5,s6,s1
   1db24:	00ec3823          	sd	a4,16(s8)
   1db28:	0017e793          	ori	a5,a5,1
   1db2c:	00f73423          	sd	a5,8(a4)
   1db30:	008bb783          	ld	a5,8(s7)
   1db34:	00098513          	mv	a0,s3
   1db38:	0017f793          	andi	a5,a5,1
   1db3c:	0097e7b3          	or	a5,a5,s1
   1db40:	00fbb423          	sd	a5,8(s7)
   1db44:	8a1f90ef          	jal	ra,173e4 <__malloc_unlock>
   1db48:	e89ff06f          	j	1d9d0 <_realloc_r+0x1ac>
   1db4c:	00043683          	ld	a3,0(s0)
   1db50:	03700713          	li	a4,55
   1db54:	00d53023          	sd	a3,0(a0)
   1db58:	00843683          	ld	a3,8(s0)
   1db5c:	00d53423          	sd	a3,8(a0)
   1db60:	14c76663          	bltu	a4,a2,1dcac <_realloc_r+0x488>
   1db64:	01040713          	addi	a4,s0,16
   1db68:	01050793          	addi	a5,a0,16
   1db6c:	dd1ff06f          	j	1d93c <_realloc_r+0x118>
   1db70:	ff853783          	ld	a5,-8(a0)
   1db74:	ffc7f793          	andi	a5,a5,-4
   1db78:	00fa0a33          	add	s4,s4,a5
   1db7c:	e1dff06f          	j	1d998 <_realloc_r+0x174>
   1db80:	018bb783          	ld	a5,24(s7)
   1db84:	010bb703          	ld	a4,16(s7)
   1db88:	ff8a0613          	addi	a2,s4,-8
   1db8c:	04800693          	li	a3,72
   1db90:	00f73c23          	sd	a5,24(a4)
   1db94:	00e7b823          	sd	a4,16(a5)
   1db98:	010b8913          	addi	s2,s7,16
   1db9c:	10c6e063          	bltu	a3,a2,1dc9c <_realloc_r+0x478>
   1dba0:	02700713          	li	a4,39
   1dba4:	00090793          	mv	a5,s2
   1dba8:	02c77c63          	bgeu	a4,a2,1dbe0 <_realloc_r+0x3bc>
   1dbac:	00043703          	ld	a4,0(s0)
   1dbb0:	03700793          	li	a5,55
   1dbb4:	00ebb823          	sd	a4,16(s7)
   1dbb8:	00843703          	ld	a4,8(s0)
   1dbbc:	00ebbc23          	sd	a4,24(s7)
   1dbc0:	14c7f063          	bgeu	a5,a2,1dd00 <_realloc_r+0x4dc>
   1dbc4:	01043783          	ld	a5,16(s0)
   1dbc8:	02fbb023          	sd	a5,32(s7)
   1dbcc:	01843783          	ld	a5,24(s0)
   1dbd0:	02fbb423          	sd	a5,40(s7)
   1dbd4:	0ad60663          	beq	a2,a3,1dc80 <_realloc_r+0x45c>
   1dbd8:	02040413          	addi	s0,s0,32
   1dbdc:	030b8793          	addi	a5,s7,48
   1dbe0:	00043703          	ld	a4,0(s0)
   1dbe4:	00e7b023          	sd	a4,0(a5)
   1dbe8:	00843703          	ld	a4,8(s0)
   1dbec:	00e7b423          	sd	a4,8(a5)
   1dbf0:	01043703          	ld	a4,16(s0)
   1dbf4:	00e7b823          	sd	a4,16(a5)
   1dbf8:	00090413          	mv	s0,s2
   1dbfc:	000b0a13          	mv	s4,s6
   1dc00:	000b8a93          	mv	s5,s7
   1dc04:	d95ff06f          	j	1d998 <_realloc_r+0x174>
   1dc08:	00040593          	mv	a1,s0
   1dc0c:	a95ff0ef          	jal	ra,1d6a0 <memmove>
   1dc10:	d45ff06f          	j	1d954 <_realloc_r+0x130>
   1dc14:	0186b783          	ld	a5,24(a3)
   1dc18:	0106b703          	ld	a4,16(a3)
   1dc1c:	ff8a0613          	addi	a2,s4,-8
   1dc20:	04800693          	li	a3,72
   1dc24:	00f73c23          	sd	a5,24(a4)
   1dc28:	00e7b823          	sd	a4,16(a5)
   1dc2c:	010bb703          	ld	a4,16(s7)
   1dc30:	018bb783          	ld	a5,24(s7)
   1dc34:	010b8913          	addi	s2,s7,16
   1dc38:	00f73c23          	sd	a5,24(a4)
   1dc3c:	00e7b823          	sd	a4,16(a5)
   1dc40:	04c6ee63          	bltu	a3,a2,1dc9c <_realloc_r+0x478>
   1dc44:	02700713          	li	a4,39
   1dc48:	00090793          	mv	a5,s2
   1dc4c:	f8c77ae3          	bgeu	a4,a2,1dbe0 <_realloc_r+0x3bc>
   1dc50:	00043703          	ld	a4,0(s0)
   1dc54:	03700793          	li	a5,55
   1dc58:	00ebb823          	sd	a4,16(s7)
   1dc5c:	00843703          	ld	a4,8(s0)
   1dc60:	00ebbc23          	sd	a4,24(s7)
   1dc64:	08c7fe63          	bgeu	a5,a2,1dd00 <_realloc_r+0x4dc>
   1dc68:	01043703          	ld	a4,16(s0)
   1dc6c:	04800793          	li	a5,72
   1dc70:	02ebb023          	sd	a4,32(s7)
   1dc74:	01843703          	ld	a4,24(s0)
   1dc78:	02ebb423          	sd	a4,40(s7)
   1dc7c:	f4f61ee3          	bne	a2,a5,1dbd8 <_realloc_r+0x3b4>
   1dc80:	02043703          	ld	a4,32(s0)
   1dc84:	040b8793          	addi	a5,s7,64
   1dc88:	03040413          	addi	s0,s0,48
   1dc8c:	02ebb823          	sd	a4,48(s7)
   1dc90:	ff843703          	ld	a4,-8(s0)
   1dc94:	02ebbc23          	sd	a4,56(s7)
   1dc98:	f49ff06f          	j	1dbe0 <_realloc_r+0x3bc>
   1dc9c:	00040593          	mv	a1,s0
   1dca0:	00090513          	mv	a0,s2
   1dca4:	9fdff0ef          	jal	ra,1d6a0 <memmove>
   1dca8:	f51ff06f          	j	1dbf8 <_realloc_r+0x3d4>
   1dcac:	01043703          	ld	a4,16(s0)
   1dcb0:	00e53823          	sd	a4,16(a0)
   1dcb4:	01843703          	ld	a4,24(s0)
   1dcb8:	00e53c23          	sd	a4,24(a0)
   1dcbc:	06f60063          	beq	a2,a5,1dd1c <_realloc_r+0x4f8>
   1dcc0:	02040713          	addi	a4,s0,32
   1dcc4:	02050793          	addi	a5,a0,32
   1dcc8:	c75ff06f          	j	1d93c <_realloc_r+0x118>
   1dccc:	009a8ab3          	add	s5,s5,s1
   1dcd0:	409687b3          	sub	a5,a3,s1
   1dcd4:	015c3823          	sd	s5,16(s8)
   1dcd8:	0017e793          	ori	a5,a5,1
   1dcdc:	00fab423          	sd	a5,8(s5)
   1dce0:	ff843783          	ld	a5,-8(s0)
   1dce4:	00098513          	mv	a0,s3
   1dce8:	00040913          	mv	s2,s0
   1dcec:	0017f793          	andi	a5,a5,1
   1dcf0:	0097e7b3          	or	a5,a5,s1
   1dcf4:	fef43c23          	sd	a5,-8(s0)
   1dcf8:	eecf90ef          	jal	ra,173e4 <__malloc_unlock>
   1dcfc:	cd5ff06f          	j	1d9d0 <_realloc_r+0x1ac>
   1dd00:	01040413          	addi	s0,s0,16
   1dd04:	020b8793          	addi	a5,s7,32
   1dd08:	ed9ff06f          	j	1dbe0 <_realloc_r+0x3bc>
   1dd0c:	00098513          	mv	a0,s3
   1dd10:	ed4f90ef          	jal	ra,173e4 <__malloc_unlock>
   1dd14:	00000913          	li	s2,0
   1dd18:	cb9ff06f          	j	1d9d0 <_realloc_r+0x1ac>
   1dd1c:	02043683          	ld	a3,32(s0)
   1dd20:	03040713          	addi	a4,s0,48
   1dd24:	03050793          	addi	a5,a0,48
   1dd28:	02d53023          	sd	a3,32(a0)
   1dd2c:	02843683          	ld	a3,40(s0)
   1dd30:	02d53423          	sd	a3,40(a0)
   1dd34:	c09ff06f          	j	1d93c <_realloc_r+0x118>
   1dd38:	00040593          	mv	a1,s0
   1dd3c:	00090513          	mv	a0,s2
   1dd40:	961ff0ef          	jal	ra,1d6a0 <memmove>
   1dd44:	dd9ff06f          	j	1db1c <_realloc_r+0x2f8>
   1dd48:	01043783          	ld	a5,16(s0)
   1dd4c:	02fbb023          	sd	a5,32(s7)
   1dd50:	01843783          	ld	a5,24(s0)
   1dd54:	02fbb423          	sd	a5,40(s7)
   1dd58:	00d60863          	beq	a2,a3,1dd68 <_realloc_r+0x544>
   1dd5c:	02040413          	addi	s0,s0,32
   1dd60:	030b8793          	addi	a5,s7,48
   1dd64:	da1ff06f          	j	1db04 <_realloc_r+0x2e0>
   1dd68:	02043703          	ld	a4,32(s0)
   1dd6c:	040b8793          	addi	a5,s7,64
   1dd70:	03040413          	addi	s0,s0,48
   1dd74:	02ebb823          	sd	a4,48(s7)
   1dd78:	ff843703          	ld	a4,-8(s0)
   1dd7c:	02ebbc23          	sd	a4,56(s7)
   1dd80:	d85ff06f          	j	1db04 <_realloc_r+0x2e0>

000000000001dd84 <cleanup_glue>:
   1dd84:	fd010113          	addi	sp,sp,-48
   1dd88:	01213823          	sd	s2,16(sp)
   1dd8c:	0005b903          	ld	s2,0(a1)
   1dd90:	02813023          	sd	s0,32(sp)
   1dd94:	00913c23          	sd	s1,24(sp)
   1dd98:	02113423          	sd	ra,40(sp)
   1dd9c:	01313423          	sd	s3,8(sp)
   1dda0:	01413023          	sd	s4,0(sp)
   1dda4:	00058413          	mv	s0,a1
   1dda8:	00050493          	mv	s1,a0
   1ddac:	04090263          	beqz	s2,1ddf0 <cleanup_glue+0x6c>
   1ddb0:	00093983          	ld	s3,0(s2)
   1ddb4:	02098863          	beqz	s3,1dde4 <cleanup_glue+0x60>
   1ddb8:	0009ba03          	ld	s4,0(s3)
   1ddbc:	000a0e63          	beqz	s4,1ddd8 <cleanup_glue+0x54>
   1ddc0:	000a3583          	ld	a1,0(s4)
   1ddc4:	00058463          	beqz	a1,1ddcc <cleanup_glue+0x48>
   1ddc8:	fbdff0ef          	jal	ra,1dd84 <cleanup_glue>
   1ddcc:	000a0593          	mv	a1,s4
   1ddd0:	00048513          	mv	a0,s1
   1ddd4:	83df50ef          	jal	ra,13610 <_free_r>
   1ddd8:	00098593          	mv	a1,s3
   1dddc:	00048513          	mv	a0,s1
   1dde0:	831f50ef          	jal	ra,13610 <_free_r>
   1dde4:	00090593          	mv	a1,s2
   1dde8:	00048513          	mv	a0,s1
   1ddec:	825f50ef          	jal	ra,13610 <_free_r>
   1ddf0:	00040593          	mv	a1,s0
   1ddf4:	02013403          	ld	s0,32(sp)
   1ddf8:	02813083          	ld	ra,40(sp)
   1ddfc:	01013903          	ld	s2,16(sp)
   1de00:	00813983          	ld	s3,8(sp)
   1de04:	00013a03          	ld	s4,0(sp)
   1de08:	00048513          	mv	a0,s1
   1de0c:	01813483          	ld	s1,24(sp)
   1de10:	03010113          	addi	sp,sp,48
   1de14:	ffcf506f          	j	13610 <_free_r>

000000000001de18 <_reclaim_reent>:
   1de18:	7581b783          	ld	a5,1880(gp) # 24d60 <_impure_ptr>
   1de1c:	10a78a63          	beq	a5,a0,1df30 <_reclaim_reent+0x118>
   1de20:	07853583          	ld	a1,120(a0)
   1de24:	fd010113          	addi	sp,sp,-48
   1de28:	00913c23          	sd	s1,24(sp)
   1de2c:	02113423          	sd	ra,40(sp)
   1de30:	02813023          	sd	s0,32(sp)
   1de34:	01213823          	sd	s2,16(sp)
   1de38:	01313423          	sd	s3,8(sp)
   1de3c:	00050493          	mv	s1,a0
   1de40:	04058063          	beqz	a1,1de80 <_reclaim_reent+0x68>
   1de44:	00000913          	li	s2,0
   1de48:	20000993          	li	s3,512
   1de4c:	012587b3          	add	a5,a1,s2
   1de50:	0007b403          	ld	s0,0(a5)
   1de54:	00040e63          	beqz	s0,1de70 <_reclaim_reent+0x58>
   1de58:	00040593          	mv	a1,s0
   1de5c:	00043403          	ld	s0,0(s0)
   1de60:	00048513          	mv	a0,s1
   1de64:	facf50ef          	jal	ra,13610 <_free_r>
   1de68:	fe0418e3          	bnez	s0,1de58 <_reclaim_reent+0x40>
   1de6c:	0784b583          	ld	a1,120(s1)
   1de70:	00890913          	addi	s2,s2,8
   1de74:	fd391ce3          	bne	s2,s3,1de4c <_reclaim_reent+0x34>
   1de78:	00048513          	mv	a0,s1
   1de7c:	f94f50ef          	jal	ra,13610 <_free_r>
   1de80:	0604b583          	ld	a1,96(s1)
   1de84:	00058663          	beqz	a1,1de90 <_reclaim_reent+0x78>
   1de88:	00048513          	mv	a0,s1
   1de8c:	f84f50ef          	jal	ra,13610 <_free_r>
   1de90:	1f84b403          	ld	s0,504(s1)
   1de94:	02040063          	beqz	s0,1deb4 <_reclaim_reent+0x9c>
   1de98:	20048913          	addi	s2,s1,512
   1de9c:	01240c63          	beq	s0,s2,1deb4 <_reclaim_reent+0x9c>
   1dea0:	00040593          	mv	a1,s0
   1dea4:	00043403          	ld	s0,0(s0)
   1dea8:	00048513          	mv	a0,s1
   1deac:	f64f50ef          	jal	ra,13610 <_free_r>
   1deb0:	fe8918e3          	bne	s2,s0,1dea0 <_reclaim_reent+0x88>
   1deb4:	0884b583          	ld	a1,136(s1)
   1deb8:	00058663          	beqz	a1,1dec4 <_reclaim_reent+0xac>
   1debc:	00048513          	mv	a0,s1
   1dec0:	f50f50ef          	jal	ra,13610 <_free_r>
   1dec4:	0504a783          	lw	a5,80(s1)
   1dec8:	04078663          	beqz	a5,1df14 <_reclaim_reent+0xfc>
   1decc:	0584b783          	ld	a5,88(s1)
   1ded0:	00048513          	mv	a0,s1
   1ded4:	000780e7          	jalr	a5
   1ded8:	5204b403          	ld	s0,1312(s1)
   1dedc:	02040c63          	beqz	s0,1df14 <_reclaim_reent+0xfc>
   1dee0:	00043583          	ld	a1,0(s0)
   1dee4:	00058663          	beqz	a1,1def0 <_reclaim_reent+0xd8>
   1dee8:	00048513          	mv	a0,s1
   1deec:	e99ff0ef          	jal	ra,1dd84 <cleanup_glue>
   1def0:	00040593          	mv	a1,s0
   1def4:	02013403          	ld	s0,32(sp)
   1def8:	02813083          	ld	ra,40(sp)
   1defc:	01013903          	ld	s2,16(sp)
   1df00:	00813983          	ld	s3,8(sp)
   1df04:	00048513          	mv	a0,s1
   1df08:	01813483          	ld	s1,24(sp)
   1df0c:	03010113          	addi	sp,sp,48
   1df10:	f00f506f          	j	13610 <_free_r>
   1df14:	02813083          	ld	ra,40(sp)
   1df18:	02013403          	ld	s0,32(sp)
   1df1c:	01813483          	ld	s1,24(sp)
   1df20:	01013903          	ld	s2,16(sp)
   1df24:	00813983          	ld	s3,8(sp)
   1df28:	03010113          	addi	sp,sp,48
   1df2c:	00008067          	ret
   1df30:	00008067          	ret

000000000001df34 <__ssprint_r>:
   1df34:	01063783          	ld	a5,16(a2)
   1df38:	fb010113          	addi	sp,sp,-80
   1df3c:	03313423          	sd	s3,40(sp)
   1df40:	01513c23          	sd	s5,24(sp)
   1df44:	04113423          	sd	ra,72(sp)
   1df48:	04813023          	sd	s0,64(sp)
   1df4c:	02913c23          	sd	s1,56(sp)
   1df50:	03213823          	sd	s2,48(sp)
   1df54:	03413023          	sd	s4,32(sp)
   1df58:	01613823          	sd	s6,16(sp)
   1df5c:	01713423          	sd	s7,8(sp)
   1df60:	01813023          	sd	s8,0(sp)
   1df64:	00063983          	ld	s3,0(a2)
   1df68:	00060a93          	mv	s5,a2
   1df6c:	18078463          	beqz	a5,1e0f4 <__ssprint_r+0x1c0>
   1df70:	00c5a703          	lw	a4,12(a1)
   1df74:	0005b783          	ld	a5,0(a1)
   1df78:	00050b13          	mv	s6,a0
   1df7c:	00058493          	mv	s1,a1
   1df80:	00000a13          	li	s4,0
   1df84:	00000413          	li	s0,0
   1df88:	00070913          	mv	s2,a4
   1df8c:	00078513          	mv	a0,a5
   1df90:	06040263          	beqz	s0,1dff4 <__ssprint_r+0xc0>
   1df94:	06e47863          	bgeu	s0,a4,1e004 <__ssprint_r+0xd0>
   1df98:	0004071b          	sext.w	a4,s0
   1df9c:	00070913          	mv	s2,a4
   1dfa0:	00070b93          	mv	s7,a4
   1dfa4:	00078513          	mv	a0,a5
   1dfa8:	000a0593          	mv	a1,s4
   1dfac:	00090613          	mv	a2,s2
   1dfb0:	ef0ff0ef          	jal	ra,1d6a0 <memmove>
   1dfb4:	00c4a683          	lw	a3,12(s1)
   1dfb8:	0004b783          	ld	a5,0(s1)
   1dfbc:	010ab703          	ld	a4,16(s5)
   1dfc0:	412686bb          	subw	a3,a3,s2
   1dfc4:	012787b3          	add	a5,a5,s2
   1dfc8:	00d4a623          	sw	a3,12(s1)
   1dfcc:	00f4b023          	sd	a5,0(s1)
   1dfd0:	41770733          	sub	a4,a4,s7
   1dfd4:	00eab823          	sd	a4,16(s5)
   1dfd8:	017a0a33          	add	s4,s4,s7
   1dfdc:	41740433          	sub	s0,s0,s7
   1dfe0:	10070a63          	beqz	a4,1e0f4 <__ssprint_r+0x1c0>
   1dfe4:	00c4a703          	lw	a4,12(s1)
   1dfe8:	00078513          	mv	a0,a5
   1dfec:	00070913          	mv	s2,a4
   1dff0:	fa0412e3          	bnez	s0,1df94 <__ssprint_r+0x60>
   1dff4:	0009ba03          	ld	s4,0(s3)
   1dff8:	0089b403          	ld	s0,8(s3)
   1dffc:	01098993          	addi	s3,s3,16
   1e000:	f89ff06f          	j	1df88 <__ssprint_r+0x54>
   1e004:	01049703          	lh	a4,16(s1)
   1e008:	00040b9b          	sext.w	s7,s0
   1e00c:	48077693          	andi	a3,a4,1152
   1e010:	f8068ce3          	beqz	a3,1dfa8 <__ssprint_r+0x74>
   1e014:	0204a603          	lw	a2,32(s1)
   1e018:	0184b583          	ld	a1,24(s1)
   1e01c:	0016169b          	slliw	a3,a2,0x1
   1e020:	00c686bb          	addw	a3,a3,a2
   1e024:	40b787b3          	sub	a5,a5,a1
   1e028:	01f6d91b          	srliw	s2,a3,0x1f
   1e02c:	00078b9b          	sext.w	s7,a5
   1e030:	00d9093b          	addw	s2,s2,a3
   1e034:	001b8693          	addi	a3,s7,1
   1e038:	4019591b          	sraiw	s2,s2,0x1
   1e03c:	008686b3          	add	a3,a3,s0
   1e040:	00d97663          	bgeu	s2,a3,1e04c <__ssprint_r+0x118>
   1e044:	0017879b          	addiw	a5,a5,1
   1e048:	0087893b          	addw	s2,a5,s0
   1e04c:	40077713          	andi	a4,a4,1024
   1e050:	06070263          	beqz	a4,1e0b4 <__ssprint_r+0x180>
   1e054:	00090593          	mv	a1,s2
   1e058:	000b0513          	mv	a0,s6
   1e05c:	a75f80ef          	jal	ra,16ad0 <_malloc_r>
   1e060:	00050c13          	mv	s8,a0
   1e064:	06050863          	beqz	a0,1e0d4 <__ssprint_r+0x1a0>
   1e068:	0184b583          	ld	a1,24(s1)
   1e06c:	000b8613          	mv	a2,s7
   1e070:	c8cff0ef          	jal	ra,1d4fc <memcpy>
   1e074:	0104d783          	lhu	a5,16(s1)
   1e078:	b7f7f793          	andi	a5,a5,-1153
   1e07c:	0807e793          	ori	a5,a5,128
   1e080:	00f49823          	sh	a5,16(s1)
   1e084:	017c0533          	add	a0,s8,s7
   1e088:	41790bbb          	subw	s7,s2,s7
   1e08c:	0004071b          	sext.w	a4,s0
   1e090:	0324a023          	sw	s2,32(s1)
   1e094:	0174a623          	sw	s7,12(s1)
   1e098:	0184bc23          	sd	s8,24(s1)
   1e09c:	00a4b023          	sd	a0,0(s1)
   1e0a0:	00070913          	mv	s2,a4
   1e0a4:	00070b93          	mv	s7,a4
   1e0a8:	00050793          	mv	a5,a0
   1e0ac:	eee47ee3          	bgeu	s0,a4,1dfa8 <__ssprint_r+0x74>
   1e0b0:	eedff06f          	j	1df9c <__ssprint_r+0x68>
   1e0b4:	00090613          	mv	a2,s2
   1e0b8:	000b0513          	mv	a0,s6
   1e0bc:	f68ff0ef          	jal	ra,1d824 <_realloc_r>
   1e0c0:	00050c13          	mv	s8,a0
   1e0c4:	fc0510e3          	bnez	a0,1e084 <__ssprint_r+0x150>
   1e0c8:	0184b583          	ld	a1,24(s1)
   1e0cc:	000b0513          	mv	a0,s6
   1e0d0:	d40f50ef          	jal	ra,13610 <_free_r>
   1e0d4:	0104d783          	lhu	a5,16(s1)
   1e0d8:	00c00713          	li	a4,12
   1e0dc:	00eb2023          	sw	a4,0(s6)
   1e0e0:	0407e793          	ori	a5,a5,64
   1e0e4:	00f49823          	sh	a5,16(s1)
   1e0e8:	000ab823          	sd	zero,16(s5)
   1e0ec:	fff00513          	li	a0,-1
   1e0f0:	0080006f          	j	1e0f8 <__ssprint_r+0x1c4>
   1e0f4:	00000513          	li	a0,0
   1e0f8:	04813083          	ld	ra,72(sp)
   1e0fc:	04013403          	ld	s0,64(sp)
   1e100:	000aa423          	sw	zero,8(s5)
   1e104:	03813483          	ld	s1,56(sp)
   1e108:	03013903          	ld	s2,48(sp)
   1e10c:	02813983          	ld	s3,40(sp)
   1e110:	02013a03          	ld	s4,32(sp)
   1e114:	01813a83          	ld	s5,24(sp)
   1e118:	01013b03          	ld	s6,16(sp)
   1e11c:	00813b83          	ld	s7,8(sp)
   1e120:	00013c03          	ld	s8,0(sp)
   1e124:	05010113          	addi	sp,sp,80
   1e128:	00008067          	ret

000000000001e12c <_svfiprintf_r>:
   1e12c:	0105d783          	lhu	a5,16(a1)
   1e130:	e1010113          	addi	sp,sp,-496
   1e134:	1c913c23          	sd	s1,472(sp)
   1e138:	1d313423          	sd	s3,456(sp)
   1e13c:	1b713423          	sd	s7,424(sp)
   1e140:	1b813023          	sd	s8,416(sp)
   1e144:	1e113423          	sd	ra,488(sp)
   1e148:	1e813023          	sd	s0,480(sp)
   1e14c:	1d213823          	sd	s2,464(sp)
   1e150:	1d413023          	sd	s4,448(sp)
   1e154:	1b513c23          	sd	s5,440(sp)
   1e158:	1b613823          	sd	s6,432(sp)
   1e15c:	19913c23          	sd	s9,408(sp)
   1e160:	19a13823          	sd	s10,400(sp)
   1e164:	19b13423          	sd	s11,392(sp)
   1e168:	0807f793          	andi	a5,a5,128
   1e16c:	00058493          	mv	s1,a1
   1e170:	00050993          	mv	s3,a0
   1e174:	00060b93          	mv	s7,a2
   1e178:	00068c13          	mv	s8,a3
   1e17c:	00078663          	beqz	a5,1e188 <_svfiprintf_r+0x5c>
   1e180:	0185b783          	ld	a5,24(a1)
   1e184:	700780e3          	beqz	a5,1f084 <_svfiprintf_r+0xf58>
   1e188:	000236b7          	lui	a3,0x23
   1e18c:	10010913          	addi	s2,sp,256
   1e190:	00000a93          	li	s5,0
   1e194:	93468693          	addi	a3,a3,-1740 # 22934 <_ctype_+0x104>
   1e198:	00023a37          	lui	s4,0x23
   1e19c:	09213023          	sd	s2,128(sp)
   1e1a0:	08013823          	sd	zero,144(sp)
   1e1a4:	08012423          	sw	zero,136(sp)
   1e1a8:	00000713          	li	a4,0
   1e1ac:	00090793          	mv	a5,s2
   1e1b0:	00013823          	sd	zero,16(sp)
   1e1b4:	04013023          	sd	zero,64(sp)
   1e1b8:	02013c23          	sd	zero,56(sp)
   1e1bc:	04013423          	sd	zero,72(sp)
   1e1c0:	00d13423          	sd	a3,8(sp)
   1e1c4:	01000413          	li	s0,16
   1e1c8:	aa0a0a13          	addi	s4,s4,-1376 # 22aa0 <zeroes.0>
   1e1cc:	000a8c93          	mv	s9,s5
   1e1d0:	000b8813          	mv	a6,s7
   1e1d4:	00084683          	lbu	a3,0(a6)
   1e1d8:	1e068e63          	beqz	a3,1e3d4 <_svfiprintf_r+0x2a8>
   1e1dc:	00080b13          	mv	s6,a6
   1e1e0:	02500613          	li	a2,37
   1e1e4:	22c68e63          	beq	a3,a2,1e420 <_svfiprintf_r+0x2f4>
   1e1e8:	001b4683          	lbu	a3,1(s6)
   1e1ec:	001b0b13          	addi	s6,s6,1
   1e1f0:	fe069ae3          	bnez	a3,1e1e4 <_svfiprintf_r+0xb8>
   1e1f4:	410b0abb          	subw	s5,s6,a6
   1e1f8:	1c0a8e63          	beqz	s5,1e3d4 <_svfiprintf_r+0x2a8>
   1e1fc:	08812683          	lw	a3,136(sp)
   1e200:	01570733          	add	a4,a4,s5
   1e204:	0107b023          	sd	a6,0(a5)
   1e208:	0016861b          	addiw	a2,a3,1
   1e20c:	0157b423          	sd	s5,8(a5)
   1e210:	08e13823          	sd	a4,144(sp)
   1e214:	08c12423          	sw	a2,136(sp)
   1e218:	00700693          	li	a3,7
   1e21c:	01078793          	addi	a5,a5,16
   1e220:	20c6c863          	blt	a3,a2,1e430 <_svfiprintf_r+0x304>
   1e224:	000b4683          	lbu	a3,0(s6)
   1e228:	015c8cbb          	addw	s9,s9,s5
   1e22c:	1a068463          	beqz	a3,1e3d4 <_svfiprintf_r+0x2a8>
   1e230:	00000e13          	li	t3,0
   1e234:	00000893          	li	a7,0
   1e238:	001b4683          	lbu	a3,1(s6)
   1e23c:	001b0813          	addi	a6,s6,1
   1e240:	06010ba3          	sb	zero,119(sp)
   1e244:	fff00a93          	li	s5,-1
   1e248:	05a00b93          	li	s7,90
   1e24c:	00088b13          	mv	s6,a7
   1e250:	000e0d13          	mv	s10,t3
   1e254:	00078d93          	mv	s11,a5
   1e258:	00180813          	addi	a6,a6,1
   1e25c:	0006869b          	sext.w	a3,a3
   1e260:	fe06861b          	addiw	a2,a3,-32
   1e264:	0006059b          	sext.w	a1,a2
   1e268:	04bbec63          	bltu	s7,a1,1e2c0 <_svfiprintf_r+0x194>
   1e26c:	00813783          	ld	a5,8(sp)
   1e270:	02061593          	slli	a1,a2,0x20
   1e274:	01e5d613          	srli	a2,a1,0x1e
   1e278:	00f60633          	add	a2,a2,a5
   1e27c:	00062603          	lw	a2,0(a2)
   1e280:	00060067          	jr	a2
   1e284:	00000d13          	li	s10,0
   1e288:	00900513          	li	a0,9
   1e28c:	00084583          	lbu	a1,0(a6)
   1e290:	002d161b          	slliw	a2,s10,0x2
   1e294:	01a60e3b          	addw	t3,a2,s10
   1e298:	fd06869b          	addiw	a3,a3,-48
   1e29c:	001e1e1b          	slliw	t3,t3,0x1
   1e2a0:	fd05861b          	addiw	a2,a1,-48
   1e2a4:	01c68d3b          	addw	s10,a3,t3
   1e2a8:	00180813          	addi	a6,a6,1
   1e2ac:	0005869b          	sext.w	a3,a1
   1e2b0:	fcc57ee3          	bgeu	a0,a2,1e28c <_svfiprintf_r+0x160>
   1e2b4:	fe06861b          	addiw	a2,a3,-32
   1e2b8:	0006059b          	sext.w	a1,a2
   1e2bc:	fabbf8e3          	bgeu	s7,a1,1e26c <_svfiprintf_r+0x140>
   1e2c0:	000b0893          	mv	a7,s6
   1e2c4:	000d0e13          	mv	t3,s10
   1e2c8:	000d8793          	mv	a5,s11
   1e2cc:	10068463          	beqz	a3,1e3d4 <_svfiprintf_r+0x2a8>
   1e2d0:	08d10c23          	sb	a3,152(sp)
   1e2d4:	06010ba3          	sb	zero,119(sp)
   1e2d8:	00100d93          	li	s11,1
   1e2dc:	00100d13          	li	s10,1
   1e2e0:	09810b93          	addi	s7,sp,152
   1e2e4:	00000a93          	li	s5,0
   1e2e8:	0028f293          	andi	t0,a7,2
   1e2ec:	00028463          	beqz	t0,1e2f4 <_svfiprintf_r+0x1c8>
   1e2f0:	002d8d9b          	addiw	s11,s11,2
   1e2f4:	0848ff93          	andi	t6,a7,132
   1e2f8:	08812683          	lw	a3,136(sp)
   1e2fc:	000f9663          	bnez	t6,1e308 <_svfiprintf_r+0x1dc>
   1e300:	41be0b3b          	subw	s6,t3,s11
   1e304:	0f6044e3          	bgtz	s6,1ebec <_svfiprintf_r+0xac0>
   1e308:	07714603          	lbu	a2,119(sp)
   1e30c:	02060863          	beqz	a2,1e33c <_svfiprintf_r+0x210>
   1e310:	07710593          	addi	a1,sp,119
   1e314:	00b7b023          	sd	a1,0(a5)
   1e318:	0016869b          	addiw	a3,a3,1
   1e31c:	00170713          	addi	a4,a4,1
   1e320:	00100593          	li	a1,1
   1e324:	00b7b423          	sd	a1,8(a5)
   1e328:	08e13823          	sd	a4,144(sp)
   1e32c:	08d12423          	sw	a3,136(sp)
   1e330:	00700613          	li	a2,7
   1e334:	01078793          	addi	a5,a5,16
   1e338:	16d64463          	blt	a2,a3,1e4a0 <_svfiprintf_r+0x374>
   1e33c:	02028863          	beqz	t0,1e36c <_svfiprintf_r+0x240>
   1e340:	07810593          	addi	a1,sp,120
   1e344:	00b7b023          	sd	a1,0(a5)
   1e348:	0016869b          	addiw	a3,a3,1
   1e34c:	00270713          	addi	a4,a4,2
   1e350:	00200593          	li	a1,2
   1e354:	00b7b423          	sd	a1,8(a5)
   1e358:	08e13823          	sd	a4,144(sp)
   1e35c:	08d12423          	sw	a3,136(sp)
   1e360:	00700613          	li	a2,7
   1e364:	01078793          	addi	a5,a5,16
   1e368:	1ad644e3          	blt	a2,a3,1ed10 <_svfiprintf_r+0xbe4>
   1e36c:	08000613          	li	a2,128
   1e370:	5ecf8263          	beq	t6,a2,1e954 <_svfiprintf_r+0x828>
   1e374:	41aa8b3b          	subw	s6,s5,s10
   1e378:	6f604663          	bgtz	s6,1ea64 <_svfiprintf_r+0x938>
   1e37c:	0016861b          	addiw	a2,a3,1
   1e380:	01a70733          	add	a4,a4,s10
   1e384:	0177b023          	sd	s7,0(a5)
   1e388:	01a7b423          	sd	s10,8(a5)
   1e38c:	08e13823          	sd	a4,144(sp)
   1e390:	08c12423          	sw	a2,136(sp)
   1e394:	00700693          	li	a3,7
   1e398:	01078793          	addi	a5,a5,16
   1e39c:	7ac6c663          	blt	a3,a2,1eb48 <_svfiprintf_r+0xa1c>
   1e3a0:	0048f893          	andi	a7,a7,4
   1e3a4:	00088663          	beqz	a7,1e3b0 <_svfiprintf_r+0x284>
   1e3a8:	41be0abb          	subw	s5,t3,s11
   1e3ac:	1b5044e3          	bgtz	s5,1ed54 <_svfiprintf_r+0xc28>
   1e3b0:	000e0793          	mv	a5,t3
   1e3b4:	01be5463          	bge	t3,s11,1e3bc <_svfiprintf_r+0x290>
   1e3b8:	000d8793          	mv	a5,s11
   1e3bc:	01978cbb          	addw	s9,a5,s9
   1e3c0:	7c071063          	bnez	a4,1eb80 <_svfiprintf_r+0xa54>
   1e3c4:	00084683          	lbu	a3,0(a6)
   1e3c8:	08012423          	sw	zero,136(sp)
   1e3cc:	00090793          	mv	a5,s2
   1e3d0:	e00696e3          	bnez	a3,1e1dc <_svfiprintf_r+0xb0>
   1e3d4:	000c8a93          	mv	s5,s9
   1e3d8:	06070e63          	beqz	a4,1e454 <_svfiprintf_r+0x328>
   1e3dc:	08010613          	addi	a2,sp,128
   1e3e0:	00048593          	mv	a1,s1
   1e3e4:	00098513          	mv	a0,s3
   1e3e8:	b4dff0ef          	jal	ra,1df34 <__ssprint_r>
   1e3ec:	0680006f          	j	1e454 <_svfiprintf_r+0x328>
   1e3f0:	010b6893          	ori	a7,s6,16
   1e3f4:	00084683          	lbu	a3,0(a6)
   1e3f8:	00088b1b          	sext.w	s6,a7
   1e3fc:	e5dff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1e400:	000c2d03          	lw	s10,0(s8)
   1e404:	008c0c13          	addi	s8,s8,8
   1e408:	460d5a63          	bgez	s10,1e87c <_svfiprintf_r+0x750>
   1e40c:	41a00d3b          	negw	s10,s10
   1e410:	004b6893          	ori	a7,s6,4
   1e414:	00084683          	lbu	a3,0(a6)
   1e418:	00088b1b          	sext.w	s6,a7
   1e41c:	e3dff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1e420:	410b0abb          	subw	s5,s6,a6
   1e424:	dc0a9ce3          	bnez	s5,1e1fc <_svfiprintf_r+0xd0>
   1e428:	000b4683          	lbu	a3,0(s6)
   1e42c:	e01ff06f          	j	1e22c <_svfiprintf_r+0x100>
   1e430:	08010613          	addi	a2,sp,128
   1e434:	00048593          	mv	a1,s1
   1e438:	00098513          	mv	a0,s3
   1e43c:	af9ff0ef          	jal	ra,1df34 <__ssprint_r>
   1e440:	00051863          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1e444:	09013703          	ld	a4,144(sp)
   1e448:	00090793          	mv	a5,s2
   1e44c:	dd9ff06f          	j	1e224 <_svfiprintf_r+0xf8>
   1e450:	000c8a93          	mv	s5,s9
   1e454:	0104d783          	lhu	a5,16(s1)
   1e458:	0407f793          	andi	a5,a5,64
   1e45c:	58079ae3          	bnez	a5,1f1f0 <_svfiprintf_r+0x10c4>
   1e460:	1e813083          	ld	ra,488(sp)
   1e464:	1e013403          	ld	s0,480(sp)
   1e468:	1d813483          	ld	s1,472(sp)
   1e46c:	1d013903          	ld	s2,464(sp)
   1e470:	1c813983          	ld	s3,456(sp)
   1e474:	1c013a03          	ld	s4,448(sp)
   1e478:	1b013b03          	ld	s6,432(sp)
   1e47c:	1a813b83          	ld	s7,424(sp)
   1e480:	1a013c03          	ld	s8,416(sp)
   1e484:	19813c83          	ld	s9,408(sp)
   1e488:	19013d03          	ld	s10,400(sp)
   1e48c:	18813d83          	ld	s11,392(sp)
   1e490:	000a8513          	mv	a0,s5
   1e494:	1b813a83          	ld	s5,440(sp)
   1e498:	1f010113          	addi	sp,sp,496
   1e49c:	00008067          	ret
   1e4a0:	08010613          	addi	a2,sp,128
   1e4a4:	00048593          	mv	a1,s1
   1e4a8:	00098513          	mv	a0,s3
   1e4ac:	05013823          	sd	a6,80(sp)
   1e4b0:	03c13823          	sd	t3,48(sp)
   1e4b4:	03f13423          	sd	t6,40(sp)
   1e4b8:	02513023          	sd	t0,32(sp)
   1e4bc:	01113c23          	sd	a7,24(sp)
   1e4c0:	a75ff0ef          	jal	ra,1df34 <__ssprint_r>
   1e4c4:	f80516e3          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1e4c8:	09013703          	ld	a4,144(sp)
   1e4cc:	08812683          	lw	a3,136(sp)
   1e4d0:	05013803          	ld	a6,80(sp)
   1e4d4:	03013e03          	ld	t3,48(sp)
   1e4d8:	02813f83          	ld	t6,40(sp)
   1e4dc:	02013283          	ld	t0,32(sp)
   1e4e0:	01813883          	ld	a7,24(sp)
   1e4e4:	00090793          	mv	a5,s2
   1e4e8:	e55ff06f          	j	1e33c <_svfiprintf_r+0x210>
   1e4ec:	000c3b83          	ld	s7,0(s8)
   1e4f0:	06010ba3          	sb	zero,119(sp)
   1e4f4:	000b0893          	mv	a7,s6
   1e4f8:	000d0e13          	mv	t3,s10
   1e4fc:	000d8793          	mv	a5,s11
   1e500:	008c0c13          	addi	s8,s8,8
   1e504:	400b8ae3          	beqz	s7,1f118 <_svfiprintf_r+0xfec>
   1e508:	fff00693          	li	a3,-1
   1e50c:	05013823          	sd	a6,80(sp)
   1e510:	02e13823          	sd	a4,48(sp)
   1e514:	03b13423          	sd	s11,40(sp)
   1e518:	03a13023          	sd	s10,32(sp)
   1e51c:	01613c23          	sd	s6,24(sp)
   1e520:	32da82e3          	beq	s5,a3,1f044 <_svfiprintf_r+0xf18>
   1e524:	000a8613          	mv	a2,s5
   1e528:	00000593          	li	a1,0
   1e52c:	000b8513          	mv	a0,s7
   1e530:	dedf80ef          	jal	ra,1731c <memchr>
   1e534:	01813883          	ld	a7,24(sp)
   1e538:	02013e03          	ld	t3,32(sp)
   1e53c:	02813783          	ld	a5,40(sp)
   1e540:	03013703          	ld	a4,48(sp)
   1e544:	05013803          	ld	a6,80(sp)
   1e548:	46050ce3          	beqz	a0,1f1c0 <_svfiprintf_r+0x1094>
   1e54c:	41750d3b          	subw	s10,a0,s7
   1e550:	fffd4d93          	not	s11,s10
   1e554:	43fddd93          	srai	s11,s11,0x3f
   1e558:	01adfdb3          	and	s11,s11,s10
   1e55c:	00000a93          	li	s5,0
   1e560:	1600006f          	j	1e6c0 <_svfiprintf_r+0x594>
   1e564:	000c2683          	lw	a3,0(s8)
   1e568:	000d0e13          	mv	t3,s10
   1e56c:	000d8793          	mv	a5,s11
   1e570:	000b0893          	mv	a7,s6
   1e574:	06010ba3          	sb	zero,119(sp)
   1e578:	008c0c13          	addi	s8,s8,8
   1e57c:	08d10c23          	sb	a3,152(sp)
   1e580:	00100d93          	li	s11,1
   1e584:	00100d13          	li	s10,1
   1e588:	09810b93          	addi	s7,sp,152
   1e58c:	d59ff06f          	j	1e2e4 <_svfiprintf_r+0x1b8>
   1e590:	000b0893          	mv	a7,s6
   1e594:	000d0e13          	mv	t3,s10
   1e598:	000d8793          	mv	a5,s11
   1e59c:	0208f693          	andi	a3,a7,32
   1e5a0:	008c0613          	addi	a2,s8,8
   1e5a4:	04069863          	bnez	a3,1e5f4 <_svfiprintf_r+0x4c8>
   1e5a8:	0108f693          	andi	a3,a7,16
   1e5ac:	04069463          	bnez	a3,1e5f4 <_svfiprintf_r+0x4c8>
   1e5b0:	0408f593          	andi	a1,a7,64
   1e5b4:	000c2683          	lw	a3,0(s8)
   1e5b8:	3c0580e3          	beqz	a1,1f178 <_svfiprintf_r+0x104c>
   1e5bc:	01069d9b          	slliw	s11,a3,0x10
   1e5c0:	410ddd9b          	sraiw	s11,s11,0x10
   1e5c4:	000d8593          	mv	a1,s11
   1e5c8:	0205cc63          	bltz	a1,1e600 <_svfiprintf_r+0x4d4>
   1e5cc:	fff00593          	li	a1,-1
   1e5d0:	04ba8663          	beq	s5,a1,1e61c <_svfiprintf_r+0x4f0>
   1e5d4:	f7f8f893          	andi	a7,a7,-129
   1e5d8:	0008889b          	sext.w	a7,a7
   1e5dc:	040d9063          	bnez	s11,1e61c <_svfiprintf_r+0x4f0>
   1e5e0:	3e0a98e3          	bnez	s5,1f1d0 <_svfiprintf_r+0x10a4>
   1e5e4:	00000d13          	li	s10,0
   1e5e8:	00060c13          	mv	s8,a2
   1e5ec:	0fc10b93          	addi	s7,sp,252
   1e5f0:	0d00006f          	j	1e6c0 <_svfiprintf_r+0x594>
   1e5f4:	000c3583          	ld	a1,0(s8)
   1e5f8:	00058d93          	mv	s11,a1
   1e5fc:	fc05d8e3          	bgez	a1,1e5cc <_svfiprintf_r+0x4a0>
   1e600:	02d00593          	li	a1,45
   1e604:	06b10ba3          	sb	a1,119(sp)
   1e608:	fff00593          	li	a1,-1
   1e60c:	41b00db3          	neg	s11,s11
   1e610:	00ba8663          	beq	s5,a1,1e61c <_svfiprintf_r+0x4f0>
   1e614:	f7f8f893          	andi	a7,a7,-129
   1e618:	0008889b          	sext.w	a7,a7
   1e61c:	00900593          	li	a1,9
   1e620:	03b5eae3          	bltu	a1,s11,1ee54 <_svfiprintf_r+0xd28>
   1e624:	030d869b          	addiw	a3,s11,48
   1e628:	0ff6f693          	zext.b	a3,a3
   1e62c:	00060c13          	mv	s8,a2
   1e630:	0ed10da3          	sb	a3,251(sp)
   1e634:	000a8d9b          	sext.w	s11,s5
   1e638:	01504463          	bgtz	s5,1e640 <_svfiprintf_r+0x514>
   1e63c:	00100d93          	li	s11,1
   1e640:	00100d13          	li	s10,1
   1e644:	0fb10b93          	addi	s7,sp,251
   1e648:	0780006f          	j	1e6c0 <_svfiprintf_r+0x594>
   1e64c:	010b6693          	ori	a3,s6,16
   1e650:	000d0e13          	mv	t3,s10
   1e654:	000d8793          	mv	a5,s11
   1e658:	0006869b          	sext.w	a3,a3
   1e65c:	0206f613          	andi	a2,a3,32
   1e660:	008c0513          	addi	a0,s8,8
   1e664:	00061663          	bnez	a2,1e670 <_svfiprintf_r+0x544>
   1e668:	0106f613          	andi	a2,a3,16
   1e66c:	0e060ce3          	beqz	a2,1ef64 <_svfiprintf_r+0xe38>
   1e670:	000c3603          	ld	a2,0(s8)
   1e674:	bff6f893          	andi	a7,a3,-1025
   1e678:	06010ba3          	sb	zero,119(sp)
   1e67c:	fff00593          	li	a1,-1
   1e680:	0008889b          	sext.w	a7,a7
   1e684:	00050c13          	mv	s8,a0
   1e688:	0eba8863          	beq	s5,a1,1e778 <_svfiprintf_r+0x64c>
   1e68c:	b7f6f693          	andi	a3,a3,-1153
   1e690:	0006869b          	sext.w	a3,a3
   1e694:	240616e3          	bnez	a2,1f0e0 <_svfiprintf_r+0xfb4>
   1e698:	00088d13          	mv	s10,a7
   1e69c:	00068893          	mv	a7,a3
   1e6a0:	0c0a9263          	bnez	s5,1e764 <_svfiprintf_r+0x638>
   1e6a4:	7a061063          	bnez	a2,1ee44 <_svfiprintf_r+0xd18>
   1e6a8:	001d7d13          	andi	s10,s10,1
   1e6ac:	060d0ce3          	beqz	s10,1ef24 <_svfiprintf_r+0xdf8>
   1e6b0:	03000693          	li	a3,48
   1e6b4:	0ed10da3          	sb	a3,251(sp)
   1e6b8:	000d0d93          	mv	s11,s10
   1e6bc:	0fb10b93          	addi	s7,sp,251
   1e6c0:	07714683          	lbu	a3,119(sp)
   1e6c4:	c20682e3          	beqz	a3,1e2e8 <_svfiprintf_r+0x1bc>
   1e6c8:	001d8d9b          	addiw	s11,s11,1
   1e6cc:	c1dff06f          	j	1e2e8 <_svfiprintf_r+0x1bc>
   1e6d0:	010b6893          	ori	a7,s6,16
   1e6d4:	000d0e13          	mv	t3,s10
   1e6d8:	000d8793          	mv	a5,s11
   1e6dc:	0008889b          	sext.w	a7,a7
   1e6e0:	ebdff06f          	j	1e59c <_svfiprintf_r+0x470>
   1e6e4:	00084683          	lbu	a3,0(a6)
   1e6e8:	06c00613          	li	a2,108
   1e6ec:	20c68ce3          	beq	a3,a2,1f104 <_svfiprintf_r+0xfd8>
   1e6f0:	010b6893          	ori	a7,s6,16
   1e6f4:	00088b1b          	sext.w	s6,a7
   1e6f8:	b61ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1e6fc:	00084683          	lbu	a3,0(a6)
   1e700:	06800613          	li	a2,104
   1e704:	1ec686e3          	beq	a3,a2,1f0f0 <_svfiprintf_r+0xfc4>
   1e708:	040b6893          	ori	a7,s6,64
   1e70c:	00088b1b          	sext.w	s6,a7
   1e710:	b49ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1e714:	000d0e13          	mv	t3,s10
   1e718:	010b6d13          	ori	s10,s6,16
   1e71c:	000d8793          	mv	a5,s11
   1e720:	000d0d1b          	sext.w	s10,s10
   1e724:	020d7693          	andi	a3,s10,32
   1e728:	008c0613          	addi	a2,s8,8
   1e72c:	00069663          	bnez	a3,1e738 <_svfiprintf_r+0x60c>
   1e730:	010d7693          	andi	a3,s10,16
   1e734:	00068ce3          	beqz	a3,1ef4c <_svfiprintf_r+0xe20>
   1e738:	000c3d83          	ld	s11,0(s8)
   1e73c:	06010ba3          	sb	zero,119(sp)
   1e740:	fff00593          	li	a1,-1
   1e744:	000d0893          	mv	a7,s10
   1e748:	ecba8ae3          	beq	s5,a1,1e61c <_svfiprintf_r+0x4f0>
   1e74c:	f7fd7893          	andi	a7,s10,-129
   1e750:	0008889b          	sext.w	a7,a7
   1e754:	ec0d94e3          	bnez	s11,1e61c <_svfiprintf_r+0x4f0>
   1e758:	00060c13          	mv	s8,a2
   1e75c:	00100613          	li	a2,1
   1e760:	f40a82e3          	beqz	s5,1e6a4 <_svfiprintf_r+0x578>
   1e764:	00100693          	li	a3,1
   1e768:	26d606e3          	beq	a2,a3,1f1d4 <_svfiprintf_r+0x10a8>
   1e76c:	00200693          	li	a3,2
   1e770:	1cd604e3          	beq	a2,a3,1f138 <_svfiprintf_r+0x100c>
   1e774:	00000613          	li	a2,0
   1e778:	0fc10593          	addi	a1,sp,252
   1e77c:	00058b93          	mv	s7,a1
   1e780:	00767693          	andi	a3,a2,7
   1e784:	03068693          	addi	a3,a3,48
   1e788:	fedb8fa3          	sb	a3,-1(s7)
   1e78c:	00365613          	srli	a2,a2,0x3
   1e790:	000b8513          	mv	a0,s7
   1e794:	fffb8b93          	addi	s7,s7,-1
   1e798:	fe0614e3          	bnez	a2,1e780 <_svfiprintf_r+0x654>
   1e79c:	0018f613          	andi	a2,a7,1
   1e7a0:	68060863          	beqz	a2,1ee30 <_svfiprintf_r+0xd04>
   1e7a4:	03000613          	li	a2,48
   1e7a8:	68c68463          	beq	a3,a2,1ee30 <_svfiprintf_r+0xd04>
   1e7ac:	ffe50513          	addi	a0,a0,-2
   1e7b0:	40a58d3b          	subw	s10,a1,a0
   1e7b4:	fecb8fa3          	sb	a2,-1(s7)
   1e7b8:	000d0d9b          	sext.w	s11,s10
   1e7bc:	7d5d4063          	blt	s10,s5,1ef7c <_svfiprintf_r+0xe50>
   1e7c0:	00050b93          	mv	s7,a0
   1e7c4:	efdff06f          	j	1e6c0 <_svfiprintf_r+0x594>
   1e7c8:	080b6893          	ori	a7,s6,128
   1e7cc:	00084683          	lbu	a3,0(a6)
   1e7d0:	00088b1b          	sext.w	s6,a7
   1e7d4:	a85ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1e7d8:	00084683          	lbu	a3,0(a6)
   1e7dc:	02a00513          	li	a0,42
   1e7e0:	00180613          	addi	a2,a6,1
   1e7e4:	20a68ae3          	beq	a3,a0,1f1f8 <_svfiprintf_r+0x10cc>
   1e7e8:	fd06859b          	addiw	a1,a3,-48
   1e7ec:	00900313          	li	t1,9
   1e7f0:	00060813          	mv	a6,a2
   1e7f4:	00000a93          	li	s5,0
   1e7f8:	00900513          	li	a0,9
   1e7fc:	a6b362e3          	bltu	t1,a1,1e260 <_svfiprintf_r+0x134>
   1e800:	00084683          	lbu	a3,0(a6)
   1e804:	002a961b          	slliw	a2,s5,0x2
   1e808:	01560abb          	addw	s5,a2,s5
   1e80c:	001a9a9b          	slliw	s5,s5,0x1
   1e810:	00ba8abb          	addw	s5,s5,a1
   1e814:	fd06859b          	addiw	a1,a3,-48
   1e818:	00180813          	addi	a6,a6,1
   1e81c:	feb572e3          	bgeu	a0,a1,1e800 <_svfiprintf_r+0x6d4>
   1e820:	a41ff06f          	j	1e260 <_svfiprintf_r+0x134>
   1e824:	02b00613          	li	a2,43
   1e828:	00084683          	lbu	a3,0(a6)
   1e82c:	06c10ba3          	sb	a2,119(sp)
   1e830:	a29ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1e834:	00098513          	mv	a0,s3
   1e838:	03013023          	sd	a6,32(sp)
   1e83c:	00e13c23          	sd	a4,24(sp)
   1e840:	f19f70ef          	jal	ra,16758 <_localeconv_r>
   1e844:	00853783          	ld	a5,8(a0)
   1e848:	00078513          	mv	a0,a5
   1e84c:	04f13423          	sd	a5,72(sp)
   1e850:	c50fa0ef          	jal	ra,18ca0 <strlen>
   1e854:	00050693          	mv	a3,a0
   1e858:	00098513          	mv	a0,s3
   1e85c:	02d13c23          	sd	a3,56(sp)
   1e860:	ef9f70ef          	jal	ra,16758 <_localeconv_r>
   1e864:	01053603          	ld	a2,16(a0)
   1e868:	03813783          	ld	a5,56(sp)
   1e86c:	01813703          	ld	a4,24(sp)
   1e870:	04c13023          	sd	a2,64(sp)
   1e874:	02013803          	ld	a6,32(sp)
   1e878:	6a079c63          	bnez	a5,1ef30 <_svfiprintf_r+0xe04>
   1e87c:	00084683          	lbu	a3,0(a6)
   1e880:	9d9ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1e884:	001b6893          	ori	a7,s6,1
   1e888:	00084683          	lbu	a3,0(a6)
   1e88c:	00088b1b          	sext.w	s6,a7
   1e890:	9c9ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1e894:	07714603          	lbu	a2,119(sp)
   1e898:	00084683          	lbu	a3,0(a6)
   1e89c:	9a061ee3          	bnez	a2,1e258 <_svfiprintf_r+0x12c>
   1e8a0:	02000613          	li	a2,32
   1e8a4:	06c10ba3          	sb	a2,119(sp)
   1e8a8:	9b1ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1e8ac:	020b6893          	ori	a7,s6,32
   1e8b0:	00084683          	lbu	a3,0(a6)
   1e8b4:	00088b1b          	sext.w	s6,a7
   1e8b8:	9a1ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1e8bc:	ffff86b7          	lui	a3,0xffff8
   1e8c0:	8306c693          	xori	a3,a3,-2000
   1e8c4:	06d11c23          	sh	a3,120(sp)
   1e8c8:	000226b7          	lui	a3,0x22
   1e8cc:	002b6893          	ori	a7,s6,2
   1e8d0:	d2068693          	addi	a3,a3,-736 # 21d20 <__clzdi2+0x90>
   1e8d4:	000c3603          	ld	a2,0(s8)
   1e8d8:	000d0e13          	mv	t3,s10
   1e8dc:	000d8793          	mv	a5,s11
   1e8e0:	0008889b          	sext.w	a7,a7
   1e8e4:	008c0c13          	addi	s8,s8,8
   1e8e8:	00d13823          	sd	a3,16(sp)
   1e8ec:	06010ba3          	sb	zero,119(sp)
   1e8f0:	fff00693          	li	a3,-1
   1e8f4:	2ada8e63          	beq	s5,a3,1ebb0 <_svfiprintf_r+0xa84>
   1e8f8:	f7f8f693          	andi	a3,a7,-129
   1e8fc:	0006869b          	sext.w	a3,a3
   1e900:	2a061263          	bnez	a2,1eba4 <_svfiprintf_r+0xa78>
   1e904:	00088d13          	mv	s10,a7
   1e908:	00200613          	li	a2,2
   1e90c:	00068893          	mv	a7,a3
   1e910:	d91ff06f          	j	1e6a0 <_svfiprintf_r+0x574>
   1e914:	020b7693          	andi	a3,s6,32
   1e918:	000c3603          	ld	a2,0(s8)
   1e91c:	000d8793          	mv	a5,s11
   1e920:	02069463          	bnez	a3,1e948 <_svfiprintf_r+0x81c>
   1e924:	010b7693          	andi	a3,s6,16
   1e928:	02069063          	bnez	a3,1e948 <_svfiprintf_r+0x81c>
   1e92c:	040b7693          	andi	a3,s6,64
   1e930:	060690e3          	bnez	a3,1f190 <_svfiprintf_r+0x1064>
   1e934:	200b7893          	andi	a7,s6,512
   1e938:	0a0882e3          	beqz	a7,1f1dc <_svfiprintf_r+0x10b0>
   1e93c:	01960023          	sb	s9,0(a2)
   1e940:	008c0c13          	addi	s8,s8,8
   1e944:	891ff06f          	j	1e1d4 <_svfiprintf_r+0xa8>
   1e948:	01963023          	sd	s9,0(a2)
   1e94c:	008c0c13          	addi	s8,s8,8
   1e950:	885ff06f          	j	1e1d4 <_svfiprintf_r+0xa8>
   1e954:	41be0b3b          	subw	s6,t3,s11
   1e958:	a1605ee3          	blez	s6,1e374 <_svfiprintf_r+0x248>
   1e95c:	00023eb7          	lui	t4,0x23
   1e960:	01000613          	li	a2,16
   1e964:	aa0e8e93          	addi	t4,t4,-1376 # 22aa0 <zeroes.0>
   1e968:	09665c63          	bge	a2,s6,1ea00 <_svfiprintf_r+0x8d4>
   1e96c:	03513423          	sd	s5,40(sp)
   1e970:	01000f13          	li	t5,16
   1e974:	000b0a93          	mv	s5,s6
   1e978:	00700f93          	li	t6,7
   1e97c:	01113c23          	sd	a7,24(sp)
   1e980:	03c13023          	sd	t3,32(sp)
   1e984:	03013823          	sd	a6,48(sp)
   1e988:	000e8b13          	mv	s6,t4
   1e98c:	00c0006f          	j	1e998 <_svfiprintf_r+0x86c>
   1e990:	ff0a8a9b          	addiw	s5,s5,-16
   1e994:	055f5a63          	bge	t5,s5,1e9e8 <_svfiprintf_r+0x8bc>
   1e998:	0016869b          	addiw	a3,a3,1
   1e99c:	01070713          	addi	a4,a4,16
   1e9a0:	0167b023          	sd	s6,0(a5)
   1e9a4:	01e7b423          	sd	t5,8(a5)
   1e9a8:	08e13823          	sd	a4,144(sp)
   1e9ac:	08d12423          	sw	a3,136(sp)
   1e9b0:	01078793          	addi	a5,a5,16
   1e9b4:	fcdfdee3          	bge	t6,a3,1e990 <_svfiprintf_r+0x864>
   1e9b8:	08010613          	addi	a2,sp,128
   1e9bc:	00048593          	mv	a1,s1
   1e9c0:	00098513          	mv	a0,s3
   1e9c4:	d70ff0ef          	jal	ra,1df34 <__ssprint_r>
   1e9c8:	a80514e3          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1e9cc:	01000f13          	li	t5,16
   1e9d0:	ff0a8a9b          	addiw	s5,s5,-16
   1e9d4:	09013703          	ld	a4,144(sp)
   1e9d8:	08812683          	lw	a3,136(sp)
   1e9dc:	00090793          	mv	a5,s2
   1e9e0:	00700f93          	li	t6,7
   1e9e4:	fb5f4ae3          	blt	t5,s5,1e998 <_svfiprintf_r+0x86c>
   1e9e8:	000b0e93          	mv	t4,s6
   1e9ec:	01813883          	ld	a7,24(sp)
   1e9f0:	000a8b13          	mv	s6,s5
   1e9f4:	02013e03          	ld	t3,32(sp)
   1e9f8:	03013803          	ld	a6,48(sp)
   1e9fc:	02813a83          	ld	s5,40(sp)
   1ea00:	0016869b          	addiw	a3,a3,1
   1ea04:	01670733          	add	a4,a4,s6
   1ea08:	01d7b023          	sd	t4,0(a5)
   1ea0c:	0167b423          	sd	s6,8(a5)
   1ea10:	08e13823          	sd	a4,144(sp)
   1ea14:	08d12423          	sw	a3,136(sp)
   1ea18:	00700613          	li	a2,7
   1ea1c:	01078793          	addi	a5,a5,16
   1ea20:	94d65ae3          	bge	a2,a3,1e374 <_svfiprintf_r+0x248>
   1ea24:	08010613          	addi	a2,sp,128
   1ea28:	00048593          	mv	a1,s1
   1ea2c:	00098513          	mv	a0,s3
   1ea30:	03013423          	sd	a6,40(sp)
   1ea34:	03c13023          	sd	t3,32(sp)
   1ea38:	01113c23          	sd	a7,24(sp)
   1ea3c:	cf8ff0ef          	jal	ra,1df34 <__ssprint_r>
   1ea40:	a00518e3          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1ea44:	41aa8b3b          	subw	s6,s5,s10
   1ea48:	09013703          	ld	a4,144(sp)
   1ea4c:	08812683          	lw	a3,136(sp)
   1ea50:	02813803          	ld	a6,40(sp)
   1ea54:	02013e03          	ld	t3,32(sp)
   1ea58:	01813883          	ld	a7,24(sp)
   1ea5c:	00090793          	mv	a5,s2
   1ea60:	91605ee3          	blez	s6,1e37c <_svfiprintf_r+0x250>
   1ea64:	00023eb7          	lui	t4,0x23
   1ea68:	aa0e8e93          	addi	t4,t4,-1376 # 22aa0 <zeroes.0>
   1ea6c:	07645e63          	bge	s0,s6,1eae8 <_svfiprintf_r+0x9bc>
   1ea70:	00700a93          	li	s5,7
   1ea74:	01113c23          	sd	a7,24(sp)
   1ea78:	03c13023          	sd	t3,32(sp)
   1ea7c:	03013423          	sd	a6,40(sp)
   1ea80:	03413823          	sd	s4,48(sp)
   1ea84:	00c0006f          	j	1ea90 <_svfiprintf_r+0x964>
   1ea88:	ff0b0b1b          	addiw	s6,s6,-16
   1ea8c:	05645663          	bge	s0,s6,1ead8 <_svfiprintf_r+0x9ac>
   1ea90:	0016869b          	addiw	a3,a3,1
   1ea94:	01070713          	addi	a4,a4,16
   1ea98:	0147b023          	sd	s4,0(a5)
   1ea9c:	0087b423          	sd	s0,8(a5)
   1eaa0:	08e13823          	sd	a4,144(sp)
   1eaa4:	08d12423          	sw	a3,136(sp)
   1eaa8:	01078793          	addi	a5,a5,16
   1eaac:	fcdadee3          	bge	s5,a3,1ea88 <_svfiprintf_r+0x95c>
   1eab0:	08010613          	addi	a2,sp,128
   1eab4:	00048593          	mv	a1,s1
   1eab8:	00098513          	mv	a0,s3
   1eabc:	c78ff0ef          	jal	ra,1df34 <__ssprint_r>
   1eac0:	980518e3          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1eac4:	ff0b0b1b          	addiw	s6,s6,-16
   1eac8:	09013703          	ld	a4,144(sp)
   1eacc:	08812683          	lw	a3,136(sp)
   1ead0:	00090793          	mv	a5,s2
   1ead4:	fb644ee3          	blt	s0,s6,1ea90 <_svfiprintf_r+0x964>
   1ead8:	01813883          	ld	a7,24(sp)
   1eadc:	02013e03          	ld	t3,32(sp)
   1eae0:	02813803          	ld	a6,40(sp)
   1eae4:	03013e83          	ld	t4,48(sp)
   1eae8:	0016869b          	addiw	a3,a3,1
   1eaec:	01670733          	add	a4,a4,s6
   1eaf0:	01d7b023          	sd	t4,0(a5)
   1eaf4:	0167b423          	sd	s6,8(a5)
   1eaf8:	08e13823          	sd	a4,144(sp)
   1eafc:	08d12423          	sw	a3,136(sp)
   1eb00:	00700613          	li	a2,7
   1eb04:	01078793          	addi	a5,a5,16
   1eb08:	86d65ae3          	bge	a2,a3,1e37c <_svfiprintf_r+0x250>
   1eb0c:	08010613          	addi	a2,sp,128
   1eb10:	00048593          	mv	a1,s1
   1eb14:	00098513          	mv	a0,s3
   1eb18:	03013423          	sd	a6,40(sp)
   1eb1c:	03c13023          	sd	t3,32(sp)
   1eb20:	01113c23          	sd	a7,24(sp)
   1eb24:	c10ff0ef          	jal	ra,1df34 <__ssprint_r>
   1eb28:	920514e3          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1eb2c:	09013703          	ld	a4,144(sp)
   1eb30:	08812683          	lw	a3,136(sp)
   1eb34:	02813803          	ld	a6,40(sp)
   1eb38:	02013e03          	ld	t3,32(sp)
   1eb3c:	01813883          	ld	a7,24(sp)
   1eb40:	00090793          	mv	a5,s2
   1eb44:	839ff06f          	j	1e37c <_svfiprintf_r+0x250>
   1eb48:	08010613          	addi	a2,sp,128
   1eb4c:	00048593          	mv	a1,s1
   1eb50:	00098513          	mv	a0,s3
   1eb54:	03013423          	sd	a6,40(sp)
   1eb58:	03c13023          	sd	t3,32(sp)
   1eb5c:	01113c23          	sd	a7,24(sp)
   1eb60:	bd4ff0ef          	jal	ra,1df34 <__ssprint_r>
   1eb64:	8e0516e3          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1eb68:	09013703          	ld	a4,144(sp)
   1eb6c:	02813803          	ld	a6,40(sp)
   1eb70:	02013e03          	ld	t3,32(sp)
   1eb74:	01813883          	ld	a7,24(sp)
   1eb78:	00090793          	mv	a5,s2
   1eb7c:	825ff06f          	j	1e3a0 <_svfiprintf_r+0x274>
   1eb80:	08010613          	addi	a2,sp,128
   1eb84:	00048593          	mv	a1,s1
   1eb88:	00098513          	mv	a0,s3
   1eb8c:	01013c23          	sd	a6,24(sp)
   1eb90:	ba4ff0ef          	jal	ra,1df34 <__ssprint_r>
   1eb94:	8a051ee3          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1eb98:	09013703          	ld	a4,144(sp)
   1eb9c:	01813803          	ld	a6,24(sp)
   1eba0:	825ff06f          	j	1e3c4 <_svfiprintf_r+0x298>
   1eba4:	00068893          	mv	a7,a3
   1eba8:	00200693          	li	a3,2
   1ebac:	bc0686e3          	beqz	a3,1e778 <_svfiprintf_r+0x64c>
   1ebb0:	01013503          	ld	a0,16(sp)
   1ebb4:	0fc10593          	addi	a1,sp,252
   1ebb8:	00058b93          	mv	s7,a1
   1ebbc:	00f67693          	andi	a3,a2,15
   1ebc0:	00d506b3          	add	a3,a0,a3
   1ebc4:	0006c683          	lbu	a3,0(a3)
   1ebc8:	00465613          	srli	a2,a2,0x4
   1ebcc:	fffb8b93          	addi	s7,s7,-1
   1ebd0:	00db8023          	sb	a3,0(s7)
   1ebd4:	fe0614e3          	bnez	a2,1ebbc <_svfiprintf_r+0xa90>
   1ebd8:	41758d3b          	subw	s10,a1,s7
   1ebdc:	000a8d9b          	sext.w	s11,s5
   1ebe0:	afaad0e3          	bge	s5,s10,1e6c0 <_svfiprintf_r+0x594>
   1ebe4:	000d0d9b          	sext.w	s11,s10
   1ebe8:	ad9ff06f          	j	1e6c0 <_svfiprintf_r+0x594>
   1ebec:	00023eb7          	lui	t4,0x23
   1ebf0:	01000613          	li	a2,16
   1ebf4:	ab0e8e93          	addi	t4,t4,-1360 # 22ab0 <blanks.1>
   1ebf8:	0b665463          	bge	a2,s6,1eca0 <_svfiprintf_r+0xb74>
   1ebfc:	05513823          	sd	s5,80(sp)
   1ec00:	01000f13          	li	t5,16
   1ec04:	000b0a93          	mv	s5,s6
   1ec08:	00700393          	li	t2,7
   1ec0c:	01113c23          	sd	a7,24(sp)
   1ec10:	02513023          	sd	t0,32(sp)
   1ec14:	03f13423          	sd	t6,40(sp)
   1ec18:	03c13823          	sd	t3,48(sp)
   1ec1c:	05013c23          	sd	a6,88(sp)
   1ec20:	000e8b13          	mv	s6,t4
   1ec24:	00c0006f          	j	1ec30 <_svfiprintf_r+0xb04>
   1ec28:	ff0a8a9b          	addiw	s5,s5,-16
   1ec2c:	055f5a63          	bge	t5,s5,1ec80 <_svfiprintf_r+0xb54>
   1ec30:	0016869b          	addiw	a3,a3,1
   1ec34:	01070713          	addi	a4,a4,16
   1ec38:	0167b023          	sd	s6,0(a5)
   1ec3c:	01e7b423          	sd	t5,8(a5)
   1ec40:	08e13823          	sd	a4,144(sp)
   1ec44:	08d12423          	sw	a3,136(sp)
   1ec48:	01078793          	addi	a5,a5,16
   1ec4c:	fcd3dee3          	bge	t2,a3,1ec28 <_svfiprintf_r+0xafc>
   1ec50:	08010613          	addi	a2,sp,128
   1ec54:	00048593          	mv	a1,s1
   1ec58:	00098513          	mv	a0,s3
   1ec5c:	ad8ff0ef          	jal	ra,1df34 <__ssprint_r>
   1ec60:	fe051863          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1ec64:	01000f13          	li	t5,16
   1ec68:	ff0a8a9b          	addiw	s5,s5,-16
   1ec6c:	09013703          	ld	a4,144(sp)
   1ec70:	08812683          	lw	a3,136(sp)
   1ec74:	00090793          	mv	a5,s2
   1ec78:	00700393          	li	t2,7
   1ec7c:	fb5f4ae3          	blt	t5,s5,1ec30 <_svfiprintf_r+0xb04>
   1ec80:	000b0e93          	mv	t4,s6
   1ec84:	01813883          	ld	a7,24(sp)
   1ec88:	000a8b13          	mv	s6,s5
   1ec8c:	02013283          	ld	t0,32(sp)
   1ec90:	02813f83          	ld	t6,40(sp)
   1ec94:	03013e03          	ld	t3,48(sp)
   1ec98:	05813803          	ld	a6,88(sp)
   1ec9c:	05013a83          	ld	s5,80(sp)
   1eca0:	0016869b          	addiw	a3,a3,1
   1eca4:	01670733          	add	a4,a4,s6
   1eca8:	01d7b023          	sd	t4,0(a5)
   1ecac:	0167b423          	sd	s6,8(a5)
   1ecb0:	08e13823          	sd	a4,144(sp)
   1ecb4:	08d12423          	sw	a3,136(sp)
   1ecb8:	00700613          	li	a2,7
   1ecbc:	01078793          	addi	a5,a5,16
   1ecc0:	e4d65463          	bge	a2,a3,1e308 <_svfiprintf_r+0x1dc>
   1ecc4:	08010613          	addi	a2,sp,128
   1ecc8:	00048593          	mv	a1,s1
   1eccc:	00098513          	mv	a0,s3
   1ecd0:	05013823          	sd	a6,80(sp)
   1ecd4:	03c13823          	sd	t3,48(sp)
   1ecd8:	03f13423          	sd	t6,40(sp)
   1ecdc:	02513023          	sd	t0,32(sp)
   1ece0:	01113c23          	sd	a7,24(sp)
   1ece4:	a50ff0ef          	jal	ra,1df34 <__ssprint_r>
   1ece8:	f6051463          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1ecec:	09013703          	ld	a4,144(sp)
   1ecf0:	08812683          	lw	a3,136(sp)
   1ecf4:	05013803          	ld	a6,80(sp)
   1ecf8:	03013e03          	ld	t3,48(sp)
   1ecfc:	02813f83          	ld	t6,40(sp)
   1ed00:	02013283          	ld	t0,32(sp)
   1ed04:	01813883          	ld	a7,24(sp)
   1ed08:	00090793          	mv	a5,s2
   1ed0c:	dfcff06f          	j	1e308 <_svfiprintf_r+0x1dc>
   1ed10:	08010613          	addi	a2,sp,128
   1ed14:	00048593          	mv	a1,s1
   1ed18:	00098513          	mv	a0,s3
   1ed1c:	03013823          	sd	a6,48(sp)
   1ed20:	03c13423          	sd	t3,40(sp)
   1ed24:	03f13023          	sd	t6,32(sp)
   1ed28:	01113c23          	sd	a7,24(sp)
   1ed2c:	a08ff0ef          	jal	ra,1df34 <__ssprint_r>
   1ed30:	f2051063          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1ed34:	09013703          	ld	a4,144(sp)
   1ed38:	08812683          	lw	a3,136(sp)
   1ed3c:	03013803          	ld	a6,48(sp)
   1ed40:	02813e03          	ld	t3,40(sp)
   1ed44:	02013f83          	ld	t6,32(sp)
   1ed48:	01813883          	ld	a7,24(sp)
   1ed4c:	00090793          	mv	a5,s2
   1ed50:	e1cff06f          	j	1e36c <_svfiprintf_r+0x240>
   1ed54:	00023eb7          	lui	t4,0x23
   1ed58:	01000613          	li	a2,16
   1ed5c:	08812683          	lw	a3,136(sp)
   1ed60:	ab0e8e93          	addi	t4,t4,-1360 # 22ab0 <blanks.1>
   1ed64:	09565063          	bge	a2,s5,1ede4 <_svfiprintf_r+0xcb8>
   1ed68:	03813023          	sd	s8,32(sp)
   1ed6c:	01000b13          	li	s6,16
   1ed70:	00700b93          	li	s7,7
   1ed74:	000e0d13          	mv	s10,t3
   1ed78:	01013c23          	sd	a6,24(sp)
   1ed7c:	000e8c13          	mv	s8,t4
   1ed80:	00c0006f          	j	1ed8c <_svfiprintf_r+0xc60>
   1ed84:	ff0a8a9b          	addiw	s5,s5,-16
   1ed88:	055b5663          	bge	s6,s5,1edd4 <_svfiprintf_r+0xca8>
   1ed8c:	0016869b          	addiw	a3,a3,1
   1ed90:	01070713          	addi	a4,a4,16
   1ed94:	0187b023          	sd	s8,0(a5)
   1ed98:	0167b423          	sd	s6,8(a5)
   1ed9c:	08e13823          	sd	a4,144(sp)
   1eda0:	08d12423          	sw	a3,136(sp)
   1eda4:	01078793          	addi	a5,a5,16
   1eda8:	fcdbdee3          	bge	s7,a3,1ed84 <_svfiprintf_r+0xc58>
   1edac:	08010613          	addi	a2,sp,128
   1edb0:	00048593          	mv	a1,s1
   1edb4:	00098513          	mv	a0,s3
   1edb8:	97cff0ef          	jal	ra,1df34 <__ssprint_r>
   1edbc:	e8051a63          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1edc0:	ff0a8a9b          	addiw	s5,s5,-16
   1edc4:	09013703          	ld	a4,144(sp)
   1edc8:	08812683          	lw	a3,136(sp)
   1edcc:	00090793          	mv	a5,s2
   1edd0:	fb5b4ee3          	blt	s6,s5,1ed8c <_svfiprintf_r+0xc60>
   1edd4:	000c0e93          	mv	t4,s8
   1edd8:	01813803          	ld	a6,24(sp)
   1eddc:	02013c03          	ld	s8,32(sp)
   1ede0:	000d0e13          	mv	t3,s10
   1ede4:	0016861b          	addiw	a2,a3,1
   1ede8:	01570733          	add	a4,a4,s5
   1edec:	01d7b023          	sd	t4,0(a5)
   1edf0:	0157b423          	sd	s5,8(a5)
   1edf4:	08e13823          	sd	a4,144(sp)
   1edf8:	08c12423          	sw	a2,136(sp)
   1edfc:	00700793          	li	a5,7
   1ee00:	dac7d863          	bge	a5,a2,1e3b0 <_svfiprintf_r+0x284>
   1ee04:	08010613          	addi	a2,sp,128
   1ee08:	00048593          	mv	a1,s1
   1ee0c:	00098513          	mv	a0,s3
   1ee10:	03013023          	sd	a6,32(sp)
   1ee14:	01c13c23          	sd	t3,24(sp)
   1ee18:	91cff0ef          	jal	ra,1df34 <__ssprint_r>
   1ee1c:	e2051a63          	bnez	a0,1e450 <_svfiprintf_r+0x324>
   1ee20:	09013703          	ld	a4,144(sp)
   1ee24:	02013803          	ld	a6,32(sp)
   1ee28:	01813e03          	ld	t3,24(sp)
   1ee2c:	d84ff06f          	j	1e3b0 <_svfiprintf_r+0x284>
   1ee30:	41758d3b          	subw	s10,a1,s7
   1ee34:	000d0d9b          	sext.w	s11,s10
   1ee38:	895d54e3          	bge	s10,s5,1e6c0 <_svfiprintf_r+0x594>
   1ee3c:	000a8d9b          	sext.w	s11,s5
   1ee40:	881ff06f          	j	1e6c0 <_svfiprintf_r+0x594>
   1ee44:	00000d93          	li	s11,0
   1ee48:	00000d13          	li	s10,0
   1ee4c:	0fc10b93          	addi	s7,sp,252
   1ee50:	871ff06f          	j	1e6c0 <_svfiprintf_r+0x594>
   1ee54:	05313c23          	sd	s3,88(sp)
   1ee58:	04013983          	ld	s3,64(sp)
   1ee5c:	0fc10593          	addi	a1,sp,252
   1ee60:	03513423          	sd	s5,40(sp)
   1ee64:	06913023          	sd	s1,96(sp)
   1ee68:	4008fd13          	andi	s10,a7,1024
   1ee6c:	00000b13          	li	s6,0
   1ee70:	00058b93          	mv	s7,a1
   1ee74:	00900c13          	li	s8,9
   1ee78:	01113c23          	sd	a7,24(sp)
   1ee7c:	03c13023          	sd	t3,32(sp)
   1ee80:	02f13823          	sd	a5,48(sp)
   1ee84:	04e13823          	sd	a4,80(sp)
   1ee88:	00060a93          	mv	s5,a2
   1ee8c:	00058493          	mv	s1,a1
   1ee90:	07013423          	sd	a6,104(sp)
   1ee94:	00a00593          	li	a1,10
   1ee98:	000d8513          	mv	a0,s11
   1ee9c:	585020ef          	jal	ra,21c20 <__umoddi3>
   1eea0:	0305051b          	addiw	a0,a0,48
   1eea4:	fea48fa3          	sb	a0,-1(s1)
   1eea8:	001b0b1b          	addiw	s6,s6,1
   1eeac:	fff48493          	addi	s1,s1,-1
   1eeb0:	000d0663          	beqz	s10,1eebc <_svfiprintf_r+0xd90>
   1eeb4:	0009c703          	lbu	a4,0(s3)
   1eeb8:	01670e63          	beq	a4,s6,1eed4 <_svfiprintf_r+0xda8>
   1eebc:	00a00593          	li	a1,10
   1eec0:	000d8513          	mv	a0,s11
   1eec4:	515020ef          	jal	ra,21bd8 <__hidden___udivdi3>
   1eec8:	01bc7c63          	bgeu	s8,s11,1eee0 <_svfiprintf_r+0xdb4>
   1eecc:	00050d93          	mv	s11,a0
   1eed0:	fc5ff06f          	j	1ee94 <_svfiprintf_r+0xd68>
   1eed4:	0ff00793          	li	a5,255
   1eed8:	fef702e3          	beq	a4,a5,1eebc <_svfiprintf_r+0xd90>
   1eedc:	1dbc6463          	bltu	s8,s11,1f0a4 <_svfiprintf_r+0xf78>
   1eee0:	000a8613          	mv	a2,s5
   1eee4:	02813a83          	ld	s5,40(sp)
   1eee8:	000b8593          	mv	a1,s7
   1eeec:	00048b93          	mv	s7,s1
   1eef0:	05313023          	sd	s3,64(sp)
   1eef4:	41758d3b          	subw	s10,a1,s7
   1eef8:	01813883          	ld	a7,24(sp)
   1eefc:	02013e03          	ld	t3,32(sp)
   1ef00:	03013783          	ld	a5,48(sp)
   1ef04:	05013703          	ld	a4,80(sp)
   1ef08:	05813983          	ld	s3,88(sp)
   1ef0c:	06813803          	ld	a6,104(sp)
   1ef10:	06013483          	ld	s1,96(sp)
   1ef14:	000d0d9b          	sext.w	s11,s10
   1ef18:	175d4063          	blt	s10,s5,1f078 <_svfiprintf_r+0xf4c>
   1ef1c:	00060c13          	mv	s8,a2
   1ef20:	fa0ff06f          	j	1e6c0 <_svfiprintf_r+0x594>
   1ef24:	00000d93          	li	s11,0
   1ef28:	0fc10b93          	addi	s7,sp,252
   1ef2c:	f94ff06f          	j	1e6c0 <_svfiprintf_r+0x594>
   1ef30:	00084683          	lbu	a3,0(a6)
   1ef34:	b2060263          	beqz	a2,1e258 <_svfiprintf_r+0x12c>
   1ef38:	00064603          	lbu	a2,0(a2)
   1ef3c:	b0060e63          	beqz	a2,1e258 <_svfiprintf_r+0x12c>
   1ef40:	400b6893          	ori	a7,s6,1024
   1ef44:	00088b1b          	sext.w	s6,a7
   1ef48:	b10ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1ef4c:	040d7593          	andi	a1,s10,64
   1ef50:	000c2683          	lw	a3,0(s8)
   1ef54:	1e058663          	beqz	a1,1f140 <_svfiprintf_r+0x1014>
   1ef58:	03069d93          	slli	s11,a3,0x30
   1ef5c:	030ddd93          	srli	s11,s11,0x30
   1ef60:	fdcff06f          	j	1e73c <_svfiprintf_r+0x610>
   1ef64:	0406f593          	andi	a1,a3,64
   1ef68:	000c2603          	lw	a2,0(s8)
   1ef6c:	1e058663          	beqz	a1,1f158 <_svfiprintf_r+0x102c>
   1ef70:	03061613          	slli	a2,a2,0x30
   1ef74:	03065613          	srli	a2,a2,0x30
   1ef78:	efcff06f          	j	1e674 <_svfiprintf_r+0x548>
   1ef7c:	000a8d9b          	sext.w	s11,s5
   1ef80:	00050b93          	mv	s7,a0
   1ef84:	f3cff06f          	j	1e6c0 <_svfiprintf_r+0x594>
   1ef88:	000d0e13          	mv	t3,s10
   1ef8c:	000d8793          	mv	a5,s11
   1ef90:	000b0d13          	mv	s10,s6
   1ef94:	f90ff06f          	j	1e724 <_svfiprintf_r+0x5f8>
   1ef98:	000d0e13          	mv	t3,s10
   1ef9c:	000d8793          	mv	a5,s11
   1efa0:	000b0693          	mv	a3,s6
   1efa4:	eb8ff06f          	j	1e65c <_svfiprintf_r+0x530>
   1efa8:	00022637          	lui	a2,0x22
   1efac:	d0860613          	addi	a2,a2,-760 # 21d08 <__clzdi2+0x78>
   1efb0:	000b0893          	mv	a7,s6
   1efb4:	00c13823          	sd	a2,16(sp)
   1efb8:	0208f613          	andi	a2,a7,32
   1efbc:	000d0e13          	mv	t3,s10
   1efc0:	000d8793          	mv	a5,s11
   1efc4:	008c0593          	addi	a1,s8,8
   1efc8:	06061a63          	bnez	a2,1f03c <_svfiprintf_r+0xf10>
   1efcc:	0108f613          	andi	a2,a7,16
   1efd0:	06061663          	bnez	a2,1f03c <_svfiprintf_r+0xf10>
   1efd4:	0408f513          	andi	a0,a7,64
   1efd8:	000c2603          	lw	a2,0(s8)
   1efdc:	18050663          	beqz	a0,1f168 <_svfiprintf_r+0x103c>
   1efe0:	03061613          	slli	a2,a2,0x30
   1efe4:	03065613          	srli	a2,a2,0x30
   1efe8:	0018f513          	andi	a0,a7,1
   1efec:	00050e63          	beqz	a0,1f008 <_svfiprintf_r+0xedc>
   1eff0:	00060c63          	beqz	a2,1f008 <_svfiprintf_r+0xedc>
   1eff4:	0028e893          	ori	a7,a7,2
   1eff8:	03000513          	li	a0,48
   1effc:	06a10c23          	sb	a0,120(sp)
   1f000:	06d10ca3          	sb	a3,121(sp)
   1f004:	0008889b          	sext.w	a7,a7
   1f008:	bff8f893          	andi	a7,a7,-1025
   1f00c:	0008889b          	sext.w	a7,a7
   1f010:	00058c13          	mv	s8,a1
   1f014:	8d9ff06f          	j	1e8ec <_svfiprintf_r+0x7c0>
   1f018:	00022637          	lui	a2,0x22
   1f01c:	d2060613          	addi	a2,a2,-736 # 21d20 <__clzdi2+0x90>
   1f020:	000b0893          	mv	a7,s6
   1f024:	00c13823          	sd	a2,16(sp)
   1f028:	0208f613          	andi	a2,a7,32
   1f02c:	000d0e13          	mv	t3,s10
   1f030:	000d8793          	mv	a5,s11
   1f034:	008c0593          	addi	a1,s8,8
   1f038:	f8060ae3          	beqz	a2,1efcc <_svfiprintf_r+0xea0>
   1f03c:	000c3603          	ld	a2,0(s8)
   1f040:	fa9ff06f          	j	1efe8 <_svfiprintf_r+0xebc>
   1f044:	000b8513          	mv	a0,s7
   1f048:	c59f90ef          	jal	ra,18ca0 <strlen>
   1f04c:	00050d1b          	sext.w	s10,a0
   1f050:	fffd4d93          	not	s11,s10
   1f054:	43fddd93          	srai	s11,s11,0x3f
   1f058:	01813883          	ld	a7,24(sp)
   1f05c:	02013e03          	ld	t3,32(sp)
   1f060:	02813783          	ld	a5,40(sp)
   1f064:	03013703          	ld	a4,48(sp)
   1f068:	05013803          	ld	a6,80(sp)
   1f06c:	01adfdb3          	and	s11,s11,s10
   1f070:	00000a93          	li	s5,0
   1f074:	e4cff06f          	j	1e6c0 <_svfiprintf_r+0x594>
   1f078:	000a8d9b          	sext.w	s11,s5
   1f07c:	00060c13          	mv	s8,a2
   1f080:	e40ff06f          	j	1e6c0 <_svfiprintf_r+0x594>
   1f084:	04000593          	li	a1,64
   1f088:	a49f70ef          	jal	ra,16ad0 <_malloc_r>
   1f08c:	00a4b023          	sd	a0,0(s1)
   1f090:	00a4bc23          	sd	a0,24(s1)
   1f094:	14050a63          	beqz	a0,1f1e8 <_svfiprintf_r+0x10bc>
   1f098:	04000793          	li	a5,64
   1f09c:	02f4a023          	sw	a5,32(s1)
   1f0a0:	8e8ff06f          	j	1e188 <_svfiprintf_r+0x5c>
   1f0a4:	03813783          	ld	a5,56(sp)
   1f0a8:	04813583          	ld	a1,72(sp)
   1f0ac:	00000b13          	li	s6,0
   1f0b0:	40f484b3          	sub	s1,s1,a5
   1f0b4:	00078613          	mv	a2,a5
   1f0b8:	00048513          	mv	a0,s1
   1f0bc:	cadf90ef          	jal	ra,18d68 <strncpy>
   1f0c0:	0019c703          	lbu	a4,1(s3)
   1f0c4:	000d8513          	mv	a0,s11
   1f0c8:	00a00593          	li	a1,10
   1f0cc:	00e03733          	snez	a4,a4
   1f0d0:	00e989b3          	add	s3,s3,a4
   1f0d4:	305020ef          	jal	ra,21bd8 <__hidden___udivdi3>
   1f0d8:	00050d93          	mv	s11,a0
   1f0dc:	db9ff06f          	j	1ee94 <_svfiprintf_r+0xd68>
   1f0e0:	00068893          	mv	a7,a3
   1f0e4:	00000693          	li	a3,0
   1f0e8:	e8068863          	beqz	a3,1e778 <_svfiprintf_r+0x64c>
   1f0ec:	ac5ff06f          	j	1ebb0 <_svfiprintf_r+0xa84>
   1f0f0:	200b6893          	ori	a7,s6,512
   1f0f4:	00184683          	lbu	a3,1(a6)
   1f0f8:	00088b1b          	sext.w	s6,a7
   1f0fc:	00180813          	addi	a6,a6,1
   1f100:	958ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1f104:	020b6893          	ori	a7,s6,32
   1f108:	00184683          	lbu	a3,1(a6)
   1f10c:	00088b1b          	sext.w	s6,a7
   1f110:	00180813          	addi	a6,a6,1
   1f114:	944ff06f          	j	1e258 <_svfiprintf_r+0x12c>
   1f118:	00600693          	li	a3,6
   1f11c:	000a8d1b          	sext.w	s10,s5
   1f120:	0156f463          	bgeu	a3,s5,1f128 <_svfiprintf_r+0xffc>
   1f124:	00600d13          	li	s10,6
   1f128:	00022bb7          	lui	s7,0x22
   1f12c:	000d0d93          	mv	s11,s10
   1f130:	d38b8b93          	addi	s7,s7,-712 # 21d38 <__clzdi2+0xa8>
   1f134:	9b0ff06f          	j	1e2e4 <_svfiprintf_r+0x1b8>
   1f138:	00000613          	li	a2,0
   1f13c:	a75ff06f          	j	1ebb0 <_svfiprintf_r+0xa84>
   1f140:	200d7593          	andi	a1,s10,512
   1f144:	0ff6fd93          	zext.b	s11,a3
   1f148:	de059a63          	bnez	a1,1e73c <_svfiprintf_r+0x610>
   1f14c:	02069d93          	slli	s11,a3,0x20
   1f150:	020ddd93          	srli	s11,s11,0x20
   1f154:	de8ff06f          	j	1e73c <_svfiprintf_r+0x610>
   1f158:	2006f593          	andi	a1,a3,512
   1f15c:	04058c63          	beqz	a1,1f1b4 <_svfiprintf_r+0x1088>
   1f160:	0ff67613          	zext.b	a2,a2
   1f164:	d10ff06f          	j	1e674 <_svfiprintf_r+0x548>
   1f168:	2008f513          	andi	a0,a7,512
   1f16c:	02050e63          	beqz	a0,1f1a8 <_svfiprintf_r+0x107c>
   1f170:	0ff67613          	zext.b	a2,a2
   1f174:	e75ff06f          	j	1efe8 <_svfiprintf_r+0xebc>
   1f178:	2008f593          	andi	a1,a7,512
   1f17c:	02058063          	beqz	a1,1f19c <_svfiprintf_r+0x1070>
   1f180:	01869d9b          	slliw	s11,a3,0x18
   1f184:	418ddd9b          	sraiw	s11,s11,0x18
   1f188:	000d8593          	mv	a1,s11
   1f18c:	c3cff06f          	j	1e5c8 <_svfiprintf_r+0x49c>
   1f190:	01961023          	sh	s9,0(a2)
   1f194:	008c0c13          	addi	s8,s8,8
   1f198:	83cff06f          	j	1e1d4 <_svfiprintf_r+0xa8>
   1f19c:	00068d93          	mv	s11,a3
   1f1a0:	00068593          	mv	a1,a3
   1f1a4:	c24ff06f          	j	1e5c8 <_svfiprintf_r+0x49c>
   1f1a8:	02061613          	slli	a2,a2,0x20
   1f1ac:	02065613          	srli	a2,a2,0x20
   1f1b0:	e39ff06f          	j	1efe8 <_svfiprintf_r+0xebc>
   1f1b4:	02061613          	slli	a2,a2,0x20
   1f1b8:	02065613          	srli	a2,a2,0x20
   1f1bc:	cb8ff06f          	j	1e674 <_svfiprintf_r+0x548>
   1f1c0:	000a8d93          	mv	s11,s5
   1f1c4:	000a8d13          	mv	s10,s5
   1f1c8:	00000a93          	li	s5,0
   1f1cc:	cf4ff06f          	j	1e6c0 <_svfiprintf_r+0x594>
   1f1d0:	00060c13          	mv	s8,a2
   1f1d4:	03000693          	li	a3,48
   1f1d8:	c58ff06f          	j	1e630 <_svfiprintf_r+0x504>
   1f1dc:	01962023          	sw	s9,0(a2)
   1f1e0:	008c0c13          	addi	s8,s8,8
   1f1e4:	ff1fe06f          	j	1e1d4 <_svfiprintf_r+0xa8>
   1f1e8:	00c00793          	li	a5,12
   1f1ec:	00f9a023          	sw	a5,0(s3)
   1f1f0:	fff00a93          	li	s5,-1
   1f1f4:	a6cff06f          	j	1e460 <_svfiprintf_r+0x334>
   1f1f8:	000c2683          	lw	a3,0(s8)
   1f1fc:	008c0c13          	addi	s8,s8,8
   1f200:	00068a9b          	sext.w	s5,a3
   1f204:	0006d463          	bgez	a3,1f20c <_svfiprintf_r+0x10e0>
   1f208:	fff00a93          	li	s5,-1
   1f20c:	00184683          	lbu	a3,1(a6)
   1f210:	00060813          	mv	a6,a2
   1f214:	844ff06f          	j	1e258 <_svfiprintf_r+0x12c>

000000000001f218 <__swbuf_r>:
   1f218:	fd010113          	addi	sp,sp,-48
   1f21c:	02813023          	sd	s0,32(sp)
   1f220:	00913c23          	sd	s1,24(sp)
   1f224:	01213823          	sd	s2,16(sp)
   1f228:	02113423          	sd	ra,40(sp)
   1f22c:	01313423          	sd	s3,8(sp)
   1f230:	00050913          	mv	s2,a0
   1f234:	00058493          	mv	s1,a1
   1f238:	00060413          	mv	s0,a2
   1f23c:	00050663          	beqz	a0,1f248 <__swbuf_r+0x30>
   1f240:	05052783          	lw	a5,80(a0)
   1f244:	14078063          	beqz	a5,1f384 <__swbuf_r+0x16c>
   1f248:	02842783          	lw	a5,40(s0)
   1f24c:	01041703          	lh	a4,16(s0)
   1f250:	00f42623          	sw	a5,12(s0)
   1f254:	00877793          	andi	a5,a4,8
   1f258:	08078263          	beqz	a5,1f2dc <__swbuf_r+0xc4>
   1f25c:	01843783          	ld	a5,24(s0)
   1f260:	06078e63          	beqz	a5,1f2dc <__swbuf_r+0xc4>
   1f264:	0ff4f993          	zext.b	s3,s1
   1f268:	03271693          	slli	a3,a4,0x32
   1f26c:	00098493          	mv	s1,s3
   1f270:	0806da63          	bgez	a3,1f304 <__swbuf_r+0xec>
   1f274:	00043703          	ld	a4,0(s0)
   1f278:	02042683          	lw	a3,32(s0)
   1f27c:	40f707bb          	subw	a5,a4,a5
   1f280:	0ad7da63          	bge	a5,a3,1f334 <__swbuf_r+0x11c>
   1f284:	00c42683          	lw	a3,12(s0)
   1f288:	00170613          	addi	a2,a4,1
   1f28c:	00c43023          	sd	a2,0(s0)
   1f290:	fff6869b          	addiw	a3,a3,-1
   1f294:	00d42623          	sw	a3,12(s0)
   1f298:	01370023          	sb	s3,0(a4)
   1f29c:	02042703          	lw	a4,32(s0)
   1f2a0:	0017879b          	addiw	a5,a5,1
   1f2a4:	0cf70463          	beq	a4,a5,1f36c <__swbuf_r+0x154>
   1f2a8:	01045783          	lhu	a5,16(s0)
   1f2ac:	0017f793          	andi	a5,a5,1
   1f2b0:	00078663          	beqz	a5,1f2bc <__swbuf_r+0xa4>
   1f2b4:	00a00793          	li	a5,10
   1f2b8:	0af48a63          	beq	s1,a5,1f36c <__swbuf_r+0x154>
   1f2bc:	02813083          	ld	ra,40(sp)
   1f2c0:	02013403          	ld	s0,32(sp)
   1f2c4:	01013903          	ld	s2,16(sp)
   1f2c8:	00813983          	ld	s3,8(sp)
   1f2cc:	00048513          	mv	a0,s1
   1f2d0:	01813483          	ld	s1,24(sp)
   1f2d4:	03010113          	addi	sp,sp,48
   1f2d8:	00008067          	ret
   1f2dc:	00040593          	mv	a1,s0
   1f2e0:	00090513          	mv	a0,s2
   1f2e4:	875f30ef          	jal	ra,12b58 <__swsetup_r>
   1f2e8:	08051a63          	bnez	a0,1f37c <__swbuf_r+0x164>
   1f2ec:	01041703          	lh	a4,16(s0)
   1f2f0:	0ff4f993          	zext.b	s3,s1
   1f2f4:	01843783          	ld	a5,24(s0)
   1f2f8:	03271693          	slli	a3,a4,0x32
   1f2fc:	00098493          	mv	s1,s3
   1f300:	f606cae3          	bltz	a3,1f274 <__swbuf_r+0x5c>
   1f304:	0ac42683          	lw	a3,172(s0)
   1f308:	00002637          	lui	a2,0x2
   1f30c:	00c76733          	or	a4,a4,a2
   1f310:	ffffe637          	lui	a2,0xffffe
   1f314:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd91f7>
   1f318:	00c6f6b3          	and	a3,a3,a2
   1f31c:	00e41823          	sh	a4,16(s0)
   1f320:	00043703          	ld	a4,0(s0)
   1f324:	0ad42623          	sw	a3,172(s0)
   1f328:	02042683          	lw	a3,32(s0)
   1f32c:	40f707bb          	subw	a5,a4,a5
   1f330:	f4d7cae3          	blt	a5,a3,1f284 <__swbuf_r+0x6c>
   1f334:	00040593          	mv	a1,s0
   1f338:	00090513          	mv	a0,s2
   1f33c:	cd1f30ef          	jal	ra,1300c <_fflush_r>
   1f340:	02051e63          	bnez	a0,1f37c <__swbuf_r+0x164>
   1f344:	00043703          	ld	a4,0(s0)
   1f348:	00c42683          	lw	a3,12(s0)
   1f34c:	00100793          	li	a5,1
   1f350:	00170613          	addi	a2,a4,1
   1f354:	fff6869b          	addiw	a3,a3,-1
   1f358:	00c43023          	sd	a2,0(s0)
   1f35c:	00d42623          	sw	a3,12(s0)
   1f360:	01370023          	sb	s3,0(a4)
   1f364:	02042703          	lw	a4,32(s0)
   1f368:	f4f710e3          	bne	a4,a5,1f2a8 <__swbuf_r+0x90>
   1f36c:	00040593          	mv	a1,s0
   1f370:	00090513          	mv	a0,s2
   1f374:	c99f30ef          	jal	ra,1300c <_fflush_r>
   1f378:	f40502e3          	beqz	a0,1f2bc <__swbuf_r+0xa4>
   1f37c:	fff00493          	li	s1,-1
   1f380:	f3dff06f          	j	1f2bc <__swbuf_r+0xa4>
   1f384:	8b4f40ef          	jal	ra,13438 <__sinit>
   1f388:	ec1ff06f          	j	1f248 <__swbuf_r+0x30>

000000000001f38c <__swbuf>:
   1f38c:	00050793          	mv	a5,a0
   1f390:	7581b503          	ld	a0,1880(gp) # 24d60 <_impure_ptr>
   1f394:	00058613          	mv	a2,a1
   1f398:	00078593          	mv	a1,a5
   1f39c:	e7dff06f          	j	1f218 <__swbuf_r>

000000000001f3a0 <_wcrtomb_r>:
   1f3a0:	fd010113          	addi	sp,sp,-48
   1f3a4:	02813023          	sd	s0,32(sp)
   1f3a8:	00913c23          	sd	s1,24(sp)
   1f3ac:	02113423          	sd	ra,40(sp)
   1f3b0:	e401b783          	ld	a5,-448(gp) # 24448 <__global_locale+0xe0>
   1f3b4:	00050413          	mv	s0,a0
   1f3b8:	00068493          	mv	s1,a3
   1f3bc:	02058263          	beqz	a1,1f3e0 <_wcrtomb_r+0x40>
   1f3c0:	000780e7          	jalr	a5
   1f3c4:	fff00793          	li	a5,-1
   1f3c8:	02f50663          	beq	a0,a5,1f3f4 <_wcrtomb_r+0x54>
   1f3cc:	02813083          	ld	ra,40(sp)
   1f3d0:	02013403          	ld	s0,32(sp)
   1f3d4:	01813483          	ld	s1,24(sp)
   1f3d8:	03010113          	addi	sp,sp,48
   1f3dc:	00008067          	ret
   1f3e0:	00000613          	li	a2,0
   1f3e4:	00010593          	mv	a1,sp
   1f3e8:	000780e7          	jalr	a5
   1f3ec:	fff00793          	li	a5,-1
   1f3f0:	fcf51ee3          	bne	a0,a5,1f3cc <_wcrtomb_r+0x2c>
   1f3f4:	0004a023          	sw	zero,0(s1)
   1f3f8:	08a00793          	li	a5,138
   1f3fc:	02813083          	ld	ra,40(sp)
   1f400:	00f42023          	sw	a5,0(s0)
   1f404:	02013403          	ld	s0,32(sp)
   1f408:	01813483          	ld	s1,24(sp)
   1f40c:	03010113          	addi	sp,sp,48
   1f410:	00008067          	ret

000000000001f414 <wcrtomb>:
   1f414:	fd010113          	addi	sp,sp,-48
   1f418:	02813023          	sd	s0,32(sp)
   1f41c:	00913c23          	sd	s1,24(sp)
   1f420:	02113423          	sd	ra,40(sp)
   1f424:	7581b483          	ld	s1,1880(gp) # 24d60 <_impure_ptr>
   1f428:	e401b783          	ld	a5,-448(gp) # 24448 <__global_locale+0xe0>
   1f42c:	00060413          	mv	s0,a2
   1f430:	02050a63          	beqz	a0,1f464 <wcrtomb+0x50>
   1f434:	00058613          	mv	a2,a1
   1f438:	00040693          	mv	a3,s0
   1f43c:	00050593          	mv	a1,a0
   1f440:	00048513          	mv	a0,s1
   1f444:	000780e7          	jalr	a5
   1f448:	fff00793          	li	a5,-1
   1f44c:	02f50a63          	beq	a0,a5,1f480 <wcrtomb+0x6c>
   1f450:	02813083          	ld	ra,40(sp)
   1f454:	02013403          	ld	s0,32(sp)
   1f458:	01813483          	ld	s1,24(sp)
   1f45c:	03010113          	addi	sp,sp,48
   1f460:	00008067          	ret
   1f464:	00060693          	mv	a3,a2
   1f468:	00010593          	mv	a1,sp
   1f46c:	00000613          	li	a2,0
   1f470:	00048513          	mv	a0,s1
   1f474:	000780e7          	jalr	a5
   1f478:	fff00793          	li	a5,-1
   1f47c:	fcf51ae3          	bne	a0,a5,1f450 <wcrtomb+0x3c>
   1f480:	00042023          	sw	zero,0(s0)
   1f484:	02813083          	ld	ra,40(sp)
   1f488:	02013403          	ld	s0,32(sp)
   1f48c:	08a00793          	li	a5,138
   1f490:	00f4a023          	sw	a5,0(s1)
   1f494:	01813483          	ld	s1,24(sp)
   1f498:	03010113          	addi	sp,sp,48
   1f49c:	00008067          	ret

000000000001f4a0 <abort>:
   1f4a0:	ff010113          	addi	sp,sp,-16
   1f4a4:	00600513          	li	a0,6
   1f4a8:	00113423          	sd	ra,8(sp)
   1f4ac:	344000ef          	jal	ra,1f7f0 <raise>
   1f4b0:	00100513          	li	a0,1
   1f4b4:	674000ef          	jal	ra,1fb28 <_exit>

000000000001f4b8 <__register_exitproc>:
   1f4b8:	7481b703          	ld	a4,1864(gp) # 24d50 <_global_impure_ptr>
   1f4bc:	1f873783          	ld	a5,504(a4)
   1f4c0:	06078063          	beqz	a5,1f520 <__register_exitproc+0x68>
   1f4c4:	0087a703          	lw	a4,8(a5)
   1f4c8:	01f00813          	li	a6,31
   1f4cc:	08e84663          	blt	a6,a4,1f558 <__register_exitproc+0xa0>
   1f4d0:	02050863          	beqz	a0,1f500 <__register_exitproc+0x48>
   1f4d4:	00371813          	slli	a6,a4,0x3
   1f4d8:	01078833          	add	a6,a5,a6
   1f4dc:	10c83823          	sd	a2,272(a6)
   1f4e0:	3107a883          	lw	a7,784(a5)
   1f4e4:	00100613          	li	a2,1
   1f4e8:	00e6163b          	sllw	a2,a2,a4
   1f4ec:	00c8e8b3          	or	a7,a7,a2
   1f4f0:	3117a823          	sw	a7,784(a5)
   1f4f4:	20d83823          	sd	a3,528(a6)
   1f4f8:	00200693          	li	a3,2
   1f4fc:	02d50863          	beq	a0,a3,1f52c <__register_exitproc+0x74>
   1f500:	00270693          	addi	a3,a4,2
   1f504:	00369693          	slli	a3,a3,0x3
   1f508:	0017071b          	addiw	a4,a4,1
   1f50c:	00e7a423          	sw	a4,8(a5)
   1f510:	00d787b3          	add	a5,a5,a3
   1f514:	00b7b023          	sd	a1,0(a5)
   1f518:	00000513          	li	a0,0
   1f51c:	00008067          	ret
   1f520:	20070793          	addi	a5,a4,512
   1f524:	1ef73c23          	sd	a5,504(a4)
   1f528:	f9dff06f          	j	1f4c4 <__register_exitproc+0xc>
   1f52c:	3147a683          	lw	a3,788(a5)
   1f530:	00000513          	li	a0,0
   1f534:	00c6e6b3          	or	a3,a3,a2
   1f538:	30d7aa23          	sw	a3,788(a5)
   1f53c:	00270693          	addi	a3,a4,2
   1f540:	00369693          	slli	a3,a3,0x3
   1f544:	0017071b          	addiw	a4,a4,1
   1f548:	00e7a423          	sw	a4,8(a5)
   1f54c:	00d787b3          	add	a5,a5,a3
   1f550:	00b7b023          	sd	a1,0(a5)
   1f554:	00008067          	ret
   1f558:	fff00513          	li	a0,-1
   1f55c:	00008067          	ret

000000000001f560 <_init_signal_r>:
   1f560:	51853783          	ld	a5,1304(a0)
   1f564:	00078663          	beqz	a5,1f570 <_init_signal_r+0x10>
   1f568:	00000513          	li	a0,0
   1f56c:	00008067          	ret
   1f570:	ff010113          	addi	sp,sp,-16
   1f574:	10000593          	li	a1,256
   1f578:	00813023          	sd	s0,0(sp)
   1f57c:	00113423          	sd	ra,8(sp)
   1f580:	00050413          	mv	s0,a0
   1f584:	d4cf70ef          	jal	ra,16ad0 <_malloc_r>
   1f588:	50a43c23          	sd	a0,1304(s0)
   1f58c:	02050463          	beqz	a0,1f5b4 <_init_signal_r+0x54>
   1f590:	10050793          	addi	a5,a0,256
   1f594:	00053023          	sd	zero,0(a0)
   1f598:	00850513          	addi	a0,a0,8
   1f59c:	fef51ce3          	bne	a0,a5,1f594 <_init_signal_r+0x34>
   1f5a0:	00000513          	li	a0,0
   1f5a4:	00813083          	ld	ra,8(sp)
   1f5a8:	00013403          	ld	s0,0(sp)
   1f5ac:	01010113          	addi	sp,sp,16
   1f5b0:	00008067          	ret
   1f5b4:	fff00513          	li	a0,-1
   1f5b8:	fedff06f          	j	1f5a4 <_init_signal_r+0x44>

000000000001f5bc <_signal_r>:
   1f5bc:	fd010113          	addi	sp,sp,-48
   1f5c0:	00913c23          	sd	s1,24(sp)
   1f5c4:	02113423          	sd	ra,40(sp)
   1f5c8:	02813023          	sd	s0,32(sp)
   1f5cc:	01f00793          	li	a5,31
   1f5d0:	00050493          	mv	s1,a0
   1f5d4:	02b7ea63          	bltu	a5,a1,1f608 <_signal_r+0x4c>
   1f5d8:	51853783          	ld	a5,1304(a0)
   1f5dc:	00058413          	mv	s0,a1
   1f5e0:	02078c63          	beqz	a5,1f618 <_signal_r+0x5c>
   1f5e4:	00341413          	slli	s0,s0,0x3
   1f5e8:	008787b3          	add	a5,a5,s0
   1f5ec:	0007b503          	ld	a0,0(a5)
   1f5f0:	00c7b023          	sd	a2,0(a5)
   1f5f4:	02813083          	ld	ra,40(sp)
   1f5f8:	02013403          	ld	s0,32(sp)
   1f5fc:	01813483          	ld	s1,24(sp)
   1f600:	03010113          	addi	sp,sp,48
   1f604:	00008067          	ret
   1f608:	01600793          	li	a5,22
   1f60c:	00f52023          	sw	a5,0(a0)
   1f610:	fff00513          	li	a0,-1
   1f614:	fe1ff06f          	j	1f5f4 <_signal_r+0x38>
   1f618:	10000593          	li	a1,256
   1f61c:	00c13423          	sd	a2,8(sp)
   1f620:	cb0f70ef          	jal	ra,16ad0 <_malloc_r>
   1f624:	50a4bc23          	sd	a0,1304(s1)
   1f628:	00813603          	ld	a2,8(sp)
   1f62c:	00050793          	mv	a5,a0
   1f630:	00050713          	mv	a4,a0
   1f634:	10050693          	addi	a3,a0,256
   1f638:	fc050ce3          	beqz	a0,1f610 <_signal_r+0x54>
   1f63c:	00073023          	sd	zero,0(a4)
   1f640:	00870713          	addi	a4,a4,8
   1f644:	fed71ce3          	bne	a4,a3,1f63c <_signal_r+0x80>
   1f648:	f9dff06f          	j	1f5e4 <_signal_r+0x28>

000000000001f64c <_raise_r>:
   1f64c:	fe010113          	addi	sp,sp,-32
   1f650:	00913423          	sd	s1,8(sp)
   1f654:	00113c23          	sd	ra,24(sp)
   1f658:	00813823          	sd	s0,16(sp)
   1f65c:	01f00793          	li	a5,31
   1f660:	00050493          	mv	s1,a0
   1f664:	08b7ee63          	bltu	a5,a1,1f700 <_raise_r+0xb4>
   1f668:	51853783          	ld	a5,1304(a0)
   1f66c:	00058413          	mv	s0,a1
   1f670:	04078463          	beqz	a5,1f6b8 <_raise_r+0x6c>
   1f674:	00359713          	slli	a4,a1,0x3
   1f678:	00e787b3          	add	a5,a5,a4
   1f67c:	0007b703          	ld	a4,0(a5)
   1f680:	02070c63          	beqz	a4,1f6b8 <_raise_r+0x6c>
   1f684:	00100693          	li	a3,1
   1f688:	00d70c63          	beq	a4,a3,1f6a0 <_raise_r+0x54>
   1f68c:	fff00693          	li	a3,-1
   1f690:	04d70863          	beq	a4,a3,1f6e0 <_raise_r+0x94>
   1f694:	0007b023          	sd	zero,0(a5)
   1f698:	00058513          	mv	a0,a1
   1f69c:	000700e7          	jalr	a4
   1f6a0:	00000513          	li	a0,0
   1f6a4:	01813083          	ld	ra,24(sp)
   1f6a8:	01013403          	ld	s0,16(sp)
   1f6ac:	00813483          	ld	s1,8(sp)
   1f6b0:	02010113          	addi	sp,sp,32
   1f6b4:	00008067          	ret
   1f6b8:	00048513          	mv	a0,s1
   1f6bc:	424000ef          	jal	ra,1fae0 <_getpid_r>
   1f6c0:	00040613          	mv	a2,s0
   1f6c4:	01013403          	ld	s0,16(sp)
   1f6c8:	01813083          	ld	ra,24(sp)
   1f6cc:	00050593          	mv	a1,a0
   1f6d0:	00048513          	mv	a0,s1
   1f6d4:	00813483          	ld	s1,8(sp)
   1f6d8:	02010113          	addi	sp,sp,32
   1f6dc:	3a00006f          	j	1fa7c <_kill_r>
   1f6e0:	01813083          	ld	ra,24(sp)
   1f6e4:	01013403          	ld	s0,16(sp)
   1f6e8:	01600793          	li	a5,22
   1f6ec:	00f52023          	sw	a5,0(a0)
   1f6f0:	00813483          	ld	s1,8(sp)
   1f6f4:	00100513          	li	a0,1
   1f6f8:	02010113          	addi	sp,sp,32
   1f6fc:	00008067          	ret
   1f700:	01600793          	li	a5,22
   1f704:	00f52023          	sw	a5,0(a0)
   1f708:	fff00513          	li	a0,-1
   1f70c:	f99ff06f          	j	1f6a4 <_raise_r+0x58>

000000000001f710 <__sigtramp_r>:
   1f710:	01f00793          	li	a5,31
   1f714:	0cb7ea63          	bltu	a5,a1,1f7e8 <__sigtramp_r+0xd8>
   1f718:	51853783          	ld	a5,1304(a0)
   1f71c:	fe010113          	addi	sp,sp,-32
   1f720:	00813823          	sd	s0,16(sp)
   1f724:	00913423          	sd	s1,8(sp)
   1f728:	00113c23          	sd	ra,24(sp)
   1f72c:	00058413          	mv	s0,a1
   1f730:	00050493          	mv	s1,a0
   1f734:	08078063          	beqz	a5,1f7b4 <__sigtramp_r+0xa4>
   1f738:	00341713          	slli	a4,s0,0x3
   1f73c:	00e787b3          	add	a5,a5,a4
   1f740:	0007b703          	ld	a4,0(a5)
   1f744:	02070c63          	beqz	a4,1f77c <__sigtramp_r+0x6c>
   1f748:	fff00693          	li	a3,-1
   1f74c:	06d70063          	beq	a4,a3,1f7ac <__sigtramp_r+0x9c>
   1f750:	00100693          	li	a3,1
   1f754:	04d70063          	beq	a4,a3,1f794 <__sigtramp_r+0x84>
   1f758:	00040513          	mv	a0,s0
   1f75c:	0007b023          	sd	zero,0(a5)
   1f760:	000700e7          	jalr	a4
   1f764:	00000513          	li	a0,0
   1f768:	01813083          	ld	ra,24(sp)
   1f76c:	01013403          	ld	s0,16(sp)
   1f770:	00813483          	ld	s1,8(sp)
   1f774:	02010113          	addi	sp,sp,32
   1f778:	00008067          	ret
   1f77c:	01813083          	ld	ra,24(sp)
   1f780:	01013403          	ld	s0,16(sp)
   1f784:	00813483          	ld	s1,8(sp)
   1f788:	00100513          	li	a0,1
   1f78c:	02010113          	addi	sp,sp,32
   1f790:	00008067          	ret
   1f794:	01813083          	ld	ra,24(sp)
   1f798:	01013403          	ld	s0,16(sp)
   1f79c:	00813483          	ld	s1,8(sp)
   1f7a0:	00300513          	li	a0,3
   1f7a4:	02010113          	addi	sp,sp,32
   1f7a8:	00008067          	ret
   1f7ac:	00200513          	li	a0,2
   1f7b0:	fb9ff06f          	j	1f768 <__sigtramp_r+0x58>
   1f7b4:	10000593          	li	a1,256
   1f7b8:	b18f70ef          	jal	ra,16ad0 <_malloc_r>
   1f7bc:	50a4bc23          	sd	a0,1304(s1)
   1f7c0:	00050793          	mv	a5,a0
   1f7c4:	00050e63          	beqz	a0,1f7e0 <__sigtramp_r+0xd0>
   1f7c8:	00050713          	mv	a4,a0
   1f7cc:	10050693          	addi	a3,a0,256
   1f7d0:	00073023          	sd	zero,0(a4)
   1f7d4:	00870713          	addi	a4,a4,8
   1f7d8:	fee69ce3          	bne	a3,a4,1f7d0 <__sigtramp_r+0xc0>
   1f7dc:	f5dff06f          	j	1f738 <__sigtramp_r+0x28>
   1f7e0:	fff00513          	li	a0,-1
   1f7e4:	f85ff06f          	j	1f768 <__sigtramp_r+0x58>
   1f7e8:	fff00513          	li	a0,-1
   1f7ec:	00008067          	ret

000000000001f7f0 <raise>:
   1f7f0:	fe010113          	addi	sp,sp,-32
   1f7f4:	00913423          	sd	s1,8(sp)
   1f7f8:	00113c23          	sd	ra,24(sp)
   1f7fc:	00813823          	sd	s0,16(sp)
   1f800:	01f00793          	li	a5,31
   1f804:	7581b483          	ld	s1,1880(gp) # 24d60 <_impure_ptr>
   1f808:	08a7ec63          	bltu	a5,a0,1f8a0 <raise+0xb0>
   1f80c:	5184b783          	ld	a5,1304(s1)
   1f810:	00050413          	mv	s0,a0
   1f814:	04078263          	beqz	a5,1f858 <raise+0x68>
   1f818:	00351713          	slli	a4,a0,0x3
   1f81c:	00e787b3          	add	a5,a5,a4
   1f820:	0007b703          	ld	a4,0(a5)
   1f824:	02070a63          	beqz	a4,1f858 <raise+0x68>
   1f828:	00100693          	li	a3,1
   1f82c:	00d70a63          	beq	a4,a3,1f840 <raise+0x50>
   1f830:	fff00693          	li	a3,-1
   1f834:	04d70663          	beq	a4,a3,1f880 <raise+0x90>
   1f838:	0007b023          	sd	zero,0(a5)
   1f83c:	000700e7          	jalr	a4
   1f840:	00000513          	li	a0,0
   1f844:	01813083          	ld	ra,24(sp)
   1f848:	01013403          	ld	s0,16(sp)
   1f84c:	00813483          	ld	s1,8(sp)
   1f850:	02010113          	addi	sp,sp,32
   1f854:	00008067          	ret
   1f858:	00048513          	mv	a0,s1
   1f85c:	284000ef          	jal	ra,1fae0 <_getpid_r>
   1f860:	00040613          	mv	a2,s0
   1f864:	01013403          	ld	s0,16(sp)
   1f868:	01813083          	ld	ra,24(sp)
   1f86c:	00050593          	mv	a1,a0
   1f870:	00048513          	mv	a0,s1
   1f874:	00813483          	ld	s1,8(sp)
   1f878:	02010113          	addi	sp,sp,32
   1f87c:	2000006f          	j	1fa7c <_kill_r>
   1f880:	01813083          	ld	ra,24(sp)
   1f884:	01013403          	ld	s0,16(sp)
   1f888:	01600793          	li	a5,22
   1f88c:	00f4a023          	sw	a5,0(s1)
   1f890:	00100513          	li	a0,1
   1f894:	00813483          	ld	s1,8(sp)
   1f898:	02010113          	addi	sp,sp,32
   1f89c:	00008067          	ret
   1f8a0:	01600793          	li	a5,22
   1f8a4:	00f4a023          	sw	a5,0(s1)
   1f8a8:	fff00513          	li	a0,-1
   1f8ac:	f99ff06f          	j	1f844 <raise+0x54>

000000000001f8b0 <signal>:
   1f8b0:	fe010113          	addi	sp,sp,-32
   1f8b4:	01213023          	sd	s2,0(sp)
   1f8b8:	00113c23          	sd	ra,24(sp)
   1f8bc:	00813823          	sd	s0,16(sp)
   1f8c0:	00913423          	sd	s1,8(sp)
   1f8c4:	01f00793          	li	a5,31
   1f8c8:	7581b903          	ld	s2,1880(gp) # 24d60 <_impure_ptr>
   1f8cc:	02a7ee63          	bltu	a5,a0,1f908 <signal+0x58>
   1f8d0:	00050413          	mv	s0,a0
   1f8d4:	51893503          	ld	a0,1304(s2)
   1f8d8:	00058493          	mv	s1,a1
   1f8dc:	02050e63          	beqz	a0,1f918 <signal+0x68>
   1f8e0:	00341413          	slli	s0,s0,0x3
   1f8e4:	008507b3          	add	a5,a0,s0
   1f8e8:	0007b503          	ld	a0,0(a5)
   1f8ec:	0097b023          	sd	s1,0(a5)
   1f8f0:	01813083          	ld	ra,24(sp)
   1f8f4:	01013403          	ld	s0,16(sp)
   1f8f8:	00813483          	ld	s1,8(sp)
   1f8fc:	00013903          	ld	s2,0(sp)
   1f900:	02010113          	addi	sp,sp,32
   1f904:	00008067          	ret
   1f908:	01600793          	li	a5,22
   1f90c:	00f92023          	sw	a5,0(s2)
   1f910:	fff00513          	li	a0,-1
   1f914:	fddff06f          	j	1f8f0 <signal+0x40>
   1f918:	10000593          	li	a1,256
   1f91c:	00090513          	mv	a0,s2
   1f920:	9b0f70ef          	jal	ra,16ad0 <_malloc_r>
   1f924:	50a93c23          	sd	a0,1304(s2)
   1f928:	00050793          	mv	a5,a0
   1f92c:	10050713          	addi	a4,a0,256
   1f930:	fe0500e3          	beqz	a0,1f910 <signal+0x60>
   1f934:	0007b023          	sd	zero,0(a5)
   1f938:	00878793          	addi	a5,a5,8
   1f93c:	fee79ce3          	bne	a5,a4,1f934 <signal+0x84>
   1f940:	fa1ff06f          	j	1f8e0 <signal+0x30>

000000000001f944 <_init_signal>:
   1f944:	ff010113          	addi	sp,sp,-16
   1f948:	00813023          	sd	s0,0(sp)
   1f94c:	7581b403          	ld	s0,1880(gp) # 24d60 <_impure_ptr>
   1f950:	00113423          	sd	ra,8(sp)
   1f954:	51843783          	ld	a5,1304(s0)
   1f958:	00078c63          	beqz	a5,1f970 <_init_signal+0x2c>
   1f95c:	00000513          	li	a0,0
   1f960:	00813083          	ld	ra,8(sp)
   1f964:	00013403          	ld	s0,0(sp)
   1f968:	01010113          	addi	sp,sp,16
   1f96c:	00008067          	ret
   1f970:	10000593          	li	a1,256
   1f974:	00040513          	mv	a0,s0
   1f978:	958f70ef          	jal	ra,16ad0 <_malloc_r>
   1f97c:	50a43c23          	sd	a0,1304(s0)
   1f980:	00050c63          	beqz	a0,1f998 <_init_signal+0x54>
   1f984:	10050793          	addi	a5,a0,256
   1f988:	00053023          	sd	zero,0(a0)
   1f98c:	00850513          	addi	a0,a0,8
   1f990:	fef51ce3          	bne	a0,a5,1f988 <_init_signal+0x44>
   1f994:	fc9ff06f          	j	1f95c <_init_signal+0x18>
   1f998:	fff00513          	li	a0,-1
   1f99c:	fc5ff06f          	j	1f960 <_init_signal+0x1c>

000000000001f9a0 <__sigtramp>:
   1f9a0:	fe010113          	addi	sp,sp,-32
   1f9a4:	00913423          	sd	s1,8(sp)
   1f9a8:	00113c23          	sd	ra,24(sp)
   1f9ac:	00813823          	sd	s0,16(sp)
   1f9b0:	01f00793          	li	a5,31
   1f9b4:	7581b483          	ld	s1,1880(gp) # 24d60 <_impure_ptr>
   1f9b8:	0aa7ee63          	bltu	a5,a0,1fa74 <__sigtramp+0xd4>
   1f9bc:	5184b783          	ld	a5,1304(s1)
   1f9c0:	00050413          	mv	s0,a0
   1f9c4:	08078063          	beqz	a5,1fa44 <__sigtramp+0xa4>
   1f9c8:	00341713          	slli	a4,s0,0x3
   1f9cc:	00e787b3          	add	a5,a5,a4
   1f9d0:	0007b703          	ld	a4,0(a5)
   1f9d4:	02070c63          	beqz	a4,1fa0c <__sigtramp+0x6c>
   1f9d8:	fff00693          	li	a3,-1
   1f9dc:	06d70063          	beq	a4,a3,1fa3c <__sigtramp+0x9c>
   1f9e0:	00100693          	li	a3,1
   1f9e4:	04d70063          	beq	a4,a3,1fa24 <__sigtramp+0x84>
   1f9e8:	00040513          	mv	a0,s0
   1f9ec:	0007b023          	sd	zero,0(a5)
   1f9f0:	000700e7          	jalr	a4
   1f9f4:	00000513          	li	a0,0
   1f9f8:	01813083          	ld	ra,24(sp)
   1f9fc:	01013403          	ld	s0,16(sp)
   1fa00:	00813483          	ld	s1,8(sp)
   1fa04:	02010113          	addi	sp,sp,32
   1fa08:	00008067          	ret
   1fa0c:	01813083          	ld	ra,24(sp)
   1fa10:	01013403          	ld	s0,16(sp)
   1fa14:	00813483          	ld	s1,8(sp)
   1fa18:	00100513          	li	a0,1
   1fa1c:	02010113          	addi	sp,sp,32
   1fa20:	00008067          	ret
   1fa24:	01813083          	ld	ra,24(sp)
   1fa28:	01013403          	ld	s0,16(sp)
   1fa2c:	00813483          	ld	s1,8(sp)
   1fa30:	00300513          	li	a0,3
   1fa34:	02010113          	addi	sp,sp,32
   1fa38:	00008067          	ret
   1fa3c:	00200513          	li	a0,2
   1fa40:	fb9ff06f          	j	1f9f8 <__sigtramp+0x58>
   1fa44:	10000593          	li	a1,256
   1fa48:	00048513          	mv	a0,s1
   1fa4c:	884f70ef          	jal	ra,16ad0 <_malloc_r>
   1fa50:	50a4bc23          	sd	a0,1304(s1)
   1fa54:	00050793          	mv	a5,a0
   1fa58:	00050e63          	beqz	a0,1fa74 <__sigtramp+0xd4>
   1fa5c:	00050713          	mv	a4,a0
   1fa60:	10050693          	addi	a3,a0,256
   1fa64:	00073023          	sd	zero,0(a4)
   1fa68:	00870713          	addi	a4,a4,8
   1fa6c:	fee69ce3          	bne	a3,a4,1fa64 <__sigtramp+0xc4>
   1fa70:	f59ff06f          	j	1f9c8 <__sigtramp+0x28>
   1fa74:	fff00513          	li	a0,-1
   1fa78:	f81ff06f          	j	1f9f8 <__sigtramp+0x58>

000000000001fa7c <_kill_r>:
   1fa7c:	fe010113          	addi	sp,sp,-32
   1fa80:	00058713          	mv	a4,a1
   1fa84:	00813823          	sd	s0,16(sp)
   1fa88:	00913423          	sd	s1,8(sp)
   1fa8c:	00050413          	mv	s0,a0
   1fa90:	00060593          	mv	a1,a2
   1fa94:	00070513          	mv	a0,a4
   1fa98:	00113c23          	sd	ra,24(sp)
   1fa9c:	7801a823          	sw	zero,1936(gp) # 24d98 <errno>
   1faa0:	164000ef          	jal	ra,1fc04 <_kill>
   1faa4:	fff00793          	li	a5,-1
   1faa8:	00f50c63          	beq	a0,a5,1fac0 <_kill_r+0x44>
   1faac:	01813083          	ld	ra,24(sp)
   1fab0:	01013403          	ld	s0,16(sp)
   1fab4:	00813483          	ld	s1,8(sp)
   1fab8:	02010113          	addi	sp,sp,32
   1fabc:	00008067          	ret
   1fac0:	7901a783          	lw	a5,1936(gp) # 24d98 <errno>
   1fac4:	fe0784e3          	beqz	a5,1faac <_kill_r+0x30>
   1fac8:	01813083          	ld	ra,24(sp)
   1facc:	00f42023          	sw	a5,0(s0)
   1fad0:	01013403          	ld	s0,16(sp)
   1fad4:	00813483          	ld	s1,8(sp)
   1fad8:	02010113          	addi	sp,sp,32
   1fadc:	00008067          	ret

000000000001fae0 <_getpid_r>:
   1fae0:	0dc0006f          	j	1fbbc <_getpid>

000000000001fae4 <_close>:
   1fae4:	ff010113          	addi	sp,sp,-16
   1fae8:	00113423          	sd	ra,8(sp)
   1faec:	00813023          	sd	s0,0(sp)
   1faf0:	03900893          	li	a7,57
   1faf4:	00000073          	ecall
   1faf8:	00050413          	mv	s0,a0
   1fafc:	00054c63          	bltz	a0,1fb14 <_close+0x30>
   1fb00:	0005051b          	sext.w	a0,a0
   1fb04:	00813083          	ld	ra,8(sp)
   1fb08:	00013403          	ld	s0,0(sp)
   1fb0c:	01010113          	addi	sp,sp,16
   1fb10:	00008067          	ret
   1fb14:	8d0fd0ef          	jal	ra,1cbe4 <__errno>
   1fb18:	4080043b          	negw	s0,s0
   1fb1c:	00852023          	sw	s0,0(a0)
   1fb20:	fff00513          	li	a0,-1
   1fb24:	fe1ff06f          	j	1fb04 <_close+0x20>

000000000001fb28 <_exit>:
   1fb28:	05d00893          	li	a7,93
   1fb2c:	00000073          	ecall
   1fb30:	00054463          	bltz	a0,1fb38 <_exit+0x10>
   1fb34:	0000006f          	j	1fb34 <_exit+0xc>
   1fb38:	ff010113          	addi	sp,sp,-16
   1fb3c:	00813023          	sd	s0,0(sp)
   1fb40:	00050413          	mv	s0,a0
   1fb44:	00113423          	sd	ra,8(sp)
   1fb48:	4080043b          	negw	s0,s0
   1fb4c:	898fd0ef          	jal	ra,1cbe4 <__errno>
   1fb50:	00852023          	sw	s0,0(a0)
   1fb54:	0000006f          	j	1fb54 <_exit+0x2c>

000000000001fb58 <_fstat>:
   1fb58:	f6010113          	addi	sp,sp,-160
   1fb5c:	08913423          	sd	s1,136(sp)
   1fb60:	08113c23          	sd	ra,152(sp)
   1fb64:	00058493          	mv	s1,a1
   1fb68:	08813823          	sd	s0,144(sp)
   1fb6c:	05000893          	li	a7,80
   1fb70:	00010593          	mv	a1,sp
   1fb74:	00000073          	ecall
   1fb78:	00050413          	mv	s0,a0
   1fb7c:	02054663          	bltz	a0,1fba8 <_fstat+0x50>
   1fb80:	0005041b          	sext.w	s0,a0
   1fb84:	00048513          	mv	a0,s1
   1fb88:	00010593          	mv	a1,sp
   1fb8c:	1e0000ef          	jal	ra,1fd6c <_conv_stat>
   1fb90:	09813083          	ld	ra,152(sp)
   1fb94:	00040513          	mv	a0,s0
   1fb98:	09013403          	ld	s0,144(sp)
   1fb9c:	08813483          	ld	s1,136(sp)
   1fba0:	0a010113          	addi	sp,sp,160
   1fba4:	00008067          	ret
   1fba8:	4080043b          	negw	s0,s0
   1fbac:	838fd0ef          	jal	ra,1cbe4 <__errno>
   1fbb0:	00852023          	sw	s0,0(a0)
   1fbb4:	fff00413          	li	s0,-1
   1fbb8:	fcdff06f          	j	1fb84 <_fstat+0x2c>

000000000001fbbc <_getpid>:
   1fbbc:	00100513          	li	a0,1
   1fbc0:	00008067          	ret

000000000001fbc4 <_isatty>:
   1fbc4:	f8010113          	addi	sp,sp,-128
   1fbc8:	00810593          	addi	a1,sp,8
   1fbcc:	06113c23          	sd	ra,120(sp)
   1fbd0:	f89ff0ef          	jal	ra,1fb58 <_fstat>
   1fbd4:	fff00793          	li	a5,-1
   1fbd8:	00f50e63          	beq	a0,a5,1fbf4 <_isatty+0x30>
   1fbdc:	00c12503          	lw	a0,12(sp)
   1fbe0:	07813083          	ld	ra,120(sp)
   1fbe4:	40d5551b          	sraiw	a0,a0,0xd
   1fbe8:	00157513          	andi	a0,a0,1
   1fbec:	08010113          	addi	sp,sp,128
   1fbf0:	00008067          	ret
   1fbf4:	07813083          	ld	ra,120(sp)
   1fbf8:	00000513          	li	a0,0
   1fbfc:	08010113          	addi	sp,sp,128
   1fc00:	00008067          	ret

000000000001fc04 <_kill>:
   1fc04:	ff010113          	addi	sp,sp,-16
   1fc08:	00113423          	sd	ra,8(sp)
   1fc0c:	fd9fc0ef          	jal	ra,1cbe4 <__errno>
   1fc10:	00813083          	ld	ra,8(sp)
   1fc14:	01600793          	li	a5,22
   1fc18:	00f52023          	sw	a5,0(a0)
   1fc1c:	fff00513          	li	a0,-1
   1fc20:	01010113          	addi	sp,sp,16
   1fc24:	00008067          	ret

000000000001fc28 <_lseek>:
   1fc28:	ff010113          	addi	sp,sp,-16
   1fc2c:	00113423          	sd	ra,8(sp)
   1fc30:	00813023          	sd	s0,0(sp)
   1fc34:	03e00893          	li	a7,62
   1fc38:	00000073          	ecall
   1fc3c:	00050413          	mv	s0,a0
   1fc40:	00054c63          	bltz	a0,1fc58 <_lseek+0x30>
   1fc44:	00813083          	ld	ra,8(sp)
   1fc48:	00040513          	mv	a0,s0
   1fc4c:	00013403          	ld	s0,0(sp)
   1fc50:	01010113          	addi	sp,sp,16
   1fc54:	00008067          	ret
   1fc58:	4080043b          	negw	s0,s0
   1fc5c:	f89fc0ef          	jal	ra,1cbe4 <__errno>
   1fc60:	00852023          	sw	s0,0(a0)
   1fc64:	fff00413          	li	s0,-1
   1fc68:	fddff06f          	j	1fc44 <_lseek+0x1c>

000000000001fc6c <_read>:
   1fc6c:	ff010113          	addi	sp,sp,-16
   1fc70:	00113423          	sd	ra,8(sp)
   1fc74:	00813023          	sd	s0,0(sp)
   1fc78:	03f00893          	li	a7,63
   1fc7c:	00000073          	ecall
   1fc80:	00050413          	mv	s0,a0
   1fc84:	00054c63          	bltz	a0,1fc9c <_read+0x30>
   1fc88:	00813083          	ld	ra,8(sp)
   1fc8c:	00040513          	mv	a0,s0
   1fc90:	00013403          	ld	s0,0(sp)
   1fc94:	01010113          	addi	sp,sp,16
   1fc98:	00008067          	ret
   1fc9c:	4080043b          	negw	s0,s0
   1fca0:	f45fc0ef          	jal	ra,1cbe4 <__errno>
   1fca4:	00852023          	sw	s0,0(a0)
   1fca8:	fff00413          	li	s0,-1
   1fcac:	fddff06f          	j	1fc88 <_read+0x1c>

000000000001fcb0 <_sbrk>:
   1fcb0:	7981b703          	ld	a4,1944(gp) # 24da0 <heap_end.0>
   1fcb4:	ff010113          	addi	sp,sp,-16
   1fcb8:	00113423          	sd	ra,8(sp)
   1fcbc:	00050793          	mv	a5,a0
   1fcc0:	02071063          	bnez	a4,1fce0 <_sbrk+0x30>
   1fcc4:	0d600893          	li	a7,214
   1fcc8:	00000513          	li	a0,0
   1fccc:	00000073          	ecall
   1fcd0:	fff00613          	li	a2,-1
   1fcd4:	00050713          	mv	a4,a0
   1fcd8:	02c50a63          	beq	a0,a2,1fd0c <_sbrk+0x5c>
   1fcdc:	78a1bc23          	sd	a0,1944(gp) # 24da0 <heap_end.0>
   1fce0:	0d600893          	li	a7,214
   1fce4:	00e78533          	add	a0,a5,a4
   1fce8:	00000073          	ecall
   1fcec:	7981b703          	ld	a4,1944(gp) # 24da0 <heap_end.0>
   1fcf0:	00e787b3          	add	a5,a5,a4
   1fcf4:	00f51c63          	bne	a0,a5,1fd0c <_sbrk+0x5c>
   1fcf8:	00813083          	ld	ra,8(sp)
   1fcfc:	78a1bc23          	sd	a0,1944(gp) # 24da0 <heap_end.0>
   1fd00:	00070513          	mv	a0,a4
   1fd04:	01010113          	addi	sp,sp,16
   1fd08:	00008067          	ret
   1fd0c:	ed9fc0ef          	jal	ra,1cbe4 <__errno>
   1fd10:	00813083          	ld	ra,8(sp)
   1fd14:	00c00793          	li	a5,12
   1fd18:	00f52023          	sw	a5,0(a0)
   1fd1c:	fff00513          	li	a0,-1
   1fd20:	01010113          	addi	sp,sp,16
   1fd24:	00008067          	ret

000000000001fd28 <_write>:
   1fd28:	ff010113          	addi	sp,sp,-16
   1fd2c:	00113423          	sd	ra,8(sp)
   1fd30:	00813023          	sd	s0,0(sp)
   1fd34:	04000893          	li	a7,64
   1fd38:	00000073          	ecall
   1fd3c:	00050413          	mv	s0,a0
   1fd40:	00054c63          	bltz	a0,1fd58 <_write+0x30>
   1fd44:	00813083          	ld	ra,8(sp)
   1fd48:	00040513          	mv	a0,s0
   1fd4c:	00013403          	ld	s0,0(sp)
   1fd50:	01010113          	addi	sp,sp,16
   1fd54:	00008067          	ret
   1fd58:	4080043b          	negw	s0,s0
   1fd5c:	e89fc0ef          	jal	ra,1cbe4 <__errno>
   1fd60:	00852023          	sw	s0,0(a0)
   1fd64:	fff00413          	li	s0,-1
   1fd68:	fddff06f          	j	1fd44 <_write+0x1c>

000000000001fd6c <_conv_stat>:
   1fd6c:	0185d703          	lhu	a4,24(a1)
   1fd70:	0145d783          	lhu	a5,20(a1)
   1fd74:	01c5a603          	lw	a2,28(a1)
   1fd78:	0205b683          	ld	a3,32(a1)
   1fd7c:	0005b303          	ld	t1,0(a1)
   1fd80:	0085b883          	ld	a7,8(a1)
   1fd84:	0105a803          	lw	a6,16(a1)
   1fd88:	0107171b          	slliw	a4,a4,0x10
   1fd8c:	00e7e7b3          	or	a5,a5,a4
   1fd90:	00c51623          	sh	a2,12(a0)
   1fd94:	00d51723          	sh	a3,14(a0)
   1fd98:	00651023          	sh	t1,0(a0)
   1fd9c:	01151123          	sh	a7,2(a0)
   1fda0:	01052223          	sw	a6,4(a0)
   1fda4:	00f52423          	sw	a5,8(a0)
   1fda8:	0305b703          	ld	a4,48(a1)
   1fdac:	0485b783          	ld	a5,72(a1)
   1fdb0:	0405b603          	ld	a2,64(a1)
   1fdb4:	0385a683          	lw	a3,56(a1)
   1fdb8:	00e53823          	sd	a4,16(a0)
   1fdbc:	00f53c23          	sd	a5,24(a0)
   1fdc0:	0585b703          	ld	a4,88(a1)
   1fdc4:	0685b783          	ld	a5,104(a1)
   1fdc8:	04c53823          	sd	a2,80(a0)
   1fdcc:	04d53423          	sd	a3,72(a0)
   1fdd0:	02e53423          	sd	a4,40(a0)
   1fdd4:	02f53c23          	sd	a5,56(a0)
   1fdd8:	00008067          	ret

000000000001fddc <__divdf3>:
   1fddc:	fb010113          	addi	sp,sp,-80
   1fde0:	02913c23          	sd	s1,56(sp)
   1fde4:	03455493          	srli	s1,a0,0x34
   1fde8:	03313423          	sd	s3,40(sp)
   1fdec:	01513c23          	sd	s5,24(sp)
   1fdf0:	01613823          	sd	s6,16(sp)
   1fdf4:	00c51a93          	slli	s5,a0,0xc
   1fdf8:	04113423          	sd	ra,72(sp)
   1fdfc:	04813023          	sd	s0,64(sp)
   1fe00:	03213823          	sd	s2,48(sp)
   1fe04:	03413023          	sd	s4,32(sp)
   1fe08:	01713423          	sd	s7,8(sp)
   1fe0c:	01813023          	sd	s8,0(sp)
   1fe10:	7ff4f493          	andi	s1,s1,2047
   1fe14:	00058b13          	mv	s6,a1
   1fe18:	00cada93          	srli	s5,s5,0xc
   1fe1c:	03f55993          	srli	s3,a0,0x3f
   1fe20:	08048863          	beqz	s1,1feb0 <__divdf3+0xd4>
   1fe24:	7ff00793          	li	a5,2047
   1fe28:	0af48663          	beq	s1,a5,1fed4 <__divdf3+0xf8>
   1fe2c:	00100793          	li	a5,1
   1fe30:	003a9a93          	slli	s5,s5,0x3
   1fe34:	03779793          	slli	a5,a5,0x37
   1fe38:	00faeab3          	or	s5,s5,a5
   1fe3c:	c0148493          	addi	s1,s1,-1023
   1fe40:	00000b93          	li	s7,0
   1fe44:	034b5793          	srli	a5,s6,0x34
   1fe48:	00cb1413          	slli	s0,s6,0xc
   1fe4c:	7ff7f793          	andi	a5,a5,2047
   1fe50:	00c45413          	srli	s0,s0,0xc
   1fe54:	03fb5b13          	srli	s6,s6,0x3f
   1fe58:	08078e63          	beqz	a5,1fef4 <__divdf3+0x118>
   1fe5c:	7ff00713          	li	a4,2047
   1fe60:	0ae78c63          	beq	a5,a4,1ff18 <__divdf3+0x13c>
   1fe64:	00100713          	li	a4,1
   1fe68:	00341413          	slli	s0,s0,0x3
   1fe6c:	03771713          	slli	a4,a4,0x37
   1fe70:	00e46433          	or	s0,s0,a4
   1fe74:	c0178793          	addi	a5,a5,-1023
   1fe78:	00000713          	li	a4,0
   1fe7c:	40f48a33          	sub	s4,s1,a5
   1fe80:	002b9793          	slli	a5,s7,0x2
   1fe84:	00e7e7b3          	or	a5,a5,a4
   1fe88:	fff78793          	addi	a5,a5,-1
   1fe8c:	00e00693          	li	a3,14
   1fe90:	0169c933          	xor	s2,s3,s6
   1fe94:	0cf6ea63          	bltu	a3,a5,1ff68 <__divdf3+0x18c>
   1fe98:	000236b7          	lui	a3,0x23
   1fe9c:	00279793          	slli	a5,a5,0x2
   1fea0:	ac068693          	addi	a3,a3,-1344 # 22ac0 <blanks.1+0x10>
   1fea4:	00d787b3          	add	a5,a5,a3
   1fea8:	0007a783          	lw	a5,0(a5)
   1feac:	00078067          	jr	a5
   1feb0:	020a8c63          	beqz	s5,1fee8 <__divdf3+0x10c>
   1feb4:	000a8513          	mv	a0,s5
   1feb8:	5d9010ef          	jal	ra,21c90 <__clzdi2>
   1febc:	0005079b          	sext.w	a5,a0
   1fec0:	c0d00493          	li	s1,-1011
   1fec4:	ff85051b          	addiw	a0,a0,-8
   1fec8:	00aa9ab3          	sll	s5,s5,a0
   1fecc:	40f484b3          	sub	s1,s1,a5
   1fed0:	f71ff06f          	j	1fe40 <__divdf3+0x64>
   1fed4:	7ff00493          	li	s1,2047
   1fed8:	00300b93          	li	s7,3
   1fedc:	f60a94e3          	bnez	s5,1fe44 <__divdf3+0x68>
   1fee0:	00200b93          	li	s7,2
   1fee4:	f61ff06f          	j	1fe44 <__divdf3+0x68>
   1fee8:	00000493          	li	s1,0
   1feec:	00100b93          	li	s7,1
   1fef0:	f55ff06f          	j	1fe44 <__divdf3+0x68>
   1fef4:	02040c63          	beqz	s0,1ff2c <__divdf3+0x150>
   1fef8:	00040513          	mv	a0,s0
   1fefc:	595010ef          	jal	ra,21c90 <__clzdi2>
   1ff00:	0005071b          	sext.w	a4,a0
   1ff04:	c0d00793          	li	a5,-1011
   1ff08:	ff85051b          	addiw	a0,a0,-8
   1ff0c:	00a41433          	sll	s0,s0,a0
   1ff10:	40e787b3          	sub	a5,a5,a4
   1ff14:	f65ff06f          	j	1fe78 <__divdf3+0x9c>
   1ff18:	7ff00793          	li	a5,2047
   1ff1c:	00300713          	li	a4,3
   1ff20:	f4041ee3          	bnez	s0,1fe7c <__divdf3+0xa0>
   1ff24:	00200713          	li	a4,2
   1ff28:	f55ff06f          	j	1fe7c <__divdf3+0xa0>
   1ff2c:	00000793          	li	a5,0
   1ff30:	00100713          	li	a4,1
   1ff34:	f49ff06f          	j	1fe7c <__divdf3+0xa0>
   1ff38:	00098913          	mv	s2,s3
   1ff3c:	000a8413          	mv	s0,s5
   1ff40:	000b8713          	mv	a4,s7
   1ff44:	00200793          	li	a5,2
   1ff48:	22f70663          	beq	a4,a5,20174 <__divdf3+0x398>
   1ff4c:	00300793          	li	a5,3
   1ff50:	20f70863          	beq	a4,a5,20160 <__divdf3+0x384>
   1ff54:	00100793          	li	a5,1
   1ff58:	0ef71c63          	bne	a4,a5,20050 <__divdf3+0x274>
   1ff5c:	00000793          	li	a5,0
   1ff60:	00000513          	li	a0,0
   1ff64:	1380006f          	j	2009c <__divdf3+0x2c0>
   1ff68:	00841c13          	slli	s8,s0,0x8
   1ff6c:	168afc63          	bgeu	s5,s0,200e4 <__divdf3+0x308>
   1ff70:	fffa0a13          	addi	s4,s4,-1
   1ff74:	00000413          	li	s0,0
   1ff78:	020c5b13          	srli	s6,s8,0x20
   1ff7c:	fff00993          	li	s3,-1
   1ff80:	000b0593          	mv	a1,s6
   1ff84:	0209d993          	srli	s3,s3,0x20
   1ff88:	000a8513          	mv	a0,s5
   1ff8c:	44d010ef          	jal	ra,21bd8 <__hidden___udivdi3>
   1ff90:	013c79b3          	and	s3,s8,s3
   1ff94:	00050593          	mv	a1,a0
   1ff98:	00050b93          	mv	s7,a0
   1ff9c:	00098513          	mv	a0,s3
   1ffa0:	3cd010ef          	jal	ra,21b6c <__muldi3>
   1ffa4:	00050493          	mv	s1,a0
   1ffa8:	000b0593          	mv	a1,s6
   1ffac:	000a8513          	mv	a0,s5
   1ffb0:	471010ef          	jal	ra,21c20 <__umoddi3>
   1ffb4:	02045793          	srli	a5,s0,0x20
   1ffb8:	02051513          	slli	a0,a0,0x20
   1ffbc:	00a7e7b3          	or	a5,a5,a0
   1ffc0:	000b8413          	mv	s0,s7
   1ffc4:	0097fe63          	bgeu	a5,s1,1ffe0 <__divdf3+0x204>
   1ffc8:	00fc07b3          	add	a5,s8,a5
   1ffcc:	fffb8413          	addi	s0,s7,-1
   1ffd0:	0187e863          	bltu	a5,s8,1ffe0 <__divdf3+0x204>
   1ffd4:	0097f663          	bgeu	a5,s1,1ffe0 <__divdf3+0x204>
   1ffd8:	ffeb8413          	addi	s0,s7,-2
   1ffdc:	018787b3          	add	a5,a5,s8
   1ffe0:	409784b3          	sub	s1,a5,s1
   1ffe4:	000b0593          	mv	a1,s6
   1ffe8:	00048513          	mv	a0,s1
   1ffec:	3ed010ef          	jal	ra,21bd8 <__hidden___udivdi3>
   1fff0:	00050593          	mv	a1,a0
   1fff4:	00050a93          	mv	s5,a0
   1fff8:	00098513          	mv	a0,s3
   1fffc:	371010ef          	jal	ra,21b6c <__muldi3>
   20000:	00050993          	mv	s3,a0
   20004:	000b0593          	mv	a1,s6
   20008:	00048513          	mv	a0,s1
   2000c:	415010ef          	jal	ra,21c20 <__umoddi3>
   20010:	02051793          	slli	a5,a0,0x20
   20014:	000a8713          	mv	a4,s5
   20018:	0337f263          	bgeu	a5,s3,2003c <__divdf3+0x260>
   2001c:	018786b3          	add	a3,a5,s8
   20020:	00f6b633          	sltu	a2,a3,a5
   20024:	fffa8713          	addi	a4,s5,-1
   20028:	00068793          	mv	a5,a3
   2002c:	00061863          	bnez	a2,2003c <__divdf3+0x260>
   20030:	0136f663          	bgeu	a3,s3,2003c <__divdf3+0x260>
   20034:	ffea8713          	addi	a4,s5,-2
   20038:	018687b3          	add	a5,a3,s8
   2003c:	02041413          	slli	s0,s0,0x20
   20040:	413787b3          	sub	a5,a5,s3
   20044:	00e46433          	or	s0,s0,a4
   20048:	00f037b3          	snez	a5,a5
   2004c:	00f46433          	or	s0,s0,a5
   20050:	3ffa0513          	addi	a0,s4,1023
   20054:	0aa05263          	blez	a0,200f8 <__divdf3+0x31c>
   20058:	00747793          	andi	a5,s0,7
   2005c:	00078a63          	beqz	a5,20070 <__divdf3+0x294>
   20060:	00f47793          	andi	a5,s0,15
   20064:	00400713          	li	a4,4
   20068:	00e78463          	beq	a5,a4,20070 <__divdf3+0x294>
   2006c:	00440413          	addi	s0,s0,4
   20070:	03845793          	srli	a5,s0,0x38
   20074:	0017f793          	andi	a5,a5,1
   20078:	00078c63          	beqz	a5,20090 <__divdf3+0x2b4>
   2007c:	fff00793          	li	a5,-1
   20080:	03879793          	slli	a5,a5,0x38
   20084:	fff78793          	addi	a5,a5,-1
   20088:	00f47433          	and	s0,s0,a5
   2008c:	400a0513          	addi	a0,s4,1024
   20090:	7fe00793          	li	a5,2046
   20094:	0ea7c063          	blt	a5,a0,20174 <__divdf3+0x398>
   20098:	00345793          	srli	a5,s0,0x3
   2009c:	04813083          	ld	ra,72(sp)
   200a0:	04013403          	ld	s0,64(sp)
   200a4:	00c79793          	slli	a5,a5,0xc
   200a8:	03451513          	slli	a0,a0,0x34
   200ac:	00c7d793          	srli	a5,a5,0xc
   200b0:	03f91913          	slli	s2,s2,0x3f
   200b4:	00f56533          	or	a0,a0,a5
   200b8:	03813483          	ld	s1,56(sp)
   200bc:	02813983          	ld	s3,40(sp)
   200c0:	02013a03          	ld	s4,32(sp)
   200c4:	01813a83          	ld	s5,24(sp)
   200c8:	01013b03          	ld	s6,16(sp)
   200cc:	00813b83          	ld	s7,8(sp)
   200d0:	00013c03          	ld	s8,0(sp)
   200d4:	01256533          	or	a0,a0,s2
   200d8:	03013903          	ld	s2,48(sp)
   200dc:	05010113          	addi	sp,sp,80
   200e0:	00008067          	ret
   200e4:	03fa9413          	slli	s0,s5,0x3f
   200e8:	001ada93          	srli	s5,s5,0x1
   200ec:	e8dff06f          	j	1ff78 <__divdf3+0x19c>
   200f0:	000b0913          	mv	s2,s6
   200f4:	e51ff06f          	j	1ff44 <__divdf3+0x168>
   200f8:	00100713          	li	a4,1
   200fc:	00050c63          	beqz	a0,20114 <__divdf3+0x338>
   20100:	40a70733          	sub	a4,a4,a0
   20104:	03800693          	li	a3,56
   20108:	00000793          	li	a5,0
   2010c:	00000513          	li	a0,0
   20110:	f8e6c6e3          	blt	a3,a4,2009c <__divdf3+0x2c0>
   20114:	04000693          	li	a3,64
   20118:	00e457b3          	srl	a5,s0,a4
   2011c:	40e6873b          	subw	a4,a3,a4
   20120:	00e41433          	sll	s0,s0,a4
   20124:	00803433          	snez	s0,s0
   20128:	0087e7b3          	or	a5,a5,s0
   2012c:	0077f713          	andi	a4,a5,7
   20130:	00070a63          	beqz	a4,20144 <__divdf3+0x368>
   20134:	00f7f713          	andi	a4,a5,15
   20138:	00400693          	li	a3,4
   2013c:	00d70463          	beq	a4,a3,20144 <__divdf3+0x368>
   20140:	00478793          	addi	a5,a5,4
   20144:	0377d713          	srli	a4,a5,0x37
   20148:	00177713          	andi	a4,a4,1
   2014c:	0037d793          	srli	a5,a5,0x3
   20150:	e00708e3          	beqz	a4,1ff60 <__divdf3+0x184>
   20154:	00000793          	li	a5,0
   20158:	00100513          	li	a0,1
   2015c:	f41ff06f          	j	2009c <__divdf3+0x2c0>
   20160:	00100793          	li	a5,1
   20164:	03379793          	slli	a5,a5,0x33
   20168:	7ff00513          	li	a0,2047
   2016c:	00000913          	li	s2,0
   20170:	f2dff06f          	j	2009c <__divdf3+0x2c0>
   20174:	00000793          	li	a5,0
   20178:	7ff00513          	li	a0,2047
   2017c:	f21ff06f          	j	2009c <__divdf3+0x2c0>

0000000000020180 <__muldf3>:
   20180:	fc010113          	addi	sp,sp,-64
   20184:	03213023          	sd	s2,32(sp)
   20188:	03455913          	srli	s2,a0,0x34
   2018c:	02913423          	sd	s1,40(sp)
   20190:	01313c23          	sd	s3,24(sp)
   20194:	01513423          	sd	s5,8(sp)
   20198:	00c51493          	slli	s1,a0,0xc
   2019c:	02113c23          	sd	ra,56(sp)
   201a0:	02813823          	sd	s0,48(sp)
   201a4:	01413823          	sd	s4,16(sp)
   201a8:	7ff97913          	andi	s2,s2,2047
   201ac:	00058a93          	mv	s5,a1
   201b0:	00c4d493          	srli	s1,s1,0xc
   201b4:	03f55993          	srli	s3,a0,0x3f
   201b8:	1c090c63          	beqz	s2,20390 <__muldf3+0x210>
   201bc:	7ff00793          	li	a5,2047
   201c0:	1ef90a63          	beq	s2,a5,203b4 <__muldf3+0x234>
   201c4:	00100793          	li	a5,1
   201c8:	00349493          	slli	s1,s1,0x3
   201cc:	03779793          	slli	a5,a5,0x37
   201d0:	00f4e4b3          	or	s1,s1,a5
   201d4:	c0190913          	addi	s2,s2,-1023
   201d8:	00000a13          	li	s4,0
   201dc:	034ad793          	srli	a5,s5,0x34
   201e0:	00ca9413          	slli	s0,s5,0xc
   201e4:	7ff7f793          	andi	a5,a5,2047
   201e8:	00c45413          	srli	s0,s0,0xc
   201ec:	03fada93          	srli	s5,s5,0x3f
   201f0:	1e078263          	beqz	a5,203d4 <__muldf3+0x254>
   201f4:	7ff00713          	li	a4,2047
   201f8:	20e78063          	beq	a5,a4,203f8 <__muldf3+0x278>
   201fc:	00100713          	li	a4,1
   20200:	00341413          	slli	s0,s0,0x3
   20204:	03771713          	slli	a4,a4,0x37
   20208:	00e46433          	or	s0,s0,a4
   2020c:	c0178793          	addi	a5,a5,-1023
   20210:	00000693          	li	a3,0
   20214:	002a1713          	slli	a4,s4,0x2
   20218:	00f90933          	add	s2,s2,a5
   2021c:	00d76733          	or	a4,a4,a3
   20220:	00a00793          	li	a5,10
   20224:	0159c833          	xor	a6,s3,s5
   20228:	00190893          	addi	a7,s2,1
   2022c:	22e7ca63          	blt	a5,a4,20460 <__muldf3+0x2e0>
   20230:	00200793          	li	a5,2
   20234:	1ee7c263          	blt	a5,a4,20418 <__muldf3+0x298>
   20238:	fff70713          	addi	a4,a4,-1
   2023c:	00100793          	li	a5,1
   20240:	1ee7fe63          	bgeu	a5,a4,2043c <__muldf3+0x2bc>
   20244:	fff00793          	li	a5,-1
   20248:	0207d793          	srli	a5,a5,0x20
   2024c:	0204df13          	srli	t5,s1,0x20
   20250:	00f4f4b3          	and	s1,s1,a5
   20254:	00f477b3          	and	a5,s0,a5
   20258:	02045e93          	srli	t4,s0,0x20
   2025c:	00048513          	mv	a0,s1
   20260:	00078593          	mv	a1,a5
   20264:	109010ef          	jal	ra,21b6c <__muldi3>
   20268:	00050313          	mv	t1,a0
   2026c:	000e8593          	mv	a1,t4
   20270:	00048513          	mv	a0,s1
   20274:	0f9010ef          	jal	ra,21b6c <__muldi3>
   20278:	00050713          	mv	a4,a0
   2027c:	00078593          	mv	a1,a5
   20280:	000f0513          	mv	a0,t5
   20284:	0e9010ef          	jal	ra,21b6c <__muldi3>
   20288:	00050e13          	mv	t3,a0
   2028c:	000e8593          	mv	a1,t4
   20290:	000f0513          	mv	a0,t5
   20294:	0d9010ef          	jal	ra,21b6c <__muldi3>
   20298:	02035793          	srli	a5,t1,0x20
   2029c:	01c70733          	add	a4,a4,t3
   202a0:	00e787b3          	add	a5,a5,a4
   202a4:	00050693          	mv	a3,a0
   202a8:	01c7f863          	bgeu	a5,t3,202b8 <__muldf3+0x138>
   202ac:	00100713          	li	a4,1
   202b0:	02071713          	slli	a4,a4,0x20
   202b4:	00e506b3          	add	a3,a0,a4
   202b8:	fff00613          	li	a2,-1
   202bc:	02065613          	srli	a2,a2,0x20
   202c0:	00c7f733          	and	a4,a5,a2
   202c4:	02071713          	slli	a4,a4,0x20
   202c8:	00c37333          	and	t1,t1,a2
   202cc:	00670733          	add	a4,a4,t1
   202d0:	00971413          	slli	s0,a4,0x9
   202d4:	0207d793          	srli	a5,a5,0x20
   202d8:	00803433          	snez	s0,s0
   202dc:	03775713          	srli	a4,a4,0x37
   202e0:	00d787b3          	add	a5,a5,a3
   202e4:	00979793          	slli	a5,a5,0x9
   202e8:	00e46433          	or	s0,s0,a4
   202ec:	0087e433          	or	s0,a5,s0
   202f0:	0387d793          	srli	a5,a5,0x38
   202f4:	0017f793          	andi	a5,a5,1
   202f8:	18078463          	beqz	a5,20480 <__muldf3+0x300>
   202fc:	00145793          	srli	a5,s0,0x1
   20300:	00147413          	andi	s0,s0,1
   20304:	0087e433          	or	s0,a5,s0
   20308:	3ff88513          	addi	a0,a7,1023
   2030c:	16a05e63          	blez	a0,20488 <__muldf3+0x308>
   20310:	00747793          	andi	a5,s0,7
   20314:	00078a63          	beqz	a5,20328 <__muldf3+0x1a8>
   20318:	00f47793          	andi	a5,s0,15
   2031c:	00400713          	li	a4,4
   20320:	00e78463          	beq	a5,a4,20328 <__muldf3+0x1a8>
   20324:	00440413          	addi	s0,s0,4
   20328:	03845793          	srli	a5,s0,0x38
   2032c:	0017f793          	andi	a5,a5,1
   20330:	00078c63          	beqz	a5,20348 <__muldf3+0x1c8>
   20334:	fff00793          	li	a5,-1
   20338:	03879793          	slli	a5,a5,0x38
   2033c:	fff78793          	addi	a5,a5,-1
   20340:	00f47433          	and	s0,s0,a5
   20344:	40088513          	addi	a0,a7,1024
   20348:	7fe00793          	li	a5,2046
   2034c:	1aa7cc63          	blt	a5,a0,20504 <__muldf3+0x384>
   20350:	00345793          	srli	a5,s0,0x3
   20354:	03813083          	ld	ra,56(sp)
   20358:	03013403          	ld	s0,48(sp)
   2035c:	00c79793          	slli	a5,a5,0xc
   20360:	03451513          	slli	a0,a0,0x34
   20364:	00c7d793          	srli	a5,a5,0xc
   20368:	00f56533          	or	a0,a0,a5
   2036c:	03f81813          	slli	a6,a6,0x3f
   20370:	02813483          	ld	s1,40(sp)
   20374:	02013903          	ld	s2,32(sp)
   20378:	01813983          	ld	s3,24(sp)
   2037c:	01013a03          	ld	s4,16(sp)
   20380:	00813a83          	ld	s5,8(sp)
   20384:	01056533          	or	a0,a0,a6
   20388:	04010113          	addi	sp,sp,64
   2038c:	00008067          	ret
   20390:	02048c63          	beqz	s1,203c8 <__muldf3+0x248>
   20394:	00048513          	mv	a0,s1
   20398:	0f9010ef          	jal	ra,21c90 <__clzdi2>
   2039c:	0005079b          	sext.w	a5,a0
   203a0:	c0d00913          	li	s2,-1011
   203a4:	ff85051b          	addiw	a0,a0,-8
   203a8:	00a494b3          	sll	s1,s1,a0
   203ac:	40f90933          	sub	s2,s2,a5
   203b0:	e29ff06f          	j	201d8 <__muldf3+0x58>
   203b4:	7ff00913          	li	s2,2047
   203b8:	00300a13          	li	s4,3
   203bc:	e20490e3          	bnez	s1,201dc <__muldf3+0x5c>
   203c0:	00200a13          	li	s4,2
   203c4:	e19ff06f          	j	201dc <__muldf3+0x5c>
   203c8:	00000913          	li	s2,0
   203cc:	00100a13          	li	s4,1
   203d0:	e0dff06f          	j	201dc <__muldf3+0x5c>
   203d4:	02040c63          	beqz	s0,2040c <__muldf3+0x28c>
   203d8:	00040513          	mv	a0,s0
   203dc:	0b5010ef          	jal	ra,21c90 <__clzdi2>
   203e0:	0005071b          	sext.w	a4,a0
   203e4:	c0d00793          	li	a5,-1011
   203e8:	ff85051b          	addiw	a0,a0,-8
   203ec:	00a41433          	sll	s0,s0,a0
   203f0:	40e787b3          	sub	a5,a5,a4
   203f4:	e1dff06f          	j	20210 <__muldf3+0x90>
   203f8:	7ff00793          	li	a5,2047
   203fc:	00300693          	li	a3,3
   20400:	e0041ae3          	bnez	s0,20214 <__muldf3+0x94>
   20404:	00200693          	li	a3,2
   20408:	e0dff06f          	j	20214 <__muldf3+0x94>
   2040c:	00000793          	li	a5,0
   20410:	00100693          	li	a3,1
   20414:	e01ff06f          	j	20214 <__muldf3+0x94>
   20418:	00100793          	li	a5,1
   2041c:	00e79733          	sll	a4,a5,a4
   20420:	53077613          	andi	a2,a4,1328
   20424:	04061863          	bnez	a2,20474 <__muldf3+0x2f4>
   20428:	24077613          	andi	a2,a4,576
   2042c:	0c061463          	bnez	a2,204f4 <__muldf3+0x374>
   20430:	08877713          	andi	a4,a4,136
   20434:	e00708e3          	beqz	a4,20244 <__muldf3+0xc4>
   20438:	000a8813          	mv	a6,s5
   2043c:	00200793          	li	a5,2
   20440:	0cf68263          	beq	a3,a5,20504 <__muldf3+0x384>
   20444:	00300793          	li	a5,3
   20448:	0af68463          	beq	a3,a5,204f0 <__muldf3+0x370>
   2044c:	00100793          	li	a5,1
   20450:	eaf69ce3          	bne	a3,a5,20308 <__muldf3+0x188>
   20454:	00000793          	li	a5,0
   20458:	00000513          	li	a0,0
   2045c:	ef9ff06f          	j	20354 <__muldf3+0x1d4>
   20460:	00f00793          	li	a5,15
   20464:	08f70663          	beq	a4,a5,204f0 <__muldf3+0x370>
   20468:	00b00793          	li	a5,11
   2046c:	00098813          	mv	a6,s3
   20470:	fcf704e3          	beq	a4,a5,20438 <__muldf3+0x2b8>
   20474:	00048413          	mv	s0,s1
   20478:	000a0693          	mv	a3,s4
   2047c:	fc1ff06f          	j	2043c <__muldf3+0x2bc>
   20480:	00090893          	mv	a7,s2
   20484:	e85ff06f          	j	20308 <__muldf3+0x188>
   20488:	00100713          	li	a4,1
   2048c:	00050c63          	beqz	a0,204a4 <__muldf3+0x324>
   20490:	40a70733          	sub	a4,a4,a0
   20494:	03800693          	li	a3,56
   20498:	00000793          	li	a5,0
   2049c:	00000513          	li	a0,0
   204a0:	eae6cae3          	blt	a3,a4,20354 <__muldf3+0x1d4>
   204a4:	04000693          	li	a3,64
   204a8:	00e457b3          	srl	a5,s0,a4
   204ac:	40e6873b          	subw	a4,a3,a4
   204b0:	00e41433          	sll	s0,s0,a4
   204b4:	00803433          	snez	s0,s0
   204b8:	0087e7b3          	or	a5,a5,s0
   204bc:	0077f713          	andi	a4,a5,7
   204c0:	00070a63          	beqz	a4,204d4 <__muldf3+0x354>
   204c4:	00f7f713          	andi	a4,a5,15
   204c8:	00400693          	li	a3,4
   204cc:	00d70463          	beq	a4,a3,204d4 <__muldf3+0x354>
   204d0:	00478793          	addi	a5,a5,4
   204d4:	0377d713          	srli	a4,a5,0x37
   204d8:	00177713          	andi	a4,a4,1
   204dc:	0037d793          	srli	a5,a5,0x3
   204e0:	f6070ce3          	beqz	a4,20458 <__muldf3+0x2d8>
   204e4:	00000793          	li	a5,0
   204e8:	00100513          	li	a0,1
   204ec:	e69ff06f          	j	20354 <__muldf3+0x1d4>
   204f0:	00100793          	li	a5,1
   204f4:	03379793          	slli	a5,a5,0x33
   204f8:	7ff00513          	li	a0,2047
   204fc:	00000813          	li	a6,0
   20500:	e55ff06f          	j	20354 <__muldf3+0x1d4>
   20504:	00000793          	li	a5,0
   20508:	7ff00513          	li	a0,2047
   2050c:	e49ff06f          	j	20354 <__muldf3+0x1d4>

0000000000020510 <__eqtf2>:
   20510:	00008837          	lui	a6,0x8
   20514:	0305d893          	srli	a7,a1,0x30
   20518:	fff80813          	addi	a6,a6,-1 # 7fff <exit-0x80e9>
   2051c:	fff00793          	li	a5,-1
   20520:	0107d793          	srli	a5,a5,0x10
   20524:	0306d313          	srli	t1,a3,0x30
   20528:	0108f8b3          	and	a7,a7,a6
   2052c:	00f5f733          	and	a4,a1,a5
   20530:	01037333          	and	t1,t1,a6
   20534:	00f6f7b3          	and	a5,a3,a5
   20538:	03f5d593          	srli	a1,a1,0x3f
   2053c:	03f6d693          	srli	a3,a3,0x3f
   20540:	01088e63          	beq	a7,a6,2055c <__eqtf2+0x4c>
   20544:	05031263          	bne	t1,a6,20588 <__eqtf2+0x78>
   20548:	00c7e7b3          	or	a5,a5,a2
   2054c:	00100513          	li	a0,1
   20550:	00100813          	li	a6,1
   20554:	02078663          	beqz	a5,20580 <__eqtf2+0x70>
   20558:	00008067          	ret
   2055c:	00a76733          	or	a4,a4,a0
   20560:	00100513          	li	a0,1
   20564:	fe071ae3          	bnez	a4,20558 <__eqtf2+0x48>
   20568:	00100813          	li	a6,1
   2056c:	01131a63          	bne	t1,a7,20580 <__eqtf2+0x70>
   20570:	00c7e7b3          	or	a5,a5,a2
   20574:	fe0792e3          	bnez	a5,20558 <__eqtf2+0x48>
   20578:	40d585b3          	sub	a1,a1,a3
   2057c:	00b03833          	snez	a6,a1
   20580:	00080513          	mv	a0,a6
   20584:	fd5ff06f          	j	20558 <__eqtf2+0x48>
   20588:	00100813          	li	a6,1
   2058c:	fe689ae3          	bne	a7,t1,20580 <__eqtf2+0x70>
   20590:	fef718e3          	bne	a4,a5,20580 <__eqtf2+0x70>
   20594:	fec516e3          	bne	a0,a2,20580 <__eqtf2+0x70>
   20598:	00d58a63          	beq	a1,a3,205ac <__eqtf2+0x9c>
   2059c:	fe0892e3          	bnez	a7,20580 <__eqtf2+0x70>
   205a0:	00a76733          	or	a4,a4,a0
   205a4:	00e03833          	snez	a6,a4
   205a8:	fd9ff06f          	j	20580 <__eqtf2+0x70>
   205ac:	00000813          	li	a6,0
   205b0:	fd1ff06f          	j	20580 <__eqtf2+0x70>

00000000000205b4 <__getf2>:
   205b4:	00008e37          	lui	t3,0x8
   205b8:	0305d893          	srli	a7,a1,0x30
   205bc:	fffe0e13          	addi	t3,t3,-1 # 7fff <exit-0x80e9>
   205c0:	fff00713          	li	a4,-1
   205c4:	01075713          	srli	a4,a4,0x10
   205c8:	0306d793          	srli	a5,a3,0x30
   205cc:	01c8f8b3          	and	a7,a7,t3
   205d0:	00e5f833          	and	a6,a1,a4
   205d4:	00050313          	mv	t1,a0
   205d8:	00e6f733          	and	a4,a3,a4
   205dc:	03f5d593          	srli	a1,a1,0x3f
   205e0:	01c7f533          	and	a0,a5,t3
   205e4:	03f6d693          	srli	a3,a3,0x3f
   205e8:	03c89c63          	bne	a7,t3,20620 <__getf2+0x6c>
   205ec:	00686833          	or	a6,a6,t1
   205f0:	0c081463          	bnez	a6,206b8 <__getf2+0x104>
   205f4:	01150a63          	beq	a0,a7,20608 <__getf2+0x54>
   205f8:	00100513          	li	a0,1
   205fc:	0a058c63          	beqz	a1,206b4 <__getf2+0x100>
   20600:	fff00513          	li	a0,-1
   20604:	00008067          	ret
   20608:	00c76733          	or	a4,a4,a2
   2060c:	ffe00513          	li	a0,-2
   20610:	0a071263          	bnez	a4,206b4 <__getf2+0x100>
   20614:	fed592e3          	bne	a1,a3,205f8 <__getf2+0x44>
   20618:	00000513          	li	a0,0
   2061c:	00008067          	ret
   20620:	05c51063          	bne	a0,t3,20660 <__getf2+0xac>
   20624:	00c76733          	or	a4,a4,a2
   20628:	ffe00513          	li	a0,-2
   2062c:	08071463          	bnez	a4,206b4 <__getf2+0x100>
   20630:	00088c63          	beqz	a7,20648 <__getf2+0x94>
   20634:	fcd592e3          	bne	a1,a3,205f8 <__getf2+0x44>
   20638:	fff00513          	li	a0,-1
   2063c:	06058c63          	beqz	a1,206b4 <__getf2+0x100>
   20640:	00058513          	mv	a0,a1
   20644:	00008067          	ret
   20648:	00686833          	or	a6,a6,t1
   2064c:	fe0814e3          	bnez	a6,20634 <__getf2+0x80>
   20650:	fff00513          	li	a0,-1
   20654:	06068063          	beqz	a3,206b4 <__getf2+0x100>
   20658:	00068513          	mv	a0,a3
   2065c:	00008067          	ret
   20660:	02088663          	beqz	a7,2068c <__getf2+0xd8>
   20664:	f8050ae3          	beqz	a0,205f8 <__getf2+0x44>
   20668:	f8d598e3          	bne	a1,a3,205f8 <__getf2+0x44>
   2066c:	f91546e3          	blt	a0,a7,205f8 <__getf2+0x44>
   20670:	fca8c4e3          	blt	a7,a0,20638 <__getf2+0x84>
   20674:	f90762e3          	bltu	a4,a6,205f8 <__getf2+0x44>
   20678:	fce810e3          	bne	a6,a4,20638 <__getf2+0x84>
   2067c:	f6666ee3          	bltu	a2,t1,205f8 <__getf2+0x44>
   20680:	00000513          	li	a0,0
   20684:	02c37863          	bgeu	t1,a2,206b4 <__getf2+0x100>
   20688:	fb1ff06f          	j	20638 <__getf2+0x84>
   2068c:	006867b3          	or	a5,a6,t1
   20690:	00050663          	beqz	a0,2069c <__getf2+0xe8>
   20694:	fa078ee3          	beqz	a5,20650 <__getf2+0x9c>
   20698:	f9dff06f          	j	20634 <__getf2+0x80>
   2069c:	00c768b3          	or	a7,a4,a2
   206a0:	00088863          	beqz	a7,206b0 <__getf2+0xfc>
   206a4:	fa0786e3          	beqz	a5,20650 <__getf2+0x9c>
   206a8:	fcd586e3          	beq	a1,a3,20674 <__getf2+0xc0>
   206ac:	f4dff06f          	j	205f8 <__getf2+0x44>
   206b0:	f40794e3          	bnez	a5,205f8 <__getf2+0x44>
   206b4:	00008067          	ret
   206b8:	ffe00513          	li	a0,-2
   206bc:	00008067          	ret

00000000000206c0 <__letf2>:
   206c0:	00008e37          	lui	t3,0x8
   206c4:	0305d893          	srli	a7,a1,0x30
   206c8:	fffe0e13          	addi	t3,t3,-1 # 7fff <exit-0x80e9>
   206cc:	fff00713          	li	a4,-1
   206d0:	01075713          	srli	a4,a4,0x10
   206d4:	0306d793          	srli	a5,a3,0x30
   206d8:	01c8f8b3          	and	a7,a7,t3
   206dc:	00e5f833          	and	a6,a1,a4
   206e0:	00050313          	mv	t1,a0
   206e4:	00e6f733          	and	a4,a3,a4
   206e8:	03f5d593          	srli	a1,a1,0x3f
   206ec:	01c7f533          	and	a0,a5,t3
   206f0:	03f6d693          	srli	a3,a3,0x3f
   206f4:	03c89c63          	bne	a7,t3,2072c <__letf2+0x6c>
   206f8:	00686833          	or	a6,a6,t1
   206fc:	0c081463          	bnez	a6,207c4 <__letf2+0x104>
   20700:	01150a63          	beq	a0,a7,20714 <__letf2+0x54>
   20704:	00100513          	li	a0,1
   20708:	0a058c63          	beqz	a1,207c0 <__letf2+0x100>
   2070c:	fff00513          	li	a0,-1
   20710:	00008067          	ret
   20714:	00c76733          	or	a4,a4,a2
   20718:	00200513          	li	a0,2
   2071c:	0a071263          	bnez	a4,207c0 <__letf2+0x100>
   20720:	fed592e3          	bne	a1,a3,20704 <__letf2+0x44>
   20724:	00000513          	li	a0,0
   20728:	00008067          	ret
   2072c:	05c51063          	bne	a0,t3,2076c <__letf2+0xac>
   20730:	00c76733          	or	a4,a4,a2
   20734:	00200513          	li	a0,2
   20738:	08071463          	bnez	a4,207c0 <__letf2+0x100>
   2073c:	00088c63          	beqz	a7,20754 <__letf2+0x94>
   20740:	fcd592e3          	bne	a1,a3,20704 <__letf2+0x44>
   20744:	fff00513          	li	a0,-1
   20748:	06058c63          	beqz	a1,207c0 <__letf2+0x100>
   2074c:	00058513          	mv	a0,a1
   20750:	00008067          	ret
   20754:	00686833          	or	a6,a6,t1
   20758:	fe0814e3          	bnez	a6,20740 <__letf2+0x80>
   2075c:	fff00513          	li	a0,-1
   20760:	06068063          	beqz	a3,207c0 <__letf2+0x100>
   20764:	00068513          	mv	a0,a3
   20768:	00008067          	ret
   2076c:	02088663          	beqz	a7,20798 <__letf2+0xd8>
   20770:	f8050ae3          	beqz	a0,20704 <__letf2+0x44>
   20774:	f8d598e3          	bne	a1,a3,20704 <__letf2+0x44>
   20778:	f91546e3          	blt	a0,a7,20704 <__letf2+0x44>
   2077c:	fca8c4e3          	blt	a7,a0,20744 <__letf2+0x84>
   20780:	f90762e3          	bltu	a4,a6,20704 <__letf2+0x44>
   20784:	fce810e3          	bne	a6,a4,20744 <__letf2+0x84>
   20788:	f6666ee3          	bltu	a2,t1,20704 <__letf2+0x44>
   2078c:	00000513          	li	a0,0
   20790:	02c37863          	bgeu	t1,a2,207c0 <__letf2+0x100>
   20794:	fb1ff06f          	j	20744 <__letf2+0x84>
   20798:	006867b3          	or	a5,a6,t1
   2079c:	00050663          	beqz	a0,207a8 <__letf2+0xe8>
   207a0:	fa078ee3          	beqz	a5,2075c <__letf2+0x9c>
   207a4:	f9dff06f          	j	20740 <__letf2+0x80>
   207a8:	00c768b3          	or	a7,a4,a2
   207ac:	00088863          	beqz	a7,207bc <__letf2+0xfc>
   207b0:	fa0786e3          	beqz	a5,2075c <__letf2+0x9c>
   207b4:	fcd586e3          	beq	a1,a3,20780 <__letf2+0xc0>
   207b8:	f4dff06f          	j	20704 <__letf2+0x44>
   207bc:	f40794e3          	bnez	a5,20704 <__letf2+0x44>
   207c0:	00008067          	ret
   207c4:	00200513          	li	a0,2
   207c8:	00008067          	ret

00000000000207cc <__multf3>:
   207cc:	00008737          	lui	a4,0x8
   207d0:	fb010113          	addi	sp,sp,-80
   207d4:	0305d793          	srli	a5,a1,0x30
   207d8:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   207dc:	04813023          	sd	s0,64(sp)
   207e0:	02913c23          	sd	s1,56(sp)
   207e4:	03313423          	sd	s3,40(sp)
   207e8:	03413023          	sd	s4,32(sp)
   207ec:	01613823          	sd	s6,16(sp)
   207f0:	01059493          	slli	s1,a1,0x10
   207f4:	04113423          	sd	ra,72(sp)
   207f8:	03213823          	sd	s2,48(sp)
   207fc:	01513c23          	sd	s5,24(sp)
   20800:	01713423          	sd	s7,8(sp)
   20804:	01813023          	sd	s8,0(sp)
   20808:	00e7f7b3          	and	a5,a5,a4
   2080c:	00050413          	mv	s0,a0
   20810:	00060b13          	mv	s6,a2
   20814:	00068993          	mv	s3,a3
   20818:	0104d493          	srli	s1,s1,0x10
   2081c:	03f5da13          	srli	s4,a1,0x3f
   20820:	42078463          	beqz	a5,20c48 <__multf3+0x47c>
   20824:	0007891b          	sext.w	s2,a5
   20828:	48e78863          	beq	a5,a4,20cb8 <__multf3+0x4ec>
   2082c:	00349493          	slli	s1,s1,0x3
   20830:	03d55713          	srli	a4,a0,0x3d
   20834:	00976733          	or	a4,a4,s1
   20838:	ffffc937          	lui	s2,0xffffc
   2083c:	00100493          	li	s1,1
   20840:	03349493          	slli	s1,s1,0x33
   20844:	00190913          	addi	s2,s2,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd71f9>
   20848:	009764b3          	or	s1,a4,s1
   2084c:	00351a93          	slli	s5,a0,0x3
   20850:	01278933          	add	s2,a5,s2
   20854:	00000b93          	li	s7,0
   20858:	000087b7          	lui	a5,0x8
   2085c:	0309d613          	srli	a2,s3,0x30
   20860:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   20864:	01099413          	slli	s0,s3,0x10
   20868:	00f67633          	and	a2,a2,a5
   2086c:	01045413          	srli	s0,s0,0x10
   20870:	03f9d993          	srli	s3,s3,0x3f
   20874:	46060a63          	beqz	a2,20ce8 <__multf3+0x51c>
   20878:	0006071b          	sext.w	a4,a2
   2087c:	4ef60063          	beq	a2,a5,20d5c <__multf3+0x590>
   20880:	00341413          	slli	s0,s0,0x3
   20884:	03db5793          	srli	a5,s6,0x3d
   20888:	0087e7b3          	or	a5,a5,s0
   2088c:	ffffc737          	lui	a4,0xffffc
   20890:	00100413          	li	s0,1
   20894:	03341413          	slli	s0,s0,0x33
   20898:	00170713          	addi	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd71f9>
   2089c:	0087e433          	or	s0,a5,s0
   208a0:	00e60733          	add	a4,a2,a4
   208a4:	003b1793          	slli	a5,s6,0x3
   208a8:	00000693          	li	a3,0
   208ac:	002b9613          	slli	a2,s7,0x2
   208b0:	01270333          	add	t1,a4,s2
   208b4:	00d66633          	or	a2,a2,a3
   208b8:	00a00713          	li	a4,10
   208bc:	013a4833          	xor	a6,s4,s3
   208c0:	00130893          	addi	a7,t1,1
   208c4:	50c74863          	blt	a4,a2,20dd4 <__multf3+0x608>
   208c8:	00200713          	li	a4,2
   208cc:	4cc74063          	blt	a4,a2,20d8c <__multf3+0x5c0>
   208d0:	fff60613          	addi	a2,a2,-1
   208d4:	00100713          	li	a4,1
   208d8:	4cc77c63          	bgeu	a4,a2,20db0 <__multf3+0x5e4>
   208dc:	fff00713          	li	a4,-1
   208e0:	01548b33          	add	s6,s1,s5
   208e4:	00878a33          	add	s4,a5,s0
   208e8:	02075713          	srli	a4,a4,0x20
   208ec:	00fa32b3          	sltu	t0,s4,a5
   208f0:	009b3fb3          	sltu	t6,s6,s1
   208f4:	020ad993          	srli	s3,s5,0x20
   208f8:	0207de93          	srli	t4,a5,0x20
   208fc:	00eafab3          	and	s5,s5,a4
   20900:	00e7f7b3          	and	a5,a5,a4
   20904:	000f8393          	mv	t2,t6
   20908:	00028e13          	mv	t3,t0
   2090c:	000a8513          	mv	a0,s5
   20910:	00078593          	mv	a1,a5
   20914:	258010ef          	jal	ra,21b6c <__muldi3>
   20918:	00050713          	mv	a4,a0
   2091c:	000e8593          	mv	a1,t4
   20920:	000a8513          	mv	a0,s5
   20924:	248010ef          	jal	ra,21b6c <__muldi3>
   20928:	00050f13          	mv	t5,a0
   2092c:	00078593          	mv	a1,a5
   20930:	00098513          	mv	a0,s3
   20934:	238010ef          	jal	ra,21b6c <__muldi3>
   20938:	00050913          	mv	s2,a0
   2093c:	000e8593          	mv	a1,t4
   20940:	00098513          	mv	a0,s3
   20944:	228010ef          	jal	ra,21b6c <__muldi3>
   20948:	02075e93          	srli	t4,a4,0x20
   2094c:	012f0f33          	add	t5,t5,s2
   20950:	01ee8eb3          	add	t4,t4,t5
   20954:	00050793          	mv	a5,a0
   20958:	012ef863          	bgeu	t4,s2,20968 <__multf3+0x19c>
   2095c:	00100693          	li	a3,1
   20960:	02069693          	slli	a3,a3,0x20
   20964:	00d507b3          	add	a5,a0,a3
   20968:	020edf13          	srli	t5,t4,0x20
   2096c:	00ff0f33          	add	t5,t5,a5
   20970:	fff00793          	li	a5,-1
   20974:	0207d793          	srli	a5,a5,0x20
   20978:	00fefeb3          	and	t4,t4,a5
   2097c:	00f77733          	and	a4,a4,a5
   20980:	00fb7933          	and	s2,s6,a5
   20984:	020e9e93          	slli	t4,t4,0x20
   20988:	00fa77b3          	and	a5,s4,a5
   2098c:	00ee8eb3          	add	t4,t4,a4
   20990:	020b5993          	srli	s3,s6,0x20
   20994:	020a5713          	srli	a4,s4,0x20
   20998:	00090513          	mv	a0,s2
   2099c:	00078593          	mv	a1,a5
   209a0:	1cc010ef          	jal	ra,21b6c <__muldi3>
   209a4:	00050a93          	mv	s5,a0
   209a8:	00070593          	mv	a1,a4
   209ac:	00090513          	mv	a0,s2
   209b0:	1bc010ef          	jal	ra,21b6c <__muldi3>
   209b4:	00050913          	mv	s2,a0
   209b8:	00078593          	mv	a1,a5
   209bc:	00098513          	mv	a0,s3
   209c0:	1ac010ef          	jal	ra,21b6c <__muldi3>
   209c4:	00050793          	mv	a5,a0
   209c8:	00070593          	mv	a1,a4
   209cc:	00098513          	mv	a0,s3
   209d0:	19c010ef          	jal	ra,21b6c <__muldi3>
   209d4:	020ad713          	srli	a4,s5,0x20
   209d8:	00f90933          	add	s2,s2,a5
   209dc:	01270733          	add	a4,a4,s2
   209e0:	00050993          	mv	s3,a0
   209e4:	00f77863          	bgeu	a4,a5,209f4 <__multf3+0x228>
   209e8:	00100793          	li	a5,1
   209ec:	02079793          	slli	a5,a5,0x20
   209f0:	00f509b3          	add	s3,a0,a5
   209f4:	fff00593          	li	a1,-1
   209f8:	0205d593          	srli	a1,a1,0x20
   209fc:	02075913          	srli	s2,a4,0x20
   20a00:	00b77733          	and	a4,a4,a1
   20a04:	00bafab3          	and	s5,s5,a1
   20a08:	0204dc13          	srli	s8,s1,0x20
   20a0c:	00b477b3          	and	a5,s0,a1
   20a10:	00b4f4b3          	and	s1,s1,a1
   20a14:	02071713          	slli	a4,a4,0x20
   20a18:	01570733          	add	a4,a4,s5
   20a1c:	02045b93          	srli	s7,s0,0x20
   20a20:	00048513          	mv	a0,s1
   20a24:	00078593          	mv	a1,a5
   20a28:	144010ef          	jal	ra,21b6c <__muldi3>
   20a2c:	00050413          	mv	s0,a0
   20a30:	000b8593          	mv	a1,s7
   20a34:	00048513          	mv	a0,s1
   20a38:	134010ef          	jal	ra,21b6c <__muldi3>
   20a3c:	00050493          	mv	s1,a0
   20a40:	00078593          	mv	a1,a5
   20a44:	000c0513          	mv	a0,s8
   20a48:	124010ef          	jal	ra,21b6c <__muldi3>
   20a4c:	00050a93          	mv	s5,a0
   20a50:	000b8593          	mv	a1,s7
   20a54:	000c0513          	mv	a0,s8
   20a58:	114010ef          	jal	ra,21b6c <__muldi3>
   20a5c:	02045793          	srli	a5,s0,0x20
   20a60:	015484b3          	add	s1,s1,s5
   20a64:	009787b3          	add	a5,a5,s1
   20a68:	0157f863          	bgeu	a5,s5,20a78 <__multf3+0x2ac>
   20a6c:	00100693          	li	a3,1
   20a70:	02069693          	slli	a3,a3,0x20
   20a74:	00d50533          	add	a0,a0,a3
   20a78:	0207d693          	srli	a3,a5,0x20
   20a7c:	00a686b3          	add	a3,a3,a0
   20a80:	01e70533          	add	a0,a4,t5
   20a84:	00e53733          	sltu	a4,a0,a4
   20a88:	00e905b3          	add	a1,s2,a4
   20a8c:	fff00613          	li	a2,-1
   20a90:	02065613          	srli	a2,a2,0x20
   20a94:	013585b3          	add	a1,a1,s3
   20a98:	41c00e33          	neg	t3,t3
   20a9c:	00e5b733          	sltu	a4,a1,a4
   20aa0:	00c7f7b3          	and	a5,a5,a2
   20aa4:	00c47433          	and	s0,s0,a2
   20aa8:	016e7e33          	and	t3,t3,s6
   20aac:	005fffb3          	and	t6,t6,t0
   20ab0:	40700633          	neg	a2,t2
   20ab4:	01f70fb3          	add	t6,a4,t6
   20ab8:	01467633          	and	a2,a2,s4
   20abc:	01c58733          	add	a4,a1,t3
   20ac0:	00b735b3          	sltu	a1,a4,a1
   20ac4:	00e60733          	add	a4,a2,a4
   20ac8:	01f585b3          	add	a1,a1,t6
   20acc:	00c73633          	sltu	a2,a4,a2
   20ad0:	41d50e33          	sub	t3,a0,t4
   20ad4:	01c53fb3          	sltu	t6,a0,t3
   20ad8:	02079793          	slli	a5,a5,0x20
   20adc:	00b60633          	add	a2,a2,a1
   20ae0:	41e705b3          	sub	a1,a4,t5
   20ae4:	00b732b3          	sltu	t0,a4,a1
   20ae8:	008787b3          	add	a5,a5,s0
   20aec:	41f585b3          	sub	a1,a1,t6
   20af0:	00000f93          	li	t6,0
   20af4:	01c57663          	bgeu	a0,t3,20b00 <__multf3+0x334>
   20af8:	40ef0f33          	sub	t5,t5,a4
   20afc:	001f3f93          	seqz	t6,t5
   20b00:	40fe0533          	sub	a0,t3,a5
   20b04:	00d60633          	add	a2,a2,a3
   20b08:	00ae3733          	sltu	a4,t3,a0
   20b0c:	40d586b3          	sub	a3,a1,a3
   20b10:	005fefb3          	or	t6,t6,t0
   20b14:	00d5b5b3          	sltu	a1,a1,a3
   20b18:	40e78733          	sub	a4,a5,a4
   20b1c:	00000f13          	li	t5,0
   20b20:	00ae7463          	bgeu	t3,a0,20b28 <__multf3+0x35c>
   20b24:	0016bf13          	seqz	t5,a3
   20b28:	00e686b3          	add	a3,a3,a4
   20b2c:	00f6b733          	sltu	a4,a3,a5
   20b30:	00c70733          	add	a4,a4,a2
   20b34:	41f70733          	sub	a4,a4,t6
   20b38:	00bf6f33          	or	t5,t5,a1
   20b3c:	00d51793          	slli	a5,a0,0xd
   20b40:	41e70733          	sub	a4,a4,t5
   20b44:	00d71713          	slli	a4,a4,0xd
   20b48:	0336d413          	srli	s0,a3,0x33
   20b4c:	01d7e7b3          	or	a5,a5,t4
   20b50:	00876433          	or	s0,a4,s0
   20b54:	00f037b3          	snez	a5,a5
   20b58:	03355513          	srli	a0,a0,0x33
   20b5c:	03475713          	srli	a4,a4,0x34
   20b60:	00a7e7b3          	or	a5,a5,a0
   20b64:	00d69693          	slli	a3,a3,0xd
   20b68:	00177713          	andi	a4,a4,1
   20b6c:	00d7e7b3          	or	a5,a5,a3
   20b70:	28070463          	beqz	a4,20df8 <__multf3+0x62c>
   20b74:	0017d713          	srli	a4,a5,0x1
   20b78:	0017f793          	andi	a5,a5,1
   20b7c:	00f76733          	or	a4,a4,a5
   20b80:	03f41793          	slli	a5,s0,0x3f
   20b84:	00f767b3          	or	a5,a4,a5
   20b88:	00145413          	srli	s0,s0,0x1
   20b8c:	000045b7          	lui	a1,0x4
   20b90:	fff58593          	addi	a1,a1,-1 # 3fff <exit-0xc0e9>
   20b94:	00b885b3          	add	a1,a7,a1
   20b98:	26b05463          	blez	a1,20e00 <__multf3+0x634>
   20b9c:	0077f713          	andi	a4,a5,7
   20ba0:	02070063          	beqz	a4,20bc0 <__multf3+0x3f4>
   20ba4:	00f7f713          	andi	a4,a5,15
   20ba8:	00400693          	li	a3,4
   20bac:	00d70a63          	beq	a4,a3,20bc0 <__multf3+0x3f4>
   20bb0:	00478713          	addi	a4,a5,4
   20bb4:	00f736b3          	sltu	a3,a4,a5
   20bb8:	00d40433          	add	s0,s0,a3
   20bbc:	00070793          	mv	a5,a4
   20bc0:	03445713          	srli	a4,s0,0x34
   20bc4:	00177713          	andi	a4,a4,1
   20bc8:	00070e63          	beqz	a4,20be4 <__multf3+0x418>
   20bcc:	fff00713          	li	a4,-1
   20bd0:	03471713          	slli	a4,a4,0x34
   20bd4:	fff70713          	addi	a4,a4,-1
   20bd8:	000045b7          	lui	a1,0x4
   20bdc:	00e47433          	and	s0,s0,a4
   20be0:	00b885b3          	add	a1,a7,a1
   20be4:	000086b7          	lui	a3,0x8
   20be8:	ffe68713          	addi	a4,a3,-2 # 7ffe <exit-0x80ea>
   20bec:	30b74663          	blt	a4,a1,20ef8 <__multf3+0x72c>
   20bf0:	0037d793          	srli	a5,a5,0x3
   20bf4:	03d41513          	slli	a0,s0,0x3d
   20bf8:	00f56533          	or	a0,a0,a5
   20bfc:	00345713          	srli	a4,s0,0x3
   20c00:	04813083          	ld	ra,72(sp)
   20c04:	04013403          	ld	s0,64(sp)
   20c08:	00f8181b          	slliw	a6,a6,0xf
   20c0c:	01071713          	slli	a4,a4,0x10
   20c10:	0105e5b3          	or	a1,a1,a6
   20c14:	03059593          	slli	a1,a1,0x30
   20c18:	01075713          	srli	a4,a4,0x10
   20c1c:	03813483          	ld	s1,56(sp)
   20c20:	03013903          	ld	s2,48(sp)
   20c24:	02813983          	ld	s3,40(sp)
   20c28:	02013a03          	ld	s4,32(sp)
   20c2c:	01813a83          	ld	s5,24(sp)
   20c30:	01013b03          	ld	s6,16(sp)
   20c34:	00813b83          	ld	s7,8(sp)
   20c38:	00013c03          	ld	s8,0(sp)
   20c3c:	00b765b3          	or	a1,a4,a1
   20c40:	05010113          	addi	sp,sp,80
   20c44:	00008067          	ret
   20c48:	00a4eab3          	or	s5,s1,a0
   20c4c:	080a8063          	beqz	s5,20ccc <__multf3+0x500>
   20c50:	04048463          	beqz	s1,20c98 <__multf3+0x4cc>
   20c54:	00048513          	mv	a0,s1
   20c58:	038010ef          	jal	ra,21c90 <__clzdi2>
   20c5c:	0005051b          	sext.w	a0,a0
   20c60:	ff150793          	addi	a5,a0,-15
   20c64:	03d00713          	li	a4,61
   20c68:	0037869b          	addiw	a3,a5,3
   20c6c:	40f707bb          	subw	a5,a4,a5
   20c70:	00d494b3          	sll	s1,s1,a3
   20c74:	00f457b3          	srl	a5,s0,a5
   20c78:	0097e7b3          	or	a5,a5,s1
   20c7c:	00d414b3          	sll	s1,s0,a3
   20c80:	ffffc937          	lui	s2,0xffffc
   20c84:	01190913          	addi	s2,s2,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7209>
   20c88:	00048a93          	mv	s5,s1
   20c8c:	40a90933          	sub	s2,s2,a0
   20c90:	00078493          	mv	s1,a5
   20c94:	bc1ff06f          	j	20854 <__multf3+0x88>
   20c98:	7f9000ef          	jal	ra,21c90 <__clzdi2>
   20c9c:	0405051b          	addiw	a0,a0,64
   20ca0:	ff150793          	addi	a5,a0,-15
   20ca4:	03c00713          	li	a4,60
   20ca8:	faf75ee3          	bge	a4,a5,20c64 <__multf3+0x498>
   20cac:	fc37879b          	addiw	a5,a5,-61
   20cb0:	00f417b3          	sll	a5,s0,a5
   20cb4:	fcdff06f          	j	20c80 <__multf3+0x4b4>
   20cb8:	00a4eab3          	or	s5,s1,a0
   20cbc:	020a8063          	beqz	s5,20cdc <__multf3+0x510>
   20cc0:	00050a93          	mv	s5,a0
   20cc4:	00300b93          	li	s7,3
   20cc8:	b91ff06f          	j	20858 <__multf3+0x8c>
   20ccc:	00000493          	li	s1,0
   20cd0:	00000913          	li	s2,0
   20cd4:	00100b93          	li	s7,1
   20cd8:	b81ff06f          	j	20858 <__multf3+0x8c>
   20cdc:	00000493          	li	s1,0
   20ce0:	00200b93          	li	s7,2
   20ce4:	b75ff06f          	j	20858 <__multf3+0x8c>
   20ce8:	008b67b3          	or	a5,s6,s0
   20cec:	08078263          	beqz	a5,20d70 <__multf3+0x5a4>
   20cf0:	04040463          	beqz	s0,20d38 <__multf3+0x56c>
   20cf4:	00040513          	mv	a0,s0
   20cf8:	799000ef          	jal	ra,21c90 <__clzdi2>
   20cfc:	0005051b          	sext.w	a0,a0
   20d00:	ff150793          	addi	a5,a0,-15
   20d04:	03d00713          	li	a4,61
   20d08:	0037861b          	addiw	a2,a5,3
   20d0c:	40f707bb          	subw	a5,a4,a5
   20d10:	00c41433          	sll	s0,s0,a2
   20d14:	00fb57b3          	srl	a5,s6,a5
   20d18:	0087e6b3          	or	a3,a5,s0
   20d1c:	00cb1433          	sll	s0,s6,a2
   20d20:	ffffc737          	lui	a4,0xffffc
   20d24:	01170713          	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7209>
   20d28:	00040793          	mv	a5,s0
   20d2c:	40a70733          	sub	a4,a4,a0
   20d30:	00068413          	mv	s0,a3
   20d34:	b75ff06f          	j	208a8 <__multf3+0xdc>
   20d38:	000b0513          	mv	a0,s6
   20d3c:	755000ef          	jal	ra,21c90 <__clzdi2>
   20d40:	0405051b          	addiw	a0,a0,64
   20d44:	ff150793          	addi	a5,a0,-15
   20d48:	03c00713          	li	a4,60
   20d4c:	faf75ce3          	bge	a4,a5,20d04 <__multf3+0x538>
   20d50:	fc37879b          	addiw	a5,a5,-61
   20d54:	00fb16b3          	sll	a3,s6,a5
   20d58:	fc9ff06f          	j	20d20 <__multf3+0x554>
   20d5c:	008b67b3          	or	a5,s6,s0
   20d60:	02078063          	beqz	a5,20d80 <__multf3+0x5b4>
   20d64:	000b0793          	mv	a5,s6
   20d68:	00300693          	li	a3,3
   20d6c:	b41ff06f          	j	208ac <__multf3+0xe0>
   20d70:	00000413          	li	s0,0
   20d74:	00000713          	li	a4,0
   20d78:	00100693          	li	a3,1
   20d7c:	b31ff06f          	j	208ac <__multf3+0xe0>
   20d80:	00000413          	li	s0,0
   20d84:	00200693          	li	a3,2
   20d88:	b25ff06f          	j	208ac <__multf3+0xe0>
   20d8c:	00100713          	li	a4,1
   20d90:	00c71633          	sll	a2,a4,a2
   20d94:	53067513          	andi	a0,a2,1328
   20d98:	04051863          	bnez	a0,20de8 <__multf3+0x61c>
   20d9c:	24067593          	andi	a1,a2,576
   20da0:	12059063          	bnez	a1,20ec0 <__multf3+0x6f4>
   20da4:	08867613          	andi	a2,a2,136
   20da8:	b2060ae3          	beqz	a2,208dc <__multf3+0x110>
   20dac:	00098813          	mv	a6,s3
   20db0:	00200713          	li	a4,2
   20db4:	12e68063          	beq	a3,a4,20ed4 <__multf3+0x708>
   20db8:	00300713          	li	a4,3
   20dbc:	12e68663          	beq	a3,a4,20ee8 <__multf3+0x71c>
   20dc0:	00100713          	li	a4,1
   20dc4:	dce694e3          	bne	a3,a4,20b8c <__multf3+0x3c0>
   20dc8:	00000713          	li	a4,0
   20dcc:	00000513          	li	a0,0
   20dd0:	0b40006f          	j	20e84 <__multf3+0x6b8>
   20dd4:	00f00713          	li	a4,15
   20dd8:	10e60863          	beq	a2,a4,20ee8 <__multf3+0x71c>
   20ddc:	00b00713          	li	a4,11
   20de0:	000a0813          	mv	a6,s4
   20de4:	fce604e3          	beq	a2,a4,20dac <__multf3+0x5e0>
   20de8:	00048413          	mv	s0,s1
   20dec:	000a8793          	mv	a5,s5
   20df0:	000b8693          	mv	a3,s7
   20df4:	fbdff06f          	j	20db0 <__multf3+0x5e4>
   20df8:	00030893          	mv	a7,t1
   20dfc:	d91ff06f          	j	20b8c <__multf3+0x3c0>
   20e00:	00100713          	li	a4,1
   20e04:	00058e63          	beqz	a1,20e20 <__multf3+0x654>
   20e08:	40b70733          	sub	a4,a4,a1
   20e0c:	07400693          	li	a3,116
   20e10:	fae6cce3          	blt	a3,a4,20dc8 <__multf3+0x5fc>
   20e14:	03f00693          	li	a3,63
   20e18:	0007061b          	sext.w	a2,a4
   20e1c:	06e6c863          	blt	a3,a4,20e8c <__multf3+0x6c0>
   20e20:	04000693          	li	a3,64
   20e24:	40e686bb          	subw	a3,a3,a4
   20e28:	00d41533          	sll	a0,s0,a3
   20e2c:	00e7d633          	srl	a2,a5,a4
   20e30:	00d796b3          	sll	a3,a5,a3
   20e34:	00c56533          	or	a0,a0,a2
   20e38:	00d036b3          	snez	a3,a3
   20e3c:	00d56533          	or	a0,a0,a3
   20e40:	00e45733          	srl	a4,s0,a4
   20e44:	00757793          	andi	a5,a0,7
   20e48:	02078063          	beqz	a5,20e68 <__multf3+0x69c>
   20e4c:	00f57793          	andi	a5,a0,15
   20e50:	00400693          	li	a3,4
   20e54:	00d78a63          	beq	a5,a3,20e68 <__multf3+0x69c>
   20e58:	00450793          	addi	a5,a0,4
   20e5c:	00a7b6b3          	sltu	a3,a5,a0
   20e60:	00d70733          	add	a4,a4,a3
   20e64:	00078513          	mv	a0,a5
   20e68:	03375793          	srli	a5,a4,0x33
   20e6c:	0017f793          	andi	a5,a5,1
   20e70:	08079c63          	bnez	a5,20f08 <__multf3+0x73c>
   20e74:	03d71793          	slli	a5,a4,0x3d
   20e78:	00355513          	srli	a0,a0,0x3
   20e7c:	00a7e533          	or	a0,a5,a0
   20e80:	00375713          	srli	a4,a4,0x3
   20e84:	00000593          	li	a1,0
   20e88:	d79ff06f          	j	20c00 <__multf3+0x434>
   20e8c:	fc06051b          	addiw	a0,a2,-64
   20e90:	04000593          	li	a1,64
   20e94:	00a45533          	srl	a0,s0,a0
   20e98:	00000693          	li	a3,0
   20e9c:	00b70863          	beq	a4,a1,20eac <__multf3+0x6e0>
   20ea0:	08000693          	li	a3,128
   20ea4:	40c686bb          	subw	a3,a3,a2
   20ea8:	00d416b3          	sll	a3,s0,a3
   20eac:	00f6e6b3          	or	a3,a3,a5
   20eb0:	00d036b3          	snez	a3,a3
   20eb4:	00d56533          	or	a0,a0,a3
   20eb8:	00000713          	li	a4,0
   20ebc:	f89ff06f          	j	20e44 <__multf3+0x678>
   20ec0:	02f71713          	slli	a4,a4,0x2f
   20ec4:	000085b7          	lui	a1,0x8
   20ec8:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   20ecc:	00000813          	li	a6,0
   20ed0:	d31ff06f          	j	20c00 <__multf3+0x434>
   20ed4:	000085b7          	lui	a1,0x8
   20ed8:	00000713          	li	a4,0
   20edc:	00000513          	li	a0,0
   20ee0:	fff58593          	addi	a1,a1,-1 # 7fff <exit-0x80e9>
   20ee4:	d1dff06f          	j	20c00 <__multf3+0x434>
   20ee8:	00100713          	li	a4,1
   20eec:	02f71713          	slli	a4,a4,0x2f
   20ef0:	00000513          	li	a0,0
   20ef4:	fd1ff06f          	j	20ec4 <__multf3+0x6f8>
   20ef8:	00000713          	li	a4,0
   20efc:	00000513          	li	a0,0
   20f00:	fff68593          	addi	a1,a3,-1
   20f04:	cfdff06f          	j	20c00 <__multf3+0x434>
   20f08:	00000713          	li	a4,0
   20f0c:	00000513          	li	a0,0
   20f10:	00100593          	li	a1,1
   20f14:	cedff06f          	j	20c00 <__multf3+0x434>

0000000000020f18 <__subtf3>:
   20f18:	fff00713          	li	a4,-1
   20f1c:	fd010113          	addi	sp,sp,-48
   20f20:	01075713          	srli	a4,a4,0x10
   20f24:	00008e37          	lui	t3,0x8
   20f28:	0305d793          	srli	a5,a1,0x30
   20f2c:	fffe0e13          	addi	t3,t3,-1 # 7fff <exit-0x80e9>
   20f30:	01213823          	sd	s2,16(sp)
   20f34:	03f5d913          	srli	s2,a1,0x3f
   20f38:	00e5f5b3          	and	a1,a1,a4
   20f3c:	00913c23          	sd	s1,24(sp)
   20f40:	01c7f4b3          	and	s1,a5,t3
   20f44:	00359793          	slli	a5,a1,0x3
   20f48:	03d55593          	srli	a1,a0,0x3d
   20f4c:	0306d813          	srli	a6,a3,0x30
   20f50:	00f5e5b3          	or	a1,a1,a5
   20f54:	03f6d793          	srli	a5,a3,0x3f
   20f58:	00e6f6b3          	and	a3,a3,a4
   20f5c:	03d65313          	srli	t1,a2,0x3d
   20f60:	00369693          	slli	a3,a3,0x3
   20f64:	02113423          	sd	ra,40(sp)
   20f68:	02813023          	sd	s0,32(sp)
   20f6c:	01313423          	sd	s3,8(sp)
   20f70:	01c87833          	and	a6,a6,t3
   20f74:	00351893          	slli	a7,a0,0x3
   20f78:	00d36333          	or	t1,t1,a3
   20f7c:	00361613          	slli	a2,a2,0x3
   20f80:	0fc81663          	bne	a6,t3,2106c <__subtf3+0x154>
   20f84:	ffff8737          	lui	a4,0xffff8
   20f88:	0017071b          	addiw	a4,a4,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd31f9>
   20f8c:	00c366b3          	or	a3,t1,a2
   20f90:	0097073b          	addw	a4,a4,s1
   20f94:	04068063          	beqz	a3,20fd4 <__subtf3+0xbc>
   20f98:	00078e93          	mv	t4,a5
   20f9c:	48f91663          	bne	s2,a5,21428 <__subtf3+0x510>
   20fa0:	2e070263          	beqz	a4,21284 <__subtf3+0x36c>
   20fa4:	28049463          	bnez	s1,2122c <__subtf3+0x314>
   20fa8:	0115e7b3          	or	a5,a1,a7
   20fac:	28078063          	beqz	a5,2122c <__subtf3+0x314>
   20fb0:	fff74793          	not	a5,a4
   20fb4:	26079663          	bnez	a5,21220 <__subtf3+0x308>
   20fb8:	00c88633          	add	a2,a7,a2
   20fbc:	011637b3          	sltu	a5,a2,a7
   20fc0:	006585b3          	add	a1,a1,t1
   20fc4:	00060893          	mv	a7,a2
   20fc8:	00f585b3          	add	a1,a1,a5
   20fcc:	00080493          	mv	s1,a6
   20fd0:	0d40006f          	j	210a4 <__subtf3+0x18c>
   20fd4:	0017ce93          	xori	t4,a5,1
   20fd8:	47d91663          	bne	s2,t4,21444 <__subtf3+0x52c>
   20fdc:	2a070463          	beqz	a4,21284 <__subtf3+0x36c>
   20fe0:	fc0484e3          	beqz	s1,20fa8 <__subtf3+0x90>
   20fe4:	00000593          	li	a1,0
   20fe8:	00000893          	li	a7,0
   20fec:	00080493          	mv	s1,a6
   20ff0:	0335d793          	srli	a5,a1,0x33
   20ff4:	0017f793          	andi	a5,a5,1
   20ff8:	72078e63          	beqz	a5,21734 <__subtf3+0x81c>
   20ffc:	000087b7          	lui	a5,0x8
   21000:	00148493          	addi	s1,s1,1
   21004:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   21008:	7af48663          	beq	s1,a5,217b4 <__subtf3+0x89c>
   2100c:	fff00793          	li	a5,-1
   21010:	03379793          	slli	a5,a5,0x33
   21014:	fff78793          	addi	a5,a5,-1
   21018:	00f5f7b3          	and	a5,a1,a5
   2101c:	0038d893          	srli	a7,a7,0x3
   21020:	03d79513          	slli	a0,a5,0x3d
   21024:	01156533          	or	a0,a0,a7
   21028:	0037d593          	srli	a1,a5,0x3
   2102c:	00090713          	mv	a4,s2
   21030:	03149793          	slli	a5,s1,0x31
   21034:	02813083          	ld	ra,40(sp)
   21038:	02013403          	ld	s0,32(sp)
   2103c:	00f7171b          	slliw	a4,a4,0xf
   21040:	0317d793          	srli	a5,a5,0x31
   21044:	01059593          	slli	a1,a1,0x10
   21048:	00e7e7b3          	or	a5,a5,a4
   2104c:	03079793          	slli	a5,a5,0x30
   21050:	0105d593          	srli	a1,a1,0x10
   21054:	01813483          	ld	s1,24(sp)
   21058:	01013903          	ld	s2,16(sp)
   2105c:	00813983          	ld	s3,8(sp)
   21060:	00f5e5b3          	or	a1,a1,a5
   21064:	03010113          	addi	sp,sp,48
   21068:	00008067          	ret
   2106c:	0017ce93          	xori	t4,a5,1
   21070:	4104873b          	subw	a4,s1,a6
   21074:	2dd91263          	bne	s2,t4,21338 <__subtf3+0x420>
   21078:	14e05263          	blez	a4,211bc <__subtf3+0x2a4>
   2107c:	08081e63          	bnez	a6,21118 <__subtf3+0x200>
   21080:	00c367b3          	or	a5,t1,a2
   21084:	06078663          	beqz	a5,210f0 <__subtf3+0x1d8>
   21088:	fff7071b          	addiw	a4,a4,-1
   2108c:	06071063          	bnez	a4,210ec <__subtf3+0x1d4>
   21090:	00c88633          	add	a2,a7,a2
   21094:	011637b3          	sltu	a5,a2,a7
   21098:	006585b3          	add	a1,a1,t1
   2109c:	00060893          	mv	a7,a2
   210a0:	00f585b3          	add	a1,a1,a5
   210a4:	0335d793          	srli	a5,a1,0x33
   210a8:	0017f793          	andi	a5,a5,1
   210ac:	04078263          	beqz	a5,210f0 <__subtf3+0x1d8>
   210b0:	000087b7          	lui	a5,0x8
   210b4:	00148493          	addi	s1,s1,1
   210b8:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   210bc:	6af48063          	beq	s1,a5,2175c <__subtf3+0x844>
   210c0:	fff00793          	li	a5,-1
   210c4:	03379793          	slli	a5,a5,0x33
   210c8:	fff78793          	addi	a5,a5,-1
   210cc:	0018f513          	andi	a0,a7,1
   210d0:	00f5f7b3          	and	a5,a1,a5
   210d4:	0018d713          	srli	a4,a7,0x1
   210d8:	00a76733          	or	a4,a4,a0
   210dc:	03f79513          	slli	a0,a5,0x3f
   210e0:	00e568b3          	or	a7,a0,a4
   210e4:	0017d593          	srli	a1,a5,0x1
   210e8:	0080006f          	j	210f0 <__subtf3+0x1d8>
   210ec:	09c49463          	bne	s1,t3,21174 <__subtf3+0x25c>
   210f0:	0078f793          	andi	a5,a7,7
   210f4:	ee078ee3          	beqz	a5,20ff0 <__subtf3+0xd8>
   210f8:	00f8f793          	andi	a5,a7,15
   210fc:	00400713          	li	a4,4
   21100:	eee788e3          	beq	a5,a4,20ff0 <__subtf3+0xd8>
   21104:	00488793          	addi	a5,a7,4
   21108:	0117b733          	sltu	a4,a5,a7
   2110c:	00e585b3          	add	a1,a1,a4
   21110:	00078893          	mv	a7,a5
   21114:	eddff06f          	j	20ff0 <__subtf3+0xd8>
   21118:	fdc48ce3          	beq	s1,t3,210f0 <__subtf3+0x1d8>
   2111c:	07400793          	li	a5,116
   21120:	04e7ce63          	blt	a5,a4,2117c <__subtf3+0x264>
   21124:	00100793          	li	a5,1
   21128:	03379793          	slli	a5,a5,0x33
   2112c:	00f36333          	or	t1,t1,a5
   21130:	03f00793          	li	a5,63
   21134:	04e7ca63          	blt	a5,a4,21188 <__subtf3+0x270>
   21138:	04000693          	li	a3,64
   2113c:	40e686bb          	subw	a3,a3,a4
   21140:	00d317b3          	sll	a5,t1,a3
   21144:	00e65533          	srl	a0,a2,a4
   21148:	00d616b3          	sll	a3,a2,a3
   2114c:	00a7e7b3          	or	a5,a5,a0
   21150:	00d036b3          	snez	a3,a3
   21154:	00d7e7b3          	or	a5,a5,a3
   21158:	00e35733          	srl	a4,t1,a4
   2115c:	01178533          	add	a0,a5,a7
   21160:	00b70733          	add	a4,a4,a1
   21164:	00f537b3          	sltu	a5,a0,a5
   21168:	00050893          	mv	a7,a0
   2116c:	00f705b3          	add	a1,a4,a5
   21170:	f35ff06f          	j	210a4 <__subtf3+0x18c>
   21174:	07400793          	li	a5,116
   21178:	fae7dce3          	bge	a5,a4,21130 <__subtf3+0x218>
   2117c:	00000713          	li	a4,0
   21180:	00100793          	li	a5,1
   21184:	fd9ff06f          	j	2115c <__subtf3+0x244>
   21188:	fc07079b          	addiw	a5,a4,-64
   2118c:	04000513          	li	a0,64
   21190:	00f357b3          	srl	a5,t1,a5
   21194:	00000693          	li	a3,0
   21198:	00a70863          	beq	a4,a0,211a8 <__subtf3+0x290>
   2119c:	08000693          	li	a3,128
   211a0:	40e686bb          	subw	a3,a3,a4
   211a4:	00d316b3          	sll	a3,t1,a3
   211a8:	00c6e6b3          	or	a3,a3,a2
   211ac:	00d036b3          	snez	a3,a3
   211b0:	00d7e7b3          	or	a5,a5,a3
   211b4:	00000713          	li	a4,0
   211b8:	fa5ff06f          	j	2115c <__subtf3+0x244>
   211bc:	0c070463          	beqz	a4,21284 <__subtf3+0x36c>
   211c0:	de0484e3          	beqz	s1,20fa8 <__subtf3+0x90>
   211c4:	f8c00793          	li	a5,-116
   211c8:	06f74e63          	blt	a4,a5,21244 <__subtf3+0x32c>
   211cc:	40e007bb          	negw	a5,a4
   211d0:	00100713          	li	a4,1
   211d4:	03371713          	slli	a4,a4,0x33
   211d8:	00e5e5b3          	or	a1,a1,a4
   211dc:	03f00713          	li	a4,63
   211e0:	06f74863          	blt	a4,a5,21250 <__subtf3+0x338>
   211e4:	04000693          	li	a3,64
   211e8:	40f686bb          	subw	a3,a3,a5
   211ec:	00d59733          	sll	a4,a1,a3
   211f0:	00f8d533          	srl	a0,a7,a5
   211f4:	00d896b3          	sll	a3,a7,a3
   211f8:	00a76733          	or	a4,a4,a0
   211fc:	00d036b3          	snez	a3,a3
   21200:	00d76733          	or	a4,a4,a3
   21204:	00f5d7b3          	srl	a5,a1,a5
   21208:	00c70633          	add	a2,a4,a2
   2120c:	006787b3          	add	a5,a5,t1
   21210:	00e63733          	sltu	a4,a2,a4
   21214:	00060893          	mv	a7,a2
   21218:	00e785b3          	add	a1,a5,a4
   2121c:	db1ff06f          	j	20fcc <__subtf3+0xb4>
   21220:	00008737          	lui	a4,0x8
   21224:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   21228:	00e81a63          	bne	a6,a4,2123c <__subtf3+0x324>
   2122c:	00030593          	mv	a1,t1
   21230:	00060893          	mv	a7,a2
   21234:	00080493          	mv	s1,a6
   21238:	eb9ff06f          	j	210f0 <__subtf3+0x1d8>
   2123c:	07400713          	li	a4,116
   21240:	f8f75ee3          	bge	a4,a5,211dc <__subtf3+0x2c4>
   21244:	00000793          	li	a5,0
   21248:	00100713          	li	a4,1
   2124c:	fbdff06f          	j	21208 <__subtf3+0x2f0>
   21250:	fc07871b          	addiw	a4,a5,-64
   21254:	04000513          	li	a0,64
   21258:	00e5d733          	srl	a4,a1,a4
   2125c:	00000693          	li	a3,0
   21260:	00a78863          	beq	a5,a0,21270 <__subtf3+0x358>
   21264:	08000693          	li	a3,128
   21268:	40f686bb          	subw	a3,a3,a5
   2126c:	00d596b3          	sll	a3,a1,a3
   21270:	0116e6b3          	or	a3,a3,a7
   21274:	00d036b3          	snez	a3,a3
   21278:	00d76733          	or	a4,a4,a3
   2127c:	00000793          	li	a5,0
   21280:	f89ff06f          	j	21208 <__subtf3+0x2f0>
   21284:	000087b7          	lui	a5,0x8
   21288:	00148693          	addi	a3,s1,1
   2128c:	ffe78713          	addi	a4,a5,-2 # 7ffe <exit-0x80ea>
   21290:	00e6f733          	and	a4,a3,a4
   21294:	06071a63          	bnez	a4,21308 <__subtf3+0x3f0>
   21298:	0115e6b3          	or	a3,a1,a7
   2129c:	04049463          	bnez	s1,212e4 <__subtf3+0x3cc>
   212a0:	4e068663          	beqz	a3,2178c <__subtf3+0x874>
   212a4:	00c367b3          	or	a5,t1,a2
   212a8:	e40784e3          	beqz	a5,210f0 <__subtf3+0x1d8>
   212ac:	00c88633          	add	a2,a7,a2
   212b0:	011637b3          	sltu	a5,a2,a7
   212b4:	006585b3          	add	a1,a1,t1
   212b8:	00f585b3          	add	a1,a1,a5
   212bc:	0335d793          	srli	a5,a1,0x33
   212c0:	0017f793          	andi	a5,a5,1
   212c4:	00060893          	mv	a7,a2
   212c8:	e20784e3          	beqz	a5,210f0 <__subtf3+0x1d8>
   212cc:	fff00793          	li	a5,-1
   212d0:	03379793          	slli	a5,a5,0x33
   212d4:	fff78793          	addi	a5,a5,-1
   212d8:	00f5f5b3          	and	a1,a1,a5
   212dc:	00100493          	li	s1,1
   212e0:	e11ff06f          	j	210f0 <__subtf3+0x1d8>
   212e4:	fff78793          	addi	a5,a5,-1
   212e8:	4a068863          	beqz	a3,21798 <__subtf3+0x880>
   212ec:	00c36633          	or	a2,t1,a2
   212f0:	00078493          	mv	s1,a5
   212f4:	de060ee3          	beqz	a2,210f0 <__subtf3+0x1d8>
   212f8:	00100593          	li	a1,1
   212fc:	02f59593          	slli	a1,a1,0x2f
   21300:	00000513          	li	a0,0
   21304:	d2dff06f          	j	21030 <__subtf3+0x118>
   21308:	fff78793          	addi	a5,a5,-1
   2130c:	44f68863          	beq	a3,a5,2175c <__subtf3+0x844>
   21310:	00c88633          	add	a2,a7,a2
   21314:	01163533          	sltu	a0,a2,a7
   21318:	006585b3          	add	a1,a1,t1
   2131c:	00a585b3          	add	a1,a1,a0
   21320:	03f59513          	slli	a0,a1,0x3f
   21324:	00165613          	srli	a2,a2,0x1
   21328:	00c568b3          	or	a7,a0,a2
   2132c:	0015d593          	srli	a1,a1,0x1
   21330:	00068493          	mv	s1,a3
   21334:	dbdff06f          	j	210f0 <__subtf3+0x1d8>
   21338:	12e05463          	blez	a4,21460 <__subtf3+0x548>
   2133c:	04081e63          	bnez	a6,21398 <__subtf3+0x480>
   21340:	00c367b3          	or	a5,t1,a2
   21344:	da0786e3          	beqz	a5,210f0 <__subtf3+0x1d8>
   21348:	fff7071b          	addiw	a4,a4,-1
   2134c:	02071a63          	bnez	a4,21380 <__subtf3+0x468>
   21350:	40c88633          	sub	a2,a7,a2
   21354:	00c8b7b3          	sltu	a5,a7,a2
   21358:	406585b3          	sub	a1,a1,t1
   2135c:	00060893          	mv	a7,a2
   21360:	40f585b3          	sub	a1,a1,a5
   21364:	0335d793          	srli	a5,a1,0x33
   21368:	0017f793          	andi	a5,a5,1
   2136c:	d80782e3          	beqz	a5,210f0 <__subtf3+0x1d8>
   21370:	00d59413          	slli	s0,a1,0xd
   21374:	00d45413          	srli	s0,s0,0xd
   21378:	00088993          	mv	s3,a7
   2137c:	2cc0006f          	j	21648 <__subtf3+0x730>
   21380:	d7c488e3          	beq	s1,t3,210f0 <__subtf3+0x1d8>
   21384:	07400793          	li	a5,116
   21388:	02e7d463          	bge	a5,a4,213b0 <__subtf3+0x498>
   2138c:	00000713          	li	a4,0
   21390:	00100793          	li	a5,1
   21394:	0480006f          	j	213dc <__subtf3+0x4c4>
   21398:	d5c48ce3          	beq	s1,t3,210f0 <__subtf3+0x1d8>
   2139c:	07400793          	li	a5,116
   213a0:	fee7c6e3          	blt	a5,a4,2138c <__subtf3+0x474>
   213a4:	00100793          	li	a5,1
   213a8:	03379793          	slli	a5,a5,0x33
   213ac:	00f36333          	or	t1,t1,a5
   213b0:	03f00793          	li	a5,63
   213b4:	04e7c063          	blt	a5,a4,213f4 <__subtf3+0x4dc>
   213b8:	04000693          	li	a3,64
   213bc:	40e686bb          	subw	a3,a3,a4
   213c0:	00d317b3          	sll	a5,t1,a3
   213c4:	00e65533          	srl	a0,a2,a4
   213c8:	00d616b3          	sll	a3,a2,a3
   213cc:	00a7e7b3          	or	a5,a5,a0
   213d0:	00d036b3          	snez	a3,a3
   213d4:	00d7e7b3          	or	a5,a5,a3
   213d8:	00e35733          	srl	a4,t1,a4
   213dc:	40f887b3          	sub	a5,a7,a5
   213e0:	00f8b6b3          	sltu	a3,a7,a5
   213e4:	40e58733          	sub	a4,a1,a4
   213e8:	00078893          	mv	a7,a5
   213ec:	40d705b3          	sub	a1,a4,a3
   213f0:	f75ff06f          	j	21364 <__subtf3+0x44c>
   213f4:	fc07079b          	addiw	a5,a4,-64
   213f8:	04000513          	li	a0,64
   213fc:	00f357b3          	srl	a5,t1,a5
   21400:	00000693          	li	a3,0
   21404:	00a70863          	beq	a4,a0,21414 <__subtf3+0x4fc>
   21408:	08000693          	li	a3,128
   2140c:	40e686bb          	subw	a3,a3,a4
   21410:	00d316b3          	sll	a3,t1,a3
   21414:	00c6e6b3          	or	a3,a3,a2
   21418:	00d036b3          	snez	a3,a3
   2141c:	00d7e7b3          	or	a5,a5,a3
   21420:	00000713          	li	a4,0
   21424:	fb9ff06f          	j	213dc <__subtf3+0x4c4>
   21428:	12070a63          	beqz	a4,2155c <__subtf3+0x644>
   2142c:	04048263          	beqz	s1,21470 <__subtf3+0x558>
   21430:	00030593          	mv	a1,t1
   21434:	00060893          	mv	a7,a2
   21438:	00080493          	mv	s1,a6
   2143c:	00078913          	mv	s2,a5
   21440:	cb1ff06f          	j	210f0 <__subtf3+0x1d8>
   21444:	10070c63          	beqz	a4,2155c <__subtf3+0x644>
   21448:	02048063          	beqz	s1,21468 <__subtf3+0x550>
   2144c:	00000593          	li	a1,0
   21450:	00000893          	li	a7,0
   21454:	00080493          	mv	s1,a6
   21458:	000e8913          	mv	s2,t4
   2145c:	b95ff06f          	j	20ff0 <__subtf3+0xd8>
   21460:	0e070e63          	beqz	a4,2155c <__subtf3+0x644>
   21464:	04049e63          	bnez	s1,214c0 <__subtf3+0x5a8>
   21468:	000e8913          	mv	s2,t4
   2146c:	0080006f          	j	21474 <__subtf3+0x55c>
   21470:	00078913          	mv	s2,a5
   21474:	0115e7b3          	or	a5,a1,a7
   21478:	da078ae3          	beqz	a5,2122c <__subtf3+0x314>
   2147c:	fff74793          	not	a5,a4
   21480:	02079063          	bnez	a5,214a0 <__subtf3+0x588>
   21484:	41160533          	sub	a0,a2,a7
   21488:	40b305b3          	sub	a1,t1,a1
   2148c:	00a63633          	sltu	a2,a2,a0
   21490:	00050893          	mv	a7,a0
   21494:	40c585b3          	sub	a1,a1,a2
   21498:	00080493          	mv	s1,a6
   2149c:	ec9ff06f          	j	21364 <__subtf3+0x44c>
   214a0:	00008737          	lui	a4,0x8
   214a4:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   214a8:	d8e802e3          	beq	a6,a4,2122c <__subtf3+0x314>
   214ac:	07400713          	li	a4,116
   214b0:	02f75663          	bge	a4,a5,214dc <__subtf3+0x5c4>
   214b4:	00000793          	li	a5,0
   214b8:	00100713          	li	a4,1
   214bc:	04c0006f          	j	21508 <__subtf3+0x5f0>
   214c0:	f8c00793          	li	a5,-116
   214c4:	08f74863          	blt	a4,a5,21554 <__subtf3+0x63c>
   214c8:	40e007bb          	negw	a5,a4
   214cc:	00100713          	li	a4,1
   214d0:	03371713          	slli	a4,a4,0x33
   214d4:	00e5e5b3          	or	a1,a1,a4
   214d8:	000e8913          	mv	s2,t4
   214dc:	03f00713          	li	a4,63
   214e0:	04f74063          	blt	a4,a5,21520 <__subtf3+0x608>
   214e4:	04000693          	li	a3,64
   214e8:	40f686bb          	subw	a3,a3,a5
   214ec:	00d59733          	sll	a4,a1,a3
   214f0:	00f8d533          	srl	a0,a7,a5
   214f4:	00d896b3          	sll	a3,a7,a3
   214f8:	00a76733          	or	a4,a4,a0
   214fc:	00d036b3          	snez	a3,a3
   21500:	00d76733          	or	a4,a4,a3
   21504:	00f5d7b3          	srl	a5,a1,a5
   21508:	40e60733          	sub	a4,a2,a4
   2150c:	40f307b3          	sub	a5,t1,a5
   21510:	00e635b3          	sltu	a1,a2,a4
   21514:	00070893          	mv	a7,a4
   21518:	40b785b3          	sub	a1,a5,a1
   2151c:	f7dff06f          	j	21498 <__subtf3+0x580>
   21520:	fc07871b          	addiw	a4,a5,-64
   21524:	04000513          	li	a0,64
   21528:	00e5d733          	srl	a4,a1,a4
   2152c:	00000693          	li	a3,0
   21530:	00a78863          	beq	a5,a0,21540 <__subtf3+0x628>
   21534:	08000693          	li	a3,128
   21538:	40f686bb          	subw	a3,a3,a5
   2153c:	00d596b3          	sll	a3,a1,a3
   21540:	0116e6b3          	or	a3,a3,a7
   21544:	00d036b3          	snez	a3,a3
   21548:	00d76733          	or	a4,a4,a3
   2154c:	00000793          	li	a5,0
   21550:	fb9ff06f          	j	21508 <__subtf3+0x5f0>
   21554:	000e8913          	mv	s2,t4
   21558:	f5dff06f          	j	214b4 <__subtf3+0x59c>
   2155c:	000087b7          	lui	a5,0x8
   21560:	00148713          	addi	a4,s1,1
   21564:	ffe78693          	addi	a3,a5,-2 # 7ffe <exit-0x80ea>
   21568:	00d77733          	and	a4,a4,a3
   2156c:	0a071463          	bnez	a4,21614 <__subtf3+0x6fc>
   21570:	00c36533          	or	a0,t1,a2
   21574:	0115e6b3          	or	a3,a1,a7
   21578:	06049863          	bnez	s1,215e8 <__subtf3+0x6d0>
   2157c:	00069e63          	bnez	a3,21598 <__subtf3+0x680>
   21580:	00000593          	li	a1,0
   21584:	aa0506e3          	beqz	a0,21030 <__subtf3+0x118>
   21588:	00030593          	mv	a1,t1
   2158c:	00060893          	mv	a7,a2
   21590:	000e8913          	mv	s2,t4
   21594:	b5dff06f          	j	210f0 <__subtf3+0x1d8>
   21598:	b4050ce3          	beqz	a0,210f0 <__subtf3+0x1d8>
   2159c:	40c886b3          	sub	a3,a7,a2
   215a0:	00d8b533          	sltu	a0,a7,a3
   215a4:	406587b3          	sub	a5,a1,t1
   215a8:	40a787b3          	sub	a5,a5,a0
   215ac:	0337d513          	srli	a0,a5,0x33
   215b0:	00157513          	andi	a0,a0,1
   215b4:	00050e63          	beqz	a0,215d0 <__subtf3+0x6b8>
   215b8:	41160533          	sub	a0,a2,a7
   215bc:	40b305b3          	sub	a1,t1,a1
   215c0:	00a63633          	sltu	a2,a2,a0
   215c4:	00050893          	mv	a7,a0
   215c8:	40c585b3          	sub	a1,a1,a2
   215cc:	fc5ff06f          	j	21590 <__subtf3+0x678>
   215d0:	00f6e533          	or	a0,a3,a5
   215d4:	00000593          	li	a1,0
   215d8:	a4050ce3          	beqz	a0,21030 <__subtf3+0x118>
   215dc:	00078593          	mv	a1,a5
   215e0:	00068893          	mv	a7,a3
   215e4:	b0dff06f          	j	210f0 <__subtf3+0x1d8>
   215e8:	fff78793          	addi	a5,a5,-1
   215ec:	00069e63          	bnez	a3,21608 <__subtf3+0x6f0>
   215f0:	1a050a63          	beqz	a0,217a4 <__subtf3+0x88c>
   215f4:	00030593          	mv	a1,t1
   215f8:	00060893          	mv	a7,a2
   215fc:	000e8913          	mv	s2,t4
   21600:	00078493          	mv	s1,a5
   21604:	aedff06f          	j	210f0 <__subtf3+0x1d8>
   21608:	00078493          	mv	s1,a5
   2160c:	ae0502e3          	beqz	a0,210f0 <__subtf3+0x1d8>
   21610:	ce9ff06f          	j	212f8 <__subtf3+0x3e0>
   21614:	40c88533          	sub	a0,a7,a2
   21618:	00a8b7b3          	sltu	a5,a7,a0
   2161c:	40658433          	sub	s0,a1,t1
   21620:	40f40433          	sub	s0,s0,a5
   21624:	03345793          	srli	a5,s0,0x33
   21628:	0017f793          	andi	a5,a5,1
   2162c:	00050993          	mv	s3,a0
   21630:	06078c63          	beqz	a5,216a8 <__subtf3+0x790>
   21634:	411609b3          	sub	s3,a2,a7
   21638:	40b30433          	sub	s0,t1,a1
   2163c:	01363633          	sltu	a2,a2,s3
   21640:	40c40433          	sub	s0,s0,a2
   21644:	000e8913          	mv	s2,t4
   21648:	06040c63          	beqz	s0,216c0 <__subtf3+0x7a8>
   2164c:	00040513          	mv	a0,s0
   21650:	640000ef          	jal	ra,21c90 <__clzdi2>
   21654:	ff45071b          	addiw	a4,a0,-12
   21658:	04000593          	li	a1,64
   2165c:	40e585bb          	subw	a1,a1,a4
   21660:	00e41433          	sll	s0,s0,a4
   21664:	00b9d5b3          	srl	a1,s3,a1
   21668:	0085e5b3          	or	a1,a1,s0
   2166c:	00e99433          	sll	s0,s3,a4
   21670:	10974063          	blt	a4,s1,21770 <__subtf3+0x858>
   21674:	4097073b          	subw	a4,a4,s1
   21678:	0017071b          	addiw	a4,a4,1
   2167c:	04000793          	li	a5,64
   21680:	40e787bb          	subw	a5,a5,a4
   21684:	00f59533          	sll	a0,a1,a5
   21688:	00e456b3          	srl	a3,s0,a4
   2168c:	00f417b3          	sll	a5,s0,a5
   21690:	00d56533          	or	a0,a0,a3
   21694:	00f037b3          	snez	a5,a5
   21698:	00f568b3          	or	a7,a0,a5
   2169c:	00e5d5b3          	srl	a1,a1,a4
   216a0:	00000493          	li	s1,0
   216a4:	a4dff06f          	j	210f0 <__subtf3+0x1d8>
   216a8:	00856533          	or	a0,a0,s0
   216ac:	f8051ee3          	bnez	a0,21648 <__subtf3+0x730>
   216b0:	00000593          	li	a1,0
   216b4:	00000493          	li	s1,0
   216b8:	00000713          	li	a4,0
   216bc:	975ff06f          	j	21030 <__subtf3+0x118>
   216c0:	00098513          	mv	a0,s3
   216c4:	5cc000ef          	jal	ra,21c90 <__clzdi2>
   216c8:	0345071b          	addiw	a4,a0,52
   216cc:	03f00613          	li	a2,63
   216d0:	f8e654e3          	bge	a2,a4,21658 <__subtf3+0x740>
   216d4:	ff45059b          	addiw	a1,a0,-12
   216d8:	00b995b3          	sll	a1,s3,a1
   216dc:	04974063          	blt	a4,s1,2171c <__subtf3+0x804>
   216e0:	409707bb          	subw	a5,a4,s1
   216e4:	0017871b          	addiw	a4,a5,1
   216e8:	f8e65ae3          	bge	a2,a4,2167c <__subtf3+0x764>
   216ec:	fc17879b          	addiw	a5,a5,-63
   216f0:	04000613          	li	a2,64
   216f4:	00f5d7b3          	srl	a5,a1,a5
   216f8:	00000513          	li	a0,0
   216fc:	00c70863          	beq	a4,a2,2170c <__subtf3+0x7f4>
   21700:	08000513          	li	a0,128
   21704:	40e5053b          	subw	a0,a0,a4
   21708:	00a59533          	sll	a0,a1,a0
   2170c:	00a03533          	snez	a0,a0
   21710:	00f568b3          	or	a7,a0,a5
   21714:	00000593          	li	a1,0
   21718:	f89ff06f          	j	216a0 <__subtf3+0x788>
   2171c:	fff00793          	li	a5,-1
   21720:	03379793          	slli	a5,a5,0x33
   21724:	fff78793          	addi	a5,a5,-1
   21728:	40e484b3          	sub	s1,s1,a4
   2172c:	00f5f5b3          	and	a1,a1,a5
   21730:	00000893          	li	a7,0
   21734:	03d59793          	slli	a5,a1,0x3d
   21738:	0038d513          	srli	a0,a7,0x3
   2173c:	00a7e533          	or	a0,a5,a0
   21740:	000087b7          	lui	a5,0x8
   21744:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   21748:	0035d593          	srli	a1,a1,0x3
   2174c:	00090713          	mv	a4,s2
   21750:	8ef490e3          	bne	s1,a5,21030 <__subtf3+0x118>
   21754:	00b565b3          	or	a1,a0,a1
   21758:	06059263          	bnez	a1,217bc <__subtf3+0x8a4>
   2175c:	000087b7          	lui	a5,0x8
   21760:	00090713          	mv	a4,s2
   21764:	fff78493          	addi	s1,a5,-1 # 7fff <exit-0x80e9>
   21768:	00000593          	li	a1,0
   2176c:	b95ff06f          	j	21300 <__subtf3+0x3e8>
   21770:	fff00793          	li	a5,-1
   21774:	03379793          	slli	a5,a5,0x33
   21778:	fff78793          	addi	a5,a5,-1
   2177c:	40e484b3          	sub	s1,s1,a4
   21780:	00f5f5b3          	and	a1,a1,a5
   21784:	00040893          	mv	a7,s0
   21788:	969ff06f          	j	210f0 <__subtf3+0x1d8>
   2178c:	00030593          	mv	a1,t1
   21790:	00060893          	mv	a7,a2
   21794:	95dff06f          	j	210f0 <__subtf3+0x1d8>
   21798:	00030593          	mv	a1,t1
   2179c:	00060893          	mv	a7,a2
   217a0:	e61ff06f          	j	21600 <__subtf3+0x6e8>
   217a4:	00100593          	li	a1,1
   217a8:	00078493          	mv	s1,a5
   217ac:	02f59593          	slli	a1,a1,0x2f
   217b0:	881ff06f          	j	21030 <__subtf3+0x118>
   217b4:	00090713          	mv	a4,s2
   217b8:	fb1ff06f          	j	21768 <__subtf3+0x850>
   217bc:	00100593          	li	a1,1
   217c0:	02f59593          	slli	a1,a1,0x2f
   217c4:	00000513          	li	a0,0
   217c8:	ef1ff06f          	j	216b8 <__subtf3+0x7a0>

00000000000217cc <__fixtfsi>:
   217cc:	00159713          	slli	a4,a1,0x1
   217d0:	000047b7          	lui	a5,0x4
   217d4:	03175713          	srli	a4,a4,0x31
   217d8:	ffe78613          	addi	a2,a5,-2 # 3ffe <exit-0xc0ea>
   217dc:	03f5d693          	srli	a3,a1,0x3f
   217e0:	00000513          	li	a0,0
   217e4:	04e65663          	bge	a2,a4,21830 <__fixtfsi+0x64>
   217e8:	01d78793          	addi	a5,a5,29
   217ec:	00e7da63          	bge	a5,a4,21800 <__fixtfsi+0x34>
   217f0:	80000537          	lui	a0,0x80000
   217f4:	fff54513          	not	a0,a0
   217f8:	00d5053b          	addw	a0,a0,a3
   217fc:	00008067          	ret
   21800:	01059513          	slli	a0,a1,0x10
   21804:	00100793          	li	a5,1
   21808:	03079793          	slli	a5,a5,0x30
   2180c:	01055513          	srli	a0,a0,0x10
   21810:	00f56533          	or	a0,a0,a5
   21814:	000047b7          	lui	a5,0x4
   21818:	02f7879b          	addiw	a5,a5,47 # 402f <exit-0xc0b9>
   2181c:	40e787bb          	subw	a5,a5,a4
   21820:	00f55533          	srl	a0,a0,a5
   21824:	0005051b          	sext.w	a0,a0
   21828:	00068463          	beqz	a3,21830 <__fixtfsi+0x64>
   2182c:	40a0053b          	negw	a0,a0
   21830:	00008067          	ret

0000000000021834 <__floatsitf>:
   21834:	fe010113          	addi	sp,sp,-32
   21838:	00113c23          	sd	ra,24(sp)
   2183c:	00813823          	sd	s0,16(sp)
   21840:	00913423          	sd	s1,8(sp)
   21844:	06050463          	beqz	a0,218ac <__floatsitf+0x78>
   21848:	0005079b          	sext.w	a5,a0
   2184c:	03f55493          	srli	s1,a0,0x3f
   21850:	00055463          	bgez	a0,21858 <__floatsitf+0x24>
   21854:	40f007bb          	negw	a5,a5
   21858:	02079413          	slli	s0,a5,0x20
   2185c:	02045413          	srli	s0,s0,0x20
   21860:	00040513          	mv	a0,s0
   21864:	42c000ef          	jal	ra,21c90 <__clzdi2>
   21868:	000045b7          	lui	a1,0x4
   2186c:	03e5859b          	addiw	a1,a1,62 # 403e <exit-0xc0aa>
   21870:	40a585bb          	subw	a1,a1,a0
   21874:	ff15051b          	addiw	a0,a0,-15 # 7ffffff1 <__BSS_END__+0x7ffdb1e9>
   21878:	00a417b3          	sll	a5,s0,a0
   2187c:	01813083          	ld	ra,24(sp)
   21880:	01013403          	ld	s0,16(sp)
   21884:	00f4949b          	slliw	s1,s1,0xf
   21888:	0095e5b3          	or	a1,a1,s1
   2188c:	01079793          	slli	a5,a5,0x10
   21890:	03059593          	slli	a1,a1,0x30
   21894:	0107d793          	srli	a5,a5,0x10
   21898:	00813483          	ld	s1,8(sp)
   2189c:	00000513          	li	a0,0
   218a0:	00b7e5b3          	or	a1,a5,a1
   218a4:	02010113          	addi	sp,sp,32
   218a8:	00008067          	ret
   218ac:	00000793          	li	a5,0
   218b0:	00000593          	li	a1,0
   218b4:	00000493          	li	s1,0
   218b8:	fc5ff06f          	j	2187c <__floatsitf+0x48>

00000000000218bc <__extenddftf2>:
   218bc:	03455793          	srli	a5,a0,0x34
   218c0:	7ff7f793          	andi	a5,a5,2047
   218c4:	fe010113          	addi	sp,sp,-32
   218c8:	00178713          	addi	a4,a5,1
   218cc:	00813823          	sd	s0,16(sp)
   218d0:	00913423          	sd	s1,8(sp)
   218d4:	00c51413          	slli	s0,a0,0xc
   218d8:	00113c23          	sd	ra,24(sp)
   218dc:	7fe77713          	andi	a4,a4,2046
   218e0:	00c45413          	srli	s0,s0,0xc
   218e4:	03f55493          	srli	s1,a0,0x3f
   218e8:	04070463          	beqz	a4,21930 <__extenddftf2+0x74>
   218ec:	00004737          	lui	a4,0x4
   218f0:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc4e8>
   218f4:	00445593          	srli	a1,s0,0x4
   218f8:	00e787b3          	add	a5,a5,a4
   218fc:	03c41413          	slli	s0,s0,0x3c
   21900:	00f4951b          	slliw	a0,s1,0xf
   21904:	01813083          	ld	ra,24(sp)
   21908:	00a7e7b3          	or	a5,a5,a0
   2190c:	00040513          	mv	a0,s0
   21910:	01013403          	ld	s0,16(sp)
   21914:	01059593          	slli	a1,a1,0x10
   21918:	03079793          	slli	a5,a5,0x30
   2191c:	0105d593          	srli	a1,a1,0x10
   21920:	00813483          	ld	s1,8(sp)
   21924:	00f5e5b3          	or	a1,a1,a5
   21928:	02010113          	addi	sp,sp,32
   2192c:	00008067          	ret
   21930:	04079a63          	bnez	a5,21984 <__extenddftf2+0xc8>
   21934:	00000593          	li	a1,0
   21938:	fc0404e3          	beqz	s0,21900 <__extenddftf2+0x44>
   2193c:	00040513          	mv	a0,s0
   21940:	350000ef          	jal	ra,21c90 <__clzdi2>
   21944:	0005071b          	sext.w	a4,a0
   21948:	00e00793          	li	a5,14
   2194c:	02e7c463          	blt	a5,a4,21974 <__extenddftf2+0xb8>
   21950:	00f00593          	li	a1,15
   21954:	40a585bb          	subw	a1,a1,a0
   21958:	0315079b          	addiw	a5,a0,49
   2195c:	00b455b3          	srl	a1,s0,a1
   21960:	00f41433          	sll	s0,s0,a5
   21964:	000047b7          	lui	a5,0x4
   21968:	c0c7879b          	addiw	a5,a5,-1012 # 3c0c <exit-0xc4dc>
   2196c:	40a787bb          	subw	a5,a5,a0
   21970:	f91ff06f          	j	21900 <__extenddftf2+0x44>
   21974:	ff15059b          	addiw	a1,a0,-15
   21978:	00b415b3          	sll	a1,s0,a1
   2197c:	00000413          	li	s0,0
   21980:	fe5ff06f          	j	21964 <__extenddftf2+0xa8>
   21984:	00000593          	li	a1,0
   21988:	00040c63          	beqz	s0,219a0 <__extenddftf2+0xe4>
   2198c:	00100793          	li	a5,1
   21990:	00445593          	srli	a1,s0,0x4
   21994:	02f79793          	slli	a5,a5,0x2f
   21998:	00f5e5b3          	or	a1,a1,a5
   2199c:	03c41413          	slli	s0,s0,0x3c
   219a0:	000087b7          	lui	a5,0x8
   219a4:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   219a8:	f59ff06f          	j	21900 <__extenddftf2+0x44>

00000000000219ac <__trunctfdf2>:
   219ac:	00008737          	lui	a4,0x8
   219b0:	fff70693          	addi	a3,a4,-1 # 7fff <exit-0x80e9>
   219b4:	0305d793          	srli	a5,a1,0x30
   219b8:	03f5d813          	srli	a6,a1,0x3f
   219bc:	01059593          	slli	a1,a1,0x10
   219c0:	00d7f7b3          	and	a5,a5,a3
   219c4:	00d5d593          	srli	a1,a1,0xd
   219c8:	03d55693          	srli	a3,a0,0x3d
   219cc:	00b6e6b3          	or	a3,a3,a1
   219d0:	ffe70713          	addi	a4,a4,-2
   219d4:	00178593          	addi	a1,a5,1
   219d8:	00e5f733          	and	a4,a1,a4
   219dc:	00351613          	slli	a2,a0,0x3
   219e0:	10070e63          	beqz	a4,21afc <__trunctfdf2+0x150>
   219e4:	ffffc737          	lui	a4,0xffffc
   219e8:	40070713          	addi	a4,a4,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd75f8>
   219ec:	00e787b3          	add	a5,a5,a4
   219f0:	7fe00713          	li	a4,2046
   219f4:	16f74463          	blt	a4,a5,21b5c <__trunctfdf2+0x1b0>
   219f8:	0af04a63          	bgtz	a5,21aac <__trunctfdf2+0x100>
   219fc:	fcc00713          	li	a4,-52
   21a00:	16e7c263          	blt	a5,a4,21b64 <__trunctfdf2+0x1b8>
   21a04:	00100713          	li	a4,1
   21a08:	03d00893          	li	a7,61
   21a0c:	03371713          	slli	a4,a4,0x33
   21a10:	40f888b3          	sub	a7,a7,a5
   21a14:	0007851b          	sext.w	a0,a5
   21a18:	03f00793          	li	a5,63
   21a1c:	00e6e6b3          	or	a3,a3,a4
   21a20:	0317cc63          	blt	a5,a7,21a58 <__trunctfdf2+0xac>
   21a24:	03d00793          	li	a5,61
   21a28:	0035071b          	addiw	a4,a0,3
   21a2c:	40a787bb          	subw	a5,a5,a0
   21a30:	00f657b3          	srl	a5,a2,a5
   21a34:	00e61633          	sll	a2,a2,a4
   21a38:	00c03633          	snez	a2,a2
   21a3c:	00c7e7b3          	or	a5,a5,a2
   21a40:	00e696b3          	sll	a3,a3,a4
   21a44:	00f6e6b3          	or	a3,a3,a5
   21a48:	0076f793          	andi	a5,a3,7
   21a4c:	0c079c63          	bnez	a5,21b24 <__trunctfdf2+0x178>
   21a50:	0036d713          	srli	a4,a3,0x3
   21a54:	03c0006f          	j	21a90 <__trunctfdf2+0xe4>
   21a58:	ffd00713          	li	a4,-3
   21a5c:	40a7073b          	subw	a4,a4,a0
   21a60:	04000793          	li	a5,64
   21a64:	00e6d733          	srl	a4,a3,a4
   21a68:	00000593          	li	a1,0
   21a6c:	00f88663          	beq	a7,a5,21a78 <__trunctfdf2+0xcc>
   21a70:	0435079b          	addiw	a5,a0,67
   21a74:	00f695b3          	sll	a1,a3,a5
   21a78:	00c5e5b3          	or	a1,a1,a2
   21a7c:	00b035b3          	snez	a1,a1
   21a80:	00b76733          	or	a4,a4,a1
   21a84:	00777793          	andi	a5,a4,7
   21a88:	0a079a63          	bnez	a5,21b3c <__trunctfdf2+0x190>
   21a8c:	00375713          	srli	a4,a4,0x3
   21a90:	00c71713          	slli	a4,a4,0xc
   21a94:	00c75713          	srli	a4,a4,0xc
   21a98:	03479793          	slli	a5,a5,0x34
   21a9c:	00e7e7b3          	or	a5,a5,a4
   21aa0:	03f81513          	slli	a0,a6,0x3f
   21aa4:	00a7e533          	or	a0,a5,a0
   21aa8:	00008067          	ret
   21aac:	00751713          	slli	a4,a0,0x7
   21ab0:	00e03733          	snez	a4,a4
   21ab4:	03c65613          	srli	a2,a2,0x3c
   21ab8:	00c76733          	or	a4,a4,a2
   21abc:	00469693          	slli	a3,a3,0x4
   21ac0:	00e6e6b3          	or	a3,a3,a4
   21ac4:	00777713          	andi	a4,a4,7
   21ac8:	f80704e3          	beqz	a4,21a50 <__trunctfdf2+0xa4>
   21acc:	00f6f613          	andi	a2,a3,15
   21ad0:	00400593          	li	a1,4
   21ad4:	0036d713          	srli	a4,a3,0x3
   21ad8:	fab60ce3          	beq	a2,a1,21a90 <__trunctfdf2+0xe4>
   21adc:	00468693          	addi	a3,a3,4
   21ae0:	0376d613          	srli	a2,a3,0x37
   21ae4:	00167613          	andi	a2,a2,1
   21ae8:	0036d713          	srli	a4,a3,0x3
   21aec:	fa0602e3          	beqz	a2,21a90 <__trunctfdf2+0xe4>
   21af0:	00178793          	addi	a5,a5,1
   21af4:	00000713          	li	a4,0
   21af8:	f99ff06f          	j	21a90 <__trunctfdf2+0xe4>
   21afc:	00000713          	li	a4,0
   21b00:	f80788e3          	beqz	a5,21a90 <__trunctfdf2+0xe4>
   21b04:	00c6e733          	or	a4,a3,a2
   21b08:	7ff00793          	li	a5,2047
   21b0c:	f80702e3          	beqz	a4,21a90 <__trunctfdf2+0xe4>
   21b10:	00100713          	li	a4,1
   21b14:	00000813          	li	a6,0
   21b18:	7ff00793          	li	a5,2047
   21b1c:	03371713          	slli	a4,a4,0x33
   21b20:	f71ff06f          	j	21a90 <__trunctfdf2+0xe4>
   21b24:	00f6f793          	andi	a5,a3,15
   21b28:	00400713          	li	a4,4
   21b2c:	02e79463          	bne	a5,a4,21b54 <__trunctfdf2+0x1a8>
   21b30:	0036d713          	srli	a4,a3,0x3
   21b34:	00000793          	li	a5,0
   21b38:	f59ff06f          	j	21a90 <__trunctfdf2+0xe4>
   21b3c:	00f77793          	andi	a5,a4,15
   21b40:	00400693          	li	a3,4
   21b44:	00d78463          	beq	a5,a3,21b4c <__trunctfdf2+0x1a0>
   21b48:	00470713          	addi	a4,a4,4
   21b4c:	00375713          	srli	a4,a4,0x3
   21b50:	fe5ff06f          	j	21b34 <__trunctfdf2+0x188>
   21b54:	00000793          	li	a5,0
   21b58:	f85ff06f          	j	21adc <__trunctfdf2+0x130>
   21b5c:	7ff00793          	li	a5,2047
   21b60:	f95ff06f          	j	21af4 <__trunctfdf2+0x148>
   21b64:	00000793          	li	a5,0
   21b68:	f8dff06f          	j	21af4 <__trunctfdf2+0x148>

0000000000021b6c <__muldi3>:
   21b6c:	00050613          	mv	a2,a0
   21b70:	00000513          	li	a0,0
   21b74:	0015f693          	andi	a3,a1,1
   21b78:	00068463          	beqz	a3,21b80 <__muldi3+0x14>
   21b7c:	00c50533          	add	a0,a0,a2
   21b80:	0015d593          	srli	a1,a1,0x1
   21b84:	00161613          	slli	a2,a2,0x1
   21b88:	fe0596e3          	bnez	a1,21b74 <__muldi3+0x8>
   21b8c:	00008067          	ret

0000000000021b90 <__udivsi3>:
   21b90:	02051513          	slli	a0,a0,0x20
   21b94:	02059593          	slli	a1,a1,0x20
   21b98:	00008293          	mv	t0,ra
   21b9c:	03c000ef          	jal	ra,21bd8 <__hidden___udivdi3>
   21ba0:	0005051b          	sext.w	a0,a0
   21ba4:	00028067          	jr	t0 # 10390 <memset+0xb4>

0000000000021ba8 <__umodsi3>:
   21ba8:	02051513          	slli	a0,a0,0x20
   21bac:	02059593          	slli	a1,a1,0x20
   21bb0:	02055513          	srli	a0,a0,0x20
   21bb4:	0205d593          	srli	a1,a1,0x20
   21bb8:	00008293          	mv	t0,ra
   21bbc:	01c000ef          	jal	ra,21bd8 <__hidden___udivdi3>
   21bc0:	0005851b          	sext.w	a0,a1
   21bc4:	00028067          	jr	t0

0000000000021bc8 <__divsi3>:
   21bc8:	fff00293          	li	t0,-1
   21bcc:	0a558c63          	beq	a1,t0,21c84 <__moddi3+0x30>

0000000000021bd0 <__divdi3>:
   21bd0:	06054063          	bltz	a0,21c30 <__umoddi3+0x10>
   21bd4:	0605c663          	bltz	a1,21c40 <__umoddi3+0x20>

0000000000021bd8 <__hidden___udivdi3>:
   21bd8:	00058613          	mv	a2,a1
   21bdc:	00050593          	mv	a1,a0
   21be0:	fff00513          	li	a0,-1
   21be4:	02060c63          	beqz	a2,21c1c <__hidden___udivdi3+0x44>
   21be8:	00100693          	li	a3,1
   21bec:	00b67a63          	bgeu	a2,a1,21c00 <__hidden___udivdi3+0x28>
   21bf0:	00c05863          	blez	a2,21c00 <__hidden___udivdi3+0x28>
   21bf4:	00161613          	slli	a2,a2,0x1
   21bf8:	00169693          	slli	a3,a3,0x1
   21bfc:	feb66ae3          	bltu	a2,a1,21bf0 <__hidden___udivdi3+0x18>
   21c00:	00000513          	li	a0,0
   21c04:	00c5e663          	bltu	a1,a2,21c10 <__hidden___udivdi3+0x38>
   21c08:	40c585b3          	sub	a1,a1,a2
   21c0c:	00d56533          	or	a0,a0,a3
   21c10:	0016d693          	srli	a3,a3,0x1
   21c14:	00165613          	srli	a2,a2,0x1
   21c18:	fe0696e3          	bnez	a3,21c04 <__hidden___udivdi3+0x2c>
   21c1c:	00008067          	ret

0000000000021c20 <__umoddi3>:
   21c20:	00008293          	mv	t0,ra
   21c24:	fb5ff0ef          	jal	ra,21bd8 <__hidden___udivdi3>
   21c28:	00058513          	mv	a0,a1
   21c2c:	00028067          	jr	t0
   21c30:	40a00533          	neg	a0,a0
   21c34:	00b04863          	bgtz	a1,21c44 <__umoddi3+0x24>
   21c38:	40b005b3          	neg	a1,a1
   21c3c:	f9dff06f          	j	21bd8 <__hidden___udivdi3>
   21c40:	40b005b3          	neg	a1,a1
   21c44:	00008293          	mv	t0,ra
   21c48:	f91ff0ef          	jal	ra,21bd8 <__hidden___udivdi3>
   21c4c:	40a00533          	neg	a0,a0
   21c50:	00028067          	jr	t0

0000000000021c54 <__moddi3>:
   21c54:	00008293          	mv	t0,ra
   21c58:	0005ca63          	bltz	a1,21c6c <__moddi3+0x18>
   21c5c:	00054c63          	bltz	a0,21c74 <__moddi3+0x20>
   21c60:	f79ff0ef          	jal	ra,21bd8 <__hidden___udivdi3>
   21c64:	00058513          	mv	a0,a1
   21c68:	00028067          	jr	t0
   21c6c:	40b005b3          	neg	a1,a1
   21c70:	fe0558e3          	bgez	a0,21c60 <__moddi3+0xc>
   21c74:	40a00533          	neg	a0,a0
   21c78:	f61ff0ef          	jal	ra,21bd8 <__hidden___udivdi3>
   21c7c:	40b00533          	neg	a0,a1
   21c80:	00028067          	jr	t0
   21c84:	01f29293          	slli	t0,t0,0x1f
   21c88:	f45514e3          	bne	a0,t0,21bd0 <__divdi3>
   21c8c:	00008067          	ret

0000000000021c90 <__clzdi2>:
   21c90:	03855793          	srli	a5,a0,0x38
   21c94:	04079063          	bnez	a5,21cd4 <__clzdi2+0x44>
   21c98:	03800793          	li	a5,56
   21c9c:	ff878793          	addi	a5,a5,-8
   21ca0:	00078863          	beqz	a5,21cb0 <__clzdi2+0x20>
   21ca4:	00f55733          	srl	a4,a0,a5
   21ca8:	0ff77713          	zext.b	a4,a4
   21cac:	fe0708e3          	beqz	a4,21c9c <__clzdi2+0xc>
   21cb0:	00023737          	lui	a4,0x23
   21cb4:	04000693          	li	a3,64
   21cb8:	40f686b3          	sub	a3,a3,a5
   21cbc:	00f55533          	srl	a0,a0,a5
   21cc0:	b0070793          	addi	a5,a4,-1280 # 22b00 <__clz_tab>
   21cc4:	00a787b3          	add	a5,a5,a0
   21cc8:	0007c503          	lbu	a0,0(a5)
   21ccc:	40a6853b          	subw	a0,a3,a0
   21cd0:	00008067          	ret
   21cd4:	03800793          	li	a5,56
   21cd8:	fd9ff06f          	j	21cb0 <__clzdi2+0x20>
