.class public final Landroidx/picker/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/picker/widget/b;->a:I

    iput-object p2, p0, Landroidx/picker/widget/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget v0, p0, Landroidx/picker/widget/b;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/picker/widget/b;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/D;

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->u(Z)V

    iget-object p0, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_2

    :cond_0
    iget-object p2, p0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/D;->h(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Landroidx/picker/widget/D;->o:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/picker/widget/D;->p:I

    if-eq p1, v0, :cond_3

    iget-boolean v2, p0, Landroidx/picker/widget/D;->q:Z

    if-eqz v2, :cond_3

    rem-int p1, p2, p1

    if-nez p1, :cond_2

    move v1, v0

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/picker/widget/D;->b(Z)V

    :cond_3
    invoke-virtual {p0, p2, v0}, Landroidx/picker/widget/D;->w(IZ)V

    goto :goto_2

    :cond_4
    :goto_0
    iget p1, p0, Landroidx/picker/widget/D;->p:I

    if-eq p1, v0, :cond_6

    iget-boolean v2, p0, Landroidx/picker/widget/D;->q:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroidx/picker/widget/D;->r:Z

    if-eqz v2, :cond_6

    rem-int/2addr p2, p1

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->b(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/picker/widget/D;->C()Z

    :goto_2
    return-void

    :pswitch_0
    if-eqz p2, :cond_7

    iget-object p0, p0, Landroidx/picker/widget/b;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslDatePicker;

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->t:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->setEditTextMode(Z)V

    :cond_7
    return-void

    :pswitch_1
    if-nez p2, :cond_8

    iget-object p0, p0, Landroidx/picker/widget/b;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->l()V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
