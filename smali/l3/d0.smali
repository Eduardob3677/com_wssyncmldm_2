.class public abstract Ll3/d0;
.super Ll3/r;
.source "SourceFile"

# interfaces
.implements Li3/f;


# virtual methods
.method public final h()Z
    .locals 0

    invoke-virtual {p0}, Ll3/d0;->o()Lr3/J;

    const/4 p0, 0x0

    return p0
.end method

.method public final j()Ll3/C;
    .locals 0

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    iget-object p0, p0, Ll3/j0;->d:Ll3/C;

    return-object p0
.end method

.method public final n()Z
    .locals 0

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    invoke-virtual {p0}, Ll3/j0;->n()Z

    move-result p0

    return p0
.end method

.method public abstract o()Lr3/J;
.end method

.method public abstract p()Ll3/j0;
.end method
