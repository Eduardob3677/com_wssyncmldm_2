.class public final Lcom/google/android/gms/internal/firebase-auth-api/O0;
.super Lcom/google/android/gms/internal/firebase-auth-api/l5;
.source "SourceFile"


# virtual methods
.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/P0;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/P0;->p(Lcom/google/android/gms/internal/firebase-auth-api/P0;)V

    return-void
.end method
