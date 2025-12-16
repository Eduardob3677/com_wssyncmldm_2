.class public final Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "SourceFile"


# instance fields
.field public i:Z

.field public j:Landroid/os/CancellationSignal;

.field public k:Landroid/view/WindowInsetsAnimationController;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroidx/picker/widget/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p2, p0, v0, v1}, Landroidx/picker/widget/c;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    new-instance p2, Lx1/a;

    invoke-direct {p2, p0}, Lx1/a;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    new-instance p2, Lx1/b;

    invoke-direct {p2, p0}, Lx1/b;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "status_bar_height"

    const-string p2, "dimen"

    const-string v0, "android"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_1
    const-string p1, "navigation_bar_height"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->i:Z

    if-eq p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->i:Z

    :cond_1
    return-void
.end method

.method public final g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final p(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    invoke-static {p2}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p3, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(ILandroid/view/View;)V

    throw p0
.end method
