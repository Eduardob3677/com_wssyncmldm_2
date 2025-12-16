.class public final Lj0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj0/a;)V
    .locals 2

    iget v0, p1, Lj0/a;->a:I

    const/4 v1, 0x1

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    iget v0, p1, Lj0/a;->b:I

    iget p1, p1, Lj0/a;->d:I

    invoke-virtual {p0, v0, p1}, Lj0/J;->Y(II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    iget v0, p1, Lj0/a;->b:I

    iget p1, p1, Lj0/a;->d:I

    invoke-virtual {p0, v0, p1}, Lj0/J;->a0(II)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    iget v0, p1, Lj0/a;->b:I

    iget p1, p1, Lj0/a;->d:I

    invoke-virtual {p0, v0, p1}, Lj0/J;->Z(II)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    iget v0, p1, Lj0/a;->b:I

    iget p1, p1, Lj0/a;->d:I

    invoke-virtual {p0, v0, p1}, Lj0/J;->W(II)V

    :goto_0
    return-void
.end method

.method public b(I)Lj0/b0;
    .locals 6

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v0}, LD3/f;->j()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v4, v2}, LD3/f;->i(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lj0/b0;->j()Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, v4, Lj0/b0;->c:I

    if-eq v5, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    iget-object v5, v4, Lj0/b0;->a:Landroid/view/View;

    invoke-virtual {v3, v5}, LD3/f;->l(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    iget-object p1, v3, Lj0/b0;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, LD3/f;->l(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->m2:Z

    if-eqz p0, :cond_5

    const-string p0, "SeslRecyclerView"

    const-string p1, "assuming view holder cannot be find because it is hidden"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v1

    :cond_6
    return-object v3
.end method

.method public c(ILjava/lang/Object;I)V
    .locals 7

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v0}, LD3/f;->j()I

    move-result v0

    add-int/2addr p3, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v1, v0, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v4, v1}, LD3/f;->i(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lj0/b0;->q()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget v6, v5, Lj0/b0;->c:I

    if-lt v6, p1, :cond_1

    if-ge v6, p3, :cond_1

    invoke-virtual {v5, v3}, Lj0/b0;->b(I)V

    invoke-virtual {v5, p2}, Lj0/b0;->a(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lj0/K;

    iput-boolean v2, v3, Lj0/K;->c:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lj0/P;

    iget-object v0, p2, Lj0/P;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj0/b0;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget v5, v4, Lj0/b0;->c:I

    if-lt v5, p1, :cond_4

    if-ge v5, p3, :cond_4

    invoke-virtual {v4, v3}, Lj0/b0;->b(I)V

    invoke-virtual {p2, v1}, Lj0/P;->g(I)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:Z

    return-void
.end method

.method public d(II)V
    .locals 10

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v0}, LD3/f;->j()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    const-string v4, " now at position "

    const-string v5, " holder "

    const-string v6, "SeslRecyclerView"

    if-ge v2, v0, :cond_2

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v7, v2}, LD3/f;->i(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lj0/b0;->q()Z

    move-result v8

    if-nez v8, :cond_1

    iget v8, v7, Lj0/b0;->c:I

    if-lt v8, p1, :cond_1

    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->m2:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "offsetPositionRecordsForInsert attached child "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lj0/b0;->c:I

    add-int/2addr v4, p2

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v7, p2, v1}, Lj0/b0;->n(IZ)V

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lj0/X;

    iput-boolean v3, v4, Lj0/X;->f:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lj0/P;

    iget-object v0, v0, Lj0/P;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj0/b0;

    if-eqz v7, :cond_4

    iget v8, v7, Lj0/b0;->c:I

    if-lt v8, p1, :cond_4

    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->m2:Z

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "offsetPositionRecordsForInsert cached "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lj0/b0;->c:I

    add-int/2addr v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v7, p2, v3}, Lj0/b0;->n(IZ)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:Z

    return-void
.end method

.method public e(II)V
    .locals 13

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v0}, LD3/f;->j()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ge p1, p2, :cond_0

    move v3, p1

    move v4, p2

    move v5, v2

    goto :goto_0

    :cond_0
    move v4, p1

    move v3, p2

    move v5, v1

    :goto_0
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const-string v8, " holder "

    const-string v9, "SeslRecyclerView"

    if-ge v7, v0, :cond_5

    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v10, v7}, LD3/f;->i(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v10

    if-eqz v10, :cond_4

    iget v11, v10, Lj0/b0;->c:I

    if-lt v11, v3, :cond_4

    if-le v11, v4, :cond_1

    goto :goto_3

    :cond_1
    sget-boolean v11, Landroidx/recyclerview/widget/RecyclerView;->m2:Z

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "offsetPositionRecordsForMove attached child "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v8, v10, Lj0/b0;->c:I

    if-ne v8, p1, :cond_3

    sub-int v8, p2, p1

    invoke-virtual {v10, v8, v6}, Lj0/b0;->n(IZ)V

    goto :goto_2

    :cond_3
    invoke-virtual {v10, v5, v6}, Lj0/b0;->n(IZ)V

    :goto_2
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lj0/X;

    iput-boolean v1, v8, Lj0/X;->f:Z

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lj0/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ge p1, p2, :cond_6

    move v3, p1

    move v4, p2

    goto :goto_4

    :cond_6
    move v4, p1

    move v3, p2

    move v2, v1

    :goto_4
    iget-object v0, v0, Lj0/P;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v6

    :goto_5
    if-ge v7, v5, :cond_a

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj0/b0;

    if-eqz v10, :cond_9

    iget v11, v10, Lj0/b0;->c:I

    if-lt v11, v3, :cond_9

    if-le v11, v4, :cond_7

    goto :goto_7

    :cond_7
    if-ne v11, p1, :cond_8

    sub-int v11, p2, p1

    invoke-virtual {v10, v11, v6}, Lj0/b0;->n(IZ)V

    goto :goto_6

    :cond_8
    invoke-virtual {v10, v2, v6}, Lj0/b0;->n(IZ)V

    :goto_6
    sget-boolean v11, Landroidx/recyclerview/widget/RecyclerView;->m2:Z

    if-eqz v11, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "offsetPositionRecordsForMove cached child "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:Z

    return-void
.end method

.method public f(Lj0/b0;LJ/p;LJ/p;)V
    .locals 7

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj0/b0;->p(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->O:Lj0/F;

    move-object v1, v0

    check-cast v1, Lj0/e0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    iget v3, p2, LJ/p;->a:I

    iget v5, p3, LJ/p;->a:I

    if-ne v3, v5, :cond_0

    iget v0, p2, LJ/p;->b:I

    iget v2, p3, LJ/p;->b:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget v4, p2, LJ/p;->b:I

    iget v6, p3, LJ/p;->b:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lj0/e0;->g(Lj0/b0;IIII)Z

    move-result p1

    goto :goto_0

    :cond_1
    check-cast v1, Lj0/k;

    invoke-virtual {v1, p1}, Lj0/k;->l(Lj0/b0;)V

    iget-object p2, p1, Lj0/b0;->a:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, v1, Lj0/k;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v1, Lj0/k;->p:I

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2

    or-int/lit8 p1, p1, 0x8

    iput p1, v1, Lj0/k;->p:I

    :cond_2
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    :cond_3
    return-void
.end method

.method public g(Lj0/b0;LJ/p;LJ/p;)V
    .locals 7

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lj0/P;

    invoke-virtual {v0, p1}, Lj0/P;->l(Lj0/b0;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->i(Lj0/b0;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj0/b0;->p(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->O:Lj0/F;

    move-object v1, v0

    check-cast v1, Lj0/e0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, LJ/p;->a:I

    iget v4, p2, LJ/p;->b:I

    iget-object p2, p1, Lj0/b0;->a:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    iget v0, p3, LJ/p;->a:I

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    :goto_2
    move v6, p3

    goto :goto_3

    :cond_1
    iget p3, p3, LJ/p;->b:I

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lj0/b0;->j()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v3, v5, :cond_2

    if-eq v4, v6, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p2, v5, v6, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lj0/e0;->g(Lj0/b0;IIII)Z

    move-result p1

    goto :goto_4

    :cond_3
    check-cast v1, Lj0/k;

    invoke-virtual {v1, p1}, Lj0/k;->l(Lj0/b0;)V

    iget-object p3, v1, Lj0/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p1

    iget p3, v1, Lj0/k;->q:I

    if-le p1, p3, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, v1, Lj0/k;->q:I

    :cond_4
    iget p1, v1, Lj0/k;->p:I

    and-int/lit8 p2, p1, 0x1

    const/4 p3, 0x1

    if-nez p2, :cond_5

    or-int/2addr p1, p3

    iput p1, v1, Lj0/k;->p:I

    :cond_5
    move p1, p3

    :goto_4
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    :cond_6
    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object p0, p0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->w(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method
