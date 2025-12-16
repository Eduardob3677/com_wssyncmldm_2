.class public Lcom/idm/fotaagent/utils/RebootChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/utils/RebootChecker$RebootRequiredException;
    }
.end annotation


# static fields
.field private static final TIME_OUT:I

.field public static final WAIT_FOR_REBOOT_MSG:Ljava/lang/String; = "Since this application waits for reboot in order to complete installation, it should not perform anything"

.field private static scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private static timeoutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static final waitingReboot:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isABModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0x78

    :goto_0
    sput v0, Lcom/idm/fotaagent/utils/RebootChecker;->TIME_OUT:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/idm/fotaagent/utils/RebootChecker;->waitingReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/utils/RebootChecker;->lambda$stopTimerIfRunning$0(Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method

.method public static isBootIdChanged(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->getBootId()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readBootId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prevBootId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentBootId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isRunning()Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/utils/RebootChecker;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$stopTimerIfRunning$0(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public static declared-synchronized saveBootIdAndStartTimer(Landroid/content/Context;)V
    .locals 10

    const-class v0, Lcom/idm/fotaagent/utils/RebootChecker;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readBootId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->setBootId(Ljava/lang/String;)V

    sget-object p0, Lcom/idm/fotaagent/utils/RebootChecker;->waitingReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    sput-object v3, Lcom/idm/fotaagent/utils/RebootChecker;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, LQ0/a;

    const/4 p0, 0x1

    invoke-direct {v4, p0}, LQ0/a;-><init>(I)V

    sget p0, Lcom/idm/fotaagent/utils/RebootChecker;->TIME_OUT:I

    int-to-long v5, p0

    int-to-long v7, p0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/idm/fotaagent/utils/RebootChecker;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stopTimerIfRunning()V
    .locals 4

    const-string v0, "currentWaitingReboot : "

    const-class v1, Lcom/idm/fotaagent/utils/RebootChecker;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/idm/fotaagent/utils/RebootChecker;->waitingReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ". set as false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/idm/fotaagent/utils/RebootChecker;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "not running; do nothing"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/idm/fotaagent/utils/RebootChecker;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LA2/a;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, LA2/a;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/idm/fotaagent/utils/RebootChecker;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LA2/a;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, LA2/a;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/idm/fotaagent/utils/RebootChecker;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sput-object v0, Lcom/idm/fotaagent/utils/RebootChecker;->timeoutTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized waitsReboot()Z
    .locals 2

    const-class v0, Lcom/idm/fotaagent/utils/RebootChecker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/fotaagent/utils/RebootChecker;->waitingReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
