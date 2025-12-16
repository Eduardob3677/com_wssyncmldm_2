.class public Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;
.super Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x5c71d70575c84a69L


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;-><init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;->lambda$onEntry$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEntry$0()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;->onExecute()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onEntry()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, LD2/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LD2/a;-><init>(ILjava/io/Serializable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;

    const-string v0, "Device not registered yet"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onExecute()V
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->pollingIsCompleted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;->registerPolling()V

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/restapi/registration/state/PushRegistrationState;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->registration:Lcom/idm/fotaagent/restapi/registration/context/Registration;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/registration/state/PushRegistrationState;-><init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->changeRegistrationState(Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;)V

    return-void
.end method

.method public registerPolling()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/restapi/restclient/polling/Polling;->getUrlString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/idm/fotaagent/utils/GeneralUtils;->appendExtraParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/idm/fotaagent/restapi/restclient/polling/PollingRestClient;

    invoke-direct {v2, v0, v1}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->execute()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Receive result: success in PollingRestClient"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes$ForPolling;

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/fotaagent/restapi/restclient/polling/Polling;->updateFrom(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v1, "Receive result: fail in PollingRestClient"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->registration:Lcom/idm/fotaagent/restapi/registration/context/Registration;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->isDmFollowing()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->registerFirstPolling(Z)V

    return-void
.end method
