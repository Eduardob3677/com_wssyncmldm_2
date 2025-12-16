.class public Lk/o;
.super Landroid/widget/AutoCompleteTextView;
.source "SourceFile"


# instance fields
.field public final c:LD3/e;

.field public final d:Lk/V;

.field public final e:Le/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-static {p1}, Lk/w1;->a(Landroid/content/Context;)V

    const v0, 0x7f040043

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/v1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, LD3/e;

    invoke-direct {p1, p0}, LD3/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/o;->c:LD3/e;

    invoke-virtual {p1, p2, v0}, LD3/e;->l(Landroid/util/AttributeSet;I)V

    new-instance p1, Lk/V;

    invoke-direct {p1, p0}, Lk/V;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/o;->d:Lk/V;

    invoke-virtual {p1, p2, v0}, Lk/V;->f(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lk/V;->b()V

    new-instance p1, Le/v;

    invoke-direct {p1, p0}, Le/v;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Lk/o;->e:Le/v;

    invoke-virtual {p1, p2, v0}, Le/v;->v(Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p2

    instance-of v0, p2, Landroid/text/method/NumberKeyListener;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    invoke-super {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    invoke-super {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    invoke-super {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    invoke-virtual {p1, p2}, Le/v;->q(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-super {p0, v3}, Landroid/widget/TextView;->setRawInputType(I)V

    invoke-super {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-super {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lk/o;->c:LD3/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LD3/e;->a()V

    :cond_0
    iget-object p0, p0, Lk/o;->d:Lk/V;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/V;->b()V

    :cond_1
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

    iget-object p0, p0, Lk/o;->c:LD3/e;

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

    iget-object p0, p0, Lk/o;->c:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD3/e;->f()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lk/o;->d:Lk/V;

    invoke-virtual {p0}, Lk/V;->d()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lk/o;->d:Lk/V;

    invoke-virtual {p0}, Lk/V;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lf1/a;->Y(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V

    iget-object p0, p0, Lk/o;->e:Le/v;

    invoke-virtual {p0, v0, p1}, Le/v;->y(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)LX/b;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/o;->c:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD3/e;->n()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lk/o;->c:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->o(I)V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/o;->d:Lk/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/V;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/o;->d:Lk/V;

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

.method public setDropDownBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lf1/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lk/o;->e:Le/v;

    invoke-virtual {p0, p1}, Le/v;->E(Z)V

    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    iget-object v0, p0, Lk/o;->e:Le/v;

    invoke-virtual {v0, p1}, Le/v;->q(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/o;->c:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->r(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/o;->c:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->s(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/o;->d:Lk/V;

    invoke-virtual {p0, p1}, Lk/V;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lk/V;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/o;->d:Lk/V;

    invoke-virtual {p0, p1}, Lk/V;->i(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lk/V;->b()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p0, p0, Lk/o;->d:Lk/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk/V;->g(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
