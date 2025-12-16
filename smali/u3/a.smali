.class public final Lu3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lu3/b;


# direct methods
.method public synthetic constructor <init>(Lu3/b;I)V
    .locals 0

    iput p2, p0, Lu3/a;->c:I

    iput-object p1, p0, Lu3/a;->d:Lu3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lu3/a;->d:Lu3/b;

    iget v1, p0, Lu3/a;->c:I

    packed-switch v1, :pswitch_data_0

    new-instance p0, Lu3/w;

    invoke-direct {p0, v0}, Lu3/w;-><init>(Lu3/b;)V

    return-object p0

    :pswitch_0
    new-instance p0, La4/i;

    invoke-virtual {v0}, Lu3/b;->f0()La4/o;

    move-result-object v0

    invoke-direct {p0, v0}, La4/i;-><init>(La4/o;)V

    return-object p0

    :pswitch_1
    invoke-virtual {v0}, Lu3/b;->f0()La4/o;

    move-result-object v5

    new-instance v6, LB3/a;

    const/4 v1, 0x3

    invoke-direct {v6, v1, p0}, LB3/a;-><init>(ILjava/lang/Object;)V

    sget-object p0, Lh4/X;->a:Lj4/f;

    invoke-static {v0}, Lj4/i;->f(Lr3/j;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lj4/h;->m:Lj4/h;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lr3/g;->H()Lh4/J;

    move-result-object v2

    const/4 p0, 0x0

    if-eqz v2, :cond_2

    if-eqz v5, :cond_1

    invoke-interface {v2}, Lh4/J;->k()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lh4/X;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sget-object p0, Lh4/G;->d:Le/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lh4/G;->e:Lh4/G;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lh4/d;->t(Lh4/G;Lh4/J;Ljava/util/List;ZLa4/o;Lc3/b;)Lh4/z;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/16 v0, 0xd

    invoke-static {v0}, Lh4/X;->a(I)V

    throw p0

    :cond_2
    const/16 v0, 0xc

    invoke-static {v0}, Lh4/X;->a(I)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
