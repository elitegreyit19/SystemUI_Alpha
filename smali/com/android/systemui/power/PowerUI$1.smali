.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v17, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "level"

    const/16 v19, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "status"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "health"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "plugged"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "invalid_charger"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "online"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "charge_type"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "current_avg"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v17, v0

    if-eqz v17, :cond_f

    const/4 v15, 0x1

    :goto_0
    if-eqz v13, :cond_10

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v0, v8}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v18, v0

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v4

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "INTENT_DEBUG"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "LOW_BATTERY_DUMP"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    sub-int v17, v17, v8

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    :cond_1
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v8, :cond_3

    :cond_2
    if-ge v4, v11, :cond_4

    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "LOW_BATTERY_DUMP_COUNT"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v5, v0, :cond_11

    const-string v17, "PowerUI"

    const-string v18, "Low battery dump"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "LOW_BATTERY_DUMP_COUNT"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.android.systemui.power.action.LOW_BATTERY_WARNING"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_2
    if-nez v15, :cond_12

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    if-gez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v10, v0, :cond_8

    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    :cond_6
    :goto_4
    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    if-nez v17, :cond_19

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "power"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    if-nez v16, :cond_18

    const-string v17, "PowerUI"

    const-string v18, "onReceive : fail to get PowerManager reference"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showChargingInterruptionWarning()V

    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v7, v0, :cond_a

    const/16 v17, 0x5

    move/from16 v0, v17

    if-eq v0, v7, :cond_9

    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    :cond_9
    const-string v17, "PowerUI"

    const-string v18, "Overvoltage (recovered) so turn on the screen."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "KOR"

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_c

    if-eqz v13, :cond_b

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v13, :cond_c

    :cond_b
    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    sget-boolean v18, Lcom/android/systemui/statusbar/MinitSettings;->mDisableUsbSounds:Z

    if-eqz v18, :cond_c

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_d

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v9, :cond_1b

    const/16 v17, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    const-string v17, "PowerUI"

    const-string v18, "start Wireless charging"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c0170

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->showWirelessChargingNotice(I)V

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v6, v0, :cond_e

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c017a

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c0179

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargingNotification(I)V

    :cond_e
    :goto_8
    return-void

    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_11
    const-string v17, "PowerUI"

    const-string v18, "Low battery dump count reaches maximum"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_12
    if-ge v4, v11, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    if-gez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    move/from16 v17, v0

    if-gez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_3

    :cond_13
    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_3

    :cond_14
    if-le v4, v11, :cond_15

    if-lez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_3

    :cond_15
    if-eqz v15, :cond_5

    if-nez v14, :cond_5

    if-gez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    move/from16 v17, v0

    if-ltz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_3

    :cond_17
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v0, v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    const-string v19, "PowerUI"

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "PowerUI"

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_5

    :cond_1a
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v0, v10, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissChargingInterruptionWarning()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6

    :cond_1b
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v0, v9, :cond_1d

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1c

    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    :cond_1c
    const-string v17, "PowerUI"

    const-string v18, "switch from wireless to cable"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c0171

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->showWirelessChargingNotice(I)V

    goto/16 :goto_7

    :cond_1d
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v0, v9, :cond_1e

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v0, v9, :cond_1f

    :cond_1e
    const/16 v17, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    const-string v17, "PowerUI"

    const-string v18, "switch from cable to wireless"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c0172

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->showWirelessChargingNotice(I)V

    goto/16 :goto_7

    :cond_1f
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v9, :cond_20

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissWirelessChargingNotice()V

    goto/16 :goto_7

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    if-nez v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c0174

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->showAbnormalChargingWarning(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c0174

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargingNotification(I)V

    goto/16 :goto_7

    :cond_21
    if-nez v9, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissAbnormalChargingWarning()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargingNotification()V

    goto/16 :goto_7

    :cond_22
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargingNotification()V

    goto/16 :goto_8

    :cond_23
    const-string v17, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_26

    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    const-string v17, "PowerUI"

    const-string v18, "Language is changed so notify FullBatteryNotification again"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    if-nez v17, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargingNotification()V

    const-string v17, "PowerUI"

    const-string v18, "Language is changed so notify incompatible charger again"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c0175

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargingNotification(I)V

    goto/16 :goto_8

    :cond_25
    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargingNotification()V

    const-string v17, "PowerUI"

    const-string v18, "Language is changed so notify slow charging again"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c0179

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargingNotification(I)V

    goto/16 :goto_8

    :cond_26
    const-string v17, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27

    const-string v17, "PowerUI"

    const-string v18, "Face detection is failed before dimming"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->notifyFaceDetectionFailureNotification()V

    goto/16 :goto_8

    :cond_27
    const-string v17, "com.sec.factory.app.factorytest.FTA_ON"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    const-string v17, "PowerUI"

    const-string v18, "FTA mode ON"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_28
    const-string v17, "com.sec.factory.app.factorytest.FTA_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    const-string v17, "PowerUI"

    const-string v18, "FTA mode OFF"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_29
    const-string v17, "PowerUI"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unknown intent: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method
