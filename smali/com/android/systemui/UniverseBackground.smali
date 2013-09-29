.class public Lcom/android/systemui/UniverseBackground;
.super Landroid/widget/FrameLayout;
.source "UniverseBackground.java"


# static fields
.field static final CHATTY:Z = false

.field static final SPEW:Z = false

.field static final STATE_CLOSED:I = 0x0

.field static final STATE_OPEN:I = 0x2

.field static final STATE_OPENING:I = 0x1

.field static final TAG:Ljava/lang/String; = "UniverseBackground"


# instance fields
.field private mAnimAccel:F

.field private mAnimLastTimeNanos:J

.field private mAnimVel:F

.field private mAnimY:F

.field private mAnimating:Z

.field private mAnimatingReveal:Z

.field final mAnimationCallback:Ljava/lang/Runnable;

.field private mAverageX:F

.field private mAverageY:F

.field final mBottomAnchor:Landroid/view/View;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mClosing:Z

.field private mCollapseAccelPx:F

.field private mCollapseMinDisplayFraction:F

.field final mContent:Landroid/view/View;

.field private mDragStartX:F

.field private mDragStartY:F

.field private mExpandAccelPx:F

.field private mExpandMinDisplayFraction:F

.field private mExpanded:Z

.field private mExpandedVisible:Z

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field private mPositionTmp:[I

.field private mSelfCollapseVelocityPx:F

.field private mSelfExpandVelocityPx:F

.field final mSession:Landroid/view/IWindowSession;

.field private mState:I

.field private final mTmpFloats:[F

.field private mTracking:Z

.field private mUniverseTransform:Landroid/view/animation/Transformation;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYDelta:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/UniverseBackground$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/UniverseBackground$1;-><init>(Lcom/android/systemui/UniverseBackground;)V

    iput-object v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimationCallback:Ljava/lang/Runnable;

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mState:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/UniverseBackground;->mPositionTmp:[I

    iput-boolean v1, p0, Lcom/android/systemui/UniverseBackground;->mAnimatingReveal:Z

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mYDelta:I

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/UniverseBackground;->mUniverseTransform:Landroid/view/animation/Transformation;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/UniverseBackground;->mTmpFloats:[F

    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/android/systemui/UniverseBackground;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/WindowManagerGlobal;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/UniverseBackground;->mSession:Landroid/view/IWindowSession;

    const v0, 0x7f040048

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/UniverseBackground;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/UniverseBackground;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mContent:Landroid/view/View;

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/UniverseBackground$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/UniverseBackground$2;-><init>(Lcom/android/systemui/UniverseBackground;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mContent:Landroid/view/View;

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/UniverseBackground;->mBottomAnchor:Landroid/view/View;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/UniverseBackground;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->loadDimens()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/UniverseBackground;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method private computeAveragePos(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-float v4, v1

    div-float v4, v2, v4

    iput v4, p0, Lcom/android/systemui/UniverseBackground;->mAverageX:F

    int-to-float v4, v1

    div-float v4, v3, v4

    iput v4, p0, Lcom/android/systemui/UniverseBackground;->mAverageY:F

    return-void
.end method

.method private getExpandedViewMaxHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mBottomAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method private loadDimens()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mSelfExpandVelocityPx:F

    const v1, 0x7f0e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mSelfCollapseVelocityPx:F

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mFlingExpandMinVelocityPx:F

    const v1, 0x7f0e0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mFlingCollapseMinVelocityPx:F

    const v1, 0x7f0e0027

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mCollapseMinDisplayFraction:F

    const v1, 0x7f0e0028

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mExpandMinDisplayFraction:F

    const v1, 0x7f0e0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mExpandAccelPx:F

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mCollapseAccelPx:F

    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/UniverseBackground;->mFlingGestureMaxXVelocityPx:F

    return-void
.end method

.method private sendUniverseTransform()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mUniverseTransform:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/UniverseBackground;->mTmpFloats:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/UniverseBackground;->mUniverseTransform:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/UniverseBackground;->mTmpFloats:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/UniverseBackground;->mTmpFloats:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/systemui/UniverseBackground;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/systemui/UniverseBackground;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/systemui/UniverseBackground;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/systemui/UniverseBackground;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-interface/range {v0 .. v8}, Landroid/view/IWindowSession;->setUniverseTransform(Landroid/os/IBinder;FFFFFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private updateUniverseScale()V
    .locals 6

    iget v3, p0, Lcom/android/systemui/UniverseBackground;->mYDelta:I

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/UniverseBackground;->mYDelta:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    int-to-float v4, v0

    div-float v1, v3, v4

    iget-object v3, p0, Lcom/android/systemui/UniverseBackground;->mUniverseTransform:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    int-to-float v5, v0

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->sendUniverseTransform()V

    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/UniverseBackground;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/UniverseBackground;->mUniverseTransform:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->sendUniverseTransform()V

    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/systemui/UniverseBackground;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public animateCollapse()V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/systemui/UniverseBackground;->animateCollapse(F)V

    return-void
.end method

.method public animateCollapse(F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/UniverseBackground;->mState:I

    iget-boolean v1, p0, Lcom/android/systemui/UniverseBackground;->mExpandedVisible:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/UniverseBackground;->mAnimating:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/UniverseBackground;->mAnimY:F

    float-to-int v0, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/UniverseBackground;->mExpanded:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/UniverseBackground;->prepareTracking(IZ)V

    iget v1, p0, Lcom/android/systemui/UniverseBackground;->mSelfCollapseVelocityPx:F

    neg-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/UniverseBackground;->performFling(IFZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->getExpandedViewMaxHeight()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method public consumeEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v6, p0, Lcom/android/systemui/UniverseBackground;->mState:I

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/UniverseBackground;->computeAveragePos(Landroid/view/MotionEvent;)V

    iget v6, p0, Lcom/android/systemui/UniverseBackground;->mAverageX:F

    iput v6, p0, Lcom/android/systemui/UniverseBackground;->mDragStartX:F

    iget v6, p0, Lcom/android/systemui/UniverseBackground;->mAverageY:F

    iput v6, p0, Lcom/android/systemui/UniverseBackground;->mDragStartY:F

    iput v5, p0, Lcom/android/systemui/UniverseBackground;->mYDelta:I

    iget-object v6, p0, Lcom/android/systemui/UniverseBackground;->mUniverseTransform:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->sendUniverseTransform()V

    invoke-virtual {p0, v5}, Lcom/android/systemui/UniverseBackground;->setVisibility(I)V

    iput v4, p0, Lcom/android/systemui/UniverseBackground;->mState:I

    iget v5, p0, Lcom/android/systemui/UniverseBackground;->mDragStartY:F

    float-to-int v5, v5

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/UniverseBackground;->prepareTracking(IZ)V

    iget-object v5, p0, Lcom/android/systemui/UniverseBackground;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    invoke-direct {p0, p1}, Lcom/android/systemui/UniverseBackground;->trackMovement(Landroid/view/MotionEvent;)V

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/android/systemui/UniverseBackground;->mState:I

    if-ne v6, v4, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eq v6, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/UniverseBackground;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/UniverseBackground;->computeAveragePos(Landroid/view/MotionEvent;)V

    iget-object v6, p0, Lcom/android/systemui/UniverseBackground;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    cmpg-float v6, v3, v8

    if-gez v6, :cond_6

    move v0, v4

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/UniverseBackground;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    cmpg-float v6, v2, v8

    if-gez v6, :cond_3

    neg-float v2, v2

    :cond_3
    iget v6, p0, Lcom/android/systemui/UniverseBackground;->mFlingGestureMaxXVelocityPx:F

    cmpl-float v6, v2, v6

    if-lez v6, :cond_4

    iget v2, p0, Lcom/android/systemui/UniverseBackground;->mFlingGestureMaxXVelocityPx:F

    :cond_4
    float-to-double v6, v3

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    if-eqz v0, :cond_5

    neg-float v1, v1

    :cond_5
    iget v6, p0, Lcom/android/systemui/UniverseBackground;->mAverageY:F

    float-to-int v6, v6

    invoke-virtual {p0, v6, v1, v5}, Lcom/android/systemui/UniverseBackground;->performFling(IFZ)V

    const/4 v5, 0x2

    iput v5, p0, Lcom/android/systemui/UniverseBackground;->mState:I

    goto :goto_0

    :cond_6
    move v0, v5

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/UniverseBackground;->computeAveragePos(Landroid/view/MotionEvent;)V

    iget v5, p0, Lcom/android/systemui/UniverseBackground;->mAverageY:F

    iget v6, p0, Lcom/android/systemui/UniverseBackground;->mDragStartY:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/UniverseBackground;->mYDelta:I

    iget v5, p0, Lcom/android/systemui/UniverseBackground;->mYDelta:I

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->getExpandedViewMaxHeight()I

    move-result v6

    if-le v5, v6, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->getExpandedViewMaxHeight()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/UniverseBackground;->mYDelta:I

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->updateUniverseScale()V

    goto :goto_0

    :cond_9
    move v4, v5

    goto :goto_0
.end method

.method doAnimation(J)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/UniverseBackground;->incrementAnim(J)V

    iget v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimY:F

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->getExpandedViewMaxHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/UniverseBackground;->mClosing:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/UniverseBackground;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->getExpandedViewMaxHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/UniverseBackground;->mYDelta:I

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->updateUniverseScale()V

    iput-boolean v3, p0, Lcom/android/systemui/UniverseBackground;->mExpanded:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/UniverseBackground;->mState:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimY:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/UniverseBackground;->mClosing:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/UniverseBackground;->mAnimating:Z

    iput v2, p0, Lcom/android/systemui/UniverseBackground;->mYDelta:I

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->updateUniverseScale()V

    iput-boolean v2, p0, Lcom/android/systemui/UniverseBackground;->mExpanded:Z

    iput v2, p0, Lcom/android/systemui/UniverseBackground;->mState:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimY:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/UniverseBackground;->mYDelta:I

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->updateUniverseScale()V

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/UniverseBackground;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e9

    const v4, 0x800120

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    const-string v1, "UniverseBackground"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method incrementAnim(J)V
    .locals 10

    iget-wide v6, p0, Lcom/android/systemui/UniverseBackground;->mAnimLastTimeNanos:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-float v6, v1

    const v7, 0x3089705f

    mul-float v3, v6, v7

    iget v5, p0, Lcom/android/systemui/UniverseBackground;->mAnimY:F

    iget v4, p0, Lcom/android/systemui/UniverseBackground;->mAnimVel:F

    iget v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimAccel:F

    mul-float v6, v4, v3

    add-float/2addr v6, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/UniverseBackground;->mAnimY:F

    mul-float v6, v0, v3

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/systemui/UniverseBackground;->mAnimVel:F

    iput-wide p1, p0, Lcom/android/systemui/UniverseBackground;->mAnimLastTimeNanos:J

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->loadDimens()V

    return-void
.end method

.method performFling(IFZ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/high16 v6, 0x3f80

    const/4 v1, 0x1

    const/4 v5, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimatingReveal:Z

    int-to-float v2, p1

    iput v2, p0, Lcom/android/systemui/UniverseBackground;->mAnimY:F

    iput p2, p0, Lcom/android/systemui/UniverseBackground;->mAnimVel:F

    iget-boolean v2, p0, Lcom/android/systemui/UniverseBackground;->mExpanded:Z

    if-eqz v2, :cond_4

    if-nez p3, :cond_3

    iget v2, p0, Lcom/android/systemui/UniverseBackground;->mFlingCollapseMinVelocityPx:F

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    int-to-float v2, p1

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->getExpandedViewMaxHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/UniverseBackground;->mCollapseMinDisplayFraction:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/UniverseBackground;->mFlingExpandMinVelocityPx:F

    neg-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/android/systemui/UniverseBackground;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/UniverseBackground;->mAnimAccel:F

    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    iput v5, p0, Lcom/android/systemui/UniverseBackground;->mAnimVel:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->resetLastAnimTime()V

    iput-boolean v1, p0, Lcom/android/systemui/UniverseBackground;->mAnimating:Z

    iget v2, p0, Lcom/android/systemui/UniverseBackground;->mAnimAccel:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/UniverseBackground;->mClosing:Z

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/UniverseBackground;->mAnimationCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/UniverseBackground;->mAnimationCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->stopTracking()V

    return-void

    :cond_3
    iget v2, p0, Lcom/android/systemui/UniverseBackground;->mCollapseAccelPx:F

    neg-float v2, v2

    iput v2, p0, Lcom/android/systemui/UniverseBackground;->mAnimAccel:F

    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    iput v5, p0, Lcom/android/systemui/UniverseBackground;->mAnimVel:F

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    iget v2, p0, Lcom/android/systemui/UniverseBackground;->mFlingExpandMinVelocityPx:F

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    int-to-float v2, p1

    invoke-direct {p0}, Lcom/android/systemui/UniverseBackground;->getExpandedViewMaxHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/UniverseBackground;->mExpandMinDisplayFraction:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/systemui/UniverseBackground;->mFlingCollapseMinVelocityPx:F

    neg-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_6

    :cond_5
    iget v2, p0, Lcom/android/systemui/UniverseBackground;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/UniverseBackground;->mAnimAccel:F

    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    iput v5, p0, Lcom/android/systemui/UniverseBackground;->mAnimVel:F

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/android/systemui/UniverseBackground;->mCollapseAccelPx:F

    neg-float v2, v2

    iput v2, p0, Lcom/android/systemui/UniverseBackground;->mAnimAccel:F

    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    iput v5, p0, Lcom/android/systemui/UniverseBackground;->mAnimVel:F

    goto :goto_0
.end method

.method prepareTracking(IZ)V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/UniverseBackground;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/UniverseBackground;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/UniverseBackground;->mExpandAccelPx:F

    iput v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimAccel:F

    iget v0, p0, Lcom/android/systemui/UniverseBackground;->mFlingExpandMinVelocityPx:F

    iput v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimVel:F

    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimY:F

    iput-boolean v3, p0, Lcom/android/systemui/UniverseBackground;->mAnimating:Z

    iput-boolean v3, p0, Lcom/android/systemui/UniverseBackground;->mAnimatingReveal:Z

    invoke-virtual {p0}, Lcom/android/systemui/UniverseBackground;->resetLastAnimTime()V

    iput-boolean v3, p0, Lcom/android/systemui/UniverseBackground;->mExpandedVisible:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimating:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/UniverseBackground;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method resetLastAnimTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/UniverseBackground;->mAnimLastTimeNanos:J

    return-void
.end method

.method stopTracking()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/UniverseBackground;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/UniverseBackground;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/UniverseBackground;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method
