.class public final LL3/O;
.super LR3/q;
.source "SourceFile"


# static fields
.field public static final j:LL3/O;

.field public static final k:LL3/a;


# instance fields
.field public final c:LR3/e;

.field public d:I

.field public e:LL3/N;

.field public f:LL3/Q;

.field public g:I

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/O;->k:LL3/a;

    new-instance v0, LL3/O;

    invoke-direct {v0}, LL3/O;-><init>()V

    sput-object v0, LL3/O;->j:LL3/O;

    sget-object v1, LL3/N;->f:LL3/N;

    iput-object v1, v0, LL3/O;->e:LL3/N;

    sget-object v1, LL3/Q;->v:LL3/Q;

    iput-object v1, v0, LL3/O;->f:LL3/Q;

    const/4 v1, 0x0

    iput v1, v0, LL3/O;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/O;->h:B

    iput v0, p0, LL3/O;->i:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/O;->c:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 9

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/O;->h:B

    iput v0, p0, LL3/O;->i:I

    sget-object v0, LL3/N;->f:LL3/N;

    iput-object v0, p0, LL3/O;->e:LL3/N;

    sget-object v1, LL3/Q;->v:LL3/Q;

    iput-object v1, p0, LL3/O;->f:LL3/Q;

    const/4 v1, 0x0

    iput v1, p0, LL3/O;->g:I

    new-instance v2, LR3/d;

    invoke-direct {v2}, LR3/d;-><init>()V

    const/4 v3, 0x1

    invoke-static {v2, v3}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v4

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v5, v6, :cond_6

    const/16 v6, 0x12

    if-eq v5, v6, :cond_3

    const/16 v6, 0x18

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v5, v4}, LR3/f;->q(ILB1/j;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget v5, p0, LL3/O;->d:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, LL3/O;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v5

    iput v5, p0, LL3/O;->g:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    iget v5, p0, LL3/O;->d:I

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_4

    iget-object v5, p0, LL3/O;->f:LL3/Q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v7

    :cond_4
    sget-object v5, LL3/Q;->w:LL3/a;

    invoke-virtual {p1, v5, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v5

    check-cast v5, LL3/Q;

    iput-object v5, p0, LL3/O;->f:LL3/Q;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v5}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v7}, LL3/P;->g()LL3/Q;

    move-result-object v5

    iput-object v5, p0, LL3/O;->f:LL3/Q;

    :cond_5
    iget v5, p0, LL3/O;->d:I

    or-int/2addr v5, v8

    iput v5, p0, LL3/O;->d:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    if-eqz v6, :cond_a

    if-eq v6, v3, :cond_9

    if-eq v6, v8, :cond_8

    const/4 v8, 0x3

    if-eq v6, v8, :cond_7

    goto :goto_1

    :cond_7
    sget-object v7, LL3/N;->g:LL3/N;

    goto :goto_1

    :cond_8
    move-object v7, v0

    goto :goto_1

    :cond_9
    sget-object v7, LL3/N;->e:LL3/N;

    goto :goto_1

    :cond_a
    sget-object v7, LL3/N;->d:LL3/N;

    :goto_1
    if-nez v7, :cond_b

    invoke-virtual {v4, v5}, LB1/j;->w(I)V

    invoke-virtual {v4, v6}, LB1/j;->w(I)V

    goto :goto_0

    :cond_b
    iget v5, p0, LL3/O;->d:I

    or-int/2addr v5, v3

    iput v5, p0, LL3/O;->d:I

    iput-object v7, p0, LL3/O;->e:LL3/N;
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :try_start_1
    new-instance p2, LR3/u;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, LR3/u;->c:LR3/b;

    throw p2

    :goto_3
    iput-object p0, p1, LR3/u;->c:LR3/b;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    invoke-virtual {v4}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/O;->c:LR3/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/O;->c:LR3/e;

    throw p1

    :goto_5
    throw p1

    :cond_c
    :try_start_3
    invoke-virtual {v4}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/O;->c:LR3/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/O;->c:LR3/e;

    throw p1

    :goto_6
    return-void
.end method

.method public constructor <init>(LR3/k;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/O;->h:B

    iput v0, p0, LL3/O;->i:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/O;->c:LR3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, LL3/O;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, LL3/O;->d:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, LL3/O;->f:LL3/Q;

    invoke-virtual {v0}, LL3/Q;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, LL3/O;->h:B

    return v2

    :cond_2
    iput-byte v1, p0, LL3/O;->h:B

    return v1
.end method

.method public final c()I
    .locals 3

    iget v0, p0, LL3/O;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/O;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LL3/O;->e:LL3/N;

    iget v0, v0, LL3/N;->c:I

    invoke-static {v1, v0}, LB1/j;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LL3/O;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, LL3/O;->f:LL3/Q;

    invoke-static {v2, v1}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, LL3/O;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget v2, p0, LL3/O;->g:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, LL3/O;->c:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LL3/O;->i:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/M;->g()LL3/M;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LL3/M;->g()LL3/M;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/M;->h(LL3/O;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 2

    invoke-virtual {p0}, LL3/O;->c()I

    iget v0, p0, LL3/O;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LL3/O;->e:LL3/N;

    iget v0, v0, LL3/N;->c:I

    invoke-virtual {p1, v1, v0}, LB1/j;->m(II)V

    :cond_0
    iget v0, p0, LL3/O;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LL3/O;->f:LL3/Q;

    invoke-virtual {p1, v1, v0}, LB1/j;->p(ILR3/b;)V

    :cond_1
    iget v0, p0, LL3/O;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, LL3/O;->g:I

    invoke-virtual {p1, v0, v1}, LB1/j;->n(II)V

    :cond_2
    iget-object p0, p0, LL3/O;->c:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
