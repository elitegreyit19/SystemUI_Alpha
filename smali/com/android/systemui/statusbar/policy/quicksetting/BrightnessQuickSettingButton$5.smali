.class Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$5;
.super Ljava/lang/Object;
.source "BrightnessQuickSettingButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "STATUSBAR-BrightnessQuickSettingButton"

    const-string v1, "mBrightnessDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->removeAllBrightnessDialogCallbacks()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;)V

    return-void
.end method
