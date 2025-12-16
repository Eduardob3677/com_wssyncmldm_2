.class public LC3/g;
.super Lu3/K;
.source "SourceFile"

# interfaces
.implements LC3/a;


# instance fields
.field public final D:Z

.field public final E:LQ2/e;


# direct methods
.method public constructor <init>(Lr3/j;Ls3/h;ILA3/p;ZLQ3/f;Lr3/N;Lr3/K;IZLQ2/e;)V
    .locals 17

    move-object/from16 v15, p0

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p6, :cond_2

    if-eqz p7, :cond_1

    if-eqz p9, :cond_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p9

    move-object/from16 v9, p7

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lu3/K;-><init>(Lr3/j;Lr3/K;Ls3/h;ILA3/p;ZLQ3/f;ILr3/N;ZZZZZZ)V

    move/from16 v1, p10

    iput-boolean v1, v0, LC3/g;->D:Z

    move-object/from16 v1, p11

    iput-object v1, v0, LC3/g;->E:LQ2/e;

    return-void

    :cond_0
    const/4 v1, 0x6

    invoke-static {v1}, LC3/g;->I0(I)V

    throw v0

    :cond_1
    const/4 v1, 0x5

    invoke-static {v1}, LC3/g;->I0(I)V

    throw v0

    :cond_2
    const/4 v1, 0x4

    invoke-static {v1}, LC3/g;->I0(I)V

    throw v0

    :cond_3
    const/4 v1, 0x3

    invoke-static {v1}, LC3/g;->I0(I)V

    throw v0

    :cond_4
    const/4 v1, 0x2

    invoke-static {v1}, LC3/g;->I0(I)V

    throw v0

    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, LC3/g;->I0(I)V

    throw v0

    :cond_6
    const/4 v1, 0x0

    invoke-static {v1}, LC3/g;->I0(I)V

    throw v0
.end method

.method public static synthetic I0(I)V
    .locals 7

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v6, "containingDeclaration"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_1
    const-string v6, "inType"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_2
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "enhancedReturnType"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "enhancedValueParameterTypes"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_5
    const-string v6, "newName"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_6
    const-string v6, "newVisibility"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_7
    const-string v6, "newModality"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_8
    const-string v6, "newOwner"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_9
    const-string v6, "kind"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_a
    const-string v6, "source"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_b
    const-string v6, "name"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_c
    const-string v6, "visibility"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_d
    const-string v6, "modality"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_e
    const-string v6, "annotations"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "enhance"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_2

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v4, "<init>"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_f
    const-string v4, "setInType"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_10
    aput-object v5, v3, v2

    goto :goto_4

    :pswitch_11
    const-string v4, "createSubstitutedCopy"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_12
    const-string v4, "create"

    aput-object v4, v3, v2

    :goto_4
    :pswitch_13
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method public static Z0(Lr3/j;LD3/c;LA3/p;ZLQ3/f;Lw3/f;Z)LC3/g;
    .locals 13

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, LC3/g;

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v11, p6

    invoke-direct/range {v1 .. v12}, LC3/g;-><init>(Lr3/j;Ls3/h;ILA3/p;ZLQ3/f;Lr3/N;Lr3/K;IZLQ2/e;)V

    return-object v0

    :cond_0
    const/16 v1, 0xb

    invoke-static {v1}, LC3/g;->I0(I)V

    throw v0

    :cond_1
    const/4 v1, 0x7

    invoke-static {v1}, LC3/g;->I0(I)V

    throw v0
.end method


# virtual methods
.method public final E(Lr3/a;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LC3/g;->E:LQ2/e;

    if-eqz p0, :cond_0

    iget-object v0, p0, LQ2/e;->c:Ljava/lang/Object;

    check-cast v0, Lr3/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LQ2/e;->d:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final G0(Lh4/v;Ljava/util/ArrayList;Lh4/v;LQ2/e;)LC3/a;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lu3/K;->a()Lr3/K;

    move-result-object v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lu3/K;->a()Lr3/K;

    move-result-object v2

    :goto_0
    new-instance v15, LC3/g;

    invoke-virtual/range {p0 .. p0}, Lu3/p;->l()Lr3/j;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, LK3/c;->t()Ls3/h;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lu3/K;->i()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lu3/K;->c()LA3/p;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lu3/o;->getName()LQ3/f;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lu3/p;->m()Lr3/N;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lu3/K;->k0()I

    move-result v13

    iget-boolean v14, v0, LC3/g;->D:Z

    iget-boolean v9, v0, Lu3/K;->h:Z

    move-object v4, v15

    move-object v12, v2

    move-object/from16 p2, v15

    move-object/from16 v15, p4

    invoke-direct/range {v4 .. v15}, LC3/g;-><init>(Lr3/j;Ls3/h;ILA3/p;ZLQ3/f;Lr3/N;Lr3/K;IZLQ2/e;)V

    iget-object v15, v0, Lu3/K;->z:Lu3/L;

    if-eqz v15, :cond_2

    new-instance v14, Lu3/L;

    invoke-virtual {v15}, LK3/c;->t()Ls3/h;

    move-result-object v6

    invoke-virtual {v15}, Lu3/I;->i()I

    move-result v7

    invoke-virtual {v15}, Lu3/I;->c()LA3/p;

    move-result-object v8

    iget-boolean v9, v15, Lu3/I;->g:Z

    invoke-virtual/range {p0 .. p0}, Lu3/K;->k0()I

    move-result v12

    if-nez v2, :cond_1

    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lr3/K;->r()Lu3/L;

    move-result-object v4

    move-object v13, v4

    :goto_1
    invoke-virtual {v15}, Lu3/p;->m()Lr3/N;

    move-result-object v16

    iget-boolean v10, v15, Lu3/I;->h:Z

    iget-boolean v11, v15, Lu3/I;->k:Z

    move-object v4, v14

    move-object/from16 v5, p2

    move-object v3, v14

    move-object/from16 v14, v16

    invoke-direct/range {v4 .. v14}, Lu3/L;-><init>(Lr3/K;Ls3/h;ILA3/p;ZZZILu3/L;Lr3/N;)V

    iget-object v4, v15, Lu3/I;->n:Lr3/s;

    iput-object v4, v3, Lu3/I;->n:Lr3/s;

    move-object/from16 v15, p3

    invoke-virtual {v3, v15}, Lu3/L;->T0(Lh4/v;)V

    goto :goto_2

    :cond_2
    move-object/from16 v15, p3

    const/4 v3, 0x0

    :goto_2
    iget-object v14, v0, Lu3/K;->A:Lu3/M;

    if-eqz v14, :cond_5

    new-instance v13, Lu3/M;

    move-object v4, v14

    check-cast v4, LK3/c;

    invoke-virtual {v4}, LK3/c;->t()Ls3/h;

    move-result-object v6

    move-object v4, v14

    check-cast v4, Lu3/I;

    invoke-virtual {v4}, Lu3/I;->i()I

    move-result v7

    invoke-virtual {v4}, Lu3/I;->c()LA3/p;

    move-result-object v8

    iget-boolean v9, v4, Lu3/I;->g:Z

    invoke-virtual/range {p0 .. p0}, Lu3/K;->k0()I

    move-result v12

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Lr3/K;->f()Lu3/M;

    move-result-object v2

    :goto_3
    move-object v5, v14

    check-cast v5, Lu3/p;

    invoke-virtual {v5}, Lu3/p;->m()Lr3/N;

    move-result-object v16

    iget-boolean v10, v4, Lu3/I;->h:Z

    iget-boolean v11, v4, Lu3/I;->k:Z

    move-object v4, v13

    move-object/from16 v5, p2

    move-object v15, v13

    move-object v13, v2

    move-object v2, v14

    move-object/from16 v14, v16

    invoke-direct/range {v4 .. v14}, Lu3/M;-><init>(Lr3/K;Ls3/h;ILA3/p;ZZZILu3/M;Lr3/N;)V

    iget-object v4, v15, Lu3/I;->n:Lr3/s;

    iput-object v4, v15, Lu3/I;->n:Lr3/s;

    invoke-virtual {v2}, Lu3/M;->w0()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu3/V;

    if-eqz v2, :cond_4

    iput-object v2, v15, Lu3/M;->o:Lu3/V;

    const/4 v13, 0x0

    goto :goto_4

    :cond_4
    const/4 v0, 0x6

    invoke-static {v0}, Lu3/M;->I0(I)V

    const/4 v13, 0x0

    throw v13

    :cond_5
    const/4 v13, 0x0

    move-object v15, v13

    :goto_4
    iget-object v2, v0, Lu3/K;->B:Lu3/t;

    iget-object v4, v0, Lu3/K;->C:Lu3/t;

    move-object/from16 v10, p2

    invoke-virtual {v10, v3, v15, v2, v4}, Lu3/K;->V0(Lu3/L;Lu3/M;Lu3/t;Lu3/t;)V

    iget-object v2, v0, Lu3/K;->j:Lc3/a;

    if-eqz v2, :cond_6

    iget-object v3, v0, Lu3/K;->i:Lg4/h;

    invoke-virtual {v10, v3, v2}, Lu3/K;->W0(Lg4/h;Lc3/a;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lu3/K;->p()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v2}, Lu3/K;->M(Ljava/util/Collection;)V

    if-nez v1, :cond_7

    move-object v8, v13

    goto :goto_5

    :cond_7
    sget-object v2, Ls3/g;->a:Ls3/f;

    invoke-static {v0, v1, v2}, LZ0/j;->E(Lr3/b;Lh4/v;Ls3/h;)Lu3/w;

    move-result-object v3

    move-object v8, v3

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lu3/K;->u()Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lu3/K;->w:Lu3/w;

    sget-object v9, LR2/u;->c:LR2/u;

    move-object v4, v10

    move-object/from16 v5, p3

    invoke-virtual/range {v4 .. v9}, Lu3/K;->Y0(Lh4/v;Ljava/util/List;Lu3/w;Lu3/w;Ljava/util/List;)V

    return-object v10
.end method

.method public final P()Z
    .locals 2

    invoke-virtual {p0}, Lu3/W;->e()Lh4/v;

    move-result-object v0

    iget-boolean p0, p0, LC3/g;->D:Z

    if-eqz p0, :cond_4

    const-string p0, "type"

    invoke-static {p0, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lo3/i;->F(Lh4/v;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Lo3/r;->a(Lh4/v;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {v0}, Lh4/X;->f(Lh4/v;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    sget-object p0, Lo3/m;->f:LQ3/e;

    invoke-static {v0, p0}, Lo3/i;->D(Lh4/v;LQ3/e;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    sget-object p0, LI3/s;->a:Ls3/i;

    sget-object p0, LA3/z;->p:LQ3/c;

    const-string v1, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Li3/x;->f0(Lk4/c;LQ3/c;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lo3/m;->f:LQ3/e;

    invoke-static {v0, p0}, Lo3/i;->D(Lh4/v;LQ3/e;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final T0(Lr3/j;ILA3/p;Lr3/K;ILQ3/f;)Lu3/K;
    .locals 13

    move-object v0, p0

    sget-object v7, Lr3/N;->a:Lr3/M;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    new-instance v12, LC3/g;

    invoke-virtual {p0}, LK3/c;->t()Ls3/h;

    move-result-object v2

    iget-object v11, v0, LC3/g;->E:LQ2/e;

    iget-boolean v5, v0, Lu3/K;->h:Z

    iget-boolean v10, v0, LC3/g;->D:Z

    move-object v0, v12

    move-object v1, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p6

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v11}, LC3/g;-><init>(Lr3/j;Ls3/h;ILA3/p;ZLQ3/f;Lr3/N;Lr3/K;IZLQ2/e;)V

    return-object v12

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, LC3/g;->I0(I)V

    throw v1

    :cond_1
    const/16 v0, 0x10

    invoke-static {v0}, LC3/g;->I0(I)V

    throw v1

    :cond_2
    const/16 v0, 0xf

    invoke-static {v0}, LC3/g;->I0(I)V

    throw v1

    :cond_3
    const/16 v0, 0xe

    invoke-static {v0}, LC3/g;->I0(I)V

    throw v1

    :cond_4
    const/16 v0, 0xd

    invoke-static {v0}, LC3/g;->I0(I)V

    throw v1
.end method

.method public final X0(Lh4/v;)V
    .locals 0

    return-void
.end method

.method public final o0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
