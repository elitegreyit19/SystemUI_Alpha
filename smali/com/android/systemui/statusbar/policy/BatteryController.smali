.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BatteryController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BatteryController"


# instance fields
.field mBatteryChargeIcon:I

.field mBatteryIcon:I

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->get_battery_type()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->get_battery_anim_type()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryChargeIcon:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public apply_changes()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public getBatteryLevel(Landroid/content/Intent;)F
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x0

    const-string v3, "level"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v6, :cond_0

    if-ne v2, v6, :cond_1

    :cond_0
    const/high16 v3, 0x4248

    :goto_0
    return v3

    :cond_1
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    goto :goto_0
.end method

.method get_battery_anim_type()I
    .locals 3

    const/16 v2, 0x14

    :try_start_0
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sget v2, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryType:I

    aget v2, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const v2, 0x7f020206

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x6t 0x2t 0x2t 0x7ft
        0x1ct 0x3t 0x2t 0x7ft
        0x4t 0x3t 0x2t 0x7ft
        0x16t 0x3t 0x2t 0x7ft
        0x1at 0x3t 0x2t 0x7ft
        0x22t 0x3t 0x2t 0x7ft
        0x26t 0x3t 0x2t 0x7ft
        0x2t 0x3t 0x2t 0x7ft
        0xdt 0x3t 0x2t 0x7ft
        0x11t 0x3t 0x2t 0x7ft
        0x14t 0x3t 0x2t 0x7ft
        0x18t 0x3t 0x2t 0x7ft
        0x1et 0x3t 0x2t 0x7ft
        0x10t 0x3t 0x2t 0x7ft
        0x25t 0x3t 0x2t 0x7ft
        0x6t 0x3t 0x2t 0x7ft
        0x8t 0x3t 0x2t 0x7ft
        0xat 0x3t 0x2t 0x7ft
        0xbt 0x3t 0x2t 0x7ft
        0x9t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method get_battery_type()I
    .locals 3

    const/16 v2, 0x14

    :try_start_0
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sget v2, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryType:I

    aget v2, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const v2, 0x7f0201f9

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xf9t 0x1t 0x2t 0x7ft
        0x1bt 0x3t 0x2t 0x7ft
        0x3t 0x3t 0x2t 0x7ft
        0x15t 0x3t 0x2t 0x7ft
        0x19t 0x3t 0x2t 0x7ft
        0x21t 0x3t 0x2t 0x7ft
        0x23t 0x3t 0x2t 0x7ft
        0x1t 0x3t 0x2t 0x7ft
        0xct 0x3t 0x2t 0x7ft
        0xet 0x3t 0x2t 0x7ft
        0x13t 0x3t 0x2t 0x7ft
        0x17t 0x3t 0x2t 0x7ft
        0x1dt 0x3t 0x2t 0x7ft
        0xft 0x3t 0x2t 0x7ft
        0x24t 0x3t 0x2t 0x7ft
        0x0t 0x3t 0x2t 0x7ft
        0x12t 0x3t 0x2t 0x7ft
        0x28t 0x3t 0x2t 0x7ft
        0x27t 0x3t 0x2t 0x7ft
        0x1ft 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->get_battery_type()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->get_battery_anim_type()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryChargeIcon:I

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIntent:Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v15, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - ACTION_BATTERY_CHANGED"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "level"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v15, "plugged"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_4

    const/4 v12, 0x1

    :goto_0
    const-string v15, "plugged"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v15, "status"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryChargeIcon:I

    :goto_1
    packed-switch v5, :pswitch_data_0

    const-string v15, "STATUSBAR-BatteryController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive() - : BatteryManager.EXTRA_STATUS  -  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "status"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mUseVzwBatteryIcon:Z

    if-eqz v15, :cond_0

    const-string v15, "online"

    const/16 v16, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - online == 0 && VZW"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v9, 0x7f0200c4

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v15, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBatteryLevel(Landroid/content/Intent;)F

    move-result v1

    float-to-int v1, v1

    sget v7, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryMidValue:I

    if-gt v1, v7, :cond_1

    sget v15, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryMidColor:I

    :cond_1
    sget v7, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryLowValue:I

    if-gt v1, v7, :cond_2

    sget v15, Lcom/android/systemui/statusbar/MinitSettings;->mBatteryLowColor:I

    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mUseColorBattery:Z

    if-nez v7, :cond_3

    const v15, -0x1

    :cond_3
    invoke-virtual {v14, v15, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v16, 0x7f0c00d6

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    goto/16 :goto_1

    :pswitch_0
    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - BATTERY_STATUS_CHARGING:"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryChargeIcon:I

    goto/16 :goto_2

    :pswitch_1
    sget-boolean v15, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v15, :cond_6

    sget-boolean v15, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-nez v15, :cond_7

    :cond_6
    const/4 v15, 0x2

    if-ne v13, v15, :cond_7

    const v9, 0x7f0201f7

    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - BATTERY_STATUS_DISCHARGING: tw_stat_sys_battery_usb_not_charge"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - BATTERY_STATUS_DISCHARGING: stat_sys_battery"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_2
    const-string v15, "health"

    const/16 v16, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v15, "STATUSBAR-BatteryController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive() - BATTERY_STATUS_NOT_CHARGING:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "KOR"

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x3

    if-eq v11, v15, :cond_8

    const/4 v15, 0x7

    if-ne v11, v15, :cond_9

    :cond_8
    const v9, 0x7f0201f6

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    goto/16 :goto_2

    :cond_a
    const/4 v15, 0x5

    if-ne v11, v15, :cond_b

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    goto/16 :goto_2

    :cond_b
    const v9, 0x7f0201f6

    goto/16 :goto_2

    :pswitch_3
    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - BATTERY_STATUS_FULL:"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    goto/16 :goto_2

    :pswitch_4
    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - BATTERY_STATUS_UNKNOWN:"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v16, 0x7f0c0076

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v6, v10, v12, v5}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZI)V

    goto :goto_5

    :cond_e
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
