.class public final Landroidx/picker/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/picker/widget/z;->a:I

    iput-object p2, p0, Landroidx/picker/widget/z;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Landroidx/picker/widget/z;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/picker/widget/z;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/P;

    iput-boolean v0, p0, Landroidx/picker/widget/P;->G0:Z

    iget-object v0, p0, Landroidx/picker/widget/P;->x:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    invoke-virtual {p0, v1}, Landroidx/picker/widget/P;->r(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/picker/widget/z;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/widget/D;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/D;->T0:Z

    iget-object v0, p0, Landroidx/picker/widget/D;->E:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    invoke-virtual {p0, v1}, Landroidx/picker/widget/D;->z(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
