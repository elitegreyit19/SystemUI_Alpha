.class public Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "WifiQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-WifiQuickSettingButton"

.field private static final WIFI_DIALOG_CANCEL_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

.field private static final WIFI_DIALOG_ENABLING_WIFI:I = 0x1


# instance fields
.field private INFO_TYPE_DPM_WIFI:I

.field private INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

.field private isAirPlaneMode:I

.field private mBlockWifiInFlightMode:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mWifiActivated:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c011d

    const v4, 0x7f0201c5

    const v5, 0x7f0201c4

    const v6, 0x7f0201c3

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->INFO_TYPE_DPM_WIFI:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0071

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    :cond_0
    return-void

    :catch_0
    move-exception v9

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->INFO_TYPE_DPM_WIFI:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

    return v0
.end method

.method private handleStateChanged(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiActivated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v1, :cond_0

    const-string v1, "STATUSBAR-WifiQuickSettingButton"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "STATUSBAR-WifiQuickSettingButton"

    const-string v2, "onClick(): Wifi state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "STATUSBAR-WifiQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->isAirPlaneMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->isAirPlaneMode:I

    if-ne v1, v5, :cond_3

    const-string v1, "STATUSBAR-WifiQuickSettingButton"

    const-string v2, "Block Wifi In Flight Mode"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0c0071

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "show_dialog_once"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    goto/16 :goto_0
.end method

.method public onLongClick()V
    .locals 2

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
