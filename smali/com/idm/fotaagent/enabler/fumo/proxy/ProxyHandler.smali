.class public Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private proxyAddress:Ljava/lang/String;

.field private proxyPort:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyAddress:Ljava/lang/String;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->setProxy()V

    return-void
.end method

.method private checkPort(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private setProxyViaCarrierFeature()Z
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSimSlotId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->getProxyAddress(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->getProxyPort(I)I

    move-result v0

    iput v0, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyPort:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "carrierProxyAddress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "carrierProxyPort: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyPort:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setProxyViaSystemProperty()V
    .locals 3

    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->checkPort(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyAddress:Ljava/lang/String;

    iput v1, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyPort:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http.proxyHost: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http.proxyPort: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyPort:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string p0, "Invalid port. Ignore proxy"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->proxyPort:I

    return p0
.end method

.method public setProxy()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isAnyNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "no network"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "no need to set proxy"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->setProxyViaCarrierFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->setProxyViaSystemProperty()V

    return-void
.end method
