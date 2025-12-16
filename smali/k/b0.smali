.class public final Lk/b0;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# instance fields
.field public final c:LD3/e;

.field public final d:Lk/V;

.field public e:Lk/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/v1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, LD3/e;

    invoke-direct {p1, p0}, LD3/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/b0;->c:LD3/e;

    invoke-virtual {p1, p2, v0}, LD3/e;->l(Landroid/util/AttributeSet;I)V

    new-instance p1, Lk/V;

    invoke-direct {p1, p0}, Lk/V;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/b0;->d:Lk/V;

    invoke-virtual {p1, p2, v0}, Lk/V;->f(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lk/b0;->getEmojiTextViewHelper()Lk/v;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lk/v;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Lk/v;
    .locals 1

    iget-object v0, p0, Lk/b0;->e:Lk/v;

    if-nez v0, :cond_0

    new-instance v0, Lk/v;

    invoke-direct {v0, p0}, Lk/v;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/b0;->e:Lk/v;

    :cond_0
    iget-object p0, p0, Lk/b0;->e:Lk/v;

    return-object p0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    iget-object v0, p0, Lk/b0;->c:LD3/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LD3/e;->a()V

    :cond_0
    iget-object p0, p0, Lk/b0;->d:Lk/V;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/V;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lk/b0;->c:LD3/e;

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

    iget-object p0, p0, Lk/b0;->c:LD3/e;

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

    iget-object p0, p0, Lk/b0;->d:Lk/V;

    invoke-virtual {p0}, Lk/V;->d()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lk/b0;->d:Lk/V;

    invoke-virtual {p0}, Lk/V;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public setAllCaps(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Lk/b0;->getEmojiTextViewHelper()Lk/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk/v;->c(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/b0;->c:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD3/e;->n()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lk/b0;->c:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->o(I)V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/b0;->d:Lk/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/V;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/b0;->d:Lk/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/V;->b()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 0

    invoke-direct {p0}, Lk/b0;->getEmojiTextViewHelper()Lk/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk/v;->d(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Lk/b0;->getEmojiTextViewHelper()Lk/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/v;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/b0;->c:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->r(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/b0;->c:LD3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD3/e;->s(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/b0;->d:Lk/V;

    invoke-virtual {p0, p1}, Lk/V;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lk/V;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/b0;->d:Lk/V;

    invoke-virtual {p0, p1}, Lk/V;->i(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lk/V;->b()V

    return-void
.end method
