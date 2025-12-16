.class public final Landroidx/picker/widget/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public d:I

.field public e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/picker/widget/O;->c:I

    iput-object p2, p0, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Landroidx/picker/widget/O;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    iput v3, p0, Landroidx/picker/widget/O;->e:I

    iput v3, p0, Landroidx/picker/widget/O;->d:I

    iget-object v4, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v4, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean p0, v0, Landroidx/picker/widget/D;->a0:Z

    if-eqz p0, :cond_0

    iput-boolean v3, v0, Landroidx/picker/widget/D;->a0:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget v4, v0, Landroidx/picker/widget/D;->Y:I

    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    :cond_0
    iget-boolean p0, v0, Landroidx/picker/widget/D;->b0:Z

    if-eqz p0, :cond_1

    iput-boolean v3, v0, Landroidx/picker/widget/D;->b0:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget v0, v0, Landroidx/picker/widget/D;->X:I

    invoke-virtual {p0, v3, v3, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    iput v3, p0, Landroidx/picker/widget/O;->e:I

    iput v3, p0, Landroidx/picker/widget/O;->d:I

    iget-object v4, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v4, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v4, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean p0, v0, Landroidx/picker/widget/P;->R:Z

    if-eqz p0, :cond_2

    iput-boolean v3, v0, Landroidx/picker/widget/P;->R:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v4, v0, Landroidx/picker/widget/P;->O:I

    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    :cond_2
    iget-boolean p0, v0, Landroidx/picker/widget/P;->S:Z

    if-eqz p0, :cond_3

    iput-boolean v3, v0, Landroidx/picker/widget/P;->S:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v0, v0, Landroidx/picker/widget/P;->N:I

    invoke-virtual {p0, v3, v3, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 9

    iget v0, p0, Landroidx/picker/widget/O;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroidx/picker/widget/O;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Landroidx/picker/widget/O;->d:I

    if-eq v3, v6, :cond_3

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v0, Landroidx/picker/widget/D;->b0:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-boolean p0, v0, Landroidx/picker/widget/D;->b0:Z

    xor-int/2addr p0, v6

    iput-boolean p0, v0, Landroidx/picker/widget/D;->b0:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget v0, v0, Landroidx/picker/widget/D;->X:I

    invoke-virtual {p0, v5, v5, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_3
    iget-boolean v3, v0, Landroidx/picker/widget/D;->a0:Z

    if-nez v3, :cond_4

    iget-object v3, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v3, Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v3, p0, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-boolean p0, v0, Landroidx/picker/widget/D;->a0:Z

    xor-int/2addr p0, v6

    iput-boolean p0, v0, Landroidx/picker/widget/D;->a0:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget v0, v0, Landroidx/picker/widget/D;->Y:I

    invoke-virtual {p0, v5, v0, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_5
    iget p0, p0, Landroidx/picker/widget/O;->d:I

    if-eq p0, v6, :cond_7

    if-eq p0, v4, :cond_6

    goto :goto_0

    :cond_6
    iput-boolean v6, v0, Landroidx/picker/widget/D;->b0:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget v0, v0, Landroidx/picker/widget/D;->X:I

    invoke-virtual {p0, v5, v5, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_7
    iput-boolean v6, v0, Landroidx/picker/widget/D;->a0:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker;

    iget v0, v0, Landroidx/picker/widget/D;->Y:I

    invoke-virtual {p0, v5, v0, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/O;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    iget-object v1, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroidx/picker/widget/O;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_d

    if-eq v3, v4, :cond_8

    goto :goto_1

    :cond_8
    iget v3, p0, Landroidx/picker/widget/O;->d:I

    if-eq v3, v6, :cond_b

    if-eq v3, v4, :cond_9

    goto :goto_1

    :cond_9
    iget-boolean v2, v0, Landroidx/picker/widget/P;->S:Z

    if-nez v2, :cond_a

    iget-object v2, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    iget-boolean p0, v0, Landroidx/picker/widget/P;->S:Z

    xor-int/2addr p0, v6

    int-to-byte p0, p0

    iput-boolean p0, v0, Landroidx/picker/widget/P;->S:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v0, v0, Landroidx/picker/widget/P;->N:I

    invoke-virtual {p0, v5, v5, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1

    :cond_b
    iget-boolean v3, v0, Landroidx/picker/widget/P;->R:Z

    if-nez v3, :cond_c

    iget-object v3, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v3, p0, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    iget-boolean p0, v0, Landroidx/picker/widget/P;->R:Z

    xor-int/2addr p0, v6

    int-to-byte p0, p0

    iput-boolean p0, v0, Landroidx/picker/widget/P;->R:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v0, v0, Landroidx/picker/widget/P;->O:I

    invoke-virtual {p0, v5, v0, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1

    :cond_d
    iget p0, p0, Landroidx/picker/widget/O;->d:I

    if-eq p0, v6, :cond_f

    if-eq p0, v4, :cond_e

    goto :goto_1

    :cond_e
    iput-boolean v6, v0, Landroidx/picker/widget/P;->S:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v0, v0, Landroidx/picker/widget/P;->N:I

    invoke-virtual {p0, v5, v5, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1

    :cond_f
    iput-boolean v6, v0, Landroidx/picker/widget/P;->R:Z

    iget-object p0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v0, v0, Landroidx/picker/widget/P;->O:I

    invoke-virtual {p0, v5, v0, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
