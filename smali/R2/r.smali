.class public abstract LR2/r;
.super LR2/q;
.source "SourceFile"


# direct methods
.method public static D0(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method
