.class public final LE3/G;
.super LE3/H;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public final n:Lx3/o;

.field public final o:LC3/c;


# direct methods
.method public constructor <init>(LD3/e;Lx3/o;LC3/c;)V
    .locals 1

    const-string v0, "jClass"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ownerDescriptor"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LE3/C;-><init>(LD3/e;LE3/C;)V

    iput-object p2, p0, LE3/G;->n:Lx3/o;

    iput-object p3, p0, LE3/G;->o:LC3/c;

    return-void
.end method

.method public static v(Lr3/K;)Lr3/K;
    .locals 3

    invoke-interface {p0}, Lr3/c;->k0()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "this.overriddenDescriptors"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/K;

    const-string v2, "it"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, LE3/G;->v(Lr3/K;)Lr3/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, LR2/m;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/K;

    return-object p0
.end method


# virtual methods
.method public final c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(La4/f;La4/l;)Ljava/util/Set;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final i(La4/f;La4/l;)Ljava/util/Set;
    .locals 2

    const-string p2, "kindFilter"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, LE3/C;->e:Lg4/i;

    invoke-virtual {p1}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE3/c;

    invoke-interface {p1}, LE3/c;->e()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, LR2/m;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, LE3/G;->o:LC3/c;

    invoke-static {p2}, Li3/x;->V(Lr3/e;)LE3/G;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LE3/C;->a()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, LR2/w;->c:LR2/w;

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, LE3/G;->n:Lx3/o;

    iget-object v0, v0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lo3/n;->c:LQ3/f;

    sget-object v1, Lo3/n;->a:LQ3/f;

    filled-new-array {v0, v1}, [LQ3/f;

    move-result-object v0

    invoke-static {v0}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object p0, p0, LE3/C;->b:LD3/e;

    iget-object v0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->x:LY3/e;

    check-cast v0, LY3/a;

    invoke-virtual {v0, p0, p2}, LY3/a;->g(LD3/e;LC3/c;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final j(LQ3/f;Ljava/util/ArrayList;)V
    .locals 2

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LE3/C;->b:LD3/e;

    iget-object v1, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->x:LY3/e;

    check-cast v1, LY3/a;

    iget-object p0, p0, LE3/G;->o:LC3/c;

    invoke-virtual {v1, v0, p0, p1, p2}, LY3/a;->d(LD3/e;LC3/c;LQ3/f;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final k()LE3/c;
    .locals 2

    new-instance v0, LE3/a;

    sget-object v1, LE3/k;->g:LE3/k;

    iget-object p0, p0, LE3/G;->n:Lx3/o;

    invoke-direct {v0, p0, v1}, LE3/a;-><init>(Lx3/o;Lc3/b;)V

    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;LQ3/f;)V
    .locals 8

    const-string v0, "name"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LE3/G;->o:LC3/c;

    invoke-static {v0}, Li3/x;->V(Lr3/e;)LE3/G;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, LR2/w;->c:LR2/w;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    sget-object v2, Lz3/b;->g:Lz3/b;

    invoke-virtual {v1, p2, v2}, LE3/C;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, LE3/C;->b:LD3/e;

    iget-object v1, v1, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v6, v1, LD3/a;->f:Ld4/k;

    iget-object v1, v1, LD3/a;->u:Li4/k;

    check-cast v1, Li4/l;

    iget-object v7, v1, Li4/l;->d:LT3/n;

    iget-object v5, p0, LE3/G;->o:LC3/c;

    move-object v2, p2

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Li3/x;->T0(LQ3/f;Ljava/util/Collection;Ljava/util/AbstractCollection;LC3/c;Ld4/k;LT3/n;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, LE3/G;->n:Lx3/o;

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lo3/n;->c:LQ3/f;

    invoke-static {p2, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, LZ0/j;->C(Lr3/e;)Lu3/N;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    sget-object p0, Lo3/n;->a:LQ3/f;

    invoke-static {p2, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, LZ0/j;->D(Lr3/e;)Lu3/N;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    return-void
.end method

.method public final n(LQ3/f;Ljava/util/ArrayList;)V
    .locals 11

    const-string v1, "name"

    invoke-static {v1, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, LE3/E;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, LE3/E;-><init>(LQ3/f;I)V

    iget-object v7, p0, LE3/G;->o:LC3/c;

    invoke-static {v7}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, LE3/D;->c:LE3/D;

    new-instance v5, LE3/F;

    invoke-direct {v5, v7, v2, v1}, LE3/F;-><init>(LC3/c;Ljava/util/Set;Lc3/b;)V

    invoke-static {v3, v4, v5}, Lq4/k;->f(Ljava/util/List;Lq4/a;Lq4/k;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v8, p0, LE3/C;->b:LD3/e;

    if-eqz v1, :cond_0

    iget-object v1, v8, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v5, v1, LD3/a;->f:Ld4/k;

    iget-object v1, v1, LD3/a;->u:Li4/k;

    check-cast v1, Li4/l;

    iget-object v6, v1, Li4/l;->d:LT3/n;

    iget-object v4, p0, LE3/G;->o:LC3/c;

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Li3/x;->T0(LQ3/f;Ljava/util/Collection;Ljava/util/AbstractCollection;LC3/c;Ld4/k;LT3/n;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lr3/K;

    invoke-static {v4}, LE3/G;->v(Lr3/K;)Lr3/K;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    iget-object v1, v8, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v5, v1, LD3/a;->f:Ld4/k;

    iget-object v1, v1, LD3/a;->u:Li4/k;

    check-cast v1, Li4/l;

    iget-object v6, v1, Li4/l;->d:LT3/n;

    iget-object v4, p0, LE3/G;->o:LC3/c;

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Li3/x;->T0(LQ3/f;Ljava/util/Collection;Ljava/util/AbstractCollection;LC3/c;Ld4/k;LT3/n;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v9, v1}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    iget-object v0, p0, LE3/G;->n:Lx3/o;

    iget-object v0, v0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lo3/n;->b:LQ3/f;

    invoke-static {p1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7}, LZ0/j;->B(Lr3/e;)Lu3/K;

    move-result-object v0

    invoke-static {p2, v0}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final o(La4/f;)Ljava/util/Set;
    .locals 5

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, LE3/C;->e:Lg4/i;

    invoke-virtual {p1}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE3/c;

    invoke-interface {p1}, LE3/c;->d()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, LR2/m;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    sget-object v0, LE3/k;->h:LE3/k;

    iget-object v1, p0, LE3/G;->o:LC3/c;

    invoke-static {v1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, LE3/D;->c:LE3/D;

    new-instance v4, LE3/F;

    invoke-direct {v4, v1, p1, v0}, LE3/F;-><init>(LC3/c;Ljava/util/Set;Lc3/b;)V

    invoke-static {v2, v3, v4}, Lq4/k;->f(Ljava/util/List;Lq4/a;Lq4/k;)Ljava/lang/Object;

    iget-object p0, p0, LE3/G;->n:Lx3/o;

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lo3/n;->b:LQ3/f;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public final q()Lr3/j;
    .locals 0

    iget-object p0, p0, LE3/G;->o:LC3/c;

    return-object p0
.end method
