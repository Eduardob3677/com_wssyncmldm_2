.class public final LL3/D;
.super LR3/l;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:LL3/L;

.field public h:LL3/K;

.field public i:LL3/C;

.field public j:Ljava/util/List;


# direct methods
.method public static h()LL3/D;
    .locals 2

    new-instance v0, LL3/D;

    invoke-direct {v0}, LR3/l;-><init>()V

    sget-object v1, LL3/L;->g:LL3/L;

    iput-object v1, v0, LL3/D;->g:LL3/L;

    sget-object v1, LL3/K;->g:LL3/K;

    iput-object v1, v0, LL3/D;->h:LL3/K;

    sget-object v1, LL3/C;->m:LL3/C;

    iput-object v1, v0, LL3/D;->i:LL3/C;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/D;->j:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LL3/D;->g()LL3/E;

    move-result-object p0

    invoke-virtual {p0}, LL3/E;->b()Z

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

    invoke-static {}, LL3/D;->h()LL3/D;

    move-result-object v0

    invoke-virtual {p0}, LL3/D;->g()LL3/E;

    move-result-object p0

    invoke-virtual {v0, p0}, LL3/D;->i(LL3/E;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LL3/E;->m:LL3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LL3/E;

    invoke-direct {v1, p1, p2}, LL3/E;-><init>(LR3/f;LR3/i;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, LL3/D;->i(LL3/E;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, LR3/u;->c:LR3/b;

    check-cast p2, LL3/E;
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

    invoke-virtual {p0, v0}, LL3/D;->i(LL3/E;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LL3/E;

    invoke-virtual {p0, p1}, LL3/D;->i(LL3/E;)V

    return-object p0
.end method

.method public final g()LL3/E;
    .locals 5

    new-instance v0, LL3/E;

    invoke-direct {v0, p0}, LL3/E;-><init>(LR3/l;)V

    iget v1, p0, LL3/D;->f:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, LL3/D;->g:LL3/L;

    iput-object v2, v0, LL3/E;->f:LL3/L;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, LL3/D;->h:LL3/K;

    iput-object v2, v0, LL3/E;->g:LL3/K;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, LL3/D;->i:LL3/C;

    iput-object v2, v0, LL3/E;->h:LL3/C;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, LL3/D;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/D;->j:Ljava/util/List;

    iget v1, p0, LL3/D;->f:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, LL3/D;->f:I

    :cond_3
    iget-object p0, p0, LL3/D;->j:Ljava/util/List;

    iput-object p0, v0, LL3/E;->i:Ljava/util/List;

    iput v3, v0, LL3/E;->e:I

    return-object v0
.end method

.method public final i(LL3/E;)V
    .locals 5

    sget-object v0, LL3/E;->l:LL3/E;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LL3/E;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, LL3/E;->f:LL3/L;

    iget v2, p0, LL3/D;->f:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    iget-object v2, p0, LL3/D;->g:LL3/L;

    sget-object v3, LL3/L;->g:LL3/L;

    if-eq v2, v3, :cond_1

    new-instance v3, LL3/m;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, LL3/m;-><init>(I)V

    sget-object v4, LR3/w;->d:LR3/N;

    iput-object v4, v3, LL3/m;->f:Ljava/util/List;

    invoke-virtual {v3, v2}, LL3/m;->l(LL3/L;)V

    invoke-virtual {v3, v0}, LL3/m;->l(LL3/L;)V

    invoke-virtual {v3}, LL3/m;->h()LL3/L;

    move-result-object v0

    iput-object v0, p0, LL3/D;->g:LL3/L;

    goto :goto_0

    :cond_1
    iput-object v0, p0, LL3/D;->g:LL3/L;

    :goto_0
    iget v0, p0, LL3/D;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/D;->f:I

    :cond_2
    iget v0, p1, LL3/E;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, LL3/E;->g:LL3/K;

    iget v2, p0, LL3/D;->f:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, LL3/D;->h:LL3/K;

    sget-object v3, LL3/K;->g:LL3/K;

    if-eq v2, v3, :cond_3

    new-instance v3, LL3/m;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LL3/m;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, LL3/m;->f:Ljava/util/List;

    invoke-virtual {v3, v2}, LL3/m;->k(LL3/K;)V

    invoke-virtual {v3, v0}, LL3/m;->k(LL3/K;)V

    invoke-virtual {v3}, LL3/m;->g()LL3/K;

    move-result-object v0

    iput-object v0, p0, LL3/D;->h:LL3/K;

    goto :goto_1

    :cond_3
    iput-object v0, p0, LL3/D;->h:LL3/K;

    :goto_1
    iget v0, p0, LL3/D;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/D;->f:I

    :cond_4
    iget v0, p1, LL3/E;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget-object v0, p1, LL3/E;->h:LL3/C;

    iget v2, p0, LL3/D;->f:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_5

    iget-object v2, p0, LL3/D;->i:LL3/C;

    sget-object v3, LL3/C;->m:LL3/C;

    if-eq v2, v3, :cond_5

    invoke-static {}, LL3/B;->h()LL3/B;

    move-result-object v3

    invoke-virtual {v3, v2}, LL3/B;->i(LL3/C;)V

    invoke-virtual {v3, v0}, LL3/B;->i(LL3/C;)V

    invoke-virtual {v3}, LL3/B;->g()LL3/C;

    move-result-object v0

    iput-object v0, p0, LL3/D;->i:LL3/C;

    goto :goto_2

    :cond_5
    iput-object v0, p0, LL3/D;->i:LL3/C;

    :goto_2
    iget v0, p0, LL3/D;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/D;->f:I

    :cond_6
    iget-object v0, p1, LL3/E;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, LL3/D;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, LL3/E;->i:Ljava/util/List;

    iput-object v0, p0, LL3/D;->j:Ljava/util/List;

    iget v0, p0, LL3/D;->f:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, LL3/D;->f:I

    goto :goto_3

    :cond_7
    iget v0, p0, LL3/D;->f:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LL3/D;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LL3/D;->j:Ljava/util/List;

    iget v0, p0, LL3/D;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/D;->f:I

    :cond_8
    iget-object v0, p0, LL3/D;->j:Ljava/util/List;

    iget-object v1, p1, LL3/E;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, LR3/l;->f(LR3/n;)V

    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LL3/E;->d:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
