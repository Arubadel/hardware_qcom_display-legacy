LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)

LOCAL_MODULE                  := libqdutils
LOCAL_MODULE_TAGS             := optional
LOCAL_SHARED_LIBRARIES        := $(common_libs) libdl libui libcutils
LOCAL_C_INCLUDES              := $(common_includes) $(kernel_includes)

LOCAL_CFLAGS                  := $(common_flags)
LOCAL_ADDITIONAL_DEPENDENCIES := $(common_deps)
LOCAL_COPY_HEADERS_TO         := $(common_header_export_path)
LOCAL_COPY_HEADERS            := display_config.h mdp_version.h qdMetaData.h
LOCAL_SRC_FILES               := profiler.cpp mdp_version.cpp \
                                 idle_invalidator.cpp egl_handles.cpp \
                                 cb_utils.cpp display_config.cpp
include $(BUILD_SHARED_LIBRARY)
