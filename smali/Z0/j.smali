.class public abstract LZ0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/b0;
.implements Lb2/d;


# static fields
.field public static a:Landroid/content/Context;


# direct methods
.method public static A(Lr3/K;Ls3/h;)Lu3/M;
    .locals 6

    sget-object v2, Ls3/g;->a:Ls3/f;

    invoke-interface {p0}, Lr3/k;->m()Lr3/N;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Lr3/w;->c()LA3/p;

    move-result-object v4

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, LZ0/j;->G(Lr3/K;Ls3/h;Ls3/h;ZLA3/p;Lr3/N;)Lu3/M;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, LZ0/j;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static B(Lr3/e;)Lu3/K;
    .locals 24

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static/range {p0 .. p0}, LT3/e;->d(Lr3/j;)Lr3/x;

    move-result-object v1

    sget-object v2, LQ3/i;->t:LQ3/b;

    invoke-static {v1, v2}, Lo4/a;->e(Lr3/x;LQ3/b;)Lr3/e;

    move-result-object v8

    if-nez v8, :cond_0

    return-object v0

    :cond_0
    sget-object v11, Ls3/g;->a:Ls3/f;

    sget-object v13, Lr3/n;->e:LA3/p;

    sget-object v5, Lo3/n;->b:LQ3/f;

    invoke-interface/range {p0 .. p0}, Lr3/k;->m()Lr3/N;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/16 v17, 0x4

    move-object/from16 v1, p0

    move v2, v12

    move-object v3, v13

    move/from16 v6, v17

    invoke-static/range {v1 .. v7}, Lu3/K;->S0(Lr3/j;ILA3/p;ZLQ3/f;ILr3/N;)Lu3/K;

    move-result-object v1

    new-instance v2, Lu3/L;

    invoke-interface/range {p0 .. p0}, Lr3/k;->m()Lr3/N;

    move-result-object v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v9, v2

    move-object v10, v1

    invoke-direct/range {v9 .. v19}, Lu3/L;-><init>(Lr3/K;Ls3/h;ILA3/p;ZZZILu3/L;Lr3/N;)V

    invoke-virtual {v1, v2, v0, v0, v0}, Lu3/K;->V0(Lu3/L;Lu3/M;Lu3/t;Lu3/t;)V

    sget-object v0, Lh4/G;->d:Le/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lh4/G;->e:Lh4/G;

    invoke-interface {v8}, Lr3/g;->H()Lh4/J;

    move-result-object v3

    new-instance v4, Lh4/O;

    invoke-interface/range {p0 .. p0}, Lr3/e;->q()Lh4/z;

    move-result-object v5

    invoke-direct {v4, v5}, Lh4/O;-><init>(Lh4/v;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "attributes"

    invoke-static {v5, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "constructor"

    invoke-static {v5, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "arguments"

    invoke-static {v5, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lh4/d;->r(Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object v19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v23}, Lu3/K;->Y0(Lh4/v;Ljava/util/List;Lu3/w;Lu3/w;Ljava/util/List;)V

    invoke-virtual {v1}, Lu3/K;->n()Lh4/v;

    move-result-object v0

    invoke-virtual {v2, v0}, Lu3/L;->T0(Lh4/v;)V

    return-object v1

    :cond_1
    const/16 v1, 0x1a

    invoke-static {v1}, LZ0/j;->h(I)V

    throw v0
.end method

.method public static C(Lr3/e;)Lu3/N;
    .locals 14

    if-eqz p0, :cond_0

    sget-object v4, Ls3/g;->a:Ls3/f;

    sget-object v0, Lo3/n;->c:LQ3/f;

    const/4 v1, 0x4

    invoke-interface {p0}, Lr3/k;->m()Lr3/N;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lu3/N;->b1(Lr3/j;LQ3/f;ILr3/N;)Lu3/N;

    move-result-object v12

    new-instance v13, Lu3/V;

    const-string v0, "value"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v5

    invoke-static {p0}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object v0

    invoke-virtual {v0}, Lo3/i;->u()Lh4/z;

    move-result-object v6

    invoke-interface {p0}, Lr3/k;->m()Lr3/N;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, v12

    invoke-direct/range {v0 .. v11}, Lu3/V;-><init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {p0}, Lr3/e;->q()Lh4/z;

    move-result-object v11

    sget-object v13, Lr3/n;->e:LA3/p;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 p0, 0x1

    move-object v5, v12

    move v12, p0

    invoke-virtual/range {v5 .. v13}, Lu3/N;->d1(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;)Lu3/N;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x18

    invoke-static {p0}, LZ0/j;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static D(Lr3/e;)Lu3/N;
    .locals 12

    if-eqz p0, :cond_0

    sget-object v0, Lo3/n;->a:LQ3/f;

    const/4 v1, 0x4

    invoke-interface {p0}, Lr3/k;->m()Lr3/N;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lu3/N;->b1(Lr3/j;LQ3/f;ILr3/N;)Lu3/N;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {p0}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object v0

    invoke-interface {p0}, Lr3/e;->q()Lh4/z;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo3/i;->h(Lh4/Z;)Lh4/z;

    move-result-object v9

    sget-object v11, Lr3/n;->e:LA3/p;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v11}, Lu3/N;->d1(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;)Lu3/N;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x16

    invoke-static {p0}, LZ0/j;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static E(Lr3/b;Lh4/v;Ls3/h;)Lu3/w;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lu3/w;

    new-instance v1, Lb4/b;

    invoke-direct {v1, p0, p1}, Lb4/b;-><init>(Lr3/b;Lh4/v;)V

    invoke-direct {v0, p0, v1, p2}, Lu3/w;-><init>(Lr3/j;LK3/c;Ls3/h;)V

    :goto_0
    return-object v0

    :cond_1
    const/16 p0, 0x1e

    invoke-static {p0}, LZ0/j;->h(I)V

    throw v0
.end method

.method public static F(Lr3/K;Ls3/h;ZLr3/N;)Lu3/L;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lu3/L;

    invoke-interface {p0}, Lr3/w;->i()I

    move-result v4

    invoke-interface {p0}, Lr3/w;->c()LA3/p;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-object v11, p3

    invoke-direct/range {v1 .. v11}, Lu3/L;-><init>(Lr3/K;Ls3/h;ILA3/p;ZZZILu3/L;Lr3/N;)V

    return-object v0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, LZ0/j;->h(I)V

    throw v0

    :cond_1
    const/16 p0, 0x12

    invoke-static {p0}, LZ0/j;->h(I)V

    throw v0
.end method

.method public static G(Lr3/K;Ls3/h;Ls3/h;ZLA3/p;Lr3/N;)Lu3/M;
    .locals 13

    move-object v0, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    new-instance v1, Lu3/M;

    invoke-interface {p0}, Lr3/w;->i()I

    move-result v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p4

    move/from16 v7, p3

    move-object/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Lu3/M;-><init>(Lr3/K;Ls3/h;ILA3/p;ZZZILu3/M;Lr3/N;)V

    invoke-interface {p0}, Lr3/T;->e()Lh4/v;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lu3/M;->S0(Lu3/M;Lh4/v;Ls3/h;)Lu3/V;

    move-result-object v0

    iput-object v0, v1, Lu3/M;->o:Lu3/V;

    return-object v1

    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, LZ0/j;->h(I)V

    throw v1

    :cond_1
    const/16 v0, 0xa

    invoke-static {v0}, LZ0/j;->h(I)V

    throw v1

    :cond_2
    const/16 v0, 0x9

    invoke-static {v0}, LZ0/j;->h(I)V

    throw v1

    :cond_3
    const/16 v0, 0x8

    invoke-static {v0}, LZ0/j;->h(I)V

    throw v1
.end method

.method public static H(Lr3/b;Lr3/b;)Z
    .locals 6

    const-string v0, "superDescriptor"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "subDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, LC3/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lr3/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, LC3/f;

    invoke-virtual {v0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    check-cast p0, Lr3/s;

    invoke-interface {p0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {v0}, Lu3/N;->c1()Lu3/N;

    move-result-object v0

    invoke-virtual {v0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object v0

    const-string v2, "subDescriptor.original.valueParameters"

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/s;->a()Lr3/s;

    move-result-object v2

    invoke-interface {v2}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v2

    const-string v3, "superDescriptor.original.valueParameters"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v2}, LR2/m;->l1(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ2/e;

    iget-object v3, v2, LQ2/e;->c:Ljava/lang/Object;

    check-cast v3, Lu3/V;

    iget-object v2, v2, LQ2/e;->d:Ljava/lang/Object;

    check-cast v2, Lu3/V;

    move-object v4, p1

    check-cast v4, Lr3/s;

    const-string v5, "subParameter"

    invoke-static {v5, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, v3}, LZ0/j;->U(Lr3/s;Lu3/V;)LJ3/l;

    move-result-object v3

    instance-of v3, v3, LJ3/k;

    const-string v4, "superParameter"

    invoke-static {v4, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v2}, LZ0/j;->U(Lr3/s;Lu3/V;)LJ3/l;

    move-result-object v2

    instance-of v2, v2, LJ3/k;

    if-eq v3, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static final I(Lm3/e;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lm3/e;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static final K(Ld3/j;)Li3/c;
    .locals 3

    move-object v0, p0

    check-cast v0, Ll3/l0;

    invoke-virtual {v0}, Ll3/l0;->c()Li3/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LZ0/j;->L(Li3/d;)Li3/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot calculate JVM erasure for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static final L(Li3/d;)Li3/c;
    .locals 5

    instance-of v0, p0, Li3/c;

    if-eqz v0, :cond_0

    check-cast p0, Li3/c;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Li3/p;

    if-eqz v0, :cond_6

    check-cast p0, Li3/p;

    check-cast p0, Ll3/m0;

    sget-object v0, Ll3/m0;->f:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/m0;->d:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-upperBounds>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ld3/j;

    const-string v4, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl"

    invoke-static {v4, v3}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, Ll3/l0;

    iget-object v3, v3, Ll3/l0;->a:Lh4/v;

    invoke-virtual {v3}, Lh4/v;->J0()Lh4/J;

    move-result-object v3

    invoke-interface {v3}, Lh4/J;->i()Lr3/g;

    move-result-object v3

    instance-of v4, v3, Lr3/e;

    if-eqz v4, :cond_2

    move-object v2, v3

    check-cast v2, Lr3/e;

    :cond_2
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lr3/e;->L()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Lr3/e;->L()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    move-object v2, v1

    :cond_3
    check-cast v2, Ld3/j;

    if-nez v2, :cond_4

    invoke-static {p0}, LR2/m;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ld3/j;

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, LZ0/j;->K(Ld3/j;)Li3/c;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_6
    new-instance v0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot calculate JVM erasure for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static M(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "DEAD_CLIENT"

    return-object p0

    :pswitch_2
    const-string p0, "API_NOT_CONNECTED"

    return-object p0

    :pswitch_3
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_4
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_5
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_6
    const-string p0, "ERROR"

    return-object p0

    :pswitch_7
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_8
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_9
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_a
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_b
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_c
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_d
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_e
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_f
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_10
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final N(Lg4/m;Li3/o;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "p"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static Q(Ln4/e;Lr3/s;)Ljava/lang/String;
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ln4/e;->c(Lr3/s;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Ln4/e;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static R(Landroid/content/res/Configuration;)Z
    .locals 5

    const-string v0, "hidden_semDesktopModeEnabled"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/res/Configuration;

    invoke-static {v3, v0, v2}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    const-string v0, "hidden_SEM_DESKTOP_MODE_ENABLED"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v3, v0, v4}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-ne p0, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static S(Lr3/s;)Z
    .locals 2

    invoke-interface {p0}, Lr3/c;->k0()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, LT3/e;->o(Lr3/j;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, LJ3/g;->d:LJ3/g;

    const-string v4, "kotlinType"

    invoke-static {v4, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "writeGenericType"

    invoke-static {v4, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p0 .. p0}, Lo3/f;->o(Lh4/v;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    sget-object v3, Lo3/o;->a:Lu3/D;

    invoke-static/range {p0 .. p0}, Lo3/f;->o(Lh4/v;)Z

    invoke-static/range {p0 .. p0}, Lf1/a;->y(Lh4/v;)Lo3/i;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lh4/v;->t()Ls3/h;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lo3/f;->j(Lh4/v;)Lh4/v;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lo3/f;->h(Lh4/v;)Ljava/util/List;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lo3/f;->l(Lh4/v;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lh4/N;

    invoke-virtual {v10}, Lh4/N;->b()Lh4/v;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v3, Lh4/G;->d:Le/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lh4/G;->e:Lh4/G;

    sget-object v10, Lo3/o;->a:Lu3/D;

    invoke-virtual {v10}, Lu3/D;->H()Lh4/J;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lo3/f;->n(Lh4/v;)Z

    invoke-virtual/range {p0 .. p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, LR2/m;->U0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh4/N;

    invoke-virtual {v11}, Lh4/N;->b()Lh4/v;

    move-result-object v11

    const-string v12, "arguments.last().type"

    invoke-static {v12, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v11}, Lf1/a;->b(Lh4/v;)Lh4/O;

    move-result-object v11

    invoke-static {v11}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v3, v10, v11, v5}, Lh4/d;->r(Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object v3

    invoke-static {v4, v3}, LR2/m;->Z0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lf1/a;->y(Lh4/v;)Lo3/i;

    move-result-object v3

    invoke-virtual {v3}, Lo3/i;->o()Lh4/z;

    move-result-object v11

    const-string v3, "suspendFunType.builtIns.nullableAnyType"

    invoke-static {v3, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lo3/f;->e(Lo3/i;Ls3/h;Lh4/v;Ljava/util/List;Ljava/util/ArrayList;Lh4/v;Z)Lh4/z;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lh4/v;->K0()Z

    move-result v0

    invoke-virtual {v3, v0}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v0

    invoke-static {v0, v1, v2}, LZ0/j;->T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static/range {p0 .. p0}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static/range {p0 .. p0}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Li3/x;->D0(Lh4/q;)Lh4/z;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static/range {p0 .. p0}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object v4

    invoke-static {v4}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_3
    invoke-static {v4}, Li3/x;->i1(Lk4/d;)Lh4/J;

    move-result-object v4

    invoke-static {v4}, Li3/x;->l0(Lk4/f;)Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "["

    if-nez v6, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-static {v4}, Li3/x;->X(Lk4/f;)Lo3/k;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v0, LA0/c;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v4, LJ3/l;->h:LJ3/k;

    goto :goto_1

    :pswitch_1
    sget-object v4, LJ3/l;->g:LJ3/k;

    goto :goto_1

    :pswitch_2
    sget-object v4, LJ3/l;->f:LJ3/k;

    goto :goto_1

    :pswitch_3
    sget-object v4, LJ3/l;->e:LJ3/k;

    goto :goto_1

    :pswitch_4
    sget-object v4, LJ3/l;->d:LJ3/k;

    goto :goto_1

    :pswitch_5
    sget-object v4, LJ3/l;->c:LJ3/k;

    goto :goto_1

    :pswitch_6
    sget-object v4, LJ3/l;->b:LJ3/k;

    goto :goto_1

    :pswitch_7
    sget-object v4, LJ3/l;->a:LJ3/k;

    :goto_1
    invoke-static/range {p0 .. p0}, Li3/x;->w0(Lk4/c;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, LA3/z;->p:LQ3/c;

    const-string v9, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v9, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v6}, Li3/x;->f0(Lk4/c;LQ3/c;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v6, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v6, v8

    :goto_3
    invoke-static {v4, v6}, LZ0/j;->j(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_5

    :cond_7
    invoke-static {v4}, Li3/x;->W(Lk4/f;)Lo3/k;

    move-result-object v6

    if-eqz v6, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, LY3/c;->q:Ljava/util/EnumMap;

    invoke-virtual {v11, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LY3/c;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, LY3/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LJ3/g;->b(Ljava/lang/String;)LJ3/l;

    move-result-object v9

    goto :goto_5

    :cond_8
    invoke-static {v7}, LY3/c;->a(I)V

    throw v9

    :cond_9
    invoke-static {v4}, Li3/x;->C0(Lk4/f;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v4}, Li3/x;->F(Lk4/f;)LQ3/e;

    move-result-object v4

    sget-object v6, Lq3/d;->a:Ljava/lang/String;

    invoke-static {v4}, Lq3/d;->f(LQ3/e;)LQ3/b;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-boolean v6, v1, LJ3/t;->g:Z

    if-nez v6, :cond_c

    sget-object v6, Lq3/d;->n:Ljava/util/List;

    instance-of v11, v6, Ljava/util/Collection;

    if-eqz v11, :cond_a

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lq3/c;

    iget-object v11, v11, Lq3/c;->a:LQ3/b;

    invoke-static {v11, v4}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_5

    :cond_c
    :goto_4
    invoke-static {v4}, LY3/b;->b(LQ3/b;)LY3/b;

    move-result-object v4

    invoke-virtual {v4}, LY3/b;->e()Ljava/lang/String;

    move-result-object v4

    const-string v6, "byClassId(classId).internalName"

    invoke-static {v6, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, LJ3/g;->d(Ljava/lang/String;)LJ3/j;

    move-result-object v9

    :cond_d
    :goto_5
    if-eqz v9, :cond_e

    iget-boolean v3, v1, LJ3/t;->a:Z

    invoke-static {v9, v3}, LZ0/j;->j(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lc3/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v4

    instance-of v6, v4, Lh4/u;

    if-eqz v6, :cond_10

    check-cast v4, Lh4/u;

    iget-object v0, v4, Lh4/u;->a:Lh4/v;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lf1/a;->h0(Lh4/v;)Lh4/Z;

    move-result-object v0

    invoke-static {v0, v1, v2}, LZ0/j;->T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v1, v4, Lh4/u;->b:Ljava/util/LinkedHashSet;

    const-string v0, "types"

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/AssertionError;

    const/4 v4, 0x0

    const/16 v6, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, LR2/m;->S0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There should be no intersection type in existing descriptors, but found: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_10
    invoke-interface {v4}, Lh4/J;->i()Lr3/g;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-static {v4}, Lj4/i;->f(Lr3/j;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v0, "error/NonExistentClass"

    invoke-static {v0}, LJ3/g;->d(Ljava/lang/String;)LJ3/j;

    move-result-object v0

    check-cast v4, Lr3/e;

    return-object v0

    :cond_11
    instance-of v6, v4, Lr3/e;

    iget-boolean v9, v1, LJ3/t;->c:Z

    if-eqz v6, :cond_18

    invoke-static/range {p0 .. p0}, Lo3/i;->y(Lh4/v;)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual/range {p0 .. p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v8, :cond_17

    invoke-virtual/range {p0 .. p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/N;

    invoke-virtual {v0}, Lh4/N;->b()Lh4/v;

    move-result-object v3

    const-string v4, "memberProjection.type"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lh4/N;->a()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    const-string v0, "java/lang/Object"

    invoke-static {v0}, LJ3/g;->d(Ljava/lang/String;)LJ3/j;

    move-result-object v0

    goto :goto_7

    :cond_12
    invoke-virtual {v0}, Lh4/N;->a()I

    move-result v0

    const-string v4, "memberProjection.projectionKind"

    invoke-static {v0, v4}, LB/f;->E(ILjava/lang/String;)V

    if-eqz v9, :cond_13

    goto :goto_6

    :cond_13
    invoke-static {v0}, Lk/Q0;->f(I)I

    move-result v0

    if-eqz v0, :cond_15

    if-eq v0, v8, :cond_14

    iget-object v0, v1, LJ3/t;->f:LJ3/t;

    if-nez v0, :cond_16

    goto :goto_6

    :cond_14
    iget-object v0, v1, LJ3/t;->h:LJ3/t;

    if-nez v0, :cond_16

    goto :goto_6

    :cond_15
    iget-object v0, v1, LJ3/t;->i:LJ3/t;

    if-nez v0, :cond_16

    :goto_6
    move-object v0, v1

    :cond_16
    invoke-static {v3, v0, v2}, LZ0/j;->T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;

    move-result-object v0

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, LJ3/l;

    invoke-static {v0}, LJ3/g;->h(LJ3/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ3/g;->b(Ljava/lang/String;)LJ3/l;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "arrays must have one type argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    if-eqz v6, :cond_1c

    invoke-static {v4}, LT3/i;->b(Lr3/j;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-boolean v5, v1, LJ3/t;->b:Z

    if-nez v5, :cond_19

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v5}, Lh4/c;->d(Lk4/c;Ljava/util/HashSet;)Lk4/c;

    move-result-object v5

    check-cast v5, Lh4/v;

    if-eqz v5, :cond_19

    new-instance v0, LJ3/t;

    iget-object v3, v1, LJ3/t;->h:LJ3/t;

    const/16 v21, 0x200

    iget-boolean v11, v1, LJ3/t;->a:Z

    const/4 v12, 0x1

    iget-boolean v13, v1, LJ3/t;->c:Z

    iget-boolean v14, v1, LJ3/t;->d:Z

    iget-boolean v15, v1, LJ3/t;->e:Z

    iget-object v4, v1, LJ3/t;->f:LJ3/t;

    iget-boolean v6, v1, LJ3/t;->g:Z

    iget-object v1, v1, LJ3/t;->i:LJ3/t;

    const/16 v20, 0x0

    move-object v10, v0

    move-object/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    invoke-direct/range {v10 .. v21}, LJ3/t;-><init>(ZZZZZLJ3/t;ZLJ3/t;LJ3/t;ZI)V

    invoke-static {v5, v0, v2}, LZ0/j;->T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_19
    if-eqz v9, :cond_1a

    move-object v5, v4

    check-cast v5, Lr3/e;

    sget-object v6, Lo3/m;->P:LQ3/e;

    invoke-static {v5, v6}, Lo3/i;->b(Lr3/g;LQ3/e;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v3, "java/lang/Class"

    invoke-static {v3}, LJ3/g;->d(Ljava/lang/String;)LJ3/j;

    move-result-object v3

    goto :goto_8

    :cond_1a
    check-cast v4, Lr3/e;

    invoke-interface {v4}, Lr3/e;->a()Lr3/e;

    move-result-object v5

    const-string v6, "descriptor.original"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4}, Lr3/e;->L()I

    move-result v5

    if-ne v5, v7, :cond_1b

    invoke-interface {v4}, Lr3/j;->l()Lr3/j;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v5, v4}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Lr3/e;

    :cond_1b
    invoke-interface {v4}, Lr3/e;->a()Lr3/e;

    move-result-object v4

    const-string v5, "enumClassIfEnumEntry.original"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, v3}, LZ0/j;->q(Lr3/e;LJ3/g;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LJ3/g;->d(Ljava/lang/String;)LJ3/j;

    move-result-object v3

    :goto_8
    invoke-interface {v2, v0, v3, v1}, Lc3/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_1c
    instance-of v3, v4, Lr3/Q;

    if-eqz v3, :cond_1e

    check-cast v4, Lr3/Q;

    invoke-static {v4}, Lf1/a;->I(Lr3/Q;)Lh4/v;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lh4/v;->K0()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {v2, v8}, Lh4/X;->h(Lh4/v;Z)Lh4/Z;

    move-result-object v2

    :cond_1d
    sget-object v0, Lq4/c;->d:Lq4/c;

    invoke-static {v2, v1, v0}, LZ0/j;->T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1e
    instance-of v3, v4, Lf4/t;

    if-eqz v3, :cond_1f

    iget-boolean v3, v1, LJ3/t;->j:Z

    if-eqz v3, :cond_1f

    check-cast v4, Lf4/t;

    invoke-virtual {v4}, Lf4/t;->R0()Lh4/z;

    move-result-object v0

    invoke-static {v0, v1, v2}, LZ0/j;->T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no descriptor for type constructor of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static U(Lr3/s;Lu3/V;)LJ3/l;
    .locals 8

    const-string v0, "f"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Lu3/o;

    invoke-virtual {v0}, Lu3/o;->getName()LQ3/f;

    move-result-object v0

    invoke-virtual {v0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove"

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    sget-object v2, Lq4/c;->d:Lq4/c;

    const-string v3, "valueParameterDescriptor.type"

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-static {p0}, LX3/f;->k(Lr3/c;)Lr3/c;

    move-result-object v0

    invoke-interface {v0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    instance-of v0, v0, LC3/c;

    if-nez v0, :cond_5

    invoke-static {p0}, Lo3/i;->z(Lr3/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p0}, Lr3/s;->a()Lr3/s;

    move-result-object v0

    invoke-interface {v0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v0

    const-string v5, "f.original.valueParameters"

    invoke-static {v5, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/V;

    check-cast v0, Lu3/W;

    invoke-virtual {v0}, Lu3/W;->e()Lh4/v;

    move-result-object v0

    const-string v5, "f.original.valueParameters.single().type"

    invoke-static {v5, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, LJ3/t;->k:LJ3/t;

    invoke-static {v0, v5, v2}, LZ0/j;->T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ3/l;

    instance-of v6, v0, LJ3/k;

    if-eqz v6, :cond_1

    check-cast v0, LJ3/k;

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, LJ3/k;->i:LY3/c;

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    sget-object v6, LY3/c;->k:LY3/c;

    if-eq v0, v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0}, LA3/g;->a(Lr3/s;)Lr3/s;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lr3/s;->a()Lr3/s;

    move-result-object v6

    invoke-interface {v6}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v6

    const-string v7, "overridden.original.valueParameters"

    invoke-static {v7, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu3/V;

    check-cast v6, Lu3/W;

    invoke-virtual {v6}, Lu3/W;->e()Lh4/v;

    move-result-object v6

    const-string v7, "overridden.original.valueParameters.single().type"

    invoke-static {v7, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6, v5, v2}, LZ0/j;->T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJ3/l;

    invoke-interface {v0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    const-string v6, "overridden.containingDeclaration"

    invoke-static {v6, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LX3/f;->h(Lr3/j;)LQ3/e;

    move-result-object v0

    sget-object v6, Lo3/m;->J:LQ3/c;

    invoke-virtual {v6}, LQ3/c;->i()LQ3/e;

    move-result-object v6

    invoke-static {v0, v6}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, v5, LJ3/j;

    if-eqz v0, :cond_5

    check-cast v5, LJ3/j;

    iget-object v0, v5, LJ3/j;->i:Ljava/lang/String;

    const-string v5, "java/lang/Object"

    invoke-static {v0, v5}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    invoke-interface {p0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    instance-of v5, v0, Lr3/e;

    if-eqz v5, :cond_7

    check-cast v0, Lr3/e;

    goto :goto_3

    :cond_7
    move-object v0, v4

    :goto_3
    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {p0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p0

    const-string v5, "f.valueParameters"

    invoke-static {v5, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/V;

    check-cast p0, Lu3/W;

    invoke-virtual {p0}, Lu3/W;->e()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    instance-of v5, p0, Lr3/e;

    if-eqz v5, :cond_9

    move-object v4, p0

    check-cast v4, Lr3/e;

    :cond_9
    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v0}, Lo3/i;->t(Lr3/j;)Lo3/k;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-static {v0}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object p0

    invoke-static {v4}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object v0

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :goto_4
    check-cast p1, Lu3/W;

    invoke-virtual {p1}, Lu3/W;->e()Lh4/v;

    move-result-object p0

    invoke-static {v3, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lh4/X;->h(Lh4/v;Z)Lh4/Z;

    move-result-object p0

    sget-object p1, LJ3/t;->k:LJ3/t;

    invoke-static {p0, p1, v2}, LZ0/j;->T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ3/l;

    goto :goto_6

    :cond_b
    :goto_5
    check-cast p1, Lu3/W;

    invoke-virtual {p1}, Lu3/W;->e()Lh4/v;

    move-result-object p0

    invoke-static {v3, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, LJ3/t;->k:LJ3/t;

    invoke-static {p0, p1, v2}, LZ0/j;->T(Lh4/v;LJ3/t;Lc3/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ3/l;

    :goto_6
    return-object p0
.end method

.method public static V(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "r"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-object v0
.end method

.method public static c0(Landroid/widget/Spinner;Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    instance-of v1, v0, LT/d;

    if-eqz v1, :cond_1

    check-cast v0, LT/d;

    iget-object p0, v0, LT/d;->c:Ljava/util/List;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, LT/d;->c:Ljava/util/List;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    new-instance v0, LT/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LT/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_0
    return-void
.end method

.method public static e0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "not found"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 p0, 0x8

    :try_start_3
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    invoke-static {v0, v2}, LZ0/j;->f0(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v2, p0

    :goto_1
    move-object p0, p1

    move-object p1, v2

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object v1, p0

    move-object v2, v1

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw p0
.end method

.method public static f0(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".metadata"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_4

    aget-object v0, p0, v1

    invoke-static {v0, p1}, LZ0/j;->f0(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, LN2/a;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "/"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p0, 0x800

    new-array v0, p0, [B

    :goto_2
    invoke-virtual {v2, v0, v1, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {p1, v0, v1, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_4
    return-void

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    throw p0
.end method

.method public static synthetic h(I)V
    .locals 11

    const/16 v0, 0x19

    const/16 v1, 0x17

    const/16 v2, 0xc

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v8, "propertyDescriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "owner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "descriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "enumClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "containingClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "sourceElement"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "parameterAnnotations"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "createSetter"

    const-string v8, "createEnumValuesMethod"

    const-string v9, "createEnumValueOfMethod"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v10

    goto :goto_3

    :cond_2
    aput-object v9, v5, v10

    goto :goto_3

    :cond_3
    aput-object v8, v5, v10

    goto :goto_3

    :cond_4
    aput-object v7, v5, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "createDefaultSetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_b
    const-string v6, "createContextReceiverParameterForClass"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_c
    const-string v6, "createContextReceiverParameterForCallable"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_d
    const-string v6, "createExtensionReceiverParameterForCallable"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_e
    const-string v6, "isEnumSpecialMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_f
    const-string v6, "isEnumValueOfMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_10
    const-string v6, "isEnumValuesMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_11
    const-string v6, "createEnumEntriesProperty"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_12
    aput-object v9, v5, v4

    goto :goto_4

    :pswitch_13
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_14
    const-string v6, "createPrimaryConstructorForObject"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_15
    const-string v6, "createGetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_16
    const-string v6, "createDefaultGetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_17
    aput-object v7, v5, v4

    :goto_4
    :pswitch_18
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_18
        :pswitch_12
        :pswitch_18
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "exception"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-eq p0, p1, :cond_0

    sget-object v0, LX2/c;->a:LX2/b;

    invoke-virtual {v0, p0, p1}, LX2/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static final j(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    const-string v0, "possiblyPrimitiveType"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    check-cast p0, LJ3/l;

    instance-of p1, p0, LJ3/k;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, LJ3/k;

    iget-object p1, p1, LJ3/k;->i:LY3/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LY3/c;->e()LQ3/c;

    move-result-object p0

    invoke-static {p0}, LY3/b;->c(LQ3/c;)LY3/b;

    move-result-object p0

    invoke-virtual {p0}, LY3/b;->e()Ljava/lang/String;

    move-result-object p0

    const-string p1, "byFqNameWithoutInnerClas\u2026apperFqName).internalName"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LJ3/g;->d(Ljava/lang/String;)LJ3/j;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static k(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static l(I)V
    .locals 0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static n(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static final q(Lr3/e;LJ3/g;)Ljava/lang/String;
    .locals 3

    const-string v0, "klass"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    const-string v1, "klass.containingDeclaration"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, LQ3/h;->a:LQ3/f;

    iget-boolean v2, v1, LQ3/f;->d:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, LQ3/h;->c:LQ3/f;

    :goto_0
    invoke-virtual {v1}, LQ3/f;->c()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lr3/C;

    if-eqz v2, :cond_2

    check-cast v0, Lr3/C;

    check-cast v0, Lu3/E;

    iget-object p0, v0, Lu3/E;->g:LQ3/c;

    invoke-virtual {p0}, LQ3/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LQ3/c;->b()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v2, 0x2f

    invoke-static {p0, v0, v2}, Ls4/h;->q(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    instance-of v2, v0, Lr3/e;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lr3/e;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    invoke-static {v2, p1}, LZ0/j;->q(Lr3/e;LJ3/g;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x24

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static r(Lj0/X;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Lj0/J;Z)I
    .locals 0

    invoke-virtual {p4}, Lj0/J;->v()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lj0/X;->b()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-static {p2}, Lj0/J;->F(Landroid/view/View;)I

    move-result p0

    invoke-static {p3}, Lj0/J;->F(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->l()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static s(Lj0/X;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Lj0/J;ZZ)I
    .locals 3

    invoke-virtual {p4}, Lj0/J;->v()I

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lj0/X;->b()I

    move-result p4

    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lj0/J;->F(Landroid/view/View;)I

    move-result p4

    invoke-static {p3}, Lj0/J;->F(Landroid/view/View;)I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {p2}, Lj0/J;->F(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Lj0/J;->F(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Lj0/X;->b()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    :cond_2
    invoke-virtual {p1, p3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p5

    sub-int/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p2}, Lj0/J;->F(Landroid/view/View;)I

    move-result p5

    invoke-static {p3}, Lj0/J;->F(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p4

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float/2addr p0, p4

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->k()I

    move-result p3

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static t(Lj0/X;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Lj0/J;Z)I
    .locals 0

    invoke-virtual {p4}, Lj0/J;->v()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lj0/X;->b()I

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0}, Lj0/X;->b()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p4, p1

    invoke-static {p2}, Lj0/J;->F(Landroid/view/View;)I

    move-result p1

    invoke-static {p3}, Lj0/J;->F(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p4

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0}, Lj0/X;->b()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static u(Ljava/lang/String;Ljava/util/List;)La4/o;
    .locals 3

    const-string v0, "debugName"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lq4/f;

    invoke-direct {v0}, Lq4/f;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    sget-object v2, La4/n;->b:La4/n;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La4/o;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, La4/a;

    if-eqz v2, :cond_1

    check-cast v1, La4/a;

    iget-object v1, v1, La4/a;->c:[La4/o;

    const-string v2, "elements"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, LR2/i;->g0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lq4/f;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget p1, v0, Lq4/f;->c:I

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    new-instance p1, La4/a;

    new-array v1, v2, [La4/o;

    invoke-virtual {v0, v1}, Lq4/f;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La4/o;

    invoke-direct {p1, p0, v0}, La4/a;-><init>(Ljava/lang/String;[La4/o;)V

    move-object v2, p1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lq4/f;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, La4/o;

    :cond_4
    :goto_1
    return-object v2
.end method

.method public static v(Landroid/content/Context;)Landroidx/emoji2/text/p;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "Package manager required to locate emoji font provider"

    invoke-static {v1, v0}, LZ0/j;->m(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.content.action.LOAD_EMOJI_FONT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_2

    :goto_1
    move-object v2, v4

    goto :goto_3

    :cond_2
    :try_start_0
    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v0

    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v7, v0, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, LD3/e;

    const-string v5, "emojicompat-emoji-font"

    invoke-direct {v2, v1, v3, v5, v0}, LD3/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "emoji2.text.DefaultEmojiConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    new-instance v4, Landroidx/emoji2/text/p;

    new-instance v0, Landroidx/emoji2/text/o;

    invoke-direct {v0, p0, v2}, Landroidx/emoji2/text/o;-><init>(Landroid/content/Context;LD3/e;)V

    invoke-direct {v4, v0}, Landroidx/emoji2/text/f;-><init>(Landroidx/emoji2/text/i;)V

    :goto_4
    return-object v4
.end method

.method public static w(LQ3/c;Lg4/o;Lr3/x;Ljava/io/InputStream;)Le4/c;
    .locals 7

    const-string v0, "fqName"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "module"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget-object v0, LM3/a;->f:LM3/a;

    invoke-static {p3}, Li3/x;->N0(Ljava/io/InputStream;)LM3/a;

    move-result-object v6

    const-string v0, "ourVersion"

    sget-object v1, LM3/a;->f:LM3/a;

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, v6, LN3/a;->c:I

    iget v2, v1, LN3/a;->c:I

    iget v3, v1, LN3/a;->b:I

    iget v4, v6, LN3/a;->b:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    if-nez v3, :cond_2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_0
    if-ne v4, v3, :cond_2

    if-gt v0, v2, :cond_2

    :goto_0
    new-instance v0, LR3/i;

    invoke-direct {v0}, LR3/i;-><init>()V

    invoke-static {v0}, LM3/b;->a(LR3/i;)V

    sget-object v2, LL3/E;->m:LL3/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LR3/f;

    invoke-direct {v3, p3}, LR3/f;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3, v0}, LR3/B;->a(LR3/f;LR3/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR3/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v3, v2}, LR3/f;->a(I)V
    :try_end_1
    .catch LR3/u; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, LR3/A;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, LL3/E;

    goto :goto_1

    :cond_1
    new-instance p0, LA0/c;

    invoke-direct {p0}, LA0/c;-><init>()V

    new-instance p1, LR3/u;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, LR3/u;->c:LR3/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v0, p0, LR3/u;->c:LR3/b;

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    move-object v0, v5

    :goto_1
    invoke-static {p3, v5}, LW1/a;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_3

    new-instance p3, Le4/c;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Le4/c;-><init>(LQ3/c;Lg4/o;Lr3/x;LL3/E;LM3/a;)V

    return-object p3

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Kotlin built-in definition format version is not supported: expected "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Please update Kotlin"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p3, p0}, LW1/a;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static x(Lr3/b;Lh4/v;LQ3/f;Ls3/h;I)Lu3/w;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lu3/w;

    new-instance v1, Lb4/a;

    invoke-direct {v1, p0, p1, p2}, Lb4/a;-><init>(Lr3/b;Lh4/v;LQ3/f;)V

    sget-object p1, LQ3/g;->a:LQ2/a;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "_context_receiver_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p1

    invoke-direct {v0, p0, v1, p3, p1}, Lu3/w;-><init>(Lr3/j;LK3/c;Ls3/h;LQ3/f;)V

    :goto_0
    return-object v0

    :cond_1
    const/16 p0, 0x21

    invoke-static {p0}, LZ0/j;->h(I)V

    throw v0
.end method

.method public static y(LU2/a;Lc3/c;Ljava/lang/Object;)LU2/a;
    .locals 2

    const-string v0, "<this>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "completion"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, LW2/a;

    if-eqz v0, :cond_0

    check-cast p1, LW2/a;

    invoke-virtual {p1, p2, p0}, LW2/a;->e(Ljava/lang/Object;LU2/a;)LU2/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LU2/a;->a()LU2/d;

    move-result-object v0

    sget-object v1, LU2/e;->c:LU2/e;

    if-ne v0, v1, :cond_1

    new-instance v0, LV2/b;

    invoke-direct {v0, p0, p1, p2}, LV2/b;-><init>(LU2/a;Lc3/c;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, LV2/c;

    invoke-direct {v1, p0, v0, p1, p2}, LV2/c;-><init>(LU2/a;LU2/d;Lc3/c;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static z(Lr3/K;Ls3/h;)Lu3/L;
    .locals 2

    invoke-interface {p0}, Lr3/k;->m()Lr3/N;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, LZ0/j;->F(Lr3/K;Ls3/h;ZLr3/N;)Lu3/L;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract J(LP1/u;FF)V
.end method

.method public O(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public P()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract W(I)V
.end method

.method public abstract X(Landroid/graphics/Typeface;Z)V
.end method

.method public Y(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public abstract Z(I)V
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lb2/d;->b(Ljava/lang/Class;)Lk2/a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lk2/a;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract a0(Landroid/view/View;II)V
.end method

.method public abstract b0(Landroid/view/View;FF)V
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public abstract d0(ILandroid/view/View;)Z
.end method

.method public e(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0, p1}, Lb2/d;->f(Ljava/lang/Class;)Lk2/a;

    move-result-object p0

    invoke-interface {p0}, Lk2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public abstract o(ILandroid/view/View;)I
.end method

.method public abstract p(ILandroid/view/View;)I
.end method
