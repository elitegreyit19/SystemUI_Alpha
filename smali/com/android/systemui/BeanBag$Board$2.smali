.class Lcom/android/systemui/BeanBag$Board$2;
.super Ljava/lang/Object;
.source "BeanBag.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BeanBag$Board;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BeanBag$Board;


# direct methods
.method constructor <init>(Lcom/android/systemui/BeanBag$Board;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BeanBag$Board$2;->this$0:Lcom/android/systemui/BeanBag$Board;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BeanBag$Board$2;->this$0:Lcom/android/systemui/BeanBag$Board;

    #calls: Lcom/android/systemui/BeanBag$Board;->reset()V
    invoke-static {v0}, Lcom/android/systemui/BeanBag$Board;->access$200(Lcom/android/systemui/BeanBag$Board;)V

    iget-object v0, p0, Lcom/android/systemui/BeanBag$Board$2;->this$0:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->startAnimation()V

    return-void
.end method
