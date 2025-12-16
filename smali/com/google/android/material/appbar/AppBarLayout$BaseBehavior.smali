.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lx1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lx1/c;"
    }
.end annotation


# instance fields
.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroid/view/VelocityTracker;

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lx1/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:I

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->f:I

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lx1/c;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:I

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->f:I

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->h:I

    return-void
.end method


# virtual methods
.method public g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->f:I

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->f:I

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->c:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:I

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->f:I

    if-le v1, v4, :cond_3

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:I

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:I

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p2}, LB/f;->F(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/View;II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->c:Z

    if-eqz p1, :cond_4

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:I

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:I

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->g:Landroid/view/VelocityTracker;

    if-nez p1, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->g:Landroid/view/VelocityTracker;

    :cond_4
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->g:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_5
    return v3
.end method

.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Landroid/view/View;Landroid/view/View;F)Z
    .locals 0

    invoke-static {p1}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    invoke-static {p1}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final o(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    invoke-static {p1}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic p(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-static {p2}, LB/f;->C(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p2}, LB/f;->F(Ljava/lang/Object;)V

    iget p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->h:I

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->h:I

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    const/4 p0, 0x0

    throw p0
.end method
