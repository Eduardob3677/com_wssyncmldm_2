.class public final LE3/m;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LE3/q;


# direct methods
.method public synthetic constructor <init>(LE3/q;I)V
    .locals 0

    iput p2, p0, LE3/m;->d:I

    iput-object p1, p0, LE3/m;->e:LE3/q;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LE3/m;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LQ3/f;

    const-string v0, "it"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LE3/m;->e:LE3/q;

    invoke-static {p0, p1}, LE3/q;->w(LE3/q;LQ3/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LQ3/f;

    const-string v0, "it"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LE3/m;->e:LE3/q;

    invoke-static {p0, p1}, LE3/q;->v(LE3/q;LQ3/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
