.class public abstract Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected exceptionHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/IllegalStateException;",
            ">;"
        }
    .end annotation
.end field

.field protected restClient:Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkUrl()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->isInvalidHeartbeatUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->context:Landroid/content/Context;

    return-object p0
.end method

.method public handleIntent()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start heartbeat : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->prepare()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->checkUrl()V

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->restClient:Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->execute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->postExecuteOnSuccess()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->postExecuteOnFailure()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->exceptionHandler:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public isInvalidHeartbeatUrl(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string p0, "Heartbeat URL is empty"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v0

    :cond_0
    const-string p0, "https"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Heartbeat URL starts with http not https"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public postExecuteOnFailure()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Receive result: failure in "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->restClient:Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/HeartbeatHandle;->restClient:Lcom/idm/fotaagent/restapi/restclient/heartbeat/HeartbeatRestClient;

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, " failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->withDescription(Ljava/lang/String;)Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->report()V

    :cond_0
    return-void
.end method

.method public postExecuteOnSuccess()V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Receive result: success in "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract prepare()V
.end method
