.class public final Ls3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/h;


# virtual methods
.method public final b(LQ3/c;)Z
    .locals 0

    invoke-static {p0, p1}, Lo4/a;->n(Ls3/h;LQ3/c;)Z

    move-result p0

    return p0
.end method

.method public final f(LQ3/c;)Ls3/b;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    sget-object p0, LR2/t;->c:LR2/t;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EMPTY"

    return-object p0
.end method
