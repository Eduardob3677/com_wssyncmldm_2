.class public final LE3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final a:Lx3/o;

.field public final b:Lc3/b;

.field public final c:LA3/d;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/LinkedHashMap;

.field public final f:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lx3/o;Lc3/b;)V
    .locals 3

    const-string v0, "jClass"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE3/a;->a:Lx3/o;

    iput-object p2, p0, LE3/a;->b:Lc3/b;

    new-instance p2, LA3/d;

    const/4 v0, 0x4

    invoke-direct {p2, v0, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, LE3/a;->c:LA3/d;

    invoke-virtual {p1}, Lx3/o;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object p1

    invoke-static {p1, p2}, Lr4/m;->i(Lr4/k;Lc3/b;)Lr4/f;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Lr4/e;

    invoke-direct {v0, p1}, Lr4/e;-><init>(Lr4/f;)V

    :goto_0
    invoke-virtual {v0}, Lr4/e;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lr4/e;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lx3/x;

    invoke-virtual {v1}, Lx3/w;->b()LQ3/f;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p2, p0, LE3/a;->d:Ljava/util/LinkedHashMap;

    iget-object p1, p0, LE3/a;->a:Lx3/o;

    invoke-virtual {p1}, Lx3/o;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object p1

    iget-object p2, p0, LE3/a;->b:Lc3/b;

    invoke-static {p1, p2}, Lr4/m;->i(Lr4/k;Lc3/b;)Lr4/f;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Lr4/e;

    invoke-direct {v0, p1}, Lr4/e;-><init>(Lr4/f;)V

    :goto_1
    invoke-virtual {v0}, Lr4/e;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lr4/e;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lx3/u;

    invoke-virtual {v1}, Lx3/w;->b()LQ3/f;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object p2, p0, LE3/a;->e:Ljava/util/LinkedHashMap;

    iget-object p1, p0, LE3/a;->a:Lx3/o;

    invoke-virtual {p1}, Lx3/o;->d()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, LE3/a;->b:Lc3/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p1

    invoke-static {p1}, LR2/z;->y1(I)I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_5

    move p1, p2

    :cond_5
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lx3/A;

    invoke-virtual {v1}, Lx3/w;->b()LQ3/f;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iput-object p2, p0, LE3/a;->f:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(LQ3/f;)Lx3/A;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LE3/a;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/A;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LE3/a;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(LQ3/f;)Lx3/u;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LE3/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/u;

    return-object p0
.end method

.method public final d()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, LE3/a;->a:Lx3/o;

    invoke-virtual {v0}, Lx3/o;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object v0

    iget-object p0, p0, LE3/a;->b:Lc3/b;

    invoke-static {v0, p0}, Lr4/m;->i(Lr4/k;Lc3/b;)Lr4/f;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Lr4/e;

    invoke-direct {v1, p0}, Lr4/e;-><init>(Lr4/f;)V

    :goto_0
    invoke-virtual {v1}, Lr4/e;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lr4/e;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/u;

    invoke-virtual {p0}, Lx3/w;->b()LQ3/f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final e()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, LE3/a;->a:Lx3/o;

    invoke-virtual {v0}, Lx3/o;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object v0

    iget-object p0, p0, LE3/a;->c:LA3/d;

    invoke-static {v0, p0}, Lr4/m;->i(Lr4/k;Lc3/b;)Lr4/f;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Lr4/e;

    invoke-direct {v1, p0}, Lr4/e;-><init>(Lr4/f;)V

    :goto_0
    invoke-virtual {v1}, Lr4/e;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lr4/e;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/x;

    invoke-virtual {p0}, Lx3/w;->b()LQ3/f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final f(LQ3/f;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LE3/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LR2/u;->c:LR2/u;

    :goto_0
    return-object p0
.end method
