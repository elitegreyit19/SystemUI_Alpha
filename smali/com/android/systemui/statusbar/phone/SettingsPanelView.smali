.class public Lcom/android/systemui/statusbar/phone/SettingsPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "SettingsPanelView.java"


# instance fields
.field mHandleBar:Landroid/graphics/drawable/Drawable;

.field mHandleBarHeight:F

.field mHandleView:Landroid/view/View;

.field private mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field private mQSContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

.field private mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBarHeight:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public fling(FZ)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    return-void

    :cond_1
    const-string v1, "closed"

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBarHeight:F

    const v1, 0x7f09002b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleView:Landroid/view/View;

    const v1, 0x7f0c00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBarHeight:F

    float-to-int v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    :cond_0
    return-void
.end method

.method public setImeWindowStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setImeWindowStatus(Z)V

    :cond_0
    return-void
.end method

.method public setQuickSettings(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    :cond_0
    return-void
.end method

.method public setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V

    :cond_0
    return-void
.end method

.method updateResources()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQSContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQSContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->requestLayout()V

    return-void
.end method
