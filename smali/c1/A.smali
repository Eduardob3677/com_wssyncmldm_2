.class public final Lc1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Lc1/l;

.field public f:Landroid/content/ComponentName;

.field public final synthetic g:Lc1/y;


# direct methods
.method public constructor <init>(Lc1/y;Lc1/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/A;->g:Lc1/y;

    iput-object p2, p0, Lc1/A;->e:Lc1/l;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lc1/A;->a:Ljava/util/HashMap;

    const/4 p1, 0x2

    iput p1, p0, Lc1/A;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lc1/A;->b:I

    iget-object v0, p0, Lc1/A;->g:Lc1/y;

    iget-object v1, v0, Lc1/y;->d:Lg1/a;

    iget-object v2, p0, Lc1/A;->e:Lc1/l;

    iget-object v3, v0, Lc1/y;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lc1/l;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v2, Lc1/l;->c:I

    invoke-static {v3, v4, p0, v1}, Lg1/a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lc1/A;->c:Z

    if-eqz v1, :cond_0

    iget-object p0, v0, Lc1/y;->c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, v0, Lc1/y;->f:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lc1/A;->b:I

    :try_start_0
    iget-object v0, v0, Lc1/y;->d:Lg1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lc1/A;->g:Lc1/y;

    iget-object v0, v0, Lc1/y;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc1/A;->g:Lc1/y;

    iget-object v1, v1, Lc1/y;->c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    iget-object v2, p0, Lc1/A;->e:Lc1/l;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lc1/A;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lc1/A;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lc1/A;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput v3, p0, Lc1/A;->b:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lc1/A;->g:Lc1/y;

    iget-object v0, v0, Lc1/y;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc1/A;->g:Lc1/y;

    iget-object v1, v1, Lc1/y;->c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    iget-object v2, p0, Lc1/A;->e:Lc1/l;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lc1/A;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lc1/A;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lc1/A;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lc1/A;->b:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
