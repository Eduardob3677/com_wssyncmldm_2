.class public Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingStartState;
.super Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;-><init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V

    return-void
.end method


# virtual methods
.method public onEntry()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/polling/Polling;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingStartState;->onExecute()V

    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->setNextTime(J)V

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->stopPolling()V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->pollingContext:Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingFinishedState;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingFinishedState;-><init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->changeState(Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;)V

    return-void
.end method

.method public onExecute()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/restapi/restclient/polling/Polling;->getUrlString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/idm/fotaagent/utils/GeneralUtils;->appendExtraParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/polling/PollingRestClient;

    iget-object v2, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->execute()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Receive result: success in PollingRestClient"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes$ForPolling;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/restapi/restclient/polling/Polling;->updateFrom(Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes$ForPolling;

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes$ForPolling;->getVersions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/fotaagent/restapi/restclient/polling/Polling;->isUpdatable([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "start device init"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiateByDevice()V

    :cond_0
    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;

    iget-object v2, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByPolling;

    invoke-direct {v2, v0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByPolling;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;->registerIfChanged(Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;)V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->pollingContext:Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingReservationState;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingReservationState;-><init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->changeState(Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;)V

    return-void

    :cond_1
    const-string v0, "Receive result: fail in PollingRestClient"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes$ForPolling;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Response;->getResult()Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Result;->isNetworkFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Network is not available; Do not cancel alarm to retry 1 hour later"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->pollingContext:Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingFinishedState;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingFinishedState;-><init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->changeState(Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Result;->isAbnormalData()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Received data is wrong; Do not cancel alarm to retry 1 hour later"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->pollingContext:Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingFinishedState;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingFinishedState;-><init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->changeState(Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->pollingContext:Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingReservationState;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingReservationState;-><init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->changeState(Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;)V

    return-void
.end method
