.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;
    }
.end annotation


# static fields
.field static final ANIMATE_HIDE_TRANSITION:Z = false

.field static final DEBUG:Z = false

.field static final MSG_CHECK_INVALID_LAYOUT:I = 0x21ee

.field static final NAVBAR_ALWAYS_AT_RIGHT:Z = true

.field static final SLIPPERY_WHEN_DISABLED:Z = true

.field static final TAG:Ljava/lang/String; = "PhoneStatusBar/NavigationBarView"

.field static final WORKAROUND_INVALID_LAYOUT:Z = true


# instance fields
.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mBarSize:I

.field mCurrentView:Landroid/view/View;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field mHidden:Z

.field mLightsOutListener:Landroid/view/View$OnTouchListener;

.field mLowProfile:Z

.field mNavigationIconHints:I

.field mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field mShowMenu:Z

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f020165

    const v3, 0x7f020164

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarSize:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    new-instance v1, Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DelegateViewHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "(unknown)"

    goto :goto_0

    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "VISIBLE"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "INVISIBLE"

    goto :goto_0

    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const-string v7, "NavigationBarView {"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      this: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Point;->x:I

    if-gt v7, v8, :cond_0

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    if-le v7, v8, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_2

    const-string v7, " OFFSCREEN!"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      disabled=0x%08x vertical=%s hidden=%s low=%s menu=%s"

    const/4 v7, 0x5

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v10, 0x1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v7, :cond_3

    const-string v7, "true"

    :goto_2
    aput-object v7, v9, v10

    const/4 v10, 0x2

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    if-eqz v7, :cond_4

    const-string v7, "true"

    :goto_3
    aput-object v7, v9, v10

    const/4 v10, 0x3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    if-eqz v7, :cond_5

    const-string v7, "true"

    :goto_4
    aput-object v7, v9, v10

    const/4 v10, 0x4

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v7, :cond_6

    const-string v7, "true"

    :goto_5
    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      back: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      home: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      rcnt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      menu: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    }"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2
    const-string v7, ""

    goto/16 :goto_1

    :cond_3
    const-string v7, "false"

    goto/16 :goto_2

    :cond_4
    const-string v7, "false"

    goto/16 :goto_3

    :cond_5
    const-string v7, "false"

    goto/16 :goto_4

    :cond_6
    const-string v7, "false"

    goto/16 :goto_5
.end method

.method public getBackButton()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSearchLight()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyScreenOn(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    const v5, 0x7f090026

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v2, 0x2

    const v3, 0x7f09001d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v3, v0, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowMenuKeyAlways:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMinitValues()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setInitialTouchRegion([Landroid/view/View;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    :cond_0
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public reorient()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowMenuKeyAlways:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDelegateView(Landroid/view/View;)V

    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 11

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v10, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v10, 0x20

    and-int/2addr v10, p1

    if-eqz v10, :cond_2

    move v1, v6

    :goto_1
    const/high16 v10, 0x100

    and-int/2addr v10, p1

    if-eqz v10, :cond_3

    move v2, v6

    :goto_2
    const/high16 v10, 0x40

    and-int/2addr v10, p1

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_4

    move v0, v6

    :goto_3
    const/high16 v10, 0x200

    and-int/2addr v10, p1

    if-eqz v10, :cond_5

    move v3, v6

    :goto_4
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v10, 0x7f09001e

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-nez v5, :cond_7

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_1

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v10

    if-eqz v0, :cond_8

    move v6, v8

    :goto_7
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v10

    if-eqz v1, :cond_9

    move v6, v8

    :goto_8
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowMenuKeyAlways:Z

    if-nez v6, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v6

    if-eqz v2, :cond_a

    :goto_9
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mHideNaviBarSearchButton:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1

    :cond_3
    move v2, v7

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_3

    :cond_5
    move v3, v7

    goto :goto_4

    :cond_6
    move v6, v7

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    goto :goto_6

    :cond_8
    move v6, v7

    goto :goto_7

    :cond_9
    move v6, v7

    goto :goto_8

    :cond_a
    move v8, v7

    goto :goto_9

    :cond_b
    if-eqz v1, :cond_c

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v6

    if-eqz v1, :cond_e

    if-nez v3, :cond_e

    :goto_b
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_e
    move v7, v9

    goto :goto_b
.end method

.method public setHidden(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    const-string v1, "PhoneStatusBar/NavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "HIDING"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " navigation bar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "SHOWING"

    goto :goto_1
.end method

.method public setLowProfile(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    return-void
.end method

.method public setLowProfile(ZZZ)V
    .locals 11

    const-wide/16 v9, 0xfa

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    if-nez p3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    if-ne p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v7, 0x7f09001e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v7, 0x7f090023

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-nez p2, :cond_4

    if-eqz p1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_3

    move v2, v5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    move v2, v6

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-eqz p1, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_8

    const-wide/16 v7, 0x2ee

    :goto_5
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_9

    :goto_6
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_6

    const-wide/16 v9, 0x2ee

    :cond_6
    invoke-virtual {v2, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x4000

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_a

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    goto :goto_4

    :cond_8
    move-wide v7, v9

    goto :goto_5

    :cond_9
    move v4, v3

    goto :goto_6

    :cond_a
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/view/View;)V

    goto :goto_7
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 2

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowMenuKeyAlways:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setMinitValues()V
    .locals 5

    const/4 v4, -0x1

    sget v0, Lcom/android/systemui/statusbar/MinitSettings;->mNavigationButtonColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseSmallNavigationBar:Z

    sget v2, Lcom/android/systemui/statusbar/MinitSettings;->mNavigationBarColor:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBackgroundColor(I)V

    return-void
.end method

.method public setMinitValues1()V
    .locals 5

    const/4 v4, -0x1

    sget v0, Lcom/android/systemui/statusbar/MinitSettings;->mNavigationButtonColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseSmallNavigationBar:Z

    if-nez v2, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x30

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    sget v2, Lcom/android/systemui/statusbar/MinitSettings;->mNavigationBarColor:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBackgroundColor(I)V

    return-void

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x26

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setNavigationIconHints(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 4

    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f00

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

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
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method public setSlippery(Z)V
    .locals 5

    const/high16 v4, 0x400

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x4000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method
