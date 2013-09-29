.class public Lcom/android/systemui/statusbar/policy/IntruderAlertView;
.super Landroid/widget/LinearLayout;
.source "IntruderAlertView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntruderAlertView"


# instance fields
.field mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mContentHolder:Landroid/view/ViewGroup;

.field private mIntruderRemoteViews:Landroid/widget/RemoteViews;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/IntruderAlertView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public applyIntruderContent(Landroid/widget/RemoteViews;Landroid/view/View$OnClickListener;)V
    .locals 7

    const v5, 0x7f02007e

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mIntruderRemoteViews:Landroid/widget/RemoteViews;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mContentHolder:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mContentHolder:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mContentHolder:Landroid/view/ViewGroup;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v2, "IntruderAlertView"

    const-string v3, "Can\'t find background drawable id=0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0

    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    new-instance v2, Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mContentHolder:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mIntruderRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mIntruderRemoteViews:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->applyIntruderContent(Landroid/widget/RemoteViews;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2

    const-string v0, "IntruderAlertView"

    const-string v1, "User swiped intruder to dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissIntruder()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mContentHolder:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/IntruderAlertView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-void
.end method
