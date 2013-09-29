.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.super Landroid/widget/FrameLayout;
.source "QuickSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;
    }
.end annotation


# static fields
.field private static final DB_LIST_UPDATE:Ljava/lang/String; = "notification_panel_active_app_list"


# instance fields
.field final TW_TAG:Ljava/lang/String;

.field isExist:[Z

.field isPhone:Z

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCnt:I

.field private mButtonNumLandscape:I

.field private mButtonNumPortrait:I

.field private mCellGap:F

.field mContentAnim:Landroid/animation/AnimatorSet;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurButtonHeight:F

.field private mCurButtonNum:I

.field mDefaultDisplay:Landroid/view/Display;

.field private mDisplayButtonCnt:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

.field public mPosition:I

.field mQBtnLocaleChange:[Ljava/lang/reflect/Method;

.field mQBtnSizeChange:[Ljava/lang/reflect/Method;

.field mQuickSettingButton:[Landroid/view/View;

.field private mSingleLine:Z

.field mlp:[Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "STATUSBAR-QuickSettingPanel"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->TW_TAG:Ljava/lang/String;

    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/MinitSettings;->get_settings(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    return-void
.end method

.method private LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "main list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "quickPanelActiveList.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    return v0
.end method

.method private makeArrayQuickSettingButtonToOneString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    const-string v3, "not"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeDividerVisible(II)V
    .locals 5

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v3, v3, p1

    const v4, 0x7f0900ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    if-eqz v3, :cond_2

    if-nez p2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v3, p2, v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private refreshView()V
    .locals 15

    const/4 v14, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v7, 0x0

    iput v14, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->removeAllViewsInLayout()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "minit_notification_panel_active_app_list"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/systemui/statusbar/MinitSettings;->mDefaultActiveToggleString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "minit_notification_panel_active_app_list"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    array-length v9, v0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v9, v9, [Landroid/widget/FrameLayout$LayoutParams;

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:[Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v1, v9, [Ljava/lang/Class;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v9, v9, [Landroid/view/View;

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v2, v9, [Ljava/lang/reflect/Constructor;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v9, v9, [Ljava/lang/reflect/Method;

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v9, v9, [Ljava/lang/reflect/Method;

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v9, :cond_2

    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v9, v10

    div-int/lit8 v3, v9, 0x2

    :goto_2
    const/4 v6, 0x0

    :goto_3
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v6, v9, :cond_3

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.android.systemui.statusbar.policy.quicksetting."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "QuickSettingButton"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v1, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_1

    :try_start_1
    aget-object v9, v1, v6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    aput-object v9, v2, v6

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v9, v2, v6

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    aput-object v13, v11, v12

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    aput-object v9, v10, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v9, v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setFocusable(Z)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v9, v7, v9

    int-to-float v9, v9

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v3

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v9, v7, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:F

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v9, v9, v6

    invoke-virtual {p0, v9, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    add-int/lit8 v7, v7, 0x1

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    aget-object v10, v1, v6

    const-string v11, "localeChanged"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    aget-object v10, v1, v6

    const-string v11, "checkTextLength"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    aput-object v10, v9, v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_1
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    const-string v9, ";"

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0065

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v9, v10

    div-int/lit8 v3, v9, 0x2

    goto/16 :goto_2

    :catch_0
    move-exception v5

    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ClassNotFoundException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aput-boolean v14, v9, v6

    goto/16 :goto_4

    :catch_1
    move-exception v4

    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "NoSuchMethodException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v4

    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SecurityException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_3
    move-exception v4

    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "InstantiationException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_4
    move-exception v4

    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "IllegalAccessException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_5
    move-exception v4

    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "IllegalArgumentException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_6
    move-exception v4

    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "InvocationTargetException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    return-void
.end method

.method private setViewWidth()I
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_4

    move v2, v4

    :goto_2
    if-eq v3, v2, :cond_0

    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PD:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    if-eq v4, v5, :cond_0

    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    :cond_0
    :goto_3
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    if-le v4, v5, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    :cond_1
    int-to-float v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0065

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    goto/16 :goto_0

    :cond_3
    move v3, v5

    goto/16 :goto_1

    :cond_4
    move v2, v5

    goto/16 :goto_2

    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    if-eq v4, v5, :cond_0

    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    goto :goto_3
.end method

.method private update()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sget-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mSixToggles:Z

    if-eqz v2, :cond_0

    const v1, 0x6

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    const v1, 0x7f0e0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:F

    return-void
.end method


# virtual methods
.method protected disableQuickSettingButton([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_b

    aget-object v1, p1, v0

    const-string v2, "MobileData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkSupported:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    :cond_0
    aget-object v1, p1, v0

    const-string v2, "AllShareCast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    aget-object v1, p1, v0

    const-string v2, "DormantMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_2
    aget-object v1, p1, v0

    const-string v2, "MultiWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    :cond_3
    aget-object v1, p1, v0

    const-string v2, "WiFiHotspot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_4
    aget-object v1, p1, v0

    const-string v2, "SmartStay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_5
    aget-object v1, p1, v0

    const-string v2, "SmartScroll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_6
    aget-object v1, p1, v0

    const-string v2, "SmartPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_7
    aget-object v1, p1, v0

    const-string v2, "Nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_8
    aget-object v1, p1, v0

    const-string v2, "SBeam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_9
    aget-object v1, p1, v0

    const-string v2, "AirView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    const v9, 0x7f0d0009

    const/4 v6, 0x1

    const/4 v10, -0x2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v0, 0x0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_3

    move v3, v6

    :goto_0
    if-eqz v3, :cond_4

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v6, :cond_2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    :cond_2
    :goto_1
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x2

    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v6, :cond_6

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_6

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    rem-int v6, v2, v5

    int-to-float v6, v6

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v1

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    div-int v6, v2, v5

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:F

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0065

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v7, v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x2

    goto :goto_2

    :cond_6
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "three.minit.NOTIFY_SYSUI_SETTINGS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 10

    const/4 v9, -0x2

    const-string v5, "STATUSBAR-QuickSettingPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSingleLine:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-eqz v5, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v4

    const/4 v0, 0x0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    :goto_0
    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v5, v5, v1

    if-eqz v5, :cond_2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v2

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v0

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0065

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v5, v5, v1

    if-eqz v5, :cond_5

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v5, v2, v5

    int-to-float v5, v5

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v0

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v5, v2, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:F

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method updateResources()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    return-void
.end method
