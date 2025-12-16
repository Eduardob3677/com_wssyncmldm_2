.class public final La4/r;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:La4/s;


# direct methods
.method public synthetic constructor <init>(La4/s;I)V
    .locals 0

    iput p2, p0, La4/r;->d:I

    iput-object p1, p0, La4/r;->e:La4/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, La4/r;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, La4/r;->e:La4/s;

    iget-object p0, p0, La4/s;->b:Lr3/e;

    invoke-static {p0}, LZ0/j;->B(Lr3/e;)Lu3/K;

    move-result-object p0

    invoke-static {p0}, LR2/n;->z0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, La4/r;->e:La4/s;

    iget-object v0, p0, La4/s;->b:Lr3/e;

    invoke-static {v0}, LZ0/j;->C(Lr3/e;)Lu3/N;

    move-result-object v0

    iget-object p0, p0, La4/s;->b:Lr3/e;

    invoke-static {p0}, LZ0/j;->D(Lr3/e;)Lu3/N;

    move-result-object p0

    filled-new-array {v0, p0}, [Lu3/N;

    move-result-object p0

    invoke-static {p0}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
