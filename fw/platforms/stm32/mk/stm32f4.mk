HSI_VALUE = 16000000
FLASH_S0_SIZE = 16384
MGOS_ROOT_FS_SIZE ?= 98304
STM32_CFLAGS += -mthumb -march=armv7e-m -mfloat-abi=hard -mfpu=fpv4-sp-d16 \
                -DSTM32F4 -DARM_HAVE_FPU=1 -DMGOS_MAX_NUM_UARTS=7 \
                -DIRAM=__RAM_FUNC
LD_SCRIPT_NO_OTA = $(MGOS_PLATFORM_PATH)/ld/stm32f_no_ota.ld
LD_SCRIPT_OTA_0 = $(MGOS_PLATFORM_PATH)/ld/stm32f_ota_0.ld
STM32CUBE_PATH = $(STM32CUBE_F4_PATH)
SDK_IPATH = $(STM32CUBE_PATH)/Drivers/CMSIS/Device/ST/STM32F4xx/Include \
            $(STM32CUBE_PATH)/Drivers/STM32F4xx_HAL_Driver/Inc
SDK_VPATH = $(STM32CUBE_PATH)/Drivers/STM32F4xx_HAL_Driver/Src
SDK_SRCS = \
stm32f4xx_hal_adc.c stm32f4xx_hal_adc_ex.c \
stm32f4xx_hal_can.c stm32f4xx_hal_cec.c stm32f4xx_hal_cortex.c \
stm32f4xx_hal_crc.c stm32f4xx_hal_cryp.c \
stm32f4xx_hal_cryp_ex.c stm32f4xx_hal_dac.c stm32f4xx_hal_dac_ex.c \
stm32f4xx_hal_dcmi.c stm32f4xx_hal_dcmi_ex.c stm32f4xx_hal_dfsdm.c \
stm32f4xx_hal_dma2d.c stm32f4xx_hal_dma.c stm32f4xx_hal_dma_ex.c \
stm32f4xx_hal_dsi.c stm32f4xx_hal_eth.c stm32f4xx_hal_flash.c \
stm32f4xx_hal_flash_ex.c stm32f4xx_hal_gpio.c stm32f4xx_hal_hash.c \
stm32f4xx_hal_hash_ex.c stm32f4xx_hal_hcd.c stm32f4xx_hal_i2c.c \
stm32f4xx_hal_i2c_ex.c stm32f4xx_hal_i2s.c stm32f4xx_hal_irda.c \
stm32f4xx_hal_iwdg.c stm32f4xx_hal_lptim.c \
stm32f4xx_hal_ltdc.c stm32f4xx_hal_ltdc_ex.c \
stm32f4xx_hal_mmc.c stm32f4xx_hal_nand.c stm32f4xx_hal_nor.c \
stm32f4xx_hal_pcd.c stm32f4xx_hal_pcd_ex.c stm32f4xx_hal_pwr.c \
stm32f4xx_hal_pwr_ex.c stm32f4xx_hal_qspi.c stm32f4xx_hal_rcc.c \
stm32f4xx_hal_rcc_ex.c stm32f4xx_hal_rng.c stm32f4xx_hal_rtc.c \
stm32f4xx_hal_rtc_ex.c stm32f4xx_hal_sai.c stm32f4xx_hal_sai_ex.c \
stm32f4xx_hal_sd.c stm32f4xx_hal_sdram.c stm32f4xx_hal_smartcard.c \
stm32f4xx_hal_spi.c stm32f4xx_hal_sram.c stm32f4xx_hal_tim.c \
stm32f4xx_hal_tim_ex.c stm32f4xx_hal_uart.c stm32f4xx_hal_usart.c \
stm32f4xx_hal_wwdg.c \
stm32f4xx_ll_adc.c stm32f4xx_ll_crc.c stm32f4xx_ll_dac.c stm32f4xx_ll_dma2d.c \
stm32f4xx_ll_dma.c stm32f4xx_ll_exti.c stm32f4xx_ll_fmc.c stm32f4xx_ll_gpio.c \
stm32f4xx_ll_i2c.c stm32f4xx_ll_lptim.c stm32f4xx_ll_pwr.c stm32f4xx_ll_rcc.c \
stm32f4xx_ll_rng.c stm32f4xx_ll_rtc.c stm32f4xx_ll_sdmmc.c stm32f4xx_ll_spi.c \
stm32f4xx_ll_tim.c stm32f4xx_ll_usart.c stm32f4xx_ll_usb.c stm32f4xx_ll_utils.c

MGOS_SRCS += stm32f4_system.c arm_nsleep100_m4.S
