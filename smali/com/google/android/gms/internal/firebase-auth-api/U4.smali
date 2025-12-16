.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/U4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected zza:I


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/firebase-auth-api/f5;)V
.end method

.method public final b()Lcom/google/android/gms/internal/firebase-auth-api/Y4;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->d()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->d:Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    new-array v1, v0, [B

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/f5;->e:Ljava/util/logging/Logger;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/c5;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/c5;-><init>([BI)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->a(Lcom/google/android/gms/internal/firebase-auth-api/f5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->v0()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;-><init>([B)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x48

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Serializing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to a ByteString threw an IOException (should never happen)."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()[B
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->d()I

    move-result v0

    new-array v1, v0, [B

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/f5;->e:Ljava/util/logging/Logger;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/c5;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/c5;-><init>([BI)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->a(Lcom/google/android/gms/internal/firebase-auth-api/f5;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/c5;->v0()I

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x48

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Serializing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract d()I
.end method
