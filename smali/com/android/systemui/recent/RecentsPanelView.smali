.class public Lcom/android/systemui/recent/RecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;,
        Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;,
        Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    }
.end annotation


# static fields
.field private static final ASSIST_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field static final DEBUG:Z = false

.field private static final GOOGLEBUTTON_3RDAPP:I = 0x2

.field private static final GOOGLEBUTTON_DEFAULT:I = 0x0

.field private static final GOOGLEBUTTON_NONE:I = 0x3

.field private static final GOOGLEBUTTON_SEARCH:I = 0x1

.field public static final INTENT_ACTION_TASK_MANAGER:Ljava/lang/String; = "com.sec.android.app.controlpanel.MAIN"

.field private static final MAX_NUM_SHORTCUT_BUTTONS:I = 0x4

.field private static final PATTERN_COMMA:Ljava/util/regex/Pattern; = null

.field private static final RECENTSPANEL_CLOSE:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_CLOSE"

.field private static final RECENTSPANEL_OPEN:Ljava/lang/String; = "com.android.systemui.recent.RECENTSPANEL_OPEN"

.field static final TAG:Ljava/lang/String; = "RecentsPanelView"


# instance fields
.field private mFitThumbnailToXY:Z

.field private mHighEndGfx:Z

.field private mIsTaskManagerInstalled:Z

.field private mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

.field private mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mNoRecentApp:Landroid/widget/TextView;

.field private mNumItemsWaitingForThumbnailsAndIcons:I

.field private mPopup:Landroid/widget/PopupMenu;

.field private mRecentItemLayoutId:I

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsContainer:Landroid/view/ViewGroup;

.field private mRecentsGoogleButton:Landroid/view/View;

.field private mRecentsLaunchButton:Landroid/view/View;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsRemoveAllButton:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShortcutComponentNames:[Ljava/lang/String;

.field private mShowRecentApplicationShortCut:Z

.field private mShowRecentGoogleNowButton:Z

.field private mShowing:Z

.field private mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

.field private mThumbnailWidth:I

.field private mWaitingForWindowAnimation:Z

.field private mWaitingToShow:Z

.field private recentButton:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recent/RecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    sget-object v2, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    invoke-static {p1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isTaskManagerInstalled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/recent/RecentsPanelView;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$510(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    return v0
.end method

.method private checkAssistAppIsInstalled()I
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    return-void
.end method

.method private getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTaskManagerInstalled()Z
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.controlpanel.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recent/RecentsPanelView;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "RecentsPanelView"

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method private replaceGoogleButtonTextAndIcon(I)V
    .locals 3

    const v2, 0x7f0201d2

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0c017d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonToSearchTextAndIcon()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTo3rdAppTextAndIcon()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private replaceGoogleButtonTo3rdAppTextAndIcon()V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "search"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/SearchManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, -0x2

    invoke-virtual/range {v20 .. v22}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_1

    const-string v20, "com.android.systemui.action_assist_icon"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0201d3

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-boolean v20, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v20, "RecentsPanelView"

    const-string v21, " (NameNotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v18

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v14

    const-string v20, "RecentsPanelView"

    const-string v21, " (Resources.NotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private replaceGoogleButtonToSearchTextAndIcon()V
    .locals 3

    const v2, 0x7f0201d3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x104000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private replaceRemoveAllButtonTextAndIcon()V
    .locals 3

    const v2, 0x7f0201d1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0c017e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private replaceTaskButtonTextAndIcon()V
    .locals 3

    const v2, 0x7f0201d4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0c017c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    :cond_0
    return-void
.end method

.method private showImpl(Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz p1, :cond_8

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v6, "recentapps"

    invoke-static {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v2, :cond_6

    move v5, v4

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceTaskButtonTextAndIcon()V

    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->checkAssistAppIsInstalled()I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTextAndIcon(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceRemoveAllButtonTextAndIcon()V

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->requestFocus()Z

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    const/4 v5, 0x4

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    :cond_8
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    return-void
.end method

.method private updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 5

    if-eqz p2, :cond_4

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p4, :cond_2

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f05000c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    :cond_4
    return-void

    :cond_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private updateUiElements()V
    .locals 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-lez v0, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/RecentsPanelView;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskLoadingCancelled()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoHome()V

    return-void
.end method

.method public dismissAndGoBack()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setSelected(Z)V

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    move-object p2, p1

    :cond_1
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110001

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$2;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v11, "activity"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v2, v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getWidth()I

    move-result v12

    if-ne v11, v12, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget-object v12, v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    if-ne v11, v12, :cond_3

    const/4 v10, 0x0

    :goto_0
    if-nez v2, :cond_4

    const/4 v7, 0x0

    :goto_1
    const/16 v11, 0x14

    invoke-virtual {v1, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v11, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    iget v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v11, v12, :cond_0

    iget v11, v8, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v11

    const/high16 v12, 0x200

    if-ne v11, v12, :cond_0

    const/4 v7, 0x0

    :cond_1
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    iget v11, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ltz v11, :cond_5

    iget v11, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12, v7}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    :goto_2
    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/android/systemui/recent/RecentsActivity;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/systemui/recent/RecentsActivity;->moveTaskToBack(Z)Z

    if-eqz v10, :cond_2

    iget-object v11, v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v11, v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-object v11, v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    iget-object v11, v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v2, v12, v13, v14}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    goto :goto_1

    :cond_5
    iget-object v6, v0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    const v11, 0x10104000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v11, Landroid/os/UserHandle;

    const/4 v12, -0x2

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v6, v7, v11}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-nez v0, :cond_1

    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to find activity description for swiped task; view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->removeLoadedTasks(Lcom/android/systemui/recent/TaskDescription;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v2, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c00df

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->numItemsInOneScreenful()I

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 26

    invoke-super/range {p0 .. p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v22, 0x7f090093

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    const v22, 0x7f0900d3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/recent/StatusBarTouchProxy;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    new-instance v22, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v14, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    const v22, 0x7f090092

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    const v22, 0x7f090095

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v22, :cond_5

    const v22, 0x7f090108

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    const v22, 0x7f090109

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v22, :cond_6

    const v22, 0x7f09010a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    :cond_0
    :goto_1
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v22, :cond_7

    const v22, 0x7f09010b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0058

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    const v22, 0x7f0900f9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v8

    if-eqz v8, :cond_2

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "RecentsPanelView"

    const-string v23, "mBlockRecentApplicationShortCut = true"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentApplicationShortCut:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    if-nez v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v22, Lcom/android/systemui/recent/RecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v15, v0, [Landroid/widget/ImageView;

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/4 v11, 0x0

    const/16 v23, 0x0

    const v22, 0x7f0900fc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    aput-object v22, v16, v23

    const/16 v23, 0x1

    const v22, 0x7f0900fd

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    aput-object v22, v16, v23

    const/16 v23, 0x2

    const v22, 0x7f090100

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    aput-object v22, v16, v23

    const/16 v23, 0x3

    const v22, 0x7f090103

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    aput-object v22, v16, v23

    const/16 v23, 0x0

    const v22, 0x7f0900fe

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    aput-object v22, v15, v23

    const/16 v23, 0x1

    const v22, 0x7f090101

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    aput-object v22, v15, v23

    const/16 v23, 0x2

    const v22, 0x7f090104

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    aput-object v22, v15, v23

    const/16 v23, 0x3

    const v22, 0x7f090106

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    aput-object v22, v15, v23

    const/16 v23, 0x0

    const v22, 0x7f0900ff

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    aput-object v22, v17, v23

    const/16 v23, 0x1

    const v22, 0x7f090102

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    aput-object v22, v17, v23

    const/16 v23, 0x2

    const v22, 0x7f090105

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    aput-object v22, v17, v23

    const/16 v23, 0x3

    const v22, 0x7f090107

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    aput-object v22, v17, v23

    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_8

    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v6, v0, :cond_8

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v6

    invoke-static/range {v22 .. v22}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    if-eqz v13, :cond_3

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v13, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-eqz v19, :cond_3

    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_3

    aget-object v22, v16, v6

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setVisibility(I)V

    aget-object v22, v16, v6

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setClickable(Z)V

    aget-object v22, v16, v6

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x5a

    const/16 v25, 0x5a

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    aget-object v22, v15, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-object v22, v15, v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    aget-object v22, v15, v6

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v22, v15, v6

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setPressed(Z)V

    aget-object v22, v15, v6

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setClickable(Z)V

    aget-object v22, v15, v6

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->clearFocus()V

    aget-object v22, v17, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v22, v15, v6

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnTouchShortcutIcon;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    aget-object v22, v15, v6

    new-instance v23, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v11, v11, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_4
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "missing Recents[Horizontal]ScrollView"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_5
    const v22, 0x7f09010c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->recentButton:Landroid/widget/LinearLayout;

    const v22, 0x7f09010d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    goto/16 :goto_0

    :cond_6
    const v22, 0x7f09010e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    goto/16 :goto_1

    :cond_7
    const v22, 0x7f09010f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    goto/16 :goto_2

    :cond_8
    if-lez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e005b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v22, 0x7f0900fa

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v22, 0x7f0900fb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_4
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    check-cast v22, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v23, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_pen_gesture"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTaskLoadingCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    :cond_0
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 7

    monitor-enter p1

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v5, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_0

    const v5, 0x7f090094

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v5, p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    iget v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    return-void

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onTasksLoaded(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->isActivityShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public onUiHidden()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    :cond_0
    return-void
.end method

.method public onWindowAnimationStart()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v8, :cond_2

    const/16 v6, 0x96

    const/16 v2, 0xfa

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3fc0

    invoke-direct {v1, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v8, 0x3

    new-array v0, v8, [Landroid/view/View;

    iget-object v8, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    aput-object v8, v0, v12

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    aput-object v9, v0, v8

    const/4 v8, 0x2

    iget-object v9, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    aput-object v9, v0, v8

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v0, v4

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f80

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0x96

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0xfa

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iput-boolean v12, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    :cond_2
    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public refreshViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateUiElements()V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setMinSwipeAlpha(F)V

    :cond_0
    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/StatusBarTouchProxy;->setStatusBar(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    return-void
.end method

.method public show(ZLjava/util/ArrayList;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v4, 0x1

    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.recent.RECENTSPANEL_OPEN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.recent.RECENTSPANEL_CLOSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    goto :goto_0
.end method

.method public simulateClick(I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v2, v2, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->findViewForTask(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateValuesFromResources()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceTaskButtonTextAndIcon()V

    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->checkAssistAppIsInstalled()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceGoogleButtonTextAndIcon(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->replaceRemoveAllButtonTextAndIcon()V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    const v3, 0x7f0c0065

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method
