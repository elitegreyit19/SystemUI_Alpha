.class public Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SmartScrollQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;
    }
.end annotation


# static fields
.field private static final DB_FACE_SMART_SCROLL:Ljava/lang/String; = "face_smart_scroll"

.field private static final DB_SMART_SCROLL_ON:Ljava/lang/String; = "smart_scroll"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SmartScroll"


# instance fields
.field private mButtonStatus:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFaceState:Z

.field private mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

.field private mSmartState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c012e

    const v4, 0x7f0201b9

    const v5, 0x7f0201b8

    const v6, 0x7f0201b6

    const v7, 0x7f0201b7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    iput v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    return p1
.end method

.method private updateStatus()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->setActivateStatus(I)V

    const-string v1, "STATUSBAR-SmartScroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatus to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "face_smart_scroll"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "face_smart_scroll"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public doNext()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->removeEnabledScreenReaderValue()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->updateStatus()V

    return-void
.end method

.method public doPrevious()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "face_smart_scroll"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartScrollObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "face_smart_scroll"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->setActivateStatus(I)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->setActivateStatus(I)V

    goto :goto_2

    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->setActivateStatus(I)V

    goto :goto_2
.end method

.method public onClick(Z)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_0

    const-string v0, "STATUSBAR-SmartScroll"

    const-string v1, "Processing... return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->updateStatus()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c0140

    const v1, 0x7f0c0141

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SmartScrollAdvancedSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
