.class public Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AirplaneModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AirplaneModeQuickSettingButton"


# instance fields
.field private mAirplaneMode:Z

.field mAlertDialog:Landroid/app/AlertDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsTurningOff:Z

.field private mIsTurningOn:Z

.field private mIsWaitingForEcmExit:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c0128

    const v4, 0x7f020180

    const v5, 0x7f02017f

    const v6, 0x7f02017e

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOn:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOff:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->getAirplaneMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOff:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOff:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->unsafe(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setAirplaneMode(Z)V

    return-void
.end method

.method private getAirplaneMode()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "STATUSBAR-AirplaneModeQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAirplaneMode() : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private setAirplaneMode(Z)V
    .locals 3

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->unsafe(Z)V

    goto :goto_0
.end method

.method private showConfirmPopup(Z)V
    .locals 7

    const v1, 0x10401ac

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz p1, :cond_1

    const v2, 0x10401a7

    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_0

    const v1, 0x10401aa

    :cond_0
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->statusBarCollapse()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const v2, 0x10401a6

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const v1, 0x10401ab

    :cond_3
    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private unsafe(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$7;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$7;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public init()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkSupported:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseServiceStateForAirplane:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public onClick(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_0

    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    const-string v1, "onClick(): Processing... return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOn:Z

    if-eqz v0, :cond_1

    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    const-string v1, "onClick(): Processing... TurningOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOff:Z

    if-eqz v0, :cond_2

    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    const-string v1, "onClick(): Processing... TurningOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    const-string v1, "onClick(): AirplaneMode state change is not allowed by EDM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setActivateStatus(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->showConfirmPopup(Z)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mJumpToAir1depthForVZW:Z

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WirelessSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.SettingsTabActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
