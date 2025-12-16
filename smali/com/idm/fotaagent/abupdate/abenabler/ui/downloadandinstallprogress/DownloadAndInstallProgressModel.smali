.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field private final repository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->taskId:Ljava/lang/String;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->repository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    return-void
.end method

.method private getFumoStatus()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    return p0
.end method

.method private getTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method private resetUpdateInfo()V
    .locals 3

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result v0

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->repository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    new-instance v2, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->percent()I

    move-result p0

    invoke-direct {v2, v1, p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;-><init>(Ljava/lang/Integer;I)V

    invoke-virtual {v0, v2}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setUpdateInfo(Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->repository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;-><init>(Ljava/lang/Integer;I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setUpdateInfo(Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public download()V
    .locals 3

    const-string v0, "Download restart!!"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string v0, "020"

    const-string v1, "0070"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x1e

    invoke-virtual {v0, p0, v2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void
.end method

.method public getProgressBarsVisible()I
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getProgressBarsVisible(I)I

    move-result p0

    return p0
.end method

.method public getProgressBarsVisible(I)I
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getFumoStatus()I

    move-result p0

    const/16 v0, 0xf2

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result p0

    if-ne p1, p0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    return v1
.end method

.method public getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->repository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUpdateInfoLiveData()Landroidx/lifecycle/C;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/C;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->repository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getUpdateInfoLiveData()Landroidx/lifecycle/C;

    move-result-object p0

    return-object p0
.end method

.method public isEmergencyServiceType()Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->repository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->isEmergencyService()Z

    move-result p0

    return p0
.end method

.method public needsBlockToPause()Z
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result v0

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->OPTIMIZING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->percent()I

    move-result p0

    const/16 v0, 0x63

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needsConfirmToPause()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result p0

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string v0, "pausing during download should be allowed or no button. step : "

    invoke-static {v0, p0}, LB/f;->D(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 3

    const-string v0, "Download pause!!"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string v0, "020"

    const-string v1, "0009"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xf2

    invoke-virtual {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->resetUpdateInfo()V

    return-void
.end method

.method public refreshAnimatorBy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getFumoStatus()I

    move-result p0

    const/16 v0, 0xf2

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method
