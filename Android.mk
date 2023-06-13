LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),OP4B9B)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
