.class public final synthetic Lcom/google/firebase/messaging/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public synthetic a:Landroid/content/Context;

.field public synthetic b:Ljava/util/concurrent/ScheduledExecutorService;

.field public synthetic c:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public synthetic d:Lcom/google/firebase/messaging/l;

.field public synthetic e:LJ3/d;


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lcom/google/firebase/messaging/w;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/firebase/messaging/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/firebase/messaging/w;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v2, p0, Lcom/google/firebase/messaging/w;->d:Lcom/google/firebase/messaging/l;

    iget-object v4, p0, Lcom/google/firebase/messaging/w;->e:LJ3/d;

    const-class p0, Lcom/google/firebase/messaging/v;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/firebase/messaging/v;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/messaging/v;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms.appid"

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/messaging/v;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, v6}, LD3/e;->c(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)LD3/e;

    move-result-object v0

    iput-object v0, v3, Lcom/google/firebase/messaging/v;->a:LD3/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/firebase/messaging/v;->b:Ljava/lang/ref/WeakReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit p0

    move-object v3, v0

    :goto_1
    new-instance p0, Lcom/google/firebase/messaging/x;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/x;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/l;Lcom/google/firebase/messaging/v;LJ3/d;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object p0

    :goto_2
    monitor-exit p0

    throw v0
.end method
