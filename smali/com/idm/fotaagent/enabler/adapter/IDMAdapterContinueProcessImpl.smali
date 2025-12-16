.class public Lcom/idm/fotaagent/enabler/adapter/IDMAdapterContinueProcessImpl;
.super Lcom/idm/agent/dm/IDMDmContinueProcess;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmContinueProcess;-><init>()V

    return-void
.end method


# virtual methods
.method public idmGetProcessAsyncExecStatus()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "202"

    return-object p0
.end method

.method public idmIsContinueProcess(Ljava/lang/String;)Z
    .locals 2

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->isBinaryCheckEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/utils/BinaryStatus;->isOfficial()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Not official binary"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    return v1

    :cond_0
    const-string v0, "400"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getSvcState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SVCSTATE : 400 Client Error"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
