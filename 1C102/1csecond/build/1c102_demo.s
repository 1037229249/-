
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438010f 	lu12i.w	$r15,114696(0x1c008)
1c00000c:	038fc1ef 	ori	$r15,$r15,0x3f0
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038111ef 	ori	$r15,$r15,0x44
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	039851ad 	ori	$r13,$r13,0x614
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	543b1800 	bl	15128(0x3b18) # 1c004ba8 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543b6000 	bl	15200(0x3b60) # 1c004bf8 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543bec00 	bl	15340(0x3bec) # 1c004c8c <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543c2000 	bl	15392(0x3c20) # 1c004cc8 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	543a4000 	bl	14912(0x3a40) # 1c004af0 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543ea800 	bl	16040(0x3ea8) # 1c004f60 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543cd800 	bl	15576(0x3cd8) # 1c004da0 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b68084 	ld.w	$r4,$r4,-608(0xda0)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017c00 	bl	380(0x17c) # 1c0014cc <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54016400 	bl	356(0x164) # 1c0014cc <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014c00 	bl	332(0x14c) # 1c0014cc <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54013800 	bl	312(0x138) # 1c0014cc <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54012000 	bl	288(0x120) # 1c0014cc <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	54215c00 	bl	8540(0x215c) # 1c003530 <DisableInt>
1c0013d8:	5420bc00 	bl	8380(0x20bc) # 1c003494 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	5428c400 	bl	10436(0x28c4) # 1c003ca4 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54280400 	bl	10244(0x2804) # 1c003bec <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54195800 	bl	6488(0x1958) # 1c002d4c <Uart0_init>
1c0013f8:	1400002c 	lu12i.w	$r12,1(0x1)
1c0013fc:	038b0184 	ori	$r4,$r12,0x2c0
1c001400:	541a1c00 	bl	6684(0x1a1c) # 1c002e1c <Uart1_init>
1c001404:	54232000 	bl	8992(0x2320) # 1c003724 <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	54212c00 	bl	8492(0x212c) # 1c003554 <EnableInt>
1c00142c:	5423c000 	bl	9152(0x23c0) # 1c0037ec <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	54218800 	bl	8584(0x2188) # 1c0035bc <Wake_Set>
1c001438:	54284000 	bl	10304(0x2840) # 1c003c78 <WDG_DogFeed>
1c00143c:	54222c00 	bl	8748(0x222c) # 1c003668 <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001450:	02af4084 	addi.w	$r4,$r4,-1072(0xbd0)
1c001454:	540a0000 	bl	2560(0xa00) # 1c001e54 <myprintf>
1c001458:	54227c00 	bl	8828(0x227c) # 1c0036d4 <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001468:	02af2084 	addi.w	$r4,$r4,-1080(0xbc8)
1c00146c:	5409e800 	bl	2536(0x9e8) # 1c001e54 <myprintf>
1c001470:	543b2800 	bl	15144(0x3b28) # 1c004f98 <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001488:	02aed084 	addi.w	$r4,$r4,-1100(0xbb4)
1c00148c:	5409c800 	bl	2504(0x9c8) # 1c001e54 <myprintf>
1c001490:	543b0800 	bl	15112(0x3b08) # 1c004f98 <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0014a8:	02ae9084 	addi.w	$r4,$r4,-1116(0xba4)
1c0014ac:	5409a800 	bl	2472(0x9a8) # 1c001e54 <myprintf>
1c0014b0:	57fd37ff 	bl	-716(0xffffd34) # 1c0011e4 <cpu_sleep>
1c0014b4:	0015000c 	move	$r12,$r0
1c0014b8:	00150184 	move	$r4,$r12
1c0014bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014c8:	4c000020 	jirl	$r0,$r1,0

1c0014cc <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014d0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014dc:	001500ac 	move	$r12,$r5
1c0014e0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014e4:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014f0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014f8:	2880018c 	ld.w	$r12,$r12,0
1c0014fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001500:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c001504:	50006c00 	b	108(0x6c) # 1c001570 <AFIO_RemapConfig+0xa4>
1c001508:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00150c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001510:	001831ac 	sra.w	$r12,$r13,$r12
1c001514:	0340058c 	andi	$r12,$r12,0x1
1c001518:	40004d80 	beqz	$r12,76(0x4c) # 1c001564 <AFIO_RemapConfig+0x98>
1c00151c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001520:	0040858c 	slli.w	$r12,$r12,0x1
1c001524:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001528:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00152c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001530:	001731ac 	sll.w	$r12,$r13,$r12
1c001534:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001538:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00153c:	0014300c 	nor	$r12,$r0,$r12
1c001540:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001544:	0014b1ac 	and	$r12,$r13,$r12
1c001548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00154c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001550:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001554:	001731ac 	sll.w	$r12,$r13,$r12
1c001558:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00155c:	001531ac 	or	$r12,$r13,$r12
1c001560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001564:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001568:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00156c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001570:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001574:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c001578:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c001508 <AFIO_RemapConfig+0x3c>
1c00157c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001580:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001584:	2980018d 	st.w	$r13,$r12,0
1c001588:	03400000 	andi	$r0,$r0,0x0
1c00158c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001590:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001594:	4c000020 	jirl	$r0,$r1,0

1c001598 <GPIO_Init>:
GPIO_Init():
1c001598:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00159c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0015a0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0015a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015a8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0015ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015b0:	2a00018d 	ld.bu	$r13,$r12,0
1c0015b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015b8:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c0015bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015c0:	00150185 	move	$r5,$r12
1c0015c4:	001501a4 	move	$r4,$r13
1c0015c8:	54010000 	bl	256(0x100) # 1c0016c8 <gpio_pin_remap>
1c0015cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015d0:	2a00018d 	ld.bu	$r13,$r12,0
1c0015d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015d8:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0015dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015e0:	00150185 	move	$r5,$r12
1c0015e4:	001501a4 	move	$r4,$r13
1c0015e8:	5402ec00 	bl	748(0x2ec) # 1c0018d4 <gpio_set_direction>
1c0015ec:	03400000 	andi	$r0,$r0,0x0
1c0015f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0015f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0015f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015fc:	4c000020 	jirl	$r0,$r1,0

1c001600 <gpio_get_pin>:
gpio_get_pin():
1c001600:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001604:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001608:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00160c:	0015008c 	move	$r12,$r4
1c001610:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001614:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00161c:	0382018c 	ori	$r12,$r12,0x80
1c001620:	001031ac 	add.w	$r12,$r13,$r12
1c001624:	29000180 	st.b	$r0,$r12,0
1c001628:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00162c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001630:	0382018c 	ori	$r12,$r12,0x80
1c001634:	001031ac 	add.w	$r12,$r13,$r12
1c001638:	2a00018c 	ld.bu	$r12,$r12,0
1c00163c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001640:	00150184 	move	$r4,$r12
1c001644:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001648:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00164c:	4c000020 	jirl	$r0,$r1,0

1c001650 <gpio_write_pin>:
gpio_write_pin():
1c001650:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001654:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001658:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00165c:	0015008c 	move	$r12,$r4
1c001660:	001500ad 	move	$r13,$r5
1c001664:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001668:	001501ac 	move	$r12,$r13
1c00166c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001670:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c001674:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001678:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c00169c <gpio_write_pin+0x4c>
1c00167c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001680:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001684:	0382018c 	ori	$r12,$r12,0x80
1c001688:	001031ac 	add.w	$r12,$r13,$r12
1c00168c:	0015018d 	move	$r13,$r12
1c001690:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001694:	290001ac 	st.b	$r12,$r13,0
1c001698:	50002000 	b	32(0x20) # 1c0016b8 <gpio_write_pin+0x68>
1c00169c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0016a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016a4:	0382018c 	ori	$r12,$r12,0x80
1c0016a8:	001031ac 	add.w	$r12,$r13,$r12
1c0016ac:	0015018d 	move	$r13,$r12
1c0016b0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016b4:	290001ac 	st.b	$r12,$r13,0
1c0016b8:	03400000 	andi	$r0,$r0,0x0
1c0016bc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0016c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0016c4:	4c000020 	jirl	$r0,$r1,0

1c0016c8 <gpio_pin_remap>:
gpio_pin_remap():
1c0016c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0016cc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0016d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0016d4:	0015008c 	move	$r12,$r4
1c0016d8:	001500ad 	move	$r13,$r5
1c0016dc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0016e0:	001501ac 	move	$r12,$r13
1c0016e4:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0016e8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0016ec:	0044918c 	srli.w	$r12,$r12,0x4
1c0016f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0016f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0016f8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0016fc:	03403d8c 	andi	$r12,$r12,0xf
1c001700:	0040858c 	slli.w	$r12,$r12,0x1
1c001704:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001708:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00170c:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c001710:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c0018c4 <gpio_pin_remap+0x1fc>
1c001714:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001718:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00171c:	580089ac 	beq	$r13,$r12,136(0x88) # 1c0017a4 <gpio_pin_remap+0xdc>
1c001720:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001724:	40002180 	beqz	$r12,32(0x20) # 1c001744 <gpio_pin_remap+0x7c>
1c001728:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00172c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001730:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c001804 <gpio_pin_remap+0x13c>
1c001734:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001738:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00173c:	580129ac 	beq	$r13,$r12,296(0x128) # 1c001864 <gpio_pin_remap+0x19c>
1c001740:	50018800 	b	392(0x188) # 1c0018c8 <gpio_pin_remap+0x200>
1c001744:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001748:	0380418c 	ori	$r12,$r12,0x10
1c00174c:	2880018d 	ld.w	$r13,$r12,0
1c001750:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001754:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001758:	001731cc 	sll.w	$r12,$r14,$r12
1c00175c:	0014300c 	nor	$r12,$r0,$r12
1c001760:	0015018e 	move	$r14,$r12
1c001764:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001768:	0380418c 	ori	$r12,$r12,0x10
1c00176c:	0014b9ad 	and	$r13,$r13,$r14
1c001770:	2980018d 	st.w	$r13,$r12,0
1c001774:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001778:	0380418c 	ori	$r12,$r12,0x10
1c00177c:	2880018d 	ld.w	$r13,$r12,0
1c001780:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001784:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001788:	001731cc 	sll.w	$r12,$r14,$r12
1c00178c:	0015018e 	move	$r14,$r12
1c001790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001794:	0380418c 	ori	$r12,$r12,0x10
1c001798:	001539ad 	or	$r13,$r13,$r14
1c00179c:	2980018d 	st.w	$r13,$r12,0
1c0017a0:	50012800 	b	296(0x128) # 1c0018c8 <gpio_pin_remap+0x200>
1c0017a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017a8:	0380518c 	ori	$r12,$r12,0x14
1c0017ac:	2880018d 	ld.w	$r13,$r12,0
1c0017b0:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017b8:	001731cc 	sll.w	$r12,$r14,$r12
1c0017bc:	0014300c 	nor	$r12,$r0,$r12
1c0017c0:	0015018e 	move	$r14,$r12
1c0017c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c8:	0380518c 	ori	$r12,$r12,0x14
1c0017cc:	0014b9ad 	and	$r13,$r13,$r14
1c0017d0:	2980018d 	st.w	$r13,$r12,0
1c0017d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d8:	0380518c 	ori	$r12,$r12,0x14
1c0017dc:	2880018d 	ld.w	$r13,$r12,0
1c0017e0:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017e8:	001731cc 	sll.w	$r12,$r14,$r12
1c0017ec:	0015018e 	move	$r14,$r12
1c0017f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017f4:	0380518c 	ori	$r12,$r12,0x14
1c0017f8:	001539ad 	or	$r13,$r13,$r14
1c0017fc:	2980018d 	st.w	$r13,$r12,0
1c001800:	5000c800 	b	200(0xc8) # 1c0018c8 <gpio_pin_remap+0x200>
1c001804:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001808:	0380618c 	ori	$r12,$r12,0x18
1c00180c:	2880018d 	ld.w	$r13,$r12,0
1c001810:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001814:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001818:	001731cc 	sll.w	$r12,$r14,$r12
1c00181c:	0014300c 	nor	$r12,$r0,$r12
1c001820:	0015018e 	move	$r14,$r12
1c001824:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001828:	0380618c 	ori	$r12,$r12,0x18
1c00182c:	0014b9ad 	and	$r13,$r13,$r14
1c001830:	2980018d 	st.w	$r13,$r12,0
1c001834:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001838:	0380618c 	ori	$r12,$r12,0x18
1c00183c:	2880018d 	ld.w	$r13,$r12,0
1c001840:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001844:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001848:	001731cc 	sll.w	$r12,$r14,$r12
1c00184c:	0015018e 	move	$r14,$r12
1c001850:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001854:	0380618c 	ori	$r12,$r12,0x18
1c001858:	001539ad 	or	$r13,$r13,$r14
1c00185c:	2980018d 	st.w	$r13,$r12,0
1c001860:	50006800 	b	104(0x68) # 1c0018c8 <gpio_pin_remap+0x200>
1c001864:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001868:	0380718c 	ori	$r12,$r12,0x1c
1c00186c:	2880018d 	ld.w	$r13,$r12,0
1c001870:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001874:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001878:	001731cc 	sll.w	$r12,$r14,$r12
1c00187c:	0014300c 	nor	$r12,$r0,$r12
1c001880:	0015018e 	move	$r14,$r12
1c001884:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001888:	0380718c 	ori	$r12,$r12,0x1c
1c00188c:	0014b9ad 	and	$r13,$r13,$r14
1c001890:	2980018d 	st.w	$r13,$r12,0
1c001894:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001898:	0380718c 	ori	$r12,$r12,0x1c
1c00189c:	2880018d 	ld.w	$r13,$r12,0
1c0018a0:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0018a8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018ac:	0015018e 	move	$r14,$r12
1c0018b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018b4:	0380718c 	ori	$r12,$r12,0x1c
1c0018b8:	001539ad 	or	$r13,$r13,$r14
1c0018bc:	2980018d 	st.w	$r13,$r12,0
1c0018c0:	50000800 	b	8(0x8) # 1c0018c8 <gpio_pin_remap+0x200>
1c0018c4:	03400000 	andi	$r0,$r0,0x0
1c0018c8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0018cc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0018d0:	4c000020 	jirl	$r0,$r1,0

1c0018d4 <gpio_set_direction>:
gpio_set_direction():
1c0018d4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0018d8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0018dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0018e0:	0015008c 	move	$r12,$r4
1c0018e4:	001500ad 	move	$r13,$r5
1c0018e8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0018ec:	001501ac 	move	$r12,$r13
1c0018f0:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0018f4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0018f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0018fc:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001900:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001904:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c001968 <gpio_set_direction+0x94>
1c001908:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00190c:	0381018c 	ori	$r12,$r12,0x40
1c001910:	2880018d 	ld.w	$r13,$r12,0
1c001914:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001918:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00191c:	001731cc 	sll.w	$r12,$r14,$r12
1c001920:	0014300c 	nor	$r12,$r0,$r12
1c001924:	0015018e 	move	$r14,$r12
1c001928:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00192c:	0381018c 	ori	$r12,$r12,0x40
1c001930:	0014b9ad 	and	$r13,$r13,$r14
1c001934:	2980018d 	st.w	$r13,$r12,0
1c001938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00193c:	0381018c 	ori	$r12,$r12,0x40
1c001940:	2880018d 	ld.w	$r13,$r12,0
1c001944:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001948:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00194c:	001731cc 	sll.w	$r12,$r14,$r12
1c001950:	0015018e 	move	$r14,$r12
1c001954:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001958:	0381018c 	ori	$r12,$r12,0x40
1c00195c:	001539ad 	or	$r13,$r13,$r14
1c001960:	2980018d 	st.w	$r13,$r12,0
1c001964:	50008c00 	b	140(0x8c) # 1c0019f0 <gpio_set_direction+0x11c>
1c001968:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00196c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001970:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c0019ec <gpio_set_direction+0x118>
1c001974:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001978:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c00197c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c0019ec <gpio_set_direction+0x118>
1c001980:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001984:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001988:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00198c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001990:	0381418c 	ori	$r12,$r12,0x50
1c001994:	2880018d 	ld.w	$r13,$r12,0
1c001998:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00199c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019a0:	001731cc 	sll.w	$r12,$r14,$r12
1c0019a4:	0014300c 	nor	$r12,$r0,$r12
1c0019a8:	0015018e 	move	$r14,$r12
1c0019ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019b0:	0381418c 	ori	$r12,$r12,0x50
1c0019b4:	0014b9ad 	and	$r13,$r13,$r14
1c0019b8:	2980018d 	st.w	$r13,$r12,0
1c0019bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019c0:	0381418c 	ori	$r12,$r12,0x50
1c0019c4:	2880018d 	ld.w	$r13,$r12,0
1c0019c8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0019cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019d0:	001731cc 	sll.w	$r12,$r14,$r12
1c0019d4:	0015018e 	move	$r14,$r12
1c0019d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019dc:	0381418c 	ori	$r12,$r12,0x50
1c0019e0:	001539ad 	or	$r13,$r13,$r14
1c0019e4:	2980018d 	st.w	$r13,$r12,0
1c0019e8:	50000800 	b	8(0x8) # 1c0019f0 <gpio_set_direction+0x11c>
1c0019ec:	03400000 	andi	$r0,$r0,0x0
1c0019f0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0019f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0019f8:	4c000020 	jirl	$r0,$r1,0

1c0019fc <Spi_Init>:
Spi_Init():
1c0019fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001a00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001a04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001a08:	0015008c 	move	$r12,$r4
1c001a0c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001a10:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001a14:	0281400d 	addi.w	$r13,$r0,80(0x50)
1c001a18:	2900018d 	st.b	$r13,$r12,0
1c001a1c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001a20:	29000d80 	st.b	$r0,$r12,3(0x3)
1c001a24:	03400000 	andi	$r0,$r0,0x0
1c001a28:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001a2c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001a30:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a34:	0340118c 	andi	$r12,$r12,0x4
1c001a38:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001a28 <Spi_Init+0x2c>
1c001a3c:	50000c00 	b	12(0xc) # 1c001a48 <Spi_Init+0x4c>
1c001a40:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001a44:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c001a48:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001a4c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001a50:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a54:	0340058c 	andi	$r12,$r12,0x1
1c001a58:	43ffe99f 	beqz	$r12,-24(0x7fffe8) # 1c001a40 <Spi_Init+0x44>
1c001a5c:	03400000 	andi	$r0,$r0,0x0
1c001a60:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001a64:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001a68:	4c000020 	jirl	$r0,$r1,0

1c001a6c <Spi_Write_Read_1to4>:
Spi_Write_Read_1to4():
1c001a6c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001a70:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001a74:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001a78:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001a7c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001a80:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a84:	50002800 	b	40(0x28) # 1c001aac <Spi_Write_Read_1to4+0x40>
1c001a88:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001a8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a90:	001031ad 	add.w	$r13,$r13,$r12
1c001a94:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001a98:	2a0001ad 	ld.bu	$r13,$r13,0
1c001a9c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001aa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001aa4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001aa8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001aac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001ab0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001ab4:	6bffd5ac 	bltu	$r13,$r12,-44(0x3ffd4) # 1c001a88 <Spi_Write_Read_1to4+0x1c>
1c001ab8:	03400000 	andi	$r0,$r0,0x0
1c001abc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ac0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001ac4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ac8:	0340118c 	andi	$r12,$r12,0x4
1c001acc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001abc <Spi_Write_Read_1to4+0x50>
1c001ad0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001ad4:	50002c00 	b	44(0x2c) # 1c001b00 <Spi_Write_Read_1to4+0x94>
1c001ad8:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c001adc:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c001ae0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ae4:	001031cc 	add.w	$r12,$r14,$r12
1c001ae8:	2a0009ad 	ld.bu	$r13,$r13,2(0x2)
1c001aec:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001af0:	2900018d 	st.b	$r13,$r12,0
1c001af4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001af8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001afc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b00:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001b04:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b08:	0015018d 	move	$r13,$r12
1c001b0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b10:	6bffc98d 	bltu	$r12,$r13,-56(0x3ffc8) # 1c001ad8 <Spi_Write_Read_1to4+0x6c>
1c001b14:	03400000 	andi	$r0,$r0,0x0
1c001b18:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001b1c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001b20:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b24:	0340058c 	andi	$r12,$r12,0x1
1c001b28:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c001b18 <Spi_Write_Read_1to4+0xac>
1c001b2c:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c001b30:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001b34:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b38:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c001b3c:	001031cc 	add.w	$r12,$r14,$r12
1c001b40:	2a0009ad 	ld.bu	$r13,$r13,2(0x2)
1c001b44:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001b48:	2900018d 	st.b	$r13,$r12,0
1c001b4c:	03400000 	andi	$r0,$r0,0x0
1c001b50:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001b54:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b58:	4c000020 	jirl	$r0,$r1,0

1c001b5c <Spi_Cs_Down>:
Spi_Cs_Down():
1c001b5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b60:	29803076 	st.w	$r22,$r3,12(0xc)
1c001b64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001b68:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001b6c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001b70:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001b74:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001b78:	038009ad 	ori	$r13,$r13,0x2
1c001b7c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001b80:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001b84:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001b88:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001b8c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c001b90:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001b94:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c001b98:	0014b5cd 	and	$r13,$r14,$r13
1c001b9c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001ba0:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001ba4:	03400000 	andi	$r0,$r0,0x0
1c001ba8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001bac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bb0:	4c000020 	jirl	$r0,$r1,0

1c001bb4 <Spi_Cs_Up>:
Spi_Cs_Up():
1c001bb4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bb8:	29803076 	st.w	$r22,$r3,12(0xc)
1c001bbc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001bc0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001bc4:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001bc8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001bcc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001bd0:	038009ad 	ori	$r13,$r13,0x2
1c001bd4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001bd8:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001bdc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001be0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001be4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001be8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001bec:	038081ad 	ori	$r13,$r13,0x20
1c001bf0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001bf4:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001bf8:	03400000 	andi	$r0,$r0,0x0
1c001bfc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001c00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c04:	4c000020 	jirl	$r0,$r1,0

1c001c08 <Spi_Send>:
Spi_Send():
1c001c08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c0c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001c10:	29806076 	st.w	$r22,$r3,24(0x18)
1c001c14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c18:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001c1c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c001c20:	57ff3fff 	bl	-196(0xfffff3c) # 1c001b5c <Spi_Cs_Down>
1c001c24:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c001c28:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c001c2c:	57fe43ff 	bl	-448(0xffffe40) # 1c001a6c <Spi_Write_Read_1to4>
1c001c30:	57ff87ff 	bl	-124(0xfffff84) # 1c001bb4 <Spi_Cs_Up>
1c001c34:	03400000 	andi	$r0,$r0,0x0
1c001c38:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001c3c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001c40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c44:	4c000020 	jirl	$r0,$r1,0

1c001c48 <myputchar>:
myputchar():
1c001c48:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c4c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001c50:	29806076 	st.w	$r22,$r3,24(0x18)
1c001c54:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c58:	0015008c 	move	$r12,$r4
1c001c5c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001c64:	00150185 	move	$r5,$r12
1c001c68:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c001c6c:	540fe400 	bl	4068(0xfe4) # 1c002c50 <UART_SendData>
1c001c70:	03400000 	andi	$r0,$r0,0x0
1c001c74:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001c78:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001c7c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c80:	4c000020 	jirl	$r0,$r1,0

1c001c84 <printbase>:
printbase():
1c001c84:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c001c88:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c001c8c:	2981a076 	st.w	$r22,$r3,104(0x68)
1c001c90:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c001c94:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001c98:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001c9c:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001ca0:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ca4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001ca8:	40002580 	beqz	$r12,36(0x24) # 1c001ccc <printbase+0x48>
1c001cac:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001cb0:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001ccc <printbase+0x48>
1c001cb4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001cb8:	0011300c 	sub.w	$r12,$r0,$r12
1c001cbc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001cc0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001cc4:	57ff87ff 	bl	-124(0xfffff84) # 1c001c48 <myputchar>
1c001cc8:	50000c00 	b	12(0xc) # 1c001cd4 <printbase+0x50>
1c001ccc:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001cd0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001cd4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001cd8:	50005000 	b	80(0x50) # 1c001d28 <printbase+0xa4>
1c001cdc:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001ce0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001ce4:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001ce8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001cf0 <printbase+0x6c>
1c001cec:	002a0007 	break	0x7
1c001cf0:	00005dcc 	ext.w.b	$r12,$r14
1c001cf4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001cf8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001cfc:	001035cd 	add.w	$r13,$r14,$r13
1c001d00:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001d04:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001d08:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001d0c:	002135cc 	div.wu	$r12,$r14,$r13
1c001d10:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001d18 <printbase+0x94>
1c001d14:	002a0007 	break	0x7
1c001d18:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001d1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d28:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001d2c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001cdc <printbase+0x58>
1c001d30:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001d34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001d38:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001d3c:	001231ad 	slt	$r13,$r13,$r12
1c001d40:	0013b5ce 	masknez	$r14,$r14,$r13
1c001d44:	0013358c 	maskeqz	$r12,$r12,$r13
1c001d48:	001531cc 	or	$r12,$r14,$r12
1c001d4c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d50:	50007400 	b	116(0x74) # 1c001dc4 <printbase+0x140>
1c001d54:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001d58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d5c:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001d78 <printbase+0xf4>
1c001d60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d64:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001d68:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001d6c:	001031ac 	add.w	$r12,$r13,$r12
1c001d70:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001d74:	50000800 	b	8(0x8) # 1c001d7c <printbase+0xf8>
1c001d78:	0015000c 	move	$r12,$r0
1c001d7c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001d80:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001d84:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001d88:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001da0 <printbase+0x11c>
1c001d8c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001d90:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001d94:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001d98:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001d9c:	50001400 	b	20(0x14) # 1c001db0 <printbase+0x12c>
1c001da0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001da4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001da8:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001dac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001db0:	00150184 	move	$r4,$r12
1c001db4:	57fe97ff 	bl	-364(0xffffe94) # 1c001c48 <myputchar>
1c001db8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dbc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001dc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001dc4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dc8:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001d54 <printbase+0xd0>
1c001dcc:	0015000c 	move	$r12,$r0
1c001dd0:	00150184 	move	$r4,$r12
1c001dd4:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001dd8:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001ddc:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001de0:	4c000020 	jirl	$r0,$r1,0

1c001de4 <puts>:
puts():
1c001de4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001de8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001dec:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001df0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001df4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001df8:	50003000 	b	48(0x30) # 1c001e28 <puts+0x44>
1c001dfc:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001e00:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e04:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001e10 <puts+0x2c>
1c001e08:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001e0c:	57fe3fff 	bl	-452(0xffffe3c) # 1c001c48 <myputchar>
1c001e10:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e14:	00150184 	move	$r4,$r12
1c001e18:	57fe33ff 	bl	-464(0xffffe30) # 1c001c48 <myputchar>
1c001e1c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001e20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e24:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001e28:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001e2c:	2a00018c 	ld.bu	$r12,$r12,0
1c001e30:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e34:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001e38:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001dfc <puts+0x18>
1c001e3c:	0015000c 	move	$r12,$r0
1c001e40:	00150184 	move	$r4,$r12
1c001e44:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001e48:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001e4c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001e50:	4c000020 	jirl	$r0,$r1,0

1c001e54 <myprintf>:
myprintf():
1c001e54:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001e58:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001e5c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001e60:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001e64:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001e68:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001e6c:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001e70:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001e74:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001e78:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001e7c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001e80:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001e84:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001e88:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001e8c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001e90:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001e94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e98:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001e9c:	50033000 	b	816(0x330) # 1c0021cc <myprintf+0x378>
1c001ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ea4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ea8:	001031ac 	add.w	$r12,$r13,$r12
1c001eac:	2a00018c 	ld.bu	$r12,$r12,0
1c001eb0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001eb4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001eb8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001ebc:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c0021a0 <myprintf+0x34c>
1c001ec0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001ec4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ec8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ecc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ed0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ed4:	001031ac 	add.w	$r12,$r13,$r12
1c001ed8:	2800018c 	ld.b	$r12,$r12,0
1c001edc:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001ee0:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001ee4:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c002190 <myprintf+0x33c>
1c001ee8:	0040898d 	slli.w	$r13,$r12,0x2
1c001eec:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001ef0:	0285a18c 	addi.w	$r12,$r12,360(0x168)
1c001ef4:	001031ac 	add.w	$r12,$r13,$r12
1c001ef8:	2880018c 	ld.w	$r12,$r12,0
1c001efc:	4c000180 	jirl	$r0,$r12,0
1c001f00:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f04:	2880018c 	ld.w	$r12,$r12,0
1c001f08:	00150184 	move	$r4,$r12
1c001f0c:	57fedbff 	bl	-296(0xffffed8) # 1c001de4 <puts>
1c001f10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f14:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001f18:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001f1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f28:	50029800 	b	664(0x298) # 1c0021c0 <myprintf+0x36c>
1c001f2c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f30:	2880018c 	ld.w	$r12,$r12,0
1c001f34:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001f38:	00150184 	move	$r4,$r12
1c001f3c:	57fd0fff 	bl	-756(0xffffd0c) # 1c001c48 <myputchar>
1c001f40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f44:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001f48:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001f4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f58:	50026800 	b	616(0x268) # 1c0021c0 <myprintf+0x36c>
1c001f5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f60:	2880018c 	ld.w	$r12,$r12,0
1c001f64:	00150007 	move	$r7,$r0
1c001f68:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001f6c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001f70:	00150184 	move	$r4,$r12
1c001f74:	57fd13ff 	bl	-752(0xffffd10) # 1c001c84 <printbase>
1c001f78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f7c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001f80:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001f84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f8c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f90:	50023000 	b	560(0x230) # 1c0021c0 <myprintf+0x36c>
1c001f94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f98:	2880018c 	ld.w	$r12,$r12,0
1c001f9c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001fa0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001fa4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001fa8:	00150184 	move	$r4,$r12
1c001fac:	57fcdbff 	bl	-808(0xffffcd8) # 1c001c84 <printbase>
1c001fb0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001fb4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001fb8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fc8:	5001f800 	b	504(0x1f8) # 1c0021c0 <myprintf+0x36c>
1c001fcc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001fd0:	2880018c 	ld.w	$r12,$r12,0
1c001fd4:	00150007 	move	$r7,$r0
1c001fd8:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001fdc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001fe0:	00150184 	move	$r4,$r12
1c001fe4:	57fca3ff 	bl	-864(0xffffca0) # 1c001c84 <printbase>
1c001fe8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001fec:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001ff0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ff4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ff8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ffc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002000:	5001c000 	b	448(0x1c0) # 1c0021c0 <myprintf+0x36c>
1c002004:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002008:	2880018c 	ld.w	$r12,$r12,0
1c00200c:	00150007 	move	$r7,$r0
1c002010:	02800806 	addi.w	$r6,$r0,2(0x2)
1c002014:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c002018:	00150184 	move	$r4,$r12
1c00201c:	57fc6bff 	bl	-920(0xffffc68) # 1c001c84 <printbase>
1c002020:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002024:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002028:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00202c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002030:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002034:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002038:	50018800 	b	392(0x188) # 1c0021c0 <myprintf+0x36c>
1c00203c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002040:	2880018c 	ld.w	$r12,$r12,0
1c002044:	00150007 	move	$r7,$r0
1c002048:	02804006 	addi.w	$r6,$r0,16(0x10)
1c00204c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c002050:	00150184 	move	$r4,$r12
1c002054:	57fc33ff 	bl	-976(0xffffc30) # 1c001c84 <printbase>
1c002058:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00205c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002060:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002064:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002068:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00206c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002070:	50015000 	b	336(0x150) # 1c0021c0 <myprintf+0x36c>
1c002074:	02809404 	addi.w	$r4,$r0,37(0x25)
1c002078:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001c48 <myputchar>
1c00207c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002080:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002084:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002088:	50013800 	b	312(0x138) # 1c0021c0 <myprintf+0x36c>
1c00208c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002090:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002094:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002098:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00209c:	50003c00 	b	60(0x3c) # 1c0020d8 <myprintf+0x284>
1c0020a0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0020a4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0020a8:	001c31ad 	mul.w	$r13,$r13,$r12
1c0020ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020b4:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c0020b8:	001031cc 	add.w	$r12,$r14,$r12
1c0020bc:	2800018c 	ld.b	$r12,$r12,0
1c0020c0:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0020c4:	001031ac 	add.w	$r12,$r13,$r12
1c0020c8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0020cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0020d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020e0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0020e4:	001031ac 	add.w	$r12,$r13,$r12
1c0020e8:	2800018d 	ld.b	$r13,$r12,0
1c0020ec:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0020f0:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001ec8 <myprintf+0x74>
1c0020f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020fc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002100:	001031ac 	add.w	$r12,$r13,$r12
1c002104:	2800018d 	ld.b	$r13,$r12,0
1c002108:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c00210c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0020a0 <myprintf+0x24c>
1c002110:	53fdbbff 	b	-584(0xffffdb8) # 1c001ec8 <myprintf+0x74>
1c002114:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002118:	50003c00 	b	60(0x3c) # 1c002154 <myprintf+0x300>
1c00211c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002120:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002124:	001c31ad 	mul.w	$r13,$r13,$r12
1c002128:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00212c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002130:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c002134:	001031cc 	add.w	$r12,$r14,$r12
1c002138:	2800018c 	ld.b	$r12,$r12,0
1c00213c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002140:	001031ac 	add.w	$r12,$r13,$r12
1c002144:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002148:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00214c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002150:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002154:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002158:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00215c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002160:	001031ac 	add.w	$r12,$r13,$r12
1c002164:	2800018d 	ld.b	$r13,$r12,0
1c002168:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c00216c:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001ec8 <myprintf+0x74>
1c002170:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002174:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002178:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00217c:	001031ac 	add.w	$r12,$r13,$r12
1c002180:	2800018d 	ld.b	$r13,$r12,0
1c002184:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002188:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00211c <myprintf+0x2c8>
1c00218c:	53fd3fff 	b	-708(0xffffd3c) # 1c001ec8 <myprintf+0x74>
1c002190:	02809404 	addi.w	$r4,$r0,37(0x25)
1c002194:	57fab7ff 	bl	-1356(0xffffab4) # 1c001c48 <myputchar>
1c002198:	03400000 	andi	$r0,$r0,0x0
1c00219c:	50002400 	b	36(0x24) # 1c0021c0 <myprintf+0x36c>
1c0021a0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0021a4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0021a8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c0021b4 <myprintf+0x360>
1c0021ac:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0021b0:	57fa9bff 	bl	-1384(0xffffa98) # 1c001c48 <myputchar>
1c0021b4:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0021b8:	00150184 	move	$r4,$r12
1c0021bc:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001c48 <myputchar>
1c0021c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021d0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0021d4:	001031ac 	add.w	$r12,$r13,$r12
1c0021d8:	2800018c 	ld.b	$r12,$r12,0
1c0021dc:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001ea0 <myprintf+0x4c>
1c0021e0:	0015000c 	move	$r12,$r0
1c0021e4:	00150184 	move	$r4,$r12
1c0021e8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0021ec:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0021f0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c0021f4:	4c000020 	jirl	$r0,$r1,0

1c0021f8 <vsputs>:
vsputs():
1c0021f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0021fc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002200:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002204:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002208:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00220c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002210:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c002214:	5418c800 	bl	6344(0x18c8) # 1c003adc <strlen>
1c002218:	0015008c 	move	$r12,$r4
1c00221c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002220:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c002224:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002228:	54185800 	bl	6232(0x1858) # 1c003a80 <strcpy>
1c00222c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002230:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002234:	001031ac 	add.w	$r12,$r13,$r12
1c002238:	00150184 	move	$r4,$r12
1c00223c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002240:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002244:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002248:	4c000020 	jirl	$r0,$r1,0

1c00224c <vsputchar>:
vsputchar():
1c00224c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002250:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002254:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002258:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00225c:	001500ac 	move	$r12,$r5
1c002260:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002264:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002268:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00226c:	2900018d 	st.b	$r13,$r12,0
1c002270:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002274:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002278:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00227c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002280:	00150184 	move	$r4,$r12
1c002284:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002288:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00228c:	4c000020 	jirl	$r0,$r1,0

1c002290 <vsprintbase>:
vsprintbase():
1c002290:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c002294:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c002298:	2981e076 	st.w	$r22,$r3,120(0x78)
1c00229c:	02820076 	addi.w	$r22,$r3,128(0x80)
1c0022a0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0022a4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0022a8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0022ac:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0022b0:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c0022b4:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c0022b8:	40002d80 	beqz	$r12,44(0x2c) # 1c0022e4 <vsprintbase+0x54>
1c0022bc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c0022c0:	64002580 	bge	$r12,$r0,36(0x24) # 1c0022e4 <vsprintbase+0x54>
1c0022c4:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c0022c8:	0011300c 	sub.w	$r12,$r0,$r12
1c0022cc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0022d0:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c0022d4:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c0022d8:	57ff77ff 	bl	-140(0xfffff74) # 1c00224c <vsputchar>
1c0022dc:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0022e0:	50000c00 	b	12(0xc) # 1c0022ec <vsprintbase+0x5c>
1c0022e4:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c0022e8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0022ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0022f0:	50005000 	b	80(0x50) # 1c002340 <vsprintbase+0xb0>
1c0022f4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0022f8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0022fc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c002300:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002308 <vsprintbase+0x78>
1c002304:	002a0007 	break	0x7
1c002308:	00005dcc 	ext.w.b	$r12,$r14
1c00230c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002310:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002314:	001035cd 	add.w	$r13,$r14,$r13
1c002318:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00231c:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c002320:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002324:	002135cc 	div.wu	$r12,$r14,$r13
1c002328:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002330 <vsprintbase+0xa0>
1c00232c:	002a0007 	break	0x7
1c002330:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002334:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002338:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00233c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002340:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002344:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c0022f4 <vsprintbase+0x64>
1c002348:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c00234c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002350:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002354:	001231ad 	slt	$r13,$r13,$r12
1c002358:	0013b5ce 	masknez	$r14,$r14,$r13
1c00235c:	0013358c 	maskeqz	$r12,$r12,$r13
1c002360:	001531cc 	or	$r12,$r14,$r12
1c002364:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002368:	50008400 	b	132(0x84) # 1c0023ec <vsprintbase+0x15c>
1c00236c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002370:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002374:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c002390 <vsprintbase+0x100>
1c002378:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00237c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002380:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002384:	001031ac 	add.w	$r12,$r13,$r12
1c002388:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c00238c:	50000800 	b	8(0x8) # 1c002394 <vsprintbase+0x104>
1c002390:	0015000c 	move	$r12,$r0
1c002394:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002398:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c00239c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0023a0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0023bc <vsprintbase+0x12c>
1c0023a4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0023a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023ac:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0023b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023b4:	00005d8c 	ext.w.b	$r12,$r12
1c0023b8:	50001800 	b	24(0x18) # 1c0023d0 <vsprintbase+0x140>
1c0023bc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0023c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023c4:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c0023c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023cc:	00005d8c 	ext.w.b	$r12,$r12
1c0023d0:	00150185 	move	$r5,$r12
1c0023d4:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c0023d8:	57fe77ff 	bl	-396(0xffffe74) # 1c00224c <vsputchar>
1c0023dc:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0023e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023e4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0023e8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023f0:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c00236c <vsprintbase+0xdc>
1c0023f4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0023f8:	00150184 	move	$r4,$r12
1c0023fc:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c002400:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002404:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002408:	4c000020 	jirl	$r0,$r1,0

1c00240c <vsprintf>:
vsprintf():
1c00240c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002410:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002414:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002418:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00241c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002420:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002424:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002428:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00242c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002430:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002434:	50036c00 	b	876(0x36c) # 1c0027a0 <vsprintf+0x394>
1c002438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00243c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002440:	001031ac 	add.w	$r12,$r13,$r12
1c002444:	2a00018c 	ld.bu	$r12,$r12,0
1c002448:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00244c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002450:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002454:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c002764 <vsprintf+0x358>
1c002458:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00245c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002460:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002464:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002468:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00246c:	001031ac 	add.w	$r12,$r13,$r12
1c002470:	2800018c 	ld.b	$r12,$r12,0
1c002474:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c002478:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c00247c:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c00274c <vsprintf+0x340>
1c002480:	0040898d 	slli.w	$r13,$r12,0x2
1c002484:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c002488:	02b4818c 	addi.w	$r12,$r12,-736(0xd20)
1c00248c:	001031ac 	add.w	$r12,$r13,$r12
1c002490:	2880018c 	ld.w	$r12,$r12,0
1c002494:	4c000180 	jirl	$r0,$r12,0
1c002498:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00249c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0024a0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0024a4:	2880018c 	ld.w	$r12,$r12,0
1c0024a8:	00150185 	move	$r5,$r12
1c0024ac:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024b0:	57fd4bff 	bl	-696(0xffffd48) # 1c0021f8 <vsputs>
1c0024b4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024c4:	5002d000 	b	720(0x2d0) # 1c002794 <vsprintf+0x388>
1c0024c8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0024cc:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0024d0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0024d4:	2880018c 	ld.w	$r12,$r12,0
1c0024d8:	00005d8c 	ext.w.b	$r12,$r12
1c0024dc:	00150185 	move	$r5,$r12
1c0024e0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024e4:	57fd6bff 	bl	-664(0xffffd68) # 1c00224c <vsputchar>
1c0024e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024f8:	50029c00 	b	668(0x29c) # 1c002794 <vsprintf+0x388>
1c0024fc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002500:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002504:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002508:	2880018c 	ld.w	$r12,$r12,0
1c00250c:	00150008 	move	$r8,$r0
1c002510:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002514:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002518:	00150185 	move	$r5,$r12
1c00251c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002520:	57fd73ff 	bl	-656(0xffffd70) # 1c002290 <vsprintbase>
1c002524:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002528:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00252c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002530:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002534:	50026000 	b	608(0x260) # 1c002794 <vsprintf+0x388>
1c002538:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00253c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002540:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002544:	2880018c 	ld.w	$r12,$r12,0
1c002548:	02800408 	addi.w	$r8,$r0,1(0x1)
1c00254c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002550:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002554:	00150185 	move	$r5,$r12
1c002558:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00255c:	57fd37ff 	bl	-716(0xffffd34) # 1c002290 <vsprintbase>
1c002560:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002564:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002568:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00256c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002570:	50022400 	b	548(0x224) # 1c002794 <vsprintf+0x388>
1c002574:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002578:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c00257c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002580:	2880018c 	ld.w	$r12,$r12,0
1c002584:	00150008 	move	$r8,$r0
1c002588:	02802007 	addi.w	$r7,$r0,8(0x8)
1c00258c:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002590:	00150185 	move	$r5,$r12
1c002594:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002598:	57fcfbff 	bl	-776(0xffffcf8) # 1c002290 <vsprintbase>
1c00259c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0025a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0025a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0025ac:	5001e800 	b	488(0x1e8) # 1c002794 <vsprintf+0x388>
1c0025b0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0025b4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0025b8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0025bc:	2880018c 	ld.w	$r12,$r12,0
1c0025c0:	00150008 	move	$r8,$r0
1c0025c4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0025c8:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0025cc:	00150185 	move	$r5,$r12
1c0025d0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0025d4:	57fcbfff 	bl	-836(0xffffcbc) # 1c002290 <vsprintbase>
1c0025d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0025e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0025e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0025e8:	5001ac00 	b	428(0x1ac) # 1c002794 <vsprintf+0x388>
1c0025ec:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0025f0:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0025f4:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0025f8:	2880018c 	ld.w	$r12,$r12,0
1c0025fc:	00150008 	move	$r8,$r0
1c002600:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002604:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002608:	00150185 	move	$r5,$r12
1c00260c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002610:	57fc83ff 	bl	-896(0xffffc80) # 1c002290 <vsprintbase>
1c002614:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002618:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00261c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002620:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002624:	50017000 	b	368(0x170) # 1c002794 <vsprintf+0x388>
1c002628:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00262c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002630:	57fc1fff 	bl	-996(0xffffc1c) # 1c00224c <vsputchar>
1c002634:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002638:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00263c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002640:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002644:	50015000 	b	336(0x150) # 1c002794 <vsprintf+0x388>
1c002648:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00264c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002650:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002654:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002658:	50003c00 	b	60(0x3c) # 1c002694 <vsprintf+0x288>
1c00265c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002660:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002664:	001c31ad 	mul.w	$r13,$r13,$r12
1c002668:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00266c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002670:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c002674:	001031cc 	add.w	$r12,$r14,$r12
1c002678:	2800018c 	ld.b	$r12,$r12,0
1c00267c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002680:	001031ac 	add.w	$r12,$r13,$r12
1c002684:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002688:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00268c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002690:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002694:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002698:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00269c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0026a0:	001031ac 	add.w	$r12,$r13,$r12
1c0026a4:	2800018d 	ld.b	$r13,$r12,0
1c0026a8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0026ac:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c002460 <vsprintf+0x54>
1c0026b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0026b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0026b8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0026bc:	001031ac 	add.w	$r12,$r13,$r12
1c0026c0:	2800018d 	ld.b	$r13,$r12,0
1c0026c4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0026c8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00265c <vsprintf+0x250>
1c0026cc:	53fd97ff 	b	-620(0xffffd94) # 1c002460 <vsprintf+0x54>
1c0026d0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0026d4:	50003c00 	b	60(0x3c) # 1c002710 <vsprintf+0x304>
1c0026d8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0026dc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0026e0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0026e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0026ec:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0026f0:	001031cc 	add.w	$r12,$r14,$r12
1c0026f4:	2800018c 	ld.b	$r12,$r12,0
1c0026f8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0026fc:	001031ac 	add.w	$r12,$r13,$r12
1c002700:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002704:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002708:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00270c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002710:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002714:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002718:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00271c:	001031ac 	add.w	$r12,$r13,$r12
1c002720:	2800018d 	ld.b	$r13,$r12,0
1c002724:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002728:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c002460 <vsprintf+0x54>
1c00272c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002730:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002734:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002738:	001031ac 	add.w	$r12,$r13,$r12
1c00273c:	2800018d 	ld.b	$r13,$r12,0
1c002740:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002744:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0026d8 <vsprintf+0x2cc>
1c002748:	53fd1bff 	b	-744(0xffffd18) # 1c002460 <vsprintf+0x54>
1c00274c:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002750:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002754:	57fafbff 	bl	-1288(0xffffaf8) # 1c00224c <vsputchar>
1c002758:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00275c:	03400000 	andi	$r0,$r0,0x0
1c002760:	50003400 	b	52(0x34) # 1c002794 <vsprintf+0x388>
1c002764:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002768:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00276c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c002780 <vsprintf+0x374>
1c002770:	02803405 	addi.w	$r5,$r0,13(0xd)
1c002774:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002778:	57fad7ff 	bl	-1324(0xffffad4) # 1c00224c <vsputchar>
1c00277c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002780:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c002784:	00150185 	move	$r5,$r12
1c002788:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00278c:	57fac3ff 	bl	-1344(0xffffac0) # 1c00224c <vsputchar>
1c002790:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002794:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002798:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00279c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0027a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0027a8:	001031ac 	add.w	$r12,$r13,$r12
1c0027ac:	2800018c 	ld.b	$r12,$r12,0
1c0027b0:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002438 <vsprintf+0x2c>
1c0027b4:	00150005 	move	$r5,$r0
1c0027b8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0027bc:	57fa93ff 	bl	-1392(0xffffa90) # 1c00224c <vsputchar>
1c0027c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0027c4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0027c8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0027cc:	001131ac 	sub.w	$r12,$r13,$r12
1c0027d0:	00150184 	move	$r4,$r12
1c0027d4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0027d8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0027dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0027e0:	4c000020 	jirl	$r0,$r1,0

1c0027e4 <sprintf>:
sprintf():
1c0027e4:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c0027e8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0027ec:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0027f0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0027f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0027f8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0027fc:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002800:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002804:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002808:	298052c9 	st.w	$r9,$r22,20(0x14)
1c00280c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002810:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002814:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002818:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c00281c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002820:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002824:	00150186 	move	$r6,$r12
1c002828:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00282c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002830:	57fbdfff 	bl	-1060(0xffffbdc) # 1c00240c <vsprintf>
1c002834:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002838:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00283c:	00150184 	move	$r4,$r12
1c002840:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002844:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002848:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00284c:	4c000020 	jirl	$r0,$r1,0

1c002850 <UART_Init>:
UART_Init():
1c002850:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002854:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002858:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00285c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002860:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002864:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002868:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00286c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002870:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c002874:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002878:	03403d8c 	andi	$r12,$r12,0xf
1c00287c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002880:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002884:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c002888:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00288c:	0044918c 	srli.w	$r12,$r12,0x4
1c002890:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c002894:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002898:	40000d80 	beqz	$r12,12(0xc) # 1c0028a4 <UART_Init+0x54>
1c00289c:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0028a0:	44001980 	bnez	$r12,24(0x18) # 1c0028b8 <UART_Init+0x68>
1c0028a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028a8:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0028ac:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0028b0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0028b4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0028b8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0028bc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0028c0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0028d8 <UART_Init+0x88>
1c0028c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028c8:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c0028cc:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0028d0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0028d4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0028d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028dc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0028e0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0028e4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0028e8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0028ec:	580011ac 	beq	$r13,$r12,16(0x10) # 1c0028fc <UART_Init+0xac>
1c0028f0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0028f4:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0028f8:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002958 <UART_Init+0x108>
1c0028fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002900:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002904:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002908:	2880018c 	ld.w	$r12,$r12,0
1c00290c:	002131ae 	div.wu	$r14,$r13,$r12
1c002910:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002918 <UART_Init+0xc8>
1c002914:	002a0007 	break	0x7
1c002918:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00291c:	002135cc 	div.wu	$r12,$r14,$r13
1c002920:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002928 <UART_Init+0xd8>
1c002924:	002a0007 	break	0x7
1c002928:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00292c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002930:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002934:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002938:	2880018e 	ld.w	$r14,$r12,0
1c00293c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002940:	001c31ce 	mul.w	$r14,$r14,$r12
1c002944:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002948:	001c31cc 	mul.w	$r12,$r14,$r12
1c00294c:	001131ac 	sub.w	$r12,$r13,$r12
1c002950:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002954:	50005400 	b	84(0x54) # 1c0029a8 <UART_Init+0x158>
1c002958:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00295c:	2880018c 	ld.w	$r12,$r12,0
1c002960:	1400010d 	lu12i.w	$r13,8(0x8)
1c002964:	002131ae 	div.wu	$r14,$r13,$r12
1c002968:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002970 <UART_Init+0x120>
1c00296c:	002a0007 	break	0x7
1c002970:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002974:	002135cc 	div.wu	$r12,$r14,$r13
1c002978:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002980 <UART_Init+0x130>
1c00297c:	002a0007 	break	0x7
1c002980:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002984:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002988:	2880018d 	ld.w	$r13,$r12,0
1c00298c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002990:	001c31ad 	mul.w	$r13,$r13,$r12
1c002994:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002998:	001c31ac 	mul.w	$r12,$r13,$r12
1c00299c:	1400010d 	lu12i.w	$r13,8(0x8)
1c0029a0:	001131ac 	sub.w	$r12,$r13,$r12
1c0029a4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0029a8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0029ac:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0029b0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0029b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0029b8:	2880018c 	ld.w	$r12,$r12,0
1c0029bc:	002131ae 	div.wu	$r14,$r13,$r12
1c0029c0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0029c8 <UART_Init+0x178>
1c0029c4:	002a0007 	break	0x7
1c0029c8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0029cc:	002135cc 	div.wu	$r12,$r14,$r13
1c0029d0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0029d8 <UART_Init+0x188>
1c0029d4:	002a0007 	break	0x7
1c0029d8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0029dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0029e0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0029e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0029e8:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0029ec:	001531ac 	or	$r12,$r13,$r12
1c0029f0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0029f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0029f8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0029fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a00:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a08:	2900018d 	st.b	$r13,$r12,0
1c002a0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a10:	0044a18c 	srli.w	$r12,$r12,0x8
1c002a14:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a1c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a24:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002a28:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002a2c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a34:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002a38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a3c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002a40:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a44:	0341fd8c 	andi	$r12,$r12,0x7f
1c002a48:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a4c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a50:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002a54:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a58:	29000580 	st.b	$r0,$r12,1(0x1)
1c002a5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a60:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002a64:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a68:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002a6c:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c002a70:	001531ac 	or	$r12,$r13,$r12
1c002a74:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a7c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002a80:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a84:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002a88:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a8c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002a90:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c002a94:	001531ac 	or	$r12,$r13,$r12
1c002a98:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002aa0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002aa4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002aa8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002aac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002ab0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002ab4:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c002ab8:	001531ac 	or	$r12,$r13,$r12
1c002abc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002ac0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ac4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002ac8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002acc:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002ad0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002ad4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002ad8:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c002adc:	001531ac 	or	$r12,$r13,$r12
1c002ae0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002ae4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ae8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002aec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002af0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002af4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002af8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002afc:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002b00:	001531ac 	or	$r12,$r13,$r12
1c002b04:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b0c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002b10:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b14:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002b18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b1c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002b20:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002b24:	001531ac 	or	$r12,$r13,$r12
1c002b28:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b30:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002b34:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b38:	2a00018c 	ld.bu	$r12,$r12,0
1c002b3c:	03400000 	andi	$r0,$r0,0x0
1c002b40:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002b44:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b48:	4c000020 	jirl	$r0,$r1,0

1c002b4c <UART_StructInit>:
UART_StructInit():
1c002b4c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b50:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b54:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b58:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002b5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b60:	1400038d 	lu12i.w	$r13,28(0x1c)
1c002b64:	038801ad 	ori	$r13,$r13,0x200
1c002b68:	2980018d 	st.w	$r13,$r12,0
1c002b6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b70:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002b74:	038801ad 	ori	$r13,$r13,0x200
1c002b78:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002b7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b80:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002b84:	2900298d 	st.b	$r13,$r12,10(0xa)
1c002b88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b8c:	29002d80 	st.b	$r0,$r12,11(0xb)
1c002b90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b94:	29003580 	st.b	$r0,$r12,13(0xd)
1c002b98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b9c:	29003180 	st.b	$r0,$r12,12(0xc)
1c002ba0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ba4:	29003d80 	st.b	$r0,$r12,15(0xf)
1c002ba8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bac:	29003980 	st.b	$r0,$r12,14(0xe)
1c002bb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bb4:	29402180 	st.h	$r0,$r12,8(0x8)
1c002bb8:	03400000 	andi	$r0,$r0,0x0
1c002bbc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002bc0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002bc4:	4c000020 	jirl	$r0,$r1,0

1c002bc8 <UART_ITConfig>:
UART_ITConfig():
1c002bc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bcc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bd0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002bd4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002bd8:	001500ac 	move	$r12,$r5
1c002bdc:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c002be0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002be4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002be8:	40002980 	beqz	$r12,40(0x28) # 1c002c10 <UART_ITConfig+0x48>
1c002bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bf0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002bf4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002bf8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002bfc:	001531ac 	or	$r12,$r13,$r12
1c002c00:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002c04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c08:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002c0c:	50003400 	b	52(0x34) # 1c002c40 <UART_ITConfig+0x78>
1c002c10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c14:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002c18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002c1c:	00005d8d 	ext.w.b	$r13,$r12
1c002c20:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002c24:	0014300c 	nor	$r12,$r0,$r12
1c002c28:	00005d8c 	ext.w.b	$r12,$r12
1c002c2c:	0014b1ac 	and	$r12,$r13,$r12
1c002c30:	00005d8c 	ext.w.b	$r12,$r12
1c002c34:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002c38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c3c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002c40:	03400000 	andi	$r0,$r0,0x0
1c002c44:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c4c:	4c000020 	jirl	$r0,$r1,0

1c002c50 <UART_SendData>:
UART_SendData():
1c002c50:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c54:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c58:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c5c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002c60:	001500ac 	move	$r12,$r5
1c002c64:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002c68:	03400000 	andi	$r0,$r0,0x0
1c002c6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c70:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002c74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002c78:	0340818c 	andi	$r12,$r12,0x20
1c002c7c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002c6c <UART_SendData+0x1c>
1c002c80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c84:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c002c88:	2900018d 	st.b	$r13,$r12,0
1c002c8c:	03400000 	andi	$r0,$r0,0x0
1c002c90:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c98:	4c000020 	jirl	$r0,$r1,0

1c002c9c <UART_ReceiveData>:
UART_ReceiveData():
1c002c9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ca0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002ca4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ca8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002cac:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002cb0:	03400000 	andi	$r0,$r0,0x0
1c002cb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002cb8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002cbc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002cc0:	0340058c 	andi	$r12,$r12,0x1
1c002cc4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002cb4 <UART_ReceiveData+0x18>
1c002cc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ccc:	2a00018c 	ld.bu	$r12,$r12,0
1c002cd0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002cd4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002cd8:	00150184 	move	$r4,$r12
1c002cdc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002ce0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ce4:	4c000020 	jirl	$r0,$r1,0

1c002ce8 <UART_GetFlagStatus>:
UART_GetFlagStatus():
1c002ce8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002cec:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002cf0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002cf4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002cf8:	001500ac 	move	$r12,$r5
1c002cfc:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002d00:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d08:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002d0c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d10:	0015018d 	move	$r13,$r12
1c002d14:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002d18:	0012b00c 	sltu	$r12,$r0,$r12
1c002d1c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d20:	0014b1ac 	and	$r12,$r13,$r12
1c002d24:	40001180 	beqz	$r12,16(0x10) # 1c002d34 <UART_GetFlagStatus+0x4c>
1c002d28:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d30:	50000800 	b	8(0x8) # 1c002d38 <UART_GetFlagStatus+0x50>
1c002d34:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d3c:	00150184 	move	$r4,$r12
1c002d40:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002d44:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d48:	4c000020 	jirl	$r0,$r1,0

1c002d4c <Uart0_init>:
Uart0_init():
1c002d4c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d50:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d54:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d58:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d5c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d60:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002d64:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002d68:	57e963ff 	bl	-5792(0xfffe960) # 1c0016c8 <gpio_pin_remap>
1c002d6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002d70:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002d74:	57e957ff 	bl	-5804(0xfffe954) # 1c0016c8 <gpio_pin_remap>
1c002d78:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002d7c:	00150184 	move	$r4,$r12
1c002d80:	57fdcfff 	bl	-564(0xffffdcc) # 1c002b4c <UART_StructInit>
1c002d84:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c002d88:	288a8084 	ld.w	$r4,$r4,672(0x2a0)
1c002d8c:	542d8c00 	bl	11660(0x2d8c) # 1c005b18 <Queue_Init>
1c002d90:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002d94:	288a218c 	ld.w	$r12,$r12,648(0x288)
1c002d98:	2880018c 	ld.w	$r12,$r12,0
1c002d9c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002da0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002da4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002da8:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002dac:	00150185 	move	$r5,$r12
1c002db0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002db4:	57fa9fff 	bl	-1380(0xffffa9c) # 1c002850 <UART_Init>
1c002db8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002dbc:	0380098c 	ori	$r12,$r12,0x2
1c002dc0:	2a00018c 	ld.bu	$r12,$r12,0
1c002dc4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002dc8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002dcc:	0380098c 	ori	$r12,$r12,0x2
1c002dd0:	038021ad 	ori	$r13,$r13,0x8
1c002dd4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002dd8:	2900018d 	st.b	$r13,$r12,0
1c002ddc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002de0:	2a00018c 	ld.bu	$r12,$r12,0
1c002de4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002de8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002dec:	038021ad 	ori	$r13,$r13,0x8
1c002df0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002df4:	2900018d 	st.b	$r13,$r12,0
1c002df8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002dfc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002e00:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002e04:	57fdc7ff 	bl	-572(0xffffdc4) # 1c002bc8 <UART_ITConfig>
1c002e08:	03400000 	andi	$r0,$r0,0x0
1c002e0c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e10:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e14:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e18:	4c000020 	jirl	$r0,$r1,0

1c002e1c <Uart1_init>:
Uart1_init():
1c002e1c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e20:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e24:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e28:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e2c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e30:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002e34:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002e38:	57e893ff 	bl	-6000(0xfffe890) # 1c0016c8 <gpio_pin_remap>
1c002e3c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002e40:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002e44:	57e887ff 	bl	-6012(0xfffe884) # 1c0016c8 <gpio_pin_remap>
1c002e48:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002e4c:	00150184 	move	$r4,$r12
1c002e50:	57fcffff 	bl	-772(0xffffcfc) # 1c002b4c <UART_StructInit>
1c002e54:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002e58:	2887118c 	ld.w	$r12,$r12,452(0x1c4)
1c002e5c:	2880018c 	ld.w	$r12,$r12,0
1c002e60:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002e64:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e68:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002e6c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002e70:	00150185 	move	$r5,$r12
1c002e74:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002e78:	57f9dbff 	bl	-1576(0xffff9d8) # 1c002850 <UART_Init>
1c002e7c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002e80:	0380098c 	ori	$r12,$r12,0x2
1c002e84:	2a00018c 	ld.bu	$r12,$r12,0
1c002e88:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002e8c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002e90:	0380098c 	ori	$r12,$r12,0x2
1c002e94:	038011ad 	ori	$r13,$r13,0x4
1c002e98:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002e9c:	2900018d 	st.b	$r13,$r12,0
1c002ea0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002ea4:	2a00018c 	ld.bu	$r12,$r12,0
1c002ea8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002eac:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002eb0:	038011ad 	ori	$r13,$r13,0x4
1c002eb4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002eb8:	2900018d 	st.b	$r13,$r12,0
1c002ebc:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002ec0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ec4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002ec8:	57fd03ff 	bl	-768(0xffffd00) # 1c002bc8 <UART_ITConfig>
1c002ecc:	03400000 	andi	$r0,$r0,0x0
1c002ed0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002ed4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ed8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002edc:	4c000020 	jirl	$r0,$r1,0

1c002ee0 <Uart0_send>:
Uart0_send():
1c002ee0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ee4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002ee8:	29806076 	st.w	$r22,$r3,24(0x18)
1c002eec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ef0:	0015008c 	move	$r12,$r4
1c002ef4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002ef8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002efc:	00150185 	move	$r5,$r12
1c002f00:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002f04:	57fd4fff 	bl	-692(0xffffd4c) # 1c002c50 <UART_SendData>
1c002f08:	03400000 	andi	$r0,$r0,0x0
1c002f0c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002f10:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002f14:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002f18:	4c000020 	jirl	$r0,$r1,0

1c002f1c <Uart1_send>:
Uart1_send():
1c002f1c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002f20:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002f24:	29806076 	st.w	$r22,$r3,24(0x18)
1c002f28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002f2c:	0015008c 	move	$r12,$r4
1c002f30:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002f34:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002f38:	00150185 	move	$r5,$r12
1c002f3c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002f40:	57fd13ff 	bl	-752(0xffffd10) # 1c002c50 <UART_SendData>
1c002f44:	03400000 	andi	$r0,$r0,0x0
1c002f48:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002f4c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002f50:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002f54:	4c000020 	jirl	$r0,$r1,0

1c002f58 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002f58:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002f5c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002f60:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002f64:	1400006c 	lu12i.w	$r12,3(0x3)
1c002f68:	03ba018c 	ori	$r12,$r12,0xe80
1c002f6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f70:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002f74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f78:	2880018d 	ld.w	$r13,$r12,0
1c002f7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f80:	038101ad 	ori	$r13,$r13,0x40
1c002f84:	2980018d 	st.w	$r13,$r12,0
1c002f88:	03400000 	andi	$r0,$r0,0x0
1c002f8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f90:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002f94:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002f98:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002f8c <CLOCK_WaitForHSEStartUp+0x34>
1c002f9c:	50001c00 	b	28(0x1c) # 1c002fb8 <CLOCK_WaitForHSEStartUp+0x60>
1c002fa0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fa4:	2880018e 	ld.w	$r14,$r12,0
1c002fa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fac:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002fb0:	0014b5cd 	and	$r13,$r14,$r13
1c002fb4:	2980018d 	st.w	$r13,$r12,0
1c002fb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fbc:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002fc0:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002fa0 <CLOCK_WaitForHSEStartUp+0x48>
1c002fc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fc8:	2880018d 	ld.w	$r13,$r12,0
1c002fcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fd0:	038201ad 	ori	$r13,$r13,0x80
1c002fd4:	2980018d 	st.w	$r13,$r12,0
1c002fd8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fdc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002fe0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002fe4:	00150184 	move	$r4,$r12
1c002fe8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002fec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ff0:	4c000020 	jirl	$r0,$r1,0

1c002ff4 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002ff4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ff8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002ffc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003000:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003004:	50008800 	b	136(0x88) # 1c00308c <CLOCK_WaitForLSEStartUp+0x98>
1c003008:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00300c:	2880018e 	ld.w	$r14,$r12,0
1c003010:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003014:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c003018:	0014b5cd 	and	$r13,$r14,$r13
1c00301c:	2980018d 	st.w	$r13,$r12,0
1c003020:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c003024:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003028:	50001400 	b	20(0x14) # 1c00303c <CLOCK_WaitForLSEStartUp+0x48>
1c00302c:	03400000 	andi	$r0,$r0,0x0
1c003030:	03400000 	andi	$r0,$r0,0x0
1c003034:	03400000 	andi	$r0,$r0,0x0
1c003038:	03400000 	andi	$r0,$r0,0x0
1c00303c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003040:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003044:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003048:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00302c <CLOCK_WaitForLSEStartUp+0x38>
1c00304c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003050:	2880018d 	ld.w	$r13,$r12,0
1c003054:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003058:	038081ad 	ori	$r13,$r13,0x20
1c00305c:	2980018d 	st.w	$r13,$r12,0
1c003060:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c003064:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003068:	50001400 	b	20(0x14) # 1c00307c <CLOCK_WaitForLSEStartUp+0x88>
1c00306c:	03400000 	andi	$r0,$r0,0x0
1c003070:	03400000 	andi	$r0,$r0,0x0
1c003074:	03400000 	andi	$r0,$r0,0x0
1c003078:	03400000 	andi	$r0,$r0,0x0
1c00307c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003080:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003084:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003088:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00306c <CLOCK_WaitForLSEStartUp+0x78>
1c00308c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003090:	0380118c 	ori	$r12,$r12,0x4
1c003094:	2880018d 	ld.w	$r13,$r12,0
1c003098:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c00309c:	0014b1ac 	and	$r12,$r13,$r12
1c0030a0:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c003008 <CLOCK_WaitForLSEStartUp+0x14>
1c0030a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030a8:	0380118c 	ori	$r12,$r12,0x4
1c0030ac:	2880018d 	ld.w	$r13,$r12,0
1c0030b0:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c0030b4:	0014b1ac 	and	$r12,$r13,$r12
1c0030b8:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c003008 <CLOCK_WaitForLSEStartUp+0x14>
1c0030bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030c0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0030c4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0030c8:	00150184 	move	$r4,$r12
1c0030cc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0030d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0030d4:	4c000020 	jirl	$r0,$r1,0

1c0030d8 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c0030d8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0030dc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0030e0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0030e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0030e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0030ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030f4:	2880018e 	ld.w	$r14,$r12,0
1c0030f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030fc:	0014300d 	nor	$r13,$r0,$r12
1c003100:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003104:	0014b5cd 	and	$r13,$r14,$r13
1c003108:	2980018d 	st.w	$r13,$r12,0
1c00310c:	1400002c 	lu12i.w	$r12,1(0x1)
1c003110:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c003114:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003118:	50001400 	b	20(0x14) # 1c00312c <CLOCK_HSEConfig+0x54>
1c00311c:	03400000 	andi	$r0,$r0,0x0
1c003120:	03400000 	andi	$r0,$r0,0x0
1c003124:	03400000 	andi	$r0,$r0,0x0
1c003128:	03400000 	andi	$r0,$r0,0x0
1c00312c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003130:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003134:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003138:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00311c <CLOCK_HSEConfig+0x44>
1c00313c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003140:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003144:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003154 <CLOCK_HSEConfig+0x7c>
1c003148:	57fe13ff 	bl	-496(0xffffe10) # 1c002f58 <CLOCK_WaitForHSEStartUp>
1c00314c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003150:	50002400 	b	36(0x24) # 1c003174 <CLOCK_HSEConfig+0x9c>
1c003154:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003158:	2880018e 	ld.w	$r14,$r12,0
1c00315c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003160:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c003164:	0014b5cd 	and	$r13,$r14,$r13
1c003168:	2980018d 	st.w	$r13,$r12,0
1c00316c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003170:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003174:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003178:	00150184 	move	$r4,$r12
1c00317c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003180:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003184:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003188:	4c000020 	jirl	$r0,$r1,0

1c00318c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c00318c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003190:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003194:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003198:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00319c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0031a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031a4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0031a8:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0031ac:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0031bc <CLOCK_LSEConfig+0x30>
1c0031b0:	57fe47ff 	bl	-444(0xffffe44) # 1c002ff4 <CLOCK_WaitForLSEStartUp>
1c0031b4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0031b8:	50002400 	b	36(0x24) # 1c0031dc <CLOCK_LSEConfig+0x50>
1c0031bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031c0:	2880018e 	ld.w	$r14,$r12,0
1c0031c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031c8:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c0031cc:	0014b5cd 	and	$r13,$r14,$r13
1c0031d0:	2980018d 	st.w	$r13,$r12,0
1c0031d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0031d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031e0:	00150184 	move	$r4,$r12
1c0031e4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0031e8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0031ec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031f0:	4c000020 	jirl	$r0,$r1,0

1c0031f4 <CLOCK_StructInit>:
CLOCK_StructInit():
1c0031f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031f8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0031fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003200:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003204:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003208:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00320c:	2980018d 	st.w	$r13,$r12,0
1c003210:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003214:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c003218:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00321c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003220:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c003224:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003228:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00322c:	29803180 	st.w	$r0,$r12,12(0xc)
1c003230:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003234:	29804180 	st.w	$r0,$r12,16(0x10)
1c003238:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00323c:	29805180 	st.w	$r0,$r12,20(0x14)
1c003240:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003244:	29806180 	st.w	$r0,$r12,24(0x18)
1c003248:	03400000 	andi	$r0,$r0,0x0
1c00324c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003250:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003254:	4c000020 	jirl	$r0,$r1,0

1c003258 <CLOCK_Init>:
CLOCK_Init():
1c003258:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00325c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003260:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003264:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003268:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00326c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003270:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003274:	2880018e 	ld.w	$r14,$r12,0
1c003278:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00327c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c003280:	0014b5cd 	and	$r13,$r14,$r13
1c003284:	2980018d 	st.w	$r13,$r12,0
1c003288:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00328c:	2880018e 	ld.w	$r14,$r12,0
1c003290:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003294:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c003298:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00329c:	001535cd 	or	$r13,$r14,$r13
1c0032a0:	2980018d 	st.w	$r13,$r12,0
1c0032a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032a8:	2880018e 	ld.w	$r14,$r12,0
1c0032ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032b0:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c0032b4:	0014b5cd 	and	$r13,$r14,$r13
1c0032b8:	2980018d 	st.w	$r13,$r12,0
1c0032bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032c0:	2880018e 	ld.w	$r14,$r12,0
1c0032c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032c8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0032cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032d0:	001535cd 	or	$r13,$r14,$r13
1c0032d4:	2980018d 	st.w	$r13,$r12,0
1c0032d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032dc:	2880018e 	ld.w	$r14,$r12,0
1c0032e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032e4:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c0032e8:	039ffdad 	ori	$r13,$r13,0x7ff
1c0032ec:	0014b5cd 	and	$r13,$r14,$r13
1c0032f0:	2980018d 	st.w	$r13,$r12,0
1c0032f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032f8:	2880018e 	ld.w	$r14,$r12,0
1c0032fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003300:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c003304:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003308:	001535cd 	or	$r13,$r14,$r13
1c00330c:	2980018d 	st.w	$r13,$r12,0
1c003310:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003314:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003318:	00150184 	move	$r4,$r12
1c00331c:	57fdbfff 	bl	-580(0xffffdbc) # 1c0030d8 <CLOCK_HSEConfig>
1c003320:	0015008d 	move	$r13,$r4
1c003324:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003328:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003334 <CLOCK_Init+0xdc>
1c00332c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003330:	50015000 	b	336(0x150) # 1c003480 <CLOCK_Init+0x228>
1c003334:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003338:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c00333c:	00150184 	move	$r4,$r12
1c003340:	57fe4fff 	bl	-436(0xffffe4c) # 1c00318c <CLOCK_LSEConfig>
1c003344:	0015008d 	move	$r13,$r4
1c003348:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00334c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003358 <CLOCK_Init+0x100>
1c003350:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003354:	50012c00 	b	300(0x12c) # 1c003480 <CLOCK_Init+0x228>
1c003358:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00335c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003360:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003364:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003460 <CLOCK_Init+0x208>
1c003368:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00336c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003370:	4000a180 	beqz	$r12,160(0xa0) # 1c003410 <CLOCK_Init+0x1b8>
1c003374:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003378:	2880018e 	ld.w	$r14,$r12,0
1c00337c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003380:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c003384:	03bffdad 	ori	$r13,$r13,0xfff
1c003388:	0014b5cd 	and	$r13,$r14,$r13
1c00338c:	2980018d 	st.w	$r13,$r12,0
1c003390:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003394:	2880018e 	ld.w	$r14,$r12,0
1c003398:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00339c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c0033a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0033a4:	001535cd 	or	$r13,$r14,$r13
1c0033a8:	2980018d 	st.w	$r13,$r12,0
1c0033ac:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0033b0:	0386c18c 	ori	$r12,$r12,0x1b0
1c0033b4:	2880018c 	ld.w	$r12,$r12,0
1c0033b8:	40004180 	beqz	$r12,64(0x40) # 1c0033f8 <CLOCK_Init+0x1a0>
1c0033bc:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0033c0:	0386c18c 	ori	$r12,$r12,0x1b0
1c0033c4:	2880018c 	ld.w	$r12,$r12,0
1c0033c8:	0040898e 	slli.w	$r14,$r12,0x2
1c0033cc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0033d0:	002031cd 	div.w	$r13,$r14,$r12
1c0033d4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0033dc <CLOCK_Init+0x184>
1c0033d8:	002a0007 	break	0x7
1c0033dc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0033e0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0033e4:	0015018d 	move	$r13,$r12
1c0033e8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0033ec:	02b1318c 	addi.w	$r12,$r12,-948(0xc4c)
1c0033f0:	2980018d 	st.w	$r13,$r12,0
1c0033f4:	50008000 	b	128(0x80) # 1c003474 <CLOCK_Init+0x21c>
1c0033f8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0033fc:	02b0f18c 	addi.w	$r12,$r12,-964(0xc3c)
1c003400:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c003404:	038fe1ad 	ori	$r13,$r13,0x3f8
1c003408:	2980018d 	st.w	$r13,$r12,0
1c00340c:	50006800 	b	104(0x68) # 1c003474 <CLOCK_Init+0x21c>
1c003410:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003414:	0386c18c 	ori	$r12,$r12,0x1b0
1c003418:	2880018c 	ld.w	$r12,$r12,0
1c00341c:	40002d80 	beqz	$r12,44(0x2c) # 1c003448 <CLOCK_Init+0x1f0>
1c003420:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003424:	0386c18c 	ori	$r12,$r12,0x1b0
1c003428:	2880018d 	ld.w	$r13,$r12,0
1c00342c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003430:	001c31ac 	mul.w	$r12,$r13,$r12
1c003434:	0015018d 	move	$r13,$r12
1c003438:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00343c:	02aff18c 	addi.w	$r12,$r12,-1028(0xbfc)
1c003440:	2980018d 	st.w	$r13,$r12,0
1c003444:	50003000 	b	48(0x30) # 1c003474 <CLOCK_Init+0x21c>
1c003448:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00344c:	02afb18c 	addi.w	$r12,$r12,-1044(0xbec)
1c003450:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003454:	038801ad 	ori	$r13,$r13,0x200
1c003458:	2980018d 	st.w	$r13,$r12,0
1c00345c:	50001800 	b	24(0x18) # 1c003474 <CLOCK_Init+0x21c>
1c003460:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003464:	02af518c 	addi.w	$r12,$r12,-1068(0xbd4)
1c003468:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00346c:	038801ad 	ori	$r13,$r13,0x200
1c003470:	2980018d 	st.w	$r13,$r12,0
1c003474:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003478:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00347c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003480:	00150184 	move	$r4,$r12
1c003484:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003488:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00348c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003490:	4c000020 	jirl	$r0,$r1,0

1c003494 <SystemClockInit>:
SystemClockInit():
1c003494:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003498:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00349c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0034a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034a4:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c0034a8:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c0034ac:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0034b0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0034b4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0034b8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0034bc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0034c0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0034c4:	00150184 	move	$r4,$r12
1c0034c8:	57fd2fff 	bl	-724(0xffffd2c) # 1c0031f4 <CLOCK_StructInit>
1c0034cc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0034d0:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0034d4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0034d8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0034dc:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0034e0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0034e4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0034e8:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c0034ec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0034f0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0034f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0034f8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0034fc:	00150184 	move	$r4,$r12
1c003500:	57fd5bff 	bl	-680(0xffffd58) # 1c003258 <CLOCK_Init>
1c003504:	0015008d 	move	$r13,$r4
1c003508:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00350c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003518 <SystemClockInit+0x84>
1c003510:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003514:	50000800 	b	8(0x8) # 1c00351c <SystemClockInit+0x88>
1c003518:	0015000c 	move	$r12,$r0
1c00351c:	00150184 	move	$r4,$r12
1c003520:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003524:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003528:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00352c:	4c000020 	jirl	$r0,$r1,0

1c003530 <DisableInt>:
DisableInt():
1c003530:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003534:	29803076 	st.w	$r22,$r3,12(0xc)
1c003538:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00353c:	0380100c 	ori	$r12,$r0,0x4
1c003540:	04000180 	csrxchg	$r0,$r12,0x0
1c003544:	03400000 	andi	$r0,$r0,0x0
1c003548:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00354c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003550:	4c000020 	jirl	$r0,$r1,0

1c003554 <EnableInt>:
EnableInt():
1c003554:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003558:	29803076 	st.w	$r22,$r3,12(0xc)
1c00355c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003560:	0380100c 	ori	$r12,$r0,0x4
1c003564:	0400018c 	csrxchg	$r12,$r12,0x0
1c003568:	03400000 	andi	$r0,$r0,0x0
1c00356c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003570:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003574:	4c000020 	jirl	$r0,$r1,0

1c003578 <Set_Timer_stop>:
Set_Timer_stop():
1c003578:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00357c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003580:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003584:	04010420 	csrwr	$r0,0x41
1c003588:	03400000 	andi	$r0,$r0,0x0
1c00358c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003590:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003594:	4c000020 	jirl	$r0,$r1,0

1c003598 <Set_Timer_clear>:
Set_Timer_clear():
1c003598:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00359c:	29803076 	st.w	$r22,$r3,12(0xc)
1c0035a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0035a4:	0380040c 	ori	$r12,$r0,0x1
1c0035a8:	0401102c 	csrwr	$r12,0x44
1c0035ac:	03400000 	andi	$r0,$r0,0x0
1c0035b0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0035b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0035b8:	4c000020 	jirl	$r0,$r1,0

1c0035bc <Wake_Set>:
Wake_Set():
1c0035bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035c0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035d0:	40006980 	beqz	$r12,104(0x68) # 1c003638 <Wake_Set+0x7c>
1c0035d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035d8:	0040a18c 	slli.w	$r12,$r12,0x8
1c0035dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0035e0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0035e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0035e8:	0380218c 	ori	$r12,$r12,0x8
1c0035ec:	2880018d 	ld.w	$r13,$r12,0
1c0035f0:	14001fec 	lu12i.w	$r12,255(0xff)
1c0035f4:	03bffd8c 	ori	$r12,$r12,0xfff
1c0035f8:	0014b1ac 	and	$r12,$r13,$r12
1c0035fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003600:	001031ac 	add.w	$r12,$r13,$r12
1c003604:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003608:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00360c:	0380318c 	ori	$r12,$r12,0xc
1c003610:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003614:	2980018d 	st.w	$r13,$r12,0
1c003618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00361c:	0380118c 	ori	$r12,$r12,0x4
1c003620:	2880018d 	ld.w	$r13,$r12,0
1c003624:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003628:	0380118c 	ori	$r12,$r12,0x4
1c00362c:	038601ad 	ori	$r13,$r13,0x180
1c003630:	2980018d 	st.w	$r13,$r12,0
1c003634:	50002400 	b	36(0x24) # 1c003658 <Wake_Set+0x9c>
1c003638:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00363c:	0380118c 	ori	$r12,$r12,0x4
1c003640:	2880018e 	ld.w	$r14,$r12,0
1c003644:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003648:	0380118c 	ori	$r12,$r12,0x4
1c00364c:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003650:	0014b5cd 	and	$r13,$r14,$r13
1c003654:	2980018d 	st.w	$r13,$r12,0
1c003658:	03400000 	andi	$r0,$r0,0x0
1c00365c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003660:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003664:	4c000020 	jirl	$r0,$r1,0

1c003668 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003668:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00366c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003670:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003674:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003678:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00367c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003680:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003684:	0014b1ac 	and	$r12,$r13,$r12
1c003688:	44000d80 	bnez	$r12,12(0xc) # 1c003694 <PMU_GetRstRrc+0x2c>
1c00368c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003690:	50003000 	b	48(0x30) # 1c0036c0 <PMU_GetRstRrc+0x58>
1c003694:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003698:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00369c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0036a0:	0014b1ad 	and	$r13,$r13,$r12
1c0036a4:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0036a8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0036b8 <PMU_GetRstRrc+0x50>
1c0036ac:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0036b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036b4:	50000c00 	b	12(0xc) # 1c0036c0 <PMU_GetRstRrc+0x58>
1c0036b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0036bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036c4:	00150184 	move	$r4,$r12
1c0036c8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0036cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036d0:	4c000020 	jirl	$r0,$r1,0

1c0036d4 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0036d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0036d8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0036dc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0036e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0036e4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0036e8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0036ec:	0380198c 	ori	$r12,$r12,0x6
1c0036f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0036f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0036f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0036fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003700:	0340058c 	andi	$r12,$r12,0x1
1c003704:	40000d80 	beqz	$r12,12(0xc) # 1c003710 <PMU_GetBootSpiStatus+0x3c>
1c003708:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00370c:	50000800 	b	8(0x8) # 1c003714 <PMU_GetBootSpiStatus+0x40>
1c003710:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003714:	00150184 	move	$r4,$r12
1c003718:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00371c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003720:	4c000020 	jirl	$r0,$r1,0

1c003724 <ls1x_logo>:
ls1x_logo():
1c003724:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003728:	29803061 	st.w	$r1,$r3,12(0xc)
1c00372c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003730:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003734:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003738:	02af0084 	addi.w	$r4,$r4,-1088(0xbc0)
1c00373c:	57e71bff 	bl	-6376(0xfffe718) # 1c001e54 <myprintf>
1c003740:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003744:	02aee084 	addi.w	$r4,$r4,-1096(0xbb8)
1c003748:	57e70fff 	bl	-6388(0xfffe70c) # 1c001e54 <myprintf>
1c00374c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003750:	02b04084 	addi.w	$r4,$r4,-1008(0xc10)
1c003754:	57e703ff 	bl	-6400(0xfffe700) # 1c001e54 <myprintf>
1c003758:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00375c:	02b1a084 	addi.w	$r4,$r4,-920(0xc68)
1c003760:	57e6f7ff 	bl	-6412(0xfffe6f4) # 1c001e54 <myprintf>
1c003764:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003768:	02b30084 	addi.w	$r4,$r4,-832(0xcc0)
1c00376c:	57e6ebff 	bl	-6424(0xfffe6e8) # 1c001e54 <myprintf>
1c003770:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003774:	02b46084 	addi.w	$r4,$r4,-744(0xd18)
1c003778:	57e6dfff 	bl	-6436(0xfffe6dc) # 1c001e54 <myprintf>
1c00377c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003780:	02b5c084 	addi.w	$r4,$r4,-656(0xd70)
1c003784:	57e6d3ff 	bl	-6448(0xfffe6d0) # 1c001e54 <myprintf>
1c003788:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00378c:	02b72084 	addi.w	$r4,$r4,-568(0xdc8)
1c003790:	57e6c7ff 	bl	-6460(0xfffe6c4) # 1c001e54 <myprintf>
1c003794:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003798:	02b88084 	addi.w	$r4,$r4,-480(0xe20)
1c00379c:	57e6bbff 	bl	-6472(0xfffe6b8) # 1c001e54 <myprintf>
1c0037a0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0037a4:	02b9e084 	addi.w	$r4,$r4,-392(0xe78)
1c0037a8:	57e6afff 	bl	-6484(0xfffe6ac) # 1c001e54 <myprintf>
1c0037ac:	03400000 	andi	$r0,$r0,0x0
1c0037b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0037b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037bc:	4c000020 	jirl	$r0,$r1,0

1c0037c0 <get_count>:
get_count():
1c0037c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0037c4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0037c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0037cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0037d0:	0000600c 	rdtimel.w	$r12,$r0
1c0037d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037dc:	00150184 	move	$r4,$r12
1c0037e0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0037e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0037e8:	4c000020 	jirl	$r0,$r1,0

1c0037ec <open_count>:
open_count():
1c0037ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0037f0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0037f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037f8:	0380400c 	ori	$r12,$r0,0x10
1c0037fc:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003800:	03400000 	andi	$r0,$r0,0x0
1c003804:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003808:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00380c:	4c000020 	jirl	$r0,$r1,0

1c003810 <start_count>:
start_count():
1c003810:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003814:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003818:	29806076 	st.w	$r22,$r3,24(0x18)
1c00381c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003820:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003824:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003828:	29800180 	st.w	$r0,$r12,0
1c00382c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003830:	29801180 	st.w	$r0,$r12,4(0x4)
1c003834:	57ff8fff 	bl	-116(0xfffff8c) # 1c0037c0 <get_count>
1c003838:	0015008d 	move	$r13,$r4
1c00383c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003840:	2980018d 	st.w	$r13,$r12,0
1c003844:	03400000 	andi	$r0,$r0,0x0
1c003848:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00384c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003850:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003854:	4c000020 	jirl	$r0,$r1,0

1c003858 <stop_count>:
stop_count():
1c003858:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00385c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003860:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003864:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003868:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00386c:	57ff57ff 	bl	-172(0xfffff54) # 1c0037c0 <get_count>
1c003870:	0015008d 	move	$r13,$r4
1c003874:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003878:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00387c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003880:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003884:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003888:	2880018c 	ld.w	$r12,$r12,0
1c00388c:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c0038a8 <stop_count+0x50>
1c003890:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003894:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003898:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00389c:	2880018c 	ld.w	$r12,$r12,0
1c0038a0:	001131ac 	sub.w	$r12,$r13,$r12
1c0038a4:	50002800 	b	40(0x28) # 1c0038cc <stop_count+0x74>
1c0038a8:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0038ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038b4:	2880018c 	ld.w	$r12,$r12,0
1c0038b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038bc:	001131ad 	sub.w	$r13,$r13,$r12
1c0038c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038c4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0038c8:	001031ac 	add.w	$r12,$r13,$r12
1c0038cc:	00150184 	move	$r4,$r12
1c0038d0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0038d4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0038d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0038dc:	4c000020 	jirl	$r0,$r1,0

1c0038e0 <delay_cycle>:
delay_cycle():
1c0038e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0038e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0038e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0038ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0038f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0038f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0038f8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0038fc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003900:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003904:	00150184 	move	$r4,$r12
1c003908:	57ff0bff 	bl	-248(0xfffff08) # 1c003810 <start_count>
1c00390c:	50001400 	b	20(0x14) # 1c003920 <delay_cycle+0x40>
1c003910:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003914:	00150184 	move	$r4,$r12
1c003918:	57ff43ff 	bl	-192(0xfffff40) # 1c003858 <stop_count>
1c00391c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003920:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003924:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003928:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003910 <delay_cycle+0x30>
1c00392c:	03400000 	andi	$r0,$r0,0x0
1c003930:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003934:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003938:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00393c:	4c000020 	jirl	$r0,$r1,0

1c003940 <delay_ms>:
delay_ms():
1c003940:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003944:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003948:	29806076 	st.w	$r22,$r3,24(0x18)
1c00394c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003950:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003954:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003958:	1400002c 	lu12i.w	$r12,1(0x1)
1c00395c:	03bd018c 	ori	$r12,$r12,0xf40
1c003960:	001c31ac 	mul.w	$r12,$r13,$r12
1c003964:	00150184 	move	$r4,$r12
1c003968:	57ff7bff 	bl	-136(0xfffff78) # 1c0038e0 <delay_cycle>
1c00396c:	03400000 	andi	$r0,$r0,0x0
1c003970:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003974:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003978:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00397c:	4c000020 	jirl	$r0,$r1,0

1c003980 <memset>:
memset():
1c003980:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003984:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003988:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00398c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003990:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003994:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003998:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00399c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039a0:	50001c00 	b	28(0x1c) # 1c0039bc <memset+0x3c>
1c0039a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039a8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0039ac:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0039b0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0039b4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0039b8:	2900018d 	st.b	$r13,$r12,0
1c0039bc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0039c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0039c4:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0039c8:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0039a4 <memset+0x24>
1c0039cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0039d0:	00150184 	move	$r4,$r12
1c0039d4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0039d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0039dc:	4c000020 	jirl	$r0,$r1,0

1c0039e0 <strncmp>:
strncmp():
1c0039e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039e4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0039e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039ec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0039f0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0039f4:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0039f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0039fc:	44003980 	bnez	$r12,56(0x38) # 1c003a34 <strncmp+0x54>
1c003a00:	0015000c 	move	$r12,$r0
1c003a04:	50006c00 	b	108(0x6c) # 1c003a70 <strncmp+0x90>
1c003a08:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003a0c:	40004d80 	beqz	$r12,76(0x4c) # 1c003a58 <strncmp+0x78>
1c003a10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a14:	2800018c 	ld.b	$r12,$r12,0
1c003a18:	40004180 	beqz	$r12,64(0x40) # 1c003a58 <strncmp+0x78>
1c003a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003a34:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003a38:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a3c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003a40:	40001980 	beqz	$r12,24(0x18) # 1c003a58 <strncmp+0x78>
1c003a44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a48:	2800018d 	ld.b	$r13,$r12,0
1c003a4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a50:	2800018c 	ld.b	$r12,$r12,0
1c003a54:	5bffb5ac 	beq	$r13,$r12,-76(0x3ffb4) # 1c003a08 <strncmp+0x28>
1c003a58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a5c:	2a00018c 	ld.bu	$r12,$r12,0
1c003a60:	0015018d 	move	$r13,$r12
1c003a64:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a68:	2a00018c 	ld.bu	$r12,$r12,0
1c003a6c:	001131ac 	sub.w	$r12,$r13,$r12
1c003a70:	00150184 	move	$r4,$r12
1c003a74:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a7c:	4c000020 	jirl	$r0,$r1,0

1c003a80 <strcpy>:
strcpy():
1c003a80:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a84:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003a88:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003a8c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003a90:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003a94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003a98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a9c:	03400000 	andi	$r0,$r0,0x0
1c003aa0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003aa4:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c003aa8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003aac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003ab0:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c003ab4:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c003ab8:	280001ad 	ld.b	$r13,$r13,0
1c003abc:	2900018d 	st.b	$r13,$r12,0
1c003ac0:	2800018c 	ld.b	$r12,$r12,0
1c003ac4:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003aa0 <strcpy+0x20>
1c003ac8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003acc:	00150184 	move	$r4,$r12
1c003ad0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003ad4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003ad8:	4c000020 	jirl	$r0,$r1,0

1c003adc <strlen>:
strlen():
1c003adc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003ae0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003ae4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003ae8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003aec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003af0:	50001000 	b	16(0x10) # 1c003b00 <strlen+0x24>
1c003af4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003af8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003afc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b04:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003b08:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003b0c:	2800018c 	ld.b	$r12,$r12,0
1c003b10:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003af4 <strlen+0x18>
1c003b14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b18:	00150184 	move	$r4,$r12
1c003b1c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003b20:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003b24:	4c000020 	jirl	$r0,$r1,0

1c003b28 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003b28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b2c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003b30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b34:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003b38:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003b3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b40:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003b44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003b48:	001531ad 	or	$r13,$r13,$r12
1c003b4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b50:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003b54:	03400000 	andi	$r0,$r0,0x0
1c003b58:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003b5c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b60:	4c000020 	jirl	$r0,$r1,0

1c003b64 <WDG_getOddValue>:
WDG_getOddValue():
1c003b64:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b68:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003b6c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b70:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003b74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b78:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003b7c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b80:	50003800 	b	56(0x38) # 1c003bb8 <WDG_getOddValue+0x54>
1c003b84:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003b88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b8c:	001731ac 	sll.w	$r12,$r13,$r12
1c003b90:	0015018d 	move	$r13,$r12
1c003b94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b98:	0014b1ac 	and	$r12,$r13,$r12
1c003b9c:	40001180 	beqz	$r12,16(0x10) # 1c003bac <WDG_getOddValue+0x48>
1c003ba0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003ba4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ba8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003bac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003bb4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003bb8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003bbc:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003bc0:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003b84 <WDG_getOddValue+0x20>
1c003bc4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003bc8:	0340058c 	andi	$r12,$r12,0x1
1c003bcc:	44000d80 	bnez	$r12,12(0xc) # 1c003bd8 <WDG_getOddValue+0x74>
1c003bd0:	1400010c 	lu12i.w	$r12,8(0x8)
1c003bd4:	50000800 	b	8(0x8) # 1c003bdc <WDG_getOddValue+0x78>
1c003bd8:	0015000c 	move	$r12,$r0
1c003bdc:	00150184 	move	$r4,$r12
1c003be0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003be4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003be8:	4c000020 	jirl	$r0,$r1,0

1c003bec <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003bec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003bf0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003bf4:	29806076 	st.w	$r22,$r3,24(0x18)
1c003bf8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003bfc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003c00:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c04:	140000ec 	lu12i.w	$r12,7(0x7)
1c003c08:	03bffd8c 	ori	$r12,$r12,0xfff
1c003c0c:	0014b1ac 	and	$r12,$r13,$r12
1c003c10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c14:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003c18:	57ff4fff 	bl	-180(0xfffff4c) # 1c003b64 <WDG_getOddValue>
1c003c1c:	0015008c 	move	$r12,$r4
1c003c20:	0015018d 	move	$r13,$r12
1c003c24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c28:	0015358c 	or	$r12,$r12,$r13
1c003c2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c34:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003c38:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003c3c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003c40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c44:	0014300c 	nor	$r12,$r0,$r12
1c003c48:	0040c18c 	slli.w	$r12,$r12,0x10
1c003c4c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c50:	001531ac 	or	$r12,$r13,$r12
1c003c54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c5c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c60:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003c64:	03400000 	andi	$r0,$r0,0x0
1c003c68:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003c6c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003c70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c74:	4c000020 	jirl	$r0,$r1,0

1c003c78 <WDG_DogFeed>:
WDG_DogFeed():
1c003c78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c7c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003c80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c88:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003c8c:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003c90:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003c94:	03400000 	andi	$r0,$r0,0x0
1c003c98:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003c9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ca0:	4c000020 	jirl	$r0,$r1,0

1c003ca4 <WdgInit>:
WdgInit():
1c003ca4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ca8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003cac:	29802076 	st.w	$r22,$r3,8(0x8)
1c003cb0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003cb4:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003cb8:	03bffd84 	ori	$r4,$r12,0xfff
1c003cbc:	57ff33ff 	bl	-208(0xfffff30) # 1c003bec <WDG_SetWatchDog>
1c003cc0:	03400000 	andi	$r0,$r0,0x0
1c003cc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003cc8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ccc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cd0:	4c000020 	jirl	$r0,$r1,0

1c003cd4 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003cd4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003cd8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003cdc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ce0:	0015008c 	move	$r12,$r4
1c003ce4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003ce8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003cec:	0040898c 	slli.w	$r12,$r12,0x2
1c003cf0:	0015018d 	move	$r13,$r12
1c003cf4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003cf8:	0381018c 	ori	$r12,$r12,0x40
1c003cfc:	001031ac 	add.w	$r12,$r13,$r12
1c003d00:	2880018c 	ld.w	$r12,$r12,0
1c003d04:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d08:	037ffd8c 	andi	$r12,$r12,0xfff
1c003d0c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d10:	00150184 	move	$r4,$r12
1c003d14:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003d18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d1c:	4c000020 	jirl	$r0,$r1,0

1c003d20 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003d20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d24:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d2c:	0015008c 	move	$r12,$r4
1c003d30:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003d34:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003d38:	0040898c 	slli.w	$r12,$r12,0x2
1c003d3c:	0015018d 	move	$r13,$r12
1c003d40:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003d44:	0382018c 	ori	$r12,$r12,0x80
1c003d48:	001031ac 	add.w	$r12,$r13,$r12
1c003d4c:	2880018c 	ld.w	$r12,$r12,0
1c003d50:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d54:	037ffd8c 	andi	$r12,$r12,0xfff
1c003d58:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d5c:	00150184 	move	$r4,$r12
1c003d60:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003d64:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d68:	4c000020 	jirl	$r0,$r1,0

1c003d6c <Printf_KeyChannel>:
Printf_KeyChannel():
1c003d6c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003d70:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003d74:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003d78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003d7c:	0015008c 	move	$r12,$r4
1c003d80:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003d84:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d88:	50003400 	b	52(0x34) # 1c003dbc <Printf_KeyChannel+0x50>
1c003d8c:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003d90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d94:	001831ac 	sra.w	$r12,$r13,$r12
1c003d98:	0340058c 	andi	$r12,$r12,0x1
1c003d9c:	40001580 	beqz	$r12,20(0x14) # 1c003db0 <Printf_KeyChannel+0x44>
1c003da0:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003da4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003da8:	02a36084 	addi.w	$r4,$r4,-1832(0x8d8)
1c003dac:	57e0abff 	bl	-8024(0xfffe0a8) # 1c001e54 <myprintf>
1c003db0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003db4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003db8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003dbc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003dc0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003dc4:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003d8c <Printf_KeyChannel+0x20>
1c003dc8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003dcc:	02a2e084 	addi.w	$r4,$r4,-1864(0x8b8)
1c003dd0:	57e087ff 	bl	-8060(0xfffe084) # 1c001e54 <myprintf>
1c003dd4:	03400000 	andi	$r0,$r0,0x0
1c003dd8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003ddc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003de0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003de4:	4c000020 	jirl	$r0,$r1,0

1c003de8 <Printf_KeyType>:
Printf_KeyType():
1c003de8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003dec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003df0:	29806076 	st.w	$r22,$r3,24(0x18)
1c003df4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003df8:	0015008c 	move	$r12,$r4
1c003dfc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003e00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e04:	0340058c 	andi	$r12,$r12,0x1
1c003e08:	40001180 	beqz	$r12,16(0x10) # 1c003e18 <Printf_KeyType+0x30>
1c003e0c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e10:	02a1e084 	addi.w	$r4,$r4,-1928(0x878)
1c003e14:	57e043ff 	bl	-8128(0xfffe040) # 1c001e54 <myprintf>
1c003e18:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e1c:	0340098c 	andi	$r12,$r12,0x2
1c003e20:	40001180 	beqz	$r12,16(0x10) # 1c003e30 <Printf_KeyType+0x48>
1c003e24:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e28:	02a1a084 	addi.w	$r4,$r4,-1944(0x868)
1c003e2c:	57e02bff 	bl	-8152(0xfffe028) # 1c001e54 <myprintf>
1c003e30:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e34:	0340118c 	andi	$r12,$r12,0x4
1c003e38:	40001180 	beqz	$r12,16(0x10) # 1c003e48 <Printf_KeyType+0x60>
1c003e3c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e40:	02a16084 	addi.w	$r4,$r4,-1960(0x858)
1c003e44:	57e013ff 	bl	-8176(0xfffe010) # 1c001e54 <myprintf>
1c003e48:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e4c:	0340218c 	andi	$r12,$r12,0x8
1c003e50:	40001180 	beqz	$r12,16(0x10) # 1c003e60 <Printf_KeyType+0x78>
1c003e54:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e58:	02a13084 	addi.w	$r4,$r4,-1972(0x84c)
1c003e5c:	57dffbff 	bl	-8200(0xfffdff8) # 1c001e54 <myprintf>
1c003e60:	03400000 	andi	$r0,$r0,0x0
1c003e64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003e68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003e6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e70:	4c000020 	jirl	$r0,$r1,0

1c003e74 <Printf_KeyVal>:
Printf_KeyVal():
1c003e74:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003e78:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003e7c:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003e80:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003e84:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e88:	5000d800 	b	216(0xd8) # 1c003f60 <Printf_KeyVal+0xec>
1c003e8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e90:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e94:	00150184 	move	$r4,$r12
1c003e98:	57fe8bff 	bl	-376(0xffffe88) # 1c003d20 <TOUCH_GetCountValue>
1c003e9c:	0015008c 	move	$r12,$r4
1c003ea0:	0015018d 	move	$r13,$r12
1c003ea4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ea8:	0040898c 	slli.w	$r12,$r12,0x2
1c003eac:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003eb0:	001031cc 	add.w	$r12,$r14,$r12
1c003eb4:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003eb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ebc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ec0:	00150184 	move	$r4,$r12
1c003ec4:	57fe13ff 	bl	-496(0xffffe10) # 1c003cd4 <TOUCH_GetBaseVal>
1c003ec8:	0015008c 	move	$r12,$r4
1c003ecc:	0015018d 	move	$r13,$r12
1c003ed0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ed4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ed8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003edc:	001031cc 	add.w	$r12,$r14,$r12
1c003ee0:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003ee4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ee8:	0040898c 	slli.w	$r12,$r12,0x2
1c003eec:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ef0:	001031ac 	add.w	$r12,$r13,$r12
1c003ef4:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003ef8:	40004980 	beqz	$r12,72(0x48) # 1c003f40 <Printf_KeyVal+0xcc>
1c003efc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f00:	0040898c 	slli.w	$r12,$r12,0x2
1c003f04:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f08:	001031ac 	add.w	$r12,$r13,$r12
1c003f0c:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003f10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f14:	0040898c 	slli.w	$r12,$r12,0x2
1c003f18:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003f1c:	001031cc 	add.w	$r12,$r14,$r12
1c003f20:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003f24:	001131ad 	sub.w	$r13,$r13,$r12
1c003f28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f2c:	0040898c 	slli.w	$r12,$r12,0x2
1c003f30:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003f34:	001031cc 	add.w	$r12,$r14,$r12
1c003f38:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003f3c:	50001800 	b	24(0x18) # 1c003f54 <Printf_KeyVal+0xe0>
1c003f40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f44:	0040898c 	slli.w	$r12,$r12,0x2
1c003f48:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f4c:	001031ac 	add.w	$r12,$r13,$r12
1c003f50:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003f54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f60:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f64:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003f68:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003e8c <Printf_KeyVal+0x18>
1c003f6c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f70:	029d0084 	addi.w	$r4,$r4,1856(0x740)
1c003f74:	57dee3ff 	bl	-8480(0xfffdee0) # 1c001e54 <myprintf>
1c003f78:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f7c:	029d7084 	addi.w	$r4,$r4,1884(0x75c)
1c003f80:	57ded7ff 	bl	-8492(0xfffded4) # 1c001e54 <myprintf>
1c003f84:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f88:	50003400 	b	52(0x34) # 1c003fbc <Printf_KeyVal+0x148>
1c003f8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f90:	0040898c 	slli.w	$r12,$r12,0x2
1c003f94:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f98:	001031ac 	add.w	$r12,$r13,$r12
1c003f9c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003fa0:	00150185 	move	$r5,$r12
1c003fa4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fa8:	029ce084 	addi.w	$r4,$r4,1848(0x738)
1c003fac:	57deabff 	bl	-8536(0xfffdea8) # 1c001e54 <myprintf>
1c003fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003fb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003fbc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003fc0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003fc4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003f8c <Printf_KeyVal+0x118>
1c003fc8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fcc:	029c7084 	addi.w	$r4,$r4,1820(0x71c)
1c003fd0:	57de87ff 	bl	-8572(0xfffde84) # 1c001e54 <myprintf>
1c003fd4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003fd8:	50003400 	b	52(0x34) # 1c00400c <Printf_KeyVal+0x198>
1c003fdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fe0:	0040898c 	slli.w	$r12,$r12,0x2
1c003fe4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003fe8:	001031ac 	add.w	$r12,$r13,$r12
1c003fec:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003ff0:	00150185 	move	$r5,$r12
1c003ff4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ff8:	029ba084 	addi.w	$r4,$r4,1768(0x6e8)
1c003ffc:	57de5bff 	bl	-8616(0xfffde58) # 1c001e54 <myprintf>
1c004000:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004004:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004008:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00400c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004010:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004014:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003fdc <Printf_KeyVal+0x168>
1c004018:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00401c:	029b6084 	addi.w	$r4,$r4,1752(0x6d8)
1c004020:	57de37ff 	bl	-8652(0xfffde34) # 1c001e54 <myprintf>
1c004024:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004028:	50007400 	b	116(0x74) # 1c00409c <Printf_KeyVal+0x228>
1c00402c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004030:	0040898c 	slli.w	$r12,$r12,0x2
1c004034:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004038:	001031ac 	add.w	$r12,$r13,$r12
1c00403c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004040:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c00406c <Printf_KeyVal+0x1f8>
1c004044:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004048:	0040898c 	slli.w	$r12,$r12,0x2
1c00404c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004050:	001031ac 	add.w	$r12,$r13,$r12
1c004054:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004058:	00150185 	move	$r5,$r12
1c00405c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004060:	029a8084 	addi.w	$r4,$r4,1696(0x6a0)
1c004064:	57ddf3ff 	bl	-8720(0xfffddf0) # 1c001e54 <myprintf>
1c004068:	50002800 	b	40(0x28) # 1c004090 <Printf_KeyVal+0x21c>
1c00406c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004070:	0040898c 	slli.w	$r12,$r12,0x2
1c004074:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004078:	001031ac 	add.w	$r12,$r13,$r12
1c00407c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004080:	00150185 	move	$r5,$r12
1c004084:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004088:	029a0084 	addi.w	$r4,$r4,1664(0x680)
1c00408c:	57ddcbff 	bl	-8760(0xfffddc8) # 1c001e54 <myprintf>
1c004090:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004094:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004098:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00409c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040a0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0040a4:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c00402c <Printf_KeyVal+0x1b8>
1c0040a8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040ac:	02976084 	addi.w	$r4,$r4,1496(0x5d8)
1c0040b0:	57dda7ff 	bl	-8796(0xfffdda4) # 1c001e54 <myprintf>
1c0040b4:	03400000 	andi	$r0,$r0,0x0
1c0040b8:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c0040bc:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c0040c0:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c0040c4:	4c000020 	jirl	$r0,$r1,0

1c0040c8 <TIM_GetITStatus>:
TIM_GetITStatus():
1c0040c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0040cc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0040d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0040d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0040d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0040dc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040e0:	2880018d 	ld.w	$r13,$r12,0
1c0040e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0040e8:	0014b1ac 	and	$r12,$r13,$r12
1c0040ec:	40001180 	beqz	$r12,16(0x10) # 1c0040fc <TIM_GetITStatus+0x34>
1c0040f0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0040f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0040f8:	50000800 	b	8(0x8) # 1c004100 <TIM_GetITStatus+0x38>
1c0040fc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004100:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004104:	00150184 	move	$r4,$r12
1c004108:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00410c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004110:	4c000020 	jirl	$r0,$r1,0

1c004114 <TIM_ClearIT>:
TIM_ClearIT():
1c004114:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004118:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00411c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004120:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004124:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004128:	2880018e 	ld.w	$r14,$r12,0
1c00412c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004130:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004134:	001535cd 	or	$r13,$r14,$r13
1c004138:	2980018d 	st.w	$r13,$r12,0
1c00413c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004140:	03800d8c 	ori	$r12,$r12,0x3
1c004144:	2a00018c 	ld.bu	$r12,$r12,0
1c004148:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00414c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004150:	03800d8c 	ori	$r12,$r12,0x3
1c004154:	038005ad 	ori	$r13,$r13,0x1
1c004158:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00415c:	2900018d 	st.b	$r13,$r12,0
1c004160:	03400000 	andi	$r0,$r0,0x0
1c004164:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004168:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00416c:	4c000020 	jirl	$r0,$r1,0

1c004170 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004170:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004174:	29803061 	st.w	$r1,$r3,12(0xc)
1c004178:	29802076 	st.w	$r22,$r3,8(0x8)
1c00417c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004180:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004184:	029c00c6 	addi.w	$r6,$r6,1792(0x700)
1c004188:	02805005 	addi.w	$r5,$r0,20(0x14)
1c00418c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004190:	02960084 	addi.w	$r4,$r4,1408(0x580)
1c004194:	57dcc3ff 	bl	-9024(0xfffdcc0) # 1c001e54 <myprintf>
1c004198:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00419c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041a0:	03808184 	ori	$r4,$r12,0x20
1c0041a4:	57f987ff 	bl	-1660(0xffff984) # 1c003b28 <EXTI_ClearITPendingBit>
1c0041a8:	03400000 	andi	$r0,$r0,0x0
1c0041ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041b8:	4c000020 	jirl	$r0,$r1,0

1c0041bc <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0041bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041cc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041d0:	029b30c6 	addi.w	$r6,$r6,1740(0x6cc)
1c0041d4:	02806405 	addi.w	$r5,$r0,25(0x19)
1c0041d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041dc:	0294d084 	addi.w	$r4,$r4,1332(0x534)
1c0041e0:	57dc77ff 	bl	-9100(0xfffdc74) # 1c001e54 <myprintf>
1c0041e4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0041e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041ec:	03808184 	ori	$r4,$r12,0x20
1c0041f0:	57f93bff 	bl	-1736(0xffff938) # 1c003b28 <EXTI_ClearITPendingBit>
1c0041f4:	03400000 	andi	$r0,$r0,0x0
1c0041f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004200:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004204:	4c000020 	jirl	$r0,$r1,0

1c004208 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c004208:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00420c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004210:	29802076 	st.w	$r22,$r3,8(0x8)
1c004214:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004218:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00421c:	029a60c6 	addi.w	$r6,$r6,1688(0x698)
1c004220:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c004224:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004228:	0293a084 	addi.w	$r4,$r4,1256(0x4e8)
1c00422c:	57dc2bff 	bl	-9176(0xfffdc28) # 1c001e54 <myprintf>
1c004230:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004234:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004238:	03808184 	ori	$r4,$r12,0x20
1c00423c:	57f8efff 	bl	-1812(0xffff8ec) # 1c003b28 <EXTI_ClearITPendingBit>
1c004240:	03400000 	andi	$r0,$r0,0x0
1c004244:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004248:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00424c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004250:	4c000020 	jirl	$r0,$r1,0

1c004254 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004254:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004258:	29803061 	st.w	$r1,$r3,12(0xc)
1c00425c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004260:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004264:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004268:	029990c6 	addi.w	$r6,$r6,1636(0x664)
1c00426c:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c004270:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004274:	02927084 	addi.w	$r4,$r4,1180(0x49c)
1c004278:	57dbdfff 	bl	-9252(0xfffdbdc) # 1c001e54 <myprintf>
1c00427c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004280:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004284:	03808184 	ori	$r4,$r12,0x20
1c004288:	57f8a3ff 	bl	-1888(0xffff8a0) # 1c003b28 <EXTI_ClearITPendingBit>
1c00428c:	03400000 	andi	$r0,$r0,0x0
1c004290:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004294:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004298:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00429c:	4c000020 	jirl	$r0,$r1,0

1c0042a0 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0042a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042b0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042b4:	0298c0c6 	addi.w	$r6,$r6,1584(0x630)
1c0042b8:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c0042bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042c0:	02914084 	addi.w	$r4,$r4,1104(0x450)
1c0042c4:	57db93ff 	bl	-9328(0xfffdb90) # 1c001e54 <myprintf>
1c0042c8:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0042cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042d0:	03808184 	ori	$r4,$r12,0x20
1c0042d4:	57f857ff 	bl	-1964(0xffff854) # 1c003b28 <EXTI_ClearITPendingBit>
1c0042d8:	03400000 	andi	$r0,$r0,0x0
1c0042dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042e8:	4c000020 	jirl	$r0,$r1,0

1c0042ec <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0042ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042fc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004300:	0297f0c6 	addi.w	$r6,$r6,1532(0x5fc)
1c004304:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c004308:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00430c:	02901084 	addi.w	$r4,$r4,1028(0x404)
1c004310:	57db47ff 	bl	-9404(0xfffdb44) # 1c001e54 <myprintf>
1c004314:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004318:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00431c:	03808184 	ori	$r4,$r12,0x20
1c004320:	57f80bff 	bl	-2040(0xffff808) # 1c003b28 <EXTI_ClearITPendingBit>
1c004324:	03400000 	andi	$r0,$r0,0x0
1c004328:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00432c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004330:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004334:	4c000020 	jirl	$r0,$r1,0

1c004338 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004338:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00433c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004340:	29802076 	st.w	$r22,$r3,8(0x8)
1c004344:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004348:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00434c:	029720c6 	addi.w	$r6,$r6,1480(0x5c8)
1c004350:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c004354:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004358:	028ee084 	addi.w	$r4,$r4,952(0x3b8)
1c00435c:	57dafbff 	bl	-9480(0xfffdaf8) # 1c001e54 <myprintf>
1c004360:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004364:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004368:	03808184 	ori	$r4,$r12,0x20
1c00436c:	57f7bfff 	bl	-2116(0xffff7bc) # 1c003b28 <EXTI_ClearITPendingBit>
1c004370:	03400000 	andi	$r0,$r0,0x0
1c004374:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004378:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00437c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004380:	4c000020 	jirl	$r0,$r1,0

1c004384 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004384:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004388:	29803061 	st.w	$r1,$r3,12(0xc)
1c00438c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004390:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004394:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004398:	029650c6 	addi.w	$r6,$r6,1428(0x594)
1c00439c:	0280dc05 	addi.w	$r5,$r0,55(0x37)
1c0043a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043a4:	028db084 	addi.w	$r4,$r4,876(0x36c)
1c0043a8:	57daafff 	bl	-9556(0xfffdaac) # 1c001e54 <myprintf>
1c0043ac:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0043b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043b4:	03808184 	ori	$r4,$r12,0x20
1c0043b8:	57f773ff 	bl	-2192(0xffff770) # 1c003b28 <EXTI_ClearITPendingBit>
1c0043bc:	03400000 	andi	$r0,$r0,0x0
1c0043c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043cc:	4c000020 	jirl	$r0,$r1,0

1c0043d0 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0043d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043e0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043e4:	029580c6 	addi.w	$r6,$r6,1376(0x560)
1c0043e8:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c0043ec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043f0:	028c8084 	addi.w	$r4,$r4,800(0x320)
1c0043f4:	57da63ff 	bl	-9632(0xfffda60) # 1c001e54 <myprintf>
1c0043f8:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0043fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004400:	03808184 	ori	$r4,$r12,0x20
1c004404:	57f727ff 	bl	-2268(0xffff724) # 1c003b28 <EXTI_ClearITPendingBit>
1c004408:	03400000 	andi	$r0,$r0,0x0
1c00440c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004410:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004414:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004418:	4c000020 	jirl	$r0,$r1,0

1c00441c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00441c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004420:	29803061 	st.w	$r1,$r3,12(0xc)
1c004424:	29802076 	st.w	$r22,$r3,8(0x8)
1c004428:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00442c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004430:	0294b0c6 	addi.w	$r6,$r6,1324(0x52c)
1c004434:	02810405 	addi.w	$r5,$r0,65(0x41)
1c004438:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00443c:	028b5084 	addi.w	$r4,$r4,724(0x2d4)
1c004440:	57da17ff 	bl	-9708(0xfffda14) # 1c001e54 <myprintf>
1c004444:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004448:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00444c:	03808184 	ori	$r4,$r12,0x20
1c004450:	57f6dbff 	bl	-2344(0xffff6d8) # 1c003b28 <EXTI_ClearITPendingBit>
1c004454:	03400000 	andi	$r0,$r0,0x0
1c004458:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00445c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004460:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004464:	4c000020 	jirl	$r0,$r1,0

1c004468 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004468:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00446c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004470:	29802076 	st.w	$r22,$r3,8(0x8)
1c004474:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004478:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00447c:	0293e0c6 	addi.w	$r6,$r6,1272(0x4f8)
1c004480:	02811805 	addi.w	$r5,$r0,70(0x46)
1c004484:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004488:	028a2084 	addi.w	$r4,$r4,648(0x288)
1c00448c:	57d9cbff 	bl	-9784(0xfffd9c8) # 1c001e54 <myprintf>
1c004490:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004494:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004498:	03808184 	ori	$r4,$r12,0x20
1c00449c:	57f68fff 	bl	-2420(0xffff68c) # 1c003b28 <EXTI_ClearITPendingBit>
1c0044a0:	03400000 	andi	$r0,$r0,0x0
1c0044a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044b0:	4c000020 	jirl	$r0,$r1,0

1c0044b4 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0044b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044c4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044c8:	029310c6 	addi.w	$r6,$r6,1220(0x4c4)
1c0044cc:	02812c05 	addi.w	$r5,$r0,75(0x4b)
1c0044d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044d4:	0288f084 	addi.w	$r4,$r4,572(0x23c)
1c0044d8:	57d97fff 	bl	-9860(0xfffd97c) # 1c001e54 <myprintf>
1c0044dc:	03a00005 	ori	$r5,$r0,0x800
1c0044e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044e4:	03808184 	ori	$r4,$r12,0x20
1c0044e8:	57f643ff 	bl	-2496(0xffff640) # 1c003b28 <EXTI_ClearITPendingBit>
1c0044ec:	03400000 	andi	$r0,$r0,0x0
1c0044f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044fc:	4c000020 	jirl	$r0,$r1,0

1c004500 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004500:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004504:	29803061 	st.w	$r1,$r3,12(0xc)
1c004508:	29802076 	st.w	$r22,$r3,8(0x8)
1c00450c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004510:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004514:	029240c6 	addi.w	$r6,$r6,1168(0x490)
1c004518:	02814005 	addi.w	$r5,$r0,80(0x50)
1c00451c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004520:	0287c084 	addi.w	$r4,$r4,496(0x1f0)
1c004524:	57d933ff 	bl	-9936(0xfffd930) # 1c001e54 <myprintf>
1c004528:	14000025 	lu12i.w	$r5,1(0x1)
1c00452c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004530:	03808184 	ori	$r4,$r12,0x20
1c004534:	57f5f7ff 	bl	-2572(0xffff5f4) # 1c003b28 <EXTI_ClearITPendingBit>
1c004538:	03400000 	andi	$r0,$r0,0x0
1c00453c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004540:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004544:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004548:	4c000020 	jirl	$r0,$r1,0

1c00454c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00454c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004550:	29803061 	st.w	$r1,$r3,12(0xc)
1c004554:	29802076 	st.w	$r22,$r3,8(0x8)
1c004558:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00455c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004560:	029170c6 	addi.w	$r6,$r6,1116(0x45c)
1c004564:	02815405 	addi.w	$r5,$r0,85(0x55)
1c004568:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00456c:	02869084 	addi.w	$r4,$r4,420(0x1a4)
1c004570:	57d8e7ff 	bl	-10012(0xfffd8e4) # 1c001e54 <myprintf>
1c004574:	14000045 	lu12i.w	$r5,2(0x2)
1c004578:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00457c:	03808184 	ori	$r4,$r12,0x20
1c004580:	57f5abff 	bl	-2648(0xffff5a8) # 1c003b28 <EXTI_ClearITPendingBit>
1c004584:	03400000 	andi	$r0,$r0,0x0
1c004588:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00458c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004590:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004594:	4c000020 	jirl	$r0,$r1,0

1c004598 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004598:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00459c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045a8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045ac:	0290a0c6 	addi.w	$r6,$r6,1064(0x428)
1c0045b0:	02816805 	addi.w	$r5,$r0,90(0x5a)
1c0045b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045b8:	02856084 	addi.w	$r4,$r4,344(0x158)
1c0045bc:	57d89bff 	bl	-10088(0xfffd898) # 1c001e54 <myprintf>
1c0045c0:	14000085 	lu12i.w	$r5,4(0x4)
1c0045c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045c8:	03808184 	ori	$r4,$r12,0x20
1c0045cc:	57f55fff 	bl	-2724(0xffff55c) # 1c003b28 <EXTI_ClearITPendingBit>
1c0045d0:	03400000 	andi	$r0,$r0,0x0
1c0045d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045e0:	4c000020 	jirl	$r0,$r1,0

1c0045e4 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0045e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045f4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045f8:	028fd0c6 	addi.w	$r6,$r6,1012(0x3f4)
1c0045fc:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c004600:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004604:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c004608:	57d84fff 	bl	-10164(0xfffd84c) # 1c001e54 <myprintf>
1c00460c:	14000105 	lu12i.w	$r5,8(0x8)
1c004610:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004614:	03808184 	ori	$r4,$r12,0x20
1c004618:	57f513ff 	bl	-2800(0xffff510) # 1c003b28 <EXTI_ClearITPendingBit>
1c00461c:	03400000 	andi	$r0,$r0,0x0
1c004620:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004624:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004628:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00462c:	4c000020 	jirl	$r0,$r1,0

1c004630 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004630:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004634:	29803061 	st.w	$r1,$r3,12(0xc)
1c004638:	29802076 	st.w	$r22,$r3,8(0x8)
1c00463c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004640:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004644:	028f00c6 	addi.w	$r6,$r6,960(0x3c0)
1c004648:	02819405 	addi.w	$r5,$r0,101(0x65)
1c00464c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004650:	02830084 	addi.w	$r4,$r4,192(0xc0)
1c004654:	57d803ff 	bl	-10240(0xfffd800) # 1c001e54 <myprintf>
1c004658:	14000205 	lu12i.w	$r5,16(0x10)
1c00465c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004660:	03808184 	ori	$r4,$r12,0x20
1c004664:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c003b28 <EXTI_ClearITPendingBit>
1c004668:	03400000 	andi	$r0,$r0,0x0
1c00466c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004670:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004674:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004678:	4c000020 	jirl	$r0,$r1,0

1c00467c <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00467c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004680:	29803061 	st.w	$r1,$r3,12(0xc)
1c004684:	29802076 	st.w	$r22,$r3,8(0x8)
1c004688:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00468c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004690:	028e30c6 	addi.w	$r6,$r6,908(0x38c)
1c004694:	0281a805 	addi.w	$r5,$r0,106(0x6a)
1c004698:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00469c:	0281d084 	addi.w	$r4,$r4,116(0x74)
1c0046a0:	57d7b7ff 	bl	-10316(0xfffd7b4) # 1c001e54 <myprintf>
1c0046a4:	14000405 	lu12i.w	$r5,32(0x20)
1c0046a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046ac:	03808184 	ori	$r4,$r12,0x20
1c0046b0:	57f47bff 	bl	-2952(0xffff478) # 1c003b28 <EXTI_ClearITPendingBit>
1c0046b4:	03400000 	andi	$r0,$r0,0x0
1c0046b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046c4:	4c000020 	jirl	$r0,$r1,0

1c0046c8 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0046c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046d8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046dc:	028d60c6 	addi.w	$r6,$r6,856(0x358)
1c0046e0:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c0046e4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046e8:	0280a084 	addi.w	$r4,$r4,40(0x28)
1c0046ec:	57d76bff 	bl	-10392(0xfffd768) # 1c001e54 <myprintf>
1c0046f0:	14000805 	lu12i.w	$r5,64(0x40)
1c0046f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046f8:	03808184 	ori	$r4,$r12,0x20
1c0046fc:	57f42fff 	bl	-3028(0xffff42c) # 1c003b28 <EXTI_ClearITPendingBit>
1c004700:	03400000 	andi	$r0,$r0,0x0
1c004704:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004708:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00470c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004710:	4c000020 	jirl	$r0,$r1,0

1c004714 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004714:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004718:	29803061 	st.w	$r1,$r3,12(0xc)
1c00471c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004720:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004724:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004728:	028c90c6 	addi.w	$r6,$r6,804(0x324)
1c00472c:	0281d005 	addi.w	$r5,$r0,116(0x74)
1c004730:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004734:	02bf7084 	addi.w	$r4,$r4,-36(0xfdc)
1c004738:	57d71fff 	bl	-10468(0xfffd71c) # 1c001e54 <myprintf>
1c00473c:	14001005 	lu12i.w	$r5,128(0x80)
1c004740:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004744:	03808184 	ori	$r4,$r12,0x20
1c004748:	57f3e3ff 	bl	-3104(0xffff3e0) # 1c003b28 <EXTI_ClearITPendingBit>
1c00474c:	03400000 	andi	$r0,$r0,0x0
1c004750:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004754:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004758:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00475c:	4c000020 	jirl	$r0,$r1,0

1c004760 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004760:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004764:	29803061 	st.w	$r1,$r3,12(0xc)
1c004768:	29802076 	st.w	$r22,$r3,8(0x8)
1c00476c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004770:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004774:	028bc0c6 	addi.w	$r6,$r6,752(0x2f0)
1c004778:	0281e405 	addi.w	$r5,$r0,121(0x79)
1c00477c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004780:	02be4084 	addi.w	$r4,$r4,-112(0xf90)
1c004784:	57d6d3ff 	bl	-10544(0xfffd6d0) # 1c001e54 <myprintf>
1c004788:	14002005 	lu12i.w	$r5,256(0x100)
1c00478c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004790:	03808184 	ori	$r4,$r12,0x20
1c004794:	57f397ff 	bl	-3180(0xffff394) # 1c003b28 <EXTI_ClearITPendingBit>
1c004798:	03400000 	andi	$r0,$r0,0x0
1c00479c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047a8:	4c000020 	jirl	$r0,$r1,0

1c0047ac <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0047ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047bc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047c0:	028af0c6 	addi.w	$r6,$r6,700(0x2bc)
1c0047c4:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c0047c8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047cc:	02bd1084 	addi.w	$r4,$r4,-188(0xf44)
1c0047d0:	57d687ff 	bl	-10620(0xfffd684) # 1c001e54 <myprintf>
1c0047d4:	14004005 	lu12i.w	$r5,512(0x200)
1c0047d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047dc:	03808184 	ori	$r4,$r12,0x20
1c0047e0:	57f34bff 	bl	-3256(0xffff348) # 1c003b28 <EXTI_ClearITPendingBit>
1c0047e4:	03400000 	andi	$r0,$r0,0x0
1c0047e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047f4:	4c000020 	jirl	$r0,$r1,0

1c0047f8 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0047f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004800:	29802076 	st.w	$r22,$r3,8(0x8)
1c004804:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004808:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00480c:	028a20c6 	addi.w	$r6,$r6,648(0x288)
1c004810:	02820c05 	addi.w	$r5,$r0,131(0x83)
1c004814:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004818:	02bbe084 	addi.w	$r4,$r4,-264(0xef8)
1c00481c:	57d63bff 	bl	-10696(0xfffd638) # 1c001e54 <myprintf>
1c004820:	14008005 	lu12i.w	$r5,1024(0x400)
1c004824:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004828:	03808184 	ori	$r4,$r12,0x20
1c00482c:	57f2ffff 	bl	-3332(0xffff2fc) # 1c003b28 <EXTI_ClearITPendingBit>
1c004830:	03400000 	andi	$r0,$r0,0x0
1c004834:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004838:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00483c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004840:	4c000020 	jirl	$r0,$r1,0

1c004844 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004844:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004848:	29803061 	st.w	$r1,$r3,12(0xc)
1c00484c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004850:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004854:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004858:	028950c6 	addi.w	$r6,$r6,596(0x254)
1c00485c:	02822005 	addi.w	$r5,$r0,136(0x88)
1c004860:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004864:	02bab084 	addi.w	$r4,$r4,-340(0xeac)
1c004868:	57d5efff 	bl	-10772(0xfffd5ec) # 1c001e54 <myprintf>
1c00486c:	14010005 	lu12i.w	$r5,2048(0x800)
1c004870:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004874:	03808184 	ori	$r4,$r12,0x20
1c004878:	57f2b3ff 	bl	-3408(0xffff2b0) # 1c003b28 <EXTI_ClearITPendingBit>
1c00487c:	03400000 	andi	$r0,$r0,0x0
1c004880:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004884:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004888:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00488c:	4c000020 	jirl	$r0,$r1,0

1c004890 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004890:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004894:	29803061 	st.w	$r1,$r3,12(0xc)
1c004898:	29802076 	st.w	$r22,$r3,8(0x8)
1c00489c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048a0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048a4:	028880c6 	addi.w	$r6,$r6,544(0x220)
1c0048a8:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c0048ac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0048b0:	02b98084 	addi.w	$r4,$r4,-416(0xe60)
1c0048b4:	57d5a3ff 	bl	-10848(0xfffd5a0) # 1c001e54 <myprintf>
1c0048b8:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0048bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048c0:	03808184 	ori	$r4,$r12,0x20
1c0048c4:	57f267ff 	bl	-3484(0xffff264) # 1c003b28 <EXTI_ClearITPendingBit>
1c0048c8:	03400000 	andi	$r0,$r0,0x0
1c0048cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048d8:	4c000020 	jirl	$r0,$r1,0

1c0048dc <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0048dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048ec:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048f0:	0287b0c6 	addi.w	$r6,$r6,492(0x1ec)
1c0048f4:	02824805 	addi.w	$r5,$r0,146(0x92)
1c0048f8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0048fc:	02b85084 	addi.w	$r4,$r4,-492(0xe14)
1c004900:	57d557ff 	bl	-10924(0xfffd554) # 1c001e54 <myprintf>
1c004904:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004908:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00490c:	03808184 	ori	$r4,$r12,0x20
1c004910:	57f21bff 	bl	-3560(0xffff218) # 1c003b28 <EXTI_ClearITPendingBit>
1c004914:	03400000 	andi	$r0,$r0,0x0
1c004918:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00491c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004920:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004924:	4c000020 	jirl	$r0,$r1,0

1c004928 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004928:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00492c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004930:	29802076 	st.w	$r22,$r3,8(0x8)
1c004934:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004938:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00493c:	0286e0c6 	addi.w	$r6,$r6,440(0x1b8)
1c004940:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c004944:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004948:	02b72084 	addi.w	$r4,$r4,-568(0xdc8)
1c00494c:	57d50bff 	bl	-11000(0xfffd508) # 1c001e54 <myprintf>
1c004950:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004954:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004958:	03808184 	ori	$r4,$r12,0x20
1c00495c:	57f1cfff 	bl	-3636(0xffff1cc) # 1c003b28 <EXTI_ClearITPendingBit>
1c004960:	03400000 	andi	$r0,$r0,0x0
1c004964:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004968:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00496c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004970:	4c000020 	jirl	$r0,$r1,0

1c004974 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004974:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004978:	29803061 	st.w	$r1,$r3,12(0xc)
1c00497c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004980:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004984:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004988:	028610c6 	addi.w	$r6,$r6,388(0x184)
1c00498c:	02827005 	addi.w	$r5,$r0,156(0x9c)
1c004990:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004994:	02b5f084 	addi.w	$r4,$r4,-644(0xd7c)
1c004998:	57d4bfff 	bl	-11076(0xfffd4bc) # 1c001e54 <myprintf>
1c00499c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0049a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049a4:	03808184 	ori	$r4,$r12,0x20
1c0049a8:	57f183ff 	bl	-3712(0xffff180) # 1c003b28 <EXTI_ClearITPendingBit>
1c0049ac:	03400000 	andi	$r0,$r0,0x0
1c0049b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049bc:	4c000020 	jirl	$r0,$r1,0

1c0049c0 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0049c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049d0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0049d4:	028540c6 	addi.w	$r6,$r6,336(0x150)
1c0049d8:	02828405 	addi.w	$r5,$r0,161(0xa1)
1c0049dc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0049e0:	02b4c084 	addi.w	$r4,$r4,-720(0xd30)
1c0049e4:	57d473ff 	bl	-11152(0xfffd470) # 1c001e54 <myprintf>
1c0049e8:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0049ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049f0:	03808184 	ori	$r4,$r12,0x20
1c0049f4:	57f137ff 	bl	-3788(0xffff134) # 1c003b28 <EXTI_ClearITPendingBit>
1c0049f8:	03400000 	andi	$r0,$r0,0x0
1c0049fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a00:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a08:	4c000020 	jirl	$r0,$r1,0

1c004a0c <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004a0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a10:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a14:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a1c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004a20:	028470c6 	addi.w	$r6,$r6,284(0x11c)
1c004a24:	02829c05 	addi.w	$r5,$r0,167(0xa7)
1c004a28:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004a2c:	02b39084 	addi.w	$r4,$r4,-796(0xce4)
1c004a30:	57d427ff 	bl	-11228(0xfffd424) # 1c001e54 <myprintf>
1c004a34:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004a38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a3c:	03808184 	ori	$r4,$r12,0x20
1c004a40:	57f0ebff 	bl	-3864(0xffff0e8) # 1c003b28 <EXTI_ClearITPendingBit>
1c004a44:	03400000 	andi	$r0,$r0,0x0
1c004a48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a4c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a54:	4c000020 	jirl	$r0,$r1,0

1c004a58 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004a58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a60:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a68:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004a6c:	0283a0c6 	addi.w	$r6,$r6,232(0xe8)
1c004a70:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c004a74:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004a78:	02b26084 	addi.w	$r4,$r4,-872(0xc98)
1c004a7c:	57d3dbff 	bl	-11304(0xfffd3d8) # 1c001e54 <myprintf>
1c004a80:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004a84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a88:	03808184 	ori	$r4,$r12,0x20
1c004a8c:	57f09fff 	bl	-3940(0xffff09c) # 1c003b28 <EXTI_ClearITPendingBit>
1c004a90:	03400000 	andi	$r0,$r0,0x0
1c004a94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004aa0:	4c000020 	jirl	$r0,$r1,0

1c004aa4 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004aa4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004aa8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004aac:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ab0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ab4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004ab8:	0282d0c6 	addi.w	$r6,$r6,180(0xb4)
1c004abc:	0282c405 	addi.w	$r5,$r0,177(0xb1)
1c004ac0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ac4:	02b13084 	addi.w	$r4,$r4,-948(0xc4c)
1c004ac8:	57d38fff 	bl	-11380(0xfffd38c) # 1c001e54 <myprintf>
1c004acc:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004ad0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad4:	03808184 	ori	$r4,$r12,0x20
1c004ad8:	57f053ff 	bl	-4016(0xffff050) # 1c003b28 <EXTI_ClearITPendingBit>
1c004adc:	03400000 	andi	$r0,$r0,0x0
1c004ae0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ae4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ae8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004aec:	4c000020 	jirl	$r0,$r1,0

1c004af0 <ext_handler>:
ext_handler():
1c004af0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004af4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004af8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004afc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b04:	0380f18c 	ori	$r12,$r12,0x3c
1c004b08:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004b0c:	2980018d 	st.w	$r13,$r12,0
1c004b10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b14:	0380818c 	ori	$r12,$r12,0x20
1c004b18:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004b1c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004b20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b24:	0380818c 	ori	$r12,$r12,0x20
1c004b28:	2880018c 	ld.w	$r12,$r12,0
1c004b2c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004b30:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004b34:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004b38:	0014b1ac 	and	$r12,$r13,$r12
1c004b3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004b40:	03400000 	andi	$r0,$r0,0x0
1c004b44:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004b48:	50004000 	b	64(0x40) # 1c004b88 <ext_handler+0x98>
1c004b4c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004b50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b54:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004b58:	0340058c 	andi	$r12,$r12,0x1
1c004b5c:	40002180 	beqz	$r12,32(0x20) # 1c004b7c <ext_handler+0x8c>
1c004b60:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c004b64:	02b171ad 	addi.w	$r13,$r13,-932(0xc5c)
1c004b68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b6c:	0040898c 	slli.w	$r12,$r12,0x2
1c004b70:	001031ac 	add.w	$r12,$r13,$r12
1c004b74:	2880018c 	ld.w	$r12,$r12,0
1c004b78:	4c000181 	jirl	$r1,$r12,0
1c004b7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004b84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b88:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004b8c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004b90:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004b4c <ext_handler+0x5c>
1c004b94:	03400000 	andi	$r0,$r0,0x0
1c004b98:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b9c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004ba0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ba4:	4c000020 	jirl	$r0,$r1,0

1c004ba8 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004ba8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004bac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004bb0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004bb4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004bb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bbc:	0380f18c 	ori	$r12,$r12,0x3c
1c004bc0:	1400020d 	lu12i.w	$r13,16(0x10)
1c004bc4:	2980018d 	st.w	$r13,$r12,0
1c004bc8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bcc:	0380118c 	ori	$r12,$r12,0x4
1c004bd0:	2880018c 	ld.w	$r12,$r12,0
1c004bd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004bd8:	57f0a3ff 	bl	-3936(0xffff0a0) # 1c003c78 <WDG_DogFeed>
1c004bdc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004be0:	57e9dfff 	bl	-5668(0xfffe9dc) # 1c0035bc <Wake_Set>
1c004be4:	03400000 	andi	$r0,$r0,0x0
1c004be8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004bec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004bf0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004bf4:	4c000020 	jirl	$r0,$r1,0

1c004bf8 <TOUCH>:
TOUCH():
1c004bf8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004bfc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c00:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c08:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004c0c:	0380118c 	ori	$r12,$r12,0x4
1c004c10:	2880018c 	ld.w	$r12,$r12,0
1c004c14:	0044c18c 	srli.w	$r12,$r12,0x10
1c004c18:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004c1c:	037ffd8c 	andi	$r12,$r12,0xfff
1c004c20:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004c24:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004c28:	0380118c 	ori	$r12,$r12,0x4
1c004c2c:	2880018c 	ld.w	$r12,$r12,0
1c004c30:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004c34:	03403d8c 	andi	$r12,$r12,0xf
1c004c38:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004c3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c40:	0380f18c 	ori	$r12,$r12,0x3c
1c004c44:	1400040d 	lu12i.w	$r13,32(0x20)
1c004c48:	2980018d 	st.w	$r13,$r12,0
1c004c4c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004c50:	0380118c 	ori	$r12,$r12,0x4
1c004c54:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004c58:	2980018d 	st.w	$r13,$r12,0
1c004c5c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004c60:	00150184 	move	$r4,$r12
1c004c64:	57f187ff 	bl	-3708(0xffff184) # 1c003de8 <Printf_KeyType>
1c004c68:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004c6c:	00150184 	move	$r4,$r12
1c004c70:	57f0ffff 	bl	-3844(0xffff0fc) # 1c003d6c <Printf_KeyChannel>
1c004c74:	57f203ff 	bl	-3584(0xffff200) # 1c003e74 <Printf_KeyVal>
1c004c78:	03400000 	andi	$r0,$r0,0x0
1c004c7c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c80:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c88:	4c000020 	jirl	$r0,$r1,0

1c004c8c <UART2_INT>:
UART2_INT():
1c004c8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004c94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c9c:	0380f18c 	ori	$r12,$r12,0x3c
1c004ca0:	1400080d 	lu12i.w	$r13,64(0x40)
1c004ca4:	2980018d 	st.w	$r13,$r12,0
1c004ca8:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004cac:	0380098c 	ori	$r12,$r12,0x2
1c004cb0:	2a00018c 	ld.bu	$r12,$r12,0
1c004cb4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004cb8:	03400000 	andi	$r0,$r0,0x0
1c004cbc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004cc0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004cc4:	4c000020 	jirl	$r0,$r1,0

1c004cc8 <BAT_FAIL>:
BAT_FAIL():
1c004cc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ccc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004cd0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004cd4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cdc:	0380118c 	ori	$r12,$r12,0x4
1c004ce0:	2880018c 	ld.w	$r12,$r12,0
1c004ce4:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004ce8:	03407d8c 	andi	$r12,$r12,0x1f
1c004cec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004cf0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cf4:	0380118c 	ori	$r12,$r12,0x4
1c004cf8:	2880018e 	ld.w	$r14,$r12,0
1c004cfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d00:	0380f18c 	ori	$r12,$r12,0x3c
1c004d04:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004d08:	0014b5cd 	and	$r13,$r14,$r13
1c004d0c:	2980018d 	st.w	$r13,$r12,0
1c004d10:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004d14:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004d18:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004d88 <BAT_FAIL+0xc0>
1c004d1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d20:	0040898d 	slli.w	$r13,$r12,0x2
1c004d24:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004d28:	02ac618c 	addi.w	$r12,$r12,-1256(0xb18)
1c004d2c:	001031ac 	add.w	$r12,$r13,$r12
1c004d30:	2880018c 	ld.w	$r12,$r12,0
1c004d34:	4c000180 	jirl	$r0,$r12,0
1c004d38:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004d3c:	02a86084 	addi.w	$r4,$r4,-1512(0xa18)
1c004d40:	57d117ff 	bl	-12012(0xfffd114) # 1c001e54 <myprintf>
1c004d44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d48:	0380118c 	ori	$r12,$r12,0x4
1c004d4c:	29800180 	st.w	$r0,$r12,0
1c004d50:	50003c00 	b	60(0x3c) # 1c004d8c <BAT_FAIL+0xc4>
1c004d54:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004d58:	02a89084 	addi.w	$r4,$r4,-1500(0xa24)
1c004d5c:	57d0fbff 	bl	-12040(0xfffd0f8) # 1c001e54 <myprintf>
1c004d60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d64:	0380118c 	ori	$r12,$r12,0x4
1c004d68:	2880018e 	ld.w	$r14,$r12,0
1c004d6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d70:	0380118c 	ori	$r12,$r12,0x4
1c004d74:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004d78:	03bffdad 	ori	$r13,$r13,0xfff
1c004d7c:	0014b5cd 	and	$r13,$r14,$r13
1c004d80:	2980018d 	st.w	$r13,$r12,0
1c004d84:	50000800 	b	8(0x8) # 1c004d8c <BAT_FAIL+0xc4>
1c004d88:	03400000 	andi	$r0,$r0,0x0
1c004d8c:	03400000 	andi	$r0,$r0,0x0
1c004d90:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d94:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d98:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d9c:	4c000020 	jirl	$r0,$r1,0

1c004da0 <intc_handler>:
intc_handler():
1c004da0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004da4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004da8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004dac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004db0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004db4:	0380158c 	ori	$r12,$r12,0x5
1c004db8:	2a00018c 	ld.bu	$r12,$r12,0
1c004dbc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004dc0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004dc4:	0340058c 	andi	$r12,$r12,0x1
1c004dc8:	40001d80 	beqz	$r12,28(0x1c) # 1c004de4 <intc_handler+0x44>
1c004dcc:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004dd0:	57f2fbff 	bl	-3336(0xffff2f8) # 1c0040c8 <TIM_GetITStatus>
1c004dd4:	0015008c 	move	$r12,$r4
1c004dd8:	40000d80 	beqz	$r12,12(0xc) # 1c004de4 <intc_handler+0x44>
1c004ddc:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004de0:	57f337ff 	bl	-3276(0xffff334) # 1c004114 <TIM_ClearIT>
1c004de4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004de8:	0340218c 	andi	$r12,$r12,0x8
1c004dec:	40007d80 	beqz	$r12,124(0x7c) # 1c004e68 <intc_handler+0xc8>
1c004df0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004df4:	0380098c 	ori	$r12,$r12,0x2
1c004df8:	2a00018c 	ld.bu	$r12,$r12,0
1c004dfc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e00:	0340118c 	andi	$r12,$r12,0x4
1c004e04:	40005580 	beqz	$r12,84(0x54) # 1c004e58 <intc_handler+0xb8>
1c004e08:	50003800 	b	56(0x38) # 1c004e40 <intc_handler+0xa0>
1c004e0c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004e10:	57de8fff 	bl	-8564(0xfffde8c) # 1c002c9c <UART_ReceiveData>
1c004e14:	0015008c 	move	$r12,$r4
1c004e18:	00005d8d 	ext.w.b	$r13,$r12
1c004e1c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e20:	0287a18c 	addi.w	$r12,$r12,488(0x1e8)
1c004e24:	2900018d 	st.b	$r13,$r12,0
1c004e28:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004e2c:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004e30:	028760a5 	addi.w	$r5,$r5,472(0x1d8)
1c004e34:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004e38:	2887c084 	ld.w	$r4,$r4,496(0x1f0)
1c004e3c:	540e4800 	bl	3656(0xe48) # 1c005c84 <Queue_Wirte>
1c004e40:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004e44:	0380158c 	ori	$r12,$r12,0x5
1c004e48:	2a00018c 	ld.bu	$r12,$r12,0
1c004e4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e50:	0340058c 	andi	$r12,$r12,0x1
1c004e54:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004e0c <intc_handler+0x6c>
1c004e58:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004e5c:	03800d8c 	ori	$r12,$r12,0x3
1c004e60:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004e64:	2900018d 	st.b	$r13,$r12,0
1c004e68:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004e6c:	0340118c 	andi	$r12,$r12,0x4
1c004e70:	4000cd80 	beqz	$r12,204(0xcc) # 1c004f3c <intc_handler+0x19c>
1c004e74:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c004e78:	0380098c 	ori	$r12,$r12,0x2
1c004e7c:	2a00018c 	ld.bu	$r12,$r12,0
1c004e80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e84:	0340118c 	andi	$r12,$r12,0x4
1c004e88:	4000a580 	beqz	$r12,164(0xa4) # 1c004f2c <intc_handler+0x18c>
1c004e8c:	50008800 	b	136(0x88) # 1c004f14 <intc_handler+0x174>
1c004e90:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c004e94:	57de0bff 	bl	-8696(0xfffde08) # 1c002c9c <UART_ReceiveData>
1c004e98:	0015008c 	move	$r12,$r4
1c004e9c:	00005d8d 	ext.w.b	$r13,$r12
1c004ea0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ea4:	0285a18c 	addi.w	$r12,$r12,360(0x168)
1c004ea8:	2900018d 	st.b	$r13,$r12,0
1c004eac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004eb0:	0285718c 	addi.w	$r12,$r12,348(0x15c)
1c004eb4:	2800018f 	ld.b	$r15,$r12,0
1c004eb8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ebc:	0285218c 	addi.w	$r12,$r12,328(0x148)
1c004ec0:	2a00018c 	ld.bu	$r12,$r12,0
1c004ec4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c004ec8:	006781ae 	bstrpick.w	$r14,$r13,0x7,0x0
1c004ecc:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c004ed0:	0284d1ad 	addi.w	$r13,$r13,308(0x134)
1c004ed4:	290001ae 	st.b	$r14,$r13,0
1c004ed8:	0015018e 	move	$r14,$r12
1c004edc:	006781ed 	bstrpick.w	$r13,$r15,0x7,0x0
1c004ee0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ee4:	2885018c 	ld.w	$r12,$r12,320(0x140)
1c004ee8:	0010398c 	add.w	$r12,$r12,$r14
1c004eec:	2900018d 	st.b	$r13,$r12,0
1c004ef0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ef4:	0284418c 	addi.w	$r12,$r12,272(0x110)
1c004ef8:	2a00018d 	ld.bu	$r13,$r12,0
1c004efc:	0283200c 	addi.w	$r12,$r0,200(0xc8)
1c004f00:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c004f14 <intc_handler+0x174>
1c004f04:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f08:	0283f18c 	addi.w	$r12,$r12,252(0xfc)
1c004f0c:	02bf200d 	addi.w	$r13,$r0,-56(0xfc8)
1c004f10:	2900018d 	st.b	$r13,$r12,0
1c004f14:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c004f18:	0380158c 	ori	$r12,$r12,0x5
1c004f1c:	2a00018c 	ld.bu	$r12,$r12,0
1c004f20:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004f24:	0340058c 	andi	$r12,$r12,0x1
1c004f28:	47ff699f 	bnez	$r12,-152(0x7fff68) # 1c004e90 <intc_handler+0xf0>
1c004f2c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004f30:	03800d8c 	ori	$r12,$r12,0x3
1c004f34:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004f38:	2900018d 	st.b	$r13,$r12,0
1c004f3c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004f40:	03800d8c 	ori	$r12,$r12,0x3
1c004f44:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004f48:	2900018d 	st.b	$r13,$r12,0
1c004f4c:	03400000 	andi	$r0,$r0,0x0
1c004f50:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004f54:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004f58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004f5c:	4c000020 	jirl	$r0,$r1,0

1c004f60 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004f60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f64:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f68:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f6c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f70:	57e62bff 	bl	-6616(0xfffe628) # 1c003598 <Set_Timer_clear>
1c004f74:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f78:	02a0a084 	addi.w	$r4,$r4,-2008(0x828)
1c004f7c:	57cedbff 	bl	-12584(0xfffced8) # 1c001e54 <myprintf>
1c004f80:	57e5fbff 	bl	-6664(0xfffe5f8) # 1c003578 <Set_Timer_stop>
1c004f84:	03400000 	andi	$r0,$r0,0x0
1c004f88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f8c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f94:	4c000020 	jirl	$r0,$r1,0

1c004f98 <main>:
main():
1c004f98:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004f9c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004fa0:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004fa4:	2980d077 	st.w	$r23,$r3,52(0x34)
1c004fa8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004fac:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004fb0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c004fb4:	00150004 	move	$r4,$r0
1c004fb8:	57ca47ff 	bl	-13756(0xfffca44) # 1c0019fc <Spi_Init>
1c004fbc:	5404b400 	bl	1204(0x4b4) # 1c005470 <OLED_Init>
1c004fc0:	54060800 	bl	1544(0x608) # 1c0055c8 <OLED_Clear>
1c004fc4:	5414dc00 	bl	5340(0x14dc) # 1c0064a0 <wifi_null>
1c004fc8:	54200000 	bl	8192(0x2000) # 1c006fc8 <LORA_Init>
1c004fcc:	54154c00 	bl	5452(0x154c) # 1c006518 <SR501_Init>
1c004fd0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004fd4:	0281a18c 	addi.w	$r12,$r12,104(0x68)
1c004fd8:	2880018c 	ld.w	$r12,$r12,0
1c004fdc:	00150184 	move	$r4,$r12
1c004fe0:	54117800 	bl	4472(0x1178) # 1c006158 <read_data>
1c004fe4:	1cc7ff97 	pcaddu12i	$r23,409596(0x63ffc)
1c004fe8:	2880e2f7 	ld.w	$r23,$r23,56(0x38)
1c004fec:	02bf02cc 	addi.w	$r12,$r22,-64(0xfc0)
1c004ff0:	00150184 	move	$r4,$r12
1c004ff4:	5412a000 	bl	4768(0x12a0) # 1c006294 <Analysis_data>
1c004ff8:	28bf02d1 	ld.w	$r17,$r22,-64(0xfc0)
1c004ffc:	28bf12d0 	ld.w	$r16,$r22,-60(0xfc4)
1c005000:	28bf22cf 	ld.w	$r15,$r22,-56(0xfc8)
1c005004:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c005008:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c00500c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005010:	298002f1 	st.w	$r17,$r23,0
1c005014:	298012f0 	st.w	$r16,$r23,4(0x4)
1c005018:	298022ef 	st.w	$r15,$r23,8(0x8)
1c00501c:	298032ee 	st.w	$r14,$r23,12(0xc)
1c005020:	298042ed 	st.w	$r13,$r23,16(0x10)
1c005024:	298052ec 	st.w	$r12,$r23,20(0x14)
1c005028:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00502c:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c005030:	2880018c 	ld.w	$r12,$r12,0
1c005034:	00150184 	move	$r4,$r12
1c005038:	54112000 	bl	4384(0x1120) # 1c006158 <read_data>
1c00503c:	54150c00 	bl	5388(0x150c) # 1c006548 <SR501_GetValue>
1c005040:	0015008c 	move	$r12,$r4
1c005044:	0015018d 	move	$r13,$r12
1c005048:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00504c:	28bf818c 	ld.w	$r12,$r12,-32(0xfe0)
1c005050:	2980018d 	st.w	$r13,$r12,0
1c005054:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005058:	28bf518c 	ld.w	$r12,$r12,-44(0xfd4)
1c00505c:	2880018d 	ld.w	$r13,$r12,0
1c005060:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005064:	28bef18c 	ld.w	$r12,$r12,-68(0xfbc)
1c005068:	2880018e 	ld.w	$r14,$r12,0
1c00506c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005070:	28bec18c 	ld.w	$r12,$r12,-80(0xfb0)
1c005074:	2880118f 	ld.w	$r15,$r12,4(0x4)
1c005078:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00507c:	28be918c 	ld.w	$r12,$r12,-92(0xfa4)
1c005080:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c005084:	00150189 	move	$r9,$r12
1c005088:	001501e8 	move	$r8,$r15
1c00508c:	001501c7 	move	$r7,$r14
1c005090:	001501a6 	move	$r6,$r13
1c005094:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005098:	02abb0a5 	addi.w	$r5,$r5,-1300(0xaec)
1c00509c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0050a0:	28bdc084 	ld.w	$r4,$r4,-144(0xf70)
1c0050a4:	57d743ff 	bl	-10432(0xfffd740) # 1c0027e4 <sprintf>
1c0050a8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0050ac:	02ab90c6 	addi.w	$r6,$r6,-1308(0xae4)
1c0050b0:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0050b4:	00150004 	move	$r4,$r0
1c0050b8:	5407a800 	bl	1960(0x7a8) # 1c005860 <OLED_ShowString>
1c0050bc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050c0:	28bd818c 	ld.w	$r12,$r12,-160(0xf60)
1c0050c4:	2880018c 	ld.w	$r12,$r12,0
1c0050c8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0050cc:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0050d0:	00150186 	move	$r6,$r12
1c0050d4:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0050d8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0050dc:	5408c400 	bl	2244(0x8c4) # 1c0059a0 <OLED_ShowNum>
1c0050e0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0050e4:	02aad0c6 	addi.w	$r6,$r6,-1356(0xab4)
1c0050e8:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0050ec:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0050f0:	54077000 	bl	1904(0x770) # 1c005860 <OLED_ShowString>
1c0050f4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0050f8:	02aa90c6 	addi.w	$r6,$r6,-1372(0xaa4)
1c0050fc:	02808005 	addi.w	$r5,$r0,32(0x20)
1c005100:	00150004 	move	$r4,$r0
1c005104:	54075c00 	bl	1884(0x75c) # 1c005860 <OLED_ShowString>
1c005108:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00510c:	02aa70c6 	addi.w	$r6,$r6,-1380(0xa9c)
1c005110:	02808005 	addi.w	$r5,$r0,32(0x20)
1c005114:	02818004 	addi.w	$r4,$r0,96(0x60)
1c005118:	54074800 	bl	1864(0x748) # 1c005860 <OLED_ShowString>
1c00511c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005120:	28bc018c 	ld.w	$r12,$r12,-256(0xf00)
1c005124:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c005128:	02804008 	addi.w	$r8,$r0,16(0x10)
1c00512c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c005130:	00150186 	move	$r6,$r12
1c005134:	02808005 	addi.w	$r5,$r0,32(0x20)
1c005138:	02810004 	addi.w	$r4,$r0,64(0x40)
1c00513c:	54086400 	bl	2148(0x864) # 1c0059a0 <OLED_ShowNum>
1c005140:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005144:	02a9a0c6 	addi.w	$r6,$r6,-1432(0xa68)
1c005148:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c00514c:	00150004 	move	$r4,$r0
1c005150:	54071000 	bl	1808(0x710) # 1c005860 <OLED_ShowString>
1c005154:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005158:	28bb218c 	ld.w	$r12,$r12,-312(0xec8)
1c00515c:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c005160:	02804008 	addi.w	$r8,$r0,16(0x10)
1c005164:	02801007 	addi.w	$r7,$r0,4(0x4)
1c005168:	00150186 	move	$r6,$r12
1c00516c:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c005170:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c005174:	54082c00 	bl	2092(0x82c) # 1c0059a0 <OLED_ShowNum>
1c005178:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00517c:	02a8e0c6 	addi.w	$r6,$r6,-1480(0xa38)
1c005180:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c005184:	02814004 	addi.w	$r4,$r0,80(0x50)
1c005188:	5406d800 	bl	1752(0x6d8) # 1c005860 <OLED_ShowString>
1c00518c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005190:	02a8a0c6 	addi.w	$r6,$r6,-1496(0xa28)
1c005194:	00150005 	move	$r5,$r0
1c005198:	02814004 	addi.w	$r4,$r0,80(0x50)
1c00519c:	5406c400 	bl	1732(0x6c4) # 1c005860 <OLED_ShowString>
1c0051a0:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0051a4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0051a8:	00150006 	move	$r6,$r0
1c0051ac:	00150005 	move	$r5,$r0
1c0051b0:	0281c004 	addi.w	$r4,$r0,112(0x70)
1c0051b4:	5407ec00 	bl	2028(0x7ec) # 1c0059a0 <OLED_ShowNum>
1c0051b8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051bc:	28b9b084 	ld.w	$r4,$r4,-404(0xe6c)
1c0051c0:	5409a400 	bl	2468(0x9a4) # 1c005b64 <Queue_isEmpty>
1c0051c4:	0015008c 	move	$r12,$r4
1c0051c8:	4400e180 	bnez	$r12,224(0xe0) # 1c0052a8 <main+0x310>
1c0051cc:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051d0:	28b96084 	ld.w	$r4,$r4,-424(0xe58)
1c0051d4:	5409e000 	bl	2528(0x9e0) # 1c005bb4 <Queue_HadUse>
1c0051d8:	0015008c 	move	$r12,$r4
1c0051dc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0051e0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051e4:	28b8c18c 	ld.w	$r12,$r12,-464(0xe30)
1c0051e8:	2900018d 	st.b	$r13,$r12,0
1c0051ec:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c0051f0:	00150005 	move	$r5,$r0
1c0051f4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051f8:	28b8f084 	ld.w	$r4,$r4,-452(0xe3c)
1c0051fc:	57e787ff 	bl	-6268(0xfffe784) # 1c003980 <memset>
1c005200:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005204:	28b8418c 	ld.w	$r12,$r12,-496(0xe10)
1c005208:	2a00018c 	ld.bu	$r12,$r12,0
1c00520c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005210:	00150186 	move	$r6,$r12
1c005214:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c005218:	28b870a5 	ld.w	$r5,$r5,-484(0xe1c)
1c00521c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005220:	28b82084 	ld.w	$r4,$r4,-504(0xe08)
1c005224:	540b3c00 	bl	2876(0xb3c) # 1c005d60 <Queue_Read>
1c005228:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00522c:	28b7a18c 	ld.w	$r12,$r12,-536(0xde8)
1c005230:	2a00018c 	ld.bu	$r12,$r12,0
1c005234:	0015018d 	move	$r13,$r12
1c005238:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00523c:	28b7e18c 	ld.w	$r12,$r12,-520(0xdf8)
1c005240:	0010358c 	add.w	$r12,$r12,$r13
1c005244:	29000180 	st.b	$r0,$r12,0
1c005248:	02800806 	addi.w	$r6,$r0,2(0x2)
1c00524c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005250:	02a5c0a5 	addi.w	$r5,$r5,-1680(0x970)
1c005254:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005258:	28b77084 	ld.w	$r4,$r4,-548(0xddc)
1c00525c:	57e787ff 	bl	-6268(0xfffe784) # 1c0039e0 <strncmp>
1c005260:	0015008c 	move	$r12,$r4
1c005264:	44001180 	bnez	$r12,16(0x10) # 1c005274 <main+0x2dc>
1c005268:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00526c:	28b69084 	ld.w	$r4,$r4,-604(0xda4)
1c005270:	541cd400 	bl	7380(0x1cd4) # 1c006f44 <lora_transmit>
1c005274:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c005278:	1c000065 	pcaddu12i	$r5,3(0x3)
1c00527c:	02a520a5 	addi.w	$r5,$r5,-1720(0x948)
1c005280:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005284:	28b6c084 	ld.w	$r4,$r4,-592(0xdb0)
1c005288:	57e75bff 	bl	-6312(0xfffe758) # 1c0039e0 <strncmp>
1c00528c:	0015008c 	move	$r12,$r4
1c005290:	44001980 	bnez	$r12,24(0x18) # 1c0052a8 <main+0x310>
1c005294:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005298:	02a4c0c6 	addi.w	$r6,$r6,-1744(0x930)
1c00529c:	00150005 	move	$r5,$r0
1c0052a0:	00150004 	move	$r4,$r0
1c0052a4:	5405bc00 	bl	1468(0x5bc) # 1c005860 <OLED_ShowString>
1c0052a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052ac:	28b5d18c 	ld.w	$r12,$r12,-652(0xd74)
1c0052b0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0052b4:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0052b8:	6c002d8d 	bgeu	$r12,$r13,44(0x2c) # 1c0052e4 <main+0x34c>
1c0052bc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0052c0:	02a440c6 	addi.w	$r6,$r6,-1776(0x910)
1c0052c4:	00150005 	move	$r5,$r0
1c0052c8:	00150004 	move	$r4,$r0
1c0052cc:	54059400 	bl	1428(0x594) # 1c005860 <OLED_ShowString>
1c0052d0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0052d4:	02b4f18c 	addi.w	$r12,$r12,-708(0xd3c)
1c0052d8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0052dc:	2980018d 	st.w	$r13,$r12,0
1c0052e0:	50006c00 	b	108(0x6c) # 1c00534c <main+0x3b4>
1c0052e4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052e8:	28b5118c 	ld.w	$r12,$r12,-700(0xd44)
1c0052ec:	2880018d 	ld.w	$r13,$r12,0
1c0052f0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0052f4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005314 <main+0x37c>
1c0052f8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0052fc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c005300:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005304:	00150005 	move	$r5,$r0
1c005308:	0281c004 	addi.w	$r4,$r0,112(0x70)
1c00530c:	54069400 	bl	1684(0x694) # 1c0059a0 <OLED_ShowNum>
1c005310:	50003c00 	b	60(0x3c) # 1c00534c <main+0x3b4>
1c005314:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005318:	02b3e18c 	addi.w	$r12,$r12,-776(0xcf8)
1c00531c:	2880018d 	ld.w	$r13,$r12,0
1c005320:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005324:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005338 <main+0x3a0>
1c005328:	5402a000 	bl	672(0x2a0) # 1c0055c8 <OLED_Clear>
1c00532c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005330:	02b3818c 	addi.w	$r12,$r12,-800(0xce0)
1c005334:	29800180 	st.w	$r0,$r12,0
1c005338:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00533c:	02a280c6 	addi.w	$r6,$r6,-1888(0x8a0)
1c005340:	00150005 	move	$r5,$r0
1c005344:	00150004 	move	$r4,$r0
1c005348:	54051800 	bl	1304(0x518) # 1c005860 <OLED_ShowString>
1c00534c:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005350:	57e5f3ff 	bl	-6672(0xfffe5f0) # 1c003940 <delay_ms>
1c005354:	53fc93ff 	b	-880(0xffffc90) # 1c004fe4 <main+0x4c>

1c005358 <OLED_WR_Byte>:
OLED_WR_Byte():
1c005358:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00535c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005360:	29806076 	st.w	$r22,$r3,24(0x18)
1c005364:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005368:	0015008c 	move	$r12,$r4
1c00536c:	001500ad 	move	$r13,$r5
1c005370:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005374:	001501ac 	move	$r12,$r13
1c005378:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00537c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005380:	40001580 	beqz	$r12,20(0x14) # 1c005394 <OLED_WR_Byte+0x3c>
1c005384:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005388:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c00538c:	57c2c7ff 	bl	-15676(0xfffc2c4) # 1c001650 <gpio_write_pin>
1c005390:	50001000 	b	16(0x10) # 1c0053a0 <OLED_WR_Byte+0x48>
1c005394:	00150005 	move	$r5,$r0
1c005398:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c00539c:	57c2b7ff 	bl	-15692(0xfffc2b4) # 1c001650 <gpio_write_pin>
1c0053a0:	02bfbecc 	addi.w	$r12,$r22,-17(0xfef)
1c0053a4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0053a8:	00150184 	move	$r4,$r12
1c0053ac:	57c85fff 	bl	-14244(0xfffc85c) # 1c001c08 <Spi_Send>
1c0053b0:	03400000 	andi	$r0,$r0,0x0
1c0053b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0053b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0053bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0053c0:	4c000020 	jirl	$r0,$r1,0

1c0053c4 <OLED_GPIO_Init>:
OLED_GPIO_Init():
1c0053c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0053c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0053cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0053d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0053d4:	02809c0c 	addi.w	$r12,$r0,39(0x27)
1c0053d8:	293f92cc 	st.b	$r12,$r22,-28(0xfe4)
1c0053dc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0053e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0053e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0053e8:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0053ec:	00150184 	move	$r4,$r12
1c0053f0:	57c1abff 	bl	-15960(0xfffc1a8) # 1c001598 <GPIO_Init>
1c0053f4:	0280a00c 	addi.w	$r12,$r0,40(0x28)
1c0053f8:	293f92cc 	st.b	$r12,$r22,-28(0xfe4)
1c0053fc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005400:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005404:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005408:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00540c:	00150184 	move	$r4,$r12
1c005410:	57c18bff 	bl	-15992(0xfffc188) # 1c001598 <GPIO_Init>
1c005414:	03400000 	andi	$r0,$r0,0x0
1c005418:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00541c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005420:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005424:	4c000020 	jirl	$r0,$r1,0

1c005428 <OLED_Reset>:
OLED_Reset():
1c005428:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00542c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005430:	29802076 	st.w	$r22,$r3,8(0x8)
1c005434:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005438:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00543c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005440:	57c213ff 	bl	-15856(0xfffc210) # 1c001650 <gpio_write_pin>
1c005444:	00150005 	move	$r5,$r0
1c005448:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00544c:	57c207ff 	bl	-15868(0xfffc204) # 1c001650 <gpio_write_pin>
1c005450:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005454:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005458:	57c1fbff 	bl	-15880(0xfffc1f8) # 1c001650 <gpio_write_pin>
1c00545c:	03400000 	andi	$r0,$r0,0x0
1c005460:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005464:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005468:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00546c:	4c000020 	jirl	$r0,$r1,0

1c005470 <OLED_Init>:
OLED_Init():
1c005470:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005474:	29803061 	st.w	$r1,$r3,12(0xc)
1c005478:	29802076 	st.w	$r22,$r3,8(0x8)
1c00547c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005480:	57ff47ff 	bl	-188(0xfffff44) # 1c0053c4 <OLED_GPIO_Init>
1c005484:	57ffa7ff 	bl	-92(0xfffffa4) # 1c005428 <OLED_Reset>
1c005488:	00150005 	move	$r5,$r0
1c00548c:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005490:	57fecbff 	bl	-312(0xffffec8) # 1c005358 <OLED_WR_Byte>
1c005494:	00150005 	move	$r5,$r0
1c005498:	00150004 	move	$r4,$r0
1c00549c:	57febfff 	bl	-324(0xffffebc) # 1c005358 <OLED_WR_Byte>
1c0054a0:	00150005 	move	$r5,$r0
1c0054a4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0054a8:	57feb3ff 	bl	-336(0xffffeb0) # 1c005358 <OLED_WR_Byte>
1c0054ac:	00150005 	move	$r5,$r0
1c0054b0:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0054b4:	57fea7ff 	bl	-348(0xffffea4) # 1c005358 <OLED_WR_Byte>
1c0054b8:	00150005 	move	$r5,$r0
1c0054bc:	0282c004 	addi.w	$r4,$r0,176(0xb0)
1c0054c0:	57fe9bff 	bl	-360(0xffffe98) # 1c005358 <OLED_WR_Byte>
1c0054c4:	00150005 	move	$r5,$r0
1c0054c8:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0054cc:	57fe8fff 	bl	-372(0xffffe8c) # 1c005358 <OLED_WR_Byte>
1c0054d0:	00150005 	move	$r5,$r0
1c0054d4:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c0054d8:	57fe83ff 	bl	-384(0xffffe80) # 1c005358 <OLED_WR_Byte>
1c0054dc:	00150005 	move	$r5,$r0
1c0054e0:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c0054e4:	57fe77ff 	bl	-396(0xffffe74) # 1c005358 <OLED_WR_Byte>
1c0054e8:	00150005 	move	$r5,$r0
1c0054ec:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0054f0:	57fe6bff 	bl	-408(0xffffe68) # 1c005358 <OLED_WR_Byte>
1c0054f4:	00150005 	move	$r5,$r0
1c0054f8:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c0054fc:	57fe5fff 	bl	-420(0xffffe5c) # 1c005358 <OLED_WR_Byte>
1c005500:	00150005 	move	$r5,$r0
1c005504:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005508:	57fe53ff 	bl	-432(0xffffe50) # 1c005358 <OLED_WR_Byte>
1c00550c:	00150005 	move	$r5,$r0
1c005510:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005514:	57fe47ff 	bl	-444(0xffffe44) # 1c005358 <OLED_WR_Byte>
1c005518:	00150005 	move	$r5,$r0
1c00551c:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005520:	57fe3bff 	bl	-456(0xffffe38) # 1c005358 <OLED_WR_Byte>
1c005524:	00150005 	move	$r5,$r0
1c005528:	00150004 	move	$r4,$r0
1c00552c:	57fe2fff 	bl	-468(0xffffe2c) # 1c005358 <OLED_WR_Byte>
1c005530:	00150005 	move	$r5,$r0
1c005534:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005538:	57fe23ff 	bl	-480(0xffffe20) # 1c005358 <OLED_WR_Byte>
1c00553c:	00150005 	move	$r5,$r0
1c005540:	02820004 	addi.w	$r4,$r0,128(0x80)
1c005544:	57fe17ff 	bl	-492(0xffffe14) # 1c005358 <OLED_WR_Byte>
1c005548:	00150005 	move	$r5,$r0
1c00554c:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c005550:	57fe0bff 	bl	-504(0xffffe08) # 1c005358 <OLED_WR_Byte>
1c005554:	00150005 	move	$r5,$r0
1c005558:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c00555c:	57fdffff 	bl	-516(0xffffdfc) # 1c005358 <OLED_WR_Byte>
1c005560:	00150005 	move	$r5,$r0
1c005564:	02836804 	addi.w	$r4,$r0,218(0xda)
1c005568:	57fdf3ff 	bl	-528(0xffffdf0) # 1c005358 <OLED_WR_Byte>
1c00556c:	00150005 	move	$r5,$r0
1c005570:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005574:	57fde7ff 	bl	-540(0xffffde4) # 1c005358 <OLED_WR_Byte>
1c005578:	00150005 	move	$r5,$r0
1c00557c:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c005580:	57fddbff 	bl	-552(0xffffdd8) # 1c005358 <OLED_WR_Byte>
1c005584:	00150005 	move	$r5,$r0
1c005588:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00558c:	57fdcfff 	bl	-564(0xffffdcc) # 1c005358 <OLED_WR_Byte>
1c005590:	00150005 	move	$r5,$r0
1c005594:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c005598:	57fdc3ff 	bl	-576(0xffffdc0) # 1c005358 <OLED_WR_Byte>
1c00559c:	00150005 	move	$r5,$r0
1c0055a0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0055a4:	57fdb7ff 	bl	-588(0xffffdb4) # 1c005358 <OLED_WR_Byte>
1c0055a8:	00150005 	move	$r5,$r0
1c0055ac:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0055b0:	57fdabff 	bl	-600(0xffffda8) # 1c005358 <OLED_WR_Byte>
1c0055b4:	03400000 	andi	$r0,$r0,0x0
1c0055b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0055bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0055c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0055c4:	4c000020 	jirl	$r0,$r1,0

1c0055c8 <OLED_Clear>:
OLED_Clear():
1c0055c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0055cc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0055d0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0055d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0055d8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0055dc:	50006800 	b	104(0x68) # 1c005644 <OLED_Clear+0x7c>
1c0055e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055e4:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0055e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0055ec:	00150005 	move	$r5,$r0
1c0055f0:	00150184 	move	$r4,$r12
1c0055f4:	57fd67ff 	bl	-668(0xffffd64) # 1c005358 <OLED_WR_Byte>
1c0055f8:	00150005 	move	$r5,$r0
1c0055fc:	00150004 	move	$r4,$r0
1c005600:	57fd5bff 	bl	-680(0xffffd58) # 1c005358 <OLED_WR_Byte>
1c005604:	00150005 	move	$r5,$r0
1c005608:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00560c:	57fd4fff 	bl	-692(0xffffd4c) # 1c005358 <OLED_WR_Byte>
1c005610:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005614:	50001c00 	b	28(0x1c) # 1c005630 <OLED_Clear+0x68>
1c005618:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00561c:	00150004 	move	$r4,$r0
1c005620:	57fd3bff 	bl	-712(0xffffd38) # 1c005358 <OLED_WR_Byte>
1c005624:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005628:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00562c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005630:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005634:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c005618 <OLED_Clear+0x50>
1c005638:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00563c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005640:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005644:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005648:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00564c:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c0055e0 <OLED_Clear+0x18>
1c005650:	03400000 	andi	$r0,$r0,0x0
1c005654:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005658:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00565c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005660:	4c000020 	jirl	$r0,$r1,0

1c005664 <OLED_Set_Pos>:
OLED_Set_Pos():
1c005664:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005668:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00566c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005670:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005674:	0015008c 	move	$r12,$r4
1c005678:	001500ad 	move	$r13,$r5
1c00567c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005680:	001501ac 	move	$r12,$r13
1c005684:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005688:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00568c:	00448d8c 	srli.w	$r12,$r12,0x3
1c005690:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005694:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005698:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00569c:	00150005 	move	$r5,$r0
1c0056a0:	00150184 	move	$r4,$r12
1c0056a4:	57fcb7ff 	bl	-844(0xffffcb4) # 1c005358 <OLED_WR_Byte>
1c0056a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056ac:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0056b0:	0048918c 	srai.w	$r12,$r12,0x4
1c0056b4:	00005d8c 	ext.w.b	$r12,$r12
1c0056b8:	03403d8c 	andi	$r12,$r12,0xf
1c0056bc:	00005d8c 	ext.w.b	$r12,$r12
1c0056c0:	0380418c 	ori	$r12,$r12,0x10
1c0056c4:	00005d8c 	ext.w.b	$r12,$r12
1c0056c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056cc:	00150005 	move	$r5,$r0
1c0056d0:	00150184 	move	$r4,$r12
1c0056d4:	57fc87ff 	bl	-892(0xffffc84) # 1c005358 <OLED_WR_Byte>
1c0056d8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056dc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0056e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056e4:	03403d8c 	andi	$r12,$r12,0xf
1c0056e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056ec:	00150005 	move	$r5,$r0
1c0056f0:	00150184 	move	$r4,$r12
1c0056f4:	57fc67ff 	bl	-924(0xffffc64) # 1c005358 <OLED_WR_Byte>
1c0056f8:	03400000 	andi	$r0,$r0,0x0
1c0056fc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005700:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005704:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005708:	4c000020 	jirl	$r0,$r1,0

1c00570c <OLED_ShowChar>:
OLED_ShowChar():
1c00570c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005710:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005714:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005718:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00571c:	0015008c 	move	$r12,$r4
1c005720:	001500af 	move	$r15,$r5
1c005724:	001500ce 	move	$r14,$r6
1c005728:	001500ed 	move	$r13,$r7
1c00572c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005730:	001501ec 	move	$r12,$r15
1c005734:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005738:	001501cc 	move	$r12,$r14
1c00573c:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c005740:	001501ac 	move	$r12,$r13
1c005744:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c005748:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00574c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005750:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c005754:	02bf7d8c 	addi.w	$r12,$r12,-33(0xfdf)
1c005758:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00575c:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005760:	64001580 	bge	$r12,$r0,20(0x14) # 1c005774 <OLED_ShowChar+0x68>
1c005764:	293f7ec0 	st.b	$r0,$r22,-33(0xfdf)
1c005768:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c00576c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005770:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005774:	2a3f72cd 	ld.bu	$r13,$r22,-36(0xfdc)
1c005778:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00577c:	5c00d1ac 	bne	$r13,$r12,208(0xd0) # 1c00584c <OLED_ShowChar+0x140>
1c005780:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c005784:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005788:	001501a5 	move	$r5,$r13
1c00578c:	00150184 	move	$r4,$r12
1c005790:	57fed7ff 	bl	-300(0xffffed4) # 1c005664 <OLED_Set_Pos>
1c005794:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005798:	50003c00 	b	60(0x3c) # 1c0057d4 <OLED_ShowChar+0xc8>
1c00579c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0057a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0057a4:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0057a8:	0290f1ce 	addi.w	$r14,$r14,1084(0x43c)
1c0057ac:	004091ad 	slli.w	$r13,$r13,0x4
1c0057b0:	001035cd 	add.w	$r13,$r14,$r13
1c0057b4:	001031ac 	add.w	$r12,$r13,$r12
1c0057b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0057bc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057c0:	00150184 	move	$r4,$r12
1c0057c4:	57fb97ff 	bl	-1132(0xffffb94) # 1c005358 <OLED_WR_Byte>
1c0057c8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0057cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057d0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0057d4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0057d8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0057dc:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c00579c <OLED_ShowChar+0x90>
1c0057e0:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c0057e4:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0057e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0057ec:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0057f0:	001501a5 	move	$r5,$r13
1c0057f4:	00150184 	move	$r4,$r12
1c0057f8:	57fe6fff 	bl	-404(0xffffe6c) # 1c005664 <OLED_Set_Pos>
1c0057fc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005800:	50004000 	b	64(0x40) # 1c005840 <OLED_ShowChar+0x134>
1c005804:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005808:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00580c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005810:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c005814:	028f41ce 	addi.w	$r14,$r14,976(0x3d0)
1c005818:	004091ad 	slli.w	$r13,$r13,0x4
1c00581c:	001035cd 	add.w	$r13,$r14,$r13
1c005820:	001031ac 	add.w	$r12,$r13,$r12
1c005824:	2a00018c 	ld.bu	$r12,$r12,0
1c005828:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00582c:	00150184 	move	$r4,$r12
1c005830:	57fb2bff 	bl	-1240(0xffffb28) # 1c005358 <OLED_WR_Byte>
1c005834:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005838:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00583c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005840:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005844:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005848:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c005804 <OLED_ShowChar+0xf8>
1c00584c:	03400000 	andi	$r0,$r0,0x0
1c005850:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005854:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005858:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00585c:	4c000020 	jirl	$r0,$r1,0

1c005860 <OLED_ShowString>:
OLED_ShowString():
1c005860:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005864:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005868:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00586c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005870:	0015008c 	move	$r12,$r4
1c005874:	001500ad 	move	$r13,$r5
1c005878:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c00587c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005880:	001501ac 	move	$r12,$r13
1c005884:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005888:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00588c:	50008c00 	b	140(0x8c) # 1c005918 <OLED_ShowString+0xb8>
1c005890:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c005894:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c005898:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c0058ac <OLED_ShowString+0x4c>
1c00589c:	293f7ec0 	st.b	$r0,$r22,-33(0xfdf)
1c0058a0:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c0058a4:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c0058a8:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0058ac:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c0058b0:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0058b4:	6c00098d 	bgeu	$r12,$r13,8(0x8) # 1c0058bc <OLED_ShowString+0x5c>
1c0058b8:	293f7ac0 	st.b	$r0,$r22,-34(0xfde)
1c0058bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0058c0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0058c4:	001031ac 	add.w	$r12,$r13,$r12
1c0058c8:	2800018c 	ld.b	$r12,$r12,0
1c0058cc:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0058d0:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c0058d4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0058d8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0058dc:	001501c6 	move	$r6,$r14
1c0058e0:	001501a5 	move	$r5,$r13
1c0058e4:	00150184 	move	$r4,$r12
1c0058e8:	57fe27ff 	bl	-476(0xffffe24) # 1c00570c <OLED_ShowChar>
1c0058ec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0058f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0058f8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0058fc:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005900:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005904:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005908:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00590c:	001031ac 	add.w	$r12,$r13,$r12
1c005910:	2800018c 	ld.b	$r12,$r12,0
1c005914:	47ff7d9f 	bnez	$r12,-132(0x7fff7c) # 1c005890 <OLED_ShowString+0x30>
1c005918:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00591c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005920:	001031ac 	add.w	$r12,$r13,$r12
1c005924:	2800018c 	ld.b	$r12,$r12,0
1c005928:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c005904 <OLED_ShowString+0xa4>
1c00592c:	03400000 	andi	$r0,$r0,0x0
1c005930:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005934:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005938:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00593c:	4c000020 	jirl	$r0,$r1,0

1c005940 <oled_pow>:
oled_pow():
1c005940:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005944:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c005948:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00594c:	0015008c 	move	$r12,$r4
1c005950:	001500ad 	move	$r13,$r5
1c005954:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005958:	001501ac 	move	$r12,$r13
1c00595c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005960:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005964:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005968:	50001400 	b	20(0x14) # 1c00597c <oled_pow+0x3c>
1c00596c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005970:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005974:	001c31ac 	mul.w	$r12,$r13,$r12
1c005978:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00597c:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c005980:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005984:	293f7acd 	st.b	$r13,$r22,-34(0xfde)
1c005988:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00596c <oled_pow+0x2c>
1c00598c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005990:	00150184 	move	$r4,$r12
1c005994:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c005998:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00599c:	4c000020 	jirl	$r0,$r1,0

1c0059a0 <OLED_ShowNum>:
OLED_ShowNum():
1c0059a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0059a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0059a8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0059ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0059b0:	0015008c 	move	$r12,$r4
1c0059b4:	001500af 	move	$r15,$r5
1c0059b8:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0059bc:	001500ee 	move	$r14,$r7
1c0059c0:	0015010d 	move	$r13,$r8
1c0059c4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0059c8:	001501ec 	move	$r12,$r15
1c0059cc:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0059d0:	001501cc 	move	$r12,$r14
1c0059d4:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c0059d8:	001501ac 	move	$r12,$r13
1c0059dc:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c0059e0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0059e4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0059e8:	50011000 	b	272(0x110) # 1c005af8 <OLED_ShowNum+0x158>
1c0059ec:	2a3f76cd 	ld.bu	$r13,$r22,-35(0xfdd)
1c0059f0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059f4:	001131ac 	sub.w	$r12,$r13,$r12
1c0059f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059fc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005a00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a04:	00150185 	move	$r5,$r12
1c005a08:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005a0c:	57ff37ff 	bl	-204(0xfffff34) # 1c005940 <oled_pow>
1c005a10:	0015008d 	move	$r13,$r4
1c005a14:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a18:	0021358e 	div.wu	$r14,$r12,$r13
1c005a1c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005a24 <OLED_ShowNum+0x84>
1c005a20:	002a0007 	break	0x7
1c005a24:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c005a28:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c005a2c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005a34 <OLED_ShowNum+0x94>
1c005a30:	002a0007 	break	0x7
1c005a34:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005a38:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005a3c:	44004180 	bnez	$r12,64(0x40) # 1c005a7c <OLED_ShowNum+0xdc>
1c005a40:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005a44:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c005a48:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005a4c:	640031ac 	bge	$r13,$r12,48(0x30) # 1c005a7c <OLED_ShowNum+0xdc>
1c005a50:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005a54:	44002180 	bnez	$r12,32(0x20) # 1c005a74 <OLED_ShowNum+0xd4>
1c005a58:	2a3f72cc 	ld.bu	$r12,$r22,-36(0xfdc)
1c005a5c:	0044858c 	srli.w	$r12,$r12,0x1
1c005a60:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005a64:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005a68:	001031ac 	add.w	$r12,$r13,$r12
1c005a6c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005a70:	50007c00 	b	124(0x7c) # 1c005aec <OLED_ShowNum+0x14c>
1c005a74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005a78:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005a7c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c005a80:	0281dc0c 	addi.w	$r12,$r0,119(0x77)
1c005a84:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c005a98 <OLED_ShowNum+0xf8>
1c005a88:	293f7ec0 	st.b	$r0,$r22,-33(0xfdf)
1c005a8c:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c005a90:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c005a94:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005a98:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c005a9c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c005aa0:	6c00098d 	bgeu	$r12,$r13,8(0x8) # 1c005aa8 <OLED_ShowNum+0x108>
1c005aa4:	293f7ac0 	st.b	$r0,$r22,-34(0xfde)
1c005aa8:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005aac:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c005ab0:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005ab4:	2a3f72cf 	ld.bu	$r15,$r22,-36(0xfdc)
1c005ab8:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c005abc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005ac0:	001501e7 	move	$r7,$r15
1c005ac4:	001501c6 	move	$r6,$r14
1c005ac8:	001501a5 	move	$r5,$r13
1c005acc:	00150184 	move	$r4,$r12
1c005ad0:	57fc3fff 	bl	-964(0xffffc3c) # 1c00570c <OLED_ShowChar>
1c005ad4:	2a3f72cc 	ld.bu	$r12,$r22,-36(0xfdc)
1c005ad8:	0044858c 	srli.w	$r12,$r12,0x1
1c005adc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005ae0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005ae4:	001031ac 	add.w	$r12,$r13,$r12
1c005ae8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005aec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005af0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005af4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005af8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005afc:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c005b00:	6bfeedac 	bltu	$r13,$r12,-276(0x3feec) # 1c0059ec <OLED_ShowNum+0x4c>
1c005b04:	03400000 	andi	$r0,$r0,0x0
1c005b08:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005b0c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005b10:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005b14:	4c000020 	jirl	$r0,$r1,0

1c005b18 <Queue_Init>:
Queue_Init():
1c005b18:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005b1c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005b20:	29806076 	st.w	$r22,$r3,24(0x18)
1c005b24:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005b28:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b30:	44000d80 	bnez	$r12,12(0xc) # 1c005b3c <Queue_Init+0x24>
1c005b34:	0015000c 	move	$r12,$r0
1c005b38:	50001800 	b	24(0x18) # 1c005b50 <Queue_Init+0x38>
1c005b3c:	0284c006 	addi.w	$r6,$r0,304(0x130)
1c005b40:	00150005 	move	$r5,$r0
1c005b44:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c005b48:	57de3bff 	bl	-8648(0xfffde38) # 1c003980 <memset>
1c005b4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b50:	00150184 	move	$r4,$r12
1c005b54:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005b58:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005b5c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b60:	4c000020 	jirl	$r0,$r1,0

1c005b64 <Queue_isEmpty>:
Queue_isEmpty():
1c005b64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005b68:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005b6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005b70:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b78:	44000d80 	bnez	$r12,12(0xc) # 1c005b84 <Queue_isEmpty+0x20>
1c005b7c:	0015000c 	move	$r12,$r0
1c005b80:	50002400 	b	36(0x24) # 1c005ba4 <Queue_isEmpty+0x40>
1c005b84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b88:	2a40018d 	ld.hu	$r13,$r12,0
1c005b8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b90:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005b94:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c005ba0 <Queue_isEmpty+0x3c>
1c005b98:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b9c:	50000800 	b	8(0x8) # 1c005ba4 <Queue_isEmpty+0x40>
1c005ba0:	0015000c 	move	$r12,$r0
1c005ba4:	00150184 	move	$r4,$r12
1c005ba8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005bac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005bb0:	4c000020 	jirl	$r0,$r1,0

1c005bb4 <Queue_HadUse>:
Queue_HadUse():
1c005bb4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005bb8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005bbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005bc0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005bc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005bc8:	44000d80 	bnez	$r12,12(0xc) # 1c005bd4 <Queue_HadUse+0x20>
1c005bcc:	0015000c 	move	$r12,$r0
1c005bd0:	50003800 	b	56(0x38) # 1c005c08 <Queue_HadUse+0x54>
1c005bd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005bd8:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c005bdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005be0:	2a40018c 	ld.hu	$r12,$r12,0
1c005be4:	001131ac 	sub.w	$r12,$r13,$r12
1c005be8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005bec:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c005bf0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bf4:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005bf8:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005bfc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005c04 <Queue_HadUse+0x50>
1c005c00:	002a0007 	break	0x7
1c005c04:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005c08:	00150184 	move	$r4,$r12
1c005c0c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005c10:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005c14:	4c000020 	jirl	$r0,$r1,0

1c005c18 <Queue_NoUse>:
Queue_NoUse():
1c005c18:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005c1c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005c20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005c24:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005c28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c2c:	44000d80 	bnez	$r12,12(0xc) # 1c005c38 <Queue_NoUse+0x20>
1c005c30:	0015000c 	move	$r12,$r0
1c005c34:	50004000 	b	64(0x40) # 1c005c74 <Queue_NoUse+0x5c>
1c005c38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c3c:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005c40:	0015018d 	move	$r13,$r12
1c005c44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c48:	2a40018c 	ld.hu	$r12,$r12,0
1c005c4c:	001131ac 	sub.w	$r12,$r13,$r12
1c005c50:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c005c54:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005c58:	0020b1ae 	mod.w	$r14,$r13,$r12
1c005c5c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005c64 <Queue_NoUse+0x4c>
1c005c60:	002a0007 	break	0x7
1c005c64:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005c68:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c005c6c:	001131ac 	sub.w	$r12,$r13,$r12
1c005c70:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c74:	00150184 	move	$r4,$r12
1c005c78:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005c7c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005c80:	4c000020 	jirl	$r0,$r1,0

1c005c84 <Queue_Wirte>:
Queue_Wirte():
1c005c84:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005c88:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005c8c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005c90:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005c94:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005c98:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005c9c:	001500cc 	move	$r12,$r6
1c005ca0:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005ca4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005ca8:	44000d80 	bnez	$r12,12(0xc) # 1c005cb4 <Queue_Wirte+0x30>
1c005cac:	0015000c 	move	$r12,$r0
1c005cb0:	50009c00 	b	156(0x9c) # 1c005d4c <Queue_Wirte+0xc8>
1c005cb4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005cb8:	57ff63ff 	bl	-160(0xfffff60) # 1c005c18 <Queue_NoUse>
1c005cbc:	0015008c 	move	$r12,$r4
1c005cc0:	0015018d 	move	$r13,$r12
1c005cc4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005cc8:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005cd4 <Queue_Wirte+0x50>
1c005ccc:	0015000c 	move	$r12,$r0
1c005cd0:	50007c00 	b	124(0x7c) # 1c005d4c <Queue_Wirte+0xc8>
1c005cd4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005cd8:	50006400 	b	100(0x64) # 1c005d3c <Queue_Wirte+0xb8>
1c005cdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ce0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005ce4:	001031ac 	add.w	$r12,$r13,$r12
1c005ce8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005cec:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c005cf0:	001501ae 	move	$r14,$r13
1c005cf4:	2a00018d 	ld.bu	$r13,$r12,0
1c005cf8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005cfc:	0010398c 	add.w	$r12,$r12,$r14
1c005d00:	2900118d 	st.b	$r13,$r12,4(0x4)
1c005d04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005d08:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005d0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d10:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005d14:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005d18:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005d1c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005d24 <Queue_Wirte+0xa0>
1c005d20:	002a0007 	break	0x7
1c005d24:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005d28:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005d2c:	2940098d 	st.h	$r13,$r12,2(0x2)
1c005d30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d38:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005d3c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005d40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005d44:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005cdc <Queue_Wirte+0x58>
1c005d48:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005d4c:	00150184 	move	$r4,$r12
1c005d50:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005d54:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005d58:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005d5c:	4c000020 	jirl	$r0,$r1,0

1c005d60 <Queue_Read>:
Queue_Read():
1c005d60:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005d64:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005d68:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005d6c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005d70:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005d74:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005d78:	001500cc 	move	$r12,$r6
1c005d7c:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005d80:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005d84:	44000d80 	bnez	$r12,12(0xc) # 1c005d90 <Queue_Read+0x30>
1c005d88:	0015000c 	move	$r12,$r0
1c005d8c:	50009c00 	b	156(0x9c) # 1c005e28 <Queue_Read+0xc8>
1c005d90:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005d94:	57fe23ff 	bl	-480(0xffffe20) # 1c005bb4 <Queue_HadUse>
1c005d98:	0015008c 	move	$r12,$r4
1c005d9c:	0015018d 	move	$r13,$r12
1c005da0:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005da4:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005db0 <Queue_Read+0x50>
1c005da8:	0015000c 	move	$r12,$r0
1c005dac:	50007c00 	b	124(0x7c) # 1c005e28 <Queue_Read+0xc8>
1c005db0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005db4:	50006400 	b	100(0x64) # 1c005e18 <Queue_Read+0xb8>
1c005db8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005dbc:	2a40018c 	ld.hu	$r12,$r12,0
1c005dc0:	0015018e 	move	$r14,$r12
1c005dc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005dc8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005dcc:	001031ac 	add.w	$r12,$r13,$r12
1c005dd0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005dd4:	001039ad 	add.w	$r13,$r13,$r14
1c005dd8:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c005ddc:	2900018d 	st.b	$r13,$r12,0
1c005de0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005de4:	2a40018c 	ld.hu	$r12,$r12,0
1c005de8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005dec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005df0:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005df4:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005df8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005e00 <Queue_Read+0xa0>
1c005dfc:	002a0007 	break	0x7
1c005e00:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005e04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005e08:	2940018d 	st.h	$r13,$r12,0
1c005e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005e18:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005e1c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005e20:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005db8 <Queue_Read+0x58>
1c005e24:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005e28:	00150184 	move	$r4,$r12
1c005e2c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005e30:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005e34:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005e38:	4c000020 	jirl	$r0,$r1,0

1c005e3c <USART0SendByte>:
USART0SendByte():
1c005e3c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005e40:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005e44:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005e48:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005e4c:	0015008c 	move	$r12,$r4
1c005e50:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005e54:	02bf7ecc 	addi.w	$r12,$r22,-33(0xfdf)
1c005e58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005e5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005e64:	00150184 	move	$r4,$r12
1c005e68:	57d07bff 	bl	-12168(0xfffd078) # 1c002ee0 <Uart0_send>
1c005e6c:	03400000 	andi	$r0,$r0,0x0
1c005e70:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005e74:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005e78:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005e7c:	4c000020 	jirl	$r0,$r1,0

1c005e80 <USART0GetByte>:
USART0GetByte():
1c005e80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005e84:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005e88:	29806076 	st.w	$r22,$r3,24(0x18)
1c005e8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005e90:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005e94:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005e98:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005e9c:	57ce4fff 	bl	-12724(0xfffce4c) # 1c002ce8 <UART_GetFlagStatus>
1c005ea0:	0015008c 	move	$r12,$r4
1c005ea4:	44000d80 	bnez	$r12,12(0xc) # 1c005eb0 <USART0GetByte+0x30>
1c005ea8:	0015000c 	move	$r12,$r0
1c005eac:	50002000 	b	32(0x20) # 1c005ecc <USART0GetByte+0x4c>
1c005eb0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005eb4:	57cdebff 	bl	-12824(0xfffcde8) # 1c002c9c <UART_ReceiveData>
1c005eb8:	0015008c 	move	$r12,$r4
1c005ebc:	0015018d 	move	$r13,$r12
1c005ec0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ec4:	2900018d 	st.b	$r13,$r12,0
1c005ec8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005ecc:	00150184 	move	$r4,$r12
1c005ed0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005ed4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005ed8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005edc:	4c000020 	jirl	$r0,$r1,0

1c005ee0 <USART0Test>:
USART0Test():
1c005ee0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005ee4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005ee8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005eec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ef0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005ef4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005ef8:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c005efc:	50001000 	b	16(0x10) # 1c005f0c <USART0Test+0x2c>
1c005f00:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c005f04:	00150184 	move	$r4,$r12
1c005f08:	57ff37ff 	bl	-204(0xfffff34) # 1c005e3c <USART0SendByte>
1c005f0c:	02bfaecc 	addi.w	$r12,$r22,-21(0xfeb)
1c005f10:	00150184 	move	$r4,$r12
1c005f14:	57ff6fff 	bl	-148(0xfffff6c) # 1c005e80 <USART0GetByte>
1c005f18:	0015008c 	move	$r12,$r4
1c005f1c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005f00 <USART0Test+0x20>
1c005f20:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005f24:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c005f28:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c005f34 <USART0Test+0x54>
1c005f2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005f30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f34:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005f38:	02812c0c 	addi.w	$r12,$r0,75(0x4b)
1c005f3c:	5fffd1ac 	bne	$r13,$r12,-48(0x3ffd0) # 1c005f0c <USART0Test+0x2c>
1c005f40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005f44:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005f48:	5fffc5ac 	bne	$r13,$r12,-60(0x3ffc4) # 1c005f0c <USART0Test+0x2c>
1c005f4c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005f50:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005f54:	2980018d 	st.w	$r13,$r12,0
1c005f58:	03400000 	andi	$r0,$r0,0x0
1c005f5c:	03400000 	andi	$r0,$r0,0x0
1c005f60:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005f64:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005f68:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005f6c:	4c000020 	jirl	$r0,$r1,0

1c005f70 <USART0TX>:
USART0TX():
1c005f70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005f74:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005f78:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005f7c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f80:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005f84:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005f88:	50002c00 	b	44(0x2c) # 1c005fb4 <USART0TX+0x44>
1c005f8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f90:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005f94:	001031ac 	add.w	$r12,$r13,$r12
1c005f98:	2800018c 	ld.b	$r12,$r12,0
1c005f9c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005fa0:	00150184 	move	$r4,$r12
1c005fa4:	57fe9bff 	bl	-360(0xffffe98) # 1c005e3c <USART0SendByte>
1c005fa8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005fac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005fb0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005fb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005fb8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005fbc:	001031ac 	add.w	$r12,$r13,$r12
1c005fc0:	2800018c 	ld.b	$r12,$r12,0
1c005fc4:	47ffc99f 	bnez	$r12,-56(0x7fffc8) # 1c005f8c <USART0TX+0x1c>
1c005fc8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005fcc:	57fe73ff 	bl	-400(0xffffe70) # 1c005e3c <USART0SendByte>
1c005fd0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005fd4:	57fe6bff 	bl	-408(0xffffe68) # 1c005e3c <USART0SendByte>
1c005fd8:	03400000 	andi	$r0,$r0,0x0
1c005fdc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005fe0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005fe4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005fe8:	4c000020 	jirl	$r0,$r1,0

1c005fec <calccrc>:
calccrc():
1c005fec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005ff0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c005ff4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ff8:	0015008c 	move	$r12,$r4
1c005ffc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006000:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006004:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006008:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00600c:	0015b1ac 	xor	$r12,$r13,$r12
1c006010:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006014:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006018:	50007400 	b	116(0x74) # 1c00608c <calccrc+0xa0>
1c00601c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006020:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006024:	0340058c 	andi	$r12,$r12,0x1
1c006028:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00602c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006030:	0044858c 	srli.w	$r12,$r12,0x1
1c006034:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006038:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00603c:	140000ec 	lu12i.w	$r12,7(0x7)
1c006040:	03bffd8c 	ori	$r12,$r12,0xfff
1c006044:	0014b1ac 	and	$r12,$r13,$r12
1c006048:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00604c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006050:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006054:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00606c <calccrc+0x80>
1c006058:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00605c:	1400014c 	lu12i.w	$r12,10(0xa)
1c006060:	0380058c 	ori	$r12,$r12,0x1
1c006064:	0015b1ac 	xor	$r12,$r13,$r12
1c006068:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00606c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006070:	140001ec 	lu12i.w	$r12,15(0xf)
1c006074:	03bffd8c 	ori	$r12,$r12,0xfff
1c006078:	0014b1ac 	and	$r12,$r13,$r12
1c00607c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006080:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006084:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006088:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00608c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006090:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006094:	6fff898d 	bgeu	$r12,$r13,-120(0x3ff88) # 1c00601c <calccrc+0x30>
1c006098:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00609c:	00150184 	move	$r4,$r12
1c0060a0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0060a4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0060a8:	4c000020 	jirl	$r0,$r1,0

1c0060ac <chkcrc>:
chkcrc():
1c0060ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0060b0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0060b4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0060b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0060bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0060c0:	001500ac 	move	$r12,$r5
1c0060c4:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0060c8:	140001ec 	lu12i.w	$r12,15(0xf)
1c0060cc:	03bffd8c 	ori	$r12,$r12,0xfff
1c0060d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0060d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0060d8:	50003400 	b	52(0x34) # 1c00610c <chkcrc+0x60>
1c0060dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0060e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0060e4:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c0060e8:	00150184 	move	$r4,$r12
1c0060ec:	57ff03ff 	bl	-256(0xfffff00) # 1c005fec <calccrc>
1c0060f0:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0060f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0060f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0060fc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006100:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006104:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006108:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00610c:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c006110:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006114:	6bffc9ac 	bltu	$r13,$r12,-56(0x3ffc8) # 1c0060dc <chkcrc+0x30>
1c006118:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00611c:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c006120:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006124:	0044a18c 	srli.w	$r12,$r12,0x8
1c006128:	293f9acc 	st.b	$r12,$r22,-26(0xfe6)
1c00612c:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c006130:	0040a18d 	slli.w	$r13,$r12,0x8
1c006134:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c006138:	001531ac 	or	$r12,$r13,$r12
1c00613c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006140:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006144:	00150184 	move	$r4,$r12
1c006148:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00614c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006150:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006154:	4c000020 	jirl	$r0,$r1,0

1c006158 <read_data>:
read_data():
1c006158:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00615c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006160:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006164:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006168:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00616c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006170:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006174:	5c00a1ac 	bne	$r13,$r12,160(0xa0) # 1c006214 <read_data+0xbc>
1c006178:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c00617c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006180:	02bb018c 	addi.w	$r12,$r12,-320(0xec0)
1c006184:	2a00018d 	ld.bu	$r13,$r12,0
1c006188:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00618c:	28ba318c 	ld.w	$r12,$r12,-372(0xe8c)
1c006190:	2900018d 	st.b	$r13,$r12,0
1c006194:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006198:	28ba018c 	ld.w	$r12,$r12,-384(0xe80)
1c00619c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0061a0:	2900058d 	st.b	$r13,$r12,1(0x1)
1c0061a4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0061a8:	28b9c18c 	ld.w	$r12,$r12,-400(0xe70)
1c0061ac:	29000980 	st.b	$r0,$r12,2(0x2)
1c0061b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0061b4:	28b9918c 	ld.w	$r12,$r12,-412(0xe64)
1c0061b8:	0281200d 	addi.w	$r13,$r0,72(0x48)
1c0061bc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0061c0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0061c4:	28b9518c 	ld.w	$r12,$r12,-428(0xe54)
1c0061c8:	29001180 	st.b	$r0,$r12,4(0x4)
1c0061cc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0061d0:	28b9218c 	ld.w	$r12,$r12,-440(0xe48)
1c0061d4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0061d8:	2900158d 	st.b	$r13,$r12,5(0x5)
1c0061dc:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0061e0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0061e4:	28b8d084 	ld.w	$r4,$r4,-460(0xe34)
1c0061e8:	57fec7ff 	bl	-316(0xffffec4) # 1c0060ac <chkcrc>
1c0061ec:	0015008c 	move	$r12,$r4
1c0061f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0061f4:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c0061f8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0061fc:	28b8718c 	ld.w	$r12,$r12,-484(0xe1c)
1c006200:	2900198d 	st.b	$r13,$r12,6(0x6)
1c006204:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c006208:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00620c:	28b8318c 	ld.w	$r12,$r12,-500(0xe0c)
1c006210:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c006214:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006218:	02b7f18c 	addi.w	$r12,$r12,-516(0xdfc)
1c00621c:	29800180 	st.w	$r0,$r12,0
1c006220:	50004400 	b	68(0x44) # 1c006264 <read_data+0x10c>
1c006224:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006228:	02b7b18c 	addi.w	$r12,$r12,-532(0xdec)
1c00622c:	2880018c 	ld.w	$r12,$r12,0
1c006230:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c006234:	28b791ad 	ld.w	$r13,$r13,-540(0xde4)
1c006238:	001031ac 	add.w	$r12,$r13,$r12
1c00623c:	2a00018c 	ld.bu	$r12,$r12,0
1c006240:	00150184 	move	$r4,$r12
1c006244:	57ccdbff 	bl	-13096(0xfffccd8) # 1c002f1c <Uart1_send>
1c006248:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00624c:	02b7218c 	addi.w	$r12,$r12,-568(0xdc8)
1c006250:	2880018c 	ld.w	$r12,$r12,0
1c006254:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c006258:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00625c:	02b6e18c 	addi.w	$r12,$r12,-584(0xdb8)
1c006260:	2980018d 	st.w	$r13,$r12,0
1c006264:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006268:	02b6b18c 	addi.w	$r12,$r12,-596(0xdac)
1c00626c:	2880018d 	ld.w	$r13,$r12,0
1c006270:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006274:	02b7418c 	addi.w	$r12,$r12,-560(0xdd0)
1c006278:	2880018c 	ld.w	$r12,$r12,0
1c00627c:	63ffa9ac 	blt	$r13,$r12,-88(0x3ffa8) # 1c006224 <read_data+0xcc>
1c006280:	03400000 	andi	$r0,$r0,0x0
1c006284:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006288:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00628c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006290:	4c000020 	jirl	$r0,$r1,0

1c006294 <Analysis_data>:
Analysis_data():
1c006294:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006298:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00629c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0062a0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0062a4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0062a8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062ac:	28b5818c 	ld.w	$r12,$r12,-672(0xd60)
1c0062b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0062b4:	0015018d 	move	$r13,$r12
1c0062b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0062bc:	02b5718c 	addi.w	$r12,$r12,-676(0xd5c)
1c0062c0:	2980018d 	st.w	$r13,$r12,0
1c0062c4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062c8:	28b5718c 	ld.w	$r12,$r12,-676(0xd5c)
1c0062cc:	2a00018d 	ld.bu	$r13,$r12,0
1c0062d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0062d4:	580015ac 	beq	$r13,$r12,20(0x14) # 1c0062e8 <Analysis_data+0x54>
1c0062d8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062dc:	28b5218c 	ld.w	$r12,$r12,-696(0xd48)
1c0062e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0062e4:	44017580 	bnez	$r12,372(0x174) # 1c006458 <Analysis_data+0x1c4>
1c0062e8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0062ec:	02b4b18c 	addi.w	$r12,$r12,-724(0xd2c)
1c0062f0:	2880018c 	ld.w	$r12,$r12,0
1c0062f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0062f8:	02bff98c 	addi.w	$r12,$r12,-2(0xffe)
1c0062fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006300:	00150185 	move	$r5,$r12
1c006304:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006308:	28b47084 	ld.w	$r4,$r4,-740(0xd1c)
1c00630c:	57fda3ff 	bl	-608(0xffffda0) # 1c0060ac <chkcrc>
1c006310:	0015008c 	move	$r12,$r4
1c006314:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c006318:	2a3f52cd 	ld.bu	$r13,$r22,-44(0xfd4)
1c00631c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006320:	02b3e18c 	addi.w	$r12,$r12,-776(0xcf8)
1c006324:	2880018c 	ld.w	$r12,$r12,0
1c006328:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00632c:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c006330:	28b3d1ce 	ld.w	$r14,$r14,-780(0xcf4)
1c006334:	001031cc 	add.w	$r12,$r14,$r12
1c006338:	2a00018c 	ld.bu	$r12,$r12,0
1c00633c:	5c011dac 	bne	$r13,$r12,284(0x11c) # 1c006458 <Analysis_data+0x1c4>
1c006340:	2a3f56cd 	ld.bu	$r13,$r22,-43(0xfd5)
1c006344:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006348:	02b3418c 	addi.w	$r12,$r12,-816(0xcd0)
1c00634c:	2880018c 	ld.w	$r12,$r12,0
1c006350:	02bff98c 	addi.w	$r12,$r12,-2(0xffe)
1c006354:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c006358:	28b331ce 	ld.w	$r14,$r14,-820(0xccc)
1c00635c:	001031cc 	add.w	$r12,$r14,$r12
1c006360:	2a00018c 	ld.bu	$r12,$r12,0
1c006364:	5c00f5ac 	bne	$r13,$r12,244(0xf4) # 1c006458 <Analysis_data+0x1c4>
1c006368:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00636c:	28b2e18c 	ld.w	$r12,$r12,-840(0xcb8)
1c006370:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c006374:	0040e18d 	slli.w	$r13,$r12,0x18
1c006378:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00637c:	28b2a18c 	ld.w	$r12,$r12,-856(0xca8)
1c006380:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c006384:	0040c18c 	slli.w	$r12,$r12,0x10
1c006388:	001531ad 	or	$r13,$r13,$r12
1c00638c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006390:	28b2518c 	ld.w	$r12,$r12,-876(0xc94)
1c006394:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c006398:	0040a18c 	slli.w	$r12,$r12,0x8
1c00639c:	001531ac 	or	$r12,$r13,$r12
1c0063a0:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c0063a4:	28b201ad 	ld.w	$r13,$r13,-896(0xc80)
1c0063a8:	2a0019ad 	ld.bu	$r13,$r13,6(0x6)
1c0063ac:	0015358c 	or	$r12,$r12,$r13
1c0063b0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0063b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063b8:	28b1b18c 	ld.w	$r12,$r12,-916(0xc6c)
1c0063bc:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c0063c0:	0040e18d 	slli.w	$r13,$r12,0x18
1c0063c4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063c8:	28b1718c 	ld.w	$r12,$r12,-932(0xc5c)
1c0063cc:	2a00218c 	ld.bu	$r12,$r12,8(0x8)
1c0063d0:	0040c18c 	slli.w	$r12,$r12,0x10
1c0063d4:	001531ad 	or	$r13,$r13,$r12
1c0063d8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063dc:	28b1218c 	ld.w	$r12,$r12,-952(0xc48)
1c0063e0:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0063e4:	0040a18c 	slli.w	$r12,$r12,0x8
1c0063e8:	001531ac 	or	$r12,$r13,$r12
1c0063ec:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c0063f0:	28b0d1ad 	ld.w	$r13,$r13,-972(0xc34)
1c0063f4:	2a0029ad 	ld.bu	$r13,$r13,10(0xa)
1c0063f8:	0015358c 	or	$r12,$r12,$r13
1c0063fc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006400:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006404:	28b0818c 	ld.w	$r12,$r12,-992(0xc20)
1c006408:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c00640c:	0040e18d 	slli.w	$r13,$r12,0x18
1c006410:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006414:	28b0418c 	ld.w	$r12,$r12,-1008(0xc10)
1c006418:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c00641c:	0040c18c 	slli.w	$r12,$r12,0x10
1c006420:	001531ad 	or	$r13,$r13,$r12
1c006424:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006428:	28aff18c 	ld.w	$r12,$r12,-1028(0xbfc)
1c00642c:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c006430:	0040a18c 	slli.w	$r12,$r12,0x8
1c006434:	001531ac 	or	$r12,$r13,$r12
1c006438:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c00643c:	28afa1ad 	ld.w	$r13,$r13,-1048(0xbe8)
1c006440:	2a0039ad 	ld.bu	$r13,$r13,14(0xe)
1c006444:	0015358c 	or	$r12,$r12,$r13
1c006448:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00644c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006450:	28aef18c 	ld.w	$r12,$r12,-1092(0xbbc)
1c006454:	29000180 	st.b	$r0,$r12,0
1c006458:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c00645c:	28bf62d2 	ld.w	$r18,$r22,-40(0xfd8)
1c006460:	28bf72d1 	ld.w	$r17,$r22,-36(0xfdc)
1c006464:	28bf82d0 	ld.w	$r16,$r22,-32(0xfe0)
1c006468:	28bf92cf 	ld.w	$r15,$r22,-28(0xfe4)
1c00646c:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c006470:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006474:	29800192 	st.w	$r18,$r12,0
1c006478:	29801191 	st.w	$r17,$r12,4(0x4)
1c00647c:	29802190 	st.w	$r16,$r12,8(0x8)
1c006480:	2980318f 	st.w	$r15,$r12,12(0xc)
1c006484:	2980418e 	st.w	$r14,$r12,16(0x10)
1c006488:	2980518d 	st.w	$r13,$r12,20(0x14)
1c00648c:	28bf32c4 	ld.w	$r4,$r22,-52(0xfcc)
1c006490:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006494:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006498:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00649c:	4c000020 	jirl	$r0,$r1,0

1c0064a0 <wifi_null>:
wifi_null():
1c0064a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0064a4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0064a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0064ac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064b0:	02ae518c 	addi.w	$r12,$r12,-1132(0xb94)
1c0064b4:	29800180 	st.w	$r0,$r12,0
1c0064b8:	50003c00 	b	60(0x3c) # 1c0064f4 <wifi_null+0x54>
1c0064bc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064c0:	02ae118c 	addi.w	$r12,$r12,-1148(0xb84)
1c0064c4:	2880018c 	ld.w	$r12,$r12,0
1c0064c8:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c0064cc:	28ad61ad 	ld.w	$r13,$r13,-1192(0xb58)
1c0064d0:	001031ac 	add.w	$r12,$r13,$r12
1c0064d4:	29000180 	st.b	$r0,$r12,0
1c0064d8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064dc:	02ada18c 	addi.w	$r12,$r12,-1176(0xb68)
1c0064e0:	2880018c 	ld.w	$r12,$r12,0
1c0064e4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0064e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064ec:	02ad618c 	addi.w	$r12,$r12,-1192(0xb58)
1c0064f0:	2980018d 	st.w	$r13,$r12,0
1c0064f4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064f8:	02ad318c 	addi.w	$r12,$r12,-1204(0xb4c)
1c0064fc:	2880018d 	ld.w	$r13,$r12,0
1c006500:	02809c0c 	addi.w	$r12,$r0,39(0x27)
1c006504:	67ffb98d 	bge	$r12,$r13,-72(0x3ffb8) # 1c0064bc <wifi_null+0x1c>
1c006508:	03400000 	andi	$r0,$r0,0x0
1c00650c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c006510:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006514:	4c000020 	jirl	$r0,$r1,0

1c006518 <SR501_Init>:
SR501_Init():
1c006518:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00651c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006520:	29802076 	st.w	$r22,$r3,8(0x8)
1c006524:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006528:	00150005 	move	$r5,$r0
1c00652c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c006530:	57b3a7ff 	bl	-19548(0xfffb3a4) # 1c0018d4 <gpio_set_direction>
1c006534:	03400000 	andi	$r0,$r0,0x0
1c006538:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00653c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006540:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006544:	4c000020 	jirl	$r0,$r1,0

1c006548 <SR501_GetValue>:
SR501_GetValue():
1c006548:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00654c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006550:	29806076 	st.w	$r22,$r3,24(0x18)
1c006554:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006558:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00655c:	57b0a7ff 	bl	-20316(0xfffb0a4) # 1c001600 <gpio_get_pin>
1c006560:	0015008c 	move	$r12,$r4
1c006564:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006568:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00656c:	00150184 	move	$r4,$r12
1c006570:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006574:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006578:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00657c:	4c000020 	jirl	$r0,$r1,0

1c006580 <MD0_Config>:
MD0_Config():
1c006580:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006584:	29803061 	st.w	$r1,$r3,12(0xc)
1c006588:	29802076 	st.w	$r22,$r3,8(0x8)
1c00658c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006590:	00150005 	move	$r5,$r0
1c006594:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006598:	57b0bbff 	bl	-20296(0xfffb0b8) # 1c001650 <gpio_write_pin>
1c00659c:	03400000 	andi	$r0,$r0,0x0
1c0065a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0065a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0065a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0065ac:	4c000020 	jirl	$r0,$r1,0

1c0065b0 <AUX_Config>:
AUX_Config():
1c0065b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0065b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0065b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0065bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0065c0:	00150005 	move	$r5,$r0
1c0065c4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0065c8:	57b30fff 	bl	-19700(0xfffb30c) # 1c0018d4 <gpio_set_direction>
1c0065cc:	03400000 	andi	$r0,$r0,0x0
1c0065d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0065d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0065d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0065dc:	4c000020 	jirl	$r0,$r1,0

1c0065e0 <MD0>:
MD0():
1c0065e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0065e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0065e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0065ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0065f0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0065f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0065f8:	40001580 	beqz	$r12,20(0x14) # 1c00660c <MD0+0x2c>
1c0065fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006600:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006604:	57b04fff 	bl	-20404(0xfffb04c) # 1c001650 <gpio_write_pin>
1c006608:	50001000 	b	16(0x10) # 1c006618 <MD0+0x38>
1c00660c:	00150005 	move	$r5,$r0
1c006610:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006614:	57b03fff 	bl	-20420(0xfffb03c) # 1c001650 <gpio_write_pin>
1c006618:	03400000 	andi	$r0,$r0,0x0
1c00661c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006620:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006624:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006628:	4c000020 	jirl	$r0,$r1,0

1c00662c <AUX>:
AUX():
1c00662c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006630:	29803061 	st.w	$r1,$r3,12(0xc)
1c006634:	29802076 	st.w	$r22,$r3,8(0x8)
1c006638:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00663c:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c006640:	57afc3ff 	bl	-20544(0xfffafc0) # 1c001600 <gpio_get_pin>
1c006644:	0015008c 	move	$r12,$r4
1c006648:	0015018d 	move	$r13,$r12
1c00664c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006650:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c00665c <AUX+0x30>
1c006654:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006658:	50000800 	b	8(0x8) # 1c006660 <AUX+0x34>
1c00665c:	0015000c 	move	$r12,$r0
1c006660:	00150184 	move	$r4,$r12
1c006664:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006668:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00666c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006670:	4c000020 	jirl	$r0,$r1,0

1c006674 <lora_check>:
lora_check():
1c006674:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006678:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00667c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006680:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006684:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006688:	50001800 	b	24(0x18) # 1c0066a0 <lora_check+0x2c>
1c00668c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006690:	02acd084 	addi.w	$r4,$r4,-1228(0xb34)
1c006694:	57b7c3ff 	bl	-18496(0xfffb7c0) # 1c001e54 <myprintf>
1c006698:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c00669c:	57d2a7ff 	bl	-11612(0xfffd2a4) # 1c003940 <delay_ms>
1c0066a0:	57ff8fff 	bl	-116(0xfffff8c) # 1c00662c <AUX>
1c0066a4:	0015008c 	move	$r12,$r4
1c0066a8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00668c <lora_check+0x18>
1c0066ac:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0066b0:	57ff33ff 	bl	-208(0xfffff30) # 1c0065e0 <MD0>
1c0066b4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0066b8:	57d28bff 	bl	-11640(0xfffd288) # 1c003940 <delay_ms>
1c0066bc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0066c0:	02ac5084 	addi.w	$r4,$r4,-1260(0xb14)
1c0066c4:	57b793ff 	bl	-18544(0xfffb790) # 1c001e54 <myprintf>
1c0066c8:	50001c00 	b	28(0x1c) # 1c0066e4 <lora_check+0x70>
1c0066cc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0066d0:	02ac5084 	addi.w	$r4,$r4,-1260(0xb14)
1c0066d4:	57f89fff 	bl	-1892(0xffff89c) # 1c005f70 <USART0TX>
1c0066d8:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c0066dc:	00150184 	move	$r4,$r12
1c0066e0:	57f803ff 	bl	-2048(0xffff800) # 1c005ee0 <USART0Test>
1c0066e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0066e8:	43ffe59f 	beqz	$r12,-28(0x7fffe4) # 1c0066cc <lora_check+0x58>
1c0066ec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0066f0:	02abe084 	addi.w	$r4,$r4,-1288(0xaf8)
1c0066f4:	57b763ff 	bl	-18592(0xfffb760) # 1c001e54 <myprintf>
1c0066f8:	03400000 	andi	$r0,$r0,0x0
1c0066fc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006700:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006704:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006708:	4c000020 	jirl	$r0,$r1,0

1c00670c <lora_set>:
lora_set():
1c00670c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006710:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006714:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006718:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00671c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006720:	29bf42c0 	st.w	$r0,$r22,-48(0xfd0)
1c006724:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c006728:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00672c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c006730:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c006734:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006738:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00673c:	293f3ec0 	st.b	$r0,$r22,-49(0xfcf)
1c006740:	50001000 	b	16(0x10) # 1c006750 <lora_set+0x44>
1c006744:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006748:	02aac084 	addi.w	$r4,$r4,-1360(0xab0)
1c00674c:	57b70bff 	bl	-18680(0xfffb708) # 1c001e54 <myprintf>
1c006750:	57fedfff 	bl	-292(0xffffedc) # 1c00662c <AUX>
1c006754:	0015008c 	move	$r12,$r4
1c006758:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c006744 <lora_set+0x38>
1c00675c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006760:	57fe83ff 	bl	-384(0xffffe80) # 1c0065e0 <MD0>
1c006764:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006768:	57d1dbff 	bl	-11816(0xfffd1d8) # 1c003940 <delay_ms>
1c00676c:	50002800 	b	40(0x28) # 1c006794 <lora_set+0x88>
1c006770:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006774:	02aa6084 	addi.w	$r4,$r4,-1384(0xa98)
1c006778:	57f7fbff 	bl	-2056(0xffff7f8) # 1c005f70 <USART0TX>
1c00677c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c006780:	00150184 	move	$r4,$r12
1c006784:	57f75fff 	bl	-2212(0xffff75c) # 1c005ee0 <USART0Test>
1c006788:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00678c:	02aa4084 	addi.w	$r4,$r4,-1392(0xa90)
1c006790:	57b6c7ff 	bl	-18748(0xfffb6c4) # 1c001e54 <myprintf>
1c006794:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006798:	43ffd99f 	beqz	$r12,-40(0x7fffd8) # 1c006770 <lora_set+0x64>
1c00679c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0067a0:	02aa4084 	addi.w	$r4,$r4,-1392(0xa90)
1c0067a4:	57b6b3ff 	bl	-18768(0xfffb6b0) # 1c001e54 <myprintf>
1c0067a8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0067ac:	02aa4084 	addi.w	$r4,$r4,-1392(0xa90)
1c0067b0:	57f7c3ff 	bl	-2112(0xffff7c0) # 1c005f70 <USART0TX>
1c0067b4:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c0067b8:	00150184 	move	$r4,$r12
1c0067bc:	57f6c7ff 	bl	-2364(0xffff6c4) # 1c005e80 <USART0GetByte>
1c0067c0:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c0067c4:	0280e80c 	addi.w	$r12,$r0,58(0x3a)
1c0067c8:	5fffedac 	bne	$r13,$r12,-20(0x3ffec) # 1c0067b4 <lora_set+0xa8>
1c0067cc:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c0067d0:	00150184 	move	$r4,$r12
1c0067d4:	57f6afff 	bl	-2388(0xffff6ac) # 1c005e80 <USART0GetByte>
1c0067d8:	0015008c 	move	$r12,$r4
1c0067dc:	0015018d 	move	$r13,$r12
1c0067e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0067e4:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006818 <lora_set+0x10c>
1c0067e8:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c0067ec:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c0067f0:	580029ac 	beq	$r13,$r12,40(0x28) # 1c006818 <lora_set+0x10c>
1c0067f4:	2a3f3ece 	ld.bu	$r14,$r22,-49(0xfcf)
1c0067f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0067fc:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c006800:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006804:	00005dcc 	ext.w.b	$r12,$r14
1c006808:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00680c:	001035cd 	add.w	$r13,$r14,$r13
1c006810:	293f81ac 	st.b	$r12,$r13,-32(0xfe0)
1c006814:	50001400 	b	20(0x14) # 1c006828 <lora_set+0x11c>
1c006818:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c00681c:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006820:	5fffadac 	bne	$r13,$r12,-84(0x3ffac) # 1c0067cc <lora_set+0xc0>
1c006824:	50000800 	b	8(0x8) # 1c00682c <lora_set+0x120>
1c006828:	53ffa7ff 	b	-92(0xfffffa4) # 1c0067cc <lora_set+0xc0>
1c00682c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006830:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c006834:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006838:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00683c:	001031ac 	add.w	$r12,$r13,$r12
1c006840:	283f818c 	ld.b	$r12,$r12,-32(0xfe0)
1c006844:	00150185 	move	$r5,$r12
1c006848:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00684c:	02a7f084 	addi.w	$r4,$r4,-1540(0x9fc)
1c006850:	57b607ff 	bl	-18940(0xfffb604) # 1c001e54 <myprintf>
1c006854:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006858:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00685c:	580009ac 	beq	$r13,$r12,8(0x8) # 1c006864 <lora_set+0x158>
1c006860:	53ffcfff 	b	-52(0xfffffcc) # 1c00682c <lora_set+0x120>
1c006864:	03400000 	andi	$r0,$r0,0x0
1c006868:	03400000 	andi	$r0,$r0,0x0
1c00686c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006870:	02a77084 	addi.w	$r4,$r4,-1572(0x9dc)
1c006874:	57b5e3ff 	bl	-18976(0xfffb5e0) # 1c001e54 <myprintf>
1c006878:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00687c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006880:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006884:	50002800 	b	40(0x28) # 1c0068ac <lora_set+0x1a0>
1c006888:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00688c:	02a71084 	addi.w	$r4,$r4,-1596(0x9c4)
1c006890:	57f6e3ff 	bl	-2336(0xffff6e0) # 1c005f70 <USART0TX>
1c006894:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c006898:	00150184 	move	$r4,$r12
1c00689c:	57f647ff 	bl	-2492(0xffff644) # 1c005ee0 <USART0Test>
1c0068a0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0068a4:	02a6f084 	addi.w	$r4,$r4,-1604(0x9bc)
1c0068a8:	57b5afff 	bl	-19028(0xfffb5ac) # 1c001e54 <myprintf>
1c0068ac:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0068b0:	43ffd99f 	beqz	$r12,-40(0x7fffd8) # 1c006888 <lora_set+0x17c>
1c0068b4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0068b8:	02a70084 	addi.w	$r4,$r4,-1600(0x9c0)
1c0068bc:	57b59bff 	bl	-19048(0xfffb598) # 1c001e54 <myprintf>
1c0068c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0068c4:	02a71084 	addi.w	$r4,$r4,-1596(0x9c4)
1c0068c8:	57f6abff 	bl	-2392(0xffff6a8) # 1c005f70 <USART0TX>
1c0068cc:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c0068d0:	00150184 	move	$r4,$r12
1c0068d4:	57f5afff 	bl	-2644(0xffff5ac) # 1c005e80 <USART0GetByte>
1c0068d8:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c0068dc:	0280e80c 	addi.w	$r12,$r0,58(0x3a)
1c0068e0:	5fffedac 	bne	$r13,$r12,-20(0x3ffec) # 1c0068cc <lora_set+0x1c0>
1c0068e4:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c0068e8:	00150184 	move	$r4,$r12
1c0068ec:	57f597ff 	bl	-2668(0xffff594) # 1c005e80 <USART0GetByte>
1c0068f0:	0015008c 	move	$r12,$r4
1c0068f4:	0015018d 	move	$r13,$r12
1c0068f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0068fc:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006930 <lora_set+0x224>
1c006900:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006904:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006908:	580029ac 	beq	$r13,$r12,40(0x28) # 1c006930 <lora_set+0x224>
1c00690c:	2a3f3ece 	ld.bu	$r14,$r22,-49(0xfcf)
1c006910:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006914:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c006918:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00691c:	00005dcc 	ext.w.b	$r12,$r14
1c006920:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006924:	001035cd 	add.w	$r13,$r14,$r13
1c006928:	293f81ac 	st.b	$r12,$r13,-32(0xfe0)
1c00692c:	50001400 	b	20(0x14) # 1c006940 <lora_set+0x234>
1c006930:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006934:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006938:	5fffadac 	bne	$r13,$r12,-84(0x3ffac) # 1c0068e4 <lora_set+0x1d8>
1c00693c:	50000800 	b	8(0x8) # 1c006944 <lora_set+0x238>
1c006940:	53ffa7ff 	b	-92(0xfffffa4) # 1c0068e4 <lora_set+0x1d8>
1c006944:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006948:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00694c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006950:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006954:	001031ac 	add.w	$r12,$r13,$r12
1c006958:	283f818c 	ld.b	$r12,$r12,-32(0xfe0)
1c00695c:	00150185 	move	$r5,$r12
1c006960:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006964:	02a39084 	addi.w	$r4,$r4,-1820(0x8e4)
1c006968:	57b4efff 	bl	-19220(0xfffb4ec) # 1c001e54 <myprintf>
1c00696c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006970:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006974:	580009ac 	beq	$r13,$r12,8(0x8) # 1c00697c <lora_set+0x270>
1c006978:	53ffcfff 	b	-52(0xfffffcc) # 1c006944 <lora_set+0x238>
1c00697c:	03400000 	andi	$r0,$r0,0x0
1c006980:	03400000 	andi	$r0,$r0,0x0
1c006984:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006988:	02a31084 	addi.w	$r4,$r4,-1852(0x8c4)
1c00698c:	57b4cbff 	bl	-19256(0xfffb4c8) # 1c001e54 <myprintf>
1c006990:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006994:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006998:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00699c:	50002800 	b	40(0x28) # 1c0069c4 <lora_set+0x2b8>
1c0069a0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0069a4:	02a3c084 	addi.w	$r4,$r4,-1808(0x8f0)
1c0069a8:	57f5cbff 	bl	-2616(0xffff5c8) # 1c005f70 <USART0TX>
1c0069ac:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0069b0:	00150184 	move	$r4,$r12
1c0069b4:	57f52fff 	bl	-2772(0xffff52c) # 1c005ee0 <USART0Test>
1c0069b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0069bc:	02a39084 	addi.w	$r4,$r4,-1820(0x8e4)
1c0069c0:	57b497ff 	bl	-19308(0xfffb494) # 1c001e54 <myprintf>
1c0069c4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0069c8:	43ffd99f 	beqz	$r12,-40(0x7fffd8) # 1c0069a0 <lora_set+0x294>
1c0069cc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0069d0:	02a3a084 	addi.w	$r4,$r4,-1816(0x8e8)
1c0069d4:	57b483ff 	bl	-19328(0xfffb480) # 1c001e54 <myprintf>
1c0069d8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0069dc:	02a3b084 	addi.w	$r4,$r4,-1812(0x8ec)
1c0069e0:	57f593ff 	bl	-2672(0xffff590) # 1c005f70 <USART0TX>
1c0069e4:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c0069e8:	00150184 	move	$r4,$r12
1c0069ec:	57f497ff 	bl	-2924(0xffff494) # 1c005e80 <USART0GetByte>
1c0069f0:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c0069f4:	0280e80c 	addi.w	$r12,$r0,58(0x3a)
1c0069f8:	5fffedac 	bne	$r13,$r12,-20(0x3ffec) # 1c0069e4 <lora_set+0x2d8>
1c0069fc:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c006a00:	00150184 	move	$r4,$r12
1c006a04:	57f47fff 	bl	-2948(0xffff47c) # 1c005e80 <USART0GetByte>
1c006a08:	0015008c 	move	$r12,$r4
1c006a0c:	0015018d 	move	$r13,$r12
1c006a10:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006a14:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006a48 <lora_set+0x33c>
1c006a18:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006a1c:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006a20:	580029ac 	beq	$r13,$r12,40(0x28) # 1c006a48 <lora_set+0x33c>
1c006a24:	2a3f3ece 	ld.bu	$r14,$r22,-49(0xfcf)
1c006a28:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006a2c:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c006a30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006a34:	00005dcc 	ext.w.b	$r12,$r14
1c006a38:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006a3c:	001035cd 	add.w	$r13,$r14,$r13
1c006a40:	293f81ac 	st.b	$r12,$r13,-32(0xfe0)
1c006a44:	50001400 	b	20(0x14) # 1c006a58 <lora_set+0x34c>
1c006a48:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006a4c:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006a50:	5fffadac 	bne	$r13,$r12,-84(0x3ffac) # 1c0069fc <lora_set+0x2f0>
1c006a54:	50000800 	b	8(0x8) # 1c006a5c <lora_set+0x350>
1c006a58:	53ffa7ff 	b	-92(0xfffffa4) # 1c0069fc <lora_set+0x2f0>
1c006a5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006a60:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c006a64:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006a68:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006a6c:	001031ac 	add.w	$r12,$r13,$r12
1c006a70:	283f818c 	ld.b	$r12,$r12,-32(0xfe0)
1c006a74:	00150185 	move	$r5,$r12
1c006a78:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006a7c:	029f3084 	addi.w	$r4,$r4,1996(0x7cc)
1c006a80:	57b3d7ff 	bl	-19500(0xfffb3d4) # 1c001e54 <myprintf>
1c006a84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006a88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006a8c:	580009ac 	beq	$r13,$r12,8(0x8) # 1c006a94 <lora_set+0x388>
1c006a90:	53ffcfff 	b	-52(0xfffffcc) # 1c006a5c <lora_set+0x350>
1c006a94:	03400000 	andi	$r0,$r0,0x0
1c006a98:	03400000 	andi	$r0,$r0,0x0
1c006a9c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006aa0:	029eb084 	addi.w	$r4,$r4,1964(0x7ac)
1c006aa4:	57b3b3ff 	bl	-19536(0xfffb3b0) # 1c001e54 <myprintf>
1c006aa8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006aac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006ab0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006ab4:	50002800 	b	40(0x28) # 1c006adc <lora_set+0x3d0>
1c006ab8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006abc:	02a06084 	addi.w	$r4,$r4,-2024(0x818)
1c006ac0:	57f4b3ff 	bl	-2896(0xffff4b0) # 1c005f70 <USART0TX>
1c006ac4:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c006ac8:	00150184 	move	$r4,$r12
1c006acc:	57f417ff 	bl	-3052(0xffff414) # 1c005ee0 <USART0Test>
1c006ad0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006ad4:	02a03084 	addi.w	$r4,$r4,-2036(0x80c)
1c006ad8:	57b37fff 	bl	-19588(0xfffb37c) # 1c001e54 <myprintf>
1c006adc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006ae0:	43ffd99f 	beqz	$r12,-40(0x7fffd8) # 1c006ab8 <lora_set+0x3ac>
1c006ae4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006ae8:	02a04084 	addi.w	$r4,$r4,-2032(0x810)
1c006aec:	57b36bff 	bl	-19608(0xfffb368) # 1c001e54 <myprintf>
1c006af0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006af4:	02a05084 	addi.w	$r4,$r4,-2028(0x814)
1c006af8:	57f47bff 	bl	-2952(0xffff478) # 1c005f70 <USART0TX>
1c006afc:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c006b00:	00150184 	move	$r4,$r12
1c006b04:	57f37fff 	bl	-3204(0xffff37c) # 1c005e80 <USART0GetByte>
1c006b08:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006b0c:	0280e80c 	addi.w	$r12,$r0,58(0x3a)
1c006b10:	5fffedac 	bne	$r13,$r12,-20(0x3ffec) # 1c006afc <lora_set+0x3f0>
1c006b14:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c006b18:	00150184 	move	$r4,$r12
1c006b1c:	57f367ff 	bl	-3228(0xffff364) # 1c005e80 <USART0GetByte>
1c006b20:	0015008c 	move	$r12,$r4
1c006b24:	0015018d 	move	$r13,$r12
1c006b28:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006b2c:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006b60 <lora_set+0x454>
1c006b30:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006b34:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006b38:	580029ac 	beq	$r13,$r12,40(0x28) # 1c006b60 <lora_set+0x454>
1c006b3c:	2a3f3ece 	ld.bu	$r14,$r22,-49(0xfcf)
1c006b40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006b44:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c006b48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006b4c:	00005dcc 	ext.w.b	$r12,$r14
1c006b50:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006b54:	001035cd 	add.w	$r13,$r14,$r13
1c006b58:	293f81ac 	st.b	$r12,$r13,-32(0xfe0)
1c006b5c:	50001400 	b	20(0x14) # 1c006b70 <lora_set+0x464>
1c006b60:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006b64:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006b68:	5fffadac 	bne	$r13,$r12,-84(0x3ffac) # 1c006b14 <lora_set+0x408>
1c006b6c:	50000800 	b	8(0x8) # 1c006b74 <lora_set+0x468>
1c006b70:	53ffa7ff 	b	-92(0xfffffa4) # 1c006b14 <lora_set+0x408>
1c006b74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006b78:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c006b7c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006b80:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006b84:	001031ac 	add.w	$r12,$r13,$r12
1c006b88:	283f818c 	ld.b	$r12,$r12,-32(0xfe0)
1c006b8c:	00150185 	move	$r5,$r12
1c006b90:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006b94:	029ad084 	addi.w	$r4,$r4,1716(0x6b4)
1c006b98:	57b2bfff 	bl	-19780(0xfffb2bc) # 1c001e54 <myprintf>
1c006b9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006ba0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ba4:	580009ac 	beq	$r13,$r12,8(0x8) # 1c006bac <lora_set+0x4a0>
1c006ba8:	53ffcfff 	b	-52(0xfffffcc) # 1c006b74 <lora_set+0x468>
1c006bac:	03400000 	andi	$r0,$r0,0x0
1c006bb0:	03400000 	andi	$r0,$r0,0x0
1c006bb4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006bb8:	029a5084 	addi.w	$r4,$r4,1684(0x694)
1c006bbc:	57b29bff 	bl	-19816(0xfffb298) # 1c001e54 <myprintf>
1c006bc0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006bc4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006bc8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006bcc:	50002800 	b	40(0x28) # 1c006bf4 <lora_set+0x4e8>
1c006bd0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006bd4:	029d0084 	addi.w	$r4,$r4,1856(0x740)
1c006bd8:	57f39bff 	bl	-3176(0xffff398) # 1c005f70 <USART0TX>
1c006bdc:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c006be0:	00150184 	move	$r4,$r12
1c006be4:	57f2ffff 	bl	-3332(0xffff2fc) # 1c005ee0 <USART0Test>
1c006be8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006bec:	029cd084 	addi.w	$r4,$r4,1844(0x734)
1c006bf0:	57b267ff 	bl	-19868(0xfffb264) # 1c001e54 <myprintf>
1c006bf4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006bf8:	43ffd99f 	beqz	$r12,-40(0x7fffd8) # 1c006bd0 <lora_set+0x4c4>
1c006bfc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006c00:	029ce084 	addi.w	$r4,$r4,1848(0x738)
1c006c04:	57b253ff 	bl	-19888(0xfffb250) # 1c001e54 <myprintf>
1c006c08:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006c0c:	029cf084 	addi.w	$r4,$r4,1852(0x73c)
1c006c10:	57f363ff 	bl	-3232(0xffff360) # 1c005f70 <USART0TX>
1c006c14:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c006c18:	00150184 	move	$r4,$r12
1c006c1c:	57f267ff 	bl	-3484(0xffff264) # 1c005e80 <USART0GetByte>
1c006c20:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006c24:	0280e80c 	addi.w	$r12,$r0,58(0x3a)
1c006c28:	5fffedac 	bne	$r13,$r12,-20(0x3ffec) # 1c006c14 <lora_set+0x508>
1c006c2c:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c006c30:	00150184 	move	$r4,$r12
1c006c34:	57f24fff 	bl	-3508(0xffff24c) # 1c005e80 <USART0GetByte>
1c006c38:	0015008c 	move	$r12,$r4
1c006c3c:	0015018d 	move	$r13,$r12
1c006c40:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006c44:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006c78 <lora_set+0x56c>
1c006c48:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006c4c:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006c50:	580029ac 	beq	$r13,$r12,40(0x28) # 1c006c78 <lora_set+0x56c>
1c006c54:	2a3f3ece 	ld.bu	$r14,$r22,-49(0xfcf)
1c006c58:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c5c:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c006c60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006c64:	00005dcc 	ext.w.b	$r12,$r14
1c006c68:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006c6c:	001035cd 	add.w	$r13,$r14,$r13
1c006c70:	293f81ac 	st.b	$r12,$r13,-32(0xfe0)
1c006c74:	50001400 	b	20(0x14) # 1c006c88 <lora_set+0x57c>
1c006c78:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006c7c:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006c80:	5fffadac 	bne	$r13,$r12,-84(0x3ffac) # 1c006c2c <lora_set+0x520>
1c006c84:	50000800 	b	8(0x8) # 1c006c8c <lora_set+0x580>
1c006c88:	53ffa7ff 	b	-92(0xfffffa4) # 1c006c2c <lora_set+0x520>
1c006c8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c90:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c006c94:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006c98:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006c9c:	001031ac 	add.w	$r12,$r13,$r12
1c006ca0:	283f818c 	ld.b	$r12,$r12,-32(0xfe0)
1c006ca4:	00150185 	move	$r5,$r12
1c006ca8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006cac:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c006cb0:	57b1a7ff 	bl	-20060(0xfffb1a4) # 1c001e54 <myprintf>
1c006cb4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006cbc:	580009ac 	beq	$r13,$r12,8(0x8) # 1c006cc4 <lora_set+0x5b8>
1c006cc0:	53ffcfff 	b	-52(0xfffffcc) # 1c006c8c <lora_set+0x580>
1c006cc4:	03400000 	andi	$r0,$r0,0x0
1c006cc8:	03400000 	andi	$r0,$r0,0x0
1c006ccc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006cd0:	0295f084 	addi.w	$r4,$r4,1404(0x57c)
1c006cd4:	57b183ff 	bl	-20096(0xfffb180) # 1c001e54 <myprintf>
1c006cd8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006cdc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006ce0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006ce4:	50002800 	b	40(0x28) # 1c006d0c <lora_set+0x600>
1c006ce8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006cec:	0299a084 	addi.w	$r4,$r4,1640(0x668)
1c006cf0:	57f283ff 	bl	-3456(0xffff280) # 1c005f70 <USART0TX>
1c006cf4:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c006cf8:	00150184 	move	$r4,$r12
1c006cfc:	57f1e7ff 	bl	-3612(0xffff1e4) # 1c005ee0 <USART0Test>
1c006d00:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006d04:	02997084 	addi.w	$r4,$r4,1628(0x65c)
1c006d08:	57b14fff 	bl	-20148(0xfffb14c) # 1c001e54 <myprintf>
1c006d0c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006d10:	43ffd99f 	beqz	$r12,-40(0x7fffd8) # 1c006ce8 <lora_set+0x5dc>
1c006d14:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006d18:	02998084 	addi.w	$r4,$r4,1632(0x660)
1c006d1c:	57b13bff 	bl	-20168(0xfffb138) # 1c001e54 <myprintf>
1c006d20:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006d24:	02999084 	addi.w	$r4,$r4,1636(0x664)
1c006d28:	57f24bff 	bl	-3512(0xffff248) # 1c005f70 <USART0TX>
1c006d2c:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c006d30:	00150184 	move	$r4,$r12
1c006d34:	57f14fff 	bl	-3764(0xffff14c) # 1c005e80 <USART0GetByte>
1c006d38:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006d3c:	0280e80c 	addi.w	$r12,$r0,58(0x3a)
1c006d40:	5fffedac 	bne	$r13,$r12,-20(0x3ffec) # 1c006d2c <lora_set+0x620>
1c006d44:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c006d48:	00150184 	move	$r4,$r12
1c006d4c:	57f137ff 	bl	-3788(0xffff134) # 1c005e80 <USART0GetByte>
1c006d50:	0015008c 	move	$r12,$r4
1c006d54:	0015018d 	move	$r13,$r12
1c006d58:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006d5c:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006d90 <lora_set+0x684>
1c006d60:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006d64:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006d68:	580029ac 	beq	$r13,$r12,40(0x28) # 1c006d90 <lora_set+0x684>
1c006d6c:	2a3f3ece 	ld.bu	$r14,$r22,-49(0xfcf)
1c006d70:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006d74:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c006d78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006d7c:	00005dcc 	ext.w.b	$r12,$r14
1c006d80:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006d84:	001035cd 	add.w	$r13,$r14,$r13
1c006d88:	293f81ac 	st.b	$r12,$r13,-32(0xfe0)
1c006d8c:	50001400 	b	20(0x14) # 1c006da0 <lora_set+0x694>
1c006d90:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006d94:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006d98:	5fffadac 	bne	$r13,$r12,-84(0x3ffac) # 1c006d44 <lora_set+0x638>
1c006d9c:	50000800 	b	8(0x8) # 1c006da4 <lora_set+0x698>
1c006da0:	53ffa7ff 	b	-92(0xfffffa4) # 1c006d44 <lora_set+0x638>
1c006da4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006da8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c006dac:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006db0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006db4:	001031ac 	add.w	$r12,$r13,$r12
1c006db8:	283f818c 	ld.b	$r12,$r12,-32(0xfe0)
1c006dbc:	00150185 	move	$r5,$r12
1c006dc0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006dc4:	02921084 	addi.w	$r4,$r4,1156(0x484)
1c006dc8:	57b08fff 	bl	-20340(0xfffb08c) # 1c001e54 <myprintf>
1c006dcc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006dd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006dd4:	580009ac 	beq	$r13,$r12,8(0x8) # 1c006ddc <lora_set+0x6d0>
1c006dd8:	53ffcfff 	b	-52(0xfffffcc) # 1c006da4 <lora_set+0x698>
1c006ddc:	03400000 	andi	$r0,$r0,0x0
1c006de0:	03400000 	andi	$r0,$r0,0x0
1c006de4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006de8:	02919084 	addi.w	$r4,$r4,1124(0x464)
1c006dec:	57b06bff 	bl	-20376(0xfffb068) # 1c001e54 <myprintf>
1c006df0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006df4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006df8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006dfc:	50002800 	b	40(0x28) # 1c006e24 <lora_set+0x718>
1c006e00:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006e04:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c006e08:	57f16bff 	bl	-3736(0xffff168) # 1c005f70 <USART0TX>
1c006e0c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c006e10:	00150184 	move	$r4,$r12
1c006e14:	57f0cfff 	bl	-3892(0xffff0cc) # 1c005ee0 <USART0Test>
1c006e18:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006e1c:	02961084 	addi.w	$r4,$r4,1412(0x584)
1c006e20:	57b037ff 	bl	-20428(0xfffb034) # 1c001e54 <myprintf>
1c006e24:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006e28:	43ffd99f 	beqz	$r12,-40(0x7fffd8) # 1c006e00 <lora_set+0x6f4>
1c006e2c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006e30:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c006e34:	57b023ff 	bl	-20448(0xfffb020) # 1c001e54 <myprintf>
1c006e38:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006e3c:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c006e40:	57f133ff 	bl	-3792(0xffff130) # 1c005f70 <USART0TX>
1c006e44:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c006e48:	00150184 	move	$r4,$r12
1c006e4c:	57f037ff 	bl	-4044(0xffff034) # 1c005e80 <USART0GetByte>
1c006e50:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006e54:	0280e80c 	addi.w	$r12,$r0,58(0x3a)
1c006e58:	5fffedac 	bne	$r13,$r12,-20(0x3ffec) # 1c006e44 <lora_set+0x738>
1c006e5c:	02bf3ecc 	addi.w	$r12,$r22,-49(0xfcf)
1c006e60:	00150184 	move	$r4,$r12
1c006e64:	57f01fff 	bl	-4068(0xffff01c) # 1c005e80 <USART0GetByte>
1c006e68:	0015008c 	move	$r12,$r4
1c006e6c:	0015018d 	move	$r13,$r12
1c006e70:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006e74:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c006ea8 <lora_set+0x79c>
1c006e78:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006e7c:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006e80:	580029ac 	beq	$r13,$r12,40(0x28) # 1c006ea8 <lora_set+0x79c>
1c006e84:	2a3f3ece 	ld.bu	$r14,$r22,-49(0xfcf)
1c006e88:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006e8c:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c006e90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006e94:	00005dcc 	ext.w.b	$r12,$r14
1c006e98:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006e9c:	001035cd 	add.w	$r13,$r14,$r13
1c006ea0:	293f81ac 	st.b	$r12,$r13,-32(0xfe0)
1c006ea4:	50001400 	b	20(0x14) # 1c006eb8 <lora_set+0x7ac>
1c006ea8:	2a3f3ecd 	ld.bu	$r13,$r22,-49(0xfcf)
1c006eac:	02813c0c 	addi.w	$r12,$r0,79(0x4f)
1c006eb0:	5fffadac 	bne	$r13,$r12,-84(0x3ffac) # 1c006e5c <lora_set+0x750>
1c006eb4:	50000800 	b	8(0x8) # 1c006ebc <lora_set+0x7b0>
1c006eb8:	53ffa7ff 	b	-92(0xfffffa4) # 1c006e5c <lora_set+0x750>
1c006ebc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ec0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c006ec4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006ec8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006ecc:	001031ac 	add.w	$r12,$r13,$r12
1c006ed0:	283f818c 	ld.b	$r12,$r12,-32(0xfe0)
1c006ed4:	00150185 	move	$r5,$r12
1c006ed8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006edc:	028db084 	addi.w	$r4,$r4,876(0x36c)
1c006ee0:	57af77ff 	bl	-20620(0xfffaf74) # 1c001e54 <myprintf>
1c006ee4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006ee8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006eec:	580009ac 	beq	$r13,$r12,8(0x8) # 1c006ef4 <lora_set+0x7e8>
1c006ef0:	53ffcfff 	b	-52(0xfffffcc) # 1c006ebc <lora_set+0x7b0>
1c006ef4:	03400000 	andi	$r0,$r0,0x0
1c006ef8:	03400000 	andi	$r0,$r0,0x0
1c006efc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006f00:	028d3084 	addi.w	$r4,$r4,844(0x34c)
1c006f04:	57af53ff 	bl	-20656(0xfffaf50) # 1c001e54 <myprintf>
1c006f08:	00150004 	move	$r4,$r0
1c006f0c:	57f6d7ff 	bl	-2348(0xffff6d4) # 1c0065e0 <MD0>
1c006f10:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006f14:	57ca2fff 	bl	-13780(0xfffca2c) # 1c003940 <delay_ms>
1c006f18:	57f717ff 	bl	-2284(0xffff714) # 1c00662c <AUX>
1c006f1c:	0015008c 	move	$r12,$r4
1c006f20:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c006f18 <lora_set+0x80c>
1c006f24:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006f28:	0292f084 	addi.w	$r4,$r4,1212(0x4bc)
1c006f2c:	57af2bff 	bl	-20696(0xfffaf28) # 1c001e54 <myprintf>
1c006f30:	03400000 	andi	$r0,$r0,0x0
1c006f34:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006f38:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006f3c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006f40:	4c000020 	jirl	$r0,$r1,0

1c006f44 <lora_transmit>:
lora_transmit():
1c006f44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006f48:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006f4c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006f50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006f54:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006f58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006f5c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006f60:	57bf83ff 	bl	-16512(0xfffbf80) # 1c002ee0 <Uart0_send>
1c006f64:	02819c04 	addi.w	$r4,$r0,103(0x67)
1c006f68:	57bf7bff 	bl	-16520(0xfffbf78) # 1c002ee0 <Uart0_send>
1c006f6c:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c006f70:	57bf73ff 	bl	-16528(0xfffbf70) # 1c002ee0 <Uart0_send>
1c006f74:	50002c00 	b	44(0x2c) # 1c006fa0 <lora_transmit+0x5c>
1c006f78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006f7c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006f80:	001031ac 	add.w	$r12,$r13,$r12
1c006f84:	2800018c 	ld.b	$r12,$r12,0
1c006f88:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006f8c:	00150184 	move	$r4,$r12
1c006f90:	57bf53ff 	bl	-16560(0xfffbf50) # 1c002ee0 <Uart0_send>
1c006f94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006f98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006f9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006fa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006fa4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006fa8:	001031ac 	add.w	$r12,$r13,$r12
1c006fac:	2800018c 	ld.b	$r12,$r12,0
1c006fb0:	47ffc99f 	bnez	$r12,-56(0x7fffc8) # 1c006f78 <lora_transmit+0x34>
1c006fb4:	03400000 	andi	$r0,$r0,0x0
1c006fb8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006fbc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006fc0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006fc4:	4c000020 	jirl	$r0,$r1,0

1c006fc8 <LORA_Init>:
LORA_Init():
1c006fc8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006fcc:	29803061 	st.w	$r1,$r3,12(0xc)
1c006fd0:	29802076 	st.w	$r22,$r3,8(0x8)
1c006fd4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006fd8:	57f5abff 	bl	-2648(0xffff5a8) # 1c006580 <MD0_Config>
1c006fdc:	57f5d7ff 	bl	-2604(0xffff5d4) # 1c0065b0 <AUX_Config>
1c006fe0:	57f697ff 	bl	-2412(0xffff694) # 1c006674 <lora_check>
1c006fe4:	57f72bff 	bl	-2264(0xffff728) # 1c00670c <lora_set>
1c006fe8:	03400000 	andi	$r0,$r0,0x0
1c006fec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006ff0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006ff4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006ff8:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c007000 <msg_wakeup>:
msg_wakeup():
1c007000:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01db60 <_sidata+0x15770>
1c007004:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c007009 <hexdecarr>:
hexdecarr():
1c007009:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00700d:	37363534 	0x37363534
1c007011:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfed149 <_start-0x12eb7>
1c007015:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed579 <_start-0x12a87>
1c007019:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00701d:	79654b0a 	0x79654b0a
1c007021:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c007025:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c007029:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c00702d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01e09d <_sidata+0x15cad>
1c007031:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffdf91 <_start-0x206f>
1c007035:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c007039:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffdf9d <_start-0x2063>
1c00703d:	72616220 	0x72616220
1c007041:	0a0d216b 	0x0a0d216b
1c007045:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007049:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffd1bd <_start-0x2e43>
1c00704d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c007051:	74000a0d 	xvseq.b	$xr13,$xr16,$xr2
1c007055:	901c0020 	0x901c0020
1c007059:	901c0021 	0x901c0021
1c00705d:	901c0021 	0x901c0021
1c007061:	901c0021 	0x901c0021
1c007065:	901c0021 	0x901c0021
1c007069:	901c0021 	0x901c0021
1c00706d:	901c0021 	0x901c0021
1c007071:	901c0021 	0x901c0021
1c007075:	901c0021 	0x901c0021
1c007079:	901c0021 	0x901c0021
1c00707d:	8c1c0021 	0x8c1c0021
1c007081:	141c0020 	lu12i.w	$r0,57345(0xe001)
1c007085:	141c0021 	lu12i.w	$r1,57345(0xe001)
1c007089:	141c0021 	lu12i.w	$r1,57345(0xe001)
1c00708d:	141c0021 	lu12i.w	$r1,57345(0xe001)
1c007091:	141c0021 	lu12i.w	$r1,57345(0xe001)
1c007095:	141c0021 	lu12i.w	$r1,57345(0xe001)
1c007099:	141c0021 	lu12i.w	$r1,57345(0xe001)
1c00709d:	141c0021 	lu12i.w	$r1,57345(0xe001)
1c0070a1:	141c0021 	lu12i.w	$r1,57345(0xe001)
1c0070a5:	901c0021 	0x901c0021
1c0070a9:	901c0021 	0x901c0021
1c0070ad:	901c0021 	0x901c0021
1c0070b1:	901c0021 	0x901c0021
1c0070b5:	901c0021 	0x901c0021
1c0070b9:	901c0021 	0x901c0021
1c0070bd:	901c0021 	0x901c0021
1c0070c1:	901c0021 	0x901c0021
1c0070c5:	901c0021 	0x901c0021
1c0070c9:	901c0021 	0x901c0021
1c0070cd:	901c0021 	0x901c0021
1c0070d1:	901c0021 	0x901c0021
1c0070d5:	901c0021 	0x901c0021
1c0070d9:	901c0021 	0x901c0021
1c0070dd:	901c0021 	0x901c0021
1c0070e1:	901c0021 	0x901c0021
1c0070e5:	901c0021 	0x901c0021
1c0070e9:	901c0021 	0x901c0021
1c0070ed:	901c0021 	0x901c0021
1c0070f1:	901c0021 	0x901c0021
1c0070f5:	901c0021 	0x901c0021
1c0070f9:	901c0021 	0x901c0021
1c0070fd:	901c0021 	0x901c0021
1c007101:	901c0021 	0x901c0021
1c007105:	901c0021 	0x901c0021
1c007109:	901c0021 	0x901c0021
1c00710d:	901c0021 	0x901c0021
1c007111:	901c0021 	0x901c0021
1c007115:	901c0021 	0x901c0021
1c007119:	901c0021 	0x901c0021
1c00711d:	901c0021 	0x901c0021
1c007121:	901c0021 	0x901c0021
1c007125:	901c0021 	0x901c0021
1c007129:	901c0021 	0x901c0021
1c00712d:	901c0021 	0x901c0021
1c007131:	901c0021 	0x901c0021
1c007135:	901c0021 	0x901c0021
1c007139:	901c0021 	0x901c0021
1c00713d:	901c0021 	0x901c0021
1c007141:	901c0021 	0x901c0021
1c007145:	041c0021 	csrwr	$r1,0x700
1c007149:	2c1c0020 	vld	$vr0,$r1,1792(0x700)
1c00714d:	941c001f 	0x941c001f
1c007151:	901c001f 	0x901c001f
1c007155:	901c0021 	0x901c0021
1c007159:	901c0021 	0x901c0021
1c00715d:	901c0021 	0x901c0021
1c007161:	901c0021 	0x901c0021
1c007165:	901c0021 	0x901c0021
1c007169:	901c0021 	0x901c0021
1c00716d:	901c0021 	0x901c0021
1c007171:	901c0021 	0x901c0021
1c007175:	901c0021 	0x901c0021
1c007179:	cc1c0021 	0xcc1c0021
1c00717d:	3c1c001f 	0x3c1c001f
1c007181:	901c0020 	0x901c0020
1c007185:	901c0021 	0x901c0021
1c007189:	001c0021 	mul.w	$r1,$r1,$r0
1c00718d:	901c001f 	0x901c001f
1c007191:	5c1c0021 	bne	$r1,$r1,7168(0x1c00) # 1c008d91 <_sidata+0x9a1>
1c007195:	901c001f 	0x901c001f
1c007199:	901c0021 	0x901c0021
1c00719d:	3c1c0021 	0x3c1c0021
1c0071a1:	281c0020 	ld.b	$r0,$r1,1792(0x700)
1c0071a5:	4c1c0026 	jirl	$r6,$r1,7168(0x1c00)
1c0071a9:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0071ad:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0071b1:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0071b5:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0071b9:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0071bd:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0071c1:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0071c5:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0071c9:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0071cd:	481c0027 	bceqz	$fcc1,1842176(0x1c1c00) # 1c1c8dcd <_sidata+0x1c09dd>
1c0071d1:	d01c0026 	0xd01c0026
1c0071d5:	d01c0026 	0xd01c0026
1c0071d9:	d01c0026 	0xd01c0026
1c0071dd:	d01c0026 	0xd01c0026
1c0071e1:	d01c0026 	0xd01c0026
1c0071e5:	d01c0026 	0xd01c0026
1c0071e9:	d01c0026 	0xd01c0026
1c0071ed:	d01c0026 	0xd01c0026
1c0071f1:	d01c0026 	0xd01c0026
1c0071f5:	4c1c0026 	jirl	$r6,$r1,7168(0x1c00)
1c0071f9:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0071fd:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007201:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007205:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007209:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c00720d:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007211:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007215:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007219:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c00721d:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007221:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007225:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007229:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c00722d:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007231:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007235:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007239:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c00723d:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007241:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007245:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007249:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c00724d:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007251:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007255:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007259:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c00725d:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007261:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007265:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007269:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c00726d:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007271:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007275:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007279:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c00727d:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007281:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007285:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007289:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c00728d:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007291:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c007295:	b01c0027 	0xb01c0027
1c007299:	c81c0025 	0xc81c0025
1c00729d:	381c0024 	stx.d	$r4,$r1,$r0
1c0072a1:	4c1c0025 	jirl	$r5,$r1,7168(0x1c00)
1c0072a5:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072a9:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072ad:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072b1:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072b5:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072b9:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072bd:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072c1:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072c5:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072c9:	741c0027 	0x741c0027
1c0072cd:	ec1c0025 	0xec1c0025
1c0072d1:	4c1c0025 	jirl	$r5,$r1,7168(0x1c00)
1c0072d5:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072d9:	981c0027 	0x981c0027
1c0072dd:	4c1c0024 	jirl	$r4,$r1,7168(0x1c00)
1c0072e1:	fc1c0027 	0xfc1c0027
1c0072e5:	4c1c0024 	jirl	$r4,$r1,7168(0x1c00)
1c0072e9:	4c1c0027 	jirl	$r7,$r1,7168(0x1c00)
1c0072ed:	ec1c0027 	0xec1c0027
1c0072f1:	0a1c0025 	xvfmadd.s	$xr5,$xr1,$xr0,$xr24
1c0072f5:	7c000000 	0x7c000000
1c0072f9:	7c7c7c7c 	0x7c7c7c7c
1c0072fd:	7c7c7c7c 	0x7c7c7c7c
1c007301:	7c7c7c7c 	0x7c7c7c7c
1c007305:	7c7c7c7c 	0x7c7c7c7c
1c007309:	7c7c7c7c 	0x7c7c7c7c
1c00730d:	7c7c7c7c 	0x7c7c7c7c
1c007311:	7c7c7c7c 	0x7c7c7c7c
1c007315:	7c7c7c7c 	0x7c7c7c7c
1c007319:	7c7c7c7c 	0x7c7c7c7c
1c00731d:	7c7c7c7c 	0x7c7c7c7c
1c007321:	7c7c7c7c 	0x7c7c7c7c
1c007325:	7c7c7c7c 	0x7c7c7c7c
1c007329:	7c7c7c7c 	0x7c7c7c7c
1c00732d:	7c7c7c7c 	0x7c7c7c7c
1c007331:	7c7c7c7c 	0x7c7c7c7c
1c007335:	7c7c7c7c 	0x7c7c7c7c
1c007339:	7c7c7c7c 	0x7c7c7c7c
1c00733d:	7c7c7c7c 	0x7c7c7c7c
1c007341:	7c7c7c7c 	0x7c7c7c7c
1c007345:	7c7c7c7c 	0x7c7c7c7c
1c007349:	7c7c7c7c 	0x7c7c7c7c
1c00734d:	7c7c7c7c 	0x7c7c7c7c
1c007351:	7c7c7c7c 	0x7c7c7c7c
1c007355:	7c7c7c7c 	0x7c7c7c7c
1c007359:	7c00000a 	0x7c00000a
1c00735d:	7c20207c 	0x7c20207c
1c007361:	7c7c7c7c 	0x7c7c7c7c
1c007365:	7c7c7c7c 	0x7c7c7c7c
1c007369:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00736d:	7c202020 	0x7c202020
1c007371:	7c7c7c7c 	0x7c7c7c7c
1c007375:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007379:	7c202020 	0x7c202020
1c00737d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007381:	7c7c2020 	0x7c7c2020
1c007385:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007389:	7c7c7c20 	0x7c7c7c20
1c00738d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007391:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007395:	7c7c7c7c 	0x7c7c7c7c
1c007399:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00739d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073a1:	7c7c7c7c 	0x7c7c7c7c
1c0073a5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0073a9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073ad:	7c7c7c7c 	0x7c7c7c7c
1c0073b1:	7c202020 	0x7c202020
1c0073b5:	7c7c7c7c 	0x7c7c7c7c
1c0073b9:	7c7c2020 	0x7c7c2020
1c0073bd:	7c00000a 	0x7c00000a
1c0073c1:	7c20207c 	0x7c20207c
1c0073c5:	7c7c7c7c 	0x7c7c7c7c
1c0073c9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073cd:	7c7c2020 	0x7c7c2020
1c0073d1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0073d5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073d9:	7c7c2020 	0x7c7c2020
1c0073dd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0073e1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073e5:	7c202020 	0x7c202020
1c0073e9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073ed:	7c7c7c20 	0x7c7c7c20
1c0073f1:	7c20207c 	0x7c20207c
1c0073f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073f9:	7c7c7c20 	0x7c7c7c20
1c0073fd:	7c202020 	0x7c202020
1c007401:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007405:	7c7c7c20 	0x7c7c7c20
1c007409:	7c202020 	0x7c202020
1c00740d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007411:	7c7c7c20 	0x7c7c7c20
1c007415:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007419:	7c7c7c7c 	0x7c7c7c7c
1c00741d:	7c7c2020 	0x7c7c2020
1c007421:	7c00000a 	0x7c00000a
1c007425:	7c20207c 	0x7c20207c
1c007429:	7c7c7c7c 	0x7c7c7c7c
1c00742d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007431:	7c7c7c20 	0x7c7c7c20
1c007435:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007439:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00743d:	7c7c7c20 	0x7c7c7c20
1c007441:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007445:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007449:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00744d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007451:	7c7c7c20 	0x7c7c7c20
1c007455:	7c7c2020 	0x7c7c2020
1c007459:	7c7c7c7c 	0x7c7c7c7c
1c00745d:	7c7c7c7c 	0x7c7c7c7c
1c007461:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007465:	7c7c7c20 	0x7c7c7c20
1c007469:	7c7c7c7c 	0x7c7c7c7c
1c00746d:	7c7c2020 	0x7c7c2020
1c007471:	7c7c7c7c 	0x7c7c7c7c
1c007475:	7c7c7c20 	0x7c7c7c20
1c007479:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00747d:	7c7c7c20 	0x7c7c7c20
1c007481:	7c7c2020 	0x7c7c2020
1c007485:	7c00000a 	0x7c00000a
1c007489:	7c20207c 	0x7c20207c
1c00748d:	7c7c7c7c 	0x7c7c7c7c
1c007491:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007495:	7c7c7c20 	0x7c7c7c20
1c007499:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00749d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074a1:	7c7c7c20 	0x7c7c7c20
1c0074a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074a9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074ad:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c0074b1:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c0074b5:	7c7c7c20 	0x7c7c7c20
1c0074b9:	7c7c2020 	0x7c7c2020
1c0074bd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0074c1:	7c7c7c20 	0x7c7c7c20
1c0074c5:	7c7c7c7c 	0x7c7c7c7c
1c0074c9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0074cd:	7c7c7c7c 	0x7c7c7c7c
1c0074d1:	7c7c2020 	0x7c7c2020
1c0074d5:	7c7c7c7c 	0x7c7c7c7c
1c0074d9:	7c7c7c20 	0x7c7c7c20
1c0074dd:	7c7c2020 	0x7c7c2020
1c0074e1:	7c7c2020 	0x7c7c2020
1c0074e5:	7c7c2020 	0x7c7c2020
1c0074e9:	7c00000a 	0x7c00000a
1c0074ed:	7c20207c 	0x7c20207c
1c0074f1:	7c7c7c7c 	0x7c7c7c7c
1c0074f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074f9:	7c7c7c20 	0x7c7c7c20
1c0074fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007501:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007505:	7c7c7c20 	0x7c7c7c20
1c007509:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00750d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007511:	7c7c7c20 	0x7c7c7c20
1c007515:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c007519:	7c7c7c20 	0x7c7c7c20
1c00751d:	7c7c2020 	0x7c7c2020
1c007521:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007525:	7c7c7c20 	0x7c7c7c20
1c007529:	7c7c7c7c 	0x7c7c7c7c
1c00752d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007531:	7c7c7c20 	0x7c7c7c20
1c007535:	7c7c2020 	0x7c7c2020
1c007539:	7c7c7c7c 	0x7c7c7c7c
1c00753d:	7c7c7c20 	0x7c7c7c20
1c007541:	7c7c2020 	0x7c7c2020
1c007545:	7c20207c 	0x7c20207c
1c007549:	7c7c2020 	0x7c7c2020
1c00754d:	7c00000a 	0x7c00000a
1c007551:	7c20207c 	0x7c20207c
1c007555:	7c7c7c7c 	0x7c7c7c7c
1c007559:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00755d:	7c7c2020 	0x7c7c2020
1c007561:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007565:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007569:	7c7c2020 	0x7c7c2020
1c00756d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007571:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007575:	7c7c7c20 	0x7c7c7c20
1c007579:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00757d:	7c7c7c20 	0x7c7c7c20
1c007581:	7c202020 	0x7c202020
1c007585:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007589:	7c7c7c20 	0x7c7c7c20
1c00758d:	7c202020 	0x7c202020
1c007591:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007595:	7c7c7c7c 	0x7c7c7c7c
1c007599:	7c202020 	0x7c202020
1c00759d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075a1:	7c7c7c20 	0x7c7c7c20
1c0075a5:	7c7c2020 	0x7c7c2020
1c0075a9:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0075ad:	7c7c2020 	0x7c7c2020
1c0075b1:	7c00000a 	0x7c00000a
1c0075b5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0075b9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0075bd:	7c7c7c7c 	0x7c7c7c7c
1c0075c1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0075c5:	7c202020 	0x7c202020
1c0075c9:	7c7c7c7c 	0x7c7c7c7c
1c0075cd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0075d1:	7c202020 	0x7c202020
1c0075d5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075d9:	7c7c7c20 	0x7c7c7c20
1c0075dd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0075e1:	7c7c7c20 	0x7c7c7c20
1c0075e5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0075e9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0075ed:	7c7c7c7c 	0x7c7c7c7c
1c0075f1:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0075f5:	7c202020 	0x7c202020
1c0075f9:	7c7c7c7c 	0x7c7c7c7c
1c0075fd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007601:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007605:	7c7c7c7c 	0x7c7c7c7c
1c007609:	7c7c2020 	0x7c7c2020
1c00760d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007611:	7c7c2020 	0x7c7c2020
1c007615:	7c00000a 	0x7c00000a
1c007619:	7c7c7c7c 	0x7c7c7c7c
1c00761d:	7c7c7c7c 	0x7c7c7c7c
1c007621:	7c7c7c7c 	0x7c7c7c7c
1c007625:	7c7c7c7c 	0x7c7c7c7c
1c007629:	7c7c7c7c 	0x7c7c7c7c
1c00762d:	7c7c7c7c 	0x7c7c7c7c
1c007631:	7c7c7c7c 	0x7c7c7c7c
1c007635:	7c7c7c7c 	0x7c7c7c7c
1c007639:	7c7c7c7c 	0x7c7c7c7c
1c00763d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c007641:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c007645:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c007649:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00764d:	7c7c7c5d 	0x7c7c7c5d
1c007651:	7c7c7c7c 	0x7c7c7c7c
1c007655:	7c7c7c7c 	0x7c7c7c7c
1c007659:	7c7c7c7c 	0x7c7c7c7c
1c00765d:	7c7c7c7c 	0x7c7c7c7c
1c007661:	7c7c7c7c 	0x7c7c7c7c
1c007665:	7c7c7c7c 	0x7c7c7c7c
1c007669:	7c7c7c7c 	0x7c7c7c7c
1c00766d:	7c7c7c7c 	0x7c7c7c7c
1c007671:	7c7c7c7c 	0x7c7c7c7c
1c007675:	7c7c7c7c 	0x7c7c7c7c
1c007679:	0900000a 	0x0900000a
1c00767d:	0a006425 	0x0a006425
1c007681:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007685:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c007689:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00768d:	0050550a 	0x0050550a
1c007691:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007695:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00ebe1 <_sidata+0x67f1>
1c007699:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00769d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0076a1:	756f430a 	0x756f430a
1c0076a5:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c0076a9:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c0076ad:	3030090a 	0x3030090a
1c0076b1:	09313009 	0x09313009
1c0076b5:	30093230 	0x30093230
1c0076b9:	34300933 	0x34300933
1c0076bd:	09353009 	0x09353009
1c0076c1:	30093630 	0x30093630
1c0076c5:	38300937 	fldx.s	$f23,$r9,$r2
1c0076c9:	09393009 	0x09393009
1c0076cd:	31093031 	0x31093031
1c0076d1:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c0076d5:	746e630a 	0x746e630a
1c0076d9:	09000000 	0x09000000
1c0076dd:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c0076e1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0076e5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c0076e9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d83d <_sidata+0x544d>
1c0076ed:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0076f1:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeec41 <_start-0x113bf>
1c0076f5:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c0076f9:	09000000 	0x09000000
1c0076fd:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c007701:	09000000 	0x09000000
1c007705:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c007709:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00770d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c007711:	3a515249 	0x3a515249
1c007715:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c007719:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe58d <_start-0x1a73>
1c00771d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c007721:	0d3e2020 	0x0d3e2020
1c007725:	0a00000a 	0x0a00000a
1c007729:	2e2e2e2e 	0x2e2e2e2e
1c00772d:	2e2e2e2e 	0x2e2e2e2e
1c007731:	2e2e2e2e 	0x2e2e2e2e
1c007735:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac685 <_sidata+0x3a4295>
1c007739:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00773d:	2e2e2e54 	0x2e2e2e54
1c007741:	2e2e2e2e 	0x2e2e2e2e
1c007745:	2e2e2e2e 	0x2e2e2e2e
1c007749:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00774d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c007751:	2e2e2e0a 	0x2e2e2e0a
1c007755:	2e2e2e2e 	0x2e2e2e2e
1c007759:	2e2e2e2e 	0x2e2e2e2e
1c00775d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39b989 <_sidata+0x393599>
1c007761:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1bdbd <_start-0x2e4243>
1c007765:	2e2e4c49 	0x2e2e4c49
1c007769:	2e2e2e2e 	0x2e2e2e2e
1c00776d:	2e2e2e2e 	0x2e2e2e2e
1c007771:	2e2e2e2e 	0x2e2e2e2e
1c007775:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c007779:	2e2e2e0a 	0x2e2e2e0a
1c00777d:	2e2e2e2e 	0x2e2e2e2e
1c007781:	2e2e2e2e 	0x2e2e2e2e
1c007785:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b8b1 <_sidata+0x3834c1>
1c007789:	2e2e2e43 	0x2e2e2e43
1c00778d:	2e2e2e2e 	0x2e2e2e2e
1c007791:	2e2e2e2e 	0x2e2e2e2e
1c007795:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c007799:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b7799 <_sidata+0x2af3a9>
1c00779d:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c0077a1:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e509 <_sidata+0x16119>
1c0077a5:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00dac5 <_sidata+0x56d5>
1c0077a9:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0077ad:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01ec19 <_sidata+0x16829>
1c0077b1:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c0077b5:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c0077b9:	 	vseq.b	$vr10,$vr0,$vr0

1c0077bc <Ext_IrqHandle>:
1c0077bc:	1c004170 	pcaddu12i	$r16,523(0x20b)
1c0077c0:	1c0041bc 	pcaddu12i	$r28,525(0x20d)
1c0077c4:	1c004208 	pcaddu12i	$r8,528(0x210)
1c0077c8:	1c004254 	pcaddu12i	$r20,530(0x212)
1c0077cc:	1c0042a0 	pcaddu12i	$r0,533(0x215)
1c0077d0:	1c0042ec 	pcaddu12i	$r12,535(0x217)
1c0077d4:	1c004338 	pcaddu12i	$r24,537(0x219)
1c0077d8:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c0077dc:	1c0043d0 	pcaddu12i	$r16,542(0x21e)
1c0077e0:	1c00441c 	pcaddu12i	$r28,544(0x220)
1c0077e4:	1c004468 	pcaddu12i	$r8,547(0x223)
1c0077e8:	1c0044b4 	pcaddu12i	$r20,549(0x225)
1c0077ec:	1c004500 	pcaddu12i	$r0,552(0x228)
1c0077f0:	1c00454c 	pcaddu12i	$r12,554(0x22a)
1c0077f4:	1c004598 	pcaddu12i	$r24,556(0x22c)
1c0077f8:	1c0045e4 	pcaddu12i	$r4,559(0x22f)
1c0077fc:	1c004630 	pcaddu12i	$r16,561(0x231)
1c007800:	1c00467c 	pcaddu12i	$r28,563(0x233)
1c007804:	1c0046c8 	pcaddu12i	$r8,566(0x236)
1c007808:	1c004714 	pcaddu12i	$r20,568(0x238)
1c00780c:	1c004760 	pcaddu12i	$r0,571(0x23b)
1c007810:	1c0047ac 	pcaddu12i	$r12,573(0x23d)
1c007814:	1c0047f8 	pcaddu12i	$r24,575(0x23f)
1c007818:	1c004844 	pcaddu12i	$r4,578(0x242)
1c00781c:	1c004890 	pcaddu12i	$r16,580(0x244)
1c007820:	1c0048dc 	pcaddu12i	$r28,582(0x246)
1c007824:	1c004928 	pcaddu12i	$r8,585(0x249)
1c007828:	1c004974 	pcaddu12i	$r20,587(0x24b)
1c00782c:	1c0049c0 	pcaddu12i	$r0,590(0x24e)
1c007830:	1c004a0c 	pcaddu12i	$r12,592(0x250)
1c007834:	1c004a58 	pcaddu12i	$r24,594(0x252)
1c007838:	1c004aa4 	pcaddu12i	$r4,597(0x255)
1c00783c:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007840:	1c004d38 	pcaddu12i	$r24,617(0x269)
1c007844:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007848:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c00784c:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007850:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007854:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007858:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c00785c:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007860:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007864:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007868:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c00786c:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007870:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007874:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c007878:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c00787c:	1c004d54 	pcaddu12i	$r20,618(0x26a)

1c007880 <__FUNCTION__.1657>:
1c007880:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ecf8 <_sidata+0x16908>
1c007884:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e8e8 <_sidata+0x164f8>
1c007888:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa8e8 <_start-0x5718>
1c00788c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe9fc <_start-0x1604>
1c007890:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e6f0 <_sidata+0x6300>
1c007894:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007898 <__FUNCTION__.1661>:
1c007898:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed10 <_sidata+0x16920>
1c00789c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e900 <_sidata+0x16510>
1c0078a0:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffaa00 <_start-0x5600>
1c0078a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea14 <_start-0x15ec>
1c0078a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e708 <_sidata+0x6318>
1c0078ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078b0 <__FUNCTION__.1665>:
1c0078b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed28 <_sidata+0x16938>
1c0078b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e918 <_sidata+0x16528>
1c0078b8:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffab18 <_start-0x54e8>
1c0078bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea2c <_start-0x15d4>
1c0078c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e720 <_sidata+0x6330>
1c0078c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078c8 <__FUNCTION__.1669>:
1c0078c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed40 <_sidata+0x16950>
1c0078cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e930 <_sidata+0x16540>
1c0078d0:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffac30 <_start-0x53d0>
1c0078d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea44 <_start-0x15bc>
1c0078d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e738 <_sidata+0x6348>
1c0078dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078e0 <__FUNCTION__.1673>:
1c0078e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed58 <_sidata+0x16968>
1c0078e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e948 <_sidata+0x16558>
1c0078e8:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffad48 <_start-0x52b8>
1c0078ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea5c <_start-0x15a4>
1c0078f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e750 <_sidata+0x6360>
1c0078f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078f8 <__FUNCTION__.1677>:
1c0078f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed70 <_sidata+0x16980>
1c0078fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e960 <_sidata+0x16570>
1c007900:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffae60 <_start-0x51a0>
1c007904:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea74 <_start-0x158c>
1c007908:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e768 <_sidata+0x6378>
1c00790c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007910 <__FUNCTION__.1681>:
1c007910:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed88 <_sidata+0x16998>
1c007914:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e978 <_sidata+0x16588>
1c007918:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffaf78 <_start-0x5088>
1c00791c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea8c <_start-0x1574>
1c007920:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e780 <_sidata+0x6390>
1c007924:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007928 <__FUNCTION__.1685>:
1c007928:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eda0 <_sidata+0x169b0>
1c00792c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e990 <_sidata+0x165a0>
1c007930:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffb090 <_start-0x4f70>
1c007934:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaa4 <_start-0x155c>
1c007938:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e798 <_sidata+0x63a8>
1c00793c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007940 <__FUNCTION__.1689>:
1c007940:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edb8 <_sidata+0x169c8>
1c007944:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9a8 <_sidata+0x165b8>
1c007948:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffa9a8 <_start-0x5658>
1c00794c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeabc <_start-0x1544>
1c007950:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7b0 <_sidata+0x63c0>
1c007954:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007958 <__FUNCTION__.1693>:
1c007958:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edd0 <_sidata+0x169e0>
1c00795c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9c0 <_sidata+0x165d0>
1c007960:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffaac0 <_start-0x5540>
1c007964:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffead4 <_start-0x152c>
1c007968:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7c8 <_sidata+0x63d8>
1c00796c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007970 <__FUNCTION__.1697>:
1c007970:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ede8 <_sidata+0x169f8>
1c007974:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9d8 <_sidata+0x165e8>
1c007978:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffabd8 <_start-0x5428>
1c00797c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaec <_start-0x1514>
1c007980:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7e0 <_sidata+0x63f0>
1c007984:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007988 <__FUNCTION__.1701>:
1c007988:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee00 <_sidata+0x16a10>
1c00798c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9f0 <_sidata+0x16600>
1c007990:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffacf0 <_start-0x5310>
1c007994:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb04 <_start-0x14fc>
1c007998:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7f8 <_sidata+0x6408>
1c00799c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079a0 <__FUNCTION__.1705>:
1c0079a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee18 <_sidata+0x16a28>
1c0079a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea08 <_sidata+0x16618>
1c0079a8:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffae08 <_start-0x51f8>
1c0079ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb1c <_start-0x14e4>
1c0079b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e810 <_sidata+0x6420>
1c0079b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079b8 <__FUNCTION__.1709>:
1c0079b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee30 <_sidata+0x16a40>
1c0079bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea20 <_sidata+0x16630>
1c0079c0:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffaf20 <_start-0x50e0>
1c0079c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb34 <_start-0x14cc>
1c0079c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e828 <_sidata+0x6438>
1c0079cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079d0 <__FUNCTION__.1713>:
1c0079d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee48 <_sidata+0x16a58>
1c0079d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea38 <_sidata+0x16648>
1c0079d8:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffb038 <_start-0x4fc8>
1c0079dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb4c <_start-0x14b4>
1c0079e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e840 <_sidata+0x6450>
1c0079e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079e8 <__FUNCTION__.1717>:
1c0079e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee60 <_sidata+0x16a70>
1c0079ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea50 <_sidata+0x16660>
1c0079f0:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffb150 <_start-0x4eb0>
1c0079f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb64 <_start-0x149c>
1c0079f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e858 <_sidata+0x6468>
1c0079fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a00 <__FUNCTION__.1721>:
1c007a00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee78 <_sidata+0x16a88>
1c007a04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea68 <_sidata+0x16678>
1c007a08:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffaa68 <_start-0x5598>
1c007a0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb7c <_start-0x1484>
1c007a10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e870 <_sidata+0x6480>
1c007a14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a18 <__FUNCTION__.1725>:
1c007a18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee90 <_sidata+0x16aa0>
1c007a1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea80 <_sidata+0x16690>
1c007a20:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffab80 <_start-0x5480>
1c007a24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb94 <_start-0x146c>
1c007a28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e888 <_sidata+0x6498>
1c007a2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a30 <__FUNCTION__.1729>:
1c007a30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eea8 <_sidata+0x16ab8>
1c007a34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea98 <_sidata+0x166a8>
1c007a38:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffac98 <_start-0x5368>
1c007a3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebac <_start-0x1454>
1c007a40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8a0 <_sidata+0x64b0>
1c007a44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a48 <__FUNCTION__.1733>:
1c007a48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eec0 <_sidata+0x16ad0>
1c007a4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eab0 <_sidata+0x166c0>
1c007a50:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffadb0 <_start-0x5250>
1c007a54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebc4 <_start-0x143c>
1c007a58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8b8 <_sidata+0x64c8>
1c007a5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a60 <__FUNCTION__.1737>:
1c007a60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eed8 <_sidata+0x16ae8>
1c007a64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eac8 <_sidata+0x166d8>
1c007a68:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffaec8 <_start-0x5138>
1c007a6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebdc <_start-0x1424>
1c007a70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8d0 <_sidata+0x64e0>
1c007a74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a78 <__FUNCTION__.1741>:
1c007a78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eef0 <_sidata+0x16b00>
1c007a7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eae0 <_sidata+0x166f0>
1c007a80:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffafe0 <_start-0x5020>
1c007a84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebf4 <_start-0x140c>
1c007a88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8e8 <_sidata+0x64f8>
1c007a8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a90 <__FUNCTION__.1745>:
1c007a90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef08 <_sidata+0x16b18>
1c007a94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eaf8 <_sidata+0x16708>
1c007a98:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffb0f8 <_start-0x4f08>
1c007a9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec0c <_start-0x13f4>
1c007aa0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e900 <_sidata+0x6510>
1c007aa4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007aa8 <__FUNCTION__.1749>:
1c007aa8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef20 <_sidata+0x16b30>
1c007aac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb10 <_sidata+0x16720>
1c007ab0:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffb210 <_start-0x4df0>
1c007ab4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec24 <_start-0x13dc>
1c007ab8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e918 <_sidata+0x6528>
1c007abc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ac0 <__FUNCTION__.1753>:
1c007ac0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef38 <_sidata+0x16b48>
1c007ac4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb28 <_sidata+0x16738>
1c007ac8:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffab2c <_start-0x54d4>
1c007acc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec3c <_start-0x13c4>
1c007ad0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e930 <_sidata+0x6540>
1c007ad4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ad8 <__FUNCTION__.1757>:
1c007ad8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef50 <_sidata+0x16b60>
1c007adc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb40 <_sidata+0x16750>
1c007ae0:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffac44 <_start-0x53bc>
1c007ae4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec54 <_start-0x13ac>
1c007ae8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e948 <_sidata+0x6558>
1c007aec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007af0 <__FUNCTION__.1761>:
1c007af0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef68 <_sidata+0x16b78>
1c007af4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb58 <_sidata+0x16768>
1c007af8:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffad5c <_start-0x52a4>
1c007afc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec6c <_start-0x1394>
1c007b00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e960 <_sidata+0x6570>
1c007b04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b08 <__FUNCTION__.1765>:
1c007b08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef80 <_sidata+0x16b90>
1c007b0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb70 <_sidata+0x16780>
1c007b10:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffae74 <_start-0x518c>
1c007b14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec84 <_start-0x137c>
1c007b18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e978 <_sidata+0x6588>
1c007b1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b20 <__FUNCTION__.1769>:
1c007b20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef98 <_sidata+0x16ba8>
1c007b24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb88 <_sidata+0x16798>
1c007b28:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffaf8c <_start-0x5074>
1c007b2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec9c <_start-0x1364>
1c007b30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e990 <_sidata+0x65a0>
1c007b34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b38 <__FUNCTION__.1773>:
1c007b38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efb0 <_sidata+0x16bc0>
1c007b3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eba0 <_sidata+0x167b0>
1c007b40:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffb0a4 <_start-0x4f5c>
1c007b44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecb4 <_start-0x134c>
1c007b48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9a8 <_sidata+0x65b8>
1c007b4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b50 <__FUNCTION__.1777>:
1c007b50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efc8 <_sidata+0x16bd8>
1c007b54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebb8 <_sidata+0x167c8>
1c007b58:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffb1bc <_start-0x4e44>
1c007b5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeccc <_start-0x1334>
1c007b60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9c0 <_sidata+0x65d0>
1c007b64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b68 <__FUNCTION__.1781>:
1c007b68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efe0 <_sidata+0x16bf0>
1c007b6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebd0 <_sidata+0x167e0>
1c007b70:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffb2d4 <_start-0x4d2c>
1c007b74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffece4 <_start-0x131c>
1c007b78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9d8 <_sidata+0x65e8>
1c007b7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c007b80:	64256425 	bge	$r1,$r5,9572(0x2564) # 1c00a0e4 <_sidata+0x1cf4>
1c007b84:	64256425 	bge	$r1,$r5,9572(0x2564) # 1c00a0e8 <_sidata+0x1cf8>
1c007b88:	00000000 	0x00000000
1c007b8c:	746c6f56 	0x746c6f56
1c007b90:	0000003a 	0x0000003a
1c007b94:	00000056 	0x00000056
1c007b98:	72727543 	0x72727543
1c007b9c:	3a746e65 	0x3a746e65
1c007ba0:	00000000 	0x00000000
1c007ba4:	0000416d 	revh.2w	$r13,$r11
1c007ba8:	65776f50 	bge	$r26,$r16,96108(0x1776c) # 1c01f314 <_sidata+0x16f24>
1c007bac:	00003a72 	revb.2w	$r18,$r19
1c007bb0:	00000057 	0x00000057
1c007bb4:	3a4f4550 	0x3a4f4550
1c007bb8:	00000000 	0x00000000
1c007bbc:	00004e4f 	bitrev.8b	$r15,$r18
1c007bc0:	0046464f 	0x0046464f
1c007bc4:	706f7473 	0x706f7473
1c007bc8:	00000000 	0x00000000
1c007bcc:	474e4144 	bnez	$r10,1265216(0x134e40) # 1c13ca0c <_sidata+0x13461c>
1c007bd0:	554f5245 	bl	-116043952(0x9154f50) # 1515cb20 <_start-0x6ea34e0>
1c007bd4:	00000053 	0x00000053
1c007bd8:	45464153 	bnez	$r10,-3324352(0x4d4640) # 1bcdc218 <_start-0x323de8>
1c007bdc:	00005954 	ext.w.h	$r20,$r10

1c007be0 <Front_16x8Tab>:
1c007be0:	f8000000 	0xf8000000
1c007be4:	00000000 	0x00000000
1c007be8:	33000000 	0x33000000
1c007bec:	00000000 	0x00000000
1c007bf0:	020c1000 	slti	$r0,$r0,772(0x304)
1c007bf4:	00020c10 	0x00020c10
	...
1c007c00:	78c04000 	0x78c04000
1c007c04:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c007c08:	043f0400 	csrrd	$r0,0xfc1
1c007c0c:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c007c10:	88887000 	0x88887000
1c007c14:	003008fc 	0x003008fc
1c007c18:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c007c1c:	001e21ff 	mulh.d	$r31,$r15,$r8
1c007c20:	80f008f0 	0x80f008f0
1c007c24:	00001860 	cto.w	$r0,$r3
1c007c28:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c007c2c:	001e211e 	mulh.d	$r30,$r8,$r8
1c007c30:	8808f000 	0x8808f000
1c007c34:	00000070 	0x00000070
1c007c38:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c007c3c:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c007c40:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c007c50:	e0000000 	0xe0000000
1c007c54:	00020418 	0x00020418
1c007c58:	07000000 	0x07000000
1c007c5c:	00402018 	0x00402018
1c007c60:	18040200 	pcaddi	$r0,8208(0x2010)
1c007c64:	000000e0 	0x000000e0
1c007c68:	18204000 	pcaddi	$r0,66048(0x10200)
1c007c6c:	00000007 	0x00000007
1c007c70:	f0804040 	0xf0804040
1c007c74:	00404080 	0x00404080
1c007c78:	0f010202 	0x0f010202
1c007c7c:	00020201 	0x00020201
1c007c80:	00000000 	0x00000000
1c007c84:	000000e0 	0x000000e0
1c007c88:	01010100 	fadd.d	$f0,$f8,$f0
1c007c8c:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c007c98:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c007ca8:	01010100 	fadd.d	$f0,$f8,$f0
1c007cac:	00010101 	0x00010101
	...
1c007cb8:	00303000 	0x00303000
	...
1c007cc4:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c007cc8:	07186000 	0x07186000
1c007ccc:	00000000 	0x00000000
1c007cd0:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c007cd4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007cd8:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c007cdc:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007ce0:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007ce4:	000000f8 	0x000000f8
1c007ce8:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c007cec:	0020203f 	div.w	$r31,$r1,$r8
1c007cf0:	08087000 	0x08087000
1c007cf4:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007cf8:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c007cfc:	00302122 	0x00302122
1c007d00:	08083000 	0x08083000
1c007d04:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007d08:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c007d0c:	001c2221 	mul.w	$r1,$r17,$r8
1c007d10:	40800000 	beqz	$r0,32768(0x8000) # 1c00fd10 <_sidata+0x7920>
1c007d14:	0000f830 	0x0000f830
1c007d18:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c007d1c:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c007d20:	8888f800 	0x8888f800
1c007d24:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c007d28:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c007d2c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007d30:	8810e000 	0x8810e000
1c007d34:	00009088 	0x00009088
1c007d38:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c007d3c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007d40:	08081800 	0x08081800
1c007d44:	00186888 	sra.w	$r8,$r4,$r26
1c007d48:	3e000000 	0x3e000000
1c007d4c:	00000001 	0x00000001
1c007d50:	08887000 	0x08887000
1c007d54:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007d58:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c007d5c:	001c2221 	mul.w	$r1,$r17,$r8
1c007d60:	0808f000 	0x0808f000
1c007d64:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007d68:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c007d6c:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007d70:	c0000000 	0xc0000000
1c007d74:	000000c0 	0x000000c0
1c007d78:	30000000 	0x30000000
1c007d7c:	00000030 	0x00000030
1c007d80:	80000000 	0x80000000
1c007d84:	00000000 	0x00000000
1c007d88:	e0000000 	0xe0000000
1c007d8c:	00000000 	0x00000000
1c007d90:	40800000 	beqz	$r0,32768(0x8000) # 1c00fd90 <_sidata+0x79a0>
1c007d94:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007d98:	04020100 	csrxchg	$r0,$r8,0x80
1c007d9c:	00201008 	div.w	$r8,$r0,$r4
1c007da0:	40404000 	beqz	$r0,16448(0x4040) # 1c00bde0 <_sidata+0x39f0>
1c007da4:	00404040 	0x00404040
1c007da8:	02020200 	slti	$r0,$r16,128(0x80)
1c007dac:	00020202 	0x00020202
1c007db0:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007db4:	00008040 	0x00008040
1c007db8:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c007dbc:	00010204 	0x00010204
1c007dc0:	08487000 	0x08487000
1c007dc4:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007dc8:	30000000 	0x30000000
1c007dcc:	00000037 	0x00000037
1c007dd0:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c007dd4:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c007dd8:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c007ddc:	0017282f 	sll.w	$r15,$r1,$r10
1c007de0:	38c00000 	0x38c00000
1c007de4:	000000e0 	0x000000e0
1c007de8:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c007dec:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c007df0:	8888f808 	0x8888f808
1c007df4:	00007088 	0x00007088
1c007df8:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007dfc:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007e00:	080830c0 	0x080830c0
1c007e04:	00380808 	0x00380808
1c007e08:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007e0c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007e10:	0808f808 	0x0808f808
1c007e14:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007e18:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007e1c:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007e20:	8888f808 	0x8888f808
1c007e24:	001008e8 	add.w	$r8,$r7,$r2
1c007e28:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007e2c:	00182023 	sra.w	$r3,$r1,$r8
1c007e30:	8888f808 	0x8888f808
1c007e34:	001008e8 	add.w	$r8,$r7,$r2
1c007e38:	00203f20 	div.w	$r0,$r25,$r15
1c007e3c:	00000003 	0x00000003
1c007e40:	080830c0 	0x080830c0
1c007e44:	00003808 	revb.2w	$r8,$r0
1c007e48:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007e4c:	00021e22 	0x00021e22
1c007e50:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007e54:	08f80800 	0x08f80800
1c007e58:	01213f20 	0x01213f20
1c007e5c:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c007e60:	f8080800 	0xf8080800
1c007e64:	00000808 	0x00000808
1c007e68:	3f202000 	0x3f202000
1c007e6c:	00002020 	clo.d	$r0,$r1
1c007e70:	08080000 	0x08080000
1c007e74:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c007e78:	808080c0 	0x808080c0
1c007e7c:	0000007f 	0x0000007f
1c007e80:	c088f808 	0xc088f808
1c007e84:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c007e88:	01203f20 	0x01203f20
1c007e8c:	00203826 	div.w	$r6,$r1,$r14
1c007e90:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007e94:	00000000 	0x00000000
1c007e98:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007e9c:	00302020 	0x00302020
1c007ea0:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c007ea4:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c007ea8:	3e013f20 	0x3e013f20
1c007eac:	00203f01 	div.w	$r1,$r24,$r15
1c007eb0:	c030f808 	0xc030f808
1c007eb4:	08f80800 	0x08f80800
1c007eb8:	00203f20 	div.w	$r0,$r25,$r15
1c007ebc:	003f1807 	0x003f1807
1c007ec0:	080810e0 	0x080810e0
1c007ec4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007ec8:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c007ecc:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007ed0:	0808f808 	0x0808f808
1c007ed4:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007ed8:	01213f20 	0x01213f20
1c007edc:	00000101 	0x00000101
1c007ee0:	080810e0 	0x080810e0
1c007ee4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007ee8:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c007eec:	004f5030 	0x004f5030
1c007ef0:	8888f808 	0x8888f808
1c007ef4:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c007ef8:	00203f20 	div.w	$r0,$r25,$r15
1c007efc:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c007f00:	08887000 	0x08887000
1c007f04:	00380808 	0x00380808
1c007f08:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c007f0c:	001c2221 	mul.w	$r1,$r17,$r8
1c007f10:	f8080818 	0xf8080818
1c007f14:	00180808 	sra.w	$r8,$r0,$r2
1c007f18:	3f200000 	0x3f200000
1c007f1c:	00000020 	0x00000020
1c007f20:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007f24:	08f80800 	0x08f80800
1c007f28:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007f2c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007f30:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c007f34:	0838c800 	0x0838c800
1c007f38:	38070000 	0x38070000
1c007f3c:	0000010e 	0x0000010e
1c007f40:	f800f808 	0xf800f808
1c007f44:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c007f48:	013e0300 	0x013e0300
1c007f4c:	0000033e 	0x0000033e
1c007f50:	80681808 	0x80681808
1c007f54:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c007f58:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c007f5c:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c007f60:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c007f64:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007f68:	3f200000 	0x3f200000
1c007f6c:	00000020 	0x00000020
1c007f70:	08080810 	0x08080810
1c007f74:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007f78:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c007f7c:	00182020 	sra.w	$r0,$r1,$r8
1c007f80:	fe000000 	0xfe000000
1c007f84:	00020202 	0x00020202
1c007f88:	7f000000 	0x7f000000
1c007f8c:	00404040 	0x00404040
1c007f90:	c0380400 	0xc0380400
1c007f94:	00000000 	0x00000000
1c007f98:	01000000 	0x01000000
1c007f9c:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c007fa0:	02020200 	slti	$r0,$r16,128(0x80)
1c007fa4:	000000fe 	0x000000fe
1c007fa8:	40404000 	beqz	$r0,16448(0x4040) # 1c00bfe8 <_sidata+0x3bf8>
1c007fac:	0000007f 	0x0000007f
1c007fb0:	02040000 	slti	$r0,$r0,256(0x100)
1c007fb4:	00000402 	0x00000402
	...
1c007fc8:	80808080 	0x80808080
1c007fcc:	80808080 	0x80808080
1c007fd0:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c007fe0:	80800000 	0x80800000
1c007fe4:	00000080 	0x00000080
1c007fe8:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c007fec:	00203f12 	div.w	$r18,$r24,$r15
1c007ff0:	8000f010 	0x8000f010
1c007ff4:	00000080 	0x00000080
1c007ff8:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c007ffc:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008000:	80000000 	0x80000000
1c008004:	00008080 	0x00008080
1c008008:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00800c:	00112020 	sub.w	$r0,$r1,$r8
1c008010:	80800000 	0x80800000
1c008014:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c008018:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00801c:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c008020:	80800000 	0x80800000
1c008024:	00008080 	0x00008080
1c008028:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c00802c:	00172424 	sll.w	$r4,$r1,$r9
1c008030:	e0808000 	0xe0808000
1c008034:	00209090 	mod.w	$r16,$r4,$r4
1c008038:	3f202000 	0x3f202000
1c00803c:	00002020 	clo.d	$r0,$r1
1c008040:	80800000 	0x80800000
1c008044:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008048:	94946b00 	0x94946b00
1c00804c:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c008050:	8000f010 	0x8000f010
1c008054:	00008080 	0x00008080
1c008058:	00213f20 	div.wu	$r0,$r25,$r15
1c00805c:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c008060:	98988000 	0x98988000
1c008064:	00000000 	0x00000000
1c008068:	3f202000 	0x3f202000
1c00806c:	00002020 	clo.d	$r0,$r1
1c008070:	80000000 	0x80000000
1c008074:	00009898 	0x00009898
1c008078:	8080c000 	0x8080c000
1c00807c:	00007f80 	0x00007f80
1c008080:	0000f010 	0x0000f010
1c008084:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008088:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c00808c:	00203029 	div.w	$r9,$r1,$r12
1c008090:	f8101000 	0xf8101000
1c008094:	00000000 	0x00000000
1c008098:	3f202000 	0x3f202000
1c00809c:	00002020 	clo.d	$r0,$r1
1c0080a0:	80808080 	0x80808080
1c0080a4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0080a8:	00203f20 	div.w	$r0,$r25,$r15
1c0080ac:	3f00203f 	0x3f00203f
1c0080b0:	80008080 	0x80008080
1c0080b4:	00008080 	0x00008080
1c0080b8:	00213f20 	div.wu	$r0,$r25,$r15
1c0080bc:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c0080c0:	80800000 	0x80800000
1c0080c4:	00008080 	0x00008080
1c0080c8:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0080cc:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0080d0:	80008080 	0x80008080
1c0080d4:	00000080 	0x00000080
1c0080d8:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c0080dc:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0080e0:	80000000 	0x80000000
1c0080e4:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c0080e8:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0080ec:	80ff9120 	0x80ff9120
1c0080f0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0080f4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0080f8:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c0080fc:	00010020 	asrtle.d	$r1,$r0
1c008100:	80800000 	0x80800000
1c008104:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008108:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c00810c:	00192424 	srl.d	$r4,$r1,$r9
1c008110:	e0808000 	0xe0808000
1c008114:	00008080 	0x00008080
1c008118:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c00811c:	00102020 	add.w	$r0,$r1,$r8
1c008120:	00008080 	0x00008080
1c008124:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c008128:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00812c:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c008130:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008134:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008138:	300c0300 	0x300c0300
1c00813c:	0000030c 	0x0000030c
1c008140:	80008080 	0x80008080
1c008144:	80800080 	0x80800080
1c008148:	0c300e01 	0x0c300e01
1c00814c:	01063807 	0x01063807
1c008150:	80808000 	0x80808000
1c008154:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c008158:	0e312000 	0x0e312000
1c00815c:	0020312e 	div.w	$r14,$r9,$r12
1c008160:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008164:	80808000 	0x80808000
1c008168:	78868100 	0x78868100
1c00816c:	00010618 	0x00010618
1c008170:	80808000 	0x80808000
1c008174:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008178:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c00817c:	00302122 	0x00302122
1c008180:	00000000 	0x00000000
1c008184:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c008188:	00000000 	0x00000000
1c00818c:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04c1c8 <_sidata+0x43dd8>
1c008190:	00000000 	0x00000000
1c008194:	000000ff 	0x000000ff
1c008198:	00000000 	0x00000000
1c00819c:	000000ff 	0x000000ff
1c0081a0:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c0081a4:	00000000 	0x00000000
1c0081a8:	013e4040 	0x013e4040
1c0081ac:	00000000 	0x00000000
1c0081b0:	02010200 	slti	$r0,$r16,64(0x40)
1c0081b4:	00020402 	0x00020402
	...
1c0081c0:	61726f4c 	blt	$r26,$r12,94828(0x1726c) # 1c01f42c <_sidata+0x1703c>
1c0081c4:	20736920 	ll.w	$r0,$r9,29544(0x7368)
1c0081c8:	79737562 	0x79737562
1c0081cc:	00000000 	0x00000000
1c0081d0:	61726f6c 	blt	$r27,$r12,94828(0x1726c) # 1c01f43c <_sidata+0x1704c>
1c0081d4:	20736920 	ll.w	$r0,$r9,29544(0x7368)
1c0081d8:	6d617865 	bgeu	$r3,$r5,90488(0x16178) # 1c01e350 <_sidata+0x15f60>
1c0081dc:	00676e69 	bstrins.w	$r9,$r19,0x7,0x1b
1c0081e0:	00005441 	bitrev.d	$r1,$r2
1c0081e4:	61726f6c 	blt	$r27,$r12,94828(0x1726c) # 1c01f450 <_sidata+0x17060>
1c0081e8:	20736920 	ll.w	$r0,$r9,29544(0x7368)
1c0081ec:	646f6f67 	bge	$r27,$r7,28524(0x6f6c) # 1c00f158 <_sidata+0x6d68>
1c0081f0:	00000000 	0x00000000
1c0081f4:	61726f4c 	blt	$r26,$r12,94828(0x1726c) # 1c01f460 <_sidata+0x17070>
1c0081f8:	20736920 	ll.w	$r0,$r9,29544(0x7368)
1c0081fc:	79737562 	0x79737562
1c008200:	6f777420 	bgeu	$r1,$r0,-34956(0x37774) # 1bfff974 <_start-0x68c>
1c008204:	00000000 	0x00000000
1c008208:	412b5441 	beqz	$r2,338772(0x52b54) # 1c05ad5c <_sidata+0x5296c>
1c00820c:	3d524444 	0x3d524444
1c008210:	362c3230 	0x362c3230
1c008214:	00000035 	0x00000035
1c008218:	b7d6d8b5 	0xb7d6d8b5
1c00821c:	c3d6e8c9 	0xc3d6e8c9
1c008220:	2e2ed0d6 	0x2e2ed0d6
1c008224:	2e2e2e2e 	0x2e2e2e2e
1c008228:	00000000 	0x00000000
1c00822c:	b7d6d8b5 	0xb7d6d8b5
1c008230:	baa3aace 	0xbaa3aace
1c008234:	00000000 	0x00000000
1c008238:	412b5441 	beqz	$r2,338772(0x52b54) # 1c05ad8c <_sidata+0x5299c>
1c00823c:	3f524444 	0x3f524444
1c008240:	00000000 	0x00000000
1c008244:	00007324 	0x00007324
1c008248:	00002020 	clo.d	$r0,$r1
1c00824c:	572b5441 	bl	17247060(0x1072b54) # 1d07ada0 <_sidata+0x10729b0>
1c008250:	5441524c 	bl	-114278064(0x9304150) # 1530c3a0 <_start-0x6cf3c60>
1c008254:	33323d45 	xvstelm.w	$xr5,$r10,-452(0x23c),0x4
1c008258:	0000352c 	revb.4h	$r12,$r9
1c00825c:	c0b5c5d0 	0xc0b5c5d0
1c008260:	cac2d9cb 	0xcac2d9cb
1c008264:	c3d6e8c9 	0xc3d6e8c9
1c008268:	2e2ed0d6 	0x2e2ed0d6
1c00826c:	2e2e2e2e 	0x2e2e2e2e
1c008270:	00000000 	0x00000000
1c008274:	c0b5c5d0 	0xc0b5c5d0
1c008278:	d9cbaca3 	0xd9cbaca3
1c00827c:	aacecac2 	0xaacecac2
1c008280:	0000baa3 	0x0000baa3
1c008284:	572b5441 	bl	17247060(0x1072b54) # 1d07add8 <_sidata+0x10729e8>
1c008288:	5441524c 	bl	-114278064(0x9304150) # 1530c3d8 <_start-0x6cf3c28>
1c00828c:	00003f45 	revb.d	$r5,$r26
1c008290:	542b5441 	bl	17050452(0x1042b54) # 1d04ade4 <_sidata+0x10429f4>
1c008294:	45574f50 	bnez	$r26,-4106420(0x41574c) # 1bc1d9e0 <_start-0x3e2620>
1c008298:	00333d52 	0x00333d52
1c00829c:	e4c9a2b7 	0xe4c9a2b7
1c0082a0:	cac2a6b9 	0xcac2a6b9
1c0082a4:	c3d6e8c9 	0xc3d6e8c9
1c0082a8:	2e2ed0d6 	0x2e2ed0d6
1c0082ac:	2e2e2e2e 	0x2e2e2e2e
1c0082b0:	00000000 	0x00000000
1c0082b4:	e4c9a2b7 	0xe4c9a2b7
1c0082b8:	cac2a6b9 	0xcac2a6b9
1c0082bc:	baa3aace 	0xbaa3aace
1c0082c0:	00000000 	0x00000000
1c0082c4:	542b5441 	bl	17050452(0x1042b54) # 1d04ae18 <_sidata+0x1042a28>
1c0082c8:	45574f50 	bnez	$r26,-4106420(0x41574c) # 1bc1da14 <_start-0x3e25ec>
1c0082cc:	00003f52 	revb.d	$r18,$r26
1c0082d0:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07ae24 <_sidata+0x72a34>
1c0082d4:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcd220 <_start-0x232de0>
1c0082d8:	00313d45 	0x00313d45
1c0082dc:	f7d7a4b9 	0xf7d7a4b9
1c0082e0:	bdcaa3c4 	0xbdcaa3c4
1c0082e4:	c3d6e8c9 	0xc3d6e8c9
1c0082e8:	2e2ed0d6 	0x2e2ed0d6
1c0082ec:	2e2e2e2e 	0x2e2e2e2e
1c0082f0:	00000000 	0x00000000
1c0082f4:	f7d7a4b9 	0xf7d7a4b9
1c0082f8:	bdcaa3c4 	0xbdcaa3c4
1c0082fc:	baa3aace 	0xbaa3aace
1c008300:	00000000 	0x00000000
1c008304:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07ae58 <_sidata+0x72a68>
1c008308:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcd254 <_start-0x232dac>
1c00830c:	00003f45 	revb.d	$r5,$r26
1c008310:	542b5441 	bl	17050452(0x1042b54) # 1d04ae64 <_sidata+0x1042a74>
1c008314:	45444f4d 	bnez	$r26,3490892(0x35444c) # 1c35c760 <_sidata+0x354370>
1c008318:	0000303d 	revb.2h	$r29,$r1
1c00831c:	cdcba2b7 	0xcdcba2b7
1c008320:	acccb4d7 	0xacccb4d7
1c008324:	c3d6e8c9 	0xc3d6e8c9
1c008328:	2e2ed0d6 	0x2e2ed0d6
1c00832c:	2e2e2e2e 	0x2e2e2e2e
1c008330:	00000000 	0x00000000
1c008334:	cdcba2b7 	0xcdcba2b7
1c008338:	acccb4d7 	0xacccb4d7
1c00833c:	baa3aace 	0xbaa3aace
1c008340:	00000000 	0x00000000
1c008344:	542b5441 	bl	17050452(0x1042b54) # 1d04ae98 <_sidata+0x1042aa8>
1c008348:	45444f4d 	bnez	$r26,3490892(0x35444c) # 1c35c794 <_sidata+0x3543a4>
1c00834c:	0000003f 	0x0000003f
1c008350:	572b5441 	bl	17247060(0x1072b54) # 1d07aea4 <_sidata+0x1072ab4>
1c008354:	4d49544c 	jirl	$r12,$r2,84308(0x14954)
1c008358:	00303d45 	0x00303d45
1c00835c:	dfc3afcb 	0xdfc3afcb
1c008360:	e4bcb1ca 	0xe4bcb1ca
1c008364:	c3d6e8c9 	0xc3d6e8c9
1c008368:	2e2ed0d6 	0x2e2ed0d6
1c00836c:	2e2e2e2e 	0x2e2e2e2e
1c008370:	00000000 	0x00000000
1c008374:	dfc3afcb 	0xdfc3afcb
1c008378:	e4bcb1ca 	0xe4bcb1ca
1c00837c:	baa3aace 	0xbaa3aace
1c008380:	00000000 	0x00000000
1c008384:	572b5441 	bl	17247060(0x1072b54) # 1d07aed8 <_sidata+0x1072ae8>
1c008388:	4d49544c 	jirl	$r12,$r2,84308(0x14954)
1c00838c:	00003f45 	revb.d	$r5,$r26
1c008390:	552b5441 	bl	17115988(0x1052b54) # 1d05aee4 <_sidata+0x1052af4>
1c008394:	3d545241 	0x3d545241
1c008398:	00302c33 	0x00302c33
1c00839c:	d8cca8b2 	0xd8cca8b2
1c0083a0:	aca3cac2 	0xaca3cac2
1c0083a4:	ddbefdca 	0xddbefdca
1c0083a8:	e9d1a3d0 	0xe9d1a3d0
1c0083ac:	e8c9bbce 	0xe8c9bbce
1c0083b0:	d0d6c3d6 	0xd0d6c3d6
1c0083b4:	2e2e2e2e 	0x2e2e2e2e
1c0083b8:	00002e2e 	ctz.d	$r14,$r17
1c0083bc:	d8cca8b2 	0xd8cca8b2
1c0083c0:	aca3cac2 	0xaca3cac2
1c0083c4:	ddbefdca 	0xddbefdca
1c0083c8:	e9d1a3d0 	0xe9d1a3d0
1c0083cc:	aacebbce 	0xaacebbce
1c0083d0:	0000baa3 	0x0000baa3
1c0083d4:	552b5441 	bl	17115988(0x1052b54) # 1d05af28 <_sidata+0x1052b38>
1c0083d8:	3f545241 	0x3f545241
1c0083dc:	00000000 	0x00000000
1c0083e0:	41524f4c 	beqz	$r26,3232332(0x31524c) # 1c31d62c <_sidata+0x31523c>
1c0083e4:	c3d6e4c5 	0xc3d6e4c5
1c0083e8:	c9b3eacd 	0xc9b3eacd
1c0083ec:	00000000 	0x00000000

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c007009 	pcaddu12i	$r9,896(0x380)
80001008:	80000000 	0x80000000
8000100c:	80000018 	0x80000018
80001010:	8000007c 	0x8000007c
80001014:	8000042c 	0x8000042c
80001018:	80001034 	0x80001034
8000101c:	80000084 	0x80000084
80001020:	8000045c 	0x8000045c
80001024:	800002fc 	0x800002fc
80001028:	8000009c 	0x8000009c
8000102c:	1c007000 	pcaddu12i	$r0,896(0x380)
80001030:	800000a0 	0x800000a0

80001034 <g_SystemFreq>:
80001034:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001038 <read_enable>:
80001038:	00000001 	0x00000001

8000103c <Read_ID>:
8000103c:	00000001 	0x00000001

80001040 <i>:
80001040:	00000008 	0x00000008

Disassembly of section .bss:

80000000 <receive_index>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <receive_Data.1834>:
80000004:	00000000 	0x00000000

80000008 <receive_Data1.1835>:
80000008:	00000000 	0x00000000

8000000c <flagclear>:
8000000c:	00000000 	0x00000000

80000010 <j>:
80000010:	00000000 	0x00000000

80000014 <reveive_numbe>:
80000014:	00000000 	0x00000000

80000018 <lora_tx_data>:
	...

8000007c <Read_length>:
8000007c:	00000000 	0x00000000

80000080 <va>:
80000080:	00000000 	0x00000000

80000084 <myData>:
	...

8000009c <sensor>:
8000009c:	00000000 	0x00000000

800000a0 <Read_Buffer>:
	...

800001cc <Circular_queue_UART1>:
	...

800002fc <Circular_queue>:
	...

8000042c <Tx_Buffer1>:
	...

80000434 <Rx_Buffer>:
	...

8000045c <Rx_Buffer1>:
	...

80000484 <USART1_RX_BUF>:
	...

8000054c <USART1_TX_BUF>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
