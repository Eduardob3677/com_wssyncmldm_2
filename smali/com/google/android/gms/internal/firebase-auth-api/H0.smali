.class public final Lcom/google/android/gms/internal/firebase-auth-api/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/b0;


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/U;

.field public final b:[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/U;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/H0;->b:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/H0;->a:Lcom/google/android/gms/internal/firebase-auth-api/U;

    return-void
.end method


# virtual methods
.method public final a([B[B)V
    .locals 8

    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/H0;->a:Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/U;->f([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/c0;

    :try_start_0
    iget v4, v3, Lcom/google/android/gms/internal/firebase-auth-api/c0;->d:I

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lk/Q0;->b(II)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v3, Lcom/google/android/gms/internal/firebase-auth-api/c0;->a:Ljava/lang/Object;

    if-eqz v4, :cond_0

    :try_start_1
    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/b0;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/H0;->b:[B

    filled-new-array {p2, v4}, [[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/s;->C([[B)[B

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/b0;->a([B[B)V

    return-void

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/b0;

    invoke-interface {v3, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/b0;->a([B[B)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/I0;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2d

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "tag prefix matches a key, but cannot verify: "

    invoke-static {v7, v6, v3}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.google.crypto.tink.mac.MacWrapper$WrappedMac"

    const-string v7, "verifyMac"

    invoke-virtual {v4, v5, v6, v7, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/s;->a:[B

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U;->f([B)Ljava/util/List;

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

    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/c0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/b0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/b0;->a([B[B)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid MAC"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "tag too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
