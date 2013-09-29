.class public Lcom/android/systemui/statusbar/policy/MinitAlarm;
.super Landroid/widget/TextView;
.source "MinitAlarm.java"


# instance fields
.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/MinitAlarm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/MinitAlarm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitAlarm$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitAlarm$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitAlarm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitAlarm;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MinitAlarm;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitAlarm;->updateAlarm()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/MinitAlarm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitAlarm;->updateAlarm()V

    return-void
.end method

.method private updateAlarm()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitAlarm;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0c01a8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitAlarm;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitAlarm;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitAlarm;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitAlarm;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitAlarm;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitAlarm;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MinitAlarm;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitAlarm;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitAlarm;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MinitAlarm;->mAttached:Z

    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mNextAlarmAndCarrierColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mNextAlarmAndCarrierColor:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitAlarm;->setTextColor(I)V

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/android/systemui/statusbar/policy/MinitAlarm;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
