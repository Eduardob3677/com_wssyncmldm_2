.class public final LL3/Z;
.super LR3/n;
.source "SourceFile"


# static fields
.field public static final n:LL3/Z;

.field public static final o:LL3/a;


# instance fields
.field public final d:LR3/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:LL3/Q;

.field public i:I

.field public j:LL3/Q;

.field public k:I

.field public l:B

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LL3/a;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/Z;->o:LL3/a;

    new-instance v0, LL3/Z;

    invoke-direct {v0}, LL3/Z;-><init>()V

    sput-object v0, LL3/Z;->n:LL3/Z;

    const/4 v1, 0x0

    iput v1, v0, LL3/Z;->f:I

    iput v1, v0, LL3/Z;->g:I

    sget-object v2, LL3/Q;->v:LL3/Q;

    iput-object v2, v0, LL3/Z;->h:LL3/Q;

    iput v1, v0, LL3/Z;->i:I

    iput-object v2, v0, LL3/Z;->j:LL3/Q;

    iput v1, v0, LL3/Z;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/Z;->l:B

    iput v0, p0, LL3/Z;->m:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/Z;->d:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 9

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/Z;->l:B

    iput v0, p0, LL3/Z;->m:I

    const/4 v0, 0x0

    iput v0, p0, LL3/Z;->f:I

    iput v0, p0, LL3/Z;->g:I

    sget-object v1, LL3/Q;->v:LL3/Q;

    iput-object v1, p0, LL3/Z;->h:LL3/Q;

    iput v0, p0, LL3/Z;->i:I

    iput-object v1, p0, LL3/Z;->j:LL3/Q;

    iput v0, p0, LL3/Z;->k:I

    new-instance v1, LR3/d;

    invoke-direct {v1}, LR3/d;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_c

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    const/16 v6, 0x10

    if-eq v4, v6, :cond_a

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-eq v4, v7, :cond_7

    const/16 v7, 0x22

    if-eq v4, v7, :cond_4

    const/16 v6, 0x28

    if-eq v4, v6, :cond_3

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, p1, v3, p2, v4}, LR3/n;->o(LR3/f;LB1/j;LR3/i;I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    :cond_2
    iget v4, p0, LL3/Z;->e:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, LL3/Z;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v4

    iput v4, p0, LL3/Z;->k:I

    goto :goto_0

    :cond_3
    iget v4, p0, LL3/Z;->e:I

    or-int/2addr v4, v5

    iput v4, p0, LL3/Z;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v4

    iput v4, p0, LL3/Z;->i:I

    goto :goto_0

    :cond_4
    iget v4, p0, LL3/Z;->e:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_5

    iget-object v4, p0, LL3/Z;->j:LL3/Q;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v8

    :cond_5
    sget-object v4, LL3/Q;->w:LL3/a;

    invoke-virtual {p1, v4, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v4

    check-cast v4, LL3/Q;

    iput-object v4, p0, LL3/Z;->j:LL3/Q;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v4}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v8}, LL3/P;->g()LL3/Q;

    move-result-object v4

    iput-object v4, p0, LL3/Z;->j:LL3/Q;

    :cond_6
    iget v4, p0, LL3/Z;->e:I

    or-int/2addr v4, v6

    iput v4, p0, LL3/Z;->e:I

    goto :goto_0

    :cond_7
    iget v4, p0, LL3/Z;->e:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    iget-object v4, p0, LL3/Z;->h:LL3/Q;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v8

    :cond_8
    sget-object v4, LL3/Q;->w:LL3/a;

    invoke-virtual {p1, v4, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v4

    check-cast v4, LL3/Q;

    iput-object v4, p0, LL3/Z;->h:LL3/Q;

    if-eqz v8, :cond_9

    invoke-virtual {v8, v4}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v8}, LL3/P;->g()LL3/Q;

    move-result-object v4

    iput-object v4, p0, LL3/Z;->h:LL3/Q;

    :cond_9
    iget v4, p0, LL3/Z;->e:I

    or-int/2addr v4, v5

    iput v4, p0, LL3/Z;->e:I

    goto/16 :goto_0

    :cond_a
    iget v4, p0, LL3/Z;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, LL3/Z;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v4

    iput v4, p0, LL3/Z;->g:I

    goto/16 :goto_0

    :cond_b
    iget v4, p0, LL3/Z;->e:I

    or-int/2addr v4, v2

    iput v4, p0, LL3/Z;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v4

    iput v4, p0, LL3/Z;->f:I
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :try_start_1
    new-instance p2, LR3/u;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, LR3/u;->c:LR3/b;

    throw p2

    :goto_2
    iput-object p0, p1, LR3/u;->c:LR3/b;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    invoke-virtual {v3}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v1}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/Z;->d:LR3/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/Z;->d:LR3/e;

    throw p1

    :goto_4
    invoke-virtual {p0}, LR3/n;->m()V

    throw p1

    :cond_c
    :try_start_3
    invoke-virtual {v3}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v1}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/Z;->d:LR3/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/Z;->d:LR3/e;

    throw p1

    :goto_5
    invoke-virtual {p0}, LR3/n;->m()V

    return-void
.end method

.method public constructor <init>(LR3/l;)V
    .locals 1

    invoke-direct {p0, p1}, LR3/n;-><init>(LR3/l;)V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/Z;->l:B

    iput v0, p0, LL3/Z;->m:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/Z;->d:LR3/e;

    return-void
.end method


# virtual methods
.method public final a()LR3/b;
    .locals 0

    sget-object p0, LL3/Z;->n:LL3/Z;

    return-object p0
.end method

.method public final b()Z
    .locals 5

    iget-byte v0, p0, LL3/Z;->l:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, LL3/Z;->e:I

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, LL3/Z;->h:LL3/Q;

    invoke-virtual {v0}, LL3/Q;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, LL3/Z;->l:B

    return v2

    :cond_2
    iget v0, p0, LL3/Z;->e:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, LL3/Z;->j:LL3/Q;

    invoke-virtual {v0}, LL3/Q;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, LL3/Z;->l:B

    return v2

    :cond_3
    invoke-virtual {p0}, LR3/n;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, LL3/Z;->l:B

    return v2

    :cond_4
    iput-byte v1, p0, LL3/Z;->l:B

    return v1

    :cond_5
    iput-byte v2, p0, LL3/Z;->l:B

    return v2
.end method

.method public final c()I
    .locals 4

    iget v0, p0, LL3/Z;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/Z;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, LL3/Z;->f:I

    invoke-static {v1, v0}, LB1/j;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LL3/Z;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, LL3/Z;->g:I

    invoke-static {v2, v1}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, LL3/Z;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v3, p0, LL3/Z;->h:LL3/Q;

    invoke-static {v1, v3}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, LL3/Z;->e:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, LL3/Z;->j:LL3/Q;

    invoke-static {v2, v1}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, LL3/Z;->e:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, LL3/Z;->i:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, LL3/Z;->e:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, LL3/Z;->k:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, LR3/n;->j()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, LL3/Z;->d:LR3/e;

    invoke-virtual {v0}, LR3/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, LL3/Z;->m:I

    return v0
.end method

.method public final d()LR3/k;
    .locals 1

    new-instance p0, LL3/Y;

    invoke-direct {p0}, LR3/l;-><init>()V

    sget-object v0, LL3/Q;->v:LL3/Q;

    iput-object v0, p0, LL3/Y;->i:LL3/Q;

    iput-object v0, p0, LL3/Y;->k:LL3/Q;

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 2

    new-instance v0, LL3/Y;

    invoke-direct {v0}, LR3/l;-><init>()V

    sget-object v1, LL3/Q;->v:LL3/Q;

    iput-object v1, v0, LL3/Y;->i:LL3/Q;

    iput-object v1, v0, LL3/Y;->k:LL3/Q;

    invoke-virtual {v0, p0}, LL3/Y;->h(LL3/Z;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 4

    invoke-virtual {p0}, LL3/Z;->c()I

    invoke-virtual {p0}, LR3/n;->n()LR3/m;

    move-result-object v0

    iget v1, p0, LL3/Z;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, LL3/Z;->f:I

    invoke-virtual {p1, v2, v1}, LB1/j;->n(II)V

    :cond_0
    iget v1, p0, LL3/Z;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, LL3/Z;->g:I

    invoke-virtual {p1, v2, v1}, LB1/j;->n(II)V

    :cond_1
    iget v1, p0, LL3/Z;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iget-object v3, p0, LL3/Z;->h:LL3/Q;

    invoke-virtual {p1, v1, v3}, LB1/j;->p(ILR3/b;)V

    :cond_2
    iget v1, p0, LL3/Z;->e:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, LL3/Z;->j:LL3/Q;

    invoke-virtual {p1, v2, v1}, LB1/j;->p(ILR3/b;)V

    :cond_3
    iget v1, p0, LL3/Z;->e:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    iget v2, p0, LL3/Z;->i:I

    invoke-virtual {p1, v1, v2}, LB1/j;->n(II)V

    :cond_4
    iget v1, p0, LL3/Z;->e:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    iget v2, p0, LL3/Z;->k:I

    invoke-virtual {p1, v1, v2}, LB1/j;->n(II)V

    :cond_5
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, LR3/m;->d(ILB1/j;)V

    iget-object p0, p0, LL3/Z;->d:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
