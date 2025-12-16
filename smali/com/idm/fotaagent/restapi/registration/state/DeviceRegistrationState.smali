.class public Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;
.super Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7d630738e64ce83fL


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;-><init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V

    return-void
.end method

.method private prepareDeviceInfo()V
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->readDeviceInfo(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->getSakErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;

    const-string v1, "Error in retrieving certificate chain"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2, p0}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public finalizeFailure(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x190

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setInvalidRegister()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setUnregister()V

    :goto_0
    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->clearChallenge()V

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;->sendRegistrationResultIfNeeded(I)V

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->registration:Lcom/idm/fotaagent/restapi/registration/context/Registration;

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    const v1, 0x7f13007e

    goto :goto_1

    :cond_1
    const v1, 0x7f13008b

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p2, "434"

    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;->needsReport(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v0, p2}, Lcom/idm/fotaagent/restapi/registration/DeviceRegistrationReportChecker;->isAvailableToReport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;-><init>(Ljava/lang/String;)V

    const-string p1, "Device registration failed"

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->withDescription(Ljava/lang/String;)Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->report()V

    invoke-static {v0, p2}, Lcom/idm/fotaagent/restapi/registration/DeviceRegistrationReportChecker;->storeReportInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public needsReport(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    const/16 p0, 0x64

    const/4 v0, 0x0

    if-ne p2, p0, :cond_0

    invoke-static {p1}, Lcom/idm/fotaagent/utils/NetworkUtil;->isAnyNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Intended behavior. No need to report."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_0
    const-string p0, "FUD_3007"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "SAK_0002"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public onEntry()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->registration:Lcom/idm/fotaagent/restapi/registration/context/Registration;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;-><init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->changeRegistrationState(Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->unregister()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;->onExecute()V

    :goto_0
    return-void
.end method

.method public onExecute()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isAnyNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;->prepareDeviceInfo()V

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->registration:Lcom/idm/fotaagent/restapi/registration/context/Registration;

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f130027

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/device/DeviceRestClient;

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/idm/fotaagent/restapi/restclient/device/DeviceRestClient;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->execute()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;->postExecuteOnSuccess(Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;)V

    new-instance v0, Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->registration:Lcom/idm/fotaagent/restapi/registration/context/Registration;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;-><init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->changeRegistrationState(Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;->postExecuteOnFailure(Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;->onExecute()V

    :goto_1
    return-void

    :cond_2
    new-instance v0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;

    const-string v1, "Network is not available"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;->getResult()I

    move-result v1

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;->finalizeFailure(ILjava/lang/String;)V

    throw v0
.end method

.method public postExecuteOnFailure(Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;)V
    .locals 3

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/response/Response;->getResult()Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Result;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    if-eq v0, v2, :cond_2

    const/16 v2, 0x196

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getAttributes()Ljava/util/Map;

    move-result-object p1

    const-string v2, "error/challenge"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setChallenge(Ljava/lang/String;)V

    const-string p0, "succeed to set challenge received from server"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "challenge : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;

    const-string p1, "Server response to re-register with SAK but challenge is empty"

    invoke-direct {p0, p1, v0, v1}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;

    const-string p1, "Device is not valid!!"

    invoke-direct {p0, p1, v0, v1}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p0
.end method

.method public postExecuteOnSuccess(Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;)V
    .locals 8

    const-string v0, "Receive result: success in DeviceRestClient"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getAttributes()Ljava/util/Map;

    move-result-object p1

    const-string v1, "versioninfo/DeviceInitDelayTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/idm/fotaagent/utils/GeneralUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DeviceInitDelayTime : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v3, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    invoke-direct {v3, v0}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;-><init>(Landroid/content/Context;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->setFirstTime(J)V

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

    move-result-object v1

    const-string v3, "versioninfo/url"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->setUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

    move-result-object v1

    const-string v3, "versioninfo/Polling/filename"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->setTarget(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByRegistration;

    invoke-direct {v3, p1}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByRegistration;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;->register(Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;)V

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;

    move-result-object p1

    :try_start_0
    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->getCorpId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;->updateDMAccClientAAuth(Ljava/lang/String;)V

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setInitialUpdate(Z)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setRegister()V

    invoke-static {v2}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;->sendRegistrationResultIfNeeded(I)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_0
    const-string v0, "Failed to save registered device into repository"

    const/16 v1, 0x384

    invoke-direct {p1, v0, v1, p0}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1
.end method

.method public updateDMAccClientAAuth(Ljava/lang/String;)V
    .locals 4

    const-string p0, "x6g1q14r75"

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object v0

    const-string v1, "/AAuthName"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/AAuthSecret"

    new-instance v3, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {v3}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {v3, p1, p0}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeSECDevicePassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_0
    const-string v0, "Failed to update DM Account"

    const/16 v1, 0x384

    invoke-direct {p1, v0, v1, p0}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1
.end method
