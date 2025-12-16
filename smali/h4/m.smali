.class public final Lh4/m;
.super Lh4/n;
.source "SourceFile"

# interfaces
.implements Lh4/k;
.implements Lk4/d;


# instance fields
.field public final d:Lh4/z;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lh4/z;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/m;->d:Lh4/z;

    iput-boolean p2, p0, Lh4/m;->e:Z

    return-void
.end method


# virtual methods
.method public final J()Z
    .locals 0

    iget-object p0, p0, Lh4/m;->d:Lh4/z;

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    instance-of p0, p0, Lr3/Q;

    return p0
.end method

.method public final K0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Q0(Z)Lh4/z;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lh4/m;->d:Lh4/z;

    invoke-virtual {p0, p1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final R0(Lh4/G;)Lh4/z;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lh4/m;

    iget-object v1, p0, Lh4/m;->d:Lh4/z;

    invoke-virtual {v1, p1}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object p1

    iget-boolean p0, p0, Lh4/m;->e:Z

    invoke-direct {v0, p1, p0}, Lh4/m;-><init>(Lh4/z;Z)V

    return-object v0
.end method

.method public final S0()Lh4/z;
    .locals 0

    iget-object p0, p0, Lh4/m;->d:Lh4/z;

    return-object p0
.end method

.method public final U0(Lh4/z;)Lh4/n;
    .locals 1

    new-instance v0, Lh4/m;

    iget-boolean p0, p0, Lh4/m;->e:Z

    invoke-direct {v0, p1, p0}, Lh4/m;-><init>(Lh4/z;Z)V

    return-object v0
.end method

.method public final d(Lh4/v;)Lh4/Z;
    .locals 1

    const-string v0, "replacement"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p1

    iget-boolean p0, p0, Lh4/m;->e:Z

    invoke-static {p1, p0}, Lh4/c;->l(Lh4/Z;Z)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lh4/m;->d:Lh4/z;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " & Any"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
