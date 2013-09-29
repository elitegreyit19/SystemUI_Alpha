.class public Lcom/android/systemui/statusbar/policy/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BrightnessController"


# instance fields
.field private allowSettingsChanges:Z

.field private mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

.field private mAutomatic:Z

.field private mAutomaticAvailable:Z

.field private mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

.field private mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

.field private mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckboxArea:Landroid/view/View;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mPower:Landroid/os/IPowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSeekBar:Landroid/view/View;

.field private mSlider:Landroid/widget/SeekBar;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private final mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->allowSettingsChanges:Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/systemui/statusbar/policy/BrightnessController$4;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController$4;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    new-instance v11, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    const-string v11, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    invoke-virtual {v5}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    const v11, 0x7f09002c

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mIcon:Landroid/widget/ImageView;

    const v11, 0x7f09002d

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    iget v12, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    iget v13, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticAvailable:Z

    const-string v11, "sensor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    const/4 v11, -0x1

    invoke-virtual {v7, v11}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v6

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    const/4 v11, 0x5

    if-ne v8, v11, :cond_0

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticAvailable:Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v11, :cond_5

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness_mode"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    if-eqz v2, :cond_4

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    :goto_3
    const-string v11, "power"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    :try_start_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    :goto_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    iget v12, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    sub-int v12, v10, v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_brightness_detail"

    const/16 v13, 0x64

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v11, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSplitMax(I)V

    div-int/lit8 v11, v1, 0x14

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSplitValue(I)V

    div-int/lit8 v11, v1, 0x14

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSplitText(I)V

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v11, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    new-instance v11, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    new-instance v11, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v12, "screen_brightness"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v12, "screen_brightness_mode"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v12, "auto_brightness_detail"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const v11, 0x7f09009e

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSeekBar:Landroid/view/View;

    const v11, 0x7f0900a0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const v11, 0x7f09009a

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CompoundButton;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggle:Landroid/widget/CompoundButton;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v11}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mCheckboxArea:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    const-string v12, "enterprise_policy"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    new-instance v12, Lcom/android/systemui/statusbar/policy/BrightnessController$1;

    invoke-direct {v12, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController$1;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightnessEnabledState()V

    :cond_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "edm.intent.action.allow.settings"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v9

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_5
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->hideToggle()V

    goto/16 :goto_3

    :catch_1
    move-exception v3

    iget v10, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->allowSettingsChanges:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/CurrentUserTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/app/enterprise/RestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightnessEnabledState()V

    return-void
.end method

.method private setBrightness(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBrightnessEnabledState()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSeekBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSeekBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mCheckboxArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->allowSettingsChanges:Z

    :cond_0
    return-void
.end method

.method private setMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .locals 6

    const/4 v3, 0x0

    const-string v4, "StatusBar.BrightnessController"

    const-string v5, "brightness controller onChanged() "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMode(I)V

    if-nez p3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    add-int v2, p4, v3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightness(I)V

    if-nez p2, :cond_3

    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessController$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/policy/BrightnessController$2;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v3, :cond_3

    mul-int/lit8 v2, p4, 0x14

    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessController$3;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/policy/BrightnessController$3;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onInit(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0

    return-void
.end method

.method public set_image_color()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->set_auto_text_color()V

    return-void
.end method
