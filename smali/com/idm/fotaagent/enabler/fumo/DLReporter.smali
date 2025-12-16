.class public abstract Lcom/idm/fotaagent/enabler/fumo/DLReporter;
.super Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForFailure;,
        Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public buildRestRequest(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Lcom/idm/agent/restclient/RestRequest;
    .locals 1

    new-instance p0, Lcom/idm/agent/restclient/RestRequest$Builder;

    sget-object v0, Lcom/idm/agent/restclient/RestRequest$MethodType;->REST_METHOD_POST:Lcom/idm/agent/restclient/RestRequest$MethodType;

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetNotifyUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/idm/agent/restclient/RestRequest$Builder;-><init>(Lcom/idm/agent/restclient/RestRequest$MethodType;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/idm/agent/restclient/RestRequest$Builder;->body(Ljava/lang/String;)Lcom/idm/agent/restclient/RestRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/agent/restclient/RestRequest$Builder;->build()Lcom/idm/agent/restclient/RestRequest;

    move-result-object p0

    return-object p0
.end method

.method public checkUri(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 0

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetNotifyUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "notifyUrl is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
