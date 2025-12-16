.class public final LE3/x;
.super LE3/H;
.source "SourceFile"


# instance fields
.field public final n:Lx3/y;

.field public final o:LE3/s;

.field public final p:Lg4/h;

.field public final q:Lg4/j;


# direct methods
.method public constructor <init>(LD3/e;Lx3/y;LE3/s;)V
    .locals 2

    const-string v0, "jPackage"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ownerDescriptor"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LE3/C;-><init>(LD3/e;LE3/C;)V

    iput-object p2, p0, LE3/x;->n:Lx3/y;

    iput-object p3, p0, LE3/x;->o:LE3/s;

    iget-object p2, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast p2, LD3/a;

    iget-object p3, p2, LD3/a;->a:Lg4/o;

    new-instance v0, LB3/c;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, p0}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    check-cast p3, Lg4/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg4/h;

    invoke-direct {v1, p3, v0}, Lg4/h;-><init>(Lg4/l;Lc3/a;)V

    iput-object v1, p0, LE3/x;->p:Lg4/h;

    new-instance p3, LE3/p;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v0, p1}, LE3/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p2, LD3/a;->a:Lg4/o;

    check-cast p1, Lg4/l;

    invoke-virtual {p1, p3}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p1

    iput-object p1, p0, LE3/x;->q:Lg4/j;

    return-void
.end method


# virtual methods
.method public final c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 0

    const-string p2, "name"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, LE3/x;->v(LQ3/f;Lx3/o;)Lr3/e;

    move-result-object p0

    return-object p0
.end method

.method public final f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 3

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, La4/f;->l:I

    sget v1, La4/f;->e:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, La4/f;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    goto :goto_1

    :cond_0
    iget-object p0, p0, LE3/C;->d:Lg4/c;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lr3/j;

    instance-of v2, v1, Lr3/e;

    if-eqz v2, :cond_1

    check-cast v1, Lr3/e;

    invoke-interface {v1}, Lr3/j;->getName()LQ3/f;

    move-result-object v1

    const-string v2, "it.name"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public final g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final h(La4/f;La4/l;)Ljava/util/Set;
    .locals 0

    const-string p2, "kindFilter"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget p2, La4/f;->e:I

    invoke-virtual {p1, p2}, La4/f;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0

    :cond_0
    iget-object p1, p0, LE3/x;->p:Lg4/h;

    invoke-virtual {p1}, Lg4/h;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    iget-object p0, p0, LE3/x;->n:Lx3/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public final i(La4/f;La4/l;)Ljava/util/Set;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final k()LE3/c;
    .locals 0

    sget-object p0, LE3/b;->a:LE3/b;

    return-object p0
.end method

.method public final m(Ljava/util/LinkedHashSet;LQ3/f;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final o(La4/f;)Ljava/util/Set;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final q()Lr3/j;
    .locals 0

    iget-object p0, p0, LE3/x;->o:LE3/s;

    return-object p0
.end method

.method public final v(LQ3/f;Lx3/o;)Lr3/e;
    .locals 3

    sget-object v0, LQ3/h;->a:LQ3/f;

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-boolean v0, p1, LQ3/f;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LE3/x;->p:Lg4/h;

    invoke-virtual {v0}, Lg4/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, LE3/x;->q:Lg4/j;

    new-instance v0, LE3/t;

    invoke-direct {v0, p1, p2}, LE3/t;-><init>(LQ3/f;Lx3/o;)V

    invoke-virtual {p0, v0}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/e;

    return-object p0

    :cond_1
    return-object v1
.end method
