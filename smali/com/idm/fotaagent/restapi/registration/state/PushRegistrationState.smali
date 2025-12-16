.class public Lcom/idm/fotaagent/restapi/registration/state/PushRegistrationState;
.super Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x6cfc02a646b5c06L


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;-><init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V

    return-void
.end method


# virtual methods
.method public onEntry()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->pushIsCompleted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/PushRegistrationState;->onExecute()V

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/restapi/registration/state/RegistrationFinishedState;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->registration:Lcom/idm/fotaagent/restapi/registration/context/Registration;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationFinishedState;-><init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->changeRegistrationState(Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;)V

    return-void

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;

    const-string v0, "Device not registered yet"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onExecute()V
    .locals 4

    const-string v0, "push registration failed: errorCode "

    const-string v1, ""

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->readDeviceInfo(Landroid/content/Context;)V

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Registration;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Registration;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->execute()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PushRegistrationRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/PushRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PushRegistrationRepository;->register()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
