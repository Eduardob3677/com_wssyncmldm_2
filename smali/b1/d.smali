.class public final Lb1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/e;
.implements La1/f;


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public final b:La1/b;

.field public final c:Lb1/a;

.field public final d:LA3/D;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/HashMap;

.field public final g:I

.field public final h:Lb1/q;

.field public i:Z

.field public final j:Ljava/util/ArrayList;

.field public k:LZ0/a;

.field public final synthetic l:Lb1/g;


# direct methods
.method public constructor <init>(Lb1/g;La1/d;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/d;->l:Lb1/g;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb1/d;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb1/d;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb1/d;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb1/d;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lb1/d;->k:LZ0/a;

    iget-object v1, p1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p2}, La1/d;->a()Lcom/google/firebase/messaging/p;

    move-result-object v1

    new-instance v5, LJ3/c;

    iget-object v2, v1, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/Account;

    iget-object v3, v1, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v3, Lo/c;

    iget-object v6, v1, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v1, v1, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v2, v3, v6, v1}, LJ3/c;-><init>(Landroid/accounts/Account;Lo/c;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, La1/d;->b:LA3/D;

    iget-object v1, v1, LA3/D;->d:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, LW1/a;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v3, v1}, Lc1/D;->g(Ljava/lang/String;Z)V

    iget-object v3, p2, La1/d;->a:Landroid/content/Context;

    iget-object v6, p2, La1/d;->c:La1/a;

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, LW1/a;->e(Landroid/content/Context;Landroid/os/Looper;LJ3/c;La1/a;La1/e;La1/f;)La1/b;

    move-result-object v1

    iput-object v1, p0, Lb1/d;->b:La1/b;

    iget-object v2, p2, La1/d;->d:Lb1/a;

    iput-object v2, p0, Lb1/d;->c:Lb1/a;

    new-instance v2, LA3/D;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, LA3/D;-><init>(I)V

    iput-object v2, p0, Lb1/d;->d:LA3/D;

    iget v2, p2, La1/d;->e:I

    iput v2, p0, Lb1/d;->g:I

    invoke-interface {v1}, La1/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    new-instance v1, Lb1/q;

    invoke-virtual {p2}, La1/d;->a()Lcom/google/firebase/messaging/p;

    move-result-object p2

    new-instance v2, LJ3/c;

    iget-object v3, p2, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/Account;

    iget-object v4, p2, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v4, Lo/c;

    iget-object v5, p2, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object p2, p2, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p2}, LJ3/c;-><init>(Landroid/accounts/Account;Lo/c;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lb1/g;->b:Landroid/content/Context;

    invoke-direct {v1, p1, v0, v2}, Lb1/q;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/Q1;LJ3/c;)V

    iput-object v1, p0, Lb1/d;->h:Lb1/q;

    return-void

    :cond_1
    iput-object v0, p0, Lb1/d;->h:Lb1/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    iget-object v0, p0, Lb1/d;->l:Lb1/g;

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v1}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    iget-object v1, p0, Lb1/d;->b:La1/b;

    move-object v2, v1

    check-cast v2, Lc1/k;

    invoke-virtual {v2}, Lc1/k;->l()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v2, Lc1/k;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, v2, Lc1/k;->l:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v2, v0, Lb1/g;->d:LA3/D;

    iget-object v3, v0, Lb1/g;->b:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-interface {v1}, La1/b;->b()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    iget-object v6, v2, LA3/D;->d:Ljava/lang/Object;

    check-cast v6, Landroid/util/SparseIntArray;

    const v7, 0xbdfcb8

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-eq v9, v8, :cond_4

    move v4, v9

    goto :goto_4

    :cond_4
    move v10, v4

    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-virtual {v6, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    if-le v11, v7, :cond_5

    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    if-nez v11, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    move v4, v9

    :goto_3
    if-ne v4, v8, :cond_7

    iget-object v2, v2, LA3/D;->e:Ljava/lang/Object;

    check-cast v2, LZ0/f;

    invoke-virtual {v2, v3, v7}, LZ0/f;->b(Landroid/content/Context;I)I

    move-result v2

    move v4, v2

    :cond_7
    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_4
    const/4 v2, 0x0

    if-eqz v4, :cond_8

    new-instance v0, LZ0/a;

    invoke-direct {v0, v4, v2}, LZ0/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lb1/d;->s(LZ0/a;)V

    return-void

    :cond_8
    new-instance v3, Lb1/e;

    iget-object v4, p0, Lb1/d;->c:Lb1/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, Lb1/e;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v3, Lb1/e;->f:Ljava/lang/Object;

    iput-object v0, v3, Lb1/e;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v3, Lb1/e;->c:Z

    iput-object v1, v3, Lb1/e;->d:Ljava/lang/Object;

    iput-object v4, v3, Lb1/e;->e:Ljava/lang/Object;

    invoke-interface {v1}, La1/b;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lb1/d;->h:Lb1/q;

    iget-object v0, p0, Lb1/q;->f:Ls1/a;

    if-eqz v0, :cond_9

    check-cast v0, Lc1/k;

    invoke-virtual {v0}, Lc1/k;->d()V

    :cond_9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v9, p0, Lb1/q;->e:LJ3/c;

    iput-object v0, v9, LJ3/c;->j:Ljava/lang/Object;

    iget-object v0, p0, Lb1/q;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v4, v9, LJ3/c;->i:Ljava/lang/Object;

    move-object v10, v4

    check-cast v10, Lr1/a;

    iget-object v6, p0, Lb1/q;->c:LW1/a;

    iget-object v7, p0, Lb1/q;->a:Landroid/content/Context;

    move-object v11, p0

    move-object v12, p0

    invoke-virtual/range {v6 .. v12}, LW1/a;->e(Landroid/content/Context;Landroid/os/Looper;LJ3/c;La1/a;La1/e;La1/f;)La1/b;

    move-result-object v4

    check-cast v4, Ls1/a;

    iput-object v4, p0, Lb1/q;->f:Ls1/a;

    iput-object v3, p0, Lb1/q;->g:Lb1/e;

    iget-object v4, p0, Lb1/q;->d:Ljava/util/Set;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    iget-object p0, p0, Lb1/q;->f:Ls1/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ls2/c;

    invoke-direct {v0, p0}, Ls2/c;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc1/k;->h:Lc1/b;

    invoke-virtual {p0, v5, v2}, Lc1/k;->m(ILandroid/os/IInterface;)V

    goto :goto_6

    :cond_b
    :goto_5
    new-instance v4, LB1/h;

    const/16 v6, 0xc

    invoke-direct {v4, v6, p0}, LB1/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :goto_6
    check-cast v1, Lc1/k;

    iput-object v3, v1, Lc1/k;->h:Lc1/b;

    invoke-virtual {v1, v5, v2}, Lc1/k;->m(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_d
    :goto_7
    return-void
.end method

.method public final b(Lb1/m;)V
    .locals 2

    iget-object v0, p0, Lb1/d;->l:Lb1/g;

    iget-object v0, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v0}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    iget-object v0, p0, Lb1/d;->b:La1/b;

    check-cast v0, Lc1/k;

    invoke-virtual {v0}, Lc1/k;->l()Z

    move-result v0

    iget-object v1, p0, Lb1/d;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lb1/d;->c(Lb1/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb1/d;->i()V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb1/d;->k:LZ0/a;

    if-eqz p1, :cond_2

    iget v0, p1, LZ0/a;->d:I

    if-eqz v0, :cond_2

    iget-object v0, p1, LZ0/a;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lb1/d;->s(LZ0/a;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lb1/d;->a()V

    return-void
.end method

.method public final c(Lb1/m;)Z
    .locals 12

    const/4 v0, 0x0

    instance-of v1, p1, Lb1/m;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v0, p0, Lb1/d;->b:La1/b;

    invoke-interface {v0}, La1/b;->a()Z

    move-result v1

    iget-object v3, p0, Lb1/d;->d:LA3/D;

    invoke-virtual {p1, v3, v1}, Lb1/m;->a(LA3/D;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lb1/m;->g(Lb1/d;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lb1/d;->f()V

    check-cast v0, Lc1/k;

    invoke-virtual {v0}, Lc1/k;->d()V

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1, p0}, Lb1/m;->d(Lb1/d;)[LZ0/c;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    array-length v4, v1

    if-nez v4, :cond_1

    goto :goto_5

    :cond_1
    iget-object v4, p0, Lb1/d;->b:La1/b;

    check-cast v4, Lc1/k;

    iget-object v4, v4, Lc1/k;->s:Lc1/x;

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    iget-object v4, v4, Lc1/x;->d:[LZ0/c;

    :goto_1
    if-nez v4, :cond_3

    new-array v4, v0, [LZ0/c;

    :cond_3
    new-instance v5, Lo/b;

    array-length v6, v4

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    if-nez v6, :cond_4

    sget-object v6, Lo/d;->a:[I

    iput-object v6, v5, Lo/k;->c:[I

    sget-object v6, Lo/d;->b:[Ljava/lang/Object;

    iput-object v6, v5, Lo/k;->d:[Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v6}, Lo/k;->a(I)V

    :goto_2
    iput v0, v5, Lo/k;->e:I

    array-length v6, v4

    move v7, v0

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v8, v4, v7

    iget-object v9, v8, LZ0/c;->c:Ljava/lang/String;

    invoke-virtual {v8}, LZ0/c;->d()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v7, v2

    goto :goto_3

    :cond_5
    array-length v4, v1

    move v6, v0

    :goto_4
    if-ge v6, v4, :cond_7

    aget-object v7, v1, v6

    iget-object v8, v7, LZ0/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v7, LZ0/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v8, v3}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7}, LZ0/c;->d()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    goto :goto_6

    :cond_6
    add-int/2addr v6, v2

    goto :goto_4

    :cond_7
    :goto_5
    move-object v7, v3

    :cond_8
    :goto_6
    if-nez v7, :cond_9

    iget-object v0, p0, Lb1/d;->b:La1/b;

    invoke-interface {v0}, La1/b;->a()Z

    move-result v1

    iget-object v3, p0, Lb1/d;->d:LA3/D;

    invoke-virtual {p1, v3, v1}, Lb1/m;->a(LA3/D;Z)V

    :try_start_1
    invoke-virtual {p1, p0}, Lb1/m;->g(Lb1/d;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    invoke-virtual {p0}, Lb1/d;->f()V

    check-cast v0, Lc1/k;

    invoke-virtual {v0}, Lc1/k;->d()V

    :goto_7
    return v2

    :cond_9
    invoke-virtual {p1, p0}, Lb1/m;->f(Lb1/d;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance p1, Lb1/f;

    iget-object v1, p0, Lb1/d;->c:Lb1/a;

    invoke-direct {p1, v1, v7}, Lb1/f;-><init>(Lb1/a;LZ0/c;)V

    iget-object v1, p0, Lb1/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lb1/d;->l:Lb1/g;

    const-wide/16 v6, 0x1388

    const/16 v8, 0xf

    if-ltz v4, :cond_a

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb1/f;

    iget-object p1, v5, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-virtual {p1, v8, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, v5, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {p1, v8, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    :cond_a
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v5, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v1, v8, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, v5, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v4, 0x10

    invoke-static {v1, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v1, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lb1/g;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object p1, p0, Lb1/d;->l:Lb1/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget p0, p0, Lb1/d;->g:I

    iget-object p1, v5, Lb1/g;->c:LZ0/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v5, Lb1/g;->b:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {p1, v1, v4, v3}, LZ0/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x8000000

    if-nez v5, :cond_b

    goto :goto_8

    :cond_b
    invoke-static {v1, v0, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_8
    if-eqz v3, :cond_d

    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->d:I

    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v5, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "pending_intent"

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "failing_client_id"

    invoke-virtual {v5, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "notify_manager"

    invoke-virtual {v5, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v1, v0, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, v1, v4, p0}, LZ0/e;->d(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    goto :goto_9

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_c
    new-instance p0, La1/i;

    invoke-direct {p0, v7}, La1/i;-><init>(LZ0/c;)V

    invoke-virtual {p1, p0}, Lb1/m;->c(Ljava/lang/RuntimeException;)V

    :cond_d
    :goto_9
    return v0
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lb1/d;->l:Lb1/g;

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v1}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lb1/d;->k:LZ0/a;

    sget-object v2, LZ0/a;->g:LZ0/a;

    invoke-virtual {p0, v2}, Lb1/d;->k(LZ0/a;)V

    iget-boolean v2, p0, Lb1/d;->i:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v3, 0xb

    iget-object v4, p0, Lb1/d;->c:Lb1/a;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb1/d;->i:Z

    :cond_0
    iget-object v0, p0, Lb1/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lb1/d;->g()V

    invoke-virtual {p0}, Lb1/d;->i()V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    throw v1
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lb1/d;->l:Lb1/g;

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v1}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lb1/d;->k:LZ0/a;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb1/d;->i:Z

    sget-object v2, Lb1/r;->a:Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lb1/d;->d:LA3/D;

    invoke-virtual {v3, v1, v2}, LA3/D;->O0(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v2, 0x9

    iget-object p0, p0, Lb1/d;->c:Lb1/a;

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v2, 0xb

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p0, v0, Lb1/g;->d:LA3/D;

    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lb1/d;->l:Lb1/g;

    iget-object v2, v1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lb1/d;->e()V

    return-void

    :cond_0
    iget-object v0, v1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    new-instance v1, Lb1/n;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lb1/n;-><init>(Lb1/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb1/d;->a:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lb1/m;

    iget-object v5, p0, Lb1/d;->b:La1/b;

    check-cast v5, Lc1/k;

    invoke-virtual {v5}, Lc1/k;->l()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lb1/d;->c(Lb1/m;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 6

    iget-object v0, p0, Lb1/d;->l:Lb1/g;

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v1}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    sget-object v1, Lb1/g;->j:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v1}, Lb1/d;->j(Lcom/google/android/gms/common/api/Status;)V

    iget-object v2, p0, Lb1/d;->d:LA3/D;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, LA3/D;->O0(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v1, p0, Lb1/d;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lb1/j;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb1/j;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v4, Lb1/t;

    new-instance v5, Lu1/i;

    invoke-direct {v5}, Lu1/i;-><init>()V

    invoke-direct {v4, v5}, Lb1/t;-><init>(Lu1/i;)V

    invoke-virtual {p0, v4}, Lb1/d;->b(Lb1/m;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, LZ0/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LZ0/a;-><init>(I)V

    invoke-virtual {p0, v1}, Lb1/d;->k(LZ0/a;)V

    iget-object v1, p0, Lb1/d;->b:La1/b;

    check-cast v1, Lc1/k;

    invoke-virtual {v1}, Lc1/k;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ls2/c;

    invoke-direct {v2, p0}, Ls2/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    new-instance v0, LB1/h;

    const/16 v1, 0xb

    invoke-direct {v0, v1, v2}, LB1/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lb1/d;->l:Lb1/g;

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v2, 0xc

    iget-object p0, p0, Lb1/d;->c:Lb1/a;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-wide v2, v0, Lb1/g;->a:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final j(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lb1/d;->l:Lb1/g;

    iget-object v0, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v0}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    iget-object p0, p0, Lb1/d;->a:Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb1/m;

    invoke-virtual {v1, p1}, Lb1/m;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public final k(LZ0/a;)V
    .locals 3

    iget-object v0, p0, Lb1/d;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LB/f;->F(Ljava/lang/Object;)V

    sget-object v0, LZ0/a;->g:LZ0/a;

    invoke-static {p1, v0}, Lc1/D;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lb1/d;->b:La1/b;

    check-cast p0, Lc1/k;

    invoke-virtual {p0}, Lc1/k;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lc1/k;->a:Lc1/m;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to connect when checking package"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    throw p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final q()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lb1/d;->l:Lb1/g;

    iget-object v2, v1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lb1/d;->d()V

    return-void

    :cond_0
    iget-object v0, v1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    new-instance v1, Lb1/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lb1/n;-><init>(Lb1/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s(LZ0/a;)V
    .locals 4

    iget-object v0, p0, Lb1/d;->l:Lb1/g;

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v1}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    iget-object v1, p0, Lb1/d;->h:Lb1/q;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lb1/q;->f:Ls1/a;

    if-eqz v1, :cond_0

    check-cast v1, Lc1/k;

    invoke-virtual {v1}, Lc1/k;->d()V

    :cond_0
    iget-object v1, p0, Lb1/d;->l:Lb1/g;

    iget-object v1, v1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v1}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lb1/d;->k:LZ0/a;

    iget-object v1, v0, Lb1/g;->d:LA3/D;

    iget-object v1, v1, LA3/D;->d:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0, p1}, Lb1/d;->k(LZ0/a;)V

    iget v1, p1, LZ0/a;->d:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    sget-object p1, Lb1/g;->k:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lb1/d;->j(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_1
    iget-object v1, p0, Lb1/d;->a:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, p0, Lb1/d;->k:LZ0/a;

    return-void

    :cond_2
    sget-object v1, Lb1/g;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lb1/d;->l:Lb1/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lb1/d;->g:I

    invoke-virtual {v0, p1, v1}, Lb1/g;->c(LZ0/a;I)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x12

    iget v2, p1, LZ0/a;->d:I

    if-ne v2, v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb1/d;->i:Z

    :cond_3
    iget-boolean v1, p0, Lb1/d;->i:Z

    iget-object v2, p0, Lb1/d;->c:Lb1/a;

    if-eqz v1, :cond_4

    iget-object p0, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 p1, 0x9

    invoke-static {p0, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object v1, v2, Lb1/a;->b:LA3/D;

    iget-object v1, v1, LA3/D;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available on this device. Connection failed with: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x11

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lb1/d;->j(Lcom/google/android/gms/common/api/Status;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
