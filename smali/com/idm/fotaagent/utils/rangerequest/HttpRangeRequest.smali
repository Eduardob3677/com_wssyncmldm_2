.class public Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;
.super Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;
.source "SourceFile"


# instance fields
.field private volatile connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/nio/file/Path;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;-><init>(Ljava/net/URL;Ljava/nio/file/Path;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/nio/file/Path;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;-><init>(Ljava/net/URL;Ljava/nio/file/Path;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private getRequestProperties(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->start()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->end()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Range"

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Cache-Control"

    const-string v0, "no-store, private"

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Connection"

    const-string v0, "Keep-Alive"

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->makeHttpUserAgent()Ljava/lang/String;

    move-result-object p2

    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Host"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private proxy()Ljava/net/Proxy;
    .locals 4

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/proxy/ProxyHandler;->getPort()I

    move-result p0

    invoke-direct {v3, v0, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public finalize(Ljava/lang/Thread;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->finalize(Ljava/lang/Thread;)V

    iget-object p1, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method public getInputStream(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)Ljava/io/InputStream;
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->proxy()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->url:Ljava/net/URL;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->getRequestProperties(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    iget-object p1, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0xce

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/idm/fotaagent/utils/rangerequest/exception/HttpResponseCodeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "responseCode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") should be 206"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/utils/rangerequest/exception/HttpResponseCodeException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
