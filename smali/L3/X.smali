.class public final LL3/X;
.super LR3/q;
.source "SourceFile"


# static fields
.field public static final i:LL3/X;

.field public static final j:LL3/a;


# instance fields
.field public final c:LR3/e;

.field public d:I

.field public e:Ljava/util/List;

.field public f:I

.field public g:B

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/X;->j:LL3/a;

    new-instance v0, LL3/X;

    invoke-direct {v0}, LL3/X;-><init>()V

    sput-object v0, LL3/X;->i:LL3/X;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/X;->e:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, v0, LL3/X;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/X;->g:B

    iput v0, p0, LL3/X;->h:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/X;->c:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 7

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/X;->g:B

    iput v0, p0, LL3/X;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/X;->e:Ljava/util/List;

    iput v0, p0, LL3/X;->f:I

    new-instance v0, LR3/d;

    invoke-direct {v0}, LR3/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-nez v3, :cond_6

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    const/16 v6, 0x10

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v5, v2}, LR3/f;->q(ILB1/j;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    iget v5, p0, LL3/X;->d:I

    or-int/2addr v5, v1

    iput v5, p0, LL3/X;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v5

    iput v5, p0, LL3/X;->f:I

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
    and-int/lit8 v5, v4, 0x1

    if-eq v5, v1, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, LL3/X;->e:Ljava/util/List;

    move v4, v1

    :cond_4
    iget-object v5, p0, LL3/X;->e:Ljava/util/List;

    sget-object v6, LL3/Q;->w:LL3/a;

    invoke-virtual {p1, v6, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

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
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_5

    iget-object p2, p0, LL3/X;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/X;->e:Ljava/util/List;

    :cond_5
    :try_start_2
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/X;->c:LR3/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/X;->c:LR3/e;

    throw p1

    :goto_4
    throw p1

    :cond_6
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, LL3/X;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/X;->e:Ljava/util/List;

    :cond_7
    :try_start_3
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/X;->c:LR3/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/X;->c:LR3/e;

    throw p1

    :goto_5
    return-void
.end method

.method public constructor <init>(LR3/k;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/X;->g:B

    iput v0, p0, LL3/X;->h:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/X;->c:LR3/e;

    return-void
.end method

.method public static i(LL3/X;)LL3/f;
    .locals 1

    invoke-static {}, LL3/f;->i()LL3/f;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/f;->l(LL3/X;)V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, LL3/X;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, LL3/X;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, LL3/X;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/Q;

    invoke-virtual {v3}, LL3/Q;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, LL3/X;->g:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-byte v1, p0, LL3/X;->g:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, LL3/X;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LL3/X;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, LL3/X;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR3/b;

    invoke-static {v3, v2}, LB1/j;->d(ILR3/b;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, LL3/X;->d:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    iget v2, p0, LL3/X;->f:I

    invoke-static {v0, v2}, LB1/j;->b(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, LL3/X;->c:LR3/e;

    invoke-virtual {v0}, LR3/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, LL3/X;->h:I

    return v0
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/f;->i()LL3/f;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 0

    invoke-static {p0}, LL3/X;->i(LL3/X;)LL3/f;

    move-result-object p0

    return-object p0
.end method

.method public final f(LB1/j;)V
    .locals 3

    invoke-virtual {p0}, LL3/X;->c()I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LL3/X;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LL3/X;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/b;

    invoke-virtual {p1, v2, v1}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, LL3/X;->d:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    iget v1, p0, LL3/X;->f:I

    invoke-virtual {p1, v0, v1}, LB1/j;->n(II)V

    :cond_1
    iget-object p0, p0, LL3/X;->c:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
