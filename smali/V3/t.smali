.class public final LV3/t;
.super LV3/g;
.source "SourceFile"


# virtual methods
.method public final a(Lr3/x;)Lh4/v;
    .locals 0

    const-string p0, "module"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Lo3/i;->n()Lh4/z;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x31

    invoke-static {p0}, Lo3/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
