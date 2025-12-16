.class public abstract Lc1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/b;


# static fields
.field public static final w:[LZ0/c;


# instance fields
.field public a:Lc1/m;

.field public final b:Landroid/content/Context;

.field public final c:Lc1/y;

.field public final d:Lc1/d;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Lc1/r;

.field public h:Lc1/b;

.field public i:Landroid/os/IInterface;

.field public final j:Ljava/util/ArrayList;

.field public k:Lc1/f;

.field public l:I

.field public final m:Lc1/w;

.field public final n:Lc1/w;

.field public final o:I

.field public final p:Ljava/lang/String;

.field public q:LZ0/a;

.field public r:Z

.field public volatile s:Lc1/x;

.field public final t:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final u:Ljava/util/Set;

.field public final v:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [LZ0/c;

    sput-object v0, Lc1/k;->w:[LZ0/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILJ3/c;La1/e;La1/f;)V
    .locals 4

    sget-object v0, Lc1/y;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc1/y;->h:Lc1/y;

    if-nez v1, :cond_0

    new-instance v1, Lc1/y;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc1/y;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc1/y;->h:Lc1/y;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lc1/y;->h:Lc1/y;

    sget-object v1, LZ0/e;->b:Ljava/lang/Object;

    invoke-static {p5}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p6}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v1, Lc1/w;

    invoke-direct {v1, p5}, Lc1/w;-><init>(Ljava/lang/Object;)V

    new-instance p5, Lc1/w;

    invoke-direct {p5, p6}, Lc1/w;-><init>(Ljava/lang/Object;)V

    iget-object p6, p4, LJ3/c;->h:Ljava/lang/Object;

    check-cast p6, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lc1/k;->e:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lc1/k;->f:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc1/k;->j:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput v2, p0, Lc1/k;->l:I

    const/4 v2, 0x0

    iput-object v2, p0, Lc1/k;->q:LZ0/a;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lc1/k;->r:Z

    iput-object v2, p0, Lc1/k;->s:Lc1/x;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lc1/k;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v2, "Context must not be null"

    invoke-static {v2, p1}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lc1/k;->b:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p1, p2}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Supervisor must not be null"

    invoke-static {p1, v0}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lc1/k;->c:Lc1/y;

    new-instance p1, Lc1/d;

    invoke-direct {p1, p0, p2}, Lc1/d;-><init>(Lc1/k;Landroid/os/Looper;)V

    iput-object p1, p0, Lc1/k;->d:Lc1/d;

    iput p3, p0, Lc1/k;->o:I

    iput-object v1, p0, Lc1/k;->m:Lc1/w;

    iput-object p5, p0, Lc1/k;->n:Lc1/w;

    iput-object p6, p0, Lc1/k;->p:Ljava/lang/String;

    iget-object p1, p4, LJ3/c;->d:Ljava/lang/Object;

    check-cast p1, Landroid/accounts/Account;

    iput-object p1, p0, Lc1/k;->v:Landroid/accounts/Account;

    iget-object p1, p4, LJ3/c;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iput-object p1, p0, Lc1/k;->u:Ljava/util/Set;

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static n(Lc1/k;IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v0, p0, Lc1/k;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc1/k;->l:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Lc1/k;->m(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract c(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lc1/k;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lc1/k;->j:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc1/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lc1/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc1/c;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v3, v4, Lc1/c;->a:Ljava/lang/Object;

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lc1/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lc1/k;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object v3, p0, Lc1/k;->g:Lc1/r;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lc1/k;->m(ILandroid/os/IInterface;)V

    return-void

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public e()[LZ0/c;
    .locals 0

    sget-object p0, Lc1/k;->w:[LZ0/c;

    return-object p0
.end method

.method public f()Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final g(Lc1/o;Ljava/util/Set;)V
    .locals 4

    invoke-virtual {p0}, Lc1/k;->f()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lc1/j;

    iget v2, p0, Lc1/k;->o:I

    invoke-direct {v1, v2}, Lc1/j;-><init>(I)V

    iget-object v2, p0, Lc1/k;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc1/j;->f:Ljava/lang/String;

    iput-object v0, v1, Lc1/j;->i:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lc1/j;->h:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual {p0}, Lc1/k;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lc1/k;->v:Landroid/accounts/Account;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object p2, v1, Lc1/j;->j:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/a;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/a;->b:Landroid/os/IBinder;

    iput-object p1, v1, Lc1/j;->g:Landroid/os/IBinder;

    :cond_2
    sget-object p1, Lc1/k;->w:[LZ0/c;

    iput-object p1, v1, Lc1/j;->k:[LZ0/c;

    invoke-virtual {p0}, Lc1/k;->e()[LZ0/c;

    move-result-object p1

    iput-object p1, v1, Lc1/j;->l:[LZ0/c;

    const/4 p1, 0x1

    :try_start_0
    iget-object p2, p0, Lc1/k;->f:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lc1/k;->g:Lc1/r;

    if-eqz v0, :cond_3

    new-instance v2, Lc1/e;

    iget-object v3, p0, Lc1/k;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lc1/e;-><init>(Lc1/k;I)V

    invoke-interface {v0, v2, v1}, Lc1/r;->e(Lc1/p;Lc1/j;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    const-string v0, "GmsClient"

    const-string v1, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p2

    goto :goto_5

    :goto_3
    const-string v0, "GmsClient"

    const-string v1, "IGmsServiceBroker.getService failed"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lc1/k;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    new-instance v0, Lc1/h;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lc1/h;-><init>(Lc1/k;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p0, p0, Lc1/k;->d:Lc1/d;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_4
    throw p0

    :goto_5
    const-string v0, "GmsClient"

    const-string v1, "IGmsServiceBroker.getService failed"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lc1/k;->d:Lc1/d;

    iget-object p0, p0, Lc1/k;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final h()Landroid/os/IInterface;
    .locals 3

    iget-object v0, p0, Lc1/k;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc1/k;->l:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lc1/k;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc1/k;->i:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v2, v1}, Lc1/D;->g(Ljava/lang/String;Z)V

    iget-object p0, p0, Lc1/k;->i:Landroid/os/IInterface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public k()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms"

    return-object p0
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lc1/k;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lc1/k;->l:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m(ILandroid/os/IInterface;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lc1/k;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput p1, p0, Lc1/k;->l:I

    iput-object p2, p0, Lc1/k;->i:Landroid/os/IInterface;

    if-eq p1, v1, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    if-eq p1, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_3

    :cond_3
    iget-object p1, p0, Lc1/k;->k:Lc1/f;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lc1/k;->a:Lc1/m;

    if-eqz p1, :cond_5

    const-string p2, "GmsClient"

    iget-object v1, p1, Lc1/m;->a:Ljava/lang/String;

    iget-object p1, p1, Lc1/m;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc1/k;->c:Lc1/y;

    iget-object p2, p0, Lc1/k;->a:Lc1/m;

    iget-object v1, p2, Lc1/m;->a:Ljava/lang/String;

    iget-object p2, p2, Lc1/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lc1/k;->k:Lc1/f;

    iget-object v4, p0, Lc1/k;->p:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, p0, Lc1/k;->b:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    invoke-virtual {p1, v1, p2, v2}, Lc1/y;->a(Ljava/lang/String;Ljava/lang/String;Lc1/f;)V

    iget-object p1, p0, Lc1/k;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_5
    :goto_2
    new-instance p1, Lc1/f;

    iget-object p2, p0, Lc1/k;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lc1/f;-><init>(Lc1/k;I)V

    iput-object p1, p0, Lc1/k;->k:Lc1/f;

    new-instance p1, Lc1/m;

    invoke-virtual {p0}, Lc1/k;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lc1/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lc1/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lc1/k;->a:Lc1/m;

    iget-object p1, p0, Lc1/k;->c:Lc1/y;

    iget-object v2, p0, Lc1/k;->k:Lc1/f;

    iget-object v4, p0, Lc1/k;->p:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, p0, Lc1/k;->b:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    iget-object v4, p0, Lc1/k;->a:Lc1/m;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lc1/l;

    invoke-direct {v4, v1, p2, v0}, Lc1/l;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v4, v2}, Lc1/y;->b(Lc1/l;Lc1/f;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "GmsClient"

    iget-object p2, p0, Lc1/k;->a:Lc1/m;

    iget-object v0, p2, Lc1/m;->a:Ljava/lang/String;

    iget-object p2, p2, Lc1/m;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unable to connect to service: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc1/k;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    new-instance p2, Lc1/g;

    const/16 v0, 0x10

    invoke-direct {p2, p0, v0}, Lc1/g;-><init>(Lc1/k;I)V

    iget-object p0, p0, Lc1/k;->d:Lc1/d;

    const/4 v0, 0x7

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lc1/k;->k:Lc1/f;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lc1/k;->c:Lc1/y;

    iget-object v0, p0, Lc1/k;->a:Lc1/m;

    iget-object v1, v0, Lc1/m;->a:Ljava/lang/String;

    iget-object v0, v0, Lc1/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lc1/k;->p:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p0, Lc1/k;->b:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    invoke-virtual {p2, v1, v0, p1}, Lc1/y;->a(Ljava/lang/String;Ljava/lang/String;Lc1/f;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc1/k;->k:Lc1/f;

    :cond_9
    :goto_3
    monitor-exit v3

    return-void

    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
