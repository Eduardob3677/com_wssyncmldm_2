.class public final Lj4/a;
.super Lu3/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(LQ3/f;)V
    .locals 10

    sget-object v0, Lj4/i;->a:Lj4/i;

    sget-object v2, Lj4/i;->b:Lj4/c;

    sget-object v0, LR2/u;->c:LR2/u;

    sget-object v9, Lr3/N;->a:Lr3/M;

    sget-object v7, Lg4/l;->e:Lg4/b;

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lu3/m;-><init>(Lr3/j;LQ3/f;IILjava/util/List;Lg4/o;)V

    sget-object v6, Ls3/g;->a:Ls3/f;

    new-instance p1, Lu3/k;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lu3/k;-><init>(Lr3/e;Lr3/i;Ls3/h;ZILr3/N;)V

    sget-object v1, Lr3/n;->d:LA3/p;

    invoke-virtual {p1, v0, v1}, Lu3/k;->e1(Ljava/util/List;LA3/p;)V

    invoke-virtual {p1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    iget-object v1, v1, LQ3/f;->c:Ljava/lang/String;

    const-string v2, "errorConstructor.name.toString()"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, ""

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lj4/i;->b([Ljava/lang/String;I)Lj4/e;

    move-result-object v1

    new-instance v2, Lj4/f;

    sget-object v6, Lj4/h;->x:Lj4/h;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v6, v4}, Lj4/i;->d(Lj4/h;[Ljava/lang/String;)Lj4/g;

    move-result-object v4

    new-array v9, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v5, v1

    move-object v7, v0

    invoke-direct/range {v3 .. v9}, Lj4/f;-><init>(Lh4/J;La4/o;Lj4/h;Ljava/util/List;Z[Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lu3/v;->a1(Lh4/z;)V

    invoke-static {p1}, LL2/b;->I(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Lu3/m;->u0(La4/o;Ljava/util/Set;Lu3/k;)V

    return-void
.end method


# virtual methods
.method public final b(Lh4/V;)Lr3/k;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d(Lh4/S;Li4/f;)La4/o;
    .locals 0

    const-string p2, "typeSubstitution"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu3/b;->getName()LQ3/f;

    move-result-object p0

    iget-object p0, p0, LQ3/f;->c:Ljava/lang/String;

    const-string p2, "name.toString()"

    invoke-static {p2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x9

    invoke-static {p0, p1}, Lj4/i;->b([Ljava/lang/String;I)Lj4/e;

    move-result-object p0

    return-object p0
.end method

.method public final p0(Lh4/V;)Lr3/e;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lu3/b;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
