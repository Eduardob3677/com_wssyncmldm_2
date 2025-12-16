.class public final LR2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Le3/a;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LR2/k;->c:I

    iput-object p2, p0, LR2/k;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, LR2/k;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LR2/k;->d:Ljava/lang/Object;

    check-cast p0, Lr4/k;

    invoke-interface {p0}, Lr4/k;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, LR2/y;

    iget-object p0, p0, LR2/k;->d:Ljava/lang/Object;

    check-cast p0, Lc3/a;

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-direct {v0, p0}, LR2/y;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, LR2/k;->d:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ld3/t;->c([Ljava/lang/Object;)LR2/a;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
