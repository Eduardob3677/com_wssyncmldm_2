.class public final LO3/e;
.super LR3/q;
.source "SourceFile"


# static fields
.field public static final l:LO3/e;

.field public static final m:LL3/a;


# instance fields
.field public final c:LR3/e;

.field public d:I

.field public e:LO3/b;

.field public f:LO3/c;

.field public g:LO3/c;

.field public h:LO3/c;

.field public i:LO3/c;

.field public j:B

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LO3/e;->m:LL3/a;

    new-instance v0, LO3/e;

    invoke-direct {v0}, LO3/e;-><init>()V

    sput-object v0, LO3/e;->l:LO3/e;

    sget-object v1, LO3/b;->i:LO3/b;

    iput-object v1, v0, LO3/e;->e:LO3/b;

    sget-object v1, LO3/c;->i:LO3/c;

    iput-object v1, v0, LO3/e;->f:LO3/c;

    iput-object v1, v0, LO3/e;->g:LO3/c;

    iput-object v1, v0, LO3/e;->h:LO3/c;

    iput-object v1, v0, LO3/e;->i:LO3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LO3/e;->j:B

    iput v0, p0, LO3/e;->k:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LO3/e;->c:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 7

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LO3/e;->j:B

    iput v0, p0, LO3/e;->k:I

    sget-object v0, LO3/b;->i:LO3/b;

    iput-object v0, p0, LO3/e;->e:LO3/b;

    sget-object v0, LO3/c;->i:LO3/c;

    iput-object v0, p0, LO3/e;->f:LO3/c;

    iput-object v0, p0, LO3/e;->g:LO3/c;

    iput-object v0, p0, LO3/e;->h:LO3/c;

    iput-object v0, p0, LO3/e;->i:LO3/c;

    new-instance v0, LR3/d;

    invoke-direct {v0}, LR3/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_11

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_e

    const/16 v5, 0x12

    if-eq v4, v5, :cond_b

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_8

    const/16 v5, 0x22

    if-eq v4, v5, :cond_5

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v4, v2}, LR3/f;->q(ILB1/j;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    iget v4, p0, LO3/e;->d:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, LO3/e;->i:LO3/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, LO3/c;->i(LO3/c;)LO3/a;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :cond_3
    :goto_1
    sget-object v4, LO3/c;->j:LL3/a;

    invoke-virtual {p1, v4, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v4

    check-cast v4, LO3/c;

    iput-object v4, p0, LO3/e;->i:LO3/c;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v4}, LO3/a;->i(LO3/c;)V

    invoke-virtual {v6}, LO3/a;->g()LO3/c;

    move-result-object v4

    iput-object v4, p0, LO3/e;->i:LO3/c;

    :cond_4
    iget v4, p0, LO3/e;->d:I

    or-int/2addr v4, v5

    iput v4, p0, LO3/e;->d:I

    goto :goto_0

    :cond_5
    iget v4, p0, LO3/e;->d:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, LO3/e;->h:LO3/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, LO3/c;->i(LO3/c;)LO3/a;

    move-result-object v6

    :cond_6
    sget-object v4, LO3/c;->j:LL3/a;

    invoke-virtual {p1, v4, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v4

    check-cast v4, LO3/c;

    iput-object v4, p0, LO3/e;->h:LO3/c;

    if-eqz v6, :cond_7

    invoke-virtual {v6, v4}, LO3/a;->i(LO3/c;)V

    invoke-virtual {v6}, LO3/a;->g()LO3/c;

    move-result-object v4

    iput-object v4, p0, LO3/e;->h:LO3/c;

    :cond_7
    iget v4, p0, LO3/e;->d:I

    or-int/2addr v4, v5

    iput v4, p0, LO3/e;->d:I

    goto/16 :goto_0

    :cond_8
    iget v4, p0, LO3/e;->d:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_9

    iget-object v4, p0, LO3/e;->g:LO3/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, LO3/c;->i(LO3/c;)LO3/a;

    move-result-object v6

    :cond_9
    sget-object v4, LO3/c;->j:LL3/a;

    invoke-virtual {p1, v4, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v4

    check-cast v4, LO3/c;

    iput-object v4, p0, LO3/e;->g:LO3/c;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v4}, LO3/a;->i(LO3/c;)V

    invoke-virtual {v6}, LO3/a;->g()LO3/c;

    move-result-object v4

    iput-object v4, p0, LO3/e;->g:LO3/c;

    :cond_a
    iget v4, p0, LO3/e;->d:I

    or-int/2addr v4, v5

    iput v4, p0, LO3/e;->d:I

    goto/16 :goto_0

    :cond_b
    iget v4, p0, LO3/e;->d:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_c

    iget-object v4, p0, LO3/e;->f:LO3/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, LO3/c;->i(LO3/c;)LO3/a;

    move-result-object v6

    :cond_c
    sget-object v4, LO3/c;->j:LL3/a;

    invoke-virtual {p1, v4, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v4

    check-cast v4, LO3/c;

    iput-object v4, p0, LO3/e;->f:LO3/c;

    if-eqz v6, :cond_d

    invoke-virtual {v6, v4}, LO3/a;->i(LO3/c;)V

    invoke-virtual {v6}, LO3/a;->g()LO3/c;

    move-result-object v4

    iput-object v4, p0, LO3/e;->f:LO3/c;

    :cond_d
    iget v4, p0, LO3/e;->d:I

    or-int/2addr v4, v5

    iput v4, p0, LO3/e;->d:I

    goto/16 :goto_0

    :cond_e
    iget v4, p0, LO3/e;->d:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_f

    iget-object v4, p0, LO3/e;->e:LO3/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LO3/a;

    const/4 v5, 0x0

    invoke-direct {v6, v5}, LO3/a;-><init>(I)V

    invoke-virtual {v6, v4}, LO3/a;->h(LO3/b;)V

    :cond_f
    sget-object v4, LO3/b;->j:LL3/a;

    invoke-virtual {p1, v4, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v4

    check-cast v4, LO3/b;

    iput-object v4, p0, LO3/e;->e:LO3/b;

    if-eqz v6, :cond_10

    invoke-virtual {v6, v4}, LO3/a;->h(LO3/b;)V

    invoke-virtual {v6}, LO3/a;->f()LO3/b;

    move-result-object v4

    iput-object v4, p0, LO3/e;->e:LO3/b;

    :cond_10
    iget v4, p0, LO3/e;->d:I

    or-int/2addr v4, v1

    iput v4, p0, LO3/e;->d:I
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
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LO3/e;->c:LR3/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LO3/e;->c:LR3/e;

    throw p1

    :goto_5
    throw p1

    :cond_11
    :try_start_3
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LO3/e;->c:LR3/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LO3/e;->c:LR3/e;

    throw p1

    :goto_6
    return-void
.end method

.method public constructor <init>(LR3/k;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LO3/e;->j:B

    iput v0, p0, LO3/e;->k:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LO3/e;->c:LR3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, LO3/e;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, LO3/e;->j:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, LO3/e;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LO3/e;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LO3/e;->e:LO3/b;

    invoke-static {v1, v0}, LB1/j;->d(ILR3/b;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LO3/e;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, LO3/e;->f:LO3/c;

    invoke-static {v2, v1}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, LO3/e;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v3, p0, LO3/e;->g:LO3/c;

    invoke-static {v1, v3}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, LO3/e;->d:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, LO3/e;->h:LO3/c;

    invoke-static {v2, v1}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, LO3/e;->d:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, LO3/e;->i:LO3/c;

    invoke-static {v1, v2}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, LO3/e;->c:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LO3/e;->k:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LO3/d;->g()LO3/d;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LO3/d;->g()LO3/d;

    move-result-object v0

    invoke-virtual {v0, p0}, LO3/d;->h(LO3/e;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 3

    invoke-virtual {p0}, LO3/e;->c()I

    iget v0, p0, LO3/e;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LO3/e;->e:LO3/b;

    invoke-virtual {p1, v1, v0}, LB1/j;->p(ILR3/b;)V

    :cond_0
    iget v0, p0, LO3/e;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LO3/e;->f:LO3/c;

    invoke-virtual {p1, v1, v0}, LB1/j;->p(ILR3/b;)V

    :cond_1
    iget v0, p0, LO3/e;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, LO3/e;->g:LO3/c;

    invoke-virtual {p1, v0, v2}, LB1/j;->p(ILR3/b;)V

    :cond_2
    iget v0, p0, LO3/e;->d:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, LO3/e;->h:LO3/c;

    invoke-virtual {p1, v1, v0}, LB1/j;->p(ILR3/b;)V

    :cond_3
    iget v0, p0, LO3/e;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, LO3/e;->i:LO3/c;

    invoke-virtual {p1, v0, v1}, LB1/j;->p(ILR3/b;)V

    :cond_4
    iget-object p0, p0, LO3/e;->c:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
