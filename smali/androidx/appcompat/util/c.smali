.class public final Landroidx/appcompat/util/c;
.super Landroidx/appcompat/util/b;
.source "SourceFile"


# virtual methods
.method public final b(IIIILandroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/util/b;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p5}, Landroidx/appcompat/util/c;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/util/b;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroidx/appcompat/util/b;->mRoundedCornerMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/appcompat/util/b;->mTopLeftRound:Landroidx/appcompat/util/a;

    iget v5, p0, Landroidx/appcompat/util/b;->mRoundRadius:I

    add-int v6, v1, v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v1, v0, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Landroidx/appcompat/util/b;->mTopLeftRound:Landroidx/appcompat/util/a;

    invoke-virtual {v4, p1}, Landroidx/appcompat/util/a;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v4, p0, Landroidx/appcompat/util/b;->mRoundedCornerMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/appcompat/util/b;->mTopRightRound:Landroidx/appcompat/util/a;

    iget v5, p0, Landroidx/appcompat/util/b;->mRoundRadius:I

    sub-int v6, v2, v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v6, v0, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/util/b;->mTopRightRound:Landroidx/appcompat/util/a;

    invoke-virtual {v0, p1}, Landroidx/appcompat/util/a;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v0, p0, Landroidx/appcompat/util/b;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/util/b;->mBottomLeftRound:Landroidx/appcompat/util/a;

    iget v4, p0, Landroidx/appcompat/util/b;->mRoundRadius:I

    sub-int v5, v3, v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v1, v5, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/util/b;->mBottomLeftRound:Landroidx/appcompat/util/a;

    invoke-virtual {v0, p1}, Landroidx/appcompat/util/a;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Landroidx/appcompat/util/b;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/util/b;->mBottomRightRound:Landroidx/appcompat/util/a;

    iget v1, p0, Landroidx/appcompat/util/b;->mRoundRadius:I

    sub-int v4, v2, v1

    sub-int v1, v3, v1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/appcompat/util/b;->mBottomRightRound:Landroidx/appcompat/util/a;

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/a;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public final drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/util/b;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v2, v0, v1, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/util/c;->c(Landroid/graphics/Canvas;)V

    return-void
.end method
