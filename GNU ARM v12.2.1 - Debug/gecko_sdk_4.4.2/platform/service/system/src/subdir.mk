################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk/platform/service/system/src/sl_system_init.c \
C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk/platform/service/system/src/sl_system_process_action.c 

OBJS += \
./gecko_sdk_4.4.2/platform/service/system/src/sl_system_init.o \
./gecko_sdk_4.4.2/platform/service/system/src/sl_system_process_action.o 

C_DEPS += \
./gecko_sdk_4.4.2/platform/service/system/src/sl_system_init.d \
./gecko_sdk_4.4.2/platform/service/system/src/sl_system_process_action.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.2/platform/service/system/src/sl_system_init.o: C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk/platform/service/system/src/sl_system_init.c gecko_sdk_4.4.2/platform/service/system/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B310F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2601B"' '-DSL_BOARD_REV="A01"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"D:\simplicityProjects\IRsensor\config" -I"D:\simplicityProjects\IRsensor\autogen" -I"D:\simplicityProjects\IRsensor" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//util/third_party/cmsis/dsp/Include" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//util/third_party/cmsis/dsp/Include/dsp" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.2/platform/service/system/src/sl_system_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.2/platform/service/system/src/sl_system_process_action.o: C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk/platform/service/system/src/sl_system_process_action.c gecko_sdk_4.4.2/platform/service/system/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B310F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2601B"' '-DSL_BOARD_REV="A01"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"D:\simplicityProjects\IRsensor\config" -I"D:\simplicityProjects\IRsensor\autogen" -I"D:\simplicityProjects\IRsensor" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//util/third_party/cmsis/dsp/Include" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//util/third_party/cmsis/dsp/Include/dsp" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/masud/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.2/platform/service/system/src/sl_system_process_action.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


