.class public final Lu3/x;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lu3/y;


# direct methods
.method public synthetic constructor <init>(Lu3/y;I)V
    .locals 0

    iput p2, p0, Lu3/x;->d:I

    iput-object p1, p0, Lu3/x;->e:Lu3/y;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lu3/x;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lu3/x;->e:Lu3/y;

    iget-object v0, p0, Lu3/y;->h:Lg4/i;

    sget-object v1, Lu3/y;->j:[Li3/o;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v0, v2}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, La4/n;->b:La4/n;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lu3/y;->g:Lg4/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/C;

    invoke-interface {v2}, Lr3/C;->q0()La4/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lu3/O;

    iget-object v2, p0, Lu3/y;->e:Lu3/C;

    iget-object p0, p0, Lu3/y;->f:LQ3/c;

    invoke-direct {v0, v2, p0}, Lu3/O;-><init>(Lu3/C;LQ3/c;)V

    invoke-static {v1, v0}, LR2/m;->Z0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "package view scope for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lu3/o;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, LZ0/j;->u(Ljava/lang/String;Ljava/util/List;)La4/o;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lu3/x;->e:Lu3/y;

    iget-object v0, p0, Lu3/y;->e:Lu3/C;

    invoke-virtual {v0}, Lu3/C;->P0()V

    iget-object v0, v0, Lu3/C;->m:LQ2/h;

    invoke-virtual {v0}, LQ2/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/n;

    iget-object p0, p0, Lu3/y;->f:LQ3/c;

    invoke-static {v0, p0}, Lp/a;->m(Lr3/D;LQ3/c;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lu3/x;->e:Lu3/y;

    iget-object v0, p0, Lu3/y;->e:Lu3/C;

    invoke-virtual {v0}, Lu3/C;->P0()V

    iget-object v0, v0, Lu3/C;->m:LQ2/h;

    invoke-virtual {v0}, LQ2/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/n;

    iget-object p0, p0, Lu3/y;->f:LQ3/c;

    invoke-static {v0, p0}, Lp/a;->k(Lr3/D;LQ3/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
