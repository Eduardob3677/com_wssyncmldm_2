.class public final Lc1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:I

.field public final synthetic b:Lc1/k;


# direct methods
.method public constructor <init>(Lc1/k;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/f;->b:Lc1/k;

    iput p2, p0, Lc1/f;->a:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 p1, 0x0

    if-nez p2, :cond_2

    iget-object p0, p0, Lc1/f;->b:Lc1/k;

    iget-object v0, p0, Lc1/k;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p2, p0, Lc1/k;->l:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    move p1, v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lc1/k;->r:Z

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    iget-object p2, p0, Lc1/k;->d:Lc1/d;

    iget-object p0, p0, Lc1/k;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v0, 0x10

    invoke-virtual {p2, p1, p0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    iget-object v0, p0, Lc1/f;->b:Lc1/k;

    iget-object v0, v0, Lc1/k;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lc1/f;->b:Lc1/k;

    const-string v2, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_3

    instance-of v3, v2, Lc1/r;

    if-eqz v3, :cond_3

    check-cast v2, Lc1/r;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    new-instance v2, Lc1/q;

    invoke-direct {v2, p2}, Lc1/q;-><init>(Landroid/os/IBinder;)V

    :goto_1
    iput-object v2, v1, Lc1/k;->g:Lc1/r;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p2, p0, Lc1/f;->b:Lc1/k;

    iget p0, p0, Lc1/f;->a:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lc1/g;

    invoke-direct {v0, p2, p1}, Lc1/g;-><init>(Lc1/k;I)V

    iget-object p1, p2, Lc1/k;->d:Lc1/d;

    const/4 p2, 0x7

    const/4 v1, -0x1

    invoke-virtual {p1, p2, p0, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lc1/f;->b:Lc1/k;

    iget-object p1, p1, Lc1/k;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lc1/f;->b:Lc1/k;

    const/4 v1, 0x0

    iput-object v1, v0, Lc1/k;->g:Lc1/r;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lc1/k;->d:Lc1/d;

    iget p0, p0, Lc1/f;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-virtual {p1, v1, p0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
