.class public final Lj/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lj/y;
.implements Lj/u;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public c:Landroid/graphics/Rect;

.field public final d:Landroid/content/Context;

.field public final e:Lj/i;

.field public final f:Lj/f;

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Lk/B0;

.field public final l:Z

.field public m:Lk/l0;

.field public n:Z

.field public final o:LR1/e;

.field public final p:LS1/m;

.field public q:Landroid/widget/PopupWindow$OnDismissListener;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Lj/t;

.field public u:Landroid/view/ViewTreeObserver;

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Lj/i;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/z;->l:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lj/z;->m:Lk/l0;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lj/z;->n:Z

    new-instance v2, LR1/e;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, LR1/e;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lj/z;->o:LR1/e;

    new-instance v2, LS1/m;

    invoke-direct {v2, v3, p0}, LS1/m;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lj/z;->p:LS1/m;

    iput v0, p0, Lj/z;->y:I

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    new-instance v3, Li/e;

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, p3, v2}, Li/e;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lj/z;->d:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lj/z;->d:Landroid/content/Context;

    :goto_0
    iput-object p5, p0, Lj/z;->e:Lj/i;

    instance-of v2, p5, Lj/A;

    iput-boolean v2, p0, Lj/z;->l:Z

    iput-boolean p6, p0, Lj/z;->g:Z

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    iget-object v2, p5, Lj/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lj/z;->e:Lj/i;

    invoke-virtual {v3, v0}, Lj/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lj/k;

    invoke-virtual {v3}, Lj/k;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lj/f;

    iget-boolean v2, p0, Lj/z;->g:Z

    const v3, 0x7f0d0099

    invoke-direct {v0, p5, p6, v2, v3}, Lj/f;-><init>(Lj/i;Landroid/view/LayoutInflater;ZI)V

    iput-object v0, p0, Lj/z;->f:Lj/f;

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lj/f;

    iget-boolean v2, p0, Lj/z;->g:Z

    const v3, 0x7f0d0098

    invoke-direct {v0, p5, p6, v2, v3}, Lj/f;-><init>(Lj/i;Landroid/view/LayoutInflater;ZI)V

    iput-object v0, p0, Lj/z;->f:Lj/f;

    :goto_2
    iput p1, p0, Lj/z;->i:I

    iput p2, p0, Lj/z;->j:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    iget-object v0, p0, Lj/z;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07041a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p6

    iget p6, p6, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p6, v0

    iput p6, p0, Lj/z;->h:I

    iput-object p4, p0, Lj/z;->r:Landroid/view/View;

    new-instance p4, Lk/B0;

    iget-object p6, p0, Lj/z;->d:Landroid/content/Context;

    invoke-direct {p4, p6, v1, p1, p2}, Lk/x0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p4, p0, Lj/z;->k:Lk/B0;

    iget-boolean p1, p0, Lj/z;->g:Z

    iput-boolean p1, p4, Lk/x0;->A:Z

    invoke-virtual {p5, p0, p3}, Lj/i;->b(Lj/u;Landroid/content/Context;)V

    return-void
.end method

.method public static i(Lj/f;Landroid/content/Context;I)I
    .locals 10

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lj/f;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move-object v7, v4

    move-object v8, v7

    :goto_0
    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v6, :cond_0

    move-object v8, v4

    move v6, v9

    :cond_0
    if-nez v7, :cond_1

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0, v0, v8, v7}, Lj/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lt v9, p2, :cond_2

    return p2

    :cond_2
    if-le v9, v5, :cond_3

    move v5, v9

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method public static k(Lj/i;)Z
    .locals 5

    iget-object v0, p0, Lj/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lj/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public final a(Lj/i;Z)V
    .locals 1

    iget-object v0, p0, Lj/z;->e:Lj/i;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lj/z;->dismiss()V

    iget-object p0, p0, Lj/z;->t:Lj/t;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lj/t;->a(Lj/i;Z)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lj/z;->v:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lj/z;->k:Lk/B0;

    iget-object p0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Landroid/content/Context;Lj/i;)V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Lj/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lj/z;->k:Lk/B0;

    invoke-virtual {p0}, Lk/x0;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e(Lj/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/z;->w:Z

    iget-object p0, p0, Lj/z;->f:Lj/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final g(Lj/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h(Lj/A;)Z
    .locals 9

    invoke-virtual {p1}, Lj/i;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-instance v0, Lj/s;

    iget-object v6, p0, Lj/z;->s:Landroid/view/View;

    iget-object v5, p0, Lj/z;->d:Landroid/content/Context;

    iget-boolean v8, p0, Lj/z;->g:Z

    iget v3, p0, Lj/z;->i:I

    iget v4, p0, Lj/z;->j:I

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lj/s;-><init>(IILandroid/content/Context;Landroid/view/View;Lj/i;Z)V

    iget-object v2, p0, Lj/z;->t:Lj/t;

    iput-object v2, v0, Lj/s;->i:Lj/t;

    iget-object v3, v0, Lj/s;->j:Lj/z;

    if-eqz v3, :cond_0

    iput-object v2, v3, Lj/z;->t:Lj/t;

    :cond_0
    invoke-static {p1}, Lj/z;->k(Lj/i;)Z

    move-result v2

    iput-boolean v2, v0, Lj/s;->h:Z

    iget-object v3, v0, Lj/s;->j:Lj/z;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lj/z;->f:Lj/f;

    iput-boolean v2, v3, Lj/f;->g:Z

    :cond_1
    iget-object v2, p0, Lj/z;->q:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object v2, v0, Lj/s;->k:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    iput-object v2, p0, Lj/z;->q:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v3, p0, Lj/z;->e:Lj/i;

    iget-object v4, v3, Lj/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {v3, v5}, Lj/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v7

    if-ne p1, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v2

    :goto_1
    iget-object v4, p0, Lj/z;->f:Lj/f;

    invoke-virtual {v4}, Lj/f;->getCount()I

    move-result v5

    move v7, v1

    :goto_2
    if-ge v7, v5, :cond_5

    invoke-virtual {v4, v7}, Lj/f;->b(I)Lj/k;

    move-result-object v8

    if-ne v6, v8, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, -0x1

    :goto_3
    iget-object v4, p0, Lj/z;->m:Lk/l0;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v7, v2

    if-ltz v7, :cond_6

    iget-object v2, p0, Lj/z;->m:Lk/l0;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    :cond_6
    iget-object v2, p0, Lj/z;->m:Lk/l0;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    :cond_8
    iget v2, p0, Lj/z;->y:I

    iput v2, v0, Lj/s;->g:I

    invoke-virtual {v3, v1}, Lj/i;->c(Z)V

    invoke-virtual {v0}, Lj/s;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    iget-object v2, v0, Lj/s;->f:Landroid/view/View;

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v3, v3}, Lj/s;->d(ZZ)V

    :goto_4
    iget-object p0, p0, Lj/z;->t:Lj/t;

    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Lj/t;->b(Lj/i;)Z

    :cond_b
    return v3

    :cond_c
    :goto_5
    return v1
.end method

.method public final j()Lk/l0;
    .locals 0

    iget-object p0, p0, Lj/z;->k:Lk/B0;

    iget-object p0, p0, Lk/x0;->e:Lk/l0;

    return-object p0
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/z;->v:Z

    iget-object v1, p0, Lj/z;->e:Lj/i;

    invoke-virtual {v1, v0}, Lj/i;->c(Z)V

    iget-object v0, p0, Lj/z;->u:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj/z;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lj/z;->u:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lj/z;->u:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lj/z;->o:LR1/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lj/z;->u:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lj/z;->s:Landroid/view/View;

    iget-object v1, p0, Lj/z;->p:LS1/m;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lj/z;->q:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Lj/f;

    goto :goto_0

    :cond_0
    move-object p2, p1

    check-cast p2, Lj/f;

    :goto_0
    iget-object p2, p2, Lj/f;->c:Lj/i;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p0, p3}, Lj/i;->q(Landroid/view/MenuItem;Lj/u;I)Z

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lj/z;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
