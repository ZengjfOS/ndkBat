LOCAL_PATH := $(call my-dir)

$(info "target arch is: ${TARGET_ARCH_ABI}")

#------shared add 1----------------
include $(CLEAR_VARS)
LOCAL_MODULE := add1
LOCAL_SRC_FILES := src/add1.cpp
include $(BUILD_SHARED_LIBRARY)

#------shared add 2----------------
include $(CLEAR_VARS)
LOCAL_MODULE := add2
LOCAL_SRC_FILES := src/add2.cpp
include $(BUILD_SHARED_LIBRARY)

#-------------------------------------
include $(CLEAR_VARS)
LOCAL_MODULE := main
LOCAL_SRC_FILES := src/main.cpp
LOCAL_C_INCLUDES := ${LOCAL_PATH}/include
LOCAL_SHARED_LIBRARIES := add1 add2
LOCAL_LDLIBS += -llog -lm
include $(BUILD_EXECUTABLE)

