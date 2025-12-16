.class public final LL3/b;
.super LR3/k;
.source "SourceFile"

# interfaces
.implements LR3/A;


# instance fields
.field public d:I

.field public e:LL3/c;

.field public f:J

.field public g:F

.field public h:D

.field public i:I

.field public j:I

.field public k:I

.field public l:LL3/g;

.field public m:Ljava/util/List;

.field public n:I

.field public o:I


# direct methods
.method public static g()LL3/b;
    .locals 2

    new-instance v0, LL3/b;

    invoke-direct {v0}, LR3/k;-><init>()V

    sget-object v1, LL3/c;->d:LL3/c;

    iput-object v1, v0, LL3/b;->e:LL3/c;

    sget-object v1, LL3/g;->i:LL3/g;

    iput-object v1, v0, LL3/b;->l:LL3/g;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/b;->m:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()LR3/b;
    .locals 1

    invoke-virtual {p0}, LL3/b;->f()LL3/d;

    move-result-object p0

    invoke-virtual {p0}, LL3/d;->b()Z

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

    invoke-static {}, LL3/b;->g()LL3/b;

    move-result-object v0

    invoke-virtual {p0}, LL3/b;->f()LL3/d;

    move-result-object p0

    invoke-virtual {v0, p0}, LL3/b;->h(LL3/d;)V

    return-object v0
.end method

.method public final d(LR3/f;LR3/i;)LR3/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LL3/d;->s:LL3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LL3/d;

    invoke-direct {v1, p1, p2}, LL3/d;-><init>(LR3/f;LR3/i;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, LL3/b;->h(LL3/d;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, LR3/u;->c:LR3/b;

    check-cast p2, LL3/d;
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

    invoke-virtual {p0, v0}, LL3/b;->h(LL3/d;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(LR3/q;)LR3/k;
    .locals 0

    check-cast p1, LL3/d;

    invoke-virtual {p0, p1}, LL3/b;->h(LL3/d;)V

    return-object p0
.end method

.method public final f()LL3/d;
    .locals 6

    new-instance v0, LL3/d;

    invoke-direct {v0, p0}, LL3/d;-><init>(LR3/k;)V

    iget v1, p0, LL3/b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, LL3/b;->e:LL3/c;

    iput-object v2, v0, LL3/d;->e:LL3/c;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-wide v4, p0, LL3/b;->f:J

    iput-wide v4, v0, LL3/d;->f:J

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, LL3/b;->g:F

    iput v2, v0, LL3/d;->g:F

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-wide v4, p0, LL3/b;->h:D

    iput-wide v4, v0, LL3/d;->h:D

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, LL3/b;->i:I

    iput v2, v0, LL3/d;->i:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget v2, p0, LL3/b;->j:I

    iput v2, v0, LL3/d;->j:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    :cond_6
    iget v2, p0, LL3/b;->k:I

    iput v2, v0, LL3/d;->k:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    :cond_7
    iget-object v2, p0, LL3/b;->l:LL3/g;

    iput-object v2, v0, LL3/d;->l:LL3/g;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    iget-object v2, p0, LL3/b;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, LL3/b;->m:Ljava/util/List;

    iget v2, p0, LL3/b;->d:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, LL3/b;->d:I

    :cond_8
    iget-object v2, p0, LL3/b;->m:Ljava/util/List;

    iput-object v2, v0, LL3/d;->m:Ljava/util/List;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    :cond_9
    iget v2, p0, LL3/b;->n:I

    iput v2, v0, LL3/d;->n:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    :cond_a
    iget p0, p0, LL3/b;->o:I

    iput p0, v0, LL3/d;->o:I

    iput v3, v0, LL3/d;->d:I

    return-object v0
.end method

.method public final h(LL3/d;)V
    .locals 5

    sget-object v0, LL3/d;->r:LL3/d;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, LL3/d;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, LL3/d;->e:LL3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, LL3/b;->d:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/b;->d:I

    iput-object v0, p0, LL3/b;->e:LL3/c;

    :cond_1
    iget v0, p1, LL3/d;->d:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-wide v3, p1, LL3/d;->f:J

    iget v1, p0, LL3/b;->d:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/b;->d:I

    iput-wide v3, p0, LL3/b;->f:J

    :cond_2
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget v1, p1, LL3/d;->g:F

    iget v3, p0, LL3/b;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/b;->d:I

    iput v1, p0, LL3/b;->g:F

    :cond_3
    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget-wide v3, p1, LL3/d;->h:D

    iget v1, p0, LL3/b;->d:I

    or-int/2addr v1, v2

    iput v1, p0, LL3/b;->d:I

    iput-wide v3, p0, LL3/b;->h:D

    :cond_4
    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    iget v1, p1, LL3/d;->i:I

    iget v3, p0, LL3/b;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/b;->d:I

    iput v1, p0, LL3/b;->i:I

    :cond_5
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    iget v1, p1, LL3/d;->j:I

    iget v3, p0, LL3/b;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/b;->d:I

    iput v1, p0, LL3/b;->j:I

    :cond_6
    and-int/lit8 v1, v0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    iget v1, p1, LL3/d;->k:I

    iget v3, p0, LL3/b;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/b;->d:I

    iput v1, p0, LL3/b;->k:I

    :cond_7
    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    iget-object v0, p1, LL3/d;->l:LL3/g;

    iget v2, p0, LL3/b;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_8

    iget-object v2, p0, LL3/b;->l:LL3/g;

    sget-object v3, LL3/g;->i:LL3/g;

    if-eq v2, v3, :cond_8

    new-instance v3, LL3/f;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LL3/f;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, LL3/f;->f:Ljava/lang/Object;

    invoke-virtual {v3, v2}, LL3/f;->k(LL3/g;)V

    invoke-virtual {v3, v0}, LL3/f;->k(LL3/g;)V

    invoke-virtual {v3}, LL3/f;->g()LL3/g;

    move-result-object v0

    iput-object v0, p0, LL3/b;->l:LL3/g;

    goto :goto_0

    :cond_8
    iput-object v0, p0, LL3/b;->l:LL3/g;

    :goto_0
    iget v0, p0, LL3/b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/b;->d:I

    :cond_9
    iget-object v0, p1, LL3/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x100

    if-nez v0, :cond_c

    iget-object v0, p0, LL3/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, LL3/d;->m:Ljava/util/List;

    iput-object v0, p0, LL3/b;->m:Ljava/util/List;

    iget v0, p0, LL3/b;->d:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, LL3/b;->d:I

    goto :goto_1

    :cond_a
    iget v0, p0, LL3/b;->d:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LL3/b;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LL3/b;->m:Ljava/util/List;

    iget v0, p0, LL3/b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, LL3/b;->d:I

    :cond_b
    iget-object v0, p0, LL3/b;->m:Ljava/util/List;

    iget-object v2, p1, LL3/d;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    :goto_1
    iget v0, p1, LL3/d;->d:I

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x200

    if-ne v2, v1, :cond_d

    iget v1, p1, LL3/d;->n:I

    iget v2, p0, LL3/b;->d:I

    or-int/2addr v2, v3

    iput v2, p0, LL3/b;->d:I

    iput v1, p0, LL3/b;->n:I

    :cond_d
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_e

    iget v0, p1, LL3/d;->o:I

    iget v1, p0, LL3/b;->d:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, LL3/b;->d:I

    iput v0, p0, LL3/b;->o:I

    :cond_e
    iget-object v0, p0, LR3/k;->c:LR3/e;

    iget-object p1, p1, LL3/d;->c:LR3/e;

    invoke-virtual {v0, p1}, LR3/e;->m(LR3/e;)LR3/e;

    move-result-object p1

    iput-object p1, p0, LR3/k;->c:LR3/e;

    return-void
.end method
