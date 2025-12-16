.class public final LL3/J;
.super LR3/q;
.source "SourceFile"


# static fields
.field public static final j:LL3/J;

.field public static final k:LL3/a;


# instance fields
.field public final c:LR3/e;

.field public d:I

.field public e:I

.field public f:I

.field public g:LL3/I;

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/J;->k:LL3/a;

    new-instance v0, LL3/J;

    invoke-direct {v0}, LL3/J;-><init>()V

    sput-object v0, LL3/J;->j:LL3/J;

    const/4 v1, -0x1

    iput v1, v0, LL3/J;->e:I

    const/4 v1, 0x0

    iput v1, v0, LL3/J;->f:I

    sget-object v1, LL3/I;->e:LL3/I;

    iput-object v1, v0, LL3/J;->g:LL3/I;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/J;->h:B

    iput v0, p0, LL3/J;->i:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/J;->c:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;)V
    .locals 8

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/J;->h:B

    iput v0, p0, LL3/J;->i:I

    iput v0, p0, LL3/J;->e:I

    const/4 v0, 0x0

    iput v0, p0, LL3/J;->f:I

    sget-object v1, LL3/I;->e:LL3/I;

    iput-object v1, p0, LL3/J;->g:LL3/I;

    new-instance v2, LR3/d;

    invoke-direct {v2}, LR3/d;-><init>()V

    const/4 v3, 0x1

    invoke-static {v2, v3}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v4

    :cond_0
    :goto_0
    if-nez v0, :cond_9

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0x8

    if-eq v5, v6, :cond_8

    const/16 v6, 0x10

    const/4 v7, 0x2

    if-eq v5, v6, :cond_7

    const/16 v6, 0x18

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v5, v4}, LR3/f;->q(ILB1/j;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    if-eqz v6, :cond_5

    if-eq v6, v3, :cond_4

    if-eq v6, v7, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    sget-object v7, LL3/I;->f:LL3/I;

    goto :goto_1

    :cond_4
    move-object v7, v1

    goto :goto_1

    :cond_5
    sget-object v7, LL3/I;->d:LL3/I;

    :goto_1
    if-nez v7, :cond_6

    invoke-virtual {v4, v5}, LB1/j;->w(I)V

    invoke-virtual {v4, v6}, LB1/j;->w(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_6
    iget v5, p0, LL3/J;->d:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, LL3/J;->d:I

    iput-object v7, p0, LL3/J;->g:LL3/I;

    goto :goto_0

    :cond_7
    iget v5, p0, LL3/J;->d:I

    or-int/2addr v5, v7

    iput v5, p0, LL3/J;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v5

    iput v5, p0, LL3/J;->f:I

    goto :goto_0

    :cond_8
    iget v5, p0, LL3/J;->d:I

    or-int/2addr v5, v3

    iput v5, p0, LL3/J;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v5

    iput v5, p0, LL3/J;->e:I
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    :try_start_1
    new-instance v0, LR3/u;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, LR3/u;->c:LR3/b;

    throw v0

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

    move-result-object v0

    iput-object v0, p0, LL3/J;->c:LR3/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object v0

    iput-object v0, p0, LL3/J;->c:LR3/e;

    throw p1

    :goto_5
    throw p1

    :cond_9
    :try_start_3
    invoke-virtual {v4}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/J;->c:LR3/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object v0

    iput-object v0, p0, LL3/J;->c:LR3/e;

    throw p1

    :goto_6
    return-void
.end method

.method public constructor <init>(LR3/k;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/J;->h:B

    iput v0, p0, LL3/J;->i:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/J;->c:LR3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, LL3/J;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, LL3/J;->d:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iput-byte v1, p0, LL3/J;->h:B

    return v1

    :cond_2
    iput-byte v2, p0, LL3/J;->h:B

    return v2
.end method

.method public final c()I
    .locals 3

    iget v0, p0, LL3/J;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/J;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, LL3/J;->e:I

    invoke-static {v1, v0}, LB1/j;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LL3/J;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, LL3/J;->f:I

    invoke-static {v2, v1}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, LL3/J;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, LL3/J;->g:LL3/I;

    iget v1, v1, LL3/I;->c:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, LB1/j;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, LL3/J;->c:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LL3/J;->i:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/H;->g()LL3/H;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LL3/H;->g()LL3/H;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/H;->h(LL3/J;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 2

    invoke-virtual {p0}, LL3/J;->c()I

    iget v0, p0, LL3/J;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, LL3/J;->e:I

    invoke-virtual {p1, v1, v0}, LB1/j;->n(II)V

    :cond_0
    iget v0, p0, LL3/J;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, LL3/J;->f:I

    invoke-virtual {p1, v1, v0}, LB1/j;->n(II)V

    :cond_1
    iget v0, p0, LL3/J;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LL3/J;->g:LL3/I;

    iget v0, v0, LL3/I;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, LB1/j;->m(II)V

    :cond_2
    iget-object p0, p0, LL3/J;->c:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
