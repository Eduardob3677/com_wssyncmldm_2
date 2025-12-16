.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/S;

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gtz v3, :cond_2

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "KeyTypeManager constructed with duplicate factories for primitive "

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/v0;->a:Ljava/lang/String;

    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/k2;->a:I

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/x0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->f(Lcom/google/android/gms/internal/firebase-auth-api/e0;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z0;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e(Lcom/google/android/gms/internal/firebase-auth-api/X;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
