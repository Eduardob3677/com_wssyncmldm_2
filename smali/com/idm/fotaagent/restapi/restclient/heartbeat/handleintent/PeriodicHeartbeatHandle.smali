.class public Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;
.super Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;
.source "SourceFile"


# static fields
.field public static final MAX_RETRY_COUNT:I = 0x5


# instance fields
.field private periodicHeartbeatManager:Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;

.field private repository:Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;Ljava/lang/IllegalStateException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->lambda$prepare$0(Ljava/lang/IllegalStateException;)V

    return-void
.end method

.method private synthetic lambda$prepare$0(Ljava/lang/IllegalStateException;)V
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->reset()V

    return-void
.end method


# virtual methods
.method public postExecuteOnFailure()V
    .locals 2

    invoke-super {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->postExecuteOnFailure()V

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->restClient:Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Response;->getResult()Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/response/Result;->isNetworkFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Network is not available. Wait next repeat time"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Response;->getResult()Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Result;->isAbnormalData()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Wrong data. Wait next repeat time"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->repository:Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;->getRetryCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    const-string v1, "Wait next retry: "

    invoke-static {v1, v0}, LB/f;->D(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->repository:Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;->setRetryCount(I)V

    return-void

    :cond_2
    const-string v0, "No more PeriodicHeartbeat retry"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->reset()V

    return-void
.end method

.method public postExecuteOnSuccess()V
    .locals 2

    invoke-super {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->postExecuteOnSuccess()V

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->repository:Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;->setRetryCount(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->restClient:Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getAttributes()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->periodicHeartbeatManager:Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByHeartbeat;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByHeartbeat;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;->register(Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;)V

    return-void
.end method

.method public prepare()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->repository:Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->url:Ljava/lang/String;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->periodicHeartbeatManager:Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->readDeviceInfo(Landroid/content/Context;)V

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient$Periodic;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->url:Ljava/lang/String;

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient$Periodic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->restClient:Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;

    new-instance v0, LC2/c;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->exceptionHandler:Ljava/util/function/Consumer;

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->periodicHeartbeatManager:Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;->stopTimer()V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->repository:Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;->clear()V

    return-void
.end method
