ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),royss_twrp)
include $(call first-makefiles-under,$(call my-dir))
endif
