.class public abstract Lj0/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LD3/f;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Le/v;

.field public final d:Le/v;

.field public e:Lj0/v;

.field public f:Z

.field public g:Z

.field public final h:Z

.field public final i:Z

.field public j:I

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj0/H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj0/H;-><init>(Lj0/J;I)V

    new-instance v1, Lj0/H;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lj0/H;-><init>(Lj0/J;I)V

    new-instance v2, Le/v;

    invoke-direct {v2, v0}, Le/v;-><init>(Lj0/H;)V

    iput-object v2, p0, Lj0/J;->c:Le/v;

    new-instance v0, Le/v;

    invoke-direct {v0, v1}, Le/v;-><init>(Lj0/H;)V

    iput-object v0, p0, Lj0/J;->d:Le/v;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj0/J;->f:Z

    iput-boolean v0, p0, Lj0/J;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj0/J;->h:Z

    iput-boolean v0, p0, Lj0/J;->i:Z

    return-void
.end method

.method public static F(Landroid/view/View;)I
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "SeslRecyclerView"

    const-string v0, "View is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lj0/K;

    iget-object p0, p0, Lj0/K;->a:Lj0/b0;

    invoke-virtual {p0}, Lj0/b0;->c()I

    move-result p0

    return p0
.end method

.method public static G(Landroid/content/Context;Landroid/util/AttributeSet;II)Lj0/I;
    .locals 2

    new-instance v0, Lj0/I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Li0/a;->a:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, Lj0/I;->a:I

    const/16 p3, 0xa

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Lj0/I;->b:I

    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, Lj0/I;->c:Z

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lj0/I;->d:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static K(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public static L(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lj0/K;

    iget-object v1, v0, Lj0/K;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static g(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static w(ZIIII)I
    .locals 4

    sub-int/2addr p1, p3

    const/4 p3, 0x0

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p0, :cond_2

    if-ltz p4, :cond_0

    :goto_0
    move p2, v3

    goto :goto_2

    :cond_0
    if-ne p4, v1, :cond_1

    if-eq p2, v2, :cond_4

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_4

    :cond_1
    move p2, p3

    move p4, p2

    goto :goto_2

    :cond_2
    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    if-ne p4, v1, :cond_5

    :cond_4
    move p4, p1

    goto :goto_2

    :cond_5
    if-ne p4, v0, :cond_1

    if-eq p2, v2, :cond_7

    if-ne p2, v3, :cond_6

    goto :goto_1

    :cond_6
    move p4, p1

    move p2, p3

    goto :goto_2

    :cond_7
    :goto_1
    move p4, p1

    move p2, v2

    :goto_2
    invoke-static {p4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string p0, "SeslRecyclerView"

    const-string v0, "RecyclerView is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public final A0(Lj0/v;)V
    .locals 3

    iget-object v0, p0, Lj0/J;->e:Lj0/v;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    iget-boolean v1, v0, Lj0/v;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj0/v;->i()V

    :cond_0
    iput-object p1, p0, Lj0/J;->e:Lj0/v;

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:Lj0/a0;

    iget-object v2, v1, Lj0/a0;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v1, Lj0/a0;->e:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lp0/a;->s(Landroid/view/View;F)V

    iget-boolean v1, p1, Lj0/v;->h:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was started more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p1, Lj0/v;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p0, p1, Lj0/v;->c:Lj0/J;

    iget p0, p1, Lj0/v;->a:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lj0/X;

    iput p0, v1, Lj0/X;->a:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lj0/v;->e:Z

    iput-boolean v1, p1, Lj0/v;->d:Z

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    invoke-virtual {v0, p0}, Lj0/J;->q(I)Landroid/view/View;

    move-result-object p0

    iput-object p0, p1, Lj0/v;->f:Landroid/view/View;

    iget-object p0, p1, Lj0/v;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:Lj0/a0;

    invoke-virtual {p0}, Lj0/a0;->b()V

    iput-boolean v1, p1, Lj0/v;->h:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid target position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final B()I
    .locals 0

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final C()I
    .locals 0

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final D()I
    .locals 0

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final E()I
    .locals 0

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public H(Lj0/P;Lj0/X;)I
    .locals 0

    iget-object p1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Landroidx/preference/D;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lj0/J;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    invoke-virtual {p0}, Lj0/A;->f()I

    move-result p2

    :cond_1
    return p2

    :cond_2
    invoke-virtual {p0}, Lj0/J;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    invoke-virtual {p0}, Lj0/A;->a()I

    move-result p2

    :cond_3
    :goto_0
    return p2
.end method

.method public final I(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lj0/K;

    iget-object v0, v0, Lj0/K;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public J()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public M(I)V
    .locals 3

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v0}, LD3/f;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v2, v1}, LD3/f;->f(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public N(I)V
    .locals 3

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v0}, LD3/f;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    invoke-virtual {v2, v1}, LD3/f;->f(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public O()V
    .locals 0

    return-void
.end method

.method public P(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract Q(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public abstract R(Landroid/view/View;ILj0/P;Lj0/X;)Landroid/view/View;
.end method

.method public S(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lj0/P;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lj0/X;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    if-eqz p0, :cond_4

    instance-of v0, p0, Landroidx/preference/D;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lj0/A;->f()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lj0/A;->a()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public T(Lj0/P;Lj0/X;LK/h;)V
    .locals 3

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, LK/h;->a(I)V

    invoke-virtual {p3, v2}, LK/h;->i(Z)V

    :cond_1
    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, LK/h;->a(I)V

    invoke-virtual {p3, v2}, LK/h;->i(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lj0/J;->H(Lj0/P;Lj0/X;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lj0/J;->x(Lj0/P;Lj0/X;)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    iget-object p1, p3, LK/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public final U(Landroid/view/View;LK/h;)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj0/b0;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lj0/J;->a:LD3/f;

    iget-object v1, v1, LD3/f;->e:Ljava/io/Serializable;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lj0/b0;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lj0/P;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lj0/X;

    invoke-virtual {p0, v1, v0, p1, p2}, Lj0/J;->V(Lj0/P;Lj0/X;Landroid/view/View;LK/h;)V

    :cond_0
    return-void
.end method

.method public V(Lj0/P;Lj0/X;Landroid/view/View;LK/h;)V
    .locals 1

    invoke-virtual {p0}, Lj0/J;->e()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p3}, Lj0/J;->F(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lj0/J;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lj0/J;->F(Landroid/view/View;)I

    move-result p3

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Landroidx/preference/D;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    invoke-virtual {v0, p1}, Lj0/A;->g(I)I

    move-result p1

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    invoke-virtual {p0, p3}, Lj0/A;->g(I)I

    move-result p3

    :cond_2
    const/4 p0, 0x1

    invoke-static {p2, p1, p0, p3, p0}, LK/g;->a(ZIIII)LK/g;

    move-result-object p0

    invoke-virtual {p4, p0}, LK/h;->h(LK/g;)V

    return-void
.end method

.method public W(II)V
    .locals 0

    return-void
.end method

.method public X()V
    .locals 0

    return-void
.end method

.method public Y(II)V
    .locals 0

    return-void
.end method

.method public Z(II)V
    .locals 0

    return-void
.end method

.method public a0(II)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/view/View;IZ)V
    .locals 9

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lj0/b0;->j()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->i:Le/v;

    invoke-virtual {p3, v0}, Le/v;->C(Lj0/b0;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->i:Le/v;

    iget-object p3, p3, Le/v;->c:Ljava/lang/Object;

    check-cast p3, Lo/k;

    invoke-virtual {p3, v0, v1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj0/m0;

    if-nez v3, :cond_2

    invoke-static {}, Lj0/m0;->a()Lj0/m0;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget p3, v3, Lj0/m0;->a:I

    or-int/2addr p3, v2

    iput p3, v3, Lj0/m0;->a:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lj0/K;

    invoke-virtual {v0}, Lj0/b0;->r()Z

    move-result v3

    const-string v4, "SeslRecyclerView"

    const/4 v5, 0x0

    if-nez v3, :cond_c

    invoke-virtual {v0}, Lj0/b0;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v6, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v3, v6, :cond_b

    iget-object v3, p0, Lj0/J;->a:LD3/f;

    iget-object v6, v3, LD3/f;->c:Ljava/lang/Object;

    check-cast v6, Lj0/y;

    iget-object v6, v6, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    :goto_2
    move v6, v7

    goto :goto_3

    :cond_4
    iget-object v3, v3, LD3/f;->d:Ljava/lang/Object;

    check-cast v3, Lj0/c;

    invoke-virtual {v3, v6}, Lj0/c;->d(I)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v6}, Lj0/c;->b(I)I

    move-result v3

    sub-int/2addr v6, v3

    :goto_3
    if-ne p2, v7, :cond_6

    iget-object p2, p0, Lj0/J;->a:LD3/f;

    invoke-virtual {p2}, LD3/f;->g()I

    move-result p2

    :cond_6
    if-eq v6, v7, :cond_a

    if-eq v6, p2, :cond_e

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    invoke-virtual {p0, v6}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v6}, Lj0/J;->u(I)Landroid/view/View;

    iget-object v3, p0, Lj0/J;->a:LD3/f;

    invoke-virtual {v3, v6}, LD3/f;->e(I)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lj0/K;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v6

    invoke-virtual {v6}, Lj0/b0;->j()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->i:Le/v;

    iget-object v7, v7, Le/v;->c:Ljava/lang/Object;

    check-cast v7, Lo/k;

    invoke-virtual {v7, v6, v1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/m0;

    if-nez v1, :cond_7

    invoke-static {}, Lj0/m0;->a()Lj0/m0;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget v7, v1, Lj0/m0;->a:I

    or-int/2addr v2, v7

    iput v2, v1, Lj0/m0;->a:I

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->i:Le/v;

    invoke-virtual {v1, v6}, Le/v;->C(Lj0/b0;)V

    :goto_4
    iget-object p0, p0, Lj0/J;->a:LD3/f;

    invoke-virtual {v6}, Lj0/b0;->j()Z

    move-result v1

    invoke-virtual {p0, p1, p2, v3, v1}, LD3/f;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_7

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot move a child from non-existing index:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p3}, Lh0/c;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    iget-object v1, p0, Lj0/J;->a:LD3/f;

    invoke-virtual {v1, p1, p2, v5}, LD3/f;->b(Landroid/view/View;IZ)V

    iput-boolean v2, p3, Lj0/K;->c:Z

    iget-object p0, p0, Lj0/J;->e:Lj0/v;

    if-eqz p0, :cond_e

    iget-boolean p2, p0, Lj0/v;->e:Z

    if-eqz p2, :cond_e

    iget-object p2, p0, Lj0/v;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->T(Landroid/view/View;)I

    move-result p2

    iget v1, p0, Lj0/v;->a:I

    if-ne p2, v1, :cond_e

    iput-object p1, p0, Lj0/v;->f:Landroid/view/View;

    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->m2:Z

    if-eqz p0, :cond_e

    const-string p0, "smooth scroll target view has been attached"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    :goto_5
    invoke-virtual {v0}, Lj0/b0;->k()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lj0/b0;->n:Lj0/P;

    invoke-virtual {v1, v0}, Lj0/P;->l(Lj0/b0;)V

    goto :goto_6

    :cond_d
    iget v1, v0, Lj0/b0;->j:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lj0/b0;->j:I

    :goto_6
    iget-object p0, p0, Lj0/J;->a:LD3/f;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v5}, LD3/f;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_e
    :goto_7
    iget-boolean p0, p3, Lj0/K;->d:Z

    if-eqz p0, :cond_10

    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->m2:Z

    if-eqz p0, :cond_f

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "consuming pending invalidate on child "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p3, Lj0/K;->a:Lj0/b0;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object p0, v0, Lj0/b0;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v5, p3, Lj0/K;->d:Z

    :cond_10
    return-void
.end method

.method public abstract b0(Lj0/P;Lj0/X;)V
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->n(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract c0(Lj0/X;)V
.end method

.method public abstract d()Z
.end method

.method public d0(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public abstract e()Z
.end method

.method public e0()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public f(Lj0/K;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f0(I)V
    .locals 0

    return-void
.end method

.method public g0(Lj0/P;Lj0/X;ILandroid/os/Bundle;)Z
    .locals 2

    iget-object p1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget p1, p0, Lj0/J;->o:I

    iget p4, p0, Lj0/J;->n:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p4

    :cond_1
    const/16 v0, 0x1000

    const/4 v1, 0x1

    if-eq p3, v0, :cond_5

    const/16 v0, 0x2000

    if-eq p3, v0, :cond_2

    move p1, p2

    move p3, p1

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lj0/J;->E()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lj0/J;->B()I

    move-result p3

    sub-int/2addr p1, p3

    neg-int p1, p1

    goto :goto_0

    :cond_3
    move p1, p2

    :goto_0
    iget-object p3, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lj0/J;->C()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-virtual {p0}, Lj0/J;->D()I

    move-result p3

    sub-int/2addr p4, p3

    neg-int p3, p4

    goto :goto_2

    :cond_4
    move p3, p2

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lj0/J;->E()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lj0/J;->B()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_6
    move p1, p2

    :goto_1
    iget-object p3, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lj0/J;->C()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-virtual {p0}, Lj0/J;->D()I

    move-result p3

    sub-int p3, p4, p3

    :goto_2
    if-nez p1, :cond_7

    if-nez p3, :cond_7

    return p2

    :cond_7
    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p3, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->A0(IZI)V

    return v1
.end method

.method public h(IILj0/X;Lcom/google/android/gms/internal/firebase-auth-api/b5;)V
    .locals 0

    return-void
.end method

.method public h0()V
    .locals 0

    invoke-virtual {p0}, Lj0/J;->n0()V

    return-void
.end method

.method public i(ILcom/google/android/gms/internal/firebase-auth-api/b5;)V
    .locals 0

    return-void
.end method

.method public final i0(Lj0/P;)V
    .locals 2

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v1

    invoke-virtual {v1}, Lj0/b0;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lj0/J;->l0(I)V

    invoke-virtual {p1, v1}, Lj0/P;->h(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract j(Lj0/X;)I
.end method

.method public final j0(Lj0/P;)V
    .locals 6

    iget-object v0, p1, Lj0/P;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    iget-object v2, p1, Lj0/P;->a:Ljava/util/ArrayList;

    if-ltz v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/b0;

    iget-object v2, v2, Lj0/b0;->a:Landroid/view/View;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v3

    invoke-virtual {v3}, Lj0/b0;->q()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lj0/b0;->p(Z)V

    invoke-virtual {v3}, Lj0/b0;->l()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v5, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->O:Lj0/F;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Lj0/F;->d(Lj0/b0;)V

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lj0/b0;->p(Z)V

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lj0/b0;->n:Lj0/P;

    iput-boolean v4, v2, Lj0/b0;->o:Z

    iget v3, v2, Lj0/b0;->j:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v2, Lj0/b0;->j:I

    invoke-virtual {p1, v2}, Lj0/P;->i(Lj0/b0;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Lj0/P;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public abstract k(Lj0/X;)I
.end method

.method public final k0(Landroid/view/View;Lj0/P;)V
    .locals 5

    iget-object p0, p0, Lj0/J;->a:LD3/f;

    iget-object v0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast v0, Lj0/y;

    iget v1, p0, LD3/f;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iput v2, p0, LD3/f;->b:I

    iput-object p1, p0, LD3/f;->f:Ljava/lang/Object;

    iget-object v2, v0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_0

    :goto_0
    iput v3, p0, LD3/f;->b:I

    iput-object v1, p0, LD3/f;->f:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v4, p0, LD3/f;->d:Ljava/lang/Object;

    check-cast v4, Lj0/c;

    invoke-virtual {v4, v2}, Lj0/c;->f(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, LD3/f;->n(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lj0/y;->h(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    invoke-virtual {p2, p1}, Lj0/P;->h(Landroid/view/View;)V

    return-void

    :goto_3
    iput v3, p0, LD3/f;->b:I

    iput-object v1, p0, LD3/f;->f:Ljava/lang/Object;

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeView(At)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract l(Lj0/X;)I
.end method

.method public final l0(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lj0/J;->a:LD3/f;

    iget-object v0, p0, LD3/f;->c:Ljava/lang/Object;

    check-cast v0, Lj0/y;

    iget v1, p0, LD3/f;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, LD3/f;->h(I)I

    move-result p1

    iget-object v4, v0, Lj0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iput v2, p0, LD3/f;->b:I

    iput-object v4, p0, LD3/f;->f:Ljava/lang/Object;

    iget-object v2, p0, LD3/f;->d:Ljava/lang/Object;

    check-cast v2, Lj0/c;

    invoke-virtual {v2, p1}, Lj0/c;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, LD3/f;->n(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lj0/y;->h(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput v3, p0, LD3/f;->b:I

    iput-object v1, p0, LD3/f;->f:Ljava/lang/Object;

    goto :goto_3

    :goto_2
    iput v3, p0, LD3/f;->b:I

    iput-object v1, p0, LD3/f;->f:Ljava/lang/Object;

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeView(At)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    return-void
.end method

.method public abstract m(Lj0/X;)I
.end method

.method public m0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    invoke-virtual {p0}, Lj0/J;->C()I

    move-result v0

    invoke-virtual {p0}, Lj0/J;->E()I

    move-result v1

    iget v2, p0, Lj0/J;->n:I

    invoke-virtual {p0}, Lj0/J;->D()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lj0/J;->o:I

    invoke-virtual {p0}, Lj0/J;->B()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v5, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v5

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p3, v3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0}, Lj0/J;->A()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    move v2, v6

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    filled-new-array {v2, v1}, [I

    move-result-object p2

    aget p3, p2, v0

    aget p2, p2, v7

    if-eqz p5, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lj0/J;->C()I

    move-result v1

    invoke-virtual {p0}, Lj0/J;->E()I

    move-result v2

    iget v3, p0, Lj0/J;->n:I

    invoke-virtual {p0}, Lj0/J;->D()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lj0/J;->o:I

    invoke-virtual {p0}, Lj0/J;->B()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, p5}, Lj0/J;->y(Landroid/graphics/Rect;Landroid/view/View;)V

    iget p0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p3

    if-ge p0, v3, :cond_6

    iget p0, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p3

    if-le p0, v1, :cond_6

    iget p0, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p2

    if-ge p0, v4, :cond_6

    iget p0, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    if-gt p0, v2, :cond_5

    goto :goto_3

    :cond_5
    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    return v0

    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1, p3, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->A0(IZI)V

    :goto_5
    return v7
.end method

.method public abstract n(Lj0/X;)I
.end method

.method public final n0()V
    .locals 0

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public abstract o(Lj0/X;)I
.end method

.method public abstract o0(ILj0/P;Lj0/X;)I
.end method

.method public final p(Lj0/P;)V
    .locals 4

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v2

    invoke-virtual {v2}, Lj0/b0;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->m2:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ignoring view "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lj0/b0;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lj0/b0;->j()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    iget-boolean v3, v3, Lj0/A;->b:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lj0/J;->l0(I)V

    invoke-virtual {p1, v2}, Lj0/P;->i(Lj0/b0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lj0/J;->u(I)Landroid/view/View;

    iget-object v3, p0, Lj0/J;->a:LD3/f;

    invoke-virtual {v3, v0}, LD3/f;->e(I)V

    invoke-virtual {p1, v1}, Lj0/P;->j(Landroid/view/View;)V

    iget-object v1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->i:Le/v;

    invoke-virtual {v1, v2}, Le/v;->C(Lj0/b0;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract p0(I)V
.end method

.method public q(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Lj0/b0;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lj0/b0;->c()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lj0/b0;->q()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->l0:Lj0/X;

    iget-boolean v4, v4, Lj0/X;->g:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lj0/b0;->j()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract q0(ILj0/P;Lj0/X;)I
.end method

.method public abstract r()Lj0/K;
.end method

.method public final r0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lj0/J;->s0(II)V

    return-void
.end method

.method public s(Landroid/content/Context;Landroid/util/AttributeSet;)Lj0/K;
    .locals 0

    new-instance p0, Lj0/K;

    invoke-direct {p0, p1, p2}, Lj0/K;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public final s0(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lj0/J;->n:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lj0/J;->l:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->p2:Z

    if-nez p1, :cond_0

    iput v0, p0, Lj0/J;->n:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lj0/J;->o:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lj0/J;->m:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->p2:Z

    if-nez p1, :cond_1

    iput v0, p0, Lj0/J;->o:I

    :cond_1
    return-void
.end method

.method public t(Landroid/view/ViewGroup$LayoutParams;)Lj0/K;
    .locals 0

    instance-of p0, p1, Lj0/K;

    if-eqz p0, :cond_0

    new-instance p0, Lj0/K;

    check-cast p1, Lj0/K;

    invoke-direct {p0, p1}, Lj0/K;-><init>(Lj0/K;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Lj0/K;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lj0/K;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Lj0/K;

    invoke-direct {p0, p1}, Lj0/K;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public t0(Landroid/graphics/Rect;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lj0/J;->C()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lj0/J;->D()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lj0/J;->E()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lj0/J;->B()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, Lj0/J;->g(III)I

    move-result p2

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lj0/J;->g(III)I

    move-result p1

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final u(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lj0/J;->a:LD3/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/f;->f(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final u0(II)V
    .locals 8

    invoke-virtual {p0}, Lj0/J;->v()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->v(II)V

    return-void

    :cond_0
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_5

    invoke-virtual {p0, v5}, Lj0/J;->u(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/Rect;

    invoke-virtual {p0, v7, v6}, Lj0/J;->y(Landroid/graphics/Rect;Landroid/view/View;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    move v1, v6

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v4, :cond_3

    move v4, v6

    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v2, :cond_4

    move v2, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lj0/J;->t0(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public final v()I
    .locals 0

    iget-object p0, p0, Lj0/J;->a:LD3/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD3/f;->g()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final v0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lj0/J;->a:LD3/f;

    const/4 p1, 0x0

    iput p1, p0, Lj0/J;->n:I

    iput p1, p0, Lj0/J;->o:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->h:LD3/f;

    iput-object v0, p0, Lj0/J;->a:LD3/f;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lj0/J;->n:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lj0/J;->o:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lj0/J;->l:I

    iput p1, p0, Lj0/J;->m:I

    return-void
.end method

.method public final w0(Landroid/view/View;IILj0/K;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lj0/J;->h:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lj0/J;->K(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lj0/J;->K(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public x(Lj0/P;Lj0/X;)I
    .locals 0

    iget-object p1, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj0/J;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lj0/A;

    invoke-virtual {p0}, Lj0/A;->a()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public x0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public y(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->W(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method

.method public final y0(Landroid/view/View;IILj0/K;)Z
    .locals 1

    iget-boolean p0, p0, Lj0/J;->h:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lj0/J;->K(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lj0/J;->K(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final z()I
    .locals 0

    iget-object p0, p0, Lj0/J;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lj0/A;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj0/A;->a()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public abstract z0(Landroidx/recyclerview/widget/RecyclerView;I)V
.end method
