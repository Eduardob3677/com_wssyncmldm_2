.class public abstract Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/UpdateReporter$ReportCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkPreconditions(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->isBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->checkUri(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Network blocked."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "actionInfo is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startRestClient(Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/agent/restclient/RestRequest;)V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterImpl;

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->getCallback()Lcom/idm/adapter/callback/IDMCallback;

    move-result-object p0

    invoke-static {v1, p1, v0, p0, p2}, Lcom/idm/service/provider/IDMProviderService;->idmRestStart(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/adapter/handler/AdaptersHolder;Lcom/idm/adapter/callback/IDMCallback;Lcom/idm/agent/restclient/RestRequest;)V

    return-void
.end method


# virtual methods
.method public abstract buildRestRequest(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Lcom/idm/agent/restclient/RestRequest;
.end method

.method public abstract checkUri(Lcom/idm/service/actioninfo/IDMActionInfo;)V
.end method

.method public finish(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getCallback()Lcom/idm/adapter/callback/IDMCallback;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter$ReportCallback;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter$ReportCallback;-><init>()V

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public report(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "taskId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", report with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->checkPreconditions(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    invoke-virtual {p0, v0, p2}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->buildRestRequest(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Lcom/idm/agent/restclient/RestRequest;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->startRestClient(Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/agent/restclient/RestRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->finish(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
