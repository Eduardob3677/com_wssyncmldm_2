.class public final LL3/d0;
.super LR3/q;
.source "SourceFile"


# static fields
.field public static final m:LL3/d0;

.field public static final n:LL3/a;


# instance fields
.field public final c:LR3/e;

.field public d:I

.field public e:I

.field public f:I

.field public g:LL3/b0;

.field public h:I

.field public i:I

.field public j:LL3/c0;

.field public k:B

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LL3/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/d0;->n:LL3/a;

    new-instance v0, LL3/d0;

    invoke-direct {v0}, LL3/d0;-><init>()V

    sput-object v0, LL3/d0;->m:LL3/d0;

    const/4 v1, 0x0

    iput v1, v0, LL3/d0;->e:I

    iput v1, v0, LL3/d0;->f:I

    sget-object v2, LL3/b0;->e:LL3/b0;

    iput-object v2, v0, LL3/d0;->g:LL3/b0;

    iput v1, v0, LL3/d0;->h:I

    iput v1, v0, LL3/d0;->i:I

    sget-object v1, LL3/c0;->d:LL3/c0;

    iput-object v1, v0, LL3/d0;->j:LL3/c0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/d0;->k:B

    iput v0, p0, LL3/d0;->l:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/d0;->c:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;)V
    .locals 12

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/d0;->k:B

    iput v0, p0, LL3/d0;->l:I

    const/4 v0, 0x0

    iput v0, p0, LL3/d0;->e:I

    iput v0, p0, LL3/d0;->f:I

    sget-object v1, LL3/b0;->e:LL3/b0;

    iput-object v1, p0, LL3/d0;->g:LL3/b0;

    iput v0, p0, LL3/d0;->h:I

    iput v0, p0, LL3/d0;->i:I

    sget-object v2, LL3/c0;->d:LL3/c0;

    iput-object v2, p0, LL3/d0;->j:LL3/c0;

    new-instance v3, LR3/d;

    invoke-direct {v3}, LR3/d;-><init>()V

    const/4 v4, 0x1

    invoke-static {v3, v4}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v5

    :cond_0
    :goto_0
    if-nez v0, :cond_10

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v7, 0x8

    if-eq v6, v7, :cond_f

    const/4 v8, 0x2

    const/16 v9, 0x10

    if-eq v6, v9, :cond_e

    const/16 v10, 0x18

    const/4 v11, 0x0

    if-eq v6, v10, :cond_9

    const/16 v10, 0x20

    if-eq v6, v10, :cond_8

    const/16 v7, 0x28

    if-eq v6, v7, :cond_7

    const/16 v7, 0x30

    if-eq v6, v7, :cond_2

    invoke-virtual {p1, v6, v5}, LR3/f;->q(ILB1/j;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v7

    if-eqz v7, :cond_5

    if-eq v7, v4, :cond_4

    if-eq v7, v8, :cond_3

    goto :goto_1

    :cond_3
    sget-object v11, LL3/c0;->f:LL3/c0;

    goto :goto_1

    :cond_4
    sget-object v11, LL3/c0;->e:LL3/c0;

    goto :goto_1

    :cond_5
    move-object v11, v2

    :goto_1
    if-nez v11, :cond_6

    invoke-virtual {v5, v6}, LB1/j;->w(I)V

    invoke-virtual {v5, v7}, LB1/j;->w(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_6
    iget v6, p0, LL3/d0;->d:I

    or-int/2addr v6, v10

    iput v6, p0, LL3/d0;->d:I

    iput-object v11, p0, LL3/d0;->j:LL3/c0;

    goto :goto_0

    :cond_7
    iget v6, p0, LL3/d0;->d:I

    or-int/2addr v6, v9

    iput v6, p0, LL3/d0;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/d0;->i:I

    goto :goto_0

    :cond_8
    iget v6, p0, LL3/d0;->d:I

    or-int/2addr v6, v7

    iput v6, p0, LL3/d0;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/d0;->h:I

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v7

    if-eqz v7, :cond_c

    if-eq v7, v4, :cond_b

    if-eq v7, v8, :cond_a

    goto :goto_2

    :cond_a
    sget-object v11, LL3/b0;->f:LL3/b0;

    goto :goto_2

    :cond_b
    move-object v11, v1

    goto :goto_2

    :cond_c
    sget-object v11, LL3/b0;->d:LL3/b0;

    :goto_2
    if-nez v11, :cond_d

    invoke-virtual {v5, v6}, LB1/j;->w(I)V

    invoke-virtual {v5, v7}, LB1/j;->w(I)V

    goto/16 :goto_0

    :cond_d
    iget v6, p0, LL3/d0;->d:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, LL3/d0;->d:I

    iput-object v11, p0, LL3/d0;->g:LL3/b0;

    goto/16 :goto_0

    :cond_e
    iget v6, p0, LL3/d0;->d:I

    or-int/2addr v6, v8

    iput v6, p0, LL3/d0;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/d0;->f:I

    goto/16 :goto_0

    :cond_f
    iget v6, p0, LL3/d0;->d:I

    or-int/2addr v6, v4

    iput v6, p0, LL3/d0;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/d0;->e:I
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :try_start_1
    new-instance v0, LR3/u;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, LR3/u;->c:LR3/b;

    throw v0

    :goto_4
    iput-object p0, p1, LR3/u;->c:LR3/b;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    :try_start_2
    invoke-virtual {v5}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v3}, LR3/d;->l()LR3/e;

    move-result-object v0

    iput-object v0, p0, LL3/d0;->c:LR3/e;

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {v3}, LR3/d;->l()LR3/e;

    move-result-object v0

    iput-object v0, p0, LL3/d0;->c:LR3/e;

    throw p1

    :goto_6
    throw p1

    :cond_10
    :try_start_3
    invoke-virtual {v5}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v3}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/d0;->c:LR3/e;

    goto :goto_7

    :catchall_2
    move-exception p1

    invoke-virtual {v3}, LR3/d;->l()LR3/e;

    move-result-object v0

    iput-object v0, p0, LL3/d0;->c:LR3/e;

    throw p1

    :goto_7
    return-void
.end method

.method public constructor <init>(LR3/k;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/d0;->k:B

    iput v0, p0, LL3/d0;->l:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/d0;->c:LR3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, LL3/d0;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, LL3/d0;->k:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, LL3/d0;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/d0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, LL3/d0;->e:I

    invoke-static {v1, v0}, LB1/j;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LL3/d0;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, LL3/d0;->f:I

    invoke-static {v2, v1}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, LL3/d0;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, LL3/d0;->g:LL3/b0;

    iget v1, v1, LL3/b0;->c:I

    const/4 v3, 0x3

    invoke-static {v3, v1}, LB1/j;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, LL3/d0;->d:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget v1, p0, LL3/d0;->h:I

    invoke-static {v2, v1}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, LL3/d0;->d:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, LL3/d0;->i:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, LL3/d0;->d:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, LL3/d0;->j:LL3/c0;

    iget v1, v1, LL3/c0;->c:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, LB1/j;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, LL3/d0;->c:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LL3/d0;->l:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/a0;->g()LL3/a0;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LL3/a0;->g()LL3/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/a0;->h(LL3/d0;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 3

    invoke-virtual {p0}, LL3/d0;->c()I

    iget v0, p0, LL3/d0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, LL3/d0;->e:I

    invoke-virtual {p1, v1, v0}, LB1/j;->n(II)V

    :cond_0
    iget v0, p0, LL3/d0;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, LL3/d0;->f:I

    invoke-virtual {p1, v1, v0}, LB1/j;->n(II)V

    :cond_1
    iget v0, p0, LL3/d0;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LL3/d0;->g:LL3/b0;

    iget v0, v0, LL3/b0;->c:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, LB1/j;->m(II)V

    :cond_2
    iget v0, p0, LL3/d0;->d:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget v0, p0, LL3/d0;->h:I

    invoke-virtual {p1, v1, v0}, LB1/j;->n(II)V

    :cond_3
    iget v0, p0, LL3/d0;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, LL3/d0;->i:I

    invoke-virtual {p1, v0, v1}, LB1/j;->n(II)V

    :cond_4
    iget v0, p0, LL3/d0;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, LL3/d0;->j:LL3/c0;

    iget v0, v0, LL3/c0;->c:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, LB1/j;->m(II)V

    :cond_5
    iget-object p0, p0, LL3/d0;->c:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
