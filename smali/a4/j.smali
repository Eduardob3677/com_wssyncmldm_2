.class public final La4/j;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lc3/a;


# direct methods
.method public synthetic constructor <init>(ILc3/a;)V
    .locals 0

    iput p1, p0, La4/j;->d:I

    iput-object p2, p0, La4/j;->e:Lc3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, La4/j;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, La4/j;->e:Lc3/a;

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, La4/j;->e:Lc3/a;

    invoke-interface {p0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La4/o;

    instance-of v0, p0, La4/k;

    if-eqz v0, :cond_0

    check-cast p0, La4/k;

    invoke-virtual {p0}, La4/k;->h()La4/o;

    move-result-object p0

    :cond_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
