.class public Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;
.super Landroid/widget/RelativeLayout;
.source "NotificationPanelTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

.field private mSettingsButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->buttons:Ljava/util/ArrayList;

    const v1, 0x7f09007f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->buttons:Ljava/util/ArrayList;

    const v1, 0x7f090080

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v3

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->getWidth()I

    move-result v4

    if-ge v0, v4, :cond_2

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->playSoundEffect(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPressed(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setPanel(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->mPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
