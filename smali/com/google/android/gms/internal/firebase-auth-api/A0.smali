.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/A0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/M;

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "KeyTypeManager constructed with duplicate factories for primitive "

    if-gtz v3, :cond_2

    aget-object v5, v0, v3

    iget-object v6, v5, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v5, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/T;

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    :goto_2
    if-gtz v3, :cond_5

    aget-object v5, v0, v3

    iget-object v6, v5, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v5, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/k2;->a:I

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/A0;->a()V
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
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/C0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->f(Lcom/google/android/gms/internal/firebase-auth-api/e0;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/D0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->f(Lcom/google/android/gms/internal/firebase-auth-api/e0;)V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/l0;->a()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/z0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/z0;-><init>(I)V

    const-string v2, "public key manager corresponding to "

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/j0;

    monitor-enter v3

    :try_start_0
    const-string v4, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    const-class v5, Lcom/google/android/gms/internal/firebase-auth-api/y0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->n()Lcom/google/android/gms/internal/firebase-auth-api/q0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->c()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;Z)V

    const-string v5, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    const-class v6, Lcom/google/android/gms/internal/firebase-auth-api/z0;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;Z)V

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/j0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/firebase-auth-api/i0;

    invoke-interface {v7}, Lcom/google/android/gms/internal/firebase-auth-api/i0;->c()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/google/android/gms/internal/firebase-auth-api/z0;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/j0;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.crypto.tink.Registry"

    const-string v5, "registerAsymmetricKeyManagers"

    const-string v6, "Attempted overwrite of a registered key manager for key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey with inconsistent public key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    invoke-virtual {v0, v1, v4, v5, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/y0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/google/android/gms/internal/firebase-auth-api/z0;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already registered with "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cannot be re-registered with "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/i0;

    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-auth-api/i0;->c()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/h0;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/h0;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/y0;Lcom/google/android/gms/internal/firebase-auth-api/z0;)V

    invoke-virtual {v6, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/j0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/M;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/M;-><init>(I)V

    invoke-virtual {v2, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->n()Lcom/google/android/gms/internal/firebase-auth-api/q0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->j(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/j0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/g0;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/g0;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/X;)V

    invoke-virtual {v6, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3

    throw v0
.end method
