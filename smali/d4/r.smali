.class public final Ld4/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

.field public final b:LA3/D;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;)V
    .locals 2

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    new-instance v0, LA3/D;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object v1, p1, Ld4/i;->b:Lr3/x;

    iget-object p1, p1, Ld4/i;->l:Lcom/google/firebase/messaging/p;

    invoke-direct {v0, v1, p1}, LA3/D;-><init>(Lr3/x;Lcom/google/firebase/messaging/p;)V

    iput-object v0, p0, Ld4/r;->b:LA3/D;

    return-void
.end method

.method public static g(LL3/Q;Lcom/google/android/gms/internal/firebase-auth-api/G4;Lr3/b;I)Lu3/w;
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast p1, LJ3/c;

    invoke-virtual {p1, p0}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object p0

    sget-object p1, Ls3/g;->a:Ls3/f;

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, p1, p3}, LZ0/j;->x(Lr3/b;Lh4/v;LQ3/f;Ls3/h;I)Lu3/w;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lr3/j;)Lcom/google/android/gms/internal/firebase-auth-api/X;
    .locals 3

    instance-of v0, p1, Lr3/C;

    if-eqz v0, :cond_0

    new-instance v0, Ld4/t;

    check-cast p1, Lr3/C;

    check-cast p1, Lu3/E;

    iget-object p1, p1, Lu3/E;->g:LQ3/c;

    iget-object p0, p0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v1, LN3/f;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v2, Ls2/c;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->i:Ljava/lang/Object;

    check-cast p0, Lf4/j;

    invoke-direct {v0, p1, v1, v2, p0}, Ld4/t;-><init>(LQ3/c;LN3/f;Ls2/c;Lf4/j;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lf4/i;

    if-eqz p0, :cond_1

    check-cast p1, Lf4/i;

    iget-object v0, p1, Lf4/i;->x:Ld4/s;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(LR3/b;II)Ls3/h;
    .locals 3

    sget-object v0, LN3/e;->c:LN3/b;

    invoke-virtual {v0, p2}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Ls3/g;->a:Ls3/f;

    return-object p0

    :cond_0
    new-instance p2, Lf4/v;

    iget-object v0, p0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->a:Lg4/o;

    new-instance v1, Ld4/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p3, v2}, Ld4/n;-><init>(Ld4/r;LR3/b;II)V

    invoke-direct {p2, v0, v1}, Lf4/v;-><init>(Lg4/o;Lc3/a;)V

    return-object p2
.end method

.method public final c(LL3/G;Z)Ls3/h;
    .locals 3

    sget-object v0, LN3/e;->c:LN3/b;

    iget v1, p1, LL3/G;->f:I

    invoke-virtual {v0, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ls3/g;->a:Ls3/f;

    return-object p0

    :cond_0
    new-instance v0, Lf4/v;

    iget-object v1, p0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ld4/i;

    iget-object v1, v1, Ld4/i;->a:Lg4/o;

    new-instance v2, Ld4/o;

    invoke-direct {v2, p0, p2, p1}, Ld4/o;-><init>(Ld4/r;ZLL3/G;)V

    invoke-direct {v0, v1, v2}, Lf4/v;-><init>(Lg4/o;Lc3/a;)V

    return-object v0
.end method

.method public final d(LL3/l;Z)Lf4/c;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-object v13, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v1, Lr3/j;

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v2, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v14, v1

    check-cast v14, Lr3/e;

    new-instance v15, Lf4/c;

    iget v1, v12, LL3/l;->f:I

    const/4 v11, 0x1

    invoke-virtual {v0, v12, v1, v11}, Ld4/r;->b(LR3/b;II)Ls3/h;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x1

    iget-object v0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, LN3/f;

    iget-object v0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ls2/c;

    iget-object v0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->g:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, LN3/g;

    iget-object v0, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->i:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lf4/j;

    move-object v0, v15

    move-object v1, v14

    move/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v17, v14

    move v14, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lf4/c;-><init>(Lr3/e;Lr3/i;Ls3/h;ZILL3/l;LN3/f;Ls2/c;LN3/g;Lf4/j;Lr3/N;)V

    sget-object v0, LR2/u;->c:LR2/u;

    invoke-static {v13, v15, v0}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c(Lcom/google/android/gms/internal/firebase-auth-api/G4;Lu3/p;Ljava/util/List;)Lcom/google/android/gms/internal/firebase-auth-api/G4;

    move-result-object v0

    iget-object v1, v12, LL3/l;->g:Ljava/util/List;

    const-string v2, "proto.valueParameterList"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    check-cast v0, Ld4/r;

    invoke-virtual {v0, v1, v12, v14}, Ld4/r;->h(Ljava/util/List;LR3/b;I)Ljava/util/List;

    move-result-object v0

    sget-object v1, LN3/e;->d:LN3/c;

    iget v2, v12, LL3/l;->f:I

    invoke-virtual {v1, v2}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/f0;

    invoke-static {v1}, LW1/a;->x(LL3/f0;)LA3/p;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Lu3/k;->e1(Ljava/util/List;LA3/p;)V

    invoke-interface/range {v17 .. v17}, Lr3/e;->q()Lh4/z;

    move-result-object v0

    invoke-virtual {v15, v0}, Lu3/v;->a1(Lh4/z;)V

    invoke-interface/range {v17 .. v17}, Lr3/w;->y()Z

    move-result v0

    iput-boolean v0, v15, Lu3/v;->t:Z

    sget-object v0, LN3/e;->n:LN3/b;

    iget v1, v12, LL3/l;->f:I

    invoke-virtual {v0, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v14

    iput-boolean v0, v15, Lu3/v;->y:Z

    return-object v15
.end method

.method public final e(LL3/y;)Lf4/s;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "proto"

    invoke-static {v1, v12}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v12, LL3/y;->e:I

    const/4 v13, 0x1

    and-int/2addr v1, v13

    if-ne v1, v13, :cond_0

    iget v1, v12, LL3/y;->f:I

    :goto_0
    move v14, v1

    goto :goto_1

    :cond_0
    iget v1, v12, LL3/y;->g:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v12, v14, v13}, Ld4/r;->b(LR3/b;II)Ls3/h;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, LL3/y;->q()Z

    move-result v1

    sget-object v15, Ls3/g;->a:Ls3/f;

    iget-object v11, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    if-nez v1, :cond_2

    iget v1, v12, LL3/y;->e:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v10, v15

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v1, Lf4/a;

    iget-object v2, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v2, Ld4/i;

    iget-object v2, v2, Ld4/i;->a:Lg4/o;

    new-instance v4, Ld4/n;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v12, v13, v5}, Ld4/n;-><init>(Ld4/r;LR3/b;II)V

    invoke-direct {v1, v2, v4}, Lf4/a;-><init>(Lg4/o;Lc3/a;)V

    move-object v10, v1

    :goto_3
    iget-object v0, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v0, Lr3/j;

    invoke-static {v0}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object v0

    iget v1, v12, LL3/y;->h:I

    iget-object v2, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v2, LN3/f;

    invoke-static {v2, v1}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v1

    invoke-virtual {v0, v1}, LQ3/c;->c(LQ3/f;)LQ3/c;

    move-result-object v0

    sget-object v1, Ld4/w;->a:LQ3/c;

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LN3/g;->a:LN3/g;

    :goto_4
    move-object v9, v0

    goto :goto_5

    :cond_3
    iget-object v0, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->g:Ljava/lang/Object;

    check-cast v0, LN3/g;

    goto :goto_4

    :goto_5
    new-instance v8, Lf4/s;

    iget v0, v12, LL3/y;->h:I

    invoke-static {v2, v0}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v4

    sget-object v0, LN3/e;->o:LN3/c;

    invoke-virtual {v0, v14}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/z;

    invoke-static {v0}, LW1/a;->a0(LL3/z;)I

    move-result v5

    const/4 v2, 0x0

    const/16 v16, 0x0

    iget-object v0, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr3/j;

    iget-object v0, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, LN3/f;

    iget-object v0, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ls2/c;

    iget-object v0, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->i:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lf4/j;

    move-object v0, v8

    move-object/from16 v6, p1

    move-object v13, v8

    move-object/from16 v8, v17

    move-object/from16 v26, v10

    move-object/from16 v10, v18

    move/from16 v27, v14

    move-object v14, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lf4/s;-><init>(Lr3/j;Lu3/N;Ls3/h;LQ3/f;ILL3/y;LN3/f;Ls2/c;LN3/g;Lf4/j;Lr3/N;)V

    iget-object v0, v12, LL3/y;->k:Ljava/util/List;

    const-string v1, "proto.typeParameterList"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v14, v13, v0}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c(Lcom/google/android/gms/internal/firebase-auth-api/G4;Lu3/p;Ljava/util/List;)Lcom/google/android/gms/internal/firebase-auth-api/G4;

    move-result-object v0

    iget-object v1, v14, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v1, Ls2/c;

    invoke-static {v12, v1}, Li3/x;->O0(LL3/y;Ls2/c;)LL3/Q;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v4, LJ3/c;

    if-eqz v2, :cond_4

    invoke-virtual {v4, v2}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v5, v26

    invoke-static {v13, v2, v5}, LZ0/j;->E(Lr3/b;Lh4/v;Ls3/h;)Lu3/w;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_6

    :cond_4
    move-object/from16 v17, v3

    :goto_6
    iget-object v2, v14, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v2, Lr3/j;

    instance-of v5, v2, Lr3/e;

    if-eqz v5, :cond_5

    check-cast v2, Lr3/e;

    goto :goto_7

    :cond_5
    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lr3/e;->H0()Lu3/w;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_8

    :cond_6
    move-object/from16 v18, v3

    :goto_8
    const-string v2, "typeTable"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v12, LL3/y;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_7

    goto :goto_9

    :cond_7
    move-object v5, v3

    :goto_9
    if-nez v5, :cond_9

    iget-object v5, v12, LL3/y;->o:Ljava/util/List;

    const-string v6, "contextReceiverTypeIdList"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const-string v8, "it"

    invoke-static {v8, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Ls2/c;->l(I)LL3/Q;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_8
    move-object v5, v6

    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-ltz v7, :cond_b

    check-cast v8, LL3/Q;

    invoke-virtual {v4, v8}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v8

    invoke-static {v13, v8, v3, v15, v7}, LZ0/j;->x(Lr3/b;Lh4/v;LQ3/f;Ls3/h;I)Lu3/w;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v7, v9

    goto :goto_b

    :cond_b
    invoke-static {}, LR2/n;->B0()V

    throw v3

    :cond_c
    iget-object v3, v4, LJ3/c;->j:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v20

    iget-object v3, v12, LL3/y;->q:Ljava/util/List;

    const-string v5, "proto.valueParameterList"

    invoke-static {v5, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    check-cast v0, Ld4/r;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v12, v5}, Ld4/r;->h(Ljava/util/List;LR3/b;I)Ljava/util/List;

    move-result-object v21

    invoke-static {v12, v1}, Li3/x;->W0(LL3/y;Ls2/c;)LL3/Q;

    move-result-object v0

    invoke-virtual {v4, v0}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v22

    sget-object v0, LN3/e;->e:LN3/c;

    move/from16 v3, v27

    invoke-virtual {v0, v3}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/A;

    invoke-static {v0}, Ld4/j;->e(LL3/A;)I

    move-result v23

    sget-object v0, LN3/e;->d:LN3/c;

    invoke-virtual {v0, v3}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/f0;

    invoke-static {v0}, LW1/a;->x(LL3/f0;)LA3/p;

    move-result-object v24

    sget-object v25, LR2/v;->c:LR2/v;

    move-object/from16 v16, v13

    move-object/from16 v19, v6

    invoke-virtual/range {v16 .. v25}, Lu3/N;->e1(Lu3/w;Lu3/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lh4/v;ILA3/p;LR2/v;)Lu3/N;

    sget-object v0, LN3/e;->p:LN3/b;

    invoke-virtual {v0, v3}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, Lu3/v;->o:Z

    sget-object v0, LN3/e;->q:LN3/b;

    invoke-virtual {v0, v3}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, Lu3/v;->p:Z

    sget-object v0, LN3/e;->t:LN3/b;

    invoke-virtual {v0, v3}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, Lu3/v;->q:Z

    sget-object v0, LN3/e;->r:LN3/b;

    invoke-virtual {v0, v3}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, Lu3/v;->r:Z

    sget-object v0, LN3/e;->s:LN3/b;

    invoke-virtual {v0, v3}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, Lu3/v;->s:Z

    sget-object v0, LN3/e;->u:LN3/b;

    invoke-virtual {v0, v3}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, Lu3/v;->x:Z

    sget-object v0, LN3/e;->v:LN3/b;

    invoke-virtual {v0, v3}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, Lu3/v;->t:Z

    sget-object v0, LN3/e;->w:LN3/b;

    invoke-virtual {v0, v3}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    iput-boolean v0, v13, Lu3/v;->y:Z

    iget-object v0, v14, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->m:Ld4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v13
.end method

.method public final f(LL3/G;)Lf4/r;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v1, "proto"

    invoke-static {v1, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v15, LL3/G;->e:I

    const/4 v14, 0x1

    and-int/2addr v1, v14

    const/16 v20, 0x6

    if-ne v1, v14, :cond_0

    iget v1, v15, LL3/G;->f:I

    :goto_0
    move v13, v1

    goto :goto_1

    :cond_0
    iget v1, v15, LL3/G;->g:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    goto :goto_0

    :goto_1
    new-instance v12, Lf4/r;

    iget-object v11, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lr3/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v15, v13, v1}, Ld4/r;->b(LR3/b;II)Ls3/h;

    move-result-object v4

    sget-object v1, LN3/e;->e:LN3/c;

    invoke-virtual {v1, v13}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/A;

    invoke-static {v1}, Ld4/j;->e(LL3/A;)I

    move-result v5

    sget-object v1, LN3/e;->d:LN3/c;

    invoke-virtual {v1, v13}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/f0;

    invoke-static {v1}, LW1/a;->x(LL3/f0;)LA3/p;

    move-result-object v6

    sget-object v1, LN3/e;->x:LN3/b;

    invoke-virtual {v1, v13}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget v1, v15, LL3/G;->h:I

    iget-object v3, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v3, LN3/f;

    invoke-static {v3, v1}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v8

    sget-object v1, LN3/e;->o:LN3/c;

    invoke-virtual {v1, v13}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/z;

    invoke-static {v1}, LW1/a;->a0(LL3/z;)I

    move-result v9

    sget-object v1, LN3/e;->B:LN3/b;

    invoke-virtual {v1, v13}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v1, LN3/e;->A:LN3/b;

    invoke-virtual {v1, v13}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    sget-object v1, LN3/e;->D:LN3/b;

    invoke-virtual {v1, v13}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    sget-object v1, LN3/e;->E:LN3/b;

    invoke-virtual {v1, v13}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    sget-object v1, LN3/e;->F:LN3/b;

    invoke-virtual {v1, v13}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    const/4 v3, 0x0

    iget-object v1, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, LN3/f;

    iget-object v1, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    move-object/from16 v17, v1

    check-cast v17, Ls2/c;

    iget-object v1, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->g:Ljava/lang/Object;

    move-object/from16 v18, v1

    check-cast v18, LN3/g;

    iget-object v1, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->i:Ljava/lang/Object;

    move-object/from16 v19, v1

    check-cast v19, Lf4/j;

    move-object v1, v12

    move-object/from16 v25, v11

    move/from16 v11, v21

    move-object/from16 v26, v12

    move/from16 v12, v22

    move/from16 v27, v13

    move/from16 v13, v23

    move/from16 v14, v24

    move-object v0, v15

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v19}, Lf4/r;-><init>(Lr3/j;Lr3/K;Ls3/h;ILA3/p;ZLQ3/f;IZZZZZLL3/G;LN3/f;Ls2/c;LN3/g;Lf4/j;)V

    iget-object v1, v0, LL3/G;->k:Ljava/util/List;

    const-string v2, "proto.typeParameterList"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v13, v25

    move-object/from16 v12, v26

    invoke-static {v13, v12, v1}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c(Lcom/google/android/gms/internal/firebase-auth-api/G4;Lu3/p;Ljava/util/List;)Lcom/google/android/gms/internal/firebase-auth-api/G4;

    move-result-object v14

    sget-object v1, LN3/e;->y:LN3/b;

    move/from16 v15, v27

    invoke-virtual {v1, v15}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget-object v1, Ls3/g;->a:Ls3/f;

    const/16 v2, 0x40

    const/4 v8, 0x3

    if-eqz v7, :cond_1

    invoke-virtual/range {p1 .. p1}, LL3/G;->q()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, LL3/G;->e:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v11, v0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v1, Lf4/a;

    iget-object v3, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v3, Ld4/i;

    iget-object v3, v3, Ld4/i;->a:Lg4/o;

    new-instance v4, Ld4/n;

    const/4 v5, 0x1

    move-object v11, v0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11, v8, v5}, Ld4/n;-><init>(Ld4/r;LR3/b;II)V

    invoke-direct {v1, v3, v4}, Lf4/a;-><init>(Lg4/o;Lc3/a;)V

    :goto_3
    iget-object v3, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v3, Ls2/c;

    invoke-static {v11, v3}, Li3/x;->X0(LL3/G;Ls2/c;)LL3/Q;

    move-result-object v4

    iget-object v5, v14, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v5, LJ3/c;

    invoke-virtual {v5, v4}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v4

    iget-object v6, v5, LJ3/c;->j:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    iget-object v9, v13, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v9, Lr3/j;

    instance-of v10, v9, Lr3/e;

    if-eqz v10, :cond_3

    check-cast v9, Lr3/e;

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_4

    invoke-interface {v9}, Lr3/e;->H0()Lu3/w;

    move-result-object v9

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    :goto_5
    const-string v10, "typeTable"

    invoke-static {v10, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, LL3/G;->q()Z

    move-result v17

    if-eqz v17, :cond_5

    iget-object v2, v11, LL3/G;->l:LL3/Q;

    goto :goto_6

    :cond_5
    iget v8, v11, LL3/G;->e:I

    and-int/2addr v8, v2

    if-ne v8, v2, :cond_6

    iget v2, v11, LL3/G;->m:I

    invoke-virtual {v3, v2}, Ls2/c;->l(I)LL3/Q;

    move-result-object v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_7

    invoke-virtual {v5, v2}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v12, v2, v1}, LZ0/j;->E(Lr3/b;Lh4/v;Ls3/h;)Lu3/w;

    move-result-object v1

    move-object v5, v1

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    :goto_7
    invoke-static {v10, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v11, LL3/G;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v10, 0x1

    xor-int/2addr v2, v10

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_a

    iget-object v1, v11, LL3/G;->o:Ljava/util/List;

    const-string v2, "contextReceiverTypeIdList"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const-string v10, "it"

    invoke-static {v10, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Ls2/c;->l(I)LL3/Q;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    goto :goto_9

    :cond_9
    move-object v1, v2

    :cond_a
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v10, 0x0

    move v2, v10

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v18, v2, 0x1

    if-ltz v2, :cond_b

    check-cast v3, LL3/Q;

    invoke-static {v3, v14, v12, v2}, Ld4/r;->g(LL3/Q;Lcom/google/android/gms/internal/firebase-auth-api/G4;Lr3/b;I)Lu3/w;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, v18

    goto :goto_a

    :cond_b
    invoke-static {}, LR2/n;->B0()V

    const/16 v17, 0x0

    throw v17

    :cond_c
    const/16 v17, 0x0

    move-object v1, v12

    move-object v2, v4

    move-object v3, v6

    move-object v4, v9

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lu3/K;->Y0(Lh4/v;Ljava/util/List;Lu3/w;Lu3/w;Ljava/util/List;)V

    sget-object v1, LN3/e;->c:LN3/b;

    invoke-virtual {v1, v15}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v9, LN3/e;->d:LN3/c;

    invoke-virtual {v9, v15}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/f0;

    sget-object v8, LN3/e;->e:LN3/c;

    invoke-virtual {v8, v15}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LL3/A;

    if-eqz v3, :cond_1a

    if-eqz v4, :cond_19

    if-eqz v2, :cond_d

    iget v1, v1, LN3/d;->a:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    goto :goto_b

    :cond_d
    move v1, v10

    :goto_b
    invoke-interface {v4}, LR3/r;->a()I

    move-result v2

    iget v4, v8, LN3/d;->a:I

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    invoke-interface {v3}, LR3/r;->a()I

    move-result v2

    iget v3, v9, LN3/d;->a:I

    shl-int/2addr v2, v3

    or-int v18, v1, v2

    sget-object v6, LN3/e;->J:LN3/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, LN3/e;->K:LN3/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LN3/e;->L:LN3/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v19, Lr3/N;->a:Lr3/M;

    if-eqz v7, :cond_10

    iget v1, v11, LL3/G;->e:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    iget v1, v11, LL3/G;->r:I

    goto :goto_c

    :cond_e
    move/from16 v1, v18

    :goto_c
    invoke-virtual {v6, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    const/4 v3, 0x3

    invoke-virtual {v0, v11, v1, v3}, Ld4/r;->b(LR3/b;II)Ls3/h;

    move-result-object v3

    if-eqz v2, :cond_f

    new-instance v16, Lu3/L;

    invoke-virtual {v8, v1}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, LL3/A;

    invoke-static/range {v22 .. v22}, Ld4/j;->e(LL3/A;)I

    move-result v22

    invoke-virtual {v9, v1}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/f0;

    invoke-static {v1}, LW1/a;->x(LL3/f0;)LA3/p;

    move-result-object v23

    const/16 v24, 0x1

    xor-int/lit8 v25, v2, 0x1

    invoke-virtual {v12}, Lu3/K;->k0()I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v1, v16

    move-object v2, v12

    move-object/from16 v28, v4

    move/from16 v4, v22

    move-object/from16 v29, v5

    move-object/from16 v5, v23

    move-object/from16 v30, v6

    move/from16 v6, v25

    move-object/from16 v31, v8

    move/from16 v8, v21

    move-object/from16 v25, v13

    move-object v13, v9

    move/from16 v9, v26

    move-object/from16 v17, v14

    move/from16 v14, v24

    move-object/from16 v10, v27

    move-object v14, v11

    move-object/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lu3/L;-><init>(Lr3/K;Ls3/h;ILA3/p;ZZZILu3/L;Lr3/N;)V

    move-object/from16 v8, v16

    goto :goto_d

    :cond_f
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v8

    move-object/from16 v25, v13

    move-object/from16 v17, v14

    move-object v13, v9

    move-object v14, v11

    invoke-static {v12, v3}, LZ0/j;->z(Lr3/K;Ls3/h;)Lu3/L;

    move-result-object v1

    move-object v8, v1

    :goto_d
    invoke-virtual {v12}, Lu3/K;->n()Lh4/v;

    move-result-object v1

    invoke-virtual {v8, v1}, Lu3/L;->T0(Lh4/v;)V

    move-object v11, v8

    goto :goto_e

    :cond_10
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v8

    move-object/from16 v25, v13

    move-object/from16 v17, v14

    move-object v13, v9

    move-object v14, v11

    const/4 v11, 0x0

    :goto_e
    sget-object v1, LN3/e;->z:LN3/b;

    invoke-virtual {v1, v15}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, v14, LL3/G;->e:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    iget v1, v14, LL3/G;->s:I

    :goto_f
    move-object/from16 v2, v30

    goto :goto_10

    :cond_11
    move/from16 v1, v18

    goto :goto_f

    :goto_10
    invoke-virtual {v2, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v3, v29

    invoke-virtual {v3, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v3, v28

    invoke-virtual {v3, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v10, 0x4

    invoke-virtual {v0, v14, v1, v10}, Ld4/r;->b(LR3/b;II)Ls3/h;

    move-result-object v3

    if-eqz v2, :cond_13

    new-instance v9, Lu3/M;

    move-object/from16 v4, v31

    invoke-virtual {v4, v1}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LL3/A;

    invoke-static {v4}, Ld4/j;->e(LL3/A;)I

    move-result v4

    invoke-virtual {v13, v1}, LN3/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/f0;

    invoke-static {v1}, LW1/a;->x(LL3/f0;)LA3/p;

    move-result-object v5

    const/4 v1, 0x1

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v12}, Lu3/K;->k0()I

    move-result v13

    const/16 v16, 0x0

    move-object v1, v9

    move-object v2, v12

    move-object v0, v9

    move v9, v13

    move v13, v10

    move-object/from16 v10, v16

    move-object/from16 v32, v11

    move-object/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lu3/M;-><init>(Lr3/K;Ls3/h;ILA3/p;ZZZILu3/M;Lr3/N;)V

    sget-object v1, LR2/u;->c:LR2/u;

    move-object/from16 v2, v17

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c(Lcom/google/android/gms/internal/firebase-auth-api/G4;Lu3/p;Ljava/util/List;)Lcom/google/android/gms/internal/firebase-auth-api/G4;

    move-result-object v1

    iget-object v2, v14, LL3/G;->q:LL3/Z;

    invoke-static {v2}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    check-cast v1, Ld4/r;

    invoke-virtual {v1, v2, v14, v13}, Ld4/r;->h(Ljava/util/List;LR3/b;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu3/V;

    if-eqz v1, :cond_12

    iput-object v1, v0, Lu3/M;->o:Lu3/V;

    move-object v8, v0

    const/4 v0, 0x0

    goto :goto_11

    :cond_12
    invoke-static/range {v20 .. v20}, Lu3/M;->I0(I)V

    const/4 v0, 0x0

    throw v0

    :cond_13
    move-object/from16 v32, v11

    const/4 v0, 0x0

    invoke-static {v12, v3}, LZ0/j;->A(Lr3/K;Ls3/h;)Lu3/M;

    move-result-object v8

    goto :goto_11

    :cond_14
    move-object/from16 v32, v11

    const/4 v0, 0x0

    move-object v8, v0

    :goto_11
    sget-object v1, LN3/e;->C:LN3/b;

    invoke-virtual {v1, v15}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ld4/p;

    const/4 v2, 0x1

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v14, v12, v2}, Ld4/p;-><init>(Ld4/r;LL3/G;Lf4/r;I)V

    invoke-virtual {v12, v0, v1}, Lu3/K;->W0(Lg4/h;Lc3/a;)V

    :goto_12
    move-object/from16 v1, v25

    goto :goto_13

    :cond_15
    move-object/from16 v3, p0

    goto :goto_12

    :goto_13
    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v1, Lr3/j;

    instance-of v2, v1, Lr3/e;

    if-eqz v2, :cond_16

    check-cast v1, Lr3/e;

    goto :goto_14

    :cond_16
    move-object v1, v0

    :goto_14
    if-eqz v1, :cond_17

    invoke-interface {v1}, Lr3/e;->L()I

    move-result v10

    goto :goto_15

    :cond_17
    const/4 v10, 0x0

    :goto_15
    const/4 v1, 0x5

    if-ne v10, v1, :cond_18

    new-instance v1, Ld4/p;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v14, v12, v2}, Ld4/p;-><init>(Ld4/r;LL3/G;Lf4/r;I)V

    invoke-virtual {v12, v0, v1}, Lu3/K;->W0(Lg4/h;Lc3/a;)V

    :cond_18
    new-instance v0, Lu3/t;

    const/4 v1, 0x0

    invoke-virtual {v3, v14, v1}, Ld4/r;->c(LL3/G;Z)Ls3/h;

    move-result-object v1

    invoke-direct {v0, v1}, LK3/c;-><init>(Ls3/h;)V

    new-instance v1, Lu3/t;

    const/4 v2, 0x1

    invoke-virtual {v3, v14, v2}, Ld4/r;->c(LL3/G;Z)Ls3/h;

    move-result-object v2

    invoke-direct {v1, v2}, LK3/c;-><init>(Ls3/h;)V

    move-object/from16 v2, v32

    invoke-virtual {v12, v2, v8, v0, v1}, Lu3/K;->V0(Lu3/L;Lu3/M;Lu3/t;Lu3/t;)V

    return-object v12

    :cond_19
    move-object/from16 v0, v17

    const/16 v1, 0xb

    invoke-static {v1}, LN3/e;->a(I)V

    throw v0

    :cond_1a
    move-object/from16 v0, v17

    const/16 v1, 0xa

    invoke-static {v1}, LN3/e;->a(I)V

    throw v0
.end method

.method public final h(Ljava/util/List;LR3/b;I)Ljava/util/List;
    .locals 26

    move-object/from16 v7, p0

    iget-object v8, v7, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v8, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v0, Lr3/j;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {v1, v0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v21, v0

    check-cast v21, Lr3/b;

    invoke-interface/range {v21 .. v21}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    const-string v1, "callableDescriptor.containingDeclaration"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Ld4/r;->a(Lr3/j;)Lcom/google/android/gms/internal/firebase-auth-api/X;

    move-result-object v22

    new-instance v15, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v12, v24

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v25, v12, 0x1

    if-ltz v12, :cond_5

    move-object v10, v0

    check-cast v10, LL3/Z;

    iget v0, v10, LL3/Z;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, v10, LL3/Z;->f:I

    move v11, v0

    goto :goto_1

    :cond_0
    move/from16 v11, v24

    :goto_1
    if-eqz v22, :cond_1

    sget-object v0, LN3/e;->c:LN3/b;

    invoke-virtual {v0, v11}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v13, Lf4/v;

    iget-object v0, v8, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v14, v0, Ld4/i;->a:Lg4/o;

    new-instance v6, Ld4/q;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move/from16 v4, p3

    move v5, v12

    move-object v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Ld4/q;-><init>(Ld4/r;Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;IILL3/Z;)V

    invoke-direct {v13, v14, v9}, Lf4/v;-><init>(Lg4/o;Lc3/a;)V

    goto :goto_2

    :cond_1
    sget-object v0, Ls3/g;->a:Ls3/f;

    move-object v13, v0

    :goto_2
    iget v0, v10, LL3/Z;->g:I

    iget-object v1, v8, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v1, LN3/f;

    invoke-static {v1, v0}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v14

    iget-object v0, v8, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v0, Ls2/c;

    invoke-static {v10, v0}, Li3/x;->h1(LL3/Z;Ls2/c;)LL3/Q;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v2, LJ3/c;

    invoke-virtual {v2, v1}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v1

    sget-object v3, LN3/e;->G:LN3/b;

    invoke-virtual {v3, v11}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    sget-object v3, LN3/e;->H:LN3/b;

    invoke-virtual {v3, v11}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    sget-object v3, LN3/e;->I:LN3/b;

    invoke-virtual {v3, v11}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    const-string v3, "typeTable"

    invoke-static {v3, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v10, LL3/Z;->e:I

    and-int/lit8 v4, v3, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    iget-object v0, v10, LL3/Z;->j:LL3/Q;

    goto :goto_3

    :cond_2
    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    iget v3, v10, LL3/Z;->k:I

    invoke-virtual {v0, v3}, Ls2/c;->l(I)LL3/Q;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    :goto_4
    sget-object v20, Lr3/N;->a:Lr3/M;

    new-instance v0, Lu3/V;

    const/4 v11, 0x0

    move-object v9, v0

    move-object/from16 v10, v21

    move-object v2, v15

    move-object v15, v1

    invoke-direct/range {v9 .. v20}, Lu3/V;-><init>(Lr3/b;Lu3/V;ILs3/h;LQ3/f;Lh4/v;ZZZLh4/v;Lr3/N;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v2

    move/from16 v12, v25

    goto/16 :goto_0

    :cond_5
    invoke-static {}, LR2/n;->B0()V

    const/4 v0, 0x0

    throw v0

    :cond_6
    move-object v2, v15

    invoke-static {v2}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
