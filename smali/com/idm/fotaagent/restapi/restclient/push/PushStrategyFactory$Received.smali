.class public Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory$Received;
.super Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Received"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createOnHttpResponseFailureStrategy()Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->DO_NOTHING:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    return-object p0
.end method
