################################################################################
# Automatically-generated file. Do not edit!
################################################################################

C_FILES += "..\SoftwarePlatform\Stm\Std\InitApi\IfxStm_ActInit.c"
OBJ_FILES += "SoftwarePlatform\Stm\Std\InitApi\IfxStm_ActInit.o"
"SoftwarePlatform\Stm\Std\InitApi\IfxStm_ActInit.o" : "..\SoftwarePlatform\Stm\Std\InitApi\IfxStm_ActInit.c" "SoftwarePlatform\Stm\Std\InitApi\.IfxStm_ActInit.o.opt"
	@echo Compiling ${<F}
	@"${PRODDIR}\bin\cctc" -f "SoftwarePlatform\Stm\Std\InitApi\.IfxStm_ActInit.o.opt"

"SoftwarePlatform\Stm\Std\InitApi\.IfxStm_ActInit.o.opt" : .refresh
	@argfile "SoftwarePlatform\Stm\Std\InitApi\.IfxStm_ActInit.o.opt" -o "SoftwarePlatform\Stm\Std\InitApi\IfxStm_ActInit.o" "..\SoftwarePlatform\Stm\Std\InitApi\IfxStm_ActInit.c" -Ctc23x --lsl-core=vtc -t -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05" -Wa-H"sfr/regtc23x.def" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05\APP\inc" -Wa-gAHLs --emit-locals=-equs,-symbols -Wa-Ogs -Wa--error-limit=42 --iso=99 --language=-gcc,-volatile,+strings,-kanji --fp-model=3 --switch=auto --align=0 --default-near-size=8 --default-a0-size=0 --default-a1-size=0 -O2 --tradeoff=4 --compact-max-size=200 -g --error-limit=42 --source -DNDEBUG -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -Wc--no-warnings=542 -D__SWPLATFORM__ -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Configuration" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Scu/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Stm/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x/_Reg" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/SrvSw" -DIFX_CFG_USE_COMPILER_DEFAULT_LINKER -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -c --dep-file="SoftwarePlatform\Stm\Std\InitApi\.IfxStm_ActInit.o.d" -Wc--make-target="SoftwarePlatform\Stm\Std\InitApi\IfxStm_ActInit.o"
DEPENDENCY_FILES += "SoftwarePlatform\Stm\Std\InitApi\.IfxStm_ActInit.o.d"


GENERATED_FILES += "SoftwarePlatform\Stm\Std\InitApi\IfxStm_ActInit.o" "SoftwarePlatform\Stm\Std\InitApi\.IfxStm_ActInit.o.opt" "SoftwarePlatform\Stm\Std\InitApi\.IfxStm_ActInit.o.d" "SoftwarePlatform\Stm\Std\InitApi\IfxStm_ActInit.src" "SoftwarePlatform\Stm\Std\InitApi\IfxStm_ActInit.lst"
