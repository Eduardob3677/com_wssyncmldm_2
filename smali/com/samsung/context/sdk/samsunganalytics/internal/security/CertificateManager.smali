.class public Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$Singleton;
    }
.end annotation


# static fields
.field private static final CA_STORE_NAME:Ljava/lang/String; = "AndroidCAStore"

.field private static final SSL_PROTOCOL:Ljava/lang/String; = "TLS"


# instance fields
.field private sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->pinningSystemCA()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;
    .locals 1

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$Singleton;->access$100()Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    move-result-object v0

    return-object v0
.end method

.method private pinningSystemCA()V
    .locals 2

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    const-string p0, "pinning bypassed - certificate validation disabled"

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pinning bypass fail : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingW(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method
