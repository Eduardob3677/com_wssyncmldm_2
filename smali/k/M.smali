.class public final Lk/M;
.super Lk/x0;
.source "SourceFile"

# interfaces
.implements Lk/O;


# instance fields
.field public D:Ljava/lang/CharSequence;

.field public E:Landroid/widget/ListAdapter;

.field public F:I

.field public final synthetic G:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    iput-object p1, p0, Lk/M;->G:Landroidx/appcompat/widget/AppCompatSpinner;

    const v0, 0x7f040450

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v0, v1}, Lk/x0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, p0, Lk/x0;->l:I

    iput-object p1, p0, Lk/x0;->o:Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/x0;->y:Z

    iget-object p2, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance p1, Lk/K;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lk/K;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lk/x0;->p:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public final e(II)V
    .locals 4

    iget-object v0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    invoke-virtual {p0}, Lk/M;->s()V

    const/4 v2, 0x2

    iget-object v3, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Lk/x0;->r()V

    iget-object v2, p0, Lk/x0;->e:Lk/l0;

    invoke-static {v2, p1}, Lk/G;->d(Landroid/view/View;I)V

    invoke-static {v2, p2}, Lk/G;->c(Landroid/view/View;I)V

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object p2, p0, Lk/M;->G:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lk/x0;->e:Lk/l0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lk/l0;->setListSelectionHidden(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1, p1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lk/E;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lk/E;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Lk/L;

    invoke-direct {p1, p0, p2}, Lk/L;-><init>(Lk/M;Lk/E;)V

    iget-object p0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public final i()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lk/M;->D:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lk/M;->D:Ljava/lang/CharSequence;

    return-void
.end method

.method public final n(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Lk/x0;->n(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lk/M;->E:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lk/M;->F:I

    return-void
.end method

.method public final s()V
    .locals 9

    iget-object v0, p0, Lk/x0;->z:Lk/z;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lk/M;->G:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v1, :cond_1

    iget-object v3, v2, Landroidx/appcompat/widget/AppCompatSpinner;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-static {v2}, Lk/N1;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Landroidx/appcompat/widget/AppCompatSpinner;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v1, v2, Landroidx/appcompat/widget/AppCompatSpinner;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Landroidx/appcompat/widget/AppCompatSpinner;->k:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    move v1, v3

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v2, Landroidx/appcompat/widget/AppCompatSpinner;->i:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lk/M;->E:Landroid/widget/ListAdapter;

    check-cast v6, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, v2, Landroidx/appcompat/widget/AppCompatSpinner;->k:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-le v0, v6, :cond_2

    move v0, v6

    :cond_2
    add-int/lit8 v0, v0, 0x4

    sub-int v6, v5, v3

    sub-int/2addr v6, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk/x0;->q(I)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    if-ne v6, v0, :cond_4

    sub-int v0, v5, v3

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lk/x0;->q(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v6}, Lk/x0;->q(I)V

    :goto_1
    iget v0, v2, Landroidx/appcompat/widget/AppCompatSpinner;->j:I

    if-nez v0, :cond_5

    iget v0, p0, Lk/M;->F:I

    :cond_5
    invoke-static {v2}, Lk/N1;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/2addr v1, v5

    sub-int/2addr v1, v4

    iget v2, p0, Lk/x0;->g:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    goto :goto_2

    :cond_6
    add-int/2addr v3, v0

    add-int/2addr v1, v3

    :goto_2
    iput v1, p0, Lk/x0;->h:I

    return-void
.end method
