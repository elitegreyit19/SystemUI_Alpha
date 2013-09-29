.class Lcom/android/systemui/statusbar/policy/MinitClock$1;
.super Landroid/content/BroadcastReceiver;
.source "MinitClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MinitClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MinitClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MinitClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    #setter for: Lcom/android/systemui/statusbar/policy/MinitClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/MinitClock;->access$0(Lcom/android/systemui/statusbar/policy/MinitClock;Ljava/util/Calendar;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    #getter for: Lcom/android/systemui/statusbar/policy/MinitClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MinitClock;->access$1(Lcom/android/systemui/statusbar/policy/MinitClock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    #getter for: Lcom/android/systemui/statusbar/policy/MinitClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MinitClock;->access$1(Lcom/android/systemui/statusbar/policy/MinitClock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    #getter for: Lcom/android/systemui/statusbar/policy/MinitClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MinitClock;->access$2(Lcom/android/systemui/statusbar/policy/MinitClock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MinitClock;->updateClock()V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MinitClock;->doMinitSettings()V

    return-void

    :cond_1
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MinitClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    #getter for: Lcom/android/systemui/statusbar/policy/MinitClock;->mLocale:Ljava/util/Locale;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MinitClock;->access$3(Lcom/android/systemui/statusbar/policy/MinitClock;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitClock$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    #setter for: Lcom/android/systemui/statusbar/policy/MinitClock;->mLocale:Ljava/util/Locale;
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/MinitClock;->access$4(Lcom/android/systemui/statusbar/policy/MinitClock;Ljava/util/Locale;)V

    goto :goto_0
.end method
