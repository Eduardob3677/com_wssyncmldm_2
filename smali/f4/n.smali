.class public final Lf4/n;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lf4/o;


# direct methods
.method public synthetic constructor <init>(Lf4/o;I)V
    .locals 0

    iput p2, p0, Lf4/n;->d:I

    iput-object p1, p0, Lf4/n;->e:Lf4/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lf4/n;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LQ3/f;

    const-string v0, "it"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lf4/n;->e:Lf4/o;

    iget-object v1, p0, Lf4/o;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p0, p0, Lf4/o;->i:Lf4/p;

    iget-object p1, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object p1, p1, Ld4/i;->p:LR3/i;

    sget-object v3, LL3/T;->r:LL3/a;

    invoke-virtual {v3, v2, p1}, LR3/c;->b(Ljava/io/ByteArrayInputStream;LR3/i;)LR3/b;

    move-result-object p1

    check-cast p1, LL3/T;

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object p0, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    check-cast p0, Ld4/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, LL3/T;->m:Ljava/util/List;

    const-string v2, "proto.annotationList"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v13, p0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/g;

    invoke-static {v0, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v4, LN3/f;

    iget-object v5, p0, Ld4/r;->b:LA3/D;

    invoke-virtual {v5, v3, v4}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Ls3/g;->a:Ls3/f;

    :goto_1
    move-object v5, p0

    goto :goto_2

    :cond_3
    new-instance p0, Ls3/i;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Ls3/i;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    :goto_2
    sget-object p0, LN3/e;->d:LN3/c;

    iget v0, p1, LL3/T;->f:I

    invoke-virtual {p0, v0}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LL3/f0;

    invoke-static {p0}, LW1/a;->x(LL3/f0;)LA3/p;

    move-result-object v7

    new-instance v1, Lf4/t;

    iget-object p0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p0, Ld4/i;

    iget-object v3, p0, Ld4/i;->a:Lg4/o;

    iget p0, p1, LL3/T;->g:I

    iget-object v0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v0, LN3/f;

    invoke-static {v0, p0}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v6

    iget-object p0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->g:Ljava/lang/Object;

    move-object v11, p0

    check-cast v11, LN3/g;

    iget-object p0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->i:Ljava/lang/Object;

    move-object v12, p0

    check-cast v12, Lf4/j;

    iget-object p0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lr3/j;

    iget-object p0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, LN3/f;

    iget-object p0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    move-object v10, p0

    check-cast v10, Ls2/c;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v12}, Lf4/t;-><init>(Lg4/o;Lr3/j;Ls3/h;LQ3/f;LA3/p;LL3/T;LN3/f;Ls2/c;LN3/g;Lf4/j;)V

    iget-object p0, p1, LL3/T;->h:Ljava/util/List;

    const-string v0, "proto.typeParameterList"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v13, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c(Lcom/google/android/gms/internal/firebase-auth-api/G4;Lu3/p;Ljava/util/List;)Lcom/google/android/gms/internal/firebase-auth-api/G4;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    iget-object v0, p0, LJ3/c;->j:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const-string v2, "typeTable"

    iget-object v3, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v3, Ls2/c;

    invoke-static {v2, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, p1, LL3/T;->e:I

    and-int/lit8 v4, v2, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    iget-object v2, p1, LL3/T;->i:LL3/Q;

    const-string v4, "underlyingType"

    invoke-static {v4, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    iget v2, p1, LL3/T;->j:I

    invoke-virtual {v3, v2}, Ls2/c;->l(I)LL3/Q;

    move-result-object v2

    :goto_3
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, LJ3/c;->f(LL3/Q;Z)Lh4/z;

    move-result-object v2

    iget v5, p1, LL3/T;->e:I

    and-int/lit8 v6, v5, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_5

    iget-object p1, p1, LL3/T;->k:LL3/Q;

    const-string v3, "expandedType"

    invoke-static {v3, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_6

    iget p1, p1, LL3/T;->l:I

    invoke-virtual {v3, p1}, Ls2/c;->l(I)LL3/Q;

    move-result-object p1

    :goto_4
    invoke-virtual {p0, p1, v4}, LJ3/c;->f(LL3/Q;Z)Lh4/z;

    move-result-object p0

    invoke-virtual {v1, v0, v2, p0}, Lf4/t;->T0(Ljava/util/List;Lh4/z;Lh4/z;)V

    :goto_5
    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No expandedType in ProtoBuf.TypeAlias"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No underlyingType in ProtoBuf.TypeAlias"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, LQ3/f;

    const-string v0, "it"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lf4/n;->e:Lf4/o;

    iget-object v1, p0, Lf4/o;->b:Ljava/util/LinkedHashMap;

    sget-object v2, LL3/G;->x:LL3/a;

    const-string v3, "PARSER"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object p0, p0, Lf4/o;->i:Lf4/p;

    if-eqz v1, :cond_9

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lf4/l;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p0, v4}, Lf4/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Lr4/j;

    new-instance v3, LA3/d;

    const/16 v4, 0x16

    invoke-direct {v3, v4, v1}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v1, v3}, Lr4/j;-><init>(Lc3/a;Lc3/b;)V

    instance-of v1, v2, Lr4/a;

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    new-instance v1, Lr4/a;

    invoke-direct {v1, v2}, Lr4/a;-><init>(Lr4/k;)V

    move-object v2, v1

    :goto_6
    invoke-static {v2}, Lr4/m;->n(Lr4/k;)Ljava/util/List;

    move-result-object v1

    goto :goto_7

    :cond_9
    sget-object v1, LR2/u;->c:LR2/u;

    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/G;

    iget-object v4, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v4, v4, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    check-cast v4, Ld4/r;

    invoke-static {v0, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ld4/r;->f(LL3/G;)Lf4/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    invoke-virtual {p0, p1, v2}, Lf4/p;->k(LQ3/f;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lq4/k;->e(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LQ3/f;

    const-string v0, "it"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lf4/n;->e:Lf4/o;

    iget-object v1, p0, Lf4/o;->a:Ljava/util/LinkedHashMap;

    sget-object v2, LL3/y;->x:LL3/a;

    const-string v3, "PARSER"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object p0, p0, Lf4/o;->i:Lf4/p;

    if-eqz v1, :cond_c

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lf4/l;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p0, v4}, Lf4/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Lr4/j;

    new-instance v3, LA3/d;

    const/16 v4, 0x16

    invoke-direct {v3, v4, v1}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v1, v3}, Lr4/j;-><init>(Lc3/a;Lc3/b;)V

    instance-of v1, v2, Lr4/a;

    if-eqz v1, :cond_b

    goto :goto_9

    :cond_b
    new-instance v1, Lr4/a;

    invoke-direct {v1, v2}, Lr4/a;-><init>(Lr4/k;)V

    move-object v2, v1

    :goto_9
    invoke-static {v2}, Lr4/m;->n(Lr4/k;)Ljava/util/List;

    move-result-object v1

    goto :goto_a

    :cond_c
    sget-object v1, LR2/u;->c:LR2/u;

    :goto_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/y;

    iget-object v4, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v4, v4, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    check-cast v4, Ld4/r;

    invoke-static {v0, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ld4/r;->e(LL3/y;)Lf4/s;

    move-result-object v3

    invoke-virtual {p0, v3}, Lf4/p;->r(Lf4/s;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_d

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    invoke-virtual {p0, p1, v2}, Lf4/p;->j(LQ3/f;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lq4/k;->e(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
