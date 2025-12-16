.class public Lcom/idm/fotaagent/InitExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/InitExecutor$InitService;,
        Lcom/idm/fotaagent/InitExecutor$InitializationTask;,
        Lcom/idm/fotaagent/InitExecutor$ResetTask;
    }
.end annotation


# static fields
.field private static final UNBIND_GRACE_PERIOD_IN_MILLIS:J = 0x1388L

.field private static final instance:Lcom/idm/fotaagent/InitExecutor;


# instance fields
.field private futureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private initService:Lcom/idm/fotaagent/InitExecutor$InitService;

.field private initServiceInstantiation:Ljava/util/concurrent/CountDownLatch;

.field private initServiceUnbind:Ljava/util/concurrent/CountDownLatch;

.field private isDmInitialized:Z

.field private final numTasks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final singleThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/InitExecutor;

    invoke-direct {v0}, Lcom/idm/fotaagent/InitExecutor;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/InitExecutor;->instance:Lcom/idm/fotaagent/InitExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceUnbind:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceInstantiation:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/idm/fotaagent/InitExecutor$1;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/InitExecutor$1;-><init>(Lcom/idm/fotaagent/InitExecutor;)V

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->serviceConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceUnbind:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-boolean v1, p0, Lcom/idm/fotaagent/InitExecutor;->isDmInitialized:Z

    new-instance v0, Lcom/idm/fotaagent/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->singleThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/InitExecutor;Ljava/util/concurrent/FutureTask;Ljava/util/function/BooleanSupplier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/InitExecutor;->lambda$execute$3(Ljava/util/concurrent/FutureTask;Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/idm/fotaagent/InitExecutor;Lcom/idm/fotaagent/InitExecutor$InitService;)Lcom/idm/fotaagent/InitExecutor$InitService;
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/InitExecutor;->initService:Lcom/idm/fotaagent/InitExecutor$InitService;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/InitExecutor;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceInstantiation:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/idm/fotaagent/InitExecutor;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceInstantiation:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/idm/fotaagent/InitExecutor;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceUnbind:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/idm/fotaagent/InitExecutor;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceUnbind:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method public static synthetic access$600()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$702(Lcom/idm/fotaagent/InitExecutor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/idm/fotaagent/InitExecutor;->isDmInitialized:Z

    return p1
.end method

.method public static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/InitExecutor;->lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/idm/fotaagent/InitExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/InitExecutor;->lambda$execute$2()V

    return-void
.end method

.method public static synthetic d(Lcom/idm/fotaagent/InitExecutor;Ljava/util/concurrent/FutureTask;Ljava/util/function/BooleanSupplier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/InitExecutor;->lambda$execute$4(Ljava/util/concurrent/FutureTask;Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public static synthetic e()Z
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->lambda$execute$1()Z

    move-result v0

    return v0
.end method

.method public static get()Lcom/idm/fotaagent/InitExecutor;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/InitExecutor;->instance:Lcom/idm/fotaagent/InitExecutor;

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$execute$1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$execute$2()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "numTasks: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/InitExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no additional tasks bound -> start to unbind"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->initService:Lcom/idm/fotaagent/InitExecutor$InitService;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceInstantiation:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/InitExecutor;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$execute$3(Ljava/util/concurrent/FutureTask;Ljava/util/function/BooleanSupplier;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Precondition not satisfied; task cancelled - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    :goto_0
    iget-object p1, p0, Lcom/idm/fotaagent/InitExecutor;->initService:Lcom/idm/fotaagent/InitExecutor$InitService;

    new-instance p2, LD1/b;

    const/16 v0, 0xd

    invoke-direct {p2, v0, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Lcom/idm/fotaagent/InitExecutor$InitService;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$execute$4(Ljava/util/concurrent/FutureTask;Ljava/util/function/BooleanSupplier;)V
    .locals 4

    const-string v0, "numTasks: "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "not bound yet -> start to bind"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceUnbind:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceUnbind:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/idm/fotaagent/InitExecutor$InitService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/idm/fotaagent/InitExecutor;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v0, "initService not yet instantiated"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->initServiceInstantiation:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const-string v0, "initService is instantiated"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->initService:Lcom/idm/fotaagent/InitExecutor$InitService;

    new-instance v1, Lcom/idm/fotaagent/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/idm/fotaagent/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/InitExecutor$InitService;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object p0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/InitExecutor;->execute(Ljava/util/concurrent/Callable;Ljava/util/function/BooleanSupplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized execute(Ljava/util/concurrent/Callable;Ljava/util/function/BooleanSupplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/BooleanSupplier;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->futureTask:Ljava/util/concurrent/FutureTask;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/InitExecutor;->singleThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/idm/fotaagent/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/idm/fotaagent/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initialize()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/InitExecutor$InitializationTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/InitExecutor$InitializationTask;-><init>(Lcom/idm/fotaagent/InitExecutor$1;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/InitExecutor;->execute(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public isDmInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idm/fotaagent/InitExecutor;->isDmInitialized:Z

    return p0
.end method

.method public reset()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/InitExecutor$ResetTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/InitExecutor$ResetTask;-><init>(Lcom/idm/fotaagent/InitExecutor$1;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/InitExecutor;->execute(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public waitForInitialization()V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->futureTask:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    const-string v0, "unexpected situation"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/InitExecutor;->initialize()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/idm/fotaagent/InitExecutor;->futureTask:Ljava/util/concurrent/FutureTask;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "turn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    iget-object v0, p0, Lcom/idm/fotaagent/InitExecutor;->futureTask:Ljava/util/concurrent/FutureTask;

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method
