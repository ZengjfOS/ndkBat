LOCAL_PATH := $(call my-dir)

#------use prebuild so----------------
include $(CLEAR_VARS)
LOCAL_MODULE := preadd1
LOCAL_SRC_FILES :=  prebuild/libs/${TARGET_ARCH_ABI}/libadd1.so		# 每次只能加载一个
include $(PREBUILT_SHARED_LIBRARY)
# include $(PREBUILT_STATIC_LIBRARY)
#------use prebuild so----------------
include $(CLEAR_VARS)
LOCAL_MODULE := preadd2
LOCAL_SRC_FILES :=  prebuild/libs/${TARGET_ARCH_ABI}/libadd2.so		# 每次只能加载一个
include $(PREBUILT_SHARED_LIBRARY)
# include $(PREBUILT_STATIC_LIBRARY)

#-------------------------------------
include $(CLEAR_VARS)
LOCAL_MODULE := preadd12main
LOCAL_SRC_FILES := src/main.cpp
LOCAL_C_INCLUDES := ${LOCAL_PATH}/include
LOCAL_SHARED_LIBRARIES := preadd1 preadd2
# LOCAL_STATIC_LIBRARIES := preadd1 preadd2
include $(BUILD_EXECUTABLE)
 
