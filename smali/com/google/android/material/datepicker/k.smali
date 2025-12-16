.class public final Lcom/google/android/material/datepicker/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/datepicker/k;->c:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/k;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/datepicker/k;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->d:Ljava/lang/Object;

    check-cast p0, Le/i;

    iget-object v0, p0, Le/i;->k:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Le/i;->m:Landroid/os/Message;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/i;->o:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Le/i;->q:Landroid/os/Message;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/i;->s:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Le/i;->u:Landroid/os/Message;

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object p1, p0, Le/i;->N:LO/k;

    const/4 v0, 0x1

    iget-object p0, p0, Le/i;->b:Le/k;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/datepicker/l;

    iget p1, p0, Lcom/google/android/material/datepicker/l;->g:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/l;->g(I)V

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/l;->g(I)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
