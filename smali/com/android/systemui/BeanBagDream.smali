.class public Lcom/android/systemui/BeanBagDream;
.super Landroid/service/dreams/DreamService;
.source "BeanBagDream.java"


# instance fields
.field private mBoard:Lcom/android/systemui/BeanBag$Board;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/BeanBagDream;->setInteractive(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/BeanBagDream;->setFullscreen(Z)V

    new-instance v0, Lcom/android/systemui/BeanBag$Board;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/BeanBag$Board;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/systemui/BeanBagDream;->mBoard:Lcom/android/systemui/BeanBag$Board;

    iget-object v0, p0, Lcom/android/systemui/BeanBagDream;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {p0, v0}, Lcom/android/systemui/BeanBagDream;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    iget-object v0, p0, Lcom/android/systemui/BeanBagDream;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->startAnimation()V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BeanBagDream;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->stopAnimation()V

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    return-void
.end method
