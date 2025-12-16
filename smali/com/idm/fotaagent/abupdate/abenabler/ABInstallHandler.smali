.class public Lcom/idm/fotaagent/abupdate/abenabler/ABInstallHandler;
.super Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeFumoStatusAndInstallPackage()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->resetUpdateInfo()V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->getInstance()Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->download(Ljava/lang/String;)Z

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->getSlotSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setSlotSuffix(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->bindForSlotSwitch(Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->downloadPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isTriggeredBySideload()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wssyncmldm/Flavor$LocalTest;->enableUpdateResultDialogIfUtAgent(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/utils/RebootChecker;->saveBootIdAndStartTimer(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ABInstallHandler;->reboot()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->bind()V

    return-void

    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->bind()V

    throw p0
.end method

.method public clearCommandAndUncryptFile()V
    .locals 0

    const-string p0, "do nothing in ABUpdate"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public getErrorCodeForRebootFailed()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->REBOOT_FAILED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getDmResultCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reboot()V
    .locals 1

    :try_start_0
    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "abfotaupdate"

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public verifyPackage()V
    .locals 0

    const-string p0, "do nothing in ABUpdate"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public verifyUpdatableDelta()V
    .locals 0

    const-string p0, "do nothing in ABUpdate"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
