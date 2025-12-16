.class public Lcom/idm/fotaagent/restapi/restclient/polling/PollingRestClient;
.super Lcom/idm/fotaagent/restapi/restclient/NonAuthRestClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/restapi/restclient/NonAuthRestClient<",
        "Lcom/idm/fotaagent/restapi/response/Response$WithAttributes$ForPolling;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v3, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes$ForPolling;

    invoke-direct {v3}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes$ForPolling;-><init>()V

    new-instance v4, Lcom/idm/fotaagent/restapi/parser/XmlParser$Polling;

    invoke-direct {v4}, Lcom/idm/fotaagent/restapi/parser/XmlParser$Polling;-><init>()V

    new-instance v5, Lcom/idm/fotaagent/restapi/restclient/NonAuthStrategyFactory$Polling;

    invoke-direct {v5}, Lcom/idm/fotaagent/restapi/restclient/NonAuthStrategyFactory$Polling;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/restapi/restclient/NonAuthRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/restapi/response/Response;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;)V

    return-void
.end method
