.class public final LL3/d;
.super LR3/q;
.source "SourceFile"


# static fields
.field public static final r:LL3/d;

.field public static final s:LL3/a;


# instance fields
.field public final c:LR3/e;

.field public d:I

.field public e:LL3/c;

.field public f:J

.field public g:F

.field public h:D

.field public i:I

.field public j:I

.field public k:I

.field public l:LL3/g;

.field public m:Ljava/util/List;

.field public n:I

.field public o:I

.field public p:B

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/d;->s:LL3/a;

    new-instance v0, LL3/d;

    invoke-direct {v0}, LL3/d;-><init>()V

    sput-object v0, LL3/d;->r:LL3/d;

    invoke-virtual {v0}, LL3/d;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/d;->p:B

    iput v0, p0, LL3/d;->q:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/d;->c:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 12

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/d;->p:B

    iput v0, p0, LL3/d;->q:I

    invoke-virtual {p0}, LL3/d;->i()V

    new-instance v0, LR3/d;

    invoke-direct {v0}, LR3/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/16 v5, 0x100

    if-nez v3, :cond_6

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    invoke-virtual {p1, v6, v2}, LR3/f;->q(ILB1/j;)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    move v3, v1

    goto :goto_0

    :sswitch_1
    iget v6, p0, LL3/d;->d:I

    or-int/2addr v6, v5

    iput v6, p0, LL3/d;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/d;->n:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :sswitch_2
    iget v6, p0, LL3/d;->d:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, LL3/d;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/d;->o:I

    goto :goto_0

    :sswitch_3
    and-int/lit16 v6, v4, 0x100

    if-eq v6, v5, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, LL3/d;->m:Ljava/util/List;

    move v4, v5

    :cond_1
    iget-object v6, p0, LL3/d;->m:Ljava/util/List;

    sget-object v7, LL3/d;->s:LL3/a;

    invoke-virtual {p1, v7, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    iget v6, p0, LL3/d;->d:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, LL3/d;->l:LL3/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, LL3/f;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, LL3/f;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, LL3/f;->f:Ljava/lang/Object;

    invoke-virtual {v8, v6}, LL3/f;->k(LL3/g;)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    sget-object v6, LL3/g;->j:LL3/a;

    invoke-virtual {p1, v6, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v6

    check-cast v6, LL3/g;

    iput-object v6, p0, LL3/d;->l:LL3/g;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v6}, LL3/f;->k(LL3/g;)V

    invoke-virtual {v8}, LL3/f;->g()LL3/g;

    move-result-object v6

    iput-object v6, p0, LL3/d;->l:LL3/g;

    :cond_3
    iget v6, p0, LL3/d;->d:I

    or-int/2addr v6, v7

    iput v6, p0, LL3/d;->d:I

    goto/16 :goto_0

    :sswitch_5
    iget v6, p0, LL3/d;->d:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, LL3/d;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/d;->k:I

    goto/16 :goto_0

    :sswitch_6
    iget v6, p0, LL3/d;->d:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, LL3/d;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/d;->j:I

    goto/16 :goto_0

    :sswitch_7
    iget v6, p0, LL3/d;->d:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, LL3/d;->d:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/d;->i:I

    goto/16 :goto_0

    :sswitch_8
    iget v6, p0, LL3/d;->d:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, LL3/d;->d:I

    invoke-virtual {p1}, LR3/f;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    iput-wide v6, p0, LL3/d;->h:D

    goto/16 :goto_0

    :sswitch_9
    iget v6, p0, LL3/d;->d:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, LL3/d;->d:I

    invoke-virtual {p1}, LR3/f;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    iput v6, p0, LL3/d;->g:F

    goto/16 :goto_0

    :sswitch_a
    iget v6, p0, LL3/d;->d:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, LL3/d;->d:I

    invoke-virtual {p1}, LR3/f;->l()J

    move-result-wide v6

    ushr-long v8, v6, v1

    const-wide/16 v10, 0x1

    and-long/2addr v6, v10

    neg-long v6, v6

    xor-long/2addr v6, v8

    iput-wide v6, p0, LL3/d;->f:J

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v7

    invoke-static {v7}, LL3/c;->b(I)LL3/c;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {v2, v6}, LB1/j;->w(I)V

    invoke-virtual {v2, v7}, LB1/j;->w(I)V

    goto/16 :goto_0

    :cond_4
    iget v6, p0, LL3/d;->d:I

    or-int/2addr v6, v1

    iput v6, p0, LL3/d;->d:I

    iput-object v8, p0, LL3/d;->e:LL3/c;
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
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v5, :cond_5

    iget-object p2, p0, LL3/d;->m:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/d;->m:Ljava/util/List;

    :cond_5
    :try_start_2
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/d;->c:LR3/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/d;->c:LR3/e;

    throw p1

    :goto_5
    throw p1

    :cond_6
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v5, :cond_7

    iget-object p1, p0, LL3/d;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/d;->m:Ljava/util/List;

    :cond_7
    :try_start_3
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/d;->c:LR3/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/d;->c:LR3/e;

    throw p1

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x1d -> :sswitch_9
        0x21 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x38 -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x58 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(LR3/k;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/d;->p:B

    iput v0, p0, LL3/d;->q:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/d;->c:LR3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, LL3/d;->p:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, LL3/d;->d:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, LL3/d;->l:LL3/g;

    invoke-virtual {v0}, LL3/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, LL3/d;->p:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, LL3/d;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, LL3/d;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/d;

    invoke-virtual {v3}, LL3/d;->b()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, LL3/d;->p:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput-byte v1, p0, LL3/d;->p:B

    return v1
.end method

.method public final c()I
    .locals 9

    iget v0, p0, LL3/d;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/d;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LL3/d;->e:LL3/c;

    iget v0, v0, LL3/c;->c:I

    invoke-static {v1, v0}, LB1/j;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v3, p0, LL3/d;->d:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    iget-wide v5, p0, LL3/d;->f:J

    invoke-static {v4}, LB1/j;->h(I)I

    move-result v3

    shl-long v7, v5, v1

    const/16 v1, 0x3f

    shr-long v4, v5, v1

    xor-long/2addr v4, v7

    invoke-static {v4, v5}, LB1/j;->g(J)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, LL3/d;->d:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, LB1/j;->h(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, LL3/d;->d:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    invoke-static {v3}, LB1/j;->h(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, LL3/d;->d:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    iget v3, p0, LL3/d;->i:I

    invoke-static {v1, v3}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, LL3/d;->d:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    iget v3, p0, LL3/d;->j:I

    invoke-static {v1, v3}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, LL3/d;->d:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x7

    iget v3, p0, LL3/d;->k:I

    invoke-static {v1, v3}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, LL3/d;->d:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, LL3/d;->l:LL3/g;

    invoke-static {v4, v1}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    :goto_1
    iget-object v1, p0, LL3/d;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    iget-object v1, p0, LL3/d;->m:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/b;

    const/16 v3, 0x9

    invoke-static {v3, v1}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    iget v1, p0, LL3/d;->d:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget v2, p0, LL3/d;->o:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, LL3/d;->d:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    iget v2, p0, LL3/d;->n:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, LL3/d;->c:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LL3/d;->q:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/b;->g()LL3/b;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LL3/b;->g()LL3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/b;->h(LL3/d;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 8

    invoke-virtual {p0}, LL3/d;->c()I

    iget v0, p0, LL3/d;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LL3/d;->e:LL3/c;

    iget v0, v0, LL3/c;->c:I

    invoke-virtual {p1, v1, v0}, LB1/j;->m(II)V

    :cond_0
    iget v0, p0, LL3/d;->d:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-wide v4, p0, LL3/d;->f:J

    invoke-virtual {p1, v2, v3}, LB1/j;->y(II)V

    shl-long v6, v4, v1

    const/16 v0, 0x3f

    shr-long/2addr v4, v0

    xor-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, LB1/j;->x(J)V

    :cond_1
    iget v0, p0, LL3/d;->d:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v4, 0x5

    if-ne v0, v2, :cond_2

    iget v0, p0, LL3/d;->g:F

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, LB1/j;->y(II)V

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, LB1/j;->u(I)V

    :cond_2
    iget v0, p0, LL3/d;->d:I

    const/16 v5, 0x8

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_3

    iget-wide v6, p0, LL3/d;->h:D

    invoke-virtual {p1, v2, v1}, LB1/j;->y(II)V

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, LB1/j;->v(J)V

    :cond_3
    iget v0, p0, LL3/d;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p0, LL3/d;->i:I

    invoke-virtual {p1, v4, v0}, LB1/j;->n(II)V

    :cond_4
    iget v0, p0, LL3/d;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, LL3/d;->j:I

    invoke-virtual {p1, v0, v1}, LB1/j;->n(II)V

    :cond_5
    iget v0, p0, LL3/d;->d:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, LL3/d;->k:I

    invoke-virtual {p1, v0, v1}, LB1/j;->n(II)V

    :cond_6
    iget v0, p0, LL3/d;->d:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, LL3/d;->l:LL3/g;

    invoke-virtual {p1, v5, v0}, LB1/j;->p(ILR3/b;)V

    :cond_7
    :goto_0
    iget-object v0, p0, LL3/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, p0, LL3/d;->m:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR3/b;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    iget v0, p0, LL3/d;->d:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget v1, p0, LL3/d;->o:I

    invoke-virtual {p1, v0, v1}, LB1/j;->n(II)V

    :cond_9
    iget v0, p0, LL3/d;->d:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    iget v1, p0, LL3/d;->n:I

    invoke-virtual {p1, v0, v1}, LB1/j;->n(II)V

    :cond_a
    iget-object p0, p0, LL3/d;->c:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method

.method public final i()V
    .locals 2

    sget-object v0, LL3/c;->d:LL3/c;

    iput-object v0, p0, LL3/d;->e:LL3/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LL3/d;->f:J

    const/4 v0, 0x0

    iput v0, p0, LL3/d;->g:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LL3/d;->h:D

    const/4 v0, 0x0

    iput v0, p0, LL3/d;->i:I

    iput v0, p0, LL3/d;->j:I

    iput v0, p0, LL3/d;->k:I

    sget-object v1, LL3/g;->i:LL3/g;

    iput-object v1, p0, LL3/d;->l:LL3/g;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/d;->m:Ljava/util/List;

    iput v0, p0, LL3/d;->n:I

    iput v0, p0, LL3/d;->o:I

    return-void
.end method
