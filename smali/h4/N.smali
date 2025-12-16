.class public abstract Lh4/N;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Lh4/v;
.end method

.method public abstract c()Z
.end method

.method public abstract d(Li4/f;)Lh4/N;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh4/N;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh4/N;

    invoke-virtual {p0}, Lh4/N;->c()Z

    move-result v1

    invoke-virtual {p1}, Lh4/N;->c()Z

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lh4/N;->a()I

    move-result v1

    invoke-virtual {p1}, Lh4/N;->a()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lh4/N;->b()Lh4/v;

    move-result-object p0

    invoke-virtual {p1}, Lh4/N;->b()Lh4/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh4/v;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lh4/N;->a()I

    move-result v0

    invoke-static {v0}, Lk/Q0;->f(I)I

    move-result v0

    invoke-virtual {p0}, Lh4/N;->b()Lh4/v;

    move-result-object v1

    invoke-static {v1}, Lh4/X;->m(Lh4/v;)Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x13

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lh4/N;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x11

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lh4/N;->b()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    :goto_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lh4/N;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "*"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lh4/N;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lh4/N;->b()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lh4/N;->a()I

    move-result v1

    invoke-static {v1}, Lh0/c;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh4/N;->b()Lh4/v;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
