.class public final Lcom/google/android/gms/internal/firebase-auth-api/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Z

.field public static final e:Lcom/google/android/gms/internal/firebase-auth-api/x2;

.field public static final f:Lcom/google/android/gms/internal/firebase-auth-api/x2;

.field public static final g:Lcom/google/android/gms/internal/firebase-auth-api/x2;

.field public static final h:Lcom/google/android/gms/internal/firebase-auth-api/x2;

.field public static final i:Lcom/google/android/gms/internal/firebase-auth-api/x2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/M;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->b:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/s;->u()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "GmsCore_OpenSSL"

    const-string v2, "AndroidOpenSSL"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/x2;->b:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "Provider "

    const-string v8, " not available"

    invoke-static {v7, v4, v8}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v8, "toProviderList"

    invoke-virtual {v5, v6, v7, v8, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/x2;->c:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/google/android/gms/internal/firebase-auth-api/x2;->d:Z

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->c:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/google/android/gms/internal/firebase-auth-api/x2;->d:Z

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/M;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/M;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/M;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->e:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/M;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/M;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/M;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->f:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/M;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/M;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/M;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->g:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/M;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/M;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/M;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->h:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/M;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/M;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/M;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->i:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/M;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a:Lcom/google/android/gms/internal/firebase-auth-api/M;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a:Lcom/google/android/gms/internal/firebase-auth-api/M;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    :try_start_0
    invoke-virtual {v4, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/M;->b(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->d:Z

    if-eqz p0, :cond_2

    invoke-virtual {v4, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/M;->b(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "No good Provider found."

    invoke-direct {p0, p1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
