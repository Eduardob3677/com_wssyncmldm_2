.class public abstract Lh4/q;
.super Lh4/Z;
.source "SourceFile"

# interfaces
.implements Lk4/c;


# instance fields
.field public final d:Lh4/z;

.field public final e:Lh4/z;


# direct methods
.method public constructor <init>(Lh4/z;Lh4/z;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "upperBound"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/q;->d:Lh4/z;

    iput-object p2, p0, Lh4/q;->e:Lh4/z;

    return-void
.end method


# virtual methods
.method public final I0()Lh4/G;
    .locals 0

    invoke-virtual {p0}, Lh4/q;->Q0()Lh4/z;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->I0()Lh4/G;

    move-result-object p0

    return-object p0
.end method

.method public final J0()Lh4/J;
    .locals 0

    invoke-virtual {p0}, Lh4/q;->Q0()Lh4/z;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    return-object p0
.end method

.method public final K0()Z
    .locals 0

    invoke-virtual {p0}, Lh4/q;->Q0()Lh4/z;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->K0()Z

    move-result p0

    return p0
.end method

.method public abstract Q0()Lh4/z;
.end method

.method public abstract R0(LS3/g;LS3/i;)Ljava/lang/String;
.end method

.method public q0()La4/o;
    .locals 0

    invoke-virtual {p0}, Lh4/q;->Q0()Lh4/z;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->q0()La4/o;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LS3/g;->e:LS3/g;

    invoke-virtual {v0, p0}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lh4/q;->Q0()Lh4/z;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
