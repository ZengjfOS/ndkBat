LOCAL_PATH := $(call my-dir)

#------static add 1----------------
include $(CLEAR_VARS)
LOCAL_MODULE := add1s
LOCAL_SRC_FILES := src/add1.cpp
include $(BUILD_STATIC_LIBRARY)

#------static add 2----------------
include $(CLEAR_VARS)
LOCAL_MODULE := add2s
LOCAL_SRC_FILES := src/add2.cpp
include $(BUILD_STATIC_LIBRARY)

#-------------------------------------
include $(CLEAR_VARS)
LOCAL_MODULE := mains
LOCAL_SRC_FILES := src/main.cpp
LOCAL_C_INCLUDES := ${LOCAL_PATH}/include
LOCAL_STATIC_LIBRARIES := add1s add2s
include $(BUILD_EXECUTABLE)
