.class public final Lcom/google/android/gms/internal/firebase-auth-api/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/i0;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/X;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/g0;->a:Lcom/google/android/gms/internal/firebase-auth-api/X;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/g0;->a:Lcom/google/android/gms/internal/firebase-auth-api/X;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/firebase-auth-api/U;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/g0;->a:Lcom/google/android/gms/internal/firebase-auth-api/X;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/X;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/U;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/g0;->a:Lcom/google/android/gms/internal/firebase-auth-api/X;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/X;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Primitive type not supported"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final e()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/g0;->a:Lcom/google/android/gms/internal/firebase-auth-api/X;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
