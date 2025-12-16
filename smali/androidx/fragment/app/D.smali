.class public final synthetic Landroidx/fragment/app/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/G;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/G;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/D;->a:I

    iput-object p1, p0, Landroidx/fragment/app/D;->b:Landroidx/fragment/app/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/D;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/Intent;

    iget-object p0, p0, Landroidx/fragment/app/D;->b:Landroidx/fragment/app/G;

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->a()V

    return-void

    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    iget-object p0, p0, Landroidx/fragment/app/D;->b:Landroidx/fragment/app/G;

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
