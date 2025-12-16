.class public abstract LE3/H;
.super LE3/C;
.source "SourceFile"


# virtual methods
.method public n(LQ3/f;Ljava/util/ArrayList;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final p()Lu3/w;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final s(Lx3/x;Ljava/util/ArrayList;Lh4/v;Ljava/util/List;)LE3/y;
    .locals 0

    const-string p0, "method"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "valueParameters"

    invoke-static {p0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, LE3/y;

    sget-object p1, LR2/u;->c:LR2/u;

    invoke-direct {p0, p3, p4, p2, p1}, LE3/y;-><init>(Lh4/v;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    return-object p0
.end method
