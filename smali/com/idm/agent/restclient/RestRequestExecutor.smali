.class public Lcom/idm/agent/restclient/RestRequestExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\r\n"


# instance fields
.field private final actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

.field private final callback:Lcom/idm/adapter/callback/IDMCallback;

.field private final context:Landroid/content/Context;

.field private final networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

.field private final restRequest:Lcom/idm/agent/restclient/RestRequest;

.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;Lcom/idm/agent/restclient/RestRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p3}, Lcom/idm/adapter/handler/AdaptersHolder;->getNetworkAdapter()Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    iput-object p4, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->callback:Lcom/idm/adapter/callback/IDMCallback;

    iput-object p5, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->restRequest:Lcom/idm/agent/restclient/RestRequest;

    invoke-virtual {p2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->taskId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/idm/agent/restclient/RestRequestExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/agent/restclient/RestRequestExecutor;->lambda$start$0()V

    return-void
.end method

.method private appendResponseBody(Ljava/lang/StringBuilder;Ljava/net/HttpURLConnection;)V
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {p2}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    invoke-virtual {p2, p0}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmRecvHttpBodyDataUrlConnection(Ljava/io/InputStream;)[B

    move-result-object p2

    array-length v0, p2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-void
.end method

.method private createHttpHeader(Ljava/net/HttpURLConnection;)V
    .locals 4

    iget-object v0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    iget-object v1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmMakeHttpHeader(ILjava/net/HttpURLConnection;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object v0

    const-string v1, "Accept"

    invoke-virtual {v0, v1}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "application/vnd.oma.dd+xml"

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetHttpHeadersMap()Lo/b;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->restRequest:Lcom/idm/agent/restclient/RestRequest;

    invoke-virtual {v0}, Lcom/idm/agent/restclient/RestRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->restRequest:Lcom/idm/agent/restclient/RestRequest;

    invoke-virtual {p0}, Lcom/idm/agent/restclient/RestRequest;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "0"

    invoke-virtual {p1, v1, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private createUrlConnectionAndSend()Ljava/net/HttpURLConnection;
    .locals 10

    iget-object v0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v0

    new-instance v7, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-direct {v7}, Lcom/idm/network/IDMNetworkHttpAdapter;-><init>()V

    iget-object v1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->restRequest:Lcom/idm/agent/restclient/RestRequest;

    invoke-virtual {v1}, Lcom/idm/agent/restclient/RestRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetConnectNetworkTimeOut(I)I

    move-result v3

    iget-object v1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetRecvNetworkTimeOut(I)I

    move-result v4

    iget-object v1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetworkTrustInfo(I)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmCreateHttpUrlConnection(Ljava/lang/String;IILjavax/net/ssl/SSLSocketFactory;Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;)Ljava/net/HttpURLConnection;

    move-result-object v8

    iget-object v1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->restRequest:Lcom/idm/agent/restclient/RestRequest;

    invoke-virtual {v1}, Lcom/idm/agent/restclient/RestRequest;->getMethodType()Lcom/idm/agent/restclient/RestRequest$MethodType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/agent/restclient/RestRequest$MethodType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmSetRequestMethod(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-direct {p0, v8}, Lcom/idm/agent/restclient/RestRequestExecutor;->createHttpHeader(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, v8}, Lcom/idm/agent/restclient/RestRequestExecutor;->printRequestProperties(Ljava/net/HttpURLConnection;)V

    iget-object v1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->restRequest:Lcom/idm/agent/restclient/RestRequest;

    invoke-virtual {v1}, Lcom/idm/agent/restclient/RestRequest;->getMethodType()Lcom/idm/agent/restclient/RestRequest$MethodType;

    move-result-object v1

    sget-object v2, Lcom/idm/agent/restclient/RestRequest$MethodType;->REST_METHOD_POST:Lcom/idm/agent/restclient/RestRequest$MethodType;

    if-ne v1, v2, :cond_0

    new-instance v9, Lcom/idm/network/IDMNetworkTimer;

    sget-object v2, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->IDM_NETWORK_TIMER_MODE_CONNECT:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    iget-object v1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetConnectNetworkTimeOut(I)I

    move-result v3

    iget-object v1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->networkAdapter:Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;

    invoke-virtual {v1, v0}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetExtraTime(I)I

    move-result v4

    move-object v1, v9

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/idm/network/IDMNetworkTimer;-><init>(Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;IILcom/idm/network/IDMNetworkHttpAdapter;Ljava/net/HttpURLConnection;)V

    iget-object p0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->restRequest:Lcom/idm/agent/restclient/RestRequest;

    invoke-virtual {p0}, Lcom/idm/agent/restclient/RestRequest;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v7, v8, p0, v9}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmSendHttpUrlConnection(Ljava/net/HttpURLConnection;[BLcom/idm/network/IDMNetworkTimer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/net/URLConnection;->connect()V

    :goto_0
    return-object v8
.end method

.method private execute()V
    .locals 5

    const-string v0, "HTTP status is "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App ID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/idm/agent/restclient/RestRequestExecutor;->createUrlConnectionAndSend()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/agent/restclient/RestRequestExecutor;->printResponseProperties(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-direct {v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;-><init>()V

    const/16 v3, 0xc8

    const/16 v4, 0x12c

    if-gt v3, v2, :cond_0

    if-ge v2, v4, :cond_0

    const/16 v2, 0x12d

    const/4 v3, 0x0

    const/16 v4, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/16 v2, 0x2712

    const/16 v3, 0x1f9

    invoke-virtual {v0, v2, v4, v3}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    :goto_0
    iget-object v2, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->taskId:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/idm/agent/restclient/RestRequestExecutor;->executeCallback(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/idm/agent/restclient/RestRequestExecutor;->executeFailureCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p0
.end method

.method private executeCallback(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->callback:Lcom/idm/adapter/callback/IDMCallback;

    invoke-interface {p0, p1, p2}, Lcom/idm/adapter/callback/IDMCallback;->idmOnStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    return-void
.end method

.method private executeFailureCallback()V
    .locals 4

    new-instance v0, Lcom/idm/adapter/callback/IDMCallbackStatus;

    invoke-direct {v0}, Lcom/idm/adapter/callback/IDMCallbackStatus;-><init>()V

    const/16 v1, 0x12c

    const/16 v2, 0x1f5

    const/16 v3, 0x2712

    invoke-virtual {v0, v3, v1, v2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmSetStatus(III)V

    iget-object v1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->taskId:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/idm/agent/restclient/RestRequestExecutor;->executeCallback(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/agent/restclient/RestRequestExecutor;->lock()V

    invoke-direct {p0}, Lcom/idm/agent/restclient/RestRequestExecutor;->execute()V

    invoke-direct {p0}, Lcom/idm/agent/restclient/RestRequestExecutor;->release()V

    return-void
.end method

.method private lock()V
    .locals 2

    const-string v0, "lock"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->getInstance()Lcom/idm/adapter/common/IDMDeviceLockControl;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/idm/adapter/common/IDMDeviceLockControl;->idmLockAcquire(Landroid/content/Context;I)V

    return-void
.end method

.method private printRequestProperties(Ljava/net/HttpURLConnection;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n-----------Device RestClient RequestProperty-----------\r\n \r\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "\r\n"

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->restRequest:Lcom/idm/agent/restclient/RestRequest;

    invoke-virtual {p1}, Lcom/idm/agent/restclient/RestRequest;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/agent/restclient/RestRequestExecutor;->restRequest:Lcom/idm/agent/restclient/RestRequest;

    invoke-virtual {p0}, Lcom/idm/agent/restclient/RestRequest;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, "\r\n---------------- End ----------------"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    return-void
.end method

.method private printResponseProperties(Ljava/net/HttpURLConnection;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n-----------Device RestClient response -----------\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\r\n"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/idm/agent/restclient/RestRequestExecutor;->appendResponseBody(Ljava/lang/StringBuilder;Ljava/net/HttpURLConnection;)V

    const-string p0, "---------------- End ----------------"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    return-void
.end method

.method private release()V
    .locals 0

    const-string p0, "release"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->getInstance()Lcom/idm/adapter/common/IDMDeviceLockControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/adapter/common/IDMDeviceLockControl;->idmLockRelease()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LD1/b;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
