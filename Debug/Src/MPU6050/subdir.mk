################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MPU6050/MPU6050.c 

OBJS += \
./Src/MPU6050/MPU6050.o 

C_DEPS += \
./Src/MPU6050/MPU6050.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MPU6050/%.o: ../Src/MPU6050/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/Users/neptunex/Documents/st_workspace/stm32f103_inverted_pendulum/Inc" -I"/Users/neptunex/Documents/st_workspace/stm32f103_inverted_pendulum/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/Users/neptunex/Documents/st_workspace/stm32f103_inverted_pendulum/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/Users/neptunex/Documents/st_workspace/stm32f103_inverted_pendulum/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"/Users/neptunex/Documents/st_workspace/stm32f103_inverted_pendulum/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


