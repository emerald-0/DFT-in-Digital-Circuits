LDVERSION= $(shell $(PIC_LD) -v | grep -q 2.30 ;echo $$?)
ifeq ($(LDVERSION), 0)
     LD_NORELAX_FLAG= --no-relax
endif

ARCHIVE_OBJS=
ARCHIVE_OBJS += _7016_archive_1.so
_7016_archive_1.so : archive.20/_7016_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -Bsymbolic $(LD_NORELAX_FLAG)  -o .//../simv.daidir//_7016_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_7016_archive_1.so $@


ARCHIVE_OBJS += _prev_archive_1.so
_prev_archive_1.so : archive.20/_prev_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -Bsymbolic $(LD_NORELAX_FLAG)  -o .//../simv.daidir//_prev_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_prev_archive_1.so $@




VCS_CU_ARC_OBJS = 


O0_OBJS =

$(O0_OBJS) : %.o: %.c
	$(CC_CG) $(CFLAGS_O0) -c -o $@ $<


%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<

CU_UDP_OBJS = \
objs/udps/cbM8b.o objs/udps/rFcCA.o objs/udps/LLJ5Z.o objs/udps/mBC1t.o objs/udps/z3S5t.o  \
objs/udps/z2Ghv.o objs/udps/IKyEG.o objs/udps/ITCe7.o objs/udps/vmbYn.o objs/udps/xNj1Y.o  \
objs/udps/JZx86.o objs/udps/CpDPW.o objs/udps/qJW2v.o objs/udps/G2Kqc.o objs/udps/kFWHT.o  \
objs/udps/cpUzV.o objs/udps/ecJ0S.o objs/udps/NbR7Z.o objs/udps/K7iI9.o objs/udps/I0u4R.o  \
objs/udps/ha6a0.o objs/udps/JC4Kr.o objs/udps/CacUe.o objs/udps/h2WbZ.o objs/udps/b3bnm.o  \
objs/udps/nyyMk.o 

CU_UDP_OBJS += 
CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \
objs/amcQw_d.o 

CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

