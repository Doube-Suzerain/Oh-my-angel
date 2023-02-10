
b：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	addi	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	2ec000ef          	jal	ra,103e8 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11dc8 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	514000ef          	jal	ra,10628 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	51050513          	addi	a0,a0,1296 # 10510 <__libc_fini_array>
   10128:	4440006f          	j	1056c <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	d5018193          	addi	gp,gp,-688 # 11e80 <__global_pointer$>
   10138:	f6018513          	addi	a0,gp,-160 # 11de0 <completed.1>
   1013c:	f9818613          	addi	a2,gp,-104 # 11e18 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	1c4000ef          	jal	ra,1030c <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	42050513          	addi	a0,a0,1056 # 1056c <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	3b850513          	addi	a0,a0,952 # 10510 <__libc_fini_array>
   10160:	40c000ef          	jal	ra,1056c <atexit>
   10164:	10c000ef          	jal	ra,10270 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	addi	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	0c0000ef          	jal	ra,10234 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	addi	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11de0 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	66050513          	addi	a0,a0,1632 # 11660 <__FRAME_END__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11de0 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	addi	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	addi	a1,gp,-152 # 11de8 <object.0>
   101d0:	66050513          	addi	a0,a0,1632 # 11660 <__FRAME_END__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <fact>:
   101e0:	fe010113          	addi	sp,sp,-32
   101e4:	00113c23          	sd	ra,24(sp)
   101e8:	00813823          	sd	s0,16(sp)
   101ec:	02010413          	addi	s0,sp,32
   101f0:	fea43423          	sd	a0,-24(s0)
   101f4:	fe843783          	ld	a5,-24(s0)
   101f8:	00079663          	bnez	a5,10204 <fact+0x24>
   101fc:	00100793          	li	a5,1
   10200:	0200006f          	j	10220 <fact+0x40>
   10204:	fe843783          	ld	a5,-24(s0)
   10208:	fff78793          	addi	a5,a5,-1
   1020c:	00078513          	mv	a0,a5
   10210:	fd1ff0ef          	jal	ra,101e0 <fact>
   10214:	00050713          	mv	a4,a0
   10218:	fe843783          	ld	a5,-24(s0)
   1021c:	02f707b3          	mul	a5,a4,a5
   10220:	00078513          	mv	a0,a5
   10224:	01813083          	ld	ra,24(sp)
   10228:	01013403          	ld	s0,16(sp)
   1022c:	02010113          	addi	sp,sp,32
   10230:	00008067          	ret

0000000000010234 <main>:
   10234:	fe010113          	addi	sp,sp,-32
   10238:	00113c23          	sd	ra,24(sp)
   1023c:	00813823          	sd	s0,16(sp)
   10240:	02010413          	addi	s0,sp,32
   10244:	00600793          	li	a5,6
   10248:	fef43423          	sd	a5,-24(s0)
   1024c:	fe843503          	ld	a0,-24(s0)
   10250:	f91ff0ef          	jal	ra,101e0 <fact>
   10254:	fea43023          	sd	a0,-32(s0)
   10258:	00000793          	li	a5,0
   1025c:	00078513          	mv	a0,a5
   10260:	01813083          	ld	ra,24(sp)
   10264:	01013403          	ld	s0,16(sp)
   10268:	02010113          	addi	sp,sp,32
   1026c:	00008067          	ret

0000000000010270 <__libc_init_array>:
   10270:	fe010113          	addi	sp,sp,-32
   10274:	00813823          	sd	s0,16(sp)
   10278:	000117b7          	lui	a5,0x11
   1027c:	00011437          	lui	s0,0x11
   10280:	01213023          	sd	s2,0(sp)
   10284:	66478793          	addi	a5,a5,1636 # 11664 <__preinit_array_end>
   10288:	66440713          	addi	a4,s0,1636 # 11664 <__preinit_array_end>
   1028c:	00113c23          	sd	ra,24(sp)
   10290:	00913423          	sd	s1,8(sp)
   10294:	40e78933          	sub	s2,a5,a4
   10298:	02e78263          	beq	a5,a4,102bc <__libc_init_array+0x4c>
   1029c:	40395913          	srai	s2,s2,0x3
   102a0:	66440413          	addi	s0,s0,1636
   102a4:	00000493          	li	s1,0
   102a8:	00043783          	ld	a5,0(s0)
   102ac:	00148493          	addi	s1,s1,1
   102b0:	00840413          	addi	s0,s0,8
   102b4:	000780e7          	jalr	a5
   102b8:	ff24e8e3          	bltu	s1,s2,102a8 <__libc_init_array+0x38>
   102bc:	00011437          	lui	s0,0x11
   102c0:	000117b7          	lui	a5,0x11
   102c4:	67878793          	addi	a5,a5,1656 # 11678 <__do_global_dtors_aux_fini_array_entry>
   102c8:	66840713          	addi	a4,s0,1640 # 11668 <__init_array_start>
   102cc:	40e78933          	sub	s2,a5,a4
   102d0:	40395913          	srai	s2,s2,0x3
   102d4:	02e78063          	beq	a5,a4,102f4 <__libc_init_array+0x84>
   102d8:	66840413          	addi	s0,s0,1640
   102dc:	00000493          	li	s1,0
   102e0:	00043783          	ld	a5,0(s0)
   102e4:	00148493          	addi	s1,s1,1
   102e8:	00840413          	addi	s0,s0,8
   102ec:	000780e7          	jalr	a5
   102f0:	ff24e8e3          	bltu	s1,s2,102e0 <__libc_init_array+0x70>
   102f4:	01813083          	ld	ra,24(sp)
   102f8:	01013403          	ld	s0,16(sp)
   102fc:	00813483          	ld	s1,8(sp)
   10300:	00013903          	ld	s2,0(sp)
   10304:	02010113          	addi	sp,sp,32
   10308:	00008067          	ret

000000000001030c <memset>:
   1030c:	00f00313          	li	t1,15
   10310:	00050713          	mv	a4,a0
   10314:	02c37a63          	bgeu	t1,a2,10348 <memset+0x3c>
   10318:	00f77793          	andi	a5,a4,15
   1031c:	0a079063          	bnez	a5,103bc <memset+0xb0>
   10320:	06059e63          	bnez	a1,1039c <memset+0x90>
   10324:	ff067693          	andi	a3,a2,-16
   10328:	00f67613          	andi	a2,a2,15
   1032c:	00e686b3          	add	a3,a3,a4
   10330:	00b73023          	sd	a1,0(a4)
   10334:	00b73423          	sd	a1,8(a4)
   10338:	01070713          	addi	a4,a4,16
   1033c:	fed76ae3          	bltu	a4,a3,10330 <memset+0x24>
   10340:	00061463          	bnez	a2,10348 <memset+0x3c>
   10344:	00008067          	ret
   10348:	40c306b3          	sub	a3,t1,a2
   1034c:	00269693          	slli	a3,a3,0x2
   10350:	00000297          	auipc	t0,0x0
   10354:	005686b3          	add	a3,a3,t0
   10358:	00c68067          	jr	12(a3)
   1035c:	00b70723          	sb	a1,14(a4)
   10360:	00b706a3          	sb	a1,13(a4)
   10364:	00b70623          	sb	a1,12(a4)
   10368:	00b705a3          	sb	a1,11(a4)
   1036c:	00b70523          	sb	a1,10(a4)
   10370:	00b704a3          	sb	a1,9(a4)
   10374:	00b70423          	sb	a1,8(a4)
   10378:	00b703a3          	sb	a1,7(a4)
   1037c:	00b70323          	sb	a1,6(a4)
   10380:	00b702a3          	sb	a1,5(a4)
   10384:	00b70223          	sb	a1,4(a4)
   10388:	00b701a3          	sb	a1,3(a4)
   1038c:	00b70123          	sb	a1,2(a4)
   10390:	00b700a3          	sb	a1,1(a4)
   10394:	00b70023          	sb	a1,0(a4)
   10398:	00008067          	ret
   1039c:	0ff5f593          	zext.b	a1,a1
   103a0:	00859693          	slli	a3,a1,0x8
   103a4:	00d5e5b3          	or	a1,a1,a3
   103a8:	01059693          	slli	a3,a1,0x10
   103ac:	00d5e5b3          	or	a1,a1,a3
   103b0:	02059693          	slli	a3,a1,0x20
   103b4:	00d5e5b3          	or	a1,a1,a3
   103b8:	f6dff06f          	j	10324 <memset+0x18>
   103bc:	00279693          	slli	a3,a5,0x2
   103c0:	00000297          	auipc	t0,0x0
   103c4:	005686b3          	add	a3,a3,t0
   103c8:	00008293          	mv	t0,ra
   103cc:	f98680e7          	jalr	-104(a3)
   103d0:	00028093          	mv	ra,t0
   103d4:	ff078793          	addi	a5,a5,-16
   103d8:	40f70733          	sub	a4,a4,a5
   103dc:	00f60633          	add	a2,a2,a5
   103e0:	f6c374e3          	bgeu	t1,a2,10348 <memset+0x3c>
   103e4:	f3dff06f          	j	10320 <memset+0x14>

00000000000103e8 <__call_exitprocs>:
   103e8:	fb010113          	addi	sp,sp,-80
   103ec:	03413023          	sd	s4,32(sp)
   103f0:	f481ba03          	ld	s4,-184(gp) # 11dc8 <_global_impure_ptr>
   103f4:	03213823          	sd	s2,48(sp)
   103f8:	04113423          	sd	ra,72(sp)
   103fc:	1f8a3903          	ld	s2,504(s4)
   10400:	04813023          	sd	s0,64(sp)
   10404:	02913c23          	sd	s1,56(sp)
   10408:	03313423          	sd	s3,40(sp)
   1040c:	01513c23          	sd	s5,24(sp)
   10410:	01613823          	sd	s6,16(sp)
   10414:	01713423          	sd	s7,8(sp)
   10418:	01813023          	sd	s8,0(sp)
   1041c:	04090063          	beqz	s2,1045c <__call_exitprocs+0x74>
   10420:	00050b13          	mv	s6,a0
   10424:	00058b93          	mv	s7,a1
   10428:	00100a93          	li	s5,1
   1042c:	fff00993          	li	s3,-1
   10430:	00892483          	lw	s1,8(s2)
   10434:	fff4841b          	addiw	s0,s1,-1
   10438:	02044263          	bltz	s0,1045c <__call_exitprocs+0x74>
   1043c:	00349493          	slli	s1,s1,0x3
   10440:	009904b3          	add	s1,s2,s1
   10444:	040b8463          	beqz	s7,1048c <__call_exitprocs+0xa4>
   10448:	2084b783          	ld	a5,520(s1)
   1044c:	05778063          	beq	a5,s7,1048c <__call_exitprocs+0xa4>
   10450:	fff4041b          	addiw	s0,s0,-1
   10454:	ff848493          	addi	s1,s1,-8
   10458:	ff3416e3          	bne	s0,s3,10444 <__call_exitprocs+0x5c>
   1045c:	04813083          	ld	ra,72(sp)
   10460:	04013403          	ld	s0,64(sp)
   10464:	03813483          	ld	s1,56(sp)
   10468:	03013903          	ld	s2,48(sp)
   1046c:	02813983          	ld	s3,40(sp)
   10470:	02013a03          	ld	s4,32(sp)
   10474:	01813a83          	ld	s5,24(sp)
   10478:	01013b03          	ld	s6,16(sp)
   1047c:	00813b83          	ld	s7,8(sp)
   10480:	00013c03          	ld	s8,0(sp)
   10484:	05010113          	addi	sp,sp,80
   10488:	00008067          	ret
   1048c:	00892783          	lw	a5,8(s2)
   10490:	0084b703          	ld	a4,8(s1)
   10494:	fff7879b          	addiw	a5,a5,-1
   10498:	06878263          	beq	a5,s0,104fc <__call_exitprocs+0x114>
   1049c:	0004b423          	sd	zero,8(s1)
   104a0:	fa0708e3          	beqz	a4,10450 <__call_exitprocs+0x68>
   104a4:	31092783          	lw	a5,784(s2)
   104a8:	008a96bb          	sllw	a3,s5,s0
   104ac:	00892c03          	lw	s8,8(s2)
   104b0:	00d7f7b3          	and	a5,a5,a3
   104b4:	0007879b          	sext.w	a5,a5
   104b8:	02079263          	bnez	a5,104dc <__call_exitprocs+0xf4>
   104bc:	000700e7          	jalr	a4
   104c0:	00892703          	lw	a4,8(s2)
   104c4:	1f8a3783          	ld	a5,504(s4)
   104c8:	01871463          	bne	a4,s8,104d0 <__call_exitprocs+0xe8>
   104cc:	f92782e3          	beq	a5,s2,10450 <__call_exitprocs+0x68>
   104d0:	f80786e3          	beqz	a5,1045c <__call_exitprocs+0x74>
   104d4:	00078913          	mv	s2,a5
   104d8:	f59ff06f          	j	10430 <__call_exitprocs+0x48>
   104dc:	31492783          	lw	a5,788(s2)
   104e0:	1084b583          	ld	a1,264(s1)
   104e4:	00d7f7b3          	and	a5,a5,a3
   104e8:	0007879b          	sext.w	a5,a5
   104ec:	00079c63          	bnez	a5,10504 <__call_exitprocs+0x11c>
   104f0:	000b0513          	mv	a0,s6
   104f4:	000700e7          	jalr	a4
   104f8:	fc9ff06f          	j	104c0 <__call_exitprocs+0xd8>
   104fc:	00892423          	sw	s0,8(s2)
   10500:	fa1ff06f          	j	104a0 <__call_exitprocs+0xb8>
   10504:	00058513          	mv	a0,a1
   10508:	000700e7          	jalr	a4
   1050c:	fb5ff06f          	j	104c0 <__call_exitprocs+0xd8>

0000000000010510 <__libc_fini_array>:
   10510:	fe010113          	addi	sp,sp,-32
   10514:	00813823          	sd	s0,16(sp)
   10518:	000117b7          	lui	a5,0x11
   1051c:	00011437          	lui	s0,0x11
   10520:	67878793          	addi	a5,a5,1656 # 11678 <__do_global_dtors_aux_fini_array_entry>
   10524:	68040413          	addi	s0,s0,1664 # 11680 <impure_data>
   10528:	40f40433          	sub	s0,s0,a5
   1052c:	00913423          	sd	s1,8(sp)
   10530:	00113c23          	sd	ra,24(sp)
   10534:	40345493          	srai	s1,s0,0x3
   10538:	02048063          	beqz	s1,10558 <__libc_fini_array+0x48>
   1053c:	ff840413          	addi	s0,s0,-8
   10540:	00f40433          	add	s0,s0,a5
   10544:	00043783          	ld	a5,0(s0)
   10548:	fff48493          	addi	s1,s1,-1
   1054c:	ff840413          	addi	s0,s0,-8
   10550:	000780e7          	jalr	a5
   10554:	fe0498e3          	bnez	s1,10544 <__libc_fini_array+0x34>
   10558:	01813083          	ld	ra,24(sp)
   1055c:	01013403          	ld	s0,16(sp)
   10560:	00813483          	ld	s1,8(sp)
   10564:	02010113          	addi	sp,sp,32
   10568:	00008067          	ret

000000000001056c <atexit>:
   1056c:	00050593          	mv	a1,a0
   10570:	00000693          	li	a3,0
   10574:	00000613          	li	a2,0
   10578:	00000513          	li	a0,0
   1057c:	0040006f          	j	10580 <__register_exitproc>

0000000000010580 <__register_exitproc>:
   10580:	f481b703          	ld	a4,-184(gp) # 11dc8 <_global_impure_ptr>
   10584:	1f873783          	ld	a5,504(a4)
   10588:	06078063          	beqz	a5,105e8 <__register_exitproc+0x68>
   1058c:	0087a703          	lw	a4,8(a5)
   10590:	01f00813          	li	a6,31
   10594:	08e84663          	blt	a6,a4,10620 <__register_exitproc+0xa0>
   10598:	02050863          	beqz	a0,105c8 <__register_exitproc+0x48>
   1059c:	00371813          	slli	a6,a4,0x3
   105a0:	01078833          	add	a6,a5,a6
   105a4:	10c83823          	sd	a2,272(a6)
   105a8:	3107a883          	lw	a7,784(a5)
   105ac:	00100613          	li	a2,1
   105b0:	00e6163b          	sllw	a2,a2,a4
   105b4:	00c8e8b3          	or	a7,a7,a2
   105b8:	3117a823          	sw	a7,784(a5)
   105bc:	20d83823          	sd	a3,528(a6)
   105c0:	00200693          	li	a3,2
   105c4:	02d50863          	beq	a0,a3,105f4 <__register_exitproc+0x74>
   105c8:	00270693          	addi	a3,a4,2
   105cc:	00369693          	slli	a3,a3,0x3
   105d0:	0017071b          	addiw	a4,a4,1
   105d4:	00e7a423          	sw	a4,8(a5)
   105d8:	00d787b3          	add	a5,a5,a3
   105dc:	00b7b023          	sd	a1,0(a5)
   105e0:	00000513          	li	a0,0
   105e4:	00008067          	ret
   105e8:	20070793          	addi	a5,a4,512
   105ec:	1ef73c23          	sd	a5,504(a4)
   105f0:	f9dff06f          	j	1058c <__register_exitproc+0xc>
   105f4:	3147a683          	lw	a3,788(a5)
   105f8:	00000513          	li	a0,0
   105fc:	00c6e6b3          	or	a3,a3,a2
   10600:	30d7aa23          	sw	a3,788(a5)
   10604:	00270693          	addi	a3,a4,2
   10608:	00369693          	slli	a3,a3,0x3
   1060c:	0017071b          	addiw	a4,a4,1
   10610:	00e7a423          	sw	a4,8(a5)
   10614:	00d787b3          	add	a5,a5,a3
   10618:	00b7b023          	sd	a1,0(a5)
   1061c:	00008067          	ret
   10620:	fff00513          	li	a0,-1
   10624:	00008067          	ret

0000000000010628 <_exit>:
   10628:	05d00893          	li	a7,93
   1062c:	00000073          	ecall
   10630:	00054463          	bltz	a0,10638 <_exit+0x10>
   10634:	0000006f          	j	10634 <_exit+0xc>
   10638:	ff010113          	addi	sp,sp,-16
   1063c:	00813023          	sd	s0,0(sp)
   10640:	00050413          	mv	s0,a0
   10644:	00113423          	sd	ra,8(sp)
   10648:	4080043b          	negw	s0,s0
   1064c:	00c000ef          	jal	ra,10658 <__errno>
   10650:	00852023          	sw	s0,0(a0)
   10654:	0000006f          	j	10654 <_exit+0x2c>

0000000000010658 <__errno>:
   10658:	f581b503          	ld	a0,-168(gp) # 11dd8 <_impure_ptr>
   1065c:	00008067          	ret
