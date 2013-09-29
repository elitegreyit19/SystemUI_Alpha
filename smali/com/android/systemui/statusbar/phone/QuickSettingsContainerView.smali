.class Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;
.super Landroid/widget/FrameLayout;
.source "QuickSettingsContainerView.java"


# instance fields
.field private mCellGap:F

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingTop()I

    move-result v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    iget v10, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    rem-int v1, v3, v10

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v2

    iget v10, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    div-int v6, v3, v10

    add-int v10, v1, v2

    iget v11, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    if-le v10, v11, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingLeft()I

    move-result v8

    int-to-float v10, v9

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    add-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v9, v10

    add-int/lit8 v6, v6, 0x1

    :cond_0
    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v10, v8

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v11, v9

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->layout(IIII)V

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v10

    add-int/2addr v3, v10

    add-int/lit8 v10, v6, 0x1

    iget v11, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    mul-int/2addr v10, v11

    if-ge v3, v10, :cond_2

    int-to-float v10, v8

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    add-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v8, v10

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingLeft()I

    move-result v8

    int-to-float v10, v9

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    add-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v9, v10

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingLeft()I

    move-result v17

    sub-int v17, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v3, v0

    int-to-float v0, v3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v2, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v6

    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v17, v17, v5

    add-int/lit8 v18, v6, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v15, v13, v12}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->measure(II)V

    if-gtz v4, :cond_0

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getMeasuredHeight()I

    move-result v4

    :cond_0
    add-int/2addr v7, v6

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    int-to-float v0, v7

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v14, v0

    mul-int v17, v14, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-int/lit8 v18, v14, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingBottom()I

    move-result v18

    add-int v11, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setMeasuredDimension(II)V

    return-void
.end method

.method updateResources()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->requestLayout()V

    return-void
.end method
