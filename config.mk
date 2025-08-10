LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    FontAblaxOverlay \
    FontAccuratistOverlay \
    FontAclonicaOverlay \
    FontAmaranteOverlay \
    FontBariolOverlay \
    FontBeautyOverlay \
    FontCagliostroOverlay \
    FontCoconOverlay \
    FontCoconThinOverlay \
    FontComfortaaOverlay \
    FontComicSansOverlay \
    FontCookieRunOverlay \
    FontCooljazzOverlay \
    RobotoFallback-VF.ttf \
    FontCoolstoryOverlay \
    FontExotwoOverlay \
    FontEvolveSansOverlay \
    FontFifa2018Overlay \
    FontGoogleSansOverlay \
    FontGrandHotelOverlay \
    FontGoogleSansOverlay \
    FontGeneralSansOverlay \
    FontGoogleSansFlexOverlay \
    FontHarmonySansOverlay \
    FontLatoOverlay \
    FontLinotteOverlay \
    FontNokiaPureOverlay \
    FontNothingDotHeadlineOverlay \
    FontNothingDotOverlay \
    FontNunitoOverlay \
    FontOneplusSansOverlay \
    FontOneplusSlateOverlay \
    FontPoppinsSourceOverlay \
    FontOswaldOverlay \
    FontQuandoOverlay \
    FontRedressedOverlay \
    FontReemKufiOverlay \
    FontRobotoCondensedOverlay \
    FontRobotoOverlay \
    FontRubikOverlay \
    FontSanFranciscoDisplayProSourceOverlay \
    FontSamsungOneOverlay \
    FontSansSerifOverlay \
    FontSimpleDayOverlay \
    FontSonySketchOverlay \
    FontSpaceGroteskOverlay \
    FontStoropiaOverlay \
    FontSurferOverlay \
    FontRosemaryOverlay \
    FontVolteRoundedOverlay \
    FontUbuntuOverlay \
    ClockFontMotorola \
    FontRookeryOverlay \
    FontAtkinsonOverlay \
    FontJetBrainsMonoOverlay

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/fontbox/prebuilt/product/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)
