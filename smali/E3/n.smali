.class public final LE3/n;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LD3/e;

.field public final synthetic f:LE3/q;


# direct methods
.method public constructor <init>(LD3/e;LE3/q;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LE3/n;->d:I

    iput-object p1, p0, LE3/n;->e:LD3/e;

    iput-object p2, p0, LE3/n;->f:LE3/q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(LE3/q;LD3/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LE3/n;->d:I

    iput-object p1, p0, LE3/n;->f:LE3/q;

    iput-object p2, p0, LE3/n;->e:LD3/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    iget v1, v0, LE3/n;->d:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, LE3/n;->e:LD3/e;

    iget-object v2, v1, LD3/e;->d:Ljava/lang/Object;

    check-cast v2, LD3/a;

    iget-object v2, v2, LD3/a;->x:LY3/e;

    iget-object v0, v0, LE3/n;->f:LE3/q;

    iget-object v0, v0, LE3/q;->n:Lr3/e;

    check-cast v2, LY3/a;

    invoke-virtual {v2, v1, v0}, LY3/a;->f(LD3/e;Lr3/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v8, v0, LE3/n;->f:LE3/q;

    iget-object v1, v8, LE3/q;->o:Lx3/o;

    iget-object v1, v1, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    const-string v2, "klass.declaredConstructors"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, LR2/i;->h0([Ljava/lang/Object;)Lr4/k;

    move-result-object v1

    sget-object v2, Lx3/j;->l:Lx3/j;

    new-instance v3, Lr4/f;

    const/4 v9, 0x0

    invoke-direct {v3, v1, v9, v2}, Lr4/f;-><init>(Lr4/k;ZLc3/b;)V

    sget-object v1, Lx3/k;->l:Lx3/k;

    invoke-static {v3, v1}, Lr4/m;->l(Lr4/k;Lc3/b;)Lr4/r;

    move-result-object v1

    invoke-static {v1}, Lr4/m;->n(Lr4/k;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v10, 0x1

    iget-object v11, v8, LE3/C;->b:LD3/e;

    iget-object v12, v8, LE3/q;->n:Lr3/e;

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx3/r;

    invoke-static {v11, v3}, LW1/a;->g0(LD3/e;LH3/b;)LD3/c;

    move-result-object v4

    iget-object v5, v11, LD3/e;->d:Ljava/lang/Object;

    check-cast v5, LD3/a;

    iget-object v6, v5, LD3/a;->j:Lw3/d;

    invoke-virtual {v6, v3}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v6

    invoke-static {v12, v4, v9, v6}, LC3/b;->h1(Lr3/e;Ls3/h;ZLw3/f;)LC3/b;

    move-result-object v4

    invoke-interface {v12}, Lr3/e;->s()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, LD3/f;

    invoke-direct {v7, v11, v4, v3, v6}, LD3/f;-><init>(LD3/e;Lr3/j;LH3/e;I)V

    new-instance v6, LD3/e;

    iget-object v11, v11, LD3/e;->f:Ljava/lang/Object;

    check-cast v11, LQ2/c;

    invoke-direct {v6, v5, v7, v11}, LD3/e;-><init>(LD3/a;LD3/g;LQ2/c;)V

    iget-object v5, v3, Lx3/r;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v7

    const-string v11, "types"

    invoke-static {v11, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v11, v7

    if-nez v11, :cond_0

    sget-object v5, LR2/u;->c:LR2/u;

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v11}, Ljava/lang/Class;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-nez v11, :cond_1

    array-length v11, v7

    invoke-static {v7, v10, v11}, LR2/i;->l0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/reflect/Type;

    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v10

    array-length v11, v10

    array-length v13, v7

    if-lt v11, v13, :cond_4

    array-length v11, v10

    array-length v13, v7

    if-le v11, v13, :cond_2

    array-length v11, v10

    array-length v13, v7

    sub-int/2addr v11, v13

    array-length v13, v10

    invoke-static {v10, v11, v13}, LR2/i;->l0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/annotation/Annotation;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v5

    invoke-virtual {v3, v7, v10, v5}, Lx3/w;->c([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/ArrayList;

    move-result-object v5

    :goto_1
    invoke-static {v6, v4, v5}, LE3/C;->u(LD3/e;Lu3/v;Ljava/util/List;)LB1/c;

    move-result-object v5

    invoke-interface {v12}, Lr3/e;->s()Ljava/util/List;

    move-result-object v7

    const-string v10, "classDescriptor.declaredTypeParameters"

    invoke-static {v10, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lx3/r;->u()Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lx3/C;

    iget-object v14, v6, LD3/e;->e:Ljava/lang/Object;

    check-cast v14, LD3/g;

    invoke-interface {v14, v13}, LD3/g;->a(Lx3/C;)Lr3/Q;

    move-result-object v13

    invoke-static {v13}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v7, v11}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v3}, Lx3/w;->d()Lr3/f0;

    move-result-object v3

    invoke-static {v3}, LL2/b;->O(Lr3/f0;)LA3/p;

    move-result-object v3

    iget-object v10, v5, LB1/c;->e:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    invoke-virtual {v4, v10, v3, v7}, Lu3/k;->f1(Ljava/util/List;LA3/p;Ljava/util/List;)V

    invoke-virtual {v4, v9}, LC3/b;->Y0(Z)V

    iget-boolean v3, v5, LB1/c;->d:Z

    invoke-virtual {v4, v3}, LC3/b;->Z0(Z)V

    invoke-interface {v12}, Lr3/e;->q()Lh4/z;

    move-result-object v3

    invoke-virtual {v4, v3}, Lu3/v;->a1(Lh4/z;)V

    iget-object v3, v6, LD3/e;->d:Ljava/lang/Object;

    check-cast v3, LD3/a;

    iget-object v3, v3, LD3/a;->g:LB3/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal generic signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v1, v8, LE3/q;->o:Lx3/o;

    invoke-virtual {v1}, Lx3/o;->e()Z

    move-result v3

    sget-object v4, Ls3/g;->a:Ls3/f;

    const-string v7, "PROTECTED_AND_PACKAGE"

    const-string v6, "classDescriptor.visibility"

    const/4 v5, 0x6

    const/4 v15, 0x2

    const/4 v14, 0x0

    iget-object v0, v0, LE3/n;->e:LD3/e;

    if-eqz v3, :cond_b

    iget-object v3, v11, LD3/e;->d:Ljava/lang/Object;

    check-cast v3, LD3/a;

    iget-object v3, v3, LD3/a;->j:Lw3/d;

    invoke-virtual {v3, v1}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v3

    invoke-static {v12, v4, v10, v3}, LC3/b;->h1(Lr3/e;Ls3/h;ZLw3/f;)LC3/b;

    move-result-object v3

    invoke-virtual {v1}, Lx3/o;->d()Ljava/util/ArrayList;

    move-result-object v13

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v25, v8

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v15, v9, v9, v14, v5}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v8

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move/from16 v16, v9

    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v27, v16, 0x1

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lx3/A;

    invoke-virtual {v13}, Lx3/A;->e()LH3/d;

    move-result-object v14

    iget-object v15, v11, LD3/e;->h:Ljava/lang/Object;

    check-cast v15, Lcom/google/firebase/messaging/p;

    invoke-virtual {v15, v14, v8}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v19

    new-instance v15, Lu3/V;

    invoke-virtual {v13}, Lx3/w;->b()LQ3/f;

    move-result-object v20

    iget-object v14, v11, LD3/e;->d:Ljava/lang/Object;

    check-cast v14, LD3/a;

    iget-object v14, v14, LD3/a;->j:Lw3/d;

    invoke-virtual {v14, v13}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v24

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v13, v15

    move-object v14, v3

    move-object v5, v15

    move-object/from16 v15, v21

    move-object/from16 v17, v4

    move-object/from16 v18, v20

    move/from16 v20, v28

    move/from16 v21, v29

    invoke-direct/range {v13 .. v24}, Lu3/V;-><init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v27

    const/4 v5, 0x6

    const/4 v14, 0x0

    const/4 v15, 0x2

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v9}, LC3/b;->Z0(Z)V

    invoke-interface {v12}, Lr3/e;->c()LA3/p;

    move-result-object v5

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, LA3/q;->b:LA3/p;

    invoke-static {v5, v8}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v5, LA3/q;->c:LA3/p;

    invoke-static {v7, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v3, v10, v5}, Lu3/k;->e1(Ljava/util/List;LA3/p;)V

    invoke-virtual {v3, v9}, LC3/b;->Y0(Z)V

    invoke-interface {v12}, Lr3/e;->q()Lh4/z;

    move-result-object v5

    invoke-virtual {v3, v5}, Lu3/v;->a1(Lh4/z;)V

    const/4 v5, 0x2

    invoke-static {v3, v5}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lu3/k;

    invoke-static {v13, v5}, LW1/a;->n(Lr3/s;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    const/4 v5, 0x2

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v3, LD3/a;

    iget-object v3, v3, LD3/a;->g:LB3/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :cond_b
    move-object/from16 v25, v8

    :goto_6
    iget-object v3, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v3, LD3/a;

    iget-object v3, v3, LD3/a;->x:LY3/e;

    check-cast v3, LY3/a;

    invoke-virtual {v3, v0, v12, v2}, LY3/a;->a(LD3/e;Lr3/e;Ljava/util/ArrayList;)V

    iget-object v3, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v3, LD3/a;

    iget-object v8, v3, LD3/a;->r:Ls2/c;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v2, v1, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isAnnotation()Z

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    if-nez v3, :cond_c

    move-object/from16 v17, v0

    const/4 v14, 0x0

    goto/16 :goto_f

    :cond_c
    iget-object v2, v11, LD3/e;->d:Ljava/lang/Object;

    check-cast v2, LD3/a;

    iget-object v2, v2, LD3/a;->j:Lw3/d;

    invoke-virtual {v2, v1}, Lw3/d;->c(LH3/c;)Lw3/f;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v12, v4, v5, v2}, LC3/b;->h1(Lr3/e;Ls3/h;ZLw3/f;)LC3/b;

    move-result-object v14

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Lx3/o;->c()Ljava/util/List;

    move-result-object v1

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v5, v9, v4, v2}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v13

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lx3/x;

    invoke-virtual {v5}, Lx3/w;->b()LQ3/f;

    move-result-object v5

    sget-object v9, LA3/z;->b:LQ3/f;

    invoke-static {v5, v9}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    const/4 v9, 0x0

    goto :goto_7

    :cond_d
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    invoke-static {v2}, LR2/m;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lx3/x;

    iget-object v1, v11, LD3/e;->h:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/google/firebase/messaging/p;

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Lx3/x;->e()Lx3/B;

    move-result-object v1

    instance-of v2, v1, Lx3/i;

    if-eqz v2, :cond_f

    new-instance v2, LQ2/e;

    check-cast v1, Lx3/i;

    const/4 v3, 0x1

    invoke-virtual {v5, v1, v13, v3}, Lcom/google/firebase/messaging/p;->I(Lx3/i;LF3/a;Z)Lh4/Z;

    move-result-object v4

    iget-object v1, v1, Lx3/i;->b:Lx3/B;

    invoke-virtual {v5, v1, v13}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v1

    invoke-direct {v2, v4, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    new-instance v2, LQ2/e;

    invoke-virtual {v5, v1, v13}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v1

    invoke-direct {v2, v1, v4}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_9
    iget-object v1, v2, LQ2/e;->c:Ljava/lang/Object;

    move-object/from16 v17, v1

    check-cast v17, Lh4/v;

    iget-object v1, v2, LQ2/e;->d:Ljava/lang/Object;

    move-object/from16 v18, v1

    check-cast v18, Lh4/v;

    const/4 v4, 0x0

    move-object/from16 v1, v25

    move-object v2, v10

    move-object v3, v14

    move-object/from16 v30, v5

    move-object v5, v9

    move-object/from16 v31, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, LE3/q;->x(Ljava/util/ArrayList;LC3/b;ILx3/x;Lh4/v;Lh4/v;)V

    goto :goto_a

    :cond_10
    move-object/from16 v17, v0

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object v0, v7

    :goto_a
    if-eqz v9, :cond_11

    const/4 v9, 0x1

    goto :goto_b

    :cond_11
    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v18, v1, 0x1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lx3/x;

    invoke-virtual {v5}, Lx3/x;->e()Lx3/B;

    move-result-object v2

    move-object/from16 v7, v30

    invoke-virtual {v7, v2, v13}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v6

    add-int v4, v1, v9

    const/16 v19, 0x0

    move-object/from16 v1, v25

    move-object v2, v10

    move-object v3, v14

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, LE3/q;->x(Ljava/util/ArrayList;LC3/b;ILx3/x;Lh4/v;Lh4/v;)V

    move/from16 v1, v18

    move-object/from16 v30, v20

    goto :goto_c

    :cond_12
    :goto_d
    const/4 v1, 0x0

    goto :goto_e

    :cond_13
    move-object/from16 v17, v0

    move-object/from16 v31, v6

    move-object v0, v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    goto :goto_d

    :goto_e
    invoke-virtual {v14, v1}, LC3/b;->Z0(Z)V

    invoke-interface {v12}, Lr3/e;->c()LA3/p;

    move-result-object v1

    move-object/from16 v2, v31

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, LA3/q;->b:LA3/p;

    invoke-static {v1, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v1, LA3/q;->c:LA3/p;

    invoke-static {v0, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {v14, v10, v1}, Lu3/k;->e1(Ljava/util/List;LA3/p;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, LC3/b;->Y0(Z)V

    invoke-interface {v12}, Lr3/e;->q()Lh4/z;

    move-result-object v0

    invoke-virtual {v14, v0}, Lu3/v;->a1(Lh4/z;)V

    iget-object v0, v11, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->g:LB3/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_f
    invoke-static {v14}, LR2/n;->z0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v17

    :cond_15
    invoke-virtual {v8, v0, v2}, Ls2/c;->j(LD3/e;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
