.class public abstract Lp0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lu1/h;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const-string v0, "Task must not be null"

    invoke-static {v0, p0}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Lu1/n;

    iget-object v1, v0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v0, Lu1/n;->c:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lp0/a;->t(Lu1/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lc1/w;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc1/w;-><init>(IZ)V

    sget-object v1, Lu1/j;->b:Le/J;

    invoke-virtual {p0, v1, v0}, Lu1/h;->c(Ljava/util/concurrent/Executor;Lu1/e;)Lu1/n;

    invoke-virtual {p0, v1, v0}, Lu1/h;->b(Ljava/util/concurrent/Executor;Lu1/d;)Lu1/n;

    move-object v2, p0

    check-cast v2, Lu1/n;

    new-instance v3, Lu1/l;

    invoke-direct {v3, v1, v0}, Lu1/l;-><init>(Le/J;Lu1/b;)V

    iget-object v1, v2, Lu1/n;->b:LR3/m;

    invoke-virtual {v1, v3}, LR3/m;->f(Lu1/m;)V

    invoke-virtual {v2}, Lu1/n;->m()V

    iget-object v0, v0, Lc1/w;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-static {p0}, Lp0/a;->t(Lu1/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must not be called on the main application thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lu1/n;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const-string v0, "Task must not be null"

    invoke-static {v0, p0}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "TimeUnit must not be null"

    invoke-static {v0, p3}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu1/n;->c:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lp0/a;->t(Lu1/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lc1/w;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc1/w;-><init>(IZ)V

    sget-object v1, Lu1/j;->b:Le/J;

    invoke-virtual {p0, v1, v0}, Lu1/n;->c(Ljava/util/concurrent/Executor;Lu1/e;)Lu1/n;

    invoke-virtual {p0, v1, v0}, Lu1/n;->b(Ljava/util/concurrent/Executor;Lu1/d;)Lu1/n;

    new-instance v2, Lu1/l;

    invoke-direct {v2, v1, v0}, Lu1/l;-><init>(Le/J;Lu1/b;)V

    iget-object v1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {v1, v2}, LR3/m;->f(Lu1/m;)V

    invoke-virtual {p0}, Lu1/n;->m()V

    iget-object v0, v0, Lc1/w;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lp0/a;->t(Lu1/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must not be called on the main application thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Lh4/z;Lr3/h;I)LJ/r0;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Lj4/i;->f(Lr3/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lr3/h;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {p1}, Lr3/h;->z()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-static {p1}, LT3/e;->p(Lr3/j;)Z

    move-result v1

    :cond_1
    new-instance v1, LJ/r0;

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, LJ/r0;-><init>(Lr3/h;Ljava/util/List;LJ/r0;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    new-instance v2, LJ/r0;

    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object v3

    instance-of v4, v3, Lr3/h;

    if-eqz v4, :cond_3

    move-object v0, v3

    check-cast v0, Lr3/h;

    :cond_3
    invoke-static {p0, v0, v1}, Lp0/a;->c(Lh4/z;Lr3/h;I)LJ/r0;

    move-result-object p0

    invoke-direct {v2, p1, p2, p0}, LJ/r0;-><init>(Lr3/h;Ljava/util/List;LJ/r0;)V

    return-object v2

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lu1/n;
    .locals 3

    const-string v0, "Executor must not be null"

    invoke-static {v0, p0}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lu1/n;

    invoke-direct {v0}, Lu1/n;-><init>()V

    new-instance v1, LG/a;

    const/16 v2, 0xf

    invoke-direct {v1, v0, v2, p1}, LG/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static final e()V
    .locals 6

    new-instance v0, Lh3/c;

    const/4 v1, 0x2

    const/16 v2, 0x24

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lh3/a;-><init>(III)V

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lh3/c;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "radix 10 was not in valid range "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lh3/c;

    invoke-direct {v5, v1, v2, v3}, Lh3/a;-><init>(III)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final f(Lr3/h;)Ljava/util/List;
    .locals 8

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/h;->s()Ljava/util/List;

    move-result-object v0

    const-string v1, "declaredTypeParameters"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/h;->z()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v2

    instance-of v2, v2, Lr3/b;

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    sget v2, LX3/f;->a:I

    sget-object v2, LX3/e;->d:LX3/e;

    invoke-static {p0, v2}, Lr4/m;->k(Ljava/lang/Object;Lc3/b;)Lr4/k;

    move-result-object v3

    instance-of v4, v3, Lr4/c;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    check-cast v3, Lr4/c;

    invoke-interface {v3}, Lr4/c;->a()Lr4/k;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Lr4/b;

    invoke-direct {v4, v3, v5}, Lr4/b;-><init>(Lr4/k;I)V

    move-object v3, v4

    :goto_0
    new-instance v4, Lr4/j;

    invoke-direct {v4, v3}, Lr4/j;-><init>(Lr4/k;)V

    sget-object v3, Lr3/q;->h:Lr3/q;

    invoke-static {v4, v3}, Lr4/m;->i(Lr4/k;Lc3/b;)Lr4/f;

    move-result-object v3

    sget-object v4, Lr3/q;->i:Lr3/q;

    new-instance v6, Lr4/h;

    sget-object v7, Lr4/p;->l:Lr4/p;

    invoke-direct {v6, v3, v4, v7}, Lr4/h;-><init>(Lr4/k;Lc3/b;Lc3/b;)V

    invoke-static {v6}, Lr4/m;->n(Lr4/k;)Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v2}, Lr4/m;->k(Ljava/lang/Object;Lc3/b;)Lr4/k;

    move-result-object v2

    instance-of v4, v2, Lr4/c;

    if-eqz v4, :cond_2

    check-cast v2, Lr4/c;

    invoke-interface {v2}, Lr4/c;->a()Lr4/k;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v4, Lr4/b;

    invoke-direct {v4, v2, v5}, Lr4/b;-><init>(Lr4/k;I)V

    move-object v2, v4

    :goto_1
    invoke-interface {v2}, Lr4/k;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Lr3/e;

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_4
    move-object v4, v5

    :goto_2
    check-cast v4, Lr3/e;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lr3/g;->H()Lh4/J;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lh4/J;->k()Ljava/util/List;

    move-result-object v5

    :cond_5
    if-nez v5, :cond_6

    sget-object v5, LR2/u;->c:LR2/u;

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Lr3/h;->s()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_7
    invoke-static {v3, v5}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/Q;

    const-string v4, "it"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Lr3/d;

    invoke-direct {v5, v3, p0, v4}, Lr3/d;-><init>(Lr3/Q;Lr3/j;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-static {v0, v2}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lr3/e;Lu3/b;)Lh4/K;
    .locals 3

    const-string v0, "to"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/e;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {p1}, Lr3/e;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {p0}, Lr3/e;->s()Ljava/util/List;

    move-result-object p0

    const-string v0, "from.declaredTypeParameters"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/Q;

    invoke-interface {v1}, Lr3/g;->H()Lh4/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lr3/e;->s()Ljava/util/List;

    move-result-object p0

    const-string p1, "to.declaredTypeParameters"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/Q;

    invoke-interface {v1}, Lr3/g;->q()Lh4/z;

    move-result-object v1

    const-string v2, "it.defaultType"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lf1/a;->b(Lh4/v;)Lh4/O;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0, p1}, LR2/m;->l1(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, LR2/z;->C1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, Lh4/K;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lh4/K;-><init>(Ljava/util/Map;Z)V

    return-object p1
.end method

.method public static final h(CCZ)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_3

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static i(Ljava/lang/Exception;)Lu1/n;
    .locals 1

    new-instance v0, Lu1/n;

    invoke-direct {v0}, Lu1/n;-><init>()V

    invoke-virtual {v0, p0}, Lu1/n;->j(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static j(Ljava/lang/Object;)Lu1/n;
    .locals 1

    new-instance v0, Lu1/n;

    invoke-direct {v0}, Lu1/n;-><init>()V

    invoke-virtual {v0, p0}, Lu1/n;->k(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static k()I
    .locals 3

    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SEM_PLATFORM_INT"

    invoke-static {v0, v1}, Li3/x;->I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Li3/x;->A(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Li3/x;->A(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static l(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    const-string v3, "semIsHighContrastTextEnabled"

    invoke-static {v2, v3, v1}, Li3/x;->P(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static m(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 3

    const-class v0, Landroid/graphics/Rect;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-string v2, "isVisibleToUser"

    invoke-static {v1, v2, v0}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final n(Lz3/a;Lz3/b;Lr3/C;LQ3/f;)V
    .locals 0

    const-string p1, "<this>"

    invoke-static {p1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "scopeOwner"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "name"

    invoke-static {p0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Lu3/E;

    iget-object p0, p2, Lu3/E;->g:LQ3/c;

    invoke-virtual {p0}, LQ3/c;->b()Ljava/lang/String;

    invoke-virtual {p3}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "name.asString()"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static o(Landroid/view/View;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-string v2, "hidden_semGetHoverPopup"

    invoke-static {v1, v2, v0}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static p(ILandroid/view/View;)V
    .locals 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-string v2, "hidden_semSetHoverPopupType"

    invoke-static {v1, v2, v0}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static q(Landroid/view/View;ILandroid/view/PointerIcon;)V
    .locals 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/view/PointerIcon;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-string v2, "hidden_semSetPointerIcon"

    invoke-static {v1, v2, v0}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final r(Landroid/view/View;Lx0/f;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x7f0a02b6

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static s(Landroid/view/View;F)V
    .locals 3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-string v2, "setFrameContentVelocity"

    invoke-static {v1, v2, v0}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static t(Lu1/h;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu1/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/h;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lu1/n;

    iget-boolean v0, v0, Lu1/n;->d:Z

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lu1/h;->d()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
