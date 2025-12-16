.class public final Lh4/y;
.super Lh4/o;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lh4/z;I)V
    .locals 0

    iput p2, p0, Lh4/y;->e:I

    invoke-direct {p0, p1}, Lh4/o;-><init>(Lh4/z;)V

    return-void
.end method


# virtual methods
.method public final K0()Z
    .locals 0

    iget p0, p0, Lh4/y;->e:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final U0(Lh4/z;)Lh4/n;
    .locals 1

    iget p0, p0, Lh4/y;->e:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lh4/y;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lh4/y;-><init>(Lh4/z;I)V

    return-object p0

    :pswitch_0
    new-instance p0, Lh4/y;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh4/y;-><init>(Lh4/z;I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
