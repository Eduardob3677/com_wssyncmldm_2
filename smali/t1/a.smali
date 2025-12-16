.class public final Lt1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static k:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final a:Lt1/a;

.field public final b:Landroid/os/PowerManager$WakeLock;

.field public final c:Landroid/os/WorkSource;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/Context;

.field public g:Z

.field public final h:Ljava/util/HashMap;

.field public i:I

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "wake:com.google.firebase.iid.WakeLockHolder"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lt1/a;->a:Lt1/a;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lt1/a;->g:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lt1/a;->h:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lt1/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v3, "WakeLock: wakeLockName must not be empty"

    invoke-static {v0, v3}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lt1/a;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lt1/a;->f:Landroid/content/Context;

    const-string v3, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "*gcore*:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_0
    iput-object v3, p0, Lt1/a;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lt1/a;->e:Ljava/lang/String;

    :goto_1
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lt1/a;->b:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lh1/c;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Lj1/a;->a(Landroid/content/Context;)LL0/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, LL0/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    sget v0, Lh1/b;->a:I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v0, "WorkSourceUtil"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    if-nez v1, :cond_5

    goto/16 :goto_4

    :cond_5
    :try_start_0
    invoke-static {p1}, Lj1/a;->a(Landroid/content/Context;)LL0/c;

    move-result-object p1

    iget-object p1, p1, LL0/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v3, "Could not get applicationInfo from package: "

    if-eqz p1, :cond_6

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    const-string v3, "Unable to assign blame through WorkSource"

    sget-object v4, Lh1/c;->b:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_8

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-static {v0, v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_8
    sget-object v1, Lh1/c;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_a

    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-static {v0, v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v3, "Could not find package: "

    if-eqz p1, :cond_9

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    iput-object v5, p0, Lt1/a;->c:Landroid/os/WorkSource;

    if-eqz v5, :cond_d

    iget-object p1, p0, Lt1/a;->f:Landroid/content/Context;

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {p1}, Lj1/a;->a(Landroid/content/Context;)LL0/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, LL0/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v5, v5}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    :try_start_3
    iget-object p0, p0, Lt1/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    const-string p1, "WakeLock"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_5
    sget-object p0, Lt1/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p0, :cond_f

    const-class p0, Lf1/a;

    monitor-enter p0

    :try_start_4
    sget-object p1, Lf1/a;->a:LZ0/h;

    if-nez p1, :cond_e

    new-instance p1, LZ0/h;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, LZ0/h;-><init>(I)V

    sput-object p1, Lf1/a;->a:LZ0/h;

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_e
    :goto_6
    sget-object p1, Lf1/a;->a:LZ0/h;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    invoke-static {p0}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    sput-object p0, Lt1/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_8

    :goto_7
    monitor-exit p0

    throw p1

    :cond_f
    :goto_8
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 13

    iget-object v0, p0, Lt1/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-boolean v0, p0, Lt1/a;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    iget-object v0, p0, Lt1/a;->a:Lt1/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt1/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lt1/a;->i:I

    if-lez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lt1/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lt1/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput v2, p0, Lt1/a;->i:I

    :cond_2
    iget-boolean v1, p0, Lt1/a;->g:Z

    const/4 v7, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lt1/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    if-nez v1, :cond_3

    iget-object v1, p0, Lt1/a;->h:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_4
    iget-boolean v1, p0, Lt1/a;->g:Z

    if-nez v1, :cond_5

    iget v1, p0, Lt1/a;->i:I

    if-nez v1, :cond_5

    :goto_1
    iget-object v3, p0, Lt1/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lt1/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1, v7}, LL2/b;->o(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lt1/a;->e:Ljava/lang/String;

    iget v8, p0, Lt1/a;->d:I

    invoke-virtual {p0}, Lt1/a;->c()Ljava/util/List;

    move-result-object v9

    const/4 v5, 0x7

    move-wide v10, p1

    invoke-static/range {v3 .. v11}, LW1/a;->c0(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget v1, p0, Lt1/a;->i:I

    add-int/2addr v1, v12

    iput v1, p0, Lt1/a;->i:I

    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt1/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    sget-object v0, Lt1/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, LB1/h;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0}, LB1/h;-><init>(ILjava/lang/Object;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_6
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b()V
    .locals 12

    iget-object v0, p0, Lt1/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "WakeLock"

    iget-object v1, p0, Lt1/a;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " release without a matched acquire!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lt1/a;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_1
    iget-object v0, p0, Lt1/a;->a:Lt1/a;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lt1/a;->g:Z

    const/4 v6, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lt1/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v11, :cond_3

    iget-object v1, p0, Lt1/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_4
    :goto_0
    iget-boolean v1, p0, Lt1/a;->g:Z

    if-nez v1, :cond_5

    iget v1, p0, Lt1/a;->i:I

    if-ne v1, v11, :cond_5

    :goto_1
    iget-object v2, p0, Lt1/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lt1/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1, v6}, LL2/b;->o(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lt1/a;->e:Ljava/lang/String;

    iget v7, p0, Lt1/a;->d:I

    invoke-virtual {p0}, Lt1/a;->c()Ljava/util/List;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/16 v4, 0x8

    invoke-static/range {v2 .. v10}, LW1/a;->c0(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget v1, p0, Lt1/a;->i:I

    sub-int/2addr v1, v11

    iput v1, p0, Lt1/a;->i:I

    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lt1/a;->d()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final c()Ljava/util/List;
    .locals 8

    iget-object p0, p0, Lt1/a;->c:Landroid/os/WorkSource;

    const-string v0, "Unable to assign blame through WorkSource"

    const-string v1, "WorkSourceUtil"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    sget-object v4, Lh1/c;->a:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    move v4, v3

    goto :goto_1

    :cond_1
    sget-object v4, Lh1/c;->c:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    if-nez v4, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_5

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v3, v4, :cond_6

    sget-object v6, Lh1/c;->d:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_3

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    invoke-static {v1, v0, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v6, v2

    :goto_3
    sget v7, Lh1/b;->a:I

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move-object p0, v5

    :goto_5
    return-object p0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lt1/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lt1/a;->e:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, " was already released!"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "WakeLock"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    goto :goto_1

    :cond_0
    throw v1

    :cond_1
    :goto_1
    return-void
.end method
