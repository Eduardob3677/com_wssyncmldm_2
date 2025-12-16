.class public final Ls/g;
.super Ls/i;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:F

.field public E0:F

.field public F0:F

.field public G0:F

.field public H0:F

.field public I0:F

.field public J0:I

.field public K0:I

.field public L0:I

.field public M0:I

.field public N0:I

.field public O0:I

.field public P0:I

.field public Q0:Ljava/util/ArrayList;

.field public R0:[Ls/d;

.field public S0:[Ls/d;

.field public T0:[I

.field public U0:[Ls/d;

.field public V0:I

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:Z

.field public t0:I

.field public u0:I

.field public v0:Lt/b;

.field public w0:Lcom/google/android/gms/internal/firebase-auth-api/a5;

.field public x0:I

.field public y0:I

.field public z0:I


# virtual methods
.method public final L()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ls/i;->l0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ls/i;->k0:[Ls/d;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ls/d;->z:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final M(Ls/d;I)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Ls/d;->j0:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget v3, p1, Ls/d;->m:I

    if-nez v3, :cond_1

    return v0

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    iget v3, p1, Ls/d;->t:F

    int-to-float p2, p2

    mul-float/2addr v3, p2

    float-to-int p2, v3

    invoke-virtual {p1}, Ls/d;->k()I

    move-result v3

    if-eq p2, v3, :cond_2

    iput-boolean v2, p1, Ls/d;->g:Z

    aget v5, v1, v0

    invoke-virtual {p1}, Ls/d;->n()I

    move-result v6

    const/4 v7, 0x1

    move-object v4, p0

    move v8, p2

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Ls/g;->O(IIIILs/d;)V

    :cond_2
    return p2

    :cond_3
    if-ne v3, v2, :cond_4

    invoke-virtual {p1}, Ls/d;->k()I

    move-result p0

    return p0

    :cond_4
    if-ne v3, v4, :cond_5

    invoke-virtual {p1}, Ls/d;->n()I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Ls/d;->Q:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_5
    invoke-virtual {p1}, Ls/d;->k()I

    move-result p0

    return p0
.end method

.method public final N(Ls/d;I)I
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Ls/d;->j0:[I

    aget v2, v1, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget v2, p1, Ls/d;->l:I

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v4, 0x1

    if-ne v2, v0, :cond_3

    iget v0, p1, Ls/d;->q:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1}, Ls/d;->n()I

    move-result v0

    if-eq p2, v0, :cond_2

    iput-boolean v4, p1, Ls/d;->g:Z

    aget v8, v1, v4

    invoke-virtual {p1}, Ls/d;->k()I

    move-result v9

    const/4 v6, 0x1

    move-object v5, p0

    move v7, p2

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Ls/g;->O(IIIILs/d;)V

    :cond_2
    return p2

    :cond_3
    if-ne v2, v4, :cond_4

    invoke-virtual {p1}, Ls/d;->n()I

    move-result p0

    return p0

    :cond_4
    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Ls/d;->k()I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Ls/d;->Q:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_5
    invoke-virtual {p1}, Ls/d;->n()I

    move-result p0

    return p0
.end method

.method public final O(IIIILs/d;)V
    .locals 2

    :goto_0
    iget-object v0, p0, Ls/g;->w0:Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-nez v0, :cond_0

    iget-object v1, p0, Ls/d;->N:Ls/d;

    if-eqz v1, :cond_0

    check-cast v1, Ls/e;

    iget-object v0, v1, Ls/e;->n0:Lcom/google/android/gms/internal/firebase-auth-api/a5;

    iput-object v0, p0, Ls/g;->w0:Lcom/google/android/gms/internal/firebase-auth-api/a5;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ls/g;->v0:Lt/b;

    iput p1, p0, Lt/b;->a:I

    iput p3, p0, Lt/b;->b:I

    iput p2, p0, Lt/b;->c:I

    iput p4, p0, Lt/b;->d:I

    invoke-virtual {v0, p5, p0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b(Ls/d;Lt/b;)V

    iget p1, p0, Lt/b;->e:I

    invoke-virtual {p5, p1}, Ls/d;->H(I)V

    iget p1, p0, Lt/b;->f:I

    invoke-virtual {p5, p1}, Ls/d;->E(I)V

    iget-boolean p1, p0, Lt/b;->h:Z

    iput-boolean p1, p5, Ls/d;->y:Z

    iget p0, p0, Lt/b;->g:I

    invoke-virtual {p5, p0}, Ls/d;->B(I)V

    return-void
.end method

.method public final b(Lr/c;Z)V
    .locals 10

    invoke-super {p0, p1, p2}, Ls/d;->b(Lr/c;Z)V

    iget-object p1, p0, Ls/d;->N:Ls/d;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Ls/e;

    iget-boolean p1, p1, Ls/e;->o0:Z

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget v0, p0, Ls/g;->N0:I

    iget-object v1, p0, Ls/g;->Q0:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    if-eq v0, v2, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto/16 :goto_c

    :cond_1
    iget-object v0, p0, Ls/g;->T0:[I

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ls/g;->S0:[Ls/d;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ls/g;->R0:[Ls/d;

    if-nez v0, :cond_2

    goto/16 :goto_c

    :cond_2
    move v0, p2

    :goto_1
    iget v1, p0, Ls/g;->V0:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ls/g;->U0:[Ls/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ls/d;->z()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ls/g;->T0:[I

    aget v1, v0, p2

    aget v0, v0, v2

    const/4 v3, 0x0

    move v4, p2

    :goto_2
    const/16 v5, 0x8

    if-ge v4, v1, :cond_a

    if-eqz p1, :cond_4

    sub-int v6, v1, v4

    sub-int/2addr v6, v2

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    iget-object v7, p0, Ls/g;->S0:[Ls/d;

    aget-object v6, v7, v6

    if-eqz v6, :cond_9

    iget v7, v6, Ls/d;->a0:I

    if-ne v7, v5, :cond_5

    goto :goto_4

    :cond_5
    iget-object v5, v6, Ls/d;->C:Ls/c;

    if-nez v4, :cond_6

    iget v7, p0, Ls/g;->q0:I

    iget-object v8, p0, Ls/d;->C:Ls/c;

    invoke-virtual {v6, v5, v8, v7}, Ls/d;->f(Ls/c;Ls/c;I)V

    iget v7, p0, Ls/g;->x0:I

    iput v7, v6, Ls/d;->c0:I

    iget v7, p0, Ls/g;->D0:F

    iput v7, v6, Ls/d;->X:F

    :cond_6
    add-int/lit8 v7, v1, -0x1

    if-ne v4, v7, :cond_7

    iget v7, p0, Ls/g;->r0:I

    iget-object v8, v6, Ls/d;->E:Ls/c;

    iget-object v9, p0, Ls/d;->E:Ls/c;

    invoke-virtual {v6, v8, v9, v7}, Ls/d;->f(Ls/c;Ls/c;I)V

    :cond_7
    if-lez v4, :cond_8

    iget-object v7, v3, Ls/d;->E:Ls/c;

    iget v8, p0, Ls/g;->J0:I

    invoke-virtual {v6, v5, v7, v8}, Ls/d;->f(Ls/c;Ls/c;I)V

    iget-object v7, v3, Ls/d;->E:Ls/c;

    invoke-virtual {v3, v7, v5, p2}, Ls/d;->f(Ls/c;Ls/c;I)V

    :cond_8
    move-object v3, v6

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    move p1, p2

    :goto_5
    if-ge p1, v0, :cond_10

    iget-object v4, p0, Ls/g;->R0:[Ls/d;

    aget-object v4, v4, p1

    if-eqz v4, :cond_f

    iget v6, v4, Ls/d;->a0:I

    if-ne v6, v5, :cond_b

    goto :goto_6

    :cond_b
    iget-object v6, v4, Ls/d;->D:Ls/c;

    if-nez p1, :cond_c

    iget v7, p0, Ls/g;->m0:I

    iget-object v8, p0, Ls/d;->D:Ls/c;

    invoke-virtual {v4, v6, v8, v7}, Ls/d;->f(Ls/c;Ls/c;I)V

    iget v7, p0, Ls/g;->y0:I

    iput v7, v4, Ls/d;->d0:I

    iget v7, p0, Ls/g;->E0:F

    iput v7, v4, Ls/d;->Y:F

    :cond_c
    add-int/lit8 v7, v0, -0x1

    if-ne p1, v7, :cond_d

    iget v7, p0, Ls/g;->n0:I

    iget-object v8, v4, Ls/d;->F:Ls/c;

    iget-object v9, p0, Ls/d;->F:Ls/c;

    invoke-virtual {v4, v8, v9, v7}, Ls/d;->f(Ls/c;Ls/c;I)V

    :cond_d
    if-lez p1, :cond_e

    iget-object v7, v3, Ls/d;->F:Ls/c;

    iget v8, p0, Ls/g;->K0:I

    invoke-virtual {v4, v6, v7, v8}, Ls/d;->f(Ls/c;Ls/c;I)V

    iget-object v7, v3, Ls/d;->F:Ls/c;

    invoke-virtual {v3, v7, v6, p2}, Ls/d;->f(Ls/c;Ls/c;I)V

    :cond_e
    move-object v3, v4

    :cond_f
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_10
    move p1, p2

    :goto_7
    if-ge p1, v1, :cond_1a

    move v3, p2

    :goto_8
    if-ge v3, v0, :cond_16

    mul-int v4, v3, v1

    add-int/2addr v4, p1

    iget v6, p0, Ls/g;->P0:I

    if-ne v6, v2, :cond_11

    mul-int v4, p1, v0

    add-int/2addr v4, v3

    :cond_11
    iget-object v6, p0, Ls/g;->U0:[Ls/d;

    array-length v7, v6

    if-lt v4, v7, :cond_12

    goto :goto_9

    :cond_12
    aget-object v4, v6, v4

    if-eqz v4, :cond_15

    iget v6, v4, Ls/d;->a0:I

    if-ne v6, v5, :cond_13

    goto :goto_9

    :cond_13
    iget-object v6, p0, Ls/g;->S0:[Ls/d;

    aget-object v6, v6, p1

    iget-object v7, p0, Ls/g;->R0:[Ls/d;

    aget-object v7, v7, v3

    if-eq v4, v6, :cond_14

    iget-object v8, v6, Ls/d;->C:Ls/c;

    iget-object v9, v4, Ls/d;->C:Ls/c;

    invoke-virtual {v4, v9, v8, p2}, Ls/d;->f(Ls/c;Ls/c;I)V

    iget-object v8, v4, Ls/d;->E:Ls/c;

    iget-object v6, v6, Ls/d;->E:Ls/c;

    invoke-virtual {v4, v8, v6, p2}, Ls/d;->f(Ls/c;Ls/c;I)V

    :cond_14
    if-eq v4, v7, :cond_15

    iget-object v6, v7, Ls/d;->D:Ls/c;

    iget-object v8, v4, Ls/d;->D:Ls/c;

    invoke-virtual {v4, v8, v6, p2}, Ls/d;->f(Ls/c;Ls/c;I)V

    iget-object v6, v4, Ls/d;->F:Ls/c;

    iget-object v7, v7, Ls/d;->F:Ls/c;

    invoke-virtual {v4, v6, v7, p2}, Ls/d;->f(Ls/c;Ls/c;I)V

    :cond_15
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, p2

    :goto_a
    if-ge v3, v0, :cond_1a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/f;

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_18

    move v5, v2

    goto :goto_b

    :cond_18
    move v5, p2

    :goto_b
    invoke-virtual {v4, v3, p1, v5}, Ls/f;->b(IZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/f;

    invoke-virtual {v0, p2, p1, v2}, Ls/f;->b(IZZ)V

    :cond_1a
    :goto_c
    iput-boolean p2, p0, Ls/g;->s0:Z

    return-void
.end method
