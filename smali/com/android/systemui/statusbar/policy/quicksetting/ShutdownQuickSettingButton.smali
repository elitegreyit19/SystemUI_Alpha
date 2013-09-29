.class public Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "ShutdownQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-ShutdownQuickSettingButton"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c01ab

    const v4, 0x7f0202fd

    const v5, 0x7f0202fd

    const v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public deinit()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton;->setActivateStatus(I)V

    return-void
.end method

.method public onClick(Z)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Power off"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Your device will shut down"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Ok"

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Cancel"

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ShutdownQuickSettingButton;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onLongClick()V
    .locals 2

    return-void
.end method
