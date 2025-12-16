.class public final Ls/e;
.super Ls/d;
.source "SourceFile"


# instance fields
.field public A0:Ljava/lang/ref/WeakReference;

.field public B0:Ljava/lang/ref/WeakReference;

.field public C0:Ljava/lang/ref/WeakReference;

.field public final D0:Lt/b;

.field public k0:Ljava/util/ArrayList;

.field public final l0:LJ/r0;

.field public final m0:Lt/e;

.field public n0:Lcom/google/android/gms/internal/firebase-auth-api/a5;

.field public o0:Z

.field public final p0:Lr/c;

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:I

.field public u0:[Ls/b;

.field public v0:[Ls/b;

.field public w0:I

.field public x0:Z

.field public y0:Z

.field public z0:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ls/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls/e;->k0:Ljava/util/ArrayList;

    new-instance v0, LJ/r0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LJ/r0;->c:Ljava/lang/Object;

    new-instance v1, Lt/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LJ/r0;->d:Ljava/lang/Object;

    iput-object p0, v0, LJ/r0;->e:Ljava/lang/Object;

    iput-object v0, p0, Ls/e;->l0:LJ/r0;

    new-instance v0, Lt/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lt/e;->b:Z

    iput-boolean v1, v0, Lt/e;->c:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lt/e;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lt/e;->f:Lcom/google/android/gms/internal/firebase-auth-api/a5;

    new-instance v2, Lt/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lt/e;->g:Lt/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lt/e;->h:Ljava/util/ArrayList;

    iput-object p0, v0, Lt/e;->a:Ls/e;

    iput-object p0, v0, Lt/e;->d:Ls/e;

    iput-object v0, p0, Ls/e;->m0:Lt/e;

    iput-object v1, p0, Ls/e;->n0:Lcom/google/android/gms/internal/firebase-auth-api/a5;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/e;->o0:Z

    new-instance v2, Lr/c;

    invoke-direct {v2}, Lr/c;-><init>()V

    iput-object v2, p0, Ls/e;->p0:Lr/c;

    iput v0, p0, Ls/e;->s0:I

    iput v0, p0, Ls/e;->t0:I

    const/4 v2, 0x4

    new-array v3, v2, [Ls/b;

    iput-object v3, p0, Ls/e;->u0:[Ls/b;

    new-array v2, v2, [Ls/b;

    iput-object v2, p0, Ls/e;->v0:[Ls/b;

    const/16 v2, 0x101

    iput v2, p0, Ls/e;->w0:I

    iput-boolean v0, p0, Ls/e;->x0:Z

    iput-boolean v0, p0, Ls/e;->y0:Z

    iput-object v1, p0, Ls/e;->z0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Ls/e;->A0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Ls/e;->B0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Ls/e;->C0:Ljava/lang/ref/WeakReference;

    new-instance v0, Lt/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls/e;->D0:Lt/b;

    return-void
.end method

.method public static P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ls/d;->j0:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p2, Lt/b;->a:I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p2, Lt/b;->b:I

    invoke-virtual {p0}, Ls/d;->n()I

    move-result v0

    iput v0, p2, Lt/b;->c:I

    invoke-virtual {p0}, Ls/d;->k()I

    move-result v0

    iput v0, p2, Lt/b;->d:I

    iput-boolean v1, p2, Lt/b;->i:Z

    iput v1, p2, Lt/b;->j:I

    iget v0, p2, Lt/b;->a:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v4, p2, Lt/b;->b:I

    if-ne v4, v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget v5, p0, Ls/d;->Q:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v3, :cond_4

    iget v6, p0, Ls/d;->Q:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    const/4 v6, 0x2

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Ls/d;->q(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Ls/d;->l:I

    if-nez v7, :cond_6

    if-nez v5, :cond_6

    iput v6, p2, Lt/b;->a:I

    if-eqz v3, :cond_5

    iget v0, p0, Ls/d;->m:I

    if-nez v0, :cond_5

    iput v2, p2, Lt/b;->a:I

    :cond_5
    move v0, v1

    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {p0, v2}, Ls/d;->q(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Ls/d;->m:I

    if-nez v7, :cond_8

    if-nez v4, :cond_8

    iput v6, p2, Lt/b;->b:I

    if-eqz v0, :cond_7

    iget v3, p0, Ls/d;->l:I

    if-nez v3, :cond_7

    iput v2, p2, Lt/b;->b:I

    :cond_7
    move v3, v1

    :cond_8
    invoke-virtual {p0}, Ls/d;->w()Z

    move-result v7

    if-eqz v7, :cond_9

    iput v2, p2, Lt/b;->a:I

    move v0, v1

    :cond_9
    invoke-virtual {p0}, Ls/d;->x()Z

    move-result v7

    if-eqz v7, :cond_a

    iput v2, p2, Lt/b;->b:I

    move v3, v1

    :cond_a
    iget-object v7, p0, Ls/d;->n:[I

    const/4 v8, -0x1

    const/4 v9, 0x4

    if-eqz v5, :cond_f

    aget v5, v7, v1

    if-ne v5, v9, :cond_b

    iput v2, p2, Lt/b;->a:I

    goto :goto_6

    :cond_b
    if-nez v3, :cond_f

    iget v3, p2, Lt/b;->b:I

    if-ne v3, v2, :cond_c

    iget v3, p2, Lt/b;->d:I

    goto :goto_4

    :cond_c
    iput v6, p2, Lt/b;->a:I

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b(Ls/d;Lt/b;)V

    iget v3, p2, Lt/b;->f:I

    :goto_4
    iput v2, p2, Lt/b;->a:I

    iget v5, p0, Ls/d;->R:I

    if-eqz v5, :cond_e

    if-ne v5, v8, :cond_d

    goto :goto_5

    :cond_d
    iget v5, p0, Ls/d;->Q:F

    int-to-float v3, v3

    div-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p2, Lt/b;->c:I

    goto :goto_6

    :cond_e
    :goto_5
    iget v5, p0, Ls/d;->Q:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p2, Lt/b;->c:I

    :cond_f
    :goto_6
    if-eqz v4, :cond_14

    aget v3, v7, v2

    if-ne v3, v9, :cond_10

    iput v2, p2, Lt/b;->b:I

    goto :goto_9

    :cond_10
    if-nez v0, :cond_14

    iget v0, p2, Lt/b;->a:I

    if-ne v0, v2, :cond_11

    iget v0, p2, Lt/b;->c:I

    goto :goto_7

    :cond_11
    iput v6, p2, Lt/b;->b:I

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b(Ls/d;Lt/b;)V

    iget v0, p2, Lt/b;->e:I

    :goto_7
    iput v2, p2, Lt/b;->b:I

    iget v2, p0, Ls/d;->R:I

    if-eqz v2, :cond_13

    if-ne v2, v8, :cond_12

    goto :goto_8

    :cond_12
    int-to-float v0, v0

    iget v2, p0, Ls/d;->Q:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Lt/b;->d:I

    goto :goto_9

    :cond_13
    :goto_8
    int-to-float v0, v0

    iget v2, p0, Ls/d;->Q:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Lt/b;->d:I

    :cond_14
    :goto_9
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b(Ls/d;Lt/b;)V

    iget p1, p2, Lt/b;->e:I

    invoke-virtual {p0, p1}, Ls/d;->H(I)V

    iget p1, p2, Lt/b;->f:I

    invoke-virtual {p0, p1}, Ls/d;->E(I)V

    iget-boolean p1, p2, Lt/b;->h:Z

    iput-boolean p1, p0, Ls/d;->y:Z

    iget p1, p2, Lt/b;->g:I

    invoke-virtual {p0, p1}, Ls/d;->B(I)V

    iput v1, p2, Lt/b;->j:I

    return-void
.end method


# virtual methods
.method public final A(LJ/r0;)V
    .locals 3

    invoke-super {p0, p1}, Ls/d;->A(LJ/r0;)V

    iget-object v0, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/d;

    invoke-virtual {v2, p1}, Ls/d;->A(LJ/r0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Ls/d;->I(ZZ)V

    iget-object v0, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/d;

    invoke-virtual {v2, p1, p2}, Ls/d;->I(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final K(Ls/d;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Ls/e;->s0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Ls/e;->v0:[Ls/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ls/b;

    iput-object p2, p0, Ls/e;->v0:[Ls/b;

    :cond_0
    iget-object p2, p0, Ls/e;->v0:[Ls/b;

    iget v1, p0, Ls/e;->s0:I

    new-instance v2, Ls/b;

    iget-boolean v3, p0, Ls/e;->o0:Z

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v3}, Ls/b;-><init>(Ls/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Ls/e;->s0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    iget p2, p0, Ls/e;->t0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Ls/e;->u0:[Ls/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ls/b;

    iput-object p2, p0, Ls/e;->u0:[Ls/b;

    :cond_2
    iget-object p2, p0, Ls/e;->u0:[Ls/b;

    iget v1, p0, Ls/e;->t0:I

    new-instance v2, Ls/b;

    iget-boolean v3, p0, Ls/e;->o0:Z

    invoke-direct {v2, p1, v0, v3}, Ls/b;-><init>(Ls/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Ls/e;->t0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final L(Lr/c;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ls/e;->Q(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Ls/d;->b(Lr/c;Z)V

    iget-object v1, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/d;

    iget-object v7, v6, Ls/d;->M:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Ls/a;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eqz v4, :cond_7

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_7

    iget-object v6, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/d;

    instance-of v7, v6, Ls/a;

    if-eqz v7, :cond_6

    check-cast v6, Ls/a;

    move v7, v2

    :goto_2
    iget v8, v6, Ls/i;->l0:I

    if-ge v7, v8, :cond_6

    iget-object v8, v6, Ls/i;->k0:[Ls/d;

    aget-object v8, v8, v7

    iget v9, v6, Ls/a;->m0:I

    if-eqz v9, :cond_4

    if-ne v9, v5, :cond_2

    goto :goto_3

    :cond_2
    if-eq v9, v3, :cond_3

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    :cond_3
    iget-object v8, v8, Ls/d;->M:[Z

    aput-boolean v5, v8, v5

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v8, v8, Ls/d;->M:[Z

    aput-boolean v5, v8, v2

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move v4, v2

    :goto_5
    if-ge v4, v1, :cond_a

    iget-object v6, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Ls/g;

    if-nez v7, :cond_8

    instance-of v7, v6, Ls/h;

    if-eqz v7, :cond_9

    :cond_8
    invoke-virtual {v6, p1, v0}, Ls/d;->b(Lr/c;Z)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    sget-boolean v4, Lr/c;->p:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v6, v2

    :goto_6
    if-ge v6, v1, :cond_d

    iget-object v7, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/d;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v7, Ls/g;

    if-nez v8, :cond_c

    instance-of v8, v7, Ls/h;

    if-eqz v8, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, p0, Ls/d;->j0:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_e

    move v10, v2

    goto :goto_8

    :cond_e
    move v10, v5

    :goto_8
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v4

    invoke-virtual/range {v6 .. v11}, Ls/d;->a(Ls/e;Lr/c;Ljava/util/HashSet;IZ)V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/d;

    invoke-static {p0, p1, v3}, Ls/j;->b(Ls/e;Lr/c;Ls/d;)V

    invoke-virtual {v3, p1, v0}, Ls/d;->b(Lr/c;Z)V

    goto :goto_9

    :cond_f
    move v4, v2

    :goto_a
    if-ge v4, v1, :cond_16

    iget-object v6, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/d;

    instance-of v7, v6, Ls/e;

    if-eqz v7, :cond_13

    iget-object v7, v6, Ls/d;->j0:[I

    aget v8, v7, v2

    aget v7, v7, v5

    if-ne v8, v3, :cond_10

    invoke-virtual {v6, v5}, Ls/d;->F(I)V

    :cond_10
    if-ne v7, v3, :cond_11

    invoke-virtual {v6, v5}, Ls/d;->G(I)V

    :cond_11
    invoke-virtual {v6, p1, v0}, Ls/d;->b(Lr/c;Z)V

    if-ne v8, v3, :cond_12

    invoke-virtual {v6, v8}, Ls/d;->F(I)V

    :cond_12
    if-ne v7, v3, :cond_15

    invoke-virtual {v6, v7}, Ls/d;->G(I)V

    goto :goto_b

    :cond_13
    invoke-static {p0, p1, v6}, Ls/j;->b(Ls/e;Lr/c;Ls/d;)V

    instance-of v7, v6, Ls/g;

    if-nez v7, :cond_15

    instance-of v7, v6, Ls/h;

    if-eqz v7, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {v6, p1, v0}, Ls/d;->b(Lr/c;Z)V

    :cond_15
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_16
    iget v0, p0, Ls/e;->s0:I

    const/4 v1, 0x0

    if-lez v0, :cond_17

    invoke-static {p0, p1, v1, v2}, Ls/j;->a(Ls/e;Lr/c;Ljava/util/ArrayList;I)V

    :cond_17
    iget v0, p0, Ls/e;->t0:I

    if-lez v0, :cond_18

    invoke-static {p0, p1, v1, v5}, Ls/j;->a(Ls/e;Lr/c;Ljava/util/ArrayList;I)V

    :cond_18
    return-void
.end method

.method public final M(Ls/c;)V
    .locals 2

    iget-object v0, p0, Ls/e;->z0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls/c;->d()I

    move-result v0

    iget-object v1, p0, Ls/e;->z0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/c;

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ls/e;->z0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public final N(IZ)Z
    .locals 12

    const/4 v0, 0x1

    and-int/2addr p2, v0

    iget-object p0, p0, Ls/e;->m0:Lt/e;

    iget-object v1, p0, Lt/e;->a:Ls/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ls/d;->j(I)I

    move-result v3

    invoke-virtual {v1, v0}, Ls/d;->j(I)I

    move-result v4

    invoke-virtual {v1}, Ls/d;->o()I

    move-result v5

    invoke-virtual {v1}, Ls/d;->p()I

    move-result v6

    iget-object v7, p0, Lt/e;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    const/4 v8, 0x2

    if-eq v3, v8, :cond_0

    if-ne v4, v8, :cond_4

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lt/o;

    iget v11, v10, Lt/o;->f:I

    if-ne v11, p1, :cond_1

    invoke-virtual {v10}, Lt/o;->k()Z

    move-result v10

    if-nez v10, :cond_1

    move p2, v2

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    if-ne v3, v8, :cond_4

    invoke-virtual {v1, v0}, Ls/d;->F(I)V

    invoke-virtual {p0, v1, v2}, Lt/e;->d(Ls/e;I)I

    move-result p2

    invoke-virtual {v1, p2}, Ls/d;->H(I)V

    iget-object p2, v1, Ls/d;->d:Lt/k;

    iget-object p2, p2, Lt/o;->e:Lt/g;

    invoke-virtual {v1}, Ls/d;->n()I

    move-result v8

    invoke-virtual {p2, v8}, Lt/g;->d(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    if-ne v4, v8, :cond_4

    invoke-virtual {v1, v0}, Ls/d;->G(I)V

    invoke-virtual {p0, v1, v0}, Lt/e;->d(Ls/e;I)I

    move-result p2

    invoke-virtual {v1, p2}, Ls/d;->E(I)V

    iget-object p2, v1, Ls/d;->e:Lt/m;

    iget-object p2, p2, Lt/o;->e:Lt/g;

    invoke-virtual {v1}, Ls/d;->k()I

    move-result v8

    invoke-virtual {p2, v8}, Lt/g;->d(I)V

    :cond_4
    :goto_0
    iget-object p2, v1, Ls/d;->j0:[I

    const/4 v8, 0x4

    if-nez p1, :cond_6

    aget p2, p2, v2

    if-eq p2, v0, :cond_5

    if-ne p2, v8, :cond_7

    :cond_5
    invoke-virtual {v1}, Ls/d;->n()I

    move-result p2

    add-int/2addr p2, v5

    iget-object v6, v1, Ls/d;->d:Lt/k;

    iget-object v6, v6, Lt/o;->i:Lt/f;

    invoke-virtual {v6, p2}, Lt/f;->d(I)V

    iget-object v6, v1, Ls/d;->d:Lt/k;

    iget-object v6, v6, Lt/o;->e:Lt/g;

    sub-int/2addr p2, v5

    invoke-virtual {v6, p2}, Lt/g;->d(I)V

    :goto_1
    move p2, v0

    goto :goto_3

    :cond_6
    aget p2, p2, v0

    if-eq p2, v0, :cond_8

    if-ne p2, v8, :cond_7

    goto :goto_2

    :cond_7
    move p2, v2

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v1}, Ls/d;->k()I

    move-result p2

    add-int/2addr p2, v6

    iget-object v5, v1, Ls/d;->e:Lt/m;

    iget-object v5, v5, Lt/o;->i:Lt/f;

    invoke-virtual {v5, p2}, Lt/f;->d(I)V

    iget-object v5, v1, Ls/d;->e:Lt/m;

    iget-object v5, v5, Lt/o;->e:Lt/g;

    sub-int/2addr p2, v6

    invoke-virtual {v5, p2}, Lt/g;->d(I)V

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Lt/e;->g()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/o;

    iget v6, v5, Lt/o;->f:I

    if-eq v6, p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v5, Lt/o;->b:Ls/d;

    if-ne v6, v1, :cond_a

    iget-boolean v6, v5, Lt/o;->g:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Lt/o;->e()V

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/o;

    iget v6, v5, Lt/o;->f:I

    if-eq v6, p1, :cond_d

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    iget-object v6, v5, Lt/o;->b:Ls/d;

    if-ne v6, v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, v5, Lt/o;->h:Lt/f;

    iget-boolean v6, v6, Lt/f;->j:Z

    if-nez v6, :cond_f

    :goto_6
    move v0, v2

    goto :goto_7

    :cond_f
    iget-object v6, v5, Lt/o;->i:Lt/f;

    iget-boolean v6, v6, Lt/f;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    instance-of v6, v5, Lt/c;

    if-nez v6, :cond_c

    iget-object v5, v5, Lt/o;->e:Lt/g;

    iget-boolean v5, v5, Lt/f;->j:Z

    if-nez v5, :cond_c

    goto :goto_6

    :cond_11
    :goto_7
    invoke-virtual {v1, v3}, Ls/d;->F(I)V

    invoke-virtual {v1, v4}, Ls/d;->G(I)V

    return v0
.end method

.method public final O()V
    .locals 29

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Ls/d;->S:I

    iput v2, v1, Ls/d;->T:I

    iput-boolean v2, v1, Ls/e;->x0:Z

    iput-boolean v2, v1, Ls/e;->y0:Z

    iget-object v0, v1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ls/d;->n()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ls/d;->k()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Ls/d;->j0:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    aget v8, v5, v2

    iget v9, v1, Ls/e;->w0:I

    invoke-static {v9, v6}, Ls/j;->c(II)Z

    move-result v9

    iget-object v10, v1, Ls/d;->D:Ls/c;

    iget-object v11, v1, Ls/d;->C:Ls/c;

    if-eqz v9, :cond_1e

    iget-object v9, v1, Ls/e;->n0:Lcom/google/android/gms/internal/firebase-auth-api/a5;

    aget v13, v5, v2

    aget v14, v5, v6

    iput-boolean v2, v1, Ls/d;->h:Z

    iput-boolean v2, v1, Ls/d;->i:Z

    iget-object v15, v1, Ls/d;->L:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v6, v2

    :goto_0
    if-ge v6, v12, :cond_0

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v12

    move-object/from16 v12, v17

    check-cast v12, Ls/c;

    iput-boolean v2, v12, Ls/c;->c:Z

    iput v2, v12, Ls/c;->b:I

    add-int/lit8 v6, v6, 0x1

    move/from16 v12, v18

    goto :goto_0

    :cond_0
    iget-object v6, v1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v15, v2

    :goto_1
    if-ge v15, v12, :cond_2

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, Ls/d;

    iput-boolean v2, v4, Ls/d;->h:Z

    iput-boolean v2, v4, Ls/d;->i:Z

    iget-object v4, v4, Ls/d;->L:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v19, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v2

    move-object/from16 v2, v20

    check-cast v2, Ls/c;

    move-object/from16 v20, v4

    const/4 v4, 0x0

    iput-boolean v4, v2, Ls/c;->c:Z

    iput v4, v2, Ls/c;->b:I

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v20

    move/from16 v2, v21

    goto :goto_2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v18

    move/from16 v0, v19

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move/from16 v19, v0

    move/from16 v18, v4

    iget-boolean v0, v1, Ls/e;->o0:Z

    const/4 v2, 0x1

    if-ne v13, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Ls/d;->n()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ls/d;->C(II)V

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Ls/c;->l(I)V

    iput v4, v1, Ls/d;->S:I

    :goto_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v4, v12, :cond_9

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    check-cast v15, Ls/d;

    move-object/from16 v21, v11

    instance-of v11, v15, Ls/h;

    if-eqz v11, :cond_7

    check-cast v15, Ls/h;

    iget v11, v15, Ls/h;->o0:I

    move-object/from16 v22, v5

    const/4 v5, 0x1

    if-ne v11, v5, :cond_8

    iget v2, v15, Ls/h;->l0:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    invoke-virtual {v15, v2}, Ls/h;->K(I)V

    goto :goto_5

    :cond_4
    iget v2, v15, Ls/h;->m0:I

    if-eq v2, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Ls/d;->w()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Ls/d;->n()I

    move-result v2

    iget v5, v15, Ls/h;->m0:I

    sub-int/2addr v2, v5

    invoke-virtual {v15, v2}, Ls/h;->K(I)V

    goto :goto_5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ls/d;->w()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v15, Ls/h;->k0:F

    invoke-virtual/range {p0 .. p0}, Ls/d;->n()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v15, v2}, Ls/h;->K(I)V

    :cond_6
    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v22, v5

    instance-of v5, v15, Ls/a;

    if-eqz v5, :cond_8

    check-cast v15, Ls/a;

    invoke-virtual {v15}, Ls/a;->N()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v13, 0x1

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v11, v21

    move-object/from16 v5, v22

    goto :goto_4

    :cond_9
    move-object/from16 v22, v5

    move-object/from16 v21, v11

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v12, :cond_b

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    instance-of v5, v4, Ls/h;

    if-eqz v5, :cond_a

    check-cast v4, Ls/h;

    iget v5, v4, Ls/h;->o0:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_a

    invoke-static {v9, v4, v0}, Lt/h;->c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    invoke-static {v9, v1, v0}, Lt/h;->c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    if-eqz v13, :cond_d

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v12, :cond_d

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    instance-of v5, v4, Ls/a;

    if-eqz v5, :cond_c

    check-cast v4, Ls/a;

    invoke-virtual {v4}, Ls/a;->N()I

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Ls/a;->M()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v9, v4, v0}, Lt/h;->c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x1

    if-ne v14, v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Ls/d;->k()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ls/d;->D(II)V

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ls/c;->l(I)V

    iput v4, v1, Ls/d;->T:I

    :goto_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v4, v12, :cond_15

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ls/d;

    instance-of v13, v11, Ls/h;

    if-eqz v13, :cond_13

    check-cast v11, Ls/h;

    iget v13, v11, Ls/h;->o0:I

    if-nez v13, :cond_12

    iget v5, v11, Ls/h;->l0:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_10

    invoke-virtual {v11, v5}, Ls/h;->K(I)V

    :cond_f
    :goto_b
    const/high16 v14, 0x3f000000    # 0.5f

    goto :goto_c

    :cond_10
    iget v5, v11, Ls/h;->m0:I

    if-eq v5, v13, :cond_11

    invoke-virtual/range {p0 .. p0}, Ls/d;->x()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Ls/d;->k()I

    move-result v5

    iget v14, v11, Ls/h;->m0:I

    sub-int/2addr v5, v14

    invoke-virtual {v11, v5}, Ls/h;->K(I)V

    goto :goto_b

    :cond_11
    invoke-virtual/range {p0 .. p0}, Ls/d;->x()Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, v11, Ls/h;->k0:F

    invoke-virtual/range {p0 .. p0}, Ls/d;->k()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v5, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v5, v14

    float-to-int v5, v5

    invoke-virtual {v11, v5}, Ls/h;->K(I)V

    :goto_c
    const/4 v5, 0x1

    goto :goto_d

    :cond_12
    const/4 v13, -0x1

    const/high16 v14, 0x3f000000    # 0.5f

    goto :goto_d

    :cond_13
    const/4 v13, -0x1

    const/high16 v14, 0x3f000000    # 0.5f

    instance-of v15, v11, Ls/a;

    if-eqz v15, :cond_14

    check-cast v11, Ls/a;

    invoke-virtual {v11}, Ls/a;->N()I

    move-result v11

    const/4 v15, 0x1

    if-ne v11, v15, :cond_14

    const/4 v2, 0x1

    :cond_14
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_15
    if-eqz v5, :cond_17

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v12, :cond_17

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    instance-of v11, v5, Ls/h;

    if-eqz v11, :cond_16

    check-cast v5, Ls/h;

    iget v11, v5, Ls/h;->o0:I

    if-nez v11, :cond_16

    invoke-static {v9, v5}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_17
    invoke-static {v9, v1}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v12, :cond_19

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    instance-of v5, v4, Ls/a;

    if-eqz v5, :cond_18

    check-cast v4, Ls/a;

    invoke-virtual {v4}, Ls/a;->N()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_18

    invoke-virtual {v4}, Ls/a;->M()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v9, v4}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v12, :cond_1b

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    invoke-virtual {v4}, Ls/d;->v()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v4}, Lt/h;->a(Ls/d;)Z

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v5, Lt/h;->a:Lt/b;

    invoke-static {v4, v9, v5}, Ls/e;->P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V

    invoke-static {v9, v4, v0}, Lt/h;->c(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;Z)V

    invoke-static {v9, v4}, Lt/h;->i(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1b
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v3, :cond_1f

    iget-object v2, v1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/d;

    invoke-virtual {v2}, Ls/d;->v()Z

    move-result v4

    if-eqz v4, :cond_1d

    instance-of v4, v2, Ls/h;

    if-nez v4, :cond_1d

    instance-of v4, v2, Ls/a;

    if-nez v4, :cond_1d

    instance-of v4, v2, Ls/g;

    if-nez v4, :cond_1d

    iget-boolean v4, v2, Ls/d;->z:Z

    if-nez v4, :cond_1d

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ls/d;->j(I)I

    move-result v5

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ls/d;->j(I)I

    move-result v6

    const/4 v9, 0x3

    if-ne v5, v9, :cond_1c

    iget v5, v2, Ls/d;->l:I

    if-eq v5, v4, :cond_1c

    if-ne v6, v9, :cond_1c

    iget v5, v2, Ls/d;->m:I

    if-eq v5, v4, :cond_1c

    goto :goto_12

    :cond_1c
    new-instance v4, Lt/b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, v1, Ls/e;->n0:Lcom/google/android/gms/internal/firebase-auth-api/a5;

    invoke-static {v2, v5, v4}, Ls/e;->P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V

    :cond_1d
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1e
    move/from16 v19, v0

    move/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v21, v11

    :cond_1f
    iget-object v2, v1, Ls/e;->p0:Lr/c;

    const/4 v5, 0x2

    if-le v3, v5, :cond_20

    if-eq v8, v5, :cond_21

    if-ne v7, v5, :cond_20

    goto :goto_13

    :cond_20
    move/from16 v23, v3

    move v4, v7

    move-object/from16 v24, v10

    move/from16 v5, v18

    move/from16 v3, v19

    move/from16 v28, v8

    move-object v8, v2

    move/from16 v2, v28

    goto/16 :goto_35

    :cond_21
    :goto_13
    iget v0, v1, Ls/e;->w0:I

    const/16 v9, 0x400

    invoke-static {v0, v9}, Ls/j;->c(II)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Ls/e;->n0:Lcom/google/android/gms/internal/firebase-auth-api/a5;

    iget-object v9, v1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v11, :cond_24

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls/d;

    const/4 v14, 0x0

    aget v15, v22, v14

    const/16 v16, 0x1

    aget v6, v22, v16

    iget-object v5, v13, Ls/d;->j0:[I

    aget v4, v5, v14

    aget v5, v5, v16

    invoke-static {v15, v6, v4, v5}, Lt/h;->h(IIII)Z

    move-result v4

    if-nez v4, :cond_22

    :goto_15
    move/from16 v23, v3

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v24, v10

    move-object v8, v2

    goto/16 :goto_2e

    :cond_22
    instance-of v4, v13, Ls/g;

    if-eqz v4, :cond_23

    goto :goto_15

    :cond_23
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    goto :goto_14

    :cond_24
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_16
    if-ge v4, v11, :cond_35

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v10

    move-object/from16 v10, v23

    check-cast v10, Ls/d;

    move/from16 v23, v3

    const/16 v17, 0x0

    aget v3, v22, v17

    move/from16 v25, v7

    const/16 v16, 0x1

    aget v7, v22, v16

    move/from16 v26, v8

    iget-object v8, v10, Ls/d;->j0:[I

    move-object/from16 v27, v2

    aget v2, v8, v17

    aget v8, v8, v16

    invoke-static {v3, v7, v2, v8}, Lt/h;->h(IIII)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v1, Ls/e;->D0:Lt/b;

    invoke-static {v10, v0, v2}, Ls/e;->P(Ls/d;Lcom/google/android/gms/internal/firebase-auth-api/a5;Lt/b;)V

    :cond_25
    instance-of v2, v10, Ls/h;

    if-eqz v2, :cond_29

    move-object v3, v10

    check-cast v3, Ls/h;

    iget v7, v3, Ls/h;->o0:I

    if-nez v7, :cond_27

    if-nez v12, :cond_26

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget v7, v3, Ls/h;->o0:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_29

    if-nez v5, :cond_28

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_28
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    instance-of v3, v10, Ls/i;

    if-eqz v3, :cond_30

    instance-of v3, v10, Ls/a;

    if-eqz v3, :cond_2d

    move-object v3, v10

    check-cast v3, Ls/a;

    invoke-virtual {v3}, Ls/a;->N()I

    move-result v7

    if-nez v7, :cond_2b

    if-nez v6, :cond_2a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-virtual {v3}, Ls/a;->N()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_30

    if-nez v13, :cond_2c

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    move-object v3, v10

    check-cast v3, Ls/i;

    if-nez v6, :cond_2e

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_2f

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_17
    iget-object v3, v10, Ls/d;->C:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_32

    iget-object v3, v10, Ls/d;->E:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_32

    if-nez v2, :cond_32

    instance-of v3, v10, Ls/a;

    if-nez v3, :cond_32

    if-nez v14, :cond_31

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v3, v10, Ls/d;->D:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_34

    iget-object v3, v10, Ls/d;->F:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_34

    iget-object v3, v10, Ls/d;->G:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_34

    if-nez v2, :cond_34

    instance-of v2, v10, Ls/a;

    if-nez v2, :cond_34

    if-nez v15, :cond_33

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_33
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v23

    move-object/from16 v10, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move-object/from16 v2, v27

    goto/16 :goto_16

    :cond_35
    move-object/from16 v27, v2

    move/from16 v23, v3

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v24, v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_18

    :cond_36
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v6, :cond_37

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/i;

    invoke-static {v3, v4, v0, v5}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    move-result-object v6

    invoke-virtual {v3, v4, v0, v6}, Ls/i;->K(ILjava/util/ArrayList;Lt/n;)V

    invoke-virtual {v6, v0}, Lt/n;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_19

    :cond_37
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ls/d;->i(I)Ls/c;

    move-result-object v3

    iget-object v2, v3, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/c;

    iget-object v3, v3, Ls/c;->d:Ls/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_1a

    :cond_38
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ls/d;->i(I)Ls/c;

    move-result-object v2

    iget-object v2, v2, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/c;

    iget-object v3, v3, Ls/c;->d:Ls/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_1b

    :cond_39
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ls/d;->i(I)Ls/c;

    move-result-object v3

    iget-object v3, v3, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/c;

    iget-object v4, v4, Ls/c;->d:Ls/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_1c

    :cond_3a
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v14, :cond_3b

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_1d

    :cond_3b
    if-eqz v12, :cond_3c

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/h;

    const/4 v5, 0x1

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_1e

    :cond_3c
    const/4 v5, 0x1

    if-eqz v13, :cond_3d

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/i;

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    move-result-object v7

    invoke-virtual {v4, v5, v0, v7}, Ls/i;->K(ILjava/util/ArrayList;Lt/n;)V

    invoke-virtual {v7, v0}, Lt/n;->a(Ljava/util/ArrayList;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_1f

    :cond_3d
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ls/d;->i(I)Ls/c;

    move-result-object v4

    iget-object v3, v4, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/c;

    iget-object v4, v4, Ls/c;->d:Ls/d;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_20

    :cond_3e
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ls/d;->i(I)Ls/c;

    move-result-object v3

    iget-object v3, v3, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/c;

    iget-object v4, v4, Ls/c;->d:Ls/d;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_21

    :cond_3f
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ls/d;->i(I)Ls/c;

    move-result-object v4

    iget-object v3, v4, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/c;

    iget-object v4, v4, Ls/c;->d:Ls/d;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_22

    :cond_40
    invoke-virtual {v1, v2}, Ls/d;->i(I)Ls/c;

    move-result-object v2

    iget-object v2, v2, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/c;

    iget-object v3, v3, Ls/c;->d:Ls/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_23

    :cond_41
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v15, :cond_42

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/d;

    invoke-static {v3, v4, v0, v5}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_24

    :cond_42
    const/4 v2, 0x0

    :goto_25
    if-ge v2, v11, :cond_48

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/d;

    iget-object v4, v3, Ls/d;->j0:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v5, 0x3

    if-ne v6, v5, :cond_47

    const/4 v6, 0x1

    aget v4, v4, v6

    if-ne v4, v5, :cond_47

    iget v4, v3, Ls/d;->h0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v6, :cond_44

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt/n;

    iget v10, v8, Lt/n;->b:I

    if-ne v4, v10, :cond_43

    goto :goto_27

    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_44
    const/4 v8, 0x0

    :goto_27
    iget v3, v3, Ls/d;->i0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v4, :cond_46

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt/n;

    iget v10, v7, Lt/n;->b:I

    if-ne v3, v10, :cond_45

    goto :goto_29

    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_46
    const/4 v7, 0x0

    :goto_29
    if-eqz v8, :cond_47

    if-eqz v7, :cond_47

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v7}, Lt/n;->c(ILt/n;)V

    const/4 v3, 0x2

    iput v3, v7, Lt/n;->c:I

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_49

    move-object/from16 v8, v27

    goto/16 :goto_2e

    :cond_49
    const/4 v2, 0x0

    aget v3, v22, v2

    const/4 v2, 0x2

    if-ne v3, v2, :cond_4d

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/n;

    iget v6, v5, Lt/n;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4a

    goto :goto_2a

    :cond_4a
    move-object/from16 v8, v27

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Lt/n;->b(Lr/c;I)I

    move-result v9

    if-le v9, v3, :cond_4b

    move-object v4, v5

    move v3, v9

    :cond_4b
    move-object/from16 v27, v8

    goto :goto_2a

    :cond_4c
    move-object/from16 v8, v27

    const/4 v7, 0x1

    if-eqz v4, :cond_4e

    invoke-virtual {v1, v7}, Ls/d;->F(I)V

    invoke-virtual {v1, v3}, Ls/d;->H(I)V

    goto :goto_2b

    :cond_4d
    move-object/from16 v8, v27

    const/4 v7, 0x1

    :cond_4e
    const/4 v4, 0x0

    :goto_2b
    aget v2, v22, v7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_52

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4f
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/n;

    iget v6, v5, Lt/n;->c:I

    if-nez v6, :cond_50

    goto :goto_2c

    :cond_50
    const/4 v6, 0x1

    invoke-virtual {v5, v8, v6}, Lt/n;->b(Lr/c;I)I

    move-result v7

    if-le v7, v2, :cond_4f

    move-object v3, v5

    move v2, v7

    goto :goto_2c

    :cond_51
    const/4 v6, 0x1

    if-eqz v3, :cond_52

    invoke-virtual {v1, v6}, Ls/d;->G(I)V

    invoke-virtual {v1, v2}, Ls/d;->E(I)V

    goto :goto_2d

    :cond_52
    const/4 v3, 0x0

    :goto_2d
    if-nez v4, :cond_53

    if-eqz v3, :cond_54

    :cond_53
    move/from16 v2, v26

    const/4 v3, 0x2

    goto :goto_2f

    :cond_54
    :goto_2e
    move/from16 v5, v18

    move/from16 v3, v19

    move/from16 v4, v25

    move/from16 v2, v26

    goto :goto_35

    :goto_2f
    if-ne v2, v3, :cond_56

    invoke-virtual/range {p0 .. p0}, Ls/d;->n()I

    move-result v0

    move/from16 v3, v19

    if-ge v3, v0, :cond_55

    if-lez v3, :cond_55

    invoke-virtual {v1, v3}, Ls/d;->H(I)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Ls/e;->x0:Z

    goto :goto_31

    :cond_55
    invoke-virtual/range {p0 .. p0}, Ls/d;->n()I

    move-result v0

    :goto_30
    move/from16 v4, v25

    const/4 v3, 0x2

    goto :goto_32

    :cond_56
    move/from16 v3, v19

    :goto_31
    move v0, v3

    goto :goto_30

    :goto_32
    if-ne v4, v3, :cond_58

    invoke-virtual/range {p0 .. p0}, Ls/d;->k()I

    move-result v3

    move/from16 v5, v18

    if-ge v5, v3, :cond_57

    if-lez v5, :cond_57

    invoke-virtual {v1, v5}, Ls/d;->E(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Ls/e;->y0:Z

    goto :goto_33

    :cond_57
    invoke-virtual/range {p0 .. p0}, Ls/d;->k()I

    move-result v3

    goto :goto_34

    :cond_58
    move/from16 v5, v18

    :goto_33
    move v3, v5

    :goto_34
    move v5, v3

    move v3, v0

    const/4 v0, 0x1

    goto :goto_36

    :goto_35
    const/4 v0, 0x0

    :goto_36
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Ls/e;->Q(I)Z

    move-result v7

    if-nez v7, :cond_5a

    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Ls/e;->Q(I)Z

    move-result v7

    if-eqz v7, :cond_59

    goto :goto_37

    :cond_59
    const/4 v7, 0x0

    goto :goto_38

    :cond_5a
    :goto_37
    const/4 v7, 0x1

    :goto_38
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lr/c;->g:Z

    iget v10, v1, Ls/e;->w0:I

    if-eqz v10, :cond_5b

    if-eqz v7, :cond_5b

    const/4 v7, 0x1

    iput-boolean v7, v8, Lr/c;->g:Z

    goto :goto_39

    :cond_5b
    const/4 v7, 0x1

    :goto_39
    iget-object v10, v1, Ls/e;->k0:Ljava/util/ArrayList;

    aget v11, v22, v9

    const/4 v12, 0x2

    if-eq v11, v12, :cond_5d

    aget v11, v22, v7

    if-ne v11, v12, :cond_5c

    goto :goto_3a

    :cond_5c
    move v7, v9

    goto :goto_3b

    :cond_5d
    :goto_3a
    const/4 v7, 0x1

    :goto_3b
    iput v9, v1, Ls/e;->s0:I

    iput v9, v1, Ls/e;->t0:I

    move/from16 v11, v23

    const/4 v9, 0x0

    :goto_3c
    if-ge v9, v11, :cond_5f

    iget-object v12, v1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls/d;

    instance-of v13, v12, Ls/e;

    if-eqz v13, :cond_5e

    check-cast v12, Ls/e;

    invoke-virtual {v12}, Ls/e;->O()V

    :cond_5e
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    :cond_5f
    invoke-virtual {v1, v6}, Ls/e;->Q(I)Z

    move-result v9

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_3d
    if-eqz v13, :cond_70

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    invoke-virtual {v8}, Lr/c;->t()V

    const/4 v14, 0x0

    iput v14, v1, Ls/e;->s0:I

    iput v14, v1, Ls/e;->t0:I

    invoke-virtual {v1, v8}, Ls/d;->g(Lr/c;)V

    const/4 v0, 0x0

    :goto_3e
    if-ge v0, v11, :cond_60

    iget-object v14, v1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls/d;

    invoke-virtual {v14, v8}, Ls/d;->g(Lr/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :catch_0
    move-exception v0

    move/from16 v18, v12

    const/4 v6, 0x0

    :goto_3f
    const/4 v14, 0x5

    goto/16 :goto_46

    :cond_60
    invoke-virtual {v1, v8}, Ls/e;->L(Lr/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Ls/e;->z0:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v0, :cond_61

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Ls/e;->z0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v14, v24

    :try_start_3
    invoke-virtual {v8, v14}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v13

    iget-object v6, v1, Ls/e;->p0:Lr/c;

    invoke-virtual {v6, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v18, v12

    move-object/from16 v24, v14

    const/4 v12, 0x5

    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v6, v0, v13, v14, v12}, Lr/c;->f(Lr/f;Lr/f;II)V

    const/4 v6, 0x0

    iput-object v6, v1, Ls/e;->z0:Ljava/lang/ref/WeakReference;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_41

    :catch_1
    move-exception v0

    :goto_40
    const/4 v6, 0x0

    const/4 v13, 0x1

    goto :goto_3f

    :catch_2
    move-exception v0

    move/from16 v18, v12

    move-object/from16 v24, v14

    goto :goto_40

    :catch_3
    move-exception v0

    move/from16 v18, v12

    goto :goto_40

    :cond_61
    move/from16 v18, v12

    :goto_41
    :try_start_5
    iget-object v0, v1, Ls/e;->B0:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    if-eqz v0, :cond_62

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Ls/e;->B0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v6, v1, Ls/d;->F:Ls/c;

    invoke-virtual {v8, v6}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v6

    iget-object v12, v1, Ls/e;->p0:Lr/c;

    invoke-virtual {v12, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-virtual {v12, v6, v0, v13, v14}, Lr/c;->f(Lr/f;Lr/f;II)V

    const/4 v6, 0x0

    iput-object v6, v1, Ls/e;->B0:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_62
    :try_start_7
    iget-object v0, v1, Ls/e;->A0:Ljava/lang/ref/WeakReference;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v0, :cond_63

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, Ls/e;->A0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object/from16 v6, v21

    :try_start_9
    invoke-virtual {v8, v6}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v12

    iget-object v13, v1, Ls/e;->p0:Lr/c;

    invoke-virtual {v13, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v21, v6

    const/4 v6, 0x5

    const/4 v14, 0x0

    :try_start_a
    invoke-virtual {v13, v0, v12, v14, v6}, Lr/c;->f(Lr/f;Lr/f;II)V

    const/4 v6, 0x0

    iput-object v6, v1, Ls/e;->A0:Ljava/lang/ref/WeakReference;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_42

    :catch_4
    move-exception v0

    move-object/from16 v21, v6

    goto :goto_40

    :cond_63
    :goto_42
    :try_start_b
    iget-object v0, v1, Ls/e;->C0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Ls/e;->C0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v6, v1, Ls/d;->E:Ls/c;

    invoke-virtual {v8, v6}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :try_start_c
    iget-object v12, v1, Ls/e;->p0:Lr/c;

    invoke-virtual {v12, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    const/4 v13, 0x0

    const/4 v14, 0x5

    :try_start_d
    invoke-virtual {v12, v6, v0, v13, v14}, Lr/c;->f(Lr/f;Lr/f;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    const/4 v6, 0x0

    :try_start_e
    iput-object v6, v1, Ls/e;->C0:Ljava/lang/ref/WeakReference;

    goto :goto_45

    :catch_5
    move-exception v0

    :goto_43
    const/4 v13, 0x1

    goto :goto_46

    :catch_6
    move-exception v0

    const/4 v6, 0x0

    goto :goto_43

    :catch_7
    move-exception v0

    goto :goto_44

    :catch_8
    move-exception v0

    :goto_44
    const/4 v6, 0x0

    const/4 v14, 0x5

    goto :goto_43

    :cond_64
    const/4 v6, 0x0

    const/4 v14, 0x5

    :goto_45
    invoke-virtual {v8}, Lr/c;->p()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    const/4 v13, 0x1

    goto :goto_47

    :catch_9
    move-exception v0

    move/from16 v18, v12

    goto :goto_44

    :goto_46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "EXCEPTION : "

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_47
    sget-object v0, Ls/j;->a:[Z

    if-eqz v13, :cond_65

    const/4 v6, 0x0

    const/4 v12, 0x2

    aput-boolean v6, v0, v12

    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Ls/e;->Q(I)Z

    move-result v12

    invoke-virtual {v1, v8, v12}, Ls/d;->J(Lr/c;Z)V

    iget-object v13, v1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_48
    if-ge v14, v13, :cond_66

    iget-object v6, v1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/d;

    invoke-virtual {v6, v8, v12}, Ls/d;->J(Lr/c;Z)V

    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0x40

    goto :goto_48

    :cond_65
    invoke-virtual {v1, v8, v9}, Ls/d;->J(Lr/c;Z)V

    const/4 v6, 0x0

    :goto_49
    if-ge v6, v11, :cond_66

    iget-object v12, v1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls/d;

    invoke-virtual {v12, v8, v9}, Ls/d;->J(Lr/c;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :cond_66
    if-eqz v7, :cond_69

    const/16 v6, 0x8

    if-ge v15, v6, :cond_69

    const/4 v6, 0x2

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_4a
    if-ge v0, v11, :cond_67

    iget-object v13, v1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls/d;

    iget v14, v13, Ls/d;->S:I

    invoke-virtual {v13}, Ls/d;->n()I

    move-result v19

    add-int v14, v19, v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v14, v13, Ls/d;->T:I

    invoke-virtual {v13}, Ls/d;->k()I

    move-result v13

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_67
    iget v0, v1, Ls/d;->V:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v1, Ls/d;->W:I

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v12, 0x2

    if-ne v2, v12, :cond_68

    invoke-virtual/range {p0 .. p0}, Ls/d;->n()I

    move-result v13

    if-ge v13, v0, :cond_68

    invoke-virtual {v1, v0}, Ls/d;->H(I)V

    const/4 v13, 0x0

    aput v12, v22, v13

    const/4 v0, 0x1

    const/16 v18, 0x1

    goto :goto_4b

    :cond_68
    const/4 v0, 0x0

    :goto_4b
    if-ne v4, v12, :cond_6a

    invoke-virtual/range {p0 .. p0}, Ls/d;->k()I

    move-result v13

    if-ge v13, v6, :cond_6a

    invoke-virtual {v1, v6}, Ls/d;->E(I)V

    const/4 v6, 0x1

    aput v12, v22, v6

    const/4 v0, 0x1

    const/16 v18, 0x1

    goto :goto_4c

    :cond_69
    const/4 v0, 0x0

    :cond_6a
    :goto_4c
    iget v6, v1, Ls/d;->V:I

    invoke-virtual/range {p0 .. p0}, Ls/d;->n()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ls/d;->n()I

    move-result v12

    if-le v6, v12, :cond_6b

    invoke-virtual {v1, v6}, Ls/d;->H(I)V

    const/4 v6, 0x1

    const/4 v12, 0x0

    aput v6, v22, v12

    move v0, v6

    move/from16 v16, v0

    goto :goto_4d

    :cond_6b
    const/4 v6, 0x1

    move/from16 v16, v18

    :goto_4d
    iget v12, v1, Ls/d;->W:I

    invoke-virtual/range {p0 .. p0}, Ls/d;->k()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ls/d;->k()I

    move-result v13

    if-le v12, v13, :cond_6c

    invoke-virtual {v1, v12}, Ls/d;->E(I)V

    aput v6, v22, v6

    move v0, v6

    move v12, v0

    goto :goto_4e

    :cond_6c
    move v12, v0

    move/from16 v0, v16

    :goto_4e
    if-nez v0, :cond_6f

    const/4 v13, 0x0

    aget v14, v22, v13

    const/4 v13, 0x2

    if-ne v14, v13, :cond_6d

    if-lez v3, :cond_6d

    invoke-virtual/range {p0 .. p0}, Ls/d;->n()I

    move-result v13

    if-le v13, v3, :cond_6d

    iput-boolean v6, v1, Ls/e;->x0:Z

    const/4 v12, 0x0

    aput v6, v22, v12

    invoke-virtual {v1, v3}, Ls/d;->H(I)V

    move v0, v6

    move v12, v0

    :cond_6d
    aget v13, v22, v6

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6e

    if-lez v5, :cond_6e

    invoke-virtual/range {p0 .. p0}, Ls/d;->k()I

    move-result v13

    if-le v13, v5, :cond_6e

    iput-boolean v6, v1, Ls/e;->y0:Z

    aput v6, v22, v6

    invoke-virtual {v1, v5}, Ls/d;->E(I)V

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_50

    :cond_6e
    :goto_4f
    move v13, v12

    move v12, v0

    goto :goto_50

    :cond_6f
    const/4 v14, 0x2

    goto :goto_4f

    :goto_50
    move v0, v15

    const/16 v6, 0x40

    goto/16 :goto_3d

    :cond_70
    move/from16 v18, v12

    iput-object v10, v1, Ls/e;->k0:Ljava/util/ArrayList;

    if-eqz v18, :cond_71

    const/4 v3, 0x0

    aput v2, v22, v3

    const/4 v2, 0x1

    aput v4, v22, v2

    :cond_71
    iget-object v0, v8, Lr/c;->l:LJ/r0;

    invoke-virtual {v1, v0}, Ls/e;->A(LJ/r0;)V

    return-void
.end method

.method public final Q(I)Z
    .locals 0

    iget p0, p0, Ls/e;->w0:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final R()V
    .locals 1

    iget-object v0, p0, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Ls/d;->y()V

    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Ls/e;->p0:Lr/c;

    invoke-virtual {v0}, Lr/c;->t()V

    const/4 v0, 0x0

    iput v0, p0, Ls/e;->q0:I

    iput v0, p0, Ls/e;->r0:I

    invoke-virtual {p0}, Ls/e;->R()V

    return-void
.end method
