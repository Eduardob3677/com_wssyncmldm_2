.class public final Lk/q;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# instance fields
.field public final c:Lk/r;

.field public final d:LD3/e;

.field public final e:Lk/V;

.field public f:Lk/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    invoke-static {p1}, Lk/w1;->a(Landroid/content/Context;)V

    const v7, 0x10103c8

    invoke-direct {p0, p1, p2, v7}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/v1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lk/V;

    invoke-direct {p1, p0}, Lk/V;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/q;->e:Lk/V;

    invoke-virtual {p1, p2, v7}, Lk/V;->f(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lk/V;->b()V

    new-instance p1, LD3/e;

    invoke-direct {p1, p0}, LD3/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/q;->d:LD3/e;

    invoke-virtual {p1, p2, v7}, LD3/e;->l(Landroid/util/AttributeSet;I)V

    new-instance p1, Lk/r;

    invoke-direct {p1, p0}, Lk/r;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/q;->c:Lk/r;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lc/a;->l:[I

    const/4 v8, 0x0

    invoke-static {p1, p2, v2, v7, v8}, LJ/r0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[III)LJ/r0;

    move-result-object p1

    iget-object v0, p1, LJ/r0;->d:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    iget-object v0, p1, LJ/r0;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move v5, v7

    invoke-static/range {v0 .. v6}, LJ/N;->d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v9, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lf1/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/q;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v9, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lf1/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/q;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, LJ/r0;->f(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 v0, 0x7

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk/g0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {p1}, LJ/r0;->n()V

    invoke-direct {p0}, Lk/q;->getEmojiTextViewHelper()Lk/v;

    move-result-object p0

    invoke-virtual {p0, p2, v7}, Lk/v;->b(Landroid/util/AttributeSet;I)V

    return-void

    :goto_1
    invoke-virtual {p1}, LJ/r0;->n()V

    throw p0
.end method

.method private getEmojiTextViewHelper()Lk/v;
    .locals 1

    iget-object v0, p0, Lk/q;->f:Lk/v;

    if-nez v0, :cond_0

    new-instance v0, Lk/v;

    invoke-direct {v0, p0}, Lk/v;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/q;->f:Lk/v;

    :cond_0
    iget-object p0, p0, Lk/q;->f:Lk/v;

    return-object p0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    iget-object v0, p0, Lk/q;->e:Lk/V;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/V;->b()V

    :cond_0
    iget-object v0, p0, Lk/q;->d:LD3/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LD3/e;->a()V

    :cond_1
    iget-object p0, p0, Lk/q;->c:Lk/r;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lk/r;->b()V

    :cond_2
    return-void
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object p0

    return-object p0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lk/q;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD3/e;->e()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lk/q;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD3/e;->f()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lk/q;->c:Lk/r;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk/r;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lk/q;->c:Lk/r;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk/r;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lk/q;->e:Lk/V;

    invoke-virtual {p0}, Lk/V;->d()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lk/q;->e:Lk/V;

    invoke-virtual {p0}, Lk/V;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lf1/a;->Y(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Lk/q;->getEmojiTextViewHelper()Lk/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk/v;->c(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/q;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD3/e;->n()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lk/q;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->o(I)V

    :cond_0
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lf1/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/q;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/q;->c:Lk/r;

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Lk/r;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk/r;->e:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/r;->e:Z

    invoke-virtual {p0}, Lk/r;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/q;->e:Lk/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/V;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/q;->e:Lk/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/V;->b()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 0

    invoke-direct {p0}, Lk/q;->getEmojiTextViewHelper()Lk/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk/v;->d(Z)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/q;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->r(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/q;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->s(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/q;->c:Lk/r;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lk/r;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/r;->c:Z

    invoke-virtual {p0}, Lk/r;->b()V

    :cond_0
    return-void
.end method

.method public setSupportCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/q;->c:Lk/r;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lk/r;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/r;->d:Z

    invoke-virtual {p0}, Lk/r;->b()V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/q;->e:Lk/V;

    invoke-virtual {p0, p1}, Lk/V;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lk/V;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/q;->e:Lk/V;

    invoke-virtual {p0, p1}, Lk/V;->i(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lk/V;->b()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p0, p0, Lk/q;->e:Lk/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk/V;->g(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
