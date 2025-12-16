.class public abstract Lh4/o;
.super Lh4/n;
.source "SourceFile"


# instance fields
.field public final d:Lh4/z;


# direct methods
.method public constructor <init>(Lh4/z;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/o;->d:Lh4/z;

    return-void
.end method


# virtual methods
.method public final Q0(Z)Lh4/z;
    .locals 1

    invoke-virtual {p0}, Lh4/n;->K0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lh4/o;->d:Lh4/z;

    invoke-virtual {v0, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p1

    invoke-virtual {p0}, Lh4/n;->I0()Lh4/G;

    move-result-object p0

    invoke-virtual {p1, p0}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public final R0(Lh4/G;)Lh4/z;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh4/n;->I0()Lh4/G;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Lh4/B;

    invoke-direct {v0, p0, p1}, Lh4/B;-><init>(Lh4/z;Lh4/G;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public final S0()Lh4/z;
    .locals 0

    iget-object p0, p0, Lh4/o;->d:Lh4/z;

    return-object p0
.end method
