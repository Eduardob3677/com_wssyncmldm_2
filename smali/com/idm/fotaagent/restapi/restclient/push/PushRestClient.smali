.class public abstract Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;
.super Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Received;,
        Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Registration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/restapi/restclient/BaseRestClient<",
        "Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;",
        ">;"
    }
.end annotation


# instance fields
.field private retry:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-direct {v0}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;-><init>()V

    new-instance v1, Lcom/idm/fotaagent/restapi/parser/XmlParser;

    invoke-direct {v1}, Lcom/idm/fotaagent/restapi/parser/XmlParser;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/response/Response;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;)V

    return-void
.end method


# virtual methods
.method public getRequestProperties(Lcom/idm/fotaagent/restapi/request/ObjectRequest;)Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$WithAuth$ByServerTime;

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/ObjectRequest;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$WithAuth$ByServerTime;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public onRetry()Z
    .locals 4

    iget v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;->retry:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;->retry:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "retry: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;->retry:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    iget v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;->retry:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    check-cast v0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Response;->getResult()Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->doesRetryFor(Lcom/idm/fotaagent/restapi/response/Result;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->response:Lcom/idm/fotaagent/restapi/response/Response;

    check-cast v0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SSO_8005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->clear()V

    return v1

    :cond_2
    return v3
.end method
