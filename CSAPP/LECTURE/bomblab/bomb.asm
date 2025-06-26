
bomb:     file format elf64-x86-64


Disassembly of section .text:

00000000004011d0 <_start>:
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	31 ed                	xor    %ebp,%ebp
  4011d6:	49 89 d1             	mov    %rdx,%r9
  4011d9:	5e                   	pop    %rsi
  4011da:	48 89 e2             	mov    %rsp,%rdx
  4011dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4011e1:	50                   	push   %rax
  4011e2:	54                   	push   %rsp
  4011e3:	45 31 c0             	xor    %r8d,%r8d
  4011e6:	31 c9                	xor    %ecx,%ecx
  4011e8:	48 c7 c7 b6 12 40 00 	mov    $0x4012b6,%rdi
  4011ef:	ff 15 fb 2d 00 00    	callq  *0x2dfb(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  4011f5:	f4                   	hlt    
  4011f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4011fd:	00 00 00 

0000000000401200 <_dl_relocate_static_pie>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	c3                   	retq   
  401205:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40120c:	00 00 00 
  40120f:	90                   	nop

0000000000401210 <deregister_tm_clones>:
  401210:	b8 98 43 40 00       	mov    $0x404398,%eax
  401215:	48 3d 98 43 40 00    	cmp    $0x404398,%rax
  40121b:	74 13                	je     401230 <deregister_tm_clones+0x20>
  40121d:	b8 00 00 00 00       	mov    $0x0,%eax
  401222:	48 85 c0             	test   %rax,%rax
  401225:	74 09                	je     401230 <deregister_tm_clones+0x20>
  401227:	bf 98 43 40 00       	mov    $0x404398,%edi
  40122c:	ff e0                	jmpq   *%rax
  40122e:	66 90                	xchg   %ax,%ax
  401230:	c3                   	retq   
  401231:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401238:	00 00 00 00 
  40123c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401240 <register_tm_clones>:
  401240:	be 98 43 40 00       	mov    $0x404398,%esi
  401245:	48 81 ee 98 43 40 00 	sub    $0x404398,%rsi
  40124c:	48 89 f0             	mov    %rsi,%rax
  40124f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401253:	48 c1 f8 03          	sar    $0x3,%rax
  401257:	48 01 c6             	add    %rax,%rsi
  40125a:	48 d1 fe             	sar    %rsi
  40125d:	74 11                	je     401270 <register_tm_clones+0x30>
  40125f:	b8 00 00 00 00       	mov    $0x0,%eax
  401264:	48 85 c0             	test   %rax,%rax
  401267:	74 07                	je     401270 <register_tm_clones+0x30>
  401269:	bf 98 43 40 00       	mov    $0x404398,%edi
  40126e:	ff e0                	jmpq   *%rax
  401270:	c3                   	retq   
  401271:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401278:	00 00 00 00 
  40127c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401280 <__do_global_dtors_aux>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	80 3d 2d 31 00 00 00 	cmpb   $0x0,0x312d(%rip)        # 4043b8 <completed.0>
  40128b:	75 13                	jne    4012a0 <__do_global_dtors_aux+0x20>
  40128d:	55                   	push   %rbp
  40128e:	48 89 e5             	mov    %rsp,%rbp
  401291:	e8 7a ff ff ff       	callq  401210 <deregister_tm_clones>
  401296:	c6 05 1b 31 00 00 01 	movb   $0x1,0x311b(%rip)        # 4043b8 <completed.0>
  40129d:	5d                   	pop    %rbp
  40129e:	c3                   	retq   
  40129f:	90                   	nop
  4012a0:	c3                   	retq   
  4012a1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <frame_dummy>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	eb 8a                	jmp    401240 <register_tm_clones>

00000000004012b6 <main>:
  4012b6:	f3 0f 1e fa          	endbr64 
  4012ba:	55                   	push   %rbp
  4012bb:	48 89 e5             	mov    %rsp,%rbp
  4012be:	53                   	push   %rbx
  4012bf:	48 83 ec 08          	sub    $0x8,%rsp
  4012c3:	83 ff 01             	cmp    $0x1,%edi
  4012c6:	0f 84 f6 00 00 00    	je     4013c2 <main+0x10c>
  4012cc:	48 89 f3             	mov    %rsi,%rbx
  4012cf:	83 ff 02             	cmp    $0x2,%edi
  4012d2:	0f 85 1d 01 00 00    	jne    4013f5 <main+0x13f>
  4012d8:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  4012dc:	be 04 20 40 00       	mov    $0x402004,%esi
  4012e1:	e8 9a fe ff ff       	callq  401180 <fopen@plt>
  4012e6:	48 89 05 d3 30 00 00 	mov    %rax,0x30d3(%rip)        # 4043c0 <infile>
  4012ed:	48 85 c0             	test   %rax,%rax
  4012f0:	0f 84 df 00 00 00    	je     4013d5 <main+0x11f>
  4012f6:	e8 20 08 00 00       	callq  401b1b <initialize_bomb>
  4012fb:	be 50 20 40 00       	mov    $0x402050,%esi
  401300:	bf 01 00 00 00       	mov    $0x1,%edi
  401305:	b8 00 00 00 00       	mov    $0x0,%eax
  40130a:	e8 61 fe ff ff       	callq  401170 <__printf_chk@plt>
  40130f:	be 90 20 40 00       	mov    $0x402090,%esi
  401314:	bf 01 00 00 00       	mov    $0x1,%edi
  401319:	b8 00 00 00 00       	mov    $0x0,%eax
  40131e:	e8 4d fe ff ff       	callq  401170 <__printf_chk@plt>
  401323:	e8 af 09 00 00       	callq  401cd7 <read_line>
  401328:	48 89 c7             	mov    %rax,%rdi
  40132b:	e8 b5 01 00 00       	callq  4014e5 <phase_0>
  401330:	85 c0                	test   %eax,%eax
  401332:	0f 85 de 00 00 00    	jne    401416 <main+0x160>
  401338:	e8 9a 09 00 00       	callq  401cd7 <read_line>
  40133d:	48 89 c7             	mov    %rax,%rdi
  401340:	e8 c9 01 00 00       	callq  40150e <phase_1>
  401345:	85 c0                	test   %eax,%eax
  401347:	0f 85 e7 00 00 00    	jne    401434 <main+0x17e>
  40134d:	e8 85 09 00 00       	callq  401cd7 <read_line>
  401352:	48 89 c7             	mov    %rax,%rdi
  401355:	e8 0d 02 00 00       	callq  401567 <phase_2>
  40135a:	85 c0                	test   %eax,%eax
  40135c:	0f 85 f0 00 00 00    	jne    401452 <main+0x19c>
  401362:	e8 70 09 00 00       	callq  401cd7 <read_line>
  401367:	48 89 c7             	mov    %rax,%rdi
  40136a:	e8 68 02 00 00       	callq  4015d7 <phase_3>
  40136f:	85 c0                	test   %eax,%eax
  401371:	0f 85 f9 00 00 00    	jne    401470 <main+0x1ba>
  401377:	e8 5b 09 00 00       	callq  401cd7 <read_line>
  40137c:	48 89 c7             	mov    %rax,%rdi
  40137f:	e8 09 04 00 00       	callq  40178d <phase_4>
  401384:	85 c0                	test   %eax,%eax
  401386:	0f 85 02 01 00 00    	jne    40148e <main+0x1d8>
  40138c:	e8 46 09 00 00       	callq  401cd7 <read_line>
  401391:	48 89 c7             	mov    %rax,%rdi
  401394:	e8 5c 04 00 00       	callq  4017f5 <phase_5>
  401399:	85 c0                	test   %eax,%eax
  40139b:	0f 85 0b 01 00 00    	jne    4014ac <main+0x1f6>
  4013a1:	e8 31 09 00 00       	callq  401cd7 <read_line>
  4013a6:	48 89 c7             	mov    %rax,%rdi
  4013a9:	e8 be 04 00 00       	callq  40186c <phase_6>
  4013ae:	85 c0                	test   %eax,%eax
  4013b0:	0f 85 14 01 00 00    	jne    4014ca <main+0x214>
  4013b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bb:	48 83 c4 08          	add    $0x8,%rsp
  4013bf:	5b                   	pop    %rbx
  4013c0:	5d                   	pop    %rbp
  4013c1:	c3                   	retq   
  4013c2:	48 8b 05 e7 2f 00 00 	mov    0x2fe7(%rip),%rax        # 4043b0 <stdin@@GLIBC_2.2.5>
  4013c9:	48 89 05 f0 2f 00 00 	mov    %rax,0x2ff0(%rip)        # 4043c0 <infile>
  4013d0:	e9 21 ff ff ff       	jmpq   4012f6 <main+0x40>
  4013d5:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  4013d9:	48 8b 13             	mov    (%rbx),%rdx
  4013dc:	be 06 20 40 00       	mov    $0x402006,%esi
  4013e1:	bf 01 00 00 00       	mov    $0x1,%edi
  4013e6:	e8 85 fd ff ff       	callq  401170 <__printf_chk@plt>
  4013eb:	bf 08 00 00 00       	mov    $0x8,%edi
  4013f0:	e8 ab fd ff ff       	callq  4011a0 <exit@plt>
  4013f5:	48 8b 16             	mov    (%rsi),%rdx
  4013f8:	be 23 20 40 00       	mov    $0x402023,%esi
  4013fd:	bf 01 00 00 00       	mov    $0x1,%edi
  401402:	b8 00 00 00 00       	mov    $0x0,%eax
  401407:	e8 64 fd ff ff       	callq  401170 <__printf_chk@plt>
  40140c:	bf 08 00 00 00       	mov    $0x8,%edi
  401411:	e8 8a fd ff ff       	callq  4011a0 <exit@plt>
  401416:	e8 18 0a 00 00       	callq  401e33 <phase_defused>
  40141b:	be c0 20 40 00       	mov    $0x4020c0,%esi
  401420:	bf 01 00 00 00       	mov    $0x1,%edi
  401425:	b8 00 00 00 00       	mov    $0x0,%eax
  40142a:	e8 41 fd ff ff       	callq  401170 <__printf_chk@plt>
  40142f:	e9 04 ff ff ff       	jmpq   401338 <main+0x82>
  401434:	e8 fa 09 00 00       	callq  401e33 <phase_defused>
  401439:	be e8 20 40 00       	mov    $0x4020e8,%esi
  40143e:	bf 01 00 00 00       	mov    $0x1,%edi
  401443:	b8 00 00 00 00       	mov    $0x0,%eax
  401448:	e8 23 fd ff ff       	callq  401170 <__printf_chk@plt>
  40144d:	e9 fb fe ff ff       	jmpq   40134d <main+0x97>
  401452:	e8 dc 09 00 00       	callq  401e33 <phase_defused>
  401457:	be 18 21 40 00       	mov    $0x402118,%esi
  40145c:	bf 01 00 00 00       	mov    $0x1,%edi
  401461:	b8 00 00 00 00       	mov    $0x0,%eax
  401466:	e8 05 fd ff ff       	callq  401170 <__printf_chk@plt>
  40146b:	e9 f2 fe ff ff       	jmpq   401362 <main+0xac>
  401470:	e8 be 09 00 00       	callq  401e33 <phase_defused>
  401475:	be 3d 20 40 00       	mov    $0x40203d,%esi
  40147a:	bf 01 00 00 00       	mov    $0x1,%edi
  40147f:	b8 00 00 00 00       	mov    $0x0,%eax
  401484:	e8 e7 fc ff ff       	callq  401170 <__printf_chk@plt>
  401489:	e9 e9 fe ff ff       	jmpq   401377 <main+0xc1>
  40148e:	e8 a0 09 00 00       	callq  401e33 <phase_defused>
  401493:	be 38 21 40 00       	mov    $0x402138,%esi
  401498:	bf 01 00 00 00       	mov    $0x1,%edi
  40149d:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a2:	e8 c9 fc ff ff       	callq  401170 <__printf_chk@plt>
  4014a7:	e9 e0 fe ff ff       	jmpq   40138c <main+0xd6>
  4014ac:	e8 82 09 00 00       	callq  401e33 <phase_defused>
  4014b1:	be 60 21 40 00       	mov    $0x402160,%esi
  4014b6:	bf 01 00 00 00       	mov    $0x1,%edi
  4014bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c0:	e8 ab fc ff ff       	callq  401170 <__printf_chk@plt>
  4014c5:	e9 d7 fe ff ff       	jmpq   4013a1 <main+0xeb>
  4014ca:	e8 64 09 00 00       	callq  401e33 <phase_defused>
  4014cf:	e9 e2 fe ff ff       	jmpq   4013b6 <main+0x100>

00000000004014d4 <xtShKbjM>:
  4014d4:	f3 0f 1e fa          	endbr64 
  4014d8:	89 f8                	mov    %edi,%eax
  4014da:	29 f0                	sub    %esi,%eax
  4014dc:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4014df:	c1 e7 05             	shl    $0x5,%edi
  4014e2:	01 f8                	add    %edi,%eax
  4014e4:	c3                   	retq   

00000000004014e5 <phase_0>:
  4014e5:	f3 0f 1e fa          	endbr64 
  4014e9:	55                   	push   %rbp
  4014ea:	48 89 e5             	mov    %rsp,%rbp
  4014ed:	be 80 21 40 00       	mov    $0x402180,%esi
  4014f2:	e8 c5 05 00 00       	callq  401abc <strings_not_equal>
  4014f7:	85 c0                	test   %eax,%eax
  4014f9:	75 07                	jne    401502 <phase_0+0x1d>
  4014fb:	b8 01 00 00 00       	mov    $0x1,%eax
  401500:	5d                   	pop    %rbp
  401501:	c3                   	retq   
  401502:	e8 c9 06 00 00       	callq  401bd0 <explode_bomb>
  401507:	b8 00 00 00 00       	mov    $0x0,%eax
  40150c:	eb f2                	jmp    401500 <phase_0+0x1b>

000000000040150e <phase_1>:
  40150e:	f3 0f 1e fa          	endbr64 
  401512:	55                   	push   %rbp
  401513:	48 89 e5             	mov    %rsp,%rbp
  401516:	48 83 ec 10          	sub    $0x10,%rsp
  40151a:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
  40151e:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
  401522:	be c3 23 40 00       	mov    $0x4023c3,%esi
  401527:	b8 00 00 00 00       	mov    $0x0,%eax
  40152c:	e8 1f fc ff ff       	callq  401150 <__isoc99_sscanf@plt>
  401531:	83 f8 02             	cmp    $0x2,%eax
  401534:	75 1e                	jne    401554 <phase_1+0x46>
  401536:	81 7d fc 69 ae af 41 	cmpl   $0x41afae69,-0x4(%rbp)
  40153d:	75 09                	jne    401548 <phase_1+0x3a>
  40153f:	81 7d f8 00 00 00 56 	cmpl   $0x56000000,-0x8(%rbp)
  401546:	74 18                	je     401560 <phase_1+0x52>
  401548:	e8 83 06 00 00       	callq  401bd0 <explode_bomb>
  40154d:	b8 00 00 00 00       	mov    $0x0,%eax
  401552:	c9                   	leaveq 
  401553:	c3                   	retq   
  401554:	e8 77 06 00 00       	callq  401bd0 <explode_bomb>
  401559:	b8 00 00 00 00       	mov    $0x0,%eax
  40155e:	eb f2                	jmp    401552 <phase_1+0x44>
  401560:	b8 01 00 00 00       	mov    $0x1,%eax
  401565:	eb eb                	jmp    401552 <phase_1+0x44>

0000000000401567 <phase_2>:
  401567:	f3 0f 1e fa          	endbr64 
  40156b:	55                   	push   %rbp
  40156c:	48 89 e5             	mov    %rsp,%rbp
  40156f:	48 83 ec 20          	sub    $0x20,%rsp
  401573:	ba 07 00 00 00       	mov    $0x7,%edx
  401578:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  40157c:	e8 cd 06 00 00       	callq  401c4e <read_n_numbers>
  401581:	85 c0                	test   %eax,%eax
  401583:	74 50                	je     4015d5 <phase_2+0x6e>
  401585:	81 7d e0 f4 00 00 00 	cmpl   $0xf4,-0x20(%rbp)
  40158c:	75 2a                	jne    4015b8 <phase_2+0x51>
  40158e:	b8 01 00 00 00       	mov    $0x1,%eax
  401593:	83 f8 06             	cmp    $0x6,%eax
  401596:	7f 38                	jg     4015d0 <phase_2+0x69>
  401598:	48 63 c8             	movslq %eax,%rcx
  40159b:	8d 50 ff             	lea    -0x1(%rax),%edx
  40159e:	48 63 d2             	movslq %edx,%rdx
  4015a1:	8b 54 95 e0          	mov    -0x20(%rbp,%rdx,4),%edx
  4015a5:	8d 34 00             	lea    (%rax,%rax,1),%esi
  4015a8:	29 f2                	sub    %esi,%edx
  4015aa:	83 c2 01             	add    $0x1,%edx
  4015ad:	39 54 8d e0          	cmp    %edx,-0x20(%rbp,%rcx,4)
  4015b1:	75 11                	jne    4015c4 <phase_2+0x5d>
  4015b3:	83 c0 01             	add    $0x1,%eax
  4015b6:	eb db                	jmp    401593 <phase_2+0x2c>
  4015b8:	e8 13 06 00 00       	callq  401bd0 <explode_bomb>
  4015bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c2:	eb 11                	jmp    4015d5 <phase_2+0x6e>
  4015c4:	e8 07 06 00 00       	callq  401bd0 <explode_bomb>
  4015c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4015ce:	eb 05                	jmp    4015d5 <phase_2+0x6e>
  4015d0:	b8 01 00 00 00       	mov    $0x1,%eax
  4015d5:	c9                   	leaveq 
  4015d6:	c3                   	retq   

00000000004015d7 <phase_3>:
  4015d7:	f3 0f 1e fa          	endbr64 
  4015db:	55                   	push   %rbp
  4015dc:	48 89 e5             	mov    %rsp,%rbp
  4015df:	48 83 ec 10          	sub    $0x10,%rsp
  4015e3:	4c 8d 45 f8          	lea    -0x8(%rbp),%r8
  4015e7:	48 8d 4d f7          	lea    -0x9(%rbp),%rcx
  4015eb:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
  4015ef:	be d7 21 40 00       	mov    $0x4021d7,%esi
  4015f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015f9:	e8 52 fb ff ff       	callq  401150 <__isoc99_sscanf@plt>
  4015fe:	83 f8 02             	cmp    $0x2,%eax
  401601:	7e 1b                	jle    40161e <phase_3+0x47>
  401603:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401606:	2d 99 00 00 00       	sub    $0x99,%eax
  40160b:	83 f8 07             	cmp    $0x7,%eax
  40160e:	0f 87 16 01 00 00    	ja     40172a <phase_3+0x153>
  401614:	89 c0                	mov    %eax,%eax
  401616:	3e ff 24 c5 00 22 40 	notrack jmpq *0x402200(,%rax,8)
  40161d:	00 
  40161e:	e8 ad 05 00 00       	callq  401bd0 <explode_bomb>
  401623:	b8 00 00 00 00       	mov    $0x0,%eax
  401628:	eb 1c                	jmp    401646 <phase_3+0x6f>
  40162a:	81 7d f8 36 02 00 00 	cmpl   $0x236,-0x8(%rbp)
  401631:	75 15                	jne    401648 <phase_3+0x71>
  401633:	b8 67 00 00 00       	mov    $0x67,%eax
  401638:	38 45 f7             	cmp    %al,-0x9(%rbp)
  40163b:	0f 85 f8 00 00 00    	jne    401739 <phase_3+0x162>
  401641:	b8 01 00 00 00       	mov    $0x1,%eax
  401646:	c9                   	leaveq 
  401647:	c3                   	retq   
  401648:	e8 83 05 00 00       	callq  401bd0 <explode_bomb>
  40164d:	b8 00 00 00 00       	mov    $0x0,%eax
  401652:	eb f2                	jmp    401646 <phase_3+0x6f>
  401654:	81 7d f8 36 02 00 00 	cmpl   $0x236,-0x8(%rbp)
  40165b:	75 07                	jne    401664 <phase_3+0x8d>
  40165d:	b8 67 00 00 00       	mov    $0x67,%eax
  401662:	eb d4                	jmp    401638 <phase_3+0x61>
  401664:	e8 67 05 00 00       	callq  401bd0 <explode_bomb>
  401669:	b8 00 00 00 00       	mov    $0x0,%eax
  40166e:	eb d6                	jmp    401646 <phase_3+0x6f>
  401670:	81 7d f8 36 02 00 00 	cmpl   $0x236,-0x8(%rbp)
  401677:	75 07                	jne    401680 <phase_3+0xa9>
  401679:	b8 67 00 00 00       	mov    $0x67,%eax
  40167e:	eb b8                	jmp    401638 <phase_3+0x61>
  401680:	e8 4b 05 00 00       	callq  401bd0 <explode_bomb>
  401685:	b8 00 00 00 00       	mov    $0x0,%eax
  40168a:	eb ba                	jmp    401646 <phase_3+0x6f>
  40168c:	81 7d f8 36 02 00 00 	cmpl   $0x236,-0x8(%rbp)
  401693:	75 07                	jne    40169c <phase_3+0xc5>
  401695:	b8 67 00 00 00       	mov    $0x67,%eax
  40169a:	eb 9c                	jmp    401638 <phase_3+0x61>
  40169c:	e8 2f 05 00 00       	callq  401bd0 <explode_bomb>
  4016a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a6:	eb 9e                	jmp    401646 <phase_3+0x6f>
  4016a8:	81 7d f8 36 02 00 00 	cmpl   $0x236,-0x8(%rbp)
  4016af:	75 07                	jne    4016b8 <phase_3+0xe1>
  4016b1:	b8 67 00 00 00       	mov    $0x67,%eax
  4016b6:	eb 80                	jmp    401638 <phase_3+0x61>
  4016b8:	e8 13 05 00 00       	callq  401bd0 <explode_bomb>
  4016bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4016c2:	eb 82                	jmp    401646 <phase_3+0x6f>
  4016c4:	81 7d f8 36 02 00 00 	cmpl   $0x236,-0x8(%rbp)
  4016cb:	75 0a                	jne    4016d7 <phase_3+0x100>
  4016cd:	b8 67 00 00 00       	mov    $0x67,%eax
  4016d2:	e9 61 ff ff ff       	jmpq   401638 <phase_3+0x61>
  4016d7:	e8 f4 04 00 00       	callq  401bd0 <explode_bomb>
  4016dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e1:	e9 60 ff ff ff       	jmpq   401646 <phase_3+0x6f>
  4016e6:	81 7d f8 36 02 00 00 	cmpl   $0x236,-0x8(%rbp)
  4016ed:	75 0a                	jne    4016f9 <phase_3+0x122>
  4016ef:	b8 67 00 00 00       	mov    $0x67,%eax
  4016f4:	e9 3f ff ff ff       	jmpq   401638 <phase_3+0x61>
  4016f9:	e8 d2 04 00 00       	callq  401bd0 <explode_bomb>
  4016fe:	b8 00 00 00 00       	mov    $0x0,%eax
  401703:	e9 3e ff ff ff       	jmpq   401646 <phase_3+0x6f>
  401708:	81 7d f8 2c 02 00 00 	cmpl   $0x22c,-0x8(%rbp)
  40170f:	75 0a                	jne    40171b <phase_3+0x144>
  401711:	b8 65 00 00 00       	mov    $0x65,%eax
  401716:	e9 1d ff ff ff       	jmpq   401638 <phase_3+0x61>
  40171b:	e8 b0 04 00 00       	callq  401bd0 <explode_bomb>
  401720:	b8 00 00 00 00       	mov    $0x0,%eax
  401725:	e9 1c ff ff ff       	jmpq   401646 <phase_3+0x6f>
  40172a:	e8 a1 04 00 00       	callq  401bd0 <explode_bomb>
  40172f:	b8 00 00 00 00       	mov    $0x0,%eax
  401734:	e9 0d ff ff ff       	jmpq   401646 <phase_3+0x6f>
  401739:	e8 92 04 00 00       	callq  401bd0 <explode_bomb>
  40173e:	b8 00 00 00 00       	mov    $0x0,%eax
  401743:	e9 fe fe ff ff       	jmpq   401646 <phase_3+0x6f>

0000000000401748 <func4>:
  401748:	f3 0f 1e fa          	endbr64 
  40174c:	55                   	push   %rbp
  40174d:	48 89 e5             	mov    %rsp,%rbp
  401750:	53                   	push   %rbx
  401751:	48 83 ec 08          	sub    $0x8,%rsp
  401755:	89 d0                	mov    %edx,%eax
  401757:	29 f0                	sub    %esi,%eax
  401759:	89 c3                	mov    %eax,%ebx
  40175b:	c1 eb 1f             	shr    $0x1f,%ebx
  40175e:	01 c3                	add    %eax,%ebx
  401760:	d1 fb                	sar    %ebx
  401762:	01 f3                	add    %esi,%ebx
  401764:	39 fb                	cmp    %edi,%ebx
  401766:	7f 0a                	jg     401772 <func4+0x2a>
  401768:	7c 16                	jl     401780 <func4+0x38>
  40176a:	89 d8                	mov    %ebx,%eax
  40176c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401770:	c9                   	leaveq 
  401771:	c3                   	retq   
  401772:	8d 53 ff             	lea    -0x1(%rbx),%edx
  401775:	e8 ce ff ff ff       	callq  401748 <func4>
  40177a:	d1 fb                	sar    %ebx
  40177c:	01 c3                	add    %eax,%ebx
  40177e:	eb ea                	jmp    40176a <func4+0x22>
  401780:	8d 73 01             	lea    0x1(%rbx),%esi
  401783:	e8 c0 ff ff ff       	callq  401748 <func4>
  401788:	8d 1c 58             	lea    (%rax,%rbx,2),%ebx
  40178b:	eb dd                	jmp    40176a <func4+0x22>

000000000040178d <phase_4>:
  40178d:	f3 0f 1e fa          	endbr64 
  401791:	55                   	push   %rbp
  401792:	48 89 e5             	mov    %rsp,%rbp
  401795:	48 83 ec 10          	sub    $0x10,%rsp
  401799:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
  40179d:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
  4017a1:	be c3 23 40 00       	mov    $0x4023c3,%esi
  4017a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4017ab:	e8 a0 f9 ff ff       	callq  401150 <__isoc99_sscanf@plt>
  4017b0:	83 f8 02             	cmp    $0x2,%eax
  4017b3:	75 0d                	jne    4017c2 <phase_4+0x35>
  4017b5:	8b 7d fc             	mov    -0x4(%rbp),%edi
  4017b8:	83 ff 0a             	cmp    $0xa,%edi
  4017bb:	7e 05                	jle    4017c2 <phase_4+0x35>
  4017bd:	83 ff 26             	cmp    $0x26,%edi
  4017c0:	7e 0c                	jle    4017ce <phase_4+0x41>
  4017c2:	e8 09 04 00 00       	callq  401bd0 <explode_bomb>
  4017c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4017cc:	c9                   	leaveq 
  4017cd:	c3                   	retq   
  4017ce:	ba 26 00 00 00       	mov    $0x26,%edx
  4017d3:	be 0b 00 00 00       	mov    $0xb,%esi
  4017d8:	e8 6b ff ff ff       	callq  401748 <func4>
  4017dd:	39 45 f8             	cmp    %eax,-0x8(%rbp)
  4017e0:	75 07                	jne    4017e9 <phase_4+0x5c>
  4017e2:	b8 01 00 00 00       	mov    $0x1,%eax
  4017e7:	eb e3                	jmp    4017cc <phase_4+0x3f>
  4017e9:	e8 e2 03 00 00       	callq  401bd0 <explode_bomb>
  4017ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4017f3:	eb d7                	jmp    4017cc <phase_4+0x3f>

00000000004017f5 <phase_5>:
  4017f5:	f3 0f 1e fa          	endbr64 
  4017f9:	55                   	push   %rbp
  4017fa:	48 89 e5             	mov    %rsp,%rbp
  4017fd:	53                   	push   %rbx
  4017fe:	48 83 ec 18          	sub    $0x18,%rsp
  401802:	48 89 fb             	mov    %rdi,%rbx
  401805:	e8 9a 02 00 00       	callq  401aa4 <string_length>
  40180a:	83 f8 06             	cmp    $0x6,%eax
  40180d:	75 07                	jne    401816 <phase_5+0x21>
  40180f:	b8 00 00 00 00       	mov    $0x0,%eax
  401814:	eb 24                	jmp    40183a <phase_5+0x45>
  401816:	e8 b5 03 00 00       	callq  401bd0 <explode_bomb>
  40181b:	b8 00 00 00 00       	mov    $0x0,%eax
  401820:	eb 38                	jmp    40185a <phase_5+0x65>
  401822:	48 63 c8             	movslq %eax,%rcx
  401825:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx
  401829:	83 e2 0f             	and    $0xf,%edx
  40182c:	0f b6 92 40 22 40 00 	movzbl 0x402240(%rdx),%edx
  401833:	88 54 0d e9          	mov    %dl,-0x17(%rbp,%rcx,1)
  401837:	83 c0 01             	add    $0x1,%eax
  40183a:	83 f8 05             	cmp    $0x5,%eax
  40183d:	7e e3                	jle    401822 <phase_5+0x2d>
  40183f:	c6 45 ef 00          	movb   $0x0,-0x11(%rbp)
  401843:	be e0 21 40 00       	mov    $0x4021e0,%esi
  401848:	48 8d 7d e9          	lea    -0x17(%rbp),%rdi
  40184c:	e8 6b 02 00 00       	callq  401abc <strings_not_equal>
  401851:	85 c0                	test   %eax,%eax
  401853:	75 0b                	jne    401860 <phase_5+0x6b>
  401855:	b8 01 00 00 00       	mov    $0x1,%eax
  40185a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40185e:	c9                   	leaveq 
  40185f:	c3                   	retq   
  401860:	e8 6b 03 00 00       	callq  401bd0 <explode_bomb>
  401865:	b8 00 00 00 00       	mov    $0x0,%eax
  40186a:	eb ee                	jmp    40185a <phase_5+0x65>

000000000040186c <phase_6>:
  40186c:	f3 0f 1e fa          	endbr64 
  401870:	55                   	push   %rbp
  401871:	48 89 e5             	mov    %rsp,%rbp
  401874:	48 83 ec 50          	sub    $0x50,%rsp
  401878:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  40187c:	e8 81 03 00 00       	callq  401c02 <read_six_numbers>
  401881:	85 c0                	test   %eax,%eax
  401883:	74 47                	je     4018cc <phase_6+0x60>
  401885:	be 00 00 00 00       	mov    $0x0,%esi
  40188a:	83 fe 05             	cmp    $0x5,%esi
  40188d:	7f 3f                	jg     4018ce <phase_6+0x62>
  40188f:	48 63 c6             	movslq %esi,%rax
  401892:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx
  401896:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401899:	83 f8 05             	cmp    $0x5,%eax
  40189c:	77 18                	ja     4018b6 <phase_6+0x4a>
  40189e:	83 c6 01             	add    $0x1,%esi
  4018a1:	89 f0                	mov    %esi,%eax
  4018a3:	83 f8 05             	cmp    $0x5,%eax
  4018a6:	7f e2                	jg     40188a <phase_6+0x1e>
  4018a8:	48 63 d0             	movslq %eax,%rdx
  4018ab:	3b 4c 95 e0          	cmp    -0x20(%rbp,%rdx,4),%ecx
  4018af:	74 11                	je     4018c2 <phase_6+0x56>
  4018b1:	83 c0 01             	add    $0x1,%eax
  4018b4:	eb ed                	jmp    4018a3 <phase_6+0x37>
  4018b6:	e8 15 03 00 00       	callq  401bd0 <explode_bomb>
  4018bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4018c0:	eb 0a                	jmp    4018cc <phase_6+0x60>
  4018c2:	e8 09 03 00 00       	callq  401bd0 <explode_bomb>
  4018c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018cc:	c9                   	leaveq 
  4018cd:	c3                   	retq   
  4018ce:	be 00 00 00 00       	mov    $0x0,%esi
  4018d3:	eb 18                	jmp    4018ed <phase_6+0x81>
  4018d5:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  4018d9:	83 c0 01             	add    $0x1,%eax
  4018dc:	48 63 ce             	movslq %esi,%rcx
  4018df:	39 44 8d e0          	cmp    %eax,-0x20(%rbp,%rcx,4)
  4018e3:	7f f0                	jg     4018d5 <phase_6+0x69>
  4018e5:	48 89 54 cd b0       	mov    %rdx,-0x50(%rbp,%rcx,8)
  4018ea:	83 c6 01             	add    $0x1,%esi
  4018ed:	83 fe 05             	cmp    $0x5,%esi
  4018f0:	7f 0c                	jg     4018fe <phase_6+0x92>
  4018f2:	b8 01 00 00 00       	mov    $0x1,%eax
  4018f7:	ba 80 42 40 00       	mov    $0x404280,%edx
  4018fc:	eb de                	jmp    4018dc <phase_6+0x70>
  4018fe:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  401902:	48 89 d6             	mov    %rdx,%rsi
  401905:	b8 01 00 00 00       	mov    $0x1,%eax
  40190a:	eb 12                	jmp    40191e <phase_6+0xb2>
  40190c:	48 63 c8             	movslq %eax,%rcx
  40190f:	48 8b 4c cd b0       	mov    -0x50(%rbp,%rcx,8),%rcx
  401914:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401918:	83 c0 01             	add    $0x1,%eax
  40191b:	48 89 ce             	mov    %rcx,%rsi
  40191e:	83 f8 05             	cmp    $0x5,%eax
  401921:	7e e9                	jle    40190c <phase_6+0xa0>
  401923:	48 c7 46 08 00 00 00 	movq   $0x0,0x8(%rsi)
  40192a:	00 
  40192b:	b8 00 00 00 00       	mov    $0x0,%eax
  401930:	83 f8 04             	cmp    $0x4,%eax
  401933:	7f 1e                	jg     401953 <phase_6+0xe7>
  401935:	8b 0a                	mov    (%rdx),%ecx
  401937:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  40193b:	3b 0a                	cmp    (%rdx),%ecx
  40193d:	7c 05                	jl     401944 <phase_6+0xd8>
  40193f:	83 c0 01             	add    $0x1,%eax
  401942:	eb ec                	jmp    401930 <phase_6+0xc4>
  401944:	e8 87 02 00 00       	callq  401bd0 <explode_bomb>
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e9 79 ff ff ff       	jmpq   4018cc <phase_6+0x60>
  401953:	b8 01 00 00 00       	mov    $0x1,%eax
  401958:	e9 6f ff ff ff       	jmpq   4018cc <phase_6+0x60>

000000000040195d <fun7>:
  40195d:	f3 0f 1e fa          	endbr64 
  401961:	48 85 ff             	test   %rdi,%rdi
  401964:	74 2f                	je     401995 <fun7+0x38>
  401966:	55                   	push   %rbp
  401967:	48 89 e5             	mov    %rsp,%rbp
  40196a:	8b 07                	mov    (%rdi),%eax
  40196c:	39 f0                	cmp    %esi,%eax
  40196e:	7f 09                	jg     401979 <fun7+0x1c>
  401970:	75 14                	jne    401986 <fun7+0x29>
  401972:	b8 00 00 00 00       	mov    $0x0,%eax
  401977:	5d                   	pop    %rbp
  401978:	c3                   	retq   
  401979:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40197d:	e8 db ff ff ff       	callq  40195d <fun7>
  401982:	01 c0                	add    %eax,%eax
  401984:	eb f1                	jmp    401977 <fun7+0x1a>
  401986:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  40198a:	e8 ce ff ff ff       	callq  40195d <fun7>
  40198f:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401993:	eb e2                	jmp    401977 <fun7+0x1a>
  401995:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40199a:	c3                   	retq   

000000000040199b <secret_phase>:
  40199b:	f3 0f 1e fa          	endbr64 
  40199f:	55                   	push   %rbp
  4019a0:	48 89 e5             	mov    %rsp,%rbp
  4019a3:	e8 2f 03 00 00       	callq  401cd7 <read_line>
  4019a8:	48 89 c7             	mov    %rax,%rdi
  4019ab:	ba 0a 00 00 00       	mov    $0xa,%edx
  4019b0:	be 00 00 00 00       	mov    $0x0,%esi
  4019b5:	e8 76 f7 ff ff       	callq  401130 <strtol@plt>
  4019ba:	89 c6                	mov    %eax,%esi
  4019bc:	83 e8 01             	sub    $0x1,%eax
  4019bf:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  4019c4:	77 1b                	ja     4019e1 <secret_phase+0x46>
  4019c6:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  4019cb:	e8 8d ff ff ff       	callq  40195d <fun7>
  4019d0:	83 f8 03             	cmp    $0x3,%eax
  4019d3:	74 18                	je     4019ed <secret_phase+0x52>
  4019d5:	e8 f6 01 00 00       	callq  401bd0 <explode_bomb>
  4019da:	b8 00 00 00 00       	mov    $0x0,%eax
  4019df:	eb 0a                	jmp    4019eb <secret_phase+0x50>
  4019e1:	e8 ea 01 00 00       	callq  401bd0 <explode_bomb>
  4019e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019eb:	5d                   	pop    %rbp
  4019ec:	c3                   	retq   
  4019ed:	be b0 21 40 00       	mov    $0x4021b0,%esi
  4019f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4019fc:	e8 6f f7 ff ff       	callq  401170 <__printf_chk@plt>
  401a01:	e8 2d 04 00 00       	callq  401e33 <phase_defused>
  401a06:	b8 01 00 00 00       	mov    $0x1,%eax
  401a0b:	eb de                	jmp    4019eb <secret_phase+0x50>

0000000000401a0d <sig_handler>:
  401a0d:	f3 0f 1e fa          	endbr64 
  401a11:	55                   	push   %rbp
  401a12:	48 89 e5             	mov    %rsp,%rbp
  401a15:	be 88 22 40 00       	mov    $0x402288,%esi
  401a1a:	bf 01 00 00 00       	mov    $0x1,%edi
  401a1f:	b8 00 00 00 00       	mov    $0x0,%eax
  401a24:	e8 47 f7 ff ff       	callq  401170 <__printf_chk@plt>
  401a29:	bf 03 00 00 00       	mov    $0x3,%edi
  401a2e:	e8 7d f7 ff ff       	callq  4011b0 <sleep@plt>
  401a33:	be 73 23 40 00       	mov    $0x402373,%esi
  401a38:	bf 01 00 00 00       	mov    $0x1,%edi
  401a3d:	b8 00 00 00 00       	mov    $0x0,%eax
  401a42:	e8 29 f7 ff ff       	callq  401170 <__printf_chk@plt>
  401a47:	48 8b 3d 52 29 00 00 	mov    0x2952(%rip),%rdi        # 4043a0 <stdout@@GLIBC_2.2.5>
  401a4e:	e8 ed f6 ff ff       	callq  401140 <fflush@plt>
  401a53:	bf 01 00 00 00       	mov    $0x1,%edi
  401a58:	e8 53 f7 ff ff       	callq  4011b0 <sleep@plt>
  401a5d:	be 7b 23 40 00       	mov    $0x40237b,%esi
  401a62:	bf 01 00 00 00       	mov    $0x1,%edi
  401a67:	b8 00 00 00 00       	mov    $0x0,%eax
  401a6c:	e8 ff f6 ff ff       	callq  401170 <__printf_chk@plt>
  401a71:	bf 10 00 00 00       	mov    $0x10,%edi
  401a76:	e8 25 f7 ff ff       	callq  4011a0 <exit@plt>

0000000000401a7b <invalid_phase>:
  401a7b:	f3 0f 1e fa          	endbr64 
  401a7f:	55                   	push   %rbp
  401a80:	48 89 e5             	mov    %rsp,%rbp
  401a83:	48 89 fa             	mov    %rdi,%rdx
  401a86:	be 84 23 40 00       	mov    $0x402384,%esi
  401a8b:	bf 01 00 00 00       	mov    $0x1,%edi
  401a90:	b8 00 00 00 00       	mov    $0x0,%eax
  401a95:	e8 d6 f6 ff ff       	callq  401170 <__printf_chk@plt>
  401a9a:	bf 08 00 00 00       	mov    $0x8,%edi
  401a9f:	e8 fc f6 ff ff       	callq  4011a0 <exit@plt>

0000000000401aa4 <string_length>:
  401aa4:	f3 0f 1e fa          	endbr64 
  401aa8:	b8 00 00 00 00       	mov    $0x0,%eax
  401aad:	eb 07                	jmp    401ab6 <string_length+0x12>
  401aaf:	48 83 c7 01          	add    $0x1,%rdi
  401ab3:	83 c0 01             	add    $0x1,%eax
  401ab6:	80 3f 00             	cmpb   $0x0,(%rdi)
  401ab9:	75 f4                	jne    401aaf <string_length+0xb>
  401abb:	c3                   	retq   

0000000000401abc <strings_not_equal>:
  401abc:	f3 0f 1e fa          	endbr64 
  401ac0:	55                   	push   %rbp
  401ac1:	48 89 e5             	mov    %rsp,%rbp
  401ac4:	41 55                	push   %r13
  401ac6:	41 54                	push   %r12
  401ac8:	53                   	push   %rbx
  401ac9:	48 83 ec 08          	sub    $0x8,%rsp
  401acd:	48 89 fb             	mov    %rdi,%rbx
  401ad0:	49 89 f4             	mov    %rsi,%r12
  401ad3:	e8 cc ff ff ff       	callq  401aa4 <string_length>
  401ad8:	41 89 c5             	mov    %eax,%r13d
  401adb:	4c 89 e7             	mov    %r12,%rdi
  401ade:	e8 c1 ff ff ff       	callq  401aa4 <string_length>
  401ae3:	41 39 c5             	cmp    %eax,%r13d
  401ae6:	74 18                	je     401b00 <strings_not_equal+0x44>
  401ae8:	b8 01 00 00 00       	mov    $0x1,%eax
  401aed:	48 83 c4 08          	add    $0x8,%rsp
  401af1:	5b                   	pop    %rbx
  401af2:	41 5c                	pop    %r12
  401af4:	41 5d                	pop    %r13
  401af6:	5d                   	pop    %rbp
  401af7:	c3                   	retq   
  401af8:	48 83 c3 01          	add    $0x1,%rbx
  401afc:	49 83 c4 01          	add    $0x1,%r12
  401b00:	0f b6 03             	movzbl (%rbx),%eax
  401b03:	84 c0                	test   %al,%al
  401b05:	74 0d                	je     401b14 <strings_not_equal+0x58>
  401b07:	41 38 04 24          	cmp    %al,(%r12)
  401b0b:	74 eb                	je     401af8 <strings_not_equal+0x3c>
  401b0d:	b8 01 00 00 00       	mov    $0x1,%eax
  401b12:	eb d9                	jmp    401aed <strings_not_equal+0x31>
  401b14:	b8 00 00 00 00       	mov    $0x0,%eax
  401b19:	eb d2                	jmp    401aed <strings_not_equal+0x31>

0000000000401b1b <initialize_bomb>:
  401b1b:	f3 0f 1e fa          	endbr64 
  401b1f:	55                   	push   %rbp
  401b20:	48 89 e5             	mov    %rsp,%rbp
  401b23:	be 0d 1a 40 00       	mov    $0x401a0d,%esi
  401b28:	bf 02 00 00 00       	mov    $0x2,%edi
  401b2d:	e8 ee f5 ff ff       	callq  401120 <signal@plt>
  401b32:	5d                   	pop    %rbp
  401b33:	c3                   	retq   

0000000000401b34 <initialize_bomb_solve>:
  401b34:	f3 0f 1e fa          	endbr64 
  401b38:	c3                   	retq   

0000000000401b39 <blank_line>:
  401b39:	f3 0f 1e fa          	endbr64 
  401b3d:	55                   	push   %rbp
  401b3e:	48 89 e5             	mov    %rsp,%rbp
  401b41:	41 54                	push   %r12
  401b43:	53                   	push   %rbx
  401b44:	49 89 fc             	mov    %rdi,%r12
  401b47:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  401b4c:	84 db                	test   %bl,%bl
  401b4e:	74 1e                	je     401b6e <blank_line+0x35>
  401b50:	e8 6b f6 ff ff       	callq  4011c0 <__ctype_b_loc@plt>
  401b55:	48 8b 00             	mov    (%rax),%rax
  401b58:	49 83 c4 01          	add    $0x1,%r12
  401b5c:	48 0f be db          	movsbq %bl,%rbx
  401b60:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401b65:	75 e0                	jne    401b47 <blank_line+0xe>
  401b67:	b8 00 00 00 00       	mov    $0x0,%eax
  401b6c:	eb 05                	jmp    401b73 <blank_line+0x3a>
  401b6e:	b8 01 00 00 00       	mov    $0x1,%eax
  401b73:	5b                   	pop    %rbx
  401b74:	41 5c                	pop    %r12
  401b76:	5d                   	pop    %rbp
  401b77:	c3                   	retq   

0000000000401b78 <skip>:
  401b78:	f3 0f 1e fa          	endbr64 
  401b7c:	55                   	push   %rbp
  401b7d:	48 89 e5             	mov    %rsp,%rbp
  401b80:	53                   	push   %rbx
  401b81:	48 83 ec 08          	sub    $0x8,%rsp
  401b85:	48 63 05 a4 28 00 00 	movslq 0x28a4(%rip),%rax        # 404430 <num_input_strings>
  401b8c:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401b90:	48 c1 e7 04          	shl    $0x4,%rdi
  401b94:	48 81 c7 40 44 40 00 	add    $0x404440,%rdi
  401b9b:	48 8b 0d 1e 28 00 00 	mov    0x281e(%rip),%rcx        # 4043c0 <infile>
  401ba2:	ba 50 00 00 00       	mov    $0x50,%edx
  401ba7:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  401bae:	e8 ad f5 ff ff       	callq  401160 <__fgets_chk@plt>
  401bb3:	48 89 c3             	mov    %rax,%rbx
  401bb6:	48 85 c0             	test   %rax,%rax
  401bb9:	74 0c                	je     401bc7 <skip+0x4f>
  401bbb:	48 89 c7             	mov    %rax,%rdi
  401bbe:	e8 76 ff ff ff       	callq  401b39 <blank_line>
  401bc3:	85 c0                	test   %eax,%eax
  401bc5:	75 be                	jne    401b85 <skip+0xd>
  401bc7:	48 89 d8             	mov    %rbx,%rax
  401bca:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401bce:	c9                   	leaveq 
  401bcf:	c3                   	retq   

0000000000401bd0 <explode_bomb>:
  401bd0:	f3 0f 1e fa          	endbr64 
  401bd4:	55                   	push   %rbp
  401bd5:	48 89 e5             	mov    %rsp,%rbp
  401bd8:	be 95 23 40 00       	mov    $0x402395,%esi
  401bdd:	bf 01 00 00 00       	mov    $0x1,%edi
  401be2:	b8 00 00 00 00       	mov    $0x0,%eax
  401be7:	e8 84 f5 ff ff       	callq  401170 <__printf_chk@plt>
  401bec:	be 9f 23 40 00       	mov    $0x40239f,%esi
  401bf1:	bf 01 00 00 00       	mov    $0x1,%edi
  401bf6:	b8 00 00 00 00       	mov    $0x0,%eax
  401bfb:	e8 70 f5 ff ff       	callq  401170 <__printf_chk@plt>
  401c00:	5d                   	pop    %rbp
  401c01:	c3                   	retq   

0000000000401c02 <read_six_numbers>:
  401c02:	f3 0f 1e fa          	endbr64 
  401c06:	55                   	push   %rbp
  401c07:	48 89 e5             	mov    %rsp,%rbp
  401c0a:	48 89 f2             	mov    %rsi,%rdx
  401c0d:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401c11:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401c15:	50                   	push   %rax
  401c16:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401c1a:	50                   	push   %rax
  401c1b:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401c1f:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401c23:	be b7 23 40 00       	mov    $0x4023b7,%esi
  401c28:	b8 00 00 00 00       	mov    $0x0,%eax
  401c2d:	e8 1e f5 ff ff       	callq  401150 <__isoc99_sscanf@plt>
  401c32:	48 83 c4 10          	add    $0x10,%rsp
  401c36:	83 f8 05             	cmp    $0x5,%eax
  401c39:	7e 07                	jle    401c42 <read_six_numbers+0x40>
  401c3b:	b8 01 00 00 00       	mov    $0x1,%eax
  401c40:	c9                   	leaveq 
  401c41:	c3                   	retq   
  401c42:	e8 89 ff ff ff       	callq  401bd0 <explode_bomb>
  401c47:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4c:	eb f2                	jmp    401c40 <read_six_numbers+0x3e>

0000000000401c4e <read_n_numbers>:
  401c4e:	f3 0f 1e fa          	endbr64 
  401c52:	55                   	push   %rbp
  401c53:	48 89 e5             	mov    %rsp,%rbp
  401c56:	41 56                	push   %r14
  401c58:	41 55                	push   %r13
  401c5a:	41 54                	push   %r12
  401c5c:	53                   	push   %rbx
  401c5d:	49 89 fe             	mov    %rdi,%r14
  401c60:	49 89 f5             	mov    %rsi,%r13
  401c63:	41 89 d4             	mov    %edx,%r12d
  401c66:	bb 00 00 00 00       	mov    $0x0,%ebx
  401c6b:	eb 33                	jmp    401ca0 <read_n_numbers+0x52>
  401c6d:	be c9 23 40 00       	mov    $0x4023c9,%esi
  401c72:	4c 89 f7             	mov    %r14,%rdi
  401c75:	e8 16 f5 ff ff       	callq  401190 <strtok@plt>
  401c7a:	48 89 c7             	mov    %rax,%rdi
  401c7d:	48 85 ff             	test   %rdi,%rdi
  401c80:	74 3b                	je     401cbd <read_n_numbers+0x6f>
  401c82:	48 63 c3             	movslq %ebx,%rax
  401c85:	49 8d 54 85 00       	lea    0x0(%r13,%rax,4),%rdx
  401c8a:	be dd 21 40 00       	mov    $0x4021dd,%esi
  401c8f:	b8 00 00 00 00       	mov    $0x0,%eax
  401c94:	e8 b7 f4 ff ff       	callq  401150 <__isoc99_sscanf@plt>
  401c99:	85 c0                	test   %eax,%eax
  401c9b:	7e 20                	jle    401cbd <read_n_numbers+0x6f>
  401c9d:	83 c3 01             	add    $0x1,%ebx
  401ca0:	44 39 e3             	cmp    %r12d,%ebx
  401ca3:	7d 2b                	jge    401cd0 <read_n_numbers+0x82>
  401ca5:	85 db                	test   %ebx,%ebx
  401ca7:	74 c4                	je     401c6d <read_n_numbers+0x1f>
  401ca9:	be c9 23 40 00       	mov    $0x4023c9,%esi
  401cae:	bf 00 00 00 00       	mov    $0x0,%edi
  401cb3:	e8 d8 f4 ff ff       	callq  401190 <strtok@plt>
  401cb8:	48 89 c7             	mov    %rax,%rdi
  401cbb:	eb c0                	jmp    401c7d <read_n_numbers+0x2f>
  401cbd:	e8 0e ff ff ff       	callq  401bd0 <explode_bomb>
  401cc2:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc7:	5b                   	pop    %rbx
  401cc8:	41 5c                	pop    %r12
  401cca:	41 5d                	pop    %r13
  401ccc:	41 5e                	pop    %r14
  401cce:	5d                   	pop    %rbp
  401ccf:	c3                   	retq   
  401cd0:	b8 01 00 00 00       	mov    $0x1,%eax
  401cd5:	eb f0                	jmp    401cc7 <read_n_numbers+0x79>

0000000000401cd7 <read_line>:
  401cd7:	f3 0f 1e fa          	endbr64 
  401cdb:	55                   	push   %rbp
  401cdc:	48 89 e5             	mov    %rsp,%rbp
  401cdf:	53                   	push   %rbx
  401ce0:	48 83 ec 08          	sub    $0x8,%rsp
  401ce4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce9:	e8 8a fe ff ff       	callq  401b78 <skip>
  401cee:	48 85 c0             	test   %rax,%rax
  401cf1:	74 66                	je     401d59 <read_line+0x82>
  401cf3:	48 63 05 36 27 00 00 	movslq 0x2736(%rip),%rax        # 404430 <num_input_strings>
  401cfa:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401cfe:	48 c1 e7 04          	shl    $0x4,%rdi
  401d02:	48 81 c7 40 44 40 00 	add    $0x404440,%rdi
  401d09:	e8 02 f4 ff ff       	callq  401110 <strlen@plt>
  401d0e:	48 89 c3             	mov    %rax,%rbx
  401d11:	83 f8 4e             	cmp    $0x4e,%eax
  401d14:	0f 8f c0 00 00 00    	jg     401dda <read_line+0x103>
  401d1a:	8b 15 10 27 00 00    	mov    0x2710(%rip),%edx        # 404430 <num_input_strings>
  401d20:	83 eb 01             	sub    $0x1,%ebx
  401d23:	48 63 db             	movslq %ebx,%rbx
  401d26:	48 63 ca             	movslq %edx,%rcx
  401d29:	48 8d 04 8d 00 00 00 	lea    0x0(,%rcx,4),%rax
  401d30:	00 
  401d31:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  401d35:	48 c1 e6 04          	shl    $0x4,%rsi
  401d39:	c6 84 33 40 44 40 00 	movb   $0x0,0x404440(%rbx,%rsi,1)
  401d40:	00 
  401d41:	83 c2 01             	add    $0x1,%edx
  401d44:	89 15 e6 26 00 00    	mov    %edx,0x26e6(%rip)        # 404430 <num_input_strings>
  401d4a:	48 89 f0             	mov    %rsi,%rax
  401d4d:	48 05 40 44 40 00    	add    $0x404440,%rax
  401d53:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401d57:	c9                   	leaveq 
  401d58:	c3                   	retq   
  401d59:	48 8b 05 50 26 00 00 	mov    0x2650(%rip),%rax        # 4043b0 <stdin@@GLIBC_2.2.5>
  401d60:	48 39 05 59 26 00 00 	cmp    %rax,0x2659(%rip)        # 4043c0 <infile>
  401d67:	74 49                	je     401db2 <read_line+0xdb>
  401d69:	bf cd 23 40 00       	mov    $0x4023cd,%edi
  401d6e:	e8 8d f3 ff ff       	callq  401100 <getenv@plt>
  401d73:	48 85 c0             	test   %rax,%rax
  401d76:	75 58                	jne    401dd0 <read_line+0xf9>
  401d78:	48 8b 05 31 26 00 00 	mov    0x2631(%rip),%rax        # 4043b0 <stdin@@GLIBC_2.2.5>
  401d7f:	48 89 05 3a 26 00 00 	mov    %rax,0x263a(%rip)        # 4043c0 <infile>
  401d86:	b8 00 00 00 00       	mov    $0x0,%eax
  401d8b:	e8 e8 fd ff ff       	callq  401b78 <skip>
  401d90:	48 85 c0             	test   %rax,%rax
  401d93:	0f 85 5a ff ff ff    	jne    401cf3 <read_line+0x1c>
  401d99:	be c8 22 40 00       	mov    $0x4022c8,%esi
  401d9e:	bf 01 00 00 00       	mov    $0x1,%edi
  401da3:	e8 c8 f3 ff ff       	callq  401170 <__printf_chk@plt>
  401da8:	bf 00 00 00 00       	mov    $0x0,%edi
  401dad:	e8 ee f3 ff ff       	callq  4011a0 <exit@plt>
  401db2:	be c8 22 40 00       	mov    $0x4022c8,%esi
  401db7:	bf 01 00 00 00       	mov    $0x1,%edi
  401dbc:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc1:	e8 aa f3 ff ff       	callq  401170 <__printf_chk@plt>
  401dc6:	bf 08 00 00 00       	mov    $0x8,%edi
  401dcb:	e8 d0 f3 ff ff       	callq  4011a0 <exit@plt>
  401dd0:	bf 00 00 00 00       	mov    $0x0,%edi
  401dd5:	e8 c6 f3 ff ff       	callq  4011a0 <exit@plt>
  401dda:	be d8 23 40 00       	mov    $0x4023d8,%esi
  401ddf:	bf 01 00 00 00       	mov    $0x1,%edi
  401de4:	b8 00 00 00 00       	mov    $0x0,%eax
  401de9:	e8 82 f3 ff ff       	callq  401170 <__printf_chk@plt>
  401dee:	8b 05 3c 26 00 00    	mov    0x263c(%rip),%eax        # 404430 <num_input_strings>
  401df4:	8d 50 01             	lea    0x1(%rax),%edx
  401df7:	89 15 33 26 00 00    	mov    %edx,0x2633(%rip)        # 404430 <num_input_strings>
  401dfd:	48 98                	cltq   
  401dff:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401e03:	48 c1 e0 04          	shl    $0x4,%rax
  401e07:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
  401e0e:	75 6e 63 
  401e11:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  401e18:	2a 2a 00 
  401e1b:	48 89 b0 40 44 40 00 	mov    %rsi,0x404440(%rax)
  401e22:	48 89 b8 48 44 40 00 	mov    %rdi,0x404448(%rax)
  401e29:	e8 a2 fd ff ff       	callq  401bd0 <explode_bomb>
  401e2e:	e9 e7 fe ff ff       	jmpq   401d1a <read_line+0x43>

0000000000401e33 <phase_defused>:
  401e33:	f3 0f 1e fa          	endbr64 
  401e37:	83 3d f2 25 00 00 07 	cmpl   $0x7,0x25f2(%rip)        # 404430 <num_input_strings>
  401e3e:	74 01                	je     401e41 <phase_defused+0xe>
  401e40:	c3                   	retq   
  401e41:	55                   	push   %rbp
  401e42:	48 89 e5             	mov    %rsp,%rbp
  401e45:	48 83 ec 60          	sub    $0x60,%rsp
  401e49:	4c 8d 45 b0          	lea    -0x50(%rbp),%r8
  401e4d:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
  401e51:	48 8d 55 ac          	lea    -0x54(%rbp),%rdx
  401e55:	be f4 23 40 00       	mov    $0x4023f4,%esi
  401e5a:	bf 80 45 40 00       	mov    $0x404580,%edi
  401e5f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e64:	e8 e7 f2 ff ff       	callq  401150 <__isoc99_sscanf@plt>
  401e69:	83 f8 03             	cmp    $0x3,%eax
  401e6c:	74 16                	je     401e84 <phase_defused+0x51>
  401e6e:	be 48 23 40 00       	mov    $0x402348,%esi
  401e73:	bf 01 00 00 00       	mov    $0x1,%edi
  401e78:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7d:	e8 ee f2 ff ff       	callq  401170 <__printf_chk@plt>
  401e82:	c9                   	leaveq 
  401e83:	c3                   	retq   
  401e84:	be fd 23 40 00       	mov    $0x4023fd,%esi
  401e89:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  401e8d:	e8 2a fc ff ff       	callq  401abc <strings_not_equal>
  401e92:	85 c0                	test   %eax,%eax
  401e94:	75 d8                	jne    401e6e <phase_defused+0x3b>
  401e96:	be e8 22 40 00       	mov    $0x4022e8,%esi
  401e9b:	bf 01 00 00 00       	mov    $0x1,%edi
  401ea0:	e8 cb f2 ff ff       	callq  401170 <__printf_chk@plt>
  401ea5:	be 10 23 40 00       	mov    $0x402310,%esi
  401eaa:	bf 01 00 00 00       	mov    $0x1,%edi
  401eaf:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb4:	e8 b7 f2 ff ff       	callq  401170 <__printf_chk@plt>
  401eb9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ebe:	e8 d8 fa ff ff       	callq  40199b <secret_phase>
  401ec3:	eb a9                	jmp    401e6e <phase_defused+0x3b>

Disassembly of section .rodata:

0000000000402000 <_IO_stdin_used>:
  402000:	01 00 02 00 72 00 25 73 3a 20 45 72 72 6f 72 3a     ....r.%s: Error:
  402010:	20 43 6f 75 6c 64 6e 27 74 20 6f 70 65 6e 20 25      Couldn't open %
  402020:	73 0a 00 55 73 61 67 65 3a 20 25 73 20 5b 3c 69     s..Usage: %s [<i
  402030:	6e 70 75 74 5f 66 69 6c 65 3e 5d 0a 00 48 61 6c     nput_file>]..Hal
  402040:	66 77 61 79 20 74 68 65 72 65 21 0a 00 00 00 00     fway there!.....
  402050:	57 65 6c 63 6f 6d 65 20 74 6f 20 6d 79 20 66 69     Welcome to my fi
  402060:	65 6e 64 69 73 68 20 6c 69 74 74 6c 65 20 62 6f     endish little bo
  402070:	6d 62 2e 20 59 6f 75 20 68 61 76 65 20 37 20 70     mb. You have 7 p
  402080:	68 61 73 65 73 20 77 69 74 68 0a 00 00 00 00 00     hases with......
  402090:	77 68 69 63 68 20 74 6f 20 62 6c 6f 77 20 79 6f     which to blow yo
  4020a0:	75 72 73 65 6c 66 20 75 70 2e 20 48 61 76 65 20     urself up. Have 
  4020b0:	61 20 6e 69 63 65 20 64 61 79 21 0a 00 00 00 00     a nice day!.....
  4020c0:	57 65 6c 6c 20 64 6f 6e 65 21 20 59 6f 75 20 73     Well done! You s
  4020d0:	65 65 6d 20 74 6f 20 68 61 76 65 20 77 61 72 6d     eem to have warm
  4020e0:	65 64 20 75 70 21 0a 00 50 68 61 73 65 20 31 20     ed up!..Phase 1 
  4020f0:	64 65 66 75 73 65 64 2e 20 48 6f 77 20 61 62 6f     defused. How abo
  402100:	75 74 20 74 68 65 20 6e 65 78 74 20 6f 6e 65 3f     ut the next one?
  402110:	0a 00 00 00 00 00 00 00 54 68 61 74 27 73 20 6e     ........That's n
  402120:	75 6d 62 65 72 20 32 2e 20 20 4b 65 65 70 20 67     umber 2.  Keep g
  402130:	6f 69 6e 67 21 0a 00 00 53 6f 20 79 6f 75 20 67     oing!...So you g
  402140:	6f 74 20 74 68 61 74 20 6f 6e 65 2e 20 20 54 72     ot that one.  Tr
  402150:	79 20 74 68 69 73 20 6f 6e 65 2e 0a 00 00 00 00     y this one......
  402160:	47 6f 6f 64 20 77 6f 72 6b 21 20 20 4f 6e 20 74     Good work!  On t
  402170:	6f 20 74 68 65 20 6e 65 78 74 2e 2e 2e 0a 00 00     o the next......
  402180:	53 68 61 72 65 64 20 76 61 72 69 61 62 6c 65 73     Shared variables
  402190:	20 63 61 6e 20 62 65 20 63 6f 6e 76 65 6e 69 65      can be convenie
  4021a0:	6e 74 20 6f 72 20 6e 61 73 74 79 2e 00 00 00 00     nt or nasty.....
  4021b0:	57 6f 77 21 20 59 6f 75 27 76 65 20 64 65 66 75     Wow! You've defu
  4021c0:	73 65 64 20 74 68 65 20 73 65 63 72 65 74 20 73     sed the secret s
  4021d0:	74 61 67 65 21 0a 00 25 64 20 25 63 20 25 64 00     tage!..%d %c %d.
  4021e0:	6f 6a 61 68 64 70 00 32 30 32 33 33 31 31 33 32     ojahdp.202331132
  4021f0:	33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     3...............
  402200:	2a 16 40 00 00 00 00 00 54 16 40 00 00 00 00 00     *.@.....T.@.....
  402210:	70 16 40 00 00 00 00 00 8c 16 40 00 00 00 00 00     p.@.......@.....
  402220:	a8 16 40 00 00 00 00 00 c4 16 40 00 00 00 00 00     ..@.......@.....
  402230:	e6 16 40 00 00 00 00 00 08 17 40 00 00 00 00 00     ..@.......@.....

0000000000402240 <array.0>:
  402240:	65 61 68 6a 66 70 6c 6f 69 67 6b 6e 62 63 64 6d     eahjfploigknbcdm
	...

0000000000402260 <secret_passward>:
  402260:	56 35 56 6b 68 37 71 59 49 4b 5a 4b 46 56 52 44     V5Vkh7qYIKZKFVRD
  402270:	6d 6f 45 30 36 65 4b 64 6c 4e 49 47 32 44 47 36     moE06eKdlNIG2DG6
  402280:	70 73 6e 00 00 00 00 00 53 6f 20 79 6f 75 20 74     psn.....So you t
  402290:	68 69 6e 6b 20 79 6f 75 20 63 61 6e 20 73 74 6f     hink you can sto
  4022a0:	70 20 74 68 65 20 62 6f 6d 62 20 77 69 74 68 20     p the bomb with 
  4022b0:	63 74 72 6c 2d 63 2c 20 64 6f 20 79 6f 75 3f 0a     ctrl-c, do you?.
	...
  4022c8:	45 72 72 6f 72 3a 20 50 72 65 6d 61 74 75 72 65     Error: Premature
  4022d8:	20 45 4f 46 20 6f 6e 20 73 74 64 69 6e 0a 00 00      EOF on stdin...
  4022e8:	43 75 72 73 65 73 2c 20 79 6f 75 27 76 65 20 66     Curses, you've f
  4022f8:	6f 75 6e 64 20 74 68 65 20 73 65 63 72 65 74 20     ound the secret 
  402308:	70 68 61 73 65 21 0a 00 42 75 74 20 66 69 6e 64     phase!..But find
  402318:	69 6e 67 20 69 74 20 61 6e 64 20 73 6f 6c 76 69     ing it and solvi
  402328:	6e 67 20 69 74 20 61 72 65 20 71 75 69 74 65 20     ng it are quite 
  402338:	64 69 66 66 65 72 65 6e 74 2e 2e 2e 0a 00 00 00     different.......
  402348:	43 6f 6e 67 72 61 74 75 6c 61 74 69 6f 6e 73 21     Congratulations!
  402358:	20 59 6f 75 27 76 65 20 64 65 66 75 73 65 64 20      You've defused 
  402368:	74 68 65 20 62 6f 6d 62 21 0a 00 57 65 6c 6c 2e     the bomb!..Well.
  402378:	2e 2e 00 4f 4b 2e 20 3a 2d 29 0a 00 49 6e 76 61     ...OK. :-)..Inva
  402388:	6c 69 64 20 70 68 61 73 65 25 73 0a 00 0a 42 4f     lid phase%s...BO
  402398:	4f 4d 21 21 21 0a 00 54 68 65 20 62 6f 6d 62 20     OM!!!..The bomb 
  4023a8:	68 61 73 20 62 6c 6f 77 6e 20 75 70 2e 0a 00 25     has blown up...%
  4023b8:	64 20 25 64 20 25 64 20 25 64 20 25 64 20 25 64     d %d %d %d %d %d
  4023c8:	00 2c 20 09 00 47 52 41 44 45 5f 42 4f 4d 42 00     ., ..GRADE_BOMB.
  4023d8:	45 72 72 6f 72 3a 20 49 6e 70 75 74 20 6c 69 6e     Error: Input lin
  4023e8:	65 20 74 6f 6f 20 6c 6f 6e 67 0a 00 25 64 20 25     e too long..%d %
  4023f8:	64 20 25 73 00 43 4a 61 77 69 73 71 00              d %s.CJawisq.

Disassembly of section .data:

0000000000404080 <__data_start>:
	...

0000000000404088 <__dso_handle>:
	...

00000000004040a0 <n1>:
  4040a0:	24 00 00 00 00 00 00 00 c0 40 40 00 00 00 00 00     $........@@.....
  4040b0:	e0 40 40 00 00 00 00 00 00 00 00 00 00 00 00 00     .@@.............

00000000004040c0 <n21>:
  4040c0:	08 00 00 00 00 00 00 00 40 41 40 00 00 00 00 00     ........@A@.....
  4040d0:	00 41 40 00 00 00 00 00 00 00 00 00 00 00 00 00     .A@.............

00000000004040e0 <n22>:
  4040e0:	32 00 00 00 00 00 00 00 20 41 40 00 00 00 00 00     2....... A@.....
  4040f0:	60 41 40 00 00 00 00 00 00 00 00 00 00 00 00 00     `A@.............

0000000000404100 <n32>:
  404100:	16 00 00 00 00 00 00 00 20 42 40 00 00 00 00 00     ........ B@.....
  404110:	e0 41 40 00 00 00 00 00 00 00 00 00 00 00 00 00     .A@.............

0000000000404120 <n33>:
  404120:	2d 00 00 00 00 00 00 00 80 41 40 00 00 00 00 00     -........A@.....
  404130:	40 42 40 00 00 00 00 00 00 00 00 00 00 00 00 00     @B@.............

0000000000404140 <n31>:
  404140:	06 00 00 00 00 00 00 00 a0 41 40 00 00 00 00 00     .........A@.....
  404150:	00 42 40 00 00 00 00 00 00 00 00 00 00 00 00 00     .B@.............

0000000000404160 <n34>:
  404160:	6b 00 00 00 00 00 00 00 c0 41 40 00 00 00 00 00     k........A@.....
  404170:	60 42 40 00 00 00 00 00 00 00 00 00 00 00 00 00     `B@.............

0000000000404180 <n45>:
  404180:	28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     (...............
	...

00000000004041a0 <n41>:
  4041a0:	01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................
	...

00000000004041c0 <n47>:
  4041c0:	63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     c...............
	...

00000000004041e0 <n44>:
  4041e0:	23 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     #...............
	...

0000000000404200 <n42>:
  404200:	07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................
	...

0000000000404220 <n43>:
  404220:	14 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................
	...

0000000000404240 <n46>:
  404240:	2f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     /...............
	...

0000000000404260 <n48>:
  404260:	e9 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................
	...

0000000000404280 <node1>:
  404280:	08 00 00 00 01 00 00 00 90 42 40 00 00 00 00 00     .........B@.....

0000000000404290 <node2>:
  404290:	04 00 00 00 02 00 00 00 a0 42 40 00 00 00 00 00     .........B@.....

00000000004042a0 <node3>:
  4042a0:	05 00 00 00 03 00 00 00 b0 42 40 00 00 00 00 00     .........B@.....

00000000004042b0 <node4>:
  4042b0:	09 00 00 00 04 00 00 00 c0 42 40 00 00 00 00 00     .........B@.....

00000000004042c0 <node5>:
  4042c0:	07 00 00 00 05 00 00 00 d0 42 40 00 00 00 00 00     .........B@.....

00000000004042d0 <node6>:
  4042d0:	02 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00     ................

00000000004042e0 <JmHspE>:
  4042e0:	1b a1 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................
	...

0000000000404390 <bomb_id>:
  404390:	e7 21 40 00 00 00 00 00                             .!@.....
