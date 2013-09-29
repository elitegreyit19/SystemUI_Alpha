.class Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$2;
.super Ljava/lang/Object;
.source "AirViewQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "STATUSBAR-AirView"

    const-string v1, "showConfirmPopup() - Positive onClick mode: ok"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DCM"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$FingerAirViewSettingActivity"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
