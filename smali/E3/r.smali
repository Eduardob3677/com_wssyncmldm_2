.class public final LE3/r;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LE3/s;


# direct methods
.method public synthetic constructor <init>(LE3/s;I)V
    .locals 0

    iput p2, p0, LE3/r;->d:I

    iput-object p1, p0, LE3/r;->e:LE3/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LE3/r;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LE3/r;->e:LE3/s;

    iget-object p0, p0, LE3/s;->i:Lx3/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LR2/u;->c:LR2/u;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, LE3/r;->e:LE3/s;

    iget-object p0, p0, LE3/s;->k:Lg4/i;

    sget-object v1, LE3/s;->o:[Li3/o;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v1}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/b;

    invoke-static {v2}, LY3/b;->d(Ljava/lang/String;)LY3/b;

    move-result-object v2

    iget-object v1, v1, Lw3/b;->b:LK3/b;

    iget-object v3, v1, LK3/b;->d:Ljava/lang/Object;

    check-cast v3, LK3/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, LK3/a;->j:LK3/a;

    iget-object v4, v1, LK3/b;->d:Ljava/lang/Object;

    check-cast v4, LK3/a;

    if-ne v4, v3, :cond_1

    iget-object v1, v1, LK3/b;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, LY3/b;->d(Ljava/lang/String;)LY3/b;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0

    :pswitch_1
    iget-object p0, p0, LE3/r;->e:LE3/s;

    iget-object v0, p0, LE3/s;->j:LD3/e;

    iget-object v0, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->l:LJ3/g;

    iget-object p0, p0, Lu3/E;->g:LQ3/c;

    invoke-virtual {p0}, LQ3/c;->b()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, LR2/z;->C1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
