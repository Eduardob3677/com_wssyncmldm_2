.class public final LL3/o;
.super LR3/k;
.source "SourceFile"

# interfaces
.implements LR3/A;


# instance fields
.field public d:I

.field public e:LL3/p;

.field public f:Ljava/util/List;

.field public g:LL3/w;

.field public h:LL3/q;


# direct methods
.method public static g()LL3/o;
    .locals 2

    new-instance v0, LL3/o;

    invoke-direct {v0}, LR3/k;-><init>()V

    sget-object v1, LL3/p;->d:LL3/p;

    iput-object v1, v0, LL3/o;->e:LL3/p;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/o;->f:Ljava/util/List;

    sget-object v1, LL3/w;->n:LL3/w;

    iput-object v1, v0, LL3/o;->g:LL3/w;

    sget-object v1, LL3/q;->d:LL3/q;

    iput-object v1, v0, LL3/o;->h:LL3/q;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LL3/o;->f()LL3/r;

    move-result-object p0

    invoke-virtual {p0}, LL3/r;->b()Z

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

    invoke-static {}, LL3/o;->g()LL3/o;

    move-result-object v0

    invoke-virtual {p0}, LL3/o;->f()LL3/r;

    move-result-object p0

    invoke-virtual {v0, p0}, LL3/o;->h(LL3/r;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LL3/r;->l:LL3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LL3/r;

    invoke-direct {v1, p1, p2}, LL3/r;-><init>(LR3/f;LR3/i;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, LL3/o;->h(LL3/r;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, LR3/u;->c:LR3/b;

    check-cast p2, LL3/r;
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

    invoke-virtual {p0, v0}, LL3/o;->h(LL3/r;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LL3/r;

    invoke-virtual {p0, p1}, LL3/o;->h(LL3/r;)V

    return-object p0
.end method

.method public final f()LL3/r;
    .locals 5

    new-instance v0, LL3/r;

    invoke-direct {v0, p0}, LL3/r;-><init>(LR3/k;)V

    iget v1, p0, LL3/o;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, LL3/o;->e:LL3/p;

    iput-object v2, v0, LL3/r;->e:LL3/p;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, LL3/o;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, LL3/o;->f:Ljava/util/List;

    iget v2, p0, LL3/o;->d:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, LL3/o;->d:I

    :cond_1
    iget-object v2, p0, LL3/o;->f:Ljava/util/List;

    iput-object v2, v0, LL3/r;->f:Ljava/util/List;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    :cond_2
    iget-object v2, p0, LL3/o;->g:LL3/w;

    iput-object v2, v0, LL3/r;->g:LL3/w;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object p0, p0, LL3/o;->h:LL3/q;

    iput-object p0, v0, LL3/r;->h:LL3/q;

    iput v3, v0, LL3/r;->d:I

    return-object v0
.end method

.method public final h(LL3/r;)V
    .locals 4

    sget-object v0, LL3/r;->k:LL3/r;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LL3/r;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, LL3/r;->e:LL3/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, LL3/o;->d:I

    or-int/2addr v2, v1

    iput v2, p0, LL3/o;->d:I

    iput-object v0, p0, LL3/o;->e:LL3/p;

    :cond_1
    iget-object v0, p1, LL3/r;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, LL3/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, LL3/r;->f:Ljava/util/List;

    iput-object v0, p0, LL3/o;->f:Ljava/util/List;

    iget v0, p0, LL3/o;->d:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, LL3/o;->d:I

    goto :goto_0

    :cond_2
    iget v0, p0, LL3/o;->d:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, LL3/o;->f:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LL3/o;->f:Ljava/util/List;

    iget v0, p0, LL3/o;->d:I

    or-int/2addr v0, v2

    iput v0, p0, LL3/o;->d:I

    :cond_3
    iget-object v0, p0, LL3/o;->f:Ljava/util/List;

    iget-object v3, p1, LL3/r;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_0
    iget v0, p1, LL3/r;->d:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const/4 v0, 0x4

    if-eqz v1, :cond_7

    iget-object v1, p1, LL3/r;->g:LL3/w;

    iget v2, p0, LL3/o;->d:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_6

    iget-object v2, p0, LL3/o;->g:LL3/w;

    sget-object v3, LL3/w;->n:LL3/w;

    if-eq v2, v3, :cond_6

    invoke-static {}, LL3/u;->g()LL3/u;

    move-result-object v3

    invoke-virtual {v3, v2}, LL3/u;->h(LL3/w;)V

    invoke-virtual {v3, v1}, LL3/u;->h(LL3/w;)V

    invoke-virtual {v3}, LL3/u;->f()LL3/w;

    move-result-object v1

    iput-object v1, p0, LL3/o;->g:LL3/w;

    goto :goto_2

    :cond_6
    iput-object v1, p0, LL3/o;->g:LL3/w;

    :goto_2
    iget v1, p0, LL3/o;->d:I

    or-int/2addr v1, v0

    iput v1, p0, LL3/o;->d:I

    :cond_7
    iget v1, p1, LL3/r;->d:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_8

    iget-object v0, p1, LL3/r;->h:LL3/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, LL3/o;->d:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, LL3/o;->d:I

    iput-object v0, p0, LL3/o;->h:LL3/q;

    :cond_8
    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LL3/r;->c:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
