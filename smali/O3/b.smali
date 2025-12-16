.class public final LO3/b;
.super LR3/q;
.source "SourceFile"


# static fields
.field public static final i:LO3/b;

.field public static final j:LL3/a;


# instance fields
.field public final c:LR3/e;

.field public d:I

.field public e:I

.field public f:I

.field public g:B

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LO3/b;->j:LL3/a;

    new-instance v0, LO3/b;

    invoke-direct {v0}, LO3/b;-><init>()V

    sput-object v0, LO3/b;->i:LO3/b;

    const/4 v1, 0x0

    iput v1, v0, LO3/b;->e:I

    iput v1, v0, LO3/b;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LO3/b;->g:B

    iput v0, p0, LO3/b;->h:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LO3/b;->c:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;)V
    .locals 6

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LO3/b;->g:B

    iput v0, p0, LO3/b;->h:I

    const/4 v0, 0x0

    iput v0, p0, LO3/b;->e:I

    iput v0, p0, LO3/b;->f:I

    new-instance v1, LR3/d;

    invoke-direct {v1}, LR3/d;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v4, v3}, LR3/f;->q(ILB1/j;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v4, p0, LO3/b;->d:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, LO3/b;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v4

    iput v4, p0, LO3/b;->f:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_3
    iget v4, p0, LO3/b;->d:I

    or-int/2addr v4, v2

    iput v4, p0, LO3/b;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v4

    iput v4, p0, LO3/b;->e:I
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_1
    new-instance v0, LR3/u;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, LR3/u;->c:LR3/b;

    throw v0

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

    move-result-object v0

    iput-object v0, p0, LO3/b;->c:LR3/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, LR3/d;->l()LR3/e;

    move-result-object v0

    iput-object v0, p0, LO3/b;->c:LR3/e;

    throw p1

    :goto_4
    throw p1

    :cond_4
    :try_start_3
    invoke-virtual {v3}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v1}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LO3/b;->c:LR3/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, LR3/d;->l()LR3/e;

    move-result-object v0

    iput-object v0, p0, LO3/b;->c:LR3/e;

    throw p1

    :goto_5
    return-void
.end method

.method public constructor <init>(LR3/k;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LO3/b;->g:B

    iput v0, p0, LO3/b;->h:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LO3/b;->c:LR3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, LO3/b;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, LO3/b;->g:B

    return v1
.end method

.method public final c()I
    .locals 3

    iget v0, p0, LO3/b;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LO3/b;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, LO3/b;->e:I

    invoke-static {v1, v0}, LB1/j;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LO3/b;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, LO3/b;->f:I

    invoke-static {v2, v1}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, LO3/b;->c:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LO3/b;->h:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 1

    new-instance p0, LO3/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LO3/a;-><init>(I)V

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 2

    new-instance v0, LO3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LO3/a;-><init>(I)V

    invoke-virtual {v0, p0}, LO3/a;->h(LO3/b;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 2

    invoke-virtual {p0}, LO3/b;->c()I

    iget v0, p0, LO3/b;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, LO3/b;->e:I

    invoke-virtual {p1, v1, v0}, LB1/j;->n(II)V

    :cond_0
    iget v0, p0, LO3/b;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, LO3/b;->f:I

    invoke-virtual {p1, v1, v0}, LB1/j;->n(II)V

    :cond_1
    iget-object p0, p0, LO3/b;->c:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
