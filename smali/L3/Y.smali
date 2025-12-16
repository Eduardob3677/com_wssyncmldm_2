.class public final LL3/Y;
.super LR3/l;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:I

.field public h:I

.field public i:LL3/Q;

.field public j:I

.field public k:LL3/Q;

.field public l:I


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LL3/Y;->g()LL3/Z;

    move-result-object p0

    invoke-virtual {p0}, LL3/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LA0/c;

    invoke-direct {p0}, LA0/c;-><init>()V

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, LL3/Y;

    invoke-direct {v0}, LR3/l;-><init>()V

    sget-object v1, LL3/Q;->v:LL3/Q;

    iput-object v1, v0, LL3/Y;->i:LL3/Q;

    iput-object v1, v0, LL3/Y;->k:LL3/Q;

    invoke-virtual {p0}, LL3/Y;->g()LL3/Z;

    move-result-object p0

    invoke-virtual {v0, p0}, LL3/Y;->h(LL3/Z;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LL3/Z;->o:LL3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LL3/Z;

    invoke-direct {v1, p1, p2}, LL3/Z;-><init>(LR3/f;LR3/i;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, LL3/Y;->h(LL3/Z;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, LR3/u;->c:LR3/b;

    check-cast p2, LL3/Z;
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

    invoke-virtual {p0, v0}, LL3/Y;->h(LL3/Z;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LL3/Z;

    invoke-virtual {p0, p1}, LL3/Y;->h(LL3/Z;)V

    return-object p0
.end method

.method public final g()LL3/Z;
    .locals 5

    new-instance v0, LL3/Z;

    invoke-direct {v0, p0}, LL3/Z;-><init>(LR3/l;)V

    iget v1, p0, LL3/Y;->f:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, LL3/Y;->g:I

    iput v2, v0, LL3/Z;->f:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, LL3/Y;->h:I

    iput v2, v0, LL3/Z;->g:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, LL3/Y;->i:LL3/Q;

    iput-object v2, v0, LL3/Z;->h:LL3/Q;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, LL3/Y;->j:I

    iput v2, v0, LL3/Z;->i:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object v2, p0, LL3/Y;->k:LL3/Q;

    iput-object v2, v0, LL3/Z;->j:LL3/Q;

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget p0, p0, LL3/Y;->l:I

    iput p0, v0, LL3/Z;->k:I

    iput v3, v0, LL3/Z;->e:I

    return-object v0
.end method

.method public final h(LL3/Z;)V
    .locals 4

    sget-object v0, LL3/Z;->n:LL3/Z;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LL3/Z;->e:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, LL3/Z;->f:I

    iget v3, p0, LL3/Y;->f:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/Y;->f:I

    iput v1, p0, LL3/Y;->g:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, LL3/Z;->g:I

    iget v3, p0, LL3/Y;->f:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/Y;->f:I

    iput v1, p0, LL3/Y;->h:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, LL3/Z;->h:LL3/Q;

    iget v2, p0, LL3/Y;->f:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, LL3/Y;->i:LL3/Q;

    sget-object v3, LL3/Q;->v:LL3/Q;

    if-eq v2, v3, :cond_3

    invoke-static {v2}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v2

    invoke-virtual {v2, v0}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v2}, LL3/P;->g()LL3/Q;

    move-result-object v0

    iput-object v0, p0, LL3/Y;->i:LL3/Q;

    goto :goto_0

    :cond_3
    iput-object v0, p0, LL3/Y;->i:LL3/Q;

    :goto_0
    iget v0, p0, LL3/Y;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/Y;->f:I

    :cond_4
    iget v0, p1, LL3/Z;->e:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    iget v1, p1, LL3/Z;->i:I

    iget v3, p0, LL3/Y;->f:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/Y;->f:I

    iput v1, p0, LL3/Y;->j:I

    :cond_5
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    iget-object v0, p1, LL3/Z;->j:LL3/Q;

    iget v2, p0, LL3/Y;->f:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_6

    iget-object v2, p0, LL3/Y;->k:LL3/Q;

    sget-object v3, LL3/Q;->v:LL3/Q;

    if-eq v2, v3, :cond_6

    invoke-static {v2}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v2

    invoke-virtual {v2, v0}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v2}, LL3/P;->g()LL3/Q;

    move-result-object v0

    iput-object v0, p0, LL3/Y;->k:LL3/Q;

    goto :goto_1

    :cond_6
    iput-object v0, p0, LL3/Y;->k:LL3/Q;

    :goto_1
    iget v0, p0, LL3/Y;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/Y;->f:I

    :cond_7
    iget v0, p1, LL3/Z;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget v0, p1, LL3/Z;->k:I

    iget v2, p0, LL3/Y;->f:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/Y;->f:I

    iput v0, p0, LL3/Y;->l:I

    :cond_8
    invoke-virtual {p0, p1}, LR3/l;->f(LR3/n;)V

    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LL3/Z;->d:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
