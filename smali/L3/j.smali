.class public final LL3/j;
.super LR3/n;
.source "SourceFile"


# static fields
.field public static final L:LL3/j;

.field public static final M:LL3/a;


# instance fields
.field public A:I

.field public B:Ljava/util/List;

.field public C:I

.field public D:Ljava/util/List;

.field public E:Ljava/util/List;

.field public F:I

.field public G:LL3/X;

.field public H:Ljava/util/List;

.field public I:LL3/e0;

.field public J:B

.field public K:I

.field public final d:LR3/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:I

.field public m:Ljava/util/List;

.field public n:I

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:I

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:Ljava/util/List;

.field public v:Ljava/util/List;

.field public w:Ljava/util/List;

.field public x:I

.field public y:I

.field public z:LL3/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/j;->M:LL3/a;

    new-instance v0, LL3/j;

    invoke-direct {v0}, LL3/j;-><init>()V

    sput-object v0, LL3/j;->L:LL3/j;

    invoke-virtual {v0}, LL3/j;->q()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LL3/j;->l:I

    iput v0, p0, LL3/j;->n:I

    iput v0, p0, LL3/j;->q:I

    iput v0, p0, LL3/j;->x:I

    iput v0, p0, LL3/j;->C:I

    iput v0, p0, LL3/j;->F:I

    iput-byte v0, p0, LL3/j;->J:B

    iput v0, p0, LL3/j;->K:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/j;->d:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, LR3/n;-><init>()V

    const/4 v4, -0x1

    iput v4, v1, LL3/j;->l:I

    iput v4, v1, LL3/j;->n:I

    iput v4, v1, LL3/j;->q:I

    iput v4, v1, LL3/j;->x:I

    iput v4, v1, LL3/j;->C:I

    iput v4, v1, LL3/j;->F:I

    iput-byte v4, v1, LL3/j;->J:B

    iput v4, v1, LL3/j;->K:I

    invoke-virtual/range {p0 .. p0}, LL3/j;->q()V

    invoke-static {}, LR3/e;->s()LR3/d;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/16 v9, 0x80

    const/16 v5, 0x40

    const/high16 v12, 0x80000

    const/high16 v11, 0x100000

    const/high16 v10, 0x400000

    if-nez v7, :cond_35

    :try_start_0
    invoke-virtual/range {p1 .. p1}, LR3/f;->n()I

    move-result v15

    const/16 v16, 0x0

    sparse-switch v15, :sswitch_data_0

    invoke-virtual {v1, v2, v6, v3, v15}, LR3/n;->o(LR3/f;LB1/j;LR3/i;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x1

    :cond_0
    :goto_1
    const/4 v14, 0x1

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_c

    :sswitch_0
    iget v15, v1, LL3/j;->e:I

    and-int/2addr v15, v9

    if-ne v15, v9, :cond_1

    iget-object v15, v1, LL3/j;->I:LL3/e0;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, LL3/m;

    const/4 v13, 0x2

    invoke-direct {v14, v13}, LL3/m;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    iput-object v13, v14, LL3/m;->f:Ljava/util/List;

    invoke-virtual {v14, v15}, LL3/m;->m(LL3/e0;)V

    goto :goto_2

    :cond_1
    move-object/from16 v14, v16

    :goto_2
    sget-object v13, LL3/e0;->h:LL3/a;

    invoke-virtual {v2, v13, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v13

    check-cast v13, LL3/e0;

    iput-object v13, v1, LL3/j;->I:LL3/e0;

    if-eqz v14, :cond_2

    invoke-virtual {v14, v13}, LL3/m;->m(LL3/e0;)V

    invoke-virtual {v14}, LL3/m;->i()LL3/e0;

    move-result-object v13

    iput-object v13, v1, LL3/j;->I:LL3/e0;

    :cond_2
    iget v13, v1, LL3/j;->e:I

    or-int/2addr v13, v9

    iput v13, v1, LL3/j;->e:I

    goto :goto_1

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, LR3/f;->k()I

    move-result v13

    invoke-virtual {v2, v13}, LR3/f;->d(I)I

    move-result v13

    and-int v14, v8, v10

    if-eq v14, v10, :cond_3

    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_3

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, LL3/j;->H:Ljava/util/List;

    or-int/2addr v8, v10

    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_4

    iget-object v14, v1, LL3/j;->H:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v13}, LR3/f;->c(I)V

    goto :goto_1

    :sswitch_2
    and-int v13, v8, v10

    if-eq v13, v10, :cond_5

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->H:Ljava/util/List;

    or-int/2addr v8, v10

    :cond_5
    iget-object v13, v1, LL3/j;->H:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_3
    iget v13, v1, LL3/j;->e:I

    and-int/2addr v13, v5

    if-ne v13, v5, :cond_6

    iget-object v13, v1, LL3/j;->G:LL3/X;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, LL3/X;->i(LL3/X;)LL3/f;

    move-result-object v16

    :cond_6
    move-object/from16 v13, v16

    sget-object v14, LL3/X;->j:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    check-cast v14, LL3/X;

    iput-object v14, v1, LL3/j;->G:LL3/X;

    if-eqz v13, :cond_7

    invoke-virtual {v13, v14}, LL3/f;->l(LL3/X;)V

    invoke-virtual {v13}, LL3/f;->h()LL3/X;

    move-result-object v13

    iput-object v13, v1, LL3/j;->G:LL3/X;

    :cond_7
    iget v13, v1, LL3/j;->e:I

    or-int/2addr v13, v5

    iput v13, v1, LL3/j;->e:I

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual/range {p1 .. p1}, LR3/f;->k()I

    move-result v13

    invoke-virtual {v2, v13}, LR3/f;->d(I)I

    move-result v13

    and-int v14, v8, v11

    if-eq v14, v11, :cond_8

    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_8

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, LL3/j;->E:Ljava/util/List;

    or-int/2addr v8, v11

    :cond_8
    :goto_4
    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_9

    iget-object v14, v1, LL3/j;->E:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v13}, LR3/f;->c(I)V

    goto/16 :goto_1

    :sswitch_5
    and-int v13, v8, v11

    if-eq v13, v11, :cond_a

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->E:Ljava/util/List;

    or-int/2addr v8, v11

    :cond_a
    iget-object v13, v1, LL3/j;->E:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_6
    and-int v13, v8, v12

    if-eq v13, v12, :cond_b

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->D:Ljava/util/List;

    or-int/2addr v8, v12

    :cond_b
    iget-object v13, v1, LL3/j;->D:Ljava/util/List;

    sget-object v14, LL3/Q;->w:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual/range {p1 .. p1}, LR3/f;->k()I

    move-result v13

    invoke-virtual {v2, v13}, LR3/f;->d(I)I

    move-result v13

    const/high16 v14, 0x40000

    and-int v15, v8, v14

    if-eq v15, v14, :cond_c

    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v15

    if-lez v15, :cond_c

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v1, LL3/j;->B:Ljava/util/List;

    or-int/2addr v8, v14

    :cond_c
    :goto_5
    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_d

    iget-object v14, v1, LL3/j;->B:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    invoke-virtual {v2, v13}, LR3/f;->c(I)V

    goto/16 :goto_1

    :sswitch_8
    const/high16 v13, 0x40000

    and-int v14, v8, v13

    if-eq v14, v13, :cond_e

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, LL3/j;->B:Ljava/util/List;

    or-int/2addr v8, v13

    :cond_e
    iget-object v13, v1, LL3/j;->B:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual/range {p1 .. p1}, LR3/f;->k()I

    move-result v13

    invoke-virtual {v2, v13}, LR3/f;->d(I)I

    move-result v13

    and-int/lit16 v14, v8, 0x100

    const/16 v15, 0x100

    if-eq v14, v15, :cond_f

    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_f

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, LL3/j;->p:Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    :cond_f
    :goto_6
    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_10

    iget-object v14, v1, LL3/j;->p:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    invoke-virtual {v2, v13}, LR3/f;->c(I)V

    goto/16 :goto_1

    :sswitch_a
    and-int/lit16 v13, v8, 0x100

    const/16 v14, 0x100

    if-eq v13, v14, :cond_11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->p:Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    :cond_11
    iget-object v13, v1, LL3/j;->p:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_b
    and-int/lit16 v13, v8, 0x80

    if-eq v13, v9, :cond_12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->o:Ljava/util/List;

    or-int/lit16 v8, v8, 0x80

    :cond_12
    iget-object v13, v1, LL3/j;->o:Ljava/util/List;

    sget-object v14, LL3/Q;->w:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_c
    iget v13, v1, LL3/j;->e:I

    const/16 v14, 0x20

    or-int/2addr v13, v14

    iput v13, v1, LL3/j;->e:I

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v13

    iput v13, v1, LL3/j;->A:I

    goto/16 :goto_1

    :sswitch_d
    iget v13, v1, LL3/j;->e:I

    const/16 v14, 0x10

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_13

    iget-object v13, v1, LL3/j;->z:LL3/Q;

    invoke-virtual {v13}, LL3/Q;->t()LL3/P;

    move-result-object v16

    :cond_13
    move-object/from16 v13, v16

    sget-object v14, LL3/Q;->w:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    check-cast v14, LL3/Q;

    iput-object v14, v1, LL3/j;->z:LL3/Q;

    if-eqz v13, :cond_14

    invoke-virtual {v13, v14}, LL3/P;->i(LL3/Q;)LL3/P;

    invoke-virtual {v13}, LL3/P;->g()LL3/Q;

    move-result-object v13

    iput-object v13, v1, LL3/j;->z:LL3/Q;

    :cond_14
    iget v13, v1, LL3/j;->e:I

    const/16 v14, 0x10

    or-int/2addr v13, v14

    iput v13, v1, LL3/j;->e:I

    goto/16 :goto_1

    :sswitch_e
    iget v13, v1, LL3/j;->e:I

    const/16 v14, 0x8

    or-int/2addr v13, v14

    iput v13, v1, LL3/j;->e:I

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v13

    iput v13, v1, LL3/j;->y:I

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual/range {p1 .. p1}, LR3/f;->k()I

    move-result v13

    invoke-virtual {v2, v13}, LR3/f;->d(I)I

    move-result v13

    and-int/lit16 v14, v8, 0x4000

    const/16 v15, 0x4000

    if-eq v14, v15, :cond_15

    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_15

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, LL3/j;->w:Ljava/util/List;

    or-int/lit16 v8, v8, 0x4000

    :cond_15
    :goto_7
    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_16

    iget-object v14, v1, LL3/j;->w:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    invoke-virtual {v2, v13}, LR3/f;->c(I)V

    goto/16 :goto_1

    :sswitch_10
    and-int/lit16 v13, v8, 0x4000

    const/16 v14, 0x4000

    if-eq v13, v14, :cond_17

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->w:Ljava/util/List;

    or-int/lit16 v8, v8, 0x4000

    :cond_17
    iget-object v13, v1, LL3/j;->w:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_11
    and-int/lit16 v13, v8, 0x2000

    const/16 v14, 0x2000

    if-eq v13, v14, :cond_18

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->v:Ljava/util/List;

    or-int/lit16 v8, v8, 0x2000

    :cond_18
    iget-object v13, v1, LL3/j;->v:Ljava/util/List;

    sget-object v14, LL3/t;->j:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_12
    and-int/lit16 v13, v8, 0x1000

    const/16 v14, 0x1000

    if-eq v13, v14, :cond_19

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->u:Ljava/util/List;

    or-int/lit16 v8, v8, 0x1000

    :cond_19
    iget-object v13, v1, LL3/j;->u:Ljava/util/List;

    sget-object v14, LL3/T;->r:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_13
    and-int/lit16 v13, v8, 0x800

    const/16 v14, 0x800

    if-eq v13, v14, :cond_1a

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->t:Ljava/util/List;

    or-int/lit16 v8, v8, 0x800

    :cond_1a
    iget-object v13, v1, LL3/j;->t:Ljava/util/List;

    sget-object v14, LL3/G;->x:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_14
    and-int/lit16 v13, v8, 0x400

    const/16 v14, 0x400

    if-eq v13, v14, :cond_1b

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->s:Ljava/util/List;

    or-int/lit16 v8, v8, 0x400

    :cond_1b
    iget-object v13, v1, LL3/j;->s:Ljava/util/List;

    sget-object v14, LL3/y;->x:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_15
    and-int/lit16 v13, v8, 0x200

    const/16 v14, 0x200

    if-eq v13, v14, :cond_1c

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->r:Ljava/util/List;

    or-int/lit16 v8, v8, 0x200

    :cond_1c
    iget-object v13, v1, LL3/j;->r:Ljava/util/List;

    sget-object v14, LL3/l;->l:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_16
    invoke-virtual/range {p1 .. p1}, LR3/f;->k()I

    move-result v13

    invoke-virtual {v2, v13}, LR3/f;->d(I)I

    move-result v13

    and-int/lit8 v14, v8, 0x40

    if-eq v14, v5, :cond_1d

    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_1d

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, LL3/j;->m:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    :cond_1d
    :goto_8
    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_1e

    iget-object v14, v1, LL3/j;->m:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1e
    invoke-virtual {v2, v13}, LR3/f;->c(I)V

    goto/16 :goto_1

    :sswitch_17
    and-int/lit8 v13, v8, 0x40

    if-eq v13, v5, :cond_1f

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->m:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    :cond_1f
    iget-object v13, v1, LL3/j;->m:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_18
    and-int/lit8 v13, v8, 0x10

    const/16 v14, 0x10

    if-eq v13, v14, :cond_20

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->j:Ljava/util/List;

    or-int/lit8 v8, v8, 0x10

    :cond_20
    iget-object v13, v1, LL3/j;->j:Ljava/util/List;

    sget-object v14, LL3/Q;->w:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_19
    and-int/lit8 v13, v8, 0x8

    const/16 v14, 0x8

    if-eq v13, v14, :cond_21

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->i:Ljava/util/List;

    or-int/lit8 v8, v8, 0x8

    :cond_21
    iget-object v13, v1, LL3/j;->i:Ljava/util/List;

    sget-object v14, LL3/W;->p:LL3/a;

    invoke-virtual {v2, v14, v3}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1a
    iget v13, v1, LL3/j;->e:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v1, LL3/j;->e:I

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v13

    iput v13, v1, LL3/j;->h:I

    goto/16 :goto_1

    :sswitch_1b
    iget v13, v1, LL3/j;->e:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v1, LL3/j;->e:I

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v13

    iput v13, v1, LL3/j;->g:I

    goto/16 :goto_1

    :sswitch_1c
    invoke-virtual/range {p1 .. p1}, LR3/f;->k()I

    move-result v13

    invoke-virtual {v2, v13}, LR3/f;->d(I)I

    move-result v13

    and-int/lit8 v14, v8, 0x20

    const/16 v15, 0x20

    if-eq v14, v15, :cond_22

    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_22

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, LL3/j;->k:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    :cond_22
    :goto_9
    invoke-virtual/range {p1 .. p1}, LR3/f;->b()I

    move-result v14

    if-lez v14, :cond_23

    iget-object v14, v1, LL3/j;->k:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    invoke-virtual {v2, v13}, LR3/f;->c(I)V

    goto/16 :goto_1

    :sswitch_1d
    and-int/lit8 v13, v8, 0x20

    const/16 v14, 0x20

    if-eq v13, v14, :cond_24

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LL3/j;->k:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    :cond_24
    iget-object v13, v1, LL3/j;->k:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1e
    iget v13, v1, LL3/j;->e:I

    const/4 v14, 0x1

    or-int/2addr v13, v14

    iput v13, v1, LL3/j;->e:I

    invoke-virtual/range {p1 .. p1}, LR3/f;->f()I

    move-result v13

    iput v13, v1, LL3/j;->f:I
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :sswitch_1f
    const/4 v14, 0x1

    move v7, v14

    :goto_a
    move v5, v14

    goto/16 :goto_0

    :goto_b
    :try_start_1
    new-instance v3, LR3/u;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object v1, v3, LR3/u;->c:LR3/b;

    throw v3

    :goto_c
    iput-object v1, v2, LR3/u;->c:LR3/b;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_d
    and-int/lit8 v3, v8, 0x20

    const/16 v7, 0x20

    if-ne v3, v7, :cond_25

    iget-object v3, v1, LL3/j;->k:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->k:Ljava/util/List;

    :cond_25
    and-int/lit8 v3, v8, 0x8

    const/16 v7, 0x8

    if-ne v3, v7, :cond_26

    iget-object v3, v1, LL3/j;->i:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->i:Ljava/util/List;

    :cond_26
    and-int/lit8 v3, v8, 0x10

    const/16 v7, 0x10

    if-ne v3, v7, :cond_27

    iget-object v3, v1, LL3/j;->j:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->j:Ljava/util/List;

    :cond_27
    and-int/lit8 v3, v8, 0x40

    if-ne v3, v5, :cond_28

    iget-object v3, v1, LL3/j;->m:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->m:Ljava/util/List;

    :cond_28
    and-int/lit16 v3, v8, 0x200

    const/16 v5, 0x200

    if-ne v3, v5, :cond_29

    iget-object v3, v1, LL3/j;->r:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->r:Ljava/util/List;

    :cond_29
    and-int/lit16 v3, v8, 0x400

    const/16 v5, 0x400

    if-ne v3, v5, :cond_2a

    iget-object v3, v1, LL3/j;->s:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->s:Ljava/util/List;

    :cond_2a
    and-int/lit16 v3, v8, 0x800

    const/16 v5, 0x800

    if-ne v3, v5, :cond_2b

    iget-object v3, v1, LL3/j;->t:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->t:Ljava/util/List;

    :cond_2b
    and-int/lit16 v3, v8, 0x1000

    const/16 v5, 0x1000

    if-ne v3, v5, :cond_2c

    iget-object v3, v1, LL3/j;->u:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->u:Ljava/util/List;

    :cond_2c
    and-int/lit16 v3, v8, 0x2000

    const/16 v5, 0x2000

    if-ne v3, v5, :cond_2d

    iget-object v3, v1, LL3/j;->v:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->v:Ljava/util/List;

    :cond_2d
    and-int/lit16 v3, v8, 0x4000

    const/16 v5, 0x4000

    if-ne v3, v5, :cond_2e

    iget-object v3, v1, LL3/j;->w:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->w:Ljava/util/List;

    :cond_2e
    and-int/lit16 v3, v8, 0x80

    if-ne v3, v9, :cond_2f

    iget-object v3, v1, LL3/j;->o:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->o:Ljava/util/List;

    :cond_2f
    and-int/lit16 v3, v8, 0x100

    const/16 v5, 0x100

    if-ne v3, v5, :cond_30

    iget-object v3, v1, LL3/j;->p:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->p:Ljava/util/List;

    :cond_30
    const/high16 v3, 0x40000

    and-int v5, v8, v3

    if-ne v5, v3, :cond_31

    iget-object v3, v1, LL3/j;->B:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->B:Ljava/util/List;

    :cond_31
    and-int v3, v8, v12

    if-ne v3, v12, :cond_32

    iget-object v3, v1, LL3/j;->D:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->D:Ljava/util/List;

    :cond_32
    and-int v3, v8, v11

    if-ne v3, v11, :cond_33

    iget-object v3, v1, LL3/j;->E:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->E:Ljava/util/List;

    :cond_33
    and-int v3, v8, v10

    if-ne v3, v10, :cond_34

    iget-object v3, v1, LL3/j;->H:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LL3/j;->H:Ljava/util/List;

    :cond_34
    :try_start_2
    invoke-virtual {v6}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v4}, LR3/d;->l()LR3/e;

    move-result-object v3

    iput-object v3, v1, LL3/j;->d:LR3/e;

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, LR3/d;->l()LR3/e;

    move-result-object v3

    iput-object v3, v1, LL3/j;->d:LR3/e;

    throw v2

    :goto_e
    invoke-virtual/range {p0 .. p0}, LR3/n;->m()V

    throw v2

    :cond_35
    and-int/lit8 v2, v8, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_36

    iget-object v2, v1, LL3/j;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->k:Ljava/util/List;

    :cond_36
    and-int/lit8 v2, v8, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_37

    iget-object v2, v1, LL3/j;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->i:Ljava/util/List;

    :cond_37
    and-int/lit8 v2, v8, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_38

    iget-object v2, v1, LL3/j;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->j:Ljava/util/List;

    :cond_38
    and-int/lit8 v2, v8, 0x40

    if-ne v2, v5, :cond_39

    iget-object v2, v1, LL3/j;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->m:Ljava/util/List;

    :cond_39
    and-int/lit16 v2, v8, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_3a

    iget-object v2, v1, LL3/j;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->r:Ljava/util/List;

    :cond_3a
    and-int/lit16 v2, v8, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_3b

    iget-object v2, v1, LL3/j;->s:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->s:Ljava/util/List;

    :cond_3b
    and-int/lit16 v2, v8, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_3c

    iget-object v2, v1, LL3/j;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->t:Ljava/util/List;

    :cond_3c
    and-int/lit16 v2, v8, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_3d

    iget-object v2, v1, LL3/j;->u:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->u:Ljava/util/List;

    :cond_3d
    and-int/lit16 v2, v8, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_3e

    iget-object v2, v1, LL3/j;->v:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->v:Ljava/util/List;

    :cond_3e
    and-int/lit16 v2, v8, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_3f

    iget-object v2, v1, LL3/j;->w:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->w:Ljava/util/List;

    :cond_3f
    and-int/lit16 v2, v8, 0x80

    if-ne v2, v9, :cond_40

    iget-object v2, v1, LL3/j;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->o:Ljava/util/List;

    :cond_40
    and-int/lit16 v2, v8, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_41

    iget-object v2, v1, LL3/j;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->p:Ljava/util/List;

    :cond_41
    const/high16 v2, 0x40000

    and-int v3, v8, v2

    if-ne v3, v2, :cond_42

    iget-object v2, v1, LL3/j;->B:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->B:Ljava/util/List;

    :cond_42
    and-int v2, v8, v12

    if-ne v2, v12, :cond_43

    iget-object v2, v1, LL3/j;->D:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->D:Ljava/util/List;

    :cond_43
    and-int v2, v8, v11

    if-ne v2, v11, :cond_44

    iget-object v2, v1, LL3/j;->E:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->E:Ljava/util/List;

    :cond_44
    and-int v2, v8, v10

    if-ne v2, v10, :cond_45

    iget-object v2, v1, LL3/j;->H:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LL3/j;->H:Ljava/util/List;

    :cond_45
    :try_start_3
    invoke-virtual {v6}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v4}, LR3/d;->l()LR3/e;

    move-result-object v2

    iput-object v2, v1, LL3/j;->d:LR3/e;

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, LR3/d;->l()LR3/e;

    move-result-object v3

    iput-object v3, v1, LL3/j;->d:LR3/e;

    throw v2

    :goto_f
    invoke-virtual/range {p0 .. p0}, LR3/n;->m()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1f
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_1d
        0x12 -> :sswitch_1c
        0x18 -> :sswitch_1b
        0x20 -> :sswitch_1a
        0x2a -> :sswitch_19
        0x32 -> :sswitch_18
        0x38 -> :sswitch_17
        0x3a -> :sswitch_16
        0x42 -> :sswitch_15
        0x4a -> :sswitch_14
        0x52 -> :sswitch_13
        0x5a -> :sswitch_12
        0x6a -> :sswitch_11
        0x80 -> :sswitch_10
        0x82 -> :sswitch_f
        0x88 -> :sswitch_e
        0x92 -> :sswitch_d
        0x98 -> :sswitch_c
        0xa2 -> :sswitch_b
        0xa8 -> :sswitch_a
        0xaa -> :sswitch_9
        0xb0 -> :sswitch_8
        0xb2 -> :sswitch_7
        0xba -> :sswitch_6
        0xc0 -> :sswitch_5
        0xc2 -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(LR3/l;)V
    .locals 1

    invoke-direct {p0, p1}, LR3/n;-><init>(LR3/l;)V

    const/4 v0, -0x1

    iput v0, p0, LL3/j;->l:I

    iput v0, p0, LL3/j;->n:I

    iput v0, p0, LL3/j;->q:I

    iput v0, p0, LL3/j;->x:I

    iput v0, p0, LL3/j;->C:I

    iput v0, p0, LL3/j;->F:I

    iput-byte v0, p0, LL3/j;->J:B

    iput v0, p0, LL3/j;->K:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/j;->d:LR3/e;

    return-void
.end method


# virtual methods
.method public final a()LR3/b;
    .locals 0

    sget-object p0, LL3/j;->L:LL3/j;

    return-object p0
.end method

.method public final b()Z
    .locals 4

    iget-byte v0, p0, LL3/j;->J:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, LL3/j;->e:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_17

    move v0, v2

    :goto_0
    iget-object v3, p0, LL3/j;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, LL3/j;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/W;

    invoke-virtual {v3}, LL3/W;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, LL3/j;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, LL3/j;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/Q;

    invoke-virtual {v3}, LL3/Q;->b()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, LL3/j;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, LL3/j;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/Q;

    invoke-virtual {v3}, LL3/Q;->b()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    iget-object v3, p0, LL3/j;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, LL3/j;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/l;

    invoke-virtual {v3}, LL3/l;->b()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_4
    iget-object v3, p0, LL3/j;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, LL3/j;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/y;

    invoke-virtual {v3}, LL3/y;->b()Z

    move-result v3

    if-nez v3, :cond_a

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_5
    iget-object v3, p0, LL3/j;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    iget-object v3, p0, LL3/j;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/G;

    invoke-virtual {v3}, LL3/G;->b()Z

    move-result v3

    if-nez v3, :cond_c

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    move v0, v2

    :goto_6
    iget-object v3, p0, LL3/j;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    iget-object v3, p0, LL3/j;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/T;

    invoke-virtual {v3}, LL3/T;->b()Z

    move-result v3

    if-nez v3, :cond_e

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v0, v2

    :goto_7
    iget-object v3, p0, LL3/j;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    iget-object v3, p0, LL3/j;->v:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/t;

    invoke-virtual {v3}, LL3/t;->b()Z

    move-result v3

    if-nez v3, :cond_10

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    iget v0, p0, LL3/j;->e:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    iget-object v0, p0, LL3/j;->z:LL3/Q;

    invoke-virtual {v0}, LL3/Q;->b()Z

    move-result v0

    if-nez v0, :cond_12

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_12
    move v0, v2

    :goto_8
    iget-object v3, p0, LL3/j;->D:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_14

    iget-object v3, p0, LL3/j;->D:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/Q;

    invoke-virtual {v3}, LL3/Q;->b()Z

    move-result v3

    if-nez v3, :cond_13

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    iget v0, p0, LL3/j;->e:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_15

    iget-object v0, p0, LL3/j;->G:LL3/X;

    invoke-virtual {v0}, LL3/X;->b()Z

    move-result v0

    if-nez v0, :cond_15

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_15
    invoke-virtual {p0}, LR3/n;->i()Z

    move-result v0

    if-nez v0, :cond_16

    iput-byte v2, p0, LL3/j;->J:B

    return v2

    :cond_16
    iput-byte v1, p0, LL3/j;->J:B

    return v1

    :cond_17
    iput-byte v2, p0, LL3/j;->J:B

    return v2
.end method

.method public final c()I
    .locals 7

    iget v0, p0, LL3/j;->K:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/j;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, LL3/j;->f:I

    invoke-static {v1, v0}, LB1/j;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v2

    move v3, v1

    :goto_1
    iget-object v4, p0, LL3/j;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, LL3/j;->k:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, LB1/j;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    iget-object v1, p0, LL3/j;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3}, LB1/j;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v3, p0, LL3/j;->l:I

    iget v1, p0, LL3/j;->e:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    iget v4, p0, LL3/j;->g:I

    invoke-static {v1, v4}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, LL3/j;->e:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    iget v1, p0, LL3/j;->h:I

    invoke-static {v4, v1}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    move v1, v2

    :goto_2
    iget-object v4, p0, LL3/j;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v4, p0, LL3/j;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/4 v5, 0x5

    invoke-static {v5, v4}, LB1/j;->d(ILR3/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_3
    iget-object v4, p0, LL3/j;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, LL3/j;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/4 v5, 0x6

    invoke-static {v5, v4}, LB1/j;->d(ILR3/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v2

    move v4, v1

    :goto_4
    iget-object v5, p0, LL3/j;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget-object v5, p0, LL3/j;->m:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, LB1/j;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v4

    iget-object v1, p0, LL3/j;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4}, LB1/j;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v4, p0, LL3/j;->n:I

    move v1, v2

    :goto_5
    iget-object v4, p0, LL3/j;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_a

    iget-object v4, p0, LL3/j;->r:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    invoke-static {v5, v4}, LB1/j;->d(ILR3/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_6
    iget-object v4, p0, LL3/j;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    iget-object v4, p0, LL3/j;->s:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/16 v6, 0x9

    invoke-static {v6, v4}, LB1/j;->d(ILR3/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_7
    iget-object v4, p0, LL3/j;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    iget-object v4, p0, LL3/j;->t:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/16 v6, 0xa

    invoke-static {v6, v4}, LB1/j;->d(ILR3/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move v1, v2

    :goto_8
    iget-object v4, p0, LL3/j;->u:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    iget-object v4, p0, LL3/j;->u:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/16 v6, 0xb

    invoke-static {v6, v4}, LB1/j;->d(ILR3/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    move v1, v2

    :goto_9
    iget-object v4, p0, LL3/j;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    iget-object v4, p0, LL3/j;->v:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/16 v6, 0xd

    invoke-static {v6, v4}, LB1/j;->d(ILR3/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    move v1, v2

    move v4, v1

    :goto_a
    iget-object v6, p0, LL3/j;->w:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_f

    iget-object v6, p0, LL3/j;->w:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LB1/j;->c(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    add-int/2addr v0, v4

    iget-object v1, p0, LL3/j;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4}, LB1/j;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iput v4, p0, LL3/j;->x:I

    iget v1, p0, LL3/j;->e:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_11

    const/16 v1, 0x11

    iget v4, p0, LL3/j;->y:I

    invoke-static {v1, v4}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, LL3/j;->e:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_12

    const/16 v1, 0x12

    iget-object v4, p0, LL3/j;->z:LL3/Q;

    invoke-static {v1, v4}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, LL3/j;->e:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_13

    const/16 v1, 0x13

    iget v5, p0, LL3/j;->A:I

    invoke-static {v1, v5}, LB1/j;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    move v1, v2

    :goto_b
    iget-object v5, p0, LL3/j;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_14

    iget-object v5, p0, LL3/j;->o:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR3/b;

    const/16 v6, 0x14

    invoke-static {v6, v5}, LB1/j;->d(ILR3/b;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_14
    move v1, v2

    move v5, v1

    :goto_c
    iget-object v6, p0, LL3/j;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_15

    iget-object v6, p0, LL3/j;->p:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LB1/j;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    add-int/2addr v0, v5

    iget-object v1, p0, LL3/j;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5}, LB1/j;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iput v5, p0, LL3/j;->q:I

    move v1, v2

    move v5, v1

    :goto_d
    iget-object v6, p0, LL3/j;->B:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_17

    iget-object v6, p0, LL3/j;->B:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LB1/j;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    add-int/2addr v0, v5

    iget-object v1, p0, LL3/j;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5}, LB1/j;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iput v5, p0, LL3/j;->C:I

    move v1, v2

    :goto_e
    iget-object v5, p0, LL3/j;->D:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_19

    iget-object v5, p0, LL3/j;->D:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR3/b;

    const/16 v6, 0x17

    invoke-static {v6, v5}, LB1/j;->d(ILR3/b;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_19
    move v1, v2

    move v5, v1

    :goto_f
    iget-object v6, p0, LL3/j;->E:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1a

    iget-object v6, p0, LL3/j;->E:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LB1/j;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    add-int/2addr v0, v5

    iget-object v1, p0, LL3/j;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5}, LB1/j;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iput v5, p0, LL3/j;->F:I

    iget v1, p0, LL3/j;->e:I

    const/16 v5, 0x40

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1c

    const/16 v1, 0x1e

    iget-object v5, p0, LL3/j;->G:LL3/X;

    invoke-static {v1, v5}, LB1/j;->d(ILR3/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    move v1, v2

    :goto_10
    iget-object v5, p0, LL3/j;->H:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1d

    iget-object v5, p0, LL3/j;->H:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, LB1/j;->c(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1d
    add-int/2addr v0, v1

    iget-object v1, p0, LL3/j;->H:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    iget v0, p0, LL3/j;->e:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, LL3/j;->I:LL3/e0;

    invoke-static {v4, v0}, LB1/j;->d(ILR3/b;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1e
    invoke-virtual {p0}, LR3/n;->j()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, LL3/j;->d:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LL3/j;->K:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/h;->h()LL3/h;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LL3/h;->h()LL3/h;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/h;->i(LL3/j;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 7

    invoke-virtual {p0}, LL3/j;->c()I

    invoke-virtual {p0}, LR3/n;->n()LR3/m;

    move-result-object v0

    iget v1, p0, LL3/j;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, LL3/j;->f:I

    invoke-virtual {p1, v2, v1}, LB1/j;->n(II)V

    :cond_0
    iget-object v1, p0, LL3/j;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x12

    if-lez v1, :cond_1

    invoke-virtual {p1, v2}, LB1/j;->w(I)V

    iget v1, p0, LL3/j;->l:I

    invoke-virtual {p1, v1}, LB1/j;->w(I)V

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, p0, LL3/j;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, LL3/j;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LB1/j;->o(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, LL3/j;->e:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    iget v4, p0, LL3/j;->g:I

    invoke-virtual {p1, v3, v4}, LB1/j;->n(II)V

    :cond_3
    iget v3, p0, LL3/j;->e:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    iget v3, p0, LL3/j;->h:I

    invoke-virtual {p1, v4, v3}, LB1/j;->n(II)V

    :cond_4
    move v3, v1

    :goto_1
    iget-object v4, p0, LL3/j;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, LL3/j;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_2
    iget-object v4, p0, LL3/j;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, LL3/j;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p0, LL3/j;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, LB1/j;->w(I)V

    iget v3, p0, LL3/j;->n:I

    invoke-virtual {p1, v3}, LB1/j;->w(I)V

    :cond_7
    move v3, v1

    :goto_3
    iget-object v4, p0, LL3/j;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, LL3/j;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LB1/j;->o(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_4
    iget-object v4, p0, LL3/j;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v3, v4, :cond_9

    iget-object v4, p0, LL3/j;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    invoke-virtual {p1, v5, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_5
    iget-object v4, p0, LL3/j;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    iget-object v4, p0, LL3/j;->s:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/16 v6, 0x9

    invoke-virtual {p1, v6, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    move v3, v1

    :goto_6
    iget-object v4, p0, LL3/j;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, LL3/j;->t:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/16 v6, 0xa

    invoke-virtual {p1, v6, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    move v3, v1

    :goto_7
    iget-object v4, p0, LL3/j;->u:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, LL3/j;->u:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/16 v6, 0xb

    invoke-virtual {p1, v6, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    move v3, v1

    :goto_8
    iget-object v4, p0, LL3/j;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    iget-object v4, p0, LL3/j;->v:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/16 v6, 0xd

    invoke-virtual {p1, v6, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    iget-object v3, p0, LL3/j;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    const/16 v3, 0x82

    invoke-virtual {p1, v3}, LB1/j;->w(I)V

    iget v3, p0, LL3/j;->x:I

    invoke-virtual {p1, v3}, LB1/j;->w(I)V

    :cond_e
    move v3, v1

    :goto_9
    iget-object v4, p0, LL3/j;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    iget-object v4, p0, LL3/j;->w:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LB1/j;->o(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    iget v3, p0, LL3/j;->e:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_10

    const/16 v3, 0x11

    iget v4, p0, LL3/j;->y:I

    invoke-virtual {p1, v3, v4}, LB1/j;->n(II)V

    :cond_10
    iget v3, p0, LL3/j;->e:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_11

    iget-object v3, p0, LL3/j;->z:LL3/Q;

    invoke-virtual {p1, v2, v3}, LB1/j;->p(ILR3/b;)V

    :cond_11
    iget v2, p0, LL3/j;->e:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    const/16 v2, 0x13

    iget v4, p0, LL3/j;->A:I

    invoke-virtual {p1, v2, v4}, LB1/j;->n(II)V

    :cond_12
    move v2, v1

    :goto_a
    iget-object v4, p0, LL3/j;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    iget-object v4, p0, LL3/j;->o:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/16 v5, 0x14

    invoke-virtual {p1, v5, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_13
    iget-object v2, p0, LL3/j;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    const/16 v2, 0xaa

    invoke-virtual {p1, v2}, LB1/j;->w(I)V

    iget v2, p0, LL3/j;->q:I

    invoke-virtual {p1, v2}, LB1/j;->w(I)V

    :cond_14
    move v2, v1

    :goto_b
    iget-object v4, p0, LL3/j;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_15

    iget-object v4, p0, LL3/j;->p:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LB1/j;->o(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    iget-object v2, p0, LL3/j;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    const/16 v2, 0xb2

    invoke-virtual {p1, v2}, LB1/j;->w(I)V

    iget v2, p0, LL3/j;->C:I

    invoke-virtual {p1, v2}, LB1/j;->w(I)V

    :cond_16
    move v2, v1

    :goto_c
    iget-object v4, p0, LL3/j;->B:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_17

    iget-object v4, p0, LL3/j;->B:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LB1/j;->o(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    move v2, v1

    :goto_d
    iget-object v4, p0, LL3/j;->D:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_18

    iget-object v4, p0, LL3/j;->D:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR3/b;

    const/16 v5, 0x17

    invoke-virtual {p1, v5, v4}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_18
    iget-object v2, p0, LL3/j;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19

    const/16 v2, 0xc2

    invoke-virtual {p1, v2}, LB1/j;->w(I)V

    iget v2, p0, LL3/j;->F:I

    invoke-virtual {p1, v2}, LB1/j;->w(I)V

    :cond_19
    move v2, v1

    :goto_e
    iget-object v4, p0, LL3/j;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1a

    iget-object v4, p0, LL3/j;->E:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LB1/j;->o(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    iget v2, p0, LL3/j;->e:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1b

    const/16 v2, 0x1e

    iget-object v4, p0, LL3/j;->G:LL3/X;

    invoke-virtual {p1, v2, v4}, LB1/j;->p(ILR3/b;)V

    :cond_1b
    :goto_f
    iget-object v2, p0, LL3/j;->H:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, LL3/j;->H:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x1f

    invoke-virtual {p1, v4, v2}, LB1/j;->n(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1c
    iget v1, p0, LL3/j;->e:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, LL3/j;->I:LL3/e0;

    invoke-virtual {p1, v3, v1}, LB1/j;->p(ILR3/b;)V

    :cond_1d
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, LR3/m;->d(ILB1/j;)V

    iget-object p0, p0, LL3/j;->d:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, LL3/j;->f:I

    const/4 v0, 0x0

    iput v0, p0, LL3/j;->g:I

    iput v0, p0, LL3/j;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->o:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->p:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->r:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->s:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->t:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->u:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->v:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LL3/j;->w:Ljava/util/List;

    iput v0, p0, LL3/j;->y:I

    sget-object v1, LL3/Q;->v:LL3/Q;

    iput-object v1, p0, LL3/j;->z:LL3/Q;

    iput v0, p0, LL3/j;->A:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL3/j;->B:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL3/j;->D:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL3/j;->E:Ljava/util/List;

    sget-object v0, LL3/X;->i:LL3/X;

    iput-object v0, p0, LL3/j;->G:LL3/X;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL3/j;->H:Ljava/util/List;

    sget-object v0, LL3/e0;->g:LL3/e0;

    iput-object v0, p0, LL3/j;->I:LL3/e0;

    return-void
.end method
