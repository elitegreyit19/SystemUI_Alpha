.class Lcom/android/systemui/screenshot/GlobalScreenshot$5;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #calls: Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->buildLayer()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const-string v1, "GlobalScreenshot"

    const-string v2, "mScreenshotView throws the exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
