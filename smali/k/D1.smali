.class public final Lk/D1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/u;


# instance fields
.field public c:Lj/i;

.field public d:Lj/k;

.field public final synthetic e:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/D1;->e:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final a(Lj/i;Z)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/content/Context;Lj/i;)V
    .locals 1

    iget-object p1, p0, Lk/D1;->c:Lj/i;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lk/D1;->d:Lj/k;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lj/i;->d(Lj/k;)Z

    :cond_0
    iput-object p2, p0, Lk/D1;->c:Lj/i;

    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e(Lj/k;)Z
    .locals 5

    iget-object v0, p0, Lk/D1;->e:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->c()V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->j:Lk/w;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->j:Lk/w;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->j:Lk/w;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lj/k;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/view/View;

    iput-object p1, p0, Lk/D1;->d:Lj/k;

    const/4 p0, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_3

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->h()Lk/E1;

    move-result-object v1

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->p:I

    and-int/lit8 v2, v2, 0x70

    const v3, 0x800003

    or-int/2addr v2, v3

    iput v2, v1, Lk/E1;->a:I

    iput p0, v1, Lk/E1;->b:I

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lk/E1;

    iget v4, v4, Lk/E1;->b:I

    if-eq v4, p0, :cond_4

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v3, v4, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iput-boolean v2, p1, Lj/k;->C:Z

    iget-object p0, p1, Lj/k;->n:Lj/i;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lj/i;->p(Z)V

    iget-object p0, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/view/View;

    instance-of p1, p0, Li/c;

    if-eqz p1, :cond_6

    check-cast p0, Li/c;

    invoke-interface {p0}, Li/c;->c()V

    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->x()V

    return v2
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lk/D1;->d:Lj/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lk/D1;->c:Lj/i;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lj/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lk/D1;->c:Lj/i;

    invoke-virtual {v2, v1}, Lj/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lk/D1;->d:Lj/k;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk/D1;->d:Lj/k;

    invoke-virtual {p0, v0}, Lk/D1;->g(Lj/k;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final g(Lj/k;)Z
    .locals 6

    iget-object v0, p0, Lk/D1;->e:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/view/View;

    instance-of v2, v1, Li/c;

    if-eqz v2, :cond_0

    check-cast v1, Li/c;

    invoke-interface {v1}, Li/c;->e()V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->j:Lk/w;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/view/View;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lk/D1;->d:Lj/k;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lj/k;->C:Z

    iget-object p1, p1, Lj/k;->n:Lj/i;

    invoke-virtual {p1, p0}, Lj/i;->p(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->x()V

    return v4
.end method

.method public final h(Lj/A;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
