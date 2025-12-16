.class public final LS1/e;
.super LS1/o;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(LS1/n;I)V
    .locals 0

    iput p2, p0, LS1/e;->e:I

    invoke-direct {p0, p1}, LS1/o;-><init>(LS1/n;)V

    return-void
.end method


# virtual methods
.method public r()V
    .locals 1

    iget v0, p0, LS1/e;->e:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, LS1/o;->b:LS1/n;

    const/4 v0, 0x0

    iput-object v0, p0, LS1/n;->q:Landroid/view/View$OnLongClickListener;

    iget-object p0, p0, LS1/n;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p0, v0}, Li3/x;->b1(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
