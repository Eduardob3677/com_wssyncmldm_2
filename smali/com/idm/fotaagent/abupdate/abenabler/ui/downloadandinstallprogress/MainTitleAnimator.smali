.class Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANIMATING_STRING:Ljava/lang/String; = "...."

.field private static final REFRESH_STEP:I = 0x190


# instance fields
.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private task:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final taskId:Ljava/lang/String;

.field private volatile title:Ljava/lang/String;

.field private volatile transparentIndex:I

.field private viewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->taskId:Ljava/lang/String;

    iput-object p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->title:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->lambda$onRefresh$0(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->lambda$restoreMainTitle$1(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;)V

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->onRefresh()V

    return-void
.end method

.method private declared-synchronized getSpannableString()Landroid/text/SpannableString;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->getSpannableString(Z)Landroid/text/SpannableString;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getSpannableString(Z)Landroid/text/SpannableString;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->title:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->transparentIndex:I

    add-int/2addr p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->title:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_0
    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v0, v2, p1, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private isPaused()Z
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->taskId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    const/16 v0, 0xf2

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getPendingPause()Landroidx/lifecycle/C;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->task:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onRefresh$0(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->getSpannableString()Landroid/text/SpannableString;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->setMainTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$restoreMainTitle$1(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->getSpannableStringWithoutAnimator()Landroid/text/SpannableString;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->setMainTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private declared-synchronized onRefresh()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "not running. do nothing"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->viewWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const-string v0, "viewWeakReference is unexpectedly null."

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;I)V

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->transparentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->transparentIndex:I

    iget v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->transparentIndex:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->transparentIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private restoreMainTitle()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->viewWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const-string p0, "viewWeakReference is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->transparentIndex:I

    if-eqz v1, :cond_1

    new-instance v1, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/e;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;I)V

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getSpannableStringWithoutAnimator()Landroid/text/SpannableString;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->getSpannableString(Z)Landroid/text/SpannableString;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->title:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized startIfPossible(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "do not start due to paused state"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "already running."

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/f;

    const/4 p1, 0x0

    invoke-direct {v2, p1, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/f;-><init>(ILjava/lang/Object;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x190

    const-wide/16 v5, 0x190

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->task:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "not running. do nothing"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->restoreMainTitle()V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->task:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->viewWeakReference:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->task:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
