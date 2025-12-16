.class public Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException;
    }
.end annotation


# instance fields
.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->lambda$getExecCommand$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b()Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->lambda$getExecCommand$1()Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;Lcom/idm/agent/dm/IDMDmExecInfo;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->convertToUpdateType(Lcom/idm/agent/dm/IDMDmExecInfo;)I

    move-result p0

    return p0
.end method

.method private convertToUpdateType(Lcom/idm/agent/dm/IDMDmExecInfo;)I
    .locals 1

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/DownloadAndUpdate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/Download"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/Update"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$getExecCommand$0(Ljava/lang/Integer;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getExecCommand$1()Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException;
    .locals 1

    const-string v0, "Exec is abnormal"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException;-><init>()V

    return-object v0
.end method


# virtual methods
.method public callbackIfPossible(ILjava/lang/String;)V
    .locals 2

    const-string v0, "status : "

    invoke-static {v0, p1}, LB/f;->D(Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecCommand()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->idmCallbackExecute(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public executeCallbackForDDIfPossible(Lcom/idm/core/dd/IDMDDDataInfo;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecCommand()I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;->callbackForDD(Lcom/idm/core/dd/IDMDDDataInfo;)V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public executeIfPossible(II)V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecCommand()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->idmExecute(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public executeIfPossible(ILjava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecCommand()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->idmExecute(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public fumoStartIfPossible()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->fumoStartIfPossible(I)V

    return-void
.end method

.method public fumoStartIfPossible(I)V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecCommand()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->idmFumoStart()V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getExecCommand()I
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getExecInfo(Ljava/lang/String;)Lcom/idm/agent/dm/IDMDmExecInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/a;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/fumo/a;-><init>(Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    return-object p0
.end method

.method public resumeByBatteryIfPossible(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecCommand()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->resumeByBattery()V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public resumeByBootCompleteIfPossible(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecCommand()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->resumeByReboot()V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public resumeByNetworkIfPossible(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecCommand()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->resumeByNetwork()V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateInformationIfPossible(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->taskId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecCommand()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updateInformation(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler$AbnormalExecCommandException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
