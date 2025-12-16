.class public final synthetic Landroidx/fragment/app/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/C;->a:I

    iput-object p2, p0, Landroidx/fragment/app/C;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    iget v0, p0, Landroidx/fragment/app/C;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/fragment/app/C;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/Z;

    invoke-virtual {p0}, Landroidx/fragment/app/Z;->R()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/C;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/G;

    invoke-virtual {p0}, Landroidx/fragment/app/G;->markFragmentsCreated()V

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragmentLifecycleRegistry:Landroidx/lifecycle/y;

    sget-object v0, Landroidx/lifecycle/p;->ON_STOP:Landroidx/lifecycle/p;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
