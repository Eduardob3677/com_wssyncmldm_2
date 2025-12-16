.class public final Lcom/google/android/gms/internal/firebase-auth-api/E;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge a(Lcom/google/android/gms/internal/firebase-auth-api/D;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/D;->a()I

    move-result p0

    return p0
.end method

.method public static bridge b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/D;
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    return-object p0
.end method

.method public static c(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/b5;)Z
    .locals 8

    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v6, 0x2

    if-eq v0, v6, :cond_6

    if-eq v0, v4, :cond_2

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/D;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/D;->c(ILjava/lang/Object;)V

    return v3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->a()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    throw p0

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/D;->b()Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object v0

    shl-int/2addr v1, v4

    or-int/lit8 v5, v1, 0x4

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->u()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_4

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/E;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/b5;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_4
    iget p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    if-ne v5, p1, :cond_5

    iput-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/D;->e:Z

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/D;

    or-int/lit8 p1, v1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/D;->c(ILjava/lang/Object;)V

    return v3

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->v()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/D;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr v0, v6

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/D;->c(ILjava/lang/Object;)V

    return v3

    :cond_7
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/D;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr v0, v3

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/D;->c(ILjava/lang/Object;)V

    return v3

    :cond_8
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/D;

    shl-int/lit8 v0, v1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/D;->c(ILjava/lang/Object;)V

    return v3
.end method

.method public static bridge d(Lcom/google/android/gms/internal/firebase-auth-api/D;Lcom/google/android/gms/internal/firebase-auth-api/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/D;->d(Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    return-void
.end method
