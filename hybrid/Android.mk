#Enables the listed display HAL modules
#libs to be built for QCOM targets only

display-hals := libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils
display-hals += libtilerenderer

ifneq ($(TARGET_PROVIDES_LIBLIGHTS),true)
display-hals += liblight
endif

include $(call all-named-subdir-makefiles,$(display-hals))
