.class public abstract Lf3/a;
.super Lf3/d;
.source "SourceFile"


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Lf3/a;->b()Ljava/util/Random;

    move-result-object p0

    const/high16 v0, 0x7fff0000

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public abstract b()Ljava/util/Random;
.end method
