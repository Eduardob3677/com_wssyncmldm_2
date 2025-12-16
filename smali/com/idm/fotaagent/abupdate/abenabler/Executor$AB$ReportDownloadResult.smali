.class public Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$ReportDownloadResult;
.super Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorReportDownloadResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportDownloadResult"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorReportDownloadResult;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public idmFumoStart()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->getInstance()Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    sget-object v1, Lcom/idm/agent/dl/DLResultCode;->SUCCESS:Lcom/idm/agent/dl/DLResultCode;

    invoke-virtual {v1}, Lcom/idm/agent/dl/DLResultCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->report(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resumeByNetwork()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->getInstance()Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    sget-object v1, Lcom/idm/agent/dl/DLResultCode;->SUCCESS:Lcom/idm/agent/dl/DLResultCode;

    invoke-virtual {v1}, Lcom/idm/agent/dl/DLResultCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->report(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resumeByReboot()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->getInstance()Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    sget-object v1, Lcom/idm/agent/dl/DLResultCode;->SUCCESS:Lcom/idm/agent/dl/DLResultCode;

    invoke-virtual {v1}, Lcom/idm/agent/dl/DLResultCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->report(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
