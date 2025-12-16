.class public Lcom/idm/fotaagent/restapi/restclient/masscampaign/MassCampaignRestClient;
.super Lcom/idm/fotaagent/restapi/restclient/NonAuthRestClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/restapi/restclient/NonAuthRestClient<",
        "Lcom/idm/fotaagent/restapi/response/Response$WithBody;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v3, Lcom/idm/fotaagent/restapi/response/Response$WithBody;

    invoke-direct {v3}, Lcom/idm/fotaagent/restapi/response/Response$WithBody;-><init>()V

    new-instance v5, Lcom/idm/fotaagent/restapi/restclient/NonAuthStrategyFactory$MassCampaign;

    invoke-direct {v5}, Lcom/idm/fotaagent/restapi/restclient/NonAuthStrategyFactory$MassCampaign;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/restapi/restclient/NonAuthRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/restapi/response/Response;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;)V

    return-void
.end method
