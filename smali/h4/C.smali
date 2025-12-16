.class public final Lh4/C;
.super Lh4/n;
.source "SourceFile"

# interfaces
.implements Lh4/Y;


# instance fields
.field public final d:Lh4/z;

.field public final e:Lh4/v;


# direct methods
.method public constructor <init>(Lh4/z;Lh4/v;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "enhancement"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/C;->d:Lh4/z;

    iput-object p2, p0, Lh4/C;->e:Lh4/v;

    return-void
.end method


# virtual methods
.method public final bridge synthetic L0(Li4/f;)Lh4/v;
    .locals 0

    invoke-virtual {p0, p1}, Lh4/C;->V0(Li4/f;)Lh4/C;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic O0(Li4/f;)Lh4/Z;
    .locals 0

    invoke-virtual {p0, p1}, Lh4/C;->V0(Li4/f;)Lh4/C;

    move-result-object p0

    return-object p0
.end method

.method public final Q0(Z)Lh4/z;
    .locals 1

    iget-object v0, p0, Lh4/C;->d:Lh4/z;

    invoke-virtual {v0, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v0

    iget-object p0, p0, Lh4/C;->e:Lh4/v;

    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh4/Z;->N0(Z)Lh4/Z;

    move-result-object p0

    invoke-static {v0, p0}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p1, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lh4/z;

    return-object p0
.end method

.method public final R0(Lh4/G;)Lh4/z;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/C;->d:Lh4/z;

    invoke-virtual {v0, p1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object p1

    iget-object p0, p0, Lh4/C;->e:Lh4/v;

    invoke-static {p1, p0}, Lh4/c;->A(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p1, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lh4/z;

    return-object p0
.end method

.method public final S0()Lh4/z;
    .locals 0

    iget-object p0, p0, Lh4/C;->d:Lh4/z;

    return-object p0
.end method

.method public final bridge synthetic T0(Li4/f;)Lh4/z;
    .locals 0

    invoke-virtual {p0, p1}, Lh4/C;->V0(Li4/f;)Lh4/C;

    move-result-object p0

    return-object p0
.end method

.method public final U0(Lh4/z;)Lh4/n;
    .locals 1

    new-instance v0, Lh4/C;

    iget-object p0, p0, Lh4/C;->e:Lh4/v;

    invoke-direct {v0, p1, p0}, Lh4/C;-><init>(Lh4/z;Lh4/v;)V

    return-object v0
.end method

.method public final V0(Li4/f;)Lh4/C;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lh4/C;

    iget-object v0, p0, Lh4/C;->d:Lh4/z;

    const-string v1, "type"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/C;->e:Lh4/v;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p1, v0, p0}, Lh4/C;-><init>(Lh4/z;Lh4/v;)V

    return-object p1
.end method

.method public final c0()Lh4/Z;
    .locals 0

    iget-object p0, p0, Lh4/C;->d:Lh4/z;

    return-object p0
.end method

.method public final p0()Lh4/v;
    .locals 0

    iget-object p0, p0, Lh4/C;->e:Lh4/v;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[@EnhancedForWarnings("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lh4/C;->e:Lh4/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh4/C;->d:Lh4/z;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
