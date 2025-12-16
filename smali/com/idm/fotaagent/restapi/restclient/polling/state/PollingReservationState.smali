.class public Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingReservationState;
.super Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;-><init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Polling Info "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->registerNextPolling()V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->pollingContext:Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingFinishedState;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingFinishedState;-><init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->changeState(Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;)V

    return-void
.end method
