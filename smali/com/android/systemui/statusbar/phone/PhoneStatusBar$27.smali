.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v4, 0x0

    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v8, "recentapps"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    or-int/lit8 v4, v4, 0x2

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    :cond_1
    :goto_0
    const-string v8, "three.minit.systemui.APPLY_CHANGES"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/MinitSettings;->get_settings(Landroid/content/Context;Z)V

    :cond_2
    const-string v8, "three.minit.NOTIFY_SYSUI_SETTINGS_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->apply_three_minit_settings()V

    :cond_3
    const-string v8, "three.minit.SET_NOTIFY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setMusicOffNotification(Landroid/content/Intent;)V

    :cond_4
    const-string v8, "three.minit.STOP_MUSIC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearMusicOffNotification()V

    :cond_5
    const-string v8, "three.minit.CANCEL_MUSIC_NOTIFICATION"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearMusicOffNotification()V

    :cond_6
    const-string v8, "three.minit.CHANGE_PROFILE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/MinitSettings;->changeProfile(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_7
    return-void

    :cond_8
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    goto :goto_0

    :cond_9
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v9, -0x2710

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    :cond_a
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    goto/16 :goto_0

    :cond_b
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v9, 0x7f09006b

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const-string v8, "level"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x5

    if-gt v8, v9, :cond_d

    const-string v8, "status"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v8, 0x2

    if-ne v1, v8, :cond_c

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    const-string v8, "STATUSBAR-PhoneStatusBar"

    const-string v9, "LOW_BATTERY"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_e
    const-string v8, "STATUSBAR-PhoneStatusBar"

    const-string v9, "NORMAL_BATTERY"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    const-string v8, "com.sec.android.enterprisenotificationcenter.ENTERPRISE_MODE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "PhoneStatusBar"

    const-string v9, "onReceive mStartConferenceReceiver!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "EnterpriseModeChangeReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentHomePackage="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v9, 0x7f0200a4

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    const-string v8, "EnterpriseModeChangeReceiver"

    const-string v9, "set security mode"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsTransparentStatusBar:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v9, 0x7f020231

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    :goto_1
    const-string v8, "EnterpriseModeChangeReceiver"

    const-string v9, "set normal mode"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v9, 0x7f020224

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    goto :goto_1
.end method
