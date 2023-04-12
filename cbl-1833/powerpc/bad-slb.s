	.text
	.file	"slb.c"
	.section	.init.text,"ax",@progbits
	.p2align	2                               # -- Begin function parse_stress_slb
	.type	parse_stress_slb,@function
	.section	.opd,"aw",@progbits
parse_stress_slb:                       # @parse_stress_slb
	.p2align	3, 0x0
	.quad	.Lfunc_begin0
	.quad	.TOC.@tocbase
	.quad	0
	.section	.init.text,"ax",@progbits
.Lfunc_begin0:
# %bb.0:                                # %entry
	addis 3, 2, stress_slb_enabled@toc@ha
	li 4, 1
	stb 4, stress_slb_enabled@toc@l(3)
	li 3, 0
	blr
	.long	0
	.quad	0
.Lfunc_end0:
	.size	parse_stress_slb, .Lfunc_end0-.Lfunc_begin0
                                        # -- End function
	.text
	.globl	__slb_restore_bolted_realmode   # -- Begin function __slb_restore_bolted_realmode
	.p2align	4
	.type	__slb_restore_bolted_realmode,@function
	.section	.opd,"aw",@progbits
__slb_restore_bolted_realmode:          # @__slb_restore_bolted_realmode
	.p2align	3, 0x0
	.quad	.Lfunc_begin1
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin1:
# %bb.0:                                # %entry
	ld 3, 64(13)
	ld 4, 24(3)
	ld 5, 16(3)
	#APP
	slbmte 4, 5
	#NO_APP
	ld 4, 40(3)
	ld 3, 32(3)
	#APP
	slbmte 4, 3
	#NO_APP
	blr
	.long	0
	.quad	0
.Lfunc_end1:
	.size	__slb_restore_bolted_realmode, .Lfunc_end1-.Lfunc_begin1
                                        # -- End function
	.globl	slb_restore_bolted_realmode     # -- Begin function slb_restore_bolted_realmode
	.p2align	4
	.type	slb_restore_bolted_realmode,@function
	.section	.opd,"aw",@progbits
slb_restore_bolted_realmode:            # @slb_restore_bolted_realmode
	.p2align	3, 0x0
	.quad	.Lfunc_begin2
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin2:
# %bb.0:                                # %entry
	ld 3, 64(13)
	ld 4, 24(3)
	ld 5, 16(3)
	#APP
	slbmte 4, 5
	#NO_APP
	ld 4, 40(3)
	ld 3, 32(3)
	#APP
	slbmte 4, 3
	#NO_APP
	li 3, 0
	stb 3, 210(13)
	li 3, 3
	stw 3, 216(13)
	lwz 3, 216(13)
	stw 3, 212(13)
	blr
	.long	0
	.quad	0
.Lfunc_end2:
	.size	slb_restore_bolted_realmode, .Lfunc_end2-.Lfunc_begin2
                                        # -- End function
	.globl	slb_flush_all_realmode          # -- Begin function slb_flush_all_realmode
	.p2align	4
	.type	slb_flush_all_realmode,@function
	.section	.opd,"aw",@progbits
slb_flush_all_realmode:                 # @slb_flush_all_realmode
	.p2align	3, 0x0
	.quad	.Lfunc_begin3
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin3:
# %bb.0:                                # %entry
	li 3, 0
	#APP
	slbmte 3, 3
	slbia
	#NO_APP
	blr
	.long	0
	.quad	0
.Lfunc_end3:
	.size	slb_flush_all_realmode, .Lfunc_end3-.Lfunc_begin3
                                        # -- End function
	.globl	slb_flush_and_restore_bolted    # -- Begin function slb_flush_and_restore_bolted
	.p2align	4
	.type	slb_flush_and_restore_bolted,@function
	.section	.opd,"aw",@progbits
slb_flush_and_restore_bolted:           # @slb_flush_and_restore_bolted
	.p2align	3, 0x0
	.quad	.Lfunc_begin4
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin4:
# %bb.0:                                # %entry
	#APP
	lbz 3, 2354(13)
	#NO_APP
	not	3, 3
	clrldi	3, 3, 63
	#APP
.Ltmp0:
	tdnei	3, 0
	.section	__ex_table,"a",@progbits
	.p2align	2, 0x0
.Ltmp1:
	.long	.Ltmp0-.Ltmp1
.Ltmp2:
	.long	.LBB4_1-.Ltmp2
	.text
	.section	__bug_table,"aw",@progbits
.Ltmp3:
.Ltmp4:
	.long	.Ltmp0-.Ltmp4
.Ltmp5:
	.long	.L.str-.Ltmp5
	.short	181
	.short	2305
.org .Ltmp3+12, 0
	.text


	#NO_APP
.LBB4_1:                                # Block address taken
                                        # %do.end48
                                        # Label of block must be emitted
	li 3, 2
	#APP
	mtmsrd 3, 1
	#NO_APP
	li 3, 3
	#APP
	lbz 4, 2354(13)
	#NO_APP
	#APP
	stb 3, 2354(13)
	#NO_APP
	andi. 4, 4, 1
	lbz 5, 2355(13)
	ori 5, 5, 1
	stb 5, 2355(13)
	bne	0, .LBB4_3
# %bb.2:                                # %if.then61
	addi 4, 13, 2328
	#APP
	std 1, 0(4)
	#NO_APP
.LBB4_3:                                # %if.end65
	#APP
	isync
	#NO_APP
	ld 4, 64(13)
	ld 5, 32(4)
	ld 4, 40(4)
	#APP
	.long	2080375780
	slbmte 4, 5

	#NO_APP
	li 4, 0
	#APP
	isync
	#NO_APP
	stw 3, 216(13)
	lwz 3, 216(13)
	stb 4, 210(13)
	stw 3, 212(13)
	blr
	.long	0
	.quad	0
.Lfunc_end4:
	.size	slb_flush_and_restore_bolted, .Lfunc_end4-.Lfunc_begin4
                                        # -- End function
	.globl	slb_save_contents               # -- Begin function slb_save_contents
	.p2align	4
	.type	slb_save_contents,@function
	.section	.opd,"aw",@progbits
slb_save_contents:                      # @slb_save_contents
	.p2align	3, 0x0
	.quad	.Lfunc_begin5
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin5:
# %bb.0:                                # %entry
	lbz 4, 210(13)
	cmpldi	3, 0
	sth 4, 3184(13)
	beqlr	0
# %bb.1:                                # %entry
	addis 4, 2, .LC0@toc@ha
	ld 4, .LC0@toc@l(4)
	lhz 5, 0(4)
	cmplwi	5, 0
	beqlr	0
# %bb.2:                                # %for.body.preheader
	addi 3, 3, -16
	li 5, 0
	.p2align	5
.LBB5_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#APP
	slbmfee 6, 5
	#NO_APP
	#APP
	slbmfev 7, 5
	#NO_APP
	stdu 6, 16(3)
	addi 5, 5, 1
	std 7, 8(3)
	lhz 6, 0(4)
	cmplw	5, 6
	blt	0, .LBB5_3
	blr
	.long	0
	.quad	0
.Lfunc_end5:
	.size	slb_save_contents, .Lfunc_end5-.Lfunc_begin5
                                        # -- End function
	.globl	slb_dump_contents               # -- Begin function slb_dump_contents
	.p2align	4
	.type	slb_dump_contents,@function
	.section	.opd,"aw",@progbits
slb_dump_contents:                      # @slb_dump_contents
	.p2align	3, 0x0
	.quad	.Lfunc_begin6
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin6:
# %bb.0:                                # %entry
	cmpldi	3, 0
	beqlr	0
# %bb.1:                                # %do.end
	mfcr 12
	mflr 0
	stw 12, 8(1)
	stdu 1, -256(1)
	std 0, 272(1)
	std 30, 240(1)                          # 8-byte Folded Spill
	mr	30, 3
	addis 3, 2, .L.str.1@toc@ha
	lhz 4, 10(13)
	std 15, 120(1)                          # 8-byte Folded Spill
	std 16, 128(1)                          # 8-byte Folded Spill
	addi 3, 3, .L.str.1@toc@l
	std 17, 136(1)                          # 8-byte Folded Spill
	std 18, 144(1)                          # 8-byte Folded Spill
	std 19, 152(1)                          # 8-byte Folded Spill
	std 20, 160(1)                          # 8-byte Folded Spill
	std 21, 168(1)                          # 8-byte Folded Spill
	std 22, 176(1)                          # 8-byte Folded Spill
	std 23, 184(1)                          # 8-byte Folded Spill
	std 24, 192(1)                          # 8-byte Folded Spill
	std 25, 200(1)                          # 8-byte Folded Spill
	std 26, 208(1)                          # 8-byte Folded Spill
	std 27, 216(1)                          # 8-byte Folded Spill
	std 28, 224(1)                          # 8-byte Folded Spill
	std 29, 232(1)                          # 8-byte Folded Spill
	bl _printk
	nop
	addis 3, 2, .LC0@toc@ha
	ld 27, .LC0@toc@l(3)
	lhz 3, 0(27)
	cmplwi	3, 0
	beq	0, .LBB6_13
# %bb.2:                                # %for.body.preheader
	addis 3, 2, .L.str.3@toc@ha
	addi 26, 30, -16
	li 25, 0
	li 18, 40
	li 17, 28
	li 16, 24
	li 15, 12
	addi 24, 3, .L.str.3@toc@l
	addis 3, 2, .L.str.4@toc@ha
	addi 23, 3, .L.str.4@toc@l
	addis 3, 2, .L.str.2@toc@ha
	addi 30, 3, .L.str.2@toc@l
	li 3, -1
	rldic 22, 3, 0, 26
	rldic 21, 3, 0, 14
	addis 3, 2, .L.str.5@toc@ha
	addi 20, 3, .L.str.5@toc@l
	addis 3, 2, .L.str.6@toc@ha
	addi 19, 3, .L.str.6@toc@l
	b .LBB6_4
	.p2align	4
.LBB6_3:                                # %for.inc
                                        #   in Loop: Header=BB6_4 Depth=1
	lhz 3, 0(27)
	addi 25, 25, 1
	cmplw	25, 3
	bge 0, .LBB6_13
.LBB6_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldu 28, 16(26)
	ld 29, 8(26)
	or. 3, 28, 29
	beq	0, .LBB6_3
# %bb.5:                                # %do.end9
                                        #   in Loop: Header=BB6_4 Depth=1
	andis. 3, 28, 2048
	extsw 4, 25
	mr	3, 30
	mr	5, 28
	mr	6, 29
	mcrf 2, 0
	bc 12, 10, .LBB6_7
# %bb.6:                                # %do.end9
                                        #   in Loop: Header=BB6_4 Depth=1
	ori 7, 24, 0
	b .LBB6_8
.LBB6_7:                                # %do.end9
                                        #   in Loop: Header=BB6_4 Depth=1
	addi 7, 23, 0
.LBB6_8:                                # %do.end9
                                        #   in Loop: Header=BB6_4 Depth=1
	bl _printk
	nop
	beq	2, .LBB6_3
# %bb.9:                                # %if.end16
                                        #   in Loop: Header=BB6_4 Depth=1
	rldicl 3, 29, 2, 62
	andi. 6, 29, 304
	rldicl. 3, 3, 62, 1
	bc 12, 2, .LBB6_11
# %bb.10:                               # %if.end16
                                        #   in Loop: Header=BB6_4 Depth=1
	ori 7, 16, 0
	ori 5, 22, 0
	ori 4, 18, 0
	ori 3, 20, 0
	b .LBB6_12
.LBB6_11:                               # %if.end16
                                        #   in Loop: Header=BB6_4 Depth=1
	addi 7, 15, 0
	addi 5, 21, 0
	addi 4, 17, 0
	addi 3, 19, 0
.LBB6_12:                               # %if.end16
                                        #   in Loop: Header=BB6_4 Depth=1
	srd 7, 29, 7
	srd 4, 28, 4
	and 5, 7, 5
	bl _printk
	nop
	b .LBB6_3
.LBB6_13:                               # %for.end
	addis 3, 2, .LC1@toc@ha
	ld 3, .LC1@toc@l(3)
	ld 3, 0(3)
	lbz 3, 21(3)
	andi. 3, 3, 2
	beq	0, .LBB6_15
.LBB6_14:
	ld 30, 240(1)                           # 8-byte Folded Reload
	ld 29, 232(1)                           # 8-byte Folded Reload
	ld 28, 224(1)                           # 8-byte Folded Reload
	ld 27, 216(1)                           # 8-byte Folded Reload
	ld 26, 208(1)                           # 8-byte Folded Reload
	ld 25, 200(1)                           # 8-byte Folded Reload
	ld 24, 192(1)                           # 8-byte Folded Reload
	ld 23, 184(1)                           # 8-byte Folded Reload
	ld 22, 176(1)                           # 8-byte Folded Reload
	ld 21, 168(1)                           # 8-byte Folded Reload
	ld 20, 160(1)                           # 8-byte Folded Reload
	ld 19, 152(1)                           # 8-byte Folded Reload
	ld 18, 144(1)                           # 8-byte Folded Reload
	ld 17, 136(1)                           # 8-byte Folded Reload
	ld 16, 128(1)                           # 8-byte Folded Reload
	ld 15, 120(1)                           # 8-byte Folded Reload
	addi 1, 1, 256
	ld 0, 16(1)
	lwz 12, 8(1)
	mtlr 0
	mtocrf 32, 12
	blr
.LBB6_15:                               # %do.end43
	lbz 4, 211(13)
	addis 3, 2, .L.str.7@toc@ha
	addi 3, 3, .L.str.7@toc@l
	bl _printk
	nop
	lhz 4, 3184(13)
	addis 3, 2, .L.str.8@toc@ha
	addi 3, 3, .L.str.8@toc@l
	bl _printk
	nop
	addis 3, 2, .L.str.9@toc@ha
	addi 3, 3, .L.str.9@toc@l
	bl _printk
	nop
	lhz 29, 3184(13)
	li 3, 8
	cmplwi	29, 8
	bc 12, 0, .LBB6_17
# %bb.16:                               # %do.end43
	ori 28, 3, 0
	b .LBB6_18
.LBB6_17:                               # %do.end43
	addi 28, 29, 0
.LBB6_18:                               # %do.end43
	cmplwi	28, 0
	beq	0, .LBB6_21
# %bb.19:                               # %do.end70.preheader
	addis 3, 2, .L.str.10@toc@ha
	li 27, 0
	li 26, 220
	mr	25, 28
	addi 30, 3, .L.str.10@toc@l
	.p2align	4
.LBB6_20:                               # %do.end70
                                        # =>This Inner Loop Header: Depth=1
	lwzx 5, 13, 26
	extsw 4, 27
	mr	3, 30
	bl _printk
	nop
	addi 25, 25, -1
	addi 27, 27, 1
	addi 26, 26, 4
	cmpldi	25, 0
	bc 12, 1, .LBB6_20
.LBB6_21:                               # %do.end78
	addis 3, 2, .L.str.11@toc@ha
	addi 3, 3, .L.str.11@toc@l
	bl _printk
	nop
	cmplwi	29, 7
	bgt	0, .LBB6_14
# %bb.22:                               # %do.end87.preheader
	sub	3, 29, 28
	sldi 4, 29, 2
	addi 3, 3, 8
	addi 28, 4, 220
	clrldi	3, 3, 32
	sub	27, 3, 29
	addis 3, 2, .L.str.10@toc@ha
	addi 30, 3, .L.str.10@toc@l
.LBB6_23:                               # %do.end87
                                        # =>This Inner Loop Header: Depth=1
	lwzx 5, 13, 28
	extsw 4, 29
	mr	3, 30
	bl _printk
	nop
	addi 27, 27, -1
	addi 29, 29, 1
	addi 28, 28, 4
	cmpldi	27, 0
	bc 12, 1, .LBB6_23
	b .LBB6_14
	.long	0
	.quad	0
.Lfunc_end6:
	.size	slb_dump_contents, .Lfunc_end6-.Lfunc_begin6
                                        # -- End function
	.globl	slb_vmalloc_update              # -- Begin function slb_vmalloc_update
	.p2align	4
	.type	slb_vmalloc_update,@function
	.section	.opd,"aw",@progbits
slb_vmalloc_update:                     # @slb_vmalloc_update
	.p2align	3, 0x0
	.quad	.Lfunc_begin7
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin7:
# %bb.0:                                # %entry
	#APP
	lbz 3, 2354(13)
	#NO_APP
	not	3, 3
	clrldi	3, 3, 63
	#APP
.Ltmp6:
	tdnei	3, 0
	.section	__ex_table,"a",@progbits
	.p2align	2, 0x0
.Ltmp7:
	.long	.Ltmp6-.Ltmp7
.Ltmp8:
	.long	.LBB7_1-.Ltmp8
	.text
	.section	__bug_table,"aw",@progbits
.Ltmp9:
.Ltmp10:
	.long	.Ltmp6-.Ltmp10
.Ltmp11:
	.long	.L.str-.Ltmp11
	.short	181
	.short	2305
.org .Ltmp9+12, 0
	.text


	#NO_APP
.LBB7_1:                                # Block address taken
                                        # %do.end48.i
                                        # Label of block must be emitted
	li 3, 2
	#APP
	mtmsrd 3, 1
	#NO_APP
	li 3, 3
	#APP
	lbz 4, 2354(13)
	#NO_APP
	#APP
	stb 3, 2354(13)
	#NO_APP
	andi. 4, 4, 1
	lbz 5, 2355(13)
	ori 5, 5, 1
	stb 5, 2355(13)
	bne	0, .LBB7_3
# %bb.2:                                # %if.then61.i
	addi 4, 13, 2328
	#APP
	std 1, 0(4)
	#NO_APP
.LBB7_3:                                # %slb_flush_and_restore_bolted.exit
	#APP
	isync
	#NO_APP
	ld 4, 64(13)
	ld 5, 32(4)
	ld 4, 40(4)
	#APP
	.long	2080375780
	slbmte 4, 5

	#NO_APP
	li 4, 0
	#APP
	isync
	#NO_APP
	stw 3, 216(13)
	lwz 3, 216(13)
	stb 4, 210(13)
	stw 3, 212(13)
	blr
	.long	0
	.quad	0
.Lfunc_end7:
	.size	slb_vmalloc_update, .Lfunc_end7-.Lfunc_begin7
                                        # -- End function
	.globl	slb_setup_new_exec              # -- Begin function slb_setup_new_exec
	.p2align	4
	.type	slb_setup_new_exec,@function
	.section	.opd,"aw",@progbits
slb_setup_new_exec:                     # @slb_setup_new_exec
	.p2align	3, 0x0
	.quad	.Lfunc_begin8
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin8:
# %bb.0:                                # %entry
	mflr 0
	stdu 1, -160(1)
	std 0, 176(1)
	std 27, 120(1)                          # 8-byte Folded Spill
	std 28, 128(1)                          # 8-byte Folded Spill
	std 29, 136(1)                          # 8-byte Folded Spill
	std 30, 144(1)                          # 8-byte Folded Spill
	#APP
	ld 28, 2312(13)
	#NO_APP
	ld 30, 1624(28)
	#APP
	lbz 3, 2354(13)
	#NO_APP
	clrldi	3, 3, 63
	#APP
.Ltmp12:
	tdnei	3, 0
	.section	__ex_table,"a",@progbits
	.p2align	2, 0x0
.Ltmp13:
	.long	.Ltmp12-.Ltmp13
.Ltmp14:
	.long	.LBB8_1-.Ltmp14
	.text
	.section	__bug_table,"aw",@progbits
.Ltmp15:
.Ltmp16:
	.long	.Ltmp12-.Ltmp16
.Ltmp17:
	.long	.L.str-.Ltmp17
	.short	336
	.short	2305
.org .Ltmp15+12, 0
	.text


	#NO_APP
.LBB8_1:                                # Block address taken
                                        # %do.end49
                                        # Label of block must be emitted
	lbz 3, 16(28)
	cmplwi	3, 14
	bgt	0, .LBB8_36
# %bb.2:                                # %do.body59
	li 3, 2
	#APP
	mtmsrd 3, 1
	#NO_APP
	li 4, 3
	#APP
	lbz 3, 2354(13)
	#NO_APP
	#APP
	stb 4, 2354(13)
	#NO_APP
	andi. 3, 3, 1
	lbz 4, 2355(13)
	ori 4, 4, 1
	stb 4, 2355(13)
	bne	0, .LBB8_4
# %bb.3:                                # %if.then64
	addi 3, 13, 2328
	#APP
	std 1, 0(3)
	#NO_APP
.LBB8_4:                                # %if.then73
	#APP
.Ltmp18:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp19:
	.long	.Ltmp18-.Ltmp19
.Ltmp20:
	.long	.LBB8_5-.Ltmp20
.Ltmp21:
	.quad	(mmu_feature_keys+481)-.Ltmp21
	.text


	#NO_APP
.LBB8_5:                                # Block address taken
                                        # %mmu_has_feature.exit.i
                                        # Label of block must be emitted
	lbz 3, 16(28)
	lbz 4, 17(28)
	cmplwi	3, 0
	beq	0, .LBB8_11
# %bb.6:                                # %for.body.i.i.preheader
	addi 6, 3, -1
	addi 5, 28, 20
	clrldi	6, 6, 56
	addi 6, 6, 1
	mtctr 6
	li 6, 0
	.p2align	5
.LBB8_7:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	add 7, 6, 4
	rlwinm 7, 7, 2, 26, 29
	lwzx 7, 5, 7
	cmplwi	7, 1
	beq	0, .LBB8_16
# %bb.8:                                # %for.cond.i.i
                                        #   in Loop: Header=BB8_7 Depth=1
	addi 6, 6, 1
	bdnz .LBB8_7
# %bb.9:                                # %if.end6.i
	add 5, 4, 3
	cmplwi	3, 16
	li 6, 1
	rlwinm 5, 5, 2, 26, 29
	add 5, 28, 5
	stw 6, 20(5)
	bne	0, .LBB8_12
# %bb.10:                               # %if.then13.i
	addi 3, 4, 1
	clrlwi	3, 3, 28
	stb 3, 17(28)
	b .LBB8_13
.LBB8_11:                               # %if.end6.thread.i
	rlwinm 4, 4, 2, 26, 29
	li 5, 1
	add 4, 28, 4
	stw 5, 20(4)
.LBB8_12:                               # %if.else.i
	addi 3, 3, 1
	stb 3, 16(28)
.LBB8_13:                               # %if.then75
	ld 3, 1176(30)
	lis 4, 4096
	ori 4, 4, 1
	ld 3, 2064(3)
	cmpld	3, 4
	blt	0, .LBB8_16
# %bb.14:                               # %if.end.i
	lwz 3, 1100(30)
	cmpldi	3, 0
	beq	0, .LBB8_16
# %bb.15:                               # %if.end29.i
	extsw 29, 3
	mr	3, 30
	lis 4, 4096
	bl get_slice_psize
	nop
	extsw 3, 3
	addis 4, 2, .LC2@toc@ha
	li 6, 0
	li 7, 0
	ld 4, .LC2@toc@l(4)
	mulli 3, 3, 96
	add 3, 4, 3
	mr	4, 29
	ld 3, 88(3)
	ori 5, 3, 3200
	lis 3, 4096
	bl slb_insert_entry
.LBB8_16:                               # %if.end78
	ld 3, 32(30)
	rldicl 4, 3, 2, 62
	cmpldi	4, 2
	bgt	0, .LBB8_35
# %bb.17:                               # %if.then81
	#APP
.Ltmp22:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp23:
	.long	.Ltmp22-.Ltmp23
.Ltmp24:
	.long	.LBB8_20-.Ltmp24
.Ltmp25:
	.quad	(mmu_feature_keys+481)-.Ltmp25
	.text


	#NO_APP
# %bb.18:
	rldicr. 4, 3, 0, 23
	bc 12, 2, .LBB8_20
# %bb.19:
	ori 3, 4, 0
	b .LBB8_20
.LBB8_20:                               # Block address taken
                                        # %mmu_has_feature.exit.i109
                                        # Label of block must be emitted
	rldicl 5, 3, 36, 28
	lbz 3, 16(28)
	lbz 4, 17(28)
	cmplwi	3, 0
	beq	0, .LBB8_26
# %bb.21:                               # %for.body.i.i125.preheader
	addi 7, 3, -1
	addi 6, 28, 20
	clrldi	7, 7, 56
	addi 7, 7, 1
	mtctr 7
	li 7, 0
	.p2align	5
.LBB8_22:                               # %for.body.i.i125
                                        # =>This Inner Loop Header: Depth=1
	add 8, 7, 4
	rlwinm 8, 8, 2, 26, 29
	lwzx 8, 6, 8
	cmpld	5, 8
	beq	0, .LBB8_35
# %bb.23:                               # %for.cond.i.i117
                                        #   in Loop: Header=BB8_22 Depth=1
	addi 7, 7, 1
	bdnz .LBB8_22
# %bb.24:                               # %if.end6.i131
	add 6, 4, 3
	cmplwi	3, 16
	rlwinm 6, 6, 2, 26, 29
	add 6, 28, 6
	stw 5, 20(6)
	bne	0, .LBB8_27
# %bb.25:                               # %if.then13.i133
	addi 3, 4, 1
	clrlwi	3, 3, 28
	stb 3, 17(28)
	b .LBB8_28
.LBB8_26:                               # %if.end6.thread.i114
	rlwinm 4, 4, 2, 26, 29
	add 4, 28, 4
	stw 5, 20(4)
.LBB8_27:                               # %if.else.i135
	addi 3, 3, 1
	stb 3, 16(28)
.LBB8_28:                               # %if.then84
	ld 3, 1176(30)
	ld 29, 32(30)
	ld 3, 2064(3)
	cmpld	3, 29
	ble 0, .LBB8_35
# %bb.29:                               # %if.end.i143
	rldicl. 3, 29, 12, 52
	bne	0, .LBB8_37
# %bb.30:                               # %get_user_context.exit.i
	rotldi	4, 29, 15
	addi 3, 30, 1100
	rldic 4, 4, 3, 46
	lwzx 3, 4, 3
	cmpldi	3, 0
	beq	0, .LBB8_35
# %bb.31:                               # %if.end29.i152
	extsw 28, 3
	addis 3, 2, .LC3@toc@ha
	rldicl. 4, 29, 24, 40
	mr	4, 29
	ld 3, .LC3@toc@l(3)
	lwz 3, 0(3)
	bc 12, 2, .LBB8_33
# %bb.32:                               # %if.end29.i152
	ori 27, 3, 0
	b .LBB8_34
.LBB8_33:                               # %if.end29.i152
	li	27, 0
.LBB8_34:                               # %if.end29.i152
	mr	3, 30
	bl get_slice_psize
	nop
	extsw 3, 3
	addis 4, 2, .LC2@toc@ha
	extsw 6, 27
	li 7, 0
	ld 4, .LC2@toc@l(4)
	mulli 3, 3, 96
	add 3, 4, 3
	mr	4, 28
	ld 3, 88(3)
	ori 5, 3, 3200
	mr	3, 29
	bl slb_insert_entry
.LBB8_35:                               # Block address taken
                                        # %if.end88
                                        # Label of block must be emitted
	#APP
	isync
	#NO_APP
	li 3, 0
	bl arch_local_irq_restore
	nop
.LBB8_36:                               # %cleanup
	ld 30, 144(1)                           # 8-byte Folded Reload
	ld 29, 136(1)                           # 8-byte Folded Reload
	ld 28, 128(1)                           # 8-byte Folded Reload
	ld 27, 120(1)                           # 8-byte Folded Reload
	addi 1, 1, 160
	ld 0, 16(1)
	mtlr 0
	blr
.LBB8_37:                               # %if.end.i.i
	#APP
.Ltmp26:
	twui	0, 0
	.section	__ex_table,"a",@progbits
	.p2align	2, 0x0
.Ltmp27:
	.long	.Ltmp26-.Ltmp27
.Ltmp28:
	.long	.LBB8_35-.Ltmp28
	.text
	.section	__bug_table,"aw",@progbits
.Ltmp29:
.Ltmp30:
	.long	.Ltmp26-.Ltmp30
.Ltmp31:
	.long	.L.str.13-.Ltmp31
	.short	281
	.short	2305
.org .Ltmp29+12, 0
	.text


	#NO_APP
# %bb.38:                               # %do.end.i.i
	.long	0
	.quad	0
.Lfunc_end8:
	.size	slb_setup_new_exec, .Lfunc_end8-.Lfunc_begin8
                                        # -- End function
	.globl	preload_new_slb_context         # -- Begin function preload_new_slb_context
	.p2align	4
	.type	preload_new_slb_context,@function
	.section	.opd,"aw",@progbits
preload_new_slb_context:                # @preload_new_slb_context
	.p2align	3, 0x0
	.quad	.Lfunc_begin9
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin9:
# %bb.0:                                # %entry
	mflr 0
	stdu 1, -192(1)
	std 0, 208(1)
	std 23, 120(1)                          # 8-byte Folded Spill
	std 24, 128(1)                          # 8-byte Folded Spill
	std 25, 136(1)                          # 8-byte Folded Spill
	std 26, 144(1)                          # 8-byte Folded Spill
	std 27, 152(1)                          # 8-byte Folded Spill
	mr	27, 3
	std 28, 160(1)                          # 8-byte Folded Spill
	std 29, 168(1)                          # 8-byte Folded Spill
	std 30, 176(1)                          # 8-byte Folded Spill
	#APP
	ld 25, 2312(13)
	#NO_APP
	ld 29, 1624(25)
	ld 30, 264(29)
	#APP
	lbz 3, 2354(13)
	#NO_APP
	clrldi	3, 3, 63
	#APP
.Ltmp32:
	tdnei	3, 0
	.section	__ex_table,"a",@progbits
	.p2align	2, 0x0
.Ltmp33:
	.long	.Ltmp32-.Ltmp33
.Ltmp34:
	.long	.LBB9_1-.Ltmp34
	.text
	.section	__bug_table,"aw",@progbits
.Ltmp35:
.Ltmp36:
	.long	.Ltmp32-.Ltmp36
.Ltmp37:
	.long	.L.str-.Ltmp37
	.short	386
	.short	2305
.org .Ltmp35+12, 0
	.text


	#NO_APP
.LBB9_1:                                # Block address taken
                                        # %do.end49
                                        # Label of block must be emitted
	lbz 3, 16(25)
	cmplwi	3, 13
	bgt	0, .LBB9_62
# %bb.2:                                # %do.body59
	li 3, 2
	#APP
	mtmsrd 3, 1
	#NO_APP
	mr	28, 4
	li 4, 3
	#APP
	lbz 3, 2354(13)
	#NO_APP
	#APP
	stb 4, 2354(13)
	#NO_APP
	andi. 3, 3, 1
	lbz 4, 2355(13)
	ori 4, 4, 1
	stb 4, 2355(13)
	bne	0, .LBB9_4
# %bb.3:                                # %if.then64
	addi 3, 13, 2328
	#APP
	std 1, 0(3)
	#NO_APP
.LBB9_4:                                # %if.end68
	li 3, -16385
	rotldi	24, 3, 48
	rldicl 3, 27, 2, 62
	cmpldi	3, 2
	bgt	0, .LBB9_23
# %bb.5:                                # %if.then73
	mr	3, 27
	#APP
.Ltmp38:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp39:
	.long	.Ltmp38-.Ltmp39
.Ltmp40:
	.long	.LBB9_8-.Ltmp40
.Ltmp41:
	.quad	(mmu_feature_keys+481)-.Ltmp41
	.text


	#NO_APP
# %bb.6:
	rldicr. 3, 27, 0, 23
	bc 12, 2, .LBB9_7
	b .LBB9_8
.LBB9_7:
	addi 3, 27, 0
.LBB9_8:                                # Block address taken
                                        # %mmu_has_feature.exit.i
                                        # Label of block must be emitted
	rldicl 5, 3, 36, 28
	lbz 3, 16(25)
	lbz 4, 17(25)
	cmplwi	3, 0
	beq	0, .LBB9_14
# %bb.9:                                # %for.body.i.i.preheader
	addi 7, 3, -1
	addi 6, 25, 20
	clrldi	7, 7, 56
	addi 7, 7, 1
	mtctr 7
	li 7, 0
	.p2align	5
.LBB9_10:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	add 8, 7, 4
	rlwinm 8, 8, 2, 26, 29
	lwzx 8, 6, 8
	cmpld	5, 8
	beq	0, .LBB9_23
# %bb.11:                               # %for.cond.i.i
                                        #   in Loop: Header=BB9_10 Depth=1
	addi 7, 7, 1
	bdnz .LBB9_10
# %bb.12:                               # %if.end6.i
	add 6, 4, 3
	cmplwi	3, 16
	rlwinm 6, 6, 2, 26, 29
	add 6, 25, 6
	stw 5, 20(6)
	bne	0, .LBB9_15
# %bb.13:                               # %if.then13.i
	addi 3, 4, 1
	clrlwi	3, 3, 28
	stb 3, 17(25)
	b .LBB9_16
.LBB9_14:                               # %if.end6.thread.i
	rlwinm 4, 4, 2, 26, 29
	add 4, 25, 4
	stw 5, 20(4)
.LBB9_15:                               # %if.else.i
	addi 3, 3, 1
	stb 3, 16(25)
.LBB9_16:                               # %if.then75
	ld 3, 1176(29)
	ld 3, 2064(3)
	cmpld	3, 27
	ble 0, .LBB9_23
# %bb.17:                               # %if.end.i
	rldicl. 3, 27, 12, 52
	bne	0, .LBB9_63
# %bb.18:                               # %get_user_context.exit.i
	rotldi	4, 27, 15
	addi 3, 29, 1100
	rldic 4, 4, 3, 46
	lwzx 3, 4, 3
	cmpldi	3, 0
	beq	0, .LBB9_23
# %bb.19:                               # %if.end29.i
	extsw 26, 3
	addis 3, 2, .LC3@toc@ha
	rldicl. 4, 27, 24, 40
	mr	4, 27
	ld 3, .LC3@toc@l(3)
	lwz 3, 0(3)
	bc 12, 2, .LBB9_21
# %bb.20:                               # %if.end29.i
	ori 23, 3, 0
	b .LBB9_22
.LBB9_21:                               # %if.end29.i
	li	23, 0
.LBB9_22:                               # %if.end29.i
	mr	3, 29
	bl get_slice_psize
	nop
	extsw 3, 3
	addis 4, 2, .LC2@toc@ha
	extsw 6, 23
	li 7, 0
	ld 4, .LC2@toc@l(4)
	mulli 3, 3, 96
	add 3, 4, 3
	mr	4, 26
	ld 3, 88(3)
	ori 5, 3, 3200
	mr	3, 27
	bl slb_insert_entry
.LBB9_23:                               # Block address taken
                                        # %if.end78
                                        # Label of block must be emitted
	cmpld	28, 24
	bgt	0, .LBB9_42
# %bb.24:                               # %if.then81
	mr	3, 28
	#APP
.Ltmp42:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp43:
	.long	.Ltmp42-.Ltmp43
.Ltmp44:
	.long	.LBB9_27-.Ltmp44
.Ltmp45:
	.quad	(mmu_feature_keys+481)-.Ltmp45
	.text


	#NO_APP
# %bb.25:
	rldicr. 3, 28, 0, 23
	bc 12, 2, .LBB9_26
	b .LBB9_27
.LBB9_26:
	addi 3, 28, 0
.LBB9_27:                               # Block address taken
                                        # %mmu_has_feature.exit.i127
                                        # Label of block must be emitted
	rldicl 5, 3, 36, 28
	lbz 3, 16(25)
	lbz 4, 17(25)
	cmplwi	3, 0
	beq	0, .LBB9_33
# %bb.28:                               # %for.body.i.i144.preheader
	addi 7, 3, -1
	addi 6, 25, 20
	clrldi	7, 7, 56
	addi 7, 7, 1
	mtctr 7
	li 7, 0
	.p2align	5
.LBB9_29:                               # %for.body.i.i144
                                        # =>This Inner Loop Header: Depth=1
	add 8, 7, 4
	rlwinm 8, 8, 2, 26, 29
	lwzx 8, 6, 8
	cmpld	5, 8
	beq	0, .LBB9_42
# %bb.30:                               # %for.cond.i.i136
                                        #   in Loop: Header=BB9_29 Depth=1
	addi 7, 7, 1
	bdnz .LBB9_29
# %bb.31:                               # %if.end6.i151
	add 6, 4, 3
	cmplwi	3, 16
	rlwinm 6, 6, 2, 26, 29
	add 6, 25, 6
	stw 5, 20(6)
	bne	0, .LBB9_34
# %bb.32:                               # %if.then13.i153
	addi 3, 4, 1
	clrlwi	3, 3, 28
	stb 3, 17(25)
	b .LBB9_35
.LBB9_33:                               # %if.end6.thread.i133
	rlwinm 4, 4, 2, 26, 29
	add 4, 25, 4
	stw 5, 20(4)
.LBB9_34:                               # %if.else.i155
	addi 3, 3, 1
	stb 3, 16(25)
.LBB9_35:                               # %if.then83
	ld 3, 1176(29)
	ld 3, 2064(3)
	cmpld	3, 28
	ble 0, .LBB9_42
# %bb.36:                               # %if.end.i163
	rldicl. 3, 28, 12, 52
	bne	0, .LBB9_65
# %bb.37:                               # %get_user_context.exit.i169
	rotldi	4, 28, 15
	addi 3, 29, 1100
	rldic 4, 4, 3, 46
	lwzx 3, 4, 3
	cmpldi	3, 0
	beq	0, .LBB9_42
# %bb.38:                               # %if.end29.i178
	extsw 27, 3
	addis 3, 2, .LC3@toc@ha
	rldicl. 4, 28, 24, 40
	mr	4, 28
	ld 3, .LC3@toc@l(3)
	lwz 3, 0(3)
	bc 12, 2, .LBB9_40
# %bb.39:                               # %if.end29.i178
	ori 26, 3, 0
	b .LBB9_41
.LBB9_40:                               # %if.end29.i178
	li	26, 0
.LBB9_41:                               # %if.end29.i178
	mr	3, 29
	bl get_slice_psize
	nop
	extsw 3, 3
	addis 4, 2, .LC2@toc@ha
	extsw 6, 26
	li 7, 0
	ld 4, .LC2@toc@l(4)
	mulli 3, 3, 96
	add 3, 4, 3
	mr	4, 27
	ld 3, 88(3)
	ori 5, 3, 3200
	mr	3, 28
	bl slb_insert_entry
.LBB9_42:                               # Block address taken
                                        # %if.end86
                                        # Label of block must be emitted
	li 3, 1
	li 4, 5
	rldic 3, 3, 62, 1
	rotldi	4, 4, 62
	add 3, 30, 3
	cmpld	3, 4
	blt	0, .LBB9_61
# %bb.43:                               # %if.then90
	mr	3, 30
	#APP
.Ltmp46:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp47:
	.long	.Ltmp46-.Ltmp47
.Ltmp48:
	.long	.LBB9_46-.Ltmp48
.Ltmp49:
	.quad	(mmu_feature_keys+481)-.Ltmp49
	.text


	#NO_APP
# %bb.44:
	rldicr. 3, 30, 0, 23
	bc 12, 2, .LBB9_45
	b .LBB9_46
.LBB9_45:
	addi 3, 30, 0
.LBB9_46:                               # Block address taken
                                        # %mmu_has_feature.exit.i189
                                        # Label of block must be emitted
	rldicl 5, 3, 36, 28
	lbz 3, 16(25)
	lbz 4, 17(25)
	cmplwi	3, 0
	beq	0, .LBB9_52
# %bb.47:                               # %for.body.i.i206.preheader
	addi 7, 3, -1
	addi 6, 25, 20
	clrldi	7, 7, 56
	addi 7, 7, 1
	mtctr 7
	li 7, 0
	.p2align	5
.LBB9_48:                               # %for.body.i.i206
                                        # =>This Inner Loop Header: Depth=1
	add 8, 7, 4
	rlwinm 8, 8, 2, 26, 29
	lwzx 8, 6, 8
	cmpld	5, 8
	beq	0, .LBB9_61
# %bb.49:                               # %for.cond.i.i198
                                        #   in Loop: Header=BB9_48 Depth=1
	addi 7, 7, 1
	bdnz .LBB9_48
# %bb.50:                               # %if.end6.i213
	add 6, 4, 3
	cmplwi	3, 16
	rlwinm 6, 6, 2, 26, 29
	add 6, 25, 6
	stw 5, 20(6)
	bne	0, .LBB9_53
# %bb.51:                               # %if.then13.i215
	addi 3, 4, 1
	clrlwi	3, 3, 28
	stb 3, 17(25)
	b .LBB9_54
.LBB9_52:                               # %if.end6.thread.i195
	rlwinm 4, 4, 2, 26, 29
	add 4, 25, 4
	stw 5, 20(4)
.LBB9_53:                               # %if.else.i217
	addi 3, 3, 1
	stb 3, 16(25)
.LBB9_54:                               # %if.then92
	ld 3, 1176(29)
	ld 3, 2064(3)
	cmpld	3, 30
	ble 0, .LBB9_61
# %bb.55:                               # %if.end.i225
	rldicl. 3, 30, 12, 52
	bne	0, .LBB9_67
# %bb.56:                               # %get_user_context.exit.i231
	rotldi	4, 30, 15
	addi 3, 29, 1100
	rldic 4, 4, 3, 46
	lwzx 3, 4, 3
	cmpldi	3, 0
	beq	0, .LBB9_61
# %bb.57:                               # %if.end29.i240
	extsw 28, 3
	addis 3, 2, .LC3@toc@ha
	rldicl. 4, 30, 24, 40
	mr	4, 30
	ld 3, .LC3@toc@l(3)
	lwz 3, 0(3)
	bc 12, 2, .LBB9_59
# %bb.58:                               # %if.end29.i240
	ori 27, 3, 0
	b .LBB9_60
.LBB9_59:                               # %if.end29.i240
	li	27, 0
.LBB9_60:                               # %if.end29.i240
	mr	3, 29
	bl get_slice_psize
	nop
	extsw 3, 3
	addis 4, 2, .LC2@toc@ha
	extsw 6, 27
	li 7, 0
	ld 4, .LC2@toc@l(4)
	mulli 3, 3, 96
	add 3, 4, 3
	mr	4, 28
	ld 3, 88(3)
	ori 5, 3, 3200
	mr	3, 30
	bl slb_insert_entry
.LBB9_61:                               # Block address taken
                                        # %if.end95
                                        # Label of block must be emitted
	#APP
	isync
	#NO_APP
	li 3, 0
	bl arch_local_irq_restore
	nop
.LBB9_62:                               # %cleanup
	ld 30, 176(1)                           # 8-byte Folded Reload
	ld 29, 168(1)                           # 8-byte Folded Reload
	ld 28, 160(1)                           # 8-byte Folded Reload
	ld 27, 152(1)                           # 8-byte Folded Reload
	ld 26, 144(1)                           # 8-byte Folded Reload
	ld 25, 136(1)                           # 8-byte Folded Reload
	ld 24, 128(1)                           # 8-byte Folded Reload
	ld 23, 120(1)                           # 8-byte Folded Reload
	addi 1, 1, 192
	ld 0, 16(1)
	mtlr 0
	blr
.LBB9_63:                               # %if.end.i.i
	#APP
.Ltmp50:
	twui	0, 0
	.section	__ex_table,"a",@progbits
	.p2align	2, 0x0
.Ltmp51:
	.long	.Ltmp50-.Ltmp51
.Ltmp52:
	.long	.LBB9_23-.Ltmp52
	.text
	.section	__bug_table,"aw",@progbits
.Ltmp53:
.Ltmp54:
	.long	.Ltmp50-.Ltmp54
.Ltmp55:
	.long	.L.str.13-.Ltmp55
	.short	281
	.short	2305
.org .Ltmp53+12, 0
	.text


	#NO_APP
# %bb.64:                               # %do.end.i.i
.LBB9_65:                               # %if.end.i.i164
	#APP
.Ltmp56:
	twui	0, 0
	.section	__ex_table,"a",@progbits
	.p2align	2, 0x0
.Ltmp57:
	.long	.Ltmp56-.Ltmp57
.Ltmp58:
	.long	.LBB9_42-.Ltmp58
	.text
	.section	__bug_table,"aw",@progbits
.Ltmp59:
.Ltmp60:
	.long	.Ltmp56-.Ltmp60
.Ltmp61:
	.long	.L.str.13-.Ltmp61
	.short	281
	.short	2305
.org .Ltmp59+12, 0
	.text


	#NO_APP
# %bb.66:                               # %do.end.i.i165
.LBB9_67:                               # %if.end.i.i226
	#APP
.Ltmp62:
	twui	0, 0
	.section	__ex_table,"a",@progbits
	.p2align	2, 0x0
.Ltmp63:
	.long	.Ltmp62-.Ltmp63
.Ltmp64:
	.long	.LBB9_61-.Ltmp64
	.text
	.section	__bug_table,"aw",@progbits
.Ltmp65:
.Ltmp66:
	.long	.Ltmp62-.Ltmp66
.Ltmp67:
	.long	.L.str.13-.Ltmp67
	.short	281
	.short	2305
.org .Ltmp65+12, 0
	.text


	#NO_APP
# %bb.68:                               # %do.end.i.i227
	.long	0
	.quad	0
.Lfunc_end9:
	.size	preload_new_slb_context, .Lfunc_end9-.Lfunc_begin9
                                        # -- End function
	.globl	switch_slb                      # -- Begin function switch_slb
	.p2align	4
	.type	switch_slb,@function
	.section	.opd,"aw",@progbits
switch_slb:                             # @switch_slb
	.p2align	3, 0x0
	.quad	.Lfunc_begin10
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin10:
# %bb.0:                                # %entry
	mflr 0
	stdu 1, -208(1)
	std 0, 224(1)
	std 20, 112(1)                          # 8-byte Folded Spill
	std 21, 120(1)                          # 8-byte Folded Spill
	std 22, 128(1)                          # 8-byte Folded Spill
	std 23, 136(1)                          # 8-byte Folded Spill
	std 24, 144(1)                          # 8-byte Folded Spill
	std 25, 152(1)                          # 8-byte Folded Spill
	std 26, 160(1)                          # 8-byte Folded Spill
	std 27, 168(1)                          # 8-byte Folded Spill
	std 28, 176(1)                          # 8-byte Folded Spill
	std 29, 184(1)                          # 8-byte Folded Spill
	mr	29, 3
	li 3, 2
	std 30, 192(1)                          # 8-byte Folded Spill
	#APP
	mtmsrd 3, 1
	#NO_APP
	mr	30, 4
	#APP
	lbz 3, 2354(13)
	#NO_APP
	li 4, 3
	#APP
	stb 4, 2354(13)
	#NO_APP
	andi. 3, 3, 1
	lbz 4, 2355(13)
	ori 4, 4, 1
	stb 4, 2355(13)
	bne	0, .LBB10_2
# %bb.1:                                # %if.then
	addi 3, 13, 2328
	#APP
	std 1, 0(3)
	#NO_APP
.LBB10_2:                               # %if.end
	#APP
	isync
	#NO_APP
	#APP
.Ltmp68:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp69:
	.long	.Ltmp68-.Ltmp69
.Ltmp70:
	.long	.LBB10_35-.Ltmp70
.Ltmp71:
	.quad	stress_slb_key-.Ltmp71
	.text


	#NO_APP
# %bb.3:                                # %if.else
	#APP
.Ltmp72:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp73:
	.long	.Ltmp72-.Ltmp73
.Ltmp74:
	.long	.LBB10_36-.Ltmp74
.Ltmp75:
	.quad	(cpu_feature_keys+273)-.Ltmp75
	.text


	#NO_APP
# %bb.4:                                # %if.then9
	#APP
	.long	2086667236
	#NO_APP
.LBB10_5:                               # %if.end31
	lwz 3, 216(13)
	stw 3, 212(13)
	mr	3, 30
	bl copy_mm_to_paca
	nop
	lbz 3, 3944(29)
	addi 26, 29, 20
	addi 3, 3, 1
	andi. 4, 3, 256
	stb 3, 3944(29)
	beq	0, .LBB10_8
# %bb.6:                                # %if.then36
	ld 3, 3312(29)
	cmpldi	3, 0
	beq	0, .LBB10_9
# %bb.7:                                # %cond.true
	ld 3, 256(3)
	b .LBB10_10
.LBB10_8:                               # %if.end31.if.end42_crit_edge
	lbz 3, 16(29)
	andi. 3, 3, 255
	bne	0, .LBB10_23
	b .LBB10_34
.LBB10_9:
	li 3, 0
.LBB10_10:                              # %cond.end
	lbz 4, 16(29)
	cmplwi	4, 0
	beq	0, .LBB10_12
# %bb.11:                               # %if.end.i
	addi 4, 4, -1
	stb 4, 16(29)
	lbz 4, 17(29)
	addi 4, 4, 1
	clrlwi	4, 4, 28
	stb 4, 17(29)
.LBB10_12:                              # %preload_age.exit
	#APP
.Ltmp76:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp77:
	.long	.Ltmp76-.Ltmp77
.Ltmp78:
	.long	.LBB10_15-.Ltmp78
.Ltmp79:
	.quad	(mmu_feature_keys+481)-.Ltmp79
	.text


	#NO_APP
# %bb.13:
	rldicr. 4, 3, 0, 23
	bc 12, 2, .LBB10_15
# %bb.14:
	ori 3, 4, 0
	b .LBB10_15
.LBB10_15:                              # Block address taken
                                        # %mmu_has_feature.exit.i
                                        # Label of block must be emitted
	rldicl 5, 3, 36, 28
	lbz 3, 16(29)
	lbz 4, 17(29)
	cmplwi	3, 0
	beq	0, .LBB10_21
# %bb.16:                               # %for.body.i.i.preheader
	addi 6, 3, -1
	clrldi	6, 6, 56
	addi 6, 6, 1
	mtctr 6
	li 6, 0
	.p2align	5
.LBB10_17:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	add 7, 6, 4
	rlwinm 7, 7, 2, 26, 29
	lwzx 7, 26, 7
	cmpld	5, 7
	beq	0, .LBB10_23
# %bb.18:                               # %for.cond.i.i
                                        #   in Loop: Header=BB10_17 Depth=1
	addi 6, 6, 1
	bdnz .LBB10_17
# %bb.19:                               # %if.end6.i
	add 6, 4, 3
	cmplwi	3, 16
	rlwinm 6, 6, 2, 26, 29
	add 6, 29, 6
	stw 5, 20(6)
	bne	0, .LBB10_22
# %bb.20:                               # %if.then13.i
	addi 3, 4, 1
	clrlwi	3, 3, 28
	stb 3, 17(29)
	b .LBB10_23
.LBB10_21:                              # %if.end6.thread.i
	rlwinm 4, 4, 2, 26, 29
	add 4, 29, 4
	stw 5, 20(4)
.LBB10_22:                              # %if.else.i
	addi 3, 3, 1
	stb 3, 16(29)
	andi. 3, 3, 255
	beq	0, .LBB10_34
.LBB10_23:                              # %for.body48.lr.ph
	addis 3, 2, .LC3@toc@ha
	addi 25, 30, 1096
	li 24, 0
	li 21, 0
	ld 23, .LC3@toc@l(3)
	addis 3, 2, .LC2@toc@ha
	ld 22, .LC2@toc@l(3)
	b .LBB10_25
	.p2align	4
.LBB10_24:                              # Block address taken
                                        # %slb_allocate_user.exit
                                        #   in Loop: Header=BB10_25 Depth=1
                                        # Label of block must be emitted
	lbz 4, 16(29)
	addi 21, 21, 1
	clrlwi	3, 21, 24
	cmplw	3, 4
	bge 0, .LBB10_34
.LBB10_25:                              # %for.body48
                                        # =>This Inner Loop Header: Depth=1
	lbz 3, 17(29)
	ld 4, 1176(30)
	add 3, 3, 21
	ld 4, 2064(4)
	rlwinm 3, 3, 2, 26, 29
	lwzx 3, 26, 3
	sldi 28, 3, 28
	cmpld	4, 28
	ble 0, .LBB10_24
# %bb.26:                               # %if.end.i97
                                        #   in Loop: Header=BB10_25 Depth=1
	andis. 4, 3, 65280
	bne	0, .LBB10_32
# %bb.27:                               # %get_user_context.exit.i
                                        #   in Loop: Header=BB10_25 Depth=1
	rotldi	4, 3, 43
	rldic 4, 4, 3, 18
	add 4, 25, 4
	lwz 4, 4(4)
	cmpldi	4, 0
	beq	0, .LBB10_24
# %bb.28:                               # %if.end29.i
                                        #   in Loop: Header=BB10_25 Depth=1
	extsw 27, 4
	lwz 4, 0(23)
	cmplwi	3, 4095
	mr	3, 30
	bc 12, 1, .LBB10_30
# %bb.29:                               # %if.end29.i
                                        #   in Loop: Header=BB10_25 Depth=1
	ori 20, 24, 0
	b .LBB10_31
.LBB10_30:                              # %if.end29.i
                                        #   in Loop: Header=BB10_25 Depth=1
	addi 20, 4, 0
.LBB10_31:                              # %if.end29.i
                                        #   in Loop: Header=BB10_25 Depth=1
	mr	4, 28
	bl get_slice_psize
	nop
	extsw 3, 3
	extsw 6, 20
	mr	4, 27
	li 7, 0
	mulli 3, 3, 96
	add 3, 22, 3
	ld 3, 88(3)
	ori 5, 3, 3200
	mr	3, 28
	bl slb_insert_entry
	b .LBB10_24
.LBB10_32:                              # %if.end.i.i
                                        #   in Loop: Header=BB10_25 Depth=1
	#APP
.Ltmp80:
	twui	0, 0
	.section	__ex_table,"a",@progbits
	.p2align	2, 0x0
.Ltmp81:
	.long	.Ltmp80-.Ltmp81
.Ltmp82:
	.long	.LBB10_24-.Ltmp82
	.text
	.section	__bug_table,"aw",@progbits
.Ltmp83:
.Ltmp84:
	.long	.Ltmp80-.Ltmp84
.Ltmp85:
	.long	.L.str.13-.Ltmp85
	.short	281
	.short	2305
.org .Ltmp83+12, 0
	.text


	#NO_APP
# %bb.33:                               # %do.end.i.i
.LBB10_34:                              # %for.end56
	#APP
	isync
	#NO_APP
	ld 30, 192(1)                           # 8-byte Folded Reload
	ld 29, 184(1)                           # 8-byte Folded Reload
	ld 28, 176(1)                           # 8-byte Folded Reload
	ld 27, 168(1)                           # 8-byte Folded Reload
	ld 26, 160(1)                           # 8-byte Folded Reload
	ld 25, 152(1)                           # 8-byte Folded Reload
	ld 24, 144(1)                           # 8-byte Folded Reload
	ld 23, 136(1)                           # 8-byte Folded Reload
	ld 22, 128(1)                           # 8-byte Folded Reload
	ld 21, 120(1)                           # 8-byte Folded Reload
	ld 20, 112(1)                           # 8-byte Folded Reload
	addi 1, 1, 208
	ld 0, 16(1)
	mtlr 0
	blr
.LBB10_35:                              # Block address taken
                                        # %if.then7
                                        # Label of block must be emitted
	ld 3, 64(13)
	ld 4, 32(3)
	ld 3, 40(3)
	#APP
	.long	2080375780
	slbmte 3, 4

	#NO_APP
	li 3, 0
	#APP
	isync
	#NO_APP
	stb 3, 210(13)
	li 3, 3
	stw 3, 216(13)
	b .LBB10_5
.LBB10_36:                              # Block address taken
                                        # %if.else10
                                        # Label of block must be emitted
	lbz 3, 210(13)
	#APP
.Ltmp86:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp87:
	.long	.Ltmp86-.Ltmp87
.Ltmp88:
	.long	.LBB10_39-.Ltmp88
.Ltmp89:
	.quad	(mmu_feature_keys+401)-.Ltmp89
	.text


	#NO_APP
.LBB10_37:                              # %if.else26
	ld 3, 64(13)
	ld 4, 32(3)
	ld 3, 40(3)
	#APP
	.long	2082472932
	slbmte 3, 4

	#NO_APP
	li 3, 3
	#APP
	isync
	#NO_APP
	stw 3, 216(13)
.LBB10_38:                              # %if.end28
	li 3, 0
	stb 3, 210(13)
	b .LBB10_5
.LBB10_39:                              # Block address taken
                                        # %mmu_has_feature.exit
                                        # Label of block must be emitted
	cmplwi	3, 8
	bgt	0, .LBB10_37
# %bb.40:                               # %for.cond.preheader
	cmplwi	3, 0
	beq	0, .LBB10_46
# %bb.41:                               # %for.body.preheader
	addis 5, 2, .LC3@toc@ha
	li 4, 220
	li 6, 0
	mtctr 3
	ld 5, .LC3@toc@l(5)
.LBB10_42:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	lwzx 7, 13, 4
	lwz 8, 0(5)
	addi 4, 4, 4
	slwi 8, 8, 25
	cmplwi	7, 4095
	sldi 9, 7, 28
	bc 12, 1, .LBB10_44
# %bb.43:                               # %for.body
                                        #   in Loop: Header=BB10_42 Depth=1
	ori 7, 6, 0
	b .LBB10_45
.LBB10_44:                              # %for.body
                                        #   in Loop: Header=BB10_42 Depth=1
	addi 7, 8, 0
.LBB10_45:                              # %for.body
                                        #   in Loop: Header=BB10_42 Depth=1
	extsw 7, 7
	or 7, 9, 7
	oris 7, 7, 2048
	#APP
	slbie 7
	#NO_APP
	bdnz .LBB10_42
.LBB10_46:                              # %for.end
	#APP
.Ltmp90:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp91:
	.long	.Ltmp90-.Ltmp91
.Ltmp92:
	.long	.LBB10_47-.Ltmp92
.Ltmp93:
	.quad	(cpu_feature_keys+257)-.Ltmp93
	.text


	#NO_APP
	b .LBB10_38
.LBB10_47:                              # Block address taken
                                        # %cpu_has_feature.exit78
                                        # Label of block must be emitted
	cmplwi	3, 1
	bne	0, .LBB10_38
# %bb.48:                               # %if.then24
	addis 5, 2, .LC3@toc@ha
	lwz 3, 220(13)
	ld 5, .LC3@toc@l(5)
	sldi 4, 3, 28
	cmplwi	3, 4095
	li 3, 0
	lwz 5, 0(5)
	slwi 5, 5, 25
	bc 12, 1, .LBB10_49
	b .LBB10_50
.LBB10_49:                              # %if.then24
	addi 3, 5, 0
.LBB10_50:                              # %if.then24
	extsw 3, 3
	or 3, 4, 3
	oris 3, 3, 2048
	#APP
	slbie 3
	#NO_APP
	b .LBB10_38
	.long	0
	.quad	0
.Lfunc_end10:
	.size	switch_slb, .Lfunc_end10-.Lfunc_begin10
                                        # -- End function
	.globl	slb_set_size                    # -- Begin function slb_set_size
	.p2align	4
	.type	slb_set_size,@function
	.section	.opd,"aw",@progbits
slb_set_size:                           # @slb_set_size
	.p2align	3, 0x0
	.quad	.Lfunc_begin11
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin11:
# %bb.0:                                # %entry
	addis 4, 2, .LC0@toc@ha
	ld 4, .LC0@toc@l(4)
	sth 3, 0(4)
	blr
	.long	0
	.quad	0
.Lfunc_end11:
	.size	slb_set_size, .Lfunc_end11-.Lfunc_begin11
                                        # -- End function
	.globl	slb_initialize                  # -- Begin function slb_initialize
	.p2align	4
	.type	slb_initialize,@function
	.section	.opd,"aw",@progbits
slb_initialize:                         # @slb_initialize
	.p2align	3, 0x0
	.quad	.Lfunc_begin12
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin12:
# %bb.0:                                # %entry
	addis 3, 2, .LC4@toc@ha
	addis 5, 2, .LC5@toc@ha
	addis 4, 2, .LC2@toc@ha
	std 26, -48(1)                          # 8-byte Folded Spill
	std 27, -40(1)                          # 8-byte Folded Spill
	ld 3, .LC4@toc@l(3)
	ld 5, .LC5@toc@l(5)
	ld 4, .LC2@toc@l(4)
	std 28, -32(1)                          # 8-byte Folded Spill
	std 29, -24(1)                          # 8-byte Folded Spill
	std 30, -16(1)                          # 8-byte Folded Spill
	lwa 3, 0(3)
	lwa 5, 0(5)
	mulli 3, 3, 96
	mulli 5, 5, 96
	add 3, 4, 3
	add 4, 4, 5
	lhz 4, 94(4)
	ld 3, 88(3)
	ori 4, 4, 1024
	sth 4, 208(13)
	addis 4, 2, slb_initialize.slb_encoding_inited@toc@ha
	lbz 5, slb_initialize.slb_encoding_inited@toc@l(4)
	cmplwi	5, 0
	bne	0, .LBB12_2
# %bb.1:                                # %if.then
	addi 4, 4, slb_initialize.slb_encoding_inited@toc@l
	li 5, 1
	stb 5, 0(4)
.LBB12_2:                               # %if.end
	li 4, 1
	ori 3, 3, 1024
	li 10, 65
	stb 4, 211(13)
	li 4, 3
	stw 4, 216(13)
	lwz 4, 216(13)
	stw 4, 212(13)
	li 4, 0
	#APP
	isync
	#NO_APP
	#APP
	slbmte 4, 4
	#NO_APP
	addis 4, 2, .LC6@toc@ha
	#APP
	isync
	slbia
	isync
	#NO_APP
	ld 5, .LC6@toc@l(4)
	ld 9, 64(13)
	li 4, 0
	lwz 6, 0(5)
	std 4, 16(9)
	li 4, 65
	#APP
.Ltmp94:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp95:
	.long	.Ltmp94-.Ltmp95
.Ltmp96:
	.long	.LBB12_4-.Ltmp96
.Ltmp97:
	.quad	(mmu_feature_keys+209)-.Ltmp97
	.text


	#NO_APP
# %bb.3:
	li 10, 68
.LBB12_4:                               # Block address taken
                                        # %mmu_has_feature.exit.i.i.i.i.i
                                        # Label of block must be emitted
	lis 7, 191
	addi 12, 10, -40
	li 8, -1
	addi 10, 10, -28
	cmplwi	6, 0
	sld 30, 8, 12
	sld 27, 8, 10
	clrldi	0, 12, 32
	clrldi	28, 10, 32
	ori 11, 7, 20697
	not	29, 30
	not	26, 27
	bc 12, 2, .LBB12_5
	b .LBB12_6
.LBB12_5:                               # %mmu_has_feature.exit.i.i.i.i.i
	addi 0, 28, 0
.LBB12_6:                               # %mmu_has_feature.exit.i.i.i.i.i
	rldic 7, 11, 9, 31
	rldic 11, 11, 21, 19
	bc 12, 2, .LBB12_7
	b .LBB12_8
.LBB12_7:                               # %mmu_has_feature.exit.i.i.i.i.i
	addi 29, 26, 0
.LBB12_8:                               # %mmu_has_feature.exit.i.i.i.i.i
	srd 12, 7, 12
	andc 30, 7, 30
	srd 10, 11, 10
	andc 27, 11, 27
	or 12, 30, 12
	or 10, 27, 10
	li 30, 24
	li 27, 12
	bc 12, 2, .LBB12_10
# %bb.9:                                # %mmu_has_feature.exit.i.i.i.i.i
	ori 10, 30, 0
	b .LBB12_11
.LBB12_10:                              # %mmu_has_feature.exit.i.i.i.i.i
	addi 12, 10, 0
	addi 10, 27, 0
.LBB12_11:                              # %mmu_has_feature.exit.i.i.i.i.i
	addi 30, 12, 1
	srd 0, 30, 0
	add 12, 0, 12
	and 12, 12, 29
	sld 0, 12, 10
	sldi 12, 6, 62
	or 12, 12, 3
	or 0, 0, 12
	std 0, 24(9)
	lis 0, 8192
	ori 0, 0, 3
	rotldi	0, 0, 62
	std 0, 16(9)
	#APP
.Ltmp98:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp99:
	.long	.Ltmp98-.Ltmp99
.Ltmp100:
	.long	.LBB12_13-.Ltmp100
.Ltmp101:
	.quad	(mmu_feature_keys+209)-.Ltmp101
	.text


	#NO_APP
# %bb.12:
	li 4, 68
.LBB12_13:                              # Block address taken
                                        # %mmu_has_feature.exit.i.i.i.i
                                        # Label of block must be emitted
	cmplwi	6, 0
	addi 6, 4, -40
	addi 4, 4, -28
	sld 30, 8, 6
	clrldi	9, 6, 32
	srd 6, 7, 6
	sld 8, 8, 4
	andc 7, 7, 30
	not	29, 30
	not	30, 8
	andc 8, 11, 8
	or 6, 7, 6
	clrldi	7, 4, 32
	srd 4, 11, 4
	or 4, 8, 4
	bc 12, 2, .LBB12_15
# %bb.14:                               # %mmu_has_feature.exit.i.i.i.i
	ori 4, 6, 0
	ori 6, 9, 0
	ori 7, 29, 0
	b .LBB12_16
.LBB12_15:                              # %mmu_has_feature.exit.i.i.i.i
	addi 6, 7, 0
	addi 7, 30, 0
.LBB12_16:                              # %mmu_has_feature.exit.i.i.i.i
	addi 8, 4, 1
	srd 6, 8, 6
	add 4, 6, 4
	li 6, 1
	and 4, 4, 7
	sld 4, 4, 10
	or 4, 4, 12
	#APP
	slbmte 4, 0
	#NO_APP
	ld 4, 64(13)
	std 6, 32(4)
	addis 6, 2, .LC7@toc@ha
	lhz 4, 10(13)
	ld 6, .LC7@toc@l(6)
	lwz 6, 0(6)
	cmplw	6, 4
	beq	0, .LBB12_43
# %bb.17:                               # %land.lhs.true
	lwz 5, 0(5)
	li 4, 3
	li 6, -1
	lis 7, -4096
	rldic 10, 4, 62, 0
	ld 4, 2320(13)
	rldic 6, 6, 40, 0
	cmplwi	5, 0
	bc 12, 2, .LBB12_18
	b .LBB12_19
.LBB12_18:                              # %land.lhs.true
	addi 6, 7, 0
.LBB12_19:                              # %land.lhs.true
	and 6, 6, 4
	cmpld	6, 10
	ble 0, .LBB12_43
# %bb.20:                               # %if.end.i.i.i.i.i.i
	li 7, 6145
	rldicr 12, 4, 0, 3
	li 9, 0
	li 8, 8
	rldic 11, 7, 51, 0
	ld 7, 64(13)
	cmpld 5, 12, 10
	cmpld 1, 4, 11
	std 9, 32(7)
	bne	5, .LBB12_24
# %bb.21:                               # %if.end6.i.i.i.i.i.i
	bge 1, .LBB12_23
# %bb.22:                               # %if.then.i.i.i.i.i
	rldicl 8, 4, 15, 51
	addi 8, 8, 1
	b .LBB12_24
.LBB12_23:                              # %do.end.i.i.i.i.i.i
	li 8, 2047
	rldic 8, 8, 51, 2
	add 8, 4, 8
	rldicl 8, 8, 15, 49
	addi 8, 8, 5
.LBB12_24:                              # %get_kernel_context.exit.i.i.i.i
	rldicl 10, 4, 12, 52
	rldicl. 10, 10, 52, 2
	bne	0, .LBB12_30
# %bb.25:                               # %if.end.i.i.i.i.i
	li 9, 65
	#APP
.Ltmp102:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp103:
	.long	.Ltmp102-.Ltmp103
.Ltmp104:
	.long	.LBB12_27-.Ltmp104
.Ltmp105:
	.quad	(mmu_feature_keys+209)-.Ltmp105
	.text


	#NO_APP
# %bb.26:
	li 9, 68
.LBB12_27:                              # Block address taken
                                        # %mmu_has_feature.exit.i.i.i.i.i24
                                        # Label of block must be emitted
	lis 10, 191
	rotldi	11, 4, 24
	addi 12, 9, -40
	li 0, -1
	cmplwi 6, 5, 0
	rldimi 11, 8, 9, 0
	sld 30, 0, 12
	ori 10, 10, 20697
	mulld 11, 11, 10
	srd 29, 11, 12
	andc 11, 11, 30
	add 11, 11, 29
	addi 29, 11, 1
	srd 12, 29, 12
	add 11, 12, 11
	rotldi	12, 4, 36
	rldimi 12, 8, 21, 0
	addi 8, 9, -28
	andc 11, 11, 30
	sld 9, 0, 8
	mulld 10, 12, 10
	srd 12, 10, 8
	andc 10, 10, 9
	add 10, 10, 12
	addi 12, 10, 1
	srd 8, 12, 8
	add 8, 8, 10
	andc 8, 8, 9
	bc 12, 26, .LBB12_29
# %bb.28:                               # %mmu_has_feature.exit.i.i.i.i.i24
	ori 9, 11, 0
	b .LBB12_30
.LBB12_29:                              # %mmu_has_feature.exit.i.i.i.i.i24
	addi 9, 8, 0
.LBB12_30:                              # %if.end.i.i.i.i9.i
	cmplwi 6, 5, 0
	li 8, 24
	li 10, 12
	ori 6, 6, 1
	bc 12, 26, .LBB12_31
	b .LBB12_32
.LBB12_31:                              # %if.end.i.i.i.i9.i
	addi 8, 10, 0
.LBB12_32:                              # %if.end.i.i.i.i9.i
	sldi 10, 5, 62
	oris 6, 6, 2048
	sld 9, 9, 8
	or 3, 10, 3
	or 9, 9, 3
	std 9, 40(7)
	std 6, 32(7)
	li 7, 8
	bne	5, .LBB12_35
# %bb.33:                               # %if.end6.i.i.i.i.i
	bge 1, .LBB12_36
# %bb.34:                               # %if.then.i.i.i.i
	rldicl 7, 4, 15, 51
	addi 7, 7, 1
.LBB12_35:                              # %get_kernel_context.exit.i.i.i
	li 9, 0
	bne	0, .LBB12_42
	b .LBB12_37
.LBB12_36:                              # %do.end.i.i.i.i.i
	li 7, 2047
	rldic 7, 7, 51, 2
	add 7, 4, 7
	rldicl 7, 7, 15, 49
	addi 7, 7, 5
	li 9, 0
	bne	0, .LBB12_42
.LBB12_37:                              # %if.end.i.i.i.i
	li 9, 65
	#APP
.Ltmp106:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp107:
	.long	.Ltmp106-.Ltmp107
.Ltmp108:
	.long	.LBB12_39-.Ltmp108
.Ltmp109:
	.quad	(mmu_feature_keys+209)-.Ltmp109
	.text


	#NO_APP
# %bb.38:
	li 9, 68
.LBB12_39:                              # Block address taken
                                        # %mmu_has_feature.exit.i.i.i.i62
                                        # Label of block must be emitted
	lis 10, 191
	cmplwi	5, 0
	rotldi	5, 4, 24
	rotldi	4, 4, 36
	addi 11, 9, -40
	li 12, -1
	rldimi 5, 7, 9, 0
	rldimi 4, 7, 21, 0
	addi 7, 9, -28
	sld 0, 12, 11
	ori 10, 10, 20697
	sld 9, 12, 7
	mulld 5, 5, 10
	mulld 4, 4, 10
	srd 30, 5, 11
	andc 5, 5, 0
	srd 10, 4, 7
	andc 4, 4, 9
	add 5, 5, 30
	add 4, 4, 10
	addi 30, 5, 1
	addi 10, 4, 1
	srd 11, 30, 11
	srd 7, 10, 7
	add 5, 11, 5
	add 4, 7, 4
	andc 5, 5, 0
	andc 4, 4, 9
	bc 12, 2, .LBB12_41
# %bb.40:                               # %mmu_has_feature.exit.i.i.i.i62
	ori 9, 5, 0
	b .LBB12_42
.LBB12_41:                              # %mmu_has_feature.exit.i.i.i.i62
	addi 9, 4, 0
.LBB12_42:                              # %create_shadowed_slbe.exit92
	sld 4, 9, 8
	or 3, 4, 3
	#APP
	slbmte 3, 6
	#NO_APP
.LBB12_43:                              # %if.end19
	#APP
	isync
	#NO_APP
	ld 30, -16(1)                           # 8-byte Folded Reload
	ld 29, -24(1)                           # 8-byte Folded Reload
	ld 28, -32(1)                           # 8-byte Folded Reload
	ld 27, -40(1)                           # 8-byte Folded Reload
	ld 26, -48(1)                           # 8-byte Folded Reload
	blr
	.long	0
	.quad	0
.Lfunc_end12:
	.size	slb_initialize, .Lfunc_end12-.Lfunc_begin12
                                        # -- End function
	.globl	do_slb_fault                    # -- Begin function do_slb_fault
	.p2align	4
	.type	do_slb_fault,@function
	.section	.opd,"aw",@progbits
do_slb_fault:                           # @do_slb_fault
	.p2align	3, 0x0
	.quad	.Lfunc_begin13
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin13:
# %bb.0:                                # %entry
	mflr 0
	stdu 1, -160(1)
	std 0, 176(1)
	std 27, 120(1)                          # 8-byte Folded Spill
	mr	4, 3
	li 3, 2
	std 28, 128(1)                          # 8-byte Folded Spill
	std 29, 136(1)                          # 8-byte Folded Spill
	std 30, 144(1)                          # 8-byte Folded Spill
	#APP
	mtmsrd 3, 1
	#NO_APP
	ld 30, 328(4)
	rldicl. 3, 30, 4, 60
	bne	0, .LBB13_19
# %bb.1:                                # %get_region_id.exit.thread.i
	lbz 4, 271(4)
	li 3, -22
	andi. 4, 4, 2
	beq	0, .LBB13_23
# %bb.2:                                # %if.else.i
	#APP
	ld 28, 2312(13)
	#NO_APP
	ld 4, 1624(28)
	li 3, -14
	cmpldi	4, 0
	beq	0, .LBB13_23
# %bb.3:                                # %if.end13.i
	ld 5, 1176(4)
	ld 5, 2064(5)
	cmpld	5, 30
	ble 0, .LBB13_23
# %bb.4:                                # %if.end.i33.i
	rldicl. 5, 30, 12, 52
	bne	0, .LBB13_44
# %bb.5:                                # %get_user_context.exit.i.i
	rotldi	6, 30, 15
	addi 5, 4, 1100
	rldic 6, 6, 3, 46
	lwzx 5, 6, 5
	cmpldi	5, 0
	beq	0, .LBB13_23
# %bb.6:                                # %slb_allocate_user.exit.i
	addis 3, 2, .LC3@toc@ha
	extsw 29, 5
	rldicl. 5, 30, 24, 40
	ld 3, .LC3@toc@l(3)
	lwz 3, 0(3)
	bc 12, 2, .LBB13_8
# %bb.7:                                # %slb_allocate_user.exit.i
	ori 27, 3, 0
	b .LBB13_9
.LBB13_8:                               # %slb_allocate_user.exit.i
	li	27, 0
.LBB13_9:                               # %slb_allocate_user.exit.i
	mr	3, 4
	mr	4, 30
	bl get_slice_psize
	nop
	extsw 3, 3
	addis 4, 2, .LC2@toc@ha
	extsw 6, 27
	li 7, 0
	ld 4, .LC2@toc@l(4)
	mulli 3, 3, 96
	add 3, 4, 3
	mr	4, 29
	ld 3, 88(3)
	ori 5, 3, 3200
	mr	3, 30
	bl slb_insert_entry
	cmpldi	3, 0
	bne	0, .LBB13_23
# %bb.10:                               # %if.then16.i
	#APP
.Ltmp110:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp111:
	.long	.Ltmp110-.Ltmp111
.Ltmp112:
	.long	.LBB13_13-.Ltmp112
.Ltmp113:
	.quad	(mmu_feature_keys+481)-.Ltmp113
	.text


	#NO_APP
# %bb.11:
	rldicr. 3, 30, 0, 23
	bc 12, 2, .LBB13_13
# %bb.12:
	ori 30, 3, 0
	b .LBB13_13
.LBB13_13:                              # Block address taken
                                        # %mmu_has_feature.exit.i40.i
                                        # Label of block must be emitted
	lbz 4, 16(28)
	lbz 5, 17(28)
	rldicl 6, 30, 36, 28
	cmplwi	4, 0
	beq	0, .LBB13_42
# %bb.14:                               # %for.body.i.i.i.preheader
	addi 3, 4, -1
	addi 7, 28, 20
	li 8, 0
	clrldi	3, 3, 56
	addi 3, 3, 1
	mtctr 3
	.p2align	5
.LBB13_15:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add 3, 8, 5
	rlwinm 3, 3, 2, 26, 29
	lwzx 9, 7, 3
	li 3, 0
	cmpld	6, 9
	beq	0, .LBB13_23
# %bb.16:                               # %for.cond.i.i.i
                                        #   in Loop: Header=BB13_15 Depth=1
	addi 8, 8, 1
	bdnz .LBB13_15
# %bb.17:                               # %if.end6.i46.i
	add 7, 5, 4
	cmplwi	4, 16
	rlwinm 7, 7, 2, 26, 29
	add 7, 28, 7
	stw 6, 20(7)
	bne	0, .LBB13_43
# %bb.18:                               # %if.then13.i47.i
	addi 4, 5, 1
	clrlwi	4, 4, 28
	stb 4, 17(28)
	b .LBB13_23
.LBB13_19:                              # %if.end.i.i
	li 3, 3
	rldicr 7, 30, 0, 3
	li 5, 5
	rldic 3, 3, 62, 0
	cmpld	7, 3
	bne	0, .LBB13_22
# %bb.20:                               # %if.end6.i.i
	rldicl 5, 30, 13, 51
	li 3, 1
	cmpldi	5, 6145
	li 5, 2047
	rldic 5, 5, 51, 2
	add 5, 30, 5
	rldicl 5, 5, 15, 49
	addi 5, 5, 2
	bc 12, 0, .LBB13_21
	b .LBB13_22
.LBB13_21:                              # %if.end6.i.i
	addi 5, 3, 0
.LBB13_22:                              # %get_region_id.exit.i
	lbz 4, 271(4)
	li 3, -22
	andi. 4, 4, 2
	bne	0, .LBB13_24
.LBB13_23:                              # Block address taken
                                        # %____do_slb_fault.exit
                                        # Label of block must be emitted
	ld 30, 144(1)                           # 8-byte Folded Reload
	ld 29, 136(1)                           # 8-byte Folded Reload
	ld 28, 128(1)                           # 8-byte Folded Reload
	ld 27, 120(1)                           # 8-byte Folded Reload
	addi 1, 1, 160
	ld 0, 16(1)
	mtlr 0
	blr
.LBB13_24:                              # %if.then3.i
	addi 4, 5, -1
	li 3, -14
	cmpldi	4, 3
	bgt	0, .LBB13_23
# %bb.25:                               # %if.then3.i
	addis 5, 2, .LC8@toc@ha
	sldi 4, 4, 2
	ld 5, .LC8@toc@l(5)
	lwax 4, 4, 5
	add 4, 4, 5
	mtctr 4
	bctr
.LBB13_26:                              # %if.then.i.i
	li 5, 1
	clrldi	4, 30, 2
	rldic 5, 5, 51, 12
	cmpld	4, 5
	bgt	0, .LBB13_23
# %bb.27:                               # %if.end.i31.i
	addis 3, 2, .LC4@toc@ha
	ld 3, .LC4@toc@l(3)
	b .LBB13_34
.LBB13_28:                              # %if.then13.i.i
	rldicl 4, 30, 15, 49
	cmpldi	4, 24580
	bgt	0, .LBB13_23
# %bb.29:                               # %if.end16.i.i
	lhz 5, 208(13)
	b .LBB13_35
.LBB13_30:                              # %if.then20.i.i
	rldicl 4, 30, 14, 50
	cmpldi	4, 12290
	bgt	0, .LBB13_23
# %bb.31:                               # %if.end24.i.i
	addis 3, 2, .LC9@toc@ha
	ld 3, .LC9@toc@l(3)
	b .LBB13_34
.LBB13_32:                              # %if.then4.i.i
	rldicl 4, 30, 15, 49
	cmpldi	4, 24582
	bgt	0, .LBB13_23
# %bb.33:                               # %if.end7.i.i
	addis 3, 2, .LC10@toc@ha
	ld 3, .LC10@toc@l(3)
.LBB13_34:                              # %if.end32.i.i
	lwa 3, 0(3)
	addis 4, 2, .LC2@toc@ha
	ld 4, .LC2@toc@l(4)
	mulli 3, 3, 96
	add 3, 4, 3
	ld 3, 88(3)
	ori 5, 3, 1024
.LBB13_35:                              # %if.end32.i.i
	li 6, 0
	#APP
.Ltmp114:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp115:
	.long	.Ltmp114-.Ltmp115
.Ltmp116:
	.long	.LBB13_37-.Ltmp116
.Ltmp117:
	.quad	(mmu_feature_keys+481)-.Ltmp117
	.text


	#NO_APP
# %bb.36:
	li 6, 1
.LBB13_37:                              # Block address taken
                                        # %if.end.i.i.i.i
                                        # Label of block must be emitted
	li 4, 3
	li 3, 8
	ld 29, 136(1)                           # 8-byte Folded Reload
	ld 28, 128(1)                           # 8-byte Folded Reload
	rldic 4, 4, 62, 0
	ld 27, 120(1)                           # 8-byte Folded Reload
	cmpld	7, 4
	li 7, 2047
	rldicl 4, 30, 13, 51
	rldic 7, 7, 51, 2
	cmpldi 1, 4, 6145
	rldicl 4, 30, 15, 51
	add 7, 30, 7
	addi 4, 4, 1
	rldicl 7, 7, 15, 49
	addi 7, 7, 5
	bc 12, 4, .LBB13_39
# %bb.38:                               # %if.end.i.i.i.i
	ori 4, 7, 0
	b .LBB13_39
.LBB13_39:                              # %if.end.i.i.i.i
	li 7, 1
	bc 12, 2, .LBB13_41
# %bb.40:                               # %if.end.i.i.i.i
	ori 4, 3, 0
	b .LBB13_41
.LBB13_41:                              # %if.end.i.i.i.i
	mr	3, 30
	ld 30, 144(1)                           # 8-byte Folded Reload
	addi 1, 1, 160
	ld 0, 16(1)
	mtlr 0
	b slb_insert_entry
	#TC_RETURNd8 slb_insert_entry 0
.LBB13_42:                              # %if.end6.thread.i.i
	rlwinm 3, 5, 2, 26, 29
	add 3, 28, 3
	stw 6, 20(3)
.LBB13_43:                              # %if.else.i.i
	addi 3, 4, 1
	stb 3, 16(28)
	li 3, 0
	b .LBB13_23
.LBB13_44:                              # %if.end.i.i.i
	#APP
.Ltmp118:
	twui	0, 0
	.section	__ex_table,"a",@progbits
	.p2align	2, 0x0
.Ltmp119:
	.long	.Ltmp118-.Ltmp119
.Ltmp120:
	.long	.LBB13_23-.Ltmp120
	.text
	.section	__bug_table,"aw",@progbits
.Ltmp121:
.Ltmp122:
	.long	.Ltmp118-.Ltmp122
.Ltmp123:
	.long	.L.str.13-.Ltmp123
	.short	281
	.short	2305
.org .Ltmp121+12, 0
	.text


	#NO_APP
# %bb.45:                               # %do.end.i.i.i
	.long	0
	.quad	0
.Lfunc_end13:
	.size	do_slb_fault, .Lfunc_end13-.Lfunc_begin13
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI13_0:
	.long	.LBB13_26-.LJTI13_0
	.long	.LBB13_28-.LJTI13_0
	.long	.LBB13_30-.LJTI13_0
	.long	.LBB13_32-.LJTI13_0
                                        # -- End function
	.text
	.p2align	4                               # -- Begin function slb_insert_entry
	.type	slb_insert_entry,@function
	.section	.opd,"aw",@progbits
slb_insert_entry:                       # @slb_insert_entry
	.p2align	3, 0x0
	.quad	.Lfunc_begin14
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin14:
# %bb.0:                                # %entry
	mr	8, 3
	rldicl 3, 3, 12, 52
	rldicl. 3, 3, 52, 2
	li 3, -14
	bnelr	0
# %bb.1:                                # %if.end.i
	li 9, 65
	std 28, -32(1)                          # 8-byte Folded Spill
	std 29, -24(1)                          # 8-byte Folded Spill
	std 30, -16(1)                          # 8-byte Folded Spill
	#APP
.Ltmp124:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp125:
	.long	.Ltmp124-.Ltmp125
.Ltmp126:
	.long	.LBB14_3-.Ltmp126
.Ltmp127:
	.quad	(mmu_feature_keys+209)-.Ltmp127
	.text


	#NO_APP
# %bb.2:
	li 9, 68
.LBB14_3:                               # Block address taken
                                        # %mmu_has_feature.exit.i
                                        # Label of block must be emitted
	lis 10, 191
	rotldi	11, 8, 24
	addi 12, 9, -40
	li 30, -1
	cmplwi 1, 6, 0
	rldimi 11, 4, 9, 0
	sld 29, 30, 12
	clrldi	0, 12, 32
	ori 10, 10, 20697
	not	28, 29
	mulld 11, 11, 10
	srd 12, 11, 12
	andc 11, 11, 29
	add 11, 11, 12
	rotldi	12, 8, 36
	rldimi 12, 4, 21, 0
	addi 4, 9, -28
	sld 30, 30, 4
	clrldi	9, 4, 32
	mulld 10, 12, 10
	bc 12, 6, .LBB14_5
# %bb.4:                                # %mmu_has_feature.exit.i
	ori 9, 0, 0
	b .LBB14_5
.LBB14_5:                               # %mmu_has_feature.exit.i
	not	29, 30
	srd 4, 10, 4
	andc 10, 10, 30
	add 4, 10, 4
	bc 12, 6, .LBB14_7
# %bb.6:                                # %mmu_has_feature.exit.i
	ori 10, 28, 0
	ori 4, 11, 0
	b .LBB14_8
.LBB14_7:                               # %mmu_has_feature.exit.i
	addi 10, 29, 0
.LBB14_8:                               # %mmu_has_feature.exit.i
	addi 11, 4, 1
	srd 9, 11, 9
	add 4, 9, 4
	and. 4, 4, 10
	beq	0, .LBB14_28
# %bb.9:                                # %if.end
	#APP
	#NO_APP
	cmplwi	7, 0
	lwz 3, 212(13)
	cmpwi 5, 3, -1
	beq	5, .LBB14_12
# %bb.10:                               # %if.then.i
	not	7, 3
	clrldi	7, 7, 32
	addi 9, 7, -1
	andc 7, 9, 7
	cntlzd 7, 7
	subfic 9, 7, 64
	li 7, 1
	slw 7, 7, 9
	or 3, 7, 3
	stw 3, 212(13)
	beq	0, .LBB14_19
# %bb.11:                               # %if.then4.i46
	lwz 3, 216(13)
	or 3, 3, 7
	stw 3, 216(13)
	b .LBB14_19
.LBB14_12:                              # %if.else.i
	addis 7, 2, .LC0@toc@ha
	lbz 3, 211(13)
	ld 7, .LC0@toc@l(7)
	addi 9, 3, 1
	lhz 7, 0(7)
	addi 7, 7, -1
	cmplw 5, 7, 3
	li 3, 2
	bc 12, 21, .LBB14_13
	b .LBB14_14
.LBB14_13:                              # %if.else.i
	addi 3, 9, 0
.LBB14_14:                              # %if.else.i
	cmplwi 5, 3, 31
	stb 3, 211(13)
	bgt	5, .LBB14_19
# %bb.15:                               # %if.then18.i
	li 7, 1
	slw 7, 7, 3
	beq	0, .LBB14_17
# %bb.16:                               # %if.then20.i
	lwz 9, 216(13)
	or 7, 9, 7
	b .LBB14_18
.LBB14_17:                              # %if.else24.i
	lwz 9, 216(13)
	andc 7, 9, 7
.LBB14_18:                              # %if.else42.i
	mr	9, 3
	stw 7, 216(13)
.LBB14_19:                              # %if.else42.i
	li 3, -1
	cmplwi 5, 9, 2
	li 10, 1
	li 11, 12
	sldi 6, 6, 62
	rldic 7, 3, 40, 0
	li 3, 0
	or 5, 6, 5
	oris 6, 9, 2048
	bc 12, 20, .LBB14_21
# %bb.20:                               # %if.else42.i
	ori 10, 3, 0
	b .LBB14_21
.LBB14_21:                              # %if.else42.i
	#APP
.Ltmp128:
	tdnei	10, 0
	.section	__bug_table,"aw",@progbits
.Ltmp129:
.Ltmp130:
	.long	.Ltmp128-.Ltmp130
.Ltmp131:
	.long	.L.str-.Ltmp131
	.short	665
	.short	0
.org .Ltmp129+12, 0
	.text


	#NO_APP
	li 10, 24
	clrldi	6, 6, 32
	bc 12, 6, .LBB14_22
	b .LBB14_23
.LBB14_22:                              # %if.else42.i
	addi 10, 11, 0
.LBB14_23:                              # %if.else42.i
	sld 4, 4, 10
	or 5, 5, 4
	lis 4, -4096
	bc 12, 6, .LBB14_25
# %bb.24:                               # %if.else42.i
	ori 4, 7, 0
	b .LBB14_25
.LBB14_25:                              # %if.else42.i
	and 4, 4, 8
	or 4, 4, 6
	#APP
.Ltmp132:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp133:
	.long	.Ltmp132-.Ltmp133
.Ltmp134:
	.long	.LBB14_30-.Ltmp134
.Ltmp135:
	.quad	stress_slb_key-.Ltmp135
	.text


	#NO_APP
.LBB14_26:                              # %if.end20
	#APP
	slbmte 5, 4
	#NO_APP
	#APP
	#NO_APP
	bne	0, .LBB14_28
# %bb.27:                               # %if.then22
	#APP
.Ltmp136:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp137:
	.long	.Ltmp136-.Ltmp137
.Ltmp138:
	.long	.LBB14_43-.Ltmp138
.Ltmp139:
	.quad	(cpu_feature_keys+273)-.Ltmp139
	.text


	#NO_APP
.LBB14_28:
	ld 30, -16(1)                           # 8-byte Folded Reload
	ld 29, -24(1)                           # 8-byte Folded Reload
	ld 28, -32(1)                           # 8-byte Folded Reload
.LBB14_29:                              # Block address taken
                                        # %cleanup
                                        # Label of block must be emitted
	blr
.LBB14_30:                              # Block address taken
                                        # %if.then6
                                        # Label of block must be emitted
	lbz 9, 210(13)
	beq	0, .LBB14_32
# %bb.31:                               # %if.then6
	cmplwi 1, 9, 3
	mr	6, 9
	bne	1, .LBB14_40
.LBB14_32:                              # %for.cond.preheader
	li 6, 0
	cmplwi 1, 9, 0
	beq	1, .LBB14_40
# %bb.33:                               # %for.body.preheader
	addis 8, 2, .LC6@toc@ha
	li 10, -1
	lis 11, -4096
	ld 8, .LC6@toc@l(8)
	lwz 12, 0(8)
	mtctr 9
	li 9, 220
	b .LBB14_35
.LBB14_34:                              # %slb_cache_slbie_kernel.exit
                                        #   in Loop: Header=BB14_35 Depth=1
	addi 9, 9, 4
	bdz .LBB14_40
.LBB14_35:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	lwzx 0, 13, 9
	ld 30, 2320(13)
	cmplwi 1, 12, 0
	bc 12, 6, .LBB14_37
# %bb.36:                               # %for.body
                                        #   in Loop: Header=BB14_35 Depth=1
	ori 29, 7, 0
	b .LBB14_38
.LBB14_37:                              # %for.body
                                        #   in Loop: Header=BB14_35 Depth=1
	addi 29, 11, 0
.LBB14_38:                              # %for.body
                                        #   in Loop: Header=BB14_35 Depth=1
	sldi 0, 0, 28
	and 30, 29, 30
	rldimi 0, 10, 62, 0
	cmpld 1, 30, 0
	beq	1, .LBB14_34
# %bb.39:                               # %if.end.i59
                                        #   in Loop: Header=BB14_35 Depth=1
	slwi 12, 12, 25
	extsw 12, 12
	or 12, 0, 12
	#APP
	slbie 12
	#NO_APP
	lwz 12, 0(8)
	b .LBB14_34
.LBB14_40:                              # %if.end12
	beq	0, .LBB14_42
# %bb.41:                               # %if.then14
	rldic 8, 6, 2, 30
	rldicl 7, 4, 36, 28
	addi 6, 6, 1
                                        # kill: def $r6 killed $r6 def $x6
	add 8, 13, 8
	stw 7, 220(8)
.LBB14_42:                              # %if.end17
	stb 6, 210(13)
	b .LBB14_26
.LBB14_43:                              # Block address taken
                                        # %if.end.i60
                                        # Label of block must be emitted
	#APP
.Ltmp140:
	nop	# arch_static_branch
	.section	__jump_table,"aw",@progbits
.Ltmp141:
	.long	.Ltmp140-.Ltmp141
.Ltmp142:
	.long	.LBB14_29-.Ltmp142
.Ltmp143:
	.quad	stress_slb_key-.Ltmp143
	.text


	#NO_APP
	b .LBB14_28
# %bb.44:                               # %if.end3.i
	lbz 5, 210(13)
	cmpldi	5, 7
	bgt	0, .LBB14_46
# %bb.45:                               # %if.then5.i
	sldi 5, 5, 2
	rldicl 4, 4, 36, 28
	add 5, 13, 5
	stw 4, 220(5)
	lbz 4, 210(13)
	addi 4, 4, 1
	stb 4, 210(13)
	b .LBB14_28
.LBB14_46:                              # %if.else.i65
	li 4, 9
	stb 4, 210(13)
	b .LBB14_28
	.long	0
	.quad	0
.Lfunc_end14:
	.size	slb_insert_entry, .Lfunc_end14-.Lfunc_begin14
                                        # -- End function
	.type	__setup_str_parse_stress_slb,@object # @__setup_str_parse_stress_slb
	.section	.init.rodata,"a",@progbits
__setup_str_parse_stress_slb:
	.asciz	"stress_slb"
	.size	__setup_str_parse_stress_slb, 11

	.type	__setup_parse_stress_slb,@object # @__setup_parse_stress_slb
	.section	.init.setup,"aw",@progbits
	.p2align	3
__setup_parse_stress_slb:
	.quad	__setup_str_parse_stress_slb
	.quad	parse_stress_slb
	.long	1                               # 0x1
	.space	4
	.size	__setup_parse_stress_slb, 24

	.type	stress_slb_key,@object          # @stress_slb_key
	.section	.data..ro_after_init,"aw",@progbits
	.globl	stress_slb_key
	.p2align	3, 0x0
stress_slb_key:
.Lstress_slb_key$local:
	.space	16
	.size	stress_slb_key, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"arch/powerpc/mm/book3s64/slb.c"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\0013SLB contents of cpu 0x%x\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\0013%02d %016lx %016lx %s\n"
	.size	.L.str.2, 25

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"VALID"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"NOT VALID"
	.size	.L.str.4, 10

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\0013     1T ESID=%9lx VSID=%13lx LLP:%3lx\n"
	.size	.L.str.5, 41

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\0013   256M ESID=%9lx VSID=%13lx LLP:%3lx\n"
	.size	.L.str.6, 41

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\0013SLB RR allocator index %d\n"
	.size	.L.str.7, 29

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\0013SLB cache ptr value = %d\n"
	.size	.L.str.8, 28

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\0013Valid SLB cache entries:\n"
	.size	.L.str.9, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\0013%02d EA[0-35]=%9x\n"
	.size	.L.str.10, 21

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\0013Rest of SLB cache entries:\n"
	.size	.L.str.11, 30

	.type	slb_initialize.slb_encoding_inited,@object # @slb_initialize.slb_encoding_inited
	.lcomm	slb_initialize.slb_encoding_inited,1,4
	.type	_kbl_addr_do_slb_fault,@object  # @_kbl_addr_do_slb_fault
	.section	_kprobe_blacklist,"aw",@progbits
	.p2align	3
_kbl_addr_do_slb_fault:
	.quad	do_slb_fault
	.size	_kbl_addr_do_slb_fault, 8

	.type	stress_slb_enabled,@object      # @stress_slb_enabled
	.section	.init.data,"aw",@progbits
	.globl	stress_slb_enabled
stress_slb_enabled:
.Lstress_slb_enabled$local:
	.byte	0                               # 0x0
	.size	stress_slb_enabled, 1

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"arch/powerpc/include/asm/book3s/64/mmu.h"
	.size	.L.str.13, 41

	.ident	"ClangBuiltLinux clang version 17.0.0 (https://github.com/llvm/llvm-project 5f0bccc3d1a74111458c71f009817c9995f4bf83)"
	.section	".note.GNU-stack","",@progbits
	.section	.toc,"aw",@progbits
.LC0:
	.tc mmu_slb_size[TC],mmu_slb_size
.LC1:
	.tc cur_cpu_spec[TC],cur_cpu_spec
.LC2:
	.tc mmu_psize_defs[TC],mmu_psize_defs
.LC3:
	.tc mmu_highuser_ssize[TC],mmu_highuser_ssize
.LC4:
	.tc mmu_linear_psize[TC],mmu_linear_psize
.LC5:
	.tc mmu_vmalloc_psize[TC],mmu_vmalloc_psize
.LC6:
	.tc mmu_kernel_ssize[TC],mmu_kernel_ssize
.LC7:
	.tc boot_cpuid[TC],boot_cpuid
.LC8:
	.tc .LJTI13_0[TC],.LJTI13_0
.LC9:
	.tc mmu_io_psize[TC],mmu_io_psize
.LC10:
	.tc mmu_vmemmap_psize[TC],mmu_vmemmap_psize
