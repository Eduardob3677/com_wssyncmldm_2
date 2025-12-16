.class public final LA3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LA3/i;

    const-string p0, "other"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x2

    invoke-static {p0, p0}, Lk/Q0;->a(II)I

    move-result p0

    return p0
.end method
