.class Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;
.super Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->lambda$retryOrAbort$0()V

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->lambda$reportToDiagmonAndAbort$1(Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;)V

    return-void
.end method

.method private convertToErrorCode(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/16 p0, 0x1f9

    if-eq p1, p0, :cond_1

    const/16 p0, 0x76d

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "431"

    return-object p0

    :cond_1
    const-string p0, "432"

    return-object p0

    :cond_2
    const-string p0, "433"

    return-object p0
.end method

.method private convertToReportStatus(I)Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;
    .locals 0

    if-eqz p1, :cond_2

    const/16 p0, 0x1f9

    if-eq p1, p0, :cond_1

    const/16 p0, 0x76d

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;->REPORT_FAILED_BY_AUTHENTICATION:Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;->REPORT_FAILED_BY_HTTP_RESPONSE:Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;

    return-object p0

    :cond_2
    sget-object p0, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;->REPORT_FAILED_BY_SYNCML_BODY:Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;

    return-object p0
.end method

.method private finishDlWithDmResultCode(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->fumoStatus:I

    if-nez v0, :cond_0

    const-string p0, "fumoStatus should not be IDM_DL_STATE_NONE(0)"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlTotalRetryCount(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDmResultCode(Ljava/lang/String;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDmResultCode()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xf1

    invoke-virtual {p1, v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void
.end method

.method private getDmResultCodeCausedByNetworkHeaderFail(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    iget p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->fumoStatus:I

    const/16 p1, 0xa

    if-ne p0, p1, :cond_0

    const-string p0, "PrintDownloadAbortReason : IDM_FOTA_GENERIC_DD_SERVER_EXPIRED"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    const-string p0, "send generic alert for fail to dd expired url"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "513"

    return-object p0

    :cond_0
    const-string p0, "PrintDownloadAbortReason : IDM_FOTA_GENERIC_DL_SERVER_FORBIDDEN"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    const-string p0, "send generic alert for fail to download package or download expired url"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "510"

    return-object p0

    :cond_1
    const/16 p0, 0x194

    if-eq p1, p0, :cond_4

    const/16 p0, 0x1f4

    if-eq p1, p0, :cond_4

    const/16 p0, 0x1f7

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x12c

    if-lt p1, p0, :cond_3

    const/16 p0, 0x190

    if-ge p1, p0, :cond_3

    const-string p0, "PrintDownloadAbortReason : IDM_FOTA_GENERIC_DL_SERVER_REDIRECT"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    const-string p0, "511"

    return-object p0

    :cond_3
    const-string p0, "PrintDownloadAbortReason : IDM_FOTA_GENERIC_SERVER_ERROR"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    const-string p0, "500"

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "PrintDownloadAbortReason : IDM_FOTA_GENERIC_DL_SERVICE_UNAVAILABLE"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    const-string p0, "512"

    return-object p0
.end method

.method private getDmResultCodeCausedByTemporalNetworkError()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDlReportCode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "417"

    if-ne v0, v1, :cond_0

    const-string p0, "Network Failed"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v2

    :cond_0
    iget p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->fumoStatus:I

    const/16 v1, 0x23

    if-eq p0, v1, :cond_2

    const/16 v1, 0xe6

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/idm/fotaagent/utils/EnablerUtils;->convertDlResultCodeToDmResultCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$reportToDiagmonAndAbort$1(Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportResultLogger;->addStatusIfNeeded(Landroid/content/Context;Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->reportToSAIfNeeded()V

    return-void
.end method

.method private synthetic lambda$retryOrAbort$0()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/LibraryStarter;->startDMTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    return-void
.end method

.method private processDlAbort(ILcom/idm/agent/dl/IDMDlAbortInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "abortCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;->nameWithCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p2}, Lcom/idm/agent/dl/IDMDlAbortInfo;->idmGetResponseCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->processDlAbortCausedByNetworkHeaderFail(I)V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->processDlAbortCausedByTemporalNetworkError()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processDlAbortCausedByNetworkHeaderFail(I)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;

    iget-object v1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->getDmResultCodeCausedByNetworkHeaderFail(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->finishDlWithDmResultCode(Ljava/lang/String;)V

    return-void
.end method

.method private processDlAbortCausedByTemporalNetworkError()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlCurrentRetryCount(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isBlockedByRoaming(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailedRoaming;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailedRoaming;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;

    iget-object v1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDlTotalRetryCount()I

    move-result v0

    const-string v1, "totalRetryCount = "

    invoke-static {v1, v0}, LB/f;->D(Ljava/lang/String;I)V

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->getDmResultCodeCausedByTemporalNetworkError()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->finishDlWithDmResultCode(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlTotalRetryCount(I)V

    return-void
.end method

.method private processDmAbort(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "abortCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;->nameWithCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->reportToDiagmonAndAbort(I)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->processDmAbortCausedByTemporalNetworkError()V

    return-void

    :cond_0
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->retryOrAbort(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processDmAbortCausedByTemporalNetworkError()V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isBlockedByRoaming(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailedRoaming;

    iget-object v1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailedRoaming;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;

    iget-object v1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->context:Landroid/content/Context;

    sget-object v0, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;->REPORT_DELAYED_BY_NETWORK:Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportResultLogger;->addStatusIfNeeded(Landroid/content/Context;Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->getInstance()Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_FINISH:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->idmSendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Ljava/lang/Object;J)V

    :goto_1
    return-void
.end method

.method private reportToDiagmonAndAbort(I)V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDmError;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDmError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->convertToErrorCode(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    const/16 v2, 0x64

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->reportToDiagmonIfNeeded(Ljava/lang/String;[I)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->convertToReportStatus(I)Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/receiver/callback/b;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/receiver/callback/b;-><init>(Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDmError;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDmError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void
.end method

.method private retryOrAbort(I)V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDmError;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDmError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getDmRetryCount()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "currentRetryCount : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". try again"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setDmRetryCount(I)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/receiver/callback/a;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/receiver/callback/a;-><init>(Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;)V

    const-wide/16 v1, 0x3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->reportToDiagmonAndAbort(I)V

    return-void
.end method


# virtual methods
.method public doHandle(ILjava/lang/Object;I)V
    .locals 1

    const/16 v0, 0x3f1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x455

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    instance-of p1, p2, Lcom/idm/agent/dl/IDMDlAbortInfo;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/idm/agent/dl/IDMDlAbortInfo;

    invoke-direct {p0, p3, p2}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->processDlAbort(ILcom/idm/agent/dl/IDMDlAbortInfo;)V

    return-void

    :cond_1
    const-string p0, "DlAbortInfo should exist"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-direct {p0, p3}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->processDmAbort(I)V

    return-void
.end method
