.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "TabletStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_COMPAT_HELP:Z = false

.field private static final FAKE_SPACE_BAR:Z = true

.field private static final HIDE_ICONS_BELOW_SCORE:I = -0xa

.field public static final MSG_CLOSE_COMPAT_MODE_PANEL:I = 0x41b

.field public static final MSG_CLOSE_INPUT_METHODS_PANEL:I = 0x411

.field public static final MSG_CLOSE_NOTIFICATION_PANEL:I = 0x3e9

.field public static final MSG_CLOSE_NOTIFICATION_PEEK:I = 0x3eb

.field public static final MSG_HIDE_CHROME:I = 0x407

.field public static final MSG_OPEN_COMPAT_MODE_PANEL:I = 0x41a

.field public static final MSG_OPEN_INPUT_METHODS_PANEL:I = 0x410

.field public static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field public static final MSG_OPEN_NOTIFICATION_PEEK:I = 0x3ea

.field public static final MSG_SHOW_CHROME:I = 0x406

.field public static final MSG_STOP_TICKER:I = 0x7d0

.field static final NOTIFICATION_PEEK_FADE_DELAY:I = 0xbb8

.field static final NOTIFICATION_PEEK_HOLD_THRESH:I = 0xc8

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field public static final TAG:Ljava/lang/String; = "TabletStatusBar"


# instance fields
.field private lp:Landroid/view/WindowManager$LayoutParams;

.field private mAltBackButtonEnabledForIme:Z

.field mBackButton:Landroid/widget/ImageView;

.field mBarContents:Landroid/view/ViewGroup;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

.field private mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

.field mCompatibilityHelpDialog:Landroid/view/View;

.field mDisabled:I

.field mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

.field mFakeSpaceBar:Landroid/view/View;

.field mFeedbackIconArea:Landroid/view/ViewGroup;

.field mHomeButton:Landroid/view/View;

.field private mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

.field mIconHPadding:I

.field mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

.field mIconSize:I

.field mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

.field private mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mMaxNotificationIcons:I

.field mMenuButton:Landroid/view/View;

.field mMenuNavIconWidth:I

.field mNaturalBarHeight:I

.field mNavIconWidth:I

.field mNavigationArea:Landroid/view/ViewGroup;

.field private mNavigationIconHints:I

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNotificationArea:Landroid/view/View;

.field mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field mNotificationDNDMode:Z

.field mNotificationFlingVelocity:I

.field mNotificationIconArea:Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

.field mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

.field mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

.field mNotificationPeekIndex:I

.field mNotificationPeekKey:Landroid/os/IBinder;

.field mNotificationPeekRow:Landroid/view/ViewGroup;

.field mNotificationPeekScrubLeft:Landroid/animation/LayoutTransition;

.field mNotificationPeekScrubRight:Landroid/animation/LayoutTransition;

.field mNotificationPeekTapDuration:I

.field mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

.field mNotificationTrigger:Landroid/view/View;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field mRecentButton:Landroid/view/View;

.field mShadow:Landroid/view/View;

.field private mShowSearchHoldoff:I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field mSpaceBarKeyEvent:Landroid/view/KeyEvent;

.field mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

.field private mSystemUiVisibility:I

.field mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

.field private sb:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSpaceBarKeyEvent:Landroid/view/KeyEvent;

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchHoldoff:I

    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$6;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$7;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    return-object v0
.end method

.method static synthetic access$1672(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$1676(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hideCompatibilityHelp()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchHoldoff:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method private addStatusBarWindow()V
    .locals 6

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sb:Landroid/view/View;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x800048

    const/4 v5, 0x4

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getStatusBarGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SystemBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sb:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "TabletStatusBar"

    const-string v1, "Added status bar view"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getNotificationPanelHeight()I
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const v3, 0x7f0e006c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private hasTicker(Landroid/app/Notification;)Z
    .locals 1

    iget-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideCompatibilityHelp()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private isImmersive()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isTopActivityImmersive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadNotificationPanel()V
    .locals 13

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isDeviceProvisioned()Z

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v11, v0, v3

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-nez v5, :cond_0

    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showNotificationEvenIfUnprovisioned(Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v3

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v10, v9, v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setNotificationCount(I)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isDeviceProvisioned()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setSettingsEnabled(Z)V

    return-void
.end method

.method private notifyUiVisibilityChanged()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reloadAllNotificationIcons()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method private setNavigationVisibility(I)V
    .locals 8

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x20

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    move v1, v3

    :goto_0
    const/high16 v5, 0x100

    and-int/2addr v5, p1

    if-eqz v5, :cond_1

    move v2, v3

    :goto_1
    const/high16 v5, 0x40

    and-int/2addr v5, p1

    if-eqz v5, :cond_2

    move v0, v3

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    if-eqz v1, :cond_4

    move v5, v6

    :goto_4
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    if-eqz v2, :cond_5

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    const/high16 v6, 0x10

    and-int/2addr v6, p1

    if-eqz v6, :cond_6

    :goto_6
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setScreenLocked(Z)V

    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    move v5, v4

    goto :goto_3

    :cond_4
    move v5, v4

    goto :goto_4

    :cond_5
    move v6, v4

    goto :goto_5

    :cond_6
    move v3, v4

    goto :goto_6
.end method

.method private showCompatibilityHelp()V
    .locals 7

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f040007

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    const v3, 0x7f090015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d8

    const v4, 0x20300

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v1, "CompatibilityModeDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const v1, 0x10301ec

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isImmersive()Z

    move-result v0

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    const-string v1, "TabletStatusBar"

    const-string v2, "Notification has fullScreenIntent and activity is not immersive; sending fullScreenIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected addPanelWindows()V
    .locals 15

    const/4 v14, 0x0

    const/16 v13, 0x55

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v5, -0x3

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v1, 0x7f040035

    invoke-static {v6, v1, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1, v12, v12}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v3, 0x3e9

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f090061

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f090060

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addLabelView(Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0900c5

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addIconView(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->addPhoneSignalIconView(Landroid/widget/ImageView;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiIconView(Landroid/widget/ImageView;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0900cf

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiLabelView(Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f09004e

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addDataTypeIconView(Landroid/widget/ImageView;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0900cc

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v3, 0x7f0900c4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1, v12, v2, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f0e0065

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v2

    const/16 v3, 0x7e8

    const v4, 0x1820300

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "NotificationPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/high16 v1, 0x103

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateSearchPanel()V

    const v1, 0x7f040032

    invoke-static {v6, v1, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setHardKeyboardEnabledChangeListener(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v3, 0x411

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setImeSwitchButton(Lcom/android/systemui/statusbar/tablet/InputMethodButton;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x1820100

    move v1, v11

    move v2, v11

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "InputMethodsPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f100016

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f040030

    invoke-static {v6, v1, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v3, 0x41b

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setTrigger(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xfa

    const/16 v3, 0x7de

    const v4, 0x1820100

    move v2, v11

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "CompatModePanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapsePanels(I)V

    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 6

    const/16 v5, 0x41b

    const/16 v4, 0x411

    const/16 v3, 0x401

    const/16 v2, 0x3fd

    const/16 v1, 0x3e9

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 2

    const/16 v1, 0x3e8

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public animateExpandSettingsPanel()V
    .locals 0

    return-void
.end method

.method public applyEDMPolicy()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isStatusBarHidden()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sb:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const-string v2, "TabletStatusBar"

    const-string v3, "Removed status bar view"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sb:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "TabletStatusBar"

    const-string v3, "Added status bar view"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed Applying policy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearAll()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapsePanels()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected createAndAddWindows()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addStatusBarWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addPanelWindows()V

    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;)V

    return-object v0
.end method

.method public disable(I)V
    .locals 11

    const/high16 v10, 0x2

    const/high16 v9, 0x1

    const/16 v8, 0x3fd

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    xor-int v0, p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v5, 0x80

    and-int/2addr v5, v0

    if-eqz v5, :cond_0

    const/high16 v5, 0x80

    and-int/2addr v5, p1

    if-nez v5, :cond_5

    move v2, v3

    :goto_0
    const-string v6, "TabletStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DISABLE_CLOCK: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_6

    const-string v5, "no"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showClock(Z)V

    :cond_0
    const/high16 v5, 0x10

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    const/high16 v5, 0x10

    and-int/2addr v5, p1

    if-nez v5, :cond_7

    move v2, v3

    :goto_2
    const-string v5, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DISABLE_SYSTEM_INFO: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_8

    const-string v3, "no"

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    if-eqz v2, :cond_9

    move v3, v4

    :goto_4
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    and-int v3, v0, v9

    if-eqz v3, :cond_2

    and-int v3, p1, v9

    if-eqz v3, :cond_2

    const-string v3, "TabletStatusBar"

    const-string v5, "DISABLE_EXPAND: yes"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapsePanels()V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    :cond_2
    and-int v3, v0, v10

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "do_not_disturb"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    and-int v3, p1, v10

    if-eqz v3, :cond_b

    const-string v4, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_a

    const-string v3, " (DND)"

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    :cond_3
    :goto_7
    const/high16 v3, 0x160

    and-int/2addr v3, v0

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setNavigationVisibility(I)V

    const/high16 v3, 0x100

    and-int/2addr v3, p1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    :cond_4
    return-void

    :cond_5
    move v2, v4

    goto/16 :goto_0

    :cond_6
    const-string v5, "yes"

    goto/16 :goto_1

    :cond_7
    move v2, v4

    goto/16 :goto_2

    :cond_8
    const-string v3, "yes"

    goto/16 :goto_3

    :cond_9
    const/16 v3, 0x8

    goto :goto_4

    :cond_a
    const-string v3, ""

    goto :goto_5

    :cond_b
    const-string v4, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_c

    const-string v3, " (DND)"

    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    const-string v3, ""

    goto :goto_8

    :cond_d
    const/high16 v3, 0x8

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    const/high16 v3, 0x8

    and-int/2addr v3, p1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto :goto_7
.end method

.method public doneTicking()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "mDisabled=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mNetworkController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getExpandedViewMaxHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v0

    return v0
.end method

.method protected getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x1

    const/16 v3, 0x7e8

    const v4, 0x1820100

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "RecentsPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x10301ee

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    const/4 v1, -0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x820100

    if-eqz v6, :cond_0

    move v5, v1

    :goto_0
    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x10301ee

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v0

    :cond_0
    const/4 v5, -0x3

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3f333333

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_1
.end method

.method protected getStatusBarGravity()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getStatusBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    return-object v0
.end method

.method protected haltTicker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    return-void
.end method

.method public hideSearchPanel()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected isTopNotification(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 9

    const/4 v8, -0x1

    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    const v7, 0x1050013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v7, 0x7f0e001e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v7, 0x7f0e002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v7, 0x7f0e002d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    if-eq v4, v7, :cond_0

    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    if-eq v3, v7, :cond_1

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    if-ne v1, v7, :cond_2

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    if-eq v2, v7, :cond_3

    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    :cond_3
    const/high16 v7, 0x7f0d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    if-eq v5, v7, :cond_4

    iput v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    :cond_4
    return-void
.end method

.method protected makeStatusBarView()Landroid/view/View;
    .locals 15

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadDimens()V

    const v11, 0x7f04002f

    const/4 v12, 0x0

    invoke-static {v5, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setHandler(Landroid/os/Handler;)V

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v11}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "TabletStatusBar"

    const-string v12, "Tablet device cannot show navigation bar and system bar"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const v11, 0x7f0900a5

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v11, 0x7f0900a8

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    new-instance v12, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;

    invoke-direct {v12, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v11, 0x7f0900c3

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    const v11, 0x7f09005b

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationIconArea:Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

    const v11, 0x7f0900c2

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekTapDuration:I

    const/16 v11, 0x12c

    iput v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    new-instance v11, Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    new-instance v11, Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v12, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    new-instance v11, Lcom/android/systemui/statusbar/DoNotDisturb;

    iget-object v12, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    new-instance v11, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v12, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v12, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    const v11, 0x7f090061

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    new-instance v11, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v12, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v12, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    const v11, 0x7f0900c5

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addIconView(Landroid/widget/ImageView;)V

    new-instance v11, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v12, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v11, 0x7f09005f

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    const v11, 0x7f090022

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    const v11, 0x7f0900a6

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    const v12, 0x7f090021

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    const v12, 0x7f09001f

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    const v12, 0x7f090020

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    iget-object v12, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/animation/LayoutTransition;

    invoke-direct {v7}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v11, 0xfa

    invoke-virtual {v7, v11, v12}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual {v7, v11, v12, v13}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    invoke-virtual {v7, v11, v12, v13}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    new-instance v11, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v7, v11}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    const v11, 0x7f0900bf

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    const v11, 0x7f0900c0

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    iget-object v12, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v11, 0x7f0900c1

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/CompatModeButton;

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    iget-object v12, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setVisibility(I)V

    const v11, 0x7f0900a7

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFakeSpaceBar:Landroid/view/View;

    const v11, 0x7f0900aa

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    new-instance v12, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;

    invoke-direct {v12, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v4, 0x2ee

    const/16 v3, 0x2ee

    const/4 v2, 0x0

    const/16 v1, 0xc8

    const/4 v0, 0x0

    new-instance v10, Landroid/animation/LayoutTransition;

    invoke-direct {v10}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v13, "alpha"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const/4 v11, 0x2

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v11, v12, v13}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-string v13, "alpha"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_1

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const/4 v11, 0x3

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v11, v12, v13}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v11, 0x3

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const v11, 0x7f0900a4

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    new-instance v10, Landroid/animation/LayoutTransition;

    invoke-direct {v10}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v13, "alpha"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_2

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const/4 v11, 0x2

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v11, v12, v13}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-string v13, "alpha"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_3

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const/4 v11, 0x3

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v11, 0x3

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const v11, 0x7f0900a9

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v11, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v11, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v8

    :catch_0
    move-exception v11

    goto/16 :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onBarHeightChanged(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onClickCompatModeButton()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v0, 0x41a

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/16 v0, 0x41b

    goto :goto_0
.end method

.method public onClickInputMethodSwitchButton()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v0, 0x410

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/16 v0, 0x411

    goto :goto_0
.end method

.method public onClickRecentButton()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->toggleRecentApps()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadDimens()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchHoldoff:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateSearchPanel()V

    return-void
.end method

.method public onHardKeyboardEnabledChange(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setHardKeyboardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->remove(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    return-void
.end method

.method public resetNotificationPeekFadeTimer()V
    .locals 4

    const/16 v3, 0x3eb

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setClearable(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setHardKeyboardStatus(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setHardKeyboardStatus(ZZ)V

    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, p1, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setImeWindowStatus(Landroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setImeToken(Landroid/os/IBinder;)V

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    :cond_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAltBackButtonEnabledForIme:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    or-int/lit8 v1, v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->setNavigationIconHints(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFakeSpaceBar:Landroid/view/View;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    and-int/lit8 v1, v1, -0x9

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    goto :goto_3
.end method

.method public setLightsOn(Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    const-string v0, "TabletStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSystemUiVisibility(II)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setNavigationIconHints(I)V
    .locals 4

    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f00

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    const v0, 0x7f02006d

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    const v0, 0x7f02006c

    goto :goto_4
.end method

.method public setSystemUiVisibility(II)V
    .locals 7

    const/16 v4, 0x407

    const/16 v3, 0x406

    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v5, v2

    and-int v6, p1, p2

    or-int v1, v5, v6

    xor-int v0, v1, v2

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    and-int/lit8 v6, p1, 0x1

    if-nez v6, :cond_2

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V

    :cond_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v5, 0x7f090062

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v5, 0x7f0900c4

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public showSearchPanel()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    return-void
.end method

.method protected tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hasTicker(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0xa

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setLightsOn(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->refresh()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "shown_compat_mode_help"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showCompatibilityHelp()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hideCompatibilityHelp()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->closePanel()V

    goto :goto_1
.end method

.method public transparentizeStatusBar(I)V
    .locals 0

    return-void
.end method

.method protected updateExpandedViewPos(I)V
    .locals 0

    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method protected updateNotificationIcons()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadNotificationPanel()V

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00fa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00fb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020018

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v10

    new-instance v17, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v4, "_dnd"

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v10}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    const v3, 0x7f020018

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setPadding(IIII)V

    new-instance v25, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/16 v26, 0x0

    new-instance v3, Lcom/android/internal/statusbar/StatusBarNotification;

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v4, 0x2

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v12

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    add-int/lit8 v18, v18, -0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    add-int/lit8 v18, v18, -0x1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isDeviceProvisioned()Z

    move-result v20

    const/4 v15, 0x0

    :goto_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v3, v0, :cond_5

    if-lt v15, v12, :cond_7

    :cond_5
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v3

    if-ge v15, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v4, v12, v15

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v14

    if-eqz v20, :cond_8

    iget-object v3, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    const/16 v4, -0xa

    if-ge v3, v4, :cond_9

    :cond_8
    iget-object v3, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showNotificationEvenIfUnprovisioned(Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iget-object v3, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_c
    const/4 v15, 0x0

    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v15, v1}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_4
.end method

.method protected updateSearchPanel()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSearchPanel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelView;->setStatusBarView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setDelegateView(Landroid/view/View;)V

    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setOpacity(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
