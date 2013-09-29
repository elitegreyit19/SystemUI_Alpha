.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.super Landroid/widget/LinearLayout;
.source "QuickSettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREENREADER_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final ENABLED_SERVICES_SEPARATOR:C = ':'

.field public static final LINE_RESTRICTION:I = 0xc

.field public static final MIDIUM_DENSITY:I = 0xa0

.field public static final STATUS_DIM:I = 0x3

.field public static final STATUS_OFF:I = 0x2

.field public static final STATUS_OFF2:I = 0x5

.field public static final STATUS_ON:I = 0x1

.field public static final STATUS_ON2:I = 0x4

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-QuickSettingButton"

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mActivateStatus:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtnImage:Landroid/widget/ImageView;

.field private mBtnLED:Landroid/widget/ImageView;

.field private mBtnText:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDimIconID:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsProcessing:Z

.field private mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

.field private mOffIconID:I

.field private mOffIconID2:I

.field private mOnIconID:I

.field private mOnIconID2:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mText:Ljava/lang/String;

.field private mTextID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    const v0, 0x7f04003f

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/MinitSettings;->get_settings(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mToggleText:Z

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mToggleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    const v0, 0x7f0900ed

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mToggleIdicators:Z

    if-nez v1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iput p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    iput p6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    iput p7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    iput p8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setGravity(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setButtonBackgroundColor()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private checkContentDescription()V
    .locals 5

    const-string v1, ""

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setButtonBackgroundColor()V
    .locals 3

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/systemui/statusbar/MinitSettings;->mQuicksettingImage:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/systemui/statusbar/MinitSettings;->mUseQuicksettingImage:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    sget v2, Lcom/android/systemui/statusbar/MinitSettings;->mToggleButtonBgColor:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setButtonBackgroundColor1()V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/MinitSettings;->mToggleButtonBgColor:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private setButtonImageColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mToggleColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public applySsid(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected callActivity(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected callActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public checkTextLength()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f0e004a

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v14, 0x7f0d0009

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-boolean v14, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v14, :cond_2

    sget-boolean v14, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v14, :cond_2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    int-to-float v14, v3

    add-int/lit8 v15, v7, -0x1

    int-to-float v15, v15

    mul-float/2addr v15, v6

    sub-float/2addr v14, v15

    int-to-float v15, v7

    div-float/2addr v14, v15

    float-to-int v1, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v15, 0x0

    const v16, 0x7f0e0046

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v5, 0x0

    :goto_1
    const/4 v14, 0x2

    if-ge v5, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    const/4 v11, 0x0

    const-string v14, "\n"

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v14, -0x1

    if-ne v4, v14, :cond_3

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v11, v14

    :goto_2
    if-eqz v1, :cond_0

    if-nez v11, :cond_5

    :cond_0
    const-string v14, "STATUSBAR-QuickSettingButton"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RETURN - buttonWidth:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], textWidth["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const v14, 0x7f0e0065

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v3, v14

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v10, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v12, v14

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v13, v14

    if-ge v12, v13, :cond_4

    move v11, v13

    goto :goto_2

    :cond_4
    move v11, v12

    goto :goto_2

    :cond_5
    if-ge v1, v11, :cond_1

    const-string v14, "STATUSBAR-QuickSettingButton"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Reduce text : ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] - buttonWidth:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], textWidth["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v15, 0x0

    const v16, 0x7f0e0046

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4320

    div-float v18, v18, v19

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method public doNext()V
    .locals 0

    return-void
.end method

.method public doPrevious()V
    .locals 0

    return-void
.end method

.method public getActivateStatus()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    return v0
.end method

.method protected isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    return v1
.end method

.method protected isEnabledScreenReaderService()Z
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public localeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkContentDescription()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkTextLength()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setEnabled(Z)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setEnabled(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkTextLength()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->deinit()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onLongClick()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method protected removeEnabledScreenReaderValue()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v2, :cond_2

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.talkback_off"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setActivateStatus(I)V
    .locals 5

    const v3, 0x7f0201c9

    const v2, 0x7f0201ca

    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkContentDescription()V

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mToggleColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mToggglesIndcatorColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "On\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "On\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mToggleDimColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const v1, 0x7f020177

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mToggglesIndcatorDimColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Dim\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mToggleOffColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v1, Lcom/android/systemui/statusbar/MinitSettings;->mToggglesIndcatorOffColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Off\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Off\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setIcon(IIIIII)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    iput p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    iput p6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    return-void
.end method

.method public setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    return-void
.end method

.method public setOffIconId2(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    return-void
.end method

.method public setOnIconId2(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    return-void
.end method

.method public setTextId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    return-void
.end method

.method public setTextId(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    return-void
.end method

.method protected showTalkBackDisablePopup(II)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method protected statusBarCollapse()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method
