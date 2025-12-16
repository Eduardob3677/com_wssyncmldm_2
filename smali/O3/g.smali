.class public final LO3/g;
.super LR3/k;
.source "SourceFile"

# interfaces
.implements LR3/A;


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Object;

.field public h:LO3/h;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;


# direct methods
.method public static g()LO3/g;
    .locals 2

    new-instance v0, LO3/g;

    invoke-direct {v0}, LR3/k;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, LO3/g;->e:I

    const-string v1, ""

    iput-object v1, v0, LO3/g;->g:Ljava/lang/Object;

    sget-object v1, LO3/h;->d:LO3/h;

    iput-object v1, v0, LO3/g;->h:LO3/h;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LO3/g;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LO3/g;->j:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LO3/g;->f()LO3/i;

    move-result-object p0

    invoke-virtual {p0}, LO3/i;->b()Z

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

    invoke-static {}, LO3/g;->g()LO3/g;

    move-result-object v0

    invoke-virtual {p0}, LO3/g;->f()LO3/i;

    move-result-object p0

    invoke-virtual {v0, p0}, LO3/g;->h(LO3/i;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 1

    const/4 p2, 0x0

    :try_start_0
    sget-object v0, LO3/i;->p:LL3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LO3/i;

    invoke-direct {v0, p1}, LO3/i;-><init>(LR3/f;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, LO3/g;->h(LO3/i;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p1, LR3/u;->c:LR3/b;

    check-cast v0, LO3/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, LO3/g;->h(LO3/i;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LO3/i;

    invoke-virtual {p0, p1}, LO3/g;->h(LO3/i;)V

    return-object p0
.end method

.method public final f()LO3/i;
    .locals 5

    new-instance v0, LO3/i;

    invoke-direct {v0, p0}, LO3/i;-><init>(LR3/k;)V

    iget v1, p0, LO3/g;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, LO3/g;->e:I

    iput v2, v0, LO3/i;->e:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, LO3/g;->f:I

    iput v2, v0, LO3/i;->f:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, LO3/g;->g:Ljava/lang/Object;

    iput-object v2, v0, LO3/i;->g:Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, LO3/g;->h:LO3/h;

    iput-object v2, v0, LO3/i;->h:LO3/h;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, LO3/g;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LO3/g;->i:Ljava/util/List;

    iget v1, p0, LO3/g;->d:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, LO3/g;->d:I

    :cond_4
    iget-object v1, p0, LO3/g;->i:Ljava/util/List;

    iput-object v1, v0, LO3/i;->i:Ljava/util/List;

    iget v1, p0, LO3/g;->d:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, LO3/g;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LO3/g;->j:Ljava/util/List;

    iget v1, p0, LO3/g;->d:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, LO3/g;->d:I

    :cond_5
    iget-object p0, p0, LO3/g;->j:Ljava/util/List;

    iput-object p0, v0, LO3/i;->k:Ljava/util/List;

    iput v3, v0, LO3/i;->d:I

    return-object v0
.end method

.method public final h(LO3/i;)V
    .locals 4

    sget-object v0, LO3/i;->o:LO3/i;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LO3/i;->d:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, LO3/i;->e:I

    iget v3, p0, LO3/g;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LO3/g;->d:I

    iput v1, p0, LO3/g;->e:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, LO3/i;->f:I

    iget v3, p0, LO3/g;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LO3/g;->d:I

    iput v1, p0, LO3/g;->f:I

    :cond_2
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget v1, p0, LO3/g;->d:I

    or-int/2addr v1, v2

    iput v1, p0, LO3/g;->d:I

    iget-object v1, p1, LO3/i;->g:Ljava/lang/Object;

    iput-object v1, p0, LO3/g;->g:Ljava/lang/Object;

    :cond_3
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, LO3/i;->h:LO3/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, LO3/g;->d:I

    or-int/2addr v1, v2

    iput v1, p0, LO3/g;->d:I

    iput-object v0, p0, LO3/g;->h:LO3/h;

    :cond_4
    iget-object v0, p1, LO3/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, LO3/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, LO3/i;->i:Ljava/util/List;

    iput-object v0, p0, LO3/g;->i:Ljava/util/List;

    iget v0, p0, LO3/g;->d:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, LO3/g;->d:I

    goto :goto_0

    :cond_5
    iget v0, p0, LO3/g;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LO3/g;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LO3/g;->i:Ljava/util/List;

    iget v0, p0, LO3/g;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LO3/g;->d:I

    :cond_6
    iget-object v0, p0, LO3/g;->i:Ljava/util/List;

    iget-object v1, p1, LO3/i;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_0
    iget-object v0, p1, LO3/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, LO3/g;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, LO3/i;->k:Ljava/util/List;

    iput-object v0, p0, LO3/g;->j:Ljava/util/List;

    iget v0, p0, LO3/g;->d:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, LO3/g;->d:I

    goto :goto_1

    :cond_8
    iget v0, p0, LO3/g;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LO3/g;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LO3/g;->j:Ljava/util/List;

    iget v0, p0, LO3/g;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LO3/g;->d:I

    :cond_9
    iget-object v0, p0, LO3/g;->j:Ljava/util/List;

    iget-object v1, p1, LO3/i;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    :goto_1
    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LO3/i;->c:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
