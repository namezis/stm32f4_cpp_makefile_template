STM32F4USBDEVCORECSRC	:=  $(wildcard $(LOCPATH)/src/*.c)
STM32F4USBDEVCORECCSRC 	:=  $(wildcard $(LOCPATH)/src/*.cc)
STM32F4USBDEVCOREASMSRC :=  $(wildcard $(LOCPATH)/src/*.S)

#+ CSRC 			+= $(STM32F4USBDEVCORECSRC)
#+ CCSRC 		+= $(STM32F4USBDEVCORECCSRC)
#+ ASMSRC 		+= $(STM32F4USBDEVCOREASMSRC)
LIBSRC_CLEAN += $(STM32F4USBDEVCORECSRC:%.c=%.o) $(STM32F4USBDEVCORECCSRC:%.cc=%.o) $(STM32F4USBDEVCOREASMSRC:%.S=%.o)

$(LIBUSBCORE): $(STM32F4USBDEVCORECSRC:%.c=%.o) $(STM32F4USBDEVCORECCSRC:%.cc=%.o) $(STM32F4USBDEVCOREASMSRC:%.S=%.o)
	$(AR) -cru $@ $^
	$(RANLIB) $@
