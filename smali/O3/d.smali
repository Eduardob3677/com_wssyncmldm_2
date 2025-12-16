.class public final LO3/d;
.super LR3/k;
.source "SourceFile"

# interfaces
.implements LR3/A;


# instance fields
.field public d:I

.field public e:LO3/b;

.field public f:LO3/c;

.field public g:LO3/c;

.field public h:LO3/c;

.field public i:LO3/c;


# direct methods
.method public static g()LO3/d;
    .locals 2

    new-instance v0, LO3/d;

    invoke-direct {v0}, LR3/k;-><init>()V

    sget-object v1, LO3/b;->i:LO3/b;

    iput-object v1, v0, LO3/d;->e:LO3/b;

    sget-object v1, LO3/c;->i:LO3/c;

    iput-object v1, v0, LO3/d;->f:LO3/c;

    iput-object v1, v0, LO3/d;->g:LO3/c;

    iput-object v1, v0, LO3/d;->h:LO3/c;

    iput-object v1, v0, LO3/d;->i:LO3/c;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LO3/d;->f()LO3/e;

    move-result-object p0

    invoke-virtual {p0}, LO3/e;->b()Z

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

    invoke-static {}, LO3/d;->g()LO3/d;

    move-result-object v0

    invoke-virtual {p0}, LO3/d;->f()LO3/e;

    move-result-object p0

    invoke-virtual {v0, p0}, LO3/d;->h(LO3/e;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LO3/e;->m:LL3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LO3/e;

    invoke-direct {v1, p1, p2}, LO3/e;-><init>(LR3/f;LR3/i;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, LO3/d;->h(LO3/e;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, LR3/u;->c:LR3/b;

    check-cast p2, LO3/e;
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

    invoke-virtual {p0, v0}, LO3/d;->h(LO3/e;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LO3/e;

    invoke-virtual {p0, p1}, LO3/d;->h(LO3/e;)V

    return-object p0
.end method

.method public final f()LO3/e;
    .locals 5

    new-instance v0, LO3/e;

    invoke-direct {v0, p0}, LO3/e;-><init>(LR3/k;)V

    iget v1, p0, LO3/d;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, LO3/d;->e:LO3/b;

    iput-object v2, v0, LO3/e;->e:LO3/b;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, LO3/d;->f:LO3/c;

    iput-object v2, v0, LO3/e;->f:LO3/c;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, LO3/d;->g:LO3/c;

    iput-object v2, v0, LO3/e;->g:LO3/c;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, LO3/d;->h:LO3/c;

    iput-object v2, v0, LO3/e;->h:LO3/c;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object p0, p0, LO3/d;->i:LO3/c;

    iput-object p0, v0, LO3/e;->i:LO3/c;

    iput v3, v0, LO3/e;->d:I

    return-object v0
.end method

.method public final h(LO3/e;)V
    .locals 5

    sget-object v0, LO3/e;->l:LO3/e;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LO3/e;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, LO3/e;->e:LO3/b;

    iget v2, p0, LO3/d;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    iget-object v2, p0, LO3/d;->e:LO3/b;

    sget-object v3, LO3/b;->i:LO3/b;

    if-eq v2, v3, :cond_1

    new-instance v3, LO3/a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LO3/a;-><init>(I)V

    invoke-virtual {v3, v2}, LO3/a;->h(LO3/b;)V

    invoke-virtual {v3, v0}, LO3/a;->h(LO3/b;)V

    invoke-virtual {v3}, LO3/a;->f()LO3/b;

    move-result-object v0

    iput-object v0, p0, LO3/d;->e:LO3/b;

    goto :goto_0

    :cond_1
    iput-object v0, p0, LO3/d;->e:LO3/b;

    :goto_0
    iget v0, p0, LO3/d;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LO3/d;->d:I

    :cond_2
    iget v0, p1, LO3/e;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, LO3/e;->f:LO3/c;

    iget v2, p0, LO3/d;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, LO3/d;->f:LO3/c;

    sget-object v3, LO3/c;->i:LO3/c;

    if-eq v2, v3, :cond_3

    invoke-static {v2}, LO3/c;->i(LO3/c;)LO3/a;

    move-result-object v2

    invoke-virtual {v2, v0}, LO3/a;->i(LO3/c;)V

    invoke-virtual {v2}, LO3/a;->g()LO3/c;

    move-result-object v0

    iput-object v0, p0, LO3/d;->f:LO3/c;

    goto :goto_1

    :cond_3
    iput-object v0, p0, LO3/d;->f:LO3/c;

    :goto_1
    iget v0, p0, LO3/d;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LO3/d;->d:I

    :cond_4
    iget v0, p1, LO3/e;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget-object v0, p1, LO3/e;->g:LO3/c;

    iget v2, p0, LO3/d;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_5

    iget-object v2, p0, LO3/d;->g:LO3/c;

    sget-object v3, LO3/c;->i:LO3/c;

    if-eq v2, v3, :cond_5

    invoke-static {v2}, LO3/c;->i(LO3/c;)LO3/a;

    move-result-object v2

    invoke-virtual {v2, v0}, LO3/a;->i(LO3/c;)V

    invoke-virtual {v2}, LO3/a;->g()LO3/c;

    move-result-object v0

    iput-object v0, p0, LO3/d;->g:LO3/c;

    goto :goto_2

    :cond_5
    iput-object v0, p0, LO3/d;->g:LO3/c;

    :goto_2
    iget v0, p0, LO3/d;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LO3/d;->d:I

    :cond_6
    iget v0, p1, LO3/e;->d:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget-object v0, p1, LO3/e;->h:LO3/c;

    iget v2, p0, LO3/d;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_7

    iget-object v2, p0, LO3/d;->h:LO3/c;

    sget-object v3, LO3/c;->i:LO3/c;

    if-eq v2, v3, :cond_7

    invoke-static {v2}, LO3/c;->i(LO3/c;)LO3/a;

    move-result-object v2

    invoke-virtual {v2, v0}, LO3/a;->i(LO3/c;)V

    invoke-virtual {v2}, LO3/a;->g()LO3/c;

    move-result-object v0

    iput-object v0, p0, LO3/d;->h:LO3/c;

    goto :goto_3

    :cond_7
    iput-object v0, p0, LO3/d;->h:LO3/c;

    :goto_3
    iget v0, p0, LO3/d;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LO3/d;->d:I

    :cond_8
    iget v0, p1, LO3/e;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    iget-object v0, p1, LO3/e;->i:LO3/c;

    iget v2, p0, LO3/d;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_9

    iget-object v2, p0, LO3/d;->i:LO3/c;

    sget-object v3, LO3/c;->i:LO3/c;

    if-eq v2, v3, :cond_9

    invoke-static {v2}, LO3/c;->i(LO3/c;)LO3/a;

    move-result-object v2

    invoke-virtual {v2, v0}, LO3/a;->i(LO3/c;)V

    invoke-virtual {v2}, LO3/a;->g()LO3/c;

    move-result-object v0

    iput-object v0, p0, LO3/d;->i:LO3/c;

    goto :goto_4

    :cond_9
    iput-object v0, p0, LO3/d;->i:LO3/c;

    :goto_4
    iget v0, p0, LO3/d;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LO3/d;->d:I

    :cond_a
    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LO3/e;->c:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
