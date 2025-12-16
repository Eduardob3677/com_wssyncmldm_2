.class public abstract La4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La4/o;


# virtual methods
.method public a()Ljava/util/Set;
    .locals 3

    sget-object v0, La4/f;->p:La4/f;

    sget-object v1, Lq4/b;->d:Lq4/b;

    invoke-virtual {p0, v0, v1}, La4/p;->f(La4/f;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lu3/N;

    if-eqz v2, :cond_0

    check-cast v1, Lu3/N;

    invoke-virtual {v1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    const-string v2, "it.name"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 3

    sget-object v0, La4/f;->q:La4/f;

    sget-object v1, Lq4/b;->d:Lq4/b;

    invoke-virtual {p0, v0, v1}, La4/p;->f(La4/f;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lu3/N;

    if-eqz v2, :cond_0

    check-cast v1, Lu3/N;

    invoke-virtual {v1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    const-string v2, "it.name"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public e()Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "nameFilter"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method
