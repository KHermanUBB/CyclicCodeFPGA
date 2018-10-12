/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/ISE/CyclicCodeFPGA/VHDL/tb_coder.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_1317430775_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1317430775_2372691052_p_1(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;

LAB0:    t1 = (t0 + 3200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3648);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3648);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 5712);
    *((int *)t2) = 0;
    t4 = (t0 + 5716);
    *((int *)t4) = 15;
    t8 = 0;
    t9 = 15;

LAB12:    if (t8 <= t9)
        goto LAB13;

LAB15:    xsi_set_current_line(83, ng0);

LAB37:    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(69, ng0);
    t3 = (10 * 1000LL);
    t5 = (t0 + 3008);
    xsi_process_wait(t5, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 5712);
    t8 = *((int *)t2);
    t4 = (t0 + 5716);
    t9 = *((int *)t4);
    if (t8 == t9)
        goto LAB15;

LAB34:    t16 = (t8 + 1);
    t8 = t16;
    t5 = (t0 + 5712);
    *((int *)t5) = t8;
    goto LAB12;

LAB16:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 5712);
    t4 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t10, *((int *)t2), 4);
    t5 = (t10 + 12U);
    t11 = *((unsigned int *)t5);
    t11 = (t11 * 1U);
    t12 = (4U != t11);
    if (t12 == 1)
        goto LAB20;

LAB21:    t6 = (t0 + 3712);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(73, ng0);
    t3 = (25 * 1000LL);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t3);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_size_not_matching(4U, t11, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3776);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t3);

LAB28:    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

LAB26:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3776);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t3);

LAB32:    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB27:    goto LAB26;

LAB29:    goto LAB27;

LAB30:    goto LAB14;

LAB31:    goto LAB30;

LAB33:    goto LAB31;

LAB35:    goto LAB2;

LAB36:    goto LAB35;

LAB38:    goto LAB36;

}


extern void work_a_1317430775_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1317430775_2372691052_p_0,(void *)work_a_1317430775_2372691052_p_1};
	xsi_register_didat("work_a_1317430775_2372691052", "isim/tb_coder_isim_beh.exe.sim/work/a_1317430775_2372691052.didat");
	xsi_register_executes(pe);
}
