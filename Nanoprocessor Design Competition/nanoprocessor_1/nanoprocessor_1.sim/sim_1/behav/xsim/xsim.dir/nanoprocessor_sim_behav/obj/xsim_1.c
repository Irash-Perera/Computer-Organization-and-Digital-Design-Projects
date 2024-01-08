/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_300(char*, char *);
extern void execute_301(char*, char *);
extern void execute_297(char*, char *);
extern void execute_298(char*, char *);
extern void execute_299(char*, char *);
extern void execute_19(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_25(char*, char *);
extern void execute_37(char*, char *);
extern void execute_39(char*, char *);
extern void execute_43(char*, char *);
extern void execute_45(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_122(char*, char *);
extern void execute_160(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_163(char*, char *);
extern void execute_131(char*, char *);
extern void execute_132(char*, char *);
extern void execute_126(char*, char *);
extern void execute_127(char*, char *);
extern void execute_192(char*, char *);
extern void execute_287(char*, char *);
extern void execute_205(char*, char *);
extern void execute_206(char*, char *);
extern void execute_196(char*, char *);
extern void execute_197(char*, char *);
extern void execute_198(char*, char *);
extern void execute_199(char*, char *);
extern void execute_216(char*, char *);
extern void execute_209(char*, char *);
extern void execute_290(char*, char *);
extern void execute_296(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_8(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_9(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[68] = {(funcp)execute_300, (funcp)execute_301, (funcp)execute_297, (funcp)execute_298, (funcp)execute_299, (funcp)execute_19, (funcp)execute_26, (funcp)execute_27, (funcp)execute_28, (funcp)execute_29, (funcp)execute_30, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_22, (funcp)execute_23, (funcp)execute_24, (funcp)execute_25, (funcp)execute_37, (funcp)execute_39, (funcp)execute_43, (funcp)execute_45, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_122, (funcp)execute_160, (funcp)execute_161, (funcp)execute_162, (funcp)execute_163, (funcp)execute_131, (funcp)execute_132, (funcp)execute_126, (funcp)execute_127, (funcp)execute_192, (funcp)execute_287, (funcp)execute_205, (funcp)execute_206, (funcp)execute_196, (funcp)execute_197, (funcp)execute_198, (funcp)execute_199, (funcp)execute_216, (funcp)execute_209, (funcp)execute_290, (funcp)execute_296, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_8, (funcp)transaction_9, (funcp)transaction_10, (funcp)transaction_31, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_108};
const int NumRelocateId= 68;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/nanoprocessor_sim_behav/xsim.reloc",  (void **)funcTab, 68);
	iki_vhdl_file_variable_register(dp + 41464);
	iki_vhdl_file_variable_register(dp + 41520);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/nanoprocessor_sim_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/nanoprocessor_sim_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/nanoprocessor_sim_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/nanoprocessor_sim_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/nanoprocessor_sim_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
