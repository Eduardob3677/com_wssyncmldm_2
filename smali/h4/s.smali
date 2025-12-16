.class public final Lh4/s;
.super Lh4/q;
.source "SourceFile"

# interfaces
.implements Lh4/Y;


# instance fields
.field public final f:Lh4/q;

.field public final g:Lh4/v;


# direct methods
.method public constructor <init>(Lh4/q;Lh4/v;)V
    .locals 2

    const-string v0, "origin"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "enhancement"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lh4/q;->d:Lh4/z;

    iget-object v1, p1, Lh4/q;->e:Lh4/z;

    invoke-direct {p0, v0, v1}, Lh4/q;-><init>(Lh4/z;Lh4/z;)V

    iput-object p1, p0, Lh4/s;->f:Lh4/q;

    iput-object p2, p0, Lh4/s;->g:Lh4/v;

    return-void
.end method


# virtual methods
.method public final L0(Li4/f;)Lh4/v;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lh4/s;

    iget-object v0, p0, Lh4/s;->f:Lh4/q;

    const-string v1, "type"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/s;->g:Lh4/v;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p1, v0, p0}, Lh4/s;-><init>(Lh4/q;Lh4/v;)V

    return-object p1
.end method

.method public final N0(Z)Lh4/Z;
    .locals 1

    iget-object v0, p0, Lh4/s;->f:Lh4/q;

    invoke-virtual {v0, p1}, Lh4/Z;->N0(Z)Lh4/Z;

    move-result-object v0

    iget-object p0, p0, Lh4/s;->g:Lh4/v;

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh4/Z;->N0(Z)Lh4/Z;

    move-result-object p0

    invoke-static {v0, p0}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public final O0(Li4/f;)Lh4/Z;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lh4/s;

    iget-object v0, p0, Lh4/s;->f:Lh4/q;

    const-string v1, "type"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/s;->g:Lh4/v;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p1, v0, p0}, Lh4/s;-><init>(Lh4/q;Lh4/v;)V

    return-object p1
.end method

.method public final P0(Lh4/G;)Lh4/Z;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/s;->f:Lh4/q;

    invoke-virtual {v0, p1}, Lh4/Z;->P0(Lh4/G;)Lh4/Z;

    move-result-object p1

    iget-object p0, p0, Lh4/s;->g:Lh4/v;

    invoke-static {p1, p0}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public final Q0()Lh4/z;
    .locals 0

    iget-object p0, p0, Lh4/s;->f:Lh4/q;

    invoke-virtual {p0}, Lh4/q;->Q0()Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public final R0(LS3/g;LS3/i;)Ljava/lang/String;
    .locals 1

    const-string v0, "renderer"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "options"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, LS3/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lh4/s;->g:Lh4/v;

    invoke-virtual {p1, p0}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lh4/s;->f:Lh4/q;

    invoke-virtual {p0, p1, p2}, Lh4/q;->R0(LS3/g;LS3/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c0()Lh4/Z;
    .locals 0

    iget-object p0, p0, Lh4/s;->f:Lh4/q;

    return-object p0
.end method

.method public final p0()Lh4/v;
    .locals 0

    iget-object p0, p0, Lh4/s;->g:Lh4/v;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[@EnhancedForWarnings("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lh4/s;->g:Lh4/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh4/s;->f:Lh4/q;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
