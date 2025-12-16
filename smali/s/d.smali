.class public Ls/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public final C:Ls/c;

.field public final D:Ls/c;

.field public final E:Ls/c;

.field public final F:Ls/c;

.field public final G:Ls/c;

.field public final H:Ls/c;

.field public final I:Ls/c;

.field public final J:Ls/c;

.field public final K:[Ls/c;

.field public final L:Ljava/util/ArrayList;

.field public final M:[Z

.field public N:Ls/d;

.field public O:I

.field public P:I

.field public Q:F

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:F

.field public Y:F

.field public Z:Ljava/lang/Object;

.field public a:Z

.field public a0:I

.field public b:Lt/c;

.field public b0:Ljava/lang/String;

.field public c:Lt/c;

.field public c0:I

.field public d:Lt/k;

.field public d0:I

.field public e:Lt/m;

.field public final e0:[F

.field public final f:[Z

.field public final f0:[Ls/d;

.field public g:Z

.field public final g0:[Ls/d;

.field public h:Z

.field public h0:I

.field public i:Z

.field public i0:I

.field public j:I

.field public final j0:[I

.field public k:I

.field public l:I

.field public m:I

.field public final n:[I

.field public o:I

.field public p:I

.field public q:F

.field public r:I

.field public s:I

.field public t:F

.field public u:I

.field public v:F

.field public final w:[I

.field public x:F

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ls/d;->a:Z

    const/4 v2, 0x0

    iput-object v2, v0, Ls/d;->d:Lt/k;

    iput-object v2, v0, Ls/d;->e:Lt/m;

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v5, v4, [Z

    fill-array-data v5, :array_0

    iput-object v5, v0, Ls/d;->f:[Z

    iput-boolean v3, v0, Ls/d;->g:Z

    iput-boolean v1, v0, Ls/d;->h:Z

    iput-boolean v1, v0, Ls/d;->i:Z

    const/4 v5, -0x1

    iput v5, v0, Ls/d;->j:I

    iput v5, v0, Ls/d;->k:I

    iput v1, v0, Ls/d;->l:I

    iput v1, v0, Ls/d;->m:I

    new-array v6, v4, [I

    iput-object v6, v0, Ls/d;->n:[I

    iput v1, v0, Ls/d;->o:I

    iput v1, v0, Ls/d;->p:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Ls/d;->q:F

    iput v1, v0, Ls/d;->r:I

    iput v1, v0, Ls/d;->s:I

    iput v6, v0, Ls/d;->t:F

    iput v5, v0, Ls/d;->u:I

    iput v6, v0, Ls/d;->v:F

    const v6, 0x7fffffff

    filled-new-array {v6, v6}, [I

    move-result-object v6

    iput-object v6, v0, Ls/d;->w:[I

    const/4 v6, 0x0

    iput v6, v0, Ls/d;->x:F

    iput-boolean v1, v0, Ls/d;->y:Z

    iput-boolean v1, v0, Ls/d;->z:Z

    iput v1, v0, Ls/d;->A:I

    iput v1, v0, Ls/d;->B:I

    new-instance v13, Ls/c;

    invoke-direct {v13, v0, v4}, Ls/c;-><init>(Ls/d;I)V

    iput-object v13, v0, Ls/d;->C:Ls/c;

    new-instance v14, Ls/c;

    const/4 v7, 0x3

    invoke-direct {v14, v0, v7}, Ls/c;-><init>(Ls/d;I)V

    iput-object v14, v0, Ls/d;->D:Ls/c;

    new-instance v15, Ls/c;

    const/4 v7, 0x4

    invoke-direct {v15, v0, v7}, Ls/c;-><init>(Ls/d;I)V

    iput-object v15, v0, Ls/d;->E:Ls/c;

    new-instance v12, Ls/c;

    const/4 v7, 0x5

    invoke-direct {v12, v0, v7}, Ls/c;-><init>(Ls/d;I)V

    iput-object v12, v0, Ls/d;->F:Ls/c;

    new-instance v11, Ls/c;

    const/4 v7, 0x6

    invoke-direct {v11, v0, v7}, Ls/c;-><init>(Ls/d;I)V

    iput-object v11, v0, Ls/d;->G:Ls/c;

    new-instance v10, Ls/c;

    const/16 v7, 0x8

    invoke-direct {v10, v0, v7}, Ls/c;-><init>(Ls/d;I)V

    iput-object v10, v0, Ls/d;->H:Ls/c;

    new-instance v9, Ls/c;

    const/16 v7, 0x9

    invoke-direct {v9, v0, v7}, Ls/c;-><init>(Ls/d;I)V

    iput-object v9, v0, Ls/d;->I:Ls/c;

    new-instance v8, Ls/c;

    const/4 v7, 0x7

    invoke-direct {v8, v0, v7}, Ls/c;-><init>(Ls/d;I)V

    iput-object v8, v0, Ls/d;->J:Ls/c;

    move-object v7, v13

    move-object/from16 v16, v8

    move-object v8, v15

    move-object/from16 v17, v9

    move-object v9, v14

    move-object/from16 v18, v10

    move-object v10, v12

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    filled-new-array/range {v7 .. v12}, [Ls/c;

    move-result-object v7

    iput-object v7, v0, Ls/d;->K:[Ls/c;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Ls/d;->L:Ljava/util/ArrayList;

    new-array v8, v4, [Z

    iput-object v8, v0, Ls/d;->M:[Z

    filled-new-array {v3, v3}, [I

    move-result-object v3

    iput-object v3, v0, Ls/d;->j0:[I

    iput-object v2, v0, Ls/d;->N:Ls/d;

    iput v1, v0, Ls/d;->O:I

    iput v1, v0, Ls/d;->P:I

    iput v6, v0, Ls/d;->Q:F

    iput v5, v0, Ls/d;->R:I

    iput v1, v0, Ls/d;->S:I

    iput v1, v0, Ls/d;->T:I

    iput v1, v0, Ls/d;->U:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v0, Ls/d;->X:F

    iput v3, v0, Ls/d;->Y:F

    iput v1, v0, Ls/d;->a0:I

    iput-object v2, v0, Ls/d;->b0:Ljava/lang/String;

    iput v1, v0, Ls/d;->c0:I

    iput v1, v0, Ls/d;->d0:I

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    iput-object v1, v0, Ls/d;->e0:[F

    filled-new-array {v2, v2}, [Ls/d;

    move-result-object v1

    iput-object v1, v0, Ls/d;->f0:[Ls/d;

    filled-new-array {v2, v2}, [Ls/d;

    move-result-object v1

    iput-object v1, v0, Ls/d;->g0:[Ls/d;

    iput v5, v0, Ls/d;->h0:I

    iput v5, v0, Ls/d;->i0:I

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A(LJ/r0;)V
    .locals 0

    iget-object p1, p0, Ls/d;->C:Ls/c;

    invoke-virtual {p1}, Ls/c;->k()V

    iget-object p1, p0, Ls/d;->D:Ls/c;

    invoke-virtual {p1}, Ls/c;->k()V

    iget-object p1, p0, Ls/d;->E:Ls/c;

    invoke-virtual {p1}, Ls/c;->k()V

    iget-object p1, p0, Ls/d;->F:Ls/c;

    invoke-virtual {p1}, Ls/c;->k()V

    iget-object p1, p0, Ls/d;->G:Ls/c;

    invoke-virtual {p1}, Ls/c;->k()V

    iget-object p1, p0, Ls/d;->J:Ls/c;

    invoke-virtual {p1}, Ls/c;->k()V

    iget-object p1, p0, Ls/d;->H:Ls/c;

    invoke-virtual {p1}, Ls/c;->k()V

    iget-object p0, p0, Ls/d;->I:Ls/c;

    invoke-virtual {p0}, Ls/c;->k()V

    return-void
.end method

.method public final B(I)V
    .locals 0

    iput p1, p0, Ls/d;->U:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ls/d;->y:Z

    return-void
.end method

.method public final C(II)V
    .locals 1

    iget-object v0, p0, Ls/d;->C:Ls/c;

    invoke-virtual {v0, p1}, Ls/c;->l(I)V

    iget-object v0, p0, Ls/d;->E:Ls/c;

    invoke-virtual {v0, p2}, Ls/c;->l(I)V

    iput p1, p0, Ls/d;->S:I

    sub-int/2addr p2, p1

    iput p2, p0, Ls/d;->O:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls/d;->h:Z

    return-void
.end method

.method public final D(II)V
    .locals 1

    iget-object v0, p0, Ls/d;->D:Ls/c;

    invoke-virtual {v0, p1}, Ls/c;->l(I)V

    iget-object v0, p0, Ls/d;->F:Ls/c;

    invoke-virtual {v0, p2}, Ls/c;->l(I)V

    iput p1, p0, Ls/d;->T:I

    sub-int/2addr p2, p1

    iput p2, p0, Ls/d;->P:I

    iget-boolean p2, p0, Ls/d;->y:Z

    if-eqz p2, :cond_0

    iget p2, p0, Ls/d;->U:I

    add-int/2addr p1, p2

    iget-object p2, p0, Ls/d;->G:Ls/c;

    invoke-virtual {p2, p1}, Ls/c;->l(I)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ls/d;->i:Z

    return-void
.end method

.method public final E(I)V
    .locals 1

    iput p1, p0, Ls/d;->P:I

    iget v0, p0, Ls/d;->W:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Ls/d;->P:I

    :cond_0
    return-void
.end method

.method public final F(I)V
    .locals 1

    iget-object p0, p0, Ls/d;->j0:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    return-void
.end method

.method public final G(I)V
    .locals 1

    iget-object p0, p0, Ls/d;->j0:[I

    const/4 v0, 0x1

    aput p1, p0, v0

    return-void
.end method

.method public final H(I)V
    .locals 1

    iput p1, p0, Ls/d;->O:I

    iget v0, p0, Ls/d;->V:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Ls/d;->O:I

    :cond_0
    return-void
.end method

.method public I(ZZ)V
    .locals 7

    iget-object v0, p0, Ls/d;->d:Lt/k;

    iget-boolean v1, v0, Lt/o;->g:Z

    and-int/2addr p1, v1

    iget-object v1, p0, Ls/d;->e:Lt/m;

    iget-boolean v2, v1, Lt/o;->g:Z

    and-int/2addr p2, v2

    iget-object v2, v0, Lt/o;->h:Lt/f;

    iget v2, v2, Lt/f;->g:I

    iget-object v3, v1, Lt/o;->h:Lt/f;

    iget v3, v3, Lt/f;->g:I

    iget-object v0, v0, Lt/o;->i:Lt/f;

    iget v0, v0, Lt/f;->g:I

    iget-object v1, v1, Lt/o;->i:Lt/f;

    iget v1, v1, Lt/f;->g:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_1
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    if-eqz p1, :cond_2

    iput v2, p0, Ls/d;->S:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Ls/d;->T:I

    :cond_3
    iget v2, p0, Ls/d;->a0:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iput v6, p0, Ls/d;->O:I

    iput v6, p0, Ls/d;->P:I

    return-void

    :cond_4
    iget-object v2, p0, Ls/d;->j0:[I

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    aget p1, v2, v6

    if-ne p1, v3, :cond_5

    iget p1, p0, Ls/d;->O:I

    if-ge v0, p1, :cond_5

    move v0, p1

    :cond_5
    iput v0, p0, Ls/d;->O:I

    iget p1, p0, Ls/d;->V:I

    if-ge v0, p1, :cond_6

    iput p1, p0, Ls/d;->O:I

    :cond_6
    if-eqz p2, :cond_8

    aget p1, v2, v3

    if-ne p1, v3, :cond_7

    iget p1, p0, Ls/d;->P:I

    if-ge v1, p1, :cond_7

    move v1, p1

    :cond_7
    iput v1, p0, Ls/d;->P:I

    iget p1, p0, Ls/d;->W:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Ls/d;->P:I

    :cond_8
    return-void
.end method

.method public J(Lr/c;Z)V
    .locals 6

    iget-object v0, p0, Ls/d;->C:Ls/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lr/c;->n(Ls/c;)I

    move-result p1

    iget-object v0, p0, Ls/d;->D:Ls/c;

    invoke-static {v0}, Lr/c;->n(Ls/c;)I

    move-result v0

    iget-object v1, p0, Ls/d;->E:Ls/c;

    invoke-static {v1}, Lr/c;->n(Ls/c;)I

    move-result v1

    iget-object v2, p0, Ls/d;->F:Ls/c;

    invoke-static {v2}, Lr/c;->n(Ls/c;)I

    move-result v2

    if-eqz p2, :cond_0

    iget-object v3, p0, Ls/d;->d:Lt/k;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lt/o;->h:Lt/f;

    iget-boolean v5, v4, Lt/f;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lt/o;->i:Lt/f;

    iget-boolean v5, v3, Lt/f;->j:Z

    if-eqz v5, :cond_0

    iget p1, v4, Lt/f;->g:I

    iget v1, v3, Lt/f;->g:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Ls/d;->e:Lt/m;

    if-eqz p2, :cond_1

    iget-object v3, p2, Lt/o;->h:Lt/f;

    iget-boolean v4, v3, Lt/f;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Lt/o;->i:Lt/f;

    iget-boolean v4, p2, Lt/f;->j:Z

    if-eqz v4, :cond_1

    iget v0, v3, Lt/f;->g:I

    iget v2, p2, Lt/f;->g:I

    :cond_1
    sub-int p2, v1, p1

    sub-int v3, v2, v0

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_2

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_2

    if-eq v0, p2, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    move p1, v4

    move v0, p1

    move v1, v0

    move v2, v1

    :cond_3
    sub-int/2addr v1, p1

    sub-int/2addr v2, v0

    iput p1, p0, Ls/d;->S:I

    iput v0, p0, Ls/d;->T:I

    iget p1, p0, Ls/d;->a0:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    iput v4, p0, Ls/d;->O:I

    iput v4, p0, Ls/d;->P:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Ls/d;->j0:[I

    aget p2, p1, v4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    iget p2, p0, Ls/d;->O:I

    if-ge v1, p2, :cond_5

    move v1, p2

    :cond_5
    aget p1, p1, v0

    if-ne p1, v0, :cond_6

    iget p1, p0, Ls/d;->P:I

    if-ge v2, p1, :cond_6

    move v2, p1

    :cond_6
    iput v1, p0, Ls/d;->O:I

    iput v2, p0, Ls/d;->P:I

    iget p1, p0, Ls/d;->W:I

    if-ge v2, p1, :cond_7

    iput p1, p0, Ls/d;->P:I

    :cond_7
    iget p1, p0, Ls/d;->V:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Ls/d;->O:I

    :cond_8
    :goto_0
    return-void
.end method

.method public final a(Ls/e;Lr/c;Ljava/util/HashSet;IZ)V
    .locals 7

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p0}, Ls/j;->b(Ls/e;Lr/c;Ls/d;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, Ls/e;->Q(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Ls/d;->b(Lr/c;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p5, p0, Ls/d;->C:Ls/c;

    iget-object p5, p5, Ls/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v1, v0, Ls/c;->d:Ls/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Ls/d;->a(Ls/e;Lr/c;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ls/d;->E:Ls/c;

    iget-object p0, p0, Ls/c;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ls/c;

    iget-object v0, p5, Ls/c;->d:Ls/d;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ls/d;->a(Ls/e;Lr/c;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p5, p0, Ls/d;->D:Ls/c;

    iget-object p5, p5, Ls/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v1, v0, Ls/c;->d:Ls/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Ls/d;->a(Ls/e;Lr/c;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p5, p0, Ls/d;->F:Ls/c;

    iget-object p5, p5, Ls/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v1, v0, Ls/c;->d:Ls/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Ls/d;->a(Ls/e;Lr/c;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Ls/d;->G:Ls/c;

    iget-object p0, p0, Ls/c;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ls/c;

    iget-object v0, p5, Ls/c;->d:Ls/d;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ls/d;->a(Ls/e;Lr/c;Ljava/util/HashSet;IZ)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public b(Lr/c;Z)V
    .locals 62

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Ls/d;->C:Ls/c;

    invoke-virtual {v14, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v13

    iget-object v1, v15, Ls/d;->E:Ls/c;

    invoke-virtual {v14, v1}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v12

    iget-object v2, v15, Ls/d;->D:Ls/c;

    invoke-virtual {v14, v2}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v9

    iget-object v8, v15, Ls/d;->F:Ls/c;

    invoke-virtual {v14, v8}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v7

    iget-object v6, v15, Ls/d;->G:Ls/c;

    invoke-virtual {v14, v6}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v5

    iget-object v3, v15, Ls/d;->N:Ls/d;

    const/4 v4, 0x2

    const/4 v10, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v3, Ls/d;->j0:[I

    aget v11, v3, v10

    if-ne v11, v4, :cond_0

    const/4 v11, 0x1

    :goto_0
    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    move v11, v10

    goto :goto_0

    :goto_1
    aget v3, v3, v16

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v10

    :goto_2
    move/from16 v28, v3

    move/from16 v29, v11

    goto :goto_3

    :cond_2
    move/from16 v28, v10

    move/from16 v29, v28

    :goto_3
    iget v3, v15, Ls/d;->a0:I

    iget-object v11, v15, Ls/d;->M:[Z

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    iget-object v3, v15, Ls/d;->L:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_4
    if-ge v10, v4, :cond_5

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    check-cast v3, Ls/c;

    iget-object v3, v3, Ls/c;->a:Ljava/util/HashSet;

    if-nez v3, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_6

    :cond_4
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v21

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    aget-boolean v4, v11, v3

    if-nez v4, :cond_6

    const/4 v3, 0x1

    aget-boolean v4, v11, v3

    if-nez v4, :cond_6

    return-void

    :cond_6
    :goto_6
    iget-boolean v3, v15, Ls/d;->h:Z

    if-nez v3, :cond_7

    iget-boolean v4, v15, Ls/d;->i:Z

    if-eqz v4, :cond_e

    :cond_7
    if-eqz v3, :cond_9

    iget v3, v15, Ls/d;->S:I

    invoke-virtual {v14, v13, v3}, Lr/c;->d(Lr/f;I)V

    iget v3, v15, Ls/d;->S:I

    iget v4, v15, Ls/d;->O:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v12, v3}, Lr/c;->d(Lr/f;I)V

    if-eqz v29, :cond_9

    iget-object v3, v15, Ls/d;->N:Ls/d;

    if-eqz v3, :cond_9

    check-cast v3, Ls/e;

    invoke-virtual {v3, v0}, Ls/e;->M(Ls/c;)V

    iget-object v4, v3, Ls/e;->C0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v4

    iget-object v10, v3, Ls/e;->C0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls/c;

    invoke-virtual {v10}, Ls/c;->d()I

    move-result v10

    if-le v4, v10, :cond_9

    :cond_8
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ls/e;->C0:Ljava/lang/ref/WeakReference;

    :cond_9
    iget-boolean v3, v15, Ls/d;->i:Z

    if-eqz v3, :cond_d

    iget v3, v15, Ls/d;->T:I

    invoke-virtual {v14, v9, v3}, Lr/c;->d(Lr/f;I)V

    iget v3, v15, Ls/d;->T:I

    iget v4, v15, Ls/d;->P:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v7, v3}, Lr/c;->d(Lr/f;I)V

    iget-object v3, v6, Ls/c;->a:Ljava/util/HashSet;

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_b

    iget v3, v15, Ls/d;->T:I

    iget v4, v15, Ls/d;->U:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v5, v3}, Lr/c;->d(Lr/f;I)V

    :cond_b
    :goto_7
    if-eqz v28, :cond_d

    iget-object v3, v15, Ls/d;->N:Ls/d;

    if-eqz v3, :cond_d

    check-cast v3, Ls/e;

    invoke-virtual {v3, v2}, Ls/e;->M(Ls/c;)V

    iget-object v4, v3, Ls/e;->B0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v8}, Ls/c;->d()I

    move-result v4

    iget-object v10, v3, Ls/e;->B0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls/c;

    invoke-virtual {v10}, Ls/c;->d()I

    move-result v10

    if-le v4, v10, :cond_d

    :cond_c
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ls/e;->B0:Ljava/lang/ref/WeakReference;

    :cond_d
    iget-boolean v3, v15, Ls/d;->h:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v15, Ls/d;->i:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    iput-boolean v3, v15, Ls/d;->h:Z

    iput-boolean v3, v15, Ls/d;->i:Z

    return-void

    :cond_e
    iget-object v4, v15, Ls/d;->f:[Z

    if-eqz p2, :cond_12

    iget-object v3, v15, Ls/d;->d:Lt/k;

    if-eqz v3, :cond_12

    iget-object v10, v15, Ls/d;->e:Lt/m;

    if-eqz v10, :cond_12

    move-object/from16 v20, v11

    iget-object v11, v3, Lt/o;->h:Lt/f;

    move-object/from16 v21, v6

    iget-boolean v6, v11, Lt/f;->j:Z

    if-eqz v6, :cond_11

    iget-object v3, v3, Lt/o;->i:Lt/f;

    iget-boolean v3, v3, Lt/f;->j:Z

    if-eqz v3, :cond_11

    iget-object v3, v10, Lt/o;->h:Lt/f;

    iget-boolean v3, v3, Lt/f;->j:Z

    if-eqz v3, :cond_11

    iget-object v3, v10, Lt/o;->i:Lt/f;

    iget-boolean v3, v3, Lt/f;->j:Z

    if-eqz v3, :cond_11

    iget v0, v11, Lt/f;->g:I

    invoke-virtual {v14, v13, v0}, Lr/c;->d(Lr/f;I)V

    iget-object v0, v15, Ls/d;->d:Lt/k;

    iget-object v0, v0, Lt/o;->i:Lt/f;

    iget v0, v0, Lt/f;->g:I

    invoke-virtual {v14, v12, v0}, Lr/c;->d(Lr/f;I)V

    iget-object v0, v15, Ls/d;->e:Lt/m;

    iget-object v0, v0, Lt/o;->h:Lt/f;

    iget v0, v0, Lt/f;->g:I

    invoke-virtual {v14, v9, v0}, Lr/c;->d(Lr/f;I)V

    iget-object v0, v15, Ls/d;->e:Lt/m;

    iget-object v0, v0, Lt/o;->i:Lt/f;

    iget v0, v0, Lt/f;->g:I

    invoke-virtual {v14, v7, v0}, Lr/c;->d(Lr/f;I)V

    iget-object v0, v15, Ls/d;->e:Lt/m;

    iget-object v0, v0, Lt/m;->k:Lt/f;

    iget v0, v0, Lt/f;->g:I

    invoke-virtual {v14, v5, v0}, Lr/c;->d(Lr/f;I)V

    iget-object v0, v15, Ls/d;->N:Ls/d;

    if-eqz v0, :cond_10

    if-eqz v29, :cond_f

    const/4 v0, 0x0

    aget-boolean v1, v4, v0

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Ls/d;->t()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v15, Ls/d;->N:Ls/d;

    iget-object v1, v1, Ls/d;->E:Ls/c;

    invoke-virtual {v14, v1}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v14, v1, v12, v0, v2}, Lr/c;->f(Lr/f;Lr/f;II)V

    :cond_f
    if-eqz v28, :cond_10

    const/4 v0, 0x1

    aget-boolean v0, v4, v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Ls/d;->u()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v15, Ls/d;->N:Ls/d;

    iget-object v0, v0, Ls/d;->F:Ls/c;

    invoke-virtual {v14, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {v14, v0, v7, v3, v1}, Lr/c;->f(Lr/f;Lr/f;II)V

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    :goto_8
    iput-boolean v3, v15, Ls/d;->h:Z

    iput-boolean v3, v15, Ls/d;->i:Z

    return-void

    :cond_11
    :goto_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_12
    move-object/from16 v21, v6

    move-object/from16 v20, v11

    goto :goto_9

    :goto_a
    iget-object v6, v15, Ls/d;->N:Ls/d;

    if-eqz v6, :cond_17

    invoke-virtual {v15, v3}, Ls/d;->s(I)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v15, Ls/d;->N:Ls/d;

    check-cast v6, Ls/e;

    invoke-virtual {v6, v15, v3}, Ls/e;->K(Ls/d;I)V

    const/4 v3, 0x1

    :goto_b
    const/4 v6, 0x1

    goto :goto_c

    :cond_13
    invoke-virtual/range {p0 .. p0}, Ls/d;->t()Z

    move-result v3

    goto :goto_b

    :goto_c
    invoke-virtual {v15, v6}, Ls/d;->s(I)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, v15, Ls/d;->N:Ls/d;

    check-cast v10, Ls/e;

    invoke-virtual {v10, v15, v6}, Ls/e;->K(Ls/d;I)V

    const/4 v6, 0x1

    goto :goto_d

    :cond_14
    invoke-virtual/range {p0 .. p0}, Ls/d;->u()Z

    move-result v6

    :goto_d
    if-nez v3, :cond_15

    if-eqz v29, :cond_15

    iget v10, v15, Ls/d;->a0:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_15

    iget-object v10, v0, Ls/c;->f:Ls/c;

    if-nez v10, :cond_15

    iget-object v10, v1, Ls/c;->f:Ls/c;

    if-nez v10, :cond_15

    iget-object v10, v15, Ls/d;->N:Ls/d;

    iget-object v10, v10, Ls/d;->E:Ls/c;

    invoke-virtual {v14, v10}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v10

    move/from16 v22, v3

    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-virtual {v14, v10, v12, v3, v11}, Lr/c;->f(Lr/f;Lr/f;II)V

    goto :goto_e

    :cond_15
    move/from16 v22, v3

    :goto_e
    if-nez v6, :cond_16

    if-eqz v28, :cond_16

    iget v3, v15, Ls/d;->a0:I

    const/16 v10, 0x8

    if-eq v3, v10, :cond_16

    iget-object v3, v2, Ls/c;->f:Ls/c;

    if-nez v3, :cond_16

    iget-object v3, v8, Ls/c;->f:Ls/c;

    if-nez v3, :cond_16

    if-nez v21, :cond_16

    iget-object v3, v15, Ls/d;->N:Ls/d;

    iget-object v3, v3, Ls/d;->F:Ls/c;

    invoke-virtual {v14, v3}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v14, v3, v7, v11, v10}, Lr/c;->f(Lr/f;Lr/f;II)V

    :cond_16
    move/from16 v30, v6

    move/from16 v31, v22

    goto :goto_f

    :cond_17
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_f
    iget v3, v15, Ls/d;->O:I

    iget v6, v15, Ls/d;->V:I

    if-ge v3, v6, :cond_18

    goto :goto_10

    :cond_18
    move v6, v3

    :goto_10
    iget v10, v15, Ls/d;->P:I

    iget v11, v15, Ls/d;->W:I

    move-object/from16 v22, v9

    if-ge v10, v11, :cond_19

    goto :goto_11

    :cond_19
    move v11, v10

    :goto_11
    iget-object v9, v15, Ls/d;->j0:[I

    move-object/from16 v23, v5

    const/16 v19, 0x0

    aget v5, v9, v19

    move-object/from16 v27, v7

    const/4 v7, 0x3

    move/from16 v25, v6

    const/16 v16, 0x1

    if-eq v5, v7, :cond_1a

    const/16 v24, 0x1

    goto :goto_12

    :cond_1a
    const/16 v24, 0x0

    :goto_12
    aget v6, v9, v16

    if-eq v6, v7, :cond_1b

    const/16 v26, 0x1

    goto :goto_13

    :cond_1b
    const/16 v26, 0x0

    :goto_13
    iget v7, v15, Ls/d;->R:I

    iput v7, v15, Ls/d;->u:I

    move/from16 v33, v11

    iget v11, v15, Ls/d;->Q:F

    iput v11, v15, Ls/d;->v:F

    move-object/from16 v34, v4

    iget v4, v15, Ls/d;->l:I

    move-object/from16 v35, v12

    iget v12, v15, Ls/d;->m:I

    const/16 v36, 0x0

    cmpl-float v36, v11, v36

    move-object/from16 v37, v13

    if-lez v36, :cond_2e

    iget v13, v15, Ls/d;->a0:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_2e

    const/4 v13, 0x3

    if-ne v5, v13, :cond_1c

    if-nez v4, :cond_1c

    move v4, v13

    :cond_1c
    if-ne v6, v13, :cond_1d

    if-nez v12, :cond_1d

    move v12, v13

    :cond_1d
    if-ne v5, v13, :cond_29

    if-ne v6, v13, :cond_29

    if-ne v4, v13, :cond_29

    if-ne v12, v13, :cond_29

    const/4 v13, -0x1

    if-ne v7, v13, :cond_1f

    if-eqz v24, :cond_1e

    if-nez v26, :cond_1e

    const/4 v3, 0x0

    iput v3, v15, Ls/d;->u:I

    goto :goto_14

    :cond_1e
    if-nez v24, :cond_1f

    if-eqz v26, :cond_1f

    const/4 v3, 0x1

    iput v3, v15, Ls/d;->u:I

    if-ne v7, v13, :cond_1f

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v13, v3, v11

    iput v13, v15, Ls/d;->v:F

    :cond_1f
    :goto_14
    iget v3, v15, Ls/d;->u:I

    if-nez v3, :cond_21

    invoke-virtual {v2}, Ls/c;->h()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v8}, Ls/c;->h()Z

    move-result v3

    if-nez v3, :cond_21

    :cond_20
    const/4 v3, 0x1

    goto :goto_15

    :cond_21
    const/4 v3, 0x1

    goto :goto_16

    :goto_15
    iput v3, v15, Ls/d;->u:I

    goto :goto_17

    :goto_16
    iget v5, v15, Ls/d;->u:I

    if-ne v5, v3, :cond_23

    invoke-virtual {v0}, Ls/c;->h()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v1}, Ls/c;->h()Z

    move-result v3

    if-nez v3, :cond_23

    :cond_22
    const/4 v3, 0x0

    iput v3, v15, Ls/d;->u:I

    :cond_23
    :goto_17
    iget v3, v15, Ls/d;->u:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_26

    invoke-virtual {v2}, Ls/c;->h()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v8}, Ls/c;->h()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v0}, Ls/c;->h()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v1}, Ls/c;->h()Z

    move-result v3

    if-nez v3, :cond_26

    :cond_24
    invoke-virtual {v2}, Ls/c;->h()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v8}, Ls/c;->h()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    iput v2, v15, Ls/d;->u:I

    goto :goto_18

    :cond_25
    invoke-virtual {v0}, Ls/c;->h()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v1}, Ls/c;->h()Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, v15, Ls/d;->v:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v13, v1, v0

    iput v13, v15, Ls/d;->v:F

    const/4 v0, 0x1

    iput v0, v15, Ls/d;->u:I

    :cond_26
    :goto_18
    iget v0, v15, Ls/d;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    iget v0, v15, Ls/d;->o:I

    if-lez v0, :cond_27

    iget v1, v15, Ls/d;->r:I

    if-nez v1, :cond_27

    const/4 v1, 0x0

    iput v1, v15, Ls/d;->u:I

    goto :goto_19

    :cond_27
    if-nez v0, :cond_28

    iget v0, v15, Ls/d;->r:I

    if-lez v0, :cond_28

    iget v0, v15, Ls/d;->v:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v13, v1, v0

    iput v13, v15, Ls/d;->v:F

    const/4 v0, 0x1

    iput v0, v15, Ls/d;->u:I

    :cond_28
    :goto_19
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_29
    move v0, v13

    if-ne v5, v0, :cond_2b

    if-ne v4, v0, :cond_2b

    const/4 v1, 0x0

    iput v1, v15, Ls/d;->u:I

    int-to-float v1, v10

    mul-float/2addr v11, v1

    float-to-int v1, v11

    if-eq v6, v0, :cond_2a

    move v6, v1

    move/from16 v39, v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v38, 0x0

    const/16 v40, 0x4

    goto :goto_1d

    :cond_2a
    move v6, v1

    move/from16 v40, v4

    move/from16 v39, v12

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_1a
    const/16 v38, 0x1

    goto :goto_1d

    :cond_2b
    if-ne v6, v0, :cond_28

    if-ne v12, v0, :cond_28

    const/4 v1, 0x1

    iput v1, v15, Ls/d;->u:I

    const/4 v1, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    if-ne v7, v1, :cond_2c

    div-float v1, v13, v11

    iput v1, v15, Ls/d;->v:F

    :cond_2c
    iget v1, v15, Ls/d;->v:F

    int-to-float v2, v3

    mul-float/2addr v1, v2

    float-to-int v11, v1

    move/from16 v40, v4

    move/from16 v33, v11

    if-eq v5, v0, :cond_2d

    move/from16 v6, v25

    const/16 v38, 0x0

    const/16 v39, 0x4

    goto :goto_1d

    :cond_2d
    :goto_1b
    move/from16 v39, v12

    move/from16 v6, v25

    goto :goto_1a

    :goto_1c
    move/from16 v40, v4

    goto :goto_1b

    :cond_2e
    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v40, v4

    move/from16 v39, v12

    move/from16 v6, v25

    const/16 v38, 0x0

    :goto_1d
    iget-object v0, v15, Ls/d;->n:[I

    const/4 v1, 0x0

    aput v40, v0, v1

    const/4 v1, 0x1

    aput v39, v0, v1

    if-eqz v38, :cond_30

    iget v0, v15, Ls/d;->u:I

    const/4 v1, -0x1

    if-eqz v0, :cond_2f

    if-ne v0, v1, :cond_31

    :cond_2f
    const/16 v36, 0x1

    goto :goto_1e

    :cond_30
    const/4 v1, -0x1

    :cond_31
    const/16 v36, 0x0

    :goto_1e
    if-eqz v38, :cond_33

    iget v0, v15, Ls/d;->u:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_32

    if-ne v0, v1, :cond_33

    :cond_32
    const/4 v0, 0x0

    const/16 v41, 0x1

    goto :goto_1f

    :cond_33
    const/4 v0, 0x0

    const/16 v41, 0x0

    :goto_1f
    aget v1, v9, v0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_34

    instance-of v0, v15, Ls/e;

    if-eqz v0, :cond_34

    const/4 v12, 0x1

    goto :goto_20

    :cond_34
    const/4 v12, 0x0

    :goto_20
    if-eqz v12, :cond_35

    const/4 v14, 0x0

    goto :goto_21

    :cond_35
    move v14, v6

    :goto_21
    iget-object v7, v15, Ls/d;->J:Ls/c;

    invoke-virtual {v7}, Ls/c;->h()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v42, v0, 0x1

    const/4 v0, 0x0

    aget-boolean v43, v20, v0

    aget-boolean v44, v20, v1

    iget v0, v15, Ls/d;->j:I

    iget-object v6, v15, Ls/d;->w:[I

    const/16 v45, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3a

    iget-boolean v0, v15, Ls/d;->h:Z

    if-nez v0, :cond_3a

    if-eqz p2, :cond_36

    iget-object v0, v15, Ls/d;->d:Lt/k;

    if-eqz v0, :cond_36

    iget-object v1, v0, Lt/o;->h:Lt/f;

    iget-boolean v2, v1, Lt/f;->j:Z

    if-eqz v2, :cond_36

    iget-object v0, v0, Lt/o;->i:Lt/f;

    iget-boolean v0, v0, Lt/f;->j:Z

    if-nez v0, :cond_37

    :cond_36
    move-object/from16 v5, p1

    move-object/from16 v1, v35

    move-object/from16 v3, v37

    const/16 v11, 0x8

    goto/16 :goto_22

    :cond_37
    if-eqz p2, :cond_39

    iget v0, v1, Lt/f;->g:I

    move-object/from16 v5, p1

    move-object/from16 v3, v37

    invoke-virtual {v5, v3, v0}, Lr/c;->d(Lr/f;I)V

    iget-object v0, v15, Ls/d;->d:Lt/k;

    iget-object v0, v0, Lt/o;->i:Lt/f;

    iget v0, v0, Lt/f;->g:I

    move-object/from16 v1, v35

    invoke-virtual {v5, v1, v0}, Lr/c;->d(Lr/f;I)V

    iget-object v0, v15, Ls/d;->N:Ls/d;

    if-eqz v0, :cond_38

    if-eqz v29, :cond_38

    const/4 v0, 0x0

    aget-boolean v2, v34, v0

    if-eqz v2, :cond_38

    invoke-virtual/range {p0 .. p0}, Ls/d;->t()Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, v15, Ls/d;->N:Ls/d;

    iget-object v2, v2, Ls/d;->E:Ls/c;

    invoke-virtual {v5, v2}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v2

    const/16 v11, 0x8

    invoke-virtual {v5, v2, v1, v0, v11}, Lr/c;->f(Lr/f;Lr/f;II)V

    :cond_38
    move-object/from16 v57, v1

    move-object/from16 v58, v3

    move-object/from16 v52, v6

    move-object/from16 v53, v7

    move-object/from16 v54, v8

    move-object/from16 v56, v9

    move-object/from16 v51, v21

    move-object/from16 v55, v22

    move-object/from16 v50, v23

    move-object/from16 v59, v27

    goto/16 :goto_27

    :cond_39
    move-object/from16 v5, p1

    :cond_3a
    move-object/from16 v52, v6

    move-object/from16 v53, v7

    move-object/from16 v54, v8

    move-object/from16 v56, v9

    move-object/from16 v51, v21

    move-object/from16 v55, v22

    move-object/from16 v50, v23

    move-object/from16 v59, v27

    move-object/from16 v57, v35

    move-object/from16 v58, v37

    goto/16 :goto_27

    :goto_22
    iget-object v0, v15, Ls/d;->N:Ls/d;

    if-eqz v0, :cond_3b

    iget-object v0, v0, Ls/d;->E:Ls/c;

    invoke-virtual {v5, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_23

    :cond_3b
    move-object/from16 v17, v45

    :goto_23
    iget-object v0, v15, Ls/d;->N:Ls/d;

    if-eqz v0, :cond_3c

    iget-object v0, v0, Ls/d;->C:Ls/c;

    invoke-virtual {v5, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    move-object/from16 v18, v0

    :goto_24
    const/4 v0, 0x0

    goto :goto_25

    :cond_3c
    move-object/from16 v18, v45

    goto :goto_24

    :goto_25
    aget-boolean v19, v34, v0

    aget v20, v9, v0

    iget v2, v15, Ls/d;->S:I

    iget v10, v15, Ls/d;->V:I

    aget v35, v6, v0

    move/from16 v37, v2

    iget v2, v15, Ls/d;->X:F

    const/16 v16, 0x1

    aget v0, v9, v16

    const/4 v13, 0x3

    if-ne v0, v13, :cond_3d

    move/from16 v32, v16

    goto :goto_26

    :cond_3d
    const/16 v32, 0x0

    :goto_26
    iget v0, v15, Ls/d;->o:I

    move/from16 v24, v0

    iget v0, v15, Ls/d;->p:I

    move/from16 v25, v0

    iget v0, v15, Ls/d;->q:F

    move/from16 v26, v0

    iget-object v0, v15, Ls/d;->C:Ls/c;

    move/from16 v46, v10

    move-object v10, v0

    iget-object v0, v15, Ls/d;->E:Ls/c;

    move/from16 v16, v11

    move-object v11, v0

    const/4 v0, 0x1

    move/from16 v47, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v48, v1

    move-object/from16 v1, p1

    move-object/from16 v49, v3

    move/from16 v3, v29

    move/from16 v4, v28

    move-object/from16 v50, v23

    move/from16 v5, v19

    move-object/from16 v52, v6

    move-object/from16 v51, v21

    move-object/from16 v6, v18

    move-object/from16 v53, v7

    move-object/from16 v13, v27

    move-object/from16 v7, v17

    move-object/from16 v54, v8

    move/from16 v8, v20

    move-object/from16 v56, v9

    move-object/from16 v55, v22

    move v9, v12

    move-object/from16 v57, v48

    move/from16 v12, v37

    move-object/from16 v59, v13

    move-object/from16 v58, v49

    move v13, v14

    move/from16 v14, v46

    move/from16 v15, v35

    move/from16 v16, v47

    move/from16 v17, v36

    move/from16 v18, v32

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v43

    move/from16 v22, v40

    move/from16 v23, v39

    move/from16 v27, v42

    invoke-virtual/range {v0 .. v27}, Ls/d;->d(Lr/c;ZZZZLr/f;Lr/f;IZLs/c;Ls/c;IIIIFZZZZZIIIIFZ)V

    :goto_27
    if-eqz p2, :cond_41

    move-object/from16 v15, p0

    iget-object v0, v15, Ls/d;->e:Lt/m;

    if-eqz v0, :cond_40

    iget-object v1, v0, Lt/o;->h:Lt/f;

    iget-boolean v2, v1, Lt/f;->j:Z

    if-eqz v2, :cond_40

    iget-object v0, v0, Lt/o;->i:Lt/f;

    iget-boolean v0, v0, Lt/f;->j:Z

    if-eqz v0, :cond_40

    iget v0, v1, Lt/f;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v55

    invoke-virtual {v14, v13, v0}, Lr/c;->d(Lr/f;I)V

    iget-object v0, v15, Ls/d;->e:Lt/m;

    iget-object v0, v0, Lt/o;->i:Lt/f;

    iget v0, v0, Lt/f;->g:I

    move-object/from16 v12, v59

    invoke-virtual {v14, v12, v0}, Lr/c;->d(Lr/f;I)V

    iget-object v0, v15, Ls/d;->e:Lt/m;

    iget-object v0, v0, Lt/m;->k:Lt/f;

    iget v0, v0, Lt/f;->g:I

    move-object/from16 v1, v50

    invoke-virtual {v14, v1, v0}, Lr/c;->d(Lr/f;I)V

    iget-object v0, v15, Ls/d;->N:Ls/d;

    if-eqz v0, :cond_3f

    if-nez v30, :cond_3f

    if-eqz v28, :cond_3f

    const/4 v9, 0x1

    aget-boolean v2, v34, v9

    if-eqz v2, :cond_3e

    iget-object v0, v0, Ls/d;->F:Ls/c;

    invoke-virtual {v14, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v8, 0x0

    invoke-virtual {v14, v0, v12, v8, v2}, Lr/c;->f(Lr/f;Lr/f;II)V

    goto :goto_28

    :cond_3e
    const/16 v2, 0x8

    const/4 v8, 0x0

    goto :goto_28

    :cond_3f
    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_28
    move v11, v8

    goto :goto_2a

    :cond_40
    move-object/from16 v14, p1

    move-object/from16 v1, v50

    move-object/from16 v13, v55

    move-object/from16 v12, v59

    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_29

    :cond_41
    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v50

    move-object/from16 v13, v55

    move-object/from16 v12, v59

    :goto_29
    move v11, v9

    :goto_2a
    iget v0, v15, Ls/d;->k:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_42

    move v10, v8

    goto :goto_2b

    :cond_42
    move v10, v11

    :goto_2b
    const/4 v6, 0x5

    if-eqz v10, :cond_4d

    iget-boolean v0, v15, Ls/d;->i:Z

    if-nez v0, :cond_4d

    aget v0, v56, v9

    if-ne v0, v7, :cond_43

    instance-of v0, v15, Ls/e;

    if-eqz v0, :cond_43

    move/from16 v16, v9

    goto :goto_2c

    :cond_43
    move/from16 v16, v8

    :goto_2c
    if-eqz v16, :cond_44

    move/from16 v33, v8

    :cond_44
    iget-object v0, v15, Ls/d;->N:Ls/d;

    if-eqz v0, :cond_45

    iget-object v0, v0, Ls/d;->F:Ls/c;

    invoke-virtual {v14, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    move-object v5, v0

    goto :goto_2d

    :cond_45
    move-object/from16 v5, v45

    :goto_2d
    iget-object v0, v15, Ls/d;->N:Ls/d;

    if-eqz v0, :cond_46

    iget-object v0, v0, Ls/d;->D:Ls/c;

    invoke-virtual {v14, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    move-object/from16 v45, v0

    :cond_46
    iget v0, v15, Ls/d;->U:I

    if-gtz v0, :cond_47

    iget v3, v15, Ls/d;->a0:I

    if-ne v3, v2, :cond_4b

    :cond_47
    move-object/from16 v3, v51

    iget-object v4, v3, Ls/c;->f:Ls/c;

    if-eqz v4, :cond_49

    invoke-virtual {v14, v1, v13, v0, v2}, Lr/c;->e(Lr/f;Lr/f;II)V

    iget-object v0, v3, Ls/c;->f:Ls/c;

    invoke-virtual {v14, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    invoke-virtual {v14, v1, v0, v8, v2}, Lr/c;->e(Lr/f;Lr/f;II)V

    if-eqz v28, :cond_48

    move-object/from16 v0, v54

    invoke-virtual {v14, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    invoke-virtual {v14, v5, v0, v8, v6}, Lr/c;->f(Lr/f;Lr/f;II)V

    :cond_48
    move/from16 v27, v8

    goto :goto_2f

    :cond_49
    iget v3, v15, Ls/d;->a0:I

    if-ne v3, v2, :cond_4a

    invoke-virtual {v14, v1, v13, v8, v2}, Lr/c;->e(Lr/f;Lr/f;II)V

    goto :goto_2e

    :cond_4a
    invoke-virtual {v14, v1, v13, v0, v2}, Lr/c;->e(Lr/f;Lr/f;II)V

    :cond_4b
    :goto_2e
    move/from16 v27, v42

    :goto_2f
    aget-boolean v17, v34, v9

    aget v18, v56, v9

    iget v4, v15, Ls/d;->T:I

    iget v3, v15, Ls/d;->W:I

    aget v19, v52, v9

    iget v1, v15, Ls/d;->Y:F

    aget v0, v56, v8

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4c

    move/from16 v20, v9

    goto :goto_30

    :cond_4c
    move/from16 v20, v8

    :goto_30
    iget v0, v15, Ls/d;->r:I

    move/from16 v24, v0

    iget v0, v15, Ls/d;->s:I

    move/from16 v25, v0

    iget v0, v15, Ls/d;->t:F

    move/from16 v26, v0

    iget-object v10, v15, Ls/d;->D:Ls/c;

    iget-object v11, v15, Ls/d;->F:Ls/c;

    const/4 v0, 0x0

    move v2, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v3

    move/from16 v3, v28

    move/from16 v23, v4

    move/from16 v4, v29

    move-object/from16 v28, v5

    move/from16 v5, v17

    move-object/from16 v6, v45

    move-object/from16 v7, v28

    move/from16 v8, v18

    move/from16 v9, v16

    move-object/from16 v60, v12

    move/from16 v12, v23

    move-object/from16 v61, v13

    move/from16 v13, v33

    move/from16 v14, v22

    move/from16 v15, v19

    move/from16 v16, v21

    move/from16 v17, v41

    move/from16 v18, v20

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v44

    move/from16 v22, v39

    move/from16 v23, v40

    invoke-virtual/range {v0 .. v27}, Ls/d;->d(Lr/c;ZZZZLr/f;Lr/f;IZLs/c;Ls/c;IIIIFZZZZZIIIIFZ)V

    goto :goto_31

    :cond_4d
    move-object/from16 v60, v12

    move-object/from16 v61, v13

    :goto_31
    move-object/from16 v0, p0

    if-eqz v38, :cond_4f

    iget v1, v0, Ls/d;->u:I

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4e

    iget v1, v0, Ls/d;->v:F

    invoke-virtual/range {p1 .. p1}, Lr/c;->l()Lr/b;

    move-result-object v3

    iget-object v4, v3, Lr/b;->d:Lr/a;

    move-object/from16 v5, v60

    invoke-virtual {v4, v5, v2}, Lr/a;->j(Lr/f;F)V

    iget-object v2, v3, Lr/b;->d:Lr/a;

    move-object/from16 v4, v61

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v6}, Lr/a;->j(Lr/f;F)V

    iget-object v2, v3, Lr/b;->d:Lr/a;

    move-object/from16 v7, v57

    invoke-virtual {v2, v7, v1}, Lr/a;->j(Lr/f;F)V

    iget-object v2, v3, Lr/b;->d:Lr/a;

    neg-float v1, v1

    move-object/from16 v8, v58

    invoke-virtual {v2, v8, v1}, Lr/a;->j(Lr/f;F)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v3}, Lr/c;->c(Lr/b;)V

    goto :goto_32

    :cond_4e
    move-object/from16 v1, p1

    move-object/from16 v7, v57

    move-object/from16 v8, v58

    move-object/from16 v5, v60

    move-object/from16 v4, v61

    const/high16 v6, 0x3f800000    # 1.0f

    iget v3, v0, Ls/d;->v:F

    invoke-virtual/range {p1 .. p1}, Lr/c;->l()Lr/b;

    move-result-object v9

    iget-object v10, v9, Lr/b;->d:Lr/a;

    invoke-virtual {v10, v7, v2}, Lr/a;->j(Lr/f;F)V

    iget-object v2, v9, Lr/b;->d:Lr/a;

    invoke-virtual {v2, v8, v6}, Lr/a;->j(Lr/f;F)V

    iget-object v2, v9, Lr/b;->d:Lr/a;

    invoke-virtual {v2, v5, v3}, Lr/a;->j(Lr/f;F)V

    iget-object v2, v9, Lr/b;->d:Lr/a;

    neg-float v3, v3

    invoke-virtual {v2, v4, v3}, Lr/a;->j(Lr/f;F)V

    invoke-virtual {v1, v9}, Lr/c;->c(Lr/b;)V

    goto :goto_32

    :cond_4f
    move-object/from16 v1, p1

    :goto_32
    invoke-virtual/range {v53 .. v53}, Ls/c;->h()Z

    move-result v2

    if-eqz v2, :cond_50

    move-object/from16 v2, v53

    iget-object v3, v2, Ls/c;->f:Ls/c;

    iget-object v3, v3, Ls/c;->d:Ls/d;

    iget v4, v0, Ls/d;->x:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Ls/c;->e()I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ls/d;->i(I)Ls/c;

    move-result-object v6

    invoke-virtual {v1, v6}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ls/d;->i(I)Ls/c;

    move-result-object v8

    invoke-virtual {v1, v8}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Ls/d;->i(I)Ls/c;

    move-result-object v10

    invoke-virtual {v1, v10}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ls/d;->i(I)Ls/c;

    move-result-object v12

    invoke-virtual {v1, v12}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v12

    invoke-virtual {v3, v5}, Ls/d;->i(I)Ls/c;

    move-result-object v5

    invoke-virtual {v1, v5}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v5

    invoke-virtual {v3, v7}, Ls/d;->i(I)Ls/c;

    move-result-object v7

    invoke-virtual {v1, v7}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v7

    invoke-virtual {v3, v9}, Ls/d;->i(I)Ls/c;

    move-result-object v9

    invoke-virtual {v1, v9}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v9

    invoke-virtual {v3, v11}, Ls/d;->i(I)Ls/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lr/c;->l()Lr/b;

    move-result-object v11

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-object v4, v9

    move-object/from16 p2, v10

    int-to-double v9, v2

    move-object/from16 v17, v4

    move-object v2, v5

    mul-double v4, v15, v9

    double-to-float v4, v4

    iget-object v5, v11, Lr/b;->d:Lr/a;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7, v15}, Lr/a;->j(Lr/f;F)V

    iget-object v5, v11, Lr/b;->d:Lr/a;

    invoke-virtual {v5, v3, v15}, Lr/a;->j(Lr/f;F)V

    iget-object v3, v11, Lr/b;->d:Lr/a;

    const/high16 v5, -0x41000000    # -0.5f

    invoke-virtual {v3, v8, v5}, Lr/a;->j(Lr/f;F)V

    iget-object v3, v11, Lr/b;->d:Lr/a;

    invoke-virtual {v3, v12, v5}, Lr/a;->j(Lr/f;F)V

    neg-float v3, v4

    iput v3, v11, Lr/b;->b:F

    invoke-virtual {v1, v11}, Lr/c;->c(Lr/b;)V

    invoke-virtual/range {p1 .. p1}, Lr/c;->l()Lr/b;

    move-result-object v3

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    double-to-float v4, v7

    iget-object v7, v3, Lr/b;->d:Lr/a;

    invoke-virtual {v7, v2, v15}, Lr/a;->j(Lr/f;F)V

    iget-object v2, v3, Lr/b;->d:Lr/a;

    move-object/from16 v7, v17

    invoke-virtual {v2, v7, v15}, Lr/a;->j(Lr/f;F)V

    iget-object v2, v3, Lr/b;->d:Lr/a;

    invoke-virtual {v2, v6, v5}, Lr/a;->j(Lr/f;F)V

    iget-object v2, v3, Lr/b;->d:Lr/a;

    move-object/from16 v6, p2

    invoke-virtual {v2, v6, v5}, Lr/a;->j(Lr/f;F)V

    neg-float v2, v4

    iput v2, v3, Lr/b;->b:F

    invoke-virtual {v1, v3}, Lr/c;->c(Lr/b;)V

    :cond_50
    const/4 v1, 0x0

    iput-boolean v1, v0, Ls/d;->h:Z

    iput-boolean v1, v0, Ls/d;->i:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget p0, p0, Ls/d;->a0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(Lr/c;ZZZZLr/f;Lr/f;IZLs/c;Ls/c;IIIIFZZZZZIIIIFZ)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    move/from16 v5, p26

    invoke-virtual {v10, v13}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v9

    invoke-virtual {v10, v14}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v8

    iget-object v6, v13, Ls/c;->f:Ls/c;

    invoke-virtual {v10, v6}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v7

    iget-object v6, v14, Ls/c;->f:Ls/c;

    invoke-virtual {v10, v6}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v6

    invoke-virtual/range {p10 .. p10}, Ls/c;->h()Z

    move-result v16

    invoke-virtual/range {p11 .. p11}, Ls/c;->h()Z

    move-result v17

    iget-object v12, v0, Ls/d;->J:Ls/c;

    invoke-virtual {v12}, Ls/c;->h()Z

    move-result v12

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v2, v18

    if-eqz p17, :cond_2

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move/from16 v14, p22

    :goto_1
    invoke-static/range {p8 .. p8}, Lk/Q0;->f(I)I

    move-result v11

    move-object/from16 v19, v6

    const/4 v6, 0x1

    if-eqz v11, :cond_3

    if-eq v11, v6, :cond_3

    const/4 v6, 0x2

    if-eq v11, v6, :cond_4

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x4

    if-eq v14, v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    iget v11, v0, Ls/d;->a0:I

    const/16 v5, 0x8

    if-ne v11, v5, :cond_5

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    move v11, v6

    move/from16 v6, p13

    :goto_3
    if-eqz p27, :cond_8

    if-nez v16, :cond_7

    if-nez v17, :cond_7

    if-nez v12, :cond_7

    move/from16 v5, p12

    invoke-virtual {v10, v9, v5}, Lr/c;->d(Lr/f;I)V

    :cond_6
    move/from16 v22, v12

    const/16 v12, 0x8

    goto :goto_4

    :cond_7
    if-eqz v16, :cond_6

    if-nez v17, :cond_6

    invoke-virtual/range {p10 .. p10}, Ls/c;->e()I

    move-result v5

    move/from16 v22, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v5, v12}, Lr/c;->e(Lr/f;Lr/f;II)V

    goto :goto_4

    :cond_8
    move/from16 v22, v12

    move v12, v5

    :goto_4
    if-nez v11, :cond_c

    if-eqz p9, :cond_a

    const/4 v5, 0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v9, v12, v5}, Lr/c;->e(Lr/f;Lr/f;II)V

    const/16 v5, 0x8

    if-lez v15, :cond_9

    invoke-virtual {v10, v8, v9, v15, v5}, Lr/c;->f(Lr/f;Lr/f;II)V

    :cond_9
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_b

    invoke-virtual {v10, v8, v9, v1, v5}, Lr/c;->g(Lr/f;Lr/f;II)V

    goto :goto_5

    :cond_a
    move v5, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v9, v6, v5}, Lr/c;->e(Lr/f;Lr/f;II)V

    :cond_b
    :goto_5
    move v12, v3

    move/from16 v23, v11

    move/from16 v11, p5

    goto/16 :goto_9

    :cond_c
    const/4 v1, 0x2

    const/4 v12, 0x0

    if-eq v2, v1, :cond_f

    if-nez p17, :cond_f

    const/4 v1, 0x1

    if-eq v14, v1, :cond_d

    if-nez v14, :cond_f

    :cond_d
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_e

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_e
    const/16 v5, 0x8

    invoke-virtual {v10, v8, v9, v1, v5}, Lr/c;->e(Lr/f;Lr/f;II)V

    move/from16 v11, p5

    move/from16 v23, v12

    move v12, v3

    goto/16 :goto_9

    :cond_f
    const/4 v1, -0x2

    if-ne v3, v1, :cond_10

    move v3, v6

    :cond_10
    if-ne v4, v1, :cond_11

    move v4, v6

    :cond_11
    if-lez v6, :cond_12

    const/4 v1, 0x1

    if-eq v14, v1, :cond_12

    move v6, v12

    :cond_12
    const/16 v1, 0x8

    if-lez v3, :cond_13

    invoke-virtual {v10, v8, v9, v3, v1}, Lr/c;->f(Lr/f;Lr/f;II)V

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_13
    const/4 v5, 0x1

    if-lez v4, :cond_15

    if-eqz p3, :cond_14

    if-ne v14, v5, :cond_14

    goto :goto_6

    :cond_14
    invoke-virtual {v10, v8, v9, v4, v1}, Lr/c;->g(Lr/f;Lr/f;II)V

    :goto_6
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_15
    if-ne v14, v5, :cond_18

    if-eqz p3, :cond_16

    invoke-virtual {v10, v8, v9, v6, v1}, Lr/c;->e(Lr/f;Lr/f;II)V

    const/4 v5, 0x5

    goto :goto_5

    :cond_16
    if-eqz p19, :cond_17

    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v6, v5}, Lr/c;->e(Lr/f;Lr/f;II)V

    invoke-virtual {v10, v8, v9, v6, v1}, Lr/c;->g(Lr/f;Lr/f;II)V

    goto :goto_5

    :cond_17
    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v6, v5}, Lr/c;->e(Lr/f;Lr/f;II)V

    invoke-virtual {v10, v8, v9, v6, v1}, Lr/c;->g(Lr/f;Lr/f;II)V

    goto :goto_5

    :cond_18
    const/4 v1, 0x2

    const/4 v5, 0x5

    if-ne v14, v1, :cond_1b

    iget v6, v13, Ls/c;->e:I

    const/4 v11, 0x3

    if-eq v6, v11, :cond_19

    if-ne v6, v5, :cond_1a

    :cond_19
    const/4 v6, 0x4

    goto :goto_7

    :cond_1a
    iget-object v5, v0, Ls/d;->N:Ls/d;

    invoke-virtual {v5, v1}, Ls/d;->i(I)Ls/c;

    move-result-object v5

    invoke-virtual {v10, v5}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v1

    iget-object v5, v0, Ls/d;->N:Ls/d;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ls/d;->i(I)Ls/c;

    move-result-object v5

    invoke-virtual {v10, v5}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v5

    goto :goto_8

    :goto_7
    iget-object v1, v0, Ls/d;->N:Ls/d;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ls/d;->i(I)Ls/c;

    move-result-object v1

    invoke-virtual {v10, v1}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v1

    iget-object v11, v0, Ls/d;->N:Ls/d;

    const/4 v5, 0x5

    invoke-virtual {v11, v5}, Ls/d;->i(I)Ls/c;

    move-result-object v11

    invoke-virtual {v10, v11}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    move-result-object v5

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lr/c;->l()Lr/b;

    move-result-object v11

    iget-object v6, v11, Lr/b;->d:Lr/a;

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v6, v8, v12}, Lr/a;->j(Lr/f;F)V

    iget-object v6, v11, Lr/b;->d:Lr/a;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9, v12}, Lr/a;->j(Lr/f;F)V

    iget-object v6, v11, Lr/b;->d:Lr/a;

    move/from16 v12, p26

    invoke-virtual {v6, v5, v12}, Lr/a;->j(Lr/f;F)V

    iget-object v5, v11, Lr/b;->d:Lr/a;

    neg-float v6, v12

    invoke-virtual {v5, v1, v6}, Lr/a;->j(Lr/f;F)V

    invoke-virtual {v10, v11}, Lr/c;->c(Lr/b;)V

    move/from16 v11, p5

    move v12, v3

    const/16 v23, 0x0

    goto :goto_9

    :cond_1b
    move v12, v3

    move/from16 v23, v11

    const/4 v11, 0x1

    :goto_9
    if-eqz p27, :cond_53

    if-eqz p19, :cond_1c

    move-object/from16 v6, p7

    move v1, v2

    move-object v5, v8

    move-object v4, v9

    move/from16 p5, v11

    const/16 v3, 0x8

    const/4 v7, 0x2

    const/16 v28, 0x1

    move-object/from16 v2, p6

    goto/16 :goto_27

    :cond_1c
    if-nez v16, :cond_1d

    if-nez v17, :cond_1d

    if-nez v22, :cond_1d

    :goto_a
    move-object/from16 v14, p11

    move-object v5, v8

    move/from16 p5, v11

    move-object/from16 v1, v19

    goto/16 :goto_24

    :cond_1d
    if-eqz v16, :cond_1e

    if-nez v17, :cond_1e

    goto :goto_a

    :cond_1e
    if-nez v16, :cond_20

    if-eqz v17, :cond_20

    invoke-virtual/range {p11 .. p11}, Ls/c;->e()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v6, v19

    const/16 v1, 0x8

    invoke-virtual {v10, v8, v6, v0, v1}, Lr/c;->e(Lr/f;Lr/f;II)V

    if-eqz p3, :cond_1f

    move-object/from16 v5, p6

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {v10, v9, v5, v0, v1}, Lr/c;->f(Lr/f;Lr/f;II)V

    :cond_1f
    move-object/from16 v14, p11

    move-object v1, v6

    move-object v5, v8

    move/from16 p5, v11

    goto/16 :goto_24

    :cond_20
    move-object/from16 v5, p6

    move-object/from16 v6, v19

    if-eqz v16, :cond_1f

    if-eqz v17, :cond_1f

    iget-object v1, v13, Ls/c;->f:Ls/c;

    iget-object v3, v1, Ls/c;->d:Ls/d;

    move-object/from16 v2, p11

    iget-object v1, v2, Ls/c;->f:Ls/c;

    iget-object v1, v1, Ls/c;->d:Ls/d;

    iget-object v13, v0, Ls/d;->N:Ls/d;

    const/16 v16, 0x6

    if-eqz v23, :cond_32

    if-nez v14, :cond_25

    if-nez v4, :cond_22

    if-nez v12, :cond_22

    iget-boolean v4, v7, Lr/f;->f:Z

    if-eqz v4, :cond_21

    iget-boolean v4, v6, Lr/f;->f:Z

    if-eqz v4, :cond_21

    invoke-virtual/range {p10 .. p10}, Ls/c;->e()I

    move-result v0

    const/16 v4, 0x8

    invoke-virtual {v10, v9, v7, v0, v4}, Lr/c;->e(Lr/f;Lr/f;II)V

    invoke-virtual/range {p11 .. p11}, Ls/c;->e()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v10, v8, v6, v0, v4}, Lr/c;->e(Lr/f;Lr/f;II)V

    return-void

    :cond_21
    const/16 v4, 0x8

    move/from16 v22, v4

    move/from16 v24, v22

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x0

    goto :goto_b

    :cond_22
    const/16 v4, 0x8

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x5

    const/16 v24, 0x5

    :goto_b
    instance-of v4, v3, Ls/a;

    if-nez v4, :cond_24

    instance-of v4, v1, Ls/a;

    if-eqz v4, :cond_23

    goto :goto_d

    :cond_23
    move/from16 v20, v21

    move/from16 v25, v22

    move/from16 v26, v24

    const/4 v4, 0x5

    const/4 v15, 0x1

    move/from16 v24, v16

    move/from16 v21, v17

    move/from16 v22, v19

    const/16 v17, 0x8

    move/from16 v19, v14

    :goto_c
    move-object/from16 v14, p7

    goto/16 :goto_16

    :cond_24
    :goto_d
    move/from16 v22, v19

    move/from16 v20, v21

    move/from16 v26, v24

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v25, 0x4

    move/from16 v19, v14

    move/from16 v24, v16

    move/from16 v21, v17

    const/16 v17, 0x8

    goto :goto_c

    :cond_25
    const/4 v15, 0x1

    const/16 v17, 0x8

    if-ne v14, v15, :cond_26

    move/from16 v19, v14

    move/from16 v24, v16

    move/from16 v26, v17

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v25, 0x4

    goto :goto_c

    :cond_26
    const/4 v15, 0x3

    if-ne v14, v15, :cond_31

    iget v15, v0, Ls/d;->u:I

    move/from16 v19, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_29

    if-eqz p20, :cond_28

    move-object/from16 v14, p7

    move/from16 v26, v17

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    if-eqz p3, :cond_27

    const/16 v24, 0x5

    :goto_e
    const/16 v25, 0x5

    goto/16 :goto_16

    :cond_27
    const/16 v24, 0x4

    goto :goto_e

    :cond_28
    move-object/from16 v14, p7

    move/from16 v24, v17

    move/from16 v26, v24

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    goto :goto_e

    :cond_29
    if-eqz p17, :cond_2c

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2b

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2a

    goto :goto_f

    :cond_2a
    move/from16 v14, v17

    const/4 v4, 0x5

    goto :goto_10

    :cond_2b
    const/4 v15, 0x1

    :goto_f
    const/4 v4, 0x4

    const/4 v14, 0x5

    :goto_10
    move/from16 v25, v4

    move/from16 v26, v14

    move/from16 v20, v15

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v24, v16

    const/4 v4, 0x5

    goto :goto_c

    :cond_2c
    const/4 v15, 0x1

    if-lez v4, :cond_2d

    move-object/from16 v14, p7

    move/from16 v20, v15

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v24, v16

    const/4 v4, 0x5

    const/16 v25, 0x5

    :goto_11
    const/16 v26, 0x5

    goto/16 :goto_16

    :cond_2d
    if-nez v4, :cond_30

    if-nez v12, :cond_30

    if-nez p20, :cond_2e

    move-object/from16 v14, p7

    move/from16 v20, v15

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v24, v16

    move/from16 v25, v17

    const/4 v4, 0x5

    goto :goto_11

    :cond_2e
    if-eq v3, v13, :cond_2f

    if-eq v1, v13, :cond_2f

    const/4 v4, 0x4

    goto :goto_12

    :cond_2f
    const/4 v4, 0x5

    :goto_12
    move-object/from16 v14, p7

    move/from16 v26, v4

    move/from16 v20, v15

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v24, v16

    const/4 v4, 0x5

    :goto_13
    const/16 v25, 0x4

    goto/16 :goto_16

    :cond_30
    move-object/from16 v14, p7

    move/from16 v20, v15

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v24, v16

    const/4 v4, 0x5

    :goto_14
    const/16 v25, 0x4

    goto :goto_11

    :cond_31
    move/from16 v19, v14

    const/4 v15, 0x1

    move-object/from16 v14, p7

    move/from16 v24, v16

    const/4 v4, 0x5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    goto :goto_14

    :cond_32
    move/from16 v19, v14

    const/4 v15, 0x1

    const/16 v17, 0x8

    iget-boolean v4, v7, Lr/f;->f:Z

    if-eqz v4, :cond_35

    iget-boolean v4, v6, Lr/f;->f:Z

    if-eqz v4, :cond_35

    invoke-virtual/range {p10 .. p10}, Ls/c;->e()I

    move-result v0

    invoke-virtual/range {p11 .. p11}, Ls/c;->e()I

    move-result v1

    const/16 v3, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v0

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v1

    move/from16 p25, v3

    invoke-virtual/range {p17 .. p25}, Lr/c;->b(Lr/f;Lr/f;IFLr/f;Lr/f;II)V

    if-eqz p3, :cond_34

    if-eqz v11, :cond_34

    iget-object v0, v2, Ls/c;->f:Ls/c;

    if-eqz v0, :cond_33

    invoke-virtual/range {p11 .. p11}, Ls/c;->e()I

    move-result v5

    move-object/from16 v14, p7

    goto :goto_15

    :cond_33
    move-object/from16 v14, p7

    const/4 v5, 0x0

    :goto_15
    if-eq v6, v14, :cond_34

    const/4 v4, 0x5

    invoke-virtual {v10, v14, v8, v5, v4}, Lr/c;->f(Lr/f;Lr/f;II)V

    :cond_34
    return-void

    :cond_35
    move-object/from16 v14, p7

    const/4 v4, 0x5

    move/from16 v26, v4

    move/from16 v20, v15

    move/from16 v21, v20

    move/from16 v24, v16

    const/16 v22, 0x0

    goto :goto_13

    :goto_16
    if-eqz v20, :cond_36

    if-ne v7, v6, :cond_36

    if-eq v3, v13, :cond_36

    const/16 v20, 0x0

    const/16 v27, 0x0

    goto :goto_17

    :cond_36
    move/from16 v27, v15

    :goto_17
    if-eqz v21, :cond_38

    if-nez v23, :cond_37

    if-nez p18, :cond_37

    if-nez p20, :cond_37

    if-ne v7, v5, :cond_37

    if-ne v6, v14, :cond_37

    move/from16 v24, v17

    move/from16 v26, v24

    const/16 v21, 0x0

    const/16 v27, 0x0

    goto :goto_18

    :cond_37
    move/from16 v21, p3

    :goto_18
    invoke-virtual/range {p10 .. p10}, Ls/c;->e()I

    move-result v28

    invoke-virtual/range {p11 .. p11}, Ls/c;->e()I

    move-result v29

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v9

    move/from16 p5, v11

    move-object v11, v3

    move-object v3, v7

    move/from16 v30, v4

    move/from16 v4, v28

    move/from16 p9, v12

    move/from16 v12, v17

    move/from16 v5, p16

    move-object/from16 p2, v6

    const/16 v17, 0x4

    const/16 v28, 0x1

    move-object/from16 v31, v7

    move-object v7, v8

    move-object/from16 v32, v8

    move/from16 v8, v29

    move-object/from16 v33, v9

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Lr/c;->b(Lr/f;Lr/f;IFLr/f;Lr/f;II)V

    :goto_19
    move/from16 v6, v27

    goto :goto_1a

    :cond_38
    move-object v14, v2

    move-object/from16 p2, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move/from16 p5, v11

    move/from16 p9, v12

    move/from16 v28, v15

    move/from16 v12, v17

    const/16 v17, 0x4

    move-object v15, v1

    move-object v11, v3

    move/from16 v21, p3

    goto :goto_19

    :goto_1a
    iget v0, v0, Ls/d;->a0:I

    if-ne v0, v12, :cond_3b

    iget-object v0, v14, Ls/c;->a:Ljava/util/HashSet;

    if-nez v0, :cond_39

    goto :goto_1b

    :cond_39
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3a

    goto :goto_1c

    :cond_3a
    :goto_1b
    return-void

    :cond_3b
    :goto_1c
    move-object/from16 v1, p2

    move-object/from16 v0, v31

    if-eqz v20, :cond_3e

    if-eqz v21, :cond_3d

    if-eq v0, v1, :cond_3d

    if-nez v23, :cond_3d

    instance-of v2, v11, Ls/a;

    if-nez v2, :cond_3c

    instance-of v2, v15, Ls/a;

    if-eqz v2, :cond_3d

    :cond_3c
    move/from16 v2, v16

    goto :goto_1d

    :cond_3d
    move/from16 v2, v26

    :goto_1d
    invoke-virtual/range {p10 .. p10}, Ls/c;->e()I

    move-result v3

    move-object/from16 v4, v33

    invoke-virtual {v10, v4, v0, v3, v2}, Lr/c;->f(Lr/f;Lr/f;II)V

    invoke-virtual/range {p11 .. p11}, Ls/c;->e()I

    move-result v3

    neg-int v3, v3

    move-object/from16 v5, v32

    invoke-virtual {v10, v5, v1, v3, v2}, Lr/c;->g(Lr/f;Lr/f;II)V

    move/from16 v26, v2

    goto :goto_1e

    :cond_3e
    move-object/from16 v5, v32

    move-object/from16 v4, v33

    :goto_1e
    if-eqz v21, :cond_3f

    if-eqz p21, :cond_3f

    instance-of v2, v11, Ls/a;

    if-nez v2, :cond_3f

    instance-of v2, v15, Ls/a;

    if-nez v2, :cond_3f

    move/from16 v2, v16

    move v3, v2

    move/from16 v6, v28

    goto :goto_1f

    :cond_3f
    move/from16 v2, v25

    move/from16 v3, v26

    :goto_1f
    if-eqz v6, :cond_4b

    if-eqz v22, :cond_48

    if-eqz p20, :cond_40

    if-eqz p4, :cond_48

    :cond_40
    if-eq v11, v13, :cond_42

    if-ne v15, v13, :cond_41

    goto :goto_20

    :cond_41
    move/from16 v16, v2

    :cond_42
    :goto_20
    instance-of v6, v11, Ls/h;

    if-nez v6, :cond_43

    instance-of v6, v15, Ls/h;

    if-eqz v6, :cond_44

    :cond_43
    const/16 v16, 0x5

    :cond_44
    instance-of v6, v11, Ls/a;

    if-nez v6, :cond_45

    instance-of v6, v15, Ls/a;

    if-eqz v6, :cond_46

    :cond_45
    const/16 v16, 0x5

    :cond_46
    if-eqz p20, :cond_47

    const/4 v6, 0x5

    goto :goto_21

    :cond_47
    move/from16 v6, v16

    :goto_21
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_48
    move v6, v2

    if-eqz v21, :cond_4a

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz p17, :cond_4a

    if-nez p20, :cond_4a

    if-eq v11, v13, :cond_49

    if-ne v15, v13, :cond_4a

    :cond_49
    move/from16 v6, v17

    :cond_4a
    invoke-virtual/range {p10 .. p10}, Ls/c;->e()I

    move-result v2

    invoke-virtual {v10, v4, v0, v2, v6}, Lr/c;->e(Lr/f;Lr/f;II)V

    invoke-virtual/range {p11 .. p11}, Ls/c;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v5, v1, v2, v6}, Lr/c;->e(Lr/f;Lr/f;II)V

    :cond_4b
    if-eqz v21, :cond_4d

    move-object/from16 v2, p6

    move v3, v12

    if-ne v2, v0, :cond_4c

    invoke-virtual/range {p10 .. p10}, Ls/c;->e()I

    move-result v6

    goto :goto_22

    :cond_4c
    const/4 v6, 0x0

    :goto_22
    if-eq v0, v2, :cond_4e

    const/4 v0, 0x5

    invoke-virtual {v10, v4, v2, v6, v0}, Lr/c;->f(Lr/f;Lr/f;II)V

    goto :goto_23

    :cond_4d
    move v3, v12

    :cond_4e
    :goto_23
    if-eqz v21, :cond_50

    if-eqz v23, :cond_50

    if-nez p14, :cond_50

    if-nez p9, :cond_50

    if-eqz v23, :cond_4f

    move/from16 v2, v19

    const/4 v0, 0x3

    if-ne v2, v0, :cond_4f

    const/4 v0, 0x0

    invoke-virtual {v10, v5, v4, v0, v3}, Lr/c;->f(Lr/f;Lr/f;II)V

    goto :goto_25

    :cond_4f
    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-virtual {v10, v5, v4, v0, v2}, Lr/c;->f(Lr/f;Lr/f;II)V

    goto :goto_25

    :goto_24
    move/from16 v21, p3

    :cond_50
    :goto_25
    if-eqz v21, :cond_52

    if-eqz p5, :cond_52

    iget-object v0, v14, Ls/c;->f:Ls/c;

    if-eqz v0, :cond_51

    invoke-virtual/range {p11 .. p11}, Ls/c;->e()I

    move-result v0

    move-object/from16 v6, p7

    goto :goto_26

    :cond_51
    move-object/from16 v6, p7

    const/4 v0, 0x0

    :goto_26
    if-eq v1, v6, :cond_52

    const/4 v1, 0x5

    invoke-virtual {v10, v6, v5, v0, v1}, Lr/c;->f(Lr/f;Lr/f;II)V

    :cond_52
    return-void

    :cond_53
    move-object/from16 v6, p7

    move v1, v2

    move-object v5, v8

    move-object v4, v9

    move/from16 p5, v11

    const/16 v3, 0x8

    const/16 v28, 0x1

    move-object/from16 v2, p6

    const/4 v7, 0x2

    :goto_27
    if-ge v1, v7, :cond_58

    if-eqz p3, :cond_58

    if-eqz p5, :cond_58

    const/4 v1, 0x0

    invoke-virtual {v10, v4, v2, v1, v3}, Lr/c;->f(Lr/f;Lr/f;II)V

    iget-object v0, v0, Ls/d;->G:Ls/c;

    if-nez p2, :cond_55

    iget-object v1, v0, Ls/c;->f:Ls/c;

    if-nez v1, :cond_54

    goto :goto_28

    :cond_54
    const/4 v1, 0x0

    goto :goto_29

    :cond_55
    :goto_28
    move/from16 v1, v28

    :goto_29
    if-nez p2, :cond_57

    iget-object v0, v0, Ls/c;->f:Ls/c;

    if-eqz v0, :cond_57

    iget-object v0, v0, Ls/c;->d:Ls/d;

    iget v1, v0, Ls/d;->Q:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_56

    iget-object v0, v0, Ls/d;->j0:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_56

    aget v0, v0, v28

    if-ne v0, v1, :cond_56

    goto :goto_2a

    :cond_56
    const/16 v28, 0x0

    goto :goto_2a

    :cond_57
    move/from16 v28, v1

    :goto_2a
    if-eqz v28, :cond_58

    const/4 v0, 0x0

    invoke-virtual {v10, v6, v5, v0, v3}, Lr/c;->f(Lr/f;Lr/f;II)V

    :cond_58
    return-void
.end method

.method public final e(ILs/d;II)V
    .locals 10

    const/4 v0, 0x7

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-ne p1, v0, :cond_c

    if-ne p3, v0, :cond_8

    invoke-virtual {p0, v3}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p0, v5}, Ls/d;->i(I)Ls/c;

    move-result-object p3

    invoke-virtual {p0, v4}, Ls/d;->i(I)Ls/c;

    move-result-object p4

    invoke-virtual {p0, v6}, Ls/d;->i(I)Ls/c;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ls/c;->h()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ls/c;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3, p2, v3, v7}, Ls/d;->e(ILs/d;II)V

    invoke-virtual {p0, v5, p2, v5, v7}, Ls/d;->e(ILs/d;II)V

    move p1, v9

    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ls/c;->h()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ls/c;->h()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    move v9, v7

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4, p2, v4, v7}, Ls/d;->e(ILs/d;II)V

    invoke-virtual {p0, v6, p2, v6, v7}, Ls/d;->e(ILs/d;II)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v9, :cond_6

    invoke-virtual {p0, v0}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p2, v0}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Ls/c;->a(Ls/c;I)V

    goto/16 :goto_5

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0, v2}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p2, v2}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Ls/c;->a(Ls/c;I)V

    goto/16 :goto_5

    :cond_7
    if-eqz v9, :cond_1d

    invoke-virtual {p0, v1}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p2, v1}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Ls/c;->a(Ls/c;I)V

    goto/16 :goto_5

    :cond_8
    if-eq p3, v3, :cond_b

    if-ne p3, v5, :cond_9

    goto :goto_2

    :cond_9
    if-eq p3, v4, :cond_a

    if-ne p3, v6, :cond_1d

    :cond_a
    invoke-virtual {p0, v4, p2, p3, v7}, Ls/d;->e(ILs/d;II)V

    invoke-virtual {p0, v6, p2, p3, v7}, Ls/d;->e(ILs/d;II)V

    invoke-virtual {p0, v0}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p2, p3}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Ls/c;->a(Ls/c;I)V

    goto/16 :goto_5

    :cond_b
    :goto_2
    invoke-virtual {p0, v3, p2, p3, v7}, Ls/d;->e(ILs/d;II)V

    invoke-virtual {p0, v5, p2, p3, v7}, Ls/d;->e(ILs/d;II)V

    invoke-virtual {p0, v0}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p2, p3}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Ls/c;->a(Ls/c;I)V

    goto/16 :goto_5

    :cond_c
    if-ne p1, v2, :cond_e

    if-eq p3, v3, :cond_d

    if-ne p3, v5, :cond_e

    :cond_d
    invoke-virtual {p0, v3}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p2, p3}, Ls/d;->i(I)Ls/c;

    move-result-object p2

    invoke-virtual {p0, v5}, Ls/d;->i(I)Ls/c;

    move-result-object p3

    invoke-virtual {p1, p2, v7}, Ls/c;->a(Ls/c;I)V

    invoke-virtual {p3, p2, v7}, Ls/c;->a(Ls/c;I)V

    invoke-virtual {p0, v2}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p0, p2, v7}, Ls/c;->a(Ls/c;I)V

    goto/16 :goto_5

    :cond_e
    if-ne p1, v1, :cond_10

    if-eq p3, v4, :cond_f

    if-ne p3, v6, :cond_10

    :cond_f
    invoke-virtual {p2, p3}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p0, v4}, Ls/d;->i(I)Ls/c;

    move-result-object p2

    invoke-virtual {p2, p1, v7}, Ls/c;->a(Ls/c;I)V

    invoke-virtual {p0, v6}, Ls/d;->i(I)Ls/c;

    move-result-object p2

    invoke-virtual {p2, p1, v7}, Ls/c;->a(Ls/c;I)V

    invoke-virtual {p0, v1}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p0, p1, v7}, Ls/c;->a(Ls/c;I)V

    goto/16 :goto_5

    :cond_10
    if-ne p1, v2, :cond_11

    if-ne p3, v2, :cond_11

    invoke-virtual {p0, v3}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p2, v3}, Ls/d;->i(I)Ls/c;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Ls/c;->a(Ls/c;I)V

    invoke-virtual {p0, v5}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p2, v5}, Ls/d;->i(I)Ls/c;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Ls/c;->a(Ls/c;I)V

    invoke-virtual {p0, v2}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p2, p3}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Ls/c;->a(Ls/c;I)V

    goto/16 :goto_5

    :cond_11
    if-ne p1, v1, :cond_12

    if-ne p3, v1, :cond_12

    invoke-virtual {p0, v4}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p2, v4}, Ls/d;->i(I)Ls/c;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Ls/c;->a(Ls/c;I)V

    invoke-virtual {p0, v6}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p2, v6}, Ls/d;->i(I)Ls/c;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Ls/c;->a(Ls/c;I)V

    invoke-virtual {p0, v1}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p2, p3}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Ls/c;->a(Ls/c;I)V

    goto/16 :goto_5

    :cond_12
    invoke-virtual {p0, p1}, Ls/d;->i(I)Ls/c;

    move-result-object v8

    invoke-virtual {p2, p3}, Ls/d;->i(I)Ls/c;

    move-result-object p2

    invoke-virtual {v8, p2}, Ls/c;->i(Ls/c;)Z

    move-result p3

    if-eqz p3, :cond_1d

    const/4 p3, 0x6

    if-ne p1, p3, :cond_15

    invoke-virtual {p0, v4}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p0, v6}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ls/c;->j()V

    :cond_13
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ls/c;->j()V

    :cond_14
    move p4, v7

    goto :goto_4

    :cond_15
    if-eq p1, v4, :cond_19

    if-ne p1, v6, :cond_16

    goto :goto_3

    :cond_16
    if-eq p1, v3, :cond_17

    if-ne p1, v5, :cond_1c

    :cond_17
    invoke-virtual {p0, v0}, Ls/d;->i(I)Ls/c;

    move-result-object p3

    iget-object v0, p3, Ls/c;->f:Ls/c;

    if-eq v0, p2, :cond_18

    invoke-virtual {p3}, Ls/c;->j()V

    :cond_18
    invoke-virtual {p0, p1}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p1}, Ls/c;->f()Ls/c;

    move-result-object p1

    invoke-virtual {p0, v2}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p0}, Ls/c;->h()Z

    move-result p3

    if-eqz p3, :cond_1c

    invoke-virtual {p1}, Ls/c;->j()V

    invoke-virtual {p0}, Ls/c;->j()V

    goto :goto_4

    :cond_19
    :goto_3
    invoke-virtual {p0, p3}, Ls/d;->i(I)Ls/c;

    move-result-object p3

    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Ls/c;->j()V

    :cond_1a
    invoke-virtual {p0, v0}, Ls/d;->i(I)Ls/c;

    move-result-object p3

    iget-object v0, p3, Ls/c;->f:Ls/c;

    if-eq v0, p2, :cond_1b

    invoke-virtual {p3}, Ls/c;->j()V

    :cond_1b
    invoke-virtual {p0, p1}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    invoke-virtual {p1}, Ls/c;->f()Ls/c;

    move-result-object p1

    invoke-virtual {p0, v1}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p0}, Ls/c;->h()Z

    move-result p3

    if-eqz p3, :cond_1c

    invoke-virtual {p1}, Ls/c;->j()V

    invoke-virtual {p0}, Ls/c;->j()V

    :cond_1c
    :goto_4
    invoke-virtual {v8, p2, p4}, Ls/c;->a(Ls/c;I)V

    :cond_1d
    :goto_5
    return-void
.end method

.method public final f(Ls/c;Ls/c;I)V
    .locals 1

    iget-object v0, p1, Ls/c;->d:Ls/d;

    if-ne v0, p0, :cond_0

    iget-object v0, p2, Ls/c;->d:Ls/d;

    iget p1, p1, Ls/c;->e:I

    iget p2, p2, Ls/c;->e:I

    invoke-virtual {p0, p1, v0, p2, p3}, Ls/d;->e(ILs/d;II)V

    :cond_0
    return-void
.end method

.method public final g(Lr/c;)V
    .locals 1

    iget-object v0, p0, Ls/d;->C:Ls/c;

    invoke-virtual {p1, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    iget-object v0, p0, Ls/d;->D:Ls/c;

    invoke-virtual {p1, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    iget-object v0, p0, Ls/d;->E:Ls/c;

    invoke-virtual {p1, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    iget-object v0, p0, Ls/d;->F:Ls/c;

    invoke-virtual {p1, v0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    iget v0, p0, Ls/d;->U:I

    if-lez v0, :cond_0

    iget-object p0, p0, Ls/d;->G:Ls/c;

    invoke-virtual {p1, p0}, Lr/c;->k(Ljava/lang/Object;)Lr/f;

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Ls/d;->d:Lt/k;

    if-nez v0, :cond_0

    new-instance v0, Lt/k;

    invoke-direct {v0, p0}, Lt/o;-><init>(Ls/d;)V

    iget-object v1, v0, Lt/o;->h:Lt/f;

    const/4 v2, 0x4

    iput v2, v1, Lt/f;->e:I

    iget-object v1, v0, Lt/o;->i:Lt/f;

    const/4 v2, 0x5

    iput v2, v1, Lt/f;->e:I

    const/4 v1, 0x0

    iput v1, v0, Lt/o;->f:I

    iput-object v0, p0, Ls/d;->d:Lt/k;

    :cond_0
    iget-object v0, p0, Ls/d;->e:Lt/m;

    if-nez v0, :cond_1

    new-instance v0, Lt/m;

    invoke-direct {v0, p0}, Lt/o;-><init>(Ls/d;)V

    new-instance v1, Lt/f;

    invoke-direct {v1, v0}, Lt/f;-><init>(Lt/o;)V

    iput-object v1, v0, Lt/m;->k:Lt/f;

    const/4 v2, 0x0

    iput-object v2, v0, Lt/m;->l:Lt/a;

    iget-object v2, v0, Lt/o;->h:Lt/f;

    const/4 v3, 0x6

    iput v3, v2, Lt/f;->e:I

    iget-object v2, v0, Lt/o;->i:Lt/f;

    const/4 v3, 0x7

    iput v3, v2, Lt/f;->e:I

    const/16 v2, 0x8

    iput v2, v1, Lt/f;->e:I

    const/4 v1, 0x1

    iput v1, v0, Lt/o;->f:I

    iput-object v0, p0, Ls/d;->e:Lt/m;

    :cond_1
    return-void
.end method

.method public i(I)Ls/c;
    .locals 1

    invoke-static {p1}, Lk/Q0;->f(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {p1}, Lh0/c;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ls/d;->I:Ls/c;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Ls/d;->H:Ls/c;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Ls/d;->J:Ls/c;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Ls/d;->G:Ls/c;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Ls/d;->F:Ls/c;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Ls/d;->E:Ls/c;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Ls/d;->D:Ls/c;

    return-object p0

    :pswitch_7
    iget-object p0, p0, Ls/d;->C:Ls/c;

    return-object p0

    :pswitch_8
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final j(I)I
    .locals 2

    iget-object p0, p0, Ls/d;->j0:[I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    aget p0, p0, v0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    aget p0, p0, v1

    return p0

    :cond_1
    return v0
.end method

.method public final k()I
    .locals 2

    iget v0, p0, Ls/d;->a0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ls/d;->P:I

    return p0
.end method

.method public final l(I)Ls/d;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Ls/d;->E:Ls/c;

    iget-object p1, p0, Ls/c;->f:Ls/c;

    if-eqz p1, :cond_1

    iget-object v0, p1, Ls/c;->f:Ls/c;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Ls/c;->d:Ls/d;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Ls/d;->F:Ls/c;

    iget-object p1, p0, Ls/c;->f:Ls/c;

    if-eqz p1, :cond_1

    iget-object v0, p1, Ls/c;->f:Ls/c;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Ls/c;->d:Ls/d;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final m(I)Ls/d;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Ls/d;->C:Ls/c;

    iget-object p1, p0, Ls/c;->f:Ls/c;

    if-eqz p1, :cond_1

    iget-object v0, p1, Ls/c;->f:Ls/c;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Ls/c;->d:Ls/d;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Ls/d;->D:Ls/c;

    iget-object p1, p0, Ls/c;->f:Ls/c;

    if-eqz p1, :cond_1

    iget-object v0, p1, Ls/c;->f:Ls/c;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Ls/c;->d:Ls/d;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()I
    .locals 2

    iget v0, p0, Ls/d;->a0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ls/d;->O:I

    return p0
.end method

.method public final o()I
    .locals 2

    iget-object v0, p0, Ls/d;->N:Ls/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ls/e;

    if-eqz v1, :cond_0

    check-cast v0, Ls/e;

    iget v0, v0, Ls/e;->q0:I

    iget p0, p0, Ls/d;->S:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Ls/d;->S:I

    return p0
.end method

.method public final p()I
    .locals 2

    iget-object v0, p0, Ls/d;->N:Ls/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ls/e;

    if-eqz v1, :cond_0

    check-cast v0, Ls/e;

    iget v0, v0, Ls/e;->r0:I

    iget p0, p0, Ls/d;->T:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Ls/d;->T:I

    return p0
.end method

.method public final q(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Ls/d;->C:Ls/c;

    iget-object p1, p1, Ls/c;->f:Ls/c;

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Ls/d;->E:Ls/c;

    iget-object p0, p0, Ls/c;->f:Ls/c;

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Ls/d;->D:Ls/c;

    iget-object p1, p1, Ls/c;->f:Ls/c;

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iget-object v3, p0, Ls/d;->F:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    add-int/2addr p1, v3

    iget-object p0, p0, Ls/d;->G:Ls/c;

    iget-object p0, p0, Ls/c;->f:Ls/c;

    if-eqz p0, :cond_6

    move p0, v2

    goto :goto_4

    :cond_6
    move p0, v1

    :goto_4
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public final r(IIIILs/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Ls/d;->i(I)Ls/c;

    move-result-object p0

    invoke-virtual {p5, p2}, Ls/d;->i(I)Ls/c;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p4, p2}, Ls/c;->b(Ls/c;IIZ)Z

    return-void
.end method

.method public final s(I)Z
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Ls/d;->K:[Ls/c;

    aget-object v0, p0, p1

    iget-object v1, v0, Ls/c;->f:Ls/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ls/c;->f:Ls/c;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    iget-object p1, p0, Ls/c;->f:Ls/c;

    if-eqz p1, :cond_0

    iget-object p1, p1, Ls/c;->f:Ls/c;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Ls/d;->C:Ls/c;

    iget-object v1, v0, Ls/c;->f:Ls/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ls/c;->f:Ls/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Ls/d;->E:Ls/c;

    iget-object v0, p0, Ls/c;->f:Ls/c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ls/c;->f:Ls/c;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls/d;->b0:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ls/d;->b0:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v1, v2, v3}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls/d;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls/d;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls/d;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ls/d;->P:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Z
    .locals 2

    iget-object v0, p0, Ls/d;->D:Ls/c;

    iget-object v1, v0, Ls/c;->f:Ls/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ls/c;->f:Ls/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Ls/d;->F:Ls/c;

    iget-object v0, p0, Ls/c;->f:Ls/c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ls/c;->f:Ls/c;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Ls/d;->g:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ls/d;->a0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Ls/d;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ls/d;->C:Ls/c;

    iget-boolean v0, v0, Ls/c;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ls/d;->E:Ls/c;

    iget-boolean p0, p0, Ls/c;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Ls/d;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ls/d;->D:Ls/c;

    iget-boolean v0, v0, Ls/c;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ls/d;->F:Ls/c;

    iget-boolean p0, p0, Ls/c;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public y()V
    .locals 5

    iget-object v0, p0, Ls/d;->C:Ls/c;

    invoke-virtual {v0}, Ls/c;->j()V

    iget-object v0, p0, Ls/d;->D:Ls/c;

    invoke-virtual {v0}, Ls/c;->j()V

    iget-object v0, p0, Ls/d;->E:Ls/c;

    invoke-virtual {v0}, Ls/c;->j()V

    iget-object v0, p0, Ls/d;->F:Ls/c;

    invoke-virtual {v0}, Ls/c;->j()V

    iget-object v0, p0, Ls/d;->G:Ls/c;

    invoke-virtual {v0}, Ls/c;->j()V

    iget-object v0, p0, Ls/d;->H:Ls/c;

    invoke-virtual {v0}, Ls/c;->j()V

    iget-object v0, p0, Ls/d;->I:Ls/c;

    invoke-virtual {v0}, Ls/c;->j()V

    iget-object v0, p0, Ls/d;->J:Ls/c;

    invoke-virtual {v0}, Ls/c;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls/d;->N:Ls/d;

    const/4 v1, 0x0

    iput v1, p0, Ls/d;->x:F

    const/4 v2, 0x0

    iput v2, p0, Ls/d;->O:I

    iput v2, p0, Ls/d;->P:I

    iput v1, p0, Ls/d;->Q:F

    const/4 v1, -0x1

    iput v1, p0, Ls/d;->R:I

    iput v2, p0, Ls/d;->S:I

    iput v2, p0, Ls/d;->T:I

    iput v2, p0, Ls/d;->U:I

    iput v2, p0, Ls/d;->V:I

    iput v2, p0, Ls/d;->W:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Ls/d;->X:F

    iput v3, p0, Ls/d;->Y:F

    iget-object v3, p0, Ls/d;->j0:[I

    const/4 v4, 0x1

    aput v4, v3, v2

    aput v4, v3, v4

    iput-object v0, p0, Ls/d;->Z:Ljava/lang/Object;

    iput v2, p0, Ls/d;->a0:I

    iput v2, p0, Ls/d;->c0:I

    iput v2, p0, Ls/d;->d0:I

    iget-object v0, p0, Ls/d;->e0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v4

    iput v1, p0, Ls/d;->j:I

    iput v1, p0, Ls/d;->k:I

    iget-object v0, p0, Ls/d;->w:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v4

    iput v2, p0, Ls/d;->l:I

    iput v2, p0, Ls/d;->m:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ls/d;->q:F

    iput v0, p0, Ls/d;->t:F

    iput v3, p0, Ls/d;->p:I

    iput v3, p0, Ls/d;->s:I

    iput v2, p0, Ls/d;->o:I

    iput v2, p0, Ls/d;->r:I

    iput v1, p0, Ls/d;->u:I

    iput v0, p0, Ls/d;->v:F

    iget-object v0, p0, Ls/d;->f:[Z

    aput-boolean v4, v0, v2

    aput-boolean v4, v0, v4

    iput-boolean v2, p0, Ls/d;->z:Z

    iget-object v0, p0, Ls/d;->M:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v4

    iput-boolean v4, p0, Ls/d;->g:Z

    return-void
.end method

.method public final z()V
    .locals 3

    iget-object v0, p0, Ls/d;->N:Ls/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ls/e;

    if-eqz v1, :cond_0

    check-cast v0, Ls/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Ls/d;->L:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/c;

    invoke-virtual {v2}, Ls/c;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
