.class public final LL3/M;
.super LR3/k;
.source "SourceFile"

# interfaces
.implements LR3/A;


# instance fields
.field public d:I

.field public e:LL3/N;

.field public f:LL3/Q;

.field public g:I


# direct methods
.method public static g()LL3/M;
    .locals 2

    new-instance v0, LL3/M;

    invoke-direct {v0}, LR3/k;-><init>()V

    sget-object v1, LL3/N;->f:LL3/N;

    iput-object v1, v0, LL3/M;->e:LL3/N;

    sget-object v1, LL3/Q;->v:LL3/Q;

    iput-object v1, v0, LL3/M;->f:LL3/Q;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LL3/M;->f()LL3/O;

    move-result-object p0

    invoke-virtual {p0}, LL3/O;->b()Z

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

    invoke-static {}, LL3/M;->g()LL3/M;

    move-result-object v0

    invoke-virtual {p0}, LL3/M;->f()LL3/O;

    move-result-object p0

    invoke-virtual {v0, p0}, LL3/M;->h(LL3/O;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LL3/O;->k:LL3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LL3/O;

    invoke-direct {v1, p1, p2}, LL3/O;-><init>(LR3/f;LR3/i;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, LL3/M;->h(LL3/O;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, LR3/u;->c:LR3/b;

    check-cast p2, LL3/O;
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

    invoke-virtual {p0, v0}, LL3/M;->h(LL3/O;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LL3/O;

    invoke-virtual {p0, p1}, LL3/M;->h(LL3/O;)V

    return-object p0
.end method

.method public final f()LL3/O;
    .locals 5

    new-instance v0, LL3/O;

    invoke-direct {v0, p0}, LL3/O;-><init>(LR3/k;)V

    iget v1, p0, LL3/M;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, LL3/M;->e:LL3/N;

    iput-object v2, v0, LL3/O;->e:LL3/N;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, LL3/M;->f:LL3/Q;

    iput-object v2, v0, LL3/O;->f:LL3/Q;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget p0, p0, LL3/M;->g:I

    iput p0, v0, LL3/O;->g:I

    iput v3, v0, LL3/O;->d:I

    return-object v0
.end method

.method public final h(LL3/O;)V
    .locals 4

    sget-object v0, LL3/O;->j:LL3/O;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LL3/O;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, LL3/O;->e:LL3/N;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, LL3/M;->d:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/M;->d:I

    iput-object v0, p0, LL3/M;->e:LL3/N;

    :cond_1
    iget v0, p1, LL3/O;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, LL3/O;->f:LL3/Q;

    iget v2, p0, LL3/M;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, LL3/M;->f:LL3/Q;

    sget-object v3, LL3/Q;->v:LL3/Q;

    if-eq v2, v3, :cond_2

    invoke-static {v2}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v2

    invoke-virtual {v2, v0}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v2}, LL3/P;->g()LL3/Q;

    move-result-object v0

    iput-object v0, p0, LL3/M;->f:LL3/Q;

    goto :goto_0

    :cond_2
    iput-object v0, p0, LL3/M;->f:LL3/Q;

    :goto_0
    iget v0, p0, LL3/M;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/M;->d:I

    :cond_3
    iget v0, p1, LL3/O;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p1, LL3/O;->g:I

    iget v2, p0, LL3/M;->d:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/M;->d:I

    iput v0, p0, LL3/M;->g:I

    :cond_4
    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LL3/O;->c:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
