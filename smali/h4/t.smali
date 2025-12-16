.class public final Lh4/t;
.super Lh4/S;
.source "SourceFile"


# instance fields
.field public final b:[Lr3/Q;

.field public final c:[Lh4/N;

.field public final d:Z


# direct methods
.method public constructor <init>([Lr3/Q;[Lh4/N;Z)V
    .locals 1

    const-string v0, "parameters"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "arguments"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/t;->b:[Lr3/Q;

    iput-object p2, p0, Lh4/t;->c:[Lh4/N;

    iput-boolean p3, p0, Lh4/t;->d:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lh4/t;->d:Z

    return p0
.end method

.method public final d(Lh4/v;)Lh4/N;
    .locals 4

    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object p1

    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object p1

    instance-of v0, p1, Lr3/Q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lr3/Q;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Lr3/Q;->z0()I

    move-result v0

    iget-object v2, p0, Lh4/t;->b:[Lr3/Q;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lr3/g;->H()Lh4/J;

    move-result-object v2

    invoke-interface {p1}, Lr3/g;->H()Lh4/J;

    move-result-object p1

    invoke-static {v2, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lh4/t;->c:[Lh4/N;

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lh4/t;->c:[Lh4/N;

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
