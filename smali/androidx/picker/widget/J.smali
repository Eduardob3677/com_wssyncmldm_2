.class public final Landroidx/picker/widget/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/picker/widget/J;->c:I

    iput-object p2, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Landroidx/picker/widget/J;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/W;

    iget-object v0, p0, Landroidx/picker/widget/W;->b:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v1, p0, Landroidx/picker/widget/W;->y:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/W;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/W;->m:Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/W;->l:Landroid/widget/EditText;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/T;

    iget-object p0, p0, Landroidx/picker/widget/T;->b:Landroidx/picker/widget/W;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/W;->z:Z

    iget-object p0, p0, Landroidx/picker/widget/W;->k:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v1, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/K;

    iget-object v1, v1, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/D;

    iget-object v2, v1, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroidx/picker/widget/D;->o(Landroid/widget/Scroller;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/K;

    iget-object v1, v1, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/D;

    iget-object v2, v1, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroidx/picker/widget/D;->o(Landroid/widget/Scroller;)Z

    :cond_3
    iget-object v1, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/K;

    iget-object v1, v1, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/D;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/picker/widget/D;->z(Z)V

    iget-object v1, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/K;

    iget-object v1, v1, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/D;

    iput v2, v1, Landroidx/picker/widget/D;->G:I

    iget-object v3, v1, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    iget v2, v0, Landroidx/picker/widget/K;->d:I

    neg-int v7, v2

    iget-boolean v1, v1, Landroidx/picker/widget/D;->f0:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x359

    :goto_1
    move v8, v1

    goto :goto_2

    :cond_4
    const/16 v1, 0x22d

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    iget-object v0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/J;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Landroidx/picker/widget/J;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x359

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/J;

    iget-object v0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    iget-object v1, v0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/D;->o(Landroid/widget/Scroller;)Z

    iget-object p0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/K;

    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    iget-object v0, v0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    iget-object v0, v0, Landroidx/picker/widget/D;->F:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/D;->e(I)Z

    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    iget-object v2, v0, Landroidx/picker/widget/D;->q0:Landroid/widget/Scroller;

    iput-object v2, v0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    iput-boolean v1, v0, Landroidx/picker/widget/D;->n0:Z

    iget-object v0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/picker/widget/D;->z(Z)V

    iget-object p0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/K;

    iget-object p0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/D;

    iget-object p0, p0, Landroidx/picker/widget/D;->Y0:Lc1/w;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lc1/w;->c:Ljava/lang/Object;

    check-cast p0, Lf0/b;

    iput-boolean v1, p0, Lf0/b;->m:Z

    :cond_5
    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/x;

    iget-object v0, p0, Landroidx/picker/widget/x;->d:Landroidx/picker/widget/D;

    iget-object v0, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/picker/widget/x;->d:Landroidx/picker/widget/D;

    iget-boolean v2, v1, Landroidx/picker/widget/D;->h0:Z

    if-eqz v2, :cond_6

    iget-object v1, v1, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Landroidx/picker/widget/x;->d:Landroidx/picker/widget/D;

    iget-object p0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_6
    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslDatePicker;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->R:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->K:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    return-void

    :pswitch_5
    iget-object v0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v1, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/K;

    iget-object v1, v1, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/P;

    iget-object v2, v1, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroidx/picker/widget/P;->k(Landroid/widget/Scroller;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/K;

    iget-object v1, v1, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/P;

    iget-object v2, v1, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroidx/picker/widget/P;->k(Landroid/widget/Scroller;)Z

    :cond_7
    iget-object v1, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/K;

    iget-object v1, v1, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/picker/widget/P;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/picker/widget/P;->z:I

    iget-object v3, v1, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    iget v1, v0, Landroidx/picker/widget/K;->d:I

    neg-int v7, v1

    const/16 v8, 0x22d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    iget-object v0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/J;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/picker/widget/J;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x359

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_6
    iget-object p0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/J;

    iget-object v0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    iget-object v1, v0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/P;->k(Landroid/widget/Scroller;)Z

    iget-object p0, p0, Landroidx/picker/widget/J;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/K;

    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    iget-object v0, v0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    iget-object v0, v0, Landroidx/picker/widget/P;->y:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/P;->c(I)Z

    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    iget-object v2, v0, Landroidx/picker/widget/P;->i0:Landroid/widget/Scroller;

    iput-object v2, v0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    iput-boolean v1, v0, Landroidx/picker/widget/P;->f0:Z

    iget-object v0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/K;

    iget-object v0, v0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->r(Z)V

    iget-object p0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/K;

    iget-object p0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/P;

    iget-object p0, p0, Landroidx/picker/widget/P;->H0:Lc1/w;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lc1/w;->c:Ljava/lang/Object;

    check-cast p0, Lf0/b;

    iput-boolean v1, p0, Lf0/b;->m:Z

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
