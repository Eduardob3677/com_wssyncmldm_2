.class public abstract Lt/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lt/h;->a:Lt/b;

    return-void
.end method

.method public static a(Ls/d;)Z
    .locals 7

    iget-object v0, p0, Ls/d;->j0:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v4, p0, Ls/d;->N:Ls/d;

    if-eqz v4, :cond_0

    check-cast v4, Ls/e;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, v4, Ls/d;->j0:[I

    aget v5, v5, v1

    :cond_1
    if-eqz v4, :cond_2

    iget-object v4, v4, Ls/d;->j0:[I

    aget v4, v4, v3

    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v2, v3, :cond_5

    if-eq v2, v5, :cond_5

    if-ne v2, v4, :cond_3

    iget v2, p0, Ls/d;->l:I

    if-nez v2, :cond_3

    iget v2, p0, Ls/d;->Q:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ls/d;->q(I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    invoke-virtual {p0}, Ls/d;->w()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    if-eq v0, v3, :cond_8

    if-eq v0, v5, :cond_8

    if-ne v0, v4, :cond_6

    iget v0, p0, Ls/d;->m:I

    if-nez v0, :cond_6

    iget v0, p0, Ls/d;->Q:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_6

    invoke-virtual {p0, v3}, Ls/d;->q(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-virtual {p0}, Ls/d;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v3

    :goto_4
    iget p0, p0, Ls/d;->Q:F

    cmpl-float p0, p0, v6

    if-lez p0, :cond_a

    if-nez v2, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    return v3

    :cond_a
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    move v1, v3

    :cond_b
    return v1
.end method

.method public static b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;
    .locals 7

    if-nez p1, :cond_0

    iget v0, p0, Ls/d;->h0:I

    goto :goto_0

    :cond_0
    iget v0, p0, Ls/d;->i0:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    iget v3, p3, Lt/n;->b:I

    if-eq v0, v3, :cond_4

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/n;

    iget v5, v4, Lt/n;->b:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, v4}, Lt/n;->c(ILt/n;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-nez p3, :cond_c

    instance-of v3, p0, Ls/i;

    if-eqz v3, :cond_a

    move-object v3, p0

    check-cast v3, Ls/i;

    move v4, v1

    :goto_3
    iget v5, v3, Ls/i;->l0:I

    if-ge v4, v5, :cond_8

    iget-object v5, v3, Ls/i;->k0:[Ls/d;

    aget-object v5, v5, v4

    if-nez p1, :cond_6

    iget v6, v5, Ls/d;->h0:I

    if-eq v6, v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    iget v6, v5, Ls/d;->i0:I

    if-eq v6, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v6, v2

    :goto_4
    if-eq v6, v2, :cond_a

    move v3, v1

    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/n;

    iget v5, v4, Lt/n;->b:I

    if-ne v5, v6, :cond_9

    move-object p3, v4

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p3, :cond_b

    new-instance p3, Lt/n;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p3, Lt/n;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput-object v3, p3, Lt/n;->d:Ljava/util/ArrayList;

    iput v2, p3, Lt/n;->e:I

    sget v2, Lt/n;->f:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lt/n;->f:I

    iput v2, p3, Lt/n;->b:I

    iput p1, p3, Lt/n;->c:I

    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v2, p3, Lt/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v2, p0, Ls/h;

    if-eqz v2, :cond_f

    move-object v2, p0

    check-cast v2, Ls/h;

    iget-object v3, v2, Ls/h;->n0:Ls/c;

    iget v2, v2, Ls/h;->o0:I

    if-nez v2, :cond_e

    move v1, v0

    :cond_e
    invoke-virtual {v3, v1, p2, p3}, Ls/c;->c(ILjava/util/ArrayList;Lt/n;)V

    :cond_f
    iget v0, p3, Lt/n;->b:I

    if-nez p1, :cond_10

    iput v0, p0, Ls/d;->h0:I

    iget-object v0, p0, Ls/d;->C:Ls/c;

    invoke-virtual {v0, p1, p2, p3}, Ls/c;->c(ILjava/util/ArrayList;Lt/n;)V

    iget-object v0, p0, Ls/d;->E:Ls/c;

    invoke-virtual {v0, p1, p2, p3}, Ls/c;->c(ILjava/util/ArrayList;Lt/n;)V

    goto :goto_7

    :cond_10
    iput v0, p0, Ls/d;->i0:I

    iget-object v0, p0, Ls/d;->D:Ls/c;

    invoke-virtual {v0, p1, p2, p3}, Ls/c;->c(ILjava/util/ArrayList;Lt/n;)V

    iget-object v0, p0, Ls/d;->G:Ls/c;

    invoke-virtual {v0, p1, p2, p3}, Ls/c;->c(ILjava/util/ArrayList;Lt/n;)V

    iget-object v0, p0, Ls/d;->F:Ls/c;

    invoke-virtual {v0, p1, p2, p3}, Ls/c;->c(ILjava/util/ArrayList;Lt/n;)V

    :goto_7
    iget-object p0, p0, Ls/d;->J:Ls/c;

    invoke-virtual {p0, p1, p2, p3}, Ls/c;->c(ILjava/util/ArrayList;Lt/n;)V

    :goto_8
    return-object p3
.end method

.method public static c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    instance-of v3, v1, Ls/e;

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Ls/d;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Lt/h;->a(Ls/d;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lt/b;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v0, v3}, Ls/e;->P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ls/d;->i(I)Ls/c;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ls/d;->i(I)Ls/c;

    move-result-object v4

    invoke-virtual {v3}, Ls/c;->d()I

    move-result v5

    invoke-virtual {v4}, Ls/c;->d()I

    move-result v6

    iget-object v7, v3, Ls/c;->a:Ljava/util/HashSet;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x3

    if-eqz v7, :cond_b

    iget-boolean v3, v3, Ls/c;->c:Z

    if-eqz v3, :cond_b

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/c;

    iget-object v12, v7, Ls/c;->d:Ls/d;

    invoke-static {v12}, Lt/h;->a(Ls/d;)Z

    move-result v13

    invoke-virtual {v12}, Ls/d;->v()Z

    move-result v14

    if-eqz v14, :cond_1

    if-eqz v13, :cond_1

    new-instance v14, Lt/b;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    invoke-static {v12, v0, v14}, Ls/e;->P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V

    :cond_1
    iget-object v14, v12, Ls/d;->j0:[I

    aget v14, v14, v8

    iget-object v15, v12, Ls/d;->C:Ls/c;

    iget-object v8, v12, Ls/d;->E:Ls/c;

    if-ne v14, v11, :cond_6

    if-eqz v13, :cond_2

    goto :goto_1

    :cond_2
    if-ne v14, v11, :cond_7

    iget v13, v12, Ls/d;->p:I

    if-ltz v13, :cond_7

    iget v13, v12, Ls/d;->o:I

    if-ltz v13, :cond_7

    iget v13, v12, Ls/d;->a0:I

    if-eq v13, v10, :cond_3

    iget v13, v12, Ls/d;->l:I

    if-nez v13, :cond_7

    iget v13, v12, Ls/d;->Q:F

    cmpl-float v13, v13, v9

    if-nez v13, :cond_7

    :cond_3
    invoke-virtual {v12}, Ls/d;->t()Z

    move-result v13

    if-nez v13, :cond_7

    iget-boolean v13, v12, Ls/d;->z:Z

    if-nez v13, :cond_7

    if-ne v7, v15, :cond_4

    iget-object v13, v8, Ls/c;->f:Ls/c;

    if-eqz v13, :cond_4

    iget-boolean v13, v13, Ls/c;->c:Z

    if-nez v13, :cond_5

    :cond_4
    if-ne v7, v8, :cond_7

    iget-object v7, v15, Ls/c;->f:Ls/c;

    if-eqz v7, :cond_7

    iget-boolean v7, v7, Ls/c;->c:Z

    if-eqz v7, :cond_7

    :cond_5
    invoke-virtual {v12}, Ls/d;->t()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v1, v0, v12, v2}, Lt/h;->e(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {v12}, Ls/d;->v()Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_7
    :goto_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_8
    if-ne v7, v15, :cond_9

    iget-object v13, v8, Ls/c;->f:Ls/c;

    if-nez v13, :cond_9

    invoke-virtual {v15}, Ls/c;->e()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v12}, Ls/d;->n()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v12, v7, v8}, Ls/d;->C(II)V

    invoke-static {v0, v12, v2}, Lt/h;->c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    goto :goto_2

    :cond_9
    if-ne v7, v8, :cond_a

    iget-object v13, v15, Ls/c;->f:Ls/c;

    if-nez v13, :cond_a

    invoke-virtual {v8}, Ls/c;->e()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v12}, Ls/d;->n()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v12, v8, v7}, Ls/d;->C(II)V

    invoke-static {v0, v12, v2}, Lt/h;->c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    goto :goto_2

    :cond_a
    if-ne v7, v15, :cond_7

    iget-object v7, v8, Ls/c;->f:Ls/c;

    if-eqz v7, :cond_7

    iget-boolean v7, v7, Ls/c;->c:Z

    if-eqz v7, :cond_7

    invoke-virtual {v12}, Ls/d;->t()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v0, v12, v2}, Lt/h;->d(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    goto :goto_2

    :cond_b
    instance-of v3, v1, Ls/h;

    if-eqz v3, :cond_c

    return-void

    :cond_c
    iget-object v3, v4, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_18

    iget-boolean v4, v4, Ls/c;->c:Z

    if-eqz v4, :cond_18

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/c;

    iget-object v5, v4, Ls/c;->d:Ls/d;

    invoke-static {v5}, Lt/h;->a(Ls/d;)Z

    move-result v7

    invoke-virtual {v5}, Ls/d;->v()Z

    move-result v8

    if-eqz v8, :cond_e

    if-eqz v7, :cond_e

    new-instance v8, Lt/b;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v0, v8}, Ls/e;->P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V

    :cond_e
    iget-object v8, v5, Ls/d;->C:Ls/c;

    iget-object v12, v5, Ls/d;->E:Ls/c;

    if-ne v4, v8, :cond_f

    iget-object v13, v12, Ls/c;->f:Ls/c;

    if-eqz v13, :cond_f

    iget-boolean v13, v13, Ls/c;->c:Z

    if-nez v13, :cond_10

    :cond_f
    if-ne v4, v12, :cond_11

    iget-object v13, v8, Ls/c;->f:Ls/c;

    if-eqz v13, :cond_11

    iget-boolean v13, v13, Ls/c;->c:Z

    if-eqz v13, :cond_11

    :cond_10
    const/4 v13, 0x1

    goto :goto_4

    :cond_11
    const/4 v13, 0x0

    :goto_4
    iget-object v14, v5, Ls/d;->j0:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    if-ne v14, v11, :cond_14

    if-eqz v7, :cond_12

    goto :goto_5

    :cond_12
    if-ne v14, v11, :cond_d

    iget v4, v5, Ls/d;->p:I

    if-ltz v4, :cond_d

    iget v4, v5, Ls/d;->o:I

    if-ltz v4, :cond_d

    iget v4, v5, Ls/d;->a0:I

    if-eq v4, v10, :cond_13

    iget v4, v5, Ls/d;->l:I

    if-nez v4, :cond_d

    iget v4, v5, Ls/d;->Q:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_d

    :cond_13
    invoke-virtual {v5}, Ls/d;->t()Z

    move-result v4

    if-nez v4, :cond_d

    iget-boolean v4, v5, Ls/d;->z:Z

    if-nez v4, :cond_d

    if-eqz v13, :cond_d

    invoke-virtual {v5}, Ls/d;->t()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v1, v0, v5, v2}, Lt/h;->e(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    goto :goto_3

    :cond_14
    :goto_5
    invoke-virtual {v5}, Ls/d;->v()Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_3

    :cond_15
    if-ne v4, v8, :cond_16

    iget-object v7, v12, Ls/c;->f:Ls/c;

    if-nez v7, :cond_16

    invoke-virtual {v8}, Ls/c;->e()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, Ls/d;->n()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v4, v7}, Ls/d;->C(II)V

    invoke-static {v0, v5, v2}, Lt/h;->c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    goto/16 :goto_3

    :cond_16
    if-ne v4, v12, :cond_17

    iget-object v4, v8, Ls/c;->f:Ls/c;

    if-nez v4, :cond_17

    invoke-virtual {v12}, Ls/c;->e()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, Ls/d;->n()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v5, v7, v4}, Ls/d;->C(II)V

    invoke-static {v0, v5, v2}, Lt/h;->c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    goto/16 :goto_3

    :cond_17
    if-eqz v13, :cond_d

    invoke-virtual {v5}, Ls/d;->t()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v0, v5, v2}, Lt/h;->d(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    goto/16 :goto_3

    :cond_18
    return-void
.end method

.method public static d(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V
    .locals 6

    iget v0, p1, Ls/d;->X:F

    iget-object v1, p1, Ls/d;->C:Ls/c;

    iget-object v2, v1, Ls/c;->f:Ls/c;

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    iget-object v3, p1, Ls/d;->E:Ls/c;

    iget-object v4, v3, Ls/c;->f:Ls/c;

    invoke-virtual {v4}, Ls/c;->d()I

    move-result v4

    invoke-virtual {v1}, Ls/c;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Ls/c;->e()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p1}, Ls/d;->n()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v2

    add-int v3, v0, v1

    if-le v2, v4, :cond_2

    sub-int v3, v0, v1

    :cond_2
    invoke-virtual {p1, v0, v3}, Ls/d;->C(II)V

    invoke-static {p0, p1, p2}, Lt/h;->c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    return-void
.end method

.method public static e(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V
    .locals 7

    iget v0, p2, Ls/d;->X:F

    iget-object v1, p2, Ls/d;->C:Ls/c;

    iget-object v2, v1, Ls/c;->f:Ls/c;

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    invoke-virtual {v1}, Ls/c;->e()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p2, Ls/d;->E:Ls/c;

    iget-object v3, v2, Ls/c;->f:Ls/c;

    invoke-virtual {v3}, Ls/c;->d()I

    move-result v3

    invoke-virtual {v2}, Ls/c;->e()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p2}, Ls/d;->n()I

    move-result v2

    iget v4, p2, Ls/d;->a0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p2, Ls/d;->l:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p0, Ls/e;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ls/d;->n()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ls/d;->N:Ls/d;

    invoke-virtual {p0}, Ls/d;->n()I

    move-result p0

    :goto_0
    iget v2, p2, Ls/d;->X:F

    mul-float/2addr v2, v6

    int-to-float p0, p0

    mul-float/2addr v2, p0

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p0, p2, Ls/d;->o:I

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p2, Ls/d;->p:I

    if-lez p0, :cond_3

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p0, v3

    mul-float/2addr v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v2, v1

    invoke-virtual {p2, v1, v2}, Ls/d;->C(II)V

    invoke-static {p1, p2, p3}, Lt/h;->c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    :cond_4
    return-void
.end method

.method public static f(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V
    .locals 6

    iget v0, p1, Ls/d;->Y:F

    iget-object v1, p1, Ls/d;->D:Ls/c;

    iget-object v2, v1, Ls/c;->f:Ls/c;

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    iget-object v3, p1, Ls/d;->F:Ls/c;

    iget-object v4, v3, Ls/c;->f:Ls/c;

    invoke-virtual {v4}, Ls/c;->d()I

    move-result v4

    invoke-virtual {v1}, Ls/c;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Ls/c;->e()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p1}, Ls/d;->k()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int v3, v2, v0

    add-int v5, v3, v1

    if-le v2, v4, :cond_2

    sub-int v3, v2, v0

    sub-int v5, v3, v1

    :cond_2
    invoke-virtual {p1, v3, v5}, Ls/d;->D(II)V

    invoke-static {p0, p1}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    return-void
.end method

.method public static g(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V
    .locals 7

    iget v0, p2, Ls/d;->Y:F

    iget-object v1, p2, Ls/d;->D:Ls/c;

    iget-object v2, v1, Ls/c;->f:Ls/c;

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    invoke-virtual {v1}, Ls/c;->e()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p2, Ls/d;->F:Ls/c;

    iget-object v3, v2, Ls/c;->f:Ls/c;

    invoke-virtual {v3}, Ls/c;->d()I

    move-result v3

    invoke-virtual {v2}, Ls/c;->e()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p2}, Ls/d;->k()I

    move-result v2

    iget v4, p2, Ls/d;->a0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p2, Ls/d;->m:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p0, Ls/e;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ls/d;->k()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ls/d;->N:Ls/d;

    invoke-virtual {p0}, Ls/d;->k()I

    move-result p0

    :goto_0
    mul-float v2, v0, v6

    int-to-float p0, p0

    mul-float/2addr v2, p0

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p0, p2, Ls/d;->r:I

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p2, Ls/d;->s:I

    if-lez p0, :cond_3

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p0, v3

    mul-float/2addr v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v2, v1

    invoke-virtual {p2, v1, v2}, Ls/d;->D(II)V

    invoke-static {p1, p2}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    :cond_4
    return-void
.end method

.method public static h(IIII)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eq p3, v0, :cond_3

    if-eq p3, v2, :cond_3

    if-ne p3, v1, :cond_2

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v0

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v3

    :cond_5
    :goto_4
    return v0
.end method

.method public static i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V
    .locals 14

    instance-of v0, p1, Ls/e;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ls/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lt/h;->a(Ls/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lt/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p0, v0}, Ls/e;->P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ls/d;->i(I)Ls/c;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ls/d;->i(I)Ls/c;

    move-result-object v2

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v3

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v4

    iget-object v5, v1, Ls/c;->a:Ljava/util/HashSet;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-eqz v5, :cond_b

    iget-boolean v1, v1, Ls/c;->c:Z

    if-eqz v1, :cond_b

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/c;

    iget-object v9, v5, Ls/c;->d:Ls/d;

    invoke-static {v9}, Lt/h;->a(Ls/d;)Z

    move-result v10

    invoke-virtual {v9}, Ls/d;->v()Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v10, :cond_2

    new-instance v11, Lt/b;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-static {v9, p0, v11}, Ls/e;->P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V

    :cond_2
    iget-object v11, v9, Ls/d;->j0:[I

    aget v11, v11, v8

    iget-object v12, v9, Ls/d;->D:Ls/c;

    iget-object v13, v9, Ls/d;->F:Ls/c;

    if-ne v11, v0, :cond_7

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    if-ne v11, v0, :cond_1

    iget v10, v9, Ls/d;->s:I

    if-ltz v10, :cond_1

    iget v10, v9, Ls/d;->r:I

    if-ltz v10, :cond_1

    iget v10, v9, Ls/d;->a0:I

    if-eq v10, v7, :cond_4

    iget v10, v9, Ls/d;->m:I

    if-nez v10, :cond_1

    iget v10, v9, Ls/d;->Q:F

    cmpl-float v10, v10, v6

    if-nez v10, :cond_1

    :cond_4
    invoke-virtual {v9}, Ls/d;->u()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, v9, Ls/d;->z:Z

    if-nez v10, :cond_1

    if-ne v5, v12, :cond_5

    iget-object v10, v13, Ls/c;->f:Ls/c;

    if-eqz v10, :cond_5

    iget-boolean v10, v10, Ls/c;->c:Z

    if-nez v10, :cond_6

    :cond_5
    if-ne v5, v13, :cond_1

    iget-object v5, v12, Ls/c;->f:Ls/c;

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Ls/c;->c:Z

    if-eqz v5, :cond_1

    :cond_6
    invoke-virtual {v9}, Ls/d;->u()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1, p0, v9}, Lt/h;->g(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    goto :goto_0

    :cond_7
    :goto_1
    invoke-virtual {v9}, Ls/d;->v()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_0

    :cond_8
    if-ne v5, v12, :cond_9

    iget-object v10, v13, Ls/c;->f:Ls/c;

    if-nez v10, :cond_9

    invoke-virtual {v12}, Ls/c;->e()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v9}, Ls/d;->k()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v9, v5, v10}, Ls/d;->D(II)V

    invoke-static {p0, v9}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    goto/16 :goto_0

    :cond_9
    if-ne v5, v13, :cond_a

    iget-object v10, v13, Ls/c;->f:Ls/c;

    if-nez v10, :cond_a

    invoke-virtual {v13}, Ls/c;->e()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v9}, Ls/d;->k()I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual {v9, v10, v5}, Ls/d;->D(II)V

    invoke-static {p0, v9}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    goto/16 :goto_0

    :cond_a
    if-ne v5, v12, :cond_1

    iget-object v5, v13, Ls/c;->f:Ls/c;

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Ls/c;->c:Z

    if-eqz v5, :cond_1

    invoke-static {p0, v9}, Lt/h;->f(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    goto/16 :goto_0

    :cond_b
    instance-of v1, p1, Ls/h;

    if-eqz v1, :cond_c

    return-void

    :cond_c
    iget-object v1, v2, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_18

    iget-boolean v2, v2, Ls/c;->c:Z

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/c;

    iget-object v3, v2, Ls/c;->d:Ls/d;

    invoke-static {v3}, Lt/h;->a(Ls/d;)Z

    move-result v5

    invoke-virtual {v3}, Ls/d;->v()Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v5, :cond_e

    new-instance v9, Lt/b;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, p0, v9}, Ls/e;->P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V

    :cond_e
    iget-object v9, v3, Ls/d;->D:Ls/c;

    iget-object v10, v3, Ls/d;->F:Ls/c;

    if-ne v2, v9, :cond_f

    iget-object v11, v10, Ls/c;->f:Ls/c;

    if-eqz v11, :cond_f

    iget-boolean v11, v11, Ls/c;->c:Z

    if-nez v11, :cond_10

    :cond_f
    if-ne v2, v10, :cond_11

    iget-object v11, v9, Ls/c;->f:Ls/c;

    if-eqz v11, :cond_11

    iget-boolean v11, v11, Ls/c;->c:Z

    if-eqz v11, :cond_11

    :cond_10
    move v11, v8

    goto :goto_3

    :cond_11
    const/4 v11, 0x0

    :goto_3
    iget-object v12, v3, Ls/d;->j0:[I

    aget v12, v12, v8

    if-ne v12, v0, :cond_14

    if-eqz v5, :cond_12

    goto :goto_4

    :cond_12
    if-ne v12, v0, :cond_d

    iget v2, v3, Ls/d;->s:I

    if-ltz v2, :cond_d

    iget v2, v3, Ls/d;->r:I

    if-ltz v2, :cond_d

    iget v2, v3, Ls/d;->a0:I

    if-eq v2, v7, :cond_13

    iget v2, v3, Ls/d;->m:I

    if-nez v2, :cond_d

    iget v2, v3, Ls/d;->Q:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_d

    :cond_13
    invoke-virtual {v3}, Ls/d;->u()Z

    move-result v2

    if-nez v2, :cond_d

    iget-boolean v2, v3, Ls/d;->z:Z

    if-nez v2, :cond_d

    if-eqz v11, :cond_d

    invoke-virtual {v3}, Ls/d;->u()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p1, p0, v3}, Lt/h;->g(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    goto :goto_2

    :cond_14
    :goto_4
    invoke-virtual {v3}, Ls/d;->v()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_2

    :cond_15
    if-ne v2, v9, :cond_16

    iget-object v5, v10, Ls/c;->f:Ls/c;

    if-nez v5, :cond_16

    invoke-virtual {v9}, Ls/c;->e()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3}, Ls/d;->k()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v2, v5}, Ls/d;->D(II)V

    invoke-static {p0, v3}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    goto/16 :goto_2

    :cond_16
    if-ne v2, v10, :cond_17

    iget-object v2, v9, Ls/c;->f:Ls/c;

    if-nez v2, :cond_17

    invoke-virtual {v10}, Ls/c;->e()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {v3}, Ls/d;->k()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v3, v5, v2}, Ls/d;->D(II)V

    invoke-static {p0, v3}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    goto/16 :goto_2

    :cond_17
    if-eqz v11, :cond_d

    invoke-virtual {v3}, Ls/d;->u()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p0, v3}, Lt/h;->f(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    goto/16 :goto_2

    :cond_18
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    iget-object v1, p1, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_1e

    iget-boolean v1, p1, Ls/c;->c:Z

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Ls/c;->d()I

    move-result v1

    iget-object p1, p1, Ls/c;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/c;

    iget-object v3, v2, Ls/c;->d:Ls/d;

    invoke-static {v3}, Lt/h;->a(Ls/d;)Z

    move-result v4

    invoke-virtual {v3}, Ls/d;->v()Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz v4, :cond_1a

    new-instance v5, Lt/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, p0, v5}, Ls/e;->P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V

    :cond_1a
    iget-object v5, v3, Ls/d;->j0:[I

    aget v5, v5, v8

    if-ne v5, v0, :cond_1b

    if-eqz v4, :cond_19

    :cond_1b
    invoke-virtual {v3}, Ls/d;->v()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_5

    :cond_1c
    iget-object v4, v3, Ls/d;->G:Ls/c;

    if-ne v2, v4, :cond_19

    iget-boolean v2, v3, Ls/d;->y:Z

    if-nez v2, :cond_1d

    goto :goto_6

    :cond_1d
    iget v2, v3, Ls/d;->U:I

    sub-int v2, v1, v2

    iget v5, v3, Ls/d;->P:I

    add-int/2addr v5, v2

    iput v2, v3, Ls/d;->T:I

    iget-object v6, v3, Ls/d;->D:Ls/c;

    invoke-virtual {v6, v2}, Ls/c;->l(I)V

    iget-object v2, v3, Ls/d;->F:Ls/c;

    invoke-virtual {v2, v5}, Ls/c;->l(I)V

    invoke-virtual {v4, v1}, Ls/c;->l(I)V

    iput-boolean v8, v3, Ls/d;->i:Z

    :goto_6
    invoke-static {p0, v3}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    goto :goto_5

    :cond_1e
    return-void
.end method
