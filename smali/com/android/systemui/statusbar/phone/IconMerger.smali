.class public Lcom/android/systemui/statusbar/phone/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IconMerger"


# instance fields
.field private mIconSize:I

.field private mMoreView:Landroid/view/View;

.field private mOperatorLogoView:Landroid/view/View;

.field private showOperator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->showOperator:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->showOperator:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-object v0
.end method

.method private checkOverflow(I)V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    mul-int/2addr v5, v4

    sub-int v5, p1, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-lt v5, v8, :cond_6

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->showOperator:Z

    const-string v5, "IconMerger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showOperator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->showOperator:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    move v3, v6

    :goto_3
    const-string v5, "IconMerger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "overflowShown = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->isNeedtoRemoveOneChildren()Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    :cond_5
    if-nez p1, :cond_8

    if-ne v3, v6, :cond_8

    if-nez v4, :cond_8

    move v2, v6

    :goto_4
    const-string v5, "IconMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moreRequired = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v3, :cond_a

    const-string v5, "IconMerger"

    const-string v6, "moreRequired is true"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/systemui/statusbar/phone/IconMerger$1;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/statusbar/phone/IconMerger$1;-><init>(Lcom/android/systemui/statusbar/phone/IconMerger;Z)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    move v5, v7

    goto :goto_2

    :cond_7
    move v3, v7

    goto :goto_3

    :cond_8
    iget v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    mul-int/2addr v5, v4

    if-le v5, p1, :cond_9

    move v2, v6

    goto :goto_4

    :cond_9
    move v2, v7

    goto :goto_4

    :cond_a
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->showOperator:Z

    if-eqz v5, :cond_0

    const-string v5, "IconMerger"

    const-string v6, "showOperator is true"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/systemui/statusbar/phone/IconMerger$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/IconMerger$2;-><init>(Lcom/android/systemui/statusbar/phone/IconMerger;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public isNeedtoRemoveOneChildren()Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOperatorLogoIndicator(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-void
.end method
