.class public final Lm4/c;
.super Lh4/L;
.source "SourceFile"


# virtual methods
.method public final g(Lh4/J;)Lh4/N;
    .locals 1

    const-string p0, "key"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, LU3/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, LU3/b;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, LU3/b;->a()Lh4/N;

    move-result-object p0

    invoke-virtual {p0}, Lh4/N;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lh4/O;

    invoke-interface {p1}, LU3/b;->a()Lh4/N;

    move-result-object p1

    invoke-virtual {p1}, Lh4/N;->b()Lh4/v;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lh4/O;-><init>(ILh4/v;)V

    return-object p0

    :cond_2
    invoke-interface {p1}, LU3/b;->a()Lh4/N;

    move-result-object p0

    return-object p0
.end method
