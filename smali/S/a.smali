.class public final LS/a;
.super LK/j;
.source "SourceFile"


# instance fields
.field public final synthetic e:LS/b;


# direct methods
.method public constructor <init>(LS/b;)V
    .locals 0

    iput-object p1, p0, LS/a;->e:LS/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LK/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)LK/h;
    .locals 0

    iget-object p0, p0, LS/a;->e:LS/b;

    invoke-virtual {p0, p1}, LS/b;->r(I)LK/h;

    move-result-object p0

    iget-object p0, p0, LK/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    new-instance p1, LK/h;

    invoke-direct {p1, p0}, LK/h;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object p1
.end method

.method public final b(I)LK/h;
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, LS/a;->e:LS/b;

    if-ne p1, v0, :cond_0

    iget p1, v1, LS/b;->k:I

    goto :goto_0

    :cond_0
    iget p1, v1, LS/b;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, LS/a;->a(I)LK/h;

    move-result-object p0

    return-object p0
.end method

.method public final c(IILandroid/os/Bundle;)Z
    .locals 5

    iget-object p0, p0, LS/a;->e:LS/b;

    iget-object v0, p0, LS/b;->i:Landroid/view/View;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_7

    const/4 p3, 0x1

    if-eq p2, p3, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/high16 v3, 0x10000

    const/high16 v4, -0x80000000

    if-eq p2, v1, :cond_2

    const/16 v1, 0x80

    if-eq p2, v1, :cond_0

    invoke-virtual {p0, p1, p2}, LS/b;->s(II)Z

    move-result p0

    goto :goto_2

    :cond_0
    iget p2, p0, LS/b;->k:I

    if-ne p2, p1, :cond_1

    iput v4, p0, LS/b;->k:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p1, v3}, LS/b;->y(II)V

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v2

    :goto_1
    move p0, p3

    goto :goto_2

    :cond_2
    iget-object p2, p0, LS/b;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget p2, p0, LS/b;->k:I

    if-eq p2, p1, :cond_1

    if-eq p2, v4, :cond_4

    iput v4, p0, LS/b;->k:I

    iget-object v1, p0, LS/b;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p2, v3}, LS/b;->y(II)V

    :cond_4
    iput p1, p0, LS/b;->k:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    invoke-virtual {p0, p1, p2}, LS/b;->y(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, LS/b;->j(I)Z

    move-result p0

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, LS/b;->x(I)Z

    move-result p0

    goto :goto_2

    :cond_7
    sget-object p0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    :goto_2
    return p0
.end method
