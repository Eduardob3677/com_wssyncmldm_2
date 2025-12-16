.class public final LL3/r;
.super LR3/q;
.source "SourceFile"


# static fields
.field public static final k:LL3/r;

.field public static final l:LL3/a;


# instance fields
.field public final c:LR3/e;

.field public d:I

.field public e:LL3/p;

.field public f:Ljava/util/List;

.field public g:LL3/w;

.field public h:LL3/q;

.field public i:B

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/r;->l:LL3/a;

    new-instance v0, LL3/r;

    invoke-direct {v0}, LL3/r;-><init>()V

    sput-object v0, LL3/r;->k:LL3/r;

    sget-object v1, LL3/p;->d:LL3/p;

    iput-object v1, v0, LL3/r;->e:LL3/p;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/r;->f:Ljava/util/List;

    sget-object v1, LL3/w;->n:LL3/w;

    iput-object v1, v0, LL3/r;->g:LL3/w;

    sget-object v1, LL3/q;->d:LL3/q;

    iput-object v1, v0, LL3/r;->h:LL3/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/r;->i:B

    iput v0, p0, LL3/r;->j:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/r;->c:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 11

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/r;->i:B

    iput v0, p0, LL3/r;->j:I

    sget-object v0, LL3/p;->d:LL3/p;

    iput-object v0, p0, LL3/r;->e:LL3/p;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/r;->f:Ljava/util/List;

    sget-object v1, LL3/w;->n:LL3/w;

    iput-object v1, p0, LL3/r;->g:LL3/w;

    sget-object v1, LL3/q;->d:LL3/q;

    iput-object v1, p0, LL3/r;->h:LL3/q;

    new-instance v2, LR3/d;

    invoke-direct {v2}, LR3/d;-><init>()V

    const/4 v3, 0x1

    invoke-static {v2, v3}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_0
    :goto_0
    const/4 v7, 0x2

    if-nez v5, :cond_12

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eq v8, v9, :cond_c

    const/16 v9, 0x12

    if-eq v8, v9, :cond_a

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_7

    const/16 v9, 0x20

    if-eq v8, v9, :cond_2

    invoke-virtual {p1, v8, v4}, LR3/f;->q(ILB1/j;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_1
    move v5, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v9

    if-eqz v9, :cond_5

    if-eq v9, v3, :cond_4

    if-eq v9, v7, :cond_3

    goto :goto_1

    :cond_3
    sget-object v10, LL3/q;->f:LL3/q;

    goto :goto_1

    :cond_4
    sget-object v10, LL3/q;->e:LL3/q;

    goto :goto_1

    :cond_5
    move-object v10, v1

    :goto_1
    if-nez v10, :cond_6

    invoke-virtual {v4, v8}, LB1/j;->w(I)V

    invoke-virtual {v4, v9}, LB1/j;->w(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_6
    iget v8, p0, LL3/r;->d:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, LL3/r;->d:I

    iput-object v10, p0, LL3/r;->h:LL3/q;

    goto :goto_0

    :cond_7
    iget v8, p0, LL3/r;->d:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_8

    iget-object v8, p0, LL3/r;->g:LL3/w;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LL3/u;->g()LL3/u;

    move-result-object v10

    invoke-virtual {v10, v8}, LL3/u;->h(LL3/w;)V

    :cond_8
    sget-object v8, LL3/w;->o:LL3/a;

    invoke-virtual {p1, v8, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v8

    check-cast v8, LL3/w;

    iput-object v8, p0, LL3/r;->g:LL3/w;

    if-eqz v10, :cond_9

    invoke-virtual {v10, v8}, LL3/u;->h(LL3/w;)V

    invoke-virtual {v10}, LL3/u;->f()LL3/w;

    move-result-object v8

    iput-object v8, p0, LL3/r;->g:LL3/w;

    :cond_9
    iget v8, p0, LL3/r;->d:I

    or-int/2addr v8, v7

    iput v8, p0, LL3/r;->d:I

    goto :goto_0

    :cond_a
    and-int/lit8 v8, v6, 0x2

    if-eq v8, v7, :cond_b

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, LL3/r;->f:Ljava/util/List;

    move v6, v7

    :cond_b
    iget-object v8, p0, LL3/r;->f:Ljava/util/List;

    sget-object v9, LL3/w;->o:LL3/a;

    invoke-virtual {p1, v9, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v9

    if-eqz v9, :cond_f

    if-eq v9, v3, :cond_e

    if-eq v9, v7, :cond_d

    goto :goto_2

    :cond_d
    sget-object v10, LL3/p;->f:LL3/p;

    goto :goto_2

    :cond_e
    sget-object v10, LL3/p;->e:LL3/p;

    goto :goto_2

    :cond_f
    move-object v10, v0

    :goto_2
    if-nez v10, :cond_10

    invoke-virtual {v4, v8}, LB1/j;->w(I)V

    invoke-virtual {v4, v9}, LB1/j;->w(I)V

    goto/16 :goto_0

    :cond_10
    iget v8, p0, LL3/r;->d:I

    or-int/2addr v8, v3

    iput v8, p0, LL3/r;->d:I

    iput-object v10, p0, LL3/r;->e:LL3/p;
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :try_start_1
    new-instance p2, LR3/u;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, LR3/u;->c:LR3/b;

    throw p2

    :goto_4
    iput-object p0, p1, LR3/u;->c:LR3/b;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v6, 0x2

    if-ne p2, v7, :cond_11

    iget-object p2, p0, LL3/r;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/r;->f:Ljava/util/List;

    :cond_11
    :try_start_2
    invoke-virtual {v4}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/r;->c:LR3/e;

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/r;->c:LR3/e;

    throw p1

    :goto_6
    throw p1

    :cond_12
    and-int/lit8 p1, v6, 0x2

    if-ne p1, v7, :cond_13

    iget-object p1, p0, LL3/r;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/r;->f:Ljava/util/List;

    :cond_13
    :try_start_3
    invoke-virtual {v4}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/r;->c:LR3/e;

    goto :goto_7

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/r;->c:LR3/e;

    throw p1

    :goto_7
    return-void
.end method

.method public constructor <init>(LR3/k;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/r;->i:B

    iput v0, p0, LL3/r;->j:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/r;->c:LR3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, LL3/r;->i:B

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
    iget-object v3, p0, LL3/r;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, LL3/r;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/w;

    invoke-virtual {v3}, LL3/w;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, LL3/r;->i:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, LL3/r;->d:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, LL3/r;->g:LL3/w;

    invoke-virtual {v0}, LL3/w;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, LL3/r;->i:B

    return v2

    :cond_4
    iput-byte v1, p0, LL3/r;->i:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, LL3/r;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/r;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LL3/r;->e:LL3/p;

    iget v0, v0, LL3/p;->c:I

    invoke-static {v1, v0}, LB1/j;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, LL3/r;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_2

    iget-object v1, p0, LL3/r;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/b;

    invoke-static {v3, v1}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, LL3/r;->d:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, LL3/r;->g:LL3/w;

    invoke-static {v1, v2}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, LL3/r;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, LL3/r;->h:LL3/q;

    iget v1, v1, LL3/q;->c:I

    invoke-static {v2, v1}, LB1/j;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, LL3/r;->c:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LL3/r;->j:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/o;->g()LL3/o;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LL3/o;->g()LL3/o;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/o;->h(LL3/r;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 3

    invoke-virtual {p0}, LL3/r;->c()I

    iget v0, p0, LL3/r;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LL3/r;->e:LL3/p;

    iget v0, v0, LL3/p;->c:I

    invoke-virtual {p1, v1, v0}, LB1/j;->m(II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LL3/r;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LL3/r;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/b;

    invoke-virtual {p1, v2, v1}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, LL3/r;->d:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, LL3/r;->g:LL3/w;

    invoke-virtual {p1, v0, v1}, LB1/j;->p(ILR3/b;)V

    :cond_2
    iget v0, p0, LL3/r;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, LL3/r;->h:LL3/q;

    iget v0, v0, LL3/q;->c:I

    invoke-virtual {p1, v1, v0}, LB1/j;->m(II)V

    :cond_3
    iget-object p0, p0, LL3/r;->c:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
