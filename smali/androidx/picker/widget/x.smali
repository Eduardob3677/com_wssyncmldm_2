.class public final Landroidx/picker/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Landroidx/picker/widget/D;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/D;I)V
    .locals 0

    iput p2, p0, Landroidx/picker/widget/x;->c:I

    iput-object p1, p0, Landroidx/picker/widget/x;->d:Landroidx/picker/widget/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/picker/widget/x;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/x;->d:Landroidx/picker/widget/D;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/D;->U:Z

    iput-boolean v0, p0, Landroidx/picker/widget/D;->V:Z

    iget-boolean v1, p0, Landroidx/picker/widget/D;->q:Z

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/picker/widget/D;->b(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/picker/widget/x;->d:Landroidx/picker/widget/D;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/D;->U:Z

    iget-boolean v1, p0, Landroidx/picker/widget/D;->g0:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Landroidx/picker/widget/D;->m0:Z

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/picker/widget/x;->d:Landroidx/picker/widget/D;

    iget-object v1, v0, Landroidx/picker/widget/I;->a:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Landroidx/picker/widget/D;->h0:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroidx/picker/widget/I;->b:Landroid/widget/LinearLayout;

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    new-instance v1, Landroidx/picker/widget/J;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Landroidx/picker/widget/J;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
