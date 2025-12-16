.class public final LO3/f;
.super LR3/k;
.source "SourceFile"

# interfaces
.implements LR3/A;


# instance fields
.field public d:I

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;


# direct methods
.method public static g()LO3/f;
    .locals 2

    new-instance v0, LO3/f;

    invoke-direct {v0}, LR3/k;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LO3/f;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LO3/f;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LO3/f;->f()LO3/j;

    move-result-object p0

    invoke-virtual {p0}, LO3/j;->b()Z

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

    invoke-static {}, LO3/f;->g()LO3/f;

    move-result-object v0

    invoke-virtual {p0}, LO3/f;->f()LO3/j;

    move-result-object p0

    invoke-virtual {v0, p0}, LO3/f;->h(LO3/j;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LO3/j;->j:LL3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LO3/j;

    invoke-direct {v1, p1, p2}, LO3/j;-><init>(LR3/f;LR3/i;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, LO3/f;->h(LO3/j;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, LR3/u;->c:LR3/b;

    check-cast p2, LO3/j;
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

    invoke-virtual {p0, v0}, LO3/f;->h(LO3/j;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LO3/j;

    invoke-virtual {p0, p1}, LO3/f;->h(LO3/j;)V

    return-object p0
.end method

.method public final f()LO3/j;
    .locals 3

    new-instance v0, LO3/j;

    invoke-direct {v0, p0}, LO3/j;-><init>(LR3/k;)V

    iget v1, p0, LO3/f;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LO3/f;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LO3/f;->e:Ljava/util/List;

    iget v1, p0, LO3/f;->d:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, LO3/f;->d:I

    :cond_0
    iget-object v1, p0, LO3/f;->e:Ljava/util/List;

    iput-object v1, v0, LO3/j;->d:Ljava/util/List;

    iget v1, p0, LO3/f;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, LO3/f;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LO3/f;->f:Ljava/util/List;

    iget v1, p0, LO3/f;->d:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, LO3/f;->d:I

    :cond_1
    iget-object p0, p0, LO3/f;->f:Ljava/util/List;

    iput-object p0, v0, LO3/j;->e:Ljava/util/List;

    return-object v0
.end method

.method public final h(LO3/j;)V
    .locals 3

    sget-object v0, LO3/j;->i:LO3/j;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, LO3/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LO3/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, LO3/j;->d:Ljava/util/List;

    iput-object v0, p0, LO3/f;->e:Ljava/util/List;

    iget v0, p0, LO3/f;->d:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, LO3/f;->d:I

    goto :goto_0

    :cond_1
    iget v0, p0, LO3/f;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LO3/f;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LO3/f;->e:Ljava/util/List;

    iget v0, p0, LO3/f;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LO3/f;->d:I

    :cond_2
    iget-object v0, p0, LO3/f;->e:Ljava/util/List;

    iget-object v1, p1, LO3/j;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p1, LO3/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LO3/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, LO3/j;->e:Ljava/util/List;

    iput-object v0, p0, LO3/f;->f:Ljava/util/List;

    iget v0, p0, LO3/f;->d:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, LO3/f;->d:I

    goto :goto_1

    :cond_4
    iget v0, p0, LO3/f;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LO3/f;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LO3/f;->f:Ljava/util/List;

    iget v0, p0, LO3/f;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LO3/f;->d:I

    :cond_5
    iget-object v0, p0, LO3/f;->f:Ljava/util/List;

    iget-object v1, p1, LO3/j;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_1
    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LO3/j;->c:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
