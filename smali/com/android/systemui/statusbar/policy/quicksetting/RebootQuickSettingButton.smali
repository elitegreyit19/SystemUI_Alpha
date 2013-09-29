.class public Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "RebootQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-RebootQuickSettingButton"


# instance fields
.field RebootMode:Ljava/lang/String;

.field RebootOptions:[Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c01aa

    const v4, 0x7f0202fc

    const v5, 0x7f0202fc

    const v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Reboot"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Recovery"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Download"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->RebootOptions:[Ljava/lang/CharSequence;

    const-string v0, "reboot"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->RebootMode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Restart()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->RebootMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method protected RestartDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Reboot Options"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Reboot"

    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->RebootOptions:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public deinit()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->setActivateStatus(I)V

    return-void
.end method

.method public onClick(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->RestartDialog()V

    return-void
.end method

.method public onLongClick()V
    .locals 0

    return-void
.end method
