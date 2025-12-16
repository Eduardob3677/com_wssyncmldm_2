.class public final Landroidx/picker/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/e;->c:Landroidx/picker/widget/SeslDatePicker;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/e;->c:Landroidx/picker/widget/SeslDatePicker;

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->t:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->setCurrentViewType(I)V

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->t:I

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->l0:Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->m0:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method
