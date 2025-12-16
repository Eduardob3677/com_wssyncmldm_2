.class public final La4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La4/o;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[La4/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;[La4/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/a;->b:Ljava/lang/String;

    iput-object p2, p0, La4/a;->c:[La4/o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p0, p0, La4/a;->c:[La4/o;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, La4/o;->a()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p0, p0, La4/a;->c:[La4/o;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, La4/o;->b()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 5

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, La4/a;->c:[La4/o;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2}, La4/q;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lr3/h;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lr3/h;

    invoke-interface {v4}, Lr3/w;->y()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_0
    move-object v1, v3

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method

.method public final d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, La4/a;->c:[La4/o;

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v1, v3}, Lo4/a;->b(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    sget-object v1, LR2/w;->c:LR2/w;

    goto :goto_1

    :cond_1
    aget-object p0, p0, v2

    invoke-interface {p0, p1, p2}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, LR2/u;->c:LR2/u;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final e()Ljava/util/Set;
    .locals 2

    const-string v0, "<this>"

    iget-object p0, p0, La4/a;->c:[La4/o;

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    goto :goto_0

    :cond_0
    new-instance v0, LR2/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LR2/k;-><init>(ILjava/lang/Object;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lf1/a;->x(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public final f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, La4/a;->c:[La4/o;

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2}, La4/q;->f(La4/f;Lc3/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v1, v3}, Lo4/a;->b(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    sget-object v1, LR2/w;->c:LR2/w;

    goto :goto_1

    :cond_1
    aget-object p0, p0, v2

    invoke-interface {p0, p1, p2}, La4/q;->f(La4/f;Lc3/b;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, LR2/u;->c:LR2/u;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, La4/a;->c:[La4/o;

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v1, v3}, Lo4/a;->b(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    sget-object v1, LR2/w;->c:LR2/w;

    goto :goto_1

    :cond_1
    aget-object p0, p0, v2

    invoke-interface {p0, p1, p2}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, LR2/u;->c:LR2/u;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La4/a;->b:Ljava/lang/String;

    return-object p0
.end method
