.class public Landroidx/appcompat/widget/ActionMenuView;
.super Lk/q0;
.source "SourceFile"

# interfaces
.implements Lj/h;
.implements Lj/w;


# instance fields
.field public final A:I

.field public final B:I

.field public C:Lk/n;

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public final J:Ljava/lang/String;

.field public final K:Z

.field public r:Lj/i;

.field public s:Landroid/content/Context;

.field public t:I

.field public u:Z

.field public v:Lk/k;

.field public w:Lj/t;

.field public x:Lj/g;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lk/q0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lk/q0;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->A:I

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->B:I

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->s:Landroid/content/Context;

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:I

    invoke-static {}, Lp0/a;->k()I

    move-result v1

    const v2, 0x1fc34

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->K:Z

    sget-object v2, Lc/a;->C:[I

    const v3, 0x7f04000c

    invoke-virtual {p1, p2, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/ActionMenuView;->D:I

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/appcompat/widget/ActionMenuView;->E:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const v3, 0x7f040021

    invoke-virtual {p1, p2, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->F:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->I:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1301a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->J:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07030f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->D:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->E:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07030a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->F:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070308

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070307

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->H:I

    return-void
.end method

.method public static l()Lk/m;
    .locals 2

    new-instance v0, Lk/m;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lk/m;->a:Z

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static m(Landroid/view/ViewGroup$LayoutParams;)Lk/m;
    .locals 1

    if-eqz p0, :cond_2

    instance-of v0, p0, Lk/m;

    if-eqz v0, :cond_0

    new-instance v0, Lk/m;

    check-cast p0, Lk/m;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p0, p0, Lk/m;->a:Z

    iput-boolean p0, v0, Lk/m;->a:Z

    goto :goto_0

    :cond_0
    new-instance v0, Lk/m;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz p0, :cond_1

    const/16 p0, 0x10

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    return-object v0

    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->l()Lk/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lj/i;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    return-void
.end method

.method public final b(Lj/k;)Z
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lj/i;->q(Landroid/view/MenuItem;Lj/u;I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lk/m;

    return p0
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->l()Lk/m;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lk/m;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->m(Landroid/view/ViewGroup$LayoutParams;)Lk/m;

    move-result-object p0

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lj/i;

    invoke-direct {v1, v0}, Lj/i;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    new-instance v2, Lk/A;

    invoke-direct {v2, p0}, Lk/A;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lj/i;->e:Lj/g;

    new-instance v1, Lk/k;

    invoke-direct {v1, v0}, Lk/k;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lk/k;->n:Z

    iput-boolean v0, v1, Lk/k;->o:Z

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Lj/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LP1/e;

    const/16 v2, 0xf

    invoke-direct {v0, v2}, LP1/e;-><init>(I)V

    :goto_0
    iput-object v0, v1, Lk/k;->g:Lj/t;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->s:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lj/i;->b(Lj/u;Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    iput-object p0, v0, Lk/k;->j:Lj/w;

    iget-object v0, v0, Lk/k;->e:Lj/i;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    return-object p0
.end method

.method public getOverflowBadgeText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->J:Ljava/lang/String;

    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    iget-boolean v0, p0, Lk/k;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/k;->k:Lk/i;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lk/i;->e:Landroid/view/View;

    check-cast p0, Lk/x;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lk/k;->m:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lk/k;->l:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getPopupTheme()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:I

    return p0
.end method

.method public getSumOfDigitsInBadges()I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    iget-object v2, v2, Lj/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    invoke-virtual {v2, v0}, Lj/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Lj/k;

    invoke-virtual {v2}, Lj/k;->isVisible()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic h()Lk/p0;
    .locals 0

    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->l()Lk/m;

    move-result-object p0

    return-object p0
.end method

.method public final i(Landroid/util/AttributeSet;)Lk/p0;
    .locals 1

    new-instance v0, Lk/m;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic j(Landroid/view/ViewGroup$LayoutParams;)Lk/p0;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->m(Landroid/view/ViewGroup$LayoutParams;)Lk/m;

    move-result-object p0

    return-object p0
.end method

.method public final n(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge p1, p0, :cond_1

    instance-of p0, v1, Lk/l;

    if-eqz p0, :cond_1

    check-cast v1, Lk/l;

    invoke-interface {v1}, Lk/l;->a()Z

    move-result v0

    :cond_1
    if-lez p1, :cond_2

    instance-of p0, v2, Lk/l;

    if-eqz p0, :cond_2

    check-cast v2, Lk/l;

    invoke-interface {v2}, Lk/l;->b()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk/k;->k()V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    invoke-virtual {p1}, Lk/k;->f()V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    invoke-virtual {p1}, Lk/k;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    invoke-virtual {p1}, Lk/k;->i()Z

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    invoke-virtual {p1}, Lk/k;->l()Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lc/a;->C:[I

    const/4 v1, 0x0

    const v2, 0x7f04000c

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/ActionMenuView;->D:I

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/ActionMenuView;->E:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v5, 0x7f040021

    invoke-virtual {p1, v1, v0, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->F:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->I:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->K:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07030f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->D:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->E:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07030a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->F:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070308

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070307

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->H:I

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/k;->i()Z

    iget-object p0, p0, Lk/k;->v:Lk/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lj/s;->j:Lj/z;

    invoke-virtual {p0}, Lj/z;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->y:Z

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Lk/q0;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lk/q0;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p0 .. p0}, Lk/N1;->a(Landroid/view/View;)Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v8, v1, :cond_5

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lk/m;

    iget-boolean v14, v11, Lk/m;->a:Z

    if-eqz v14, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->n(I)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/2addr v9, v3

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v9

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v9

    :goto_1
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v5, v9

    move v9, v12

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v5, v7

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->n(I)Z

    add-int/lit8 v10, v10, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_6

    if-nez v9, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v1, v4

    add-int/2addr v3, v2

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 v3, v9, 0x1

    sub-int/2addr v10, v3

    if-lez v10, :cond_7

    div-int v3, v5, v10

    :goto_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    :goto_4
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move v7, v4

    :goto_5
    if-ge v7, v1, :cond_d

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lk/m;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_9

    iget-boolean v8, v6, Lk/m;->a:Z

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    sub-int/2addr v5, v8

    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    move v7, v4

    :goto_7
    if-ge v7, v1, :cond_d

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lk/m;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_c

    iget-boolean v8, v6, Lk/m;->a:Z

    if-eqz v8, :cond_b

    goto :goto_8

    :cond_b
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    add-int/2addr v8, v5

    move v5, v8

    :cond_c
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method public final onMeasure(II)V
    .locals 32

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->y:Z

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuView;->y:Z

    if-eq v2, v3, :cond_1

    iput v4, v0, Landroidx/appcompat/widget/ActionMenuView;->z:I

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuView;->y:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    if-eqz v3, :cond_2

    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->z:I

    if-eq v2, v7, :cond_2

    iput v2, v0, Landroidx/appcompat/widget/ActionMenuView;->z:I

    invoke-virtual {v3, v5}, Lj/i;->p(Z)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuView;->y:Z

    if-eqz v3, :cond_2e

    if-lez v2, :cond_2e

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v8

    const/4 v8, -0x2

    move/from16 v11, p2

    invoke-static {v11, v10, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    sub-int/2addr v3, v9

    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->A:I

    div-int v11, v3, v9

    rem-int v12, v3, v9

    if-nez v11, :cond_3

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    goto/16 :goto_20

    :cond_3
    div-int/2addr v12, v11

    add-int/2addr v12, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v13, v4

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v19, v16

    move/from16 v20, v19

    const-wide/16 v17, 0x0

    :goto_1
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->B:I

    if-ge v15, v9, :cond_12

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    move/from16 v23, v7

    move/from16 v22, v10

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_4
    instance-of v4, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    const/4 v5, 0x1

    add-int/2addr v13, v5

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v1, v6, v5, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lk/m;

    iput-boolean v5, v6, Lk/m;->f:Z

    iput v5, v6, Lk/m;->c:I

    iput v5, v6, Lk/m;->b:I

    iput-boolean v5, v6, Lk/m;->d:Z

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-eqz v4, :cond_6

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ActionMenuItemView;->q()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v6, Lk/m;->e:Z

    iget-boolean v5, v6, Lk/m;->a:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    move v5, v11

    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move/from16 v23, v7

    move-object/from16 v7, v22

    check-cast v7, Lk/m;

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    move/from16 v24, v13

    sub-int v13, v22, v10

    move/from16 v22, v10

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    if-eqz v4, :cond_8

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->q()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    if-lez v5, :cond_c

    if-eqz v4, :cond_a

    const/4 v13, 0x2

    if-lt v5, v13, :cond_c

    :cond_a
    mul-int/2addr v5, v12

    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v5, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int v13, v5, v12

    rem-int/2addr v5, v12

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    add-int/2addr v13, v5

    :cond_b
    if-eqz v4, :cond_d

    const/4 v5, 0x2

    if-ge v13, v5, :cond_d

    const/4 v13, 0x2

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    :cond_d
    :goto_6
    iget-boolean v5, v7, Lk/m;->a:Z

    if-nez v5, :cond_e

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    iput-boolean v4, v7, Lk/m;->d:Z

    iput v13, v7, Lk/m;->b:I

    mul-int v4, v13, v12

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v4, v10}, Landroid/view/View;->measure(II)V

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-boolean v4, v6, Lk/m;->d:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    :cond_f
    const/4 v4, 0x1

    :goto_8
    iget-boolean v5, v6, Lk/m;->a:Z

    if-eqz v5, :cond_10

    move/from16 v16, v4

    :cond_10
    sub-int/2addr v11, v13

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    move/from16 v5, v20

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    if-ne v13, v4, :cond_11

    shl-int v1, v4, v15

    int-to-long v5, v1

    or-long v5, v17, v5

    move-wide/from16 v17, v5

    :cond_11
    move/from16 v13, v24

    :goto_9
    add-int/2addr v15, v4

    move v5, v4

    move/from16 v10, v22

    move/from16 v7, v23

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_12
    move/from16 v23, v7

    move/from16 v5, v20

    if-eqz v16, :cond_13

    const/4 v1, 0x2

    if-ne v13, v1, :cond_13

    const/4 v1, 0x1

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    :goto_a
    const/4 v4, 0x0

    :goto_b
    const-wide/16 v24, 0x1

    if-lez v19, :cond_1e

    if-lez v11, :cond_1e

    const v7, 0x7fffffff

    const/4 v10, 0x0

    const/4 v15, 0x0

    const-wide/16 v26, 0x0

    :goto_c
    if-ge v10, v9, :cond_17

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move/from16 v22, v4

    move-object/from16 v4, v20

    check-cast v4, Lk/m;

    move/from16 v20, v5

    iget-boolean v5, v4, Lk/m;->d:Z

    if-nez v5, :cond_14

    goto :goto_d

    :cond_14
    iget v4, v4, Lk/m;->b:I

    if-ge v4, v7, :cond_16

    shl-long v26, v24, v10

    move v7, v4

    const/4 v15, 0x1

    :cond_15
    :goto_d
    const/16 v21, 0x1

    goto :goto_e

    :cond_16
    if-ne v4, v7, :cond_15

    shl-long v4, v24, v10

    or-long v4, v26, v4

    const/16 v21, 0x1

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v26, v4

    :goto_e
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v20

    move/from16 v4, v22

    goto :goto_c

    :cond_17
    move/from16 v22, v4

    move/from16 v20, v5

    const/16 v21, 0x1

    or-long v17, v17, v26

    if-le v15, v11, :cond_18

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v2, v21

    goto :goto_12

    :cond_18
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v9, :cond_1d

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lk/m;

    shl-int v15, v21, v4

    move/from16 v28, v2

    move/from16 v29, v3

    int-to-long v2, v15

    and-long v24, v26, v2

    const-wide/16 v30, 0x0

    cmp-long v15, v24, v30

    if-nez v15, :cond_1a

    iget v5, v10, Lk/m;->b:I

    if-ne v5, v7, :cond_19

    or-long v17, v17, v2

    :cond_19
    const/4 v2, 0x1

    goto :goto_11

    :cond_1a
    if-eqz v1, :cond_1b

    iget-boolean v2, v10, Lk/m;->e:Z

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    if-ne v11, v2, :cond_1c

    add-int v3, v6, v12

    const/4 v15, 0x0

    invoke-virtual {v5, v3, v15, v6, v15}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_10

    :cond_1b
    const/4 v2, 0x1

    :cond_1c
    :goto_10
    iget v3, v10, Lk/m;->b:I

    add-int/2addr v3, v2

    iput v3, v10, Lk/m;->b:I

    iput-boolean v2, v10, Lk/m;->f:Z

    add-int/lit8 v11, v11, -0x1

    :goto_11
    add-int/2addr v4, v2

    move/from16 v21, v2

    move/from16 v2, v28

    move/from16 v3, v29

    goto :goto_f

    :cond_1d
    move/from16 v28, v2

    move/from16 v2, v21

    move v4, v2

    move/from16 v5, v20

    move/from16 v2, v28

    goto/16 :goto_b

    :cond_1e
    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v22, v4

    move/from16 v20, v5

    const/4 v2, 0x1

    :goto_12
    if-nez v16, :cond_1f

    if-ne v13, v2, :cond_1f

    move v1, v2

    goto :goto_13

    :cond_1f
    const/4 v1, 0x0

    :goto_13
    if-lez v11, :cond_2a

    const-wide/16 v3, 0x0

    cmp-long v5, v17, v3

    if-eqz v5, :cond_2a

    sub-int/2addr v13, v2

    if-lt v11, v13, :cond_20

    if-nez v1, :cond_20

    if-le v14, v2, :cond_2a

    :cond_20
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    if-nez v1, :cond_22

    and-long v3, v17, v24

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lk/m;

    iget-boolean v1, v1, Lk/m;->e:Z

    if-nez v1, :cond_21

    sub-float/2addr v2, v3

    :cond_21
    const/4 v1, 0x1

    add-int/lit8 v4, v9, -0x1

    shl-int v5, v1, v4

    int-to-long v5, v5

    and-long v5, v17, v5

    const-wide/16 v13, 0x0

    cmp-long v1, v5, v13

    if-eqz v1, :cond_22

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lk/m;

    iget-boolean v1, v1, Lk/m;->e:Z

    if-nez v1, :cond_22

    sub-float/2addr v2, v3

    :cond_22
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_23

    mul-int/2addr v11, v12

    int-to-float v1, v11

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_14

    :cond_23
    const/4 v1, 0x0

    :goto_14
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v9, :cond_2a

    const/4 v3, 0x1

    shl-int v4, v3, v2

    int-to-long v3, v4

    and-long v3, v17, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    const/4 v3, 0x1

    const/4 v7, 0x2

    goto :goto_17

    :cond_24
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lk/m;

    instance-of v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_26

    iput v1, v4, Lk/m;->c:I

    const/4 v3, 0x1

    iput-boolean v3, v4, Lk/m;->f:Z

    if-nez v2, :cond_25

    iget-boolean v3, v4, Lk/m;->e:Z

    if-nez v3, :cond_25

    neg-int v3, v1

    const/4 v7, 0x2

    div-int/2addr v3, v7

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_16

    :cond_25
    const/4 v7, 0x2

    :goto_16
    const/4 v3, 0x1

    const/16 v22, 0x1

    goto :goto_17

    :cond_26
    const/4 v7, 0x2

    iget-boolean v3, v4, Lk/m;->a:Z

    if-eqz v3, :cond_27

    iput v1, v4, Lk/m;->c:I

    const/4 v3, 0x1

    iput-boolean v3, v4, Lk/m;->f:Z

    neg-int v10, v1

    div-int/2addr v10, v7

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v3

    goto :goto_17

    :cond_27
    const/4 v3, 0x1

    if-eqz v2, :cond_28

    div-int/lit8 v10, v1, 0x2

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_28
    add-int/lit8 v10, v9, -0x1

    if-eq v2, v10, :cond_29

    div-int/lit8 v10, v1, 0x2

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_29
    :goto_17
    add-int/2addr v2, v3

    goto :goto_15

    :cond_2a
    move/from16 v4, v22

    if-eqz v4, :cond_2c

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v9, :cond_2c

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lk/m;

    iget-boolean v3, v2, Lk/m;->f:Z

    if-nez v3, :cond_2b

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_19

    :cond_2b
    iget v3, v2, Lk/m;->b:I

    mul-int/2addr v3, v12

    iget v2, v2, Lk/m;->c:I

    add-int/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v3, v8}, Landroid/view/View;->measure(II)V

    const/4 v1, 0x1

    :goto_19
    add-int/2addr v4, v1

    goto :goto_18

    :cond_2c
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v1, v28

    if-eq v1, v2, :cond_2d

    move/from16 v7, v20

    :goto_1a
    move/from16 v3, v29

    goto :goto_1b

    :cond_2d
    move/from16 v7, v23

    goto :goto_1a

    :goto_1b
    invoke-virtual {v0, v3, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    goto/16 :goto_20

    :cond_2e
    move/from16 v11, p2

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v2, :cond_36

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lk/m;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    instance-of v6, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_34

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->D:I

    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->E:I

    sget-object v8, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v6, v4, v7, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/4 v4, 0x1

    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_33

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->q()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_2f

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->H:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1d
    const/4 v1, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1f

    :cond_2f
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->H:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1d

    :cond_30
    iget-boolean v6, v0, Landroidx/appcompat/widget/ActionMenuView;->K:Z

    if-eqz v6, :cond_31

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setIsLastItem(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->D:I

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v4, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    move v1, v6

    goto :goto_1f

    :cond_31
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setIsLastItem(Z)V

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->I:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->F:I

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    invoke-virtual {v1, v3, v7, v4, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_32
    :goto_1e
    const/4 v1, 0x1

    goto :goto_1f

    :cond_33
    const/4 v7, 0x0

    if-ge v5, v6, :cond_32

    check-cast v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->q()Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v1, v7}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setIsLastItem(Z)V

    goto :goto_1e

    :cond_34
    move v7, v4

    iget-boolean v3, v3, Lk/m;->a:Z

    if-eqz v3, :cond_32

    instance-of v3, v1, Lk/i;

    if-eqz v3, :cond_35

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->F:I

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    invoke-virtual {v3, v4, v7, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->I:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1e

    :cond_35
    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->F:I

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    sget-object v6, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v3, v7, v4, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->I:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1e

    :goto_1f
    add-int/2addr v5, v1

    goto/16 :goto_1c

    :cond_36
    invoke-super/range {p0 .. p2}, Lk/q0;->onMeasure(II)V

    :goto_20
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    iput-boolean p1, p0, Lk/k;->s:Z

    return-void
.end method

.method public setOnMenuItemClickListener(Lk/n;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Lk/n;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    iget-boolean v0, p0, Lk/k;->z:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/k;->k:Lk/i;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lk/i;->e:Landroid/view/View;

    check-cast p0, Lk/x;

    invoke-virtual {p0, p1}, Lk/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/k;->m:Z

    iput-object p1, p0, Lk/k;->l:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->s:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->s:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Lk/k;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    iput-object p0, p1, Lk/k;->j:Lj/w;

    iget-object p1, p1, Lk/k;->e:Lj/i;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Lj/i;

    return-void
.end method
