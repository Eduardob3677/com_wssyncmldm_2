.class public final LG/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, LG/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La2/c;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LG/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/a;->e:Ljava/lang/Object;

    invoke-static {p2}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p2, p0, LG/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/16 p3, 0x10

    iput p3, p0, LG/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/a;->e:Ljava/lang/Object;

    iput-object p2, p0, LG/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LG/a;->c:I

    iput-object p1, p0, LG/a;->d:Ljava/lang/Object;

    iput-object p3, p0, LG/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p3, p0, LG/a;->c:I

    iput-object p1, p0, LG/a;->e:Ljava/lang/Object;

    iput-object p2, p0, LG/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lu1/l;

    iget-object v0, v0, Lu1/l;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v1, Lu1/l;

    iget-object v1, v1, Lu1/l;->f:Ljava/lang/Object;

    check-cast v1, Lu1/e;

    if-eqz v1, :cond_0

    iget-object p0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast p0, Lu1/h;

    invoke-virtual {p0}, Lu1/h;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lu1/e;->L(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, LG/a;->c:I

    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LS/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LS/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast v0, Lu1/n;

    :try_start_0
    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lu1/n;->k(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, Lu1/n;->j(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lu1/l;

    :try_start_1
    iget-object v1, v0, Lu1/l;->e:Ljava/lang/Object;

    check-cast v1, Lu1/g;

    iget-object p0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast p0, Lu1/h;

    invoke-virtual {p0}, Lu1/h;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lu1/g;->a(Ljava/lang/Object;)Lu1/n;

    move-result-object p0
    :try_end_1
    .catch Lu1/f; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v1, Lu1/j;->b:Le/J;

    invoke-virtual {p0, v1, v0}, Lu1/n;->c(Ljava/util/concurrent/Executor;Lu1/e;)Lu1/n;

    invoke-virtual {p0, v1, v0}, Lu1/n;->b(Ljava/util/concurrent/Executor;Lu1/d;)Lu1/n;

    new-instance v2, Lu1/l;

    invoke-direct {v2, v1, v0}, Lu1/l;-><init>(Le/J;Lu1/b;)V

    iget-object v0, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {v0, v2}, LR3/m;->f(Lu1/m;)V

    invoke-virtual {p0}, Lu1/n;->m()V

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_1
    invoke-virtual {v0, p0}, Lu1/l;->J(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_3
    invoke-virtual {v0}, Lu1/l;->H()V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {v0, p0}, Lu1/l;->J(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v0, p0}, Lu1/l;->J(Ljava/lang/Exception;)V

    :goto_3
    return-void

    :pswitch_2
    invoke-direct {p0}, LG/a;->a()V

    return-void

    :pswitch_3
    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lu1/l;

    iget-object v0, v0, Lu1/l;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v1, Lu1/l;

    iget-object v1, v1, Lu1/l;->f:Ljava/lang/Object;

    check-cast v1, Lu1/d;

    if-eqz v1, :cond_2

    iget-object p0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast p0, Lu1/h;

    invoke-virtual {p0}, Lu1/h;->d()Ljava/lang/Exception;

    move-result-object p0

    invoke-interface {v1, p0}, Lu1/d;->J(Ljava/lang/Exception;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_4
    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lu1/l;

    iget-object v0, v0, Lu1/l;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v1, Lu1/l;

    iget-object v1, v1, Lu1/l;->f:Ljava/lang/Object;

    check-cast v1, Lu1/c;

    if-eqz v1, :cond_3

    iget-object p0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast p0, Lu1/h;

    invoke-interface {v1, p0}, Lu1/c;->onComplete(Lu1/h;)V

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_3
    :goto_6
    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_5
    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lu1/k;

    :try_start_4
    iget-object v1, v0, Lu1/k;->e:Lu1/a;

    iget-object p0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast p0, Lu1/h;

    invoke-interface {v1, p0}, Lu1/a;->H(Lu1/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu1/h;
    :try_end_4
    .catch Lu1/f; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lu1/k;->J(Ljava/lang/Exception;)V

    goto :goto_a

    :cond_4
    sget-object v1, Lu1/j;->b:Le/J;

    invoke-virtual {p0, v1, v0}, Lu1/h;->c(Ljava/util/concurrent/Executor;Lu1/e;)Lu1/n;

    invoke-virtual {p0, v1, v0}, Lu1/h;->b(Ljava/util/concurrent/Executor;Lu1/d;)Lu1/n;

    check-cast p0, Lu1/n;

    new-instance v2, Lu1/l;

    invoke-direct {v2, v1, v0}, Lu1/l;-><init>(Le/J;Lu1/b;)V

    iget-object v0, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {v0, v2}, LR3/m;->f(Lu1/m;)V

    invoke-virtual {p0}, Lu1/n;->m()V

    goto :goto_a

    :catch_4
    move-exception p0

    goto :goto_8

    :catch_5
    move-exception p0

    goto :goto_9

    :goto_8
    iget-object v0, v0, Lu1/k;->f:Lu1/n;

    invoke-virtual {v0, p0}, Lu1/n;->j(Ljava/lang/Exception;)V

    goto :goto_a

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lu1/k;->f:Lu1/n;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {v0, p0}, Lu1/n;->j(Ljava/lang/Exception;)V

    goto :goto_a

    :cond_5
    iget-object v0, v0, Lu1/k;->f:Lu1/n;

    invoke-virtual {v0, p0}, Lu1/n;->j(Ljava/lang/Exception;)V

    :goto_a
    return-void

    :pswitch_6
    iget-object v0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast v0, Lu1/h;

    check-cast v0, Lu1/n;

    iget-boolean v0, v0, Lu1/n;->d:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast p0, Lu1/k;

    iget-object p0, p0, Lu1/k;->f:Lu1/n;

    invoke-virtual {p0}, Lu1/n;->l()V

    goto :goto_d

    :cond_6
    :try_start_5
    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lu1/k;

    iget-object v0, v0, Lu1/k;->e:Lu1/a;

    iget-object v1, p0, LG/a;->d:Ljava/lang/Object;

    check-cast v1, Lu1/h;

    invoke-interface {v0, v1}, Lu1/a;->H(Lu1/h;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Lu1/f; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast p0, Lu1/k;

    iget-object p0, p0, Lu1/k;->f:Lu1/n;

    invoke-virtual {p0, v0}, Lu1/n;->k(Ljava/lang/Object;)V

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_c

    :goto_b
    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast p0, Lu1/k;

    iget-object p0, p0, Lu1/k;->f:Lu1/n;

    invoke-virtual {p0, v0}, Lu1/n;->j(Ljava/lang/Exception;)V

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_7

    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast p0, Lu1/k;

    iget-object p0, p0, Lu1/k;->f:Lu1/n;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lu1/n;->j(Ljava/lang/Exception;)V

    goto :goto_d

    :cond_7
    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast p0, Lu1/k;

    iget-object p0, p0, Lu1/k;->f:Lu1/n;

    invoke-virtual {p0, v0}, Lu1/n;->j(Ljava/lang/Exception;)V

    :goto_d
    return-void

    :pswitch_7
    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lk/k;

    iget-object v3, v0, Lk/k;->e:Lj/i;

    if-eqz v3, :cond_8

    iget-object v4, v3, Lj/i;->e:Lj/g;

    if-eqz v4, :cond_8

    invoke-interface {v4, v3}, Lj/g;->c(Lj/i;)V

    :cond_8
    iget-object v3, v0, Lk/k;->j:Lj/w;

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object p0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast p0, Lk/f;

    invoke-virtual {p0}, Lj/s;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_e

    :cond_9
    iget-object v3, p0, Lj/s;->f:Landroid/view/View;

    if-nez v3, :cond_a

    goto :goto_f

    :cond_a
    invoke-virtual {p0, v2, v2}, Lj/s;->d(ZZ)V

    :goto_e
    iput-object p0, v0, Lk/k;->u:Lk/f;

    :cond_b
    :goto_f
    iput-object v1, v0, Lk/k;->w:LG/a;

    return-void

    :pswitch_8
    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lu1/i;

    iget-object p0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lu1/i;->b(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    invoke-virtual {v0, p0}, Lu1/i;->a(Ljava/lang/Exception;)V

    :goto_10
    return-void

    :pswitch_9
    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lb1/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast p0, Ls1/g;

    iget-object v1, p0, Ls1/g;->d:LZ0/a;

    iget v2, v1, LZ0/a;->d:I

    if-nez v2, :cond_f

    iget-object p0, p0, Ls1/g;->e:Lc1/u;

    iget-object v1, p0, Lc1/u;->e:LZ0/a;

    iget v2, v1, LZ0/a;->d:I

    if-nez v2, :cond_e

    iget-object v1, v0, Lb1/q;->g:Lb1/e;

    iget-object p0, p0, Lc1/u;->d:Landroid/os/IBinder;

    invoke-static {p0}, Lc1/a;->q(Landroid/os/IBinder;)Lc1/o;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_d

    iget-object v2, v0, Lb1/q;->d:Ljava/util/Set;

    if-nez v2, :cond_c

    goto :goto_11

    :cond_c
    iput-object p0, v1, Lb1/e;->f:Ljava/lang/Object;

    iput-object v2, v1, Lb1/e;->g:Ljava/lang/Object;

    iget-boolean v3, v1, Lb1/e;->c:Z

    if-eqz v3, :cond_10

    iget-object v1, v1, Lb1/e;->d:Ljava/lang/Object;

    check-cast v1, La1/b;

    check-cast v1, Lc1/k;

    invoke-virtual {v1, p0, v2}, Lc1/k;->g(Lc1/o;Ljava/util/Set;)V

    goto :goto_12

    :cond_d
    :goto_11
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GoogleApiManager"

    const-string v3, "Received null response from onSignInSuccess"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, LZ0/a;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, LZ0/a;-><init>(I)V

    invoke-virtual {v1, p0}, Lb1/e;->b(LZ0/a;)V

    goto :goto_12

    :cond_e
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "SignInCoordinator"

    invoke-static {v3, p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v0, Lb1/q;->g:Lb1/e;

    invoke-virtual {p0, v1}, Lb1/e;->b(LZ0/a;)V

    iget-object p0, v0, Lb1/q;->f:Ls1/a;

    check-cast p0, Lc1/k;

    invoke-virtual {p0}, Lc1/k;->d()V

    goto :goto_13

    :cond_f
    iget-object p0, v0, Lb1/q;->g:Lb1/e;

    invoke-virtual {p0, v1}, Lb1/e;->b(LZ0/a;)V

    :cond_10
    :goto_12
    iget-object p0, v0, Lb1/q;->f:Ls1/a;

    check-cast p0, Lc1/k;

    invoke-virtual {p0}, Lc1/k;->d()V

    :goto_13
    return-void

    :pswitch_a
    iget-object v0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast v0, Lb1/e;

    iget-object v3, v0, Lb1/e;->h:Ljava/lang/Object;

    check-cast v3, Lb1/g;

    iget-object v3, v3, Lb1/g;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lb1/e;->e:Ljava/lang/Object;

    check-cast v4, Lb1/a;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb1/d;

    if-nez v3, :cond_11

    goto :goto_15

    :cond_11
    iget-object p0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast p0, LZ0/a;

    iget v4, p0, LZ0/a;->d:I

    if-nez v4, :cond_14

    iput-boolean v2, v0, Lb1/e;->c:Z

    iget-object p0, v0, Lb1/e;->d:Ljava/lang/Object;

    check-cast p0, La1/b;

    invoke-interface {p0}, La1/b;->a()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-boolean v1, v0, Lb1/e;->c:Z

    if-eqz v1, :cond_15

    iget-object v1, v0, Lb1/e;->f:Ljava/lang/Object;

    check-cast v1, Lc1/o;

    if-eqz v1, :cond_15

    iget-object v0, v0, Lb1/e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    check-cast p0, Lc1/k;

    invoke-virtual {p0, v1, v0}, Lc1/k;->g(Lc1/o;Ljava/util/Set;)V

    goto :goto_15

    :cond_12
    :try_start_7
    move-object v0, p0

    check-cast v0, Lc1/k;

    invoke-virtual {v0}, Lc1/k;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v0, v0, Lc1/k;->u:Ljava/util/Set;

    goto :goto_14

    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_14
    check-cast p0, Lc1/k;

    invoke-virtual {p0, v1, v0}, Lc1/k;->g(Lc1/o;Ljava/util/Set;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_15

    :catch_9
    move-exception p0

    const-string v0, "GoogleApiManager"

    const-string v1, "Failed to get service from broker. "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, LZ0/a;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, LZ0/a;-><init>(I)V

    invoke-virtual {v3, p0}, Lb1/d;->s(LZ0/a;)V

    goto :goto_15

    :cond_14
    invoke-virtual {v3, p0}, Lb1/d;->s(LZ0/a;)V

    :cond_15
    :goto_15
    return-void

    :pswitch_b
    iget-object v1, p0, LG/a;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, LW1/g;->e(Ljava/lang/String;)LW1/g;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(LW1/g;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    iget-object v2, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    if-eqz v2, :cond_16

    iget-object v3, v2, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->f()Z

    iget-object v3, v3, Lcom/google/android/gms/internal/firebase-auth-api/y4;->c:Ljava/lang/String;

    new-instance v4, LY1/t;

    invoke-direct {v4, v1, v0}, LY1/t;-><init>(Lcom/google/firebase/auth/FirebaseAuth;I)V

    iget-object v5, v1, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/firebase/messaging/p;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/y3;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/y3;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/firebase/auth/FirebaseAuth;->a:LW1/g;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d(LW1/g;)V

    iput-object v2, v6, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iput-object v4, v6, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    iput-object v4, v6, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    invoke-virtual {v5}, Lcom/google/firebase/messaging/p;->Q()Lcom/google/android/gms/internal/firebase-auth-api/u3;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/u3;->a:La1/d;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/y3;->a()LR3/m;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, La1/d;->b(ILR3/m;)Lu1/n;

    move-result-object v1

    sget-object v2, La2/c;->e:LA/d;

    const-string v3, "Token refreshing started"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, LA/d;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ls2/c;

    invoke-direct {v0, p0}, Ls2/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lu1/j;->a:LL0/i;

    invoke-virtual {v1, p0, v0}, Lu1/n;->b(Ljava/util/concurrent/Executor;Lu1/d;)Lu1/n;

    :cond_16
    return-void

    :pswitch_c
    iget-object v0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast v0, LY0/h;

    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast p0, LY0/i;

    iget p0, p0, LY0/i;->a:I

    monitor-enter v0

    :try_start_8
    iget-object v2, v0, LY0/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY0/i;

    if-eqz v2, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Timing out request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MessengerIpcClient"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, LY0/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->remove(I)V

    new-instance p0, LW1/h;

    const-string v3, "Timed out waiting for response"

    invoke-direct {p0, v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, p0}, LY0/i;->c(LW1/h;)V

    invoke-virtual {v0}, LY0/h;->c()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_17
    monitor-exit v0

    goto :goto_16

    :catchall_2
    move-exception p0

    goto :goto_17

    :goto_16
    return-void

    :goto_17
    monitor-exit v0

    throw p0

    :pswitch_d
    iget-object v1, p0, LG/a;->d:Ljava/lang/Object;

    check-cast v1, LY0/h;

    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    monitor-enter v1

    if-nez p0, :cond_18

    :try_start_9
    const-string p0, "Null service connection"

    invoke-virtual {v1, v0, p0}, LY0/h;->a(ILjava/lang/String;)V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_18

    :catchall_3
    move-exception p0

    goto :goto_19

    :cond_18
    :try_start_a
    new-instance v3, LA3/D;

    invoke-direct {v3, p0}, LA3/D;-><init>(Landroid/os/IBinder;)V

    iput-object v3, v1, LY0/h;->c:LA3/D;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 p0, 0x2

    :try_start_b
    iput p0, v1, LY0/h;->a:I

    iget-object p0, v1, LY0/h;->f:LY0/j;

    iget-object p0, p0, LY0/j;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, LY0/g;

    invoke-direct {v0, v1, v2}, LY0/g;-><init>(LY0/h;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v1

    goto :goto_18

    :catch_a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, LY0/h;->a(ILjava/lang/String;)V

    monitor-exit v1

    :goto_18
    return-void

    :goto_19
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p0

    :pswitch_e
    iget-object v0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast v0, LI/a;

    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    invoke-interface {v0, p0}, LI/a;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    iget-object v0, p0, LG/a;->d:Ljava/lang/Object;

    check-cast v0, Ls2/c;

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, LA/b;

    if-eqz v0, :cond_19

    iget-object p0, p0, LG/a;->e:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, LA/b;->i(Landroid/graphics/Typeface;)V

    :cond_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
