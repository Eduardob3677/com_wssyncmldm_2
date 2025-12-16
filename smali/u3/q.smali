.class public final Lu3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lu3/r;


# direct methods
.method public synthetic constructor <init>(Lu3/r;I)V
    .locals 0

    iput p2, p0, Lu3/q;->c:I

    iput-object p1, p0, Lu3/q;->d:Lu3/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lu3/q;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LQ3/f;

    iget-object p0, p0, Lu3/q;->d:Lu3/r;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lu3/r;->i()La4/o;

    move-result-object v0

    sget-object v1, Lz3/b;->h:Lz3/b;

    invoke-interface {v0, p1, v1}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lu3/r;->j(LQ3/f;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x4

    invoke-static {p0}, Lu3/r;->h(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p1, LQ3/f;

    iget-object p0, p0, Lu3/q;->d:Lu3/r;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lu3/r;->i()La4/o;

    move-result-object v0

    sget-object v1, Lz3/b;->h:Lz3/b;

    invoke-interface {v0, p1, v1}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lu3/r;->j(LQ3/f;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x8

    invoke-static {p0}, Lu3/r;->h(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
