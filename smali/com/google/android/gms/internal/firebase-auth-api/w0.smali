.class public final Lcom/google/android/gms/internal/firebase-auth-api/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/S;


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/U;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/w0;->a:Lcom/google/android/gms/internal/firebase-auth-api/U;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 7

    array-length v0, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/w0;->a:Lcom/google/android/gms/internal/firebase-auth-api/U;

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/U;->f([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/c0;

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/c0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/S;

    invoke-interface {v2, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/S;->a([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/x0;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "ciphertext prefix matches a key, but cannot decrypt: "

    if-eqz v5, :cond_0

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v5, "com.google.crypto.tink.daead.DeterministicAeadWrapper$WrappedDeterministicAead"

    const-string v6, "decryptDeterministically"

    invoke-virtual {v3, v4, v5, v6, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/s;->a:[B

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/U;->f([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/c0;

    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/c0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/S;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/S;->a([B[B)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "decryption failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
