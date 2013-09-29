.class public Lcom/android/systemui/statusbar/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ATT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CHN:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CHN_OPEN:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CMCC:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CRI:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CTC:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CU:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DCM:Z = false

#the value of this static final field might be set in the static constructor
.field private static final EUR_OPEN:Z = false

#the value of this static final field might be set in the static constructor
.field private static final J_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final KOR:Z = false

#the value of this static final field might be set in the static constructor
.field private static final KTT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LGT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ORANGE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SKT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SPR:Z = false

#the value of this static final field might be set in the static constructor
.field private static final TMO:Z = false

#the value of this static final field might be set in the static constructor
.field private static final USA:Z = false

#the value of this static final field might be set in the static constructor
.field private static final USCC:Z = false

#the value of this static final field might be set in the static constructor
.field private static final U_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final VZW:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mDataIconForCHN:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mDataIconForJPN:Z = false

.field public static final mDataTypeBrand:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final mHideNaviBarSearchButton:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mHideWifiInAndOut:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mJumpToAir1depthForVZW:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mMobileDataStringForVZW:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mPLMNIconDisplay:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mPanelExpandedTickerStop:Z = false

.field public static final mProductName:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final mRoamingIconDisplay:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mRoamingOngoingForVZW:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mSetDefaultOrientationLandscapeMode:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mSetDefaultSSID:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowCarrierWifiIcon:Z = false

.field public static final mShowDataStrength:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowGPSlicensPopup:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowLgtLabelType:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowMenuKeyAlways:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowOperatorLogoIcon:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowRecentGoogleNowButton:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowRecentOnlyStringForVZW:Z = false

.field public static final mShowRecentRemoveAllButton:Z = true

#the value of this static final field might be set in the static constructor
.field public static final mShowRoamingToastForLGT:Z = false

.field public static final mShowSimCheckPopup:Z = true

#the value of this static final field might be set in the static constructor
.field public static final mShowWorldClock:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mSimIconForCHN:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mSoundProfile:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseAnimatedBrightnessIcon:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseAttNfcIcon:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseAutoBrightnessDetail:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseCHNFontType:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseKorRSSIAlgorithm:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseRedBatteryIcon:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseSVoiceDrivingmodeSetting:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseServiceStateForAirplane:Z = false

.field public static final mUseStatusBarMarquee:Z = true

.field public static final mUseTouchWizGUI:Z = true

.field public static final mUseVzwBatteryIcon:Z

.field public static final mUseVzwSimIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeBrand:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "vzw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "att"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "uc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "spr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "tmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "MetroPCS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "usc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "cri"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CRI:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "skt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "ktt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "lgt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "dcm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "SC-04E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "zm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "zn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "ctc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CTC:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "zc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN_OPEN:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "xx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->EUR_OPEN:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    if-eqz v0, :cond_e

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-eqz v0, :cond_f

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->KOR:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN_OPEN:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CTC:Z

    if-eqz v0, :cond_10

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "ja"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "jf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "SC-04E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->J_PROJECT:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "u0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeBrand:Ljava/lang/String;

    const-string v3, "ORANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->ORANGE:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowMenuKeyAlways:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSetDefaultOrientationLandscapeMode:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHideNaviBarSearchButton:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->J_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowWorldClock:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_12

    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-eqz v0, :cond_13

    :cond_7
    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v0, :cond_14

    move v0, v2

    :goto_9
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CRI:Z

    if-eqz v0, :cond_15

    :cond_8
    move v0, v2

    :goto_a
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVZW:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingOngoingForVZW:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA:Z

    if-nez v0, :cond_16

    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseVzwBatteryIcon:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KOR:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ORANGE:Z

    if-eqz v0, :cond_17

    :cond_9
    move v0, v2

    :goto_c
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowLgtLabelType:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KOR:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPanelExpandedTickerStop:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-eqz v0, :cond_18

    :cond_a
    move v0, v2

    :goto_d
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForJPN:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseCHNFontType:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRoamingToastForLGT:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mJumpToAir1depthForVZW:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CTC:Z

    if-nez v0, :cond_19

    move v0, v2

    :goto_e
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseServiceStateForAirplane:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->J_PROJECT:Z

    if-eqz v0, :cond_1a

    :goto_f
    sput-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseSVoiceDrivingmodeSetting:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSetDefaultSSID:Z

    return-void

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto/16 :goto_2

    :cond_e
    move v0, v1

    goto/16 :goto_3

    :cond_f
    move v0, v1

    goto/16 :goto_4

    :cond_10
    move v0, v1

    goto/16 :goto_5

    :cond_11
    move v0, v1

    goto/16 :goto_6

    :cond_12
    move v0, v1

    goto/16 :goto_7

    :cond_13
    move v0, v1

    goto/16 :goto_8

    :cond_14
    move v0, v1

    goto/16 :goto_9

    :cond_15
    move v0, v1

    goto/16 :goto_a

    :cond_16
    move v0, v1

    goto/16 :goto_b

    :cond_17
    move v0, v1

    goto :goto_c

    :cond_18
    move v0, v1

    goto :goto_d

    :cond_19
    move v0, v1

    goto :goto_e

    :cond_1a
    move v2, v1

    goto :goto_f
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMaxLevelOfSignalStrengthIndicator()I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CRI:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static final getOperator()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-eqz v0, :cond_0

    const-string v0, "ATT"

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-eqz v0, :cond_1

    const-string v0, "TMO"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-eqz v0, :cond_2

    const-string v0, "VZW"

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-eqz v0, :cond_3

    const-string v0, "SPR"

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-eqz v0, :cond_4

    const-string v0, "CMCC"

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-eqz v0, :cond_5

    const-string v0, "LGT"

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    if-eqz v0, :cond_6

    const-string v0, "DCM"

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-eqz v0, :cond_7

    const-string v0, "SKT"

    goto :goto_0

    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    if-eqz v0, :cond_8

    const-string v0, "CU"

    goto :goto_0

    :cond_8
    const-string v0, "OPEN"

    goto :goto_0
.end method

.method public static final getOperatorSIM()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-eqz v0, :cond_0

    const-string v0, "45005"

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    if-eqz v0, :cond_1

    const-string v0, "45008"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-eqz v0, :cond_2

    const-string v0, "45006"

    goto :goto_0

    :cond_2
    const-string v0, "OPEN"

    goto :goto_0
.end method
