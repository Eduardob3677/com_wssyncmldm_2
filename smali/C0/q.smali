.class public final LC0/q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LC0/q;->a:I

    iput-object p2, p0, LC0/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(LJ/b0;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, LC0/q;->a:I

    iput-object p1, p0, LC0/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, LC0/q;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    const/4 p1, 0x0

    iget-object p0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    return-void

    :pswitch_2
    iget-object p0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast p0, LJ/b0;

    invoke-interface {p0}, LJ/b0;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, LC0/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->h:Landroid/view/ViewPropertyAnimator;

    return-void

    :pswitch_0
    const/4 p1, 0x0

    iget-object p0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    return-void

    :pswitch_1
    iget-object p0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast p0, LS1/j;

    invoke-virtual {p0}, LS1/o;->q()V

    iget-object p0, p0, LS1/j;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_2
    iget-object p0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast p0, LJ/b0;

    invoke-interface {p0}, LJ/b0;->c()V

    return-void

    :pswitch_3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/chip/SeslChipGroup;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->p:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_4
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast p0, LD0/f;

    iget-object v0, p0, LD0/f;->g:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE1/a;

    iget-object v2, v2, LE1/a;->b:LE1/c;

    iget-object v2, v2, LE1/c;->q:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    invoke-static {p0, v2}, LC/a;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_5
    iget-object v0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast v0, LC0/t;

    invoke-virtual {v0}, LC0/t;->n()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    iget v0, p0, LC0/q;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    iget-object p0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast p0, LJ/b0;

    invoke-interface {p0}, LJ/b0;->g()V

    return-void

    :pswitch_2
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, LC0/q;->b:Ljava/lang/Object;

    check-cast p0, LD0/f;

    iget-object v0, p0, LD0/f;->g:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE1/a;

    iget-object v2, v2, LE1/a;->b:LE1/c;

    iget-object v3, v2, LE1/c;->q:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    iget-object v2, v2, LE1/c;->u:[I

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-static {p0, v2}, LC/a;->g(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
