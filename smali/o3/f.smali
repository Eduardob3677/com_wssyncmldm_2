.class public abstract Lo3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/firebase/messaging/p;


# direct methods
.method public static a(Ljava/lang/Class;)LV3/f;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "currentClass.componentType"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, LV3/f;

    sget-object v1, Lo3/m;->d:LQ3/e;

    invoke-virtual {v1}, LQ3/e;->g()LQ3/c;

    move-result-object v1

    invoke-static {v1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v1

    invoke-direct {p0, v1, v0}, LV3/f;-><init>(LQ3/b;I)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LY3/c;->b(Ljava/lang/String;)LY3/c;

    move-result-object p0

    invoke-virtual {p0}, LY3/c;->d()Lo3/k;

    move-result-object p0

    const-string v1, "get(currentClass.name).primitiveType"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v0, :cond_2

    new-instance v1, LV3/f;

    iget-object p0, p0, Lo3/k;->f:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ3/c;

    invoke-static {p0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, p0, v0}, LV3/f;-><init>(LQ3/b;I)V

    return-object v1

    :cond_2
    new-instance v1, LV3/f;

    iget-object p0, p0, Lo3/k;->e:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ3/c;

    invoke-static {p0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object p0

    invoke-direct {v1, p0, v0}, LV3/f;-><init>(LQ3/b;I)V

    return-object v1

    :cond_3
    invoke-static {p0}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object p0

    sget-object v1, Lq3/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, LQ3/b;->b()LQ3/c;

    move-result-object v1

    const-string v2, "javaClassId.asSingleFqName()"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lq3/d;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, LQ3/c;->i()LQ3/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ3/b;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    new-instance v1, LV3/f;

    invoke-direct {v1, p0, v0}, LV3/f;-><init>(LQ3/b;I)V

    return-object v1
.end method

.method public static final b(Lh4/v;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->t()Ls3/h;

    move-result-object p0

    sget-object v0, Lo3/m;->q:LQ3/c;

    invoke-interface {p0, v0}, Ls3/h;->f(LQ3/c;)Ls3/b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ls3/b;->b()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lo3/n;->d:LQ3/f;

    invoke-static {p0, v0}, LR2/z;->x1(Ljava/util/Map;Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV3/g;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.constants.IntValue"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, LV3/k;

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lb2/c;
    .locals 2

    new-instance v0, Ls2/a;

    invoke-direct {v0, p0, p1}, Ls2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Ls2/a;

    invoke-static {p0}, Lb2/c;->a(Ljava/lang/Class;)Lb2/b;

    move-result-object p0

    const/4 p1, 0x1

    iput p1, p0, Lb2/b;->b:I

    new-instance p1, Lb2/a;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lb2/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lb2/b;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lb2/b;->b()Lb2/c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lp3/c;Z)Lp3/g;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "functionClass"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lp3/g;

    const/4 v2, 0x0

    const/4 v14, 0x1

    move/from16 v3, p1

    invoke-direct {v1, v0, v2, v14, v3}, Lp3/g;-><init>(Lr3/j;Lp3/g;IZ)V

    invoke-virtual/range {p0 .. p0}, Lu3/b;->H0()Lu3/w;

    move-result-object v15

    sget-object v16, LR2/u;->c:LR2/u;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lp3/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lr3/Q;

    invoke-interface {v5}, Lr3/Q;->A()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, LR2/m;->k1(Ljava/util/List;)LR2/k;

    move-result-object v2

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, LR2/k;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    move-object/from16 v2, v17

    check-cast v2, LR2/y;

    iget-object v3, v2, LR2/y;->d:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, LR2/y;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR2/x;

    iget v5, v2, LR2/x;->a:I

    iget-object v2, v2, LR2/x;->b:Ljava/lang/Object;

    check-cast v2, Lr3/Q;

    invoke-interface {v2}, Lr3/j;->getName()LQ3/f;

    move-result-object v3

    invoke-virtual {v3}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "typeParameter.name.asString()"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "T"

    invoke-static {v3, v4}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "instance"

    goto :goto_2

    :cond_1
    const-string v4, "E"

    invoke-static {v3, v4}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "receiver"

    goto :goto_2

    :cond_2
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    new-instance v12, Lu3/V;

    sget-object v6, Ls3/g;->a:Ls3/f;

    invoke-static {v3}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v7

    invoke-interface {v2}, Lr3/g;->q()Lh4/z;

    move-result-object v8

    const-string v2, "typeParameter.defaultType"

    invoke-static {v2, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v18, Lr3/N;->a:Lr3/M;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    move-object v2, v12

    move-object v3, v1

    move-object v14, v12

    move-object/from16 v12, v19

    move-object/from16 p1, v15

    move-object v15, v13

    move-object/from16 v13, v18

    invoke-direct/range {v2 .. v13}, Lu3/V;-><init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;)V

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v13, v15

    const/4 v14, 0x1

    move-object/from16 v15, p1

    goto :goto_1

    :cond_3
    move-object/from16 p1, v15

    move-object v15, v13

    invoke-static {v0}, LR2/m;->U0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/Q;

    invoke-interface {v0}, Lr3/g;->q()Lh4/z;

    move-result-object v8

    sget-object v10, Lr3/n;->e:LA3/p;

    const/4 v3, 0x0

    const/4 v9, 0x4

    move-object v2, v1

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    move-object v7, v15

    invoke-virtual/range {v2 .. v10}, Lu3/N;->d1(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;)Lu3/N;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lu3/v;->z:Z

    return-object v1
.end method

.method public static final e(Lo3/i;Ls3/h;Lh4/v;Ljava/util/List;Ljava/util/ArrayList;Lh4/v;Z)Lh4/z;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    if-eqz p2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    add-int/2addr v4, v3

    add-int/2addr v4, v0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p3}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh4/v;

    invoke-static {v5}, Lf1/a;->b(Lh4/v;)Lh4/O;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-static {p2}, Lf1/a;->b(Lh4/v;)Lh4/O;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    invoke-static {v2, v4}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    sget-object v7, Ls3/g;->a:Ls3/f;

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_3

    check-cast v6, Lh4/v;

    invoke-static {v6}, Lf1/a;->b(Lh4/v;)Lh4/O;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_3

    :cond_3
    invoke-static {}, LR2/n;->B0()V

    throw v3

    :cond_4
    invoke-static {p5}, Lf1/a;->b(Lh4/v;)Lh4/O;

    move-result-object p5

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    add-int/2addr p5, p4

    if-nez p2, :cond_5

    move p4, v1

    goto :goto_4

    :cond_5
    move p4, v0

    :goto_4
    add-int/2addr p5, p4

    if-eqz p6, :cond_6

    invoke-virtual {p0, p5}, Lo3/i;->v(I)Lr3/e;

    move-result-object p4

    goto :goto_5

    :cond_6
    sget-object p4, Lo3/n;->a:LQ3/f;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p6, "Function"

    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lo3/i;->j(Ljava/lang/String;)Lr3/e;

    move-result-object p4

    :goto_5
    const-string p5, "if (isSuspendFunction) b\u2026tFunction(parameterCount)"

    invoke-static {p5, p4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_9

    sget-object p2, Lo3/m;->p:LQ3/c;

    invoke-interface {p1, p2}, Ls3/h;->b(LQ3/c;)Z

    move-result p5

    if-eqz p5, :cond_7

    goto :goto_6

    :cond_7
    new-instance p5, Ls3/j;

    sget-object p6, LR2/v;->c:LR2/v;

    invoke-direct {p5, p0, p2, p6}, Ls3/j;-><init>(Lo3/i;LQ3/c;Ljava/util/Map;)V

    invoke-static {p1, p5}, LR2/m;->X0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    move-object p1, v7

    goto :goto_6

    :cond_8
    new-instance p2, Ls3/i;

    invoke-direct {p2, v1, p1}, Ls3/i;-><init>(ILjava/lang/Object;)V

    move-object p1, p2

    :cond_9
    :goto_6
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_c

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    sget-object p3, Lo3/m;->q:LQ3/c;

    invoke-interface {p1, p3}, Ls3/h;->b(LQ3/c;)Z

    move-result p5

    if-eqz p5, :cond_a

    goto :goto_8

    :cond_a
    new-instance p5, Ls3/j;

    sget-object p6, Lo3/n;->d:LQ3/f;

    new-instance v0, LV3/k;

    invoke-direct {v0, p2}, LV3/k;-><init>(I)V

    new-instance p2, LQ2/e;

    invoke-direct {p2, p6, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, LR2/z;->z1(LQ2/e;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p5, p0, p3, p2}, Ls3/j;-><init>(Lo3/i;LQ3/c;Ljava/util/Map;)V

    invoke-static {p1, p5}, LR2/m;->X0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    new-instance v7, Ls3/i;

    invoke-direct {v7, v1, p0}, Ls3/i;-><init>(ILjava/lang/Object;)V

    :goto_7
    move-object p1, v7

    :cond_c
    :goto_8
    invoke-static {p1}, Lh4/c;->w(Ls3/h;)Lh4/G;

    move-result-object p0

    invoke-static {p0, p4, v2}, Lh4/d;->q(Lh4/G;Lr3/e;Ljava/util/List;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lh4/v;)LQ3/f;
    .locals 2

    invoke-virtual {p0}, Lh4/v;->t()Ls3/h;

    move-result-object p0

    sget-object v0, Lo3/m;->r:LQ3/c;

    invoke-interface {p0, v0}, Ls3/h;->f(LQ3/c;)Ls3/b;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ls3/b;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, LR2/m;->c1(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, LV3/v;

    if-eqz v1, :cond_1

    check-cast p0, LV3/v;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-static {p0}, LQ3/f;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    invoke-static {p0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static g(Ljava/lang/String;LE2/a;)Lb2/c;
    .locals 5

    const-class v0, Ls2/a;

    invoke-static {v0}, Lb2/c;->a(Ljava/lang/Class;)Lb2/b;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lb2/b;->b:I

    new-instance v2, Lb2/l;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    invoke-direct {v2, v1, v3, v4}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, Lb2/b;->a(Lb2/l;)V

    new-instance v1, LQ0/h;

    invoke-direct {v1, p0, p1}, LQ0/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lb2/b;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Lb2/b;->b()Lb2/c;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lh4/v;)Ljava/util/List;
    .locals 3

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lo3/f;->n(Lh4/v;)Z

    invoke-static {p0}, Lo3/f;->b(Lh4/v;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/N;

    invoke-virtual {v1}, Lh4/N;->b()Lh4/v;

    move-result-object v1

    const-string v2, "it.type"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static final i(Lr3/g;)Lp3/e;
    .locals 4

    instance-of v0, p0, Lr3/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lo3/i;->H(Lr3/j;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, LX3/f;->h(Lr3/j;)LQ3/e;

    move-result-object p0

    invoke-virtual {p0}, LQ3/e;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LQ3/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lp3/e;->e:LZ0/h;

    invoke-virtual {p0}, LQ3/e;->f()LQ3/f;

    move-result-object v2

    invoke-virtual {v2}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shortName().asString()"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LQ3/e;->g()LQ3/c;

    move-result-object p0

    invoke-virtual {p0}, LQ3/c;->e()LQ3/c;

    move-result-object p0

    const-string v3, "toSafe().parent()"

    invoke-static {v3, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, LZ0/h;->g(Ljava/lang/String;LQ3/c;)Lp3/d;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v1, p0, Lp3/d;->a:Lp3/e;

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static final j(Lh4/v;)Lh4/v;
    .locals 2

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lo3/f;->n(Lh4/v;)Z

    invoke-virtual {p0}, Lh4/v;->t()Ls3/h;

    move-result-object v0

    sget-object v1, Lo3/m;->p:LQ3/c;

    invoke-interface {v0, v1}, Ls3/h;->f(LQ3/c;)Ls3/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lo3/f;->b(Lh4/v;)I

    move-result v0

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/N;

    invoke-virtual {p0}, Lh4/N;->b()Lh4/v;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final k(Lr3/j;)Lr3/g;
    .locals 2

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of p0, p0, Lr3/C;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    instance-of p0, p0, Lr3/C;

    if-nez p0, :cond_1

    invoke-static {v0}, Lo3/f;->k(Lr3/j;)Lr3/g;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of p0, v0, Lr3/g;

    if-eqz p0, :cond_2

    move-object v1, v0

    check-cast v1, Lr3/g;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static final l(Lh4/v;)Ljava/util/List;
    .locals 4

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lo3/f;->n(Lh4/v;)Z

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lo3/f;->b(Lh4/v;)I

    move-result v1

    invoke-static {p0}, Lo3/f;->n(Lh4/v;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lh4/v;->t()Ls3/h;

    move-result-object p0

    sget-object v2, Lo3/m;->p:LQ3/c;

    invoke-interface {p0, v2}, Ls3/h;->f(LQ3/c;)Ls3/b;

    move-result-object p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "isAccessoryKeyboardState"

    invoke-static {v2, v3, v1}, Li3/x;->P(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static final n(Lh4/v;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lo3/f;->i(Lr3/g;)Lp3/e;

    move-result-object p0

    sget-object v1, Lp3/e;->f:Lp3/e;

    if-eq p0, v1, :cond_0

    sget-object v1, Lp3/e;->g:Lp3/e;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final o(Lh4/v;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lo3/f;->i(Lr3/g;)Lp3/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lp3/e;->g:Lp3/e;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static p(Ljava/lang/Class;LJ3/o;)V
    .locals 6

    const-string v0, "klass"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const-string v0, "klass.declaredAnnotations"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    const-string v3, "annotation"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v3

    invoke-static {v3}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v4

    new-instance v5, Lw3/a;

    invoke-direct {v5, v2}, Lw3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-interface {p1, v4, v5}, LJ3/o;->e(LQ3/b;Lw3/a;)LJ3/m;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4, v2, v3}, Lo3/f;->q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, LJ3/o;->d()V

    return-void
.end method

.method public static q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    const-string v0, "annotationType.declaredMethods"

    invoke-static {v0, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_d

    aget-object v3, p2, v2

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ld3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Class;

    invoke-static {v5, v6}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Lo3/f;->a(Ljava/lang/Class;)LV3/f;

    move-result-object v4

    invoke-interface {p0, v3, v4}, LJ3/m;->i(LQ3/f;LV3/f;)V

    goto/16 :goto_7

    :cond_0
    sget-object v7, Lw3/c;->a:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p0, v3, v4}, LJ3/m;->g(LQ3/f;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    sget-object v7, Lx3/d;->a:Ljava/util/List;

    const-class v7, Ljava/lang/Enum;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    :goto_1
    const-string v6, "if (clazz.isEnum) clazz else clazz.enclosingClass"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v5

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v4

    invoke-interface {p0, v3, v5, v4}, LJ3/m;->h(LQ3/f;LQ3/b;LQ3/f;)V

    goto/16 :goto_7

    :cond_3
    const-class v7, Ljava/lang/annotation/Annotation;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    const-string v6, "clazz.interfaces"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, LR2/i;->u0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const-string v6, "annotationClass"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v6

    invoke-interface {p0, v6, v3}, LJ3/m;->j(LQ3/b;LQ3/f;)LJ3/m;

    move-result-object v3

    if-nez v3, :cond_4

    goto/16 :goto_7

    :cond_4
    check-cast v4, Ljava/lang/annotation/Annotation;

    invoke-static {v3, v4, v5}, Lo3/f;->q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {p0, v3}, LJ3/m;->m(LQ3/f;)LJ3/n;

    move-result-object v3

    if-nez v3, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v5}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v5

    check-cast v4, [Ljava/lang/Object;

    array-length v6, v4

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_b

    aget-object v8, v4, v7

    const-string v9, "null cannot be cast to non-null type kotlin.Enum<*>"

    invoke-static {v9, v8}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/Enum;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v8

    invoke-interface {v3, v5, v8}, LJ3/n;->J(LQ3/b;LQ3/f;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v5, v6}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    const-string v8, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {v8, v7}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/Class;

    invoke-static {v7}, Lo3/f;->a(Ljava/lang/Class;)LV3/f;

    move-result-object v7

    invoke-interface {v3, v7}, LJ3/n;->c0(LV3/f;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_a

    check-cast v4, [Ljava/lang/Object;

    array-length v6, v4

    move v7, v1

    :goto_4
    if-ge v7, v6, :cond_b

    aget-object v8, v4, v7

    invoke-static {v5}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v9

    invoke-interface {v3, v9}, LJ3/n;->p0(LQ3/b;)LJ3/m;

    move-result-object v9

    if-nez v9, :cond_9

    goto :goto_5

    :cond_9
    const-string v10, "null cannot be cast to non-null type kotlin.Annotation"

    invoke-static {v10, v8}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/annotation/Annotation;

    invoke-static {v9, v8, v5}, Lo3/f;->q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move v6, v1

    :goto_6
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    invoke-interface {v3, v7}, LJ3/n;->u0(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    invoke-interface {v3}, LJ3/n;->d()V

    goto :goto_7

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported annotation argument value ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-interface {p0}, LJ3/m;->d()V

    return-void
.end method

.method public static final r(Lr3/x;LQ3/c;)Lr3/e;
    .locals 6

    sget-object v0, Lz3/b;->c:Lz3/b;

    const-string v1, "<this>"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "fqName"

    invoke-static {v1, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, LQ3/c;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, LQ3/c;->e()LQ3/c;

    move-result-object v1

    const-string v3, "fqName.parent()"

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lr3/x;->a0(LQ3/c;)Lr3/H;

    move-result-object v1

    check-cast v1, Lu3/y;

    iget-object v1, v1, Lu3/y;->i:La4/k;

    invoke-virtual {p1}, LQ3/c;->f()LQ3/f;

    move-result-object v4

    const-string v5, "fqName.shortName()"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v0}, La4/k;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object v1

    instance-of v4, v1, Lr3/e;

    if-eqz v4, :cond_1

    check-cast v1, Lr3/e;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, LQ3/c;->e()LQ3/c;

    move-result-object v1

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lo3/f;->r(Lr3/x;LQ3/c;)Lr3/e;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lr3/e;->R()La4/o;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, LQ3/c;->f()LQ3/f;

    move-result-object p1

    invoke-static {v5, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0}, La4/q;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    instance-of p1, p0, Lr3/e;

    if-eqz p1, :cond_4

    move-object v2, p0

    check-cast v2, Lr3/e;

    :cond_4
    return-object v2
.end method

.method public static s(I)I
    .locals 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/HapticFeedbackConstants;

    const-string v2, "hidden_semGetVibrationIndex"

    invoke-static {v1, v2, v0}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
