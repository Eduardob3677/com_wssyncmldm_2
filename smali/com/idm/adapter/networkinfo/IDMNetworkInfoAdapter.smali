.class public abstract Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/network/IDMNetworkInterface;
.implements Lcom/idm/agent/dm/IDMDmInterface;


# instance fields
.field private connectNetworkTimeOut:[I

.field private extraTime:[I

.field private httpHeadersMap:Lo/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/b;"
        }
    .end annotation
.end field

.field private mNetwork:Landroid/net/Network;

.field private networkRetryCount:[I

.field private recvNetworkTimeOut:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->networkRetryCount:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->connectNetworkTimeOut:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->recvNetworkTimeOut:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->extraTime:[I

    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/k;-><init>()V

    iput-object v0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->httpHeadersMap:Lo/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->mNetwork:Landroid/net/Network;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->networkRetryCount:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->connectNetworkTimeOut:[I

    const v2, 0xea60

    aput v2, v1, v0

    iget-object v1, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->recvNetworkTimeOut:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->extraTime:[I

    const/16 v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public idmCheckContentTypeIfNecessary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract idmCustomApnClose()V
.end method

.method public abstract idmCustomApnOpen()Z
.end method

.method public idmGetConnectNetworkTimeOut(I)I
    .locals 0

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->connectNetworkTimeOut:[I

    aget p0, p0, p1

    return p0
.end method

.method public idmGetExtraTime(I)I
    .locals 0

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->extraTime:[I

    aget p0, p0, p1

    return p0
.end method

.method public idmGetHttpHeadersMap()Lo/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/b;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->httpHeadersMap:Lo/b;

    return-object p0
.end method

.method public abstract idmGetIsCustomApn()Z
.end method

.method public abstract idmGetIsProxy()Z
.end method

.method public idmGetIsSSLCheck()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public idmGetNetwork()Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public idmGetNetworkRetryCount(I)I
    .locals 0

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->networkRetryCount:[I

    aget p0, p0, p1

    return p0
.end method

.method public idmGetNetworkTrustInfo(I)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    new-instance v2, Lcom/idm/network/IDMNetworkXTPTrustManager;

    invoke-virtual {p0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsSSLCheck()Z

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/idm/network/IDMNetworkXTPTrustManager;-><init>(Ljava/security/KeyStore;Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v3, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetConnectNetworkTimeOut(I)I

    move-result p0

    invoke-interface {v2, p0}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public abstract idmGetObjectUrlAddNetworkInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract idmGetProxyIp()Ljava/lang/String;
.end method

.method public abstract idmGetProxyPort()I
.end method

.method public idmGetRecvNetworkTimeOut(I)I
    .locals 0

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->recvNetworkTimeOut:[I

    aget p0, p0, p1

    return p0
.end method

.method public idmInitHttpHeadersMap()V
    .locals 1

    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/k;-><init>()V

    iput-object v0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->httpHeadersMap:Lo/b;

    return-void
.end method

.method public idmMakeHttpHeader(ILjava/net/HttpURLConnection;Ljava/lang/String;I)V
    .locals 2

    const-string p1, "idmMakeHttpHeader"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->httpHeadersMap:Lo/b;

    invoke-virtual {p1}, Lo/b;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lo/h;

    invoke-virtual {p1}, Lo/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object p1

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "SyncML DM Client"

    invoke-virtual {p2, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object p1

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    if-nez p4, :cond_2

    const-string p1, "close"

    invoke-virtual {p2, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "Keep-Alive"

    invoke-virtual {p2, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object p1

    const-string p4, "Content-Type"

    invoke-virtual {p1, p4}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "application/vnd.syncml.dm+wbxml"

    if-nez p1, :cond_4

    invoke-virtual {p2, p4, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object p0

    const-string p1, "Accept"

    invoke-virtual {p0, p1}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "x-syncml-hmac"

    invoke-virtual {p2, p0, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_7

    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    move-result p1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result p1

    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Host"

    invoke-virtual {p2, p1, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmSetConnectNetworkTimeOut(II)V
    .locals 0

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->connectNetworkTimeOut:[I

    aput p2, p0, p1

    return-void
.end method

.method public idmSetExtraTime(II)V
    .locals 0

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->extraTime:[I

    aput p2, p0, p1

    return-void
.end method

.method public idmSetHttpHeadersMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->httpHeadersMap:Lo/b;

    invoke-virtual {p0, p1, p2}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract idmSetIsCustomApn()V
.end method

.method public abstract idmSetIsProxy(Z)V
.end method

.method public idmSetNetwork(Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public idmSetNetworkRetryCount(II)V
    .locals 0

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->networkRetryCount:[I

    aput p2, p0, p1

    return-void
.end method

.method public abstract idmSetProxyIp(Ljava/lang/String;)V
.end method

.method public abstract idmSetProxyPort(I)V
.end method

.method public idmSetRecvNetworkTimeOut(II)V
    .locals 0

    iget-object p0, p0, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->recvNetworkTimeOut:[I

    aput p2, p0, p1

    return-void
.end method

.method public idmSocketTrafficStats()V
    .locals 0

    const-string p0, "No traffic stats"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void
.end method
