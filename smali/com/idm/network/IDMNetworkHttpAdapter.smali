.class public Lcom/idm/network/IDMNetworkHttpAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/network/IDMNetworkInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/network/IDMNetworkHttpAdapter;->lambda$idmCreateHttpUrlConnection$1(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/network/IDMNetworkHttpAdapter;->lambda$idmCreateHttpUrlConnection$0(Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method private idmGetDataStream(Ljava/io/InputStream;)[B
    .locals 3

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_1
    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpReceive;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpReceive;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private idmGetDataStreamUsingBuffer(Ljava/io/InputStream;I)[B
    .locals 1

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array p2, p2, [B

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_1
    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpReceive;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpReceive;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private idmGetHttpHeaderResponseCode(Ljava/net/HttpURLConnection;)I
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\r\n"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "statusCode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :goto_1
    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpReceive;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpReceive;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpReceive;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpReceive;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static synthetic lambda$idmCreateHttpUrlConnection$0(Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$idmCreateHttpUrlConnection$1(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private openConnection(Ljava/net/URL;Ljava/net/Proxy;Landroid/net/Network;)Ljava/net/HttpURLConnection;
    .locals 0

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    :cond_0
    invoke-virtual {p3, p1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method


# virtual methods
.method public idmConnectHttpUrlConnection(Ljava/net/HttpURLConnection;Lcom/idm/network/IDMNetworkTimer;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p2}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpUrlConnect;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpUrlConnect;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public idmCreateHttpUrlConnection(Ljava/lang/String;IILjavax/net/ssl/SSLSocketFactory;Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;)Ljava/net/HttpURLConnection;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p5}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsProxy()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p5}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetProxyIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetProxyPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/idm/network/IDMNetworkHttpAdapter;->openConnection(Ljava/net/URL;Ljava/net/Proxy;Landroid/net/Network;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string p0, "https"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "idmCreateHttpUrlConnection https"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    move-object p0, v0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p5}, Lcom/idm/adapter/networkinfo/IDMNetworkInfoAdapter;->idmGetIsSSLCheck()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "set HostNameVerifier : default"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    new-instance p5, Lcom/idm/network/a;

    invoke-direct {p5, p1}, Lcom/idm/network/a;-><init>(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-virtual {p0, p5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_1

    :cond_1
    const-string p1, "set HostNameVerifier : true"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/a;

    const/4 p5, 0x1

    invoke-direct {p1, p5}, Lcom/idm/fotaagent/restapi/restclient/a;-><init>(I)V

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :goto_1
    invoke-virtual {p0, p4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2
    invoke-virtual {v0, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpNetwork;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpNetwork;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public idmDisplayHttpHeaderRequestCode(Ljava/net/HttpURLConnection;)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "\r\n"

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Request header = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    return-void
.end method

.method public idmRecvHttpBodyDataUrlConnection(Ljava/io/InputStream;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmGetDataStream(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public idmRecvHttpBodyDataUrlConnection(Ljava/io/InputStream;I)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmGetDataStreamUsingBuffer(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public idmRecvHttpHeaderUrlConnection(Ljava/net/HttpURLConnection;Lcom/idm/network/IDMNetworkHttpHeaderInfo;Lcom/idm/network/IDMNetworkTimer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmGetHttpHeaderResponseCode(Ljava/net/HttpURLConnection;)I

    move-result p0

    invoke-virtual {p3}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    const/16 p3, 0xc8

    if-gt p3, p0, :cond_0

    const/16 p3, 0x12c

    if-ge p0, p3, :cond_0

    const-string p0, "Content-Type"

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmSetContentType(Ljava/lang/String;)V

    const-string p0, "Content-Length"

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmSetContentLength(Ljava/lang/String;)V

    const-string p0, "x-syncml-hmac"

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmSetMacData(Ljava/lang/String;)V

    const-string p0, "Connection"

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmSetConnectionType(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2, p0}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmSetResponseCode(I)V

    new-instance p0, Lcom/idm/exception/http/IDMExceptionHttpHeader;

    const-string p1, "HTTP Header Response Code Error!!!"

    invoke-direct {p0, p1}, Lcom/idm/exception/http/IDMExceptionHttpHeader;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public idmRecvHttpUrlConnection(Ljava/net/HttpURLConnection;Lcom/idm/network/IDMNetworkHttpHeaderInfo;Lcom/idm/network/IDMNetworkTimer;)[B
    .locals 2

    const-string v0, "idmRecvHttpUrlConnection"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmGetHttpHeaderResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v1

    invoke-virtual {p3}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    const/16 p3, 0xc8

    if-gt p3, v1, :cond_1

    const/16 p3, 0x12c

    if-ge v1, p3, :cond_1

    const-string p3, "Content-Type"

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmSetContentType(Ljava/lang/String;)V

    const-string p3, "x-syncml-hmac"

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmSetMacData(Ljava/lang/String;)V

    const-string p3, "Connection"

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmSetConnectionType(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmGetDataStream(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpReceive;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpReceive;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-virtual {p2, v1}, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->idmSetResponseCode(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    :cond_3
    new-instance p0, Lcom/idm/exception/http/IDMExceptionHttpHeader;

    const-string p1, "HTTP Header Response Code Error!!!"

    invoke-direct {p0, p1}, Lcom/idm/exception/http/IDMExceptionHttpHeader;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpReceive;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpReceive;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpReceive;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpReceive;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_4
    throw p0
.end method

.method public idmSendHttpUrlConnection(Ljava/net/HttpURLConnection;[BLcom/idm/network/IDMNetworkTimer;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p3}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpSend;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpSend;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-virtual {p3}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    throw p0
.end method

.method public idmSetRequestMethod(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/exception/http/IDMExceptionHttpConnect;

    invoke-direct {p1, p0}, Lcom/idm/exception/http/IDMExceptionHttpConnect;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
