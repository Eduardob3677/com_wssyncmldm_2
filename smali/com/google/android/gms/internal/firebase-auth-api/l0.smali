.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/Q;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v1}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v0

    :goto_0
    const-string v5, "KeyTypeManager constructed with duplicate factories for primitive "

    if-gtz v4, :cond_2

    aget-object v6, v1, v4

    iget-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v7, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l0;->a:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v1}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v0

    :goto_2
    if-gtz v4, :cond_5

    aget-object v6, v1, v4

    iget-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v7, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l0;->b:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v1}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v0

    :goto_4
    if-gtz v4, :cond_8

    aget-object v6, v1, v4

    iget-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v7, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v1}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v0

    :goto_6
    if-gtz v4, :cond_b

    aget-object v6, v1, v4

    iget-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v7, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v1}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v0

    :goto_8
    if-gtz v4, :cond_e

    aget-object v6, v1, v4

    iget-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v7, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v1}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v0

    :goto_a
    if-gtz v4, :cond_11

    aget-object v6, v1, v4

    iget-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v7, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v1}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v0

    :goto_c
    if-gtz v4, :cond_14

    aget-object v6, v1, v4

    iget-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v7, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_12
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_14
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v1}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v3, v0

    :goto_e
    if-gtz v3, :cond_17

    aget-object v4, v1, v3

    iget-object v6, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v6, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_15
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_17
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/k2;->a:I

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/l0;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/o0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->f(Lcom/google/android/gms/internal/firebase-auth-api/e0;)V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/G0;->a()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e(Lcom/google/android/gms/internal/firebase-auth-api/X;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z0;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e(Lcom/google/android/gms/internal/firebase-auth-api/X;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y0;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e(Lcom/google/android/gms/internal/firebase-auth-api/X;)V

    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e(Lcom/google/android/gms/internal/firebase-auth-api/X;)V

    :catch_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z0;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e(Lcom/google/android/gms/internal/firebase-auth-api/X;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e(Lcom/google/android/gms/internal/firebase-auth-api/X;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z0;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z0;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e(Lcom/google/android/gms/internal/firebase-auth-api/X;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e(Lcom/google/android/gms/internal/firebase-auth-api/X;)V

    return-void
.end method
