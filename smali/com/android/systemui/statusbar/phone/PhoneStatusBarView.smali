.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_NOTI_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED_NOTI"

.field private static final EXPAND_SETTING_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED_SETTING"

.field private static final SCREEN_ON_TIME:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarView"

.field private static mIndex:I


# instance fields
.field mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mBasePaddingBottom:I

.field private mBasePaddingLeft:I

.field private mBasePaddingRight:I

.field private mBasePaddingTop:I

.field mBlackBGView:Landroid/view/View;

.field private mClearCoverMargin:I

.field mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mFullWidthNotifications:Z

.field private mGap:[I

.field private mIndent1:I

.field private mIndent2:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mScrimColor:I

.field mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mSettingsPanelDragzoneFrac:F

.field mSettingsPanelDragzoneMin:F

.field private mShouldFade:Z

.field mStatusBarContents:Landroid/view/ViewGroup;

.field mTicker:Landroid/view/ViewGroup;

.field private mTickerPaddingBottom:I

.field private mTickerPaddingLeft:I

.field private mTickerPaddingRight:I

.field private mTickerPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndent1:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e005f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndent2:I

    const/16 v4, 0x8

    new-array v4, v4, [I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndent1:I

    aput v5, v4, v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndent2:I

    aput v5, v4, v2

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndent1:I

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v3, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndent1:I

    neg-int v6, v6

    aput v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndent2:I

    neg-int v6, v6

    aput v6, v4, v5

    const/4 v5, 0x6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndent1:I

    neg-int v6, v6

    aput v6, v4, v5

    const/4 v5, 0x7

    aput v3, v4, v5

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGap:[I

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0003

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    const v4, 0x7f0e003b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    const v4, 0x7f0e003a

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_0

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    return-void

    :catch_0
    move-exception v0

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndent1:I

    return v0
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f090066

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f09002a

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->pokeWakelock(I)V

    const-string v2, "PhoneStatusBarView"

    const-string v3, "30S_SCREEN_ON_FOR_ACCESSIBILITY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public hasFullWidthNotifications()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    return v0
.end method

.method public marqueeStatusBar()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndex:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGap:[I

    sget v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndex:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingRight:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGap:[I

    sget v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndex:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const-string v0, "PhoneStatusBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marqueeStatusBar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGap:[I

    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndex:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mClearCover:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    goto :goto_0
.end method

.method public onAllPanelsCollapsed()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisibleSoon()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onFinishInflate()V

    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingTop:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingRight:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingBottom:I

    const v1, 0x7f090053

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlackBGView:Landroid/view/View;

    const v1, 0x7f090063

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isStatusBarVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->IsFlipSettingShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "PhoneStatusBarView"

    const-string v1, "onPanelFullyOpened in EXPAND_SETTING_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED_NOTI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "PhoneStatusBarView"

    const-string v1, "onPanelFullyOpened in EXPAND_NOTI_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPanelPeeked()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isStatusBarVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V
    .locals 18

    invoke-super/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v0, p1

    if-ne v0, v6, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    move/from16 p2, v0

    const v6, 0x3f99999a

    mul-float v6, v6, p2

    const v7, 0x3e4ccccd

    sub-float p2, v6, v7

    const/4 v6, 0x0

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    add-float v5, v6, v7

    const/high16 v2, 0x3f80

    return-void

    :cond_1
    const-wide/high16 v6, 0x3ff0

    const-wide/high16 v8, 0x3fe0

    const-wide/high16 v10, 0x3ff0

    const-wide v12, 0x400921fa00000000L

    const/high16 v14, 0x3f80

    sub-float v14, v14, p2

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    ushr-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    const v8, 0xffffff

    and-int/2addr v7, v8

    or-int v3, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public panelsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v5

    add-float/2addr v3, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getMeasuredWidth()I

    move-result v3

    int-to-float v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    mul-float v0, v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    :cond_3
    sub-float v3, v1, v2

    cmpg-float v3, v3, v0

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
