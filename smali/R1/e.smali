.class public final LR1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LR1/e;->c:I

    iput-object p2, p0, LR1/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget v0, p0, LR1/e;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LR1/e;->d:Ljava/lang/Object;

    check-cast p0, Lj/z;

    invoke-virtual {p0}, Lj/z;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj/z;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lj/z;->k:Lk/B0;

    invoke-virtual {p0}, Lk/x0;->r()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lj/z;->dismiss()V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, LR1/e;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->g:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:Landroid/widget/Button;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->g:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    new-instance v1, LB1/h;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, LB1/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
