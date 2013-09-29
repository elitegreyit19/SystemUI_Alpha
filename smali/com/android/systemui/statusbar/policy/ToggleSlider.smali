.class public Lcom/android/systemui/statusbar/policy/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;,
        Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_BRIGHTNESS_DETAIL_STEP:I = 0x18

.field private static final TAG:Ljava/lang/String; = "StatusBar.ToggleSlider"


# instance fields
.field private mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

.field private mBrightnessIcon:Landroid/widget/ImageView;

.field private mBrightnessIconGroup:Landroid/widget/FrameLayout;

.field private mIsTogglePressed:Z

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

.field private mSlider:Landroid/widget/SeekBar;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z

.field private mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private mTwSliderLayout:Landroid/widget/LinearLayout;

.field private mTwSliderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v7, 0x7f04002d

    invoke-static {p1, v7, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget-object v7, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v7, 0x7f09009a

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CompoundButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v7, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v7, 0x7f09009e

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string v3, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0108

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    div-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v7, v3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    const v7, 0x7f09009b

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f09009f

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0900a1

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    const v7, 0x7f0900a0

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setQuickPanleInstance(Z)V

    :cond_0
    const-string v2, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0074

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0108

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c019f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c01a0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v7, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    const v7, 0x7f09009c

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIconGroup:Landroid/widget/FrameLayout;

    const v7, 0x7f09002d

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const v7, 0x7f09002c

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseCHNFontType:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/high16 v9, 0x4180

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "screen_brightness_mode"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    new-instance v8, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    new-instance v8, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_brightness_detail"

    const/16 v9, 0x64

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    div-int/lit8 v7, v7, 0x14

    add-int/lit8 v4, v7, -0x5

    const-string v5, ""

    if-lez v4, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f09009b

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    const v7, 0x7f090099

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    goto/16 :goto_2

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method private updateIcon(ZI)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f020043

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f020042

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setValue(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const v1, 0x7f02006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    goto :goto_1
.end method


# virtual methods
.method public hideToggle()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x18

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0074

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-interface {v2, p0, v3, v4, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    :cond_2
    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0108

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, p0, v2, v3, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getSplitProgress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    mul-int/lit8 v2, p2, 0x18

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    :cond_1
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0108

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c019f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    return-void
.end method

.method public setSplitMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    return-void
.end method

.method public setSplitText(I)V
    .locals 5

    const-string v2, "emin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, p1, -0x5

    const-string v1, ""

    if-lez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setSplitValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public set_auto_text_color()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mBrightnessTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
