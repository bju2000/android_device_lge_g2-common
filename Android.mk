ifneq ($(filter d800 d801 d802 L01F LGL22 lgl23 ls980 vs980,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9320; \
        ln -sf /data/misc/audio/wcd9320_anc.bin \
        $(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_anc.bin)

endif
