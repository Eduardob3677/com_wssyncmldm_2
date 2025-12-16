.class public final LL3/k;
.super LR3/l;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:I

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;


# direct methods
.method public static h()LL3/k;
    .locals 2

    new-instance v0, LL3/k;

    invoke-direct {v0}, LR3/l;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, LL3/k;->g:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/k;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/k;->i:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LL3/k;->g()LL3/l;

    move-result-object p0

    invoke-virtual {p0}, LL3/l;->b()Z

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

    invoke-static {}, LL3/k;->h()LL3/k;

    move-result-object v0

    invoke-virtual {p0}, LL3/k;->g()LL3/l;

    move-result-object p0

    invoke-virtual {v0, p0}, LL3/k;->i(LL3/l;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LL3/l;->l:LL3/a;

    invoke-virtual {v1, p1, p2}, LL3/a;->a(LR3/f;LR3/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LL3/l;
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, LL3/k;->i(LL3/l;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, LR3/u;->c:LR3/b;

    check-cast p2, LL3/l;
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

    invoke-virtual {p0, v0}, LL3/k;->i(LL3/l;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LL3/l;

    invoke-virtual {p0, p1}, LL3/k;->i(LL3/l;)V

    return-object p0
.end method

.method public final g()LL3/l;
    .locals 4

    new-instance v0, LL3/l;

    invoke-direct {v0, p0}, LL3/l;-><init>(LR3/l;)V

    iget v1, p0, LL3/k;->f:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, LL3/k;->g:I

    iput v2, v0, LL3/l;->f:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, LL3/k;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/k;->h:Ljava/util/List;

    iget v1, p0, LL3/k;->f:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, LL3/k;->f:I

    :cond_1
    iget-object v1, p0, LL3/k;->h:Ljava/util/List;

    iput-object v1, v0, LL3/l;->g:Ljava/util/List;

    iget v1, p0, LL3/k;->f:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, LL3/k;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/k;->i:Ljava/util/List;

    iget v1, p0, LL3/k;->f:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, LL3/k;->f:I

    :cond_2
    iget-object p0, p0, LL3/k;->i:Ljava/util/List;

    iput-object p0, v0, LL3/l;->h:Ljava/util/List;

    iput v3, v0, LL3/l;->e:I

    return-object v0
.end method

.method public final i(LL3/l;)V
    .locals 3

    sget-object v0, LL3/l;->k:LL3/l;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LL3/l;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p1, LL3/l;->f:I

    iget v2, p0, LL3/k;->f:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/k;->f:I

    iput v0, p0, LL3/k;->g:I

    :cond_1
    iget-object v0, p1, LL3/l;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, LL3/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, LL3/l;->g:Ljava/util/List;

    iput-object v0, p0, LL3/k;->h:Ljava/util/List;

    iget v0, p0, LL3/k;->f:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, LL3/k;->f:I

    goto :goto_0

    :cond_2
    iget v0, p0, LL3/k;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LL3/k;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LL3/k;->h:Ljava/util/List;

    iget v0, p0, LL3/k;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/k;->f:I

    :cond_3
    iget-object v0, p0, LL3/k;->h:Ljava/util/List;

    iget-object v1, p1, LL3/l;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_0
    iget-object v0, p1, LL3/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, LL3/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, LL3/l;->h:Ljava/util/List;

    iput-object v0, p0, LL3/k;->i:Ljava/util/List;

    iget v0, p0, LL3/k;->f:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, LL3/k;->f:I

    goto :goto_1

    :cond_5
    iget v0, p0, LL3/k;->f:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LL3/k;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LL3/k;->i:Ljava/util/List;

    iget v0, p0, LL3/k;->f:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/k;->f:I

    :cond_6
    iget-object v0, p0, LL3/k;->i:Ljava/util/List;

    iget-object v1, p1, LL3/l;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, LR3/l;->f(LR3/n;)V

    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LL3/l;->d:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
