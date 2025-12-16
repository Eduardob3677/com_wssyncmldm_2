.class public final LE3/E;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LQ3/f;


# direct methods
.method public synthetic constructor <init>(LQ3/f;I)V
    .locals 0

    iput p2, p0, LE3/E;->d:I

    iput-object p1, p0, LE3/E;->e:LQ3/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LE3/E;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, La4/o;

    const-string v0, "it"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lz3/b;->c:Lz3/b;

    iget-object p0, p0, LE3/E;->e:LQ3/f;

    invoke-interface {p1, p0, v0}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, La4/o;

    const-string v0, "it"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lz3/b;->g:Lz3/b;

    iget-object p0, p0, LE3/E;->e:LQ3/f;

    invoke-interface {p1, p0, v0}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
