; ModuleID = '/mnt/nvme/triage/cbl-1833/src/linux/arch/powerpc/mm/book3s64/slb.c'
source_filename = "/mnt/nvme/triage/cbl-1833/src/linux/arch/powerpc/mm/book3s64/slb.c"
target datalayout = "E-m:e-i64:64-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.mmu_psize_def = type { i32, [16 x i32], i32, i64, i64, %union.anon.102 }
%union.anon.102 = type { i64 }
%struct.static_key_true = type { %struct.static_key }
%struct.paca_struct = type { ptr, i16, i16, i64, i64, i64, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i64, [32 x i8], [10 x i64], i16, i8, i8, i32, i32, [8 x i32], [8 x i8], [2048 x i8], ptr, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i64, i64, i64, %union.anon.91, [10 x i64], [10 x i64], ptr, ptr, i16, i16, i8, i8, i32, i8, %struct.cpu_accounting_data, i64, ptr, %struct.kvmppc_host_state, ptr, [112 x i8], [10 x i64], ptr, i64, ptr, ptr, i16, %struct.mmiowb_state, ptr, i8, [127 x i8] }
%union.anon.91 = type { %struct.anon.93 }
%struct.anon.93 = type { i64, %struct.atomic_t }
%struct.cpu_accounting_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kvmppc_host_state = type { i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i64, [7 x i64], [8 x i32], i64, i64, i64, i64, ptr, i64, i64, i64 }
%struct.mmiowb_state = type { i16, i16 }
%struct.slb_shadow = type { i32, i32, i64, [2 x %struct.anon], [80 x i8] }
%struct.anon = type { i64, i64 }
%struct.slb_entry = type { i64, i64 }
%struct.cpu_spec = type { i32, i32, ptr, i64, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, [28 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [96 x i8], %struct.sched_statistics, %struct.hlist_head, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i32, %union.rcu_special, %struct.list_head, %struct.list_head, i32, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, %struct.vtime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, i32, i32, i32, i32, i64, i64, i64, i64, %struct.callback_head, ptr, ptr, i64, [3 x i64], i64, ptr, i32, i32, i64, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i32, i32, ptr, i64, %struct.atomic_t, %struct.atomic_t, i64, ptr, i32, i32, i32, ptr, ptr, %struct.kmap_ctrl, i32, ptr, %struct.timer_list, %struct.refcount_struct, ptr, ptr, %struct.llist_head, %struct.thread_struct, [112 x i8] }
%struct.thread_info = type { i32, i32, i64, i8, i8, [16 x i32], [44 x i8], i64, [120 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [112 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est, [64 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.hlist_head = type { ptr }
%struct.cpumask = type { [32 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.vtime = type { %struct.seqcount, i64, i32, i32, i64, i64, i64 }
%struct.seqcount = type { i32 }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [4 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.80 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i64, i64, ptr, %struct.debug_reg, [8 x i8], %struct.thread_fp_state, ptr, i32, i32, [2 x ptr], [2 x ptr], [2 x %struct.arch_hw_breakpoint], i64, i8, i8, i8, [5 x i8], %struct.thread_vr_state, ptr, i64, i32, i32, i8, i64, i64, i64, %struct.pt_regs, i64, i64, i64, i64, [8 x i8], %struct.thread_fp_state, %struct.thread_vr_state, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, [8 x i8] }
%struct.debug_reg = type {}
%struct.arch_hw_breakpoint = type { i64, i16, i16, i16, i8 }
%struct.pt_regs = type { %union.anon.84, %union.anon.88 }
%union.anon.84 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [32 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i64, i64, %union.anon.90, i64 }
%union.anon.90 = type { i64 }
%struct.thread_fp_state = type { [32 x [2 x i64]], i64, [8 x i8] }
%struct.thread_vr_state = type { [32 x %struct.__vector128], %struct.__vector128 }
%struct.__vector128 = type { [4 x i32] }
%struct.anon.2 = type { %struct.maple_tree, ptr, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.raw_spinlock, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [76 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, i64, i64 }
%struct.maple_tree = type { %union.anon.3, ptr, i32 }
%union.anon.3 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { %union.anon.62, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16 }
%union.anon.62 = type { [8 x i64] }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.hash_mm_context = type { i16, [8 x i8], [2048 x i8], i64, %struct.slice_mask, %struct.slice_mask, %struct.slice_mask, %struct.slice_mask }
%struct.slice_mask = type { i64, [64 x i64] }
%struct.anon.85 = type { [32 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.86, %union.anon.87, i64 }
%union.anon.86 = type { i64 }
%union.anon.87 = type { i64 }

@__setup_str_parse_stress_slb = internal constant [11 x i8] c"stress_slb\00", section ".init.rodata", align 1
@__setup_parse_stress_slb = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_stress_slb, ptr @parse_stress_slb, i32 1 }, section ".init.setup", align 8
@stress_slb_key = dso_local global %struct.static_key_false zeroinitializer, section ".data..ro_after_init", align 8
@.str = private unnamed_addr constant [31 x i8] c"arch/powerpc/mm/book3s64/slb.c\00", align 1
@mmu_slb_size = external local_unnamed_addr global i16, align 2
@.str.1 = private unnamed_addr constant [28 x i8] c"\013SLB contents of cpu 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\013%02d %016lx %016lx %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"VALID\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"NOT VALID\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\013     1T ESID=%9lx VSID=%13lx LLP:%3lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\013   256M ESID=%9lx VSID=%13lx LLP:%3lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\013SLB RR allocator index %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\013SLB cache ptr value = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\013Valid SLB cache entries:\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"\013%02d EA[0-35]=%9x\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"\013Rest of SLB cache entries:\0A\00", align 1
@slb_initialize.slb_encoding_inited = internal unnamed_addr global i1 false, align 4
@mmu_psize_defs = external local_unnamed_addr global [16 x %struct.mmu_psize_def], align 8
@mmu_linear_psize = external local_unnamed_addr global i32, align 4
@mmu_io_psize = external local_unnamed_addr global i32, align 4
@mmu_vmalloc_psize = external local_unnamed_addr global i32, align 4
@mmu_vmemmap_psize = external local_unnamed_addr global i32, align 4
@mmu_kernel_ssize = external local_unnamed_addr global i32, align 4
@boot_cpuid = external local_unnamed_addr global i32, align 4
@_kbl_addr_do_slb_fault = internal global i64 ptrtoint (ptr @do_slb_fault to i64), section "_kprobe_blacklist", align 8
@stress_slb_enabled = dso_local local_unnamed_addr global i8 0, section ".init.data", align 1
@cur_cpu_spec = external local_unnamed_addr global ptr, align 8
@cpu_feature_keys = external global [64 x %struct.static_key_true], align 8
@mmu_feature_keys = external global [32 x %struct.static_key_true], align 8
@mmu_highuser_ssize = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"arch/powerpc/include/asm/book3s/64/mmu.h\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__setup_parse_stress_slb, ptr @_kbl_addr_do_slb_fault], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize willreturn memory(write, argmem: none, inaccessiblemem: none)
define internal signext i32 @parse_stress_slb(ptr nocapture readnone %p) #0 section ".init.text" {
entry:
  store i8 1, ptr @stress_slb_enabled, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @__slb_restore_bolted_realmode() local_unnamed_addr #1 {
entry:
  %0 = tail call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to ptr
  %slb_shadow_ptr = getelementptr inbounds %struct.paca_struct, ptr %1, i64 0, i32 11
  %2 = load ptr, ptr %slb_shadow_ptr, align 64
  %arrayidx = getelementptr %struct.slb_shadow, ptr %2, i64 0, i32 3, i64 0
  %vsid = getelementptr %struct.slb_shadow, ptr %2, i64 0, i32 3, i64 0, i32 1
  %3 = load i64, ptr %vsid, align 8
  %4 = load i64, ptr %arrayidx, align 16
  tail call void asm sideeffect "slbmte  $0,$1", "r,r"(i64 %3, i64 %4) #9, !srcloc !5
  %arrayidx.1 = getelementptr %struct.slb_shadow, ptr %2, i64 0, i32 3, i64 1
  %vsid.1 = getelementptr %struct.slb_shadow, ptr %2, i64 0, i32 3, i64 1, i32 1
  %5 = load i64, ptr %vsid.1, align 8
  %6 = load i64, ptr %arrayidx.1, align 16
  tail call void asm sideeffect "slbmte  $0,$1", "r,r"(i64 %5, i64 %6) #9, !srcloc !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #2

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @slb_restore_bolted_realmode() local_unnamed_addr #1 {
entry:
  %0 = tail call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to ptr
  %slb_shadow_ptr.i = getelementptr inbounds %struct.paca_struct, ptr %1, i64 0, i32 11
  %2 = load ptr, ptr %slb_shadow_ptr.i, align 64
  %arrayidx.i = getelementptr %struct.slb_shadow, ptr %2, i64 0, i32 3, i64 0
  %vsid.i = getelementptr %struct.slb_shadow, ptr %2, i64 0, i32 3, i64 0, i32 1
  %3 = load i64, ptr %vsid.i, align 8
  %4 = load i64, ptr %arrayidx.i, align 16
  tail call void asm sideeffect "slbmte  $0,$1", "r,r"(i64 %3, i64 %4) #9, !srcloc !5
  %arrayidx.1.i = getelementptr %struct.slb_shadow, ptr %2, i64 0, i32 3, i64 1
  %vsid.1.i = getelementptr %struct.slb_shadow, ptr %2, i64 0, i32 3, i64 1, i32 1
  %5 = load i64, ptr %vsid.1.i, align 8
  %6 = load i64, ptr %arrayidx.1.i, align 16
  tail call void asm sideeffect "slbmte  $0,$1", "r,r"(i64 %5, i64 %6) #9, !srcloc !5
  %7 = tail call i64 @llvm.read_register.i64(metadata !0)
  %8 = inttoptr i64 %7 to ptr
  %slb_cache_ptr = getelementptr inbounds %struct.paca_struct, ptr %8, i64 0, i32 18
  store i8 0, ptr %slb_cache_ptr, align 2
  %9 = tail call i64 @llvm.read_register.i64(metadata !0)
  %10 = inttoptr i64 %9 to ptr
  %slb_kern_bitmap = getelementptr inbounds %struct.paca_struct, ptr %10, i64 0, i32 21
  store i32 3, ptr %slb_kern_bitmap, align 8
  %11 = tail call i64 @llvm.read_register.i64(metadata !0)
  %12 = inttoptr i64 %11 to ptr
  %slb_kern_bitmap1 = getelementptr inbounds %struct.paca_struct, ptr %12, i64 0, i32 21
  %13 = load i32, ptr %slb_kern_bitmap1, align 8
  %slb_used_bitmap = getelementptr inbounds %struct.paca_struct, ptr %12, i64 0, i32 20
  store i32 %13, ptr %slb_used_bitmap, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @slb_flush_all_realmode() local_unnamed_addr #1 {
entry:
  tail call void asm sideeffect "slbmte $0,$0; slbia", "r"(i32 0) #9, !srcloc !6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @slb_flush_and_restore_bolted() local_unnamed_addr #1 {
entry:
  %0 = tail call i64 asm sideeffect "lbz $0,$1(13)", "=r,i"(i64 2354) #9, !srcloc !7
  %and.i = and i64 %0, 1
  %conv43 = xor i64 %and.i, 1
  callbr void asm sideeffect "1:\09tdnei  $4, 0\0A.section __ex_table,\22a\22; .balign 4; .long (1b) - . ; .long (${5:l}) - . ; .previous .section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,r,!i"(ptr nonnull @.str, i32 181, i32 2305, i64 12, i64 %conv43) #9
          to label %do.end48 [label %do.end48], !srcloc !8

do.end48:                                         ; preds = %entry, %entry
  tail call void asm sideeffect "mtmsrd $0,1", "r,~{memory}"(i64 2) #9, !srcloc !9
  %1 = tail call i64 asm sideeffect "lbz $0,$1(13)", "=r,i"(i64 2354) #9, !srcloc !7
  tail call void asm sideeffect "stb $0,$1(13)", "r,i,~{memory}"(i64 3, i64 2354) #9, !srcloc !10
  %2 = tail call i64 @llvm.read_register.i64(metadata !0)
  %3 = inttoptr i64 %2 to ptr
  %irq_happened = getelementptr inbounds %struct.paca_struct, ptr %3, i64 0, i32 33
  %4 = load i8, ptr %irq_happened, align 1
  %5 = or i8 %4, 1
  store i8 %5, ptr %irq_happened, align 1
  %and.i69 = and i64 %1, 1
  %tobool.i70.not = icmp eq i64 %and.i69, 0
  br i1 %tobool.i70.not, label %if.then61, label %if.end65

if.then61:                                        ; preds = %do.end48
  %6 = tail call i64 @llvm.read_register.i64(metadata !0)
  %7 = inttoptr i64 %6 to ptr
  %saved_r1 = getelementptr inbounds %struct.paca_struct, ptr %7, i64 0, i32 27
  %8 = tail call i64 @llvm.read_register.i64(metadata !1)
  tail call void asm sideeffect "std${0:X} $1,$0", "=*m,{r1}"(ptr elementtype(i64) %saved_r1, i64 %8) #9, !srcloc !11
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %do.end48
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !12
  %9 = tail call i64 @llvm.read_register.i64(metadata !0)
  %10 = inttoptr i64 %9 to ptr
  %slb_shadow_ptr.i = getelementptr inbounds %struct.paca_struct, ptr %10, i64 0, i32 11
  %11 = load ptr, ptr %slb_shadow_ptr.i, align 64
  %arrayidx.i = getelementptr %struct.slb_shadow, ptr %11, i64 0, i32 3, i64 1
  %12 = load i64, ptr %arrayidx.i, align 16
  %vsid.i = getelementptr %struct.slb_shadow, ptr %11, i64 0, i32 3, i64 1, i32 1
  %13 = load i64, ptr %vsid.i, align 8
  tail call void asm sideeffect ".long (0x7c0003e4 $| ((($0) & 0x7) << 21)) \09\0Aslbmte\09$1, $2\09\0A", "i,r,r,~{memory}"(i32 0, i64 %13, i64 %12) #9, !srcloc !13
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !12
  %14 = tail call i64 @llvm.read_register.i64(metadata !0)
  %15 = inttoptr i64 %14 to ptr
  %slb_cache_ptr = getelementptr inbounds %struct.paca_struct, ptr %15, i64 0, i32 18
  store i8 0, ptr %slb_cache_ptr, align 2
  %16 = tail call i64 @llvm.read_register.i64(metadata !0)
  %17 = inttoptr i64 %16 to ptr
  %slb_kern_bitmap = getelementptr inbounds %struct.paca_struct, ptr %17, i64 0, i32 21
  store i32 3, ptr %slb_kern_bitmap, align 8
  %18 = tail call i64 @llvm.read_register.i64(metadata !0)
  %19 = inttoptr i64 %18 to ptr
  %slb_kern_bitmap68 = getelementptr inbounds %struct.paca_struct, ptr %19, i64 0, i32 21
  %20 = load i32, ptr %slb_kern_bitmap68, align 8
  %slb_used_bitmap = getelementptr inbounds %struct.paca_struct, ptr %19, i64 0, i32 20
  store i32 %20, ptr %slb_used_bitmap, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @slb_save_contents(ptr noundef writeonly %slb_ptr) local_unnamed_addr #1 {
entry:
  %0 = tail call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to ptr
  %slb_cache_ptr = getelementptr inbounds %struct.paca_struct, ptr %1, i64 0, i32 18
  %2 = load i8, ptr %slb_cache_ptr, align 2
  %conv = zext i8 %2 to i16
  %slb_save_cache_ptr = getelementptr inbounds %struct.paca_struct, ptr %1, i64 0, i32 61
  store i16 %conv, ptr %slb_save_cache_ptr, align 16
  %tobool.not = icmp ne ptr %slb_ptr, null
  %3 = load i16, ptr @mmu_slb_size, align 2
  %cmp12 = icmp ne i16 %3, 0
  %or.cond = select i1 %tobool.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.body
  %i.014 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %slb_ptr.addr.013 = phi ptr [ %incdec.ptr, %for.body ], [ %slb_ptr, %entry ]
  %4 = tail call i64 asm sideeffect "slbmfee  $0,$1", "=r,r"(i32 %i.014) #9, !srcloc !14
  %5 = tail call i64 asm sideeffect "slbmfev  $0,$1", "=r,r"(i32 %i.014) #9, !srcloc !15
  store i64 %4, ptr %slb_ptr.addr.013, align 8
  %vsid = getelementptr inbounds %struct.slb_entry, ptr %slb_ptr.addr.013, i64 0, i32 1
  store i64 %5, ptr %vsid, align 8
  %incdec.ptr = getelementptr %struct.slb_entry, ptr %slb_ptr.addr.013, i64 1
  %inc = add nuw nsw i32 %i.014, 1
  %6 = load i16, ptr @mmu_slb_size, align 2
  %conv1 = zext i16 %6 to i32
  %cmp = icmp ult i32 %inc, %conv1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !16

cleanup:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @slb_dump_contents(ptr noundef readonly %slb_ptr) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq ptr %slb_ptr, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  %0 = tail call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to ptr
  %paca_index = getelementptr inbounds %struct.paca_struct, ptr %1, i64 0, i32 2
  %2 = load i16, ptr %paca_index, align 2
  %conv = zext i16 %2 to i32
  %call = tail call signext i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef signext %conv) #10
  %3 = load i16, ptr @mmu_slb_size, align 2
  %cmp129.not = icmp eq i16 %3, 0
  br i1 %cmp129.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end, %for.inc
  %slb_ptr.addr.0131 = phi ptr [ %incdec.ptr, %for.inc ], [ %slb_ptr, %do.end ]
  %i.0130 = phi i32 [ %inc, %for.inc ], [ 0, %do.end ]
  %4 = load i64, ptr %slb_ptr.addr.0131, align 8
  %vsid = getelementptr inbounds %struct.slb_entry, ptr %slb_ptr.addr.0131, i64 0, i32 1
  %5 = load i64, ptr %vsid, align 8
  %incdec.ptr = getelementptr %struct.slb_entry, ptr %slb_ptr.addr.0131, i64 1
  %tobool3 = icmp ne i64 %4, 0
  %tobool4 = icmp ne i64 %5, 0
  %or.cond = select i1 %tobool3, i1 true, i1 %tobool4
  br i1 %or.cond, label %do.end9, label %for.inc

do.end9:                                          ; preds = %for.body
  %and = and i64 %4, 134217728
  %tobool11.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool11.not, ptr @.str.4, ptr @.str.3
  %call12 = tail call signext i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef signext %i.0130, i64 noundef %4, i64 noundef %5, ptr noundef nonnull %cond) #10
  br i1 %tobool11.not, label %for.inc, label %if.end16

if.end16:                                         ; preds = %do.end9
  %and17 = and i64 %5, 304
  %and18 = and i64 %5, 4611686018427387904
  %tobool19.not = icmp eq i64 %and18, 0
  %. = select i1 %tobool19.not, i64 28, i64 40
  %.143 = select i1 %tobool19.not, i64 12, i64 24
  %.144 = select i1 %tobool19.not, i64 1125899906842623, i64 274877906943
  %.str.6..str.5 = select i1 %tobool19.not, ptr @.str.6, ptr @.str.5
  %shr = lshr i64 %4, %.
  %and26 = lshr i64 %5, %.143
  %shr27 = and i64 %and26, %.144
  %call28 = tail call signext i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6..str.5, i64 noundef %shr, i64 noundef %shr27, i64 noundef %and17) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %do.end9, %for.body
  %inc = add nuw nsw i32 %i.0130, 1
  %6 = load i16, ptr @mmu_slb_size, align 2
  %conv1 = zext i16 %6 to i32
  %cmp = icmp ult i32 %inc, %conv1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !18

for.end:                                          ; preds = %for.inc, %do.end
  %7 = load ptr, ptr @cur_cpu_spec, align 8
  %cpu_features.i = getelementptr inbounds %struct.cpu_spec, ptr %7, i64 0, i32 3
  %8 = load i64, ptr %cpu_features.i, align 8
  %and2.i = and i64 %8, 131072
  %tobool3.i.not = icmp eq i64 %and2.i, 0
  br i1 %tobool3.i.not, label %do.end43, label %cleanup

do.end43:                                         ; preds = %for.end
  %9 = tail call i64 @llvm.read_register.i64(metadata !0)
  %10 = inttoptr i64 %9 to ptr
  %stab_rr = getelementptr inbounds %struct.paca_struct, ptr %10, i64 0, i32 19
  %11 = load i8, ptr %stab_rr, align 1
  %conv45 = zext i8 %11 to i32
  %call46 = tail call signext i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef signext %conv45) #10
  %12 = tail call i64 @llvm.read_register.i64(metadata !0)
  %13 = inttoptr i64 %12 to ptr
  %slb_save_cache_ptr = getelementptr inbounds %struct.paca_struct, ptr %13, i64 0, i32 61
  %14 = load i16, ptr %slb_save_cache_ptr, align 16
  %conv51 = zext i16 %14 to i32
  %call52 = tail call signext i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef signext %conv51) #10
  %call57 = tail call signext i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  %15 = tail call i64 @llvm.read_register.i64(metadata !0)
  %16 = inttoptr i64 %15 to ptr
  %slb_save_cache_ptr58 = getelementptr inbounds %struct.paca_struct, ptr %16, i64 0, i32 61
  %17 = load i16, ptr %slb_save_cache_ptr58, align 16
  %18 = tail call i16 @llvm.umin.i16(i16 %17, i16 8)
  %cond63 = zext i16 %18 to i64
  %cmp65132.not = icmp eq i16 %18, 0
  br i1 %cmp65132.not, label %do.end78, label %do.end70.preheader

do.end70.preheader:                               ; preds = %do.end43
  %wide.trip.count = zext i16 %18 to i64
  br label %do.end70

do.end70:                                         ; preds = %do.end70.preheader, %do.end70
  %indvars.iv = phi i64 [ 0, %do.end70.preheader ], [ %indvars.iv.next, %do.end70 ]
  %19 = tail call i64 @llvm.read_register.i64(metadata !0)
  %20 = inttoptr i64 %19 to ptr
  %arrayidx = getelementptr %struct.paca_struct, ptr %20, i64 0, i32 22, i64 %indvars.iv
  %21 = load i32, ptr %arrayidx, align 4
  %22 = trunc i64 %indvars.iv to i32
  %call72 = tail call signext i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef signext %22, i32 noundef zeroext %21) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %do.end78, label %do.end70, !llvm.loop !19

do.end78:                                         ; preds = %do.end70, %do.end43
  %call80 = tail call signext i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  %cmp82134 = icmp ult i16 %17, 8
  br i1 %cmp82134, label %do.end87.preheader, label %cleanup

do.end87.preheader:                               ; preds = %do.end78
  %23 = zext i16 %17 to i64
  %24 = zext i16 %17 to i64
  %25 = add nuw nsw i64 %24, 8
  %26 = sub nsw i64 %25, %cond63
  %wide.trip.count139 = and i64 %26, 4294967295
  br label %do.end87

do.end87:                                         ; preds = %do.end87.preheader, %do.end87
  %indvars.iv137 = phi i64 [ %23, %do.end87.preheader ], [ %indvars.iv.next138, %do.end87 ]
  %27 = tail call i64 @llvm.read_register.i64(metadata !0)
  %28 = inttoptr i64 %27 to ptr
  %arrayidx91 = getelementptr %struct.paca_struct, ptr %28, i64 0, i32 22, i64 %indvars.iv137
  %29 = load i32, ptr %arrayidx91, align 4
  %30 = trunc i64 %indvars.iv137 to i32
  %call92 = tail call signext i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef signext %30, i32 noundef zeroext %29) #10
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond140.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count139
  br i1 %exitcond140.not, label %cleanup, label %do.end87, !llvm.loop !20

cleanup:                                          ; preds = %do.end87, %do.end78, %for.end, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare signext i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @slb_vmalloc_update() local_unnamed_addr #1 {
entry:
  %0 = tail call i64 asm sideeffect "lbz $0,$1(13)", "=r,i"(i64 2354) #9, !srcloc !7
  %and.i.i = and i64 %0, 1
  %conv43.i = xor i64 %and.i.i, 1
  callbr void asm sideeffect "1:\09tdnei  $4, 0\0A.section __ex_table,\22a\22; .balign 4; .long (1b) - . ; .long (${5:l}) - . ; .previous .section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,r,!i"(ptr nonnull @.str, i32 181, i32 2305, i64 12, i64 %conv43.i) #9
          to label %do.end48.i [label %do.end48.i], !srcloc !8

do.end48.i:                                       ; preds = %entry, %entry
  tail call void asm sideeffect "mtmsrd $0,1", "r,~{memory}"(i64 2) #9, !srcloc !9
  %1 = tail call i64 asm sideeffect "lbz $0,$1(13)", "=r,i"(i64 2354) #9, !srcloc !7
  tail call void asm sideeffect "stb $0,$1(13)", "r,i,~{memory}"(i64 3, i64 2354) #9, !srcloc !10
  %2 = tail call i64 @llvm.read_register.i64(metadata !0)
  %3 = inttoptr i64 %2 to ptr
  %irq_happened.i = getelementptr inbounds %struct.paca_struct, ptr %3, i64 0, i32 33
  %4 = load i8, ptr %irq_happened.i, align 1
  %5 = or i8 %4, 1
  store i8 %5, ptr %irq_happened.i, align 1
  %and.i69.i = and i64 %1, 1
  %tobool.i70.not.i = icmp eq i64 %and.i69.i, 0
  br i1 %tobool.i70.not.i, label %if.then61.i, label %slb_flush_and_restore_bolted.exit

if.then61.i:                                      ; preds = %do.end48.i
  %6 = tail call i64 @llvm.read_register.i64(metadata !0)
  %7 = inttoptr i64 %6 to ptr
  %saved_r1.i = getelementptr inbounds %struct.paca_struct, ptr %7, i64 0, i32 27
  %8 = tail call i64 @llvm.read_register.i64(metadata !1)
  tail call void asm sideeffect "std${0:X} $1,$0", "=*m,{r1}"(ptr elementtype(i64) %saved_r1.i, i64 %8) #9, !srcloc !11
  br label %slb_flush_and_restore_bolted.exit

slb_flush_and_restore_bolted.exit:                ; preds = %do.end48.i, %if.then61.i
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !12
  %9 = tail call i64 @llvm.read_register.i64(metadata !0)
  %10 = inttoptr i64 %9 to ptr
  %slb_shadow_ptr.i.i = getelementptr inbounds %struct.paca_struct, ptr %10, i64 0, i32 11
  %11 = load ptr, ptr %slb_shadow_ptr.i.i, align 64
  %arrayidx.i.i = getelementptr %struct.slb_shadow, ptr %11, i64 0, i32 3, i64 1
  %12 = load i64, ptr %arrayidx.i.i, align 16
  %vsid.i.i = getelementptr %struct.slb_shadow, ptr %11, i64 0, i32 3, i64 1, i32 1
  %13 = load i64, ptr %vsid.i.i, align 8
  tail call void asm sideeffect ".long (0x7c0003e4 $| ((($0) & 0x7) << 21)) \09\0Aslbmte\09$1, $2\09\0A", "i,r,r,~{memory}"(i32 0, i64 %13, i64 %12) #9, !srcloc !13
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !12
  %14 = tail call i64 @llvm.read_register.i64(metadata !0)
  %15 = inttoptr i64 %14 to ptr
  %slb_cache_ptr.i = getelementptr inbounds %struct.paca_struct, ptr %15, i64 0, i32 18
  store i8 0, ptr %slb_cache_ptr.i, align 2
  %16 = tail call i64 @llvm.read_register.i64(metadata !0)
  %17 = inttoptr i64 %16 to ptr
  %slb_kern_bitmap.i = getelementptr inbounds %struct.paca_struct, ptr %17, i64 0, i32 21
  store i32 3, ptr %slb_kern_bitmap.i, align 8
  %18 = tail call i64 @llvm.read_register.i64(metadata !0)
  %19 = inttoptr i64 %18 to ptr
  %slb_kern_bitmap68.i = getelementptr inbounds %struct.paca_struct, ptr %19, i64 0, i32 21
  %20 = load i32, ptr %slb_kern_bitmap68.i, align 8
  %slb_used_bitmap.i = getelementptr inbounds %struct.paca_struct, ptr %19, i64 0, i32 20
  store i32 %20, ptr %slb_used_bitmap.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @slb_setup_new_exec() local_unnamed_addr #1 {
entry:
  %0 = tail call ptr asm "ld $0,$1(13)", "=r,i"(i64 2312) #11, !srcloc !21
  %mm2 = getelementptr inbounds %struct.task_struct, ptr %0, i64 0, i32 46
  %1 = load ptr, ptr %mm2, align 8
  %2 = tail call i64 asm sideeffect "lbz $0,$1(13)", "=r,i"(i64 2354) #9, !srcloc !7
  %and.i = and i64 %2, 1
  callbr void asm sideeffect "1:\09tdnei  $4, 0\0A.section __ex_table,\22a\22; .balign 4; .long (1b) - . ; .long (${5:l}) - . ; .previous .section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,r,!i"(ptr nonnull @.str, i32 336, i32 2305, i64 12, i64 %and.i) #9
          to label %do.end49 [label %do.end49], !srcloc !22

do.end49:                                         ; preds = %entry, %entry
  %slb_preload_nr = getelementptr inbounds %struct.thread_info, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %slb_preload_nr, align 16
  %cmp55 = icmp ugt i8 %3, 14
  br i1 %cmp55, label %cleanup, label %do.body59

do.body59:                                        ; preds = %do.end49
  tail call void asm sideeffect "mtmsrd $0,1", "r,~{memory}"(i64 2) #9, !srcloc !9
  %4 = tail call i64 asm sideeffect "lbz $0,$1(13)", "=r,i"(i64 2354) #9, !srcloc !7
  tail call void asm sideeffect "stb $0,$1(13)", "r,i,~{memory}"(i64 3, i64 2354) #9, !srcloc !10
  %5 = tail call i64 @llvm.read_register.i64(metadata !0)
  %6 = inttoptr i64 %5 to ptr
  %irq_happened = getelementptr inbounds %struct.paca_struct, ptr %6, i64 0, i32 33
  %7 = load i8, ptr %irq_happened, align 1
  %8 = or i8 %7, 1
  store i8 %8, ptr %irq_happened, align 1
  %and.i102 = and i64 %4, 1
  %tobool.i103.not = icmp eq i64 %and.i102, 0
  br i1 %tobool.i103.not, label %if.then64, label %if.then73

if.then64:                                        ; preds = %do.body59
  %9 = tail call i64 @llvm.read_register.i64(metadata !0)
  %10 = inttoptr i64 %9 to ptr
  %saved_r1 = getelementptr inbounds %struct.paca_struct, ptr %10, i64 0, i32 27
  %11 = tail call i64 @llvm.read_register.i64(metadata !1)
  tail call void asm sideeffect "std${0:X} $1,$0", "=*m,{r1}"(ptr elementtype(i64) %saved_r1, i64 %11) #9, !srcloc !23
  br label %if.then73

if.then73:                                        ; preds = %do.body59, %if.then64
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 30), i64 1)) #9
          to label %mmu_has_feature.exit.i [label %mmu_has_feature.exit.i], !srcloc !24

mmu_has_feature.exit.i:                           ; preds = %if.then73, %if.then73
  %12 = load i8, ptr %slb_preload_nr, align 16
  %cmp14.not.i.i = icmp eq i8 %12, 0
  %slb_preload_tail.phi.trans.insert.i = getelementptr inbounds %struct.thread_info, ptr %0, i64 0, i32 4
  %.pre.i = load i8, ptr %slb_preload_tail.phi.trans.insert.i, align 1
  br i1 %cmp14.not.i.i, label %if.end6.thread.i, label %for.body.i.i

if.end6.thread.i:                                 ; preds = %mmu_has_feature.exit.i
  %rem42.i = and i8 %.pre.i, 15
  %idxprom44.i = zext i8 %rem42.i to i64
  %arrayidx45.i = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom44.i
  store i32 1, ptr %arrayidx45.i, align 4
  br label %if.else.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i8 %i.015.i.i, 1
  %cmp.i.i = icmp ult i8 %inc.i.i, %12
  br i1 %cmp.i.i, label %for.body.i.i, label %if.end6.i, !llvm.loop !25

for.body.i.i:                                     ; preds = %mmu_has_feature.exit.i, %for.cond.i.i
  %i.015.i.i = phi i8 [ %inc.i.i, %for.cond.i.i ], [ 0, %mmu_has_feature.exit.i ]
  %add.i.i = add i8 %i.015.i.i, %.pre.i
  %rem.i.i = and i8 %add.i.i, 15
  %idxprom.i.i = zext i8 %rem.i.i to i64
  %arrayidx.i.i = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom.i.i
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %cmp7.not.i.i = icmp eq i32 %13, 1
  br i1 %cmp7.not.i.i, label %if.end78, label %for.cond.i.i

if.end6.i:                                        ; preds = %for.cond.i.i
  %add.i = add i8 %.pre.i, %12
  %rem.i = and i8 %add.i, 15
  %idxprom.i = zext i8 %rem.i to i64
  %arrayidx.i = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom.i
  store i32 1, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq i8 %12, 16
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end6.i
  %14 = add i8 %.pre.i, 1
  %15 = and i8 %14, 15
  store i8 %15, ptr %slb_preload_tail.phi.trans.insert.i, align 1
  br label %if.then75

if.else.i:                                        ; preds = %if.end6.i, %if.end6.thread.i
  %inc.i = add i8 %12, 1
  store i8 %inc.i, ptr %slb_preload_nr, align 16
  br label %if.then75

if.then75:                                        ; preds = %if.then13.i, %if.else.i
  %hash_context.i.i = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 40, i32 4
  %16 = load ptr, ptr %hash_context.i.i, align 8
  %slb_addr_limit.i.i = getelementptr inbounds %struct.hash_mm_context, ptr %16, i64 0, i32 3
  %17 = load i64, ptr %slb_addr_limit.i.i, align 8
  %cmp.not.i = icmp ugt i64 %17, 268435456
  br i1 %cmp.not.i, label %if.end.i, label %if.end78

if.end.i:                                         ; preds = %if.then75
  %context1.i = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 40
  %18 = load i64, ptr %context1.i, align 8
  %19 = and i64 %18, 4294967295
  %tobool.not.i = icmp eq i64 %19, 0
  br i1 %tobool.not.i, label %if.end78, label %if.end29.i

if.end29.i:                                       ; preds = %if.end.i
  %sext.i = shl i64 %18, 32
  %conv.i = ashr exact i64 %sext.i, 32
  %call31.i = tail call zeroext i32 @get_slice_psize(ptr noundef %1, i64 noundef 268435456) #9
  %idxprom.i104 = sext i32 %call31.i to i64
  %20 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom.i104, i32 5
  %21 = load i64, ptr %20, align 8
  %or.i = or i64 %21, 3200
  %call32.i = tail call fastcc i64 @slb_insert_entry(i64 noundef 268435456, i64 noundef %conv.i, i64 noundef %or.i, i32 noundef signext 0, i1 noundef zeroext false), !range !26
  br label %if.end78

if.end78:                                         ; preds = %for.body.i.i, %if.end29.i, %if.end.i, %if.then75
  %mmap_base = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 2
  %22 = load i64, ptr %mmap_base, align 8
  %cmp79 = icmp ugt i64 %22, -4611686018427387905
  br i1 %cmp79, label %if.end88, label %if.then81

if.then81:                                        ; preds = %if.end78
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 30), i64 1)) #9
          to label %23 [label %mmu_has_feature.exit.i109], !srcloc !24

23:                                               ; preds = %if.then81
  %and34.i = and i64 %22, -1099511627776
  %tobool.not35.i = icmp eq i64 %and34.i, 0
  %spec.select36.i = select i1 %tobool.not35.i, i64 %22, i64 %and34.i
  br label %mmu_has_feature.exit.i109

mmu_has_feature.exit.i109:                        ; preds = %23, %if.then81
  %24 = phi i64 [ %spec.select36.i, %23 ], [ %22, %if.then81 ]
  %shr.i = lshr i64 %24, 28
  %25 = load i8, ptr %slb_preload_nr, align 16
  %cmp14.not.i.i106 = icmp eq i8 %25, 0
  %.pre.i108 = load i8, ptr %slb_preload_tail.phi.trans.insert.i, align 1
  br i1 %cmp14.not.i.i106, label %if.end6.thread.i114, label %for.body.i.i125

if.end6.thread.i114:                              ; preds = %mmu_has_feature.exit.i109
  %rem42.i111 = and i8 %.pre.i108, 15
  %conv943.i = trunc i64 %shr.i to i32
  %idxprom44.i112 = zext i8 %rem42.i111 to i64
  %arrayidx45.i113 = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom44.i112
  store i32 %conv943.i, ptr %arrayidx45.i113, align 4
  br label %if.else.i135

for.cond.i.i117:                                  ; preds = %for.body.i.i125
  %inc.i.i115 = add nuw i8 %i.015.i.i118, 1
  %cmp.i.i116 = icmp ult i8 %inc.i.i115, %25
  br i1 %cmp.i.i116, label %for.body.i.i125, label %if.end6.i131, !llvm.loop !25

for.body.i.i125:                                  ; preds = %mmu_has_feature.exit.i109, %for.cond.i.i117
  %i.015.i.i118 = phi i8 [ %inc.i.i115, %for.cond.i.i117 ], [ 0, %mmu_has_feature.exit.i109 ]
  %add.i.i119 = add i8 %i.015.i.i118, %.pre.i108
  %rem.i.i120 = and i8 %add.i.i119, 15
  %idxprom.i.i121 = zext i8 %rem.i.i120 to i64
  %arrayidx.i.i122 = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom.i.i121
  %26 = load i32, ptr %arrayidx.i.i122, align 4
  %conv6.i.i123 = zext i32 %26 to i64
  %cmp7.not.i.i124 = icmp eq i64 %shr.i, %conv6.i.i123
  br i1 %cmp7.not.i.i124, label %if.end88, label %for.cond.i.i117

if.end6.i131:                                     ; preds = %for.cond.i.i117
  %add.i126 = add i8 %.pre.i108, %25
  %rem.i127 = and i8 %add.i126, 15
  %conv9.i = trunc i64 %shr.i to i32
  %idxprom.i128 = zext i8 %rem.i127 to i64
  %arrayidx.i129 = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom.i128
  store i32 %conv9.i, ptr %arrayidx.i129, align 4
  %cmp.i130 = icmp eq i8 %25, 16
  br i1 %cmp.i130, label %if.then13.i133, label %if.else.i135

if.then13.i133:                                   ; preds = %if.end6.i131
  %27 = add i8 %.pre.i108, 1
  %28 = and i8 %27, 15
  store i8 %28, ptr %slb_preload_tail.phi.trans.insert.i, align 1
  br label %if.then84

if.else.i135:                                     ; preds = %if.end6.i131, %if.end6.thread.i114
  %inc.i134 = add i8 %25, 1
  store i8 %inc.i134, ptr %slb_preload_nr, align 16
  br label %if.then84

if.then84:                                        ; preds = %if.then13.i133, %if.else.i135
  %29 = load i64, ptr %mmap_base, align 8
  %context1.i138 = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 40
  %hash_context.i.i139 = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 40, i32 4
  %30 = load ptr, ptr %hash_context.i.i139, align 8
  %slb_addr_limit.i.i140 = getelementptr inbounds %struct.hash_mm_context, ptr %30, i64 0, i32 3
  %31 = load i64, ptr %slb_addr_limit.i.i140, align 8
  %cmp.not.i141 = icmp ugt i64 %31, %29
  br i1 %cmp.not.i141, label %if.end.i143, label %if.end88

if.end.i143:                                      ; preds = %if.then84
  %cmp.i.i142 = icmp ult i64 %29, 4503599627370496
  br i1 %cmp.i.i142, label %get_user_context.exit.i, label %if.end.i.i, !prof !27

if.end.i.i:                                       ; preds = %if.end.i143
  callbr void asm sideeffect "1:\09twi 31, 0, 0\0A.section __ex_table,\22a\22; .balign 4; .long (1b) - . ; .long (${4:l}) - . ; .previous .section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,!i"(ptr nonnull @.str.13, i32 281, i32 2305, i64 12) #9
          to label %do.end.i.i [label %if.end88], !srcloc !28

do.end.i.i:                                       ; preds = %if.end.i.i
  unreachable

get_user_context.exit.i:                          ; preds = %if.end.i143
  %shr.i.i = lshr i64 %29, 49
  %arrayidx.i.i144 = getelementptr [8 x i64], ptr %context1.i138, i64 0, i64 %shr.i.i
  %32 = load i64, ptr %arrayidx.i.i144, align 8
  %33 = and i64 %32, 4294967295
  %tobool.not.i145 = icmp eq i64 %33, 0
  br i1 %tobool.not.i145, label %if.end88, label %if.end29.i152

if.end29.i152:                                    ; preds = %get_user_context.exit.i
  %sext.i146 = shl i64 %32, 32
  %conv.i147 = ashr exact i64 %sext.i146, 32
  %cmp.i44.i = icmp ugt i64 %29, 1099511627775
  %34 = load i32, ptr @mmu_highuser_ssize, align 4
  %retval.0.i45.i = select i1 %cmp.i44.i, i32 %34, i32 0
  %call31.i148 = tail call zeroext i32 @get_slice_psize(ptr noundef %1, i64 noundef %29) #9
  %idxprom.i149 = sext i32 %call31.i148 to i64
  %35 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom.i149, i32 5
  %36 = load i64, ptr %35, align 8
  %or.i150 = or i64 %36, 3200
  %call32.i151 = tail call fastcc i64 @slb_insert_entry(i64 noundef %29, i64 noundef %conv.i147, i64 noundef %or.i150, i32 noundef signext %retval.0.i45.i, i1 noundef zeroext false), !range !26
  br label %if.end88

if.end88:                                         ; preds = %for.body.i.i125, %if.end29.i152, %get_user_context.exit.i, %if.end.i.i, %if.then84, %if.end78
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !29
  tail call void @arch_local_irq_restore(i64 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end88
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @preload_new_slb_context(i64 noundef %start, i64 noundef %sp) local_unnamed_addr #1 {
entry:
  %0 = tail call ptr asm "ld $0,$1(13)", "=r,i"(i64 2312) #11, !srcloc !21
  %mm2 = getelementptr inbounds %struct.task_struct, ptr %0, i64 0, i32 46
  %1 = load ptr, ptr %mm2, align 8
  %start_brk = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 30
  %2 = load i64, ptr %start_brk, align 8
  %3 = tail call i64 asm sideeffect "lbz $0,$1(13)", "=r,i"(i64 2354) #9, !srcloc !7
  %and.i = and i64 %3, 1
  callbr void asm sideeffect "1:\09tdnei  $4, 0\0A.section __ex_table,\22a\22; .balign 4; .long (1b) - . ; .long (${5:l}) - . ; .previous .section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,r,!i"(ptr nonnull @.str, i32 386, i32 2305, i64 12, i64 %and.i) #9
          to label %do.end49 [label %do.end49], !srcloc !30

do.end49:                                         ; preds = %entry, %entry
  %slb_preload_nr = getelementptr inbounds %struct.thread_info, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %slb_preload_nr, align 16
  %cmp55 = icmp ugt i8 %4, 13
  br i1 %cmp55, label %cleanup, label %do.body59

do.body59:                                        ; preds = %do.end49
  tail call void asm sideeffect "mtmsrd $0,1", "r,~{memory}"(i64 2) #9, !srcloc !9
  %5 = tail call i64 asm sideeffect "lbz $0,$1(13)", "=r,i"(i64 2354) #9, !srcloc !7
  tail call void asm sideeffect "stb $0,$1(13)", "r,i,~{memory}"(i64 3, i64 2354) #9, !srcloc !10
  %6 = tail call i64 @llvm.read_register.i64(metadata !0)
  %7 = inttoptr i64 %6 to ptr
  %irq_happened = getelementptr inbounds %struct.paca_struct, ptr %7, i64 0, i32 33
  %8 = load i8, ptr %irq_happened, align 1
  %9 = or i8 %8, 1
  store i8 %9, ptr %irq_happened, align 1
  %and.i114 = and i64 %5, 1
  %tobool.i115.not = icmp eq i64 %and.i114, 0
  br i1 %tobool.i115.not, label %if.then64, label %if.end68

if.then64:                                        ; preds = %do.body59
  %10 = tail call i64 @llvm.read_register.i64(metadata !0)
  %11 = inttoptr i64 %10 to ptr
  %saved_r1 = getelementptr inbounds %struct.paca_struct, ptr %11, i64 0, i32 27
  %12 = tail call i64 @llvm.read_register.i64(metadata !1)
  tail call void asm sideeffect "std${0:X} $1,$0", "=*m,{r1}"(ptr elementtype(i64) %saved_r1, i64 %12) #9, !srcloc !31
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %do.body59
  %cmp71 = icmp ugt i64 %start, -4611686018427387905
  br i1 %cmp71, label %if.end78, label %if.then73

if.then73:                                        ; preds = %if.end68
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 30), i64 1)) #9
          to label %13 [label %mmu_has_feature.exit.i], !srcloc !24

13:                                               ; preds = %if.then73
  %and34.i = and i64 %start, -1099511627776
  %tobool.not35.i = icmp eq i64 %and34.i, 0
  %spec.select36.i = select i1 %tobool.not35.i, i64 %start, i64 %and34.i
  br label %mmu_has_feature.exit.i

mmu_has_feature.exit.i:                           ; preds = %13, %if.then73
  %14 = phi i64 [ %spec.select36.i, %13 ], [ %start, %if.then73 ]
  %shr.i = lshr i64 %14, 28
  %15 = load i8, ptr %slb_preload_nr, align 16
  %cmp14.not.i.i = icmp eq i8 %15, 0
  %slb_preload_tail.phi.trans.insert.i = getelementptr inbounds %struct.thread_info, ptr %0, i64 0, i32 4
  %.pre.i = load i8, ptr %slb_preload_tail.phi.trans.insert.i, align 1
  br i1 %cmp14.not.i.i, label %if.end6.thread.i, label %for.body.i.i

if.end6.thread.i:                                 ; preds = %mmu_has_feature.exit.i
  %rem42.i = and i8 %.pre.i, 15
  %conv943.i = trunc i64 %shr.i to i32
  %idxprom44.i = zext i8 %rem42.i to i64
  %arrayidx45.i = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom44.i
  store i32 %conv943.i, ptr %arrayidx45.i, align 4
  br label %if.else.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i8 %i.015.i.i, 1
  %cmp.i.i = icmp ult i8 %inc.i.i, %15
  br i1 %cmp.i.i, label %for.body.i.i, label %if.end6.i, !llvm.loop !25

for.body.i.i:                                     ; preds = %mmu_has_feature.exit.i, %for.cond.i.i
  %i.015.i.i = phi i8 [ %inc.i.i, %for.cond.i.i ], [ 0, %mmu_has_feature.exit.i ]
  %add.i.i = add i8 %i.015.i.i, %.pre.i
  %rem.i.i = and i8 %add.i.i, 15
  %idxprom.i.i = zext i8 %rem.i.i to i64
  %arrayidx.i.i = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom.i.i
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %conv6.i.i = zext i32 %16 to i64
  %cmp7.not.i.i = icmp eq i64 %shr.i, %conv6.i.i
  br i1 %cmp7.not.i.i, label %if.end78, label %for.cond.i.i

if.end6.i:                                        ; preds = %for.cond.i.i
  %add.i = add i8 %.pre.i, %15
  %rem.i = and i8 %add.i, 15
  %conv9.i = trunc i64 %shr.i to i32
  %idxprom.i = zext i8 %rem.i to i64
  %arrayidx.i = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom.i
  store i32 %conv9.i, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq i8 %15, 16
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end6.i
  %17 = add i8 %.pre.i, 1
  %18 = and i8 %17, 15
  store i8 %18, ptr %slb_preload_tail.phi.trans.insert.i, align 1
  br label %if.then75

if.else.i:                                        ; preds = %if.end6.i, %if.end6.thread.i
  %inc.i = add i8 %15, 1
  store i8 %inc.i, ptr %slb_preload_nr, align 16
  br label %if.then75

if.then75:                                        ; preds = %if.then13.i, %if.else.i
  %context1.i = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 40
  %hash_context.i.i = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 40, i32 4
  %19 = load ptr, ptr %hash_context.i.i, align 8
  %slb_addr_limit.i.i = getelementptr inbounds %struct.hash_mm_context, ptr %19, i64 0, i32 3
  %20 = load i64, ptr %slb_addr_limit.i.i, align 8
  %cmp.not.i = icmp ugt i64 %20, %start
  br i1 %cmp.not.i, label %if.end.i, label %if.end78

if.end.i:                                         ; preds = %if.then75
  %cmp.i.i116 = icmp ult i64 %start, 4503599627370496
  br i1 %cmp.i.i116, label %get_user_context.exit.i, label %if.end.i.i, !prof !27

if.end.i.i:                                       ; preds = %if.end.i
  callbr void asm sideeffect "1:\09twi 31, 0, 0\0A.section __ex_table,\22a\22; .balign 4; .long (1b) - . ; .long (${4:l}) - . ; .previous .section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,!i"(ptr nonnull @.str.13, i32 281, i32 2305, i64 12) #9
          to label %do.end.i.i [label %if.end78], !srcloc !28

do.end.i.i:                                       ; preds = %if.end.i.i
  unreachable

get_user_context.exit.i:                          ; preds = %if.end.i
  %shr.i.i = lshr i64 %start, 49
  %arrayidx.i.i117 = getelementptr [8 x i64], ptr %context1.i, i64 0, i64 %shr.i.i
  %21 = load i64, ptr %arrayidx.i.i117, align 8
  %22 = and i64 %21, 4294967295
  %tobool.not.i = icmp eq i64 %22, 0
  br i1 %tobool.not.i, label %if.end78, label %if.end29.i

if.end29.i:                                       ; preds = %get_user_context.exit.i
  %sext.i = shl i64 %21, 32
  %conv.i = ashr exact i64 %sext.i, 32
  %cmp.i44.i = icmp ugt i64 %start, 1099511627775
  %23 = load i32, ptr @mmu_highuser_ssize, align 4
  %retval.0.i45.i = select i1 %cmp.i44.i, i32 %23, i32 0
  %call31.i = tail call zeroext i32 @get_slice_psize(ptr noundef %1, i64 noundef %start) #9
  %idxprom.i118 = sext i32 %call31.i to i64
  %24 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom.i118, i32 5
  %25 = load i64, ptr %24, align 8
  %or.i = or i64 %25, 3200
  %call32.i = tail call fastcc i64 @slb_insert_entry(i64 noundef %start, i64 noundef %conv.i, i64 noundef %or.i, i32 noundef signext %retval.0.i45.i, i1 noundef zeroext false), !range !26
  br label %if.end78

if.end78:                                         ; preds = %for.body.i.i, %if.end29.i, %get_user_context.exit.i, %if.end.i.i, %if.then75, %if.end68
  %cmp79 = icmp ugt i64 %sp, -4611686018427387905
  br i1 %cmp79, label %if.end86, label %if.then81

if.then81:                                        ; preds = %if.end78
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 30), i64 1)) #9
          to label %26 [label %mmu_has_feature.exit.i127], !srcloc !24

26:                                               ; preds = %if.then81
  %and34.i119 = and i64 %sp, -1099511627776
  %tobool.not35.i120 = icmp eq i64 %and34.i119, 0
  %spec.select36.i121 = select i1 %tobool.not35.i120, i64 %sp, i64 %and34.i119
  br label %mmu_has_feature.exit.i127

mmu_has_feature.exit.i127:                        ; preds = %26, %if.then81
  %27 = phi i64 [ %spec.select36.i121, %26 ], [ %sp, %if.then81 ]
  %shr.i122 = lshr i64 %27, 28
  %28 = load i8, ptr %slb_preload_nr, align 16
  %cmp14.not.i.i124 = icmp eq i8 %28, 0
  %slb_preload_tail.phi.trans.insert.i125 = getelementptr inbounds %struct.thread_info, ptr %0, i64 0, i32 4
  %.pre.i126 = load i8, ptr %slb_preload_tail.phi.trans.insert.i125, align 1
  br i1 %cmp14.not.i.i124, label %if.end6.thread.i133, label %for.body.i.i144

if.end6.thread.i133:                              ; preds = %mmu_has_feature.exit.i127
  %rem42.i129 = and i8 %.pre.i126, 15
  %conv943.i130 = trunc i64 %shr.i122 to i32
  %idxprom44.i131 = zext i8 %rem42.i129 to i64
  %arrayidx45.i132 = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom44.i131
  store i32 %conv943.i130, ptr %arrayidx45.i132, align 4
  br label %if.else.i155

for.cond.i.i136:                                  ; preds = %for.body.i.i144
  %inc.i.i134 = add nuw i8 %i.015.i.i137, 1
  %cmp.i.i135 = icmp ult i8 %inc.i.i134, %28
  br i1 %cmp.i.i135, label %for.body.i.i144, label %if.end6.i151, !llvm.loop !25

for.body.i.i144:                                  ; preds = %mmu_has_feature.exit.i127, %for.cond.i.i136
  %i.015.i.i137 = phi i8 [ %inc.i.i134, %for.cond.i.i136 ], [ 0, %mmu_has_feature.exit.i127 ]
  %add.i.i138 = add i8 %i.015.i.i137, %.pre.i126
  %rem.i.i139 = and i8 %add.i.i138, 15
  %idxprom.i.i140 = zext i8 %rem.i.i139 to i64
  %arrayidx.i.i141 = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom.i.i140
  %29 = load i32, ptr %arrayidx.i.i141, align 4
  %conv6.i.i142 = zext i32 %29 to i64
  %cmp7.not.i.i143 = icmp eq i64 %shr.i122, %conv6.i.i142
  br i1 %cmp7.not.i.i143, label %if.end86, label %for.cond.i.i136

if.end6.i151:                                     ; preds = %for.cond.i.i136
  %add.i145 = add i8 %.pre.i126, %28
  %rem.i146 = and i8 %add.i145, 15
  %conv9.i147 = trunc i64 %shr.i122 to i32
  %idxprom.i148 = zext i8 %rem.i146 to i64
  %arrayidx.i149 = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom.i148
  store i32 %conv9.i147, ptr %arrayidx.i149, align 4
  %cmp.i150 = icmp eq i8 %28, 16
  br i1 %cmp.i150, label %if.then13.i153, label %if.else.i155

if.then13.i153:                                   ; preds = %if.end6.i151
  %30 = add i8 %.pre.i126, 1
  %31 = and i8 %30, 15
  store i8 %31, ptr %slb_preload_tail.phi.trans.insert.i125, align 1
  br label %if.then83

if.else.i155:                                     ; preds = %if.end6.i151, %if.end6.thread.i133
  %inc.i154 = add i8 %28, 1
  store i8 %inc.i154, ptr %slb_preload_nr, align 16
  br label %if.then83

if.then83:                                        ; preds = %if.then13.i153, %if.else.i155
  %context1.i158 = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 40
  %hash_context.i.i159 = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 40, i32 4
  %32 = load ptr, ptr %hash_context.i.i159, align 8
  %slb_addr_limit.i.i160 = getelementptr inbounds %struct.hash_mm_context, ptr %32, i64 0, i32 3
  %33 = load i64, ptr %slb_addr_limit.i.i160, align 8
  %cmp.not.i161 = icmp ugt i64 %33, %sp
  br i1 %cmp.not.i161, label %if.end.i163, label %if.end86

if.end.i163:                                      ; preds = %if.then83
  %cmp.i.i162 = icmp ult i64 %sp, 4503599627370496
  br i1 %cmp.i.i162, label %get_user_context.exit.i169, label %if.end.i.i164, !prof !27

if.end.i.i164:                                    ; preds = %if.end.i163
  callbr void asm sideeffect "1:\09twi 31, 0, 0\0A.section __ex_table,\22a\22; .balign 4; .long (1b) - . ; .long (${4:l}) - . ; .previous .section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,!i"(ptr nonnull @.str.13, i32 281, i32 2305, i64 12) #9
          to label %do.end.i.i165 [label %if.end86], !srcloc !28

do.end.i.i165:                                    ; preds = %if.end.i.i164
  unreachable

get_user_context.exit.i169:                       ; preds = %if.end.i163
  %shr.i.i166 = lshr i64 %sp, 49
  %arrayidx.i.i167 = getelementptr [8 x i64], ptr %context1.i158, i64 0, i64 %shr.i.i166
  %34 = load i64, ptr %arrayidx.i.i167, align 8
  %35 = and i64 %34, 4294967295
  %tobool.not.i168 = icmp eq i64 %35, 0
  br i1 %tobool.not.i168, label %if.end86, label %if.end29.i178

if.end29.i178:                                    ; preds = %get_user_context.exit.i169
  %sext.i170 = shl i64 %34, 32
  %conv.i171 = ashr exact i64 %sext.i170, 32
  %cmp.i44.i172 = icmp ugt i64 %sp, 1099511627775
  %36 = load i32, ptr @mmu_highuser_ssize, align 4
  %retval.0.i45.i173 = select i1 %cmp.i44.i172, i32 %36, i32 0
  %call31.i174 = tail call zeroext i32 @get_slice_psize(ptr noundef %1, i64 noundef %sp) #9
  %idxprom.i175 = sext i32 %call31.i174 to i64
  %37 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom.i175, i32 5
  %38 = load i64, ptr %37, align 8
  %or.i176 = or i64 %38, 3200
  %call32.i177 = tail call fastcc i64 @slb_insert_entry(i64 noundef %sp, i64 noundef %conv.i171, i64 noundef %or.i176, i32 noundef signext %retval.0.i45.i173, i1 noundef zeroext false), !range !26
  br label %if.end86

if.end86:                                         ; preds = %for.body.i.i144, %if.end29.i178, %get_user_context.exit.i169, %if.end.i.i164, %if.then83, %if.end78
  %39 = add i64 %2, 4611686018427387904
  %or.cond = icmp ult i64 %39, 4611686018427387905
  br i1 %or.cond, label %if.end95, label %if.then90

if.then90:                                        ; preds = %if.end86
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 30), i64 1)) #9
          to label %40 [label %mmu_has_feature.exit.i189], !srcloc !24

40:                                               ; preds = %if.then90
  %and34.i181 = and i64 %2, -1099511627776
  %tobool.not35.i182 = icmp eq i64 %and34.i181, 0
  %spec.select36.i183 = select i1 %tobool.not35.i182, i64 %2, i64 %and34.i181
  br label %mmu_has_feature.exit.i189

mmu_has_feature.exit.i189:                        ; preds = %40, %if.then90
  %41 = phi i64 [ %spec.select36.i183, %40 ], [ %2, %if.then90 ]
  %shr.i184 = lshr i64 %41, 28
  %42 = load i8, ptr %slb_preload_nr, align 16
  %cmp14.not.i.i186 = icmp eq i8 %42, 0
  %slb_preload_tail.phi.trans.insert.i187 = getelementptr inbounds %struct.thread_info, ptr %0, i64 0, i32 4
  %.pre.i188 = load i8, ptr %slb_preload_tail.phi.trans.insert.i187, align 1
  br i1 %cmp14.not.i.i186, label %if.end6.thread.i195, label %for.body.i.i206

if.end6.thread.i195:                              ; preds = %mmu_has_feature.exit.i189
  %rem42.i191 = and i8 %.pre.i188, 15
  %conv943.i192 = trunc i64 %shr.i184 to i32
  %idxprom44.i193 = zext i8 %rem42.i191 to i64
  %arrayidx45.i194 = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom44.i193
  store i32 %conv943.i192, ptr %arrayidx45.i194, align 4
  br label %if.else.i217

for.cond.i.i198:                                  ; preds = %for.body.i.i206
  %inc.i.i196 = add nuw i8 %i.015.i.i199, 1
  %cmp.i.i197 = icmp ult i8 %inc.i.i196, %42
  br i1 %cmp.i.i197, label %for.body.i.i206, label %if.end6.i213, !llvm.loop !25

for.body.i.i206:                                  ; preds = %mmu_has_feature.exit.i189, %for.cond.i.i198
  %i.015.i.i199 = phi i8 [ %inc.i.i196, %for.cond.i.i198 ], [ 0, %mmu_has_feature.exit.i189 ]
  %add.i.i200 = add i8 %i.015.i.i199, %.pre.i188
  %rem.i.i201 = and i8 %add.i.i200, 15
  %idxprom.i.i202 = zext i8 %rem.i.i201 to i64
  %arrayidx.i.i203 = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom.i.i202
  %43 = load i32, ptr %arrayidx.i.i203, align 4
  %conv6.i.i204 = zext i32 %43 to i64
  %cmp7.not.i.i205 = icmp eq i64 %shr.i184, %conv6.i.i204
  br i1 %cmp7.not.i.i205, label %if.end95, label %for.cond.i.i198

if.end6.i213:                                     ; preds = %for.cond.i.i198
  %add.i207 = add i8 %.pre.i188, %42
  %rem.i208 = and i8 %add.i207, 15
  %conv9.i209 = trunc i64 %shr.i184 to i32
  %idxprom.i210 = zext i8 %rem.i208 to i64
  %arrayidx.i211 = getelementptr %struct.thread_info, ptr %0, i64 0, i32 5, i64 %idxprom.i210
  store i32 %conv9.i209, ptr %arrayidx.i211, align 4
  %cmp.i212 = icmp eq i8 %42, 16
  br i1 %cmp.i212, label %if.then13.i215, label %if.else.i217

if.then13.i215:                                   ; preds = %if.end6.i213
  %44 = add i8 %.pre.i188, 1
  %45 = and i8 %44, 15
  store i8 %45, ptr %slb_preload_tail.phi.trans.insert.i187, align 1
  br label %if.then92

if.else.i217:                                     ; preds = %if.end6.i213, %if.end6.thread.i195
  %inc.i216 = add i8 %42, 1
  store i8 %inc.i216, ptr %slb_preload_nr, align 16
  br label %if.then92

if.then92:                                        ; preds = %if.then13.i215, %if.else.i217
  %context1.i220 = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 40
  %hash_context.i.i221 = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 40, i32 4
  %46 = load ptr, ptr %hash_context.i.i221, align 8
  %slb_addr_limit.i.i222 = getelementptr inbounds %struct.hash_mm_context, ptr %46, i64 0, i32 3
  %47 = load i64, ptr %slb_addr_limit.i.i222, align 8
  %cmp.not.i223 = icmp ugt i64 %47, %2
  br i1 %cmp.not.i223, label %if.end.i225, label %if.end95

if.end.i225:                                      ; preds = %if.then92
  %cmp.i.i224 = icmp ult i64 %2, 4503599627370496
  br i1 %cmp.i.i224, label %get_user_context.exit.i231, label %if.end.i.i226, !prof !27

if.end.i.i226:                                    ; preds = %if.end.i225
  callbr void asm sideeffect "1:\09twi 31, 0, 0\0A.section __ex_table,\22a\22; .balign 4; .long (1b) - . ; .long (${4:l}) - . ; .previous .section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,!i"(ptr nonnull @.str.13, i32 281, i32 2305, i64 12) #9
          to label %do.end.i.i227 [label %if.end95], !srcloc !28

do.end.i.i227:                                    ; preds = %if.end.i.i226
  unreachable

get_user_context.exit.i231:                       ; preds = %if.end.i225
  %shr.i.i228 = lshr i64 %2, 49
  %arrayidx.i.i229 = getelementptr [8 x i64], ptr %context1.i220, i64 0, i64 %shr.i.i228
  %48 = load i64, ptr %arrayidx.i.i229, align 8
  %49 = and i64 %48, 4294967295
  %tobool.not.i230 = icmp eq i64 %49, 0
  br i1 %tobool.not.i230, label %if.end95, label %if.end29.i240

if.end29.i240:                                    ; preds = %get_user_context.exit.i231
  %sext.i232 = shl i64 %48, 32
  %conv.i233 = ashr exact i64 %sext.i232, 32
  %cmp.i44.i234 = icmp ugt i64 %2, 1099511627775
  %50 = load i32, ptr @mmu_highuser_ssize, align 4
  %retval.0.i45.i235 = select i1 %cmp.i44.i234, i32 %50, i32 0
  %call31.i236 = tail call zeroext i32 @get_slice_psize(ptr noundef %1, i64 noundef %2) #9
  %idxprom.i237 = sext i32 %call31.i236 to i64
  %51 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom.i237, i32 5
  %52 = load i64, ptr %51, align 8
  %or.i238 = or i64 %52, 3200
  %call32.i239 = tail call fastcc i64 @slb_insert_entry(i64 noundef %2, i64 noundef %conv.i233, i64 noundef %or.i238, i32 noundef signext %retval.0.i45.i235, i1 noundef zeroext false), !range !26
  br label %if.end95

if.end95:                                         ; preds = %for.body.i.i206, %if.end29.i240, %get_user_context.exit.i231, %if.end.i.i226, %if.then92, %if.end86
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !32
  tail call void @arch_local_irq_restore(i64 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end95
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @switch_slb(ptr nocapture noundef %tsk, ptr noundef %mm) local_unnamed_addr #1 {
entry:
  tail call void asm sideeffect "mtmsrd $0,1", "r,~{memory}"(i64 2) #9, !srcloc !9
  %0 = tail call i64 asm sideeffect "lbz $0,$1(13)", "=r,i"(i64 2354) #9, !srcloc !7
  tail call void asm sideeffect "stb $0,$1(13)", "r,i,~{memory}"(i64 3, i64 2354) #9, !srcloc !10
  %1 = tail call i64 @llvm.read_register.i64(metadata !0)
  %2 = inttoptr i64 %1 to ptr
  %irq_happened = getelementptr inbounds %struct.paca_struct, ptr %2, i64 0, i32 33
  %3 = load i8, ptr %irq_happened, align 1
  %4 = or i8 %3, 1
  store i8 %4, ptr %irq_happened, align 1
  %and.i = and i64 %0, 1
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = tail call i64 @llvm.read_register.i64(metadata !0)
  %6 = inttoptr i64 %5 to ptr
  %saved_r1 = getelementptr inbounds %struct.paca_struct, ptr %6, i64 0, i32 27
  %7 = tail call i64 @llvm.read_register.i64(metadata !1)
  tail call void asm sideeffect "std${0:X} $1,$0", "=*m,{r1}"(ptr elementtype(i64) %saved_r1, i64 %7) #9, !srcloc !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !12
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr nonnull @stress_slb_key) #9
          to label %if.else [label %if.then7], !srcloc !24

if.then7:                                         ; preds = %if.end
  %8 = tail call i64 @llvm.read_register.i64(metadata !0)
  %9 = inttoptr i64 %8 to ptr
  %slb_shadow_ptr.i = getelementptr inbounds %struct.paca_struct, ptr %9, i64 0, i32 11
  %10 = load ptr, ptr %slb_shadow_ptr.i, align 64
  %arrayidx.i = getelementptr %struct.slb_shadow, ptr %10, i64 0, i32 3, i64 1
  %11 = load i64, ptr %arrayidx.i, align 16
  %vsid.i = getelementptr %struct.slb_shadow, ptr %10, i64 0, i32 3, i64 1, i32 1
  %12 = load i64, ptr %vsid.i, align 8
  tail call void asm sideeffect ".long (0x7c0003e4 $| ((($0) & 0x7) << 21)) \09\0Aslbmte\09$1, $2\09\0A", "i,r,r,~{memory}"(i32 0, i64 %12, i64 %11) #9, !srcloc !13
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !12
  %13 = tail call i64 @llvm.read_register.i64(metadata !0)
  %14 = inttoptr i64 %13 to ptr
  %slb_cache_ptr = getelementptr inbounds %struct.paca_struct, ptr %14, i64 0, i32 18
  store i8 0, ptr %slb_cache_ptr, align 2
  %15 = tail call i64 @llvm.read_register.i64(metadata !0)
  %16 = inttoptr i64 %15 to ptr
  %slb_kern_bitmap = getelementptr inbounds %struct.paca_struct, ptr %16, i64 0, i32 21
  store i32 3, ptr %slb_kern_bitmap, align 8
  br label %if.end31

if.else:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([64 x %struct.static_key_true], ptr @cpu_feature_keys, i64 0, i64 17), i64 1)) #9
          to label %if.then9 [label %if.else10], !srcloc !24

if.then9:                                         ; preds = %if.else
  tail call void asm sideeffect ".long (0x7c0003e4 | (((3) & 0x7) << 21)) ", ""() #9, !srcloc !34
  br label %if.end31

if.else10:                                        ; preds = %if.else
  %17 = tail call i64 @llvm.read_register.i64(metadata !0)
  %18 = inttoptr i64 %17 to ptr
  %slb_cache_ptr11 = getelementptr inbounds %struct.paca_struct, ptr %18, i64 0, i32 18
  %19 = load i8, ptr %slb_cache_ptr11, align 2
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 25), i64 1)) #9
          to label %if.else26 [label %mmu_has_feature.exit], !srcloc !24

mmu_has_feature.exit:                             ; preds = %if.else10
  %cmp = icmp ugt i8 %19, 8
  br i1 %cmp, label %if.else26, label %for.cond.preheader

for.cond.preheader:                               ; preds = %mmu_has_feature.exit
  %cmp17112.not = icmp eq i8 %19, 0
  br i1 %cmp17112.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i8 %19 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %20 = tail call i64 @llvm.read_register.i64(metadata !0)
  %21 = inttoptr i64 %20 to ptr
  %arrayidx.i83 = getelementptr %struct.paca_struct, ptr %21, i64 0, i32 22, i64 %indvars.iv
  %22 = load i32, ptr %arrayidx.i83, align 4
  %conv.i = zext i32 %22 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 28
  %cmp.i.i = icmp ugt i32 %22, 4095
  %23 = load i32, ptr @mmu_highuser_ssize, align 4
  %24 = shl i32 %23, 25
  %shl1.i = select i1 %cmp.i.i, i32 %24, i32 0
  %conv2.i = sext i32 %shl1.i to i64
  %or.i = or i64 %shl.i, %conv2.i
  %or3.i = or i64 %or.i, 134217728
  tail call void asm sideeffect "slbie $0", "r"(i64 %or3.i) #9, !srcloc !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !36

for.end:                                          ; preds = %for.body, %for.cond.preheader
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([64 x %struct.static_key_true], ptr @cpu_feature_keys, i64 0, i64 16), i64 1)) #9
          to label %if.end28 [label %cpu_has_feature.exit78], !srcloc !24

cpu_has_feature.exit78:                           ; preds = %for.end
  %cmp22.not = icmp eq i8 %19, 1
  br i1 %cmp22.not, label %if.then24, label %if.end28

if.then24:                                        ; preds = %cpu_has_feature.exit78
  %25 = tail call i64 @llvm.read_register.i64(metadata !0)
  %26 = inttoptr i64 %25 to ptr
  %arrayidx.i84 = getelementptr %struct.paca_struct, ptr %26, i64 0, i32 22, i64 0
  %27 = load i32, ptr %arrayidx.i84, align 4
  %conv.i85 = zext i32 %27 to i64
  %shl.i86 = shl nuw nsw i64 %conv.i85, 28
  %cmp.i.i87 = icmp ugt i32 %27, 4095
  %28 = load i32, ptr @mmu_highuser_ssize, align 4
  %29 = shl i32 %28, 25
  %shl1.i88 = select i1 %cmp.i.i87, i32 %29, i32 0
  %conv2.i89 = sext i32 %shl1.i88 to i64
  %or.i90 = or i64 %shl.i86, %conv2.i89
  %or3.i91 = or i64 %or.i90, 134217728
  tail call void asm sideeffect "slbie $0", "r"(i64 %or3.i91) #9, !srcloc !35
  br label %if.end28

if.else26:                                        ; preds = %if.else10, %mmu_has_feature.exit
  %30 = tail call i64 @llvm.read_register.i64(metadata !0)
  %31 = inttoptr i64 %30 to ptr
  %slb_shadow_ptr.i79 = getelementptr inbounds %struct.paca_struct, ptr %31, i64 0, i32 11
  %32 = load ptr, ptr %slb_shadow_ptr.i79, align 64
  %arrayidx.i80 = getelementptr %struct.slb_shadow, ptr %32, i64 0, i32 3, i64 1
  %33 = load i64, ptr %arrayidx.i80, align 16
  %vsid.i81 = getelementptr %struct.slb_shadow, ptr %32, i64 0, i32 3, i64 1, i32 1
  %34 = load i64, ptr %vsid.i81, align 8
  tail call void asm sideeffect ".long (0x7c0003e4 $| ((($0) & 0x7) << 21)) \09\0Aslbmte\09$1, $2\09\0A", "i,r,r,~{memory}"(i32 1, i64 %34, i64 %33) #9, !srcloc !13
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !12
  %35 = tail call i64 @llvm.read_register.i64(metadata !0)
  %36 = inttoptr i64 %35 to ptr
  %slb_kern_bitmap27 = getelementptr inbounds %struct.paca_struct, ptr %36, i64 0, i32 21
  store i32 3, ptr %slb_kern_bitmap27, align 8
  br label %if.end28

if.end28:                                         ; preds = %for.end, %cpu_has_feature.exit78, %if.then24, %if.else26
  %37 = tail call i64 @llvm.read_register.i64(metadata !0)
  %38 = inttoptr i64 %37 to ptr
  %slb_cache_ptr29 = getelementptr inbounds %struct.paca_struct, ptr %38, i64 0, i32 18
  store i8 0, ptr %slb_cache_ptr29, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then9, %if.end28, %if.then7
  %39 = tail call i64 @llvm.read_register.i64(metadata !0)
  %40 = inttoptr i64 %39 to ptr
  %slb_kern_bitmap32 = getelementptr inbounds %struct.paca_struct, ptr %40, i64 0, i32 21
  %41 = load i32, ptr %slb_kern_bitmap32, align 8
  %slb_used_bitmap = getelementptr inbounds %struct.paca_struct, ptr %40, i64 0, i32 20
  store i32 %41, ptr %slb_used_bitmap, align 4
  tail call void @copy_mm_to_paca(ptr noundef %mm) #9
  %load_slb = getelementptr inbounds %struct.task_struct, ptr %tsk, i64 0, i32 207, i32 13
  %42 = load i8, ptr %load_slb, align 8
  %inc33 = add i8 %42, 1
  store i8 %inc33, ptr %load_slb, align 8
  %tobool.not = icmp eq i8 %inc33, 0
  br i1 %tobool.not, label %if.then36, label %if.end31.if.end42_crit_edge

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  %slb_preload_nr.phi.trans.insert = getelementptr inbounds %struct.thread_info, ptr %tsk, i64 0, i32 3
  %.pre = load i8, ptr %slb_preload_nr.phi.trans.insert, align 16
  br label %if.end42

if.then36:                                        ; preds = %if.end31
  %regs = getelementptr inbounds %struct.task_struct, ptr %tsk, i64 0, i32 207, i32 2
  %43 = load ptr, ptr %regs, align 16
  %tobool38.not = icmp eq ptr %43, null
  br i1 %tobool38.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then36
  %nip = getelementptr inbounds %struct.anon.85, ptr %43, i64 0, i32 1
  %44 = load i64, ptr %nip, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then36, %cond.true
  %cond = phi i64 [ %44, %cond.true ], [ 0, %if.then36 ]
  %slb_preload_nr.i = getelementptr inbounds %struct.thread_info, ptr %tsk, i64 0, i32 3
  %45 = load i8, ptr %slb_preload_nr.i, align 16
  %tobool.not.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i, label %preload_age.exit, label %if.end.i

if.end.i:                                         ; preds = %cond.end
  %dec.i = add i8 %45, -1
  store i8 %dec.i, ptr %slb_preload_nr.i, align 16
  %slb_preload_tail.i = getelementptr inbounds %struct.thread_info, ptr %tsk, i64 0, i32 4
  %46 = load i8, ptr %slb_preload_tail.i, align 1
  %47 = add i8 %46, 1
  %48 = and i8 %47, 15
  store i8 %48, ptr %slb_preload_tail.i, align 1
  br label %preload_age.exit

preload_age.exit:                                 ; preds = %cond.end, %if.end.i
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 30), i64 1)) #9
          to label %49 [label %mmu_has_feature.exit.i], !srcloc !24

49:                                               ; preds = %preload_age.exit
  %and34.i = and i64 %cond, -1099511627776
  %tobool.not35.i = icmp eq i64 %and34.i, 0
  %spec.select36.i = select i1 %tobool.not35.i, i64 %cond, i64 %and34.i
  br label %mmu_has_feature.exit.i

mmu_has_feature.exit.i:                           ; preds = %49, %preload_age.exit
  %50 = phi i64 [ %spec.select36.i, %49 ], [ %cond, %preload_age.exit ]
  %shr.i = lshr i64 %50, 28
  %51 = load i8, ptr %slb_preload_nr.i, align 16
  %cmp14.not.i.i = icmp eq i8 %51, 0
  %slb_preload_tail.phi.trans.insert.i = getelementptr inbounds %struct.thread_info, ptr %tsk, i64 0, i32 4
  %.pre.i = load i8, ptr %slb_preload_tail.phi.trans.insert.i, align 1
  br i1 %cmp14.not.i.i, label %if.end6.thread.i, label %for.body.i.i

if.end6.thread.i:                                 ; preds = %mmu_has_feature.exit.i
  %rem42.i = and i8 %.pre.i, 15
  %conv943.i = trunc i64 %shr.i to i32
  %idxprom44.i = zext i8 %rem42.i to i64
  %arrayidx45.i = getelementptr %struct.thread_info, ptr %tsk, i64 0, i32 5, i64 %idxprom44.i
  store i32 %conv943.i, ptr %arrayidx45.i, align 4
  br label %if.else.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i8 %i.015.i.i, 1
  %cmp.i.i92 = icmp ult i8 %inc.i.i, %51
  br i1 %cmp.i.i92, label %for.body.i.i, label %if.end6.i, !llvm.loop !25

for.body.i.i:                                     ; preds = %mmu_has_feature.exit.i, %for.cond.i.i
  %i.015.i.i = phi i8 [ %inc.i.i, %for.cond.i.i ], [ 0, %mmu_has_feature.exit.i ]
  %add.i.i = add i8 %i.015.i.i, %.pre.i
  %rem.i.i = and i8 %add.i.i, 15
  %idxprom.i.i = zext i8 %rem.i.i to i64
  %arrayidx.i.i = getelementptr %struct.thread_info, ptr %tsk, i64 0, i32 5, i64 %idxprom.i.i
  %52 = load i32, ptr %arrayidx.i.i, align 4
  %conv6.i.i = zext i32 %52 to i64
  %cmp7.not.i.i = icmp eq i64 %shr.i, %conv6.i.i
  br i1 %cmp7.not.i.i, label %for.body48.lr.ph, label %for.cond.i.i

if.end6.i:                                        ; preds = %for.cond.i.i
  %add.i = add i8 %.pre.i, %51
  %rem.i = and i8 %add.i, 15
  %conv9.i = trunc i64 %shr.i to i32
  %idxprom.i93 = zext i8 %rem.i to i64
  %arrayidx.i94 = getelementptr %struct.thread_info, ptr %tsk, i64 0, i32 5, i64 %idxprom.i93
  store i32 %conv9.i, ptr %arrayidx.i94, align 4
  %cmp.i = icmp eq i8 %51, 16
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end6.i
  %53 = add i8 %.pre.i, 1
  %54 = and i8 %53, 15
  store i8 %54, ptr %slb_preload_tail.phi.trans.insert.i, align 1
  br label %for.body48.lr.ph

if.else.i:                                        ; preds = %if.end6.i, %if.end6.thread.i
  %inc.i = add i8 %51, 1
  store i8 %inc.i, ptr %slb_preload_nr.i, align 16
  br label %if.end42

if.end42:                                         ; preds = %if.end31.if.end42_crit_edge, %if.else.i
  %55 = phi i8 [ %.pre, %if.end31.if.end42_crit_edge ], [ %inc.i, %if.else.i ]
  %cmp46114.not = icmp eq i8 %55, 0
  br i1 %cmp46114.not, label %for.end56, label %for.body48.lr.ph

for.body48.lr.ph:                                 ; preds = %for.body.i.i, %if.then13.i, %if.end42
  %slb_preload_nr118 = getelementptr inbounds %struct.thread_info, ptr %tsk, i64 0, i32 3
  %slb_preload_tail = getelementptr inbounds %struct.thread_info, ptr %tsk, i64 0, i32 4
  %context1.i = getelementptr inbounds %struct.anon.2, ptr %mm, i64 0, i32 40
  %hash_context.i.i = getelementptr inbounds %struct.anon.2, ptr %mm, i64 0, i32 40, i32 4
  br label %for.body48

for.body48:                                       ; preds = %for.body48.lr.ph, %slb_allocate_user.exit
  %i.1115 = phi i8 [ 0, %for.body48.lr.ph ], [ %inc55, %slb_allocate_user.exit ]
  %56 = load i8, ptr %slb_preload_tail, align 1
  %add = add i8 %56, %i.1115
  %rem = and i8 %add, 15
  %idxprom = zext i8 %rem to i64
  %arrayidx = getelementptr %struct.thread_info, ptr %tsk, i64 0, i32 5, i64 %idxprom
  %57 = load i32, ptr %arrayidx, align 4
  %conv52 = zext i32 %57 to i64
  %shl = shl nuw nsw i64 %conv52, 28
  %58 = load ptr, ptr %hash_context.i.i, align 8
  %slb_addr_limit.i.i = getelementptr inbounds %struct.hash_mm_context, ptr %58, i64 0, i32 3
  %59 = load i64, ptr %slb_addr_limit.i.i, align 8
  %cmp.not.i = icmp ugt i64 %59, %shl
  br i1 %cmp.not.i, label %if.end.i97, label %slb_allocate_user.exit

if.end.i97:                                       ; preds = %for.body48
  %cmp.i.i96 = icmp ult i32 %57, 16777216
  br i1 %cmp.i.i96, label %get_user_context.exit.i, label %if.end.i.i, !prof !27

if.end.i.i:                                       ; preds = %if.end.i97
  callbr void asm sideeffect "1:\09twi 31, 0, 0\0A.section __ex_table,\22a\22; .balign 4; .long (1b) - . ; .long (${4:l}) - . ; .previous .section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,!i"(ptr nonnull @.str.13, i32 281, i32 2305, i64 12) #9
          to label %do.end.i.i [label %slb_allocate_user.exit], !srcloc !28

do.end.i.i:                                       ; preds = %if.end.i.i
  unreachable

get_user_context.exit.i:                          ; preds = %if.end.i97
  %shr.i.i = lshr i64 %conv52, 21
  %arrayidx.i.i98 = getelementptr [8 x i64], ptr %context1.i, i64 0, i64 %shr.i.i
  %60 = load i64, ptr %arrayidx.i.i98, align 8
  %61 = and i64 %60, 4294967295
  %tobool.not.i99 = icmp eq i64 %61, 0
  br i1 %tobool.not.i99, label %slb_allocate_user.exit, label %if.end29.i

if.end29.i:                                       ; preds = %get_user_context.exit.i
  %sext.i = shl i64 %60, 32
  %conv.i100 = ashr exact i64 %sext.i, 32
  %cmp.i44.i = icmp ugt i32 %57, 4095
  %62 = load i32, ptr @mmu_highuser_ssize, align 4
  %retval.0.i45.i = select i1 %cmp.i44.i, i32 %62, i32 0
  %call31.i = tail call zeroext i32 @get_slice_psize(ptr noundef %mm, i64 noundef %shl) #9
  %idxprom.i101 = sext i32 %call31.i to i64
  %63 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom.i101, i32 5
  %64 = load i64, ptr %63, align 8
  %or.i102 = or i64 %64, 3200
  %call32.i = tail call fastcc i64 @slb_insert_entry(i64 noundef %shl, i64 noundef %conv.i100, i64 noundef %or.i102, i32 noundef signext %retval.0.i45.i, i1 noundef zeroext false), !range !26
  br label %slb_allocate_user.exit

slb_allocate_user.exit:                           ; preds = %for.body48, %if.end.i.i, %get_user_context.exit.i, %if.end29.i
  %inc55 = add nuw i8 %i.1115, 1
  %65 = load i8, ptr %slb_preload_nr118, align 16
  %cmp46 = icmp ult i8 %inc55, %65
  br i1 %cmp46, label %for.body48, label %for.end56, !llvm.loop !37

for.end56:                                        ; preds = %slb_allocate_user.exit, %if.end42
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @copy_mm_to_paca(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local void @slb_set_size(i16 noundef zeroext %size) local_unnamed_addr #5 {
entry:
  store i16 %size, ptr @mmu_slb_size, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
define dso_local void @slb_initialize() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @mmu_linear_psize, align 4
  %idxprom = sext i32 %0 to i64
  %1 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom, i32 5
  %2 = load i64, ptr %1, align 8
  %3 = load i32, ptr @mmu_vmalloc_psize, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom3, i32 5
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  %conv = or i16 %6, 1024
  %7 = tail call i64 @llvm.read_register.i64(metadata !0)
  %8 = inttoptr i64 %7 to ptr
  %vmalloc_sllp = getelementptr inbounds %struct.paca_struct, ptr %8, i64 0, i32 17
  store i16 %conv, ptr %vmalloc_sllp, align 16
  %.b = load i1, ptr @slb_initialize.slb_encoding_inited, align 4
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, ptr @slb_initialize.slb_encoding_inited, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = tail call i64 @llvm.read_register.i64(metadata !0)
  %10 = inttoptr i64 %9 to ptr
  %stab_rr = getelementptr inbounds %struct.paca_struct, ptr %10, i64 0, i32 19
  store i8 1, ptr %stab_rr, align 1
  %11 = tail call i64 @llvm.read_register.i64(metadata !0)
  %12 = inttoptr i64 %11 to ptr
  %slb_kern_bitmap = getelementptr inbounds %struct.paca_struct, ptr %12, i64 0, i32 21
  store i32 3, ptr %slb_kern_bitmap, align 8
  %13 = tail call i64 @llvm.read_register.i64(metadata !0)
  %14 = inttoptr i64 %13 to ptr
  %slb_kern_bitmap9 = getelementptr inbounds %struct.paca_struct, ptr %14, i64 0, i32 21
  %15 = load i32, ptr %slb_kern_bitmap9, align 8
  %slb_used_bitmap = getelementptr inbounds %struct.paca_struct, ptr %14, i64 0, i32 20
  store i32 %15, ptr %slb_used_bitmap, align 4
  %or10 = or i64 %2, 1024
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect "slbmte  $0,$0", "r,~{memory}"(i32 0) #9, !srcloc !39
  tail call void asm sideeffect "isync; slbia; isync", "~{memory}"() #9, !srcloc !40
  %16 = load i32, ptr @mmu_kernel_ssize, align 4
  %17 = tail call i64 @llvm.read_register.i64(metadata !0)
  %18 = inttoptr i64 %17 to ptr
  %slb_shadow_ptr.i.i = getelementptr inbounds %struct.paca_struct, ptr %18, i64 0, i32 11
  %19 = load ptr, ptr %slb_shadow_ptr.i.i, align 64
  %arrayidx.i.i = getelementptr %struct.slb_shadow, ptr %19, i64 0, i32 3, i64 0
  store volatile i64 0, ptr %arrayidx.i.i, align 16
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 13), i64 1)) #9
          to label %20 [label %mmu_has_feature.exit.i.i.i.i.i], !srcloc !24

20:                                               ; preds = %if.end
  br label %mmu_has_feature.exit.i.i.i.i.i

mmu_has_feature.exit.i.i.i.i.i:                   ; preds = %20, %if.end
  %21 = phi i32 [ 68, %20 ], [ 65, %if.end ]
  %cmp3.i.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %if.end7.i.i.i.i.i

if.then4.i.i.i.i.i:                               ; preds = %mmu_has_feature.exit.i.i.i.i.i
  %conv.i.i.i.i.i = add nsw i32 %21, -28
  %sh_prom.i.i.i.i.i.i = zext i32 %conv.i.i.i.i.i to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %sh_prom.i.i.i.i.i.i
  %sub.i.i6.i.i.i.i = xor i64 %notmask.i.i.i.i.i.i, -1
  %shr.i.i.i.i.i.i = lshr i64 26294244868096, %sh_prom.i.i.i.i.i.i
  %and.i.i.i.i.i.i = and i64 %sub.i.i6.i.i.i.i, 26294244868096
  %add.i.i.i.i.i.i = or i64 %and.i.i.i.i.i.i, %shr.i.i.i.i.i.i
  br label %slb_shadow_update.exit.i

if.end7.i.i.i.i.i:                                ; preds = %mmu_has_feature.exit.i.i.i.i.i
  %conv13.i.i.i.i.i = add nsw i32 %21, -40
  %sh_prom.i23.i.i.i.i.i = zext i32 %conv13.i.i.i.i.i to i64
  %notmask.i24.i.i.i.i.i = shl nsw i64 -1, %sh_prom.i23.i.i.i.i.i
  %sub.i25.i.i.i.i.i = xor i64 %notmask.i24.i.i.i.i.i, -1
  %shr.i27.i.i.i.i.i = lshr i64 6419493376, %sh_prom.i23.i.i.i.i.i
  %and.i28.i.i.i.i.i = and i64 %sub.i25.i.i.i.i.i, 6419493376
  %add.i29.i.i.i.i.i = or i64 %and.i28.i.i.i.i.i, %shr.i27.i.i.i.i.i
  br label %slb_shadow_update.exit.i

slb_shadow_update.exit.i:                         ; preds = %if.end7.i.i.i.i.i, %if.then4.i.i.i.i.i
  %add.i29.i.i.i.i.i.sink93 = phi i64 [ %add.i29.i.i.i.i.i, %if.end7.i.i.i.i.i ], [ %add.i.i.i.i.i.i, %if.then4.i.i.i.i.i ]
  %sh_prom.i23.i.i.i.i.i.sink = phi i64 [ %sh_prom.i23.i.i.i.i.i, %if.end7.i.i.i.i.i ], [ %sh_prom.i.i.i.i.i.i, %if.then4.i.i.i.i.i ]
  %sub.i25.i.i.i.i.i.sink = phi i64 [ %sub.i25.i.i.i.i.i, %if.end7.i.i.i.i.i ], [ %sub.i.i6.i.i.i.i, %if.then4.i.i.i.i.i ]
  %..i.i.i.i.i = phi i64 [ 24, %if.end7.i.i.i.i.i ], [ 12, %if.then4.i.i.i.i.i ]
  %add2.i30.i.i.i.i.i = add nuw nsw i64 %add.i29.i.i.i.i.i.sink93, 1
  %shr4.i31.i.i.i.i.i = lshr i64 %add2.i30.i.i.i.i.i, %sh_prom.i23.i.i.i.i.i.sink
  %add5.i32.i.i.i.i.i = add nuw nsw i64 %shr4.i31.i.i.i.i.i, %add.i29.i.i.i.i.i.sink93
  %and6.i33.i.i.i.i.i = and i64 %add5.i32.i.i.i.i.i, %sub.i25.i.i.i.i.i.sink
  %shl.i.i.i.i = shl nuw i64 %and6.i33.i.i.i.i.i, %..i.i.i.i.i
  %conv4.i.i.i.i = zext i32 %16 to i64
  %shl1.i.i.i.i = shl i64 %conv4.i.i.i.i, 62
  %or.i.i.i.i = or i64 %shl1.i.i.i.i, %or10
  %or2.i.i.i.i = or i64 %shl.i.i.i.i, %or.i.i.i.i
  %vsid.i.i = getelementptr %struct.slb_shadow, ptr %19, i64 0, i32 3, i64 0, i32 1
  store volatile i64 %or2.i.i.i.i, ptr %vsid.i.i, align 8
  store volatile i64 -4611686018293170176, ptr %arrayidx.i.i, align 16
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 13), i64 1)) #9
          to label %22 [label %mmu_has_feature.exit.i.i.i.i], !srcloc !24

22:                                               ; preds = %slb_shadow_update.exit.i
  br label %mmu_has_feature.exit.i.i.i.i

mmu_has_feature.exit.i.i.i.i:                     ; preds = %22, %slb_shadow_update.exit.i
  %23 = phi i32 [ 68, %22 ], [ 65, %slb_shadow_update.exit.i ]
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i, label %if.end7.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %mmu_has_feature.exit.i.i.i.i
  %conv.i.i.i.i = add nsw i32 %23, -28
  %sh_prom.i.i.i.i.i = zext i32 %conv.i.i.i.i to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %sh_prom.i.i.i.i.i
  %sub.i.i6.i.i.i = xor i64 %notmask.i.i.i.i.i, -1
  %shr.i.i.i.i12.i = lshr i64 26294244868096, %sh_prom.i.i.i.i.i
  %and.i.i.i.i13.i = and i64 %sub.i.i6.i.i.i, 26294244868096
  %add.i.i.i.i14.i = or i64 %and.i.i.i.i13.i, %shr.i.i.i.i12.i
  br label %create_shadowed_slbe.exit

if.end7.i.i.i.i:                                  ; preds = %mmu_has_feature.exit.i.i.i.i
  %conv13.i.i.i.i = add nsw i32 %23, -40
  %sh_prom.i23.i.i.i.i = zext i32 %conv13.i.i.i.i to i64
  %notmask.i24.i.i.i.i = shl nsw i64 -1, %sh_prom.i23.i.i.i.i
  %sub.i25.i.i.i.i = xor i64 %notmask.i24.i.i.i.i, -1
  %shr.i27.i.i.i.i = lshr i64 6419493376, %sh_prom.i23.i.i.i.i
  %and.i28.i.i.i.i = and i64 %sub.i25.i.i.i.i, 6419493376
  %add.i29.i.i.i.i = or i64 %and.i28.i.i.i.i, %shr.i27.i.i.i.i
  br label %create_shadowed_slbe.exit

create_shadowed_slbe.exit:                        ; preds = %if.then4.i.i.i.i, %if.end7.i.i.i.i
  %add.i.i.i.i14.i.sink94 = phi i64 [ %add.i.i.i.i14.i, %if.then4.i.i.i.i ], [ %add.i29.i.i.i.i, %if.end7.i.i.i.i ]
  %sh_prom.i.i.i.i.i.sink = phi i64 [ %sh_prom.i.i.i.i.i, %if.then4.i.i.i.i ], [ %sh_prom.i23.i.i.i.i, %if.end7.i.i.i.i ]
  %sub.i.i6.i.i.i.sink = phi i64 [ %sub.i.i6.i.i.i, %if.then4.i.i.i.i ], [ %sub.i25.i.i.i.i, %if.end7.i.i.i.i ]
  %add2.i.i.i.i.i = add nuw nsw i64 %add.i.i.i.i14.i.sink94, 1
  %shr4.i.i.i.i.i = lshr i64 %add2.i.i.i.i.i, %sh_prom.i.i.i.i.i.sink
  %add5.i.i.i.i.i = add nuw nsw i64 %shr4.i.i.i.i.i, %add.i.i.i.i14.i.sink94
  %and6.i.i.i.i.i = and i64 %add5.i.i.i.i.i, %sub.i.i6.i.i.i.sink
  %shl.i.i.i = shl nuw i64 %and6.i.i.i.i.i, %..i.i.i.i.i
  %or2.i.i.i = or i64 %shl.i.i.i, %or.i.i.i.i
  tail call void asm sideeffect "slbmte  $0,$1", "r,r,~{memory}"(i64 %or2.i.i.i, i64 -4611686018293170176) #9, !srcloc !41
  %24 = tail call i64 @llvm.read_register.i64(metadata !0)
  %25 = inttoptr i64 %24 to ptr
  %slb_shadow_ptr.i = getelementptr inbounds %struct.paca_struct, ptr %25, i64 0, i32 11
  %26 = load ptr, ptr %slb_shadow_ptr.i, align 64
  %arrayidx.i = getelementptr %struct.slb_shadow, ptr %26, i64 0, i32 3, i64 1
  store volatile i64 1, ptr %arrayidx.i, align 16
  %27 = tail call i64 @llvm.read_register.i64(metadata !0)
  %28 = inttoptr i64 %27 to ptr
  %paca_index = getelementptr inbounds %struct.paca_struct, ptr %28, i64 0, i32 2
  %29 = load i16, ptr %paca_index, align 2
  %conv11 = zext i16 %29 to i32
  %30 = load i32, ptr @boot_cpuid, align 4
  %cmp.not = icmp eq i32 %30, %conv11
  br i1 %cmp.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %create_shadowed_slbe.exit
  %kstack = getelementptr inbounds %struct.paca_struct, ptr %28, i64 0, i32 26
  %31 = load i64, ptr %kstack, align 16
  %32 = load i32, ptr @mmu_kernel_ssize, align 4
  %cmp13 = icmp eq i32 %32, 0
  %cond = select i1 %cmp13, i64 -268435456, i64 -1099511627776
  %and = and i64 %cond, %31
  %cmp15 = icmp ugt i64 %and, -4611686018427387904
  br i1 %cmp15, label %if.end.i.i.i.i.i.i, label %if.end19

if.end.i.i.i.i.i.i:                               ; preds = %land.lhs.true
  %slb_shadow_ptr.i.i21 = getelementptr inbounds %struct.paca_struct, ptr %28, i64 0, i32 11
  %33 = load ptr, ptr %slb_shadow_ptr.i.i21, align 64
  %arrayidx.i.i22 = getelementptr %struct.slb_shadow, ptr %33, i64 0, i32 3, i64 1
  store volatile i64 0, ptr %arrayidx.i.i22, align 16
  %shr.mask.i.i.i.i.i.i = and i64 %31, -1152921504606846976
  %cmp3.not.i.i.i.i.i.i = icmp eq i64 %shr.mask.i.i.i.i.i.i, -4611686018427387904
  br i1 %cmp3.not.i.i.i.i.i.i, label %if.end6.i.i.i.i.i.i, label %get_kernel_context.exit.i.i.i.i

if.end6.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.i
  %cmp7.i.i.i.i.i.i = icmp ult i64 %31, -4609434218613702656
  br i1 %cmp7.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end.i.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %if.end6.i.i.i.i.i.i
  %sub.i.i.i.i.i.i = add nsw i64 %31, 4609434218613702656
  %shr11.i.i.i.i.i.i = lshr i64 %sub.i.i.i.i.i.i, 49
  %34 = add nuw nsw i64 %shr11.i.i.i.i.i.i, 5
  br label %get_kernel_context.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end6.i.i.i.i.i.i
  %and.i.i.i.i.i = lshr i64 %31, 49
  %shr.i.i.i.i.i = and i64 %and.i.i.i.i.i, 8191
  %add.i.i.i.i.i = add nuw nsw i64 %shr.i.i.i.i.i, 1
  br label %get_kernel_context.exit.i.i.i.i

get_kernel_context.exit.i.i.i.i:                  ; preds = %if.then.i.i.i.i.i, %do.end.i.i.i.i.i.i, %if.end.i.i.i.i.i.i
  %ctx.0.i.i.i.i.i = phi i64 [ %add.i.i.i.i.i, %if.then.i.i.i.i.i ], [ 8, %if.end.i.i.i.i.i.i ], [ %34, %do.end.i.i.i.i.i.i ]
  %and.i4.i.i.i.i = and i64 %31, 4607182418800017408
  %cmp.not.i.i.i.i.i = icmp eq i64 %and.i4.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.i9.i

if.end.i.i.i.i.i:                                 ; preds = %get_kernel_context.exit.i.i.i.i
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 13), i64 1)) #9
          to label %35 [label %mmu_has_feature.exit.i.i.i.i.i24], !srcloc !24

35:                                               ; preds = %if.end.i.i.i.i.i
  br label %mmu_has_feature.exit.i.i.i.i.i24

mmu_has_feature.exit.i.i.i.i.i24:                 ; preds = %35, %if.end.i.i.i.i.i
  %36 = phi i32 [ 68, %35 ], [ 65, %if.end.i.i.i.i.i ]
  br i1 %cmp13, label %if.then4.i.i.i.i.i37, label %if.end7.i.i.i.i.i50

if.then4.i.i.i.i.i37:                             ; preds = %mmu_has_feature.exit.i.i.i.i.i24
  %shl.i.i.i.i.i = shl nuw nsw i64 %ctx.0.i.i.i.i.i, 21
  %shr.i5.i.i.i.i = lshr i64 %31, 28
  %and5.i.i.i.i.i = and i64 %shr.i5.i.i.i.i, 2097151
  %or.i.i.i.i.i = or i64 %shl.i.i.i.i.i, %and5.i.i.i.i.i
  %conv.i.i.i.i.i25 = add nsw i32 %36, -28
  %sh_prom.i.i.i.i.i.i26 = zext i32 %conv.i.i.i.i.i25 to i64
  %notmask.i.i.i.i.i.i27 = shl nsw i64 -1, %sh_prom.i.i.i.i.i.i26
  %sub.i.i6.i.i.i.i28 = xor i64 %notmask.i.i.i.i.i.i27, -1
  %mul.i.i.i.i.i.i29 = mul nuw nsw i64 %or.i.i.i.i.i, 12538073
  %shr.i.i.i.i.i.i30 = lshr i64 %mul.i.i.i.i.i.i29, %sh_prom.i.i.i.i.i.i26
  %and.i.i.i.i.i.i31 = and i64 %mul.i.i.i.i.i.i29, %sub.i.i6.i.i.i.i28
  %add.i.i.i.i.i.i32 = add nuw nsw i64 %and.i.i.i.i.i.i31, %shr.i.i.i.i.i.i30
  %add2.i.i.i.i.i.i33 = add nuw nsw i64 %add.i.i.i.i.i.i32, 1
  %shr4.i.i.i.i.i.i34 = lshr i64 %add2.i.i.i.i.i.i33, %sh_prom.i.i.i.i.i.i26
  %add5.i.i.i.i.i.i35 = add nuw nsw i64 %shr4.i.i.i.i.i.i34, %add.i.i.i.i.i.i32
  %and6.i.i.i.i.i.i36 = and i64 %add5.i.i.i.i.i.i35, %sub.i.i6.i.i.i.i28
  br label %if.end.i.i.i.i9.i

if.end7.i.i.i.i.i50:                              ; preds = %mmu_has_feature.exit.i.i.i.i.i24
  %shl9.i.i.i.i.i = shl nuw nsw i64 %ctx.0.i.i.i.i.i, 9
  %shr10.i.i.i.i.i = lshr i64 %31, 40
  %and11.i.i.i.i.i = and i64 %shr10.i.i.i.i.i, 511
  %or12.i.i.i.i.i = or i64 %shl9.i.i.i.i.i, %and11.i.i.i.i.i
  %conv13.i.i.i.i.i38 = add nsw i32 %36, -40
  %sh_prom.i23.i.i.i.i.i39 = zext i32 %conv13.i.i.i.i.i38 to i64
  %notmask.i24.i.i.i.i.i40 = shl nsw i64 -1, %sh_prom.i23.i.i.i.i.i39
  %sub.i25.i.i.i.i.i41 = xor i64 %notmask.i24.i.i.i.i.i40, -1
  %mul.i26.i.i.i.i.i42 = mul nuw nsw i64 %or12.i.i.i.i.i, 12538073
  %shr.i27.i.i.i.i.i43 = lshr i64 %mul.i26.i.i.i.i.i42, %sh_prom.i23.i.i.i.i.i39
  %and.i28.i.i.i.i.i44 = and i64 %mul.i26.i.i.i.i.i42, %sub.i25.i.i.i.i.i41
  %add.i29.i.i.i.i.i45 = add nuw nsw i64 %and.i28.i.i.i.i.i44, %shr.i27.i.i.i.i.i43
  %add2.i30.i.i.i.i.i46 = add nuw nsw i64 %add.i29.i.i.i.i.i45, 1
  %shr4.i31.i.i.i.i.i47 = lshr i64 %add2.i30.i.i.i.i.i46, %sh_prom.i23.i.i.i.i.i39
  %add5.i32.i.i.i.i.i48 = add nuw nsw i64 %shr4.i31.i.i.i.i.i47, %add.i29.i.i.i.i.i45
  %and6.i33.i.i.i.i.i49 = and i64 %add5.i32.i.i.i.i.i48, %sub.i25.i.i.i.i.i41
  br label %if.end.i.i.i.i9.i

if.end.i.i.i.i9.i:                                ; preds = %get_kernel_context.exit.i.i.i.i, %if.then4.i.i.i.i.i37, %if.end7.i.i.i.i.i50
  %retval.0.i.i.i.i51 = phi i64 [ %and6.i.i.i.i.i.i36, %if.then4.i.i.i.i.i37 ], [ %and6.i33.i.i.i.i.i49, %if.end7.i.i.i.i.i50 ], [ 0, %get_kernel_context.exit.i.i.i.i ]
  %..i.i.i.i.i53 = select i1 %cmp13, i64 12, i64 24
  %shl.i.i.i.i54 = shl nuw i64 %retval.0.i.i.i.i51, %..i.i.i.i.i53
  %conv4.i.i.i.i55 = zext i32 %32 to i64
  %shl1.i.i.i.i56 = shl i64 %conv4.i.i.i.i55, 62
  %or.i.i.i.i57 = or i64 %shl1.i.i.i.i56, %or10
  %or2.i.i.i.i58 = or i64 %shl.i.i.i.i54, %or.i.i.i.i57
  %vsid.i.i59 = getelementptr %struct.slb_shadow, ptr %33, i64 0, i32 3, i64 1, i32 1
  store volatile i64 %or2.i.i.i.i58, ptr %vsid.i.i59, align 8
  %or1.i.i.i = or i64 %and, 134217729
  store volatile i64 %or1.i.i.i, ptr %arrayidx.i.i22, align 16
  br i1 %cmp3.not.i.i.i.i.i.i, label %if.end6.i.i.i.i.i, label %get_kernel_context.exit.i.i.i

if.end6.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i9.i
  %cmp7.i.i.i.i.i = icmp ult i64 %31, -4609434218613702656
  br i1 %cmp7.i.i.i.i.i, label %if.then.i.i.i.i, label %do.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i.i
  %sub.i.i.i.i.i = add nsw i64 %31, 4609434218613702656
  %shr11.i.i.i.i.i = lshr i64 %sub.i.i.i.i.i, 49
  %37 = add nuw nsw i64 %shr11.i.i.i.i.i, 5
  br label %get_kernel_context.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end6.i.i.i.i.i
  %and.i.i.i.i = lshr i64 %31, 49
  %shr.i.i.i.i = and i64 %and.i.i.i.i, 8191
  %add.i.i.i.i = add nuw nsw i64 %shr.i.i.i.i, 1
  br label %get_kernel_context.exit.i.i.i

get_kernel_context.exit.i.i.i:                    ; preds = %if.then.i.i.i.i, %do.end.i.i.i.i.i, %if.end.i.i.i.i9.i
  %ctx.0.i.i.i.i = phi i64 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ 8, %if.end.i.i.i.i9.i ], [ %37, %do.end.i.i.i.i.i ]
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i, label %create_shadowed_slbe.exit92

if.end.i.i.i.i:                                   ; preds = %get_kernel_context.exit.i.i.i
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 13), i64 1)) #9
          to label %38 [label %mmu_has_feature.exit.i.i.i.i62], !srcloc !24

38:                                               ; preds = %if.end.i.i.i.i
  br label %mmu_has_feature.exit.i.i.i.i62

mmu_has_feature.exit.i.i.i.i62:                   ; preds = %38, %if.end.i.i.i.i
  %39 = phi i32 [ 68, %38 ], [ 65, %if.end.i.i.i.i ]
  br i1 %cmp13, label %if.then4.i.i.i.i75, label %if.end7.i.i.i.i88

if.then4.i.i.i.i75:                               ; preds = %mmu_has_feature.exit.i.i.i.i62
  %shl.i.i.i10.i = shl nuw nsw i64 %ctx.0.i.i.i.i, 21
  %shr.i5.i.i.i = lshr i64 %31, 28
  %and5.i.i.i.i = and i64 %shr.i5.i.i.i, 2097151
  %or.i.i.i11.i = or i64 %shl.i.i.i10.i, %and5.i.i.i.i
  %conv.i.i.i.i63 = add nsw i32 %39, -28
  %sh_prom.i.i.i.i.i64 = zext i32 %conv.i.i.i.i63 to i64
  %notmask.i.i.i.i.i65 = shl nsw i64 -1, %sh_prom.i.i.i.i.i64
  %sub.i.i6.i.i.i66 = xor i64 %notmask.i.i.i.i.i65, -1
  %mul.i.i.i.i.i67 = mul nuw nsw i64 %or.i.i.i11.i, 12538073
  %shr.i.i.i.i12.i68 = lshr i64 %mul.i.i.i.i.i67, %sh_prom.i.i.i.i.i64
  %and.i.i.i.i13.i69 = and i64 %mul.i.i.i.i.i67, %sub.i.i6.i.i.i66
  %add.i.i.i.i14.i70 = add nuw nsw i64 %and.i.i.i.i13.i69, %shr.i.i.i.i12.i68
  %add2.i.i.i.i.i71 = add nuw nsw i64 %add.i.i.i.i14.i70, 1
  %shr4.i.i.i.i.i72 = lshr i64 %add2.i.i.i.i.i71, %sh_prom.i.i.i.i.i64
  %add5.i.i.i.i.i73 = add nuw nsw i64 %shr4.i.i.i.i.i72, %add.i.i.i.i14.i70
  %and6.i.i.i.i.i74 = and i64 %add5.i.i.i.i.i73, %sub.i.i6.i.i.i66
  br label %create_shadowed_slbe.exit92

if.end7.i.i.i.i88:                                ; preds = %mmu_has_feature.exit.i.i.i.i62
  %shl9.i.i.i.i = shl nuw nsw i64 %ctx.0.i.i.i.i, 9
  %shr10.i.i.i.i = lshr i64 %31, 40
  %and11.i.i.i.i = and i64 %shr10.i.i.i.i, 511
  %or12.i.i.i.i = or i64 %shl9.i.i.i.i, %and11.i.i.i.i
  %conv13.i.i.i.i76 = add nsw i32 %39, -40
  %sh_prom.i23.i.i.i.i77 = zext i32 %conv13.i.i.i.i76 to i64
  %notmask.i24.i.i.i.i78 = shl nsw i64 -1, %sh_prom.i23.i.i.i.i77
  %sub.i25.i.i.i.i79 = xor i64 %notmask.i24.i.i.i.i78, -1
  %mul.i26.i.i.i.i80 = mul nuw nsw i64 %or12.i.i.i.i, 12538073
  %shr.i27.i.i.i.i81 = lshr i64 %mul.i26.i.i.i.i80, %sh_prom.i23.i.i.i.i77
  %and.i28.i.i.i.i82 = and i64 %mul.i26.i.i.i.i80, %sub.i25.i.i.i.i79
  %add.i29.i.i.i.i83 = add nuw nsw i64 %and.i28.i.i.i.i82, %shr.i27.i.i.i.i81
  %add2.i30.i.i.i.i84 = add nuw nsw i64 %add.i29.i.i.i.i83, 1
  %shr4.i31.i.i.i.i85 = lshr i64 %add2.i30.i.i.i.i84, %sh_prom.i23.i.i.i.i77
  %add5.i32.i.i.i.i86 = add nuw nsw i64 %shr4.i31.i.i.i.i85, %add.i29.i.i.i.i83
  %and6.i33.i.i.i.i87 = and i64 %add5.i32.i.i.i.i86, %sub.i25.i.i.i.i79
  br label %create_shadowed_slbe.exit92

create_shadowed_slbe.exit92:                      ; preds = %get_kernel_context.exit.i.i.i, %if.then4.i.i.i.i75, %if.end7.i.i.i.i88
  %retval.0.i.i.i89 = phi i64 [ %and6.i.i.i.i.i74, %if.then4.i.i.i.i75 ], [ %and6.i33.i.i.i.i87, %if.end7.i.i.i.i88 ], [ 0, %get_kernel_context.exit.i.i.i ]
  %shl.i.i.i90 = shl nuw i64 %retval.0.i.i.i89, %..i.i.i.i.i53
  %or2.i.i.i91 = or i64 %shl.i.i.i90, %or.i.i.i.i57
  tail call void asm sideeffect "slbmte  $0,$1", "r,r,~{memory}"(i64 %or2.i.i.i91, i64 %or1.i.i.i) #9, !srcloc !41
  br label %if.end19

if.end19:                                         ; preds = %create_shadowed_slbe.exit92, %land.lhs.true, %create_shadowed_slbe.exit
  tail call void asm sideeffect "isync", "~{memory}"() #9, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_slb_fault(ptr nocapture noundef readonly %regs) #6 {
entry:
  tail call void asm sideeffect "mtmsrd $0,1", "r,~{memory}"(i64 2) #9, !srcloc !43
  %0 = getelementptr inbounds %struct.anon.85, ptr %regs, i64 0, i32 10
  %1 = load i64, ptr %0, align 8
  %cmp.i.i = icmp ult i64 %1, 1152921504606846976
  br i1 %cmp.i.i, label %get_region_id.exit.thread.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %shr.mask.i.i = and i64 %1, -1152921504606846976
  %cmp3.not.i.i = icmp eq i64 %shr.mask.i.i, -4611686018427387904
  br i1 %cmp3.not.i.i, label %if.end6.i.i, label %get_region_id.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %cmp7.i.i = icmp ult i64 %1, -4609434218613702656
  br i1 %cmp7.i.i, label %get_region_id.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end6.i.i
  %sub.i.i = add nsw i64 %1, 4609434218613702656
  %shr11.i.i = lshr i64 %sub.i.i, 49
  %conv12.i.i = add nuw nsw i64 %shr11.i.i, 2
  br label %get_region_id.exit.i

get_region_id.exit.i:                             ; preds = %do.end.i.i, %if.end6.i.i, %if.end.i.i
  %retval.0.i.i = phi i64 [ %conv12.i.i, %do.end.i.i ], [ 5, %if.end.i.i ], [ 1, %if.end6.i.i ]
  %msr.i.i = getelementptr inbounds %struct.anon.85, ptr %regs, i64 0, i32 2
  %2 = load i64, ptr %msr.i.i, align 8
  %and.i.i = and i64 %2, 2
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %____do_slb_fault.exit, label %if.then3.i

get_region_id.exit.thread.i:                      ; preds = %entry
  %msr.i50.i = getelementptr inbounds %struct.anon.85, ptr %regs, i64 0, i32 2
  %3 = load i64, ptr %msr.i50.i, align 8
  %and.i51.i = and i64 %3, 2
  %tobool.not.i52.i = icmp eq i64 %and.i51.i, 0
  br i1 %tobool.not.i52.i, label %____do_slb_fault.exit, label %if.else.i

if.then3.i:                                       ; preds = %get_region_id.exit.i
  switch i64 %retval.0.i.i, label %____do_slb_fault.exit [
    i64 1, label %if.then.i.i
    i64 4, label %if.then4.i.i
    i64 2, label %if.then13.i.i
    i64 3, label %if.then20.i.i
  ]

if.then.i.i:                                      ; preds = %if.then3.i
  %and.i30.i = and i64 %1, 4611686018427387903
  %cmp1.i.i = icmp ugt i64 %and.i30.i, 2251799813685248
  br i1 %cmp1.i.i, label %____do_slb_fault.exit, label %if.end.i31.i

if.end.i31.i:                                     ; preds = %if.then.i.i
  %4 = load i32, ptr @mmu_linear_psize, align 4
  %idxprom.i.i = sext i32 %4 to i64
  %5 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom.i.i, i32 5
  %6 = load i64, ptr %5, align 8
  %or.i.i = or i64 %6, 1024
  br label %if.end32.i.i

if.then4.i.i:                                     ; preds = %if.then3.i
  %cmp5.i.i = icmp ugt i64 %1, -4607745368753438721
  br i1 %cmp5.i.i, label %____do_slb_fault.exit, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then4.i.i
  %7 = load i32, ptr @mmu_vmemmap_psize, align 4
  %idxprom8.i.i = sext i32 %7 to i64
  %8 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom8.i.i, i32 5
  %9 = load i64, ptr %8, align 8
  %or10.i.i = or i64 %9, 1024
  br label %if.end32.i.i

if.then13.i.i:                                    ; preds = %if.then3.i
  %cmp14.i.i = icmp ugt i64 %1, -4608871268660281345
  br i1 %cmp14.i.i, label %____do_slb_fault.exit, label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then13.i.i
  %10 = tail call i64 @llvm.read_register.i64(metadata !0)
  %11 = inttoptr i64 %10 to ptr
  %vmalloc_sllp.i.i = getelementptr inbounds %struct.paca_struct, ptr %11, i64 0, i32 17
  %12 = load i16, ptr %vmalloc_sllp.i.i, align 16
  %conv.i.i = zext i16 %12 to i64
  br label %if.end32.i.i

if.then20.i.i:                                    ; preds = %if.then3.i
  %cmp21.i.i = icmp ugt i64 %1, -4608308318706860033
  br i1 %cmp21.i.i, label %____do_slb_fault.exit, label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then20.i.i
  %13 = load i32, ptr @mmu_io_psize, align 4
  %idxprom25.i.i = sext i32 %13 to i64
  %14 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom25.i.i, i32 5
  %15 = load i64, ptr %14, align 8
  %or27.i.i = or i64 %15, 1024
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end24.i.i, %if.end16.i.i, %if.end7.i.i, %if.end.i31.i
  %flags.0.i.i = phi i64 [ %or.i.i, %if.end.i31.i ], [ %or10.i.i, %if.end7.i.i ], [ %conv.i.i, %if.end16.i.i ], [ %or27.i.i, %if.end24.i.i ]
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 30), i64 1)) #9
          to label %16 [label %if.end.i.i.i.i], !srcloc !24

16:                                               ; preds = %if.end32.i.i
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %16, %if.end32.i.i
  %17 = phi i32 [ 1, %16 ], [ 0, %if.end32.i.i ]
  br i1 %cmp3.not.i.i, label %if.end6.i.i.i.i, label %get_kernel_context.exit.i.i

if.end6.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %cmp7.i.i.i.i = icmp ult i64 %1, -4609434218613702656
  br i1 %cmp7.i.i.i.i, label %if.then.i.i.i, label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end6.i.i.i.i
  %sub.i.i.i.i = add nsw i64 %1, 4609434218613702656
  %shr11.i.i.i.i = lshr i64 %sub.i.i.i.i, 49
  %18 = add nuw nsw i64 %shr11.i.i.i.i, 5
  br label %get_kernel_context.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end6.i.i.i.i
  %and.i.i.i = lshr i64 %1, 49
  %shr.i.i.i = and i64 %and.i.i.i, 8191
  %add.i.i.i = add nuw nsw i64 %shr.i.i.i, 1
  br label %get_kernel_context.exit.i.i

get_kernel_context.exit.i.i:                      ; preds = %if.then.i.i.i, %do.end.i.i.i.i, %if.end.i.i.i.i
  %ctx.0.i.i.i = phi i64 [ %add.i.i.i, %if.then.i.i.i ], [ 8, %if.end.i.i.i.i ], [ %18, %do.end.i.i.i.i ]
  %call36.i.i = tail call fastcc i64 @slb_insert_entry(i64 noundef %1, i64 noundef %ctx.0.i.i.i, i64 noundef %flags.0.i.i, i32 noundef signext %17, i1 noundef zeroext true), !range !26
  br label %____do_slb_fault.exit

if.else.i:                                        ; preds = %get_region_id.exit.thread.i
  %19 = tail call ptr asm "ld $0,$1(13)", "=r,i"(i64 2312) #11, !srcloc !21
  %mm6.i = getelementptr inbounds %struct.task_struct, ptr %19, i64 0, i32 46
  %20 = load ptr, ptr %mm6.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %____do_slb_fault.exit, label %if.end13.i, !prof !44

if.end13.i:                                       ; preds = %if.else.i
  %context1.i.i = getelementptr inbounds %struct.anon.2, ptr %20, i64 0, i32 40
  %hash_context.i.i.i = getelementptr inbounds %struct.anon.2, ptr %20, i64 0, i32 40, i32 4
  %21 = load ptr, ptr %hash_context.i.i.i, align 8
  %slb_addr_limit.i.i.i = getelementptr inbounds %struct.hash_mm_context, ptr %21, i64 0, i32 3
  %22 = load i64, ptr %slb_addr_limit.i.i.i, align 8
  %cmp.not.i.i = icmp ugt i64 %22, %1
  br i1 %cmp.not.i.i, label %if.end.i33.i, label %____do_slb_fault.exit

if.end.i33.i:                                     ; preds = %if.end13.i
  %cmp.i.i.i = icmp ult i64 %1, 4503599627370496
  br i1 %cmp.i.i.i, label %get_user_context.exit.i.i, label %if.end.i.i.i, !prof !27

if.end.i.i.i:                                     ; preds = %if.end.i33.i
  callbr void asm sideeffect "1:\09twi 31, 0, 0\0A.section __ex_table,\22a\22; .balign 4; .long (1b) - . ; .long (${4:l}) - . ; .previous .section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,!i"(ptr nonnull @.str.13, i32 281, i32 2305, i64 12) #9
          to label %do.end.i.i.i [label %____do_slb_fault.exit], !srcloc !28

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  unreachable

get_user_context.exit.i.i:                        ; preds = %if.end.i33.i
  %shr.i.i34.i = lshr i64 %1, 49
  %arrayidx.i.i.i = getelementptr [8 x i64], ptr %context1.i.i, i64 0, i64 %shr.i.i34.i
  %23 = load i64, ptr %arrayidx.i.i.i, align 8
  %24 = and i64 %23, 4294967295
  %tobool.not.i35.i = icmp eq i64 %24, 0
  br i1 %tobool.not.i35.i, label %____do_slb_fault.exit, label %slb_allocate_user.exit.i

slb_allocate_user.exit.i:                         ; preds = %get_user_context.exit.i.i
  %sext.i.i = shl i64 %23, 32
  %conv.i36.i = ashr exact i64 %sext.i.i, 32
  %cmp.i44.i.i = icmp ugt i64 %1, 1099511627775
  %25 = load i32, ptr @mmu_highuser_ssize, align 4
  %retval.0.i45.i.i = select i1 %cmp.i44.i.i, i32 %25, i32 0
  %call31.i.i = tail call zeroext i32 @get_slice_psize(ptr noundef nonnull %20, i64 noundef %1) #9
  %idxprom.i37.i = sext i32 %call31.i.i to i64
  %26 = getelementptr [16 x %struct.mmu_psize_def], ptr @mmu_psize_defs, i64 0, i64 %idxprom.i37.i, i32 5
  %27 = load i64, ptr %26, align 8
  %or.i38.i = or i64 %27, 3200
  %call32.i.i = tail call fastcc i64 @slb_insert_entry(i64 noundef %1, i64 noundef %conv.i36.i, i64 noundef %or.i38.i, i32 noundef signext %retval.0.i45.i.i, i1 noundef zeroext false), !range !26
  %tobool15.not.i = icmp eq i64 %call32.i.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %____do_slb_fault.exit

if.then16.i:                                      ; preds = %slb_allocate_user.exit.i
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 30), i64 1)) #9
          to label %28 [label %mmu_has_feature.exit.i40.i], !srcloc !24

28:                                               ; preds = %if.then16.i
  %and34.i.i = and i64 %1, -1099511627776
  %tobool.not35.i.i = icmp eq i64 %and34.i.i, 0
  %spec.select36.i.i = select i1 %tobool.not35.i.i, i64 %1, i64 %and34.i.i
  br label %mmu_has_feature.exit.i40.i

mmu_has_feature.exit.i40.i:                       ; preds = %28, %if.then16.i
  %29 = phi i64 [ %spec.select36.i.i, %28 ], [ %1, %if.then16.i ]
  %shr.i.i = lshr i64 %29, 28
  %slb_preload_nr.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i64 0, i32 3
  %30 = load i8, ptr %slb_preload_nr.i.i.i, align 16
  %cmp14.not.i.i.i = icmp eq i8 %30, 0
  %slb_preload_tail.phi.trans.insert.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i64 0, i32 4
  %.pre.i.i = load i8, ptr %slb_preload_tail.phi.trans.insert.i.i, align 1
  br i1 %cmp14.not.i.i.i, label %if.end6.thread.i.i, label %for.body.i.i.i

if.end6.thread.i.i:                               ; preds = %mmu_has_feature.exit.i40.i
  %rem42.i.i = and i8 %.pre.i.i, 15
  %conv943.i.i = trunc i64 %shr.i.i to i32
  %idxprom44.i.i = zext i8 %rem42.i.i to i64
  %arrayidx45.i.i = getelementptr %struct.thread_info, ptr %19, i64 0, i32 5, i64 %idxprom44.i.i
  store i32 %conv943.i.i, ptr %arrayidx45.i.i, align 4
  br label %if.else.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i8 %i.015.i.i.i, 1
  %cmp.i.i41.i = icmp ult i8 %inc.i.i.i, %30
  br i1 %cmp.i.i41.i, label %for.body.i.i.i, label %if.end6.i46.i, !llvm.loop !25

for.body.i.i.i:                                   ; preds = %mmu_has_feature.exit.i40.i, %for.cond.i.i.i
  %i.015.i.i.i = phi i8 [ %inc.i.i.i, %for.cond.i.i.i ], [ 0, %mmu_has_feature.exit.i40.i ]
  %add.i.i42.i = add i8 %i.015.i.i.i, %.pre.i.i
  %rem.i.i.i = and i8 %add.i.i42.i, 15
  %idxprom.i.i.i = zext i8 %rem.i.i.i to i64
  %arrayidx.i.i43.i = getelementptr %struct.thread_info, ptr %19, i64 0, i32 5, i64 %idxprom.i.i.i
  %31 = load i32, ptr %arrayidx.i.i43.i, align 4
  %conv6.i.i.i = zext i32 %31 to i64
  %cmp7.not.i.i.i = icmp eq i64 %shr.i.i, %conv6.i.i.i
  br i1 %cmp7.not.i.i.i, label %____do_slb_fault.exit, label %for.cond.i.i.i

if.end6.i46.i:                                    ; preds = %for.cond.i.i.i
  %add.i.i = add i8 %.pre.i.i, %30
  %rem.i.i = and i8 %add.i.i, 15
  %conv9.i.i = trunc i64 %shr.i.i to i32
  %idxprom.i44.i = zext i8 %rem.i.i to i64
  %arrayidx.i.i = getelementptr %struct.thread_info, ptr %19, i64 0, i32 5, i64 %idxprom.i44.i
  store i32 %conv9.i.i, ptr %arrayidx.i.i, align 4
  %cmp.i45.i = icmp eq i8 %30, 16
  br i1 %cmp.i45.i, label %if.then13.i47.i, label %if.else.i.i

if.then13.i47.i:                                  ; preds = %if.end6.i46.i
  %32 = add i8 %.pre.i.i, 1
  %33 = and i8 %32, 15
  store i8 %33, ptr %slb_preload_tail.phi.trans.insert.i.i, align 1
  br label %____do_slb_fault.exit

if.else.i.i:                                      ; preds = %if.end6.i46.i, %if.end6.thread.i.i
  %inc.i.i = add i8 %30, 1
  store i8 %inc.i.i, ptr %slb_preload_nr.i.i.i, align 16
  br label %____do_slb_fault.exit

____do_slb_fault.exit:                            ; preds = %for.body.i.i.i, %get_region_id.exit.i, %get_region_id.exit.thread.i, %if.then3.i, %if.then.i.i, %if.then4.i.i, %if.then13.i.i, %if.then20.i.i, %get_kernel_context.exit.i.i, %if.else.i, %if.end13.i, %if.end.i.i.i, %get_user_context.exit.i.i, %slb_allocate_user.exit.i, %if.then13.i47.i, %if.else.i.i
  %retval.1.i = phi i64 [ -22, %get_region_id.exit.i ], [ -14, %if.else.i ], [ %call32.i.i, %slb_allocate_user.exit.i ], [ -22, %get_region_id.exit.thread.i ], [ %call36.i.i, %get_kernel_context.exit.i.i ], [ -14, %if.then.i.i ], [ -14, %if.then4.i.i ], [ -14, %if.then13.i.i ], [ -14, %if.then20.i.i ], [ -14, %if.then3.i ], [ 0, %if.then13.i47.i ], [ 0, %if.else.i.i ], [ -14, %if.end13.i ], [ -14, %get_user_context.exit.i.i ], [ -14, %if.end.i.i.i ], [ 0, %for.body.i.i.i ]
  ret i64 %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare void @arch_local_irq_restore(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare zeroext i32 @get_slice_psize(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
define internal fastcc i64 @slb_insert_entry(i64 noundef %ea, i64 noundef %context, i64 noundef %flags, i32 noundef signext %ssize, i1 noundef zeroext %kernel) unnamed_addr #1 {
entry:
  %and.i = and i64 %ea, 4607182418800017408
  %cmp.not.i = icmp eq i64 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([32 x %struct.static_key_true], ptr @mmu_feature_keys, i64 0, i64 13), i64 1)) #9
          to label %0 [label %mmu_has_feature.exit.i], !srcloc !24

0:                                                ; preds = %if.end.i
  br label %mmu_has_feature.exit.i

mmu_has_feature.exit.i:                           ; preds = %0, %if.end.i
  %1 = phi i32 [ 68, %0 ], [ 65, %if.end.i ]
  %cmp3.i = icmp eq i32 %ssize, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %mmu_has_feature.exit.i
  %shl.i = shl nsw i64 %context, 21
  %shr.i = lshr i64 %ea, 28
  %and5.i = and i64 %shr.i, 2097151
  %or.i = or i64 %and5.i, %shl.i
  %conv.i = add nsw i32 %1, -28
  %sh_prom.i.i = zext i32 %conv.i to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %sub.i.i = xor i64 %notmask.i.i, -1
  %mul.i.i = mul i64 %or.i, 12538073
  %shr.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %and.i.i = and i64 %mul.i.i, %sub.i.i
  %add.i.i = add nuw nsw i64 %and.i.i, %shr.i.i
  br label %get_vsid.exit

if.end7.i:                                        ; preds = %mmu_has_feature.exit.i
  %shl9.i = shl nsw i64 %context, 9
  %shr10.i = lshr i64 %ea, 40
  %and11.i = and i64 %shr10.i, 511
  %or12.i = or i64 %and11.i, %shl9.i
  %conv13.i = add nsw i32 %1, -40
  %sh_prom.i23.i = zext i32 %conv13.i to i64
  %notmask.i24.i = shl nsw i64 -1, %sh_prom.i23.i
  %sub.i25.i = xor i64 %notmask.i24.i, -1
  %mul.i26.i = mul i64 %or12.i, 12538073
  %shr.i27.i = lshr i64 %mul.i26.i, %sh_prom.i23.i
  %and.i28.i = and i64 %mul.i26.i, %sub.i25.i
  %add.i29.i = add nuw nsw i64 %and.i28.i, %shr.i27.i
  br label %get_vsid.exit

get_vsid.exit:                                    ; preds = %if.then4.i, %if.end7.i
  %add.i.i.sink73 = phi i64 [ %add.i.i, %if.then4.i ], [ %add.i29.i, %if.end7.i ]
  %sh_prom.i.i.sink = phi i64 [ %sh_prom.i.i, %if.then4.i ], [ %sh_prom.i23.i, %if.end7.i ]
  %sub.i.i.sink = phi i64 [ %sub.i.i, %if.then4.i ], [ %sub.i25.i, %if.end7.i ]
  %add2.i.i = add nuw nsw i64 %add.i.i.sink73, 1
  %shr4.i.i = lshr i64 %add2.i.i, %sh_prom.i.i.sink
  %add5.i.i = add nuw nsw i64 %shr4.i.i, %add.i.i.sink73
  %and6.i.i = and i64 %add5.i.i, %sub.i.i.sink
  %tobool.not = icmp eq i64 %and6.i.i, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %get_vsid.exit
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %2 = tail call i64 @llvm.read_register.i64(metadata !0)
  %3 = inttoptr i64 %2 to ptr
  %slb_used_bitmap.i = getelementptr inbounds %struct.paca_struct, ptr %3, i64 0, i32 20
  %4 = load i32, ptr %slb_used_bitmap.i, align 4
  %cmp.not.i42 = icmp eq i32 %4, -1
  br i1 %cmp.not.i42, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %not.i = xor i32 %4, -1
  %conv.i43 = zext i32 %not.i to i64
  %5 = tail call i64 @llvm.cttz.i64(i64 %conv.i43, i1 false), !range !46
  %conv2.i = trunc i64 %5 to i32
  %shl.i44 = shl nuw i32 1, %conv2.i
  %or.i45 = or i32 %shl.i44, %4
  store i32 %or.i45, ptr %slb_used_bitmap.i, align 4
  br i1 %kernel, label %if.then4.i46, label %if.else42.i

if.then4.i46:                                     ; preds = %if.then.i
  %6 = tail call i64 @llvm.read_register.i64(metadata !0)
  %7 = inttoptr i64 %6 to ptr
  %slb_kern_bitmap.i = getelementptr inbounds %struct.paca_struct, ptr %7, i64 0, i32 21
  %8 = load i32, ptr %slb_kern_bitmap.i, align 8
  %or6.i = or i32 %8, %shl.i44
  store i32 %or6.i, ptr %slb_kern_bitmap.i, align 8
  br label %if.else42.i

if.else.i:                                        ; preds = %if.end
  %stab_rr.i = getelementptr inbounds %struct.paca_struct, ptr %3, i64 0, i32 19
  %9 = load i8, ptr %stab_rr.i, align 1
  %conv7.i = zext i8 %9 to i32
  %10 = load i16, ptr @mmu_slb_size, align 2
  %conv8.i = zext i16 %10 to i32
  %sub.i = add nsw i32 %conv8.i, -1
  %cmp9.i = icmp ugt i32 %sub.i, %conv7.i
  %inc.i = add nuw nsw i32 %conv7.i, 1
  %index.0.i = select i1 %cmp9.i, i32 %inc.i, i32 2
  %conv14.i = trunc i32 %index.0.i to i8
  store i8 %conv14.i, ptr %stab_rr.i, align 1
  %cmp16.i = icmp ult i32 %index.0.i, 32
  br i1 %cmp16.i, label %if.then18.i, label %if.else42.i

if.then18.i:                                      ; preds = %if.else.i
  %shl21.i = shl nuw i32 1, %index.0.i
  br i1 %kernel, label %if.then20.i, label %if.else24.i

if.then20.i:                                      ; preds = %if.then18.i
  %11 = tail call i64 @llvm.read_register.i64(metadata !0)
  %12 = inttoptr i64 %11 to ptr
  %slb_kern_bitmap22.i = getelementptr inbounds %struct.paca_struct, ptr %12, i64 0, i32 21
  %13 = load i32, ptr %slb_kern_bitmap22.i, align 8
  %or23.i = or i32 %13, %shl21.i
  store i32 %or23.i, ptr %slb_kern_bitmap22.i, align 8
  br label %if.else42.i

if.else24.i:                                      ; preds = %if.then18.i
  %not26.i = xor i32 %shl21.i, -1
  %14 = tail call i64 @llvm.read_register.i64(metadata !0)
  %15 = inttoptr i64 %14 to ptr
  %slb_kern_bitmap27.i = getelementptr inbounds %struct.paca_struct, ptr %15, i64 0, i32 21
  %16 = load i32, ptr %slb_kern_bitmap27.i, align 8
  %and.i47 = and i32 %16, %not26.i
  store i32 %and.i47, ptr %slb_kern_bitmap27.i, align 8
  br label %if.else42.i

if.else42.i:                                      ; preds = %if.then.i, %if.then4.i46, %if.else.i, %if.then20.i, %if.else24.i
  %index.1.i = phi i32 [ %conv2.i, %if.then4.i46 ], [ %conv2.i, %if.then.i ], [ %index.0.i, %if.then20.i ], [ %index.0.i, %if.else24.i ], [ %inc.i, %if.else.i ]
  %cmp31.i = icmp ult i32 %index.1.i, 2
  %conv45.i = zext i1 %cmp31.i to i64
  tail call void asm sideeffect "1:\09tdnei  $4, 0\0A.section __bug_table,\22aw\22\0A2:\09.4byte 1b - .\0A\09.4byte $0 - .\0A\09.short $1, $2\0A.org 2b+$3\0A.previous\0A", "i,i,i,i,r"(ptr nonnull @.str, i32 665, i32 0, i64 12, i64 %conv45.i) #9, !srcloc !47
  %..i.i = select i1 %cmp3.i, i64 12, i64 24
  %shl.i48 = shl nuw i64 %and6.i.i, %..i.i
  %conv4.i = zext i32 %ssize to i64
  %shl1.i = shl i64 %conv4.i, 62
  %or.i49 = or i64 %shl1.i, %flags
  %or2.i = or i64 %or.i49, %shl.i48
  %cond.i = select i1 %cmp3.i, i64 -268435456, i64 -1099511627776
  %and.i50 = and i64 %cond.i, %ea
  %17 = or i32 %index.1.i, 134217728
  %or.i51 = zext i32 %17 to i64
  %or1.i = or i64 %and.i50, %or.i51
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr nonnull @stress_slb_key) #9
          to label %if.end20 [label %if.then6], !srcloc !24

if.then6:                                         ; preds = %if.else42.i
  %18 = tail call i64 @llvm.read_register.i64(metadata !0)
  %19 = inttoptr i64 %18 to ptr
  %slb_cache_ptr = getelementptr inbounds %struct.paca_struct, ptr %19, i64 0, i32 18
  %20 = load i8, ptr %slb_cache_ptr, align 2
  %conv = zext i8 %20 to i32
  %cmp = icmp ne i8 %20, 3
  %or.cond.not = select i1 %kernel, i1 %cmp, i1 false
  br i1 %or.cond.not, label %if.end12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then6
  %cmp1069.not = icmp eq i8 %20, 0
  br i1 %cmp1069.not, label %if.end12, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i8 %20 to i64
  %.pre72 = load i32, ptr @mmu_kernel_ssize, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %slb_cache_slbie_kernel.exit
  %21 = phi i32 [ %.pre72, %for.body.preheader ], [ %26, %slb_cache_slbie_kernel.exit ]
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %slb_cache_slbie_kernel.exit ]
  %22 = tail call i64 @llvm.read_register.i64(metadata !0)
  %23 = inttoptr i64 %22 to ptr
  %arrayidx.i = getelementptr %struct.paca_struct, ptr %23, i64 0, i32 22, i64 %indvars.iv
  %24 = load i32, ptr %arrayidx.i, align 4
  %conv.i52 = zext i32 %24 to i64
  %kstack.i = getelementptr inbounds %struct.paca_struct, ptr %23, i64 0, i32 26
  %25 = load i64, ptr %kstack.i, align 16
  %shl.i53 = shl nuw nsw i64 %conv.i52, 28
  %or.i54 = or i64 %shl.i53, -4611686018427387904
  %cmp.i55 = icmp eq i32 %21, 0
  %cond.i56 = select i1 %cmp.i55, i64 -268435456, i64 -1099511627776
  %and.i57 = and i64 %cond.i56, %25
  %cmp2.i = icmp eq i64 %and.i57, %or.i54
  br i1 %cmp2.i, label %slb_cache_slbie_kernel.exit, label %if.end.i59

if.end.i59:                                       ; preds = %for.body
  %shl4.i = shl i32 %21, 25
  %conv5.i = sext i32 %shl4.i to i64
  %or6.i58 = or i64 %or.i54, %conv5.i
  tail call void asm sideeffect "slbie $0", "r"(i64 %or6.i58) #9, !srcloc !48
  %.pre = load i32, ptr @mmu_kernel_ssize, align 4
  br label %slb_cache_slbie_kernel.exit

slb_cache_slbie_kernel.exit:                      ; preds = %for.body, %if.end.i59
  %26 = phi i32 [ %21, %for.body ], [ %.pre, %if.end.i59 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end12, label %for.body, !llvm.loop !49

if.end12:                                         ; preds = %slb_cache_slbie_kernel.exit, %for.cond.preheader, %if.then6
  %slb_cache_index.0 = phi i32 [ %conv, %if.then6 ], [ 0, %for.cond.preheader ], [ 0, %slb_cache_slbie_kernel.exit ]
  br i1 %kernel, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %shr = lshr i64 %or1.i, 28
  %conv15 = trunc i64 %shr to i32
  %27 = tail call i64 @llvm.read_register.i64(metadata !0)
  %28 = inttoptr i64 %27 to ptr
  %inc16 = add nuw nsw i32 %slb_cache_index.0, 1
  %idxprom = zext i32 %slb_cache_index.0 to i64
  %arrayidx = getelementptr %struct.paca_struct, ptr %28, i64 0, i32 22, i64 %idxprom
  store i32 %conv15, ptr %arrayidx, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  %slb_cache_index.1 = phi i32 [ %inc16, %if.then14 ], [ %slb_cache_index.0, %if.end12 ]
  %conv18 = trunc i32 %slb_cache_index.1 to i8
  %29 = tail call i64 @llvm.read_register.i64(metadata !0)
  %30 = inttoptr i64 %29 to ptr
  %slb_cache_ptr19 = getelementptr inbounds %struct.paca_struct, ptr %30, i64 0, i32 18
  store i8 %conv18, ptr %slb_cache_ptr19, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.else42.i, %if.end17
  tail call void asm sideeffect "slbmte $0, $1", "r,r"(i64 %or2.i, i64 %or1.i) #9, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !51
  br i1 %kernel, label %cleanup, label %if.then22

if.then22:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr getelementptr (i8, ptr getelementptr inbounds ([64 x %struct.static_key_true], ptr @cpu_feature_keys, i64 0, i64 17), i64 1)) #9
          to label %cleanup [label %if.end.i60], !srcloc !24

if.end.i60:                                       ; preds = %if.then22
  callbr void asm sideeffect "1:\0A\09nop # arch_static_branch\0A\09.pushsection __jump_table,  \22aw\22\0A\09.long 1b - ., ${1:l} - .\0A\09.8byte ${0:c} - .\0A\09.popsection \0A\09", "i,!i"(ptr nonnull @stress_slb_key) #9
          to label %if.end3.i [label %cleanup], !srcloc !24

if.end3.i:                                        ; preds = %if.end.i60
  %31 = tail call i64 @llvm.read_register.i64(metadata !0)
  %32 = inttoptr i64 %31 to ptr
  %slb_cache_ptr.i = getelementptr inbounds %struct.paca_struct, ptr %32, i64 0, i32 18
  %33 = load i8, ptr %slb_cache_ptr.i, align 2
  %cmp.i61 = icmp ult i8 %33, 8
  br i1 %cmp.i61, label %if.then5.i, label %if.else.i65

if.then5.i:                                       ; preds = %if.end3.i
  %shr.i62 = lshr i64 %or1.i, 28
  %conv6.i = trunc i64 %shr.i62 to i32
  %idxprom.i63 = zext i8 %33 to i64
  %arrayidx.i64 = getelementptr %struct.paca_struct, ptr %32, i64 0, i32 22, i64 %idxprom.i63
  store i32 %conv6.i, ptr %arrayidx.i64, align 4
  %34 = tail call i64 @llvm.read_register.i64(metadata !0)
  %35 = inttoptr i64 %34 to ptr
  %slb_cache_ptr7.i = getelementptr inbounds %struct.paca_struct, ptr %35, i64 0, i32 18
  %36 = load i8, ptr %slb_cache_ptr7.i, align 2
  %inc8.i = add i8 %36, 1
  store i8 %inc8.i, ptr %slb_cache_ptr7.i, align 2
  br label %cleanup

if.else.i65:                                      ; preds = %if.end3.i
  store i8 9, ptr %slb_cache_ptr.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else.i65, %if.then5.i, %if.end.i60, %if.then22, %if.end20, %get_vsid.exit
  %retval.0 = phi i64 [ -14, %get_vsid.exit ], [ 0, %if.end20 ], [ 0, %if.then22 ], [ 0, %if.end.i60 ], [ 0, %if.then5.i ], [ 0, %if.else.i65 ], [ -14, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr4" "target-features"="-altivec,-bpermd,-crbits,-crypto,-direct-move,-efpu2,-extdiv,-float128,-hard-float,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-mma,-paired-vector-memops,-pcrelative-memops,-power10-vector,-power8-vector,-power9-vector,-prefix-instrs,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" "tune-cpu"="pwr10" "use-soft-float"="true" "warn-stack-size"="2048" }
attributes #1 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr4" "target-features"="-altivec,-bpermd,-crbits,-crypto,-direct-move,-efpu2,-extdiv,-float128,-hard-float,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-mma,-paired-vector-memops,-pcrelative-memops,-power10-vector,-power8-vector,-power9-vector,-prefix-instrs,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" "tune-cpu"="pwr10" "use-soft-float"="true" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { cold null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr4" "target-features"="-altivec,-bpermd,-crbits,-crypto,-direct-move,-efpu2,-extdiv,-float128,-hard-float,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-mma,-paired-vector-memops,-pcrelative-memops,-power10-vector,-power8-vector,-power9-vector,-prefix-instrs,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" "tune-cpu"="pwr10" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr4" "target-features"="-altivec,-bpermd,-crbits,-crypto,-direct-move,-efpu2,-extdiv,-float128,-hard-float,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-mma,-paired-vector-memops,-pcrelative-memops,-power10-vector,-power8-vector,-power9-vector,-prefix-instrs,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" "tune-cpu"="pwr10" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid willreturn memory(write, argmem: none, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr4" "target-features"="-altivec,-bpermd,-crbits,-crypto,-direct-move,-efpu2,-extdiv,-float128,-hard-float,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-mma,-paired-vector-memops,-pcrelative-memops,-power10-vector,-power8-vector,-power9-vector,-prefix-instrs,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" "tune-cpu"="pwr10" "use-soft-float"="true" "warn-stack-size"="2048" }
attributes #6 = { noinline nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr4" "target-features"="-altivec,-bpermd,-crbits,-crypto,-direct-move,-efpu2,-extdiv,-float128,-hard-float,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-mma,-paired-vector-memops,-pcrelative-memops,-power10-vector,-power8-vector,-power9-vector,-prefix-instrs,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" "tune-cpu"="pwr10" "use-soft-float"="true" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind memory(none) }

!llvm.named.register.r13 = !{!0}
!llvm.named.register.r1 = !{!1}
!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = !{!"r13"}
!1 = !{!"r1"}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"Code Model", i32 3}
!4 = !{!"ClangBuiltLinux clang version 17.0.0 (https://github.com/llvm/llvm-project 5f0bccc3d1a74111458c71f009817c9995f4bf83)"}
!5 = !{i64 3083}
!6 = !{i64 3676}
!7 = !{i64 1901195}
!8 = !{i64 2154294840, i64 2154294873, i64 2154295038, i64 2154295063, i64 2154295086, i64 2154295109, i64 2154295130}
!9 = !{i64 2149602929}
!10 = !{i64 1902125}
!11 = !{i64 2154295966}
!12 = !{i64 615195}
!13 = !{i64 2154283882, i64 4494}
!14 = !{i64 5469}
!15 = !{i64 5524}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = !{i64 256039}
!22 = !{i64 2154310501, i64 2154310534, i64 2154310699, i64 2154310724, i64 2154310747, i64 2154310770, i64 2154310791}
!23 = !{i64 2154311629}
!24 = !{i64 2148304012, i64 2148304017, i64 2148304051, i64 2148304095, i64 2148304132, i64 2148304159, i64 2148304181}
!25 = distinct !{!25, !17}
!26 = !{i64 -14, i64 1}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2148816873, i64 2148816900, i64 2148817065, i64 2148817090, i64 2148817113, i64 2148817136, i64 2148817157}
!29 = !{i64 9529}
!30 = !{i64 2154318044, i64 2154318077, i64 2154318242, i64 2154318267, i64 2154318290, i64 2154318313, i64 2154318334}
!31 = !{i64 2154319172}
!32 = !{i64 10321}
!33 = !{i64 2154320351}
!34 = !{i64 2154320897}
!35 = !{i64 11041}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = !{i64 14799}
!39 = !{i64 14834}
!40 = !{i64 14886}
!41 = !{i64 2630}
!42 = !{i64 15525}
!43 = !{i64 2149608896}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2154325248}
!46 = !{i64 0, i64 65}
!47 = !{i64 2154324743, i64 2154325046, i64 2154325082, i64 2154325107, i64 2154325130, i64 2154325153, i64 2154325174}
!48 = !{i64 10732}
!49 = distinct !{!49, !17}
!50 = !{i64 19437}
!51 = !{i64 2154326375}
