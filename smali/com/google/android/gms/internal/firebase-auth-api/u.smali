.class public final Lcom/google/android/gms/internal/firebase-auth-api/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/A;


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/U4;

.field public final b:Lcom/google/android/gms/internal/firebase-auth-api/E;

.field public final c:Lcom/google/android/gms/internal/firebase-auth-api/h5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/U4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->b:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->c:Lcom/google/android/gms/internal/firebase-auth-api/h5;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->a:Lcom/google/android/gms/internal/firebase-auth-api/U4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->a:Lcom/google/android/gms/internal/firebase-auth-api/U4;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->h(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->c()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->b:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/D;->e:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->c:Lcom/google/android/gms/internal/firebase-auth-api/h5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/b5;Lcom/google/android/gms/internal/firebase-auth-api/g5;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->b:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/D;->f:Lcom/google/android/gms/internal/firebase-auth-api/D;

    if-ne p3, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/D;->b()Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->c:Lcom/google/android/gms/internal/firebase-auth-api/h5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljava/lang/Object;[BIILJ0/b;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/D;->f:Lcom/google/android/gms/internal/firebase-auth-api/D;

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/D;->b()Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    :goto_0
    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->b:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/D;->d:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/D;->a:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/D;->b:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/D;->c:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v2

    add-int/2addr v3, v3

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1, v4, v3}, LB/f;->r(III)I

    move-result v1

    const/16 v3, 0x18

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    add-int/2addr v0, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/D;->d:I

    move p1, v0

    :cond_1
    return p1
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->b:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->b(Lcom/google/android/gms/internal/firebase-auth-api/E;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->c:Lcom/google/android/gms/internal/firebase-auth-api/h5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->b:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p0, p2, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/D;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->c:Lcom/google/android/gms/internal/firebase-auth-api/h5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u;->b:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/D;->hashCode()I

    move-result p0

    return p0
.end method
