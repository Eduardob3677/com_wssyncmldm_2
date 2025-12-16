.class public Lcom/idm/core/security/IDMSecurityImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idmSecurityAuthGetCredTypeFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/core/security/IDMSecurity;->idmAuthGetCredTypeFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMD5FileHash([B)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/core/security/IDMSecurity;->idmMD5FileHash([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMakeATTDevicePassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Device ID is not initialized"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/idm/core/security/IDMSecurity;->idmMakeATTFBDevicePassWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMakeATTFactoryNonce()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0}, Lcom/idm/core/security/IDMSecurity;->idmMakeATTFactoryNone()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMakeATTServerPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Device ID is not initialized"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/idm/core/security/IDMSecurity;->idmMakeATTFBServerPassWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMakeAuthBasic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/idm/core/security/IDMSecurity;->idmMakeAuthBasic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMakeAuthHMAC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/idm/core/security/IDMSecurity;->idmMakeAuthHMAC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMakeAuthMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/idm/core/security/IDMSecurity;->idmMakeAuthMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMakeDigest(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/idm/core/security/IDMSecurity;->idmMakeDigest(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMakeSECDevicePassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Device ID is not initialized"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/idm/core/security/IDMSecurity;->idmMakeSECFBDevicePassWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMakeSECFactoryNonce()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0}, Lcom/idm/core/security/IDMSecurity;->idmMakeSECFactoryNone()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmSecurityMakeSHA1Digest([BI[B)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/core/security/IDMSecurity;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurity;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/idm/core/security/IDMSecurity;->idmMakeDigestSHA1([BI[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
