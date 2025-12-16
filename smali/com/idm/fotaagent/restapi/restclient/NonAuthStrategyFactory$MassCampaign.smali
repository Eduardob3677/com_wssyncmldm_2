.class public Lcom/idm/fotaagent/restapi/restclient/NonAuthStrategyFactory$MassCampaign;
.super Lcom/idm/fotaagent/restapi/restclient/NonAuthStrategyFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/NonAuthStrategyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MassCampaign"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/restclient/NonAuthStrategyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createOnHttpResponseSuccessStrategy()Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->STORE_BODY:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    return-object p0
.end method
