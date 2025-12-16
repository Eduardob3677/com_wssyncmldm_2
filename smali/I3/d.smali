.class public final LI3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lh4/z;LE3/p;IIZZ)LI3/c;
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p5

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "<this>"

    invoke-static {v1, v7}, LB/f;->x(ILjava/lang/String;)V

    if-eq v1, v4, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v5

    :goto_0
    if-eqz v2, :cond_2

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    move v9, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v6

    :goto_2
    const/4 v10, 0x0

    if-nez v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v0, LI3/c;

    invoke-direct {v0, v10, v6, v5}, LI3/c;-><init>(Lh4/z;IZ)V

    return-object v0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v8

    invoke-interface {v8}, Lh4/J;->i()Lr3/g;

    move-result-object v8

    if-nez v8, :cond_4

    new-instance v0, LI3/c;

    invoke-direct {v0, v10, v6, v5}, LI3/c;-><init>(Lh4/z;IZ)V

    return-object v0

    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, LE3/p;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LI3/e;

    sget-object v12, LI3/s;->a:Ls3/i;

    invoke-static {v1, v7}, LB/f;->x(ILjava/lang/String;)V

    if-eq v1, v4, :cond_5

    instance-of v12, v8, Lr3/e;

    if-nez v12, :cond_6

    :cond_5
    move-object v8, v10

    goto :goto_3

    :cond_6
    iget-object v12, v11, LI3/e;->b:LI3/f;

    sget-object v13, LI3/f;->c:LI3/f;

    if-ne v12, v13, :cond_8

    if-ne v1, v6, :cond_8

    move-object v12, v8

    check-cast v12, Lr3/e;

    sget-object v13, Lq3/d;->a:Ljava/lang/String;

    invoke-static {v12}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v13

    sget-object v14, Lq3/d;->j:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v12}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LQ3/c;

    if-eqz v8, :cond_7

    invoke-static {v12}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object v12

    invoke-virtual {v12, v8}, Lo3/i;->i(LQ3/c;)Lr3/e;

    move-result-object v8

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a mutable collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    sget-object v12, LI3/f;->d:LI3/f;

    iget-object v13, v11, LI3/e;->b:LI3/f;

    if-ne v13, v12, :cond_5

    if-ne v1, v3, :cond_5

    check-cast v8, Lr3/e;

    sget-object v12, Lq3/d;->a:Ljava/lang/String;

    invoke-static {v8}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v12

    sget-object v13, Lq3/d;->k:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v8}, Lq3/e;->a(Lr3/e;)Lr3/e;

    move-result-object v8

    :goto_3
    invoke-static {v1, v7}, LB/f;->x(ILjava/lang/String;)V

    if-eq v1, v4, :cond_c

    iget-object v1, v11, LI3/e;->a:LI3/h;

    if-nez v1, :cond_9

    const/4 v1, -0x1

    goto :goto_4

    :cond_9
    sget-object v7, LI3/r;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    :goto_4
    if-eq v1, v6, :cond_b

    if-eq v1, v3, :cond_a

    goto :goto_5

    :cond_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_c
    :goto_5
    move-object v1, v10

    :goto_6
    if-eqz v8, :cond_d

    invoke-interface {v8}, Lr3/g;->H()Lh4/J;

    move-result-object v7

    if-nez v7, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v7

    :cond_e
    const-string v12, "enhancedClassifier?.typeConstructor ?: constructor"

    invoke-static {v12, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v12, p2, 0x1

    invoke-virtual/range {p0 .. p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v13

    invoke-interface {v7}, Lh4/J;->k()Ljava/util/List;

    move-result-object v14

    const-string v15, "typeConstructor.parameters"

    invoke-static {v15, v14}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v13}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v13

    invoke-static {v14}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr3/Q;

    check-cast v13, Lh4/N;

    if-nez v9, :cond_f

    new-instance v4, LB1/e;

    invoke-direct {v4, v5, v10}, LB1/e;-><init>(ILjava/lang/Object;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v13}, Lh4/N;->c()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v13}, Lh4/N;->b()Lh4/v;

    move-result-object v4

    invoke-virtual {v4}, Lh4/v;->M0()Lh4/Z;

    move-result-object v4

    invoke-static {v4, v0, v12, v2}, LI3/d;->b(Lh4/Z;LE3/p;IZ)LB1/e;

    move-result-object v4

    goto :goto_8

    :cond_10
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, LE3/p;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LI3/e;

    iget-object v4, v4, LI3/e;->a:LI3/h;

    sget-object v10, LI3/h;->c:LI3/h;

    if-ne v4, v10, :cond_11

    invoke-virtual {v13}, Lh4/N;->b()Lh4/v;

    move-result-object v4

    invoke-virtual {v4}, Lh4/v;->M0()Lh4/Z;

    move-result-object v4

    new-instance v10, LB1/e;

    invoke-static {v4}, Lh4/c;->k(Lh4/v;)Lh4/z;

    move-result-object v6

    invoke-virtual {v6, v5}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v6

    invoke-static {v4}, Lh4/c;->y(Lh4/v;)Lh4/z;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v4

    invoke-static {v6, v4}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object v4

    invoke-direct {v10, v5, v4}, LB1/e;-><init>(ILjava/lang/Object;)V

    move-object v4, v10

    goto :goto_8

    :cond_11
    move v5, v6

    new-instance v4, LB1/e;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LB1/e;-><init>(ILjava/lang/Object;)V

    :goto_8
    iget v5, v4, LB1/e;->c:I

    add-int/2addr v12, v5

    const-string v5, "arg.projectionKind"

    iget-object v4, v4, LB1/e;->d:Ljava/lang/Object;

    check-cast v4, Lh4/v;

    if-eqz v4, :cond_12

    invoke-virtual {v13}, Lh4/N;->a()I

    move-result v6

    invoke-static {v6, v5}, LB/f;->E(ILjava/lang/String;)V

    invoke-static {v4, v6, v14}, Lf1/a;->m(Lh4/v;ILr3/Q;)Lh4/O;

    move-result-object v6

    goto :goto_9

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v13}, Lh4/N;->c()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v13}, Lh4/N;->b()Lh4/v;

    move-result-object v4

    const-string v6, "arg.type"

    invoke-static {v6, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v13}, Lh4/N;->a()I

    move-result v6

    invoke-static {v6, v5}, LB/f;->E(ILjava/lang/String;)V

    invoke-static {v4, v6, v14}, Lf1/a;->m(Lh4/v;ILr3/Q;)Lh4/O;

    move-result-object v6

    goto :goto_9

    :cond_13
    if-eqz v8, :cond_14

    invoke-static {v14}, Lh4/X;->k(Lr3/Q;)Lh4/E;

    move-result-object v6

    goto :goto_9

    :cond_14
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_15
    sub-int v12, v12, p2

    if-nez v8, :cond_17

    if-nez v1, :cond_17

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_b

    :cond_16
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/N;

    if-nez v2, :cond_17

    goto :goto_a

    :cond_17
    const/4 v6, 0x0

    goto :goto_c

    :cond_18
    :goto_b
    new-instance v0, LI3/c;

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v6, v12, v1}, LI3/c;-><init>(Lh4/z;IZ)V

    return-object v0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lh4/v;->t()Ls3/h;

    move-result-object v0

    sget-object v2, LI3/s;->b:Ls3/i;

    if-eqz v8, :cond_19

    goto :goto_d

    :cond_19
    move-object v2, v6

    :goto_d
    sget-object v4, LI3/s;->a:Ls3/i;

    if-eqz v1, :cond_1a

    move-object v10, v4

    :goto_e
    const/4 v4, 0x3

    goto :goto_f

    :cond_1a
    move-object v10, v6

    goto :goto_e

    :goto_f
    new-array v4, v4, [Ls3/h;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v2, 0x2

    aput-object v10, v4, v2

    invoke-static {v4}, LR2/i;->m0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_21

    if-eq v4, v0, :cond_1b

    new-instance v4, Ls3/i;

    invoke-static {v2}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Ls3/i;-><init>(ILjava/lang/Object;)V

    goto :goto_10

    :cond_1b
    invoke-static {v2}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ls3/h;

    :goto_10
    invoke-static {v4}, Lh4/c;->w(Ls3/h;)Lh4/G;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v3}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-static {v4}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh4/N;

    check-cast v3, Lh4/N;

    if-nez v3, :cond_1c

    goto :goto_12

    :cond_1c
    move-object v4, v3

    :goto_12
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1d
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_13

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lh4/v;->K0()Z

    move-result v3

    :goto_13
    invoke-static {v2, v7, v9, v3}, Lh4/d;->r(Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object v2

    iget-boolean v3, v11, LI3/e;->c:Z

    if-eqz v3, :cond_1f

    new-instance v3, LI3/g;

    invoke-direct {v3, v2}, LI3/g;-><init>(Lh4/z;)V

    move-object v2, v3

    :cond_1f
    if-eqz v1, :cond_20

    iget-boolean v1, v11, LI3/e;->d:Z

    if-eqz v1, :cond_20

    move v5, v0

    :cond_20
    new-instance v0, LI3/c;

    invoke-direct {v0, v2, v12, v5}, LI3/c;-><init>(Lh4/z;IZ)V

    return-object v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least one Annotations object expected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lh4/Z;LE3/p;IZ)LB1/e;
    .locals 10

    invoke-static {p0}, Lh4/c;->i(Lh4/v;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, LB1/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v1}, LB1/e;-><init>(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    instance-of v0, p0, Lh4/q;

    if-eqz v0, :cond_b

    instance-of v0, p0, LF3/f;

    move-object v8, p0

    check-cast v8, Lh4/q;

    const/4 v5, 0x1

    iget-object v2, v8, Lh4/q;->d:Lh4/z;

    move-object v3, p1

    move v4, p2

    move v6, v0

    move v7, p3

    invoke-static/range {v2 .. v7}, LI3/d;->a(Lh4/z;LE3/p;IIZZ)LI3/c;

    move-result-object v9

    const/4 v5, 0x2

    iget-object v2, v8, Lh4/q;->e:Lh4/z;

    move-object v3, p1

    move v4, p2

    move v6, v0

    move v7, p3

    invoke-static/range {v2 .. v7}, LI3/d;->a(Lh4/z;LE3/p;IIZZ)LI3/c;

    move-result-object p1

    iget-object p2, p1, LI3/c;->c:Ljava/lang/Object;

    check-cast p2, Lh4/z;

    iget-object p3, v9, LI3/c;->c:Ljava/lang/Object;

    check-cast p3, Lh4/z;

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v1, v9, LI3/c;->a:Z

    if-nez v1, :cond_8

    iget-boolean p1, p1, LI3/c;->a:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, v8, Lh4/q;->e:Lh4/z;

    iget-object p1, v8, Lh4/q;->d:Lh4/z;

    if-eqz v0, :cond_5

    new-instance v1, LF3/f;

    if-nez p3, :cond_3

    move-object p3, p1

    :cond_3
    if-nez p2, :cond_4

    move-object p2, p0

    :cond_4
    invoke-direct {v1, p3, p2}, LF3/f;-><init>(Lh4/z;Lh4/z;)V

    goto :goto_2

    :cond_5
    if-nez p3, :cond_6

    move-object p3, p1

    :cond_6
    if-nez p2, :cond_7

    move-object p2, p0

    :cond_7
    invoke-static {p3, p2}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object v1

    goto :goto_2

    :cond_8
    :goto_0
    if-eqz p2, :cond_a

    if-nez p3, :cond_9

    move-object p3, p2

    :cond_9
    invoke-static {p3, p2}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p3

    goto :goto_1

    :cond_a
    invoke-static {p3}, Ld3/i;->b(Ljava/lang/Object;)V

    :goto_1
    invoke-static {p0, p3}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object v1

    :goto_2
    new-instance p0, LB1/e;

    iget p1, v9, LI3/c;->b:I

    invoke-direct {p0, p1, v1}, LB1/e;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    :cond_b
    instance-of v0, p0, Lh4/z;

    if-eqz v0, :cond_d

    move-object v1, p0

    check-cast v1, Lh4/z;

    const/4 v5, 0x0

    const/4 v4, 0x3

    move-object v2, p1

    move v3, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, LI3/d;->a(Lh4/z;LE3/p;IIZZ)LI3/c;

    move-result-object p1

    new-instance p2, LB1/e;

    iget-boolean p3, p1, LI3/c;->a:Z

    iget-object v0, p1, LI3/c;->c:Ljava/lang/Object;

    check-cast v0, Lh4/z;

    if-eqz p3, :cond_c

    invoke-static {p0, v0}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object v0

    :cond_c
    iget p0, p1, LI3/c;->b:I

    invoke-direct {p2, p0, v0}, LB1/e;-><init>(ILjava/lang/Object;)V

    move-object p0, p2

    :goto_3
    return-object p0

    :cond_d
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
