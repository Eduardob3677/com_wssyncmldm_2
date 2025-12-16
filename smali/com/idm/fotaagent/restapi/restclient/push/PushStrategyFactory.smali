.class public abstract Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory$Received;,
        Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory$Registration;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOnHttpResponseSuccessStrategy()Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->DO_NOTHING:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    return-object p0
.end method
