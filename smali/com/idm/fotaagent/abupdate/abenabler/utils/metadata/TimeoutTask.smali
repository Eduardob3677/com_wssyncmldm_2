.class public Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;",
        ">;",
        "Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;"
    }
.end annotation


# static fields
.field private static final TIMER_STEP:I = 0x1

.field private static final TIME_OUT:I = 0x50


# instance fields
.field private count:I

.field private length:J

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private timeoutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->length:J

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->onTimer()V

    return-void
.end method

.method private isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized onTimer()V
    .locals 4

    const-string v0, "/80 ==="

    const-string v1, "=== Timer : "

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "not running; do nothing"

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
    const-string v2, "============================="

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->count:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string v0, "============================="

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->count:I

    const/16 v1, 0x50

    if-lt v0, v1, :cond_1

    iget-wide v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "Timeout! cancel it"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->stopIfRunning()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public get()Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;
    .locals 8

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, LD1/b;

    const/16 v0, 0x11

    invoke-direct {v2, v0, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    sget-object p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->TIMEOUT:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->get()Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    move-result-object p0

    return-object p0
.end method

.method public onFileLengthChanged(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "length : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->length:J

    return-void
.end method

.method public declared-synchronized stopIfRunning()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "not running; do nothing"

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
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LA2/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LA2/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
