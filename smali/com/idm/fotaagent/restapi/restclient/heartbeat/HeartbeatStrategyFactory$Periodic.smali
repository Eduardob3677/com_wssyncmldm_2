.class public Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatStrategyFactory$Periodic;
.super Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatStrategyFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatStrategyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Periodic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatStrategyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createOnHttpResponseSuccessStrategy()Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->PARSE_FOR_SUCCESS:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    return-object p0
.end method
