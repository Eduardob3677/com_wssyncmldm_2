.class public Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;
.super Lcom/idm/core/security/IDMSecurityAESCrypt;
.source "SourceFile"


# instance fields
.field private szKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurityAESCrypt;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->szKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmGetCryptionResult([BILjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public encrypt([B)[B
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmGetCryptionResult([BILjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public idmGetCryptionkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->szKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/fotaagent/common/util/NativeUtils;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->szKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->szKey:Ljava/lang/String;

    return-object p0
.end method
