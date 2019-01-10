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
static const char *ng0 = "D:/University/13971/SD/E4/SSD_Driver.vhd";
extern char *IEEE_P_3499444699;



static void work_a_0535756733_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5016U);
    t3 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t2, t1);
    t4 = (t0 + 3296);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 3200);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0535756733_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    if (t4 == 0)
        goto LAB5;

LAB16:    if (t4 == 1)
        goto LAB6;

LAB17:    if (t4 == 2)
        goto LAB7;

LAB18:    if (t4 == 3)
        goto LAB8;

LAB19:    if (t4 == 4)
        goto LAB9;

LAB20:    if (t4 == 5)
        goto LAB10;

LAB21:    if (t4 == 6)
        goto LAB11;

LAB22:    if (t4 == 7)
        goto LAB12;

LAB23:    if (t4 == 8)
        goto LAB13;

LAB24:    if (t4 == 9)
        goto LAB14;

LAB25:
LAB15:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5138);
    t5 = (t0 + 3360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);

LAB4:    xsi_set_current_line(44, ng0);

LAB29:    t2 = (t0 + 3216);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB30;

LAB1:    return;
LAB5:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5068);
    t6 = (t0 + 3360);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB6:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5075);
    t5 = (t0 + 3360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB7:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5082);
    t5 = (t0 + 3360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB8:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5089);
    t5 = (t0 + 3360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB9:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5096);
    t5 = (t0 + 3360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB10:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5103);
    t5 = (t0 + 3360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB11:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5110);
    t5 = (t0 + 3360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB12:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5117);
    t5 = (t0 + 3360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB13:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5124);
    t5 = (t0 + 3360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB14:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5131);
    t5 = (t0 + 3360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB26:;
LAB27:    t3 = (t0 + 3216);
    *((int *)t3) = 0;
    goto LAB2;

LAB28:    goto LAB27;

LAB30:    goto LAB28;

}


extern void work_a_0535756733_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0535756733_3212880686_p_0,(void *)work_a_0535756733_3212880686_p_1};
	xsi_register_didat("work_a_0535756733_3212880686", "isim/Top_Bench_isim_beh.exe.sim/work/a_0535756733_3212880686.didat");
	xsi_register_executes(pe);
}
