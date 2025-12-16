.class public Lcom/idm/service/actioninfo/IDMActionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/idm/core/push/IDMPushInterface;
.implements Lcom/idm/adapter/callback/IDMCallbackStatusInterface;


# static fields
.field private static final serialVersionUID:J = -0x3fc81bc00e5814bcL


# instance fields
.field private alertCommandNode:Ljava/lang/String;

.field private volatile appId:I

.field private command:I

.field private correlator:Ljava/lang/String;

.field private currentDownloadMode:I

.field private deltaIndex:I

.field private description:Ljava/lang/String;

.field private dlCurrentRetryCount:I

.field private dlNotifyDownloadReportCode:I

.field private dlTotalRetryCount:I

.field private dmResultCode:Ljava/lang/String;

.field private dmTotalRetryCount:I

.field private downloadDescriptorUrl:Ljava/lang/String;

.field private downloadPath:Ljava/lang/String;

.field private downloadType:Ljava/lang/String;

.field private fumoStatus:I

.field private initType:I

.field private initUiMode:I

.field private installTypeUri:Ljava/lang/String;

.field private isContinuousUpdateSession:Z

.field private isMobileDownload:I

.field private isPostponeDownloadAutoInstall:Z

.field private isSuCancel:Z

.field private notiId:I

.field private notifyUrl:Ljava/lang/String;

.field private objectSize:J

.field private objectUrl:Ljava/lang/String;

.field private pushUiMode:I

.field private reportUrl:Ljava/lang/String;

.field private resumeState:I

.field private serverId:Ljava/lang/String;

.field private volatile sessionId:Ljava/lang/String;

.field private subId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->pushUiMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->fumoStatus:I

    iput v0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->subId:I

    return-void
.end method


# virtual methods
.method public idmGetAlertCommandNode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->alertCommandNode:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetAppId()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->appId:I

    return p0
.end method

.method public idmGetCommand()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->command:I

    return p0
.end method

.method public idmGetCorrelator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->correlator:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetCurrentDownloadMode()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->currentDownloadMode:I

    return p0
.end method

.method public idmGetDeltaIndex()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->deltaIndex:I

    return p0
.end method

.method public idmGetDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->description:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetDlCurrentRetryCount()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dlCurrentRetryCount:I

    return p0
.end method

.method public idmGetDlNotifyDownloadReportCode()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dlNotifyDownloadReportCode:I

    return p0
.end method

.method public idmGetDlTotalRetryCount()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dlTotalRetryCount:I

    return p0
.end method

.method public idmGetDmResultCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dmResultCode:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetDmTotalRetryCount()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dmTotalRetryCount:I

    return p0
.end method

.method public idmGetDownloadDescriptorUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->downloadDescriptorUrl:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetDownloadPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->downloadPath:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetDownloadType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->downloadType:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetFumoStatus()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->fumoStatus:I

    return p0
.end method

.method public idmGetInitType()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->initType:I

    return p0
.end method

.method public idmGetInitUiMode()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->initUiMode:I

    return p0
.end method

.method public idmGetInstallTypeUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->installTypeUri:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetIsContinuousUpdateSession()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isContinuousUpdateSession:Z

    return p0
.end method

.method public idmGetIsMobileDownload()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isMobileDownload:I

    return p0
.end method

.method public idmGetIsPostponeDownloadAutoinstall()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isPostponeDownloadAutoInstall:Z

    return p0
.end method

.method public idmGetNotiId()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->notiId:I

    return p0
.end method

.method public idmGetNotifyUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->notifyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetObjectSize()J
    .locals 2

    iget-wide v0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->objectSize:J

    return-wide v0
.end method

.method public idmGetObjectUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->objectUrl:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetPushUiMode()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->pushUiMode:I

    return p0
.end method

.method public idmGetReportUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->reportUrl:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetResumeState()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->resumeState:I

    return p0
.end method

.method public idmGetServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->serverId:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetSessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetSuCancel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isSuCancel:Z

    return p0
.end method

.method public idmGetSubId()I
    .locals 0

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->subId:I

    return p0
.end method

.method public idmSetAlertCommandNode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->alertCommandNode:Ljava/lang/String;

    return-void
.end method

.method public idmSetAppId(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->appId:I

    return-void
.end method

.method public idmSetCommand(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->command:I

    return-void
.end method

.method public idmSetCorrelator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->correlator:Ljava/lang/String;

    return-void
.end method

.method public idmSetCurrentDownloadMode(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->currentDownloadMode:I

    return-void
.end method

.method public idmSetDeltaIndex(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->deltaIndex:I

    return-void
.end method

.method public idmSetDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public idmSetDlCurrentRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dlCurrentRetryCount:I

    return-void
.end method

.method public idmSetDlNotifyDownloadReportCode(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dlNotifyDownloadReportCode:I

    return-void
.end method

.method public idmSetDlTotalRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dlTotalRetryCount:I

    return-void
.end method

.method public idmSetDmResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dmResultCode:Ljava/lang/String;

    return-void
.end method

.method public idmSetDmTotalRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dmTotalRetryCount:I

    return-void
.end method

.method public idmSetDownloadDescriptorUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->downloadDescriptorUrl:Ljava/lang/String;

    return-void
.end method

.method public idmSetDownloadPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->downloadPath:Ljava/lang/String;

    return-void
.end method

.method public idmSetDownloadType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->downloadType:Ljava/lang/String;

    return-void
.end method

.method public idmSetFumoStatus(I)V
    .locals 2

    iget v0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->fumoStatus:I

    if-ne v0, p1, :cond_0

    const-string p0, "Same fumoStatus. Do not save."

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isSuCancel:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SuCancel running. FumoStatus ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Do not save."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FumoStatus save ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->fumoStatus:I

    return-void
.end method

.method public idmSetInitType(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->initType:I

    return-void
.end method

.method public idmSetInitUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->initUiMode:I

    return-void
.end method

.method public idmSetInstallTypeUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->installTypeUri:Ljava/lang/String;

    return-void
.end method

.method public idmSetIsContinuousUpdateSession(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isContinuousUpdateSession:Z

    return-void
.end method

.method public idmSetIsMobileDownload(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isMobileDownload:I

    return-void
.end method

.method public idmSetIsPostponeDownloadAutoinstall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isPostponeDownloadAutoInstall:Z

    return-void
.end method

.method public idmSetNotiId(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->notiId:I

    return-void
.end method

.method public idmSetNotifyUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->notifyUrl:Ljava/lang/String;

    return-void
.end method

.method public idmSetObjectSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->objectSize:J

    return-void
.end method

.method public idmSetObjectUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->objectUrl:Ljava/lang/String;

    return-void
.end method

.method public idmSetPushUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->pushUiMode:I

    return-void
.end method

.method public idmSetReportUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->reportUrl:Ljava/lang/String;

    return-void
.end method

.method public idmSetResumeState(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->resumeState:I

    return-void
.end method

.method public idmSetServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->serverId:Ljava/lang/String;

    return-void
.end method

.method public idmSetSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public idmSetSuCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isSuCancel:Z

    return-void
.end method

.method public idmSetSubId(I)V
    .locals 0

    iput p1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->subId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDMActionInfo [initType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->initType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notiId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->notiId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->command:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alertCommandNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->alertCommandNode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->downloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadDescriptorUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->downloadDescriptorUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->objectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notifyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->notifyUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dlNotifyDownloadReportCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dlNotifyDownloadReportCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", objectSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->objectSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->downloadType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reportUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->reportUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", correlator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->correlator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deltaIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->deltaIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initUiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->initUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentDownloadMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->currentDownloadMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isContinuousUpdateSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isContinuousUpdateSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dmResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dmResultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resumeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->resumeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dlTotalRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dlTotalRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dmTotalRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->dmTotalRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSuCancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isSuCancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", installTypeUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->installTypeUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPostponeDownloadAutoInstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isPostponeDownloadAutoInstall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fumoStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->fumoStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMobileDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/idm/service/actioninfo/IDMActionInfo;->isMobileDownload:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
