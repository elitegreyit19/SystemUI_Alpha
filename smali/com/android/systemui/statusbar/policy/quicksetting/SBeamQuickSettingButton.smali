.class public Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SBeamQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton$SBeamObserver;
    }
.end annotation


# static fields
.field private static final DB_S_BEAM_ON:Ljava/lang/String; = "sbeam_mode"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SBeam"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSBeamObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton$SBeamObserver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c0130

    const v4, 0x7f0201ac

    const v5, 0x7f0201ab

    const v6, 0x7f0201aa

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton$SBeamObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton$SBeamObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mSBeamObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton$SBeamObserver;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "sbeam_mode"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "sbeam_mode"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mState:Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v9, v7

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "sbeam_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "turn_on"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mSBeamObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton$SBeamObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "sbeam_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mSBeamObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton$SBeamObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onClick(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    const-string v0, "STATUSBAR-SBeam"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "STATUSBAR-SBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeam onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "STATUSBAR-SBeam"

    const-string v1, "onClick(): SBeam state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->setActivateStatus(I)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->setMode(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SBeamSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SBeamQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
