.class public final LL3/a0;
.super LR3/k;
.source "SourceFile"

# interfaces
.implements LR3/A;


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:LL3/b0;

.field public h:I

.field public i:I

.field public j:LL3/c0;


# direct methods
.method public static g()LL3/a0;
    .locals 2

    new-instance v0, LL3/a0;

    invoke-direct {v0}, LR3/k;-><init>()V

    sget-object v1, LL3/b0;->e:LL3/b0;

    iput-object v1, v0, LL3/a0;->g:LL3/b0;

    sget-object v1, LL3/c0;->d:LL3/c0;

    iput-object v1, v0, LL3/a0;->j:LL3/c0;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LL3/a0;->f()LL3/d0;

    move-result-object p0

    invoke-virtual {p0}, LL3/d0;->b()Z

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

    invoke-static {}, LL3/a0;->g()LL3/a0;

    move-result-object v0

    invoke-virtual {p0}, LL3/a0;->f()LL3/d0;

    move-result-object p0

    invoke-virtual {v0, p0}, LL3/a0;->h(LL3/d0;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 1

    const/4 p2, 0x0

    :try_start_0
    sget-object v0, LL3/d0;->n:LL3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LL3/d0;

    invoke-direct {v0, p1}, LL3/d0;-><init>(LR3/f;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, LL3/a0;->h(LL3/d0;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p1, LR3/u;->c:LR3/b;

    check-cast v0, LL3/d0;
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

    invoke-virtual {p0, p2}, LL3/a0;->h(LL3/d0;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LL3/d0;

    invoke-virtual {p0, p1}, LL3/a0;->h(LL3/d0;)V

    return-object p0
.end method

.method public final f()LL3/d0;
    .locals 5

    new-instance v0, LL3/d0;

    invoke-direct {v0, p0}, LL3/d0;-><init>(LR3/k;)V

    iget v1, p0, LL3/a0;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, LL3/a0;->e:I

    iput v2, v0, LL3/d0;->e:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, LL3/a0;->f:I

    iput v2, v0, LL3/d0;->f:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, LL3/a0;->g:LL3/b0;

    iput-object v2, v0, LL3/d0;->g:LL3/b0;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, LL3/a0;->h:I

    iput v2, v0, LL3/d0;->h:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, LL3/a0;->i:I

    iput v2, v0, LL3/d0;->i:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget-object p0, p0, LL3/a0;->j:LL3/c0;

    iput-object p0, v0, LL3/d0;->j:LL3/c0;

    iput v3, v0, LL3/d0;->d:I

    return-object v0
.end method

.method public final h(LL3/d0;)V
    .locals 4

    sget-object v0, LL3/d0;->m:LL3/d0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LL3/d0;->d:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, LL3/d0;->e:I

    iget v3, p0, LL3/a0;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/a0;->d:I

    iput v1, p0, LL3/a0;->e:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, LL3/d0;->f:I

    iget v3, p0, LL3/a0;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/a0;->d:I

    iput v1, p0, LL3/a0;->f:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, LL3/d0;->g:LL3/b0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, LL3/a0;->d:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/a0;->d:I

    iput-object v0, p0, LL3/a0;->g:LL3/b0;

    :cond_3
    iget v0, p1, LL3/d0;->d:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget v1, p1, LL3/d0;->h:I

    iget v3, p0, LL3/a0;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/a0;->d:I

    iput v1, p0, LL3/a0;->h:I

    :cond_4
    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    iget v1, p1, LL3/d0;->i:I

    iget v3, p0, LL3/a0;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/a0;->d:I

    iput v1, p0, LL3/a0;->i:I

    :cond_5
    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget-object v0, p1, LL3/d0;->j:LL3/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, LL3/a0;->d:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/a0;->d:I

    iput-object v0, p0, LL3/a0;->j:LL3/c0;

    :cond_6
    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LL3/d0;->c:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
