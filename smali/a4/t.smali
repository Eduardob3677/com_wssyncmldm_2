.class public final La4/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La4/o;


# instance fields
.field public final b:La4/o;

.field public final c:Lh4/V;

.field public d:Ljava/util/HashMap;

.field public final e:LQ2/h;


# direct methods
.method public constructor <init>(La4/o;Lh4/V;)V
    .locals 1

    const-string v0, "workerScope"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "givenSubstitutor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/t;->b:La4/o;

    invoke-virtual {p2}, Lh4/V;->g()Lh4/S;

    move-result-object p1

    const-string p2, "givenSubstitutor.substitution"

    invoke-static {p2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LL2/b;->P(Lh4/S;)Lh4/S;

    move-result-object p1

    invoke-static {p1}, Lh4/V;->e(Lh4/S;)Lh4/V;

    move-result-object p1

    iput-object p1, p0, La4/t;->c:Lh4/V;

    new-instance p1, LB3/k;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    new-instance p2, LQ2/h;

    invoke-direct {p2, p1}, LQ2/h;-><init>(Lc3/a;)V

    iput-object p2, p0, La4/t;->e:LQ2/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, La4/t;->b:La4/o;

    invoke-interface {p0}, La4/o;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, La4/t;->b:La4/o;

    invoke-interface {p0}, La4/o;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, La4/t;->b:La4/o;

    invoke-interface {v0, p1, p2}, La4/q;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, La4/t;->i(Lr3/j;)Lr3/j;

    move-result-object p0

    check-cast p0, Lr3/g;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, La4/t;->b:La4/o;

    invoke-interface {v0, p1, p2}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, La4/t;->h(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, La4/t;->b:La4/o;

    invoke-interface {p0}, La4/o;->e()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "nameFilter"

    invoke-static {p1, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, La4/t;->e:LQ2/h;

    invoke-virtual {p0}, LQ2/h;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, La4/t;->b:La4/o;

    invoke-interface {v0, p1, p2}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, La4/t;->h(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, La4/t;->c:Lh4/V;

    iget-object v0, v0, Lh4/V;->a:Lh4/S;

    invoke-virtual {v0}, Lh4/S;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    goto :goto_0

    :cond_2
    div-int/lit8 v2, v0, 0x3

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    :goto_0
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/j;

    invoke-virtual {p0, v0}, La4/t;->i(Lr3/j;)Lr3/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public final i(Lr3/j;)Lr3/j;
    .locals 2

    iget-object v0, p0, La4/t;->c:Lh4/V;

    iget-object v1, v0, Lh4/V;->a:Lh4/S;

    invoke-virtual {v1}, Lh4/S;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p0, La4/t;->d:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, La4/t;->d:Ljava/util/HashMap;

    :cond_1
    iget-object p0, p0, La4/t;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    instance-of v1, p1, Lr3/P;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lr3/P;

    invoke-interface {v1, v0}, Lr3/P;->b(Lh4/V;)Lr3/k;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " substitution fails"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown descriptor in scope: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    check-cast v1, Lr3/j;

    return-object v1
.end method
