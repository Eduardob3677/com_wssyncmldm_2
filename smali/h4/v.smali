.class public abstract Lh4/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/a;
.implements Lk4/c;


# instance fields
.field public c:I


# virtual methods
.method public abstract I0()Lh4/G;
.end method

.method public abstract J0()Lh4/J;
.end method

.method public abstract K0()Z
.end method

.method public abstract L0(Li4/f;)Lh4/v;
.end method

.method public abstract M0()Lh4/Z;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh4/v;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lh4/v;->K0()Z

    move-result v1

    check-cast p1, Lh4/v;

    invoke-virtual {p1}, Lh4/v;->K0()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    invoke-virtual {p1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p1

    sget-object v1, Li4/e;->d:Li4/e;

    invoke-static {v1, p0, p1}, Lh4/c;->t(Li4/b;Lk4/c;Lk4/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lh4/v;->c:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lh4/c;->i(Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lh4/v;->K0()Z

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lh4/v;->c:I

    return v0
.end method

.method public abstract q0()La4/o;
.end method

.method public final t()Ls3/h;
    .locals 0

    invoke-virtual {p0}, Lh4/v;->I0()Lh4/G;

    move-result-object p0

    invoke-static {p0}, Lh4/i;->a(Lh4/G;)Ls3/h;

    move-result-object p0

    return-object p0
.end method

.method public abstract u0()Ljava/util/List;
.end method
