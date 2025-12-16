.class public Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private pollingState:Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->context:Landroid/content/Context;

    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingStartState;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingStartState;-><init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->pollingState:Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;

    return-void
.end method


# virtual methods
.method public changeState(Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->pollingState:Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->onExit()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->pollingState:Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->onEntry()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->context:Landroid/content/Context;

    return-object p0
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->pollingState:Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->onEntry()V

    return-void
.end method
