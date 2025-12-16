.class public final Landroidx/picker/widget/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/picker/widget/v;
.implements Landroidx/picker/widget/t;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/picker/widget/W;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/W;I)V
    .locals 0

    iput p2, p0, Landroidx/picker/widget/T;->a:I

    iput-object p1, p0, Landroidx/picker/widget/T;->b:Landroidx/picker/widget/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/picker/widget/SeslNumberPicker;II)V
    .locals 3

    iget p1, p0, Landroidx/picker/widget/T;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/T;->b:Landroidx/picker/widget/W;

    iget-object p1, p0, Landroidx/picker/widget/W;->k:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/W;->k:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    :cond_0
    iget-boolean p1, p0, Landroidx/picker/widget/W;->z:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Landroidx/picker/widget/W;->z:Z

    goto/16 :goto_2

    :cond_1
    iget-boolean p1, p0, Landroidx/picker/widget/W;->f:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_a

    :cond_2
    if-nez p1, :cond_3

    if-ne p3, p2, :cond_3

    goto/16 :goto_2

    :cond_3
    if-nez p3, :cond_4

    move p1, p2

    goto :goto_0

    :cond_4
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Landroidx/picker/widget/W;->f:Z

    invoke-virtual {p0}, Landroidx/picker/widget/W;->j()V

    invoke-virtual {p0}, Landroidx/picker/widget/W;->e()V

    iget-boolean p1, p0, Landroidx/picker/widget/W;->y:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/picker/widget/W;->l:Landroid/widget/EditText;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iget-boolean v1, p0, Landroidx/picker/widget/W;->e:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Landroidx/picker/widget/W;->f:Z

    const/16 v2, 0xc

    if-nez v1, :cond_6

    if-eq p3, v2, :cond_6

    add-int/lit8 v0, p3, 0xc

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    if-ne p3, v2, :cond_7

    goto :goto_1

    :cond_7
    move v0, p3

    :goto_1
    invoke-virtual {p0, v0, p2}, Landroidx/picker/widget/W;->f(IZ)V

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    :cond_8
    iget-object p1, p0, Landroidx/picker/widget/W;->m:Landroid/widget/EditText;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/picker/widget/W;->h(I)V

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    :cond_a
    :goto_2
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/picker/widget/T;->b:Landroidx/picker/widget/W;

    invoke-virtual {p0}, Landroidx/picker/widget/W;->e()V

    return-void

    :pswitch_1
    iget-object p1, p0, Landroidx/picker/widget/T;->b:Landroidx/picker/widget/W;

    iget-boolean v0, p1, Landroidx/picker/widget/W;->e:Z

    if-nez v0, :cond_10

    iget-boolean v0, p1, Landroidx/picker/widget/W;->y:Z

    if-nez v0, :cond_10

    iget-char v0, p1, Landroidx/picker/widget/W;->x:C

    const/16 v1, 0x4b

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    move v0, v2

    goto :goto_3

    :cond_b
    const/16 v0, 0xc

    :goto_3
    const/16 v1, 0xb

    if-ne p2, v1, :cond_c

    if-eq p3, v0, :cond_d

    :cond_c
    if-ne p2, v0, :cond_10

    if-ne p3, v1, :cond_10

    :cond_d
    iget-object p2, p1, Landroidx/picker/widget/W;->k:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_e

    move p3, v0

    goto :goto_4

    :cond_e
    move p3, v2

    :goto_4
    iput-boolean p3, p1, Landroidx/picker/widget/W;->f:Z

    invoke-virtual {p2, v2}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-boolean p3, p2, Landroidx/picker/widget/D;->f0:Z

    if-eqz p3, :cond_f

    iget p3, p2, Landroidx/picker/widget/D;->o:I

    iget v1, p2, Landroidx/picker/widget/D;->n:I

    if-eq p3, v1, :cond_f

    move v2, v0

    :cond_f
    invoke-virtual {p2, v2}, Landroidx/picker/widget/D;->c(Z)V

    iput-boolean v0, p1, Landroidx/picker/widget/W;->z:Z

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Landroidx/picker/widget/J;

    const/4 v0, 0x6

    invoke-direct {p3, v0, p0}, Landroidx/picker/widget/J;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    invoke-virtual {p1}, Landroidx/picker/widget/W;->e()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Z)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/T;->b:Landroidx/picker/widget/W;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/W;->g(Z)V

    iget-boolean v0, p0, Landroidx/picker/widget/W;->y:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/picker/widget/W;->i:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v0, p1, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-boolean v0, v0, Landroidx/picker/widget/D;->h0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/W;->j:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker;->c:Landroidx/picker/widget/D;

    iget-boolean p1, p1, Landroidx/picker/widget/D;->h0:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_2
    :goto_0
    return-void
.end method
