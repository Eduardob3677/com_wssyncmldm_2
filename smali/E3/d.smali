.class public final LE3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La4/o;


# static fields
.field public static final synthetic f:[Li3/o;


# instance fields
.field public final b:LD3/e;

.field public final c:LE3/s;

.field public final d:LE3/x;

.field public final e:Lg4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, LE3/d;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "kotlinScopes"

    const-string v4, "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, LE3/d;->f:[Li3/o;

    return-void
.end method

.method public constructor <init>(LD3/e;Lx3/y;LE3/s;)V
    .locals 1

    const-string v0, "jPackage"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "packageFragment"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE3/d;->b:LD3/e;

    iput-object p3, p0, LE3/d;->c:LE3/s;

    new-instance v0, LE3/x;

    invoke-direct {v0, p1, p2, p3}, LE3/x;-><init>(LD3/e;Lx3/y;LE3/s;)V

    iput-object v0, p0, LE3/d;->d:LE3/x;

    iget-object p1, p1, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, LD3/a;

    iget-object p1, p1, LD3/a;->a:Lg4/o;

    new-instance p2, LB3/k;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lg4/i;

    invoke-direct {p3, p1, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p3, p0, LE3/d;->e:Lg4/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, LE3/d;->h()[La4/o;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, La4/o;->a()Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v4}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, LE3/d;->d:LE3/x;

    invoke-virtual {p0}, LE3/C;->a()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final b()Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, LE3/d;->h()[La4/o;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, La4/o;->b()Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v4}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, LE3/d;->d:LE3/x;

    invoke-virtual {p0}, LE3/C;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 5

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, LE3/d;->i(LQ3/f;Lz3/b;)V

    iget-object v0, p0, LE3/d;->d:LE3/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LE3/x;->v(LQ3/f;Lx3/o;)Lr3/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LE3/d;->h()[La4/o;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2}, La4/q;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Lr3/h;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lr3/h;

    invoke-interface {v4}, Lr3/w;->y()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public final d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, LE3/d;->i(LQ3/f;Lz3/b;)V

    invoke-virtual {p0}, LE3/d;->h()[La4/o;

    move-result-object v0

    iget-object p0, p0, LE3/d;->d:LE3/x;

    invoke-virtual {p0, p1, p2}, LE3/C;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {p0, v3}, Lo4/a;->b(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, LR2/w;->c:LR2/w;

    :cond_1
    return-object p0
.end method

.method public final e()Ljava/util/Set;
    .locals 3

    invoke-virtual {p0}, LE3/d;->h()[La4/o;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v0, LR2/u;->c:LR2/u;

    goto :goto_0

    :cond_0
    new-instance v1, LR2/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, LR2/k;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lf1/a;->x(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, LE3/d;->d:LE3/x;

    invoke-virtual {p0}, LE3/C;->e()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final f(La4/f;Lc3/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LE3/d;->h()[La4/o;

    move-result-object v0

    iget-object p0, p0, LE3/d;->d:LE3/x;

    invoke-virtual {p0, p1, p2}, LE3/x;->f(La4/f;Lc3/b;)Ljava/util/Collection;

    move-result-object p0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, La4/q;->f(La4/f;Lc3/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {p0, v3}, Lo4/a;->b(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, LR2/w;->c:LR2/w;

    :cond_1
    return-object p0
.end method

.method public final g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, LE3/d;->i(LQ3/f;Lz3/b;)V

    invoke-virtual {p0}, LE3/d;->h()[La4/o;

    move-result-object v0

    iget-object p0, p0, LE3/d;->d:LE3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LR2/u;->c:LR2/u;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {p0, v3}, Lo4/a;->b(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, LR2/w;->c:LR2/w;

    :cond_1
    return-object p0
.end method

.method public final h()[La4/o;
    .locals 2

    iget-object p0, p0, LE3/d;->e:Lg4/i;

    sget-object v0, LE3/d;->f:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [La4/o;

    return-object p0
.end method

.method public final i(LQ3/f;Lz3/b;)V
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LE3/d;->b:LD3/e;

    iget-object v0, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->n:Lz3/a;

    iget-object p0, p0, LE3/d;->c:LE3/s;

    invoke-static {v0, p2, p0, p1}, Lp0/a;->n(Lz3/a;Lz3/b;Lr3/C;LQ3/f;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scope for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LE3/d;->c:LE3/s;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
