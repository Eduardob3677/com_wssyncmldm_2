.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Lj0/J;
.source "SourceFile"

# interfaces
.implements Lj0/W;


# instance fields
.field public final A:Lj0/r;

.field public final B:Lj0/s;

.field public final C:I

.field public final D:[I

.field public p:I

.field public q:Lj0/t;

.field public r:Landroidx/emoji2/text/f;

.field public s:Z

.field public final t:Z

.field public u:Z

.field public v:Z

.field public final w:Z

.field public x:I

.field public y:I

.field public z:Lj0/u;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Lj0/J;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    new-instance v2, Lj0/r;

    invoke-direct {v2}, Lj0/r;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Lj0/r;

    new-instance v2, Lj0/s;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Lj0/s;

    const/4 v2, 0x2

    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    invoke-virtual {p0}, Lj0/J;->n0()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0}, Lj0/J;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    new-instance v1, Lj0/r;

    invoke-direct {v1}, Lj0/r;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Lj0/r;

    new-instance v1, Lj0/s;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Lj0/s;

    const/4 v1, 0x2

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    invoke-static {p1, p2, p3, p4}, Lj0/J;->G(Landroid/content/Context;Landroid/util/AttributeSet;II)Lj0/I;

    move-result-object p1

    iget p2, p1, Lj0/I;->a:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(I)V

    iget-boolean p2, p1, Lj0/I;->c:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    invoke-virtual {p0}, Lj0/J;->n0()V

    :goto_0
    iget-boolean p1, p1, Lj0/I;->d:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1(Z)V

    return-void
.end method


# virtual methods
.method public B0()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public C0(Lj0/X;[I)V
    .locals 2

    iget p1, p1, Lj0/X;->a:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->l()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget p0, p0, Lj0/t;->f:I

    if-ne p0, v0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, p1

    move p1, v1

    :goto_1
    aput p1, p2, v1

    const/4 p1, 0x1

    aput p0, p2, p1

    return-void
.end method

.method public D0(Lj0/X;Lj0/t;Lcom/google/android/gms/internal/firebase-auth-api/b5;)V
    .locals 0

    iget p0, p2, Lj0/t;->d:I

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Lj0/X;->b()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Lj0/t;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a(II)V

    :cond_0
    return-void
.end method

.method public final E0(Lj0/X;)I
    .locals 6

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, LZ0/j;->r(Lj0/X;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Lj0/J;Z)I

    move-result p0

    return p0
.end method

.method public final F0(Lj0/X;)I
    .locals 7

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, LZ0/j;->s(Lj0/X;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Lj0/J;ZZ)I

    move-result p0

    return p0
.end method

.method public final G0(Lj0/X;)I
    .locals 6

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, LZ0/j;->t(Lj0/X;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Lj0/J;Z)I

    move-result p0

    return p0
.end method

.method public final H0(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()Z

    move-result p0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final I0()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    if-nez v0, :cond_0

    new-instance v0, Lj0/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj0/t;->a:Z

    const/4 v1, 0x0

    iput v1, v0, Lj0/t;->h:I

    iput v1, v0, Lj0/t;->i:I

    const/4 v1, 0x0

    iput-object v1, v0, Lj0/t;->k:Ljava/util/List;

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    :cond_0
    return-void
.end method

.method public final J()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final J0(Lj0/P;Lj0/t;Lj0/X;Z)I
    .locals 7

    iget v0, p2, Lj0/t;->c:I

    iget v1, p2, Lj0/t;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Lj0/t;->g:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(Lj0/P;Lj0/t;)V

    :cond_1
    iget v1, p2, Lj0/t;->c:I

    iget v3, p2, Lj0/t;->h:I

    add-int/2addr v1, v3

    :cond_2
    iget-boolean v3, p2, Lj0/t;->l:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_9

    :cond_3
    iget v3, p2, Lj0/t;->d:I

    if-ltz v3, :cond_9

    invoke-virtual {p3}, Lj0/X;->b()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Lj0/s;

    const/4 v4, 0x0

    iput v4, v3, Lj0/s;->a:I

    iput-boolean v4, v3, Lj0/s;->b:Z

    iput-boolean v4, v3, Lj0/s;->c:Z

    iput-boolean v4, v3, Lj0/s;->d:Z

    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0(Lj0/P;Lj0/X;Lj0/t;Lj0/s;)V

    iget-boolean v4, v3, Lj0/s;->b:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, p2, Lj0/t;->b:I

    iget v5, v3, Lj0/s;->a:I

    iget v6, p2, Lj0/t;->f:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    iput v6, p2, Lj0/t;->b:I

    iget-boolean v4, v3, Lj0/s;->c:Z

    if-eqz v4, :cond_5

    iget-object v4, p2, Lj0/t;->k:Ljava/util/List;

    if-nez v4, :cond_5

    iget-boolean v4, p3, Lj0/X;->g:Z

    if-nez v4, :cond_6

    :cond_5
    iget v4, p2, Lj0/t;->c:I

    sub-int/2addr v4, v5

    iput v4, p2, Lj0/t;->c:I

    sub-int/2addr v1, v5

    :cond_6
    iget v4, p2, Lj0/t;->g:I

    if-eq v4, v2, :cond_8

    add-int/2addr v4, v5

    iput v4, p2, Lj0/t;->g:I

    iget v5, p2, Lj0/t;->c:I

    if-gez v5, :cond_7

    add-int/2addr v4, v5

    iput v4, p2, Lj0/t;->g:I

    :cond_7
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(Lj0/P;Lj0/t;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v3, v3, Lj0/s;->d:Z

    if-eqz v3, :cond_2

    :cond_9
    :goto_0
    iget p0, p2, Lj0/t;->c:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final K0(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IZI)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IZI)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final L0(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IZI)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IZI)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final M0()I
    .locals 2

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IZI)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lj0/J;->F(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final N0()I
    .locals 3

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IZI)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lj0/J;->F(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final O0(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_3

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, p1}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->k()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_1
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v2, :cond_2

    iget-object p0, p0, Lj0/J;->c:Le/v;

    invoke-virtual {p0, p1, p2, v0, v1}, Le/v;->o(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lj0/J;->d:Le/v;

    invoke-virtual {p0, p1, p2, v0, v1}, Le/v;->o(IIII)Landroid/view/View;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final P0(IZI)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    const/16 v0, 0x140

    if-eqz p2, :cond_0

    const/16 p2, 0x6003

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v1, :cond_1

    iget-object p0, p0, Lj0/J;->c:Le/v;

    invoke-virtual {p0, p1, p3, p2, v0}, Le/v;->o(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lj0/J;->d:Le/v;

    invoke-virtual {p0, p1, p3, p2, v0}, Le/v;->o(IIII)Landroid/view/View;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final Q(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public Q0(Lj0/P;Lj0/X;ZZ)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    invoke-virtual/range {p0 .. p0}, Lj0/J;->v()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x1

    if-eqz p4, :cond_0

    add-int/lit8 v1, v1, -0x1

    const/4 v4, -0x1

    move v5, v4

    goto :goto_0

    :cond_0
    move v4, v1

    move v1, v2

    move v5, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lj0/X;->b()I

    move-result v6

    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v7}, Landroidx/emoji2/text/f;->k()I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8}, Landroidx/emoji2/text/f;->g()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    :goto_1
    if-eq v1, v4, :cond_a

    invoke-virtual {v0, v1}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Lj0/J;->F(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_9

    if-ge v13, v6, :cond_9

    iget-object v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v13, v12}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v13

    iget-object v14, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v14, v12}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lj0/K;

    iget-object v15, v15, Lj0/K;->a:Lj0/b0;

    invoke-virtual {v15}, Lj0/b0;->j()Z

    move-result v15

    if-eqz v15, :cond_1

    if-nez v11, :cond_9

    move-object v11, v12

    goto :goto_7

    :cond_1
    if-gt v14, v7, :cond_2

    if-ge v13, v7, :cond_2

    move v15, v3

    goto :goto_2

    :cond_2
    move v15, v2

    :goto_2
    if-lt v13, v8, :cond_3

    if-le v14, v8, :cond_3

    move v13, v3

    goto :goto_3

    :cond_3
    move v13, v2

    :goto_3
    if-nez v15, :cond_5

    if-eqz v13, :cond_4

    goto :goto_4

    :cond_4
    return-object v12

    :cond_5
    :goto_4
    if-eqz p3, :cond_7

    if-eqz v13, :cond_6

    goto :goto_5

    :cond_6
    if-nez v9, :cond_9

    goto :goto_6

    :cond_7
    if-eqz v15, :cond_8

    :goto_5
    move-object v10, v12

    goto :goto_7

    :cond_8
    if-nez v9, :cond_9

    :goto_6
    move-object v9, v12

    :cond_9
    :goto_7
    add-int/2addr v1, v5

    goto :goto_1

    :cond_a
    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v10, :cond_c

    move-object v9, v10

    goto :goto_8

    :cond_c
    move-object v9, v11

    :goto_8
    return-object v9
.end method

.method public R(Landroid/view/View;ILj0/P;Lj0/X;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1()V

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->l()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eaaaaab

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(IIZLj0/X;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput p2, v1, Lj0/t;->g:I

    iput-boolean v2, v1, Lj0/t;->a:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v1, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Lj0/P;Lj0/t;Lj0/X;Z)I

    const/4 p3, -0x1

    if-ne p1, p3, :cond_3

    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lj0/J;->v()I

    move-result p2

    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result p2

    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lj0/J;->v()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(II)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-ne p1, p3, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p2, :cond_6

    return-object v0

    :cond_6
    return-object p0

    :cond_7
    return-object p2
.end method

.method public final R0(ILj0/P;Lj0/X;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->g()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(ILj0/P;Lj0/X;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p3}, Landroidx/emoji2/text/f;->g()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, p3}, Landroidx/emoji2/text/f;->p(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final S(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lj0/J;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public final S0(ILj0/P;Lj0/X;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->k()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(ILj0/P;Lj0/X;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p3}, Landroidx/emoji2/text/f;->k()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Landroidx/emoji2/text/f;->p(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final T0()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final U0()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final V0()Z
    .locals 1

    invoke-virtual {p0}, Lj0/J;->A()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W0(Lj0/P;Lj0/X;Lj0/t;Lj0/s;)V
    .locals 10

    invoke-virtual {p3, p1}, Lj0/t;->b(Lj0/P;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Lj0/s;->b:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lj0/K;

    iget-object v1, p3, Lj0/t;->k:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v4, p3, Lj0/t;->f:I

    if-ne v4, v3, :cond_1

    move v4, p2

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-ne v1, v4, :cond_2

    invoke-virtual {p0, p1, v3, v2}, Lj0/J;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2, v2}, Lj0/J;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v4, p3, Lj0/t;->f:I

    if-ne v4, v3, :cond_4

    move v4, p2

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_5

    invoke-virtual {p0, p1, v3, p2}, Lj0/J;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2, p2}, Lj0/J;->b(Landroid/view/View;IZ)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lj0/K;

    iget-object v2, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->X(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iget v2, p0, Lj0/J;->n:I

    iget v6, p0, Lj0/J;->l:I

    invoke-virtual {p0}, Lj0/J;->C()I

    move-result v7

    invoke-virtual {p0}, Lj0/J;->D()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d()Z

    move-result v7

    invoke-static {v7, v2, v6, v8, v4}, Lj0/J;->w(ZIIII)I

    move-result v2

    iget v4, p0, Lj0/J;->o:I

    iget v6, p0, Lj0/J;->m:I

    invoke-virtual {p0}, Lj0/J;->E()I

    move-result v7

    invoke-virtual {p0}, Lj0/J;->B()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->e()Z

    move-result v7

    invoke-static {v7, v4, v6, v8, v5}, Lj0/J;->w(ZIIII)I

    move-result v4

    invoke-virtual {p0, p1, v2, v4, v1}, Lj0/J;->w0(Landroid/view/View;IILj0/K;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1, p1}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Lj0/s;->a:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne v1, p2, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lj0/J;->n:I

    invoke-virtual {p0}, Lj0/J;->D()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/f;->d(Landroid/view/View;)I

    move-result p0

    sub-int p0, v1, p0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lj0/J;->C()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/f;->d(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v1

    move v9, v1

    move v1, p0

    move p0, v9

    :goto_3
    iget v2, p3, Lj0/t;->f:I

    if-ne v2, v3, :cond_8

    iget p3, p3, Lj0/t;->b:I

    iget v2, p4, Lj0/s;->a:I

    sub-int v2, p3, v2

    goto :goto_5

    :cond_8
    iget v2, p3, Lj0/t;->b:I

    iget p3, p4, Lj0/s;->a:I

    add-int/2addr p3, v2

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lj0/J;->E()I

    move-result v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/f;->d(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v2

    iget v1, p3, Lj0/t;->f:I

    if-ne v1, v3, :cond_a

    iget v1, p3, Lj0/t;->b:I

    iget p3, p4, Lj0/s;->a:I

    sub-int p3, v1, p3

    :goto_4
    move v9, p3

    move p3, p0

    move p0, v9

    goto :goto_5

    :cond_a
    iget p3, p3, Lj0/t;->b:I

    iget v1, p4, Lj0/s;->a:I

    add-int/2addr v1, p3

    goto :goto_4

    :goto_5
    invoke-static {p1, p0, v2, v1, p3}, Lj0/J;->L(Landroid/view/View;IIII)V

    iget-object p0, v0, Lj0/K;->a:Lj0/b0;

    invoke-virtual {p0}, Lj0/b0;->j()Z

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, v0, Lj0/K;->a:Lj0/b0;

    invoke-virtual {p0}, Lj0/b0;->m()Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    iput-boolean p2, p4, Lj0/s;->c:Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    iput-boolean p0, p4, Lj0/s;->d:Z

    return-void
.end method

.method public X0(Lj0/P;Lj0/X;Lj0/r;I)V
    .locals 0

    return-void
.end method

.method public final Y0(Lj0/P;Lj0/t;)V
    .locals 5

    iget-boolean v0, p2, Lj0/t;->a:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Lj0/t;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p2, Lj0/t;->g:I

    iget v1, p2, Lj0/t;->i:I

    iget p2, p2, Lj0/t;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_7

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result p2

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->f()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_4

    move v0, v3

    :goto_0
    if-ge v0, p2, :cond_e

    invoke-virtual {p0, v0}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v4

    if-lt v4, v2, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v1}, Landroidx/emoji2/text/f;->o(Landroid/view/View;)I

    move-result v1

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(Lj0/P;II)V

    goto/16 :goto_8

    :cond_4
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    :goto_2
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v3

    if-lt v3, v2, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v1}, Landroidx/emoji2/text/f;->o(Landroid/view/View;)I

    move-result v1

    if-ge v1, v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(Lj0/P;II)V

    goto :goto_8

    :cond_7
    if-gez v0, :cond_8

    goto :goto_8

    :cond_8
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result p2

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_b

    add-int/lit8 p2, p2, -0x1

    move v1, p2

    :goto_4
    if-ltz v1, :cond_e

    invoke-virtual {p0, v1}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v2}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v2}, Landroidx/emoji2/text/f;->n(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(Lj0/P;II)V

    goto :goto_8

    :cond_b
    move v1, v3

    :goto_6
    if-ge v1, p2, :cond_e

    invoke-virtual {p0, v1}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v2}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_d

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v2}, Landroidx/emoji2/text/f;->n(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(Lj0/P;II)V

    :cond_e
    :goto_8
    return-void
.end method

.method public final Z0(Lj0/P;II)V
    .locals 1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p3}, Lj0/J;->l0(I)V

    invoke-virtual {p1, v0}, Lj0/P;->h(Landroid/view/View;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Lj0/J;->l0(I)V

    invoke-virtual {p1, v0}, Lj0/P;->h(Landroid/view/View;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lj0/J;->F(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 p1, 0x0

    if-nez p0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final a1()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    :goto_1
    return-void
.end method

.method public b0(Lj0/P;Lj0/X;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lj0/X;->b()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, Lj0/J;->i0(Lj0/P;)V

    return-void

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    if-eqz v3, :cond_2

    iget v3, v3, Lj0/u;->c:I

    if-ltz v3, :cond_2

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lj0/t;->a:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1()V

    iget-object v3, v0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_4

    :cond_3
    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v7, v0, Lj0/J;->a:LD3/f;

    invoke-virtual {v7, v3}, LD3/f;->l(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Lj0/r;

    iget-boolean v8, v7, Lj0/r;->e:Z

    const/4 v9, 0x1

    const/high16 v10, -0x80000000

    if-eqz v8, :cond_8

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v8, v4, :cond_8

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_26

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v3}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v11}, Landroidx/emoji2/text/f;->g()I

    move-result v11

    if-ge v8, v11, :cond_7

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v11}, Landroidx/emoji2/text/f;->k()I

    move-result v11

    if-gt v8, v11, :cond_26

    :cond_7
    invoke-static {v3}, Lj0/J;->F(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8, v3}, Lj0/r;->c(ILandroid/view/View;)V

    goto/16 :goto_f

    :cond_8
    :goto_2
    invoke-virtual {v7}, Lj0/r;->d()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v7, Lj0/r;->d:Z

    iget-boolean v3, v2, Lj0/X;->g:Z

    if-nez v3, :cond_18

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v3, v4, :cond_9

    goto/16 :goto_7

    :cond_9
    if-ltz v3, :cond_17

    invoke-virtual/range {p2 .. p2}, Lj0/X;->b()I

    move-result v8

    if-lt v3, v8, :cond_a

    goto/16 :goto_6

    :cond_a
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    iput v3, v7, Lj0/r;->b:I

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    if-eqz v8, :cond_c

    iget v11, v8, Lj0/u;->c:I

    if-ltz v11, :cond_c

    iget-boolean v3, v8, Lj0/u;->e:Z

    iput-boolean v3, v7, Lj0/r;->d:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->g()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    iget v8, v8, Lj0/u;->d:I

    sub-int/2addr v3, v8

    iput v3, v7, Lj0/r;->c:I

    goto/16 :goto_e

    :cond_b
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->k()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    iget v8, v8, Lj0/u;->d:I

    add-int/2addr v3, v8

    iput v3, v7, Lj0/r;->c:I

    goto/16 :goto_e

    :cond_c
    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    if-ne v8, v10, :cond_15

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v3}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v11}, Landroidx/emoji2/text/f;->l()I

    move-result v11

    if-le v8, v11, :cond_d

    invoke-virtual {v7}, Lj0/r;->a()V

    goto/16 :goto_e

    :cond_d
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v3}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v11}, Landroidx/emoji2/text/f;->k()I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_e

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->k()I

    move-result v3

    iput v3, v7, Lj0/r;->c:I

    iput-boolean v5, v7, Lj0/r;->d:Z

    goto/16 :goto_e

    :cond_e
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8}, Landroidx/emoji2/text/f;->g()I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v11, v3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_f

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->g()I

    move-result v3

    iput v3, v7, Lj0/r;->c:I

    iput-boolean v9, v7, Lj0/r;->d:Z

    goto/16 :goto_e

    :cond_f
    iget-boolean v8, v7, Lj0/r;->d:Z

    if-eqz v8, :cond_10

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8}, Landroidx/emoji2/text/f;->m()I

    move-result v8

    add-int/2addr v8, v3

    goto :goto_3

    :cond_10
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v3}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v8

    :goto_3
    iput v8, v7, Lj0/r;->c:I

    goto/16 :goto_e

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lj0/J;->v()I

    move-result v3

    if-lez v3, :cond_14

    invoke-virtual {v0, v5}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lj0/J;->F(Landroid/view/View;)I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ge v8, v3, :cond_12

    move v3, v9

    goto :goto_4

    :cond_12
    move v3, v5

    :goto_4
    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-ne v3, v8, :cond_13

    move v3, v9

    goto :goto_5

    :cond_13
    move v3, v5

    :goto_5
    iput-boolean v3, v7, Lj0/r;->d:Z

    :cond_14
    invoke-virtual {v7}, Lj0/r;->a()V

    goto/16 :goto_e

    :cond_15
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iput-boolean v3, v7, Lj0/r;->d:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->g()I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    sub-int/2addr v3, v8

    iput v3, v7, Lj0/r;->c:I

    goto/16 :goto_e

    :cond_16
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->k()I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    add-int/2addr v3, v8

    iput v3, v7, Lj0/r;->c:I

    goto/16 :goto_e

    :cond_17
    :goto_6
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    iput v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    :cond_18
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lj0/J;->v()I

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_c

    :cond_19
    iget-object v3, v0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1b

    :cond_1a
    :goto_8
    const/4 v3, 0x0

    goto :goto_9

    :cond_1b
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v8, v0, Lj0/J;->a:LD3/f;

    invoke-virtual {v8, v3}, LD3/f;->l(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1c

    goto :goto_8

    :cond_1c
    :goto_9
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lj0/K;

    iget-object v11, v8, Lj0/K;->a:Lj0/b0;

    invoke-virtual {v11}, Lj0/b0;->j()Z

    move-result v11

    if-nez v11, :cond_1d

    iget-object v11, v8, Lj0/K;->a:Lj0/b0;

    invoke-virtual {v11}, Lj0/b0;->c()I

    move-result v11

    if-ltz v11, :cond_1d

    iget-object v8, v8, Lj0/K;->a:Lj0/b0;

    invoke-virtual {v8}, Lj0/b0;->c()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lj0/X;->b()I

    move-result v11

    if-ge v8, v11, :cond_1d

    invoke-static {v3}, Lj0/J;->F(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8, v3}, Lj0/r;->c(ILandroid/view/View;)V

    goto/16 :goto_e

    :cond_1d
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-eq v3, v8, :cond_1e

    goto :goto_c

    :cond_1e
    iget-boolean v3, v7, Lj0/r;->d:Z

    invoke-virtual {v0, v1, v2, v3, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(Lj0/P;Lj0/X;ZZ)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-static {v3}, Lj0/J;->F(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8, v3}, Lj0/r;->b(ILandroid/view/View;)V

    iget-boolean v8, v2, Lj0/X;->g:Z

    if-nez v8, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()Z

    move-result v8

    if-eqz v8, :cond_25

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v3}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v11, v3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v3

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v11}, Landroidx/emoji2/text/f;->k()I

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v12}, Landroidx/emoji2/text/f;->g()I

    move-result v12

    if-gt v3, v11, :cond_1f

    if-ge v8, v11, :cond_1f

    move v13, v9

    goto :goto_a

    :cond_1f
    move v13, v5

    :goto_a
    if-lt v8, v12, :cond_20

    if-le v3, v12, :cond_20

    move v3, v9

    goto :goto_b

    :cond_20
    move v3, v5

    :goto_b
    if-nez v13, :cond_21

    if-eqz v3, :cond_25

    :cond_21
    iget-boolean v3, v7, Lj0/r;->d:Z

    if-eqz v3, :cond_22

    move v11, v12

    :cond_22
    iput v11, v7, Lj0/r;->c:I

    goto :goto_e

    :cond_23
    :goto_c
    invoke-virtual {v7}, Lj0/r;->a()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-eqz v3, :cond_24

    invoke-virtual/range {p2 .. p2}, Lj0/X;->b()I

    move-result v3

    sub-int/2addr v3, v9

    goto :goto_d

    :cond_24
    move v3, v5

    :goto_d
    iput v3, v7, Lj0/r;->b:I

    :cond_25
    :goto_e
    iput-boolean v9, v7, Lj0/r;->e:Z

    :cond_26
    :goto_f
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v8, v3, Lj0/t;->j:I

    if-ltz v8, :cond_27

    move v8, v9

    goto :goto_10

    :cond_27
    move v8, v4

    :goto_10
    iput v8, v3, Lj0/t;->f:I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    aput v5, v3, v5

    aput v5, v3, v9

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Lj0/X;[I)V

    aget v8, v3, v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v11}, Landroidx/emoji2/text/f;->k()I

    move-result v11

    add-int/2addr v11, v8

    aget v3, v3, v9

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8}, Landroidx/emoji2/text/f;->h()I

    move-result v8

    add-int/2addr v8, v3

    iget-boolean v3, v2, Lj0/X;->g:Z

    if-eqz v3, :cond_2a

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-eq v3, v4, :cond_2a

    iget v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    if-eq v12, v10, :cond_2a

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v10, :cond_28

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v10}, Landroidx/emoji2/text/f;->g()I

    move-result v10

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v12, v3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v10, v3

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    :goto_11
    sub-int/2addr v10, v3

    goto :goto_12

    :cond_28
    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v10, v3}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v3

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v10}, Landroidx/emoji2/text/f;->k()I

    move-result v10

    sub-int/2addr v3, v10

    iget v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    goto :goto_11

    :goto_12
    if-lez v10, :cond_29

    add-int/2addr v11, v10

    goto :goto_13

    :cond_29
    sub-int/2addr v8, v10

    :cond_2a
    :goto_13
    iget-boolean v3, v7, Lj0/r;->d:Z

    if-eqz v3, :cond_2c

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v3, :cond_2d

    :cond_2b
    move v4, v9

    goto :goto_14

    :cond_2c
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v3, :cond_2b

    :cond_2d
    :goto_14
    invoke-virtual {v0, v1, v2, v7, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0(Lj0/P;Lj0/X;Lj0/r;I)V

    invoke-virtual/range {p0 .. p1}, Lj0/J;->p(Lj0/P;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4}, Landroidx/emoji2/text/f;->i()I

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4}, Landroidx/emoji2/text/f;->f()I

    move-result v4

    if-nez v4, :cond_2e

    move v4, v9

    goto :goto_15

    :cond_2e
    move v4, v5

    :goto_15
    iput-boolean v4, v3, Lj0/t;->l:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput v5, v3, Lj0/t;->i:I

    iget-boolean v3, v7, Lj0/r;->d:Z

    if-eqz v3, :cond_30

    iget v3, v7, Lj0/r;->b:I

    iget v4, v7, Lj0/r;->c:I

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput v11, v3, Lj0/t;->h:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Lj0/P;Lj0/t;Lj0/X;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v4, v3, Lj0/t;->b:I

    iget v10, v3, Lj0/t;->d:I

    iget v3, v3, Lj0/t;->c:I

    if-lez v3, :cond_2f

    add-int/2addr v8, v3

    :cond_2f
    iget v3, v7, Lj0/r;->b:I

    iget v11, v7, Lj0/r;->c:I

    invoke-virtual {v0, v3, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput v8, v3, Lj0/t;->h:I

    iget v8, v3, Lj0/t;->d:I

    iget v11, v3, Lj0/t;->e:I

    add-int/2addr v8, v11

    iput v8, v3, Lj0/t;->d:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Lj0/P;Lj0/t;Lj0/X;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v8, v3, Lj0/t;->b:I

    iget v3, v3, Lj0/t;->c:I

    if-lez v3, :cond_33

    invoke-virtual {v0, v10, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput v3, v4, Lj0/t;->h:I

    invoke-virtual {v0, v1, v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Lj0/P;Lj0/t;Lj0/X;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v4, v3, Lj0/t;->b:I

    goto :goto_16

    :cond_30
    iget v3, v7, Lj0/r;->b:I

    iget v4, v7, Lj0/r;->c:I

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput v8, v3, Lj0/t;->h:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Lj0/P;Lj0/t;Lj0/X;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v8, v3, Lj0/t;->b:I

    iget v4, v3, Lj0/t;->d:I

    iget v3, v3, Lj0/t;->c:I

    if-lez v3, :cond_31

    add-int/2addr v11, v3

    :cond_31
    iget v3, v7, Lj0/r;->b:I

    iget v10, v7, Lj0/r;->c:I

    invoke-virtual {v0, v3, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput v11, v3, Lj0/t;->h:I

    iget v10, v3, Lj0/t;->d:I

    iget v11, v3, Lj0/t;->e:I

    add-int/2addr v10, v11

    iput v10, v3, Lj0/t;->d:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Lj0/P;Lj0/t;Lj0/X;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v10, v3, Lj0/t;->b:I

    iget v3, v3, Lj0/t;->c:I

    if-lez v3, :cond_32

    invoke-virtual {v0, v4, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput v3, v4, Lj0/t;->h:I

    invoke-virtual {v0, v1, v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Lj0/P;Lj0/t;Lj0/X;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v8, v3, Lj0/t;->b:I

    :cond_32
    move v4, v10

    :cond_33
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lj0/J;->v()I

    move-result v3

    if-lez v3, :cond_35

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/2addr v3, v10

    if-eqz v3, :cond_34

    invoke-virtual {v0, v8, v1, v2, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(ILj0/P;Lj0/X;Z)I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr v8, v3

    invoke-virtual {v0, v4, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(ILj0/P;Lj0/X;Z)I

    move-result v3

    :goto_17
    add-int/2addr v4, v3

    add-int/2addr v8, v3

    goto :goto_18

    :cond_34
    invoke-virtual {v0, v4, v1, v2, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(ILj0/P;Lj0/X;Z)I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr v8, v3

    invoke-virtual {v0, v8, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(ILj0/P;Lj0/X;Z)I

    move-result v3

    goto :goto_17

    :cond_35
    :goto_18
    iget-boolean v3, v2, Lj0/X;->k:Z

    if-eqz v3, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lj0/J;->v()I

    move-result v3

    if-eqz v3, :cond_3d

    iget-boolean v3, v2, Lj0/X;->g:Z

    if-nez v3, :cond_3d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_1d

    :cond_36
    iget-object v3, v1, Lj0/P;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v0, v5}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lj0/J;->F(Landroid/view/View;)I

    move-result v11

    move v12, v5

    move v13, v12

    move v14, v13

    :goto_19
    if-ge v12, v10, :cond_3a

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lj0/b0;

    invoke-virtual {v15}, Lj0/b0;->j()Z

    move-result v16

    if-eqz v16, :cond_37

    goto :goto_1b

    :cond_37
    invoke-virtual {v15}, Lj0/b0;->c()I

    move-result v9

    if-ge v9, v11, :cond_38

    const/4 v9, 0x1

    goto :goto_1a

    :cond_38
    move v9, v5

    :goto_1a
    iget-boolean v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget-object v15, v15, Lj0/b0;->a:Landroid/view/View;

    if-eq v9, v6, :cond_39

    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v6, v15}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v6

    add-int/2addr v13, v6

    goto :goto_1b

    :cond_39
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v6, v15}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v6

    add-int/2addr v14, v6

    :goto_1b
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    goto :goto_19

    :cond_3a
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput-object v3, v6, Lj0/t;->k:Ljava/util/List;

    if-lez v13, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lj0/J;->F(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput v13, v3, Lj0/t;->h:I

    iput v5, v3, Lj0/t;->c:I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lj0/t;->a(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Lj0/P;Lj0/t;Lj0/X;Z)I

    :cond_3b
    if-lez v14, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lj0/J;->F(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput v14, v3, Lj0/t;->h:I

    iput v5, v3, Lj0/t;->c:I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lj0/t;->a(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Lj0/P;Lj0/t;Lj0/X;Z)I

    goto :goto_1c

    :cond_3c
    const/4 v4, 0x0

    :goto_1c
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput-object v4, v1, Lj0/t;->k:Ljava/util/List;

    :cond_3d
    :goto_1d
    iget-boolean v1, v2, Lj0/X;->g:Z

    if-nez v1, :cond_3e

    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->l()I

    move-result v2

    iput v2, v1, Landroidx/emoji2/text/f;->a:I

    goto :goto_1e

    :cond_3e
    invoke-virtual {v7}, Lj0/r;->d()V

    :goto_1e
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    return-void
.end method

.method public final b1(ILj0/P;Lj0/X;)I
    .locals 5

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lj0/t;->a:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(IIZLj0/X;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v4, v2, Lj0/t;->g:I

    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Lj0/P;Lj0/t;Lj0/X;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_2

    return v1

    :cond_2
    if-le v3, p2, :cond_3

    mul-int p1, v0, p2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    neg-int v0, p1

    invoke-virtual {p2, v0}, Landroidx/emoji2/text/f;->p(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput p1, p2, Lj0/t;->j:I

    iget p2, p3, Lj0/X;->d:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lj0/J;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c0(Lj0/X;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Lj0/r;

    invoke-virtual {p0}, Lj0/r;->d()V

    return-void
.end method

.method public final c1(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation:"

    invoke-static {p1, v0}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Landroidx/emoji2/text/f;->a(Lj0/J;I)Landroidx/emoji2/text/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Lj0/r;

    iput-object v0, v1, Lj0/r;->a:Landroidx/emoji2/text/f;

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    invoke-virtual {p0}, Lj0/J;->n0()V

    :cond_3
    return-void
.end method

.method public final d()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d0(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lj0/u;

    if-eqz v0, :cond_1

    check-cast p1, Lj0/u;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p1, Lj0/u;->c:I

    :cond_0
    invoke-virtual {p0}, Lj0/J;->n0()V

    :cond_1
    return-void
.end method

.method public d1(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    invoke-virtual {p0}, Lj0/J;->n0()V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e0()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    if-eqz v0, :cond_0

    new-instance p0, Lj0/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v1, v0, Lj0/u;->c:I

    iput v1, p0, Lj0/u;->c:I

    iget v1, v0, Lj0/u;->d:I

    iput v1, p0, Lj0/u;->d:I

    iget-boolean v0, v0, Lj0/u;->e:Z

    iput-boolean v0, p0, Lj0/u;->e:Z

    return-object p0

    :cond_0
    new-instance v0, Lj0/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lj0/u;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->g()I

    move-result v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v0, Lj0/u;->d:I

    invoke-static {v1}, Lj0/J;->F(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Lj0/u;->c:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lj0/J;->F(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lj0/u;->c:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2, v1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0}, Landroidx/emoji2/text/f;->k()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Lj0/u;->d:I

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    iput p0, v0, Lj0/u;->c:I

    :goto_0
    return-object v0
.end method

.method public final e1(IIZLj0/X;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->i()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->f()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lj0/t;->l:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput p1, v0, Lj0/t;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    aput v2, v0, v2

    aput v2, v0, v3

    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Lj0/X;[I)V

    aget p4, v0, v2

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    aget v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v3, :cond_1

    move v2, v3

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    iput v1, p1, Lj0/t;->h:I

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move p4, v0

    :goto_2
    iput p4, p1, Lj0/t;->i:I

    const/4 p4, -0x1

    if-eqz v2, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->h()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p1, Lj0/t;->h:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_4

    move v3, p4

    :cond_4
    iput v3, v0, Lj0/t;->e:I

    invoke-static {p1}, Lj0/J;->F(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v2, v1, Lj0/t;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Lj0/t;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4, p1}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lj0/t;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4, p1}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4}, Landroidx/emoji2/text/f;->g()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v1, v0, Lj0/t;->h:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->k()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Lj0/t;->h:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, p4

    :goto_3
    iput v3, v0, Lj0/t;->e:I

    invoke-static {p1}, Lj0/J;->F(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget v2, v1, Lj0/t;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Lj0/t;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4, p1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lj0/t;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4, p1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4}, Landroidx/emoji2/text/f;->k()I

    move-result p4

    add-int/2addr p1, p4

    :goto_4
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput p2, p0, Lj0/t;->c:I

    if-eqz p3, :cond_7

    sub-int/2addr p2, p1

    iput p2, p0, Lj0/t;->c:I

    :cond_7
    iput p1, p0, Lj0/t;->g:I

    return-void
.end method

.method public final f1(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->g()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lj0/t;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    iput p0, v0, Lj0/t;->e:I

    iput p1, v0, Lj0/t;->d:I

    iput v1, v0, Lj0/t;->f:I

    iput p2, v0, Lj0/t;->b:I

    const/high16 p0, -0x80000000

    iput p0, v0, Lj0/t;->g:I

    return-void
.end method

.method public final g1(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->k()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lj0/t;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    iput p1, v0, Lj0/t;->d:I

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    iput p0, v0, Lj0/t;->e:I

    iput p1, v0, Lj0/t;->f:I

    iput p2, v0, Lj0/t;->b:I

    const/high16 p0, -0x80000000

    iput p0, v0, Lj0/t;->g:I

    return-void
.end method

.method public final h(IILj0/X;Lcom/google/android/gms/internal/firebase-auth-api/b5;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lj0/J;->v()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(IIZLj0/X;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lj0/t;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(Lj0/X;Lj0/t;Lcom/google/android/gms/internal/firebase-auth-api/b5;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final i(ILcom/google/android/gms/internal/firebase-auth-api/b5;)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lj0/u;->c:I

    if-ltz v3, :cond_0

    iget-boolean v0, v0, Lj0/u;->e:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    move v0, v2

    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    if-ge v0, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    invoke-virtual {p2, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final j(Lj0/X;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Lj0/X;)I

    move-result p0

    return p0
.end method

.method public k(Lj0/X;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(Lj0/X;)I

    move-result p0

    return p0
.end method

.method public l(Lj0/X;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(Lj0/X;)I

    move-result p0

    return p0
.end method

.method public final m(Lj0/X;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Lj0/X;)I

    move-result p0

    return p0
.end method

.method public n(Lj0/X;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(Lj0/X;)I

    move-result p0

    return p0
.end method

.method public o(Lj0/X;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(Lj0/X;)I

    move-result p0

    return p0
.end method

.method public o0(ILj0/P;Lj0/X;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(ILj0/P;Lj0/X;)I

    move-result p0

    return p0
.end method

.method public final p0(I)V
    .locals 1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lj0/u;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Lj0/u;->c:I

    :cond_0
    invoke-virtual {p0}, Lj0/J;->n0()V

    return-void
.end method

.method public final q(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lj0/J;->F(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lj0/J;->F(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lj0/J;->q(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public q0(ILj0/P;Lj0/X;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(ILj0/P;Lj0/X;)I

    move-result p0

    return p0
.end method

.method public r()Lj0/K;
    .locals 1

    new-instance p0, Lj0/K;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lj0/K;-><init>(II)V

    return-object p0
.end method

.method public final x0()Z
    .locals 5

    iget v0, p0, Lj0/J;->m:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_1

    iget v0, p0, Lj0/J;->l:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public z0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Lj0/v;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lj0/v;-><init>(Landroid/content/Context;)V

    iput p2, v0, Lj0/v;->a:I

    invoke-virtual {p0, v0}, Lj0/J;->A0(Lj0/v;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "SS pos to : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslLinearLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
