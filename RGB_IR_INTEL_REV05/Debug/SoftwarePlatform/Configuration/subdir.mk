################################################################################
# Automatically-generated file. Do not edit!
################################################################################

C_FILES += "..\SoftwarePlatform\Configuration\__framework_init.c"
OBJ_FILES += "SoftwarePlatform\Configuration\__framework_init.o"
"SoftwarePlatform\Configuration\__framework_init.o" : "..\SoftwarePlatform\Configuration\__framework_init.c" "SoftwarePlatform\Configuration\.__framework_init.o.opt"
	@echo Compiling ${<F}
	@"${PRODDIR}\bin\cctc" -f "SoftwarePlatform\Configuration\.__framework_init.o.opt"

"SoftwarePlatform\Configuration\.__framework_init.o.opt" : .refresh
	@argfile "SoftwarePlatform\Configuration\.__framework_init.o.opt" -o "SoftwarePlatform\Configuration\__framework_init.o" "..\SoftwarePlatform\Configuration\__framework_init.c" -Ctc23x --lsl-core=vtc -t -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05" -Wa-H"sfr/regtc23x.def" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05\APP\inc" -Wa-gAHLs --emit-locals=-equs,-symbols -Wa-Ogs -Wa--error-limit=42 --iso=99 --language=-gcc,-volatile,+strings,-kanji --fp-model=3 --switch=auto --align=0 --default-near-size=8 --default-a0-size=0 --default-a1-size=0 -O2 --tradeoff=4 --compact-max-size=200 -g --error-limit=42 --source -DNDEBUG -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -Wc--no-warnings=542 -D__SWPLATFORM__ -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Configuration" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Scu/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Stm/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x/_Reg" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/SrvSw" -DIFX_CFG_USE_COMPILER_DEFAULT_LINKER -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -c --dep-file="SoftwarePlatform\Configuration\.__framework_init.o.d" -Wc--make-target="SoftwarePlatform\Configuration\__framework_init.o"
DEPENDENCY_FILES += "SoftwarePlatform\Configuration\.__framework_init.o.d"

C_FILES += "..\SoftwarePlatform\Configuration\IfxAsclin_cfg_instance.c"
OBJ_FILES += "SoftwarePlatform\Configuration\IfxAsclin_cfg_instance.o"
"SoftwarePlatform\Configuration\IfxAsclin_cfg_instance.o" : "..\SoftwarePlatform\Configuration\IfxAsclin_cfg_instance.c" "SoftwarePlatform\Configuration\.IfxAsclin_cfg_instance.o.opt"
	@echo Compiling ${<F}
	@"${PRODDIR}\bin\cctc" -f "SoftwarePlatform\Configuration\.IfxAsclin_cfg_instance.o.opt"

"SoftwarePlatform\Configuration\.IfxAsclin_cfg_instance.o.opt" : .refresh
	@argfile "SoftwarePlatform\Configuration\.IfxAsclin_cfg_instance.o.opt" -o "SoftwarePlatform\Configuration\IfxAsclin_cfg_instance.o" "..\SoftwarePlatform\Configuration\IfxAsclin_cfg_instance.c" -Ctc23x --lsl-core=vtc -t -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05" -Wa-H"sfr/regtc23x.def" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05\APP\inc" -Wa-gAHLs --emit-locals=-equs,-symbols -Wa-Ogs -Wa--error-limit=42 --iso=99 --language=-gcc,-volatile,+strings,-kanji --fp-model=3 --switch=auto --align=0 --default-near-size=8 --default-a0-size=0 --default-a1-size=0 -O2 --tradeoff=4 --compact-max-size=200 -g --error-limit=42 --source -DNDEBUG -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -Wc--no-warnings=542 -D__SWPLATFORM__ -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Configuration" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Scu/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Stm/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x/_Reg" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/SrvSw" -DIFX_CFG_USE_COMPILER_DEFAULT_LINKER -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -c --dep-file="SoftwarePlatform\Configuration\.IfxAsclin_cfg_instance.o.d" -Wc--make-target="SoftwarePlatform\Configuration\IfxAsclin_cfg_instance.o"
DEPENDENCY_FILES += "SoftwarePlatform\Configuration\.IfxAsclin_cfg_instance.o.d"

C_FILES += "..\SoftwarePlatform\Configuration\IfxGtm_cfg_instance.c"
OBJ_FILES += "SoftwarePlatform\Configuration\IfxGtm_cfg_instance.o"
"SoftwarePlatform\Configuration\IfxGtm_cfg_instance.o" : "..\SoftwarePlatform\Configuration\IfxGtm_cfg_instance.c" "SoftwarePlatform\Configuration\.IfxGtm_cfg_instance.o.opt"
	@echo Compiling ${<F}
	@"${PRODDIR}\bin\cctc" -f "SoftwarePlatform\Configuration\.IfxGtm_cfg_instance.o.opt"

"SoftwarePlatform\Configuration\.IfxGtm_cfg_instance.o.opt" : .refresh
	@argfile "SoftwarePlatform\Configuration\.IfxGtm_cfg_instance.o.opt" -o "SoftwarePlatform\Configuration\IfxGtm_cfg_instance.o" "..\SoftwarePlatform\Configuration\IfxGtm_cfg_instance.c" -Ctc23x --lsl-core=vtc -t -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05" -Wa-H"sfr/regtc23x.def" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05\APP\inc" -Wa-gAHLs --emit-locals=-equs,-symbols -Wa-Ogs -Wa--error-limit=42 --iso=99 --language=-gcc,-volatile,+strings,-kanji --fp-model=3 --switch=auto --align=0 --default-near-size=8 --default-a0-size=0 --default-a1-size=0 -O2 --tradeoff=4 --compact-max-size=200 -g --error-limit=42 --source -DNDEBUG -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -Wc--no-warnings=542 -D__SWPLATFORM__ -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Configuration" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Scu/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Stm/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x/_Reg" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/SrvSw" -DIFX_CFG_USE_COMPILER_DEFAULT_LINKER -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -c --dep-file="SoftwarePlatform\Configuration\.IfxGtm_cfg_instance.o.d" -Wc--make-target="SoftwarePlatform\Configuration\IfxGtm_cfg_instance.o"
DEPENDENCY_FILES += "SoftwarePlatform\Configuration\.IfxGtm_cfg_instance.o.d"

C_FILES += "..\SoftwarePlatform\Configuration\IfxQspi_cfg_instance.c"
OBJ_FILES += "SoftwarePlatform\Configuration\IfxQspi_cfg_instance.o"
"SoftwarePlatform\Configuration\IfxQspi_cfg_instance.o" : "..\SoftwarePlatform\Configuration\IfxQspi_cfg_instance.c" "SoftwarePlatform\Configuration\.IfxQspi_cfg_instance.o.opt"
	@echo Compiling ${<F}
	@"${PRODDIR}\bin\cctc" -f "SoftwarePlatform\Configuration\.IfxQspi_cfg_instance.o.opt"

"SoftwarePlatform\Configuration\.IfxQspi_cfg_instance.o.opt" : .refresh
	@argfile "SoftwarePlatform\Configuration\.IfxQspi_cfg_instance.o.opt" -o "SoftwarePlatform\Configuration\IfxQspi_cfg_instance.o" "..\SoftwarePlatform\Configuration\IfxQspi_cfg_instance.c" -Ctc23x --lsl-core=vtc -t -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05" -Wa-H"sfr/regtc23x.def" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05\APP\inc" -Wa-gAHLs --emit-locals=-equs,-symbols -Wa-Ogs -Wa--error-limit=42 --iso=99 --language=-gcc,-volatile,+strings,-kanji --fp-model=3 --switch=auto --align=0 --default-near-size=8 --default-a0-size=0 --default-a1-size=0 -O2 --tradeoff=4 --compact-max-size=200 -g --error-limit=42 --source -DNDEBUG -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -Wc--no-warnings=542 -D__SWPLATFORM__ -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Configuration" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Scu/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Stm/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x/_Reg" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/SrvSw" -DIFX_CFG_USE_COMPILER_DEFAULT_LINKER -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -c --dep-file="SoftwarePlatform\Configuration\.IfxQspi_cfg_instance.o.d" -Wc--make-target="SoftwarePlatform\Configuration\IfxQspi_cfg_instance.o"
DEPENDENCY_FILES += "SoftwarePlatform\Configuration\.IfxQspi_cfg_instance.o.d"

C_FILES += "..\SoftwarePlatform\Configuration\IfxScu_cfg_instance.c"
OBJ_FILES += "SoftwarePlatform\Configuration\IfxScu_cfg_instance.o"
"SoftwarePlatform\Configuration\IfxScu_cfg_instance.o" : "..\SoftwarePlatform\Configuration\IfxScu_cfg_instance.c" "SoftwarePlatform\Configuration\.IfxScu_cfg_instance.o.opt"
	@echo Compiling ${<F}
	@"${PRODDIR}\bin\cctc" -f "SoftwarePlatform\Configuration\.IfxScu_cfg_instance.o.opt"

"SoftwarePlatform\Configuration\.IfxScu_cfg_instance.o.opt" : .refresh
	@argfile "SoftwarePlatform\Configuration\.IfxScu_cfg_instance.o.opt" -o "SoftwarePlatform\Configuration\IfxScu_cfg_instance.o" "..\SoftwarePlatform\Configuration\IfxScu_cfg_instance.c" -Ctc23x --lsl-core=vtc -t -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05" -Wa-H"sfr/regtc23x.def" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05\APP\inc" -Wa-gAHLs --emit-locals=-equs,-symbols -Wa-Ogs -Wa--error-limit=42 --iso=99 --language=-gcc,-volatile,+strings,-kanji --fp-model=3 --switch=auto --align=0 --default-near-size=8 --default-a0-size=0 --default-a1-size=0 -O2 --tradeoff=4 --compact-max-size=200 -g --error-limit=42 --source -DNDEBUG -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -Wc--no-warnings=542 -D__SWPLATFORM__ -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Configuration" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Scu/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Stm/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x/_Reg" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/SrvSw" -DIFX_CFG_USE_COMPILER_DEFAULT_LINKER -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -c --dep-file="SoftwarePlatform\Configuration\.IfxScu_cfg_instance.o.d" -Wc--make-target="SoftwarePlatform\Configuration\IfxScu_cfg_instance.o"
DEPENDENCY_FILES += "SoftwarePlatform\Configuration\.IfxScu_cfg_instance.o.d"

C_FILES += "..\SoftwarePlatform\Configuration\IfxStm_cfg_instance.c"
OBJ_FILES += "SoftwarePlatform\Configuration\IfxStm_cfg_instance.o"
"SoftwarePlatform\Configuration\IfxStm_cfg_instance.o" : "..\SoftwarePlatform\Configuration\IfxStm_cfg_instance.c" "SoftwarePlatform\Configuration\.IfxStm_cfg_instance.o.opt"
	@echo Compiling ${<F}
	@"${PRODDIR}\bin\cctc" -f "SoftwarePlatform\Configuration\.IfxStm_cfg_instance.o.opt"

"SoftwarePlatform\Configuration\.IfxStm_cfg_instance.o.opt" : .refresh
	@argfile "SoftwarePlatform\Configuration\.IfxStm_cfg_instance.o.opt" -o "SoftwarePlatform\Configuration\IfxStm_cfg_instance.o" "..\SoftwarePlatform\Configuration\IfxStm_cfg_instance.c" -Ctc23x --lsl-core=vtc -t -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05" -Wa-H"sfr/regtc23x.def" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05\APP\inc" -Wa-gAHLs --emit-locals=-equs,-symbols -Wa-Ogs -Wa--error-limit=42 --iso=99 --language=-gcc,-volatile,+strings,-kanji --fp-model=3 --switch=auto --align=0 --default-near-size=8 --default-a0-size=0 --default-a1-size=0 -O2 --tradeoff=4 --compact-max-size=200 -g --error-limit=42 --source -DNDEBUG -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -Wc--no-warnings=542 -D__SWPLATFORM__ -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Configuration" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Scu/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Stm/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x/_Reg" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/SrvSw" -DIFX_CFG_USE_COMPILER_DEFAULT_LINKER -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -c --dep-file="SoftwarePlatform\Configuration\.IfxStm_cfg_instance.o.d" -Wc--make-target="SoftwarePlatform\Configuration\IfxStm_cfg_instance.o"
DEPENDENCY_FILES += "SoftwarePlatform\Configuration\.IfxStm_cfg_instance.o.d"

C_FILES += "..\SoftwarePlatform\Configuration\IfxVadc_cfg_instance.c"
OBJ_FILES += "SoftwarePlatform\Configuration\IfxVadc_cfg_instance.o"
"SoftwarePlatform\Configuration\IfxVadc_cfg_instance.o" : "..\SoftwarePlatform\Configuration\IfxVadc_cfg_instance.c" "SoftwarePlatform\Configuration\.IfxVadc_cfg_instance.o.opt"
	@echo Compiling ${<F}
	@"${PRODDIR}\bin\cctc" -f "SoftwarePlatform\Configuration\.IfxVadc_cfg_instance.o.opt"

"SoftwarePlatform\Configuration\.IfxVadc_cfg_instance.o.opt" : .refresh
	@argfile "SoftwarePlatform\Configuration\.IfxVadc_cfg_instance.o.opt" -o "SoftwarePlatform\Configuration\IfxVadc_cfg_instance.o" "..\SoftwarePlatform\Configuration\IfxVadc_cfg_instance.c" -Ctc23x --lsl-core=vtc -t -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05" -Wa-H"sfr/regtc23x.def" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05\APP\inc" -Wa-gAHLs --emit-locals=-equs,-symbols -Wa-Ogs -Wa--error-limit=42 --iso=99 --language=-gcc,-volatile,+strings,-kanji --fp-model=3 --switch=auto --align=0 --default-near-size=8 --default-a0-size=0 --default-a1-size=0 -O2 --tradeoff=4 --compact-max-size=200 -g --error-limit=42 --source -DNDEBUG -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -Wc--no-warnings=542 -D__SWPLATFORM__ -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Configuration" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Scu/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/Stm/Std/InitApi" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/TC23x/_Reg" -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_tc23x/src/ifx/SrvSw" -DIFX_CFG_USE_COMPILER_DEFAULT_LINKER -I"D:\00.Tasking_workspace\DVRS_INTEL\RGB_IR_INTEL_REV05/SoftwarePlatform/illd_common/ifx_cfg/include" -c --dep-file="SoftwarePlatform\Configuration\.IfxVadc_cfg_instance.o.d" -Wc--make-target="SoftwarePlatform\Configuration\IfxVadc_cfg_instance.o"
DEPENDENCY_FILES += "SoftwarePlatform\Configuration\.IfxVadc_cfg_instance.o.d"


GENERATED_FILES += "SoftwarePlatform\Configuration\__framework_init.o" "SoftwarePlatform\Configuration\.__framework_init.o.opt" "SoftwarePlatform\Configuration\.__framework_init.o.d" "SoftwarePlatform\Configuration\__framework_init.src" "SoftwarePlatform\Configuration\__framework_init.lst" "SoftwarePlatform\Configuration\IfxAsclin_cfg_instance.o" "SoftwarePlatform\Configuration\.IfxAsclin_cfg_instance.o.opt" "SoftwarePlatform\Configuration\.IfxAsclin_cfg_instance.o.d" "SoftwarePlatform\Configuration\IfxAsclin_cfg_instance.src" "SoftwarePlatform\Configuration\IfxAsclin_cfg_instance.lst" "SoftwarePlatform\Configuration\IfxGtm_cfg_instance.o" "SoftwarePlatform\Configuration\.IfxGtm_cfg_instance.o.opt" "SoftwarePlatform\Configuration\.IfxGtm_cfg_instance.o.d" "SoftwarePlatform\Configuration\IfxGtm_cfg_instance.src" "SoftwarePlatform\Configuration\IfxGtm_cfg_instance.lst" "SoftwarePlatform\Configuration\IfxQspi_cfg_instance.o" "SoftwarePlatform\Configuration\.IfxQspi_cfg_instance.o.opt" "SoftwarePlatform\Configuration\.IfxQspi_cfg_instance.o.d" "SoftwarePlatform\Configuration\IfxQspi_cfg_instance.src" "SoftwarePlatform\Configuration\IfxQspi_cfg_instance.lst" "SoftwarePlatform\Configuration\IfxScu_cfg_instance.o" "SoftwarePlatform\Configuration\.IfxScu_cfg_instance.o.opt" "SoftwarePlatform\Configuration\.IfxScu_cfg_instance.o.d" "SoftwarePlatform\Configuration\IfxScu_cfg_instance.src" "SoftwarePlatform\Configuration\IfxScu_cfg_instance.lst" "SoftwarePlatform\Configuration\IfxStm_cfg_instance.o" "SoftwarePlatform\Configuration\.IfxStm_cfg_instance.o.opt" "SoftwarePlatform\Configuration\.IfxStm_cfg_instance.o.d" "SoftwarePlatform\Configuration\IfxStm_cfg_instance.src" "SoftwarePlatform\Configuration\IfxStm_cfg_instance.lst" "SoftwarePlatform\Configuration\IfxVadc_cfg_instance.o" "SoftwarePlatform\Configuration\.IfxVadc_cfg_instance.o.opt" "SoftwarePlatform\Configuration\.IfxVadc_cfg_instance.o.d" "SoftwarePlatform\Configuration\IfxVadc_cfg_instance.src" "SoftwarePlatform\Configuration\IfxVadc_cfg_instance.lst"
