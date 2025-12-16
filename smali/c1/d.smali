.class public final Lc1/d;
.super Lcom/google/android/gms/internal/firebase-auth-api/Q1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lc1/k;


# direct methods
.method public constructor <init>(Lc1/k;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lc1/d;->b:Lc1/k;

    const/4 p1, 0x3

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Q1;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget-object v0, p0, Lc1/d;->b:Lc1/k;

    iget-object v0, v0, Lc1/k;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v1, :cond_2

    iget p0, p1, Landroid/os/Message;->what:I

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lc1/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lc1/c;->a()V

    :cond_1
    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lc1/d;->b:Lc1/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_7

    :cond_4
    :goto_0
    iget-object v0, p0, Lc1/d;->b:Lc1/k;

    iget-object v7, v0, Lc1/k;->e:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v0, v0, Lc1/k;->l:I

    if-eq v0, v4, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v3

    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_7

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lc1/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lc1/c;->a()V

    return-void

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-ne v0, v5, :cond_d

    iget-object v0, p0, Lc1/d;->b:Lc1/k;

    new-instance v2, LZ0/a;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v2, p1}, LZ0/a;-><init>(I)V

    iput-object v2, v0, Lc1/k;->q:LZ0/a;

    iget-boolean p1, v0, Lc1/k;->r:Z

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lc1/k;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    :try_start_1
    invoke-virtual {v0}, Lc1/k;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p1, p0, Lc1/d;->b:Lc1/k;

    iget-boolean v0, p1, Lc1/k;->r:Z

    if-nez v0, :cond_b

    invoke-virtual {p1, v1, v7}, Lc1/k;->m(ILandroid/os/IInterface;)V

    return-void

    :catch_0
    :cond_b
    :goto_3
    iget-object p1, p0, Lc1/d;->b:Lc1/k;

    iget-object v0, p1, Lc1/k;->q:LZ0/a;

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    new-instance v0, LZ0/a;

    invoke-direct {v0, v8}, LZ0/a;-><init>(I)V

    :goto_4
    iget-object p1, p1, Lc1/k;->h:Lc1/b;

    invoke-interface {p1, v0}, Lc1/b;->d(LZ0/a;)V

    iget-object p0, p0, Lc1/d;->b:Lc1/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_d
    if-ne v0, v6, :cond_f

    iget-object p1, p0, Lc1/d;->b:Lc1/k;

    iget-object v0, p1, Lc1/k;->q:LZ0/a;

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    new-instance v0, LZ0/a;

    invoke-direct {v0, v8}, LZ0/a;-><init>(I)V

    :goto_5
    iget-object p1, p1, Lc1/k;->h:Lc1/b;

    invoke-interface {p1, v0}, Lc1/b;->d(LZ0/a;)V

    iget-object p0, p0, Lc1/d;->b:Lc1/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_f
    if-ne v0, v1, :cond_11

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_10

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    :cond_10
    new-instance v0, LZ0/a;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v7}, LZ0/a;-><init>(ILandroid/app/PendingIntent;)V

    iget-object p1, p0, Lc1/d;->b:Lc1/k;

    iget-object p1, p1, Lc1/k;->h:Lc1/b;

    invoke-interface {p1, v0}, Lc1/b;->d(LZ0/a;)V

    iget-object p0, p0, Lc1/d;->b:Lc1/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_11
    const/4 v1, 0x6

    if-ne v0, v1, :cond_13

    iget-object p1, p0, Lc1/d;->b:Lc1/k;

    invoke-virtual {p1, v6, v7}, Lc1/k;->m(ILandroid/os/IInterface;)V

    iget-object p1, p0, Lc1/d;->b:Lc1/k;

    iget-object p1, p1, Lc1/k;->m:Lc1/w;

    if-eqz p1, :cond_12

    iget-object p1, p1, Lc1/w;->c:Ljava/lang/Object;

    check-cast p1, La1/e;

    invoke-interface {p1}, La1/e;->f()V

    :cond_12
    iget-object p1, p0, Lc1/d;->b:Lc1/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p0, p0, Lc1/d;->b:Lc1/k;

    invoke-static {p0, v6, v3, v7}, Lc1/k;->n(Lc1/k;IILandroid/os/IInterface;)Z

    return-void

    :cond_13
    if-ne v0, v4, :cond_14

    iget-object p0, p0, Lc1/d;->b:Lc1/k;

    invoke-virtual {p0}, Lc1/k;->l()Z

    move-result p0

    if-nez p0, :cond_14

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lc1/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lc1/c;->a()V

    return-void

    :cond_14
    iget p0, p1, Landroid/os/Message;->what:I

    if-eq p0, v4, :cond_16

    if-eq p0, v3, :cond_16

    if-ne p0, v2, :cond_15

    goto :goto_6

    :cond_15
    const-string p1, "GmsClient"

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Don\'t know how to handle message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_16
    :goto_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lc1/c;

    monitor-enter p0

    :try_start_2
    iget-object p1, p0, Lc1/c;->a:Ljava/lang/Object;

    iget-boolean v0, p0, Lc1/c;->b:Z

    if-eqz v0, :cond_17

    const-string v0, "GmsClient"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Callback proxy "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " being reused. This is not safe."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_17
    :goto_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_18

    invoke-virtual {p0, p1}, Lc1/c;->c(Ljava/lang/Object;)V

    :cond_18
    monitor-enter p0

    :try_start_3
    iput-boolean v3, p0, Lc1/c;->b:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0}, Lc1/c;->a()V

    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method
