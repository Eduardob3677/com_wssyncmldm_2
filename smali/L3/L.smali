.class public final LL3/L;
.super LR3/q;
.source "SourceFile"


# static fields
.field public static final g:LL3/L;

.field public static final h:LL3/a;


# instance fields
.field public final c:LR3/e;

.field public d:LR3/x;

.field public e:B

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/L;->h:LL3/a;

    new-instance v0, LL3/L;

    invoke-direct {v0}, LL3/L;-><init>()V

    sput-object v0, LL3/L;->g:LL3/L;

    sget-object v1, LR3/w;->d:LR3/N;

    iput-object v1, v0, LL3/L;->d:LR3/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/L;->e:B

    iput v0, p0, LL3/L;->f:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/L;->c:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;)V
    .locals 7

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/L;->e:B

    iput v0, p0, LL3/L;->f:I

    sget-object v0, LR3/w;->d:LR3/N;

    iput-object v0, p0, LL3/L;->d:LR3/x;

    new-instance v0, LR3/d;

    invoke-direct {v0}, LR3/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v5, v2}, LR3/f;->q(ILB1/j;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LR3/f;->e()LR3/z;

    move-result-object v5

    and-int/lit8 v6, v4, 0x1

    if-eq v6, v1, :cond_3

    new-instance v6, LR3/w;

    invoke-direct {v6}, LR3/w;-><init>()V

    iput-object v6, p0, LL3/L;->d:LR3/x;

    move v4, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v6, p0, LL3/L;->d:LR3/x;

    invoke-interface {v6, v5}, LR3/x;->i(LR3/z;)V
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    :try_start_1
    new-instance v3, LR3/u;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object p0, v3, LR3/u;->c:LR3/b;

    throw v3

    :goto_3
    iput-object p0, p1, LR3/u;->c:LR3/b;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 v3, v4, 0x1

    if-ne v3, v1, :cond_4

    iget-object v1, p0, LL3/L;->d:LR3/x;

    invoke-interface {v1}, LR3/x;->c()LR3/N;

    move-result-object v1

    iput-object v1, p0, LL3/L;->d:LR3/x;

    :cond_4
    :try_start_2
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object v0

    iput-object v0, p0, LL3/L;->c:LR3/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object v0

    iput-object v0, p0, LL3/L;->c:LR3/e;

    throw p1

    :goto_5
    throw p1

    :cond_5
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, LL3/L;->d:LR3/x;

    invoke-interface {p1}, LR3/x;->c()LR3/N;

    move-result-object p1

    iput-object p1, p0, LL3/L;->d:LR3/x;

    :cond_6
    :try_start_3
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/L;->c:LR3/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object v0

    iput-object v0, p0, LL3/L;->c:LR3/e;

    throw p1

    :goto_6
    return-void
.end method

.method public constructor <init>(LR3/k;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/L;->e:B

    iput v0, p0, LL3/L;->f:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/L;->c:LR3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, LL3/L;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, LL3/L;->e:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, LL3/L;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LL3/L;->d:LR3/x;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, LL3/L;->d:LR3/x;

    invoke-interface {v2, v0}, LR3/x;->j(I)LR3/e;

    move-result-object v2

    invoke-virtual {v2}, LR3/e;->size()I

    move-result v3

    invoke-static {v3}, LB1/j;->f(I)I

    move-result v3

    invoke-virtual {v2}, LR3/e;->size()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LL3/L;->d:LR3/x;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, LL3/L;->c:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LL3/L;->f:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 1

    new-instance p0, LL3/m;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, LL3/m;-><init>(I)V

    sget-object v0, LR3/w;->d:LR3/N;

    iput-object v0, p0, LL3/m;->f:Ljava/util/List;

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 2

    new-instance v0, LL3/m;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LL3/m;-><init>(I)V

    sget-object v1, LR3/w;->d:LR3/N;

    iput-object v1, v0, LL3/m;->f:Ljava/util/List;

    invoke-virtual {v0, p0}, LL3/m;->l(LL3/L;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 4

    invoke-virtual {p0}, LL3/L;->c()I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LL3/L;->d:LR3/x;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LL3/L;->d:LR3/x;

    invoke-interface {v1, v0}, LR3/x;->j(I)LR3/e;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, LB1/j;->y(II)V

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v2

    invoke-virtual {p1, v2}, LB1/j;->w(I)V

    invoke-virtual {p1, v1}, LB1/j;->s(LR3/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, LL3/L;->c:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
