.class public final Lu3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lu3/p;


# direct methods
.method public synthetic constructor <init>(Lu3/p;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lu3/h;->c:I

    iput-object p1, p0, Lu3/h;->e:Lu3/p;

    iput-object p2, p0, Lu3/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lu3/h;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lq4/f;

    invoke-direct {v0}, Lq4/f;-><init>()V

    iget-object v1, p0, Lu3/h;->e:Lu3/p;

    check-cast v1, Lu3/v;

    invoke-virtual {v1}, Lu3/v;->p()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/s;

    iget-object v3, p0, Lu3/h;->d:Ljava/lang/Object;

    check-cast v3, Lh4/V;

    invoke-interface {v2, v3}, Lr3/s;->b(Lh4/V;)Lr3/s;

    move-result-object v2

    invoke-virtual {v0, v2}, Lq4/f;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_0
    sget-object v0, Lh4/G;->d:Le/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lh4/G;->e:Lh4/G;

    iget-object v1, p0, Lu3/h;->e:Lu3/p;

    check-cast v1, Lu3/j;

    invoke-virtual {v1}, Lu3/j;->H()Lh4/J;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v3, La4/k;

    new-instance v4, Lu3/g;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lu3/g;-><init>(ILjava/lang/Object;)V

    sget-object p0, Lg4/l;->e:Lg4/b;

    const-string v5, "NO_LOCKS"

    invoke-static {v5, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, p0, v4}, La4/k;-><init>(Lg4/o;Lc3/a;)V

    const/4 p0, 0x0

    invoke-static {v3, v0, v1, v2, p0}, Lh4/d;->s(La4/o;Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
