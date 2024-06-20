// file = 0; split type = patterns; threshold = 100000; total count = 0.
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include "rmapats.h"

void  hsG_0__0 (struct dummyq_struct * I1391, EBLK  * I1386, U  I617);
void  hsG_0__0 (struct dummyq_struct * I1391, EBLK  * I1386, U  I617)
{
    U  I1654;
    U  I1655;
    U  I1656;
    struct futq * I1657;
    struct dummyq_struct * pQ = I1391;
    I1654 = ((U )vcs_clocks) + I617;
    I1656 = I1654 & ((1 << fHashTableSize) - 1);
    I1386->I663 = (EBLK  *)(-1);
    I1386->I664 = I1654;
    if (0 && rmaProfEvtProp) {
        vcs_simpSetEBlkEvtID(I1386);
    }
    if (I1654 < (U )vcs_clocks) {
        I1655 = ((U  *)&vcs_clocks)[1];
        sched_millenium(pQ, I1386, I1655 + 1, I1654);
    }
    else if ((peblkFutQ1Head != ((void *)0)) && (I617 == 1)) {
        I1386->I666 = (struct eblk *)peblkFutQ1Tail;
        peblkFutQ1Tail->I663 = I1386;
        peblkFutQ1Tail = I1386;
    }
    else if ((I1657 = pQ->I1294[I1656].I686)) {
        I1386->I666 = (struct eblk *)I1657->I684;
        I1657->I684->I663 = (RP )I1386;
        I1657->I684 = (RmaEblk  *)I1386;
    }
    else {
        sched_hsopt(pQ, I1386, I1654);
    }
}
#ifdef __cplusplus
extern "C" {
#endif
void SinitHsimPats(void);
#ifdef __cplusplus
}
#endif
