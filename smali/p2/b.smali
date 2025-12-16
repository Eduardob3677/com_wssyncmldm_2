.class public final Lp2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lp2/b;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lp2/b;

    iget-object p0, p0, Lp2/b;->a:Ljava/lang/String;

    iget-object p1, p1, Lp2/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lc1/D;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp2/b;->a:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, LA3/D;

    invoke-direct {v0, p0}, LA3/D;-><init>(Ljava/lang/Object;)V

    const-string v1, "token"

    iget-object p0, p0, Lp2/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, LA3/D;->C0(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, LA3/D;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
