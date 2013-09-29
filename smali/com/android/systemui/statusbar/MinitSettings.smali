.class public Lcom/android/systemui/statusbar/MinitSettings;
.super Ljava/lang/Object;
.source "MinitSettings.java"


# static fields
.field public static mActiveToggles:Ljava/lang/String;

.field public static mAddOnAppLaunchIntent:Ljava/lang/String;

.field public static mAlwaysTransparent:Z

.field public static mAmPmSize:F

.field public static mAppendAmPmSpace:Z

.field public static mBatteryColor:I

.field public static mBatteryLowColor:I

.field public static mBatteryLowValue:I

.field public static mBatteryMidColor:I

.field public static mBatteryMidValue:I

.field public static mBatteryTextColor:I

.field public static mBatteryTextSize:I

.field public static mBatteryType:I

.field public static mBrightnessTextColor:I

.field public static mCallEndDelay:I

.field public static mCenterCarrier:Z

.field public static mCenterClock:Z

.field public static mClearButtonBackgroundColor:I

.field public static mClearButtonImage:Ljava/lang/String;

.field public static mClearButtonTextColor:I

.field public static mClockColor:I

.field public static mClockLocation:I

.field public static mClockSize:I

.field public static mContext:Landroid/content/Context;

.field public static mCustomCarrierText:Ljava/lang/String;

.field public static mDateClickLaunchesApp:Z

.field public static mDateStyle:I

.field public static mDateTimeIntent:Ljava/lang/String;

.field public static mDefaultActiveToggleString:Ljava/lang/String;

.field public static mDefaultColor:I

.field public static mDisableFullBatterySounds:Z

.field public static mDisableIncreasingRingtone:Z

.field public static mDisableLowBatteryWarnings:Z

.field public static mDisableUsbSounds:Z

.field public static mDragBarColor:I

.field public static mDragbarBackgroundColor:I

.field public static mDropDownClockColor:I

.field public static mDropDownDateColor:I

.field public static mDropdownImage:Ljava/lang/String;

.field public static mFirstRun:Z

.field public static mHeaderAmPmSize:F

.field public static mHeaderClockSize:I

.field public static mHideAlarmIcon:Z

.field public static mHideBattery:Z

.field public static mHideBluetoothIcon:Z

.field public static mHideBrightnessSlider:Z

.field public static mHideCarrierText:Z

.field public static mHideNoNotification:Z

.field public static mHideOnGoing:Z

.field public static mHideOnGoingItems:Z

.field public static mHideVibrateIcon:Z

.field public static mIncomingCallWidgetColor:I

.field public static mInkEffect:Z

.field public static mInkEffectColor:I

.field public static mLTEImage:I

.field public static mLatestItemsBackgroundColor:I

.field public static mLatestItemsTitleColor:I

.field public static mLauncherRotation:Z

.field public static mLockscreenType:I

.field public static mNavigationBar:Z

.field public static mNavigationBarColor:I

.field public static mNavigationButtonColor:I

.field public static mNextAlarmAndCarrierColor:I

.field public static mNoNotificationsImage:Ljava/lang/String;

.field public static mNoNotificationsTitleTextColor:I

.field public static mNoNotifyBgColor:I

.field public static mNotificationColor:I

.field public static mOnGoingBgColor:I

.field public static mOnGoingItemsBgColor:I

.field public static mOnGoingTitleColor:I

.field public static mOngoingItemsBackgroundColor:I

.field public static mPanelButton:I

.field public static mPanelButtonColor:I

.field public static mPanelHeaderColor:I

.field public static mQuicksettingImage:Ljava/lang/String;

.field public static mSetDropDownClockSize:Z

.field public static mShowAmPm:Z

.field public static mShowClock:Z

.field public static mShowDataArrows:Z

.field public static mShowDate:Z

.field public static mShowDay:Z

.field public static mShowHeaderAmPm:Z

.field public static mShowNextAlarm:Z

.field public static mShowWifiArrows:Z

.field public static mSignalColor:I

.field public static mSignalStrengthColor:I

.field public static mSixToggles:Z

.field public static mSkipTracksForSpotify:Z

.field public static mStatusbarColor:I

.field public static mStatusbarIconsColor:I

.field public static mStatusbarImage:Ljava/lang/String;

.field public static mStatusbarLockButton:Z

.field public static mStockDataIcons:Z

.field public static mToggglesIndcatorColor:I

.field public static mToggglesIndcatorDimColor:I

.field public static mToggglesIndcatorOffColor:I

.field public static mToggleButtonBgColor:I

.field public static mToggleColor:I

.field public static mToggleDimColor:I

.field public static mToggleIdicators:Z

.field public static mToggleOffColor:I

.field public static mToggleText:Z

.field public static mToggleTextColor:I

.field public static mUsbTurnsOnScreen:Z

.field public static mUseClearButtonImage:Z

.field public static mUseColorBattery:Z

.field public static mUseCustomCarrierText:Z

.field public static mUseDropdownImage:Z

.field public static mUseNotificationTitleBgImage:Z

.field public static mUseQuicksettingImage:Z

.field public static mUseSmallNavigationBar:Z

.field public static mUseStatusbarImage:Z

.field public static mUseToggleMod:Z

.field public static mUseUppercase:Z

.field public static mWallpaperScrolling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v5, -0xcfc4bd

    const/high16 v4, -0x100

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, -0x883e0e

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mDefaultColor:I

    const-string v0, "Wifi;Bluetooth;Location;MobileData;SilentMode;Reboot;Torch;SmartStay;SmartScroll;SmartPause;DormantMode;AirplaneMode;MultiWindow;AutoRotate;AirGesture;AirView;DrivingMode;PowerSaving;Nfc;Shutdown;SBeam;AllShareCast;Sync;WiFiHotspot;"

    sput-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mDefaultActiveToggleString:Ljava/lang/String;

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mCenterCarrier:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mCenterClock:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mDisableFullBatterySounds:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mDisableIncreasingRingtone:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mDisableLowBatteryWarnings:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mDisableUsbSounds:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideAlarmIcon:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideBluetoothIcon:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mHideBrightnessSlider:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideCarrierText:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideNoNotification:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideOnGoing:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideOnGoingItems:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mInkEffect:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mLauncherRotation:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowAmPm:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowClock:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowDate:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowDay:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowNextAlarm:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mStatusbarLockButton:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUsbTurnsOnScreen:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseColorBattery:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseCustomCarrierText:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseToggleMod:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mUseStatusbarImage:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mUseDropdownImage:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mUseUppercase:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideVibrateIcon:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mWallpaperScrolling:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mFirstRun:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggleText:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggleIdicators:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mSetDropDownClockSize:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mNavigationBar:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideBattery:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mSixToggles:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mStockDataIcons:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowWifiArrows:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowDataArrows:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mAppendAmPmSpace:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowHeaderAmPm:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mUseQuicksettingImage:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mUseSmallNavigationBar:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mSkipTracksForSpotify:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mAlwaysTransparent:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mUseClearButtonImage:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mDateClickLaunchesApp:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mUseNotificationTitleBgImage:Z

    const v0, -0x7433eb

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryColor:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryTextColor:I

    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryType:I

    const/16 v0, 0x1388

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mCallEndDelay:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mClockColor:I

    sput v1, Lcom/android/systemui/statusbar/MinitSettings;->mDateStyle:I

    const v0, -0xcc4a1b

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mDragBarColor:I

    sput v4, Lcom/android/systemui/statusbar/MinitSettings;->mDragbarBackgroundColor:I

    sget v0, Lcom/android/systemui/statusbar/MinitSettings;->mDefaultColor:I

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mIncomingCallWidgetColor:I

    sget v0, Lcom/android/systemui/statusbar/MinitSettings;->mDefaultColor:I

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mInkEffectColor:I

    sput v1, Lcom/android/systemui/statusbar/MinitSettings;->mLockscreenType:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mNextAlarmAndCarrierColor:I

    sput v4, Lcom/android/systemui/statusbar/MinitSettings;->mNotificationColor:I

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mPanelButton:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mPanelButtonColor:I

    sput v1, Lcom/android/systemui/statusbar/MinitSettings;->mStatusbarColor:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mStatusbarIconsColor:I

    const v0, -0x4d0700

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mToggleColor:I

    const v0, -0x89705e

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mToggleOffColor:I

    const v0, 0x30768fa2

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mToggleDimColor:I

    sput v4, Lcom/android/systemui/statusbar/MinitSettings;->mPanelHeaderColor:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mSignalColor:I

    const v0, -0xeed9cf

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mToggleButtonBgColor:I

    const v0, -0x614d3d

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mToggleTextColor:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mBrightnessTextColor:I

    const/16 v0, 0x12

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mClockSize:I

    const/16 v0, 0x20

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mHeaderClockSize:I

    const/16 v0, -0x3400

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryMidColor:I

    const/high16 v0, -0x1

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryLowColor:I

    const/16 v0, 0x32

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryMidValue:I

    const/16 v0, 0xf

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryLowValue:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mDropDownClockColor:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mDropDownDateColor:I

    sput v1, Lcom/android/systemui/statusbar/MinitSettings;->mLTEImage:I

    const v0, -0x523e2a

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mOnGoingTitleColor:I

    const v0, -0x523e2a

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mNoNotificationsTitleTextColor:I

    const v0, -0x523e2a

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mLatestItemsTitleColor:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mClearButtonTextColor:I

    sput v5, Lcom/android/systemui/statusbar/MinitSettings;->mNoNotifyBgColor:I

    sput v5, Lcom/android/systemui/statusbar/MinitSettings;->mOnGoingBgColor:I

    sput v5, Lcom/android/systemui/statusbar/MinitSettings;->mOnGoingItemsBgColor:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mNavigationButtonColor:I

    sput v4, Lcom/android/systemui/statusbar/MinitSettings;->mNavigationBarColor:I

    sput v1, Lcom/android/systemui/statusbar/MinitSettings;->mClearButtonBackgroundColor:I

    sput v1, Lcom/android/systemui/statusbar/MinitSettings;->mLatestItemsBackgroundColor:I

    sput v1, Lcom/android/systemui/statusbar/MinitSettings;->mOngoingItemsBackgroundColor:I

    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryTextSize:I

    sput v3, Lcom/android/systemui/statusbar/MinitSettings;->mSignalStrengthColor:I

    const v0, -0x4d0700

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mToggglesIndcatorColor:I

    const v0, -0x89705e

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mToggglesIndcatorOffColor:I

    const v0, 0x30768fa2

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mToggglesIndcatorDimColor:I

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mClockLocation:I

    const v0, 0x3f4ccccd

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mAmPmSize:F

    const v0, 0x3f333333

    sput v0, Lcom/android/systemui/statusbar/MinitSettings;->mHeaderAmPmSize:F

    const-string v0, "By Gary Harrington"

    sput-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mCustomCarrierText:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mDropdownImage:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mStatusbarImage:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mClearButtonImage:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mQuicksettingImage:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mNoNotificationsImage:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mDefaultActiveToggleString:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mActiveToggles:Ljava/lang/String;

    const-string v0, "com.three.minit"

    sput-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mDateTimeIntent:Ljava/lang/String;

    const-string v0, "com.three.minit"

    sput-object v0, Lcom/android/systemui/statusbar/MinitSettings;->mAddOnAppLaunchIntent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static RestoreProfile(Landroid/content/Context;Ljava/io/File;)Z
    .locals 14

    const/4 v9, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v11, "3Minit"

    const-string v12, "RestoreProfile - Restore started"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/ObjectInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v11}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v11, "com.three.minit"

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    const-string v12, "com.three.minit_preferences"

    const/4 v13, 0x7

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v11, "3Minit"

    const-string v12, "RestoreProfile - Restore succsess"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v9, 0x1

    if-eqz v5, :cond_8

    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    :cond_1
    :goto_1
    return v9

    :cond_2
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    instance-of v12, v10, Ljava/lang/Boolean;

    if-eqz v12, :cond_3

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-interface {v7, v6, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v5

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v11, "3Minit"

    const-string v12, "RestoreProfile - Restore fail 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const-string v11, "3Minit"

    const-string v12, "RestoreProfile - Restore fail 2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_6
    instance-of v12, v10, Ljava/lang/Float;

    if-eqz v12, :cond_5

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v7, v6, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v11

    move-object v4, v5

    :goto_3
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_4
    throw v11

    :cond_5
    :try_start_8
    instance-of v12, v10, Ljava/lang/Integer;

    if-eqz v12, :cond_6

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v7, v6, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_6
    instance-of v12, v10, Ljava/lang/Long;

    if-eqz v12, :cond_7

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v7, v6, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :cond_7
    instance-of v12, v10, Ljava/lang/String;

    if-eqz v12, :cond_0

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7, v6, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const-string v12, "3Minit"

    const-string v13, "RestoreProfile - Restore fail 2"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const-string v11, "3Minit"

    const-string v12, "RestoreProfile - Restore fail 2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v4, v5

    goto/16 :goto_1

    :catchall_1
    move-exception v11

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static changeProfile(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const-string v5, ""

    invoke-virtual {v3, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v5, "profilename"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3Minit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "3Minit"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "changeProfile - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "3Minit"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "changeProfile - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Auto restore failed"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    return-void

    :cond_2
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/MinitSettings;->RestoreProfile(Landroid/content/Context;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "3Minit"

    const-string v6, "changeProfile - Restore Started"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/systemui/statusbar/MinitSettings;->get_settings(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/MinitSettings;->notify_settings_changed(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_3
    const-string v5, "Auto restore failed"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public static get_settings(Landroid/content/Context;Z)V
    .locals 5

    :try_start_0
    sput-object p0, Lcom/android/systemui/statusbar/MinitSettings;->mContext:Landroid/content/Context;

    const-string v2, "com.three.minit"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.three.minit_preferences"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "minit_sysui_statusbar_show_ampm"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowAmPm:Z

    const-string v2, "minit_sysui_statusbar_ampm_size"

    const-string v3, "0.8"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mAmPmSize:F

    const-string v2, "minit_sysui_header_ampm_size"

    const-string v3, "0.7"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mHeaderAmPmSize:F

    const-string v2, "minit_sysui_statusbar_show_time"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowClock:Z

    const-string v2, "minit_sysui_statusbar_show_date"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowDate:Z

    const-string v2, "minit_sysui_statusbar_show_day"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowDay:Z

    const-string v2, "minit_sysui_statusbar_date_uppercase"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseUppercase:Z

    const-string v2, "minit_sysui_statusbar_center_clock"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mCenterClock:Z

    const-string v2, "minit_sysui_remove_ongoing"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideOnGoing:Z

    const-string v2, "minit_sysui_remove_ongoing_items"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideOnGoingItems:Z

    const-string v2, "minit_sysui_remove_no_notifications"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideNoNotification:Z

    const-string v2, "minit_sysui_toggle_mod"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseToggleMod:Z

    const-string v2, "minit_sysui_full_battery_notification"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mDisableFullBatterySounds:Z

    const-string v2, "minit_phone_increasing_ringtone"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mDisableIncreasingRingtone:Z

    const-string v2, "minit_sysui_low_battey_warnings"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mDisableLowBatteryWarnings:Z

    const-string v2, "minit_sysui_usb_connection_sounds"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mDisableUsbSounds:Z

    const-string v2, "minit_sysui_statusbar_hide_alarm_icon"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideAlarmIcon:Z

    const-string v2, "minit_sysui_statusbar_bluetooth_icon"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideBluetoothIcon:Z

    const-string v2, "minit_sysui_remove_brightness_slider"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideBrightnessSlider:Z

    const-string v2, "minit_sysui_hide_carrier_text"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideCarrierText:Z

    const-string v2, "minit_sysui_show_next_alarm"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowNextAlarm:Z

    const-string v2, "minit_sysui_statusbar_show_lock"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mStatusbarLockButton:Z

    const-string v2, "minit_sysui_statusbar_use_any_color_battery"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseColorBattery:Z

    const-string v2, "minit_sysui_statusbar_hide_vibrate"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideVibrateIcon:Z

    const-string v2, "minit_sysui_use_custom_carrier_text"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseCustomCarrierText:Z

    const-string v2, "minit_sysui_center_carrier"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mCenterCarrier:Z

    const-string v2, "minit_sysui_usb_turns_on_screen"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUsbTurnsOnScreen:Z

    const-string v2, "minit_first_run"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mFirstRun:Z

    const-string v2, "minit_sysui_toggle_text"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggleText:Z

    const-string v2, "minit_sysui_toggle_idicators"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggleIdicators:Z

    const-string v2, "minit_sysui_dropdown_size"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mSetDropDownClockSize:Z

    const-string v2, "minit_sysui_navigation_bar"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mNavigationBar:Z

    const-string v2, "minit_sysui_hide_battery"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mHideBattery:Z

    const-string v2, "minit_sysui_toggle_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mSixToggles:Z

    const-string v2, "minit_stock_data_icons"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mStockDataIcons:Z

    const-string v2, "minit_show_wifi_icons"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowWifiArrows:Z

    const-string v2, "minit_show_data_icons"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowDataArrows:Z

    const-string v2, "append_ampm_space"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mAppendAmPmSpace:Z

    const-string v2, "use_statusbar_image"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseStatusbarImage:Z

    const-string v2, "use_dropdown_image"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseDropdownImage:Z

    const-string v2, "use_toggle_image"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseQuicksettingImage:Z

    const-string v2, "show_header_ampm"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mShowHeaderAmPm:Z

    const-string v2, "use_small_nav_bar"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseSmallNavigationBar:Z

    const-string v2, "minit_always_transparent"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mAlwaysTransparent:Z

    const-string v2, "use_clear_button_bg_image"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseClearButtonImage:Z

    const-string v2, "date_launches_app"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mDateClickLaunchesApp:Z

    const-string v2, "use_title_backgorund_image"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseNotificationTitleBgImage:Z

    const-string v2, "minit_sysui_statusbar_battery_color"

    const v3, -0x7433eb

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryColor:I

    const-string v2, "minit_sysui_statusbar_battery_text_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryTextColor:I

    const-string v2, "minit_sysui_statusbar_battery_type"

    const-string v3, "5"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryType:I

    const-string v2, "minit_sysui_statusbar_clock_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mClockColor:I

    const-string v2, "minit_sysui_statusbar_date_style"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mDateStyle:I

    const-string v2, "minit_sysui_dragbar_color"

    const v3, -0xcc4a1b

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mDragBarColor:I

    const-string v2, "minit_sysui_statusbar_carrier_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mNextAlarmAndCarrierColor:I

    const-string v2, "minit_sysui_statusbar_dropdown_color"

    const/high16 v3, -0x100

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mNotificationColor:I

    const-string v2, "minit_sysui_addon_button"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mPanelButton:I

    const-string v2, "minit_sysui_statusbar_addons_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mPanelButtonColor:I

    const-string v2, "minit_sysui_statusbar_statusbar_color"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mStatusbarColor:I

    const-string v2, "minit_sysui_statusbar_toggles_color"

    const v3, -0x4d0700

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggleColor:I

    const-string v2, "minit_sysui_statusbar_toggles_off_color"

    const v3, -0x89705e

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggleOffColor:I

    const-string v2, "minit_sysui_statusbar_toggles_dim_color"

    const v3, 0x30768fa2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggleDimColor:I

    const-string v2, "toggles_indicator_color"

    const v3, -0x4d0700

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggglesIndcatorColor:I

    const-string v2, "toggles_indicator_off_color"

    const v3, -0x89705e

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggglesIndcatorOffColor:I

    const-string v2, "toggles_indicator_dim_color"

    const v3, 0x30768fa2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggglesIndcatorDimColor:I

    const-string v2, "minit_sysui_statusbar_statusbar_icons_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mStatusbarIconsColor:I

    const-string v2, "minit_signal_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mSignalColor:I

    const-string v2, "minit_sysui_statusbar_header_color"

    const/high16 v3, -0x100

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mPanelHeaderColor:I

    const-string v2, "minit_sysui_toggle_button_bg_color"

    const v3, -0xeed9cf

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggleButtonBgColor:I

    const-string v2, "minit_sysui_toggle_text_color"

    const v3, -0x614d3d

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggleTextColor:I

    const-string v2, "minit_sysui_clock_size"

    const/16 v3, 0x12

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mClockSize:I

    const-string v2, "minit_sysui_brightness_text_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mBrightnessTextColor:I

    const-string v2, "minit_sysui_battery_mid_color"

    const/16 v3, -0x3400

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryMidColor:I

    const-string v2, "minit_sysui_battery_low_color"

    const/high16 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryLowColor:I

    const-string v2, "minit_sysui_mid_batt_value"

    const/16 v3, 0x32

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryMidValue:I

    const-string v2, "minit_sysui_low_batt_value"

    const/16 v3, 0xf

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryLowValue:I

    const-string v2, "minit_sysui_set_custom_carrier_text"

    const-string v3, "By Gary Harrington"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/MinitSettings;->mCustomCarrierText:Ljava/lang/String;

    const-string v2, "minit_sysui_dropdown_clock_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mDropDownClockColor:I

    const-string v2, "minit_sysui_dropdown_date_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mDropDownDateColor:I

    const-string v2, "minit_sysui_lte_image"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mLTEImage:I

    const-string v2, "minit_ongoing_title_color"

    const v3, -0x523e2a

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mOnGoingTitleColor:I

    const-string v2, "minit_latest_items_title_color"

    const v3, -0x523e2a

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mLatestItemsTitleColor:I

    const-string v2, "minit_nonotification_title_color"

    const v3, -0x523e2a

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mNoNotificationsTitleTextColor:I

    const-string v2, "minit_clear_text_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mClearButtonTextColor:I

    const-string v2, "minit_nonotify_bg_color"

    const v3, -0xcfc4bd

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mNoNotifyBgColor:I

    const-string v2, "minit_ongoing_bg_color"

    const v3, -0xcfc4bd

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mOnGoingBgColor:I

    const-string v2, "minit_ongoingitems_bg_color"

    const v3, -0xcfc4bd

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mOnGoingItemsBgColor:I

    const-string v2, "header_clock_size"

    const/16 v3, 0x20

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mHeaderClockSize:I

    const-string v2, "nav_button_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mNavigationButtonColor:I

    const-string v2, "nav_bar_color"

    const/high16 v3, -0x100

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mNavigationBarColor:I

    const-string v2, "clear_button_bg_color"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mClearButtonBackgroundColor:I

    const-string v2, "drag_bar_bg_color"

    const/high16 v3, -0x100

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mDragbarBackgroundColor:I

    const-string v2, "latest_items_bg_color"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mLatestItemsBackgroundColor:I

    const-string v2, "ongoing_items_bg_color"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mOngoingItemsBackgroundColor:I

    const-string v2, "battery_text_size"

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryTextSize:I

    const-string v2, "signal_strength_color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mSignalStrengthColor:I

    const-string v2, "clock_location"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/MinitSettings;->mClockLocation:I

    const-string v2, "statusbar_image_path"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/MinitSettings;->mStatusbarImage:Ljava/lang/String;

    const-string v2, "dropdown_image_path"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/MinitSettings;->mDropdownImage:Ljava/lang/String;

    const-string v2, "toggles_bg_image"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/MinitSettings;->mQuicksettingImage:Ljava/lang/String;

    const-string v2, "clear_button_bg_image"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/MinitSettings;->mClearButtonImage:Ljava/lang/String;

    const-string v2, "acitve_toggle_string"

    sget-object v3, Lcom/android/systemui/statusbar/MinitSettings;->mDefaultActiveToggleString:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/MinitSettings;->mActiveToggles:Ljava/lang/String;

    const-string v2, "date_time_intent"

    const-string v3, "com.three.minit"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/MinitSettings;->mDateTimeIntent:Ljava/lang/String;

    const-string v2, "header_addon_intent"

    const-string v3, "com.three.minit"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/MinitSettings;->mAddOnAppLaunchIntent:Ljava/lang/String;

    const-string v2, "title_bacground_image"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/MinitSettings;->mNoNotificationsImage:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/statusbar/MinitSettings;->notify_settings_changed(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isConnected()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v5, Lcom/android/systemui/statusbar/MinitSettings;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3
.end method

.method private static notify_settings_changed(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "three.minit.NOTIFY_SYSUI_SETTINGS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static set_version(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "minit_framework_version"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
