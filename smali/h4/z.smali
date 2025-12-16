.class public abstract Lh4/z;
.super Lh4/Z;
.source "SourceFile"

# interfaces
.implements Lk4/d;
.implements Lk4/e;


# virtual methods
.method public bridge synthetic N0(Z)Lh4/Z;
    .locals 0

    invoke-virtual {p0, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic P0(Lh4/G;)Lh4/Z;
    .locals 0

    invoke-virtual {p0, p1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public abstract Q0(Z)Lh4/z;
.end method

.method public abstract R0(Lh4/G;)Lh4/z;
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lh4/v;->t()Ls3/h;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/b;

    sget-object v2, LS3/g;->e:LS3/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, LS3/g;->x(Ls3/b;Ls3/d;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "] "

    const-string v3, "["

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v0

    const-string v3, ">"

    const/4 v4, 0x0

    const-string v2, "<"

    const/16 v5, 0x70

    move-object v1, v6

    invoke-static/range {v0 .. v5}, LR2/m;->R0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)V

    :cond_2
    invoke-virtual {p0}, Lh4/v;->K0()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "?"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
