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
static const char *ng0 = "F:/ISE/CyclicCodeFPGA/VHDL/sr.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0641563594_3212880686_p_0(char *t0)
{
    char t13[16];
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 3560);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 3656);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    goto LAB3;

LAB5:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 3656);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t10 = (3 - 3);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t2 = (t5 + t12);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t14 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 3;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t15 = (1 - 3);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t16;
    t6 = xsi_base_array_concat(t6, t13, t7, (char)99, (unsigned char)2, (char)97, t2, t14, (char)101);
    t16 = (1U + 3U);
    t4 = (4U != t16);
    if (t4 == 1)
        goto LAB9;

LAB10:    t9 = (t0 + 3656);
    t17 = (t9 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB3;

LAB9:    xsi_size_not_matching(4U, t16, 0);
    goto LAB10;

}

static void work_a_0641563594_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(31, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (0 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3720);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3576);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0641563594_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0641563594_3212880686_p_0,(void *)work_a_0641563594_3212880686_p_1};
	xsi_register_didat("work_a_0641563594_3212880686", "isim/tb_coder_isim_beh.exe.sim/work/a_0641563594_3212880686.didat");
	xsi_register_executes(pe);
}
