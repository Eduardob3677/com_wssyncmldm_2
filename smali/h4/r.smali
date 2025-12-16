.class public final Lh4/r;
.super Lh4/q;
.source "SourceFile"

# interfaces
.implements Lh4/k;


# direct methods
.method public constructor <init>(Lh4/z;Lh4/z;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "upperBound"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lh4/q;-><init>(Lh4/z;Lh4/z;)V

    return-void
.end method


# virtual methods
.method public final J()Z
    .locals 2

    iget-object v0, p0, Lh4/q;->d:Lh4/z;

    invoke-virtual {v0}, Lh4/v;->J0()Lh4/J;

    move-result-object v1

    invoke-interface {v1}, Lh4/J;->i()Lr3/g;

    move-result-object v1

    instance-of v1, v1, Lr3/Q;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-static {v0, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final L0(Li4/f;)Lh4/v;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lh4/r;

    iget-object v0, p0, Lh4/q;->d:Lh4/z;

    const-string v1, "type"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p1, v0, p0}, Lh4/r;-><init>(Lh4/z;Lh4/z;)V

    return-object p1
.end method

.method public final N0(Z)Lh4/Z;
    .locals 1

    iget-object v0, p0, Lh4/q;->d:Lh4/z;

    invoke-virtual {v0, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v0

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-virtual {p0, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p0

    invoke-static {v0, p0}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public final O0(Li4/f;)Lh4/Z;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lh4/r;

    iget-object v0, p0, Lh4/q;->d:Lh4/z;

    const-string v1, "type"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p1, v0, p0}, Lh4/r;-><init>(Lh4/z;Lh4/z;)V

    return-object p1
.end method

.method public final P0(Lh4/G;)Lh4/Z;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/q;->d:Lh4/z;

    invoke-virtual {v0, p1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object v0

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-virtual {p0, p1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object p0

    invoke-static {v0, p0}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public final Q0()Lh4/z;
    .locals 0

    iget-object p0, p0, Lh4/q;->d:Lh4/z;

    return-object p0
.end method

.method public final R0(LS3/g;LS3/i;)Ljava/lang/String;
    .locals 2

    const-string v0, "renderer"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "options"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, LS3/i;->g()Z

    move-result p2

    iget-object v0, p0, Lh4/q;->e:Lh4/z;

    iget-object v1, p0, Lh4/q;->d:Lh4/z;

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v1}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lf1/a;->y(Lh4/v;)Lo3/i;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, LS3/g;->F(Ljava/lang/String;Ljava/lang/String;Lo3/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lh4/v;)Lh4/Z;
    .locals 1

    const-string p0, "replacement"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    instance-of p1, p0, Lh4/q;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lh4/z;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lh4/z;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v0

    invoke-static {p1, v0}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p1

    :goto_0
    invoke-static {p1, p0}, Lh4/c;->g(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lh4/q;->d:Lh4/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh4/q;->e:Lh4/z;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
