.class public Lcom/idm/fotaagent/enabler/fumo/UserInitResume;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field protected final context:Landroid/content/Context;

.field protected final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    new-instance p1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    return-void
.end method

.method private showToastFor(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->context:Landroid/content/Context;

    const v1, 0x7f130027

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->context:Landroid/content/Context;

    const v1, 0x7f130022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "network is not available"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->context:Landroid/content/Context;

    const v0, 0x7f13007e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishEntryActivityIfExists()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setUiMode(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v0

    const-string v2, "fumoStatus: "

    invoke-static {v2, v0}, LB/f;->D(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/idm/fotaagent/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getLibraryUtils()Lcom/idm/fotaagent/utils/LibraryUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/idm/fotaagent/utils/LibraryUtils;->isTaskRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->executeInTaskThreadRunning(IZ)V

    return-void

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->executeInTaskThreadNotRunning(IZ)V

    return-void
.end method

.method public executeInTaskThreadNotRunning(IZ)V
    .locals 3

    const-string v0, "task thread not running"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    const/16 v1, 0xa

    if-eq p1, v1, :cond_8

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_6

    const/16 v1, 0x28

    const/16 v2, 0x32

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_4

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_2

    const/16 v1, 0xf2

    if-eq p1, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->showToastFor(Z)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->cancel(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->fumoStartIfPossible()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadPause;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadPause;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_2
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object p1

    iget-object p2, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->isBlocked()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->getFumoTaskEvent(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_3
    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadYesNo;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadYesNo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_4
    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {v0, v2, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->needsNetwork()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object p1

    sget-object p2, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->shouldShow(Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadRetryConfirm;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadRetryConfirm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->fumoStartIfPossible()V

    return-void

    :cond_8
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->cancel(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->fumoStartIfPossible()V

    return-void

    :cond_9
    const-string p0, "should not be executed here"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public executeInTaskThreadRunning(IZ)V
    .locals 1

    const-string v0, "task thread running"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x28

    if-eq p1, v0, :cond_4

    const/16 v0, 0x32

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf2

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->showToastFor(Z)V

    return-void

    :cond_0
    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadPause;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadPause;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object p1

    iget-object p2, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->isBlocked()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->getFumoTaskEvent(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_2
    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadYesNo;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadYesNo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_3
    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_4
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->showToastFor(Z)V

    return-void

    :cond_5
    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadInProgress;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadInProgress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void
.end method

.method public needsNetwork()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
