################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Hardware_Interface/Hardware_Interface.c 

OBJS += \
./Core/Hardware_Interface/Hardware_Interface.o 

C_DEPS += \
./Core/Hardware_Interface/Hardware_Interface.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Hardware_Interface/%.o Core/Hardware_Interface/%.su Core/Hardware_Interface/%.cyclo: ../Core/Hardware_Interface/%.c Core/Hardware_Interface/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Hardware_Interface

clean-Core-2f-Hardware_Interface:
	-$(RM) ./Core/Hardware_Interface/Hardware_Interface.cyclo ./Core/Hardware_Interface/Hardware_Interface.d ./Core/Hardware_Interface/Hardware_Interface.o ./Core/Hardware_Interface/Hardware_Interface.su

.PHONY: clean-Core-2f-Hardware_Interface

