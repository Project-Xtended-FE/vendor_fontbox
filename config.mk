LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    FontCooljazzOverlay \
    FontRobotoOverlay \
    FontGoogleSansOverlay \
    FontJetBrainsMonoOverlay \
    FontSpaceGroteskOverlay \
    FontVolteRoundedOverlay \
    ClockFontVolteRoundedBoldOverlay \
    ClockFontBeautyOverlay \
    ClockFontRidgeOverlay \
    ClockFontSubwayOverlay \
    ClockFontSFPro-SemiboldRoundedOverlay

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/fontbox/prebuilt/product/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)
