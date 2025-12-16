.class public final synthetic Landroidx/lifecycle/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Landroidx/lifecycle/g;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/g;I)V
    .locals 0

    iput p2, p0, Landroidx/lifecycle/e;->c:I

    iput-object p1, p0, Landroidx/lifecycle/e;->d:Landroidx/lifecycle/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/lifecycle/e;->c:I

    iget-object p0, p0, Landroidx/lifecycle/e;->d:Landroidx/lifecycle/g;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Landroidx/lifecycle/g;->b(Landroidx/lifecycle/g;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/g;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
