.class public Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# static fields
.field public static final BRAKES:Z

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static mRawHeight:I

.field private static mRawWidth:I


# instance fields
.field private mAbsPos:[I

.field private mAccel:F

.field private final mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBrakingSpeedPx:F

.field private mClosing:Z

.field private mCollapseAccelPx:F

.field private mCollapseBrakingDistancePx:F

.field private mCollapseMinDisplayFraction:F

.field private mExpandAccelPx:F

.field private mExpandBrakingDistancePx:F

.field private mExpandMinDisplayFraction:F

.field private mExpandedFraction:F

.field private mExpandedHeight:F

.field protected mFinalTouchY:F

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingGestureMaxOutputVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field private mFlingGestureMinDistPx:F

.field private mFullHeight:I

.field private mHandleView:Landroid/view/View;

.field protected mInitialTouchY:F

.field private mJustPeeked:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mRubberbanding:Z

.field private mRubberbandingEnabled:Z

.field private mSelfCollapseVelocityPx:F

.field private mSelfExpandVelocityPx:F

.field private final mStopAnimator:Ljava/lang/Runnable;

.field private mTimeAnimator:Landroid/animation/TimeAnimator;

.field private mTouchOffset:F

.field private mTracking:Z

.field private mVel:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v2, 0x4316

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseBrakingDistancePx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandBrakingDistancePx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PanelView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->animationTick(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelView;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/PanelView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    return p1
.end method

.method private animationTick(J)V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v6}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Landroid/animation/TimeAnimator;

    invoke-direct {v6}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v6, v9}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v6}, Landroid/animation/TimeAnimator;->start()V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v9

    cmpl-float v6, v6, v9

    if-lez v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    neg-float v9, v9

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v6, :cond_3

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v6, v8

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v9

    div-float/2addr v6, v9

    const/high16 v9, 0x3f00

    cmpg-float v6, v6, v9

    if-gez v6, :cond_4

    :goto_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    goto :goto_1

    :cond_4
    move v7, v8

    goto :goto_2

    :cond_5
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_6

    :goto_3
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    goto :goto_1

    :cond_6
    move v7, v8

    goto :goto_3

    :cond_7
    const-wide/16 v8, 0x0

    cmp-long v6, p1, v8

    if-lez v6, :cond_1

    long-to-float v6, p1

    const v8, 0x3a83126f

    mul-float v2, v6, v8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_e

    sget v6, Lcom/android/systemui/statusbar/phone/PanelView;->mRawHeight:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-nez v6, :cond_e

    const/4 v5, 0x1

    :cond_8
    :goto_4
    sget-object v6, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFullHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fh:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Orientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v6, :cond_f

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAccelPx:F

    neg-float v6, v6

    :goto_5
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAccel:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAccel:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    if-eqz v0, :cond_11

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v6, :cond_10

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    neg-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_10

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    neg-float v6, v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    :cond_9
    :goto_6
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    mul-float/2addr v7, v2

    add-float v4, v6, v7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v6, :cond_a

    cmpg-float v6, v4, v3

    if-gez v6, :cond_a

    move v4, v3

    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-virtual {v6, p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_d

    :cond_b
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v6, :cond_c

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v6, :cond_1

    if-eqz v5, :cond_1

    :cond_c
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_1

    :cond_d
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_e
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    sget v6, Lcom/android/systemui/statusbar/phone/PanelView;->mRawWidth:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-nez v6, :cond_8

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_f
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandAccelPx:F

    goto :goto_5

    :cond_10
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v6, :cond_9

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto :goto_6

    :cond_11
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v6, :cond_12

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    neg-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_12

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    neg-float v6, v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto :goto_6

    :cond_12
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v6, :cond_9

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto/16 :goto_6
.end method

.method private calculateWidthAndHeight()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/android/systemui/statusbar/phone/PanelView;->mRawWidth:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/android/systemui/statusbar/phone/PanelView;->mRawHeight:I

    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRawWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/systemui/statusbar/phone/PanelView;->mRawWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRawHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/systemui/statusbar/phone/PanelView;->mRawHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getFullHeight()F
    .locals 3

    const/high16 v2, 0x4000

    const/4 v1, -0x2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    if-gtz v0, :cond_0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->measure(II)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v0, v0

    return v0
.end method

.method private loadDimens()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfExpandVelocityPx:F

    const v1, 0x7f0e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfCollapseVelocityPx:F

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F

    const v1, 0x7f0e0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    const v1, 0x7f0e0027

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseMinDisplayFraction:F

    const v1, 0x7f0e0028

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandMinDisplayFraction:F

    const v1, 0x7f0e0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandAccelPx:F

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAccelPx:F

    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F

    const v1, 0x7f0e0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    const v1, 0x7f0e005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    sub-float v1, v2, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    goto :goto_0
.end method

.method private runPeekAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    const-string v0, "expandedHeight"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method


# virtual methods
.method public final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public collapse()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfCollapseVelocityPx:F

    neg-float v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    :cond_0
    return-void
.end method

.method public expand()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfExpandVelocityPx:F

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    :cond_0
    return-void
.end method

.method public fling(FZ)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->animationTick(J)V

    :cond_1
    return-void
.end method

.method public getExpandedFraction()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    return-object v0
.end method

.method public isCollapsing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return v0
.end method

.method public isFullyCollapsed()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpanded()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->calculateWidthAndHeight()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    float-to-int v1, v1

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    :cond_0
    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v2, :cond_3

    :cond_2
    cmpl-float v2, p1, v0

    if-lez v2, :cond_3

    move p1, v0

    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestLayout()V

    const/high16 v2, 0x3f80

    cmpl-float v3, v0, v1

    if-nez v3, :cond_4

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return-void

    :cond_4
    div-float v1, p1, v0

    goto :goto_0
.end method

.method public setRubberbandingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    return-void
.end method
