.class public final Lh4/a;
.super Lh4/n;
.source "SourceFile"


# instance fields
.field public final d:Lh4/z;

.field public final e:Lh4/z;


# direct methods
.method public constructor <init>(Lh4/z;Lh4/z;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "abbreviation"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/a;->d:Lh4/z;

    iput-object p2, p0, Lh4/a;->e:Lh4/z;

    return-void
.end method


# virtual methods
.method public final bridge synthetic L0(Li4/f;)Lh4/v;
    .locals 0

    invoke-virtual {p0, p1}, Lh4/a;->W0(Li4/f;)Lh4/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic N0(Z)Lh4/Z;
    .locals 0

    invoke-virtual {p0, p1}, Lh4/a;->V0(Z)Lh4/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic O0(Li4/f;)Lh4/Z;
    .locals 0

    invoke-virtual {p0, p1}, Lh4/a;->W0(Li4/f;)Lh4/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic Q0(Z)Lh4/z;
    .locals 0

    invoke-virtual {p0, p1}, Lh4/a;->V0(Z)Lh4/a;

    move-result-object p0

    return-object p0
.end method

.method public final R0(Lh4/G;)Lh4/z;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lh4/a;

    iget-object v1, p0, Lh4/a;->d:Lh4/z;

    invoke-virtual {v1, p1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object p1

    iget-object p0, p0, Lh4/a;->e:Lh4/z;

    invoke-direct {v0, p1, p0}, Lh4/a;-><init>(Lh4/z;Lh4/z;)V

    return-object v0
.end method

.method public final S0()Lh4/z;
    .locals 0

    iget-object p0, p0, Lh4/a;->d:Lh4/z;

    return-object p0
.end method

.method public final bridge synthetic T0(Li4/f;)Lh4/z;
    .locals 0

    invoke-virtual {p0, p1}, Lh4/a;->W0(Li4/f;)Lh4/a;

    move-result-object p0

    return-object p0
.end method

.method public final U0(Lh4/z;)Lh4/n;
    .locals 1

    new-instance v0, Lh4/a;

    iget-object p0, p0, Lh4/a;->e:Lh4/z;

    invoke-direct {v0, p1, p0}, Lh4/a;-><init>(Lh4/z;Lh4/z;)V

    return-object v0
.end method

.method public final V0(Z)Lh4/a;
    .locals 2

    new-instance v0, Lh4/a;

    iget-object v1, p0, Lh4/a;->d:Lh4/z;

    invoke-virtual {v1, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v1

    iget-object p0, p0, Lh4/a;->e:Lh4/z;

    invoke-virtual {p0, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh4/a;-><init>(Lh4/z;Lh4/z;)V

    return-object v0
.end method

.method public final W0(Li4/f;)Lh4/a;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lh4/a;

    iget-object v0, p0, Lh4/a;->d:Lh4/z;

    const-string v1, "type"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/a;->e:Lh4/z;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p1, v0, p0}, Lh4/a;-><init>(Lh4/z;Lh4/z;)V

    return-object p1
.end method
