.class public Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Received;
.super Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Received"
.end annotation


# instance fields
.field private final replyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory$Received;

    invoke-direct {v0}, Lcom/idm/fotaagent/restapi/restclient/push/PushStrategyFactory$Received;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;)V

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Received;->replyUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateAndValidateBody()V
    .locals 0

    return-void
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->GET:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Received;->replyUrl:Ljava/lang/String;

    return-object p0
.end method
