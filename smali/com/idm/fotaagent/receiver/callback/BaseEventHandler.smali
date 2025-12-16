.class abstract Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field final context:Landroid/content/Context;

.field final executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

.field final fumoStatus:I

.field final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    new-instance p1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {v0, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p1

    iput p1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->fumoStatus:I

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->lambda$reportToDiagmonIfNeeded$0(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$reportToDiagmonIfNeeded$0(I)Z
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->fumoStatus:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract doHandle(ILjava/lang/Object;I)V
.end method

.method public handle(ILjava/lang/Object;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": taskId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callbackStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;->nameWithCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fumoStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->fumoStatus:I

    invoke-static {v1}, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;->nameWithCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->doHandle(ILjava/lang/Object;I)V

    return-void
.end method

.method public varargs reportToDiagmonIfNeeded(Ljava/lang/String;[I)V
    .locals 2

    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    new-instance v0, Lcom/idm/fotaagent/receiver/callback/c;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/receiver/callback/c;-><init>(Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;)V

    invoke-interface {p2, v0}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p2

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getExecInfo(Ljava/lang/String;)Lcom/idm/agent/dm/IDMDmExecInfo;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "execInfo is null. not send diagmon report."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDlReportCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDmResultCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetCorrelator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->withServiceDefinedKey(Ljava/lang/String;)Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->report()V

    :cond_3
    :goto_0
    return-void
.end method

.method public reportToSAIfNeeded()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDmResultCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportResultLogger;->send(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
