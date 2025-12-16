.class Lcom/idm/core/push/IDMPushDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/push/IDMPushInterface;
.implements Lcom/idm/providers/mo/IDMMoInterface;
.implements Lcom/idm/agent/dm/IDMDmInterface;


# instance fields
.field private bNonceResync:Z

.field private digestData:[B

.field private moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

.field private notiData:[B

.field private pushInfo:Lcom/idm/core/push/IDMPushInfo;

.field private pushType:I

.field private rawData:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;[BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/idm/core/push/IDMPushDecoder;->rawData:[B

    iput p3, p0, Lcom/idm/core/push/IDMPushDecoder;->pushType:I

    new-instance p2, Lcom/idm/core/push/IDMPushInfo;

    invoke-direct {p2}, Lcom/idm/core/push/IDMPushInfo;-><init>()V

    iput-object p2, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-static {p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/push/IDMPushDecoder;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/idm/core/push/IDMPushDecoder;->rawData:[B

    iput p3, p0, Lcom/idm/core/push/IDMPushDecoder;->pushType:I

    new-instance p2, Lcom/idm/core/push/IDMPushInfo;

    invoke-direct {p2}, Lcom/idm/core/push/IDMPushInfo;-><init>()V

    iput-object p2, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    iput-boolean p4, p0, Lcom/idm/core/push/IDMPushDecoder;->bNonceResync:Z

    invoke-static {p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/push/IDMPushDecoder;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    return-void
.end method

.method private idmPushCheckNotiDigest([B)Z
    .locals 6

    iget-object v0, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v0}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v0}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetServerId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/push/IDMPushDecoder;->idmPushIsServerProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/idm/core/push/IDMPushDecoder;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v1, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v1}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetServerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "/AAuthName"

    invoke-virtual {v0, v2, v3, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/core/push/IDMPushDecoder;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v3, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v3}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetServerId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/AAuthSecret"

    invoke-virtual {v1, v2, v4, v3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/idm/core/push/IDMPushDecoder;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v4, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v4}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetServerId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/AAuthData"

    invoke-virtual {v3, v2, v5, v4}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {v4}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-virtual {v4, v0, v1, v3, p1}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeDigest(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device Digest = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/idm/core/push/IDMPushDecoder;->idmPushGetDigestData()[B

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "Server Digest = "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "checkNotiDigest success"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return v2

    :cond_0
    const-string p0, "checkNotiDigest  fail"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string p1, "clientDigest is null..."

    invoke-direct {p0, p1}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string p1, "Profile is null..."

    invoke-direct {p0, p1}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string p1, "serverId is null..."

    invoke-direct {p0, p1}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private idmPushCheckNotiReSync([B)Lcom/idm/core/push/IDMPushInfo;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v1}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/idm/core/push/IDMPushDecoder;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v2, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v2}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetServerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "/AAuthName"

    invoke-virtual {v1, v3, v4, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/core/push/IDMPushDecoder;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    iget-object v4, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v4}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetServerId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/AAuthSecret"

    invoke-virtual {v2, v3, v5, v4}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {v3}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {v3, v1, v2, v0, p1}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeDigest(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "b64Digest : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/idm/core/push/IDMPushDecoder;->idmPushGetDigestData()[B

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "checkNotiReSync Success"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string p1, "checkNotiReSync Fail"

    invoke-direct {p0, p1}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string p1, "b64Digest is null..."

    invoke-direct {p0, p1}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string p1, "Server Id is Null"

    invoke-direct {p0, p1}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private idmPushDecodeNotiHeader([B)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    aget-byte v2, p1, v0

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const/4 v4, 0x1

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xc0

    or-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v2}, Lcom/idm/core/push/IDMPushInfo;->idmPushSetVersion(I)V

    iget-object v1, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    aget-byte v2, p1, v4

    and-int/lit8 v2, v2, 0x30

    const/4 v5, 0x4

    shr-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/idm/core/push/IDMPushInfo;->idmPushSetUiMode(I)V

    aget-byte v1, p1, v4

    and-int/2addr v1, v3

    const/4 v2, 0x3

    shr-int/2addr v1, v2

    iget-object v6, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    if-lez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {v6, v1}, Lcom/idm/core/push/IDMPushInfo;->idmPushSetInitiator(I)V

    iget-object v1, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    aget-byte v6, p1, v4

    const/4 v7, 0x7

    and-int/2addr v6, v7

    const/4 v8, 0x2

    aget-byte v9, p1, v8

    or-int/2addr v6, v9

    aget-byte v2, p1, v2

    or-int/2addr v2, v6

    aget-byte v5, p1, v5

    or-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/idm/core/push/IDMPushInfo;->idmPushSetFuture(I)V

    iget-object v1, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    const/4 v2, 0x5

    invoke-static {p1, v2, v8}, Lcom/idm/adapter/common/IDMCommonUtils;->idmToHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/idm/core/push/IDMPushInfo;->idmPushSetSessionId(Ljava/lang/String;)V

    aget-byte v1, p1, v7

    if-gtz v1, :cond_1

    const-string p0, "serverIdSize is invalid"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-array v2, v1, [B

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Lcom/idm/core/push/IDMPushInfo;->idmPushSetServerId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/idm/core/push/IDMPushInfo;->idmPushSetTriggerHeaderSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :goto_1
    new-instance p1, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    invoke-direct {p1, p0}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    const-string p0, "notiTrigger is null..."

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return v0
.end method

.method private idmPushDecodeNotiTriggerBody([B)V
    .locals 5

    const-string v0, "notiTriggerBodyLength is : "

    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v2}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetTriggerHeaderSize()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string p0, "notiTriggerBody is empty"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    array-length v1, p1

    iget-object v2, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v2}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetTriggerHeaderSize()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v2, v1, [B

    iget-object v3, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {v3}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetTriggerHeaderSize()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {p1, v2}, Lcom/idm/core/push/IDMPushInfo;->idmPushSetTriggerBody([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    invoke-virtual {p0}, Lcom/idm/core/push/IDMPushInfo;->idmPushGetTriggerBody()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance p1, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    invoke-direct {p1, p0}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private idmPushGetDigestData()[B
    .locals 0

    iget-object p0, p0, Lcom/idm/core/push/IDMPushDecoder;->digestData:[B

    return-object p0
.end method

.method private idmPushGetNotiDigestData([B)[B
    .locals 2

    if-eqz p1, :cond_0

    array-length p0, p1

    const/16 v0, 0x10

    if-le p0, v0, :cond_0

    new-array p0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private idmPushGetNotiTriggerData([B)[B
    .locals 3

    if-eqz p1, :cond_0

    array-length p0, p1

    const/16 v0, 0x10

    if-le p0, v0, :cond_0

    array-length p0, p1

    sub-int/2addr p0, v0

    new-array p0, p0, [B

    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private idmPushIsServerProfile(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/idm/core/push/IDMPushDecoder;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "./DMAcc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ServerID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoIsExistNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private idmPushSetDigestData([B)V
    .locals 1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/push/IDMPushDecoder;->digestData:[B

    return-void
.end method


# virtual methods
.method public idmPushDecodePushInfo()Lcom/idm/core/push/IDMPushInfo;
    .locals 3

    iget-object v0, p0, Lcom/idm/core/push/IDMPushDecoder;->rawData:[B

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/idm/core/push/IDMPushDecoder;->pushType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/idm/core/push/IDMPushDecoder;->notiData:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string v0, "decode notiData is null..."

    invoke-direct {p0, v0}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iput-object v0, p0, Lcom/idm/core/push/IDMPushDecoder;->notiData:[B

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/idm/core/push/IDMPushDecoder;->notiData:[B

    invoke-direct {p0, v0}, Lcom/idm/core/push/IDMPushDecoder;->idmPushGetNotiDigestData([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/push/IDMPushDecoder;->idmPushSetDigestData([B)V

    iget-object v0, p0, Lcom/idm/core/push/IDMPushDecoder;->notiData:[B

    invoke-direct {p0, v0}, Lcom/idm/core/push/IDMPushDecoder;->idmPushGetNotiTriggerData([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/push/IDMPushDecoder;->idmPushDecodeNotiHeader([B)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/idm/core/push/IDMPushDecoder;->idmPushDecodeNotiTriggerBody([B)V

    iget-object v1, p0, Lcom/idm/core/push/IDMPushDecoder;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseOpen()V

    invoke-direct {p0, v0}, Lcom/idm/core/push/IDMPushDecoder;->idmPushCheckNotiDigest([B)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/idm/core/push/IDMPushDecoder;->bNonceResync:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/idm/core/push/IDMPushDecoder;->idmPushCheckNotiReSync([B)Lcom/idm/core/push/IDMPushInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    :cond_3
    iget-object v0, p0, Lcom/idm/core/push/IDMPushDecoder;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseClose()V

    iget-object p0, p0, Lcom/idm/core/push/IDMPushDecoder;->pushInfo:Lcom/idm/core/push/IDMPushInfo;

    return-object p0

    :cond_4
    new-instance p0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string v0, "decodeNotiHeader fail"

    invoke-direct {p0, v0}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string v0, "Push RawData is null..."

    invoke-direct {p0, v0}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw p0
.end method
