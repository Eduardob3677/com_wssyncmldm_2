.class public final Lu3/O;
.super La4/p;
.source "SourceFile"


# instance fields
.field public final b:Lr3/x;

.field public final c:LQ3/c;


# direct methods
.method public constructor <init>(Lu3/C;LQ3/c;)V
    .locals 1

    const-string v0, "moduleDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "fqName"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/O;->b:Lr3/x;

    iput-object p2, p0, Lu3/O;->c:LQ3/c;

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/Set;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 7

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, La4/f;->h:I

    invoke-virtual {p1, v0}, La4/f;->a(I)Z

    move-result v0

    sget-object v1, LR2/u;->c:LR2/u;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lu3/O;->c:LQ3/c;

    invoke-virtual {v0}, LQ3/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, La4/c;->a:La4/c;

    iget-object p1, p1, La4/f;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lu3/O;->b:Lr3/x;

    invoke-interface {p0, v0, p2}, Lr3/x;->o(LQ3/c;Lc3/b;)Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ3/c;

    invoke-virtual {v2}, LQ3/c;->f()LQ3/f;

    move-result-object v2

    const-string v3, "subFqName.shortName()"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v2}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, LQ3/f;->d:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, LQ3/c;->c(LQ3/f;)LQ3/c;

    move-result-object v2

    invoke-interface {p0, v2}, Lr3/x;->a0(LQ3/c;)Lr3/H;

    move-result-object v2

    check-cast v2, Lu3/y;

    iget-object v3, v2, Lu3/y;->h:Lg4/i;

    sget-object v5, Lu3/y;->j:[Li3/o;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v3, v5}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    invoke-static {v1, v4}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subpackages of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lu3/O;->c:LQ3/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu3/O;->b:Lr3/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
