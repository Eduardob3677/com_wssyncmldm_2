.class final enum Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$3;
.super Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# static fields
.field private static final EXPRESSION_EXCEPTION_VERSION:Ljava/lang/String; = "/SUCancelInfo/ExptVer"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$1;)V

    return-void
.end method

.method private isUpdateFwVExceptedForSuCancel(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "/SUCancelInfo/ExptVer"

    invoke-static {p1, v0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateFwVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return p0
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$3;->isUpdateFwVExceptedForSuCancel(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "updateFwV is excepted for su cancel"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->cancelOrReset()V

    return-void
.end method
