.class public final Lf4/h;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lf4/i;


# direct methods
.method public synthetic constructor <init>(Lf4/i;I)V
    .locals 0

    iput p2, p0, Lf4/h;->d:I

    iput-object p1, p0, Lf4/h;->e:Lf4/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 13

    const-string v0, "classProto.constructorList"

    const/16 v1, 0x10

    const-string v2, "it"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lf4/h;->e:Lf4/i;

    iget v7, p0, Lf4/h;->d:I

    packed-switch v7, :pswitch_data_0

    invoke-virtual {v6}, Lf4/i;->j()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v6}, Lf4/i;->v()Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p0, v6, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v0, LN3/f;

    const-string v7, "<this>"

    iget-object v8, v6, Lf4/i;->g:LL3/j;

    invoke-static {v7, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "nameResolver"

    invoke-static {v7, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v7, Ls2/c;

    const-string v9, "typeTable"

    invoke-static {v9, v7}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v8, LL3/j;->B:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    if-lez v9, :cond_6

    iget-object v1, v8, LL3/j;->B:Ljava/util/List;

    const-string v9, "multiFieldValueClassUnderlyingNameList"

    invoke-static {v9, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-static {v2, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v0, v10}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, v8, LL3/j;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v10, v8, LL3/j;->D:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, LQ2/e;

    invoke-direct {v11, v1, v10}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v12, LQ2/e;

    invoke-direct {v12, v1, v10}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v11, v12}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v8, LL3/j;->E:Ljava/util/List;

    const-string v1, "multiFieldValueClassUnderlyingTypeIdList"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v2, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Ls2/c;->l(I)LL3/Q;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, LQ2/e;

    invoke-direct {v4, v1, v2}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v11, v4}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v8, LL3/j;->D:Ljava/util/List;

    :cond_3
    const-string v0, "when (typeIdCount to typ\u2026epresentation\")\n        }"

    invoke-static {v0, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL3/Q;

    const-string v4, "p0"

    invoke-static {v4, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v5}, LJ3/c;->f(LL3/Q;Z)Lh4/z;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Lr3/y;

    invoke-static {v9, v0}, LR2/m;->l1(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lr3/y;-><init>(Ljava/util/ArrayList;)V

    goto/16 :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, LL3/j;->g:I

    invoke-static {v0, v2}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has illegal multi-field value class representation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget v2, v8, LL3/j;->e:I

    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_c

    iget v2, v8, LL3/j;->y:I

    invoke-static {v0, v2}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v2

    iget v4, v8, LL3/j;->e:I

    and-int/lit8 v9, v4, 0x10

    if-ne v9, v1, :cond_7

    iget-object v1, v8, LL3/j;->z:LL3/Q;

    goto :goto_3

    :cond_7
    const/16 v1, 0x20

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_8

    iget v1, v8, LL3/j;->A:I

    invoke-virtual {v7, v1}, Ls2/c;->l(I)LL3/Q;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {p0, v1, v5}, LJ3/c;->f(LL3/Q;Z)Lh4/z;

    move-result-object p0

    if-nez p0, :cond_a

    :cond_9
    invoke-virtual {v6, v2}, Lf4/i;->I0(LQ3/f;)Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_b

    :cond_a
    new-instance v0, Lr3/t;

    invoke-direct {v0, v2, p0}, Lr3/t;-><init>(LQ3/f;Lk4/d;)V

    move-object p0, v0

    goto :goto_4

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "cannot determine underlying type for value class "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v8, LL3/j;->g:I

    invoke-static {v0, v3}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with property "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    move-object p0, v3

    :goto_4
    if-eqz p0, :cond_d

    move-object v3, p0

    goto :goto_5

    :cond_d
    iget-object p0, v6, Lf4/i;->h:LN3/a;

    const/4 v0, 0x5

    invoke-virtual {p0, v5, v0, v5}, LN3/a;->a(III)Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {v6}, Lf4/i;->W()Lu3/k;

    move-result-object p0

    if-eqz p0, :cond_f

    check-cast p0, Lu3/v;

    invoke-virtual {p0}, Lu3/v;->w0()Ljava/util/List;

    move-result-object p0

    const-string v0, "constructor.valueParameters"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/m;->M0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/V;

    check-cast p0, Lu3/o;

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object p0

    const-string v0, "constructor.valueParameters.first().name"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, p0}, Lf4/i;->I0(LQ3/f;)Lh4/z;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v3, Lr3/t;

    invoke-direct {v3, p0, v0}, Lr3/t;-><init>(LQ3/f;Lk4/d;)V

    goto :goto_5

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value class has no underlying property: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inline class has no primary constructor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_5
    return-object v3

    :pswitch_0
    sget-object p0, LR2/u;->c:LR2/u;

    iget v0, v6, Lf4/i;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    goto :goto_7

    :cond_11
    iget-object v0, v6, Lf4/i;->g:LL3/j;

    iget-object v0, v0, LL3/j;->w:Ljava/util/List;

    const-string v2, "fqNames"

    invoke-static {v2, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_13

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, v6, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v3, Ld4/i;

    const-string v4, "index"

    invoke-static {v4, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v2, LN3/f;

    invoke-static {v2, v1}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object v1

    invoke-virtual {v3, v1}, Ld4/i;->b(LQ3/b;)Lr3/e;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    iget v0, v6, Lf4/i;->k:I

    if-eq v0, v1, :cond_14

    goto :goto_7

    :cond_14
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, v6, Lf4/i;->s:Lr3/j;

    instance-of v1, v0, Lr3/C;

    if-eqz v1, :cond_15

    check-cast v0, Lr3/C;

    invoke-interface {v0}, Lr3/C;->q0()La4/o;

    move-result-object v0

    invoke-static {v6, p0, v0, v4}, LW1/a;->p(Lf4/i;Ljava/util/LinkedHashSet;La4/o;Z)V

    :cond_15
    invoke-virtual {v6}, Lu3/b;->R()La4/o;

    move-result-object v0

    invoke-static {v6, p0, v0, v5}, LW1/a;->p(Lf4/i;Ljava/util/LinkedHashSet;La4/o;Z)V

    new-instance v0, LT3/j;

    invoke-direct {v0, v5}, LT3/j;-><init>(I)V

    invoke-static {p0, v0}, LR2/m;->e1(Ljava/util/AbstractCollection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    :cond_16
    :goto_7
    return-object p0

    :pswitch_1
    iget-object p0, p0, Lf4/h;->e:Lf4/i;

    iget v1, p0, Lf4/i;->m:I

    invoke-static {v1}, Lh0/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v10, Lr3/N;->a:Lr3/M;

    new-instance v0, LT3/d;

    sget-object v7, Ls3/g;->a:Ls3/f;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lu3/k;-><init>(Lr3/e;Lr3/i;Ls3/h;ZILr3/N;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget v2, LT3/e;->a:I

    const/4 v2, 0x3

    iget v4, p0, Lf4/i;->m:I

    if-eq v4, v2, :cond_1d

    invoke-static {v4}, Lh0/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_8

    :cond_17
    invoke-static {p0}, LT3/e;->r(Lr3/h;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Lr3/n;->a:LA3/p;

    if-eqz v2, :cond_18

    goto :goto_9

    :cond_18
    const/16 p0, 0x33

    invoke-static {p0}, LT3/e;->a(I)V

    throw v3

    :cond_19
    invoke-static {p0}, LT3/e;->l(Lr3/j;)Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object v2, Lr3/n;->j:LA3/p;

    if-eqz v2, :cond_1a

    goto :goto_9

    :cond_1a
    const/16 p0, 0x34

    invoke-static {p0}, LT3/e;->a(I)V

    throw v3

    :cond_1b
    sget-object v2, Lr3/n;->e:LA3/p;

    if-eqz v2, :cond_1c

    goto :goto_9

    :cond_1c
    const/16 p0, 0x35

    invoke-static {p0}, LT3/e;->a(I)V

    throw v3

    :cond_1d
    :goto_8
    sget-object v2, Lr3/n;->a:LA3/p;

    if-eqz v2, :cond_1e

    :goto_9
    invoke-virtual {v0, v1, v2}, Lu3/k;->e1(Ljava/util/List;LA3/p;)V

    invoke-virtual {p0}, Lu3/b;->q()Lh4/z;

    move-result-object p0

    invoke-virtual {v0, p0}, Lu3/v;->a1(Lh4/z;)V

    goto :goto_b

    :cond_1e
    const/16 p0, 0x31

    invoke-static {p0}, LT3/e;->a(I)V

    throw v3

    :cond_1f
    iget-object v1, p0, Lf4/i;->g:LL3/j;

    iget-object v1, v1, LL3/j;->r:Ljava/util/List;

    invoke-static {v0, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LL3/l;

    sget-object v4, LN3/e;->m:LN3/b;

    iget v2, v2, LL3/l;->f:I

    invoke-virtual {v4, v2}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_20

    goto :goto_a

    :cond_21
    move-object v1, v3

    :goto_a
    check-cast v1, LL3/l;

    if-eqz v1, :cond_22

    iget-object p0, p0, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    check-cast p0, Ld4/r;

    invoke-virtual {p0, v1, v5}, Ld4/r;->d(LL3/l;Z)Lf4/c;

    move-result-object v3

    :cond_22
    move-object v0, v3

    :goto_b
    return-object v0

    :pswitch_2
    iget-object p0, v6, Lf4/i;->g:LL3/j;

    iget-object p0, p0, LL3/j;->r:Ljava/util/List;

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LL3/l;

    sget-object v5, LN3/e;->m:LN3/b;

    iget v3, v3, LL3/l;->f:I

    invoke-virtual {v5, v3}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_24
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v3, v6, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/l;

    iget-object v3, v3, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    check-cast v3, Ld4/r;

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Ld4/r;->d(LL3/l;Z)Lf4/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    invoke-virtual {v6}, Lf4/i;->W()Lu3/k;

    move-result-object v0

    invoke-static {v0}, LR2/n;->z0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    iget-object v0, v3, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->n:Lt3/b;

    invoke-interface {v0, v6}, Lt3/b;->b(Lf4/i;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, v6, Lf4/i;->g:LL3/j;

    iget v0, p0, LL3/j;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_26

    move v4, v5

    :cond_26
    if-nez v4, :cond_27

    goto :goto_e

    :cond_27
    iget-object v0, v6, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v0, LN3/f;

    iget p0, p0, LL3/j;->h:I

    invoke-static {v0, p0}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object p0

    invoke-virtual {v6}, Lf4/i;->u0()Lf4/g;

    move-result-object v0

    sget-object v1, Lz3/b;->i:Lz3/b;

    invoke-virtual {v0, p0, v1}, Lf4/g;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object p0

    instance-of v0, p0, Lr3/e;

    if-eqz v0, :cond_28

    move-object v3, p0

    check-cast v3, Lr3/e;

    :cond_28
    :goto_e
    return-object v3

    :pswitch_4
    iget-object p0, v6, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p0, Ld4/i;

    iget-object p0, p0, Ld4/i;->e:Ld4/a;

    iget-object v0, v6, Lf4/i;->x:Ld4/s;

    invoke-interface {p0, v0}, Ld4/c;->k0(Ld4/s;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {v6}, Lp0/a;->f(Lr3/h;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
