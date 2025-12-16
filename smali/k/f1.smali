.class public final Lk/f1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public c:Ljava/util/ArrayList;

.field public d:Lk/c1;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:I


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lk/f1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/d1;

    iget v5, p0, Lk/f1;->g:I

    if-ne v3, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Lk/d1;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lk/f1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/d1;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget p1, p0, Lk/f1;->g:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget p1, p0, Lk/f1;->g:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lk/f1;->setSelectedPosition(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lk/f1;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getDefaultCircle()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lk/f1;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getSelectCircle()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lk/f1;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getSelectedPosition()I
    .locals 0

    iget p0, p0, Lk/f1;->g:I

    return p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lk/f1;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final setDefaultCircle(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lk/f1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/d1;

    iput-object p1, v1, Lk/d1;->c:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v1, Lk/d1;->e:Z

    invoke-virtual {v1, v2}, Lk/d1;->a(Z)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lk/f1;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setOnItemClickListener(Lk/c1;)V
    .locals 4

    const-string v0, "itemClickListener"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lk/f1;->d:Lk/c1;

    iget-object v0, p0, Lk/f1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/d1;

    new-instance v2, Lk/b1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Lk/b1;-><init>(Ljava/lang/Object;Landroid/view/ViewGroup;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setSelectCircle(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lk/f1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/d1;

    iput-object p1, v1, Lk/d1;->d:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v1, Lk/d1;->e:Z

    invoke-virtual {v1, v2}, Lk/d1;->a(Z)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lk/f1;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/f1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    :goto_0
    iput p1, p0, Lk/f1;->g:I

    invoke-virtual {p0}, Lk/f1;->a()V

    return-void
.end method
