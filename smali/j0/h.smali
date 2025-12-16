.class public final Lj0/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj0/i;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lj0/k;


# direct methods
.method public synthetic constructor <init>(Lj0/k;Lj0/i;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V
    .locals 0

    iput p5, p0, Lj0/h;->a:I

    iput-object p1, p0, Lj0/h;->e:Lj0/k;

    iput-object p2, p0, Lj0/h;->b:Lj0/i;

    iput-object p3, p0, Lj0/h;->c:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lj0/h;->d:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lj0/h;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lj0/h;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lj0/h;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lj0/h;->b:Lj0/i;

    iget-object v0, p1, Lj0/i;->b:Lj0/b0;

    iget-object p0, p0, Lj0/h;->e:Lj0/k;

    invoke-virtual {p0, v0}, Lj0/F;->c(Lj0/b0;)V

    iget-object v0, p0, Lj0/k;->o:Ljava/util/ArrayList;

    iget-object p1, p1, Lj0/i;->b:Lj0/b0;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lj0/k;->i()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lj0/h;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lj0/h;->d:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lj0/h;->b:Lj0/i;

    iget-object v0, p1, Lj0/i;->a:Lj0/b0;

    iget-object p0, p0, Lj0/h;->e:Lj0/k;

    invoke-virtual {p0, v0}, Lj0/F;->c(Lj0/b0;)V

    iget-object v0, p0, Lj0/k;->o:Ljava/util/ArrayList;

    iget-object p1, p1, Lj0/i;->a:Lj0/b0;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lj0/k;->i()V

    iget p1, p0, Lj0/k;->p:I

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lj0/k;->p:I

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lj0/h;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lj0/h;->b:Lj0/i;

    iget-object p1, p1, Lj0/i;->b:Lj0/b0;

    iget-object p0, p0, Lj0/h;->e:Lj0/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p1, p0, Lj0/h;->b:Lj0/i;

    iget-object p1, p1, Lj0/i;->a:Lj0/b0;

    iget-object p0, p0, Lj0/h;->e:Lj0/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
