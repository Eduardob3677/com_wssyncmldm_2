.class public abstract Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/idm/fotaagent/restapi/response/Response;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final MAX_RETRY:I = 0x2

.field private static final REGIST_ADDR_NODE:Ljava/lang/String; = "registAddr"

.field private static final REGIST_STAGING_ADDR_NODE:Ljava/lang/String; = "registStagingAddr"


# instance fields
.field protected body:Ljava/lang/String;

.field protected final context:Landroid/content/Context;

.field protected final parser:Lcom/idm/fotaagent/restapi/parser/XmlParser;

.field protected final response:Lcom/idm/fotaagent/restapi/response/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final strategyFactory:Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/response/Response;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/idm/fotaagent/restapi/parser/XmlParser;",
            "Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    iput-object p3, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->parser:Lcom/idm/fotaagent/restapi/parser/XmlParser;

    iput-object p4, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->strategyFactory:Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->lambda$setHostNameIfSslDisabled$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method private closeNetworkApn()V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->get()Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->close()V

    return-void
.end method

.method private getURL()Ljava/net/URL;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setHostNameIfSslDisabled$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private printRequestHeaders(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, ">> Headers:"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printRequestLog(Lcom/idm/fotaagent/restapi/request/ObjectRequest;)V
    .locals 3

    const-string v0, ">> ------------------------------------------------------------- >>"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> Request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> Method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> Body: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> Host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getRequestProperties()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->printRequestHeaders(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method private printResponseHeaders(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string p0, "<< Headers:"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private printResponseLog(Lcom/idm/fotaagent/restapi/request/ObjectRequest;Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "<< ------------------------------------------------------------- <<"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<< Response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " <<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<< Http Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Network Sign On"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "<< Host: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->printResponseHeaders(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public allowsRoaming()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkNetwork()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->allowsRoaming()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->isNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    new-instance v0, Lcom/idm/fotaagent/restapi/response/Result;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/response/Response;->setResult(Lcom/idm/fotaagent/restapi/response/Result;)V

    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/exception/OnSetUpFailedException;

    const-string v0, "Network is not available"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/exception/OnSetUpFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doesRetryFor(Lcom/idm/fotaagent/restapi/response/Result;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/response/Result;->getValue()I

    move-result p0

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/response/Result;->getValue()I

    move-result p0

    const/16 p1, 0x384

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public execute()Z
    .locals 3

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->onSetUp()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Fail to set up!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "[[ ================================================================="

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->onRequest()Lcom/idm/fotaagent/restapi/request/ObjectRequest;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Request is null!"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/idm/fotaagent/restapi/exception/InvalidTimestampException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/idm/fotaagent/restapi/exception/TimestampNotFetchedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    const/16 v1, 0xb58

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    :try_start_1
    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->setHostNameIfSslDisabled()V

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_3
    invoke-virtual {v1, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->printRequestLog(Lcom/idm/fotaagent/restapi/request/ObjectRequest;)V

    :try_start_2
    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->setProperties(Lcom/idm/fotaagent/restapi/request/ObjectRequest;Ljava/net/HttpURLConnection;)V

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->sendStreamOrConnect(Lcom/idm/fotaagent/restapi/request/ObjectRequest;Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->printResponseLog(Lcom/idm/fotaagent/restapi/request/ObjectRequest;Ljava/net/HttpURLConnection;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v2, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->onHttpResponseSuccess(Ljava/net/HttpURLConnection;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->onHttpResponseFailure(Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catch Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_3
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;->getResult()Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/idm/fotaagent/restapi/response/Response;->setResult(Lcom/idm/fotaagent/restapi/response/Result;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_4
    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Response;->getResult()Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->onRetry()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_8

    :goto_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0

    :goto_6
    const-string v1, "Fail to open connection!"

    invoke-static {v0, v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_8

    :goto_7
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_5
    :goto_8
    const-string v0, "================================================================= ]]"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->closeNetworkApn()V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/response/Response;->getResult()Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/response/Result;->isSuccess()Z

    move-result p0

    return p0
.end method

.method public generateAndValidateBody()V
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->generateBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    new-instance v0, Lcom/idm/fotaagent/restapi/response/Result;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/response/Response;->setResult(Lcom/idm/fotaagent/restapi/response/Result;)V

    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/exception/OnSetUpFailedException;

    const-string v0, "Body is empty"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/exception/OnSetUpFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generateBody()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHostUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getServerType()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    move-result-object p1

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->STAGING_SERVER:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getReleaseProfile()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "registStagingAddr"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getServerUrlByXAddrPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p1, "registAddr"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getServerUrlByXAddrPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :goto_2
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/net/MalformedURLException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getHttpMethod()Ljava/lang/String;
.end method

.method public abstract getRequestProperties(Lcom/idm/fotaagent/restapi/request/ObjectRequest;)Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;
.end method

.method public getResponse()Lcom/idm/fotaagent/restapi/response/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    return-object p0
.end method

.method public getServerUrlByXAddrPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "./DMAcc/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/AppAddr/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/Addr"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetNodeInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public isNetworkAvailable(Landroid/content/Context;Z)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/idm/fotaagent/utils/NetworkUtil;->isBlockedByRoaming(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "FAIL_NETWORK by roaming"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return p0

    :cond_0
    invoke-static {p1}, Lcom/idm/fotaagent/utils/NetworkUtil;->isAnyNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "FAIL_NETWORK by no network"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onHttpResponseFailure(Ljava/net/HttpURLConnection;)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->strategyFactory:Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;

    invoke-interface {v0}, Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;->createOnHttpResponseFailureStrategy()Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->parser:Lcom/idm/fotaagent/restapi/parser/XmlParser;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    invoke-interface {v0, p1, v1, p0}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->parse(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void
.end method

.method public onHttpResponseSuccess(Ljava/net/HttpURLConnection;)V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    new-instance v1, Lcom/idm/fotaagent/restapi/response/Result;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/restapi/response/Response;->setResult(Lcom/idm/fotaagent/restapi/response/Result;)V

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->strategyFactory:Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;

    invoke-interface {v0}, Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;->createOnHttpResponseSuccessStrategy()Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->parser:Lcom/idm/fotaagent/restapi/parser/XmlParser;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    invoke-interface {v0, p1, v1, p0}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->parse(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void
.end method

.method public onRequest()Lcom/idm/fotaagent/restapi/request/ObjectRequest;
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getURL()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    new-instance v0, Lcom/idm/fotaagent/restapi/response/Result;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/response/Response;->setResult(Lcom/idm/fotaagent/restapi/response/Result;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/idm/fotaagent/restapi/request/ObjectRequest;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getHttpMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->setMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->body:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->setBody(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->setProxy(Lcom/idm/fotaagent/restapi/request/ObjectRequest;)V

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getRequestProperties(Lcom/idm/fotaagent/restapi/request/ObjectRequest;)Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;->toMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->setRequestProperties(Ljava/util/Map;)V

    return-object v1
.end method

.method public onRetry()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSetUp()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->checkNetwork()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->generateAndValidateBody()V

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->openNetworkApnIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/idm/fotaagent/restapi/restclient/exception/OnSetUpFailedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public openNetworkApnIfNeeded(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSimSlotId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/wssyncmldm/Flavor$Apn;->usesConfiguredApn(I)Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->get()Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->open()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/exception/OnSetUpFailedException;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/restapi/restclient/exception/OnSetUpFailedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public sendStream(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    if-eqz p0, :cond_0

    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    return-void
.end method

.method public sendStreamOrConnect(Lcom/idm/fotaagent/restapi/request/ObjectRequest;Ljava/net/HttpURLConnection;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->sendStream(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URLConnection;->connect()V

    :goto_0
    return-void
.end method

.method public setHostNameIfSslDisabled()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->isSslCheckEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/a;-><init>(I)V

    invoke-static {p0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_0
    return-void
.end method

.method public setProperties(Lcom/idm/fotaagent/restapi/request/ObjectRequest;Ljava/net/HttpURLConnection;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getMethod()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const p0, 0xea60

    invoke-virtual {p2, p0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProxy(Lcom/idm/fotaagent/restapi/request/ObjectRequest;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->getPort()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->setProxy(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
