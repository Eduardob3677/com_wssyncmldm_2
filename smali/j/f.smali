.class public final Lj/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final c:Lj/i;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Z

.field public final i:Landroid/view/LayoutInflater;

.field public final j:I


# direct methods
.method public constructor <init>(Lj/i;Landroid/view/LayoutInflater;ZI)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lj/f;->d:I

    iput-boolean p3, p0, Lj/f;->h:Z

    iput-object p2, p0, Lj/f;->i:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lj/f;->c:Lj/i;

    iput p4, p0, Lj/f;->j:I

    invoke-virtual {p0}, Lj/f;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lj/f;->c:Lj/i;

    iget-object v1, v0, Lj/i;->v:Lj/k;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lj/i;->i()V

    iget-object v0, v0, Lj/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/k;

    if-ne v4, v1, :cond_0

    iput v3, p0, Lj/f;->d:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lj/f;->d:I

    return-void
.end method

.method public final b(I)Lj/k;
    .locals 2

    iget-boolean v0, p0, Lj/f;->h:Z

    iget-object v1, p0, Lj/f;->c:Lj/i;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lj/i;->i()V

    iget-object v0, v1, Lj/i;->j:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lj/i;->l()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget p0, p0, Lj/f;->d:I

    if-ltz p0, :cond_1

    if-lt p1, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj/k;

    return-object p0
.end method

.method public final getCount()I
    .locals 2

    iget-boolean v0, p0, Lj/f;->h:Z

    iget-object v1, p0, Lj/f;->c:Lj/i;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lj/i;->i()V

    iget-object v0, v1, Lj/i;->j:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lj/i;->l()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget p0, p0, Lj/f;->d:I

    if-gez p0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj/f;->b(I)Lj/k;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lj/f;->i:Landroid/view/LayoutInflater;

    iget v1, p0, Lj/f;->j:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    iput p3, p0, Lj/f;->e:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    iput p3, p0, Lj/f;->f:I

    :cond_0
    invoke-virtual {p0, p1}, Lj/f;->b(I)Lj/k;

    move-result-object p3

    iget p3, p3, Lj/k;->b:I

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lj/f;->b(I)Lj/k;

    move-result-object v1

    iget v1, v1, Lj/k;->b:I

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    move-object v2, p2

    check-cast v2, Landroidx/appcompat/view/menu/ListMenuItemView;

    iget-object v3, p0, Lj/f;->c:Lj/i;

    invoke-virtual {v3}, Lj/i;->m()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eq p3, v1, :cond_2

    move v0, v4

    :cond_2
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    move-object p3, p2

    check-cast p3, Lj/v;

    iget-boolean v0, p0, Lj/f;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_3
    invoke-virtual {p0, p1}, Lj/f;->b(I)Lj/k;

    move-result-object v0

    invoke-interface {p3, v0}, Lj/v;->d(Lj/k;)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07044c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget v0, p0, Lj/f;->e:I

    add-int/2addr v0, p3

    iget v1, p0, Lj/f;->f:I

    add-int/2addr v1, p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Lj/f;->e:I

    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lj/f;->getCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne p1, v3, :cond_5

    goto :goto_2

    :cond_5
    iget v1, p0, Lj/f;->f:I

    :goto_2
    invoke-virtual {p2, p3, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method public final isEnabled(I)Z
    .locals 1

    iget-boolean v0, p0, Lj/f;->h:Z

    iget-object p0, p0, Lj/f;->c:Lj/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj/i;->i()V

    iget-object p0, p0, Lj/i;->j:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj/i;->l()Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj/k;

    invoke-virtual {p0}, Lj/k;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lj/f;->a()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
