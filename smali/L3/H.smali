.class public final LL3/H;
.super LR3/k;
.source "SourceFile"

# interfaces
.implements LR3/A;


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:LL3/I;


# direct methods
.method public static g()LL3/H;
    .locals 2

    new-instance v0, LL3/H;

    invoke-direct {v0}, LR3/k;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, LL3/H;->e:I

    sget-object v1, LL3/I;->e:LL3/I;

    iput-object v1, v0, LL3/H;->g:LL3/I;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LL3/H;->f()LL3/J;

    move-result-object p0

    invoke-virtual {p0}, LL3/J;->b()Z

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

    invoke-static {}, LL3/H;->g()LL3/H;

    move-result-object v0

    invoke-virtual {p0}, LL3/H;->f()LL3/J;

    move-result-object p0

    invoke-virtual {v0, p0}, LL3/H;->h(LL3/J;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 1

    const/4 p2, 0x0

    :try_start_0
    sget-object v0, LL3/J;->k:LL3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LL3/J;

    invoke-direct {v0, p1}, LL3/J;-><init>(LR3/f;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, LL3/H;->h(LL3/J;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p1, LR3/u;->c:LR3/b;

    check-cast v0, LL3/J;
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

    invoke-virtual {p0, p2}, LL3/H;->h(LL3/J;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LL3/J;

    invoke-virtual {p0, p1}, LL3/H;->h(LL3/J;)V

    return-object p0
.end method

.method public final f()LL3/J;
    .locals 5

    new-instance v0, LL3/J;

    invoke-direct {v0, p0}, LL3/J;-><init>(LR3/k;)V

    iget v1, p0, LL3/H;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, LL3/H;->e:I

    iput v2, v0, LL3/J;->e:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, LL3/H;->f:I

    iput v2, v0, LL3/J;->f:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object p0, p0, LL3/H;->g:LL3/I;

    iput-object p0, v0, LL3/J;->g:LL3/I;

    iput v3, v0, LL3/J;->d:I

    return-object v0
.end method

.method public final h(LL3/J;)V
    .locals 4

    sget-object v0, LL3/J;->j:LL3/J;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LL3/J;->d:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, LL3/J;->e:I

    iget v3, p0, LL3/H;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/H;->d:I

    iput v1, p0, LL3/H;->e:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, LL3/J;->f:I

    iget v3, p0, LL3/H;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/H;->d:I

    iput v1, p0, LL3/H;->f:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, LL3/J;->g:LL3/I;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, LL3/H;->d:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/H;->d:I

    iput-object v0, p0, LL3/H;->g:LL3/I;

    :cond_3
    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LL3/J;->c:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
