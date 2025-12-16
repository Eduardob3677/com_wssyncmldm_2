.class public Lcom/idm/fotaagent/restapi/restclient/time/TimeStrategyFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOnHttpResponseFailureStrategy()Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->PARSE_FOR_FAILURE:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    return-object p0
.end method

.method public createOnHttpResponseSuccessStrategy()Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->PARSE_FOR_SUCCESS:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    return-object p0
.end method
