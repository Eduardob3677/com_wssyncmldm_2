.class public Lj0/d0;
.super LJ/b;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Lj0/c0;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, LJ/b;-><init>()V

    iput-object p1, p0, Lj0/d0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lj0/d0;->j()LJ/b;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lj0/c0;

    if-eqz v0, :cond_0

    check-cast p1, Lj0/c0;

    iput-object p1, p0, Lj0/d0;->e:Lj0/c0;

    goto :goto_0

    :cond_0
    new-instance p1, Lj0/c0;

    invoke-direct {p1, p0}, Lj0/c0;-><init>(Lj0/d0;)V

    iput-object p1, p0, Lj0/d0;->e:Lj0/c0;

    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, LJ/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lj0/d0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Z()Z

    move-result p0

    if-nez p0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lj0/J;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lj0/J;

    move-result-object p0

    invoke-virtual {p0, p2}, Lj0/J;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View;LK/h;)V
    .locals 2

    iget-object v0, p0, LJ/b;->a:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, LK/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lj0/d0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Z()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lj0/J;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lj0/J;

    move-result-object p0

    iget-object p1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Lj0/P;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->l0:Lj0/X;

    invoke-virtual {p0, v0, p1, p2}, Lj0/J;->T(Lj0/P;Lj0/X;LK/h;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, LJ/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lj0/d0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Z()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lj0/J;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lj0/J;

    move-result-object p0

    iget-object p1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Lj0/P;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->l0:Lj0/X;

    invoke-virtual {p0, v0, p1, p2, p3}, Lj0/J;->g0(Lj0/P;Lj0/X;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public j()LJ/b;
    .locals 0

    iget-object p0, p0, Lj0/d0;->e:Lj0/c0;

    return-object p0
.end method
