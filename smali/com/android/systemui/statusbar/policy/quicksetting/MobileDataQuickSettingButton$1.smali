.class Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;I)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileData()Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)Z

    const-string v2, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: ACTION_AIRPLANE_MODE_CHANGED, isAirPlaneMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMobileData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)I

    move-result v2

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setActivateStatus(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v3

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileData()Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)Z

    const-string v2, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: ACTION_SIM_STATE_CHANGED, mMobileData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SIM_STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PopUp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v6, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v3

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    goto :goto_0

    :cond_5
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    :cond_6
    const-string v2, "com.samsung.intent.action.DATA_SERVICE_NETWORK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DATA_SERVICE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: DATA_SERVICE_NETWORK : currentSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileDataAsSlot(I)Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;I)Z

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v3

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    goto/16 :goto_0
.end method
