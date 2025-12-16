.class public final Lcom/google/android/gms/internal/firebase-auth-api/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/a5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eq v0, v1, :cond_3

    const/4 p0, 0x2

    if-ne v0, p0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result p0

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_1

    iget v0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v0, p0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt p0, v0, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public B(Ljava/util/List;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->s(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public C(Ljava/util/List;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result p0

    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_5

    iget v0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v0, p0

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt p0, v0, :cond_4

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0
.end method

.method public a(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    mul-int/2addr v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v0, [I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pixel distance must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Layout positions must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    sget-object v2, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b:I

    sub-int/2addr v0, p0

    rsub-int/lit8 p0, v0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lj0/J;->i:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->g:Lj0/b;

    invoke-virtual {v1}, Lj0/b;->g()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    invoke-virtual {v1}, Lj0/A;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lj0/J;->i(ILcom/google/android/gms/internal/firebase-auth-api/b5;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->Z()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->l0:Lj0/X;

    invoke-virtual {v0, v1, v2, v3, p0}, Lj0/J;->h(IILj0/X;Lcom/google/android/gms/internal/firebase-auth-api/b5;)V

    :cond_2
    :goto_0
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    iget v1, v0, Lj0/J;->j:I

    if-le p0, v1, :cond_3

    iput p0, v0, Lj0/J;->j:I

    iput-boolean p2, v0, Lj0/J;->k:Z

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Lj0/P;

    invoke-virtual {p0}, Lj0/P;->m()V

    :cond_3
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eq v0, v1, :cond_3

    const/4 p0, 0x2

    if-ne v0, p0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result p0

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_1

    iget v0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v0, p0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt p0, v0, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result p0

    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_5

    iget v0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v0, p0

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt p0, v0, :cond_4

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0
.end method

.method public f(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->q(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0
.end method

.method public g(Ljava/util/List;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->s(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->s(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public i(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->r(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0
.end method

.method public j(Ljava/util/List;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result p0

    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_5

    iget v0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v0, p0

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt p0, v0, :cond_4

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0
.end method

.method public k(Ljava/util/List;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eq v0, v1, :cond_3

    const/4 p0, 0x2

    if-ne v0, p0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result p0

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_1

    iget v0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v0, p0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p0, v2, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt p0, v0, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->k(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->s(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->k(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->l(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->s(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->l(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public n(Ljava/util/List;Z)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/i;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/i;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->v()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/i;->e(Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->w()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v2, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0
.end method

.method public o(Ljava/util/List;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->s(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->s(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public q(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b:I

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/A;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/A;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/b5;Lcom/google/android/gms/internal/firebase-auth-api/g5;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/A;->b(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b:I

    throw p1
.end method

.method public r(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->a:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->c(I)I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/A;->a()Ljava/lang/Object;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->a:I

    invoke-interface {p1, v2, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/A;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/b5;Lcom/google/android/gms/internal/firebase-auth-api/g5;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/A;->b(Ljava/lang/Object;)V

    iget p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e:I

    if-nez p0, :cond_1

    iget p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->a:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->a:I

    iput v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f:I

    iget p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    iget p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->c:I

    add-int/2addr p0, p1

    iput p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    if-le p0, v1, :cond_0

    sub-int p1, p0, v1

    iput p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->c:I

    sub-int/2addr p0, p1

    iput p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->c:I

    :goto_0
    return-object v2

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0
.end method

.method public t(I)V
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0
.end method

.method public u()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    :goto_0
    if-eqz v0, :cond_2

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b:I

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    return p0

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    return p0
.end method

.method public v()Lcom/google/android/gms/internal/firebase-auth-api/Y4;
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    check-cast v1, [B

    if-lez v0, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    if-lez v0, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->d:Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;-><init>([B)V

    goto :goto_2

    :cond_3
    :goto_1
    if-gtz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->c()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0

    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->d:Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    :goto_2
    return-object v1
.end method

.method public w()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    check-cast v3, [B

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v1, ""

    :goto_1
    return-object v1

    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->c()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0
.end method

.method public x()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O;->d([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v1, ""

    :goto_1
    return-object v1

    :cond_2
    if-gtz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->c()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object p0

    throw p0
.end method

.method public y(Ljava/util/List;)V
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eqz v0, :cond_3

    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v0

    iget v6, v5, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    add-int/2addr v6, v0

    :cond_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v5, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d:I

    if-lt v0, v6, :cond_0

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->s(I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v6

    cmp-long v0, v6, v3

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v6, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void
.end method

.method public z(Ljava/util/List;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->v()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->f()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0
.end method
