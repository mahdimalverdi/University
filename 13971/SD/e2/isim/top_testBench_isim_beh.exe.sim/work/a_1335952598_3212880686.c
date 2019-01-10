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
static const char *ng0 = "D:/University/13971/SD/e2/top.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1335952598_3212880686_p_0(char *t0)
{
    char t17[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    static char *nl0[] = {&&LAB9, &&LAB10, &&LAB11, &&LAB12};

LAB0:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3952);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t7 = (t0 + 2472U);
    t10 = *((char **)t7);
    t11 = *((unsigned char *)t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t9, t11);
    t7 = (t0 + 4032);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t1);
    goto **((char **)t2);

LAB5:    t2 = (t0 + 1472U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    goto LAB3;

LAB9:    xsi_set_current_line(56, ng0);
    t7 = (t0 + 4096);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 6472);
    t7 = (t0 + 4160);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 16U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t4 = (unsigned char)0;

LAB21:    if (t4 == 1)
        goto LAB16;

LAB17:    t1 = (unsigned char)0;

LAB18:    if (t1 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB8;

LAB10:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB8;

LAB11:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4096);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 4160);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t3, 16U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB12:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB13:    xsi_set_current_line(59, ng0);
    t10 = (t0 + 4032);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4288);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t3, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 6488);
    t7 = (t0 + 4352);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 16U);
    xsi_driver_first_trans_fast(t7);
    goto LAB14;

LAB16:    t2 = (t0 + 1192U);
    t8 = *((char **)t2);
    t2 = (t0 + 6356U);
    t12 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t8, t2, 0);
    t1 = t12;
    goto LAB18;

LAB19:    t2 = (t0 + 2472U);
    t7 = *((char **)t2);
    t9 = *((unsigned char *)t7);
    t11 = (t9 == (unsigned char)2);
    t4 = t11;
    goto LAB21;

LAB22:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t2 = (t0 + 6340U);
    t8 = (t0 + 2312U);
    t10 = *((char **)t8);
    t8 = (t0 + 6404U);
    t13 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t7, t2, t10, t8);
    t14 = (t17 + 12U);
    t18 = *((unsigned int *)t14);
    t19 = (1U * t18);
    t5 = (16U != t19);
    if (t5 == 1)
        goto LAB25;

LAB26:    t15 = (t0 + 4352);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 16U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 6388U);
    t7 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t17, t3, t2, 1);
    t8 = (t17 + 12U);
    t18 = *((unsigned int *)t8);
    t19 = (1U * t18);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB27;

LAB28:    t10 = (t0 + 4288);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 6388U);
    t1 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t2, 1);
    if (t1 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB23;

LAB25:    xsi_size_not_matching(16U, t19, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(8U, t19, 0);
    goto LAB28;

LAB29:    xsi_set_current_line(69, ng0);
    t7 = (t0 + 4224);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t7);
    goto LAB30;

}


extern void work_a_1335952598_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1335952598_3212880686_p_0};
	xsi_register_didat("work_a_1335952598_3212880686", "isim/top_testBench_isim_beh.exe.sim/work/a_1335952598_3212880686.didat");
	xsi_register_executes(pe);
}
