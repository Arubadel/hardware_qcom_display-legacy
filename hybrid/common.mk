#Common headers
common_includes := $(LOCAL_PATH)/../libgralloc
common_includes += $(LOCAL_PATH)/../liboverlay
common_includes += $(LOCAL_PATH)/../libcopybit
common_includes += $(LOCAL_PATH)/../libqdutils
common_includes += $(LOCAL_PATH)/../libhwcomposer
common_includes += $(LOCAL_PATH)/../libhdmi
common_includes += $(LOCAL_PATH)/../libqservice
common_includes += $(LOCAL_PATH)/../libgenlock

common_header_export_path := qcom/display
common_deps += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
kernel_includes += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include

ifeq ($(TARGET_USES_POST_PROCESSING),true)
    common_flags     += -DUSES_POST_PROCESSING
    common_includes += $(TARGET_OUT_HEADERS)/pp/inc
endif

#Common libraries external to display HAL
common_libs := liblog libutils libcutils libhardware libdl

#Common C flags
common_flags := -DDEBUG_CALC_FPS -Wno-missing-field-initializers

ifeq ($(TARGET_USES_ION),true)
    common_flags += -DUSE_ION
endif

ifeq ($(ARCH_ARM_HAVE_NEON),true)
    common_flags += -D__ARM_HAVE_NEON
endif

ifeq ($(TARGET_NO_HW_VSYNC),true)
    common_flags += -DNO_HW_VSYNC
endif