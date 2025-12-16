.class public final LL3/T;
.super LR3/n;
.source "SourceFile"


# static fields
.field public static final q:LL3/T;

.field public static final r:LL3/a;


# instance fields
.field public final d:LR3/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/List;

.field public i:LL3/Q;

.field public j:I

.field public k:LL3/Q;

.field public l:I

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public o:B

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/T;->r:LL3/a;

    new-instance v0, LL3/T;

    invoke-direct {v0}, LL3/T;-><init>()V

    sput-object v0, LL3/T;->q:LL3/T;

    invoke-virtual {v0}, LL3/T;->q()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/T;->o:B

    iput v0, p0, LL3/T;->p:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/T;->d:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 11

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/T;->o:B

    iput v0, p0, LL3/T;->p:I

    invoke-virtual {p0}, LL3/T;->q()V

    new-instance v0, LR3/d;

    invoke-direct {v0}, LR3/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/16 v5, 0x80

    const/4 v6, 0x4

    const/16 v7, 0x100

    if-nez v3, :cond_d

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v8}, LR3/n;->o(LR3/f;LB1/j;LR3/i;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    move v3, v1

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
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v8

    invoke-virtual {p1, v8}, LR3/f;->d(I)I

    move-result v8

    and-int/lit16 v9, v4, 0x100

    if-eq v9, v7, :cond_1

    invoke-virtual {p1}, LR3/f;->b()I

    move-result v9

    if-lez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, LL3/T;->n:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    :cond_1
    :goto_1
    invoke-virtual {p1}, LR3/f;->b()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, LL3/T;->n:Ljava/util/List;

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v8}, LR3/f;->c(I)V

    goto :goto_0

    :sswitch_2
    and-int/lit16 v8, v4, 0x100

    if-eq v8, v7, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, LL3/T;->n:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    :cond_3
    iget-object v8, p0, LL3/T;->n:Ljava/util/List;

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    and-int/lit16 v8, v4, 0x80

    if-eq v8, v5, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, LL3/T;->m:Ljava/util/List;

    or-int/lit16 v4, v4, 0x80

    :cond_4
    iget-object v8, p0, LL3/T;->m:Ljava/util/List;

    sget-object v9, LL3/g;->j:LL3/a;

    invoke-virtual {p1, v9, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    iget v8, p0, LL3/T;->e:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, LL3/T;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v8

    iput v8, p0, LL3/T;->l:I

    goto/16 :goto_0

    :sswitch_5
    iget v8, p0, LL3/T;->e:I

    const/16 v10, 0x10

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_5

    iget-object v8, p0, LL3/T;->k:LL3/Q;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v9

    :cond_5
    sget-object v8, LL3/Q;->w:LL3/a;

    invoke-virtual {p1, v8, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v8

    check-cast v8, LL3/Q;

    iput-object v8, p0, LL3/T;->k:LL3/Q;

    if-eqz v9, :cond_6

    invoke-virtual {v9, v8}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v9}, LL3/P;->g()LL3/Q;

    move-result-object v8

    iput-object v8, p0, LL3/T;->k:LL3/Q;

    :cond_6
    iget v8, p0, LL3/T;->e:I

    or-int/2addr v8, v10

    iput v8, p0, LL3/T;->e:I

    goto/16 :goto_0

    :sswitch_6
    iget v8, p0, LL3/T;->e:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, LL3/T;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v8

    iput v8, p0, LL3/T;->j:I

    goto/16 :goto_0

    :sswitch_7
    iget v8, p0, LL3/T;->e:I

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_7

    iget-object v8, p0, LL3/T;->i:LL3/Q;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, LL3/Q;->s(LL3/Q;)LL3/P;

    move-result-object v9

    :cond_7
    sget-object v8, LL3/Q;->w:LL3/a;

    invoke-virtual {p1, v8, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v8

    check-cast v8, LL3/Q;

    iput-object v8, p0, LL3/T;->i:LL3/Q;

    if-eqz v9, :cond_8

    invoke-virtual {v9, v8}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v9}, LL3/P;->g()LL3/Q;

    move-result-object v8

    iput-object v8, p0, LL3/T;->i:LL3/Q;

    :cond_8
    iget v8, p0, LL3/T;->e:I

    or-int/2addr v8, v6

    iput v8, p0, LL3/T;->e:I

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v8, v4, 0x4

    if-eq v8, v6, :cond_9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, LL3/T;->h:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    :cond_9
    iget-object v8, p0, LL3/T;->h:Ljava/util/List;

    sget-object v9, LL3/W;->p:LL3/a;

    invoke-virtual {p1, v9, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    iget v8, p0, LL3/T;->e:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, LL3/T;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v8

    iput v8, p0, LL3/T;->g:I

    goto/16 :goto_0

    :sswitch_a
    iget v8, p0, LL3/T;->e:I

    or-int/2addr v8, v1

    iput v8, p0, LL3/T;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v8

    iput v8, p0, LL3/T;->f:I
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
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v6, :cond_a

    iget-object p2, p0, LL3/T;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/T;->h:Ljava/util/List;

    :cond_a
    and-int/lit16 p2, v4, 0x80

    if-ne p2, v5, :cond_b

    iget-object p2, p0, LL3/T;->m:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/T;->m:Ljava/util/List;

    :cond_b
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v7, :cond_c

    iget-object p2, p0, LL3/T;->n:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/T;->n:Ljava/util/List;

    :cond_c
    :try_start_2
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/T;->d:LR3/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/T;->d:LR3/e;

    throw p1

    :goto_5
    invoke-virtual {p0}, LR3/n;->m()V

    throw p1

    :cond_d
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v6, :cond_e

    iget-object p1, p0, LL3/T;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/T;->h:Ljava/util/List;

    :cond_e
    and-int/lit16 p1, v4, 0x80

    if-ne p1, v5, :cond_f

    iget-object p1, p0, LL3/T;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/T;->m:Ljava/util/List;

    :cond_f
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v7, :cond_10

    iget-object p1, p0, LL3/T;->n:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/T;->n:Ljava/util/List;

    :cond_10
    :try_start_3
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/T;->d:LR3/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/T;->d:LR3/e;

    throw p1

    :goto_6
    invoke-virtual {p0}, LR3/n;->m()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x28 -> :sswitch_6
        0x32 -> :sswitch_5
        0x38 -> :sswitch_4
        0x42 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(LR3/l;)V
    .locals 1

    invoke-direct {p0, p1}, LR3/n;-><init>(LR3/l;)V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/T;->o:B

    iput v0, p0, LL3/T;->p:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/T;->d:LR3/e;

    return-void
.end method


# virtual methods
.method public final a()LR3/b;
    .locals 0

    sget-object p0, LL3/T;->q:LL3/T;

    return-object p0
.end method

.method public final b()Z
    .locals 4

    iget-byte v0, p0, LL3/T;->o:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, LL3/T;->e:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9

    move v0, v2

    :goto_0
    iget-object v3, p0, LL3/T;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, LL3/T;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/W;

    invoke-virtual {v3}, LL3/W;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, LL3/T;->o:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, LL3/T;->e:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, LL3/T;->i:LL3/Q;

    invoke-virtual {v0}, LL3/Q;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, LL3/T;->o:B

    return v2

    :cond_4
    iget v0, p0, LL3/T;->e:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, LL3/T;->k:LL3/Q;

    invoke-virtual {v0}, LL3/Q;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, LL3/T;->o:B

    return v2

    :cond_5
    move v0, v2

    :goto_1
    iget-object v3, p0, LL3/T;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, LL3/T;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/g;

    invoke-virtual {v3}, LL3/g;->b()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, LL3/T;->o:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, LR3/n;->i()Z

    move-result v0

    if-nez v0, :cond_8

    iput-byte v2, p0, LL3/T;->o:B

    return v2

    :cond_8
    iput-byte v1, p0, LL3/T;->o:B

    return v1

    :cond_9
    iput-byte v2, p0, LL3/T;->o:B

    return v2
.end method

.method public final c()I
    .locals 6

    iget v0, p0, LL3/T;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/T;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, LL3/T;->f:I

    invoke-static {v1, v0}, LB1/j;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, LL3/T;->e:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    iget v1, p0, LL3/T;->g:I

    invoke-static {v3, v1}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v4, p0, LL3/T;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, LL3/T;->h:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/4 v5, 0x3

    invoke-static {v5, v4}, LB1/j;->d(ILR3/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, LL3/T;->e:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    iget-object v1, p0, LL3/T;->i:LL3/Q;

    invoke-static {v4, v1}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, LL3/T;->e:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x5

    iget v5, p0, LL3/T;->j:I

    invoke-static {v1, v5}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, LL3/T;->e:I

    const/16 v5, 0x10

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_6

    const/4 v1, 0x6

    iget-object v5, p0, LL3/T;->k:LL3/Q;

    invoke-static {v1, v5}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, LL3/T;->e:I

    const/16 v5, 0x20

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_7

    const/4 v1, 0x7

    iget v5, p0, LL3/T;->l:I

    invoke-static {v1, v5}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    move v1, v2

    :goto_2
    iget-object v5, p0, LL3/T;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget-object v5, p0, LL3/T;->m:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR3/b;

    invoke-static {v4, v5}, LB1/j;->d(ILR3/b;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_3
    iget-object v4, p0, LL3/T;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    iget-object v4, p0, LL3/T;->n:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, LB1/j;->c(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v0, v1

    iget-object v1, p0, LL3/T;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    invoke-virtual {p0}, LR3/n;->j()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, LL3/T;->d:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LL3/T;->p:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/S;->h()LL3/S;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LL3/S;->h()LL3/S;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/S;->i(LL3/T;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 5

    invoke-virtual {p0}, LL3/T;->c()I

    invoke-virtual {p0}, LR3/n;->n()LR3/m;

    move-result-object v0

    iget v1, p0, LL3/T;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, LL3/T;->f:I

    invoke-virtual {p1, v2, v1}, LB1/j;->n(II)V

    :cond_0
    iget v1, p0, LL3/T;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, LL3/T;->g:I

    invoke-virtual {p1, v2, v1}, LB1/j;->n(II)V

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LL3/T;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, LL3/T;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR3/b;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, LL3/T;->e:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, LL3/T;->i:LL3/Q;

    invoke-virtual {p1, v3, v2}, LB1/j;->p(ILR3/b;)V

    :cond_3
    iget v2, p0, LL3/T;->e:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x5

    iget v4, p0, LL3/T;->j:I

    invoke-virtual {p1, v2, v4}, LB1/j;->n(II)V

    :cond_4
    iget v2, p0, LL3/T;->e:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    const/4 v2, 0x6

    iget-object v4, p0, LL3/T;->k:LL3/Q;

    invoke-virtual {p1, v2, v4}, LB1/j;->p(ILR3/b;)V

    :cond_5
    iget v2, p0, LL3/T;->e:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    const/4 v2, 0x7

    iget v4, p0, LL3/T;->l:I

    invoke-virtual {p1, v2, v4}, LB1/j;->n(II)V

    :cond_6
    move v2, v1

    :goto_1
    iget-object v4, p0, LL3/T;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, LL3/T;->m:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    invoke-virtual {p1, v3, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v2, p0, LL3/T;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, LL3/T;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f

    invoke-virtual {p1, v3, v2}, LB1/j;->n(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, LR3/m;->d(ILB1/j;)V

    iget-object p0, p0, LL3/T;->d:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, LL3/T;->f:I

    const/4 v0, 0x0

    iput v0, p0, LL3/T;->g:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/T;->h:Ljava/util/List;

    sget-object v1, LL3/Q;->v:LL3/Q;

    iput-object v1, p0, LL3/T;->i:LL3/Q;

    iput v0, p0, LL3/T;->j:I

    iput-object v1, p0, LL3/T;->k:LL3/Q;

    iput v0, p0, LL3/T;->l:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL3/T;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL3/T;->n:Ljava/util/List;

    return-void
.end method
