.class public final Lj4/b;
.super Lu3/N;
.source "SourceFile"


# virtual methods
.method public final E(Lr3/a;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final M(Ljava/util/Collection;)V
    .locals 0

    const-string p0, "overriddenDescriptors"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final R0(Lr3/j;ILA3/p;)Lu3/N;
    .locals 1

    const-string v0, "newOwner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "modality"

    invoke-static {p2, p1}, LB/f;->x(ILjava/lang/String;)V

    const-string p1, "visibility"

    invoke-static {p1, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "kind"

    const/4 p2, 0x2

    invoke-static {p2, p1}, LB/f;->x(ILjava/lang/String;)V

    return-object p0
.end method

.method public final S0(ILQ3/f;Lr3/j;Lr3/s;Lr3/N;Ls3/h;)Lu3/v;
    .locals 0

    const-string p2, "newOwner"

    invoke-static {p2, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "kind"

    invoke-static {p1, p2}, LB/f;->x(ILjava/lang/String;)V

    const-string p1, "annotations"

    invoke-static {p1, p6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e0()Lr3/r;
    .locals 1

    new-instance v0, Lc1/w;

    invoke-direct {v0, p0}, Lc1/w;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic x0(Lr3/j;ILA3/p;)Lr3/c;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj4/b;->R0(Lr3/j;ILA3/p;)Lu3/N;

    return-object p0
.end method
