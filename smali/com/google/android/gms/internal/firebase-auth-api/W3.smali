.class public final Lcom/google/android/gms/internal/firebase-auth-api/W3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/a;
.implements Ljava/lang/Cloneable;


# instance fields
.field public c:Z

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "A valid API key must be provided"

    invoke-static {p1, v0}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/W3;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/W3;->d:Ljava/lang/String;

    invoke-static {p0}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/W3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/W3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/W3;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/W3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/W3;->d:Ljava/lang/String;

    invoke-static {v3, v1}, Lc1/D;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/W3;->c:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/W3;->c:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/W3;->d:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/W3;->c:Z

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method
