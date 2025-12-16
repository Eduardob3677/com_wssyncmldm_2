.class public final LL3/S;
.super LR3/l;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/util/List;

.field public j:LL3/Q;

.field public k:I

.field public l:LL3/Q;

.field public m:I

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;


# direct methods
.method public static h()LL3/S;
    .locals 2

    new-instance v0, LL3/S;

    invoke-direct {v0}, LR3/l;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, LL3/S;->g:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/S;->i:Ljava/util/List;

    sget-object v1, LL3/Q;->v:LL3/Q;

    iput-object v1, v0, LL3/S;->j:LL3/Q;

    iput-object v1, v0, LL3/S;->l:LL3/Q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/S;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/S;->o:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LL3/S;->g()LL3/T;

    move-result-object p0

    invoke-virtual {p0}, LL3/T;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LA0/c;

    invoke-direct {p0}, LA0/c;-><init>()V

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, LL3/S;->h()LL3/S;

    move-result-object v0

    invoke-virtual {p0}, LL3/S;->g()LL3/T;

    move-result-object p0

    invoke-virtual {v0, p0}, LL3/S;->i(LL3/T;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LL3/T;->r:LL3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LL3/T;

    invoke-direct {v1, p1, p2}, LL3/T;-><init>(LR3/f;LR3/i;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, LL3/S;->i(LL3/T;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, LR3/u;->c:LR3/b;

    check-cast p2, LL3/T;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, LL3/S;->i(LL3/T;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LL3/T;

    invoke-virtual {p0, p1}, LL3/S;->i(LL3/T;)V

    return-object p0
.end method

.method public final g()LL3/T;
    .locals 5

    new-instance v0, LL3/T;

    invoke-direct {v0, p0}, LL3/T;-><init>(LR3/l;)V

    iget v1, p0, LL3/S;->f:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, LL3/S;->g:I

    iput v2, v0, LL3/T;->f:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, LL3/S;->h:I

    iput v2, v0, LL3/T;->g:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    iget-object v2, p0, LL3/S;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, LL3/S;->i:Ljava/util/List;

    iget v2, p0, LL3/S;->f:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, LL3/S;->f:I

    :cond_2
    iget-object v2, p0, LL3/S;->i:Ljava/util/List;

    iput-object v2, v0, LL3/T;->h:Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object v2, p0, LL3/S;->j:LL3/Q;

    iput-object v2, v0, LL3/T;->i:LL3/Q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    iget v2, p0, LL3/S;->k:I

    iput v2, v0, LL3/T;->j:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    :cond_5
    iget-object v2, p0, LL3/S;->l:LL3/Q;

    iput-object v2, v0, LL3/T;->k:LL3/Q;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    iget v1, p0, LL3/S;->m:I

    iput v1, v0, LL3/T;->l:I

    iget v1, p0, LL3/S;->f:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, LL3/S;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/S;->n:Ljava/util/List;

    iget v1, p0, LL3/S;->f:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, LL3/S;->f:I

    :cond_7
    iget-object v1, p0, LL3/S;->n:Ljava/util/List;

    iput-object v1, v0, LL3/T;->m:Ljava/util/List;

    iget v1, p0, LL3/S;->f:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, LL3/S;->o:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/S;->o:Ljava/util/List;

    iget v1, p0, LL3/S;->f:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, LL3/S;->f:I

    :cond_8
    iget-object p0, p0, LL3/S;->o:Ljava/util/List;

    iput-object p0, v0, LL3/T;->n:Ljava/util/List;

    iput v3, v0, LL3/T;->e:I

    return-object v0
.end method

.method public final i(LL3/T;)V
    .locals 4

    sget-object v0, LL3/T;->q:LL3/T;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LL3/T;->e:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, LL3/T;->f:I

    iget v3, p0, LL3/S;->f:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/S;->f:I

    iput v1, p0, LL3/S;->g:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p1, LL3/T;->g:I

    iget v2, p0, LL3/S;->f:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/S;->f:I

    iput v0, p0, LL3/S;->h:I

    :cond_2
    iget-object v0, p1, LL3/T;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_5

    iget-object v0, p0, LL3/S;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, LL3/T;->h:Ljava/util/List;

    iput-object v0, p0, LL3/S;->i:Ljava/util/List;

    iget v0, p0, LL3/S;->f:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, LL3/S;->f:I

    goto :goto_0

    :cond_3
    iget v0, p0, LL3/S;->f:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LL3/S;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LL3/S;->i:Ljava/util/List;

    iget v0, p0, LL3/S;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/S;->f:I

    :cond_4
    iget-object v0, p0, LL3/S;->i:Ljava/util/List;

    iget-object v2, p1, LL3/T;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_0
    iget v0, p1, LL3/T;->e:I

    and-int/2addr v0, v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_7

    iget-object v0, p1, LL3/T;->i:LL3/Q;

    iget v1, p0, LL3/S;->f:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, LL3/S;->j:LL3/Q;

    sget-object v3, LL3/Q;->v:LL3/Q;

    if-eq v1, v3, :cond_6

    invoke-static {v1}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v1

    invoke-virtual {v1, v0}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v1}, LL3/P;->g()LL3/Q;

    move-result-object v0

    iput-object v0, p0, LL3/S;->j:LL3/Q;

    goto :goto_1

    :cond_6
    iput-object v0, p0, LL3/S;->j:LL3/Q;

    :goto_1
    iget v0, p0, LL3/S;->f:I

    or-int/2addr v0, v2

    iput v0, p0, LL3/S;->f:I

    :cond_7
    iget v0, p1, LL3/T;->e:I

    and-int/lit8 v1, v0, 0x8

    const/16 v3, 0x10

    if-ne v1, v2, :cond_8

    iget v1, p1, LL3/T;->j:I

    iget v2, p0, LL3/S;->f:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/S;->f:I

    iput v1, p0, LL3/S;->k:I

    :cond_8
    and-int/2addr v0, v3

    const/16 v1, 0x20

    if-ne v0, v3, :cond_a

    iget-object v0, p1, LL3/T;->k:LL3/Q;

    iget v2, p0, LL3/S;->f:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_9

    iget-object v2, p0, LL3/S;->l:LL3/Q;

    sget-object v3, LL3/Q;->v:LL3/Q;

    if-eq v2, v3, :cond_9

    invoke-static {v2}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v2

    invoke-virtual {v2, v0}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v2}, LL3/P;->g()LL3/Q;

    move-result-object v0

    iput-object v0, p0, LL3/S;->l:LL3/Q;

    goto :goto_2

    :cond_9
    iput-object v0, p0, LL3/S;->l:LL3/Q;

    :goto_2
    iget v0, p0, LL3/S;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/S;->f:I

    :cond_a
    iget v0, p1, LL3/T;->e:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    iget v0, p1, LL3/T;->l:I

    iget v1, p0, LL3/S;->f:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, LL3/S;->f:I

    iput v0, p0, LL3/S;->m:I

    :cond_b
    iget-object v0, p1, LL3/T;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, LL3/S;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, LL3/T;->m:Ljava/util/List;

    iput-object v0, p0, LL3/S;->n:Ljava/util/List;

    iget v0, p0, LL3/S;->f:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, LL3/S;->f:I

    goto :goto_3

    :cond_c
    iget v0, p0, LL3/S;->f:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LL3/S;->n:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LL3/S;->n:Ljava/util/List;

    iget v0, p0, LL3/S;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/S;->f:I

    :cond_d
    iget-object v0, p0, LL3/S;->n:Ljava/util/List;

    iget-object v1, p1, LL3/T;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    :goto_3
    iget-object v0, p1, LL3/T;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, LL3/S;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, LL3/T;->n:Ljava/util/List;

    iput-object v0, p0, LL3/S;->o:Ljava/util/List;

    iget v0, p0, LL3/S;->f:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, LL3/S;->f:I

    goto :goto_4

    :cond_f
    iget v0, p0, LL3/S;->f:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LL3/S;->o:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LL3/S;->o:Ljava/util/List;

    iget v0, p0, LL3/S;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/S;->f:I

    :cond_10
    iget-object v0, p0, LL3/S;->o:Ljava/util/List;

    iget-object v1, p1, LL3/T;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11
    :goto_4
    invoke-virtual {p0, p1}, LR3/l;->f(LR3/n;)V

    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LL3/T;->d:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
