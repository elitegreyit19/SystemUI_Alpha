.class final Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickLaunchButton"
.end annotation


# instance fields
.field final CLASS_NAME:Ljava/lang/String;

.field final PACKAGE_NAME:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.sec.android.app.controlpanel"

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10004000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.sec.android.app.controlpanel"

    const-string v3, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "RecentsPanelView"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
