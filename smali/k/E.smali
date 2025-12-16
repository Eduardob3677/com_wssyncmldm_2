.class public final Lk/E;
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

    iput p1, p0, Lk/E;->c:I

    iput-object p2, p0, Lk/E;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget v0, p0, Lk/E;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk/E;->d:Ljava/lang/Object;

    check-cast p0, Lk/M;

    invoke-virtual {p0}, Lk/M;->s()V

    invoke-virtual {p0}, Lk/x0;->r()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lk/E;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Lk/O;

    move-result-object v1

    invoke-interface {v1}, Lk/O;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lk/G;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Lk/G;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Lk/O;

    invoke-interface {v3, v1, v2}, Lk/O;->e(II)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Lk/F;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
