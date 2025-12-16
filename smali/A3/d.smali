.class public final LA3/d;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA3/d;->d:I

    iput-object p2, p0, LA3/d;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lr3/e;LF3/d;Lh4/z;LF3/a;)V
    .locals 0

    const/4 p2, 0x6

    iput p2, p0, LA3/d;->d:I

    iput-object p1, p0, LA3/d;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "annotation"

    sget-object v3, LQ2/k;->a:LQ2/k;

    const-string v4, "kotlinTypeRefiner"

    const-string v5, "fqName"

    const-string v6, "method.parameterTypes"

    const-string v7, "values"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "it"

    const/4 v11, 0x1

    iget-object v12, v0, LA3/d;->e:Ljava/lang/Object;

    iget v0, v0, LA3/d;->d:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast v12, Lx3/o;

    iget-object v1, v12, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v6, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, v0

    if-nez v0, :cond_1

    move v0, v11

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_0

    :cond_2
    const-string v2, "valueOf"

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    :cond_3
    move v8, v11

    :cond_4
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object v0, v1

    check-cast v0, LQ3/c;

    invoke-static {v5, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lu3/C;

    iget-object v1, v12, Lu3/C;->h:Lu3/H;

    check-cast v1, Lu3/G;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "storageManager"

    iget-object v2, v12, Lu3/C;->e:Lg4/o;

    invoke-static {v1, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lu3/y;

    invoke-direct {v1, v12, v0, v2}, Lu3/y;-><init>(Lu3/C;LQ3/c;Lg4/o;)V

    return-object v1

    :pswitch_1
    move-object v0, v1

    check-cast v0, Lr3/x;

    const-string v1, "module"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Lr3/x;->g()Lo3/i;

    move-result-object v0

    check-cast v12, Lo3/i;

    invoke-virtual {v12}, Lo3/i;->u()Lh4/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo3/i;->h(Lh4/Z;)Lh4/z;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {v10, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lc3/a;

    invoke-interface {v12}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_3
    move-object v0, v1

    check-cast v0, Lr3/c;

    invoke-interface {v0}, Lr3/c;->k0()I

    move-result v1

    if-ne v1, v11, :cond_5

    check-cast v12, Lq3/n;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lr3/e;

    sget-object v1, Lq3/d;->a:Ljava/lang/String;

    invoke-static {v0}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v0

    sget-object v1, Lq3/d;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v8, v11

    :cond_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_4
    move-object v0, v1

    check-cast v0, Lh4/M;

    iget-object v1, v0, Lh4/M;->a:Lr3/Q;

    check-cast v12, Lcom/google/firebase/messaging/p;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lh4/M;->b:LF3/a;

    iget-object v9, v0, LF3/a;->e:Ljava/util/Set;

    if-eqz v9, :cond_6

    invoke-interface {v1}, Lr3/Q;->a()Lr3/Q;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v12, v0}, Lcom/google/firebase/messaging/p;->w(LF3/a;)Lh4/Z;

    move-result-object v0

    goto/16 :goto_7

    :cond_6
    invoke-interface {v1}, Lr3/g;->q()Lh4/z;

    move-result-object v2

    const-string v3, "typeParameter.defaultType"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v2, v2, v3, v9}, Lf1/a;->v(Lh4/v;Lh4/z;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    invoke-static {v3}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v2}, LR2/z;->y1(I)I

    move-result v2

    const/16 v4, 0x10

    if-ge v2, v4, :cond_7

    move v2, v4

    :cond_7
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lr3/Q;

    if-eqz v9, :cond_9

    invoke-interface {v9, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v14, v0}, Lh4/X;->l(Lr3/Q;LF3/a;)Lh4/N;

    move-result-object v2

    goto :goto_6

    :cond_9
    :goto_3
    iget-object v2, v0, LF3/a;->e:Ljava/util/Set;

    if-eqz v2, :cond_a

    invoke-static {v2, v1}, LR2/B;->R(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v2

    :goto_4
    move-object v5, v2

    goto :goto_5

    :cond_a
    invoke-static {v1}, LL2/b;->I(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    goto :goto_4

    :goto_5
    const/16 v7, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, LF3/a;->a(LF3/a;IZLjava/util/Set;Lh4/z;I)LF3/a;

    move-result-object v2

    invoke-virtual {v12, v14, v2}, Lcom/google/firebase/messaging/p;->x(Lr3/Q;LF3/a;)Lh4/v;

    move-result-object v2

    iget-object v3, v12, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v3, LZ0/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v0, v12, v2}, LZ0/h;->c(Lr3/Q;LF3/a;Lcom/google/firebase/messaging/p;Lh4/v;)Lh4/N;

    move-result-object v2

    :goto_6
    invoke-interface {v14}, Lr3/g;->H()Lh4/J;

    move-result-object v3

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_b
    new-instance v2, Lh4/K;

    invoke-direct {v2, v10, v8}, Lh4/K;-><init>(Ljava/util/Map;Z)V

    invoke-static {v2}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object v2

    invoke-interface {v1}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    const-string v3, "typeParameter.upperBounds"

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12, v2, v1, v0}, Lcom/google/firebase/messaging/p;->H(Lh4/V;Ljava/util/List;LF3/a;)LS2/h;

    move-result-object v1

    iget-object v2, v1, LS2/h;->c:LS2/e;

    invoke-virtual {v2}, LS2/e;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v11

    if-eqz v2, :cond_d

    iget-object v0, v12, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Lh4/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, LR2/f;->l()I

    move-result v0

    if-ne v0, v11, :cond_c

    invoke-static {v1}, LR2/m;->a1(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/v;

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should only be one computed upper bound if no need to intersect all bounds"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {v12, v0}, Lcom/google/firebase/messaging/p;->w(LF3/a;)Lh4/Z;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_5
    move-object v0, v1

    check-cast v0, Lh4/v;

    invoke-static {v10, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lc3/b;

    invoke-interface {v12, v0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    move-object v0, v1

    check-cast v0, Li4/f;

    invoke-static {v4, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lh4/u;

    invoke-virtual {v12, v0}, Lh4/u;->d(Li4/f;)Lh4/u;

    move-result-object v0

    invoke-virtual {v0}, Lh4/u;->b()Lh4/z;

    move-result-object v0

    return-object v0

    :pswitch_7
    move-object v0, v1

    check-cast v0, Lh4/e;

    const-string v1, "supertypes"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lh4/g;

    invoke-virtual {v12}, Lh4/g;->d()Lr3/O;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "superTypes"

    iget-object v2, v0, Lh4/e;->a:Ljava/util/Collection;

    invoke-static {v1, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v12}, Lh4/g;->c()Lh4/v;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_8

    :cond_e
    move-object v1, v9

    :goto_8
    if-nez v1, :cond_f

    sget-object v1, LR2/u;->c:LR2/u;

    :cond_f
    move-object v2, v1

    :cond_10
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_11

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    :cond_11
    if-nez v9, :cond_12

    invoke-static {v2}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    :cond_12
    invoke-virtual {v12, v9}, Lh4/g;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "<set-?>"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, v0, Lh4/e;->b:Ljava/util/List;

    return-object v3

    :pswitch_8
    move-object v0, v1

    check-cast v0, LQ3/b;

    invoke-static {v10, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Le4/c;

    iget-object v0, v12, Le4/c;->j:Lf4/j;

    if-eqz v0, :cond_13

    goto :goto_9

    :cond_13
    sget-object v0, Lr3/N;->a:Lr3/M;

    :goto_9
    return-object v0

    :pswitch_9
    move-object v0, v1

    check-cast v0, Ld4/f;

    const-string v1, "key"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Ld4/g;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v12, Ld4/g;->a:Ld4/i;

    iget-object v2, v1, Ld4/i;->k:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, v0, Ld4/f;->a:LQ3/b;

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt3/c;

    invoke-interface {v3, v4}, Lt3/c;->c(LQ3/b;)Lr3/e;

    move-result-object v3

    if-eqz v3, :cond_14

    move-object v9, v3

    goto/16 :goto_f

    :cond_15
    sget-object v2, Ld4/g;->c:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_f

    :cond_16
    iget-object v0, v0, Ld4/f;->b:Ld4/d;

    if-nez v0, :cond_17

    iget-object v0, v1, Ld4/i;->d:Ld4/e;

    invoke-interface {v0, v4}, Ld4/e;->M(LQ3/b;)Ld4/d;

    move-result-object v0

    if-nez v0, :cond_17

    goto/16 :goto_f

    :cond_17
    invoke-virtual {v4}, LQ3/b;->g()LQ3/b;

    move-result-object v2

    const-string v3, "classId.shortClassName"

    iget-object v5, v0, Ld4/d;->a:LN3/f;

    iget-object v6, v0, Ld4/d;->b:LL3/j;

    iget-object v7, v0, Ld4/d;->c:LN3/a;

    if-eqz v2, :cond_1b

    invoke-virtual {v12, v2, v9}, Ld4/g;->a(LQ3/b;Ld4/d;)Lr3/e;

    move-result-object v1

    instance-of v2, v1, Lf4/i;

    if-eqz v2, :cond_18

    check-cast v1, Lf4/i;

    goto :goto_a

    :cond_18
    move-object v1, v9

    :goto_a
    if-nez v1, :cond_19

    goto/16 :goto_f

    :cond_19
    invoke-virtual {v4}, LQ3/b;->j()LQ3/f;

    move-result-object v2

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lf4/i;->u0()Lf4/g;

    move-result-object v3

    invoke-virtual {v3}, Lf4/p;->m()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_f

    :cond_1a
    iget-object v1, v1, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    :goto_b
    move-object v14, v1

    goto/16 :goto_e

    :cond_1b
    invoke-virtual {v4}, LQ3/b;->h()LQ3/c;

    move-result-object v2

    const-string v8, "classId.packageFqName"

    invoke-static {v8, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, Ld4/i;->f:Lr3/D;

    invoke-static {v1, v2}, Lp/a;->m(Lr3/D;LQ3/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lr3/C;

    instance-of v10, v8, Le4/c;

    if-eqz v10, :cond_1e

    check-cast v8, Le4/c;

    invoke-virtual {v4}, LQ3/b;->j()LQ3/f;

    move-result-object v10

    invoke-static {v3, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Le4/c;->q0()La4/o;

    move-result-object v8

    check-cast v8, Lf4/p;

    invoke-virtual {v8}, Lf4/p;->m()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    goto :goto_c

    :cond_1d
    move-object v2, v9

    :cond_1e
    :goto_c
    move-object v14, v2

    check-cast v14, Lr3/C;

    if-nez v14, :cond_1f

    goto :goto_f

    :cond_1f
    new-instance v1, Ls2/c;

    iget-object v2, v6, LL3/j;->G:LL3/X;

    const-string v3, "classProto.typeTable"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ls2/c;-><init>(LL3/X;)V

    iget-object v2, v6, LL3/j;->I:LL3/e0;

    const-string v3, "classProto.versionRequirementTable"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v2, LL3/e0;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_20

    sget-object v2, LN3/g;->a:LN3/g;

    move-object/from16 v17, v2

    goto :goto_d

    :cond_20
    new-instance v3, LN3/g;

    iget-object v2, v2, LL3/e0;->d:Ljava/util/List;

    const-string v4, "table.requirementList"

    invoke-static {v4, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v3

    :goto_d
    const/16 v19, 0x0

    iget-object v13, v12, Ld4/g;->a:Ld4/i;

    move-object v15, v5

    move-object/from16 v16, v1

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v19}, Ld4/i;->a(Lr3/C;LN3/f;Ls2/c;LN3/g;LN3/a;Lf4/j;)Lcom/google/android/gms/internal/firebase-auth-api/G4;

    move-result-object v1

    goto/16 :goto_b

    :goto_e
    new-instance v9, Lf4/i;

    iget-object v0, v0, Ld4/d;->d:Lr3/N;

    move-object v13, v9

    move-object v15, v6

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v0

    invoke-direct/range {v13 .. v18}, Lf4/i;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;LL3/j;LN3/f;LN3/a;Lr3/N;)V

    :goto_f
    return-object v9

    :pswitch_a
    move-object v0, v1

    check-cast v0, LQ3/c;

    invoke-static {v5, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lq3/o;

    invoke-virtual {v12, v0}, Lq3/o;->d(LQ3/c;)Le4/c;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, v12, Lq3/o;->d:Ld4/i;

    if-eqz v1, :cond_21

    invoke-virtual {v0, v1}, Le4/c;->R0(Ld4/i;)V

    move-object v9, v0

    goto :goto_10

    :cond_21
    const-string v0, "components"

    invoke-static {v0}, Ld3/i;->g(Ljava/lang/String;)V

    throw v9

    :cond_22
    :goto_10
    return-object v9

    :pswitch_b
    move-object v0, v1

    check-cast v0, Lr3/x;

    invoke-static {v10, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lh4/v;

    return-object v12

    :pswitch_c
    move-object v0, v1

    check-cast v0, Lr3/x;

    invoke-static {v10, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Lr3/x;->g()Lo3/i;

    move-result-object v0

    check-cast v12, Lo3/k;

    invoke-virtual {v0, v12}, Lo3/i;->q(Lo3/k;)Lh4/z;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-static {v10, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lq4/h;

    invoke-virtual {v12, v1}, Lq4/h;->add(Ljava/lang/Object;)Z

    return-object v3

    :pswitch_e
    check-cast v12, LR2/d;

    if-ne v1, v12, :cond_23

    const-string v0, "(this Collection)"

    goto :goto_11

    :cond_23
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :pswitch_f
    move-object v0, v1

    check-cast v0, Lw3/b;

    const-string v1, "kotlinClass"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, LJ3/d;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, LA3/D;

    invoke-direct {v5, v12, v1, v3}, LA3/D;-><init>(LJ3/d;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object v0, v0, Lw3/b;->a:Ljava/lang/Class;

    const-string v7, "klass"

    invoke-static {v7, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v9, "klass.declaredMethods"

    invoke-static {v9, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v9, v7

    move v10, v8

    :goto_12
    const-string v12, "annotations"

    const-string v13, "sb.toString()"

    const-string v14, "parameterType"

    const-string v15, "("

    if-ge v10, v9, :cond_2a

    aget-object v16, v7, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    invoke-static {v6, v15}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v19, v6

    array-length v6, v15

    move-object/from16 p0, v7

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v6, :cond_24

    move/from16 p1, v6

    aget-object v6, v15, v7

    invoke-static {v14, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Lx3/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    add-int/2addr v7, v6

    move/from16 v6, p1

    goto :goto_13

    :cond_24
    const-string v6, ")"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "method.returnType"

    invoke-static {v7, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Lx3/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v8, v6}, LA3/D;->N0(LQ3/f;Ljava/lang/String;)Lcom/google/firebase/messaging/p;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v8, "method.declaredAnnotations"

    invoke-static {v8, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v8, v7

    const/4 v11, 0x0

    :goto_14
    if-ge v11, v8, :cond_26

    aget-object v13, v7, v11

    invoke-static {v2, v13}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v13}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v14

    invoke-static {v14}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v15

    move-object/from16 p1, v7

    new-instance v7, Lw3/a;

    invoke-direct {v7, v13}, Lw3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    move/from16 v20, v8

    iget-object v8, v6, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v8, LA3/D;

    iget-object v8, v8, LA3/D;->d:Ljava/lang/Object;

    check-cast v8, LJ3/d;

    move/from16 v21, v9

    iget-object v9, v6, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v8, v15, v7, v9}, LJ3/d;->l(LQ3/b;Lw3/a;Ljava/util/List;)LJ3/c;

    move-result-object v7

    if-eqz v7, :cond_25

    invoke-static {v7, v13, v14}, Lo3/f;->q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_25
    const/4 v7, 0x1

    add-int/2addr v11, v7

    move-object/from16 v7, p1

    move/from16 v8, v20

    move/from16 v9, v21

    goto :goto_14

    :cond_26
    move/from16 v21, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v8, "method.parameterAnnotations"

    invoke-static {v8, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, [[Ljava/lang/annotation/Annotation;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v8, :cond_29

    aget-object v11, v7, v9

    invoke-static {v12, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v13, v11

    const/4 v14, 0x0

    :goto_16
    if-ge v14, v13, :cond_28

    aget-object v15, v11, v14

    invoke-static {v15}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v16

    move-object/from16 p1, v7

    invoke-static/range {v16 .. v16}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v7

    move/from16 v16, v8

    invoke-static {v7}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v8

    move-object/from16 v20, v11

    new-instance v11, Lw3/a;

    invoke-direct {v11, v15}, Lw3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v6, v9, v8, v11}, Lcom/google/firebase/messaging/p;->N(ILQ3/b;Lw3/a;)LJ3/c;

    move-result-object v8

    if-eqz v8, :cond_27

    invoke-static {v8, v15, v7}, Lo3/f;->q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_27
    const/4 v7, 0x1

    add-int/2addr v14, v7

    move-object/from16 v7, p1

    move/from16 v8, v16

    move-object/from16 v11, v20

    goto :goto_16

    :cond_28
    move-object/from16 p1, v7

    move/from16 v16, v8

    const/4 v7, 0x1

    add-int/2addr v9, v7

    move-object/from16 v7, p1

    goto :goto_15

    :cond_29
    const/4 v7, 0x1

    invoke-virtual {v6}, Lcom/google/firebase/messaging/p;->d()V

    add-int/2addr v10, v7

    move v11, v7

    move-object/from16 v6, v19

    move/from16 v9, v21

    const/4 v8, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_12

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    const-string v7, "klass.declaredConstructors"

    invoke-static {v7, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v7, v6

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v7, :cond_32

    aget-object v9, v6, v8

    sget-object v10, LQ3/h;->e:LQ3/f;

    const-string v11, "constructor"

    invoke-static {v11, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 p0, v6

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    move/from16 v16, v7

    const-string v7, "constructor.parameterTypes"

    invoke-static {v7, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v7, v6

    move-object/from16 p1, v15

    const/4 v15, 0x0

    :goto_18
    if-ge v15, v7, :cond_2b

    move/from16 v19, v7

    aget-object v7, v6, v15

    invoke-static {v14, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v7}, Lx3/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    add-int/2addr v15, v7

    move/from16 v7, v19

    goto :goto_18

    :cond_2b
    const-string v6, ")V"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v10, v6}, LA3/D;->N0(LQ3/f;Ljava/lang/String;)Lcom/google/firebase/messaging/p;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v10, "constructor.declaredAnnotations"

    invoke-static {v10, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v10, v7

    const/4 v11, 0x0

    :goto_19
    if-ge v11, v10, :cond_2d

    aget-object v15, v7, v11

    invoke-static {v2, v15}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v15}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v19

    move-object/from16 v20, v7

    invoke-static/range {v19 .. v19}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v7

    move/from16 v19, v10

    invoke-static {v7}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v10

    move-object/from16 v21, v13

    new-instance v13, Lw3/a;

    invoke-direct {v13, v15}, Lw3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object/from16 v22, v14

    iget-object v14, v6, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v14, LA3/D;

    iget-object v14, v14, LA3/D;->d:Ljava/lang/Object;

    check-cast v14, LJ3/d;

    move-object/from16 v23, v1

    iget-object v1, v6, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v14, v10, v13, v1}, LJ3/d;->l(LQ3/b;Lw3/a;Ljava/util/List;)LJ3/c;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {v1, v15, v7}, Lo3/f;->q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_2c
    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v19

    move-object/from16 v7, v20

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v1, v23

    goto :goto_19

    :cond_2d
    move-object/from16 v23, v1

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    const/16 v17, 0x1

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v7, "parameterAnnotations"

    invoke-static {v7, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v7, v1

    if-nez v7, :cond_2e

    move/from16 v7, v17

    goto :goto_1a

    :cond_2e
    const/4 v7, 0x0

    :goto_1a
    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_31

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    array-length v9, v1

    sub-int/2addr v7, v9

    array-length v9, v1

    const/4 v10, 0x0

    :goto_1b
    if-ge v10, v9, :cond_31

    aget-object v11, v1, v10

    invoke-static {v12, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v13, v11

    const/4 v14, 0x0

    :goto_1c
    if-ge v14, v13, :cond_30

    aget-object v15, v11, v14

    invoke-static {v15}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v19

    move-object/from16 v20, v1

    invoke-static/range {v19 .. v19}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v1

    move/from16 v19, v9

    add-int v9, v10, v7

    move/from16 v24, v7

    invoke-static {v1}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v7

    move-object/from16 v25, v11

    new-instance v11, Lw3/a;

    invoke-direct {v11, v15}, Lw3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v6, v9, v7, v11}, Lcom/google/firebase/messaging/p;->N(ILQ3/b;Lw3/a;)LJ3/c;

    move-result-object v7

    if-eqz v7, :cond_2f

    invoke-static {v7, v15, v1}, Lo3/f;->q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_2f
    const/4 v1, 0x1

    add-int/2addr v14, v1

    move/from16 v9, v19

    move-object/from16 v1, v20

    move/from16 v7, v24

    move-object/from16 v11, v25

    goto :goto_1c

    :cond_30
    move-object/from16 v20, v1

    move/from16 v24, v7

    move/from16 v19, v9

    const/4 v1, 0x1

    add-int/2addr v10, v1

    move-object/from16 v1, v20

    goto :goto_1b

    :cond_31
    const/4 v1, 0x1

    invoke-virtual {v6}, Lcom/google/firebase/messaging/p;->d()V

    add-int/2addr v8, v1

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move/from16 v7, v16

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v1, v23

    goto/16 :goto_17

    :cond_32
    move-object/from16 v23, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "klass.declaredFields"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v1, :cond_36

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "field.type"

    invoke-static {v10, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9}, Lx3/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "desc"

    invoke-static {v10, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v8

    const-string v10, "name.asString()"

    invoke-static {v10, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v10, LJ3/r;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x23

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, LJ3/r;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v9, "field.declaredAnnotations"

    invoke-static {v9, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v9, v7

    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v9, :cond_34

    aget-object v12, v7, v11

    invoke-static {v2, v12}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v12}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v13

    invoke-static {v13}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v14

    new-instance v15, Lw3/a;

    invoke-direct {v15, v12}, Lw3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object/from16 p0, v0

    iget-object v0, v5, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, LJ3/d;

    invoke-virtual {v0, v14, v15, v8}, LJ3/d;->l(LQ3/b;Lw3/a;Ljava/util/List;)LJ3/c;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-static {v0, v12, v13}, Lo3/f;->q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_33
    const/4 v0, 0x1

    add-int/2addr v11, v0

    move-object/from16 v0, p0

    goto :goto_1e

    :cond_34
    move-object/from16 p0, v0

    const/4 v0, 0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v0

    if-eqz v7, :cond_35

    iget-object v7, v5, LA3/D;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    add-int/2addr v6, v0

    move-object/from16 v0, p0

    goto/16 :goto_1d

    :cond_36
    new-instance v0, LJ3/a;

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3, v4}, LJ3/a;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0

    :pswitch_10
    move-object v0, v1

    check-cast v0, Lr3/c;

    invoke-static {v10, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v0

    check-cast v12, Lu3/V;

    iget v1, v12, Lu3/V;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/V;

    check-cast v0, Lu3/W;

    invoke-virtual {v0}, Lu3/W;->e()Lh4/v;

    move-result-object v0

    const-string v1, "it.valueParameters[p.index].type"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :pswitch_11
    move-object v0, v1

    check-cast v0, LI3/a;

    invoke-static {v10, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, LI3/p;

    iget-boolean v1, v12, LI3/p;->b:Z

    iget-object v2, v0, LI3/a;->a:Lk4/c;

    if-eqz v1, :cond_38

    if-eqz v2, :cond_37

    invoke-static {v2}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-static {v1}, Li3/x;->k(Lh4/q;)LF3/f;

    move-result-object v1

    goto :goto_1f

    :cond_37
    move-object v1, v9

    :goto_1f
    if-eqz v1, :cond_38

    goto/16 :goto_22

    :cond_38
    if-eqz v2, :cond_3d

    invoke-static {v2}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object v1

    if-nez v1, :cond_3a

    invoke-static {v2}, Li3/x;->j(Lk4/c;)Lh4/q;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-static {v1}, Li3/x;->D0(Lh4/q;)Lh4/z;

    move-result-object v1

    if-nez v1, :cond_3a

    :cond_39
    invoke-static {v2}, Li3/x;->l(Lk4/c;)Lh4/z;

    move-result-object v1

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    :cond_3a
    invoke-static {v1}, Li3/x;->i1(Lk4/d;)Lh4/J;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-static {v1}, Li3/x;->U(Lh4/J;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Li3/x;->D(Lk4/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-static {v2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/N;

    check-cast v1, Lr3/Q;

    invoke-static {v2}, Li3/x;->z0(Lh4/N;)Z

    move-result v6

    iget-object v7, v0, LI3/a;->b:LA3/w;

    if-eqz v6, :cond_3b

    new-instance v2, LI3/a;

    invoke-direct {v2, v9, v7, v1}, LI3/a;-><init>(Lk4/c;LA3/w;Lr3/Q;)V

    goto :goto_21

    :cond_3b
    invoke-static {v2}, Li3/x;->b0(Lh4/N;)Lh4/Z;

    move-result-object v2

    new-instance v6, LI3/a;

    iget-object v8, v12, LI3/p;->d:Ljava/lang/Object;

    check-cast v8, LD3/e;

    iget-object v8, v8, LD3/e;->d:Ljava/lang/Object;

    check-cast v8, LD3/a;

    iget-object v8, v8, LD3/a;->q:LA3/c;

    invoke-virtual {v2}, Lh4/v;->t()Ls3/h;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, LA3/c;->b(LA3/w;Ljava/lang/Iterable;)LA3/w;

    move-result-object v7

    invoke-direct {v6, v2, v7, v1}, LI3/a;-><init>(Lk4/c;LA3/w;Lr3/Q;)V

    move-object v2, v6

    :goto_21
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3c
    move-object v9, v5

    :cond_3d
    :goto_22
    return-object v9

    :pswitch_12
    move-object v0, v1

    check-cast v0, Li4/f;

    invoke-static {v4, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Lr3/e;

    instance-of v0, v12, Lr3/e;

    if-eqz v0, :cond_3e

    goto :goto_23

    :cond_3e
    move-object v12, v9

    :goto_23
    if-eqz v12, :cond_3f

    invoke-static {v12}, LX3/f;->f(Lr3/g;)LQ3/b;

    :cond_3f
    return-object v9

    :pswitch_13
    move-object v0, v1

    check-cast v0, Li4/f;

    invoke-static {v10, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LE3/q;

    move-object v3, v12

    check-cast v3, LE3/j;

    iget-object v2, v3, LE3/j;->m:LD3/e;

    iget-object v1, v3, LE3/j;->l:Lr3/e;

    if-eqz v1, :cond_40

    const/4 v5, 0x1

    goto :goto_24

    :cond_40
    const/4 v5, 0x0

    :goto_24
    iget-object v4, v3, LE3/j;->k:Lx3/o;

    iget-object v6, v3, LE3/j;->t:LE3/q;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, LE3/q;-><init>(LD3/e;Lr3/e;Lx3/o;ZLE3/q;)V

    return-object v0

    :pswitch_14
    move-object v0, v1

    check-cast v0, Lx3/x;

    const-string v1, "m"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, LE3/a;

    iget-object v1, v12, LE3/a;->b:Lc3/b;

    invoke-interface {v1, v0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {v0}, Lx3/x;->a()Ljava/lang/reflect/Member;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "member.declaringClass"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {v0}, Lx3/w;->b()LQ3/f;

    move-result-object v1

    invoke-virtual {v1}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x69e9ad94

    if-eq v2, v3, :cond_47

    const v3, -0x4d378041

    if-eq v2, v3, :cond_42

    const v3, 0x8cdac1b

    if-eq v2, v3, :cond_41

    goto :goto_26

    :cond_41
    const-string v2, "hashCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_26

    :cond_42
    const-string v2, "equals"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_26

    :cond_43
    invoke-virtual {v0}, Lx3/x;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LR2/m;->d1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx3/D;

    if-eqz v0, :cond_44

    iget-object v0, v0, Lx3/D;->a:Lx3/B;

    goto :goto_25

    :cond_44
    move-object v0, v9

    :goto_25
    instance-of v1, v0, Lx3/q;

    if-eqz v1, :cond_45

    move-object v9, v0

    check-cast v9, Lx3/q;

    :cond_45
    if-nez v9, :cond_46

    goto :goto_26

    :cond_46
    iget-object v0, v9, Lx3/q;->b:Lx3/s;

    instance-of v1, v0, Lx3/o;

    if-eqz v1, :cond_49

    check-cast v0, Lx3/o;

    invoke-virtual {v0}, Lx3/o;->b()LQ3/c;

    move-result-object v0

    invoke-virtual {v0}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_27

    :cond_47
    const-string v2, "toString"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    :cond_48
    invoke-virtual {v0}, Lx3/x;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    goto :goto_27

    :cond_49
    :goto_26
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_4a

    const/4 v6, 0x1

    goto :goto_28

    :cond_4a
    const/4 v6, 0x0

    :goto_28
    if-nez v6, :cond_4b

    const/4 v8, 0x1

    goto :goto_29

    :cond_4b
    const/4 v8, 0x0

    :goto_29
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_15
    move-object v0, v1

    check-cast v0, Lx3/C;

    const-string v1, "typeParameter"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, LD3/f;

    iget-object v1, v12, LD3/f;->e:Ljava/io/Serializable;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v9, LE3/I;

    iget-object v2, v12, LD3/f;->c:Ljava/lang/Object;

    check-cast v2, LD3/e;

    const-string v3, "<this>"

    invoke-static {v3, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, LD3/e;

    iget-object v4, v2, LD3/e;->d:Ljava/lang/Object;

    check-cast v4, LD3/a;

    iget-object v2, v2, LD3/e;->f:Ljava/lang/Object;

    check-cast v2, LQ2/c;

    invoke-direct {v3, v4, v12, v2}, LD3/e;-><init>(LD3/a;LD3/g;LQ2/c;)V

    iget-object v2, v12, LD3/f;->d:Ljava/lang/Object;

    check-cast v2, Lr3/j;

    invoke-interface {v2}, Ls3/a;->t()Ls3/h;

    move-result-object v4

    invoke-static {v3, v4}, LL2/b;->f(LD3/e;Ls3/h;)LD3/e;

    move-result-object v3

    iget v4, v12, LD3/f;->b:I

    add-int/2addr v4, v1

    invoke-direct {v9, v3, v0, v4, v2}, LE3/I;-><init>(LD3/e;Lx3/C;ILr3/j;)V

    :cond_4c
    return-object v9

    :pswitch_16
    move-object v0, v1

    check-cast v0, Lx3/e;

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, LB3/e;->a:LQ3/f;

    check-cast v12, LD3/c;

    iget-object v1, v12, LD3/c;->c:LD3/e;

    iget-boolean v2, v12, LD3/c;->e:Z

    invoke-static {v1, v0, v2}, LB3/e;->b(LD3/e;Lx3/e;Z)LC3/h;

    move-result-object v0

    return-object v0

    :pswitch_17
    move-object v0, v1

    check-cast v0, LQ3/c;

    invoke-static {v10, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, LA3/D;

    iget-object v1, v12, LA3/D;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {v7, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4d
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQ3/c;

    invoke-static {v0, v4}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    const-string v5, "packageName"

    invoke-static {v5, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, LQ3/c;->d()Z

    move-result v5

    if-eqz v5, :cond_4e

    move-object v5, v9

    goto :goto_2b

    :cond_4e
    invoke-virtual {v0}, LQ3/c;->e()LQ3/c;

    move-result-object v5

    :goto_2b
    invoke-static {v5, v4}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    :cond_4f
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_50
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_51

    goto :goto_2c

    :cond_51
    move-object v2, v9

    :goto_2c
    if-nez v2, :cond_52

    goto :goto_2e

    :cond_52
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_53

    move-object v1, v9

    goto :goto_2d

    :cond_53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_2d

    :cond_54
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ3/c;

    invoke-static {v3, v0}, LL2/b;->L(LQ3/c;LQ3/c;)LQ3/c;

    move-result-object v3

    invoke-virtual {v3}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :cond_55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQ3/c;

    invoke-static {v5, v0}, LL2/b;->L(LQ3/c;LQ3/c;)LQ3/c;

    move-result-object v5

    invoke-virtual {v5}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_56

    move-object v1, v4

    move v3, v5

    :cond_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_55

    :goto_2d
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_57

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    :cond_57
    :goto_2e
    return-object v9

    :pswitch_18
    move-object v0, v1

    check-cast v0, Lr3/c;

    invoke-static {v10, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LA3/I;->j:Ljava/util/LinkedHashMap;

    check-cast v12, Lu3/N;

    invoke-static {v12}, LW1/a;->o(Lr3/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
