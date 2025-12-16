.class public abstract LT3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ3/c;

    const-string v1, "kotlin.jvm.JvmInline"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    return-void
.end method

.method public static final a(Lr3/s;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Lu3/L;

    if-eqz v0, :cond_0

    check-cast p0, Lu3/L;

    check-cast p0, Lu3/I;

    invoke-virtual {p0}, Lu3/I;->Q0()Lr3/K;

    move-result-object p0

    const-string v0, "correspondingProperty"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LT3/i;->d(Lr3/U;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Lr3/j;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Lr3/e;

    if-eqz v0, :cond_0

    check-cast p0, Lr3/e;

    invoke-interface {p0}, Lr3/e;->S()Lr3/S;

    move-result-object p0

    instance-of p0, p0, Lr3/t;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Lh4/v;)Z
    .locals 0

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, LT3/i;->b(Lr3/j;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(Lr3/U;)Z
    .locals 3

    invoke-interface {p0}, Lr3/b;->d0()Lu3/w;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object v0

    instance-of v1, v0, Lr3/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lr3/e;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    sget v1, LX3/f;->a:I

    invoke-interface {v0}, Lr3/e;->S()Lr3/S;

    move-result-object v0

    instance-of v1, v0, Lr3/t;

    if-eqz v1, :cond_1

    check-cast v0, Lr3/t;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lr3/t;->a:LQ3/f;

    :cond_2
    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    invoke-static {v2, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static final e(Lr3/j;)Z
    .locals 1

    invoke-static {p0}, LT3/i;->b(Lr3/j;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lr3/e;

    if-eqz v0, :cond_0

    check-cast p0, Lr3/e;

    invoke-interface {p0}, Lr3/e;->S()Lr3/S;

    move-result-object p0

    instance-of p0, p0, Lr3/y;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final f(Lh4/v;)Lh4/z;
    .locals 2

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    instance-of v0, p0, Lr3/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lr3/e;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    sget v0, LX3/f;->a:I

    invoke-interface {p0}, Lr3/e;->S()Lr3/S;

    move-result-object p0

    instance-of v0, p0, Lr3/t;

    if-eqz v0, :cond_1

    check-cast p0, Lr3/t;

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    iget-object p0, p0, Lr3/t;->b:Lk4/d;

    move-object v1, p0

    check-cast v1, Lh4/z;

    :cond_2
    return-object v1
.end method
