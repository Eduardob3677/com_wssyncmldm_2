.class public LC0/o;
.super Landroidx/fragment/app/r0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, LC0/t;

    invoke-virtual {p2, p1}, LC0/t;->b(Landroid/view/View;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, LC0/t;

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, LC0/y;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p1, LC0/y;

    iget-object v0, p1, LC0/y;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_5

    if-ltz v2, :cond_2

    iget-object v3, p1, LC0/y;->z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, LC0/y;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LC0/t;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v1

    :goto_2
    invoke-virtual {p0, v3, p2}, LC0/o;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p1, LC0/t;->g:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/fragment/app/r0;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1}, Landroidx/fragment/app/r0;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1}, Landroidx/fragment/app/r0;->h(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    iget-object p0, p1, LC0/t;->h:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/fragment/app/r0;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_3
    if-ge v2, p0, :cond_5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, LC0/t;->b(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, LC0/t;

    invoke-static {p1, p2}, LC0/x;->a(Landroid/view/ViewGroup;LC0/t;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, LC0/t;

    return p0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, LC0/t;

    invoke-virtual {p1}, LC0/t;->k()LC0/t;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LC0/t;

    check-cast p2, LC0/t;

    check-cast p3, LC0/t;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p0, LC0/y;

    invoke-direct {p0}, LC0/y;-><init>()V

    invoke-virtual {p0, p1}, LC0/y;->I(LC0/t;)V

    invoke-virtual {p0, p2}, LC0/y;->I(LC0/t;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LC0/y;->A:Z

    move-object p1, p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    new-instance p0, LC0/y;

    invoke-direct {p0}, LC0/y;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, LC0/y;->I(LC0/t;)V

    :cond_3
    invoke-virtual {p0, p3}, LC0/y;->I(LC0/t;)V

    return-object p0

    :cond_4
    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, LC0/y;

    invoke-direct {p0}, LC0/y;-><init>()V

    if-eqz p1, :cond_0

    check-cast p1, LC0/t;

    invoke-virtual {p0, p1}, LC0/y;->I(LC0/t;)V

    :cond_0
    check-cast p2, LC0/t;

    invoke-virtual {p0, p2}, LC0/y;->I(LC0/t;)V

    return-object p0
.end method

.method public final k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    check-cast p1, LC0/t;

    new-instance p0, LC0/l;

    invoke-direct {p0, p2, p3}, LC0/l;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p0}, LC0/t;->a(LC0/s;)V

    return-void
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7

    check-cast p1, LC0/t;

    new-instance v6, LC0/m;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LC0/m;-><init>(LC0/o;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v6}, LC0/t;->a(LC0/s;)V

    return-void
.end method

.method public final m(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, LC0/t;

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, p1}, Landroidx/fragment/app/r0;->g(Landroid/graphics/Rect;Landroid/view/View;)V

    new-instance p0, LC0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p0}, LC0/t;->B(LZ0/j;)V

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    check-cast p1, LC0/t;

    new-instance p0, LC0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, LC0/t;->B(LZ0/j;)V

    return-void
.end method

.method public final o(Ljava/lang/Object;LF/f;Landroidx/fragment/app/t0;)V
    .locals 0

    check-cast p1, LC0/t;

    new-instance p0, Ls2/c;

    invoke-direct {p0, p1}, Ls2/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, LF/f;->b(LF/e;)V

    new-instance p0, LC0/n;

    invoke-direct {p0, p3}, LC0/n;-><init>(Landroidx/fragment/app/t0;)V

    invoke-virtual {p1, p0}, LC0/t;->a(LC0/s;)V

    return-void
.end method

.method public final p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, LC0/y;

    iget-object v0, p1, LC0/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/r0;->d(Landroid/view/View;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p3}, LC0/o;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    check-cast p1, LC0/y;

    if-eqz p1, :cond_0

    iget-object v0, p1, LC0/t;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3}, LC0/o;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, LC0/y;

    invoke-direct {p0}, LC0/y;-><init>()V

    check-cast p1, LC0/t;

    invoke-virtual {p0, p1}, LC0/y;->I(LC0/t;)V

    return-object p0
.end method

.method public final s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, LC0/t;

    instance-of v0, p1, LC0/y;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, LC0/y;

    iget-object v0, p1, LC0/y;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_6

    if-ltz v2, :cond_1

    iget-object v3, p1, LC0/y;->z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, LC0/y;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LC0/t;

    goto :goto_2

    :cond_1
    :goto_1
    move-object v3, v1

    :goto_2
    invoke-virtual {p0, v3, p2, p3}, LC0/o;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p1, LC0/t;->g:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/fragment/app/r0;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v1}, Landroidx/fragment/app/r0;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v1}, Landroidx/fragment/app/r0;->h(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_5

    :cond_3
    iget-object p0, p1, LC0/t;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-interface {p0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-nez p3, :cond_4

    move p0, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_3
    if-ge v2, p0, :cond_5

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, LC0/t;->b(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_4
    if-ltz p0, :cond_6

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, LC0/t;->x(Landroid/view/View;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method
