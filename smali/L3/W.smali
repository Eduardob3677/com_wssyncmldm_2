.class public final LL3/W;
.super LR3/n;
.source "SourceFile"


# static fields
.field public static final o:LL3/W;

.field public static final p:LL3/a;


# instance fields
.field public final d:LR3/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:LL3/V;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:I

.field public m:B

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/W;->p:LL3/a;

    new-instance v0, LL3/W;

    invoke-direct {v0}, LL3/W;-><init>()V

    sput-object v0, LL3/W;->o:LL3/W;

    const/4 v1, 0x0

    iput v1, v0, LL3/W;->f:I

    iput v1, v0, LL3/W;->g:I

    iput-boolean v1, v0, LL3/W;->h:Z

    sget-object v1, LL3/V;->f:LL3/V;

    iput-object v1, v0, LL3/W;->i:LL3/V;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/W;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/W;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LL3/W;->l:I

    iput-byte v0, p0, LL3/W;->m:B

    iput v0, p0, LL3/W;->n:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/W;->d:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 13

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LL3/W;->l:I

    iput-byte v0, p0, LL3/W;->m:B

    iput v0, p0, LL3/W;->n:I

    const/4 v0, 0x0

    iput v0, p0, LL3/W;->f:I

    iput v0, p0, LL3/W;->g:I

    iput-boolean v0, p0, LL3/W;->h:Z

    sget-object v1, LL3/V;->f:LL3/V;

    iput-object v1, p0, LL3/W;->i:LL3/V;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, LL3/W;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, LL3/W;->k:Ljava/util/List;

    new-instance v2, LR3/d;

    invoke-direct {v2}, LR3/d;-><init>()V

    const/4 v3, 0x1

    invoke-static {v2, v3}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v4

    move v5, v0

    move v6, v5

    :cond_0
    :goto_0
    const/16 v7, 0x10

    const/16 v8, 0x20

    if-nez v5, :cond_14

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v9

    if-eqz v9, :cond_1

    const/16 v10, 0x8

    if-eq v9, v10, :cond_11

    const/4 v11, 0x2

    if-eq v9, v7, :cond_10

    const/16 v12, 0x18

    if-eq v9, v12, :cond_e

    if-eq v9, v8, :cond_9

    const/16 v10, 0x2a

    if-eq v9, v10, :cond_7

    const/16 v10, 0x30

    if-eq v9, v10, :cond_5

    const/16 v10, 0x32

    if-eq v9, v10, :cond_2

    invoke-virtual {p0, p1, v4, p2, v9}, LR3/n;->o(LR3/f;LB1/j;LR3/i;I)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_1
    move v5, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v9

    invoke-virtual {p1, v9}, LR3/f;->d(I)I

    move-result v9

    and-int/lit8 v10, v6, 0x20

    if-eq v10, v8, :cond_3

    invoke-virtual {p1}, LR3/f;->b()I

    move-result v10

    if-lez v10, :cond_3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, LL3/W;->k:Ljava/util/List;

    or-int/lit8 v6, v6, 0x20

    :cond_3
    :goto_1
    invoke-virtual {p1}, LR3/f;->b()I

    move-result v10

    if-lez v10, :cond_4

    iget-object v10, p0, LL3/W;->k:Ljava/util/List;

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v9}, LR3/f;->c(I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v9, v6, 0x20

    if-eq v9, v8, :cond_6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, LL3/W;->k:Ljava/util/List;

    or-int/lit8 v6, v6, 0x20

    :cond_6
    iget-object v9, p0, LL3/W;->k:Ljava/util/List;

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v9, v6, 0x10

    if-eq v9, v7, :cond_8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, LL3/W;->j:Ljava/util/List;

    or-int/lit8 v6, v6, 0x10

    :cond_8
    iget-object v9, p0, LL3/W;->j:Ljava/util/List;

    sget-object v10, LL3/Q;->w:LL3/a;

    invoke-virtual {p1, v10, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v12

    if-eqz v12, :cond_c

    if-eq v12, v3, :cond_b

    if-eq v12, v11, :cond_a

    const/4 v11, 0x0

    goto :goto_2

    :cond_a
    move-object v11, v1

    goto :goto_2

    :cond_b
    sget-object v11, LL3/V;->e:LL3/V;

    goto :goto_2

    :cond_c
    sget-object v11, LL3/V;->d:LL3/V;

    :goto_2
    if-nez v11, :cond_d

    invoke-virtual {v4, v9}, LB1/j;->w(I)V

    invoke-virtual {v4, v12}, LB1/j;->w(I)V

    goto/16 :goto_0

    :cond_d
    iget v9, p0, LL3/W;->e:I

    or-int/2addr v9, v10

    iput v9, p0, LL3/W;->e:I

    iput-object v11, p0, LL3/W;->i:LL3/V;

    goto/16 :goto_0

    :cond_e
    iget v9, p0, LL3/W;->e:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, LL3/W;->e:I

    invoke-virtual {p1}, LR3/f;->l()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    move v9, v3

    goto :goto_3

    :cond_f
    move v9, v0

    :goto_3
    iput-boolean v9, p0, LL3/W;->h:Z

    goto/16 :goto_0

    :cond_10
    iget v9, p0, LL3/W;->e:I

    or-int/2addr v9, v11

    iput v9, p0, LL3/W;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v9

    iput v9, p0, LL3/W;->g:I

    goto/16 :goto_0

    :cond_11
    iget v9, p0, LL3/W;->e:I

    or-int/2addr v9, v3

    iput v9, p0, LL3/W;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v9

    iput v9, p0, LL3/W;->f:I
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_4
    :try_start_1
    new-instance p2, LR3/u;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, LR3/u;->c:LR3/b;

    throw p2

    :goto_5
    iput-object p0, p1, LR3/u;->c:LR3/b;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    and-int/lit8 p2, v6, 0x10

    if-ne p2, v7, :cond_12

    iget-object p2, p0, LL3/W;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/W;->j:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v6, 0x20

    if-ne p2, v8, :cond_13

    iget-object p2, p0, LL3/W;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/W;->k:Ljava/util/List;

    :cond_13
    :try_start_2
    invoke-virtual {v4}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/W;->d:LR3/e;

    goto :goto_7

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/W;->d:LR3/e;

    throw p1

    :goto_7
    invoke-virtual {p0}, LR3/n;->m()V

    throw p1

    :cond_14
    and-int/lit8 p1, v6, 0x10

    if-ne p1, v7, :cond_15

    iget-object p1, p0, LL3/W;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/W;->j:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v6, 0x20

    if-ne p1, v8, :cond_16

    iget-object p1, p0, LL3/W;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/W;->k:Ljava/util/List;

    :cond_16
    :try_start_3
    invoke-virtual {v4}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/W;->d:LR3/e;

    goto :goto_8

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/W;->d:LR3/e;

    throw p1

    :goto_8
    invoke-virtual {p0}, LR3/n;->m()V

    return-void
.end method

.method public constructor <init>(LR3/l;)V
    .locals 1

    invoke-direct {p0, p1}, LR3/n;-><init>(LR3/l;)V

    const/4 v0, -0x1

    iput v0, p0, LL3/W;->l:I

    iput-byte v0, p0, LL3/W;->m:B

    iput v0, p0, LL3/W;->n:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/W;->d:LR3/e;

    return-void
.end method


# virtual methods
.method public final a()LR3/b;
    .locals 0

    sget-object p0, LL3/W;->o:LL3/W;

    return-object p0
.end method

.method public final b()Z
    .locals 4

    iget-byte v0, p0, LL3/W;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, LL3/W;->e:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_6

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    move v0, v2

    :goto_0
    iget-object v3, p0, LL3/W;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, LL3/W;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/Q;

    invoke-virtual {v3}, LL3/Q;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, LL3/W;->m:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LR3/n;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, LL3/W;->m:B

    return v2

    :cond_4
    iput-byte v1, p0, LL3/W;->m:B

    return v1

    :cond_5
    iput-byte v2, p0, LL3/W;->m:B

    return v2

    :cond_6
    iput-byte v2, p0, LL3/W;->m:B

    return v2
.end method

.method public final c()I
    .locals 5

    iget v0, p0, LL3/W;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/W;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, LL3/W;->f:I

    invoke-static {v1, v0}, LB1/j;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v3, p0, LL3/W;->e:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    iget v3, p0, LL3/W;->g:I

    invoke-static {v4, v3}, LB1/j;->b(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    iget v3, p0, LL3/W;->e:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    invoke-static {v3}, LB1/j;->h(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    :cond_3
    iget v1, p0, LL3/W;->e:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, LL3/W;->i:LL3/V;

    iget v1, v1, LL3/V;->c:I

    invoke-static {v4, v1}, LB1/j;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    move v1, v2

    :goto_1
    iget-object v3, p0, LL3/W;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, LL3/W;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR3/b;

    const/4 v4, 0x5

    invoke-static {v4, v3}, LB1/j;->d(ILR3/b;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_2
    iget-object v3, p0, LL3/W;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, LL3/W;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, LB1/j;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v0, v1

    iget-object v2, p0, LL3/W;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1}, LB1/j;->c(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iput v1, p0, LL3/W;->l:I

    invoke-virtual {p0}, LR3/n;->j()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, LL3/W;->d:LR3/e;

    invoke-virtual {v0}, LR3/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, LL3/W;->n:I

    return v0
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/U;->h()LL3/U;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LL3/U;->h()LL3/U;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/U;->i(LL3/W;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 5

    invoke-virtual {p0}, LL3/W;->c()I

    new-instance v0, LR3/m;

    invoke-direct {v0, p0}, LR3/m;-><init>(LR3/n;)V

    iget v1, p0, LL3/W;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, LL3/W;->f:I

    invoke-virtual {p1, v2, v1}, LB1/j;->n(II)V

    :cond_0
    iget v1, p0, LL3/W;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, LL3/W;->g:I

    invoke-virtual {p1, v2, v1}, LB1/j;->n(II)V

    :cond_1
    iget v1, p0, LL3/W;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, LL3/W;->h:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, LB1/j;->y(II)V

    invoke-virtual {p1, v1}, LB1/j;->r(I)V

    :cond_2
    iget v1, p0, LL3/W;->e:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, LL3/W;->i:LL3/V;

    iget v1, v1, LL3/V;->c:I

    invoke-virtual {p1, v2, v1}, LB1/j;->m(II)V

    :cond_3
    move v1, v3

    :goto_0
    iget-object v2, p0, LL3/W;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, LL3/W;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR3/b;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, LL3/W;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x32

    invoke-virtual {p1, v1}, LB1/j;->w(I)V

    iget v1, p0, LL3/W;->l:I

    invoke-virtual {p1, v1}, LB1/j;->w(I)V

    :cond_5
    :goto_1
    iget-object v1, p0, LL3/W;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, LL3/W;->k:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, LB1/j;->o(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1}, LR3/m;->d(ILB1/j;)V

    iget-object p0, p0, LL3/W;->d:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
