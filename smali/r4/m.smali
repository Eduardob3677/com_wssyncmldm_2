.class public abstract Lr4/m;
.super Lr4/n;
.source "SourceFile"


# direct methods
.method public static h(Lr4/k;)I
    .locals 2

    invoke-interface {p0}, Lr4/k;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Count overflow has happened."

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0
.end method

.method public static i(Lr4/k;Lc3/b;)Lr4/f;
    .locals 2

    const-string v0, "predicate"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lr4/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lr4/f;-><init>(Lr4/k;ZLc3/b;)V

    return-object v0
.end method

.method public static final j(Lr4/k;)Lr4/h;
    .locals 3

    sget-object v0, Lr4/o;->e:Lr4/o;

    instance-of v1, p0, Lr4/r;

    if-eqz v1, :cond_0

    check-cast p0, Lr4/r;

    new-instance v1, Lr4/h;

    iget-object v2, p0, Lr4/r;->a:Lr4/k;

    iget-object p0, p0, Lr4/r;->b:Lc3/b;

    invoke-direct {v1, v2, p0, v0}, Lr4/h;-><init>(Lr4/k;Lc3/b;Lc3/b;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/h;

    sget-object v2, Lr4/o;->f:Lr4/o;

    invoke-direct {v1, p0, v2, v0}, Lr4/h;-><init>(Lr4/k;Lc3/b;Lc3/b;)V

    :goto_0
    return-object v1
.end method

.method public static k(Ljava/lang/Object;Lc3/b;)Lr4/k;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lr4/d;->a:Lr4/d;

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/j;

    new-instance v1, LB3/k;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lr4/j;-><init>(Lc3/a;Lc3/b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static l(Lr4/k;Lc3/b;)Lr4/r;
    .locals 1

    const-string v0, "transform"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lr4/r;

    invoke-direct {v0, p0, p1}, Lr4/r;-><init>(Lr4/k;Lc3/b;)V

    return-object v0
.end method

.method public static m(Lr4/k;Lc3/b;)Lr4/f;
    .locals 2

    new-instance v0, Lr4/r;

    invoke-direct {v0, p0, p1}, Lr4/r;-><init>(Lr4/k;Lc3/b;)V

    sget-object p0, Lr4/o;->g:Lr4/o;

    new-instance p1, Lr4/f;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lr4/f;-><init>(Lr4/k;ZLc3/b;)V

    return-object p1
.end method

.method public static n(Lr4/k;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lr4/k;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, LR2/n;->A0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
