.class public final Lcom/google/android/gms/internal/firebase-auth-api/k;
.super Lcom/google/android/gms/internal/firebase-auth-api/l;
.source "SourceFile"


# virtual methods
.method public final a(JLjava/lang/Object;)Ljava/util/List;
    .locals 1

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V4;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/V4;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/c;->d(I)Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final b(JLjava/lang/Object;)V
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/c;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/V4;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/V4;->c:Z

    return-void
.end method

.method public final c(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/c;

    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p4, :cond_1

    if-lez v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/V4;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/V4;->c:Z

    if-nez v2, :cond_0

    add-int/2addr v1, p4

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/c;->d(I)Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz p4, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
