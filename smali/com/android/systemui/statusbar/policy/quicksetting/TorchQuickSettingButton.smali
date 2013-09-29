.class public Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "TorchQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-TorchQuickSettingButton"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field stat:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c01a9

    const v4, 0x7f0202ff

    const v5, 0x7f0202fe

    const v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->stat:Z

    return-void
.end method

.method private openCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const-string v0, "Torch"

    const-string v1, "openCamera()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    const-string v0, "Torch"

    const-string v1, "releaseCamera()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->off()V

    return-void
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->setActivateStatus(I)V

    return-void
.end method

.method public isFlashSupported()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->openCamera()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->releaseCamera()V

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public off()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->releaseCamera()V

    :cond_0
    return-void
.end method

.method public on()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->openCamera()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    return-void
.end method

.method public onClick(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->stat:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->stat:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->on()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->setActivateStatus(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->stat:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->off()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/TorchQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    return-void
.end method
