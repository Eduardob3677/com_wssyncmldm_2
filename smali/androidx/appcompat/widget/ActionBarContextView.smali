.class public Landroidx/appcompat/widget/ActionBarContextView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final c:LI3/c;

.field public final d:Landroid/content/Context;

.field public e:Landroidx/appcompat/widget/ActionMenuView;

.field public f:Lk/k;

.field public g:I

.field public h:LJ/a0;

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public final s:I

.field public final t:I

.field public u:Z

.field public final v:I

.field public w:Z

.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v0, 0x7f04001d

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, LI3/c;

    invoke-direct {v2, p0}, LI3/c;-><init>(Landroidx/appcompat/widget/ActionBarContextView;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->c:LI3/c;

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f040003

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroid/content/Context;

    :goto_0
    sget-object v2, Lc/a;->d:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lf1/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x5

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:I

    const/4 p1, 0x4

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->t:I

    const/4 p1, 0x3

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:I

    const/4 p1, 0x2

    const v0, 0x7f0d0076

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/ActionBarContextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/widget/ActionBarContextView;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static f(Landroid/view/View;II)I
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static h(IIILandroid/view/View;Z)I
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    if-eqz p4, :cond_0

    sub-int p1, p0, v0

    add-int/2addr v1, p2

    invoke-virtual {p3, p1, p2, p0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    add-int p1, p0, v0

    add-int/2addr v1, p2

    invoke-virtual {p3, p0, p2, p1, v1}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p4, :cond_1

    neg-int v0, v0

    :cond_1
    return v0
.end method


# virtual methods
.method public final c(Li/b;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->x:Z

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:I

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    const v3, 0x7f0a0046

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/view/View;

    new-instance v3, Lk/b;

    invoke-direct {v3, v2, p1}, Lk/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Li/b;->e()Lj/i;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lk/k;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lk/k;->i()Z

    iget-object v1, v1, Lk/k;->v:Lk/f;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lj/s;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Lj/s;->j:Lj/z;

    invoke-virtual {v1}, Lj/z;->dismiss()V

    :cond_2
    new-instance v1, Lk/k;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lk/k;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lk/k;

    iput-boolean v0, v1, Lk/k;->n:Z

    iput-boolean v0, v1, Lk/k;->o:Z

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lk/k;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroid/content/Context;

    invoke-virtual {p1, v1, v3}, Lj/i;->b(Lj/u;Landroid/content/Context;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lk/k;

    iget-object v1, p1, Lk/k;->j:Lj/w;

    if-nez v1, :cond_3

    iget-object v3, p1, Lk/k;->f:Landroid/view/LayoutInflater;

    iget v4, p1, Lk/k;->h:I

    invoke-virtual {v3, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lj/w;

    iput-object v2, p1, Lk/k;->j:Lj/w;

    iget-object v3, p1, Lk/k;->e:Lj/i;

    invoke-interface {v2, v3}, Lj/w;->a(Lj/i;)V

    invoke-virtual {p1}, Lk/k;->f()V

    :cond_3
    iget-object v2, p1, Lk/k;->j:Lj/w;

    if-eq v1, v2, :cond_4

    move-object v1, v2

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Lk/k;)V

    :cond_4
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    iput-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:Landroidx/appcompat/widget/ActionMenuView;

    sget-object p1, LJ/Q;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0071

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->t:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Landroid/widget/TextView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:Landroidx/appcompat/widget/ActionMenuView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lk/k;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lc/a;->a:[I

    const/4 v1, 0x0

    const v2, 0x7f040006

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lk/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/k;->k()V

    :cond_0
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAnimatedVisibility()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->h:LJ/a0;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->c:LI3/c;

    iget p0, p0, LI3/c;->b:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getContentHeight()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:I

    return p0
.end method

.method public getIsActionModeAccessibilityOn()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->w:Z

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final i(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->h:LJ/a0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LJ/a0;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final j(IJ)LJ/a0;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->h:LJ/a0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LJ/a0;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->c:LI3/c;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-static {p0}, LJ/Q;->a(Landroid/view/View;)LJ/a0;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, LJ/a0;->a(F)V

    invoke-virtual {p0, p2, p3}, LJ/a0;->c(J)V

    iget-object p2, v0, LI3/c;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p0, p2, Landroidx/appcompat/widget/ActionBarContextView;->h:LJ/a0;

    iput p1, v0, LI3/c;->b:I

    invoke-virtual {p0, v0}, LJ/a0;->d(LJ/b0;)V

    return-object p0

    :cond_2
    invoke-static {p0}, LJ/Q;->a(Landroid/view/View;)LJ/a0;

    move-result-object p0

    invoke-virtual {p0, v1}, LJ/a0;->a(F)V

    invoke-virtual {p0, p2, p3}, LJ/a0;->c(J)V

    iget-object p2, v0, LI3/c;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p0, p2, Landroidx/appcompat/widget/ActionBarContextView;->h:LJ/a0;

    iput p1, v0, LI3/c;->b:I

    invoke-virtual {p0, v0}, LJ/a0;->d(LJ/b0;)V

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07030b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lc/a;->d:[I

    const v4, 0x1010394

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->g(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lc/a;->d:[I

    const/4 v1, 0x0

    const v2, 0x1010394

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07030b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lk/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/k;->i()Z

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lk/k;

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

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Z

    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Z

    :cond_3
    return v4
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInitializeAccessibilityEvent Check ActionMode :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionBarContextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->x:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->w:Z

    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->x:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->w:Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onInitializeAccessibilityEvent mIsActionModeAccessibilityOn :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->w:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    invoke-static {p0}, Lk/N1;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eq p3, v2, :cond_5

    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    if-eqz p1, :cond_2

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    if-eqz p1, :cond_3

    sub-int/2addr v0, v3

    goto :goto_3

    :cond_3
    add-int/2addr v0, v3

    :goto_3
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    invoke-static {v0, v1, p5, v3, p1}, Landroidx/appcompat/widget/ActionBarContextView;->h(IIILandroid/view/View;Z)I

    move-result v3

    add-int/2addr v3, v0

    if-eqz p1, :cond_4

    sub-int/2addr v3, p3

    :goto_4
    move v0, v3

    goto :goto_5

    :cond_4
    add-int/2addr v3, p3

    goto :goto_4

    :cond_5
    :goto_5
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_6

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/view/View;

    if-nez v3, :cond_6

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eq p3, v2, :cond_6

    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, p5, p3, p1}, Landroidx/appcompat/widget/ActionBarContextView;->h(IIILandroid/view/View;Z)I

    move-result p3

    add-int/2addr v0, p3

    :cond_6
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/view/View;

    if-eqz p3, :cond_7

    invoke-static {v0, v1, p5, p3, p1}, Landroidx/appcompat/widget/ActionBarContextView;->h(IIILandroid/view/View;Z)I

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    goto :goto_6

    :cond_8
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    :goto_6
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_9

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p2, v1, p5, p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->h(IIILandroid/view/View;Z)I

    :cond_9
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_19

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07030b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:I

    if-lez v3, :cond_0

    add-int/2addr v3, v1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr p2, v4

    sub-int v4, v3, v1

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    invoke-static {v7, p2, v6}, Landroidx/appcompat/widget/ActionBarContextView;->f(Landroid/view/View;II)I

    move-result p2

    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    sub-int/2addr p2, v8

    :cond_1
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-ne v7, p0, :cond_2

    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v7, p2, v6}, Landroidx/appcompat/widget/ActionBarContextView;->f(Landroid/view/View;II)I

    move-result p2

    :cond_2
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/view/View;

    if-nez v7, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    sget-object v9, Lc/a;->A:[I

    iget v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:I

    invoke-virtual {v7, v10, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    iget v9, v10, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v9

    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->fontScale:F

    const v11, 0x3f99999a    # 1.2f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget-object v11, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:Landroid/widget/TextView;

    mul-float/2addr v9, v10

    invoke-virtual {v11, v0, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_3
    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:Landroid/widget/TextView;

    invoke-virtual {v10, v0, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    :goto_1
    iget-object v9, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    const/16 v10, 0x8

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v10, :cond_a

    :cond_5
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f070507

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sget-object v9, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    if-nez v9, :cond_6

    move v9, v0

    goto :goto_2

    :cond_6
    move v9, v8

    :goto_2
    iget-object v11, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:Landroid/widget/TextView;

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v9, :cond_7

    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_7
    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_3
    iget-object v12, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v11, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Landroid/widget/TextView;

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v9, :cond_9

    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_9
    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_4
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-boolean v7, p0, Landroidx/appcompat/widget/ActionBarContextView;->u:Z

    if-eqz v7, :cond_e

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v9, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7, v6}, Landroid/view/View;->measure(II)V

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-gt v6, p2, :cond_b

    move v7, v0

    goto :goto_5

    :cond_b
    move v7, v8

    :goto_5
    if-eqz v7, :cond_c

    sub-int/2addr p2, v6

    :cond_c
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_d

    move v10, v8

    :cond_d
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_e
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    invoke-static {v7, p2, v6}, Landroidx/appcompat/widget/ActionBarContextView;->f(Landroid/view/View;II)I

    move-result p2

    :cond_f
    :goto_6
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/view/View;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x2

    if-eq v7, v9, :cond_10

    move v10, v2

    goto :goto_7

    :cond_10
    move v10, v5

    :goto_7
    if-ltz v7, :cond_11

    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_11
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v9, :cond_12

    goto :goto_8

    :cond_12
    move v2, v5

    :goto_8
    if-ltz v6, :cond_13

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_13
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/view/View;

    invoke-static {p2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v5, p2, v2}, Landroid/view/View;->measure(II)V

    :cond_14
    iget p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:I

    if-gtz p2, :cond_17

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move v2, v8

    :goto_9
    if-ge v8, p2, :cond_16

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    if-le v3, v2, :cond_15

    move v2, v3

    :cond_15
    add-int/2addr v8, v0

    goto :goto_9

    :cond_16
    invoke-virtual {p0, p1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_a

    :cond_17
    invoke-virtual {p0, p1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_a
    return-void

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p2, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p2, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Z

    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Z

    :cond_3
    return v3
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:I

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/LinearLayout;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    invoke-static {p0, p1}, LJ/Q;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->u:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->u:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->i(I)V

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
