.class public Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient$OneShot;
.super Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneShot"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;)V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatStrategyFactory$OneShot;

    invoke-direct {v0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatStrategyFactory$OneShot;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;Lcom/idm/fotaagent/restapi/restclient/strategies/StrategyFactory;)V

    return-void
.end method


# virtual methods
.method public generateBody()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/restapi/request/FOTABody$OneShot;

    invoke-direct {v0}, Lcom/idm/fotaagent/restapi/request/FOTABody$OneShot;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;->deviceInfo:Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/restapi/request/FOTABody;->generate(Lcom/idm/fotaagent/restapi/request/DeviceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
