.class public final LB3/k;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB3/k;->d:I

    iput-object p2, p0, LB3/k;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 15

    sget-object v0, LR2/v;->c:LR2/v;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, LB3/k;->e:Ljava/lang/Object;

    iget p0, p0, LB3/k;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast v5, Ls3/j;

    iget-object p0, v5, Ls3/j;->a:Lo3/i;

    iget-object v0, v5, Ls3/j;->b:LQ3/c;

    invoke-virtual {p0, v0}, Lo3/i;->i(LQ3/c;)Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->q()Lh4/z;

    move-result-object p0

    return-object p0

    :pswitch_0
    return-object v5

    :pswitch_1
    check-cast v5, Lr3/L;

    iget-object p0, v5, Lr3/L;->b:Lc3/b;

    iget-object v0, v5, Lr3/L;->c:Li4/f;

    invoke-interface {p0, v0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La4/o;

    return-object p0

    :pswitch_2
    check-cast v5, Lq3/j;

    iget-object p0, v5, Lq3/j;->f:Lc3/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq3/h;

    iput-object v4, v5, Lq3/j;->f:Lc3/a;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "JvmBuiltins instance has not been initialized properly"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_3
    check-cast v5, Lr3/x;

    sget-object p0, Lo3/n;->h:LQ3/c;

    invoke-interface {v5, p0}, Lr3/x;->a0(LQ3/c;)Lr3/H;

    move-result-object p0

    check-cast p0, Lu3/y;

    iget-object p0, p0, Lu3/y;->i:La4/k;

    return-object p0

    :pswitch_4
    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, [Z

    if-eqz v3, :cond_1

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_1

    :cond_1
    instance-of v3, v0, [C

    if-eqz v3, :cond_2

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    goto :goto_1

    :cond_2
    instance-of v3, v0, [B

    if-eqz v3, :cond_3

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_1

    :cond_3
    instance-of v3, v0, [S

    if-eqz v3, :cond_4

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    goto :goto_1

    :cond_4
    instance-of v3, v0, [I

    if-eqz v3, :cond_5

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_1

    :cond_5
    instance-of v3, v0, [F

    if-eqz v3, :cond_6

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_1

    :cond_6
    instance-of v3, v0, [J

    if-eqz v3, :cond_7

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_1

    :cond_7
    instance-of v3, v0, [D

    if-eqz v3, :cond_8

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_1

    :cond_8
    instance-of v3, v0, [Ljava/lang/Object;

    if-eqz v3, :cond_9

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7f

    xor-int/2addr v0, v1

    add-int/2addr v2, v0

    goto/16 :goto_0

    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast v5, Ll3/m0;

    iget-object p0, v5, Ll3/m0;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    const-string v0, "descriptor.upperBounds"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/v;

    new-instance v2, Ll3/l0;

    invoke-direct {v2, v1, v4}, Ll3/l0;-><init>(Lh4/v;Lc3/a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    return-object v0

    :pswitch_6
    new-instance p0, Ll3/J;

    check-cast v5, Ll3/K;

    invoke-direct {p0, v5}, Ll3/J;-><init>(Ll3/K;)V

    return-object p0

    :pswitch_7
    new-instance p0, Ll3/H;

    check-cast v5, Ll3/I;

    invoke-direct {p0, v5}, Ll3/H;-><init>(Ll3/I;)V

    return-object p0

    :pswitch_8
    new-instance p0, Ll3/F;

    check-cast v5, Ll3/G;

    invoke-direct {p0, v5}, Ll3/F;-><init>(Ll3/G;)V

    return-object p0

    :pswitch_9
    check-cast v5, Ll3/C;

    invoke-interface {v5}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ll3/o0;->a(Ljava/lang/Class;)Lw3/e;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast v5, Li4/i;

    iget-object p0, v5, Li4/i;->b:Lc3/a;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/util/List;

    :cond_c
    return-object v4

    :pswitch_b
    sget-object p0, Lj4/h;->A:Lj4/h;

    check-cast v5, Lcom/google/firebase/messaging/p;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast v5, Lh4/E;

    iget-object p0, v5, Lh4/E;->a:Lr3/Q;

    invoke-static {p0}, Lh4/c;->r(Lr3/Q;)Lh4/v;

    move-result-object p0

    return-object p0

    :pswitch_d
    new-instance p0, Lh4/e;

    check-cast v5, Lh4/g;

    invoke-virtual {v5}, Lh4/g;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lh4/e;-><init>(Ljava/util/Collection;)V

    return-object p0

    :pswitch_e
    check-cast v5, Lf4/u;

    iget-object p0, v5, Lf4/u;->m:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->e:Ld4/a;

    iget-object v1, v5, Lf4/u;->n:LL3/W;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast p0, LN3/f;

    invoke-interface {v0, v1, p0}, Ld4/c;->a0(LL3/W;LN3/f;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast v5, Lf4/p;

    invoke-virtual {v5}, Lf4/p;->n()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v5}, Lf4/p;->m()Ljava/util/Set;

    move-result-object v0

    iget-object v1, v5, Lf4/p;->c:Lf4/o;

    iget-object v1, v1, Lf4/o;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, p0}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v4

    :goto_3
    return-object v4

    :pswitch_10
    check-cast v5, Lcom/google/firebase/messaging/p;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v5, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v0, Lf4/i;

    iget-object v2, v0, Lf4/i;->p:LE3/h;

    invoke-virtual {v2}, Lh4/g;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/v;

    invoke-virtual {v3}, Lh4/v;->q0()La4/o;

    move-result-object v3

    invoke-static {v3, v4, v1}, Li3/x;->H(La4/q;La4/f;I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr3/j;

    instance-of v6, v5, Lu3/N;

    if-nez v6, :cond_10

    instance-of v6, v5, Lr3/K;

    if-eqz v6, :cond_f

    :cond_10
    invoke-interface {v5}, Lr3/j;->getName()LQ3/f;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    iget-object v1, v0, Lf4/i;->g:LL3/j;

    iget-object v2, v1, LL3/j;->s:Ljava/util/List;

    const-string v3, "classProto.functionList"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, v0, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/y;

    iget-object v4, v4, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v4, LN3/f;

    iget v3, v3, LL3/y;->h:I

    invoke-static {v4, v3}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    iget-object v0, v1, LL3/j;->t:Ljava/util/List;

    const-string v1, "classProto.propertyList"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/G;

    iget-object v2, v4, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v2, LN3/f;

    iget v1, v1, LL3/G;->h:I

    invoke-static {v2, v1}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    invoke-static {p0, p0}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast v5, Le4/c;

    iget-object p0, v5, Le4/c;->l:Lcom/google/firebase/messaging/p;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LQ3/b;

    iget-object v4, v2, LQ3/b;->b:LQ3/c;

    invoke-virtual {v4}, LQ3/c;->e()LQ3/c;

    move-result-object v4

    invoke-virtual {v4}, LQ3/c;->d()Z

    move-result v4

    xor-int/2addr v4, v3

    if-nez v4, :cond_14

    sget-object v4, Ld4/g;->c:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ3/b;

    invoke-virtual {v1}, LQ3/b;->j()LQ3/f;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    return-object p0

    :pswitch_12
    check-cast v5, Landroidx/lifecycle/d0;

    invoke-static {v5}, Landroidx/lifecycle/S;->f(Landroidx/lifecycle/d0;)Landroidx/lifecycle/U;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast v5, La4/t;

    iget-object p0, v5, La4/t;->b:La4/o;

    invoke-static {p0, v4, v1}, Li3/x;->H(La4/q;La4/f;I)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v5, p0}, La4/t;->h(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast v5, La4/h;

    invoke-virtual {v5}, La4/h;->h()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v5, La4/h;->b:Lr3/e;

    invoke-interface {v2}, Lr3/g;->H()Lh4/J;

    move-result-object v2

    invoke-interface {v2}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "containingClass.typeConstructor.supertypes"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh4/v;

    invoke-virtual {v6}, Lh4/v;->q0()La4/o;

    move-result-object v6

    invoke-static {v6, v4, v1}, Li3/x;->H(La4/q;La4/f;I)Ljava/util/Collection;

    move-result-object v6

    invoke-static {v3, v6}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_9

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lr3/c;

    if-eqz v4, :cond_18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_19
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lr3/c;

    invoke-interface {v4}, Lr3/j;->getName()LQ3/f;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1b
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ3/f;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lr3/c;

    instance-of v7, v7, Lr3/s;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1d

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1e
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/util/List;

    sget-object v4, LT3/n;->d:LT3/n;

    if-eqz v6, :cond_21

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1f
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lr3/s;

    check-cast v10, Lu3/o;

    invoke-virtual {v10}, Lu3/o;->getName()LQ3/f;

    move-result-object v10

    invoke-static {v10, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_20
    :goto_f
    move-object v9, v6

    goto :goto_10

    :cond_21
    sget-object v6, LR2/u;->c:LR2/u;

    goto :goto_f

    :goto_10
    new-instance v11, La4/g;

    invoke-direct {v11, v0, v5}, La4/g;-><init>(Ljava/util/ArrayList;La4/h;)V

    iget-object v10, v5, La4/h;->b:Lr3/e;

    move-object v6, v4

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, LT3/n;->h(LQ3/f;Ljava/util/Collection;Ljava/util/Collection;Lr3/e;Lf1/a;)V

    goto :goto_d

    :cond_22
    invoke-static {v0}, Lq4/k;->e(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast v5, LV3/m;

    iget-object p0, v5, LV3/m;->b:Lr3/x;

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    const-string v0, "Comparable"

    invoke-virtual {p0, v0}, Lo3/i;->j(Ljava/lang/String;)Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->q()Lh4/z;

    move-result-object p0

    const-string v0, "builtIns.comparable.defaultType"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lh4/O;

    iget-object v1, v5, LV3/m;->d:Lh4/z;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lh4/O;-><init>(ILh4/v;)V

    invoke-static {v0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, v4, v2}, Lh4/c;->p(Lh4/z;Ljava/util/List;Lh4/G;I)Lh4/z;

    move-result-object p0

    filled-new-array {p0}, [Lh4/z;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, LR2/g;

    invoke-direct {v1, p0, v3}, LR2/g;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, v5, LV3/m;->b:Lr3/x;

    const-string v1, "<this>"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lo3/k;->l:Lo3/k;

    invoke-virtual {v1, v2}, Lo3/i;->s(Lo3/k;)Lh4/z;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lo3/k;->n:Lo3/k;

    invoke-virtual {v2, v6}, Lo3/i;->s(Lo3/k;)Lh4/z;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lo3/k;->j:Lo3/k;

    invoke-virtual {v6, v7}, Lo3/i;->s(Lo3/k;)Lh4/z;

    move-result-object v6

    if-eqz v6, :cond_28

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lo3/k;->k:Lo3/k;

    invoke-virtual {v7, v8}, Lo3/i;->s(Lo3/k;)Lh4/z;

    move-result-object v7

    if-eqz v7, :cond_27

    filled-new-array {v1, v2, v6, v7}, [Lh4/z;

    move-result-object v1

    invoke-static {v1}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_11

    :cond_23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/v;

    iget-object v6, v5, LV3/m;->c:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-nez v2, :cond_24

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    const-string v1, "Number"

    invoke-virtual {p0, v1}, Lo3/i;->j(Ljava/lang/String;)Lr3/e;

    move-result-object p0

    invoke-interface {p0}, Lr3/e;->q()Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    const/16 p0, 0x37

    invoke-static {p0}, Lo3/i;->a(I)V

    throw v4

    :cond_26
    :goto_11
    return-object v0

    :cond_27
    const/16 p0, 0x39

    invoke-static {p0}, Lo3/i;->a(I)V

    throw v4

    :cond_28
    const/16 p0, 0x38

    invoke-static {p0}, Lo3/i;->a(I)V

    throw v4

    :cond_29
    const/16 p0, 0x3b

    invoke-static {p0}, Lo3/i;->a(I)V

    throw v4

    :cond_2a
    const/16 p0, 0x3a

    invoke-static {p0}, Lo3/i;->a(I)V

    throw v4

    :pswitch_16
    check-cast v5, Lh4/N;

    invoke-virtual {v5}, Lh4/N;->b()Lh4/v;

    move-result-object p0

    const-string v0, "this@createCapturedIfNeeded.type"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :pswitch_17
    check-cast v5, LS3/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v5, LS3/g;->a:LS3/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LS3/k;

    invoke-direct {v0}, LS3/k;-><init>()V

    const-class v1, LS3/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    const-string v6, "this::class.java.declaredFields"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v6, v5

    move v7, v2

    :goto_12
    if-ge v7, v6, :cond_2f

    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_2e

    invoke-virtual {v8, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, LS3/j;

    if-eqz v10, :cond_2b

    check-cast v9, LS3/j;

    goto :goto_13

    :cond_2b
    move-object v9, v4

    :goto_13
    if-nez v9, :cond_2c

    goto :goto_14

    :cond_2c
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "field.name"

    invoke-static {v11, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v12, "is"

    invoke-static {v10, v12}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v10, Ld3/q;->a:Ld3/r;

    invoke-virtual {v10, v1}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "get"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2d

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "this as java.lang.String).substring(startIndex)"

    invoke-static {v14, v13}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_2d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v10, Ld3/c;

    invoke-interface {v10}, Ld3/c;->a()Ljava/lang/Class;

    iget-object v9, v9, LS3/j;->a:Ljava/lang/Object;

    new-instance v10, LS3/j;

    invoke-direct {v10, v9, v0}, LS3/j;-><init>(Ljava/lang/Object;LS3/k;)V

    invoke-virtual {v8, v0, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    :goto_14
    add-int/2addr v7, v3

    goto :goto_12

    :cond_2f
    invoke-virtual {v0}, LS3/k;->n()Ljava/util/Set;

    move-result-object p0

    sget-object v1, Lo3/m;->p:LQ3/c;

    sget-object v2, Lo3/m;->q:LQ3/c;

    filled-new-array {v1, v2}, [LQ3/c;

    move-result-object v1

    invoke-static {v1}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {v0, p0}, LS3/k;->o(Ljava/util/LinkedHashSet;)V

    iput-boolean v3, v0, LS3/k;->a:Z

    new-instance p0, LS3/g;

    invoke-direct {p0, v0}, LS3/g;-><init>(LS3/k;)V

    return-object p0

    :pswitch_18
    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5}, Ld3/t;->c([Ljava/lang/Object;)LR2/a;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast v5, LE3/d;

    iget-object p0, v5, LE3/d;->c:LE3/s;

    iget-object p0, p0, LE3/s;->k:Lg4/i;

    sget-object v0, LE3/s;->o:[Li3/o;

    aget-object v0, v0, v2

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_30
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/b;

    iget-object v3, v5, LE3/d;->b:LD3/e;

    iget-object v3, v3, LD3/e;->d:Ljava/lang/Object;

    check-cast v3, LD3/a;

    iget-object v3, v3, LD3/a;->d:LJ3/f;

    iget-object v4, v5, LE3/d;->c:LE3/s;

    invoke-virtual {v3, v4, v1}, LJ3/f;->a(Lu3/E;Lw3/b;)Lf4/q;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_31
    invoke-static {v0}, Lo4/a;->p(Ljava/util/ArrayList;)Lq4/f;

    move-result-object p0

    new-array v0, v2, [La4/o;

    invoke-virtual {p0, v0}, Lq4/f;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [La4/o;

    return-object p0

    :pswitch_1b
    check-cast v5, LB3/m;

    iget-object p0, v5, LB3/d;->d:LH3/a;

    instance-of v1, p0, Lx3/h;

    if-eqz v1, :cond_32

    sget-object v1, LB3/g;->a:Ljava/util/Map;

    check-cast p0, Lx3/h;

    invoke-virtual {p0}, Lx3/h;->a()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, LB3/g;->a(Ljava/util/List;)LV3/b;

    move-result-object p0

    goto :goto_16

    :cond_32
    instance-of v1, p0, Lx3/t;

    if-eqz v1, :cond_33

    sget-object v1, LB3/g;->a:Ljava/util/Map;

    invoke-static {p0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LB3/g;->a(Ljava/util/List;)LV3/b;

    move-result-object p0

    goto :goto_16

    :cond_33
    move-object p0, v4

    :goto_16
    if-eqz p0, :cond_34

    sget-object v1, LB3/e;->b:LQ3/f;

    new-instance v2, LQ2/e;

    invoke-direct {v2, v1, p0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, LR2/z;->z1(LQ2/e;)Ljava/util/Map;

    move-result-object v4

    :cond_34
    if-nez v4, :cond_35

    goto :goto_17

    :cond_35
    move-object v0, v4

    :goto_17
    return-object v0

    :pswitch_1c
    sget-object p0, LB3/g;->a:Ljava/util/Map;

    check-cast v5, LB3/l;

    iget-object p0, v5, LB3/d;->d:LH3/a;

    instance-of v1, p0, Lx3/t;

    if-eqz v1, :cond_36

    check-cast p0, Lx3/t;

    goto :goto_18

    :cond_36
    move-object p0, v4

    :goto_18
    if-eqz p0, :cond_37

    sget-object v1, LB3/g;->b:Ljava/util/Map;

    iget-object p0, p0, Lx3/t;->b:Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls3/m;

    if-eqz p0, :cond_37

    new-instance v1, LV3/i;

    sget-object v2, Lo3/m;->v:LQ3/c;

    invoke-static {v2}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p0

    invoke-direct {v1, v2, p0}, LV3/i;-><init>(LQ3/b;LQ3/f;)V

    goto :goto_19

    :cond_37
    move-object v1, v4

    :goto_19
    if-eqz v1, :cond_38

    sget-object p0, LB3/e;->c:LQ3/f;

    new-instance v2, LQ2/e;

    invoke-direct {v2, p0, v1}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, LR2/z;->z1(LQ2/e;)Ljava/util/Map;

    move-result-object v4

    :cond_38
    if-nez v4, :cond_39

    goto :goto_1a

    :cond_39
    move-object v0, v4

    :goto_1a
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
