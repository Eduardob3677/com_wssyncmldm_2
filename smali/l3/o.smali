.class public final Ll3/o;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/r;


# direct methods
.method public synthetic constructor <init>(Ll3/r;I)V
    .locals 0

    iput p2, p0, Ll3/o;->d:I

    iput-object p1, p0, Ll3/o;->e:Ll3/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Ll3/o;->e:Ll3/r;

    const/4 v5, 0x1

    iget p0, p0, Ll3/o;->d:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {v4}, Ll3/r;->k()Lr3/c;

    move-result-object p0

    invoke-interface {p0}, Lr3/b;->u()Ljava/util/List;

    move-result-object p0

    const-string v0, "descriptor.typeParameters"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/Q;

    new-instance v2, Ll3/m0;

    const-string v3, "descriptor"

    invoke-static {v3, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v4, v1}, Ll3/m0;-><init>(Ll3/n0;Lr3/Q;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_0
    new-instance p0, Ll3/l0;

    invoke-virtual {v4}, Ll3/r;->k()Lr3/c;

    move-result-object v0

    invoke-interface {v0}, Lr3/b;->n()Lh4/v;

    move-result-object v0

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    new-instance v1, Ll3/o;

    invoke-direct {v1, v4, v2}, Ll3/o;-><init>(Ll3/r;I)V

    invoke-direct {p0, v0, v1}, Ll3/l0;-><init>(Lh4/v;Lc3/a;)V

    return-object p0

    :pswitch_1
    invoke-interface {v4}, Li3/b;->h()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v4}, Ll3/r;->g()Lm3/e;

    move-result-object p0

    invoke-interface {p0}, Lm3/e;->o()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LR2/m;->V0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    const-class v2, LU2/a;

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "continuationType.actualTypeArguments"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/i;->u0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/reflect/WildcardType;

    goto :goto_3

    :cond_3
    move-object p0, v1

    :goto_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, LR2/i;->n0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/Type;

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v4}, Ll3/r;->g()Lm3/e;

    move-result-object p0

    invoke-interface {p0}, Lm3/e;->n()Ljava/lang/reflect/Type;

    move-result-object v1

    :cond_5
    return-object v1

    :pswitch_2
    invoke-virtual {v4}, Ll3/r;->k()Lr3/c;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ll3/r;->n()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {p0}, Ll3/w0;->g(Lr3/b;)Lu3/w;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v7, Ll3/T;

    new-instance v8, Ll3/p;

    invoke-direct {v8, v6, v3}, Ll3/p;-><init>(Lu3/w;I)V

    invoke-direct {v7, v4, v3, v5, v8}, Ll3/T;-><init>(Ll3/r;IILc3/a;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v3

    :goto_4
    invoke-interface {p0}, Lr3/b;->d0()Lu3/w;

    move-result-object v7

    if-eqz v7, :cond_8

    new-instance v8, Ll3/T;

    add-int/lit8 v9, v6, 0x1

    new-instance v10, Ll3/p;

    invoke-direct {v10, v7, v5}, Ll3/p;-><init>(Lu3/w;I)V

    invoke-direct {v8, v4, v6, v0, v10}, Ll3/T;-><init>(Ll3/r;IILc3/a;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v9

    goto :goto_5

    :cond_7
    move v6, v3

    :cond_8
    :goto_5
    invoke-interface {p0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge v3, v0, :cond_9

    new-instance v7, Ll3/T;

    add-int/lit8 v8, v6, 0x1

    new-instance v9, Ll3/q;

    invoke-direct {v9, p0, v3}, Ll3/q;-><init>(Lr3/c;I)V

    invoke-direct {v7, v4, v6, v2, v9}, Ll3/T;-><init>(Ll3/r;IILc3/a;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v5

    move v6, v8

    goto :goto_6

    :cond_9
    invoke-virtual {v4}, Ll3/r;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of p0, p0, LC3/a;

    if-eqz p0, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v5, :cond_a

    new-instance p0, LF0/b;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, LF0/b;-><init>(I)V

    invoke-static {v1, p0}, LR2/r;->D0(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1

    :pswitch_3
    invoke-virtual {v4}, Ll3/r;->k()Lr3/c;

    move-result-object p0

    invoke-static {p0}, Ll3/w0;->d(Ls3/a;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {v4}, Ll3/r;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v4}, Li3/b;->h()Z

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {v4}, Ll3/r;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1f

    div-int/lit8 p0, p0, 0x20

    add-int v6, v2, p0

    add-int/2addr v6, v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ll3/r;->l()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li3/k;

    check-cast v7, Ll3/T;

    invoke-virtual {v7}, Ll3/T;->a()Lr3/I;

    move-result-object v8

    instance-of v9, v8, Lu3/V;

    if-eqz v9, :cond_c

    check-cast v8, Lu3/V;

    goto :goto_8

    :cond_c
    move-object v8, v1

    :goto_8
    if-eqz v8, :cond_d

    invoke-static {v8}, LX3/f;->a(Lu3/V;)Z

    move-result v8

    goto :goto_9

    :cond_d
    move v8, v3

    :goto_9
    iget v9, v7, Ll3/T;->b:I

    if-eqz v8, :cond_13

    invoke-virtual {v7}, Ll3/T;->c()Ll3/l0;

    move-result-object v8

    sget-object v10, Ll3/w0;->a:LQ3/c;

    iget-object v8, v8, Ll3/l0;->a:Lh4/v;

    if-eqz v8, :cond_e

    invoke-static {v8}, LT3/i;->c(Lh4/v;)Z

    move-result v8

    if-ne v8, v5, :cond_e

    goto :goto_d

    :cond_e
    invoke-virtual {v7}, Ll3/T;->c()Ll3/l0;

    move-result-object v7

    iget-object v8, v7, Ll3/l0;->b:Ll3/p0;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Type;

    goto :goto_a

    :cond_f
    move-object v10, v1

    :goto_a
    if-nez v10, :cond_12

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    goto :goto_b

    :cond_10
    move-object v8, v1

    :goto_b
    if-eqz v8, :cond_11

    move-object v10, v8

    goto :goto_c

    :cond_11
    invoke-static {v7, v3}, Li3/x;->r(Ld3/j;Z)Ljava/lang/reflect/Type;

    move-result-object v7

    move-object v10, v7

    :cond_12
    :goto_c
    invoke-static {v10}, Ll3/w0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    goto :goto_7

    :cond_13
    :goto_d
    invoke-virtual {v7}, Ll3/T;->a()Lr3/I;

    move-result-object v8

    instance-of v10, v8, Lu3/V;

    if-eqz v10, :cond_b

    check-cast v8, Lu3/V;

    iget-object v8, v8, Lu3/V;->l:Lh4/v;

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Ll3/T;->c()Ll3/l0;

    move-result-object v7

    invoke-static {v7}, LZ0/j;->K(Ld3/j;)Li3/c;

    move-result-object v7

    invoke-static {v7}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "type.jvmErasure.java.run\u2026\"\n            )\n        }"

    invoke-static {v8, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v6, v9

    goto/16 :goto_7

    :cond_14
    new-instance p0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot instantiate the default empty array of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", because it is not an array type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_15
    move v0, v3

    :goto_e
    if-ge v0, p0, :cond_16

    add-int v1, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    add-int/2addr v0, v5

    goto :goto_e

    :cond_16
    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
