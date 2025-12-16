.class public final LI3/g;
.super Lh4/n;
.source "SourceFile"

# interfaces
.implements Lh4/k;


# instance fields
.field public final d:Lh4/z;


# direct methods
.method public constructor <init>(Lh4/z;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3/g;->d:Lh4/z;

    return-void
.end method


# virtual methods
.method public final J()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final K0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final P0(Lh4/G;)Lh4/Z;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LI3/g;

    iget-object p0, p0, LI3/g;->d:Lh4/z;

    invoke-virtual {p0, p1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object p0

    invoke-direct {v0, p0}, LI3/g;-><init>(Lh4/z;)V

    return-object v0
.end method

.method public final Q0(Z)Lh4/z;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iget-object p0, p0, LI3/g;->d:Lh4/z;

    invoke-virtual {p0, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final R0(Lh4/G;)Lh4/z;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LI3/g;

    iget-object p0, p0, LI3/g;->d:Lh4/z;

    invoke-virtual {p0, p1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object p0

    invoke-direct {v0, p0}, LI3/g;-><init>(Lh4/z;)V

    return-object v0
.end method

.method public final S0()Lh4/z;
    .locals 0

    iget-object p0, p0, LI3/g;->d:Lh4/z;

    return-object p0
.end method

.method public final U0(Lh4/z;)Lh4/n;
    .locals 0

    new-instance p0, LI3/g;

    invoke-direct {p0, p1}, LI3/g;-><init>(Lh4/z;)V

    return-object p0
.end method

.method public final d(Lh4/v;)Lh4/Z;
    .locals 3

    const-string p0, "replacement"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    invoke-static {p0}, Lh4/X;->g(Lh4/v;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lh4/X;->f(Lh4/v;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    instance-of p1, p0, Lh4/z;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    check-cast p0, Lh4/z;

    invoke-virtual {p0, v0}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p1

    invoke-static {p0}, Lh4/X;->g(Lh4/v;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, LI3/g;

    invoke-direct {p0, p1}, LI3/g;-><init>(Lh4/z;)V

    move-object p1, p0

    goto :goto_2

    :cond_2
    instance-of p1, p0, Lh4/q;

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, Lh4/q;

    iget-object v1, p1, Lh4/q;->d:Lh4/z;

    invoke-virtual {v1, v0}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v2

    invoke-static {v1}, Lh4/X;->g(Lh4/v;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, LI3/g;

    invoke-direct {v1, v2}, LI3/g;-><init>(Lh4/z;)V

    move-object v2, v1

    :goto_0
    iget-object p1, p1, Lh4/q;->e:Lh4/z;

    invoke-virtual {p1, v0}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v0

    invoke-static {p1}, Lh4/X;->g(Lh4/v;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, LI3/g;

    invoke-direct {p1, v0}, LI3/g;-><init>(Lh4/z;)V

    move-object v0, p1

    :goto_1
    invoke-static {v2, v0}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p1

    invoke-static {p0}, Lh4/c;->e(Lh4/v;)Lh4/v;

    move-result-object p0

    invoke-static {p1, p0}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incorrect type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
