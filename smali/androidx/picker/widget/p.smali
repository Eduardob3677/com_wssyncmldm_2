.class public final Landroidx/picker/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/picker/widget/p;->c:I

    iput-object p2, p0, Landroidx/picker/widget/p;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v4, 0xa0

    const/16 v5, 0x42

    const/16 v6, 0x3d

    const/16 v7, 0x17

    iget-object v8, p0, Landroidx/picker/widget/p;->d:Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget p0, p0, Landroidx/picker/widget/p;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-eq p0, v9, :cond_1

    :cond_0
    :goto_0
    move v9, v10

    goto :goto_1

    :cond_1
    check-cast v8, Landroidx/picker/widget/W;

    if-eq p2, v7, :cond_5

    if-eq p2, v6, :cond_6

    if-eq p2, v5, :cond_2

    if-eq p2, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, v8, Landroidx/picker/widget/W;->y:Z

    if-eqz p0, :cond_6

    move-object p0, p1

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/TextView;->getImeOptions()I

    move-result p2

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_4

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p0

    iget-object p2, v8, Landroidx/picker/widget/W;->a:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0, p2, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeOptions()I

    move-result p0

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_6

    invoke-static {v8}, Landroidx/picker/widget/W;->a(Landroidx/picker/widget/W;)V

    invoke-virtual {v8, v10}, Landroidx/picker/widget/W;->g(Z)V

    goto :goto_1

    :cond_5
    iget-object p0, v8, Landroidx/picker/widget/W;->a:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->keyboard:I

    if-eq p0, v0, :cond_0

    :cond_6
    :goto_1
    return v9

    :pswitch_0
    check-cast v8, Landroidx/picker/widget/SeslDatePicker;

    iget-boolean p0, v8, Landroidx/picker/widget/SeslDatePicker;->j:Z

    if-eqz p0, :cond_7

    iput-boolean v10, v8, Landroidx/picker/widget/SeslDatePicker;->g:Z

    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-eq p0, v9, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v0, :cond_9

    :cond_8
    invoke-virtual {v8}, Landroidx/picker/widget/SeslDatePicker;->l()V

    :cond_9
    return v10

    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    sget p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->A:I

    check-cast v8, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-eq p0, v9, :cond_a

    :goto_2
    move v9, v10

    goto :goto_3

    :cond_a
    if-eq p2, v7, :cond_e

    if-eq p2, v6, :cond_f

    if-eq p2, v5, :cond_b

    if-eq p2, v4, :cond_b

    goto :goto_2

    :cond_b
    iget-boolean p0, v8, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->c:Z

    if-eqz p0, :cond_f

    move-object p0, p1

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/TextView;->getImeOptions()I

    move-result p2

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_d

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p0

    iget-object p2, v8, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->k:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0, p2, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeOptions()I

    move-result p0

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_f

    invoke-virtual {v8}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->i()V

    invoke-virtual {v8, v10}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->d(Z)V

    goto :goto_3

    :cond_e
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->keyboard:I

    goto :goto_2

    :cond_f
    :goto_3
    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
