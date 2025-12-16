.class public final Lb1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lb1/d;


# direct methods
.method public synthetic constructor <init>(Lb1/d;I)V
    .locals 0

    iput p2, p0, Lb1/n;->c:I

    iput-object p1, p0, Lb1/n;->d:Lb1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lb1/n;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lb1/n;->d:Lb1/d;

    invoke-virtual {p0}, Lb1/d;->e()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lb1/n;->d:Lb1/d;

    invoke-virtual {p0}, Lb1/d;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
