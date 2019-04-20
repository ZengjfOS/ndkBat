LOCAL_PATH := $(call my-dir)

$(info "target arch is: ${TARGET_ARCH_ABI}")

include $(LOCAL_PATH)/libstatic.mk
include $(LOCAL_PATH)/libshared.mk
include $(LOCAL_PATH)/libprelib.mk

