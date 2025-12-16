.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:J

.field public static j:Lcom/google/firebase/messaging/g;

.field public static k:LI0/d;

.field public static l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public final a:LW1/g;

.field public final b:Landroid/content/Context;

.field public final c:LJ3/d;

.field public final d:LA3/D;

.field public final e:Lcom/google/android/gms/internal/firebase-auth-api/a4;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lcom/google/firebase/messaging/l;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:J

    return-void
.end method

.method public constructor <init>(LW1/g;Lk2/a;Lk2/a;Ll2/d;LI0/d;Lh2/b;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lcom/google/firebase/messaging/l;

    invoke-virtual {p1}, LW1/g;->a()V

    iget-object v3, p1, LW1/g;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/firebase/messaging/l;-><init>(Landroid/content/Context;)V

    new-instance v4, LJ3/d;

    new-instance v5, LY0/a;

    invoke-virtual {p1}, LW1/g;->a()V

    iget-object v6, p1, LW1/g;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, LY0/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object p1, v4, LJ3/d;->c:Ljava/lang/Object;

    iput-object v2, v4, LJ3/d;->d:Ljava/lang/Object;

    iput-object v5, v4, LJ3/d;->e:Ljava/lang/Object;

    iput-object p2, v4, LJ3/d;->f:Ljava/lang/Object;

    iput-object p3, v4, LJ3/d;->g:Ljava/lang/Object;

    iput-object p4, v4, LJ3/d;->h:Ljava/lang/Object;

    new-instance p2, Li1/a;

    const-string p3, "Firebase-Messaging-Task"

    invoke-direct {p2, p3}, Li1/a;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p4, Li1/a;

    const-string v5, "Firebase-Messaging-Init"

    invoke-direct {p4, v5}, Li1/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v1, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Z

    sput-object p5, Lcom/google/firebase/messaging/FirebaseMessaging;->k:LI0/d;

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:LW1/g;

    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-direct {p4, p0, p6}, Lcom/google/android/gms/internal/firebase-auth-api/a4;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lh2/b;)V

    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-virtual {p1}, LW1/g;->a()V

    iput-object v3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    new-instance p4, Lcom/google/firebase/messaging/h;

    invoke-direct {p4}, Lcom/google/firebase/messaging/h;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/l;

    iput-object v4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:LJ3/d;

    new-instance p5, LA3/D;

    invoke-direct {p5, p2}, LA3/D;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:LA3/D;

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, LW1/g;->a()V

    instance-of p1, v3, Landroid/app/Application;

    if-eqz p1, :cond_0

    move-object p1, v3

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p4, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x7d

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Context "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not an application, can\'t register for lifecycle callbacks. Some notification events may be dropped as a result."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FirebaseMessaging"

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Lcom/google/firebase/messaging/i;

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/i;-><init>(I)V

    iput-object p0, p1, Lcom/google/firebase/messaging/i;->d:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Li1/a;

    const-string p4, "Firebase-Messaging-Topics-Io"

    invoke-direct {p2, p4}, Li1/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sget p2, Lcom/google/firebase/messaging/x;->j:I

    new-instance p2, Lcom/google/firebase/messaging/w;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v3, p2, Lcom/google/firebase/messaging/w;->a:Landroid/content/Context;

    iput-object p1, p2, Lcom/google/firebase/messaging/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p0, p2, Lcom/google/firebase/messaging/w;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object v2, p2, Lcom/google/firebase/messaging/w;->d:Lcom/google/firebase/messaging/l;

    iput-object v4, p2, Lcom/google/firebase/messaging/w;->e:LJ3/d;

    invoke-static {p1, p2}, Lp0/a;->d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lu1/n;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/messaging/g;

    const/4 p4, 0x2

    invoke-direct {p2, p4}, Lcom/google/firebase/messaging/g;-><init>(I)V

    iput-object p0, p2, Lcom/google/firebase/messaging/g;->d:Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lu1/n;->c(Ljava/util/concurrent/Executor;Lu1/e;)Lu1/n;

    new-instance p1, Lcom/google/firebase/messaging/i;

    invoke-direct {p1, v1}, Lcom/google/firebase/messaging/i;-><init>(I)V

    iput-object p0, p1, Lcom/google/firebase/messaging/i;->d:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Lcom/google/firebase/messaging/t;J)V
    .locals 4

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Li1/a;

    const-string v3, "TAG"

    invoke-direct {v2, v3}, Li1/a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized c()Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    invoke-static {}, LW1/g;->d()LW1/g;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance(LW1/g;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/google/firebase/messaging/g;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/messaging/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/messaging/g;

    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/messaging/g;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/messaging/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(LW1/g;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {p0, v1}, LW1/g;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-string v1, "Firebase Messaging component is not present"

    invoke-static {v1, p0}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->f()Lcom/google/firebase/messaging/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->j(Lcom/google/firebase/messaging/r;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, v0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:LW1/g;

    invoke-static {v1}, Lcom/google/firebase/messaging/l;->b(LW1/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:LA3/D;

    monitor-enter v2

    :try_start_0
    iget-object v3, v2, LA3/D;->e:Ljava/lang/Object;

    check-cast v3, Lo/b;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu1/h;

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    const-string p0, "FirebaseMessaging"

    invoke-static {p0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Joining ongoing request for: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    goto :goto_2

    :cond_3
    :try_start_1
    const-string v3, "FirebaseMessaging"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Making new request for: "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v4, "FirebaseMessaging"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:LJ3/d;

    iget-object v4, v3, LJ3/d;->c:Ljava/lang/Object;

    check-cast v4, LW1/g;

    invoke-static {v4}, Lcom/google/firebase/messaging/l;->b(LW1/g;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "*"

    invoke-virtual {v3, v4, v6, v5}, LJ3/d;->p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lu1/n;

    move-result-object v4

    invoke-virtual {v3, v4}, LJ3/d;->e(Lu1/n;)Lu1/n;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/messaging/c;->f:Lcom/google/firebase/messaging/c;

    new-instance v5, LJ/r0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object p0, v5, LJ/r0;->c:Ljava/lang/Object;

    iput-object v1, v5, LJ/r0;->d:Ljava/lang/Object;

    iput-object v0, v5, LJ/r0;->e:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lu1/n;->i(Ljava/util/concurrent/Executor;Lu1/g;)Lu1/n;

    move-result-object p0

    iget-object v0, v2, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v3, LA3/D;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, LA3/D;-><init>(IZ)V

    iput-object v2, v3, LA3/D;->d:Ljava/lang/Object;

    iput-object v1, v3, LA3/D;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lu1/n;->h(Ljava/util/concurrent/Executor;Lu1/a;)Lu1/n;

    move-result-object v3

    iget-object p0, v2, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Lo/b;

    invoke-virtual {p0, v1, v3}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_2
    :try_start_2
    invoke-static {v3}, Lp0/a;->a(Lu1/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    monitor-exit v2

    throw p0
.end method

.method public final e()Lu1/n;
    .locals 2

    new-instance v0, Lu1/i;

    invoke-direct {v0}, Lu1/i;-><init>()V

    new-instance v1, LG/a;

    invoke-direct {v1}, LG/a;-><init>()V

    iput-object p0, v1, LG/a;->d:Ljava/lang/Object;

    iput-object v0, v1, LG/a;->e:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lu1/i;->a:Lu1/n;

    return-object p0
.end method

.method public final f()Lcom/google/firebase/messaging/r;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->d(Landroid/content/Context;)Lcom/google/firebase/messaging/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:LW1/g;

    invoke-virtual {v1}, LW1/g;->a()V

    const-string v2, "[DEFAULT]"

    iget-object v3, v1, LW1/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LW1/g;->f()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:LW1/g;

    invoke-static {p0}, Lcom/google/firebase/messaging/l;->b(LW1/g;)Ljava/lang/String;

    move-result-object p0

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/google/firebase/messaging/g;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-static {v1, p0}, Lcom/google/firebase/messaging/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v2, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/messaging/r;->b(Ljava/lang/String;)Lcom/google/firebase/messaging/r;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final g(Z)V
    .locals 3

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/android/gms/internal/firebase-auth-api/a4;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a4;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;->b:Ljava/lang/Object;

    check-cast v1, Lh2/b;

    check-cast v1, Lb2/n;

    invoke-virtual {v1, v0}, Lb2/n;->b(Lcom/google/firebase/messaging/e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;->c:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:LW1/g;

    invoke-virtual {v0}, LW1/g;->a()V

    iget-object v0, v0, LW1/g;->a:Landroid/content/Context;

    const-string v1, "com.google.firebase.messaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_init"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->h()V

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->f()Lcom/google/firebase/messaging/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->j(Lcom/google/firebase/messaging/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->i(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    return-void

    :goto_1
    monitor-exit p0

    throw v0

    :cond_1
    return-void
.end method

.method public final declared-synchronized i(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x1e

    add-long v2, p1, p1

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/firebase/messaging/t;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/messaging/t;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    invoke-static {v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->b(Lcom/google/firebase/messaging/t;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(Lcom/google/firebase/messaging/r;)Z
    .locals 6

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/l;

    invoke-virtual {p0}, Lcom/google/firebase/messaging/l;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/firebase/messaging/r;->c:J

    sget-wide v4, Lcom/google/firebase/messaging/r;->d:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object p1, p1, Lcom/google/firebase/messaging/r;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
