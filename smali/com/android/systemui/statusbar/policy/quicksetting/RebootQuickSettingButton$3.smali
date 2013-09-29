.class Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton$3;
.super Ljava/lang/Object;
.source "RebootQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->RestartDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->RebootOptions:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/quicksetting/RebootQuickSettingButton;->RebootMode:Ljava/lang/String;

    return-void
.end method
