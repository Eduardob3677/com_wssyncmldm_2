.class public Lk/B;
.super Landroid/widget/RadioButton;
.source "SourceFile"

# interfaces
.implements LO/q;


# instance fields
.field public final c:Lk/r;

.field public final d:LD3/e;

.field public final e:Lk/V;

.field public f:Lk/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-static {p1}, Lk/w1;->a(Landroid/content/Context;)V

    const v0, 0x7f0403d6

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/v1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lk/r;

    invoke-direct {p1, p0}, Lk/r;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/B;->c:Lk/r;

    invoke-virtual {p1, p2, v0}, Lk/r;->c(Landroid/util/AttributeSet;I)V

    new-instance p1, LD3/e;

    invoke-direct {p1, p0}, LD3/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/B;->d:LD3/e;

    invoke-virtual {p1, p2, v0}, LD3/e;->l(Landroid/util/AttributeSet;I)V

    new-instance p1, Lk/V;

    invoke-direct {p1, p0}, Lk/V;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/B;->e:Lk/V;

    invoke-virtual {p1, p2, v0}, Lk/V;->f(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lk/B;->getEmojiTextViewHelper()Lk/v;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lk/v;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Lk/v;
    .locals 1

    iget-object v0, p0, Lk/B;->f:Lk/v;

    if-nez v0, :cond_0

    new-instance v0, Lk/v;

    invoke-direct {v0, p0}, Lk/v;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/B;->f:Lk/v;

    :cond_0
    iget-object p0, p0, Lk/B;->f:Lk/v;

    return-object p0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lk/B;->d:LD3/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LD3/e;->a()V

    :cond_0
    iget-object p0, p0, Lk/B;->e:Lk/V;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/V;->b()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget-object p0, p0, Lk/B;->c:Lk/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lk/B;->d:LD3/e;

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

    iget-object p0, p0, Lk/B;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD3/e;->f()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lk/B;->c:Lk/r;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk/r;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lk/B;->c:Lk/r;

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

    iget-object p0, p0, Lk/B;->e:Lk/V;

    invoke-virtual {p0}, Lk/V;->d()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lk/B;->e:Lk/V;

    invoke-virtual {p0}, Lk/V;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public setAllCaps(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Lk/B;->getEmojiTextViewHelper()Lk/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk/v;->c(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/B;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD3/e;->n()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lk/B;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->o(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lf1/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/B;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/B;->c:Lk/r;

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Lk/r;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk/r;->e:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/r;->e:Z

    invoke-virtual {p0}, Lk/r;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/B;->e:Lk/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/V;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/B;->e:Lk/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/V;->b()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 0

    invoke-direct {p0}, Lk/B;->getEmojiTextViewHelper()Lk/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk/v;->d(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Lk/B;->getEmojiTextViewHelper()Lk/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/v;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/B;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->r(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/B;->d:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->s(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/B;->c:Lk/r;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lk/r;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/r;->c:Z

    invoke-virtual {p0}, Lk/r;->a()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/B;->c:Lk/r;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lk/r;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/r;->d:Z

    invoke-virtual {p0}, Lk/r;->a()V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/B;->e:Lk/V;

    invoke-virtual {p0, p1}, Lk/V;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lk/V;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/B;->e:Lk/V;

    invoke-virtual {p0, p1}, Lk/V;->i(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lk/V;->b()V

    return-void
.end method
