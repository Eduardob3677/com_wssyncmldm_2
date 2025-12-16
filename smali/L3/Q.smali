.class public final LL3/Q;
.super LR3/n;
.source "SourceFile"


# static fields
.field public static final v:LL3/Q;

.field public static final w:LL3/a;


# instance fields
.field public final d:LR3/e;

.field public e:I

.field public f:Ljava/util/List;

.field public g:Z

.field public h:I

.field public i:LL3/Q;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:LL3/Q;

.field public p:I

.field public q:LL3/Q;

.field public r:I

.field public s:I

.field public t:B

.field public u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/Q;->w:LL3/a;

    new-instance v0, LL3/Q;

    invoke-direct {v0}, LL3/Q;-><init>()V

    sput-object v0, LL3/Q;->v:LL3/Q;

    invoke-virtual {v0}, LL3/Q;->r()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/Q;->t:B

    iput v0, p0, LL3/Q;->u:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/Q;->d:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 10

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/Q;->t:B

    iput v0, p0, LL3/Q;->u:I

    invoke-virtual {p0}, LL3/Q;->r()V

    new-instance v0, LR3/d;

    invoke-direct {v0}, LR3/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    if-nez v4, :cond_a

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v6
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v7, LL3/Q;->w:LL3/a;

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_0

    :try_start_1
    invoke-virtual {p0, p1, v2, p2, v6}, LR3/n;->o(LR3/f;LB1/j;LR3/i;I)Z

    move-result v6

    if-nez v6, :cond_0

    :sswitch_0
    move v4, v1

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

    :sswitch_1
    iget v6, p0, LL3/Q;->e:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, LL3/Q;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/Q;->r:I

    goto :goto_0

    :sswitch_2
    iget v6, p0, LL3/Q;->e:I

    const/16 v9, 0x400

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_1

    iget-object v6, p0, LL3/Q;->q:LL3/Q;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v8

    :cond_1
    invoke-virtual {p1, v7, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v6

    check-cast v6, LL3/Q;

    iput-object v6, p0, LL3/Q;->q:LL3/Q;

    if-eqz v8, :cond_2

    invoke-virtual {v8, v6}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v8}, LL3/P;->g()LL3/Q;

    move-result-object v6

    iput-object v6, p0, LL3/Q;->q:LL3/Q;

    :cond_2
    iget v6, p0, LL3/Q;->e:I

    or-int/2addr v6, v9

    iput v6, p0, LL3/Q;->e:I

    goto :goto_0

    :sswitch_3
    iget v6, p0, LL3/Q;->e:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, LL3/Q;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/Q;->n:I

    goto :goto_0

    :sswitch_4
    iget v6, p0, LL3/Q;->e:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, LL3/Q;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/Q;->p:I

    goto :goto_0

    :sswitch_5
    iget v6, p0, LL3/Q;->e:I

    const/16 v9, 0x100

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_3

    iget-object v6, p0, LL3/Q;->o:LL3/Q;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v8

    :cond_3
    invoke-virtual {p1, v7, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v6

    check-cast v6, LL3/Q;

    iput-object v6, p0, LL3/Q;->o:LL3/Q;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v6}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v8}, LL3/P;->g()LL3/Q;

    move-result-object v6

    iput-object v6, p0, LL3/Q;->o:LL3/Q;

    :cond_4
    iget v6, p0, LL3/Q;->e:I

    or-int/2addr v6, v9

    iput v6, p0, LL3/Q;->e:I

    goto/16 :goto_0

    :sswitch_6
    iget v6, p0, LL3/Q;->e:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, LL3/Q;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/Q;->m:I

    goto/16 :goto_0

    :sswitch_7
    iget v6, p0, LL3/Q;->e:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, LL3/Q;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/Q;->j:I

    goto/16 :goto_0

    :sswitch_8
    iget v6, p0, LL3/Q;->e:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, LL3/Q;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/Q;->l:I

    goto/16 :goto_0

    :sswitch_9
    iget v6, p0, LL3/Q;->e:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, LL3/Q;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/Q;->k:I

    goto/16 :goto_0

    :sswitch_a
    iget v6, p0, LL3/Q;->e:I

    const/4 v9, 0x4

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_5

    iget-object v6, p0, LL3/Q;->i:LL3/Q;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v8

    :cond_5
    invoke-virtual {p1, v7, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v6

    check-cast v6, LL3/Q;

    iput-object v6, p0, LL3/Q;->i:LL3/Q;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v6}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v8}, LL3/P;->g()LL3/Q;

    move-result-object v6

    iput-object v6, p0, LL3/Q;->i:LL3/Q;

    :cond_6
    iget v6, p0, LL3/Q;->e:I

    or-int/2addr v6, v9

    iput v6, p0, LL3/Q;->e:I

    goto/16 :goto_0

    :sswitch_b
    iget v6, p0, LL3/Q;->e:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, LL3/Q;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/Q;->h:I

    goto/16 :goto_0

    :sswitch_c
    iget v6, p0, LL3/Q;->e:I

    or-int/2addr v6, v1

    iput v6, p0, LL3/Q;->e:I

    invoke-virtual {p1}, LR3/f;->l()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    move v6, v1

    goto :goto_1

    :cond_7
    move v6, v3

    :goto_1
    iput-boolean v6, p0, LL3/Q;->g:Z

    goto/16 :goto_0

    :sswitch_d
    and-int/lit8 v6, v5, 0x1

    if-eq v6, v1, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, LL3/Q;->f:Ljava/util/List;

    move v5, v1

    :cond_8
    iget-object v6, p0, LL3/Q;->f:Ljava/util/List;

    sget-object v7, LL3/O;->k:LL3/a;

    invoke-virtual {p1, v7, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_e
    iget v6, p0, LL3/Q;->e:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, LL3/Q;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    iput v6, p0, LL3/Q;->s:I
    :try_end_1
    .catch LR3/u; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :goto_2
    :try_start_2
    new-instance p2, LR3/u;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, LR3/u;->c:LR3/b;

    throw p2

    :goto_3
    iput-object p0, p1, LR3/u;->c:LR3/b;

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    and-int/lit8 p2, v5, 0x1

    if-ne p2, v1, :cond_9

    iget-object p2, p0, LL3/Q;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/Q;->f:Ljava/util/List;

    :cond_9
    :try_start_3
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_2
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/Q;->d:LR3/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/Q;->d:LR3/e;

    throw p1

    :goto_5
    invoke-virtual {p0}, LR3/n;->m()V

    throw p1

    :cond_a
    and-int/lit8 p1, v5, 0x1

    if-ne p1, v1, :cond_b

    iget-object p1, p0, LL3/Q;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/Q;->f:Ljava/util/List;

    :cond_b
    :try_start_4
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_3
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/Q;->d:LR3/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/Q;->d:LR3/e;

    throw p1

    :goto_6
    invoke-virtual {p0}, LR3/n;->m()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_e
        0x12 -> :sswitch_d
        0x18 -> :sswitch_c
        0x20 -> :sswitch_b
        0x2a -> :sswitch_a
        0x30 -> :sswitch_9
        0x38 -> :sswitch_8
        0x40 -> :sswitch_7
        0x48 -> :sswitch_6
        0x52 -> :sswitch_5
        0x58 -> :sswitch_4
        0x60 -> :sswitch_3
        0x6a -> :sswitch_2
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(LR3/l;)V
    .locals 1

    invoke-direct {p0, p1}, LR3/n;-><init>(LR3/l;)V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/Q;->t:B

    iput v0, p0, LL3/Q;->u:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/Q;->d:LR3/e;

    return-void
.end method

.method public static s(LL3/Q;)LL3/P;
    .locals 1

    invoke-static {}, LL3/P;->h()LL3/P;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/P;->i(LL3/Q;)LL3/P;

    return-object v0
.end method


# virtual methods
.method public final a()LR3/b;
    .locals 0

    sget-object p0, LL3/Q;->v:LL3/Q;

    return-object p0
.end method

.method public final b()Z
    .locals 4

    iget-byte v0, p0, LL3/Q;->t:B

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
    iget-object v3, p0, LL3/Q;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, LL3/Q;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/O;

    invoke-virtual {v3}, LL3/O;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, LL3/Q;->t:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, LL3/Q;->e:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, LL3/Q;->i:LL3/Q;

    invoke-virtual {v0}, LL3/Q;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, LL3/Q;->t:B

    return v2

    :cond_4
    iget v0, p0, LL3/Q;->e:I

    const/16 v3, 0x100

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, LL3/Q;->o:LL3/Q;

    invoke-virtual {v0}, LL3/Q;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, LL3/Q;->t:B

    return v2

    :cond_5
    iget v0, p0, LL3/Q;->e:I

    const/16 v3, 0x400

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    iget-object v0, p0, LL3/Q;->q:LL3/Q;

    invoke-virtual {v0}, LL3/Q;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iput-byte v2, p0, LL3/Q;->t:B

    return v2

    :cond_6
    invoke-virtual {p0}, LR3/n;->i()Z

    move-result v0

    if-nez v0, :cond_7

    iput-byte v2, p0, LL3/Q;->t:B

    return v2

    :cond_7
    iput-byte v1, p0, LL3/Q;->t:B

    return v1
.end method

.method public final c()I
    .locals 5

    iget v0, p0, LL3/Q;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/Q;->e:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, LL3/Q;->s:I

    invoke-static {v2, v0}, LB1/j;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v1, p0, LL3/Q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v3, v1, :cond_2

    iget-object v1, p0, LL3/Q;->f:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/b;

    invoke-static {v4, v1}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, LL3/Q;->e:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, LB1/j;->h(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, LL3/Q;->e:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_4

    iget v1, p0, LL3/Q;->h:I

    invoke-static {v2, v1}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, LL3/Q;->e:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, LL3/Q;->i:LL3/Q;

    invoke-static {v1, v2}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, LL3/Q;->k:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    iget v2, p0, LL3/Q;->l:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    iget v1, p0, LL3/Q;->j:I

    invoke-static {v2, v1}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    iget v2, p0, LL3/Q;->m:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget-object v2, p0, LL3/Q;->o:LL3/Q;

    invoke-static {v1, v2}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    iget v2, p0, LL3/Q;->p:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    iget v2, p0, LL3/Q;->n:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    iget-object v2, p0, LL3/Q;->q:LL3/Q;

    invoke-static {v1, v2}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0xe

    iget v2, p0, LL3/Q;->r:I

    invoke-static {v1, v2}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    invoke-virtual {p0}, LR3/n;->j()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, LL3/Q;->d:LR3/e;

    invoke-virtual {v0}, LR3/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, LL3/Q;->u:I

    return v0
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/P;->h()LL3/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic e()LR3/k;
    .locals 0

    invoke-virtual {p0}, LL3/Q;->t()LL3/P;

    move-result-object p0

    return-object p0
.end method

.method public final f(LB1/j;)V
    .locals 6

    invoke-virtual {p0}, LL3/Q;->c()I

    new-instance v0, LR3/m;

    invoke-direct {v0, p0}, LR3/m;-><init>(LR3/n;)V

    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, LL3/Q;->s:I

    invoke-virtual {p1, v3, v1}, LB1/j;->n(II)V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v4, p0, LL3/Q;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v2, v4, :cond_1

    iget-object v4, p0, LL3/Q;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    invoke-virtual {p1, v5, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, LL3/Q;->e:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, LL3/Q;->g:Z

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v1}, LB1/j;->y(II)V

    invoke-virtual {p1, v2}, LB1/j;->r(I)V

    :cond_2
    iget v1, p0, LL3/Q;->e:I

    and-int/2addr v1, v5

    const/4 v2, 0x4

    if-ne v1, v5, :cond_3

    iget v1, p0, LL3/Q;->h:I

    invoke-virtual {p1, v2, v1}, LB1/j;->n(II)V

    :cond_3
    iget v1, p0, LL3/Q;->e:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, LL3/Q;->i:LL3/Q;

    invoke-virtual {p1, v1, v2}, LB1/j;->p(ILR3/b;)V

    :cond_4
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    iget v2, p0, LL3/Q;->k:I

    invoke-virtual {p1, v1, v2}, LB1/j;->n(II)V

    :cond_5
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x7

    iget v2, p0, LL3/Q;->l:I

    invoke-virtual {p1, v1, v2}, LB1/j;->n(II)V

    :cond_6
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    iget v1, p0, LL3/Q;->j:I

    invoke-virtual {p1, v2, v1}, LB1/j;->n(II)V

    :cond_7
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0x9

    iget v2, p0, LL3/Q;->m:I

    invoke-virtual {p1, v1, v2}, LB1/j;->n(II)V

    :cond_8
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, LL3/Q;->o:LL3/Q;

    invoke-virtual {p1, v1, v2}, LB1/j;->p(ILR3/b;)V

    :cond_9
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xb

    iget v2, p0, LL3/Q;->p:I

    invoke-virtual {p1, v1, v2}, LB1/j;->n(II)V

    :cond_a
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xc

    iget v2, p0, LL3/Q;->n:I

    invoke-virtual {p1, v1, v2}, LB1/j;->n(II)V

    :cond_b
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, LL3/Q;->q:LL3/Q;

    invoke-virtual {p1, v1, v2}, LB1/j;->p(ILR3/b;)V

    :cond_c
    iget v1, p0, LL3/Q;->e:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xe

    iget v2, p0, LL3/Q;->r:I

    invoke-virtual {p1, v1, v2}, LB1/j;->n(II)V

    :cond_d
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, LR3/m;->d(ILB1/j;)V

    iget-object p0, p0, LL3/Q;->d:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method

.method public final q()Z
    .locals 1

    iget p0, p0, LL3/Q;->e:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r()V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL3/Q;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, LL3/Q;->g:Z

    iput v0, p0, LL3/Q;->h:I

    sget-object v1, LL3/Q;->v:LL3/Q;

    iput-object v1, p0, LL3/Q;->i:LL3/Q;

    iput v0, p0, LL3/Q;->j:I

    iput v0, p0, LL3/Q;->k:I

    iput v0, p0, LL3/Q;->l:I

    iput v0, p0, LL3/Q;->m:I

    iput v0, p0, LL3/Q;->n:I

    iput-object v1, p0, LL3/Q;->o:LL3/Q;

    iput v0, p0, LL3/Q;->p:I

    iput-object v1, p0, LL3/Q;->q:LL3/Q;

    iput v0, p0, LL3/Q;->r:I

    iput v0, p0, LL3/Q;->s:I

    return-void
.end method

.method public final t()LL3/P;
    .locals 0

    invoke-static {p0}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object p0

    return-object p0
.end method
