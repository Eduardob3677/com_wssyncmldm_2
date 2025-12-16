.class public final Ll3/Q;
.super Ll3/C;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/Class;

.field public final e:Ll3/q0;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "jClass"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/Q;->d:Ljava/lang/Class;

    new-instance p1, Ll3/L;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Ll3/L;-><init>(Ll3/Q;I)V

    invoke-static {p1}, Ll3/r0;->i(Lc3/a;)Ll3/q0;

    move-result-object p1

    iput-object p1, p0, Ll3/Q;->e:Ll3/q0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Ll3/Q;->d:Ljava/lang/Class;

    return-object p0
.end method

.method public final d()Ljava/util/Collection;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final e(LQ3/f;)Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, Ll3/Q;->e:Ll3/q0;

    invoke-virtual {p0}, Ll3/q0;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/O;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ll3/O;->g:[Li3/o;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/O;->d:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-scope>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, La4/o;

    sget-object v0, Lz3/b;->d:Lz3/b;

    invoke-interface {p0, p1, v0}, La4/o;->d(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ll3/Q;

    if-eqz v0, :cond_0

    check-cast p1, Ll3/Q;

    iget-object p1, p1, Ll3/Q;->d:Ljava/lang/Class;

    iget-object p0, p0, Ll3/Q;->d:Ljava/lang/Class;

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(I)Lr3/K;
    .locals 9

    iget-object v0, p0, Ll3/Q;->e:Ll3/q0;

    invoke-virtual {v0}, Ll3/q0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ll3/O;->g:[Li3/o;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v0, v0, Ll3/O;->f:Ll3/q0;

    invoke-virtual {v0}, Ll3/q0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ2/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, LQ2/i;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, LP3/g;

    iget-object v2, v0, LQ2/i;->d:Ljava/lang/Object;

    check-cast v2, LL3/C;

    iget-object v0, v0, LQ2/i;->e:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, LP3/f;

    sget-object v0, LO3/k;->n:LR3/p;

    const-string v3, "packageLocalVariable"

    invoke-static {v3, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v0, p1}, Lf1/a;->D(LR3/n;LR3/p;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, LL3/G;

    if-eqz v4, :cond_0

    new-instance v6, Ls2/c;

    iget-object p1, v2, LL3/C;->i:LL3/X;

    const-string v0, "packageProto.typeTable"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v6, p1}, Ls2/c;-><init>(LL3/X;)V

    sget-object v8, Ll3/P;->l:Ll3/P;

    iget-object v3, p0, Ll3/Q;->d:Ljava/lang/Class;

    invoke-static/range {v3 .. v8}, Ll3/w0;->f(Ljava/lang/Class;LR3/n;LN3/f;Ls2/c;LN3/a;Lc3/c;)Lr3/b;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lr3/K;

    :cond_0
    return-object v1
.end method

.method public final h()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Ll3/Q;->e:Ll3/q0;

    invoke-virtual {v0}, Ll3/q0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ll3/O;->g:[Li3/o;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v0, v0, Ll3/O;->e:Ll3/q0;

    invoke-virtual {v0}, Ll3/q0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Ll3/Q;->d:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Ll3/Q;->d:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i(LQ3/f;)Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, Ll3/Q;->e:Ll3/q0;

    invoke-virtual {p0}, Ll3/q0;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/O;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ll3/O;->g:[Li3/o;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Ll3/O;->d:Ll3/p0;

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-scope>(...)"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, La4/o;

    sget-object v0, Lz3/b;->d:Lz3/b;

    invoke-interface {p0, p1, v0}, La4/o;->g(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ll3/Q;->d:Ljava/lang/Class;

    invoke-static {p0}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object p0

    invoke-virtual {p0}, LQ3/b;->b()LQ3/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
