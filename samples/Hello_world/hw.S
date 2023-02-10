
hw：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	addi	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	43c000ef          	jal	ra,10538 <__call_exitprocs>
   10100:	7501b503          	ld	a0,1872(gp) # 157b8 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	350030ef          	jal	ra,13464 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00011537          	lui	a0,0x11
   10124:	9f050513          	addi	a0,a0,-1552 # 109f0 <__libc_fini_array>
   10128:	3980206f          	j	124c0 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00005197          	auipc	gp,0x5
   10134:	f3818193          	addi	gp,gp,-200 # 15068 <__global_pointer$>
   10138:	77818513          	addi	a0,gp,1912 # 157e0 <__malloc_max_total_mem>
   1013c:	00005617          	auipc	a2,0x5
   10140:	72c60613          	addi	a2,a2,1836 # 15868 <__BSS_END__>
   10144:	40a60633          	sub	a2,a2,a0
   10148:	00000593          	li	a1,0
   1014c:	168000ef          	jal	ra,102b4 <memset>
   10150:	00002517          	auipc	a0,0x2
   10154:	37050513          	addi	a0,a0,880 # 124c0 <atexit>
   10158:	00050863          	beqz	a0,10168 <_start+0x38>
   1015c:	00001517          	auipc	a0,0x1
   10160:	89450513          	addi	a0,a0,-1900 # 109f0 <__libc_fini_array>
   10164:	35c020ef          	jal	ra,124c0 <atexit>
   10168:	0b0000ef          	jal	ra,10218 <__libc_init_array>
   1016c:	00012503          	lw	a0,0(sp)
   10170:	00810593          	addi	a1,sp,8
   10174:	00000613          	li	a2,0
   10178:	06c000ef          	jal	ra,101e4 <main>
   1017c:	f6dff06f          	j	100e8 <exit>

0000000000010180 <__do_global_dtors_aux>:
   10180:	ff010113          	addi	sp,sp,-16
   10184:	00813023          	sd	s0,0(sp)
   10188:	7a01c783          	lbu	a5,1952(gp) # 15808 <completed.1>
   1018c:	00113423          	sd	ra,8(sp)
   10190:	02079263          	bnez	a5,101b4 <__do_global_dtors_aux+0x34>
   10194:	00000793          	li	a5,0
   10198:	00078a63          	beqz	a5,101ac <__do_global_dtors_aux+0x2c>
   1019c:	00015537          	lui	a0,0x15
   101a0:	82c50513          	addi	a0,a0,-2004 # 1482c <__FRAME_END__>
   101a4:	00000097          	auipc	ra,0x0
   101a8:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101ac:	00100793          	li	a5,1
   101b0:	7af18023          	sb	a5,1952(gp) # 15808 <completed.1>
   101b4:	00813083          	ld	ra,8(sp)
   101b8:	00013403          	ld	s0,0(sp)
   101bc:	01010113          	addi	sp,sp,16
   101c0:	00008067          	ret

00000000000101c4 <frame_dummy>:
   101c4:	00000793          	li	a5,0
   101c8:	00078c63          	beqz	a5,101e0 <frame_dummy+0x1c>
   101cc:	00015537          	lui	a0,0x15
   101d0:	7a818593          	addi	a1,gp,1960 # 15810 <object.0>
   101d4:	82c50513          	addi	a0,a0,-2004 # 1482c <__FRAME_END__>
   101d8:	00000317          	auipc	t1,0x0
   101dc:	00000067          	jr	zero # 0 <exit-0x100e8>
   101e0:	00008067          	ret

00000000000101e4 <main>:
   101e4:	ff010113          	addi	sp,sp,-16
   101e8:	00113423          	sd	ra,8(sp)
   101ec:	00813023          	sd	s0,0(sp)
   101f0:	01010413          	addi	s0,sp,16
   101f4:	000147b7          	lui	a5,0x14
   101f8:	81878513          	addi	a0,a5,-2024 # 13818 <__moddi3+0x3c>
   101fc:	268000ef          	jal	ra,10464 <puts>
   10200:	00000793          	li	a5,0
   10204:	00078513          	mv	a0,a5
   10208:	00813083          	ld	ra,8(sp)
   1020c:	00013403          	ld	s0,0(sp)
   10210:	01010113          	addi	sp,sp,16
   10214:	00008067          	ret

0000000000010218 <__libc_init_array>:
   10218:	fe010113          	addi	sp,sp,-32
   1021c:	00813823          	sd	s0,16(sp)
   10220:	000157b7          	lui	a5,0x15
   10224:	00015437          	lui	s0,0x15
   10228:	01213023          	sd	s2,0(sp)
   1022c:	83078793          	addi	a5,a5,-2000 # 14830 <__init_array_start>
   10230:	83040713          	addi	a4,s0,-2000 # 14830 <__init_array_start>
   10234:	00113c23          	sd	ra,24(sp)
   10238:	00913423          	sd	s1,8(sp)
   1023c:	40e78933          	sub	s2,a5,a4
   10240:	02e78263          	beq	a5,a4,10264 <__libc_init_array+0x4c>
   10244:	40395913          	srai	s2,s2,0x3
   10248:	83040413          	addi	s0,s0,-2000
   1024c:	00000493          	li	s1,0
   10250:	00043783          	ld	a5,0(s0)
   10254:	00148493          	addi	s1,s1,1
   10258:	00840413          	addi	s0,s0,8
   1025c:	000780e7          	jalr	a5
   10260:	ff24e8e3          	bltu	s1,s2,10250 <__libc_init_array+0x38>
   10264:	00015437          	lui	s0,0x15
   10268:	000157b7          	lui	a5,0x15
   1026c:	84078793          	addi	a5,a5,-1984 # 14840 <__do_global_dtors_aux_fini_array_entry>
   10270:	83040713          	addi	a4,s0,-2000 # 14830 <__init_array_start>
   10274:	40e78933          	sub	s2,a5,a4
   10278:	40395913          	srai	s2,s2,0x3
   1027c:	02e78063          	beq	a5,a4,1029c <__libc_init_array+0x84>
   10280:	83040413          	addi	s0,s0,-2000
   10284:	00000493          	li	s1,0
   10288:	00043783          	ld	a5,0(s0)
   1028c:	00148493          	addi	s1,s1,1
   10290:	00840413          	addi	s0,s0,8
   10294:	000780e7          	jalr	a5
   10298:	ff24e8e3          	bltu	s1,s2,10288 <__libc_init_array+0x70>
   1029c:	01813083          	ld	ra,24(sp)
   102a0:	01013403          	ld	s0,16(sp)
   102a4:	00813483          	ld	s1,8(sp)
   102a8:	00013903          	ld	s2,0(sp)
   102ac:	02010113          	addi	sp,sp,32
   102b0:	00008067          	ret

00000000000102b4 <memset>:
   102b4:	00f00313          	li	t1,15
   102b8:	00050713          	mv	a4,a0
   102bc:	02c37a63          	bgeu	t1,a2,102f0 <memset+0x3c>
   102c0:	00f77793          	andi	a5,a4,15
   102c4:	0a079063          	bnez	a5,10364 <memset+0xb0>
   102c8:	06059e63          	bnez	a1,10344 <memset+0x90>
   102cc:	ff067693          	andi	a3,a2,-16
   102d0:	00f67613          	andi	a2,a2,15
   102d4:	00e686b3          	add	a3,a3,a4
   102d8:	00b73023          	sd	a1,0(a4)
   102dc:	00b73423          	sd	a1,8(a4)
   102e0:	01070713          	addi	a4,a4,16
   102e4:	fed76ae3          	bltu	a4,a3,102d8 <memset+0x24>
   102e8:	00061463          	bnez	a2,102f0 <memset+0x3c>
   102ec:	00008067          	ret
   102f0:	40c306b3          	sub	a3,t1,a2
   102f4:	00269693          	slli	a3,a3,0x2
   102f8:	00000297          	auipc	t0,0x0
   102fc:	005686b3          	add	a3,a3,t0
   10300:	00c68067          	jr	12(a3)
   10304:	00b70723          	sb	a1,14(a4)
   10308:	00b706a3          	sb	a1,13(a4)
   1030c:	00b70623          	sb	a1,12(a4)
   10310:	00b705a3          	sb	a1,11(a4)
   10314:	00b70523          	sb	a1,10(a4)
   10318:	00b704a3          	sb	a1,9(a4)
   1031c:	00b70423          	sb	a1,8(a4)
   10320:	00b703a3          	sb	a1,7(a4)
   10324:	00b70323          	sb	a1,6(a4)
   10328:	00b702a3          	sb	a1,5(a4)
   1032c:	00b70223          	sb	a1,4(a4)
   10330:	00b701a3          	sb	a1,3(a4)
   10334:	00b70123          	sb	a1,2(a4)
   10338:	00b700a3          	sb	a1,1(a4)
   1033c:	00b70023          	sb	a1,0(a4)
   10340:	00008067          	ret
   10344:	0ff5f593          	zext.b	a1,a1
   10348:	00859693          	slli	a3,a1,0x8
   1034c:	00d5e5b3          	or	a1,a1,a3
   10350:	01059693          	slli	a3,a1,0x10
   10354:	00d5e5b3          	or	a1,a1,a3
   10358:	02059693          	slli	a3,a1,0x20
   1035c:	00d5e5b3          	or	a1,a1,a3
   10360:	f6dff06f          	j	102cc <memset+0x18>
   10364:	00279693          	slli	a3,a5,0x2
   10368:	00000297          	auipc	t0,0x0
   1036c:	005686b3          	add	a3,a3,t0
   10370:	00008293          	mv	t0,ra
   10374:	f98680e7          	jalr	-104(a3)
   10378:	00028093          	mv	ra,t0
   1037c:	ff078793          	addi	a5,a5,-16
   10380:	40f70733          	sub	a4,a4,a5
   10384:	00f60633          	add	a2,a2,a5
   10388:	f6c374e3          	bgeu	t1,a2,102f0 <memset+0x3c>
   1038c:	f3dff06f          	j	102c8 <memset+0x14>

0000000000010390 <_puts_r>:
   10390:	f9010113          	addi	sp,sp,-112
   10394:	06813023          	sd	s0,96(sp)
   10398:	00050413          	mv	s0,a0
   1039c:	00058513          	mv	a0,a1
   103a0:	04913c23          	sd	s1,88(sp)
   103a4:	06113423          	sd	ra,104(sp)
   103a8:	00058493          	mv	s1,a1
   103ac:	0c4000ef          	jal	ra,10470 <strlen> # strlen in a0
   103b0:	000147b7          	lui	a5,0x14
   103b4:	82878793          	addi	a5,a5,-2008 # 13828 <__moddi3+0x4c>
   103b8:	04f13023          	sd	a5,64(sp)
   103bc:	00100793          	li	a5,1
   103c0:	04f13423          	sd	a5,72(sp)
   103c4:	05042703          	lw	a4,80(s0)
   103c8:	03010793          	addi	a5,sp,48
   103cc:	00150693          	addi	a3,a0,1
   103d0:	00f13c23          	sd	a5,24(sp)
   103d4:	00200793          	li	a5,2
   103d8:	02913823          	sd	s1,48(sp)
   103dc:	02a13c23          	sd	a0,56(sp)
   103e0:	02d13423          	sd	a3,40(sp)
   103e4:	02f12023          	sw	a5,32(sp)
   103e8:	01043583          	ld	a1,16(s0)
   103ec:	04070e63          	beqz	a4,10448 <_puts_r+0xb8>
   103f0:	01059783          	lh	a5,16(a1)
   103f4:	03279713          	slli	a4,a5,0x32
   103f8:	02074263          	bltz	a4,1041c <_puts_r+0x8c>
   103fc:	0ac5a703          	lw	a4,172(a1)
   10400:	000026b7          	lui	a3,0x2
   10404:	00d7e7b3          	or	a5,a5,a3
   10408:	ffffe6b7          	lui	a3,0xffffe
   1040c:	fff68693          	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffe8797>
   10410:	00d77733          	and	a4,a4,a3
   10414:	00f59823          	sh	a5,16(a1)
   10418:	0ae5a623          	sw	a4,172(a1)
   1041c:	01810613          	addi	a2,sp,24
   10420:	00040513          	mv	a0,s0
   10424:	628000ef          	jal	ra,10a4c <__sfvwrite_r>
   10428:	00a00793          	li	a5,10
   1042c:	02051863          	bnez	a0,1045c <_puts_r+0xcc>
   10430:	06813083          	ld	ra,104(sp)
   10434:	06013403          	ld	s0,96(sp)
   10438:	05813483          	ld	s1,88(sp)
   1043c:	00078513          	mv	a0,a5
   10440:	07010113          	addi	sp,sp,112
   10444:	00008067          	ret
   10448:	00040513          	mv	a0,s0
   1044c:	00b13423          	sd	a1,8(sp)
   10450:	560000ef          	jal	ra,109b0 <__sinit>
   10454:	00813583          	ld	a1,8(sp)
   10458:	f99ff06f          	j	103f0 <_puts_r+0x60>
   1045c:	fff00793          	li	a5,-1
   10460:	fd1ff06f          	j	10430 <_puts_r+0xa0>

0000000000010464 <puts>:
   10464:	00050593          	mv	a1,a0
   10468:	7601b503          	ld	a0,1888(gp) # 157c8 <_impure_ptr>
   1046c:	f25ff06f          	j	10390 <_puts_r>

0000000000010470 <strlen>:
   10470:	00757793          	andi	a5,a0,7 # a5: the last 3 bits of a0
   10474:	00050713          	mv	a4,a0 # a4: old a0, the starting point of the string
   10478:	06079a63          	bnez	a5,104ec <strlen+0x7c> # bench when a5!=0, means the address of the string is not aligned to 8
   1047c:	7381b683          	ld	a3,1848(gp) # 157a0 <__SDATA_BEGIN__>
   10480:	fff00593          	li	a1,-1
   10484:	00073603          	ld	a2,0(a4) # a2: first 8 characters of the string
   10488:	00870713          	addi	a4,a4,8
   1048c:	00d677b3          	and	a5,a2,a3
   10490:	00d787b3          	add	a5,a5,a3
   10494:	00c7e7b3          	or	a5,a5,a2
   10498:	00d7e7b3          	or	a5,a5,a3 # a5=(((a2&a3)+a3)|a2|a3
   1049c:	feb784e3          	beq	a5,a1,10484 <strlen+0x14> # if a5==-1, then back to 10484 to check the next 8 characters.
   104a0:	ff874683          	lbu	a3,-8(a4)
   104a4:	40a707b3          	sub	a5,a4,a0
   104a8:	06068463          	beqz	a3,10510 <strlen+0xa0>
   104ac:	ff974683          	lbu	a3,-7(a4)
   104b0:	04068c63          	beqz	a3,10508 <strlen+0x98>
   104b4:	ffa74683          	lbu	a3,-6(a4)
   104b8:	06068463          	beqz	a3,10520 <strlen+0xb0>
   104bc:	ffb74683          	lbu	a3,-5(a4)
   104c0:	04068c63          	beqz	a3,10518 <strlen+0xa8>
   104c4:	ffc74683          	lbu	a3,-4(a4)
   104c8:	06068063          	beqz	a3,10528 <strlen+0xb8>
   104cc:	ffd74683          	lbu	a3,-3(a4)
   104d0:	06068063          	beqz	a3,10530 <strlen+0xc0>
   104d4:	ffe74503          	lbu	a0,-2(a4) # test each character whether it's the end
   104d8:	00a03533          	snez	a0,a0
   104dc:	00f50533          	add	a0,a0,a5
   104e0:	ffe50513          	addi	a0,a0,-2
   104e4:	00008067          	ret # return a0 as the strlen(I think)
   104e8:	f8068ae3          	beqz	a3,1047c <strlen+0xc> # handle the case a5 is not aligned
   104ec:	00074783          	lbu	a5,0(a4) # handle bit-by-bit
   104f0:	00170713          	addi	a4,a4,1
   104f4:	00777693          	andi	a3,a4,7
   104f8:	fe0798e3          	bnez	a5,104e8 <strlen+0x78>
   104fc:	40a70733          	sub	a4,a4,a0
   10500:	fff70513          	addi	a0,a4,-1
   10504:	00008067          	ret
   10508:	ff978513          	addi	a0,a5,-7
   1050c:	00008067          	ret
   10510:	ff878513          	addi	a0,a5,-8
   10514:	00008067          	ret
   10518:	ffb78513          	addi	a0,a5,-5
   1051c:	00008067          	ret
   10520:	ffa78513          	addi	a0,a5,-6
   10524:	00008067          	ret
   10528:	ffc78513          	addi	a0,a5,-4
   1052c:	00008067          	ret
   10530:	ffd78513          	addi	a0,a5,-3
   10534:	00008067          	ret

0000000000010538 <__call_exitprocs>:
   10538:	fb010113          	addi	sp,sp,-80
   1053c:	03413023          	sd	s4,32(sp)
   10540:	7501ba03          	ld	s4,1872(gp) # 157b8 <_global_impure_ptr>
   10544:	03213823          	sd	s2,48(sp)
   10548:	04113423          	sd	ra,72(sp)
   1054c:	1f8a3903          	ld	s2,504(s4)
   10550:	04813023          	sd	s0,64(sp)
   10554:	02913c23          	sd	s1,56(sp)
   10558:	03313423          	sd	s3,40(sp)
   1055c:	01513c23          	sd	s5,24(sp)
   10560:	01613823          	sd	s6,16(sp)
   10564:	01713423          	sd	s7,8(sp)
   10568:	01813023          	sd	s8,0(sp)
   1056c:	04090063          	beqz	s2,105ac <__call_exitprocs+0x74>
   10570:	00050b13          	mv	s6,a0
   10574:	00058b93          	mv	s7,a1
   10578:	00100a93          	li	s5,1
   1057c:	fff00993          	li	s3,-1
   10580:	00892483          	lw	s1,8(s2)
   10584:	fff4841b          	addiw	s0,s1,-1
   10588:	02044263          	bltz	s0,105ac <__call_exitprocs+0x74>
   1058c:	00349493          	slli	s1,s1,0x3
   10590:	009904b3          	add	s1,s2,s1
   10594:	040b8463          	beqz	s7,105dc <__call_exitprocs+0xa4>
   10598:	2084b783          	ld	a5,520(s1)
   1059c:	05778063          	beq	a5,s7,105dc <__call_exitprocs+0xa4>
   105a0:	fff4041b          	addiw	s0,s0,-1
   105a4:	ff848493          	addi	s1,s1,-8
   105a8:	ff3416e3          	bne	s0,s3,10594 <__call_exitprocs+0x5c>
   105ac:	04813083          	ld	ra,72(sp)
   105b0:	04013403          	ld	s0,64(sp)
   105b4:	03813483          	ld	s1,56(sp)
   105b8:	03013903          	ld	s2,48(sp)
   105bc:	02813983          	ld	s3,40(sp)
   105c0:	02013a03          	ld	s4,32(sp)
   105c4:	01813a83          	ld	s5,24(sp)
   105c8:	01013b03          	ld	s6,16(sp)
   105cc:	00813b83          	ld	s7,8(sp)
   105d0:	00013c03          	ld	s8,0(sp)
   105d4:	05010113          	addi	sp,sp,80
   105d8:	00008067          	ret
   105dc:	00892783          	lw	a5,8(s2)
   105e0:	0084b703          	ld	a4,8(s1)
   105e4:	fff7879b          	addiw	a5,a5,-1
   105e8:	06878263          	beq	a5,s0,1064c <__call_exitprocs+0x114>
   105ec:	0004b423          	sd	zero,8(s1)
   105f0:	fa0708e3          	beqz	a4,105a0 <__call_exitprocs+0x68>
   105f4:	31092783          	lw	a5,784(s2)
   105f8:	008a96bb          	sllw	a3,s5,s0
   105fc:	00892c03          	lw	s8,8(s2)
   10600:	00d7f7b3          	and	a5,a5,a3
   10604:	0007879b          	sext.w	a5,a5
   10608:	02079263          	bnez	a5,1062c <__call_exitprocs+0xf4>
   1060c:	000700e7          	jalr	a4
   10610:	00892703          	lw	a4,8(s2)
   10614:	1f8a3783          	ld	a5,504(s4)
   10618:	01871463          	bne	a4,s8,10620 <__call_exitprocs+0xe8>
   1061c:	f92782e3          	beq	a5,s2,105a0 <__call_exitprocs+0x68>
   10620:	f80786e3          	beqz	a5,105ac <__call_exitprocs+0x74>
   10624:	00078913          	mv	s2,a5
   10628:	f59ff06f          	j	10580 <__call_exitprocs+0x48>
   1062c:	31492783          	lw	a5,788(s2)
   10630:	1084b583          	ld	a1,264(s1)
   10634:	00d7f7b3          	and	a5,a5,a3
   10638:	0007879b          	sext.w	a5,a5
   1063c:	00079c63          	bnez	a5,10654 <__call_exitprocs+0x11c>
   10640:	000b0513          	mv	a0,s6
   10644:	000700e7          	jalr	a4
   10648:	fc9ff06f          	j	10610 <__call_exitprocs+0xd8>
   1064c:	00892423          	sw	s0,8(s2)
   10650:	fa1ff06f          	j	105f0 <__call_exitprocs+0xb8>
   10654:	00058513          	mv	a0,a1
   10658:	000700e7          	jalr	a4
   1065c:	fb5ff06f          	j	10610 <__call_exitprocs+0xd8>

0000000000010660 <__fp_lock>:
   10660:	00000513          	li	a0,0
   10664:	00008067          	ret

0000000000010668 <_cleanup_r>:
   10668:	000125b7          	lui	a1,0x12
   1066c:	53058593          	addi	a1,a1,1328 # 12530 <_fclose_r>
   10670:	1490006f          	j	10fb8 <_fwalk_reent>

0000000000010674 <__fp_unlock>:
   10674:	00000513          	li	a0,0
   10678:	00008067          	ret

000000000001067c <__sinit.part.0>:
   1067c:	fc010113          	addi	sp,sp,-64
   10680:	000107b7          	lui	a5,0x10
   10684:	02113c23          	sd	ra,56(sp)
   10688:	02813823          	sd	s0,48(sp)
   1068c:	02913423          	sd	s1,40(sp)
   10690:	03213023          	sd	s2,32(sp)
   10694:	01313c23          	sd	s3,24(sp)
   10698:	01413823          	sd	s4,16(sp)
   1069c:	01513423          	sd	s5,8(sp)
   106a0:	01613023          	sd	s6,0(sp)
   106a4:	00853403          	ld	s0,8(a0)
   106a8:	66878793          	addi	a5,a5,1640 # 10668 <_cleanup_r>
   106ac:	04f53c23          	sd	a5,88(a0)
   106b0:	53850713          	addi	a4,a0,1336
   106b4:	00300793          	li	a5,3
   106b8:	52e53823          	sd	a4,1328(a0)
   106bc:	52f52423          	sw	a5,1320(a0)
   106c0:	52053023          	sd	zero,1312(a0)
   106c4:	00400793          	li	a5,4
   106c8:	00050913          	mv	s2,a0
   106cc:	00f42823          	sw	a5,16(s0)
   106d0:	00800613          	li	a2,8
   106d4:	00000593          	li	a1,0
   106d8:	00043023          	sd	zero,0(s0)
   106dc:	00043423          	sd	zero,8(s0)
   106e0:	0a042623          	sw	zero,172(s0)
   106e4:	00043c23          	sd	zero,24(s0)
   106e8:	02042023          	sw	zero,32(s0)
   106ec:	02042423          	sw	zero,40(s0)
   106f0:	0a440513          	addi	a0,s0,164
   106f4:	bc1ff0ef          	jal	ra,102b4 <memset>
   106f8:	00012b37          	lui	s6,0x12
   106fc:	01093483          	ld	s1,16(s2)
   10700:	00012ab7          	lui	s5,0x12
   10704:	00012a37          	lui	s4,0x12
   10708:	000129b7          	lui	s3,0x12
   1070c:	1acb0b13          	addi	s6,s6,428 # 121ac <__sread>
   10710:	210a8a93          	addi	s5,s5,528 # 12210 <__swrite>
   10714:	298a0a13          	addi	s4,s4,664 # 12298 <__sseek>
   10718:	31098993          	addi	s3,s3,784 # 12310 <__sclose>
   1071c:	000107b7          	lui	a5,0x10
   10720:	03643c23          	sd	s6,56(s0)
   10724:	05543023          	sd	s5,64(s0)
   10728:	05443423          	sd	s4,72(s0)
   1072c:	05343823          	sd	s3,80(s0)
   10730:	02843823          	sd	s0,48(s0)
   10734:	00978793          	addi	a5,a5,9 # 10009 <exit-0xdf>
   10738:	00f4a823          	sw	a5,16(s1)
   1073c:	00800613          	li	a2,8
   10740:	00000593          	li	a1,0
   10744:	0004b023          	sd	zero,0(s1)
   10748:	0004b423          	sd	zero,8(s1)
   1074c:	0a04a623          	sw	zero,172(s1)
   10750:	0004bc23          	sd	zero,24(s1)
   10754:	0204a023          	sw	zero,32(s1)
   10758:	0204a423          	sw	zero,40(s1)
   1075c:	0a448513          	addi	a0,s1,164
   10760:	b55ff0ef          	jal	ra,102b4 <memset>
   10764:	01893403          	ld	s0,24(s2)
   10768:	000207b7          	lui	a5,0x20
   1076c:	0364bc23          	sd	s6,56(s1)
   10770:	0554b023          	sd	s5,64(s1)
   10774:	0544b423          	sd	s4,72(s1)
   10778:	0534b823          	sd	s3,80(s1)
   1077c:	0294b823          	sd	s1,48(s1)
   10780:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xa7aa>
   10784:	00f42823          	sw	a5,16(s0)
   10788:	00043023          	sd	zero,0(s0)
   1078c:	00043423          	sd	zero,8(s0)
   10790:	0a042623          	sw	zero,172(s0)
   10794:	00043c23          	sd	zero,24(s0)
   10798:	02042023          	sw	zero,32(s0)
   1079c:	02042423          	sw	zero,40(s0)
   107a0:	0a440513          	addi	a0,s0,164
   107a4:	00800613          	li	a2,8
   107a8:	00000593          	li	a1,0
   107ac:	b09ff0ef          	jal	ra,102b4 <memset>
   107b0:	03813083          	ld	ra,56(sp)
   107b4:	03643c23          	sd	s6,56(s0)
   107b8:	05543023          	sd	s5,64(s0)
   107bc:	05443423          	sd	s4,72(s0)
   107c0:	05343823          	sd	s3,80(s0)
   107c4:	02843823          	sd	s0,48(s0)
   107c8:	03013403          	ld	s0,48(sp)
   107cc:	00100793          	li	a5,1
   107d0:	04f92823          	sw	a5,80(s2)
   107d4:	02813483          	ld	s1,40(sp)
   107d8:	02013903          	ld	s2,32(sp)
   107dc:	01813983          	ld	s3,24(sp)
   107e0:	01013a03          	ld	s4,16(sp)
   107e4:	00813a83          	ld	s5,8(sp)
   107e8:	00013b03          	ld	s6,0(sp)
   107ec:	04010113          	addi	sp,sp,64
   107f0:	00008067          	ret

00000000000107f4 <__sfmoreglue>:
   107f4:	fe010113          	addi	sp,sp,-32
   107f8:	fff5879b          	addiw	a5,a1,-1
   107fc:	00813823          	sd	s0,16(sp)
   10800:	00179413          	slli	s0,a5,0x1
   10804:	00f40433          	add	s0,s0,a5
   10808:	00241413          	slli	s0,s0,0x2
   1080c:	40f40433          	sub	s0,s0,a5
   10810:	00441413          	slli	s0,s0,0x4
   10814:	01213023          	sd	s2,0(sp)
   10818:	00058913          	mv	s2,a1
   1081c:	0c840593          	addi	a1,s0,200
   10820:	00913423          	sd	s1,8(sp)
   10824:	00113c23          	sd	ra,24(sp)
   10828:	061000ef          	jal	ra,11088 <_malloc_r>
   1082c:	00050493          	mv	s1,a0
   10830:	02050063          	beqz	a0,10850 <__sfmoreglue+0x5c>
   10834:	01850513          	addi	a0,a0,24
   10838:	0004b023          	sd	zero,0(s1)
   1083c:	0124a423          	sw	s2,8(s1)
   10840:	00a4b823          	sd	a0,16(s1)
   10844:	0b040613          	addi	a2,s0,176
   10848:	00000593          	li	a1,0
   1084c:	a69ff0ef          	jal	ra,102b4 <memset>
   10850:	01813083          	ld	ra,24(sp)
   10854:	01013403          	ld	s0,16(sp)
   10858:	00013903          	ld	s2,0(sp)
   1085c:	00048513          	mv	a0,s1
   10860:	00813483          	ld	s1,8(sp)
   10864:	02010113          	addi	sp,sp,32
   10868:	00008067          	ret

000000000001086c <__sfp>:
   1086c:	fe010113          	addi	sp,sp,-32
   10870:	01213023          	sd	s2,0(sp)
   10874:	7501b903          	ld	s2,1872(gp) # 157b8 <_global_impure_ptr>
   10878:	00913423          	sd	s1,8(sp)
   1087c:	00113c23          	sd	ra,24(sp)
   10880:	05092783          	lw	a5,80(s2)
   10884:	00813823          	sd	s0,16(sp)
   10888:	00050493          	mv	s1,a0
   1088c:	0a078c63          	beqz	a5,10944 <__sfp+0xd8>
   10890:	52090913          	addi	s2,s2,1312
   10894:	00892703          	lw	a4,8(s2)
   10898:	01093403          	ld	s0,16(s2)
   1089c:	08e05c63          	blez	a4,10934 <__sfp+0xc8>
   108a0:	02071713          	slli	a4,a4,0x20
   108a4:	02075713          	srli	a4,a4,0x20
   108a8:	00171793          	slli	a5,a4,0x1
   108ac:	00e787b3          	add	a5,a5,a4
   108b0:	00279793          	slli	a5,a5,0x2
   108b4:	40e787b3          	sub	a5,a5,a4
   108b8:	00479793          	slli	a5,a5,0x4
   108bc:	00f407b3          	add	a5,s0,a5
   108c0:	00c0006f          	j	108cc <__sfp+0x60>
   108c4:	0b040413          	addi	s0,s0,176
   108c8:	06f40663          	beq	s0,a5,10934 <__sfp+0xc8>
   108cc:	01041703          	lh	a4,16(s0)
   108d0:	fe071ae3          	bnez	a4,108c4 <__sfp+0x58>
   108d4:	ffff07b7          	lui	a5,0xffff0
   108d8:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffda799>
   108dc:	00f42823          	sw	a5,16(s0)
   108e0:	0a042623          	sw	zero,172(s0)
   108e4:	00043023          	sd	zero,0(s0)
   108e8:	00043423          	sd	zero,8(s0)
   108ec:	00043c23          	sd	zero,24(s0)
   108f0:	02042023          	sw	zero,32(s0)
   108f4:	02042423          	sw	zero,40(s0)
   108f8:	00800613          	li	a2,8
   108fc:	00000593          	li	a1,0
   10900:	0a440513          	addi	a0,s0,164
   10904:	9b1ff0ef          	jal	ra,102b4 <memset>
   10908:	04043c23          	sd	zero,88(s0)
   1090c:	06042023          	sw	zero,96(s0)
   10910:	06043c23          	sd	zero,120(s0)
   10914:	08042023          	sw	zero,128(s0)
   10918:	01813083          	ld	ra,24(sp)
   1091c:	00040513          	mv	a0,s0
   10920:	01013403          	ld	s0,16(sp)
   10924:	00813483          	ld	s1,8(sp)
   10928:	00013903          	ld	s2,0(sp)
   1092c:	02010113          	addi	sp,sp,32
   10930:	00008067          	ret
   10934:	00093403          	ld	s0,0(s2)
   10938:	00040c63          	beqz	s0,10950 <__sfp+0xe4>
   1093c:	00040913          	mv	s2,s0
   10940:	f55ff06f          	j	10894 <__sfp+0x28>
   10944:	00090513          	mv	a0,s2
   10948:	d35ff0ef          	jal	ra,1067c <__sinit.part.0>
   1094c:	f45ff06f          	j	10890 <__sfp+0x24>
   10950:	2d800593          	li	a1,728
   10954:	00048513          	mv	a0,s1
   10958:	730000ef          	jal	ra,11088 <_malloc_r>
   1095c:	00050413          	mv	s0,a0
   10960:	02050863          	beqz	a0,10990 <__sfp+0x124>
   10964:	01850513          	addi	a0,a0,24
   10968:	00400793          	li	a5,4
   1096c:	00043023          	sd	zero,0(s0)
   10970:	00f42423          	sw	a5,8(s0)
   10974:	00a43823          	sd	a0,16(s0)
   10978:	2c000613          	li	a2,704
   1097c:	00000593          	li	a1,0
   10980:	935ff0ef          	jal	ra,102b4 <memset>
   10984:	00893023          	sd	s0,0(s2)
   10988:	00040913          	mv	s2,s0
   1098c:	f09ff06f          	j	10894 <__sfp+0x28>
   10990:	00093023          	sd	zero,0(s2)
   10994:	00c00793          	li	a5,12
   10998:	00f4a023          	sw	a5,0(s1)
   1099c:	f7dff06f          	j	10918 <__sfp+0xac>

00000000000109a0 <_cleanup>:
   109a0:	7501b503          	ld	a0,1872(gp) # 157b8 <_global_impure_ptr>
   109a4:	000125b7          	lui	a1,0x12
   109a8:	53058593          	addi	a1,a1,1328 # 12530 <_fclose_r>
   109ac:	60c0006f          	j	10fb8 <_fwalk_reent>

00000000000109b0 <__sinit>:
   109b0:	05052783          	lw	a5,80(a0)
   109b4:	00078463          	beqz	a5,109bc <__sinit+0xc>
   109b8:	00008067          	ret
   109bc:	cc1ff06f          	j	1067c <__sinit.part.0>

00000000000109c0 <__sfp_lock_acquire>:
   109c0:	00008067          	ret

00000000000109c4 <__sfp_lock_release>:
   109c4:	00008067          	ret

00000000000109c8 <__sinit_lock_acquire>:
   109c8:	00008067          	ret

00000000000109cc <__sinit_lock_release>:
   109cc:	00008067          	ret

00000000000109d0 <__fp_lock_all>:
   109d0:	7601b503          	ld	a0,1888(gp) # 157c8 <_impure_ptr>
   109d4:	000105b7          	lui	a1,0x10
   109d8:	66058593          	addi	a1,a1,1632 # 10660 <__fp_lock>
   109dc:	51c0006f          	j	10ef8 <_fwalk>

00000000000109e0 <__fp_unlock_all>:
   109e0:	7601b503          	ld	a0,1888(gp) # 157c8 <_impure_ptr>
   109e4:	000105b7          	lui	a1,0x10
   109e8:	67458593          	addi	a1,a1,1652 # 10674 <__fp_unlock>
   109ec:	50c0006f          	j	10ef8 <_fwalk>

00000000000109f0 <__libc_fini_array>:
   109f0:	fe010113          	addi	sp,sp,-32
   109f4:	00813823          	sd	s0,16(sp)
   109f8:	000157b7          	lui	a5,0x15
   109fc:	00015437          	lui	s0,0x15
   10a00:	84078793          	addi	a5,a5,-1984 # 14840 <__do_global_dtors_aux_fini_array_entry>
   10a04:	84840413          	addi	s0,s0,-1976 # 14848 <impure_data>
   10a08:	40f40433          	sub	s0,s0,a5
   10a0c:	00913423          	sd	s1,8(sp)
   10a10:	00113c23          	sd	ra,24(sp)
   10a14:	40345493          	srai	s1,s0,0x3
   10a18:	02048063          	beqz	s1,10a38 <__libc_fini_array+0x48>
   10a1c:	ff840413          	addi	s0,s0,-8
   10a20:	00f40433          	add	s0,s0,a5
   10a24:	00043783          	ld	a5,0(s0)
   10a28:	fff48493          	addi	s1,s1,-1
   10a2c:	ff840413          	addi	s0,s0,-8
   10a30:	000780e7          	jalr	a5
   10a34:	fe0498e3          	bnez	s1,10a24 <__libc_fini_array+0x34>
   10a38:	01813083          	ld	ra,24(sp)
   10a3c:	01013403          	ld	s0,16(sp)
   10a40:	00813483          	ld	s1,8(sp)
   10a44:	02010113          	addi	sp,sp,32
   10a48:	00008067          	ret

0000000000010a4c <__sfvwrite_r>:
   10a4c:	01063783          	ld	a5,16(a2)
   10a50:	28078063          	beqz	a5,10cd0 <__sfvwrite_r+0x284>
   10a54:	01059703          	lh	a4,16(a1)
   10a58:	fa010113          	addi	sp,sp,-96
   10a5c:	04813823          	sd	s0,80(sp)
   10a60:	03413823          	sd	s4,48(sp)
   10a64:	03613023          	sd	s6,32(sp)
   10a68:	04113c23          	sd	ra,88(sp)
   10a6c:	04913423          	sd	s1,72(sp)
   10a70:	05213023          	sd	s2,64(sp)
   10a74:	03313c23          	sd	s3,56(sp)
   10a78:	03513423          	sd	s5,40(sp)
   10a7c:	01713c23          	sd	s7,24(sp)
   10a80:	01813823          	sd	s8,16(sp)
   10a84:	01913423          	sd	s9,8(sp)
   10a88:	00877793          	andi	a5,a4,8
   10a8c:	00060b13          	mv	s6,a2
   10a90:	00050a13          	mv	s4,a0
   10a94:	00058413          	mv	s0,a1
   10a98:	08078863          	beqz	a5,10b28 <__sfvwrite_r+0xdc>
   10a9c:	0185b783          	ld	a5,24(a1)
   10aa0:	08078463          	beqz	a5,10b28 <__sfvwrite_r+0xdc>
   10aa4:	00277793          	andi	a5,a4,2
   10aa8:	000b3483          	ld	s1,0(s6)
   10aac:	08078e63          	beqz	a5,10b48 <__sfvwrite_r+0xfc>
   10ab0:	04043783          	ld	a5,64(s0)
   10ab4:	03043583          	ld	a1,48(s0)
   10ab8:	80000ab7          	lui	s5,0x80000
   10abc:	00000993          	li	s3,0
   10ac0:	00000913          	li	s2,0
   10ac4:	c00aca93          	xori	s5,s5,-1024
   10ac8:	00098613          	mv	a2,s3 # a loop?
   10acc:	000a0513          	mv	a0,s4
   10ad0:	04090463          	beqz	s2,10b18 <__sfvwrite_r+0xcc>
   10ad4:	00090693          	mv	a3,s2
   10ad8:	012af463          	bgeu	s5,s2,10ae0 <__sfvwrite_r+0x94>
   10adc:	000a8693          	mv	a3,s5
   10ae0:	0006869b          	sext.w	a3,a3
   10ae4:	000780e7          	jalr	a5
   10ae8:	1ca05a63          	blez	a0,10cbc <__sfvwrite_r+0x270>
   10aec:	010b3783          	ld	a5,16(s6)
   10af0:	00a989b3          	add	s3,s3,a0
   10af4:	40a90933          	sub	s2,s2,a0
   10af8:	40a787b3          	sub	a5,a5,a0
   10afc:	00fb3823          	sd	a5,16(s6)
   10b00:	16078a63          	beqz	a5,10c74 <__sfvwrite_r+0x228>
   10b04:	04043783          	ld	a5,64(s0)
   10b08:	03043583          	ld	a1,48(s0)
   10b0c:	00098613          	mv	a2,s3
   10b10:	000a0513          	mv	a0,s4
   10b14:	fc0910e3          	bnez	s2,10ad4 <__sfvwrite_r+0x88>
   10b18:	0004b983          	ld	s3,0(s1)
   10b1c:	0084b903          	ld	s2,8(s1)
   10b20:	01048493          	addi	s1,s1,16
   10b24:	fa5ff06f          	j	10ac8 <__sfvwrite_r+0x7c>
   10b28:	00040593          	mv	a1,s0
   10b2c:	000a0513          	mv	a0,s4
   10b30:	051010ef          	jal	ra,12380 <__swsetup_r>
   10b34:	18051a63          	bnez	a0,10cc8 <__sfvwrite_r+0x27c>
   10b38:	01041703          	lh	a4,16(s0)
   10b3c:	000b3483          	ld	s1,0(s6)
   10b40:	00277793          	andi	a5,a4,2
   10b44:	f60796e3          	bnez	a5,10ab0 <__sfvwrite_r+0x64>
   10b48:	00177793          	andi	a5,a4,1
   10b4c:	08079e63          	bnez	a5,10be8 <__sfvwrite_r+0x19c>
   10b50:	00c42b83          	lw	s7,12(s0)
   10b54:	00043783          	ld	a5,0(s0)
   10b58:	80000ab7          	lui	s5,0x80000
   10b5c:	00000c13          	li	s8,0
   10b60:	00000913          	li	s2,0
   10b64:	fffaca93          	not	s5,s5
   10b68:	00078513          	mv	a0,a5
   10b6c:	06090663          	beqz	s2,10bd8 <__sfvwrite_r+0x18c>
   10b70:	20077693          	andi	a3,a4,512
   10b74:	1c068663          	beqz	a3,10d40 <__sfvwrite_r+0x2f4>
   10b78:	27797263          	bgeu	s2,s7,10ddc <__sfvwrite_r+0x390>
   10b7c:	00090c93          	mv	s9,s2
   10b80:	00090b93          	mv	s7,s2
   10b84:	000b8613          	mv	a2,s7
   10b88:	000c0593          	mv	a1,s8
   10b8c:	741000ef          	jal	ra,11acc <memmove>
   10b90:	00c42703          	lw	a4,12(s0)
   10b94:	00043783          	ld	a5,0(s0)
   10b98:	00090993          	mv	s3,s2
   10b9c:	4197073b          	subw	a4,a4,s9
   10ba0:	017787b3          	add	a5,a5,s7
   10ba4:	00e42623          	sw	a4,12(s0)
   10ba8:	00f43023          	sd	a5,0(s0)
   10bac:	00000913          	li	s2,0
   10bb0:	010b3783          	ld	a5,16(s6)
   10bb4:	013c0c33          	add	s8,s8,s3
   10bb8:	413787b3          	sub	a5,a5,s3
   10bbc:	00fb3823          	sd	a5,16(s6)
   10bc0:	0a078a63          	beqz	a5,10c74 <__sfvwrite_r+0x228>
   10bc4:	00043783          	ld	a5,0(s0)
   10bc8:	01041703          	lh	a4,16(s0)
   10bcc:	00c42b83          	lw	s7,12(s0)
   10bd0:	00078513          	mv	a0,a5
   10bd4:	f8091ee3          	bnez	s2,10b70 <__sfvwrite_r+0x124>
   10bd8:	0004bc03          	ld	s8,0(s1)
   10bdc:	0084b903          	ld	s2,8(s1)
   10be0:	01048493          	addi	s1,s1,16
   10be4:	f85ff06f          	j	10b68 <__sfvwrite_r+0x11c>
   10be8:	00000993          	li	s3,0
   10bec:	00000513          	li	a0,0
   10bf0:	00000c93          	li	s9,0
   10bf4:	00000c13          	li	s8,0
   10bf8:	0e0c0063          	beqz	s8,10cd8 <__sfvwrite_r+0x28c>
   10bfc:	0e050863          	beqz	a0,10cec <__sfvwrite_r+0x2a0>
   10c00:	00098b93          	mv	s7,s3
   10c04:	013c7463          	bgeu	s8,s3,10c0c <__sfvwrite_r+0x1c0>
   10c08:	000c0b93          	mv	s7,s8
   10c0c:	00043503          	ld	a0,0(s0)
   10c10:	01843703          	ld	a4,24(s0)
   10c14:	00c42783          	lw	a5,12(s0)
   10c18:	02042683          	lw	a3,32(s0)
   10c1c:	000b8913          	mv	s2,s7
   10c20:	00a77663          	bgeu	a4,a0,10c2c <__sfvwrite_r+0x1e0>
   10c24:	00d78abb          	addw	s5,a5,a3
   10c28:	0f7ac263          	blt	s5,s7,10d0c <__sfvwrite_r+0x2c0>
   10c2c:	24dbc663          	blt	s7,a3,10e78 <__sfvwrite_r+0x42c>
   10c30:	04043783          	ld	a5,64(s0)
   10c34:	03043583          	ld	a1,48(s0)
   10c38:	000c8613          	mv	a2,s9
   10c3c:	000a0513          	mv	a0,s4
   10c40:	000780e7          	jalr	a5
   10c44:	00050913          	mv	s2,a0
   10c48:	06a05a63          	blez	a0,10cbc <__sfvwrite_r+0x270>
   10c4c:	0005079b          	sext.w	a5,a0
   10c50:	40f989bb          	subw	s3,s3,a5
   10c54:	00100513          	li	a0,1
   10c58:	04098a63          	beqz	s3,10cac <__sfvwrite_r+0x260>
   10c5c:	010b3783          	ld	a5,16(s6)
   10c60:	012c8cb3          	add	s9,s9,s2
   10c64:	412c0c33          	sub	s8,s8,s2
   10c68:	412787b3          	sub	a5,a5,s2
   10c6c:	00fb3823          	sd	a5,16(s6)
   10c70:	f80794e3          	bnez	a5,10bf8 <__sfvwrite_r+0x1ac>
   10c74:	00000513          	li	a0,0
   10c78:	05813083          	ld	ra,88(sp)
   10c7c:	05013403          	ld	s0,80(sp)
   10c80:	04813483          	ld	s1,72(sp)
   10c84:	04013903          	ld	s2,64(sp)
   10c88:	03813983          	ld	s3,56(sp)
   10c8c:	03013a03          	ld	s4,48(sp)
   10c90:	02813a83          	ld	s5,40(sp)
   10c94:	02013b03          	ld	s6,32(sp)
   10c98:	01813b83          	ld	s7,24(sp)
   10c9c:	01013c03          	ld	s8,16(sp)
   10ca0:	00813c83          	ld	s9,8(sp)
   10ca4:	06010113          	addi	sp,sp,96
   10ca8:	00008067          	ret
   10cac:	00040593          	mv	a1,s0
   10cb0:	000a0513          	mv	a0,s4
   10cb4:	3e5010ef          	jal	ra,12898 <_fflush_r>
   10cb8:	fa0502e3          	beqz	a0,10c5c <__sfvwrite_r+0x210>
   10cbc:	01041783          	lh	a5,16(s0)
   10cc0:	0407e793          	ori	a5,a5,64
   10cc4:	00f41823          	sh	a5,16(s0)
   10cc8:	fff00513          	li	a0,-1
   10ccc:	fadff06f          	j	10c78 <__sfvwrite_r+0x22c>
   10cd0:	00000513          	li	a0,0
   10cd4:	00008067          	ret
   10cd8:	0084bc03          	ld	s8,8(s1)
   10cdc:	00048793          	mv	a5,s1
   10ce0:	01048493          	addi	s1,s1,16
   10ce4:	fe0c0ae3          	beqz	s8,10cd8 <__sfvwrite_r+0x28c>
   10ce8:	0007bc83          	ld	s9,0(a5)
   10cec:	000c0613          	mv	a2,s8
   10cf0:	00a00593          	li	a1,10
   10cf4:	000c8513          	mv	a0,s9
   10cf8:	36d000ef          	jal	ra,11864 <memchr>
   10cfc:	1e050263          	beqz	a0,10ee0 <__sfvwrite_r+0x494>
   10d00:	00150513          	addi	a0,a0,1
   10d04:	419509bb          	subw	s3,a0,s9
   10d08:	ef9ff06f          	j	10c00 <__sfvwrite_r+0x1b4>
   10d0c:	000c8593          	mv	a1,s9
   10d10:	000a8613          	mv	a2,s5
   10d14:	5b9000ef          	jal	ra,11acc <memmove>
   10d18:	00043783          	ld	a5,0(s0)
   10d1c:	00040593          	mv	a1,s0
   10d20:	000a0513          	mv	a0,s4
   10d24:	015787b3          	add	a5,a5,s5
   10d28:	00f43023          	sd	a5,0(s0)
   10d2c:	36d010ef          	jal	ra,12898 <_fflush_r>
   10d30:	f80516e3          	bnez	a0,10cbc <__sfvwrite_r+0x270>
   10d34:	000a8793          	mv	a5,s5
   10d38:	000a8913          	mv	s2,s5
   10d3c:	f15ff06f          	j	10c50 <__sfvwrite_r+0x204>
   10d40:	01843703          	ld	a4,24(s0)
   10d44:	04f76463          	bltu	a4,a5,10d8c <__sfvwrite_r+0x340>
   10d48:	02042583          	lw	a1,32(s0)
   10d4c:	04b96063          	bltu	s2,a1,10d8c <__sfvwrite_r+0x340>
   10d50:	00090993          	mv	s3,s2
   10d54:	012af463          	bgeu	s5,s2,10d5c <__sfvwrite_r+0x310>
   10d58:	000a8993          	mv	s3,s5
   10d5c:	0009851b          	sext.w	a0,s3
   10d60:	27d020ef          	jal	ra,137dc <__moddi3>
   10d64:	04043783          	ld	a5,64(s0)
   10d68:	03043583          	ld	a1,48(s0)
   10d6c:	40a986bb          	subw	a3,s3,a0
   10d70:	000c0613          	mv	a2,s8
   10d74:	000a0513          	mv	a0,s4
   10d78:	000780e7          	jalr	a5
   10d7c:	00050993          	mv	s3,a0
   10d80:	f2a05ee3          	blez	a0,10cbc <__sfvwrite_r+0x270>
   10d84:	41390933          	sub	s2,s2,s3
   10d88:	e29ff06f          	j	10bb0 <__sfvwrite_r+0x164>
   10d8c:	000b8993          	mv	s3,s7
   10d90:	01797463          	bgeu	s2,s7,10d98 <__sfvwrite_r+0x34c>
   10d94:	00090993          	mv	s3,s2
   10d98:	00078513          	mv	a0,a5
   10d9c:	00098613          	mv	a2,s3
   10da0:	000c0593          	mv	a1,s8
   10da4:	529000ef          	jal	ra,11acc <memmove>
   10da8:	00c42703          	lw	a4,12(s0)
   10dac:	00043783          	ld	a5,0(s0)
   10db0:	413706bb          	subw	a3,a4,s3
   10db4:	013787b3          	add	a5,a5,s3
   10db8:	00d42623          	sw	a3,12(s0)
   10dbc:	00f43023          	sd	a5,0(s0)
   10dc0:	fc0692e3          	bnez	a3,10d84 <__sfvwrite_r+0x338>
   10dc4:	00040593          	mv	a1,s0
   10dc8:	000a0513          	mv	a0,s4
   10dcc:	2cd010ef          	jal	ra,12898 <_fflush_r>
   10dd0:	ee0516e3          	bnez	a0,10cbc <__sfvwrite_r+0x270>
   10dd4:	41390933          	sub	s2,s2,s3
   10dd8:	dd9ff06f          	j	10bb0 <__sfvwrite_r+0x164>
   10ddc:	48077693          	andi	a3,a4,1152
   10de0:	0c068263          	beqz	a3,10ea4 <__sfvwrite_r+0x458>
   10de4:	02042603          	lw	a2,32(s0)
   10de8:	01843583          	ld	a1,24(s0)
   10dec:	0016169b          	slliw	a3,a2,0x1
   10df0:	00c686bb          	addw	a3,a3,a2
   10df4:	40b787b3          	sub	a5,a5,a1
   10df8:	01f6d99b          	srliw	s3,a3,0x1f
   10dfc:	00078b9b          	sext.w	s7,a5
   10e00:	00d989bb          	addw	s3,s3,a3
   10e04:	001b8693          	addi	a3,s7,1
   10e08:	4019d99b          	sraiw	s3,s3,0x1
   10e0c:	012686b3          	add	a3,a3,s2
   10e10:	00d9f663          	bgeu	s3,a3,10e1c <__sfvwrite_r+0x3d0>
   10e14:	0017879b          	addiw	a5,a5,1
   10e18:	012789bb          	addw	s3,a5,s2
   10e1c:	40077713          	andi	a4,a4,1024
   10e20:	08070663          	beqz	a4,10eac <__sfvwrite_r+0x460>
   10e24:	00098593          	mv	a1,s3
   10e28:	000a0513          	mv	a0,s4
   10e2c:	25c000ef          	jal	ra,11088 <_malloc_r>
   10e30:	00050c93          	mv	s9,a0
   10e34:	0a050a63          	beqz	a0,10ee8 <__sfvwrite_r+0x49c>
   10e38:	01843583          	ld	a1,24(s0)
   10e3c:	000b8613          	mv	a2,s7
   10e40:	2e9000ef          	jal	ra,11928 <memcpy>
   10e44:	01045783          	lhu	a5,16(s0)
   10e48:	b7f7f793          	andi	a5,a5,-1153
   10e4c:	0807e793          	ori	a5,a5,128
   10e50:	00f41823          	sh	a5,16(s0)
   10e54:	017c8533          	add	a0,s9,s7
   10e58:	41798bbb          	subw	s7,s3,s7
   10e5c:	01943c23          	sd	s9,24(s0)
   10e60:	01742623          	sw	s7,12(s0)
   10e64:	00a43023          	sd	a0,0(s0)
   10e68:	03342023          	sw	s3,32(s0)
   10e6c:	00090c93          	mv	s9,s2
   10e70:	00090b93          	mv	s7,s2
   10e74:	d11ff06f          	j	10b84 <__sfvwrite_r+0x138>
   10e78:	000b8613          	mv	a2,s7
   10e7c:	000c8593          	mv	a1,s9
   10e80:	44d000ef          	jal	ra,11acc <memmove>
   10e84:	00c42683          	lw	a3,12(s0)
   10e88:	00043703          	ld	a4,0(s0)
   10e8c:	000b879b          	sext.w	a5,s7
   10e90:	417686bb          	subw	a3,a3,s7
   10e94:	01770733          	add	a4,a4,s7
   10e98:	00d42623          	sw	a3,12(s0)
   10e9c:	00e43023          	sd	a4,0(s0)
   10ea0:	db1ff06f          	j	10c50 <__sfvwrite_r+0x204>
   10ea4:	000b8c93          	mv	s9,s7
   10ea8:	cddff06f          	j	10b84 <__sfvwrite_r+0x138>
   10eac:	00098613          	mv	a2,s3
   10eb0:	000a0513          	mv	a0,s4
   10eb4:	53d000ef          	jal	ra,11bf0 <_realloc_r>
   10eb8:	00050c93          	mv	s9,a0
   10ebc:	f8051ce3          	bnez	a0,10e54 <__sfvwrite_r+0x408>
   10ec0:	01843583          	ld	a1,24(s0)
   10ec4:	000a0513          	mv	a0,s4
   10ec8:	3e9010ef          	jal	ra,12ab0 <_free_r>
   10ecc:	01041783          	lh	a5,16(s0)
   10ed0:	00c00713          	li	a4,12
   10ed4:	00ea2023          	sw	a4,0(s4)
   10ed8:	f7f7f793          	andi	a5,a5,-129
   10edc:	de5ff06f          	j	10cc0 <__sfvwrite_r+0x274>
   10ee0:	001c099b          	addiw	s3,s8,1
   10ee4:	d1dff06f          	j	10c00 <__sfvwrite_r+0x1b4>
   10ee8:	00c00713          	li	a4,12
   10eec:	01041783          	lh	a5,16(s0)
   10ef0:	00ea2023          	sw	a4,0(s4)
   10ef4:	dcdff06f          	j	10cc0 <__sfvwrite_r+0x274>

0000000000010ef8 <_fwalk>:
   10ef8:	fc010113          	addi	sp,sp,-64
   10efc:	03213023          	sd	s2,32(sp)
   10f00:	01313c23          	sd	s3,24(sp)
   10f04:	01413823          	sd	s4,16(sp)
   10f08:	01513423          	sd	s5,8(sp)
   10f0c:	01613023          	sd	s6,0(sp)
   10f10:	02113c23          	sd	ra,56(sp)
   10f14:	02813823          	sd	s0,48(sp)
   10f18:	02913423          	sd	s1,40(sp)
   10f1c:	00058a93          	mv	s5,a1
   10f20:	52050993          	addi	s3,a0,1312
   10f24:	00000913          	li	s2,0
   10f28:	00100b13          	li	s6,1
   10f2c:	fff00a13          	li	s4,-1
   10f30:	0089a783          	lw	a5,8(s3)
   10f34:	0109b403          	ld	s0,16(s3)
   10f38:	04f05663          	blez	a5,10f84 <_fwalk+0x8c>
   10f3c:	02079793          	slli	a5,a5,0x20
   10f40:	0207d793          	srli	a5,a5,0x20
   10f44:	00179493          	slli	s1,a5,0x1
   10f48:	00f484b3          	add	s1,s1,a5
   10f4c:	00249493          	slli	s1,s1,0x2
   10f50:	40f484b3          	sub	s1,s1,a5
   10f54:	00449493          	slli	s1,s1,0x4
   10f58:	009404b3          	add	s1,s0,s1
   10f5c:	01045783          	lhu	a5,16(s0)
   10f60:	00fb7e63          	bgeu	s6,a5,10f7c <_fwalk+0x84>
   10f64:	01241783          	lh	a5,18(s0)
   10f68:	00040513          	mv	a0,s0
   10f6c:	01478863          	beq	a5,s4,10f7c <_fwalk+0x84>
   10f70:	000a80e7          	jalr	s5 # ffffffff80000000 <__BSS_END__+0xffffffff7ffea798>
   10f74:	01256933          	or	s2,a0,s2
   10f78:	0009091b          	sext.w	s2,s2
   10f7c:	0b040413          	addi	s0,s0,176
   10f80:	fc849ee3          	bne	s1,s0,10f5c <_fwalk+0x64>
   10f84:	0009b983          	ld	s3,0(s3)
   10f88:	fa0994e3          	bnez	s3,10f30 <_fwalk+0x38>
   10f8c:	03813083          	ld	ra,56(sp)
   10f90:	03013403          	ld	s0,48(sp)
   10f94:	02813483          	ld	s1,40(sp)
   10f98:	01813983          	ld	s3,24(sp)
   10f9c:	01013a03          	ld	s4,16(sp)
   10fa0:	00813a83          	ld	s5,8(sp)
   10fa4:	00013b03          	ld	s6,0(sp)
   10fa8:	00090513          	mv	a0,s2
   10fac:	02013903          	ld	s2,32(sp)
   10fb0:	04010113          	addi	sp,sp,64
   10fb4:	00008067          	ret

0000000000010fb8 <_fwalk_reent>:
   10fb8:	fb010113          	addi	sp,sp,-80
   10fbc:	03213823          	sd	s2,48(sp)
   10fc0:	03313423          	sd	s3,40(sp)
   10fc4:	03413023          	sd	s4,32(sp)
   10fc8:	01513c23          	sd	s5,24(sp)
   10fcc:	01613823          	sd	s6,16(sp)
   10fd0:	01713423          	sd	s7,8(sp)
   10fd4:	04113423          	sd	ra,72(sp)
   10fd8:	04813023          	sd	s0,64(sp)
   10fdc:	02913c23          	sd	s1,56(sp)
   10fe0:	00050913          	mv	s2,a0
   10fe4:	00058a93          	mv	s5,a1
   10fe8:	52050993          	addi	s3,a0,1312
   10fec:	00000b13          	li	s6,0
   10ff0:	00100b93          	li	s7,1
   10ff4:	fff00a13          	li	s4,-1
   10ff8:	0089a783          	lw	a5,8(s3)
   10ffc:	0109b403          	ld	s0,16(s3)
   11000:	04f05863          	blez	a5,11050 <_fwalk_reent+0x98>
   11004:	02079793          	slli	a5,a5,0x20
   11008:	0207d793          	srli	a5,a5,0x20
   1100c:	00179493          	slli	s1,a5,0x1
   11010:	00f484b3          	add	s1,s1,a5
   11014:	00249493          	slli	s1,s1,0x2
   11018:	40f484b3          	sub	s1,s1,a5
   1101c:	00449493          	slli	s1,s1,0x4
   11020:	009404b3          	add	s1,s0,s1
   11024:	01045783          	lhu	a5,16(s0)
   11028:	02fbf063          	bgeu	s7,a5,11048 <_fwalk_reent+0x90>
   1102c:	01241783          	lh	a5,18(s0)
   11030:	00040593          	mv	a1,s0
   11034:	00090513          	mv	a0,s2
   11038:	01478863          	beq	a5,s4,11048 <_fwalk_reent+0x90>
   1103c:	000a80e7          	jalr	s5
   11040:	01656b33          	or	s6,a0,s6
   11044:	000b0b1b          	sext.w	s6,s6
   11048:	0b040413          	addi	s0,s0,176
   1104c:	fc849ce3          	bne	s1,s0,11024 <_fwalk_reent+0x6c>
   11050:	0009b983          	ld	s3,0(s3)
   11054:	fa0992e3          	bnez	s3,10ff8 <_fwalk_reent+0x40>
   11058:	04813083          	ld	ra,72(sp)
   1105c:	04013403          	ld	s0,64(sp)
   11060:	03813483          	ld	s1,56(sp)
   11064:	03013903          	ld	s2,48(sp)
   11068:	02813983          	ld	s3,40(sp)
   1106c:	02013a03          	ld	s4,32(sp)
   11070:	01813a83          	ld	s5,24(sp)
   11074:	00813b83          	ld	s7,8(sp)
   11078:	000b0513          	mv	a0,s6
   1107c:	01013b03          	ld	s6,16(sp)
   11080:	05010113          	addi	sp,sp,80
   11084:	00008067          	ret

0000000000011088 <_malloc_r>:
   11088:	fa010113          	addi	sp,sp,-96
   1108c:	04913423          	sd	s1,72(sp)
   11090:	05213023          	sd	s2,64(sp)
   11094:	04113c23          	sd	ra,88(sp)
   11098:	04813823          	sd	s0,80(sp)
   1109c:	03313c23          	sd	s3,56(sp)
   110a0:	03413823          	sd	s4,48(sp)
   110a4:	03513423          	sd	s5,40(sp)
   110a8:	03613023          	sd	s6,32(sp)
   110ac:	01713c23          	sd	s7,24(sp)
   110b0:	01813823          	sd	s8,16(sp)
   110b4:	01913423          	sd	s9,8(sp)
   110b8:	01758493          	addi	s1,a1,23
   110bc:	02e00793          	li	a5,46
   110c0:	00050913          	mv	s2,a0
   110c4:	0897ee63          	bltu	a5,s1,11160 <_malloc_r+0xd8>
   110c8:	02000793          	li	a5,32
   110cc:	24b7e063          	bltu	a5,a1,1130c <_malloc_r+0x284>
   110d0:	319000ef          	jal	ra,11be8 <__malloc_lock>
   110d4:	02000493          	li	s1,32
   110d8:	05000793          	li	a5,80
   110dc:	00400613          	li	a2,4
   110e0:	000159b7          	lui	s3,0x15
   110e4:	f9098993          	addi	s3,s3,-112 # 14f90 <__malloc_av_>
   110e8:	00f987b3          	add	a5,s3,a5
   110ec:	0087b403          	ld	s0,8(a5)
   110f0:	ff078713          	addi	a4,a5,-16
   110f4:	32e40663          	beq	s0,a4,11420 <_malloc_r+0x398>
   110f8:	00843783          	ld	a5,8(s0)
   110fc:	01843683          	ld	a3,24(s0)
   11100:	01043603          	ld	a2,16(s0)
   11104:	ffc7f793          	andi	a5,a5,-4
   11108:	00f407b3          	add	a5,s0,a5
   1110c:	0087b703          	ld	a4,8(a5)
   11110:	00d63c23          	sd	a3,24(a2)
   11114:	00c6b823          	sd	a2,16(a3)
   11118:	00176713          	ori	a4,a4,1
   1111c:	00090513          	mv	a0,s2
   11120:	00e7b423          	sd	a4,8(a5)
   11124:	2c9000ef          	jal	ra,11bec <__malloc_unlock>
   11128:	01040513          	addi	a0,s0,16
   1112c:	05813083          	ld	ra,88(sp)
   11130:	05013403          	ld	s0,80(sp)
   11134:	04813483          	ld	s1,72(sp)
   11138:	04013903          	ld	s2,64(sp)
   1113c:	03813983          	ld	s3,56(sp)
   11140:	03013a03          	ld	s4,48(sp)
   11144:	02813a83          	ld	s5,40(sp)
   11148:	02013b03          	ld	s6,32(sp)
   1114c:	01813b83          	ld	s7,24(sp)
   11150:	01013c03          	ld	s8,16(sp)
   11154:	00813c83          	ld	s9,8(sp)
   11158:	06010113          	addi	sp,sp,96
   1115c:	00008067          	ret
   11160:	800007b7          	lui	a5,0x80000
   11164:	ff04f493          	andi	s1,s1,-16
   11168:	fff7c793          	not	a5,a5
   1116c:	1a97e063          	bltu	a5,s1,1130c <_malloc_r+0x284>
   11170:	18b4ee63          	bltu	s1,a1,1130c <_malloc_r+0x284>
   11174:	275000ef          	jal	ra,11be8 <__malloc_lock>
   11178:	1f700793          	li	a5,503
   1117c:	3e97fe63          	bgeu	a5,s1,11578 <_malloc_r+0x4f0>
   11180:	0094d793          	srli	a5,s1,0x9
   11184:	18078c63          	beqz	a5,1131c <_malloc_r+0x294>
   11188:	00400713          	li	a4,4
   1118c:	30f76463          	bltu	a4,a5,11494 <_malloc_r+0x40c>
   11190:	0064d793          	srli	a5,s1,0x6
   11194:	0397861b          	addiw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffea7d1>
   11198:	0016169b          	slliw	a3,a2,0x1
   1119c:	0387851b          	addiw	a0,a5,56
   111a0:	00369693          	slli	a3,a3,0x3
   111a4:	000159b7          	lui	s3,0x15
   111a8:	f9098993          	addi	s3,s3,-112 # 14f90 <__malloc_av_>
   111ac:	00d986b3          	add	a3,s3,a3
   111b0:	0086b403          	ld	s0,8(a3)
   111b4:	ff068693          	addi	a3,a3,-16
   111b8:	02868663          	beq	a3,s0,111e4 <_malloc_r+0x15c>
   111bc:	01f00593          	li	a1,31
   111c0:	0100006f          	j	111d0 <_malloc_r+0x148>
   111c4:	24075863          	bgez	a4,11414 <_malloc_r+0x38c>
   111c8:	01843403          	ld	s0,24(s0)
   111cc:	00868c63          	beq	a3,s0,111e4 <_malloc_r+0x15c>
   111d0:	00843783          	ld	a5,8(s0)
   111d4:	ffc7f793          	andi	a5,a5,-4
   111d8:	40978733          	sub	a4,a5,s1
   111dc:	fee5d4e3          	bge	a1,a4,111c4 <_malloc_r+0x13c>
   111e0:	00050613          	mv	a2,a0
   111e4:	0209b403          	ld	s0,32(s3)
   111e8:	00015837          	lui	a6,0x15
   111ec:	fa080813          	addi	a6,a6,-96 # 14fa0 <__malloc_av_+0x10>
   111f0:	21040e63          	beq	s0,a6,1140c <_malloc_r+0x384>
   111f4:	00843783          	ld	a5,8(s0)
   111f8:	01f00693          	li	a3,31
   111fc:	ffc7f793          	andi	a5,a5,-4
   11200:	40978733          	sub	a4,a5,s1
   11204:	32e6cc63          	blt	a3,a4,1153c <_malloc_r+0x4b4>
   11208:	0309b423          	sd	a6,40(s3)
   1120c:	0309b023          	sd	a6,32(s3)
   11210:	30075663          	bgez	a4,1151c <_malloc_r+0x494>
   11214:	1ff00713          	li	a4,511
   11218:	0089b503          	ld	a0,8(s3)
   1121c:	20f76a63          	bltu	a4,a5,11430 <_malloc_r+0x3a8>
   11220:	0037d793          	srli	a5,a5,0x3
   11224:	0017871b          	addiw	a4,a5,1
   11228:	0017171b          	slliw	a4,a4,0x1
   1122c:	00371713          	slli	a4,a4,0x3
   11230:	00e98733          	add	a4,s3,a4
   11234:	00073583          	ld	a1,0(a4)
   11238:	4027d79b          	sraiw	a5,a5,0x2
   1123c:	00100693          	li	a3,1
   11240:	00f697b3          	sll	a5,a3,a5
   11244:	00f56533          	or	a0,a0,a5
   11248:	ff070793          	addi	a5,a4,-16
   1124c:	00f43c23          	sd	a5,24(s0)
   11250:	00b43823          	sd	a1,16(s0)
   11254:	00a9b423          	sd	a0,8(s3)
   11258:	00873023          	sd	s0,0(a4)
   1125c:	0085bc23          	sd	s0,24(a1)
   11260:	4026579b          	sraiw	a5,a2,0x2
   11264:	00100593          	li	a1,1
   11268:	00f595b3          	sll	a1,a1,a5
   1126c:	0cb56063          	bltu	a0,a1,1132c <_malloc_r+0x2a4>
   11270:	00a5f7b3          	and	a5,a1,a0
   11274:	02079463          	bnez	a5,1129c <_malloc_r+0x214>
   11278:	00159593          	slli	a1,a1,0x1
   1127c:	ffc67613          	andi	a2,a2,-4
   11280:	00a5f7b3          	and	a5,a1,a0
   11284:	0046061b          	addiw	a2,a2,4
   11288:	00079a63          	bnez	a5,1129c <_malloc_r+0x214>
   1128c:	00159593          	slli	a1,a1,0x1
   11290:	00a5f7b3          	and	a5,a1,a0
   11294:	0046061b          	addiw	a2,a2,4
   11298:	fe078ae3          	beqz	a5,1128c <_malloc_r+0x204>
   1129c:	01f00893          	li	a7,31
   112a0:	0016031b          	addiw	t1,a2,1
   112a4:	0013131b          	slliw	t1,t1,0x1
   112a8:	00331313          	slli	t1,t1,0x3
   112ac:	ff030313          	addi	t1,t1,-16 # 101c8 <frame_dummy+0x4>
   112b0:	00698333          	add	t1,s3,t1
   112b4:	00030513          	mv	a0,t1
   112b8:	01853783          	ld	a5,24(a0)
   112bc:	00060e13          	mv	t3,a2
   112c0:	1ef50e63          	beq	a0,a5,114bc <_malloc_r+0x434>
   112c4:	0087b703          	ld	a4,8(a5)
   112c8:	00078413          	mv	s0,a5
   112cc:	0187b783          	ld	a5,24(a5)
   112d0:	ffc77713          	andi	a4,a4,-4
   112d4:	409706b3          	sub	a3,a4,s1
   112d8:	1ed8ce63          	blt	a7,a3,114d4 <_malloc_r+0x44c>
   112dc:	fe06c2e3          	bltz	a3,112c0 <_malloc_r+0x238>
   112e0:	00e40733          	add	a4,s0,a4
   112e4:	00873683          	ld	a3,8(a4)
   112e8:	01043603          	ld	a2,16(s0)
   112ec:	00090513          	mv	a0,s2
   112f0:	0016e693          	ori	a3,a3,1
   112f4:	00d73423          	sd	a3,8(a4)
   112f8:	00f63c23          	sd	a5,24(a2)
   112fc:	00c7b823          	sd	a2,16(a5)
   11300:	0ed000ef          	jal	ra,11bec <__malloc_unlock>
   11304:	01040513          	addi	a0,s0,16
   11308:	e25ff06f          	j	1112c <_malloc_r+0xa4>
   1130c:	00c00793          	li	a5,12
   11310:	00f92023          	sw	a5,0(s2)
   11314:	00000513          	li	a0,0
   11318:	e15ff06f          	j	1112c <_malloc_r+0xa4>
   1131c:	40000693          	li	a3,1024
   11320:	04000613          	li	a2,64
   11324:	03f00513          	li	a0,63
   11328:	e7dff06f          	j	111a4 <_malloc_r+0x11c>
   1132c:	0109b403          	ld	s0,16(s3)
   11330:	00843783          	ld	a5,8(s0)
   11334:	ffc7fa93          	andi	s5,a5,-4
   11338:	009ae863          	bltu	s5,s1,11348 <_malloc_r+0x2c0>
   1133c:	409a8733          	sub	a4,s5,s1
   11340:	01f00793          	li	a5,31
   11344:	0ae7c063          	blt	a5,a4,113e4 <_malloc_r+0x35c>
   11348:	7881ba03          	ld	s4,1928(gp) # 157f0 <__malloc_top_pad>
   1134c:	7681b703          	ld	a4,1896(gp) # 157d0 <__malloc_sbrk_base>
   11350:	fff00793          	li	a5,-1
   11354:	01540c33          	add	s8,s0,s5
   11358:	01448a33          	add	s4,s1,s4
   1135c:	3cf70863          	beq	a4,a5,1172c <_malloc_r+0x6a4>
   11360:	000017b7          	lui	a5,0x1
   11364:	01f78793          	addi	a5,a5,31 # 101f <exit-0xf0c9>
   11368:	00fa0a33          	add	s4,s4,a5
   1136c:	fffff7b7          	lui	a5,0xfffff
   11370:	00fa7a33          	and	s4,s4,a5
   11374:	000a0593          	mv	a1,s4
   11378:	00090513          	mv	a0,s2
   1137c:	5d5000ef          	jal	ra,12150 <_sbrk_r>
   11380:	fff00793          	li	a5,-1
   11384:	00050b13          	mv	s6,a0
   11388:	22f50263          	beq	a0,a5,115ac <_malloc_r+0x524>
   1138c:	21856e63          	bltu	a0,s8,115a8 <_malloc_r+0x520>
   11390:	00016bb7          	lui	s7,0x16
   11394:	840b8b93          	addi	s7,s7,-1984 # 15840 <__malloc_current_mallinfo>
   11398:	000ba783          	lw	a5,0(s7)
   1139c:	0147873b          	addw	a4,a5,s4
   113a0:	00eba023          	sw	a4,0(s7)
   113a4:	00070693          	mv	a3,a4
   113a8:	2aac1663          	bne	s8,a0,11654 <_malloc_r+0x5cc>
   113ac:	03451793          	slli	a5,a0,0x34
   113b0:	2a079263          	bnez	a5,11654 <_malloc_r+0x5cc>
   113b4:	0109bb03          	ld	s6,16(s3)
   113b8:	014a87b3          	add	a5,s5,s4
   113bc:	0017e793          	ori	a5,a5,1
   113c0:	00fb3423          	sd	a5,8(s6)
   113c4:	7801b603          	ld	a2,1920(gp) # 157e8 <__malloc_max_sbrked_mem>
   113c8:	00e67463          	bgeu	a2,a4,113d0 <_malloc_r+0x348>
   113cc:	78e1b023          	sd	a4,1920(gp) # 157e8 <__malloc_max_sbrked_mem>
   113d0:	7781b603          	ld	a2,1912(gp) # 157e0 <__malloc_max_total_mem>
   113d4:	00e67463          	bgeu	a2,a4,113dc <_malloc_r+0x354>
   113d8:	76e1bc23          	sd	a4,1912(gp) # 157e0 <__malloc_max_total_mem>
   113dc:	000b0413          	mv	s0,s6
   113e0:	1d40006f          	j	115b4 <_malloc_r+0x52c>
   113e4:	0014e793          	ori	a5,s1,1
   113e8:	00f43423          	sd	a5,8(s0)
   113ec:	009404b3          	add	s1,s0,s1
   113f0:	0099b823          	sd	s1,16(s3)
   113f4:	00176713          	ori	a4,a4,1
   113f8:	00090513          	mv	a0,s2
   113fc:	00e4b423          	sd	a4,8(s1)
   11400:	7ec000ef          	jal	ra,11bec <__malloc_unlock>
   11404:	01040513          	addi	a0,s0,16
   11408:	d25ff06f          	j	1112c <_malloc_r+0xa4>
   1140c:	0089b503          	ld	a0,8(s3)
   11410:	e51ff06f          	j	11260 <_malloc_r+0x1d8>
   11414:	01843683          	ld	a3,24(s0)
   11418:	01043603          	ld	a2,16(s0)
   1141c:	cedff06f          	j	11108 <_malloc_r+0x80>
   11420:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffe97b0>
   11424:	0026061b          	addiw	a2,a2,2
   11428:	da878ee3          	beq	a5,s0,111e4 <_malloc_r+0x15c>
   1142c:	ccdff06f          	j	110f8 <_malloc_r+0x70>
   11430:	0097d713          	srli	a4,a5,0x9
   11434:	00400693          	li	a3,4
   11438:	14e6fc63          	bgeu	a3,a4,11590 <_malloc_r+0x508>
   1143c:	01400693          	li	a3,20
   11440:	32e6ec63          	bltu	a3,a4,11778 <_malloc_r+0x6f0>
   11444:	05c7059b          	addiw	a1,a4,92
   11448:	0015959b          	slliw	a1,a1,0x1
   1144c:	05b7069b          	addiw	a3,a4,91
   11450:	00359593          	slli	a1,a1,0x3
   11454:	00b985b3          	add	a1,s3,a1
   11458:	0005b703          	ld	a4,0(a1)
   1145c:	ff058593          	addi	a1,a1,-16
   11460:	00e59863          	bne	a1,a4,11470 <_malloc_r+0x3e8>
   11464:	2d00006f          	j	11734 <_malloc_r+0x6ac>
   11468:	01073703          	ld	a4,16(a4)
   1146c:	00e58863          	beq	a1,a4,1147c <_malloc_r+0x3f4>
   11470:	00873683          	ld	a3,8(a4)
   11474:	ffc6f693          	andi	a3,a3,-4
   11478:	fed7e8e3          	bltu	a5,a3,11468 <_malloc_r+0x3e0>
   1147c:	01873583          	ld	a1,24(a4)
   11480:	00b43c23          	sd	a1,24(s0)
   11484:	00e43823          	sd	a4,16(s0)
   11488:	0085b823          	sd	s0,16(a1)
   1148c:	00873c23          	sd	s0,24(a4)
   11490:	dd1ff06f          	j	11260 <_malloc_r+0x1d8>
   11494:	01400713          	li	a4,20
   11498:	14f77063          	bgeu	a4,a5,115d8 <_malloc_r+0x550>
   1149c:	05400713          	li	a4,84
   114a0:	2ef76c63          	bltu	a4,a5,11798 <_malloc_r+0x710>
   114a4:	00c4d793          	srli	a5,s1,0xc
   114a8:	06f7861b          	addiw	a2,a5,111
   114ac:	0016169b          	slliw	a3,a2,0x1
   114b0:	06e7851b          	addiw	a0,a5,110
   114b4:	00369693          	slli	a3,a3,0x3
   114b8:	cedff06f          	j	111a4 <_malloc_r+0x11c>
   114bc:	001e0e1b          	addiw	t3,t3,1
   114c0:	003e7793          	andi	a5,t3,3
   114c4:	01050513          	addi	a0,a0,16
   114c8:	12078863          	beqz	a5,115f8 <_malloc_r+0x570>
   114cc:	01853783          	ld	a5,24(a0)
   114d0:	df1ff06f          	j	112c0 <_malloc_r+0x238>
   114d4:	01043603          	ld	a2,16(s0)
   114d8:	0014e593          	ori	a1,s1,1
   114dc:	00b43423          	sd	a1,8(s0)
   114e0:	00f63c23          	sd	a5,24(a2)
   114e4:	00c7b823          	sd	a2,16(a5)
   114e8:	009404b3          	add	s1,s0,s1
   114ec:	0299b423          	sd	s1,40(s3)
   114f0:	0299b023          	sd	s1,32(s3)
   114f4:	0016e793          	ori	a5,a3,1
   114f8:	0104bc23          	sd	a6,24(s1)
   114fc:	0104b823          	sd	a6,16(s1)
   11500:	00f4b423          	sd	a5,8(s1)
   11504:	00e40733          	add	a4,s0,a4
   11508:	00090513          	mv	a0,s2
   1150c:	00d73023          	sd	a3,0(a4)
   11510:	6dc000ef          	jal	ra,11bec <__malloc_unlock>
   11514:	01040513          	addi	a0,s0,16
   11518:	c15ff06f          	j	1112c <_malloc_r+0xa4>
   1151c:	00f407b3          	add	a5,s0,a5
   11520:	0087b703          	ld	a4,8(a5)
   11524:	00090513          	mv	a0,s2
   11528:	00176713          	ori	a4,a4,1
   1152c:	00e7b423          	sd	a4,8(a5)
   11530:	6bc000ef          	jal	ra,11bec <__malloc_unlock>
   11534:	01040513          	addi	a0,s0,16
   11538:	bf5ff06f          	j	1112c <_malloc_r+0xa4>
   1153c:	0014e693          	ori	a3,s1,1
   11540:	00d43423          	sd	a3,8(s0)
   11544:	009404b3          	add	s1,s0,s1
   11548:	0299b423          	sd	s1,40(s3)
   1154c:	0299b023          	sd	s1,32(s3)
   11550:	00176693          	ori	a3,a4,1
   11554:	0104bc23          	sd	a6,24(s1)
   11558:	0104b823          	sd	a6,16(s1)
   1155c:	00d4b423          	sd	a3,8(s1)
   11560:	00f407b3          	add	a5,s0,a5
   11564:	00090513          	mv	a0,s2
   11568:	00e7b023          	sd	a4,0(a5)
   1156c:	680000ef          	jal	ra,11bec <__malloc_unlock>
   11570:	01040513          	addi	a0,s0,16
   11574:	bb9ff06f          	j	1112c <_malloc_r+0xa4>
   11578:	0034d613          	srli	a2,s1,0x3
   1157c:	0016079b          	addiw	a5,a2,1
   11580:	0017979b          	slliw	a5,a5,0x1
   11584:	0006061b          	sext.w	a2,a2
   11588:	00379793          	slli	a5,a5,0x3
   1158c:	b55ff06f          	j	110e0 <_malloc_r+0x58>
   11590:	0067d713          	srli	a4,a5,0x6
   11594:	0397059b          	addiw	a1,a4,57
   11598:	0015959b          	slliw	a1,a1,0x1
   1159c:	0387069b          	addiw	a3,a4,56
   115a0:	00359593          	slli	a1,a1,0x3
   115a4:	eb1ff06f          	j	11454 <_malloc_r+0x3cc>
   115a8:	09340c63          	beq	s0,s3,11640 <_malloc_r+0x5b8>
   115ac:	0109b403          	ld	s0,16(s3)
   115b0:	00843783          	ld	a5,8(s0)
   115b4:	ffc7f793          	andi	a5,a5,-4
   115b8:	40978733          	sub	a4,a5,s1
   115bc:	0097e663          	bltu	a5,s1,115c8 <_malloc_r+0x540>
   115c0:	01f00793          	li	a5,31
   115c4:	e2e7c0e3          	blt	a5,a4,113e4 <_malloc_r+0x35c>
   115c8:	00090513          	mv	a0,s2
   115cc:	620000ef          	jal	ra,11bec <__malloc_unlock>
   115d0:	00000513          	li	a0,0
   115d4:	b59ff06f          	j	1112c <_malloc_r+0xa4>
   115d8:	05c7861b          	addiw	a2,a5,92
   115dc:	0016169b          	slliw	a3,a2,0x1
   115e0:	05b7851b          	addiw	a0,a5,91
   115e4:	00369693          	slli	a3,a3,0x3
   115e8:	bbdff06f          	j	111a4 <_malloc_r+0x11c>
   115ec:	01033783          	ld	a5,16(t1)
   115f0:	fff6061b          	addiw	a2,a2,-1
   115f4:	26679463          	bne	a5,t1,1185c <_malloc_r+0x7d4>
   115f8:	00367793          	andi	a5,a2,3
   115fc:	ff030313          	addi	t1,t1,-16
   11600:	fe0796e3          	bnez	a5,115ec <_malloc_r+0x564>
   11604:	0089b703          	ld	a4,8(s3)
   11608:	fff5c793          	not	a5,a1
   1160c:	00e7f7b3          	and	a5,a5,a4
   11610:	00f9b423          	sd	a5,8(s3)
   11614:	00159593          	slli	a1,a1,0x1
   11618:	d0b7eae3          	bltu	a5,a1,1132c <_malloc_r+0x2a4>
   1161c:	d00588e3          	beqz	a1,1132c <_malloc_r+0x2a4>
   11620:	00f5f733          	and	a4,a1,a5
   11624:	00071a63          	bnez	a4,11638 <_malloc_r+0x5b0>
   11628:	00159593          	slli	a1,a1,0x1
   1162c:	00f5f733          	and	a4,a1,a5
   11630:	004e0e1b          	addiw	t3,t3,4
   11634:	fe070ae3          	beqz	a4,11628 <_malloc_r+0x5a0>
   11638:	000e0613          	mv	a2,t3
   1163c:	c65ff06f          	j	112a0 <_malloc_r+0x218>
   11640:	00016bb7          	lui	s7,0x16
   11644:	840b8b93          	addi	s7,s7,-1984 # 15840 <__malloc_current_mallinfo>
   11648:	000ba783          	lw	a5,0(s7)
   1164c:	014786bb          	addw	a3,a5,s4
   11650:	00dba023          	sw	a3,0(s7)
   11654:	7681b703          	ld	a4,1896(gp) # 157d0 <__malloc_sbrk_base>
   11658:	fff00793          	li	a5,-1
   1165c:	14f70e63          	beq	a4,a5,117b8 <_malloc_r+0x730>
   11660:	418b07b3          	sub	a5,s6,s8
   11664:	00d787bb          	addw	a5,a5,a3
   11668:	00fba023          	sw	a5,0(s7)
   1166c:	00fb7c93          	andi	s9,s6,15
   11670:	0c0c8e63          	beqz	s9,1174c <_malloc_r+0x6c4>
   11674:	00001737          	lui	a4,0x1
   11678:	419b0b33          	sub	s6,s6,s9
   1167c:	01070c13          	addi	s8,a4,16 # 1010 <exit-0xf0d8>
   11680:	010b0b13          	addi	s6,s6,16
   11684:	419c0c33          	sub	s8,s8,s9
   11688:	014b0a33          	add	s4,s6,s4
   1168c:	fff70713          	addi	a4,a4,-1
   11690:	414c0c33          	sub	s8,s8,s4
   11694:	00ec7c33          	and	s8,s8,a4
   11698:	000c0593          	mv	a1,s8
   1169c:	00090513          	mv	a0,s2
   116a0:	2b1000ef          	jal	ra,12150 <_sbrk_r>
   116a4:	fff00793          	li	a5,-1
   116a8:	16f50263          	beq	a0,a5,1180c <_malloc_r+0x784>
   116ac:	41650533          	sub	a0,a0,s6
   116b0:	000c069b          	sext.w	a3,s8
   116b4:	01850a33          	add	s4,a0,s8
   116b8:	000ba703          	lw	a4,0(s7)
   116bc:	0169b823          	sd	s6,16(s3)
   116c0:	001a6793          	ori	a5,s4,1
   116c4:	00d7073b          	addw	a4,a4,a3
   116c8:	00eba023          	sw	a4,0(s7)
   116cc:	00fb3423          	sd	a5,8(s6)
   116d0:	cf340ae3          	beq	s0,s3,113c4 <_malloc_r+0x33c>
   116d4:	01f00613          	li	a2,31
   116d8:	0f567463          	bgeu	a2,s5,117c0 <_malloc_r+0x738>
   116dc:	00843683          	ld	a3,8(s0)
   116e0:	fe8a8793          	addi	a5,s5,-24
   116e4:	ff07f793          	andi	a5,a5,-16
   116e8:	0016f693          	andi	a3,a3,1
   116ec:	00f6e6b3          	or	a3,a3,a5
   116f0:	00d43423          	sd	a3,8(s0)
   116f4:	00900593          	li	a1,9
   116f8:	00f406b3          	add	a3,s0,a5
   116fc:	00b6b423          	sd	a1,8(a3)
   11700:	00b6b823          	sd	a1,16(a3)
   11704:	00f66663          	bltu	a2,a5,11710 <_malloc_r+0x688>
   11708:	008b3783          	ld	a5,8(s6)
   1170c:	cb9ff06f          	j	113c4 <_malloc_r+0x33c>
   11710:	01040593          	addi	a1,s0,16
   11714:	00090513          	mv	a0,s2
   11718:	398010ef          	jal	ra,12ab0 <_free_r>
   1171c:	0109bb03          	ld	s6,16(s3)
   11720:	000ba703          	lw	a4,0(s7)
   11724:	008b3783          	ld	a5,8(s6)
   11728:	c9dff06f          	j	113c4 <_malloc_r+0x33c>
   1172c:	020a0a13          	addi	s4,s4,32
   11730:	c45ff06f          	j	11374 <_malloc_r+0x2ec>
   11734:	4026d69b          	sraiw	a3,a3,0x2
   11738:	00100793          	li	a5,1
   1173c:	00d797b3          	sll	a5,a5,a3
   11740:	00f56533          	or	a0,a0,a5
   11744:	00a9b423          	sd	a0,8(s3)
   11748:	d39ff06f          	j	11480 <_malloc_r+0x3f8>
   1174c:	014b0c33          	add	s8,s6,s4
   11750:	41800c33          	neg	s8,s8
   11754:	034c1c13          	slli	s8,s8,0x34
   11758:	034c5c13          	srli	s8,s8,0x34
   1175c:	000c0593          	mv	a1,s8
   11760:	00090513          	mv	a0,s2
   11764:	1ed000ef          	jal	ra,12150 <_sbrk_r>
   11768:	fff00793          	li	a5,-1
   1176c:	00000693          	li	a3,0
   11770:	f2f51ee3          	bne	a0,a5,116ac <_malloc_r+0x624>
   11774:	f45ff06f          	j	116b8 <_malloc_r+0x630>
   11778:	05400693          	li	a3,84
   1177c:	04e6e863          	bltu	a3,a4,117cc <_malloc_r+0x744>
   11780:	00c7d713          	srli	a4,a5,0xc
   11784:	06f7059b          	addiw	a1,a4,111
   11788:	0015959b          	slliw	a1,a1,0x1
   1178c:	06e7069b          	addiw	a3,a4,110
   11790:	00359593          	slli	a1,a1,0x3
   11794:	cc1ff06f          	j	11454 <_malloc_r+0x3cc>
   11798:	15400713          	li	a4,340
   1179c:	04f76863          	bltu	a4,a5,117ec <_malloc_r+0x764>
   117a0:	00f4d793          	srli	a5,s1,0xf
   117a4:	0787861b          	addiw	a2,a5,120
   117a8:	0016169b          	slliw	a3,a2,0x1
   117ac:	0777851b          	addiw	a0,a5,119
   117b0:	00369693          	slli	a3,a3,0x3
   117b4:	9f1ff06f          	j	111a4 <_malloc_r+0x11c>
   117b8:	7761b423          	sd	s6,1896(gp) # 157d0 <__malloc_sbrk_base>
   117bc:	eb1ff06f          	j	1166c <_malloc_r+0x5e4>
   117c0:	00100793          	li	a5,1
   117c4:	00fb3423          	sd	a5,8(s6)
   117c8:	e01ff06f          	j	115c8 <_malloc_r+0x540>
   117cc:	15400693          	li	a3,340
   117d0:	04e6e863          	bltu	a3,a4,11820 <_malloc_r+0x798>
   117d4:	00f7d713          	srli	a4,a5,0xf
   117d8:	0787059b          	addiw	a1,a4,120
   117dc:	0015959b          	slliw	a1,a1,0x1
   117e0:	0777069b          	addiw	a3,a4,119
   117e4:	00359593          	slli	a1,a1,0x3
   117e8:	c6dff06f          	j	11454 <_malloc_r+0x3cc>
   117ec:	55400713          	li	a4,1364
   117f0:	04f76863          	bltu	a4,a5,11840 <_malloc_r+0x7b8>
   117f4:	0124d793          	srli	a5,s1,0x12
   117f8:	07d7861b          	addiw	a2,a5,125
   117fc:	0016169b          	slliw	a3,a2,0x1
   11800:	07c7851b          	addiw	a0,a5,124
   11804:	00369693          	slli	a3,a3,0x3
   11808:	99dff06f          	j	111a4 <_malloc_r+0x11c>
   1180c:	ff0c8c93          	addi	s9,s9,-16
   11810:	019a0a33          	add	s4,s4,s9
   11814:	416a0a33          	sub	s4,s4,s6
   11818:	00000693          	li	a3,0
   1181c:	e9dff06f          	j	116b8 <_malloc_r+0x630>
   11820:	55400693          	li	a3,1364
   11824:	02e6e663          	bltu	a3,a4,11850 <_malloc_r+0x7c8>
   11828:	0127d713          	srli	a4,a5,0x12
   1182c:	07d7059b          	addiw	a1,a4,125
   11830:	0015959b          	slliw	a1,a1,0x1
   11834:	07c7069b          	addiw	a3,a4,124
   11838:	00359593          	slli	a1,a1,0x3
   1183c:	c19ff06f          	j	11454 <_malloc_r+0x3cc>
   11840:	7f000693          	li	a3,2032
   11844:	07f00613          	li	a2,127
   11848:	07e00513          	li	a0,126
   1184c:	959ff06f          	j	111a4 <_malloc_r+0x11c>
   11850:	7f000593          	li	a1,2032
   11854:	07e00693          	li	a3,126
   11858:	bfdff06f          	j	11454 <_malloc_r+0x3cc>
   1185c:	0089b783          	ld	a5,8(s3)
   11860:	db5ff06f          	j	11614 <_malloc_r+0x58c>

0000000000011864 <memchr>:
   11864:	00757793          	andi	a5,a0,7
   11868:	0ff5f693          	zext.b	a3,a1
   1186c:	02078e63          	beqz	a5,118a8 <memchr+0x44>
   11870:	fff60793          	addi	a5,a2,-1
   11874:	02060663          	beqz	a2,118a0 <memchr+0x3c>
   11878:	fff00613          	li	a2,-1
   1187c:	0180006f          	j	11894 <memchr+0x30>
   11880:	00150513          	addi	a0,a0,1
   11884:	00757713          	andi	a4,a0,7
   11888:	02070263          	beqz	a4,118ac <memchr+0x48>
   1188c:	fff78793          	addi	a5,a5,-1
   11890:	00c78863          	beq	a5,a2,118a0 <memchr+0x3c>
   11894:	00054703          	lbu	a4,0(a0)
   11898:	fed714e3          	bne	a4,a3,11880 <memchr+0x1c>
   1189c:	00008067          	ret
   118a0:	00000513          	li	a0,0
   118a4:	00008067          	ret
   118a8:	00060793          	mv	a5,a2
   118ac:	00700713          	li	a4,7
   118b0:	04f77c63          	bgeu	a4,a5,11908 <memchr+0xa4>
   118b4:	0ff5f593          	zext.b	a1,a1
   118b8:	00859713          	slli	a4,a1,0x8
   118bc:	00b70733          	add	a4,a4,a1
   118c0:	01071593          	slli	a1,a4,0x10
   118c4:	00e585b3          	add	a1,a1,a4
   118c8:	7401b883          	ld	a7,1856(gp) # 157a8 <__SDATA_BEGIN__+0x8>
   118cc:	7481b803          	ld	a6,1864(gp) # 157b0 <__SDATA_BEGIN__+0x10>
   118d0:	02059713          	slli	a4,a1,0x20
   118d4:	00e585b3          	add	a1,a1,a4
   118d8:	00700313          	li	t1,7
   118dc:	0100006f          	j	118ec <memchr+0x88>
   118e0:	ff878793          	addi	a5,a5,-8
   118e4:	00850513          	addi	a0,a0,8
   118e8:	02f37063          	bgeu	t1,a5,11908 <memchr+0xa4>
   118ec:	00053703          	ld	a4,0(a0)
   118f0:	00e5c733          	xor	a4,a1,a4
   118f4:	01170633          	add	a2,a4,a7
   118f8:	fff74713          	not	a4,a4
   118fc:	00e67733          	and	a4,a2,a4
   11900:	01077733          	and	a4,a4,a6
   11904:	fc070ee3          	beqz	a4,118e0 <memchr+0x7c>
   11908:	00f50733          	add	a4,a0,a5
   1190c:	00079863          	bnez	a5,1191c <memchr+0xb8>
   11910:	f91ff06f          	j	118a0 <memchr+0x3c>
   11914:	00150513          	addi	a0,a0,1
   11918:	f8a704e3          	beq	a4,a0,118a0 <memchr+0x3c>
   1191c:	00054783          	lbu	a5,0(a0)
   11920:	fed79ae3          	bne	a5,a3,11914 <memchr+0xb0>
   11924:	00008067          	ret

0000000000011928 <memcpy>:
   11928:	00b547b3          	xor	a5,a0,a1
   1192c:	0077f793          	andi	a5,a5,7
   11930:	00c508b3          	add	a7,a0,a2
   11934:	06079463          	bnez	a5,1199c <memcpy+0x74>
   11938:	00700793          	li	a5,7
   1193c:	06c7f063          	bgeu	a5,a2,1199c <memcpy+0x74>
   11940:	00757793          	andi	a5,a0,7
   11944:	00050713          	mv	a4,a0
   11948:	06079a63          	bnez	a5,119bc <memcpy+0x94>
   1194c:	ff88f613          	andi	a2,a7,-8
   11950:	40e606b3          	sub	a3,a2,a4
   11954:	04000793          	li	a5,64
   11958:	08d7ce63          	blt	a5,a3,119f4 <memcpy+0xcc>
   1195c:	00058693          	mv	a3,a1
   11960:	00070793          	mv	a5,a4
   11964:	02c77863          	bgeu	a4,a2,11994 <memcpy+0x6c>
   11968:	0006b803          	ld	a6,0(a3)
   1196c:	00878793          	addi	a5,a5,8
   11970:	00868693          	addi	a3,a3,8
   11974:	ff07bc23          	sd	a6,-8(a5)
   11978:	fec7e8e3          	bltu	a5,a2,11968 <memcpy+0x40>
   1197c:	fff60793          	addi	a5,a2,-1
   11980:	40e787b3          	sub	a5,a5,a4
   11984:	ff87f793          	andi	a5,a5,-8
   11988:	00878793          	addi	a5,a5,8
   1198c:	00f70733          	add	a4,a4,a5
   11990:	00f585b3          	add	a1,a1,a5
   11994:	01176863          	bltu	a4,a7,119a4 <memcpy+0x7c>
   11998:	00008067          	ret
   1199c:	00050713          	mv	a4,a0
   119a0:	05157863          	bgeu	a0,a7,119f0 <memcpy+0xc8>
   119a4:	0005c783          	lbu	a5,0(a1)
   119a8:	00170713          	addi	a4,a4,1
   119ac:	00158593          	addi	a1,a1,1
   119b0:	fef70fa3          	sb	a5,-1(a4)
   119b4:	fee898e3          	bne	a7,a4,119a4 <memcpy+0x7c>
   119b8:	00008067          	ret
   119bc:	0005c683          	lbu	a3,0(a1)
   119c0:	00170713          	addi	a4,a4,1
   119c4:	00777793          	andi	a5,a4,7
   119c8:	fed70fa3          	sb	a3,-1(a4)
   119cc:	00158593          	addi	a1,a1,1
   119d0:	f6078ee3          	beqz	a5,1194c <memcpy+0x24>
   119d4:	0005c683          	lbu	a3,0(a1)
   119d8:	00170713          	addi	a4,a4,1
   119dc:	00777793          	andi	a5,a4,7
   119e0:	fed70fa3          	sb	a3,-1(a4)
   119e4:	00158593          	addi	a1,a1,1
   119e8:	fc079ae3          	bnez	a5,119bc <memcpy+0x94>
   119ec:	f61ff06f          	j	1194c <memcpy+0x24>
   119f0:	00008067          	ret
   119f4:	ff010113          	addi	sp,sp,-16
   119f8:	00813423          	sd	s0,8(sp)
   119fc:	04000413          	li	s0,64
   11a00:	0005b383          	ld	t2,0(a1)
   11a04:	0085b283          	ld	t0,8(a1)
   11a08:	0105bf83          	ld	t6,16(a1)
   11a0c:	0185bf03          	ld	t5,24(a1)
   11a10:	0205be83          	ld	t4,32(a1)
   11a14:	0285be03          	ld	t3,40(a1)
   11a18:	0305b303          	ld	t1,48(a1)
   11a1c:	0385b803          	ld	a6,56(a1)
   11a20:	0405b683          	ld	a3,64(a1)
   11a24:	04870713          	addi	a4,a4,72
   11a28:	40e607b3          	sub	a5,a2,a4
   11a2c:	fa773c23          	sd	t2,-72(a4)
   11a30:	fc573023          	sd	t0,-64(a4)
   11a34:	fdf73423          	sd	t6,-56(a4)
   11a38:	fde73823          	sd	t5,-48(a4)
   11a3c:	fdd73c23          	sd	t4,-40(a4)
   11a40:	ffc73023          	sd	t3,-32(a4)
   11a44:	fe673423          	sd	t1,-24(a4)
   11a48:	ff073823          	sd	a6,-16(a4)
   11a4c:	fed73c23          	sd	a3,-8(a4)
   11a50:	04858593          	addi	a1,a1,72
   11a54:	faf446e3          	blt	s0,a5,11a00 <memcpy+0xd8>
   11a58:	00058693          	mv	a3,a1
   11a5c:	00070793          	mv	a5,a4
   11a60:	02c77863          	bgeu	a4,a2,11a90 <memcpy+0x168>
   11a64:	0006b803          	ld	a6,0(a3)
   11a68:	00878793          	addi	a5,a5,8
   11a6c:	00868693          	addi	a3,a3,8
   11a70:	ff07bc23          	sd	a6,-8(a5)
   11a74:	fec7e8e3          	bltu	a5,a2,11a64 <memcpy+0x13c>
   11a78:	fff60793          	addi	a5,a2,-1
   11a7c:	40e787b3          	sub	a5,a5,a4
   11a80:	ff87f793          	andi	a5,a5,-8
   11a84:	00878793          	addi	a5,a5,8
   11a88:	00f70733          	add	a4,a4,a5
   11a8c:	00f585b3          	add	a1,a1,a5
   11a90:	01176863          	bltu	a4,a7,11aa0 <memcpy+0x178>
   11a94:	00813403          	ld	s0,8(sp)
   11a98:	01010113          	addi	sp,sp,16
   11a9c:	00008067          	ret
   11aa0:	0005c783          	lbu	a5,0(a1)
   11aa4:	00170713          	addi	a4,a4,1
   11aa8:	00158593          	addi	a1,a1,1
   11aac:	fef70fa3          	sb	a5,-1(a4)
   11ab0:	fee882e3          	beq	a7,a4,11a94 <memcpy+0x16c>
   11ab4:	0005c783          	lbu	a5,0(a1)
   11ab8:	00170713          	addi	a4,a4,1
   11abc:	00158593          	addi	a1,a1,1
   11ac0:	fef70fa3          	sb	a5,-1(a4)
   11ac4:	fce89ee3          	bne	a7,a4,11aa0 <memcpy+0x178>
   11ac8:	fcdff06f          	j	11a94 <memcpy+0x16c>

0000000000011acc <memmove>:
   11acc:	02a5f663          	bgeu	a1,a0,11af8 <memmove+0x2c>
   11ad0:	00c58733          	add	a4,a1,a2
   11ad4:	02e57263          	bgeu	a0,a4,11af8 <memmove+0x2c>
   11ad8:	00c507b3          	add	a5,a0,a2
   11adc:	04060663          	beqz	a2,11b28 <memmove+0x5c>
   11ae0:	fff74683          	lbu	a3,-1(a4)
   11ae4:	fff78793          	addi	a5,a5,-1
   11ae8:	fff70713          	addi	a4,a4,-1
   11aec:	00d78023          	sb	a3,0(a5)
   11af0:	fef518e3          	bne	a0,a5,11ae0 <memmove+0x14>
   11af4:	00008067          	ret
   11af8:	01f00793          	li	a5,31
   11afc:	02c7e863          	bltu	a5,a2,11b2c <memmove+0x60>
   11b00:	00050793          	mv	a5,a0
   11b04:	fff60693          	addi	a3,a2,-1
   11b08:	0c060a63          	beqz	a2,11bdc <memmove+0x110>
   11b0c:	00168693          	addi	a3,a3,1
   11b10:	00d786b3          	add	a3,a5,a3
   11b14:	0005c703          	lbu	a4,0(a1)
   11b18:	00178793          	addi	a5,a5,1
   11b1c:	00158593          	addi	a1,a1,1
   11b20:	fee78fa3          	sb	a4,-1(a5)
   11b24:	fed798e3          	bne	a5,a3,11b14 <memmove+0x48>
   11b28:	00008067          	ret
   11b2c:	00b567b3          	or	a5,a0,a1
   11b30:	0077f793          	andi	a5,a5,7
   11b34:	08079e63          	bnez	a5,11bd0 <memmove+0x104>
   11b38:	fe060893          	addi	a7,a2,-32
   11b3c:	fe08f893          	andi	a7,a7,-32
   11b40:	02088893          	addi	a7,a7,32
   11b44:	011507b3          	add	a5,a0,a7
   11b48:	00058693          	mv	a3,a1
   11b4c:	00050713          	mv	a4,a0
   11b50:	0006b803          	ld	a6,0(a3)
   11b54:	02068693          	addi	a3,a3,32
   11b58:	02070713          	addi	a4,a4,32
   11b5c:	ff073023          	sd	a6,-32(a4)
   11b60:	fe86b803          	ld	a6,-24(a3)
   11b64:	ff073423          	sd	a6,-24(a4)
   11b68:	ff06b803          	ld	a6,-16(a3)
   11b6c:	ff073823          	sd	a6,-16(a4)
   11b70:	ff86b803          	ld	a6,-8(a3)
   11b74:	ff073c23          	sd	a6,-8(a4)
   11b78:	fcf71ce3          	bne	a4,a5,11b50 <memmove+0x84>
   11b7c:	01867713          	andi	a4,a2,24
   11b80:	011585b3          	add	a1,a1,a7
   11b84:	01f67813          	andi	a6,a2,31
   11b88:	04070c63          	beqz	a4,11be0 <memmove+0x114>
   11b8c:	00058693          	mv	a3,a1
   11b90:	00078713          	mv	a4,a5
   11b94:	01078eb3          	add	t4,a5,a6
   11b98:	00700e13          	li	t3,7
   11b9c:	0006b303          	ld	t1,0(a3)
   11ba0:	00870713          	addi	a4,a4,8
   11ba4:	40ee88b3          	sub	a7,t4,a4
   11ba8:	fe673c23          	sd	t1,-8(a4)
   11bac:	00868693          	addi	a3,a3,8
   11bb0:	ff1e66e3          	bltu	t3,a7,11b9c <memmove+0xd0>
   11bb4:	ff880713          	addi	a4,a6,-8
   11bb8:	ff877713          	andi	a4,a4,-8
   11bbc:	00870713          	addi	a4,a4,8
   11bc0:	00767613          	andi	a2,a2,7
   11bc4:	00e787b3          	add	a5,a5,a4
   11bc8:	00e585b3          	add	a1,a1,a4
   11bcc:	f39ff06f          	j	11b04 <memmove+0x38>
   11bd0:	fff60693          	addi	a3,a2,-1
   11bd4:	00050793          	mv	a5,a0
   11bd8:	f35ff06f          	j	11b0c <memmove+0x40>
   11bdc:	00008067          	ret
   11be0:	00080613          	mv	a2,a6
   11be4:	f21ff06f          	j	11b04 <memmove+0x38>

0000000000011be8 <__malloc_lock>:
   11be8:	00008067          	ret

0000000000011bec <__malloc_unlock>:
   11bec:	00008067          	ret

0000000000011bf0 <_realloc_r>:
   11bf0:	fb010113          	addi	sp,sp,-80
   11bf4:	03213823          	sd	s2,48(sp)
   11bf8:	04113423          	sd	ra,72(sp)
   11bfc:	04813023          	sd	s0,64(sp)
   11c00:	02913c23          	sd	s1,56(sp)
   11c04:	03313423          	sd	s3,40(sp)
   11c08:	03413023          	sd	s4,32(sp)
   11c0c:	01513c23          	sd	s5,24(sp)
   11c10:	01613823          	sd	s6,16(sp)
   11c14:	01713423          	sd	s7,8(sp)
   11c18:	01813023          	sd	s8,0(sp)
   11c1c:	00060913          	mv	s2,a2
   11c20:	1c058663          	beqz	a1,11dec <_realloc_r+0x1fc>
   11c24:	00058413          	mv	s0,a1
   11c28:	00050993          	mv	s3,a0
   11c2c:	fbdff0ef          	jal	ra,11be8 <__malloc_lock>
   11c30:	ff843783          	ld	a5,-8(s0)
   11c34:	01790493          	addi	s1,s2,23
   11c38:	02e00713          	li	a4,46
   11c3c:	ff040a93          	addi	s5,s0,-16
   11c40:	ffc7fa13          	andi	s4,a5,-4
   11c44:	0e977a63          	bgeu	a4,s1,11d38 <_realloc_r+0x148>
   11c48:	80000737          	lui	a4,0x80000
   11c4c:	ff04f493          	andi	s1,s1,-16
   11c50:	fff74713          	not	a4,a4
   11c54:	0e976663          	bltu	a4,s1,11d40 <_realloc_r+0x150>
   11c58:	0f24e463          	bltu	s1,s2,11d40 <_realloc_r+0x150>
   11c5c:	109a5463          	bge	s4,s1,11d64 <_realloc_r+0x174>
   11c60:	00015737          	lui	a4,0x15
   11c64:	f9070c13          	addi	s8,a4,-112 # 14f90 <__malloc_av_>
   11c68:	010c3603          	ld	a2,16(s8)
   11c6c:	014a86b3          	add	a3,s5,s4
   11c70:	0086b703          	ld	a4,8(a3)
   11c74:	1cd60e63          	beq	a2,a3,11e50 <_realloc_r+0x260>
   11c78:	ffe77613          	andi	a2,a4,-2
   11c7c:	00c68633          	add	a2,a3,a2
   11c80:	00863603          	ld	a2,8(a2)
   11c84:	00167613          	andi	a2,a2,1
   11c88:	14061463          	bnez	a2,11dd0 <_realloc_r+0x1e0>
   11c8c:	ffc77713          	andi	a4,a4,-4
   11c90:	00ea0633          	add	a2,s4,a4
   11c94:	0a965e63          	bge	a2,s1,11d50 <_realloc_r+0x160>
   11c98:	0017f793          	andi	a5,a5,1
   11c9c:	02079463          	bnez	a5,11cc4 <_realloc_r+0xd4>
   11ca0:	ff043b83          	ld	s7,-16(s0)
   11ca4:	417a8bb3          	sub	s7,s5,s7
   11ca8:	008bb783          	ld	a5,8(s7)
   11cac:	ffc7f793          	andi	a5,a5,-4
   11cb0:	00f70733          	add	a4,a4,a5
   11cb4:	01470b33          	add	s6,a4,s4
   11cb8:	329b5463          	bge	s6,s1,11fe0 <_realloc_r+0x3f0>
   11cbc:	00fa0b33          	add	s6,s4,a5
   11cc0:	289b5663          	bge	s6,s1,11f4c <_realloc_r+0x35c>
   11cc4:	00090593          	mv	a1,s2
   11cc8:	00098513          	mv	a0,s3
   11ccc:	bbcff0ef          	jal	ra,11088 <_malloc_r>
   11cd0:	00050913          	mv	s2,a0
   11cd4:	40050263          	beqz	a0,120d8 <_realloc_r+0x4e8>
   11cd8:	ff843783          	ld	a5,-8(s0)
   11cdc:	ff050713          	addi	a4,a0,-16
   11ce0:	ffe7f793          	andi	a5,a5,-2
   11ce4:	00fa87b3          	add	a5,s5,a5
   11ce8:	24e78a63          	beq	a5,a4,11f3c <_realloc_r+0x34c>
   11cec:	ff8a0613          	addi	a2,s4,-8
   11cf0:	04800793          	li	a5,72
   11cf4:	2ec7e063          	bltu	a5,a2,11fd4 <_realloc_r+0x3e4>
   11cf8:	02700713          	li	a4,39
   11cfc:	20c76e63          	bltu	a4,a2,11f18 <_realloc_r+0x328>
   11d00:	00050793          	mv	a5,a0
   11d04:	00040713          	mv	a4,s0
   11d08:	00073683          	ld	a3,0(a4)
   11d0c:	00d7b023          	sd	a3,0(a5)
   11d10:	00873683          	ld	a3,8(a4)
   11d14:	00d7b423          	sd	a3,8(a5)
   11d18:	01073703          	ld	a4,16(a4)
   11d1c:	00e7b823          	sd	a4,16(a5)
   11d20:	00098513          	mv	a0,s3
   11d24:	00040593          	mv	a1,s0
   11d28:	589000ef          	jal	ra,12ab0 <_free_r>
   11d2c:	00098513          	mv	a0,s3
   11d30:	ebdff0ef          	jal	ra,11bec <__malloc_unlock>
   11d34:	0680006f          	j	11d9c <_realloc_r+0x1ac>
   11d38:	02000493          	li	s1,32
   11d3c:	f324f0e3          	bgeu	s1,s2,11c5c <_realloc_r+0x6c>
   11d40:	00c00793          	li	a5,12
   11d44:	00f9a023          	sw	a5,0(s3)
   11d48:	00000913          	li	s2,0
   11d4c:	0500006f          	j	11d9c <_realloc_r+0x1ac>
   11d50:	0186b783          	ld	a5,24(a3)
   11d54:	0106b703          	ld	a4,16(a3)
   11d58:	00060a13          	mv	s4,a2
   11d5c:	00f73c23          	sd	a5,24(a4)
   11d60:	00e7b823          	sd	a4,16(a5)
   11d64:	008ab783          	ld	a5,8(s5)
   11d68:	409a06b3          	sub	a3,s4,s1
   11d6c:	01f00613          	li	a2,31
   11d70:	0017f793          	andi	a5,a5,1
   11d74:	014a8733          	add	a4,s5,s4
   11d78:	0ad66463          	bltu	a2,a3,11e20 <_realloc_r+0x230>
   11d7c:	0147e7b3          	or	a5,a5,s4
   11d80:	00fab423          	sd	a5,8(s5)
   11d84:	00873783          	ld	a5,8(a4)
   11d88:	0017e793          	ori	a5,a5,1
   11d8c:	00f73423          	sd	a5,8(a4)
   11d90:	00098513          	mv	a0,s3
   11d94:	e59ff0ef          	jal	ra,11bec <__malloc_unlock>
   11d98:	00040913          	mv	s2,s0
   11d9c:	04813083          	ld	ra,72(sp)
   11da0:	04013403          	ld	s0,64(sp)
   11da4:	03813483          	ld	s1,56(sp)
   11da8:	02813983          	ld	s3,40(sp)
   11dac:	02013a03          	ld	s4,32(sp)
   11db0:	01813a83          	ld	s5,24(sp)
   11db4:	01013b03          	ld	s6,16(sp)
   11db8:	00813b83          	ld	s7,8(sp)
   11dbc:	00013c03          	ld	s8,0(sp)
   11dc0:	00090513          	mv	a0,s2
   11dc4:	03013903          	ld	s2,48(sp)
   11dc8:	05010113          	addi	sp,sp,80
   11dcc:	00008067          	ret
   11dd0:	0017f793          	andi	a5,a5,1
   11dd4:	ee0798e3          	bnez	a5,11cc4 <_realloc_r+0xd4>
   11dd8:	ff043b83          	ld	s7,-16(s0)
   11ddc:	417a8bb3          	sub	s7,s5,s7
   11de0:	008bb783          	ld	a5,8(s7)
   11de4:	ffc7f793          	andi	a5,a5,-4
   11de8:	ed5ff06f          	j	11cbc <_realloc_r+0xcc>
   11dec:	04013403          	ld	s0,64(sp)
   11df0:	04813083          	ld	ra,72(sp)
   11df4:	03813483          	ld	s1,56(sp)
   11df8:	03013903          	ld	s2,48(sp)
   11dfc:	02813983          	ld	s3,40(sp)
   11e00:	02013a03          	ld	s4,32(sp)
   11e04:	01813a83          	ld	s5,24(sp)
   11e08:	01013b03          	ld	s6,16(sp)
   11e0c:	00813b83          	ld	s7,8(sp)
   11e10:	00013c03          	ld	s8,0(sp)
   11e14:	00060593          	mv	a1,a2
   11e18:	05010113          	addi	sp,sp,80
   11e1c:	a6cff06f          	j	11088 <_malloc_r>
   11e20:	0097e7b3          	or	a5,a5,s1
   11e24:	00fab423          	sd	a5,8(s5)
   11e28:	009a85b3          	add	a1,s5,s1
   11e2c:	0016e693          	ori	a3,a3,1
   11e30:	00d5b423          	sd	a3,8(a1)
   11e34:	00873783          	ld	a5,8(a4)
   11e38:	01058593          	addi	a1,a1,16
   11e3c:	00098513          	mv	a0,s3
   11e40:	0017e793          	ori	a5,a5,1
   11e44:	00f73423          	sd	a5,8(a4)
   11e48:	469000ef          	jal	ra,12ab0 <_free_r>
   11e4c:	f45ff06f          	j	11d90 <_realloc_r+0x1a0>
   11e50:	ffc77713          	andi	a4,a4,-4
   11e54:	014706b3          	add	a3,a4,s4
   11e58:	02048613          	addi	a2,s1,32
   11e5c:	22c6de63          	bge	a3,a2,12098 <_realloc_r+0x4a8>
   11e60:	0017f793          	andi	a5,a5,1
   11e64:	e60790e3          	bnez	a5,11cc4 <_realloc_r+0xd4>
   11e68:	ff043b83          	ld	s7,-16(s0)
   11e6c:	417a8bb3          	sub	s7,s5,s7
   11e70:	008bb783          	ld	a5,8(s7)
   11e74:	ffc7f793          	andi	a5,a5,-4
   11e78:	00f70733          	add	a4,a4,a5
   11e7c:	01470b33          	add	s6,a4,s4
   11e80:	e2cb4ee3          	blt	s6,a2,11cbc <_realloc_r+0xcc>
   11e84:	018bb783          	ld	a5,24(s7)
   11e88:	010bb703          	ld	a4,16(s7)
   11e8c:	ff8a0613          	addi	a2,s4,-8
   11e90:	04800693          	li	a3,72
   11e94:	00f73c23          	sd	a5,24(a4)
   11e98:	00e7b823          	sd	a4,16(a5)
   11e9c:	010b8913          	addi	s2,s7,16
   11ea0:	26c6e263          	bltu	a3,a2,12104 <_realloc_r+0x514>
   11ea4:	02700713          	li	a4,39
   11ea8:	00090793          	mv	a5,s2
   11eac:	02c77263          	bgeu	a4,a2,11ed0 <_realloc_r+0x2e0>
   11eb0:	00043703          	ld	a4,0(s0)
   11eb4:	03700793          	li	a5,55
   11eb8:	00ebb823          	sd	a4,16(s7)
   11ebc:	00843703          	ld	a4,8(s0)
   11ec0:	00ebbc23          	sd	a4,24(s7)
   11ec4:	24c7e863          	bltu	a5,a2,12114 <_realloc_r+0x524>
   11ec8:	01040413          	addi	s0,s0,16
   11ecc:	020b8793          	addi	a5,s7,32
   11ed0:	00043703          	ld	a4,0(s0)
   11ed4:	00e7b023          	sd	a4,0(a5)
   11ed8:	00843703          	ld	a4,8(s0)
   11edc:	00e7b423          	sd	a4,8(a5)
   11ee0:	01043703          	ld	a4,16(s0)
   11ee4:	00e7b823          	sd	a4,16(a5)
   11ee8:	009b8733          	add	a4,s7,s1
   11eec:	409b07b3          	sub	a5,s6,s1
   11ef0:	00ec3823          	sd	a4,16(s8)
   11ef4:	0017e793          	ori	a5,a5,1
   11ef8:	00f73423          	sd	a5,8(a4)
   11efc:	008bb783          	ld	a5,8(s7)
   11f00:	00098513          	mv	a0,s3
   11f04:	0017f793          	andi	a5,a5,1
   11f08:	0097e7b3          	or	a5,a5,s1
   11f0c:	00fbb423          	sd	a5,8(s7)
   11f10:	cddff0ef          	jal	ra,11bec <__malloc_unlock>
   11f14:	e89ff06f          	j	11d9c <_realloc_r+0x1ac>
   11f18:	00043683          	ld	a3,0(s0)
   11f1c:	03700713          	li	a4,55
   11f20:	00d53023          	sd	a3,0(a0)
   11f24:	00843683          	ld	a3,8(s0)
   11f28:	00d53423          	sd	a3,8(a0)
   11f2c:	14c76663          	bltu	a4,a2,12078 <_realloc_r+0x488>
   11f30:	01040713          	addi	a4,s0,16
   11f34:	01050793          	addi	a5,a0,16
   11f38:	dd1ff06f          	j	11d08 <_realloc_r+0x118>
   11f3c:	ff853783          	ld	a5,-8(a0)
   11f40:	ffc7f793          	andi	a5,a5,-4
   11f44:	00fa0a33          	add	s4,s4,a5
   11f48:	e1dff06f          	j	11d64 <_realloc_r+0x174>
   11f4c:	018bb783          	ld	a5,24(s7)
   11f50:	010bb703          	ld	a4,16(s7)
   11f54:	ff8a0613          	addi	a2,s4,-8
   11f58:	04800693          	li	a3,72
   11f5c:	00f73c23          	sd	a5,24(a4)
   11f60:	00e7b823          	sd	a4,16(a5)
   11f64:	010b8913          	addi	s2,s7,16
   11f68:	10c6e063          	bltu	a3,a2,12068 <_realloc_r+0x478>
   11f6c:	02700713          	li	a4,39
   11f70:	00090793          	mv	a5,s2
   11f74:	02c77c63          	bgeu	a4,a2,11fac <_realloc_r+0x3bc>
   11f78:	00043703          	ld	a4,0(s0)
   11f7c:	03700793          	li	a5,55
   11f80:	00ebb823          	sd	a4,16(s7)
   11f84:	00843703          	ld	a4,8(s0)
   11f88:	00ebbc23          	sd	a4,24(s7)
   11f8c:	14c7f063          	bgeu	a5,a2,120cc <_realloc_r+0x4dc>
   11f90:	01043783          	ld	a5,16(s0)
   11f94:	02fbb023          	sd	a5,32(s7)
   11f98:	01843783          	ld	a5,24(s0)
   11f9c:	02fbb423          	sd	a5,40(s7)
   11fa0:	0ad60663          	beq	a2,a3,1204c <_realloc_r+0x45c>
   11fa4:	02040413          	addi	s0,s0,32
   11fa8:	030b8793          	addi	a5,s7,48
   11fac:	00043703          	ld	a4,0(s0)
   11fb0:	00e7b023          	sd	a4,0(a5)
   11fb4:	00843703          	ld	a4,8(s0)
   11fb8:	00e7b423          	sd	a4,8(a5)
   11fbc:	01043703          	ld	a4,16(s0)
   11fc0:	00e7b823          	sd	a4,16(a5)
   11fc4:	00090413          	mv	s0,s2
   11fc8:	000b0a13          	mv	s4,s6
   11fcc:	000b8a93          	mv	s5,s7
   11fd0:	d95ff06f          	j	11d64 <_realloc_r+0x174>
   11fd4:	00040593          	mv	a1,s0
   11fd8:	af5ff0ef          	jal	ra,11acc <memmove>
   11fdc:	d45ff06f          	j	11d20 <_realloc_r+0x130>
   11fe0:	0186b783          	ld	a5,24(a3)
   11fe4:	0106b703          	ld	a4,16(a3)
   11fe8:	ff8a0613          	addi	a2,s4,-8
   11fec:	04800693          	li	a3,72
   11ff0:	00f73c23          	sd	a5,24(a4)
   11ff4:	00e7b823          	sd	a4,16(a5)
   11ff8:	010bb703          	ld	a4,16(s7)
   11ffc:	018bb783          	ld	a5,24(s7)
   12000:	010b8913          	addi	s2,s7,16
   12004:	00f73c23          	sd	a5,24(a4)
   12008:	00e7b823          	sd	a4,16(a5)
   1200c:	04c6ee63          	bltu	a3,a2,12068 <_realloc_r+0x478>
   12010:	02700713          	li	a4,39
   12014:	00090793          	mv	a5,s2
   12018:	f8c77ae3          	bgeu	a4,a2,11fac <_realloc_r+0x3bc>
   1201c:	00043703          	ld	a4,0(s0)
   12020:	03700793          	li	a5,55
   12024:	00ebb823          	sd	a4,16(s7)
   12028:	00843703          	ld	a4,8(s0)
   1202c:	00ebbc23          	sd	a4,24(s7)
   12030:	08c7fe63          	bgeu	a5,a2,120cc <_realloc_r+0x4dc>
   12034:	01043703          	ld	a4,16(s0)
   12038:	04800793          	li	a5,72
   1203c:	02ebb023          	sd	a4,32(s7)
   12040:	01843703          	ld	a4,24(s0)
   12044:	02ebb423          	sd	a4,40(s7)
   12048:	f4f61ee3          	bne	a2,a5,11fa4 <_realloc_r+0x3b4>
   1204c:	02043703          	ld	a4,32(s0)
   12050:	040b8793          	addi	a5,s7,64
   12054:	03040413          	addi	s0,s0,48
   12058:	02ebb823          	sd	a4,48(s7)
   1205c:	ff843703          	ld	a4,-8(s0)
   12060:	02ebbc23          	sd	a4,56(s7)
   12064:	f49ff06f          	j	11fac <_realloc_r+0x3bc>
   12068:	00040593          	mv	a1,s0
   1206c:	00090513          	mv	a0,s2
   12070:	a5dff0ef          	jal	ra,11acc <memmove>
   12074:	f51ff06f          	j	11fc4 <_realloc_r+0x3d4>
   12078:	01043703          	ld	a4,16(s0)
   1207c:	00e53823          	sd	a4,16(a0)
   12080:	01843703          	ld	a4,24(s0)
   12084:	00e53c23          	sd	a4,24(a0)
   12088:	06f60063          	beq	a2,a5,120e8 <_realloc_r+0x4f8>
   1208c:	02040713          	addi	a4,s0,32
   12090:	02050793          	addi	a5,a0,32
   12094:	c75ff06f          	j	11d08 <_realloc_r+0x118>
   12098:	009a8ab3          	add	s5,s5,s1
   1209c:	409687b3          	sub	a5,a3,s1
   120a0:	015c3823          	sd	s5,16(s8)
   120a4:	0017e793          	ori	a5,a5,1
   120a8:	00fab423          	sd	a5,8(s5)
   120ac:	ff843783          	ld	a5,-8(s0)
   120b0:	00098513          	mv	a0,s3
   120b4:	00040913          	mv	s2,s0
   120b8:	0017f793          	andi	a5,a5,1
   120bc:	0097e7b3          	or	a5,a5,s1
   120c0:	fef43c23          	sd	a5,-8(s0)
   120c4:	b29ff0ef          	jal	ra,11bec <__malloc_unlock>
   120c8:	cd5ff06f          	j	11d9c <_realloc_r+0x1ac>
   120cc:	01040413          	addi	s0,s0,16
   120d0:	020b8793          	addi	a5,s7,32
   120d4:	ed9ff06f          	j	11fac <_realloc_r+0x3bc>
   120d8:	00098513          	mv	a0,s3
   120dc:	b11ff0ef          	jal	ra,11bec <__malloc_unlock>
   120e0:	00000913          	li	s2,0
   120e4:	cb9ff06f          	j	11d9c <_realloc_r+0x1ac>
   120e8:	02043683          	ld	a3,32(s0)
   120ec:	03040713          	addi	a4,s0,48
   120f0:	03050793          	addi	a5,a0,48
   120f4:	02d53023          	sd	a3,32(a0)
   120f8:	02843683          	ld	a3,40(s0)
   120fc:	02d53423          	sd	a3,40(a0)
   12100:	c09ff06f          	j	11d08 <_realloc_r+0x118>
   12104:	00040593          	mv	a1,s0
   12108:	00090513          	mv	a0,s2
   1210c:	9c1ff0ef          	jal	ra,11acc <memmove>
   12110:	dd9ff06f          	j	11ee8 <_realloc_r+0x2f8>
   12114:	01043783          	ld	a5,16(s0)
   12118:	02fbb023          	sd	a5,32(s7)
   1211c:	01843783          	ld	a5,24(s0)
   12120:	02fbb423          	sd	a5,40(s7)
   12124:	00d60863          	beq	a2,a3,12134 <_realloc_r+0x544>
   12128:	02040413          	addi	s0,s0,32
   1212c:	030b8793          	addi	a5,s7,48
   12130:	da1ff06f          	j	11ed0 <_realloc_r+0x2e0>
   12134:	02043703          	ld	a4,32(s0)
   12138:	040b8793          	addi	a5,s7,64
   1213c:	03040413          	addi	s0,s0,48
   12140:	02ebb823          	sd	a4,48(s7)
   12144:	ff843703          	ld	a4,-8(s0)
   12148:	02ebbc23          	sd	a4,56(s7)
   1214c:	d85ff06f          	j	11ed0 <_realloc_r+0x2e0>

0000000000012150 <_sbrk_r>:
   12150:	fe010113          	addi	sp,sp,-32
   12154:	00813823          	sd	s0,16(sp)
   12158:	00913423          	sd	s1,8(sp)
   1215c:	00050413          	mv	s0,a0
   12160:	00058513          	mv	a0,a1
   12164:	00113c23          	sd	ra,24(sp)
   12168:	7801a823          	sw	zero,1936(gp) # 157f8 <errno>
   1216c:	454010ef          	jal	ra,135c0 <_sbrk>
   12170:	fff00793          	li	a5,-1
   12174:	00f50c63          	beq	a0,a5,1218c <_sbrk_r+0x3c>
   12178:	01813083          	ld	ra,24(sp)
   1217c:	01013403          	ld	s0,16(sp)
   12180:	00813483          	ld	s1,8(sp)
   12184:	02010113          	addi	sp,sp,32
   12188:	00008067          	ret
   1218c:	7901a783          	lw	a5,1936(gp) # 157f8 <errno>
   12190:	fe0784e3          	beqz	a5,12178 <_sbrk_r+0x28>
   12194:	01813083          	ld	ra,24(sp)
   12198:	00f42023          	sw	a5,0(s0)
   1219c:	01013403          	ld	s0,16(sp)
   121a0:	00813483          	ld	s1,8(sp)
   121a4:	02010113          	addi	sp,sp,32
   121a8:	00008067          	ret

00000000000121ac <__sread>:
   121ac:	ff010113          	addi	sp,sp,-16
   121b0:	00813023          	sd	s0,0(sp)
   121b4:	00058413          	mv	s0,a1
   121b8:	01259583          	lh	a1,18(a1)
   121bc:	00113423          	sd	ra,8(sp)
   121c0:	6e1000ef          	jal	ra,130a0 <_read_r>
   121c4:	02054063          	bltz	a0,121e4 <__sread+0x38>
   121c8:	09043783          	ld	a5,144(s0)
   121cc:	00813083          	ld	ra,8(sp)
   121d0:	00a787b3          	add	a5,a5,a0
   121d4:	08f43823          	sd	a5,144(s0)
   121d8:	00013403          	ld	s0,0(sp)
   121dc:	01010113          	addi	sp,sp,16
   121e0:	00008067          	ret
   121e4:	01045783          	lhu	a5,16(s0)
   121e8:	fffff737          	lui	a4,0xfffff
   121ec:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffe9797>
   121f0:	00e7f7b3          	and	a5,a5,a4
   121f4:	00813083          	ld	ra,8(sp)
   121f8:	00f41823          	sh	a5,16(s0)
   121fc:	00013403          	ld	s0,0(sp)
   12200:	01010113          	addi	sp,sp,16
   12204:	00008067          	ret

0000000000012208 <__seofread>:
   12208:	00000513          	li	a0,0
   1220c:	00008067          	ret

0000000000012210 <__swrite>:
   12210:	01059783          	lh	a5,16(a1)
   12214:	fd010113          	addi	sp,sp,-48
   12218:	02813023          	sd	s0,32(sp)
   1221c:	00913c23          	sd	s1,24(sp)
   12220:	01213823          	sd	s2,16(sp)
   12224:	01313423          	sd	s3,8(sp)
   12228:	02113423          	sd	ra,40(sp)
   1222c:	1007f713          	andi	a4,a5,256
   12230:	00058413          	mv	s0,a1
   12234:	00050493          	mv	s1,a0
   12238:	00060913          	mv	s2,a2
   1223c:	00068993          	mv	s3,a3
   12240:	04071063          	bnez	a4,12280 <__swrite+0x70>
   12244:	fffff737          	lui	a4,0xfffff
   12248:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffe9797>
   1224c:	00e7f7b3          	and	a5,a5,a4
   12250:	01241583          	lh	a1,18(s0)
   12254:	00f41823          	sh	a5,16(s0)
   12258:	02013403          	ld	s0,32(sp)
   1225c:	02813083          	ld	ra,40(sp)
   12260:	00098693          	mv	a3,s3
   12264:	00090613          	mv	a2,s2
   12268:	00813983          	ld	s3,8(sp)
   1226c:	01013903          	ld	s2,16(sp)
   12270:	00048513          	mv	a0,s1
   12274:	01813483          	ld	s1,24(sp)
   12278:	03010113          	addi	sp,sp,48
   1227c:	09c0006f          	j	12318 <_write_r>
   12280:	01259583          	lh	a1,18(a1)
   12284:	00200693          	li	a3,2
   12288:	00000613          	li	a2,0
   1228c:	345000ef          	jal	ra,12dd0 <_lseek_r>
   12290:	01041783          	lh	a5,16(s0)
   12294:	fb1ff06f          	j	12244 <__swrite+0x34>

0000000000012298 <__sseek>:
   12298:	ff010113          	addi	sp,sp,-16
   1229c:	00813023          	sd	s0,0(sp)
   122a0:	00058413          	mv	s0,a1
   122a4:	01259583          	lh	a1,18(a1)
   122a8:	00113423          	sd	ra,8(sp)
   122ac:	325000ef          	jal	ra,12dd0 <_lseek_r>
   122b0:	fff00793          	li	a5,-1
   122b4:	02f50863          	beq	a0,a5,122e4 <__sseek+0x4c>
   122b8:	01045783          	lhu	a5,16(s0)
   122bc:	00001737          	lui	a4,0x1
   122c0:	00813083          	ld	ra,8(sp)
   122c4:	00e7e7b3          	or	a5,a5,a4
   122c8:	0107979b          	slliw	a5,a5,0x10
   122cc:	4107d79b          	sraiw	a5,a5,0x10
   122d0:	08a43823          	sd	a0,144(s0)
   122d4:	00f41823          	sh	a5,16(s0)
   122d8:	00013403          	ld	s0,0(sp)
   122dc:	01010113          	addi	sp,sp,16
   122e0:	00008067          	ret
   122e4:	01045783          	lhu	a5,16(s0)
   122e8:	fffff737          	lui	a4,0xfffff
   122ec:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffe9797>
   122f0:	00e7f7b3          	and	a5,a5,a4
   122f4:	0107979b          	slliw	a5,a5,0x10
   122f8:	4107d79b          	sraiw	a5,a5,0x10
   122fc:	00813083          	ld	ra,8(sp)
   12300:	00f41823          	sh	a5,16(s0)
   12304:	00013403          	ld	s0,0(sp)
   12308:	01010113          	addi	sp,sp,16
   1230c:	00008067          	ret

0000000000012310 <__sclose>:
   12310:	01259583          	lh	a1,18(a1)
   12314:	1c00006f          	j	124d4 <_close_r>

0000000000012318 <_write_r>:
   12318:	fe010113          	addi	sp,sp,-32
   1231c:	00058713          	mv	a4,a1
   12320:	00813823          	sd	s0,16(sp)
   12324:	00913423          	sd	s1,8(sp)
   12328:	00060593          	mv	a1,a2
   1232c:	00050413          	mv	s0,a0
   12330:	00068613          	mv	a2,a3
   12334:	00070513          	mv	a0,a4
   12338:	00113c23          	sd	ra,24(sp)
   1233c:	7801a823          	sw	zero,1936(gp) # 157f8 <errno>
   12340:	2f8010ef          	jal	ra,13638 <_write>
   12344:	fff00793          	li	a5,-1
   12348:	00f50c63          	beq	a0,a5,12360 <_write_r+0x48>
   1234c:	01813083          	ld	ra,24(sp)
   12350:	01013403          	ld	s0,16(sp)
   12354:	00813483          	ld	s1,8(sp)
   12358:	02010113          	addi	sp,sp,32
   1235c:	00008067          	ret
   12360:	7901a783          	lw	a5,1936(gp) # 157f8 <errno>
   12364:	fe0784e3          	beqz	a5,1234c <_write_r+0x34>
   12368:	01813083          	ld	ra,24(sp)
   1236c:	00f42023          	sw	a5,0(s0)
   12370:	01013403          	ld	s0,16(sp)
   12374:	00813483          	ld	s1,8(sp)
   12378:	02010113          	addi	sp,sp,32
   1237c:	00008067          	ret

0000000000012380 <__swsetup_r>:
   12380:	7601b783          	ld	a5,1888(gp) # 157c8 <_impure_ptr>
   12384:	fe010113          	addi	sp,sp,-32
   12388:	00813823          	sd	s0,16(sp)
   1238c:	00913423          	sd	s1,8(sp)
   12390:	00113c23          	sd	ra,24(sp)
   12394:	00050493          	mv	s1,a0
   12398:	00058413          	mv	s0,a1
   1239c:	00078663          	beqz	a5,123a8 <__swsetup_r+0x28>
   123a0:	0507a703          	lw	a4,80(a5)
   123a4:	08070063          	beqz	a4,12424 <__swsetup_r+0xa4>
   123a8:	01041783          	lh	a5,16(s0)
   123ac:	0087f713          	andi	a4,a5,8
   123b0:	08070463          	beqz	a4,12438 <__swsetup_r+0xb8>
   123b4:	01843703          	ld	a4,24(s0)
   123b8:	0a070063          	beqz	a4,12458 <__swsetup_r+0xd8>
   123bc:	0017f693          	andi	a3,a5,1
   123c0:	02068863          	beqz	a3,123f0 <__swsetup_r+0x70>
   123c4:	02042683          	lw	a3,32(s0)
   123c8:	00042623          	sw	zero,12(s0)
   123cc:	00000513          	li	a0,0
   123d0:	40d006bb          	negw	a3,a3
   123d4:	02d42423          	sw	a3,40(s0)
   123d8:	02070a63          	beqz	a4,1240c <__swsetup_r+0x8c>
   123dc:	01813083          	ld	ra,24(sp)
   123e0:	01013403          	ld	s0,16(sp)
   123e4:	00813483          	ld	s1,8(sp)
   123e8:	02010113          	addi	sp,sp,32
   123ec:	00008067          	ret
   123f0:	0027f693          	andi	a3,a5,2
   123f4:	00000613          	li	a2,0
   123f8:	00069463          	bnez	a3,12400 <__swsetup_r+0x80>
   123fc:	02042603          	lw	a2,32(s0)
   12400:	00c42623          	sw	a2,12(s0)
   12404:	00000513          	li	a0,0
   12408:	fc071ae3          	bnez	a4,123dc <__swsetup_r+0x5c>
   1240c:	0807f713          	andi	a4,a5,128
   12410:	fc0706e3          	beqz	a4,123dc <__swsetup_r+0x5c>
   12414:	0407e793          	ori	a5,a5,64
   12418:	00f41823          	sh	a5,16(s0)
   1241c:	fff00513          	li	a0,-1
   12420:	fbdff06f          	j	123dc <__swsetup_r+0x5c>
   12424:	00078513          	mv	a0,a5
   12428:	d88fe0ef          	jal	ra,109b0 <__sinit>
   1242c:	01041783          	lh	a5,16(s0)
   12430:	0087f713          	andi	a4,a5,8
   12434:	f80710e3          	bnez	a4,123b4 <__swsetup_r+0x34>
   12438:	0107f713          	andi	a4,a5,16
   1243c:	06070a63          	beqz	a4,124b0 <__swsetup_r+0x130>
   12440:	0047f713          	andi	a4,a5,4
   12444:	02071c63          	bnez	a4,1247c <__swsetup_r+0xfc>
   12448:	01843703          	ld	a4,24(s0)
   1244c:	0087e793          	ori	a5,a5,8
   12450:	00f41823          	sh	a5,16(s0)
   12454:	f60714e3          	bnez	a4,123bc <__swsetup_r+0x3c>
   12458:	2807f693          	andi	a3,a5,640
   1245c:	20000613          	li	a2,512
   12460:	f4c68ee3          	beq	a3,a2,123bc <__swsetup_r+0x3c>
   12464:	00040593          	mv	a1,s0
   12468:	00048513          	mv	a0,s1
   1246c:	1cd000ef          	jal	ra,12e38 <__smakebuf_r>
   12470:	01041783          	lh	a5,16(s0)
   12474:	01843703          	ld	a4,24(s0)
   12478:	f45ff06f          	j	123bc <__swsetup_r+0x3c>
   1247c:	05843583          	ld	a1,88(s0)
   12480:	00058e63          	beqz	a1,1249c <__swsetup_r+0x11c>
   12484:	07440713          	addi	a4,s0,116
   12488:	00e58863          	beq	a1,a4,12498 <__swsetup_r+0x118>
   1248c:	00048513          	mv	a0,s1
   12490:	620000ef          	jal	ra,12ab0 <_free_r>
   12494:	01041783          	lh	a5,16(s0)
   12498:	04043c23          	sd	zero,88(s0)
   1249c:	01843703          	ld	a4,24(s0)
   124a0:	fdb7f793          	andi	a5,a5,-37
   124a4:	00042423          	sw	zero,8(s0)
   124a8:	00e43023          	sd	a4,0(s0)
   124ac:	fa1ff06f          	j	1244c <__swsetup_r+0xcc>
   124b0:	00900713          	li	a4,9
   124b4:	00e4a023          	sw	a4,0(s1)
   124b8:	0407e793          	ori	a5,a5,64
   124bc:	f5dff06f          	j	12418 <__swsetup_r+0x98>

00000000000124c0 <atexit>:
   124c0:	00050593          	mv	a1,a0
   124c4:	00000693          	li	a3,0
   124c8:	00000613          	li	a2,0
   124cc:	00000513          	li	a0,0
   124d0:	5e90006f          	j	132b8 <__register_exitproc>

00000000000124d4 <_close_r>:
   124d4:	fe010113          	addi	sp,sp,-32
   124d8:	00813823          	sd	s0,16(sp)
   124dc:	00913423          	sd	s1,8(sp)
   124e0:	00050413          	mv	s0,a0
   124e4:	00058513          	mv	a0,a1
   124e8:	00113c23          	sd	ra,24(sp)
   124ec:	7801a823          	sw	zero,1936(gp) # 157f8 <errno>
   124f0:	731000ef          	jal	ra,13420 <_close>
   124f4:	fff00793          	li	a5,-1
   124f8:	00f50c63          	beq	a0,a5,12510 <_close_r+0x3c>
   124fc:	01813083          	ld	ra,24(sp)
   12500:	01013403          	ld	s0,16(sp)
   12504:	00813483          	ld	s1,8(sp)
   12508:	02010113          	addi	sp,sp,32
   1250c:	00008067          	ret
   12510:	7901a783          	lw	a5,1936(gp) # 157f8 <errno>
   12514:	fe0784e3          	beqz	a5,124fc <_close_r+0x28>
   12518:	01813083          	ld	ra,24(sp)
   1251c:	00f42023          	sw	a5,0(s0)
   12520:	01013403          	ld	s0,16(sp)
   12524:	00813483          	ld	s1,8(sp)
   12528:	02010113          	addi	sp,sp,32
   1252c:	00008067          	ret

0000000000012530 <_fclose_r>:
   12530:	fe010113          	addi	sp,sp,-32
   12534:	00113c23          	sd	ra,24(sp)
   12538:	00813823          	sd	s0,16(sp)
   1253c:	00913423          	sd	s1,8(sp)
   12540:	01213023          	sd	s2,0(sp)
   12544:	02058063          	beqz	a1,12564 <_fclose_r+0x34>
   12548:	00058413          	mv	s0,a1
   1254c:	00050493          	mv	s1,a0
   12550:	00050663          	beqz	a0,1255c <_fclose_r+0x2c>
   12554:	05052783          	lw	a5,80(a0)
   12558:	0a078c63          	beqz	a5,12610 <_fclose_r+0xe0>
   1255c:	01041783          	lh	a5,16(s0)
   12560:	02079263          	bnez	a5,12584 <_fclose_r+0x54>
   12564:	01813083          	ld	ra,24(sp)
   12568:	01013403          	ld	s0,16(sp)
   1256c:	00000913          	li	s2,0
   12570:	00813483          	ld	s1,8(sp)
   12574:	00090513          	mv	a0,s2
   12578:	00013903          	ld	s2,0(sp)
   1257c:	02010113          	addi	sp,sp,32
   12580:	00008067          	ret
   12584:	00040593          	mv	a1,s0
   12588:	00048513          	mv	a0,s1
   1258c:	0c0000ef          	jal	ra,1264c <__sflush_r>
   12590:	05043783          	ld	a5,80(s0)
   12594:	00050913          	mv	s2,a0
   12598:	00078a63          	beqz	a5,125ac <_fclose_r+0x7c>
   1259c:	03043583          	ld	a1,48(s0)
   125a0:	00048513          	mv	a0,s1
   125a4:	000780e7          	jalr	a5
   125a8:	06054c63          	bltz	a0,12620 <_fclose_r+0xf0>
   125ac:	01045783          	lhu	a5,16(s0)
   125b0:	0807f793          	andi	a5,a5,128
   125b4:	06079e63          	bnez	a5,12630 <_fclose_r+0x100>
   125b8:	05843583          	ld	a1,88(s0)
   125bc:	00058c63          	beqz	a1,125d4 <_fclose_r+0xa4>
   125c0:	07440793          	addi	a5,s0,116
   125c4:	00f58663          	beq	a1,a5,125d0 <_fclose_r+0xa0>
   125c8:	00048513          	mv	a0,s1
   125cc:	4e4000ef          	jal	ra,12ab0 <_free_r>
   125d0:	04043c23          	sd	zero,88(s0)
   125d4:	07843583          	ld	a1,120(s0)
   125d8:	00058863          	beqz	a1,125e8 <_fclose_r+0xb8>
   125dc:	00048513          	mv	a0,s1
   125e0:	4d0000ef          	jal	ra,12ab0 <_free_r>
   125e4:	06043c23          	sd	zero,120(s0)
   125e8:	bd8fe0ef          	jal	ra,109c0 <__sfp_lock_acquire>
   125ec:	00041823          	sh	zero,16(s0)
   125f0:	bd4fe0ef          	jal	ra,109c4 <__sfp_lock_release>
   125f4:	01813083          	ld	ra,24(sp)
   125f8:	01013403          	ld	s0,16(sp)
   125fc:	00813483          	ld	s1,8(sp)
   12600:	00090513          	mv	a0,s2
   12604:	00013903          	ld	s2,0(sp)
   12608:	02010113          	addi	sp,sp,32
   1260c:	00008067          	ret
   12610:	ba0fe0ef          	jal	ra,109b0 <__sinit>
   12614:	01041783          	lh	a5,16(s0)
   12618:	f40786e3          	beqz	a5,12564 <_fclose_r+0x34>
   1261c:	f69ff06f          	j	12584 <_fclose_r+0x54>
   12620:	01045783          	lhu	a5,16(s0)
   12624:	fff00913          	li	s2,-1
   12628:	0807f793          	andi	a5,a5,128
   1262c:	f80786e3          	beqz	a5,125b8 <_fclose_r+0x88>
   12630:	01843583          	ld	a1,24(s0)
   12634:	00048513          	mv	a0,s1
   12638:	478000ef          	jal	ra,12ab0 <_free_r>
   1263c:	f7dff06f          	j	125b8 <_fclose_r+0x88>

0000000000012640 <fclose>:
   12640:	00050593          	mv	a1,a0
   12644:	7601b503          	ld	a0,1888(gp) # 157c8 <_impure_ptr>
   12648:	ee9ff06f          	j	12530 <_fclose_r>

000000000001264c <__sflush_r>:
   1264c:	01059783          	lh	a5,16(a1)
   12650:	fd010113          	addi	sp,sp,-48
   12654:	02813023          	sd	s0,32(sp)
   12658:	01313423          	sd	s3,8(sp)
   1265c:	02113423          	sd	ra,40(sp)
   12660:	00913c23          	sd	s1,24(sp)
   12664:	01213823          	sd	s2,16(sp)
   12668:	0087f713          	andi	a4,a5,8
   1266c:	00058413          	mv	s0,a1
   12670:	00050993          	mv	s3,a0
   12674:	12071263          	bnez	a4,12798 <__sflush_r+0x14c>
   12678:	00001737          	lui	a4,0x1
   1267c:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8e8>
   12680:	0085a683          	lw	a3,8(a1)
   12684:	00e7e733          	or	a4,a5,a4
   12688:	00e59823          	sh	a4,16(a1)
   1268c:	18d05863          	blez	a3,1281c <__sflush_r+0x1d0>
   12690:	04843803          	ld	a6,72(s0)
   12694:	0e080263          	beqz	a6,12778 <__sflush_r+0x12c>
   12698:	00c7d793          	srli	a5,a5,0xc
   1269c:	0009a483          	lw	s1,0(s3)
   126a0:	0017f793          	andi	a5,a5,1
   126a4:	0009a023          	sw	zero,0(s3)
   126a8:	03043583          	ld	a1,48(s0)
   126ac:	18079063          	bnez	a5,1282c <__sflush_r+0x1e0>
   126b0:	00000613          	li	a2,0
   126b4:	00100693          	li	a3,1
   126b8:	00098513          	mv	a0,s3
   126bc:	000800e7          	jalr	a6
   126c0:	fff00793          	li	a5,-1
   126c4:	00050613          	mv	a2,a0
   126c8:	1af50063          	beq	a0,a5,12868 <__sflush_r+0x21c>
   126cc:	01041703          	lh	a4,16(s0)
   126d0:	04843803          	ld	a6,72(s0)
   126d4:	03043583          	ld	a1,48(s0)
   126d8:	00477713          	andi	a4,a4,4
   126dc:	00070e63          	beqz	a4,126f8 <__sflush_r+0xac>
   126e0:	00842703          	lw	a4,8(s0)
   126e4:	05843783          	ld	a5,88(s0)
   126e8:	40e60633          	sub	a2,a2,a4
   126ec:	00078663          	beqz	a5,126f8 <__sflush_r+0xac>
   126f0:	07042783          	lw	a5,112(s0)
   126f4:	40f60633          	sub	a2,a2,a5
   126f8:	00000693          	li	a3,0
   126fc:	00098513          	mv	a0,s3
   12700:	000800e7          	jalr	a6
   12704:	fff00793          	li	a5,-1
   12708:	12f51663          	bne	a0,a5,12834 <__sflush_r+0x1e8>
   1270c:	0009a683          	lw	a3,0(s3)
   12710:	01d00793          	li	a5,29
   12714:	0cd7ee63          	bltu	a5,a3,127f0 <__sflush_r+0x1a4>
   12718:	dfc00737          	lui	a4,0xdfc00
   1271c:	ffe70713          	addi	a4,a4,-2 # ffffffffdfbffffe <__BSS_END__+0xffffffffdfbea796>
   12720:	40d75733          	sra	a4,a4,a3
   12724:	00177713          	andi	a4,a4,1
   12728:	01041783          	lh	a5,16(s0)
   1272c:	0c071463          	bnez	a4,127f4 <__sflush_r+0x1a8>
   12730:	01843603          	ld	a2,24(s0)
   12734:	fffff737          	lui	a4,0xfffff
   12738:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe9f97>
   1273c:	00e7f733          	and	a4,a5,a4
   12740:	00c7d793          	srli	a5,a5,0xc
   12744:	00e41823          	sh	a4,16(s0)
   12748:	00042423          	sw	zero,8(s0)
   1274c:	00c43023          	sd	a2,0(s0)
   12750:	0017f793          	andi	a5,a5,1
   12754:	12079c63          	bnez	a5,1288c <__sflush_r+0x240>
   12758:	05843583          	ld	a1,88(s0)
   1275c:	0099a023          	sw	s1,0(s3)
   12760:	00058c63          	beqz	a1,12778 <__sflush_r+0x12c>
   12764:	07440793          	addi	a5,s0,116
   12768:	00f58663          	beq	a1,a5,12774 <__sflush_r+0x128>
   1276c:	00098513          	mv	a0,s3
   12770:	340000ef          	jal	ra,12ab0 <_free_r>
   12774:	04043c23          	sd	zero,88(s0)
   12778:	00000513          	li	a0,0
   1277c:	02813083          	ld	ra,40(sp)
   12780:	02013403          	ld	s0,32(sp)
   12784:	01813483          	ld	s1,24(sp)
   12788:	01013903          	ld	s2,16(sp)
   1278c:	00813983          	ld	s3,8(sp)
   12790:	03010113          	addi	sp,sp,48
   12794:	00008067          	ret
   12798:	0185b903          	ld	s2,24(a1)
   1279c:	fc090ee3          	beqz	s2,12778 <__sflush_r+0x12c>
   127a0:	0005b483          	ld	s1,0(a1)
   127a4:	0037f793          	andi	a5,a5,3
   127a8:	0125b023          	sd	s2,0(a1)
   127ac:	412484bb          	subw	s1,s1,s2
   127b0:	00000713          	li	a4,0
   127b4:	00079463          	bnez	a5,127bc <__sflush_r+0x170>
   127b8:	0205a703          	lw	a4,32(a1)
   127bc:	00e42623          	sw	a4,12(s0)
   127c0:	00904863          	bgtz	s1,127d0 <__sflush_r+0x184>
   127c4:	fb5ff06f          	j	12778 <__sflush_r+0x12c>
   127c8:	00a90933          	add	s2,s2,a0
   127cc:	fa9056e3          	blez	s1,12778 <__sflush_r+0x12c>
   127d0:	04043783          	ld	a5,64(s0)
   127d4:	03043583          	ld	a1,48(s0)
   127d8:	00048693          	mv	a3,s1
   127dc:	00090613          	mv	a2,s2
   127e0:	00098513          	mv	a0,s3
   127e4:	000780e7          	jalr	a5
   127e8:	40a484bb          	subw	s1,s1,a0
   127ec:	fca04ee3          	bgtz	a0,127c8 <__sflush_r+0x17c>
   127f0:	01041783          	lh	a5,16(s0)
   127f4:	0407e793          	ori	a5,a5,64
   127f8:	02813083          	ld	ra,40(sp)
   127fc:	00f41823          	sh	a5,16(s0)
   12800:	02013403          	ld	s0,32(sp)
   12804:	01813483          	ld	s1,24(sp)
   12808:	01013903          	ld	s2,16(sp)
   1280c:	00813983          	ld	s3,8(sp)
   12810:	fff00513          	li	a0,-1
   12814:	03010113          	addi	sp,sp,48
   12818:	00008067          	ret
   1281c:	0705a683          	lw	a3,112(a1)
   12820:	e6d048e3          	bgtz	a3,12690 <__sflush_r+0x44>
   12824:	00000513          	li	a0,0
   12828:	f55ff06f          	j	1277c <__sflush_r+0x130>
   1282c:	09043603          	ld	a2,144(s0)
   12830:	ea9ff06f          	j	126d8 <__sflush_r+0x8c>
   12834:	01041783          	lh	a5,16(s0)
   12838:	01843683          	ld	a3,24(s0)
   1283c:	fffff737          	lui	a4,0xfffff
   12840:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe9f97>
   12844:	00e7f733          	and	a4,a5,a4
   12848:	00c7d793          	srli	a5,a5,0xc
   1284c:	00e41823          	sh	a4,16(s0)
   12850:	00042423          	sw	zero,8(s0)
   12854:	00d43023          	sd	a3,0(s0)
   12858:	0017f793          	andi	a5,a5,1
   1285c:	ee078ee3          	beqz	a5,12758 <__sflush_r+0x10c>
   12860:	08a43823          	sd	a0,144(s0)
   12864:	ef5ff06f          	j	12758 <__sflush_r+0x10c>
   12868:	0009a783          	lw	a5,0(s3)
   1286c:	e60780e3          	beqz	a5,126cc <__sflush_r+0x80>
   12870:	01d00713          	li	a4,29
   12874:	00e78663          	beq	a5,a4,12880 <__sflush_r+0x234>
   12878:	01600713          	li	a4,22
   1287c:	f6e79ae3          	bne	a5,a4,127f0 <__sflush_r+0x1a4>
   12880:	0099a023          	sw	s1,0(s3)
   12884:	00000513          	li	a0,0
   12888:	ef5ff06f          	j	1277c <__sflush_r+0x130>
   1288c:	ec0696e3          	bnez	a3,12758 <__sflush_r+0x10c>
   12890:	08a43823          	sd	a0,144(s0)
   12894:	ec5ff06f          	j	12758 <__sflush_r+0x10c>

0000000000012898 <_fflush_r>:
   12898:	fe010113          	addi	sp,sp,-32
   1289c:	00813823          	sd	s0,16(sp)
   128a0:	00113c23          	sd	ra,24(sp)
   128a4:	00050413          	mv	s0,a0
   128a8:	00050663          	beqz	a0,128b4 <_fflush_r+0x1c>
   128ac:	05052783          	lw	a5,80(a0)
   128b0:	02078063          	beqz	a5,128d0 <_fflush_r+0x38>
   128b4:	01059783          	lh	a5,16(a1)
   128b8:	02079663          	bnez	a5,128e4 <_fflush_r+0x4c>
   128bc:	01813083          	ld	ra,24(sp)
   128c0:	01013403          	ld	s0,16(sp)
   128c4:	00000513          	li	a0,0
   128c8:	02010113          	addi	sp,sp,32
   128cc:	00008067          	ret
   128d0:	00b13423          	sd	a1,8(sp)
   128d4:	8dcfe0ef          	jal	ra,109b0 <__sinit>
   128d8:	00813583          	ld	a1,8(sp)
   128dc:	01059783          	lh	a5,16(a1)
   128e0:	fc078ee3          	beqz	a5,128bc <_fflush_r+0x24>
   128e4:	00040513          	mv	a0,s0
   128e8:	01013403          	ld	s0,16(sp)
   128ec:	01813083          	ld	ra,24(sp)
   128f0:	02010113          	addi	sp,sp,32
   128f4:	d59ff06f          	j	1264c <__sflush_r>

00000000000128f8 <fflush>:
   128f8:	06050663          	beqz	a0,12964 <fflush+0x6c>
   128fc:	fe010113          	addi	sp,sp,-32
   12900:	00813823          	sd	s0,16(sp)
   12904:	00050413          	mv	s0,a0
   12908:	7601b503          	ld	a0,1888(gp) # 157c8 <_impure_ptr>
   1290c:	00113c23          	sd	ra,24(sp)
   12910:	00050663          	beqz	a0,1291c <fflush+0x24>
   12914:	05052783          	lw	a5,80(a0)
   12918:	02078a63          	beqz	a5,1294c <fflush+0x54>
   1291c:	01041783          	lh	a5,16(s0)
   12920:	00079c63          	bnez	a5,12938 <fflush+0x40>
   12924:	01813083          	ld	ra,24(sp)
   12928:	01013403          	ld	s0,16(sp)
   1292c:	00000513          	li	a0,0
   12930:	02010113          	addi	sp,sp,32
   12934:	00008067          	ret
   12938:	00040593          	mv	a1,s0
   1293c:	01013403          	ld	s0,16(sp)
   12940:	01813083          	ld	ra,24(sp)
   12944:	02010113          	addi	sp,sp,32
   12948:	d05ff06f          	j	1264c <__sflush_r>
   1294c:	00a13423          	sd	a0,8(sp)
   12950:	860fe0ef          	jal	ra,109b0 <__sinit>
   12954:	01041783          	lh	a5,16(s0)
   12958:	00813503          	ld	a0,8(sp)
   1295c:	fc0784e3          	beqz	a5,12924 <fflush+0x2c>
   12960:	fd9ff06f          	j	12938 <fflush+0x40>
   12964:	7501b503          	ld	a0,1872(gp) # 157b8 <_global_impure_ptr>
   12968:	000135b7          	lui	a1,0x13
   1296c:	89858593          	addi	a1,a1,-1896 # 12898 <_fflush_r>
   12970:	e48fe06f          	j	10fb8 <_fwalk_reent>

0000000000012974 <_malloc_trim_r>:
   12974:	fd010113          	addi	sp,sp,-48
   12978:	01313423          	sd	s3,8(sp)
   1297c:	000159b7          	lui	s3,0x15
   12980:	02813023          	sd	s0,32(sp)
   12984:	00913c23          	sd	s1,24(sp)
   12988:	01213823          	sd	s2,16(sp)
   1298c:	01413023          	sd	s4,0(sp)
   12990:	02113423          	sd	ra,40(sp)
   12994:	00058a13          	mv	s4,a1
   12998:	00050913          	mv	s2,a0
   1299c:	f9098993          	addi	s3,s3,-112 # 14f90 <__malloc_av_>
   129a0:	a48ff0ef          	jal	ra,11be8 <__malloc_lock>
   129a4:	0109b703          	ld	a4,16(s3)
   129a8:	000017b7          	lui	a5,0x1
   129ac:	fdf78413          	addi	s0,a5,-33 # fdf <exit-0xf109>
   129b0:	00873483          	ld	s1,8(a4)
   129b4:	ffc4f493          	andi	s1,s1,-4
   129b8:	00848433          	add	s0,s1,s0
   129bc:	41440433          	sub	s0,s0,s4
   129c0:	00c45413          	srli	s0,s0,0xc
   129c4:	fff40413          	addi	s0,s0,-1
   129c8:	00c41413          	slli	s0,s0,0xc
   129cc:	00f44e63          	blt	s0,a5,129e8 <_malloc_trim_r+0x74>
   129d0:	00000593          	li	a1,0
   129d4:	00090513          	mv	a0,s2
   129d8:	f78ff0ef          	jal	ra,12150 <_sbrk_r>
   129dc:	0109b783          	ld	a5,16(s3)
   129e0:	009787b3          	add	a5,a5,s1
   129e4:	02f50863          	beq	a0,a5,12a14 <_malloc_trim_r+0xa0>
   129e8:	00090513          	mv	a0,s2
   129ec:	a00ff0ef          	jal	ra,11bec <__malloc_unlock>
   129f0:	02813083          	ld	ra,40(sp)
   129f4:	02013403          	ld	s0,32(sp)
   129f8:	01813483          	ld	s1,24(sp)
   129fc:	01013903          	ld	s2,16(sp)
   12a00:	00813983          	ld	s3,8(sp)
   12a04:	00013a03          	ld	s4,0(sp)
   12a08:	00000513          	li	a0,0
   12a0c:	03010113          	addi	sp,sp,48
   12a10:	00008067          	ret
   12a14:	408005b3          	neg	a1,s0
   12a18:	00090513          	mv	a0,s2
   12a1c:	f34ff0ef          	jal	ra,12150 <_sbrk_r>
   12a20:	fff00793          	li	a5,-1
   12a24:	04f50a63          	beq	a0,a5,12a78 <_malloc_trim_r+0x104>
   12a28:	000167b7          	lui	a5,0x16
   12a2c:	84078793          	addi	a5,a5,-1984 # 15840 <__malloc_current_mallinfo>
   12a30:	0007a703          	lw	a4,0(a5)
   12a34:	0109b683          	ld	a3,16(s3)
   12a38:	408484b3          	sub	s1,s1,s0
   12a3c:	0014e493          	ori	s1,s1,1
   12a40:	4087073b          	subw	a4,a4,s0
   12a44:	00090513          	mv	a0,s2
   12a48:	0096b423          	sd	s1,8(a3)
   12a4c:	00e7a023          	sw	a4,0(a5)
   12a50:	99cff0ef          	jal	ra,11bec <__malloc_unlock>
   12a54:	02813083          	ld	ra,40(sp)
   12a58:	02013403          	ld	s0,32(sp)
   12a5c:	01813483          	ld	s1,24(sp)
   12a60:	01013903          	ld	s2,16(sp)
   12a64:	00813983          	ld	s3,8(sp)
   12a68:	00013a03          	ld	s4,0(sp)
   12a6c:	00100513          	li	a0,1
   12a70:	03010113          	addi	sp,sp,48
   12a74:	00008067          	ret
   12a78:	00000593          	li	a1,0
   12a7c:	00090513          	mv	a0,s2
   12a80:	ed0ff0ef          	jal	ra,12150 <_sbrk_r>
   12a84:	0109b703          	ld	a4,16(s3)
   12a88:	01f00693          	li	a3,31
   12a8c:	40e507b3          	sub	a5,a0,a4
   12a90:	f4f6dce3          	bge	a3,a5,129e8 <_malloc_trim_r+0x74>
   12a94:	7681b683          	ld	a3,1896(gp) # 157d0 <__malloc_sbrk_base>
   12a98:	0017e793          	ori	a5,a5,1
   12a9c:	00f73423          	sd	a5,8(a4)
   12aa0:	40d50533          	sub	a0,a0,a3
   12aa4:	000166b7          	lui	a3,0x16
   12aa8:	84a6a023          	sw	a0,-1984(a3) # 15840 <__malloc_current_mallinfo>
   12aac:	f3dff06f          	j	129e8 <_malloc_trim_r+0x74>

0000000000012ab0 <_free_r>:
   12ab0:	18058863          	beqz	a1,12c40 <_free_r+0x190>
   12ab4:	fe010113          	addi	sp,sp,-32
   12ab8:	00813823          	sd	s0,16(sp)
   12abc:	00913423          	sd	s1,8(sp)
   12ac0:	00058413          	mv	s0,a1
   12ac4:	00050493          	mv	s1,a0
   12ac8:	00113c23          	sd	ra,24(sp)
   12acc:	91cff0ef          	jal	ra,11be8 <__malloc_lock>
   12ad0:	ff843503          	ld	a0,-8(s0)
   12ad4:	ff040713          	addi	a4,s0,-16
   12ad8:	000155b7          	lui	a1,0x15
   12adc:	ffe57793          	andi	a5,a0,-2
   12ae0:	00f70633          	add	a2,a4,a5
   12ae4:	f9058593          	addi	a1,a1,-112 # 14f90 <__malloc_av_>
   12ae8:	00863683          	ld	a3,8(a2)
   12aec:	0105b803          	ld	a6,16(a1)
   12af0:	ffc6f693          	andi	a3,a3,-4
   12af4:	1ac80863          	beq	a6,a2,12ca4 <_free_r+0x1f4>
   12af8:	00d63423          	sd	a3,8(a2)
   12afc:	00157513          	andi	a0,a0,1
   12b00:	00d60833          	add	a6,a2,a3
   12b04:	0a051463          	bnez	a0,12bac <_free_r+0xfc>
   12b08:	ff043303          	ld	t1,-16(s0)
   12b0c:	00883803          	ld	a6,8(a6)
   12b10:	00015537          	lui	a0,0x15
   12b14:	40670733          	sub	a4,a4,t1
   12b18:	01073883          	ld	a7,16(a4)
   12b1c:	fa050513          	addi	a0,a0,-96 # 14fa0 <__malloc_av_+0x10>
   12b20:	006787b3          	add	a5,a5,t1
   12b24:	00187813          	andi	a6,a6,1
   12b28:	14a88863          	beq	a7,a0,12c78 <_free_r+0x1c8>
   12b2c:	01873303          	ld	t1,24(a4)
   12b30:	0068bc23          	sd	t1,24(a7)
   12b34:	01133823          	sd	a7,16(t1)
   12b38:	1a080c63          	beqz	a6,12cf0 <_free_r+0x240>
   12b3c:	0017e693          	ori	a3,a5,1
   12b40:	00d73423          	sd	a3,8(a4)
   12b44:	00f63023          	sd	a5,0(a2)
   12b48:	1ff00693          	li	a3,511
   12b4c:	08f6e063          	bltu	a3,a5,12bcc <_free_r+0x11c>
   12b50:	0037d793          	srli	a5,a5,0x3
   12b54:	0017869b          	addiw	a3,a5,1
   12b58:	0016969b          	slliw	a3,a3,0x1
   12b5c:	00369693          	slli	a3,a3,0x3
   12b60:	0085b803          	ld	a6,8(a1)
   12b64:	00d586b3          	add	a3,a1,a3
   12b68:	0006b503          	ld	a0,0(a3)
   12b6c:	4027d61b          	sraiw	a2,a5,0x2
   12b70:	00100793          	li	a5,1
   12b74:	00c797b3          	sll	a5,a5,a2
   12b78:	0107e7b3          	or	a5,a5,a6
   12b7c:	ff068613          	addi	a2,a3,-16
   12b80:	00c73c23          	sd	a2,24(a4)
   12b84:	00a73823          	sd	a0,16(a4)
   12b88:	00f5b423          	sd	a5,8(a1)
   12b8c:	00e6b023          	sd	a4,0(a3)
   12b90:	00e53c23          	sd	a4,24(a0)
   12b94:	01013403          	ld	s0,16(sp)
   12b98:	01813083          	ld	ra,24(sp)
   12b9c:	00048513          	mv	a0,s1
   12ba0:	00813483          	ld	s1,8(sp)
   12ba4:	02010113          	addi	sp,sp,32
   12ba8:	844ff06f          	j	11bec <__malloc_unlock>
   12bac:	00883503          	ld	a0,8(a6)
   12bb0:	00157513          	andi	a0,a0,1
   12bb4:	08050863          	beqz	a0,12c44 <_free_r+0x194>
   12bb8:	0017e693          	ori	a3,a5,1
   12bbc:	fed43c23          	sd	a3,-8(s0)
   12bc0:	00f63023          	sd	a5,0(a2)
   12bc4:	1ff00693          	li	a3,511
   12bc8:	f8f6f4e3          	bgeu	a3,a5,12b50 <_free_r+0xa0>
   12bcc:	0097d693          	srli	a3,a5,0x9
   12bd0:	00400613          	li	a2,4
   12bd4:	12d66263          	bltu	a2,a3,12cf8 <_free_r+0x248>
   12bd8:	0067d693          	srli	a3,a5,0x6
   12bdc:	0396851b          	addiw	a0,a3,57
   12be0:	0015151b          	slliw	a0,a0,0x1
   12be4:	0386861b          	addiw	a2,a3,56
   12be8:	00351513          	slli	a0,a0,0x3
   12bec:	00a58533          	add	a0,a1,a0
   12bf0:	00053683          	ld	a3,0(a0)
   12bf4:	ff050513          	addi	a0,a0,-16
   12bf8:	00d51863          	bne	a0,a3,12c08 <_free_r+0x158>
   12bfc:	15c0006f          	j	12d58 <_free_r+0x2a8>
   12c00:	0106b683          	ld	a3,16(a3)
   12c04:	00d50863          	beq	a0,a3,12c14 <_free_r+0x164>
   12c08:	0086b603          	ld	a2,8(a3)
   12c0c:	ffc67613          	andi	a2,a2,-4
   12c10:	fec7e8e3          	bltu	a5,a2,12c00 <_free_r+0x150>
   12c14:	0186b503          	ld	a0,24(a3)
   12c18:	00a73c23          	sd	a0,24(a4)
   12c1c:	00d73823          	sd	a3,16(a4)
   12c20:	01013403          	ld	s0,16(sp)
   12c24:	00e53823          	sd	a4,16(a0)
   12c28:	01813083          	ld	ra,24(sp)
   12c2c:	00048513          	mv	a0,s1
   12c30:	00813483          	ld	s1,8(sp)
   12c34:	00e6bc23          	sd	a4,24(a3)
   12c38:	02010113          	addi	sp,sp,32
   12c3c:	fb1fe06f          	j	11bec <__malloc_unlock>
   12c40:	00008067          	ret
   12c44:	00015537          	lui	a0,0x15
   12c48:	00d787b3          	add	a5,a5,a3
   12c4c:	fa050513          	addi	a0,a0,-96 # 14fa0 <__malloc_av_+0x10>
   12c50:	01063683          	ld	a3,16(a2)
   12c54:	0ea68063          	beq	a3,a0,12d34 <_free_r+0x284>
   12c58:	01863803          	ld	a6,24(a2)
   12c5c:	0017e513          	ori	a0,a5,1
   12c60:	00f70633          	add	a2,a4,a5
   12c64:	0106bc23          	sd	a6,24(a3)
   12c68:	00d83823          	sd	a3,16(a6)
   12c6c:	00a73423          	sd	a0,8(a4)
   12c70:	00f63023          	sd	a5,0(a2)
   12c74:	ed5ff06f          	j	12b48 <_free_r+0x98>
   12c78:	14081463          	bnez	a6,12dc0 <_free_r+0x310>
   12c7c:	01063583          	ld	a1,16(a2)
   12c80:	01863603          	ld	a2,24(a2)
   12c84:	00f686b3          	add	a3,a3,a5
   12c88:	0016e793          	ori	a5,a3,1
   12c8c:	00c5bc23          	sd	a2,24(a1)
   12c90:	00b63823          	sd	a1,16(a2)
   12c94:	00f73423          	sd	a5,8(a4)
   12c98:	00d70733          	add	a4,a4,a3
   12c9c:	00d73023          	sd	a3,0(a4)
   12ca0:	ef5ff06f          	j	12b94 <_free_r+0xe4>
   12ca4:	00157513          	andi	a0,a0,1
   12ca8:	00d786b3          	add	a3,a5,a3
   12cac:	02051063          	bnez	a0,12ccc <_free_r+0x21c>
   12cb0:	ff043503          	ld	a0,-16(s0)
   12cb4:	40a70733          	sub	a4,a4,a0
   12cb8:	01873783          	ld	a5,24(a4)
   12cbc:	01073603          	ld	a2,16(a4)
   12cc0:	00a686b3          	add	a3,a3,a0
   12cc4:	00f63c23          	sd	a5,24(a2)
   12cc8:	00c7b823          	sd	a2,16(a5)
   12ccc:	0016e613          	ori	a2,a3,1
   12cd0:	7701b783          	ld	a5,1904(gp) # 157d8 <__malloc_trim_threshold>
   12cd4:	00c73423          	sd	a2,8(a4)
   12cd8:	00e5b823          	sd	a4,16(a1)
   12cdc:	eaf6ece3          	bltu	a3,a5,12b94 <_free_r+0xe4>
   12ce0:	7881b583          	ld	a1,1928(gp) # 157f0 <__malloc_top_pad>
   12ce4:	00048513          	mv	a0,s1
   12ce8:	c8dff0ef          	jal	ra,12974 <_malloc_trim_r>
   12cec:	ea9ff06f          	j	12b94 <_free_r+0xe4>
   12cf0:	00d787b3          	add	a5,a5,a3
   12cf4:	f5dff06f          	j	12c50 <_free_r+0x1a0>
   12cf8:	01400613          	li	a2,20
   12cfc:	02d67263          	bgeu	a2,a3,12d20 <_free_r+0x270>
   12d00:	05400613          	li	a2,84
   12d04:	06d66863          	bltu	a2,a3,12d74 <_free_r+0x2c4>
   12d08:	00c7d693          	srli	a3,a5,0xc
   12d0c:	06f6851b          	addiw	a0,a3,111
   12d10:	0015151b          	slliw	a0,a0,0x1
   12d14:	06e6861b          	addiw	a2,a3,110
   12d18:	00351513          	slli	a0,a0,0x3
   12d1c:	ed1ff06f          	j	12bec <_free_r+0x13c>
   12d20:	05c6851b          	addiw	a0,a3,92
   12d24:	0015151b          	slliw	a0,a0,0x1
   12d28:	05b6861b          	addiw	a2,a3,91
   12d2c:	00351513          	slli	a0,a0,0x3
   12d30:	ebdff06f          	j	12bec <_free_r+0x13c>
   12d34:	02e5b423          	sd	a4,40(a1)
   12d38:	02e5b023          	sd	a4,32(a1)
   12d3c:	0017e693          	ori	a3,a5,1
   12d40:	00a73c23          	sd	a0,24(a4)
   12d44:	00a73823          	sd	a0,16(a4)
   12d48:	00d73423          	sd	a3,8(a4)
   12d4c:	00f70733          	add	a4,a4,a5
   12d50:	00f73023          	sd	a5,0(a4)
   12d54:	e41ff06f          	j	12b94 <_free_r+0xe4>
   12d58:	0085b803          	ld	a6,8(a1)
   12d5c:	4026561b          	sraiw	a2,a2,0x2
   12d60:	00100793          	li	a5,1
   12d64:	00c797b3          	sll	a5,a5,a2
   12d68:	0107e7b3          	or	a5,a5,a6
   12d6c:	00f5b423          	sd	a5,8(a1)
   12d70:	ea9ff06f          	j	12c18 <_free_r+0x168>
   12d74:	15400613          	li	a2,340
   12d78:	00d66e63          	bltu	a2,a3,12d94 <_free_r+0x2e4>
   12d7c:	00f7d693          	srli	a3,a5,0xf
   12d80:	0786851b          	addiw	a0,a3,120
   12d84:	0015151b          	slliw	a0,a0,0x1
   12d88:	0776861b          	addiw	a2,a3,119
   12d8c:	00351513          	slli	a0,a0,0x3
   12d90:	e5dff06f          	j	12bec <_free_r+0x13c>
   12d94:	55400613          	li	a2,1364
   12d98:	00d66e63          	bltu	a2,a3,12db4 <_free_r+0x304>
   12d9c:	0127d693          	srli	a3,a5,0x12
   12da0:	07d6851b          	addiw	a0,a3,125
   12da4:	0015151b          	slliw	a0,a0,0x1
   12da8:	07c6861b          	addiw	a2,a3,124
   12dac:	00351513          	slli	a0,a0,0x3
   12db0:	e3dff06f          	j	12bec <_free_r+0x13c>
   12db4:	7f000513          	li	a0,2032
   12db8:	07e00613          	li	a2,126
   12dbc:	e31ff06f          	j	12bec <_free_r+0x13c>
   12dc0:	0017e693          	ori	a3,a5,1
   12dc4:	00d73423          	sd	a3,8(a4)
   12dc8:	00f63023          	sd	a5,0(a2)
   12dcc:	dc9ff06f          	j	12b94 <_free_r+0xe4>

0000000000012dd0 <_lseek_r>:
   12dd0:	fe010113          	addi	sp,sp,-32
   12dd4:	00058713          	mv	a4,a1
   12dd8:	00813823          	sd	s0,16(sp)
   12ddc:	00913423          	sd	s1,8(sp)
   12de0:	00060593          	mv	a1,a2
   12de4:	00050413          	mv	s0,a0
   12de8:	00068613          	mv	a2,a3
   12dec:	00070513          	mv	a0,a4
   12df0:	00113c23          	sd	ra,24(sp)
   12df4:	7801a823          	sw	zero,1936(gp) # 157f8 <errno>
   12df8:	740000ef          	jal	ra,13538 <_lseek>
   12dfc:	fff00793          	li	a5,-1
   12e00:	00f50c63          	beq	a0,a5,12e18 <_lseek_r+0x48>
   12e04:	01813083          	ld	ra,24(sp)
   12e08:	01013403          	ld	s0,16(sp)
   12e0c:	00813483          	ld	s1,8(sp)
   12e10:	02010113          	addi	sp,sp,32
   12e14:	00008067          	ret
   12e18:	7901a783          	lw	a5,1936(gp) # 157f8 <errno>
   12e1c:	fe0784e3          	beqz	a5,12e04 <_lseek_r+0x34>
   12e20:	01813083          	ld	ra,24(sp)
   12e24:	00f42023          	sw	a5,0(s0)
   12e28:	01013403          	ld	s0,16(sp)
   12e2c:	00813483          	ld	s1,8(sp)
   12e30:	02010113          	addi	sp,sp,32
   12e34:	00008067          	ret

0000000000012e38 <__smakebuf_r>:
   12e38:	01059783          	lh	a5,16(a1)
   12e3c:	f6010113          	addi	sp,sp,-160
   12e40:	08813823          	sd	s0,144(sp)
   12e44:	08113c23          	sd	ra,152(sp)
   12e48:	08913423          	sd	s1,136(sp)
   12e4c:	09213023          	sd	s2,128(sp)
   12e50:	07313c23          	sd	s3,120(sp)
   12e54:	07413823          	sd	s4,112(sp)
   12e58:	0027f713          	andi	a4,a5,2
   12e5c:	00058413          	mv	s0,a1
   12e60:	02070c63          	beqz	a4,12e98 <__smakebuf_r+0x60>
   12e64:	07758793          	addi	a5,a1,119
   12e68:	00f5b023          	sd	a5,0(a1)
   12e6c:	00f5bc23          	sd	a5,24(a1)
   12e70:	00100793          	li	a5,1
   12e74:	02f5a023          	sw	a5,32(a1)
   12e78:	09813083          	ld	ra,152(sp)
   12e7c:	09013403          	ld	s0,144(sp)
   12e80:	08813483          	ld	s1,136(sp)
   12e84:	08013903          	ld	s2,128(sp)
   12e88:	07813983          	ld	s3,120(sp)
   12e8c:	07013a03          	ld	s4,112(sp)
   12e90:	0a010113          	addi	sp,sp,160
   12e94:	00008067          	ret
   12e98:	01259583          	lh	a1,18(a1)
   12e9c:	00050493          	mv	s1,a0
   12ea0:	0805cc63          	bltz	a1,12f38 <__smakebuf_r+0x100>
   12ea4:	00810613          	addi	a2,sp,8
   12ea8:	4b8000ef          	jal	ra,13360 <_fstat_r>
   12eac:	08054463          	bltz	a0,12f34 <__smakebuf_r+0xfc>
   12eb0:	00c12903          	lw	s2,12(sp)
   12eb4:	0000f7b7          	lui	a5,0xf
   12eb8:	000019b7          	lui	s3,0x1
   12ebc:	00f97933          	and	s2,s2,a5
   12ec0:	000027b7          	lui	a5,0x2
   12ec4:	40f90933          	sub	s2,s2,a5
   12ec8:	00193913          	seqz	s2,s2
   12ecc:	40000a13          	li	s4,1024
   12ed0:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf8e8>
   12ed4:	000a0593          	mv	a1,s4
   12ed8:	00048513          	mv	a0,s1
   12edc:	9acfe0ef          	jal	ra,11088 <_malloc_r>
   12ee0:	01041783          	lh	a5,16(s0)
   12ee4:	06050e63          	beqz	a0,12f60 <__smakebuf_r+0x128>
   12ee8:	00010737          	lui	a4,0x10
   12eec:	66870713          	addi	a4,a4,1640 # 10668 <_cleanup_r>
   12ef0:	04e4bc23          	sd	a4,88(s1)
   12ef4:	0807e793          	ori	a5,a5,128
   12ef8:	00f41823          	sh	a5,16(s0)
   12efc:	00a43023          	sd	a0,0(s0)
   12f00:	00a43c23          	sd	a0,24(s0)
   12f04:	03442023          	sw	s4,32(s0)
   12f08:	08091863          	bnez	s2,12f98 <__smakebuf_r+0x160>
   12f0c:	0137e7b3          	or	a5,a5,s3
   12f10:	09813083          	ld	ra,152(sp)
   12f14:	00f41823          	sh	a5,16(s0)
   12f18:	09013403          	ld	s0,144(sp)
   12f1c:	08813483          	ld	s1,136(sp)
   12f20:	08013903          	ld	s2,128(sp)
   12f24:	07813983          	ld	s3,120(sp)
   12f28:	07013a03          	ld	s4,112(sp)
   12f2c:	0a010113          	addi	sp,sp,160
   12f30:	00008067          	ret
   12f34:	01041783          	lh	a5,16(s0)
   12f38:	0807f793          	andi	a5,a5,128
   12f3c:	00000913          	li	s2,0
   12f40:	04078663          	beqz	a5,12f8c <__smakebuf_r+0x154>
   12f44:	04000a13          	li	s4,64
   12f48:	000a0593          	mv	a1,s4
   12f4c:	00048513          	mv	a0,s1
   12f50:	938fe0ef          	jal	ra,11088 <_malloc_r>
   12f54:	01041783          	lh	a5,16(s0)
   12f58:	00000993          	li	s3,0
   12f5c:	f80516e3          	bnez	a0,12ee8 <__smakebuf_r+0xb0>
   12f60:	2007f713          	andi	a4,a5,512
   12f64:	f0071ae3          	bnez	a4,12e78 <__smakebuf_r+0x40>
   12f68:	ffc7f793          	andi	a5,a5,-4
   12f6c:	0027e793          	ori	a5,a5,2
   12f70:	07740713          	addi	a4,s0,119
   12f74:	00f41823          	sh	a5,16(s0)
   12f78:	00100793          	li	a5,1
   12f7c:	00e43023          	sd	a4,0(s0)
   12f80:	00e43c23          	sd	a4,24(s0)
   12f84:	02f42023          	sw	a5,32(s0)
   12f88:	ef1ff06f          	j	12e78 <__smakebuf_r+0x40>
   12f8c:	40000a13          	li	s4,1024
   12f90:	00000993          	li	s3,0
   12f94:	f41ff06f          	j	12ed4 <__smakebuf_r+0x9c>
   12f98:	01241583          	lh	a1,18(s0)
   12f9c:	00048513          	mv	a0,s1
   12fa0:	424000ef          	jal	ra,133c4 <_isatty_r>
   12fa4:	00051663          	bnez	a0,12fb0 <__smakebuf_r+0x178>
   12fa8:	01041783          	lh	a5,16(s0)
   12fac:	f61ff06f          	j	12f0c <__smakebuf_r+0xd4>
   12fb0:	01045783          	lhu	a5,16(s0)
   12fb4:	ffc7f793          	andi	a5,a5,-4
   12fb8:	0017e793          	ori	a5,a5,1
   12fbc:	0107979b          	slliw	a5,a5,0x10
   12fc0:	4107d79b          	sraiw	a5,a5,0x10
   12fc4:	f49ff06f          	j	12f0c <__smakebuf_r+0xd4>

0000000000012fc8 <__swhatbuf_r>:
   12fc8:	f7010113          	addi	sp,sp,-144
   12fcc:	08813023          	sd	s0,128(sp)
   12fd0:	00058413          	mv	s0,a1
   12fd4:	01259583          	lh	a1,18(a1)
   12fd8:	06913c23          	sd	s1,120(sp)
   12fdc:	07213823          	sd	s2,112(sp)
   12fe0:	08113423          	sd	ra,136(sp)
   12fe4:	00060493          	mv	s1,a2
   12fe8:	00068913          	mv	s2,a3
   12fec:	0405ca63          	bltz	a1,13040 <__swhatbuf_r+0x78>
   12ff0:	00810613          	addi	a2,sp,8
   12ff4:	36c000ef          	jal	ra,13360 <_fstat_r>
   12ff8:	04054463          	bltz	a0,13040 <__swhatbuf_r+0x78>
   12ffc:	00c12783          	lw	a5,12(sp)
   13000:	0000f737          	lui	a4,0xf
   13004:	08813083          	ld	ra,136(sp)
   13008:	00e7f7b3          	and	a5,a5,a4
   1300c:	00002737          	lui	a4,0x2
   13010:	40e787b3          	sub	a5,a5,a4
   13014:	08013403          	ld	s0,128(sp)
   13018:	0017b793          	seqz	a5,a5
   1301c:	00f92023          	sw	a5,0(s2)
   13020:	40000713          	li	a4,1024
   13024:	00e4b023          	sd	a4,0(s1)
   13028:	00001537          	lui	a0,0x1
   1302c:	07813483          	ld	s1,120(sp)
   13030:	07013903          	ld	s2,112(sp)
   13034:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8e8>
   13038:	09010113          	addi	sp,sp,144
   1303c:	00008067          	ret
   13040:	01045783          	lhu	a5,16(s0)
   13044:	0807f793          	andi	a5,a5,128
   13048:	02078863          	beqz	a5,13078 <__swhatbuf_r+0xb0>
   1304c:	08813083          	ld	ra,136(sp)
   13050:	08013403          	ld	s0,128(sp)
   13054:	00000793          	li	a5,0
   13058:	00f92023          	sw	a5,0(s2)
   1305c:	04000713          	li	a4,64
   13060:	00e4b023          	sd	a4,0(s1)
   13064:	07013903          	ld	s2,112(sp)
   13068:	07813483          	ld	s1,120(sp)
   1306c:	00000513          	li	a0,0
   13070:	09010113          	addi	sp,sp,144
   13074:	00008067          	ret
   13078:	08813083          	ld	ra,136(sp)
   1307c:	08013403          	ld	s0,128(sp)
   13080:	00f92023          	sw	a5,0(s2)
   13084:	40000713          	li	a4,1024
   13088:	00e4b023          	sd	a4,0(s1)
   1308c:	07013903          	ld	s2,112(sp)
   13090:	07813483          	ld	s1,120(sp)
   13094:	00000513          	li	a0,0
   13098:	09010113          	addi	sp,sp,144
   1309c:	00008067          	ret

00000000000130a0 <_read_r>:
   130a0:	fe010113          	addi	sp,sp,-32
   130a4:	00058713          	mv	a4,a1
   130a8:	00813823          	sd	s0,16(sp)
   130ac:	00913423          	sd	s1,8(sp)
   130b0:	00060593          	mv	a1,a2
   130b4:	00050413          	mv	s0,a0
   130b8:	00068613          	mv	a2,a3
   130bc:	00070513          	mv	a0,a4
   130c0:	00113c23          	sd	ra,24(sp)
   130c4:	7801a823          	sw	zero,1936(gp) # 157f8 <errno>
   130c8:	4b4000ef          	jal	ra,1357c <_read>
   130cc:	fff00793          	li	a5,-1
   130d0:	00f50c63          	beq	a0,a5,130e8 <_read_r+0x48>
   130d4:	01813083          	ld	ra,24(sp)
   130d8:	01013403          	ld	s0,16(sp)
   130dc:	00813483          	ld	s1,8(sp)
   130e0:	02010113          	addi	sp,sp,32
   130e4:	00008067          	ret
   130e8:	7901a783          	lw	a5,1936(gp) # 157f8 <errno>
   130ec:	fe0784e3          	beqz	a5,130d4 <_read_r+0x34>
   130f0:	01813083          	ld	ra,24(sp)
   130f4:	00f42023          	sw	a5,0(s0)
   130f8:	01013403          	ld	s0,16(sp)
   130fc:	00813483          	ld	s1,8(sp)
   13100:	02010113          	addi	sp,sp,32
   13104:	00008067          	ret

0000000000013108 <cleanup_glue>:
   13108:	fd010113          	addi	sp,sp,-48
   1310c:	01213823          	sd	s2,16(sp)
   13110:	0005b903          	ld	s2,0(a1)
   13114:	02813023          	sd	s0,32(sp)
   13118:	00913c23          	sd	s1,24(sp)
   1311c:	02113423          	sd	ra,40(sp)
   13120:	01313423          	sd	s3,8(sp)
   13124:	01413023          	sd	s4,0(sp)
   13128:	00058413          	mv	s0,a1
   1312c:	00050493          	mv	s1,a0
   13130:	04090263          	beqz	s2,13174 <cleanup_glue+0x6c>
   13134:	00093983          	ld	s3,0(s2)
   13138:	02098863          	beqz	s3,13168 <cleanup_glue+0x60>
   1313c:	0009ba03          	ld	s4,0(s3)
   13140:	000a0e63          	beqz	s4,1315c <cleanup_glue+0x54>
   13144:	000a3583          	ld	a1,0(s4)
   13148:	00058463          	beqz	a1,13150 <cleanup_glue+0x48>
   1314c:	fbdff0ef          	jal	ra,13108 <cleanup_glue>
   13150:	000a0593          	mv	a1,s4
   13154:	00048513          	mv	a0,s1
   13158:	959ff0ef          	jal	ra,12ab0 <_free_r>
   1315c:	00098593          	mv	a1,s3
   13160:	00048513          	mv	a0,s1
   13164:	94dff0ef          	jal	ra,12ab0 <_free_r>
   13168:	00090593          	mv	a1,s2
   1316c:	00048513          	mv	a0,s1
   13170:	941ff0ef          	jal	ra,12ab0 <_free_r>
   13174:	00040593          	mv	a1,s0
   13178:	02013403          	ld	s0,32(sp)
   1317c:	02813083          	ld	ra,40(sp)
   13180:	01013903          	ld	s2,16(sp)
   13184:	00813983          	ld	s3,8(sp)
   13188:	00013a03          	ld	s4,0(sp)
   1318c:	00048513          	mv	a0,s1
   13190:	01813483          	ld	s1,24(sp)
   13194:	03010113          	addi	sp,sp,48
   13198:	919ff06f          	j	12ab0 <_free_r>

000000000001319c <_reclaim_reent>:
   1319c:	7601b783          	ld	a5,1888(gp) # 157c8 <_impure_ptr>
   131a0:	10a78a63          	beq	a5,a0,132b4 <_reclaim_reent+0x118>
   131a4:	07853583          	ld	a1,120(a0)
   131a8:	fd010113          	addi	sp,sp,-48
   131ac:	00913c23          	sd	s1,24(sp)
   131b0:	02113423          	sd	ra,40(sp)
   131b4:	02813023          	sd	s0,32(sp)
   131b8:	01213823          	sd	s2,16(sp)
   131bc:	01313423          	sd	s3,8(sp)
   131c0:	00050493          	mv	s1,a0
   131c4:	04058063          	beqz	a1,13204 <_reclaim_reent+0x68>
   131c8:	00000913          	li	s2,0
   131cc:	20000993          	li	s3,512
   131d0:	012587b3          	add	a5,a1,s2
   131d4:	0007b403          	ld	s0,0(a5) # 2000 <exit-0xe0e8>
   131d8:	00040e63          	beqz	s0,131f4 <_reclaim_reent+0x58>
   131dc:	00040593          	mv	a1,s0
   131e0:	00043403          	ld	s0,0(s0)
   131e4:	00048513          	mv	a0,s1
   131e8:	8c9ff0ef          	jal	ra,12ab0 <_free_r>
   131ec:	fe0418e3          	bnez	s0,131dc <_reclaim_reent+0x40>
   131f0:	0784b583          	ld	a1,120(s1)
   131f4:	00890913          	addi	s2,s2,8
   131f8:	fd391ce3          	bne	s2,s3,131d0 <_reclaim_reent+0x34>
   131fc:	00048513          	mv	a0,s1
   13200:	8b1ff0ef          	jal	ra,12ab0 <_free_r>
   13204:	0604b583          	ld	a1,96(s1)
   13208:	00058663          	beqz	a1,13214 <_reclaim_reent+0x78>
   1320c:	00048513          	mv	a0,s1
   13210:	8a1ff0ef          	jal	ra,12ab0 <_free_r>
   13214:	1f84b403          	ld	s0,504(s1)
   13218:	02040063          	beqz	s0,13238 <_reclaim_reent+0x9c>
   1321c:	20048913          	addi	s2,s1,512
   13220:	01240c63          	beq	s0,s2,13238 <_reclaim_reent+0x9c>
   13224:	00040593          	mv	a1,s0
   13228:	00043403          	ld	s0,0(s0)
   1322c:	00048513          	mv	a0,s1
   13230:	881ff0ef          	jal	ra,12ab0 <_free_r>
   13234:	fe8918e3          	bne	s2,s0,13224 <_reclaim_reent+0x88>
   13238:	0884b583          	ld	a1,136(s1)
   1323c:	00058663          	beqz	a1,13248 <_reclaim_reent+0xac>
   13240:	00048513          	mv	a0,s1
   13244:	86dff0ef          	jal	ra,12ab0 <_free_r>
   13248:	0504a783          	lw	a5,80(s1)
   1324c:	04078663          	beqz	a5,13298 <_reclaim_reent+0xfc>
   13250:	0584b783          	ld	a5,88(s1)
   13254:	00048513          	mv	a0,s1
   13258:	000780e7          	jalr	a5
   1325c:	5204b403          	ld	s0,1312(s1)
   13260:	02040c63          	beqz	s0,13298 <_reclaim_reent+0xfc>
   13264:	00043583          	ld	a1,0(s0)
   13268:	00058663          	beqz	a1,13274 <_reclaim_reent+0xd8>
   1326c:	00048513          	mv	a0,s1
   13270:	e99ff0ef          	jal	ra,13108 <cleanup_glue>
   13274:	00040593          	mv	a1,s0
   13278:	02013403          	ld	s0,32(sp)
   1327c:	02813083          	ld	ra,40(sp)
   13280:	01013903          	ld	s2,16(sp)
   13284:	00813983          	ld	s3,8(sp)
   13288:	00048513          	mv	a0,s1
   1328c:	01813483          	ld	s1,24(sp)
   13290:	03010113          	addi	sp,sp,48
   13294:	81dff06f          	j	12ab0 <_free_r>
   13298:	02813083          	ld	ra,40(sp)
   1329c:	02013403          	ld	s0,32(sp)
   132a0:	01813483          	ld	s1,24(sp)
   132a4:	01013903          	ld	s2,16(sp)
   132a8:	00813983          	ld	s3,8(sp)
   132ac:	03010113          	addi	sp,sp,48
   132b0:	00008067          	ret
   132b4:	00008067          	ret

00000000000132b8 <__register_exitproc>:
   132b8:	7501b703          	ld	a4,1872(gp) # 157b8 <_global_impure_ptr>
   132bc:	1f873783          	ld	a5,504(a4) # 21f8 <exit-0xdef0>
   132c0:	06078063          	beqz	a5,13320 <__register_exitproc+0x68>
   132c4:	0087a703          	lw	a4,8(a5)
   132c8:	01f00813          	li	a6,31
   132cc:	08e84663          	blt	a6,a4,13358 <__register_exitproc+0xa0>
   132d0:	02050863          	beqz	a0,13300 <__register_exitproc+0x48>
   132d4:	00371813          	slli	a6,a4,0x3
   132d8:	01078833          	add	a6,a5,a6
   132dc:	10c83823          	sd	a2,272(a6)
   132e0:	3107a883          	lw	a7,784(a5)
   132e4:	00100613          	li	a2,1
   132e8:	00e6163b          	sllw	a2,a2,a4
   132ec:	00c8e8b3          	or	a7,a7,a2
   132f0:	3117a823          	sw	a7,784(a5)
   132f4:	20d83823          	sd	a3,528(a6)
   132f8:	00200693          	li	a3,2
   132fc:	02d50863          	beq	a0,a3,1332c <__register_exitproc+0x74>
   13300:	00270693          	addi	a3,a4,2
   13304:	00369693          	slli	a3,a3,0x3
   13308:	0017071b          	addiw	a4,a4,1
   1330c:	00e7a423          	sw	a4,8(a5)
   13310:	00d787b3          	add	a5,a5,a3
   13314:	00b7b023          	sd	a1,0(a5)
   13318:	00000513          	li	a0,0
   1331c:	00008067          	ret
   13320:	20070793          	addi	a5,a4,512
   13324:	1ef73c23          	sd	a5,504(a4)
   13328:	f9dff06f          	j	132c4 <__register_exitproc+0xc>
   1332c:	3147a683          	lw	a3,788(a5)
   13330:	00000513          	li	a0,0
   13334:	00c6e6b3          	or	a3,a3,a2
   13338:	30d7aa23          	sw	a3,788(a5)
   1333c:	00270693          	addi	a3,a4,2
   13340:	00369693          	slli	a3,a3,0x3
   13344:	0017071b          	addiw	a4,a4,1
   13348:	00e7a423          	sw	a4,8(a5)
   1334c:	00d787b3          	add	a5,a5,a3
   13350:	00b7b023          	sd	a1,0(a5)
   13354:	00008067          	ret
   13358:	fff00513          	li	a0,-1
   1335c:	00008067          	ret

0000000000013360 <_fstat_r>:
   13360:	fe010113          	addi	sp,sp,-32
   13364:	00058713          	mv	a4,a1
   13368:	00813823          	sd	s0,16(sp)
   1336c:	00913423          	sd	s1,8(sp)
   13370:	00050413          	mv	s0,a0
   13374:	00060593          	mv	a1,a2
   13378:	00070513          	mv	a0,a4
   1337c:	00113c23          	sd	ra,24(sp)
   13380:	7801a823          	sw	zero,1936(gp) # 157f8 <errno>
   13384:	110000ef          	jal	ra,13494 <_fstat>
   13388:	fff00793          	li	a5,-1
   1338c:	00f50c63          	beq	a0,a5,133a4 <_fstat_r+0x44>
   13390:	01813083          	ld	ra,24(sp)
   13394:	01013403          	ld	s0,16(sp)
   13398:	00813483          	ld	s1,8(sp)
   1339c:	02010113          	addi	sp,sp,32
   133a0:	00008067          	ret
   133a4:	7901a783          	lw	a5,1936(gp) # 157f8 <errno>
   133a8:	fe0784e3          	beqz	a5,13390 <_fstat_r+0x30>
   133ac:	01813083          	ld	ra,24(sp)
   133b0:	00f42023          	sw	a5,0(s0)
   133b4:	01013403          	ld	s0,16(sp)
   133b8:	00813483          	ld	s1,8(sp)
   133bc:	02010113          	addi	sp,sp,32
   133c0:	00008067          	ret

00000000000133c4 <_isatty_r>:
   133c4:	fe010113          	addi	sp,sp,-32
   133c8:	00813823          	sd	s0,16(sp)
   133cc:	00913423          	sd	s1,8(sp)
   133d0:	00050413          	mv	s0,a0
   133d4:	00058513          	mv	a0,a1
   133d8:	00113c23          	sd	ra,24(sp)
   133dc:	7801a823          	sw	zero,1936(gp) # 157f8 <errno>
   133e0:	118000ef          	jal	ra,134f8 <_isatty>
   133e4:	fff00793          	li	a5,-1
   133e8:	00f50c63          	beq	a0,a5,13400 <_isatty_r+0x3c>
   133ec:	01813083          	ld	ra,24(sp)
   133f0:	01013403          	ld	s0,16(sp)
   133f4:	00813483          	ld	s1,8(sp)
   133f8:	02010113          	addi	sp,sp,32
   133fc:	00008067          	ret
   13400:	7901a783          	lw	a5,1936(gp) # 157f8 <errno>
   13404:	fe0784e3          	beqz	a5,133ec <_isatty_r+0x28>
   13408:	01813083          	ld	ra,24(sp)
   1340c:	00f42023          	sw	a5,0(s0)
   13410:	01013403          	ld	s0,16(sp)
   13414:	00813483          	ld	s1,8(sp)
   13418:	02010113          	addi	sp,sp,32
   1341c:	00008067          	ret

0000000000013420 <_close>:
   13420:	ff010113          	addi	sp,sp,-16
   13424:	00113423          	sd	ra,8(sp)
   13428:	00813023          	sd	s0,0(sp)
   1342c:	03900893          	li	a7,57
   13430:	00000073          	ecall
   13434:	00050413          	mv	s0,a0
   13438:	00054c63          	bltz	a0,13450 <_close+0x30>
   1343c:	0005051b          	sext.w	a0,a0
   13440:	00813083          	ld	ra,8(sp)
   13444:	00013403          	ld	s0,0(sp)
   13448:	01010113          	addi	sp,sp,16
   1344c:	00008067          	ret
   13450:	29c000ef          	jal	ra,136ec <__errno>
   13454:	4080043b          	negw	s0,s0
   13458:	00852023          	sw	s0,0(a0)
   1345c:	fff00513          	li	a0,-1
   13460:	fe1ff06f          	j	13440 <_close+0x20>

0000000000013464 <_exit>:
   13464:	05d00893          	li	a7,93
   13468:	00000073          	ecall
   1346c:	00054463          	bltz	a0,13474 <_exit+0x10>
   13470:	0000006f          	j	13470 <_exit+0xc>
   13474:	ff010113          	addi	sp,sp,-16
   13478:	00813023          	sd	s0,0(sp)
   1347c:	00050413          	mv	s0,a0
   13480:	00113423          	sd	ra,8(sp)
   13484:	4080043b          	negw	s0,s0
   13488:	264000ef          	jal	ra,136ec <__errno>
   1348c:	00852023          	sw	s0,0(a0)
   13490:	0000006f          	j	13490 <_exit+0x2c>

0000000000013494 <_fstat>:
   13494:	f6010113          	addi	sp,sp,-160
   13498:	08913423          	sd	s1,136(sp)
   1349c:	08113c23          	sd	ra,152(sp)
   134a0:	00058493          	mv	s1,a1
   134a4:	08813823          	sd	s0,144(sp)
   134a8:	05000893          	li	a7,80
   134ac:	00010593          	mv	a1,sp
   134b0:	00000073          	ecall
   134b4:	00050413          	mv	s0,a0
   134b8:	02054663          	bltz	a0,134e4 <_fstat+0x50>
   134bc:	0005041b          	sext.w	s0,a0
   134c0:	00048513          	mv	a0,s1
   134c4:	00010593          	mv	a1,sp
   134c8:	1b4000ef          	jal	ra,1367c <_conv_stat>
   134cc:	09813083          	ld	ra,152(sp)
   134d0:	00040513          	mv	a0,s0
   134d4:	09013403          	ld	s0,144(sp)
   134d8:	08813483          	ld	s1,136(sp)
   134dc:	0a010113          	addi	sp,sp,160
   134e0:	00008067          	ret
   134e4:	4080043b          	negw	s0,s0
   134e8:	204000ef          	jal	ra,136ec <__errno>
   134ec:	00852023          	sw	s0,0(a0)
   134f0:	fff00413          	li	s0,-1
   134f4:	fcdff06f          	j	134c0 <_fstat+0x2c>

00000000000134f8 <_isatty>:
   134f8:	f8010113          	addi	sp,sp,-128
   134fc:	00810593          	addi	a1,sp,8
   13500:	06113c23          	sd	ra,120(sp)
   13504:	f91ff0ef          	jal	ra,13494 <_fstat>
   13508:	fff00793          	li	a5,-1
   1350c:	00f50e63          	beq	a0,a5,13528 <_isatty+0x30>
   13510:	00c12503          	lw	a0,12(sp)
   13514:	07813083          	ld	ra,120(sp)
   13518:	40d5551b          	sraiw	a0,a0,0xd
   1351c:	00157513          	andi	a0,a0,1
   13520:	08010113          	addi	sp,sp,128
   13524:	00008067          	ret
   13528:	07813083          	ld	ra,120(sp)
   1352c:	00000513          	li	a0,0
   13530:	08010113          	addi	sp,sp,128
   13534:	00008067          	ret

0000000000013538 <_lseek>:
   13538:	ff010113          	addi	sp,sp,-16
   1353c:	00113423          	sd	ra,8(sp)
   13540:	00813023          	sd	s0,0(sp)
   13544:	03e00893          	li	a7,62
   13548:	00000073          	ecall
   1354c:	00050413          	mv	s0,a0
   13550:	00054c63          	bltz	a0,13568 <_lseek+0x30>
   13554:	00813083          	ld	ra,8(sp)
   13558:	00040513          	mv	a0,s0
   1355c:	00013403          	ld	s0,0(sp)
   13560:	01010113          	addi	sp,sp,16
   13564:	00008067          	ret
   13568:	4080043b          	negw	s0,s0
   1356c:	180000ef          	jal	ra,136ec <__errno>
   13570:	00852023          	sw	s0,0(a0)
   13574:	fff00413          	li	s0,-1
   13578:	fddff06f          	j	13554 <_lseek+0x1c>

000000000001357c <_read>:
   1357c:	ff010113          	addi	sp,sp,-16
   13580:	00113423          	sd	ra,8(sp)
   13584:	00813023          	sd	s0,0(sp)
   13588:	03f00893          	li	a7,63
   1358c:	00000073          	ecall
   13590:	00050413          	mv	s0,a0
   13594:	00054c63          	bltz	a0,135ac <_read+0x30>
   13598:	00813083          	ld	ra,8(sp)
   1359c:	00040513          	mv	a0,s0
   135a0:	00013403          	ld	s0,0(sp)
   135a4:	01010113          	addi	sp,sp,16
   135a8:	00008067          	ret
   135ac:	4080043b          	negw	s0,s0
   135b0:	13c000ef          	jal	ra,136ec <__errno>
   135b4:	00852023          	sw	s0,0(a0)
   135b8:	fff00413          	li	s0,-1
   135bc:	fddff06f          	j	13598 <_read+0x1c>

00000000000135c0 <_sbrk>:
   135c0:	7981b703          	ld	a4,1944(gp) # 15800 <heap_end.0>
   135c4:	ff010113          	addi	sp,sp,-16
   135c8:	00113423          	sd	ra,8(sp)
   135cc:	00050793          	mv	a5,a0
   135d0:	02071063          	bnez	a4,135f0 <_sbrk+0x30>
   135d4:	0d600893          	li	a7,214
   135d8:	00000513          	li	a0,0
   135dc:	00000073          	ecall
   135e0:	fff00613          	li	a2,-1
   135e4:	00050713          	mv	a4,a0
   135e8:	02c50a63          	beq	a0,a2,1361c <_sbrk+0x5c>
   135ec:	78a1bc23          	sd	a0,1944(gp) # 15800 <heap_end.0>
   135f0:	0d600893          	li	a7,214
   135f4:	00e78533          	add	a0,a5,a4
   135f8:	00000073          	ecall
   135fc:	7981b703          	ld	a4,1944(gp) # 15800 <heap_end.0>
   13600:	00e787b3          	add	a5,a5,a4
   13604:	00f51c63          	bne	a0,a5,1361c <_sbrk+0x5c>
   13608:	00813083          	ld	ra,8(sp)
   1360c:	78a1bc23          	sd	a0,1944(gp) # 15800 <heap_end.0>
   13610:	00070513          	mv	a0,a4
   13614:	01010113          	addi	sp,sp,16
   13618:	00008067          	ret
   1361c:	0d0000ef          	jal	ra,136ec <__errno>
   13620:	00813083          	ld	ra,8(sp)
   13624:	00c00793          	li	a5,12
   13628:	00f52023          	sw	a5,0(a0)
   1362c:	fff00513          	li	a0,-1
   13630:	01010113          	addi	sp,sp,16
   13634:	00008067          	ret

0000000000013638 <_write>:
   13638:	ff010113          	addi	sp,sp,-16
   1363c:	00113423          	sd	ra,8(sp)
   13640:	00813023          	sd	s0,0(sp)
   13644:	04000893          	li	a7,64
   13648:	00000073          	ecall
   1364c:	00050413          	mv	s0,a0
   13650:	00054c63          	bltz	a0,13668 <_write+0x30>
   13654:	00813083          	ld	ra,8(sp)
   13658:	00040513          	mv	a0,s0
   1365c:	00013403          	ld	s0,0(sp)
   13660:	01010113          	addi	sp,sp,16
   13664:	00008067          	ret
   13668:	4080043b          	negw	s0,s0
   1366c:	080000ef          	jal	ra,136ec <__errno>
   13670:	00852023          	sw	s0,0(a0)
   13674:	fff00413          	li	s0,-1
   13678:	fddff06f          	j	13654 <_write+0x1c>

000000000001367c <_conv_stat>:
   1367c:	0185d703          	lhu	a4,24(a1)
   13680:	0145d783          	lhu	a5,20(a1)
   13684:	01c5a603          	lw	a2,28(a1)
   13688:	0205b683          	ld	a3,32(a1)
   1368c:	0005b303          	ld	t1,0(a1)
   13690:	0085b883          	ld	a7,8(a1)
   13694:	0105a803          	lw	a6,16(a1)
   13698:	0107171b          	slliw	a4,a4,0x10
   1369c:	00e7e7b3          	or	a5,a5,a4
   136a0:	00c51623          	sh	a2,12(a0)
   136a4:	00d51723          	sh	a3,14(a0)
   136a8:	00651023          	sh	t1,0(a0)
   136ac:	01151123          	sh	a7,2(a0)
   136b0:	01052223          	sw	a6,4(a0)
   136b4:	00f52423          	sw	a5,8(a0)
   136b8:	0305b703          	ld	a4,48(a1)
   136bc:	0485b783          	ld	a5,72(a1)
   136c0:	0405b603          	ld	a2,64(a1)
   136c4:	0385a683          	lw	a3,56(a1)
   136c8:	00e53823          	sd	a4,16(a0)
   136cc:	00f53c23          	sd	a5,24(a0)
   136d0:	0585b703          	ld	a4,88(a1)
   136d4:	0685b783          	ld	a5,104(a1)
   136d8:	04c53823          	sd	a2,80(a0)
   136dc:	04d53423          	sd	a3,72(a0)
   136e0:	02e53423          	sd	a4,40(a0)
   136e4:	02f53c23          	sd	a5,56(a0)
   136e8:	00008067          	ret

00000000000136ec <__errno>:
   136ec:	7601b503          	ld	a0,1888(gp) # 157c8 <_impure_ptr>
   136f0:	00008067          	ret

00000000000136f4 <__muldi3>:
   136f4:	00050613          	mv	a2,a0
   136f8:	00000513          	li	a0,0
   136fc:	0015f693          	andi	a3,a1,1
   13700:	00068463          	beqz	a3,13708 <__muldi3+0x14>
   13704:	00c50533          	add	a0,a0,a2
   13708:	0015d593          	srli	a1,a1,0x1
   1370c:	00161613          	slli	a2,a2,0x1
   13710:	fe0596e3          	bnez	a1,136fc <__muldi3+0x8>
   13714:	00008067          	ret

0000000000013718 <__udivsi3>:
   13718:	02051513          	slli	a0,a0,0x20
   1371c:	02059593          	slli	a1,a1,0x20
   13720:	00008293          	mv	t0,ra
   13724:	03c000ef          	jal	ra,13760 <__hidden___udivdi3>
   13728:	0005051b          	sext.w	a0,a0
   1372c:	00028067          	jr	t0 # 10368 <memset+0xb4>

0000000000013730 <__umodsi3>:
   13730:	02051513          	slli	a0,a0,0x20
   13734:	02059593          	slli	a1,a1,0x20
   13738:	02055513          	srli	a0,a0,0x20
   1373c:	0205d593          	srli	a1,a1,0x20
   13740:	00008293          	mv	t0,ra
   13744:	01c000ef          	jal	ra,13760 <__hidden___udivdi3>
   13748:	0005851b          	sext.w	a0,a1
   1374c:	00028067          	jr	t0

0000000000013750 <__divsi3>:
   13750:	fff00293          	li	t0,-1
   13754:	0a558c63          	beq	a1,t0,1380c <__moddi3+0x30>

0000000000013758 <__divdi3>:
   13758:	06054063          	bltz	a0,137b8 <__umoddi3+0x10>
   1375c:	0605c663          	bltz	a1,137c8 <__umoddi3+0x20>

0000000000013760 <__hidden___udivdi3>:
   13760:	00058613          	mv	a2,a1
   13764:	00050593          	mv	a1,a0
   13768:	fff00513          	li	a0,-1
   1376c:	02060c63          	beqz	a2,137a4 <__hidden___udivdi3+0x44>
   13770:	00100693          	li	a3,1
   13774:	00b67a63          	bgeu	a2,a1,13788 <__hidden___udivdi3+0x28>
   13778:	00c05863          	blez	a2,13788 <__hidden___udivdi3+0x28>
   1377c:	00161613          	slli	a2,a2,0x1
   13780:	00169693          	slli	a3,a3,0x1
   13784:	feb66ae3          	bltu	a2,a1,13778 <__hidden___udivdi3+0x18>
   13788:	00000513          	li	a0,0
   1378c:	00c5e663          	bltu	a1,a2,13798 <__hidden___udivdi3+0x38>
   13790:	40c585b3          	sub	a1,a1,a2
   13794:	00d56533          	or	a0,a0,a3
   13798:	0016d693          	srli	a3,a3,0x1
   1379c:	00165613          	srli	a2,a2,0x1
   137a0:	fe0696e3          	bnez	a3,1378c <__hidden___udivdi3+0x2c>
   137a4:	00008067          	ret

00000000000137a8 <__umoddi3>:
   137a8:	00008293          	mv	t0,ra
   137ac:	fb5ff0ef          	jal	ra,13760 <__hidden___udivdi3>
   137b0:	00058513          	mv	a0,a1
   137b4:	00028067          	jr	t0
   137b8:	40a00533          	neg	a0,a0
   137bc:	00b04863          	bgtz	a1,137cc <__umoddi3+0x24>
   137c0:	40b005b3          	neg	a1,a1
   137c4:	f9dff06f          	j	13760 <__hidden___udivdi3>
   137c8:	40b005b3          	neg	a1,a1
   137cc:	00008293          	mv	t0,ra
   137d0:	f91ff0ef          	jal	ra,13760 <__hidden___udivdi3>
   137d4:	40a00533          	neg	a0,a0
   137d8:	00028067          	jr	t0

00000000000137dc <__moddi3>:
   137dc:	00008293          	mv	t0,ra
   137e0:	0005ca63          	bltz	a1,137f4 <__moddi3+0x18>
   137e4:	00054c63          	bltz	a0,137fc <__moddi3+0x20>
   137e8:	f79ff0ef          	jal	ra,13760 <__hidden___udivdi3>
   137ec:	00058513          	mv	a0,a1
   137f0:	00028067          	jr	t0
   137f4:	40b005b3          	neg	a1,a1
   137f8:	fe0558e3          	bgez	a0,137e8 <__moddi3+0xc>
   137fc:	40a00533          	neg	a0,a0
   13800:	f61ff0ef          	jal	ra,13760 <__hidden___udivdi3>
   13804:	40b00533          	neg	a0,a1
   13808:	00028067          	jr	t0
   1380c:	01f29293          	slli	t0,t0,0x1f
   13810:	f45514e3          	bne	a0,t0,13758 <__divdi3>
   13814:	00008067          	ret
