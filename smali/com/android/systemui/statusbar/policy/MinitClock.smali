.class public Lcom/android/systemui/statusbar/policy/MinitClock;
.super Landroid/widget/TextView;
.source "MinitClock.java"


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mHeader:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/MinitClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/MinitClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitClock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitClock$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/android/systemui/R$styleable;->Clock:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mHeader:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/MinitClock;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/policy/MinitClock;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/policy/MinitClock;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/policy/MinitClock;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/policy/MinitClock;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method private getDateStyle()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mDateStyle:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "dd MMM "

    goto :goto_0

    :pswitch_1
    const-string v0, "MMM dd "

    goto :goto_0

    :pswitch_2
    const-string v0, "dd/MM/yy "

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public doMinitSettings()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mHeader:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/MinitSettings;->mDropDownClockColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitClock;->setTextColor(I)V

    sget v0, Lcom/android/systemui/statusbar/MinitSettings;->mHeaderClockSize:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitClock;->setTextSize(F)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/systemui/statusbar/MinitSettings;->mClockColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitClock;->setTextColor(I)V

    sget v0, Lcom/android/systemui/statusbar/MinitSettings;->mClockSize:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitClock;->setTextSize(F)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "three.minit.NOTIFY_SYSUI_SETTINGS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->updateClock()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->doMinitSettings()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mAttached:Z

    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mShowDay:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mHeader:Z

    if-nez v7, :cond_0

    const-string v7, "EEE "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mShowDate:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mHeader:Z

    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitClock;->getDateStyle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v0, :cond_9

    const-string v7, "HH:mm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mShowAmPm:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mHeader:Z

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mAppendAmPmSpace:Z

    if-eqz v7, :cond_2

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mHeader:Z

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mShowHeaderAmPm:Z

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mAppendAmPmSpace:Z

    if-eqz v7, :cond_4

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mUseUppercase:Z

    if-eqz v7, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mShowAmPm:Z

    if-nez v7, :cond_7

    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mShowHeaderAmPm:Z

    if-eqz v7, :cond_8

    :cond_7
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mHeader:Z

    if-eqz v7, :cond_a

    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mShowHeaderAmPm:Z

    if-eqz v7, :cond_a

    sget v6, Lcom/android/systemui/statusbar/MinitSettings;->mHeaderAmPmSize:F

    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v7, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v8, v4, -0x2

    invoke-virtual {v3, v7, v8, v4, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/MinitClock;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_9
    const-string v7, "h:mm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_a
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MinitClock;->mHeader:Z

    if-nez v7, :cond_8

    sget-boolean v7, Lcom/android/systemui/statusbar/MinitSettings;->mShowAmPm:Z

    if-eqz v7, :cond_8

    sget v6, Lcom/android/systemui/statusbar/MinitSettings;->mAmPmSize:F

    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v7, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v8, v4, -0x2

    invoke-virtual {v3, v7, v8, v4, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method
