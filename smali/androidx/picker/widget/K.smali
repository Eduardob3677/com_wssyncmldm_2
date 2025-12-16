.class public final Landroidx/picker/widget/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroidx/picker/widget/K;->c:I

    iput-object p2, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    iput p1, p0, Landroidx/picker/widget/K;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/picker/widget/P;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/picker/widget/K;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/picker/widget/K;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Landroidx/picker/widget/K;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/J;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroidx/picker/widget/J;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/D;

    iget v1, v0, Landroidx/picker/widget/D;->A:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, v0, Landroidx/picker/widget/D;->o0:Z

    goto :goto_5

    :cond_0
    iput-boolean v2, v0, Landroidx/picker/widget/D;->n0:Z

    iget-object v2, v0, Landroidx/picker/widget/D;->p0:Landroid/widget/Scroller;

    iput-object v2, v0, Landroidx/picker/widget/D;->D:Landroid/widget/Scroller;

    iget v2, v0, Landroidx/picker/widget/D;->o:I

    iget v3, v0, Landroidx/picker/widget/D;->m:I

    if-eq v2, v3, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    neg-int v4, v1

    :goto_0
    sub-int/2addr v2, v3

    iget-boolean v3, v0, Landroidx/picker/widget/D;->Q:Z

    const/4 v5, 0x5

    if-nez v3, :cond_2

    if-ge v2, v5, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-nez v3, :cond_3

    if-ge v2, v5, :cond_3

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    goto :goto_2

    :cond_3
    const v2, 0x40accccd    # 5.4f

    :goto_2
    iget-boolean v3, v0, Landroidx/picker/widget/D;->f0:Z

    if-eqz v3, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    mul-int/2addr v6, v1

    :goto_3
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v4, v1

    :goto_4
    invoke-virtual {v0, v6}, Landroidx/picker/widget/D;->t(I)V

    iget-object v0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/K;

    const/4 v2, 0x1

    invoke-direct {v1, v4, p0, v2}, Landroidx/picker/widget/K;-><init>(ILjava/lang/Object;I)V

    iget p0, p0, Landroidx/picker/widget/K;->d:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    return-void

    :pswitch_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/J;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Landroidx/picker/widget/J;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/picker/widget/K;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/P;

    iget v1, v0, Landroidx/picker/widget/P;->t:I

    const/4 v2, 0x1

    if-nez v1, :cond_6

    iput-boolean v2, v0, Landroidx/picker/widget/P;->g0:Z

    goto :goto_6

    :cond_6
    iput-boolean v2, v0, Landroidx/picker/widget/P;->f0:Z

    iget-object v2, v0, Landroidx/picker/widget/P;->h0:Landroid/widget/Scroller;

    iput-object v2, v0, Landroidx/picker/widget/P;->w:Landroid/widget/Scroller;

    mul-int/lit8 v2, v1, 0x5

    int-to-double v3, v1

    const-wide v5, 0x401599999999999aL    # 5.4

    mul-double/2addr v3, v5

    double-to-int v1, v3

    invoke-virtual {v0, v2}, Landroidx/picker/widget/P;->o(I)V

    iget-object v0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroidx/picker/widget/K;

    const/4 v3, 0x3

    invoke-direct {v2, v1, p0, v3}, Landroidx/picker/widget/K;-><init>(ILjava/lang/Object;I)V

    iget p0, p0, Landroidx/picker/widget/K;->d:I

    int-to-long v3, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
