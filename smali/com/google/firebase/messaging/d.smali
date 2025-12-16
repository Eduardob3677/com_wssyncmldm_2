.class public abstract Lcom/google/firebase/messaging/d;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private binder:Landroid/os/Binder;

.field final executor:Ljava/util/concurrent/ExecutorService;

.field private lastStartId:I

.field private final lock:Ljava/lang/Object;

.field private runningTasks:I


# direct methods
.method public static bridge synthetic -$$Nest$mprocessIntent(Lcom/google/firebase/messaging/d;Landroid/content/Intent;)Lu1/h;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/d;->b(Landroid/content/Intent;)Lu1/n;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v7, Li1/a;

    const-string v0, "Firebase-Messaging-Intent-Handle"

    invoke-direct {v7, v0}, Li1/a;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x3c

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v8}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/d;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/d;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/messaging/d;->runningTasks:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/firebase/messaging/A;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/A;->c:Lt1/a;

    if-eqz v1, :cond_0

    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p1, Lcom/google/firebase/messaging/A;->c:Lt1/a;

    invoke-virtual {p1}, Lt1/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/google/firebase/messaging/d;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget v0, p0, Lcom/google/firebase/messaging/d;->runningTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/firebase/messaging/d;->runningTasks:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/firebase/messaging/d;->lastStartId:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/d;->stopSelfResultHook(I)Z

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final b(Landroid/content/Intent;)Lu1/n;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/d;->handleIntentOnMainThread(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lp0/a;->j(Ljava/lang/Object;)Lu1/n;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lu1/i;

    invoke-direct {v0}, Lu1/i;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/messaging/d;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, LG/l;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, LG/l;-><init>(I)V

    iput-object p0, v2, LG/l;->d:Ljava/lang/Object;

    iput-object p1, v2, LG/l;->e:Ljava/lang/Object;

    iput-object v0, v2, LG/l;->f:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lu1/i;->a:Lu1/n;

    return-object p0
.end method

.method public abstract getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public handleIntentOnMainThread(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$onStartCommand$1$com-google-firebase-messaging-EnhancedIntentService(Landroid/content/Intent;Lu1/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/d;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$processIntent$0$com-google-firebase-messaging-EnhancedIntentService(Landroid/content/Intent;Lu1/i;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/d;->handleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Lu1/i;->b(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2, v0}, Lu1/i;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "EnhancedIntentService"

    const-string v0, "Service received bind request"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/messaging/d;->binder:Landroid/os/Binder;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/firebase/messaging/B;

    new-instance v0, Lcom/google/firebase/messaging/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/messaging/g;-><init>(Landroid/content/Context;I)V

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/B;-><init>(Lcom/google/firebase/messaging/g;)V

    iput-object p1, p0, Lcom/google/firebase/messaging/d;->binder:Landroid/os/Binder;

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/d;->binder:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/d;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget-object p2, p0, Lcom/google/firebase/messaging/d;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iput p3, p0, Lcom/google/firebase/messaging/d;->lastStartId:I

    iget p3, p0, Lcom/google/firebase/messaging/d;->runningTasks:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/firebase/messaging/d;->runningTasks:I

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/d;->getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/d;->a(Landroid/content/Intent;)V

    return p3

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/firebase/messaging/d;->b(Landroid/content/Intent;)Lu1/n;

    move-result-object p2

    iget-object v0, p2, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p2, Lu1/n;->c:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/d;->a(Landroid/content/Intent;)V

    return p3

    :cond_1
    sget-object p3, Lcom/google/firebase/messaging/c;->d:Lcom/google/firebase/messaging/c;

    new-instance v0, LA3/D;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA3/D;-><init>(IZ)V

    iput-object p0, v0, LA3/D;->d:Ljava/lang/Object;

    iput-object p1, v0, LA3/D;->e:Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Lu1/n;->a(Ljava/util/concurrent/Executor;Lu1/c;)Lu1/n;

    const/4 p0, 0x3

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public stopSelfResultHook(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p0

    return p0
.end method
