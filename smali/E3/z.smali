.class public final LE3/z;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LE3/C;


# direct methods
.method public synthetic constructor <init>(LE3/C;I)V
    .locals 0

    iput p2, p0, LE3/z;->d:I

    iput-object p1, p0, LE3/z;->e:LE3/C;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget v0, p0, LE3/z;->d:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, La4/f;->q:La4/f;

    iget-object p0, p0, LE3/z;->e:LE3/C;

    invoke-virtual {p0, v0}, LE3/C;->o(La4/f;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, La4/f;->p:La4/f;

    const/4 v1, 0x0

    iget-object p0, p0, LE3/z;->e:LE3/C;

    invoke-virtual {p0, v0, v1}, LE3/C;->i(La4/f;La4/l;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LE3/z;->e:LE3/C;

    invoke-virtual {p0}, LE3/C;->k()LE3/c;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object v0, La4/f;->o:La4/f;

    const/4 v1, 0x0

    iget-object p0, p0, LE3/z;->e:LE3/C;

    invoke-virtual {p0, v0, v1}, LE3/C;->h(La4/f;La4/l;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object v0, La4/f;->m:La4/f;

    sget-object v1, La4/o;->a:La4/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, La4/l;->e:La4/l;

    iget-object p0, p0, LE3/z;->e:LE3/C;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "kindFilter"

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lz3/b;->f:Lz3/b;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    sget v4, La4/f;->l:I

    invoke-virtual {v0, v4}, La4/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, LE3/C;->h(La4/f;La4/l;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQ3/f;

    invoke-virtual {v1, v5}, La4/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v5, v2}, La4/p;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object v5

    invoke-static {v3, v5}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget v4, La4/f;->i:I

    invoke-virtual {v0, v4}, La4/f;->a(I)Z

    move-result v4

    iget-object v5, v0, La4/f;->a:Ljava/util/List;

    if-eqz v4, :cond_1

    sget-object v4, La4/b;->a:La4/b;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v0, v1}, LE3/C;->i(La4/f;La4/l;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LQ3/f;

    invoke-virtual {v1, v6}, La4/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6, v2}, LE3/C;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    sget v4, La4/f;->j:I

    invoke-virtual {v0, v4}, La4/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, La4/b;->a:La4/b;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v0}, LE3/C;->o(La4/f;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQ3/f;

    invoke-virtual {v1, v4}, La4/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, LE3/C;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    invoke-static {v3}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
