.class public final Lh4/x;
.super Lh4/v;
.source "SourceFile"


# instance fields
.field public final d:Lg4/o;

.field public final e:Lc3/a;

.field public final f:Lg4/i;


# direct methods
.method public constructor <init>(Lg4/o;Lc3/a;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/x;->d:Lg4/o;

    iput-object p2, p0, Lh4/x;->e:Lc3/a;

    check-cast p1, Lg4/l;

    new-instance v0, Lg4/i;

    invoke-direct {v0, p1, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v0, p0, Lh4/x;->f:Lg4/i;

    return-void
.end method


# virtual methods
.method public final I0()Lh4/G;
    .locals 0

    invoke-virtual {p0}, Lh4/x;->N0()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->I0()Lh4/G;

    move-result-object p0

    return-object p0
.end method

.method public final J0()Lh4/J;
    .locals 0

    invoke-virtual {p0}, Lh4/x;->N0()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    return-object p0
.end method

.method public final K0()Z
    .locals 0

    invoke-virtual {p0}, Lh4/x;->N0()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->K0()Z

    move-result p0

    return p0
.end method

.method public final L0(Li4/f;)Lh4/v;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lh4/x;

    new-instance v1, LB3/c;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2, p0}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p0, Lh4/x;->d:Lg4/o;

    invoke-direct {v0, p0, v1}, Lh4/x;-><init>(Lg4/o;Lc3/a;)V

    return-object v0
.end method

.method public final M0()Lh4/Z;
    .locals 1

    invoke-virtual {p0}, Lh4/x;->N0()Lh4/v;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lh4/x;

    if-eqz v0, :cond_0

    check-cast p0, Lh4/x;

    invoke-virtual {p0}, Lh4/x;->N0()Lh4/v;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lh4/Z;

    return-object p0
.end method

.method public final N0()Lh4/v;
    .locals 0

    iget-object p0, p0, Lh4/x;->f:Lg4/i;

    invoke-virtual {p0}, Lg4/i;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/v;

    return-object p0
.end method

.method public final q0()La4/o;
    .locals 0

    invoke-virtual {p0}, Lh4/x;->N0()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->q0()La4/o;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lh4/x;->f:Lg4/i;

    iget-object v1, v0, Lg4/h;->e:Ljava/lang/Object;

    sget-object v2, Lg4/k;->c:Lg4/k;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lg4/h;->e:Ljava/lang/Object;

    sget-object v1, Lg4/k;->d:Lg4/k;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lh4/x;->N0()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "<Not computed yet>"

    :goto_0
    return-object p0
.end method

.method public final u0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lh4/x;->N0()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->u0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
