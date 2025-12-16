.class public final Lr3/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/G;


# instance fields
.field public final a:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/F;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a(LQ3/c;)Z
    .locals 2

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lr3/F;->a:Ljava/util/Collection;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/C;

    check-cast v0, Lu3/E;

    iget-object v0, v0, Lu3/E;->g:LQ3/c;

    invoke-static {v0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final b(LQ3/c;)Ljava/util/List;
    .locals 3

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lr3/F;->a:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lr3/C;

    check-cast v2, Lu3/E;

    iget-object v2, v2, Lu3/E;->g:LQ3/c;

    invoke-static {v2, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final c(LQ3/c;Ljava/util/ArrayList;)V
    .locals 2

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lr3/F;->a:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lr3/C;

    check-cast v1, Lu3/E;

    iget-object v1, v1, Lu3/E;->g:LQ3/c;

    invoke-static {v1, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o(LQ3/c;Lc3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lr3/F;->a:Ljava/util/Collection;

    invoke-static {p0}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object p0

    sget-object p2, Lr3/q;->f:Lr3/q;

    invoke-static {p0, p2}, Lr4/m;->l(Lr4/k;Lc3/b;)Lr4/r;

    move-result-object p0

    new-instance p2, Lr3/E;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lr3/E;-><init>(LQ3/c;I)V

    invoke-static {p0, p2}, Lr4/m;->i(Lr4/k;Lc3/b;)Lr4/f;

    move-result-object p0

    invoke-static {p0}, Lr4/m;->n(Lr4/k;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
