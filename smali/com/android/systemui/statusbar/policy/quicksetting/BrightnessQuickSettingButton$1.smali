.class Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$1;
.super Landroid/app/Dialog;
.source "BrightnessQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->showBrightnessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->dismissBrightnessDialog(I)V
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$1;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->dismissBrightnessDialog(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
