LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)
LOCAL_MODULE                  := liboverlay

LOCAL_MODULE_TAGS             := optional
LOCAL_C_INCLUDES              := $(common_includes) $(kernel_includes) \
LOCAL_SHARED_LIBRARIES        := $(common_libs) libmemalloc libqdutils 
LOCAL_SHARED_LIBRARIES        := libmemalloc libqdutils liblog libutils libcutils libhardware
LOCAL_CFLAGS                  := $(common_flags) -DLOG_TAG=\"overlay\"
LOCAL_ADDITIONAL_DEPENDENCIES := $(common_deps)
LOCAL_SRC_FILES := \
      overlay.cpp \
      overlayCtrl.cpp \
      overlayUtils.cpp \
      overlayMdp.cpp \
      overlayRotator.cpp

include $(BUILD_SHARED_LIBRARY)
