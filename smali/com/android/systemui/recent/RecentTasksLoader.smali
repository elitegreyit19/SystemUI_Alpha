.class public Lcom/android/systemui/recent/RecentTasksLoader;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentTasksLoader$State;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_TASKS:I = 0x14

.field private static final MAX_TASKS:I = 0x15

.field static final TAG:Ljava/lang/String; = "RecentTasksLoader"

.field private static sInstance:Lcom/android/systemui/recent/RecentTasksLoader;


# instance fields
.field mCancelPreloadingFirstTask:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultIconBackground:Landroid/graphics/Bitmap;

.field private mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

.field private mFirstScreenful:Z

.field private mFirstTask:Lcom/android/systemui/recent/TaskDescription;

.field private mFirstTaskLoaded:Z

.field private mFirstTaskLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mLoadedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mNumTasksInFirstScreenful:I

.field mPreloadTasksRunnable:Ljava/lang/Runnable;

.field mPreloadingFirstTask:Z

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

.field private mTaskLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/recent/TaskDescription;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/lang/Object;

    invoke-direct/range {v9 .. v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    const v9, 0x7fffffff

    iput v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    sget-object v9, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    iput-object v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    new-instance v9, Lcom/android/systemui/recent/RecentTasksLoader$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;)V

    iput-object v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v9, 0x7f0b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v9, "activity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    :goto_0
    const/high16 v9, 0x105

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    mul-int/2addr v9, v3

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v4, v9, v10

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultIconBackground:Landroid/graphics/Bitmap;

    const v9, 0x1050002

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x1050001

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v9, 0x7f020225

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    :cond_0
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->clearFirstTask()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/recent/RecentTasksLoader;Lcom/android/systemui/recent/RecentTasksLoader$State;)Lcom/android/systemui/recent/RecentTasksLoader$State;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/recent/RecentTasksLoader;Lcom/android/systemui/recent/TaskDescription;)Lcom/android/systemui/recent/TaskDescription;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/TaskDescription;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/recent/RecentTasksLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLoaded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentTasksLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/recent/RecentTasksLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/RecentTasksLoader;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    return v0
.end method

.method private cancelLoadingThumbnailsAndIcons()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    :cond_1
    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskLoadingCancelled()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->dismiss()V

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    sget-object v0, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    return-void
.end method

.method private clearFirstTask()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/TaskDescription;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLoaded:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4

    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/RecentTasksLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/RecentTasksLoader;

    :cond_0
    sget-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method private isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method private loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$4;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    :cond_0
    return-void
.end method

.method public cancelPreloadingFirstTask()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadingFirstTask:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mCancelPreloadingFirstTask:Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->clearFirstTask()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelPreloadingRecentTasksList()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;)Lcom/android/systemui/recent/TaskDescription;
    .locals 17

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v15, v12, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v14

    iget-object v2, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v9, 0x0

    if-eqz v10, :cond_1

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    invoke-static {v13, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v2, "RecentTasksLoader"

    const-string v3, "ApplicationIcon obtained from EDM database"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v9, :cond_2

    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v2, :cond_4

    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_2
    if-nez v9, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_3
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v1, Lcom/android/systemui/recent/TaskDescription;

    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recent/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v1

    :cond_4
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultIconBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFirstTask()Lcom/android/systemui/recent/TaskDescription;
    .locals 2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/TaskDescription;

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLoaded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadingFirstTask:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/TaskDescription;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLoaded:Z

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/TaskDescription;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x3

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    iget v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getLoadedTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isFirstScreenful()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    return v0
.end method

.method public loadFirstTask()Lcom/android/systemui/recent/TaskDescription;
    .locals 12

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    const/4 v2, 0x2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v6, v9, v2, v3}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v11

    const/4 v8, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v7, Landroid/content/Intent;

    iget-object v2, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    :goto_1
    if-eqz v9, :cond_4

    const-string v1, "RecentTasksLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFirstTask Don\'t load excludeFromRecents : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v9, v1

    goto :goto_1

    :cond_4
    iget v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v2, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v3, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v4, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p0, v8}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V

    :cond_5
    move-object v0, v8

    goto :goto_0
.end method

.method public loadTasksInBackground()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground(Z)V

    return-void
.end method

.method public loadTasksInBackground(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    sget-object v2, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/systemui/recent/RecentTasksLoader$State;->LOADING:Lcom/android/systemui/recent/RecentTasksLoader$State;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Lcom/android/systemui/recent/RecentTasksLoader$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader$3;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/LinkedBlockingQueue;)V

    iput-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V

    goto :goto_0
.end method

.method loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v4, p1, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-enter p1

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/systemui/recent/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setLoaded(Z)V

    monitor-exit p1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadRecentTasksList()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingRecentTasksList()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    goto :goto_0
.end method

.method public preloadFirstTask()V
    .locals 3

    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader$2;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadingFirstTask:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->clearFirstTask()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadingFirstTask:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preloadRecentTasksList()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeLoadedTasks(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-ne v0, p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->numItemsInOneScreenful()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    :cond_1
    return-void
.end method
