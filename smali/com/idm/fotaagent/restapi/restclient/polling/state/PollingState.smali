.class public abstract Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final pollingContext:Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->pollingContext:Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/polling/context/PollingContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onEntry()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/polling/state/PollingState;->onExecute()V

    return-void
.end method

.method public abstract onExecute()V
.end method

.method public onExit()V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    return-void
.end method
