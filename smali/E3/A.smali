.class public final LE3/A;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LE3/C;


# direct methods
.method public synthetic constructor <init>(LE3/C;I)V
    .locals 0

    iput p2, p0, LE3/A;->d:I

    iput-object p1, p0, LE3/A;->e:LE3/C;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, v0, LE3/A;->e:LE3/C;

    const-string v4, "name"

    iget v0, v0, LE3/A;->d:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, LQ3/f;

    invoke-static {v4, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v3, LE3/C;->g:Lg4/j;

    invoke-virtual {v2, v0}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v1}, LE3/C;->n(LQ3/f;Ljava/util/ArrayList;)V

    invoke-virtual {v3}, LE3/C;->q()Lr3/j;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, LT3/e;->o(Lr3/j;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v3, LE3/C;->b:LD3/e;

    iget-object v2, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v2, LD3/a;

    iget-object v2, v2, LD3/a;->r:Ls2/c;

    invoke-virtual {v2, v0, v1}, Ls2/c;->j(LD3/e;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, LQ3/f;

    invoke-static {v4, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Ljava/util/LinkedHashSet;

    iget-object v5, v3, LE3/C;->f:Lg4/e;

    invoke-virtual {v5, v0}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lu3/N;

    invoke-static {v8, v1}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v2, :cond_3

    sget-object v6, LE3/k;->f:LE3/k;

    invoke-static {v5, v6}, Li3/x;->Z0(Ljava/util/Collection;Lc3/b;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v4, v0}, LE3/C;->m(Ljava/util/LinkedHashSet;LQ3/f;)V

    iget-object v0, v3, LE3/C;->b:LD3/e;

    iget-object v1, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->r:Ls2/c;

    invoke-virtual {v1, v0, v4}, Ls2/c;->j(LD3/e;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, LQ3/f;

    invoke-static {v4, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v3, LE3/C;->c:LE3/C;

    if-eqz v1, :cond_5

    iget-object v1, v1, LE3/C;->f:Lg4/e;

    invoke-virtual {v1, v0}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v3, LE3/C;->e:Lg4/i;

    invoke-virtual {v2}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE3/c;

    invoke-interface {v2, v0}, LE3/c;->f(LQ3/f;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx3/x;

    invoke-virtual {v3, v4}, LE3/C;->t(Lx3/x;)LC3/f;

    move-result-object v4

    invoke-virtual {v3, v4}, LE3/C;->r(LC3/f;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v3, LE3/C;->b:LD3/e;

    iget-object v5, v5, LD3/e;->d:Ljava/lang/Object;

    check-cast v5, LD3/a;

    iget-object v5, v5, LD3/a;->g:LB3/j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v3, v0, v1}, LE3/C;->j(LQ3/f;Ljava/util/ArrayList;)V

    move-object v0, v1

    :goto_4
    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, LQ3/f;

    invoke-static {v4, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v3, LE3/C;->c:LE3/C;

    if-eqz v4, :cond_8

    iget-object v1, v4, LE3/C;->g:Lg4/j;

    invoke-virtual {v1, v0}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/K;

    goto/16 :goto_b

    :cond_8
    iget-object v4, v3, LE3/C;->e:Lg4/i;

    invoke-virtual {v4}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LE3/c;

    invoke-interface {v4, v0}, LE3/c;->c(LQ3/f;)Lx3/u;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_15

    iget-object v5, v0, Lx3/u;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v0}, Lx3/u;->a()Ljava/lang/reflect/Member;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    xor-int/lit8 v10, v6, 0x1

    iget-object v6, v3, LE3/C;->b:LD3/e;

    invoke-static {v6, v0}, LW1/a;->g0(LD3/e;LH3/b;)LD3/c;

    move-result-object v8

    invoke-virtual {v3}, LE3/C;->q()Lr3/j;

    move-result-object v7

    invoke-virtual {v0}, Lx3/w;->d()Lr3/f0;

    move-result-object v9

    invoke-static {v9}, LL2/b;->O(Lr3/f0;)LA3/p;

    move-result-object v9

    invoke-virtual {v0}, Lx3/w;->b()LQ3/f;

    move-result-object v11

    iget-object v12, v6, LD3/e;->d:Ljava/lang/Object;

    move-object v14, v12

    check-cast v14, LD3/a;

    iget-object v12, v14, LD3/a;->j:Lw3/d;

    invoke-virtual {v12, v0}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v12

    invoke-virtual {v0}, Lx3/u;->a()Ljava/lang/reflect/Member;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Field;

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v13

    const/4 v15, 0x0

    if-eqz v13, :cond_9

    invoke-virtual {v0}, Lx3/u;->a()Ljava/lang/reflect/Member;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Field;

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-eqz v13, :cond_9

    move v13, v2

    goto :goto_5

    :cond_9
    move v13, v15

    :goto_5
    invoke-static/range {v7 .. v13}, LC3/g;->Z0(Lr3/j;LD3/c;LA3/p;ZLQ3/f;Lw3/f;Z)LC3/g;

    move-result-object v7

    invoke-virtual {v7, v4, v4, v4, v4}, Lu3/K;->V0(Lu3/L;Lu3/M;Lu3/t;Lu3/t;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    const-string v8, "member.genericType"

    invoke-static {v8, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v8, v5, Ljava/lang/Class;

    if-eqz v8, :cond_a

    move-object v9, v5

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v5, Lx3/z;

    invoke-direct {v5, v9}, Lx3/z;-><init>(Ljava/lang/Class;)V

    goto :goto_8

    :cond_a
    instance-of v9, v5, Ljava/lang/reflect/GenericArrayType;

    if-nez v9, :cond_d

    if-eqz v8, :cond_b

    move-object v8, v5

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_7

    :cond_b
    instance-of v8, v5, Ljava/lang/reflect/WildcardType;

    if-eqz v8, :cond_c

    new-instance v8, Lx3/E;

    check-cast v5, Ljava/lang/reflect/WildcardType;

    invoke-direct {v8, v5}, Lx3/E;-><init>(Ljava/lang/reflect/WildcardType;)V

    :goto_6
    move-object v5, v8

    goto :goto_8

    :cond_c
    new-instance v8, Lx3/q;

    invoke-direct {v8, v5}, Lx3/q;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_6

    :cond_d
    :goto_7
    new-instance v8, Lx3/i;

    invoke-direct {v8, v5}, Lx3/i;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_6

    :goto_8
    const/4 v8, 0x7

    invoke-static {v1, v15, v15, v4, v8}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v1

    iget-object v6, v6, LD3/e;->h:Ljava/lang/Object;

    check-cast v6, Lcom/google/firebase/messaging/p;

    invoke-virtual {v6, v5, v1}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v1

    invoke-static {v1}, Lo3/i;->F(Lh4/v;)Z

    move-result v5

    if-nez v5, :cond_e

    sget-object v5, Lo3/m;->f:LQ3/e;

    invoke-static {v1, v5}, Lo3/i;->D(Lh4/v;LQ3/e;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    invoke-virtual {v0}, Lx3/u;->a()Ljava/lang/reflect/Member;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v0}, Lx3/u;->a()Ljava/lang/reflect/Member;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    :cond_f
    sget-object v21, LR2/u;->c:LR2/u;

    invoke-virtual {v3}, LE3/C;->p()Lu3/w;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v18, v21

    invoke-virtual/range {v16 .. v21}, Lu3/K;->Y0(Lh4/v;Ljava/util/List;Lu3/w;Lu3/w;Ljava/util/List;)V

    invoke-virtual {v7}, Lu3/W;->e()Lh4/v;

    move-result-object v1

    if-eqz v1, :cond_14

    sget v5, LT3/e;->a:I

    iget-boolean v5, v7, Lu3/K;->h:Z

    if-nez v5, :cond_13

    invoke-static {v1}, Lh4/c;->i(Lh4/v;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_a

    :cond_10
    invoke-static {v1}, Lh4/X;->b(Lh4/v;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_9

    :cond_11
    invoke-static {v7}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object v5

    invoke-static {v1}, Lo3/i;->F(Lh4/v;)Z

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Li4/d;->a:Li4/l;

    invoke-virtual {v5}, Lo3/i;->u()Lh4/z;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Li4/l;->a(Lh4/v;Lh4/v;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "Number"

    invoke-virtual {v5, v8}, Lo3/i;->j(Ljava/lang/String;)Lr3/e;

    move-result-object v8

    invoke-interface {v8}, Lr3/e;->q()Lh4/z;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Li4/l;->a(Lh4/v;Lh4/v;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v5}, Lo3/i;->e()Lh4/z;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, Li4/l;->a(Lh4/v;Lh4/v;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static {v1}, Lo3/r;->a(Lh4/v;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    :goto_9
    new-instance v1, LE3/B;

    invoke-direct {v1, v3, v0, v7, v2}, LE3/B;-><init>(LE3/C;Lx3/u;Lu3/K;I)V

    invoke-virtual {v7, v4, v1}, Lu3/K;->W0(Lg4/h;Lc3/a;)V

    :cond_13
    :goto_a
    iget-object v0, v14, LD3/a;->g:LB3/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v7

    goto :goto_b

    :cond_14
    const/16 v0, 0x43

    invoke-static {v0}, LT3/e;->a(I)V

    throw v4

    :cond_15
    move-object v0, v4

    :goto_b
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
