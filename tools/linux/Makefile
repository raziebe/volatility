obj-m += module.o
KDIR ?= /opt/raspberry/64bit/kernel_obj/
KVER ?= $(shell uname -r)
CR=/opt/gcc-linaro-4.9-2015.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-

-include version.mk

all: dwarf 

dwarf: module.c
	$(MAKE) CROSS_COMPILE=${CR} ARCH=arm64 -C $(KDIR) CONFIG_DEBUG_INFO=y M="$(PWD)" modules
	#dwarfdump -di module.ko > module.dwarf

clean:
	$(MAKE) -C $(KDIR)/lib/modules/$(KVER)/build M="$(PWD)" clean
	rm -f module.dwarf
