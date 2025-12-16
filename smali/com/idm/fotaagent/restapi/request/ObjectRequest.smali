.class public Lcom/idm/fotaagent/restapi/request/ObjectRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;
    }
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private proxy:Ljava/net/Proxy;

.field private requestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->body:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->method:Ljava/lang/String;

    return-object p0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->requestProperties:Ljava/util/Map;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object p0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->url:Ljava/net/URL;

    return-object p0
.end method

.method public hasBody()Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->body:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->body:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->method:Ljava/lang/String;

    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->proxy:Ljava/net/Proxy;

    :cond_0
    return-void
.end method

.method public setRequestProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->requestProperties:Ljava/util/Map;

    return-void
.end method
