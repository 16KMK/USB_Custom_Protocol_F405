################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/SbW_Protocol/SbW_Protocol.c 

OBJS += \
./Drivers/SbW_Protocol/SbW_Protocol.o 

C_DEPS += \
./Drivers/SbW_Protocol/SbW_Protocol.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/SbW_Protocol/%.o Drivers/SbW_Protocol/%.su Drivers/SbW_Protocol/%.cyclo: ../Drivers/SbW_Protocol/%.c Drivers/SbW_Protocol/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-SbW_Protocol

clean-Drivers-2f-SbW_Protocol:
	-$(RM) ./Drivers/SbW_Protocol/SbW_Protocol.cyclo ./Drivers/SbW_Protocol/SbW_Protocol.d ./Drivers/SbW_Protocol/SbW_Protocol.o ./Drivers/SbW_Protocol/SbW_Protocol.su

.PHONY: clean-Drivers-2f-SbW_Protocol

