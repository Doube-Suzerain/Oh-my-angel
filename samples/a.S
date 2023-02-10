
a：     文件格式 elf64-littleriscv


Disassembly of section .plt:

0000000000000540 <.plt>:
 540:	00002397          	auipc	t2,0x2
 544:	41c30333          	sub	t1,t1,t3
 548:	ac83be03          	ld	t3,-1336(t2) # 2008 <__TMC_END__>
 54c:	fd430313          	addi	t1,t1,-44
 550:	ac838293          	addi	t0,t2,-1336
 554:	00135313          	srli	t1,t1,0x1
 558:	0082b283          	ld	t0,8(t0)
 55c:	000e0067          	jr	t3

0000000000000560 <__libc_start_main@plt>:
 560:	00002e17          	auipc	t3,0x2
 564:	ab8e3e03          	ld	t3,-1352(t3) # 2018 <__libc_start_main@GLIBC_2.34>
 568:	000e0367          	jalr	t1,t3
 56c:	00000013          	nop

Disassembly of section .text:

0000000000000570 <_start>:
 570:	022000ef          	jal	ra,592 <load_gp>
 574:	87aa                	mv	a5,a0
 576:	00002517          	auipc	a0,0x2
 57a:	aba53503          	ld	a0,-1350(a0) # 2030 <_GLOBAL_OFFSET_TABLE_+0x10>
 57e:	6582                	ld	a1,0(sp)
 580:	0030                	addi	a2,sp,8
 582:	ff017113          	andi	sp,sp,-16
 586:	4681                	li	a3,0
 588:	4701                	li	a4,0
 58a:	880a                	mv	a6,sp
 58c:	fd5ff0ef          	jal	ra,560 <__libc_start_main@plt>
 590:	9002                	ebreak

0000000000000592 <load_gp>:
 592:	00002197          	auipc	gp,0x2
 596:	26e18193          	addi	gp,gp,622 # 2800 <__global_pointer$>
 59a:	8082                	ret
	...

000000000000059e <deregister_tm_clones>:
 59e:	00002517          	auipc	a0,0x2
 5a2:	a6a50513          	addi	a0,a0,-1430 # 2008 <__TMC_END__>
 5a6:	00002797          	auipc	a5,0x2
 5aa:	a6278793          	addi	a5,a5,-1438 # 2008 <__TMC_END__>
 5ae:	00a78863          	beq	a5,a0,5be <deregister_tm_clones+0x20>
 5b2:	00002797          	auipc	a5,0x2
 5b6:	a767b783          	ld	a5,-1418(a5) # 2028 <_ITM_deregisterTMCloneTable@Base>
 5ba:	c391                	beqz	a5,5be <deregister_tm_clones+0x20>
 5bc:	8782                	jr	a5
 5be:	8082                	ret

00000000000005c0 <register_tm_clones>:
 5c0:	00002517          	auipc	a0,0x2
 5c4:	a4850513          	addi	a0,a0,-1464 # 2008 <__TMC_END__>
 5c8:	00002597          	auipc	a1,0x2
 5cc:	a4058593          	addi	a1,a1,-1472 # 2008 <__TMC_END__>
 5d0:	8d89                	sub	a1,a1,a0
 5d2:	4035d793          	srai	a5,a1,0x3
 5d6:	91fd                	srli	a1,a1,0x3f
 5d8:	95be                	add	a1,a1,a5
 5da:	8585                	srai	a1,a1,0x1
 5dc:	c599                	beqz	a1,5ea <register_tm_clones+0x2a>
 5de:	00002797          	auipc	a5,0x2
 5e2:	a627b783          	ld	a5,-1438(a5) # 2040 <_ITM_registerTMCloneTable@Base>
 5e6:	c391                	beqz	a5,5ea <register_tm_clones+0x2a>
 5e8:	8782                	jr	a5
 5ea:	8082                	ret

00000000000005ec <__do_global_dtors_aux>:
 5ec:	1141                	addi	sp,sp,-16
 5ee:	e022                	sd	s0,0(sp)
 5f0:	00002417          	auipc	s0,0x2
 5f4:	a5840413          	addi	s0,s0,-1448 # 2048 <completed.0>
 5f8:	00044783          	lbu	a5,0(s0)
 5fc:	e406                	sd	ra,8(sp)
 5fe:	e385                	bnez	a5,61e <__do_global_dtors_aux+0x32>
 600:	00002797          	auipc	a5,0x2
 604:	a387b783          	ld	a5,-1480(a5) # 2038 <__cxa_finalize@GLIBC_2.27>
 608:	c791                	beqz	a5,614 <__do_global_dtors_aux+0x28>
 60a:	00002517          	auipc	a0,0x2
 60e:	9f653503          	ld	a0,-1546(a0) # 2000 <__dso_handle>
 612:	9782                	jalr	a5
 614:	f8bff0ef          	jal	ra,59e <deregister_tm_clones>
 618:	4785                	li	a5,1
 61a:	00f40023          	sb	a5,0(s0)
 61e:	60a2                	ld	ra,8(sp)
 620:	6402                	ld	s0,0(sp)
 622:	0141                	addi	sp,sp,16
 624:	8082                	ret

0000000000000626 <frame_dummy>:
 626:	bf69                	j	5c0 <register_tm_clones>

0000000000000628 <main>:
 628:	fd010113          	addi	sp,sp,-48
 62c:	02813423          	sd	s0,40(sp)
 630:	03010413          	addi	s0,sp,48
 634:	fd043783          	ld	a5,-48(s0)
 638:	0007879b          	sext.w	a5,a5
 63c:	fd843703          	ld	a4,-40(s0)
 640:	40f757b3          	sra	a5,a4,a5
 644:	fcf43c23          	sd	a5,-40(s0)
 648:	fd043783          	ld	a5,-48(s0)
 64c:	0007879b          	sext.w	a5,a5
 650:	00078713          	mv	a4,a5
 654:	fe043783          	ld	a5,-32(s0)
 658:	00e7d7b3          	srl	a5,a5,a4
 65c:	fef43023          	sd	a5,-32(s0)
 660:	fd843703          	ld	a4,-40(s0)
 664:	fe043783          	ld	a5,-32(s0)
 668:	00f707b3          	add	a5,a4,a5
 66c:	fcf43823          	sd	a5,-48(s0)
 670:	fd843703          	ld	a4,-40(s0)
 674:	fe043783          	ld	a5,-32(s0)
 678:	40f707b3          	sub	a5,a4,a5
 67c:	fef43423          	sd	a5,-24(s0)
 680:	00000793          	li	a5,0
 684:	00078513          	mv	a0,a5
 688:	02813403          	ld	s0,40(sp)
 68c:	03010113          	addi	sp,sp,48
 690:	00008067          	ret
